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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B008.C000
import Seq.B010.C000
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
# A308000: The b sequence used in the definition of A280875.

The programs for A308000, there is no canonical definition to state claims against.
-/

/-! ## A308000.P15616051318845398984

`Δ[A280875(1+n)]`
-/

namespace A308000.P15616051318845398984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280875 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308000.P15616051318845398984

/-! ## A308000.P11346789538911710917

`A308001(n)-a(n-1)` with `a(0)=1`
-/

namespace A308000.P11346789538911710917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308001 n - a (n - 1)

end

end A308000.P11346789538911710917

/-! ## A308000.P4897310251972021014

`A280875(n+2)-A280875(n+1)`
-/

namespace A308000.P4897310251972021014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280875 (n + 2) - A280875 (n + 1)

end

end A308000.P4897310251972021014

/-!
# A308001: The c sequence used in the definition of A280875.

The programs for A308001, there is no canonical definition to state claims against.
-/

/-! ## A308001.P17630448453136112259

`A308000(n+1)+A308000(n+2)`
-/

namespace A308001.P17630448453136112259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308000 (n + 1) + A308000 (n + 2)

end

end A308001.P17630448453136112259

/-! ## A308001.P2742167211413981835

`A280875(n+3)-A280875(n+1)`
-/

namespace A308001.P2742167211413981835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280875 (n + 3) - A280875 (n + 1)

end

end A308001.P2742167211413981835

/-! ## A308001.P3273016729558927448

`Δ[A280875(n+2)+A280875(n+1)]`
-/

namespace A308001.P3273016729558927448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280875 (n + 2) + A280875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308001.P3273016729558927448

/-!
# A308003: A modified Sisyphus function: a(n) = concatenation of (number of even digits in n) (number of digits in n) (number of odd digits in n).

The programs for A308003, there is no canonical definition to state claims against.
-/

/-! ## A308003.P18079371759129023192

`∑{digits}[n, A336880(gcd(#, #+2)+1)]`
-/

namespace A308003.P18079371759129023192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A336880 (Nat.gcd x (x + 2) + 1)).sum

end

end A308003.P18079371759129023192

/-! ## A308003.P12375363606833297205

`11*A059995(A073053(n))`
-/

namespace A308003.P12375363606833297205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A059995 (A073053 n).toNat

end

end A308003.P12375363606833297205

/-! ## A308003.P8471115390320586455

`∑{digits}[n, A103542(A065031(#))]`
-/

namespace A308003.P8471115390320586455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A103542 (A065031 x).toNat).sum

end

end A308003.P8471115390320586455

/-! ## A308003.P11866849281105322499

`A073053(n)+9*A196563(n)`
-/

namespace A308003.P11866849281105322499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n + 9 * A196563 n

end

end A308003.P11866849281105322499

/-! ## A308003.P9333952874715668970

`A308005(A048380(A065031(n)))`
-/

namespace A308003.P9333952874715668970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308005 (A048380 (A065031 n).toNat).toNat

end

end A308003.P9333952874715668970

/-!
# A308005: A modified Sisyphus function: a(n) = concatenation of (number of odd digits in n) (number of digits in n) (number of even digits in n).

The programs for A308005, the canonical program `A308005.P17814522205666829116` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308005 has offset 0).

The definition of A308005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308005.P17814522205666829116

`11*∑{digits}[n, 10^#]%99`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308005

/-- `11*∑{digits}[n, 10^#]%99` -/
def P17814522205666829116.Spec : Prop :=
  ∀ n, (P17814522205666829116.a n : ℤ) = A308005 n

theorem P17814522205666829116.correct : P17814522205666829116.Spec := by
  intro n
  simp only [A308005]

end A308005

/-! ## A308005.P2039017819123636130

`∑{digits}[n, A308003(9-#)]`
-/

namespace A308005.P2039017819123636130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A308003 (9 - x)).sum

end

end A308005.P2039017819123636130

namespace A308005

/-- `∑{digits}[n, A308003(9-#)]` -/
def P2039017819123636130.Spec : Prop :=
  ∀ n, P2039017819123636130.a n = A308005 n

end A308005

/-! ## A308005.P17517141169946159301

`A308003(A061601(n))%A020323(A006093(n+1))`
-/

namespace A308005.P17517141169946159301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308003 (A061601 n).toNat) (A020323 (A006093 (n + 1)).toNat)

end

end A308005.P17517141169946159301

namespace A308005

/-- `A308003(A061601(n))%A020323(A006093(n+1))` -/
def P17517141169946159301.Spec : Prop :=
  ∀ n, P17517141169946159301.a n = A308005 n

end A308005

/-! ## A308005.P1348138766761751920

`A057427(A192493(n+1))*A308003(A061601(n))`
-/

namespace A308005.P1348138766761751920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A192493 (n + 1)).toNat * A308003 (A061601 n).toNat

end

end A308005.P1348138766761751920

namespace A308005

/-- `A057427(A192493(n+1))*A308003(A061601(n))` -/
def P1348138766761751920.Spec : Prop :=
  ∀ n, P1348138766761751920.a n = A308005 n

end A308005

/-! ## A308005.P3721670646136334057

`A308003(A061601(n))+A000007(A132148(n))`
-/

namespace A308005.P3721670646136334057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 (A061601 n).toNat + A000007 (A132148 n).toNat

end

end A308005.P3721670646136334057

namespace A308005

/-- `A308003(A061601(n))+A000007(A132148(n))` -/
def P3721670646136334057.Spec : Prop :=
  ∀ n, P3721670646136334057.a n = A308005 n

end A308005

/-! ## A308005.P14019450828579624717

`A308003(A061601(n))+A000007(A347499(n+1))`
-/

namespace A308005.P14019450828579624717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 (A061601 n).toNat + A000007 (A347499 (n + 1)).toNat

end

end A308005.P14019450828579624717

namespace A308005

/-- `A308003(A061601(n))+A000007(A347499(n+1))` -/
def P14019450828579624717.Spec : Prop :=
  ∀ n, P14019450828579624717.a n = A308005 n

end A308005

/-! ## A308005.P3579629143767645932

`A308003(A061601(n))+A178333(A022264(n))`
-/

namespace A308005.P3579629143767645932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 (A061601 n).toNat + A178333 (A022264 n).toNat

end

end A308005.P3579629143767645932

namespace A308005

/-- `A308003(A061601(n))+A178333(A022264(n))` -/
def P3579629143767645932.Spec : Prop :=
  ∀ n, P3579629143767645932.a n = A308005 n

end A308005

/-! ## A308005.P17688670534682058907

`A308003(A061601(n))+A010054(A046092(n+3))`
-/

namespace A308005.P17688670534682058907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 (A061601 n).toNat + A010054 (A046092 (n + 3)).toNat

end

end A308005.P17688670534682058907

namespace A308005

/-- `A308003(A061601(n))+A010054(A046092(n+3))` -/
def P17688670534682058907.Spec : Prop :=
  ∀ n, P17688670534682058907.a n = A308005 n

end A308005

/-! ## A308005.P10122770637633428750

`A308003(A061601(n))+A008683(A001248(n+1))`
-/

namespace A308005.P10122770637633428750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308003 (A061601 n).toNat + A008683 (A001248 (n + 1)).toNat

end

end A308005.P10122770637633428750

namespace A308005

/-- `A308003(A061601(n))+A008683(A001248(n+1))` -/
def P10122770637633428750.Spec : Prop :=
  ∀ n, P10122770637633428750.a n = A308005 n

end A308005

/-!
# A308006: Iterate the map x->A308005(x) starting at x=n; a(n) is the number of steps before the first repeated term is encountered.

The programs for A308006, there is no canonical definition to state claims against.
-/

/-! ## A308006.P7622568799353143308

`A020639(3*(n+1))-∑{e}[A164555(n), #]`
-/

namespace A308006.P7622568799353143308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 1)) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A308006.P7622568799353143308

/-!
# A308007: Absolute values of first differences of A081145.

The programs for A308007, there is no canonical definition to state claims against.
-/

/-! ## A308007.P8833684163395410621

`abs(A099004(n+1))`
-/

namespace A308007.P8833684163395410621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099004 (n + 1)|

end

end A308007.P8833684163395410621

/-! ## A308007.P7731681597249652026

`A258137(n+1)/2`
-/

namespace A308007.P7731681597249652026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258137 (n + 1) : ℚ) / 2

end

end A308007.P7731681597249652026

/-! ## A308007.P17682641132580985926

`abs(Δ[A081145(n+1)])`
-/

namespace A308007.P17682641132580985926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A308007.P17682641132580985926

/-! ## A308007.P6121970635890316754

`abs(Δ[A258136(n+1)/2])`
-/

namespace A308007.P6121970635890316754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258136 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A308007.P6121970635890316754

/-! ## A308007.P13289078408299157466

`gcd(A000038(n), A099004(n+1))`
-/

namespace A308007.P13289078408299157466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A099004 (n + 1))

end

end A308007.P13289078408299157466

/-! ## A308007.P7676468625676249209

`lcm(A020985(n), A099004(n+1))`
-/

namespace A308007.P7676468625676249209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A099004 (n + 1))

end

end A308007.P7676468625676249209

/-! ## A308007.P6358107222606862814

`∑{d}[A099004(n+1), A000010(#)]`
-/

namespace A308007.P6358107222606862814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A308007.P6358107222606862814

/-! ## A308007.P11464282871043922942

`∏{d}[A099004(n+1), A014963(#)]`
-/

namespace A308007.P11464282871043922942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A308007.P11464282871043922942

/-! ## A308007.P5292838738121830565

`abs(A081145(n+2)-A081145(n+1))`
-/

namespace A308007.P5292838738121830565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081145 (n + 2) - A081145 (n + 1)|

end

end A308007.P5292838738121830565

/-! ## A308007.P5042702554023318060

`lcm(A008836(n+1)*A099004(n+1), A008836(n+1))`
-/

namespace A308007.P5042702554023318060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1) * A099004 (n + 1)) (A008836 (n + 1))

end

end A308007.P5042702554023318060

/-! ## A308007.P3194590595385378088

`A001281(A258137(n+1))`
-/

namespace A308007.P3194590595385378088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A258137 (n + 1)).toNat

end

end A308007.P3194590595385378088

/-! ## A308007.P12993260245414241698

`A308021(A081145(n+1))`
-/

namespace A308007.P12993260245414241698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308021 (A081145 (n + 1)).toNat

end

end A308007.P12993260245414241698

/-! ## A308007.P4495227036931623386

`abs(Δ[A052938(A258136(n+1))])`
-/

namespace A308007.P4495227036931623386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A258136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A308007.P4495227036931623386

/-!
# A308008: a(0)=a(1)=1; thereafter a(n+1) = 1 + a(n) + Sum_{m=1..n} binomial(2*n, 2*m-1)*a(n+1-m).

The programs for A308008, there is no canonical definition to state claims against.
-/

/-! ## A308008.P17206172513531328673

`A034328(A062708(n))`
-/

namespace A308008.P17206172513531328673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034328 (A062708 n).toNat

end

end A308008.P17206172513531328673

/-!
# A308009: The terms of A081145 appear to lie on three lines; set a(n) = 0 if A081145(n) is on the lower line, 1 if it is on the middle line, and 2 if it is on the upper line.

The programs for A308009, there is no canonical definition to state claims against.
-/

/-! ## A308009.P15456312241643347232

`floor(acot(n)*A081145(n+1))`
-/

namespace A308009.P15456312241643347232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) * (A081145 (n + 1) : ℝ)⌋

end

end A308009.P15456312241643347232

/-! ## A308009.P1548263893703210860

`round((A258136(n+1)/A008486(n))²)`
-/

namespace A308009.P1548263893703210860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A258136 (n + 1) : ℚ) / (A008486 n : ℚ)) ^ 2)

end

end A308009.P1548263893703210860

/-! ## A308009.P1971357244091617477

`floor(A081145(n+1)/∑[A188318(n+1)])`
-/

namespace A308009.P1971357244091617477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081145 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A308009.P1971357244091617477

/-! ## A308009.P18340734025017650205

`floor(A000040(A081145(n+1))/A000040(n+1))`
-/

namespace A308009.P18340734025017650205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (A081145 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A308009.P18340734025017650205

/-! ## A308009.P3218481483745144815

`floor(A007521(A081145(n+1))/A007521(n+1))`
-/

namespace A308009.P3218481483745144815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007521 (A081145 (n + 1)).toNat : ℚ) / (A007521 (n + 1) : ℚ)⌋

end

end A308009.P3218481483745144815

/-! ## A308009.P8203413827121324600

`floor((A101309(n)+A081145(n+1))/(n+1))`
-/

namespace A308009.P8203413827121324600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101309 n + A081145 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A308009.P8203413827121324600

/-!
# A308010: List of x-coordinates of successive points on the lowest of the three lines formed by the terms of A081145.

The programs for A308010, there is no canonical definition to state claims against.
-/

/-! ## A308010.P488227226941676003

`eq[1, (n+1)^A308009(n+1)]+1`
-/

namespace A308010.P488227226941676003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A308009 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A308010.P488227226941676003

/-! ## A308010.P2986663181253419507

`A081146(A308011(n+1))`
-/

namespace A308010.P2986663181253419507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081146 (A308011 (n + 1)).toNat

end

end A308010.P2986663181253419507

/-! ## A308010.P8785047215664008152

`eq[A294619(n), A308009(n+1)]`
-/

namespace A308010.P8785047215664008152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308010.P8785047215664008152

/-! ## A308010.P7488049957975712637

`A308017(2*(n+1)%(n+1)²+1)`
-/

namespace A308010.P7488049957975712637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308017 (2 * ((n + 1) % (n + 1) ^ 2) + 1)

end

end A308010.P7488049957975712637

/-! ## A308010.P15921485769841485434

`A308017(A267872(n+1))`
-/

namespace A308010.P15921485769841485434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308017 (A267872 (n + 1)).toNat

end

end A308010.P15921485769841485434

/-! ## A308010.P3125617587480836749

`A308017(2*(1-A000007(n)+n)+1)`
-/

namespace A308010.P3125617587480836749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308017 (2 * (1 - A000007 n + (n : ℤ)) + 1).toNat

end

end A308010.P3125617587480836749

/-! ## A308010.P7674418228120225014

`A308017(2*(A308009(a(n-1)+1)+n)+1)` with `a(0)=1`
-/

namespace A308010.P7674418228120225014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308017 (2 * (A308009 (a (n - 1) + 1).toNat + (n : ℤ)) + 1).toNat

end

end A308010.P7674418228120225014

/-! ## A308010.P4521737790651033538

`lt[A081145(n+1), A064680(A004277(n))]+1`
-/

namespace A308010.P4521737790651033538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A308010.P4521737790651033538

/-!
# A308011: List of y-coordinates of successive points on the lowest of the three lines formed by the terms of A081145.

The programs for A308011, there is no canonical definition to state claims against.
-/

/-! ## A308011.P3123895117870509134

`A081145(A308010(n+1))`
-/

namespace A308011.P3123895117870509134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A308010 (n + 1)).toNat

end

end A308011.P3123895117870509134

/-! ## A308011.P12318304463744507247

`A081145(A308017(2*n+3))%A017197(n)`
-/

namespace A308011.P12318304463744507247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081145 (A308017 (2 * n + 3)).toNat) (A017197 n)

end

end A308011.P12318304463744507247

/-! ## A308011.P1587212185718516100

`A081145(A308017(2*n+3))^A001221(A001316(n))`
-/

namespace A308011.P1587212185718516100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081145 (A308017 (2 * n + 3)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A308011.P1587212185718516100

/-! ## A308011.P5994966817706691724

`A081145(A308017(2*n+3))^A001221(A046644(n+1))`
-/

namespace A308011.P5994966817706691724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081145 (A308017 (2 * n + 3)).toNat : ℚ) ^ (A001221 (A046644 (n + 1)).toNat : ℤ)

end

end A308011.P5994966817706691724

/-! ## A308011.P7194712560803158771

`A081145(A308017(2*n+3))+A010816(A101881(n))`
-/

namespace A308011.P7194712560803158771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A308017 (2 * n + 3)).toNat + A010816 (A101881 n).toNat

end

end A308011.P7194712560803158771

/-! ## A308011.P1750426643487314595

`record[A308172(n+2)%A281469(n+2)]`
-/

namespace A308011.P1750426643487314595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308172 (n + 2)) (A281469 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308011.P1750426643487314595

/-! ## A308011.P1045030496679137374

`record[A308172(A254667(n)%A281469(n+1))]`
-/

namespace A308011.P1045030496679137374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308172 (Int.tmod (A254667 n) (A281469 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308011.P1045030496679137374

/-! ## A308011.P9930005600034349955

`record[A308172(A022290(A008611(4*n+1)))]`
-/

namespace A308011.P9930005600034349955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308172 (A022290 (A008611 (4 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308011.P9930005600034349955

/-! ## A308011.P11278460579558546369

`record[A308172(2*A308178(n))]`
-/

namespace A308011.P11278460579558546369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308172 (2 * A308178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308011.P11278460579558546369

/-! ## A308011.P7841627467868013559

`record[A308172(A172474(A107821(n+1)))]`
-/

namespace A308011.P7841627467868013559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308172 (A172474 (A107821 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308011.P7841627467868013559

/-!
# A308012: List of x-coordinates of successive points on the middle one of the three lines formed by the terms of A081145.

The programs for A308012, there is no canonical definition to state claims against.
-/

/-! ## A308012.P9517430464642188385

`eq[1, A308009(1+n)]+1`
-/

namespace A308012.P9517430464642188385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308012.P9517430464642188385

/-! ## A308012.P3430878391274077678

`∪[2*n^5, A308010(n+1)]+1`
-/

namespace A308012.P3430878391274077678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A308012.P3430878391274077678

/-! ## A308012.P5947382943699390504

`eq[A054977(n), A308009(A028310(n))]`
-/

namespace A308012.P5947382943699390504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308012.P5947382943699390504

/-! ## A308012.P121055047181525571

`eq[A057427(n), A308009(A028310(n))]`
-/

namespace A308012.P121055047181525571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308012.P121055047181525571

/-! ## A308012.P12300212517018611471

`A081146(A308013(n+1))`
-/

namespace A308012.P12300212517018611471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081146 (A308013 (n + 1)).toNat

end

end A308012.P12300212517018611471

/-! ## A308012.P7415351341193117345

`A308017(A316571(n+1))`
-/

namespace A308012.P7415351341193117345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308017 (A316571 (n + 1)).toNat

end

end A308012.P7415351341193117345

/-!
# A308013: List of y-coordinates of successive points on the middle one of the three lines formed by the terms of A081145.

The programs for A308013, there is no canonical definition to state claims against.
-/

/-! ## A308013.P17080577031673560139

`A081145(A308012(n+1))`
-/

namespace A308013.P17080577031673560139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A308012 (n + 1)).toNat

end

end A308013.P17080577031673560139

/-! ## A308013.P8716660530631585036

`A081145(eq[1, A308009(n+1)]+1)`
-/

namespace A308013.P8716660530631585036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A308013.P8716660530631585036

/-! ## A308013.P5075706929644463822

`A081145(A308017(abs(C(2, n)-n)+n))`
-/

namespace A308013.P5075706929644463822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A308017 (|(Nat.choose 2 n : ℤ) - (n : ℤ)| + (n : ℤ)).toNat).toNat

end

end A308013.P5075706929644463822

/-! ## A308013.P9684513678153578864

`record[A081145(n+1)%A249025(n+1)]`
-/

namespace A308013.P9684513678153578864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081145 (n + 1)) (A249025 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308013.P9684513678153578864

/-! ## A308013.P1520659818180897961

`A007095(n)+A005245(A247309(3*n))`
-/

namespace A308013.P1520659818180897961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n + A005245 (A247309 (3 * n)).toNat

end

end A308013.P1520659818180897961

/-!
# A308014: List of x-coordinates of successive points on the highest of the three lines formed by the terms of A081145.

The programs for A308014, there is no canonical definition to state claims against.
-/

/-! ## A308014.P9701085296811883782

`record[(n+1)^(A308009(n+1)-1)]`
-/

namespace A308014.P9701085296811883782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A308009 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308014.P9701085296811883782

/-! ## A308014.P12518195464576899100

`lt[2*n, A081145(n+1)]+1`
-/

namespace A308014.P12518195464576899100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A308014.P12518195464576899100

/-! ## A308014.P5796793728906893385

`A008619(record[(2*n)%A081145(n+1)])`
-/

namespace A308014.P5796793728906893385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A081145 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308014.P5796793728906893385

/-! ## A308014.P3706839742533910925

`A081146(A308015(n+1))`
-/

namespace A308014.P3706839742533910925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081146 (A308015 (n + 1)).toNat

end

end A308014.P3706839742533910925

/-! ## A308014.P3355022885943249097

`record[A000027(n+1)%A052938(A081145(n+1))]`
-/

namespace A308014.P3355022885943249097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A052938 (A081145 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308014.P3355022885943249097

/-! ## A308014.P16935126780392439112

`A081146(record[A308009(n+1)^log2(A081145(n+1))])`
-/

namespace A308014.P16935126780392439112
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A308009 (n + 1) : ℝ) ^ (Real.logb 2 (A081145 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081146 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A308014.P16935126780392439112

/-!
# A308015: List of y-coordinates of successive points on the highest of the three lines formed by the terms of A081145.

The programs for A308015, there is no canonical definition to state claims against.
-/

/-! ## A308015.P5227499903498228987

`A081145(A308014(n+1))`
-/

namespace A308015.P5227499903498228987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A308014 (n + 1)).toNat

end

end A308015.P5227499903498228987

/-! ## A308015.P18270160055176044421

`record[A081145(A081146(2+n)-1)]`
-/

namespace A308015.P18270160055176044421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A081146 (2 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308015.P18270160055176044421

/-! ## A308015.P13614609637624536297

`A081145(lt[2*n, A081145(n+1)]+1)`
-/

namespace A308015.P13614609637624536297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A308015.P13614609637624536297

/-! ## A308015.P11673161406879153519

`record[A308009(n+1)^log2(A081145(n+1))]`
-/

namespace A308015.P11673161406879153519
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A308009 (n + 1) : ℝ) ^ (Real.logb 2 (A081145 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308015.P11673161406879153519

/-! ## A308015.P5074151120426767844

`record[A081145((n+1)%A081145(n+1)+1)]`
-/

namespace A308015.P5074151120426767844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (Int.tmod (n + 1 : ℤ) (A081145 (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308015.P5074151120426767844

/-! ## A308015.P14164224438884854522

`record[A081145(xor(n+1, 2-A308009(n+2))+1)]`
-/

namespace A308015.P14164224438884854522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (Int.xor (n + 1 : ℤ) (2 - A308009 (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308015.P14164224438884854522

/-! ## A308015.P3560614176485423593

`record[A081145(A001462(A317633(n+1)))]`
-/

namespace A308015.P3560614176485423593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A001462 (A317633 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308015.P3560614176485423593

/-!
# A308016: The terms of A308007 appear to lie on two lines; set a(n) = 0 if A308007(n) is on the lower line (defined by A308009(n) <= n), a(n) = 1 if it is on the upper line (defined by a(n) >= n).

The programs for A308016, there is no canonical definition to state claims against.
-/

/-! ## A308016.P7404247274686122119

`char[A308019(1+n)-1]`
-/

namespace A308016.P7404247274686122119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308019 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A308016.P7404247274686122119

/-! ## A308016.P9106939987764550351

`char[lt[n, A308007(n+1)]]`
-/

namespace A308016.P9106939987764550351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308007 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A308016.P9106939987764550351

/-! ## A308016.P8963206546690306768

`floor(abs(Δ[A081145(n+1)])/(n+1))`
-/

namespace A308016.P8963206546690306768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|f1 (n + 1) - f1 n| : ℚ) / (n + 1 : ℚ)⌋

end

end A308016.P8963206546690306768

/-! ## A308016.P351420739110158456

`A000217(floor(A308007(n+1)/(n+1)))`
-/

namespace A308016.P351420739110158456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(A308007 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A308016.P351420739110158456

/-! ## A308016.P14211608032376658411

`A002288(floor(A308007(n+1)/(n+1)))`
-/

namespace A308016.P14211608032376658411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002288 ⌊(A308007 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A308016.P14211608032376658411

/-! ## A308016.P6317789667612398323

`floor(A258137(n+1)/A004275(n+2))`
-/

namespace A308016.P6317789667612398323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258137 (n + 1) : ℚ) / (A004275 (n + 2) : ℚ)⌋

end

end A308016.P6317789667612398323

/-! ## A308016.P13651637058920274935

`round(A308007(n+1)/A308012(n+1))`
-/

namespace A308016.P13651637058920274935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A308007 (n + 1) : ℚ) / (A308012 (n + 1) : ℚ))

end

end A308016.P13651637058920274935

/-!
# A308017: List of x-coordinates of successive points on the lower of the two lines formed by the terms of A308007.

The programs for A308017, there is no canonical definition to state claims against.
-/

/-! ## A308017.P1266635016788614482

`lt[A081145(n+1), 2*(n+1)]+1`
-/

namespace A308017.P1266635016788614482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A308017.P1266635016788614482

/-! ## A308017.P16148605907839766448

`comp[A308014(n+1)%(∑[9*n-8]+9)]`
-/

namespace A308017.P16148605907839766448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308014 (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j + 9)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308017.P16148605907839766448

/-! ## A308017.P12200122751888521150

`comp[A308019(n+1)%A308020(n+1)]`
-/

namespace A308017.P12200122751888521150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308019 (n + 1)) (A308020 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308017.P12200122751888521150

/-! ## A308017.P2467678615081652807

`comp[(eq[1, A308016(n+1)]+1)%A308020(n+1)]`
-/

namespace A308017.P2467678615081652807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308016 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) (A308020 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308017.P2467678615081652807

/-! ## A308017.P3817655191476544733

`comp[record[n%A099004(n+1)+1]%A308020(n+1)]`
-/

namespace A308017.P3817655191476544733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A099004 (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A308020 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308017.P3817655191476544733

/-! ## A308017.P10693819613831286455

`lt[A081145(A004277(n)-n), A004277(n)]`
-/

namespace A308017.P10693819613831286455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308017.P10693819613831286455

/-!
# A308018: List of y-coordinates of successive points on the lower of the two lines formed by the terms of A308007.

The programs for A308018, there is no canonical definition to state claims against.
-/

/-! ## A308018.P15577479242031296923

`A308007(A308017(n+1))`
-/

namespace A308018.P15577479242031296923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308007 (A308017 (n + 1)).toNat

end

end A308018.P15577479242031296923

/-! ## A308018.P3341655063466216106

`gcd(A000038(n), A099004(A308017(n+1)))`
-/

namespace A308018.P3341655063466216106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A099004 (A308017 (n + 1)).toNat)

end

end A308018.P3341655063466216106

/-! ## A308018.P10809214849853474495

`lcm(A020985(n), A099004(A308017(n+1)))`
-/

namespace A308018.P10809214849853474495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A099004 (A308017 (n + 1)).toNat)

end

end A308018.P10809214849853474495

/-! ## A308018.P8994770329889031571

`∑{d}[A099004(A308017(n+1)), A000010(#)]`
-/

namespace A308018.P8994770329889031571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (A308017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A308018.P8994770329889031571

/-! ## A308018.P7721466319343401350

`abs(A099004(A308017(n+1))%A000040(n+1))`
-/

namespace A308018.P7721466319343401350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A099004 (A308017 (n + 1)).toNat) (A000040 (n + 1))|

end

end A308018.P7721466319343401350

/-!
# A308019: List of x-coordinates of successive points on the higher of the two lines formed by the terms of A308007.

The programs for A308019, there is no canonical definition to state claims against.
-/

/-! ## A308019.P3864769693520976784

`eq[1, A308016(n+1)]+1`
-/

namespace A308019.P3864769693520976784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308016 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308019.P3864769693520976784

/-! ## A308019.P1266970175805084273

`lt[n, A308007(n+1)]+1`
-/

namespace A308019.P1266970175805084273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A308019.P1266970175805084273

/-! ## A308019.P4457276008952113851

`record[n%A099004(n+1)+1]`
-/

namespace A308019.P4457276008952113851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A099004 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308019.P4457276008952113851

/-! ## A308019.P5502420324640527434

`filter[A038459(n+1), A308016(#)]`
-/

namespace A308019.P5502420324640527434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A308016 (f1 j).toNat = 1) n)

end

end A308019.P5502420324640527434

/-! ## A308019.P6992805922947757942

`∪[A292125(n+1), A308014(n+1)]`
-/

namespace A308019.P6992805922947757942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308019.P6992805922947757942

/-! ## A308019.P2451016273277917784

`∪[A308014(n+1), A330928(n+1)]`
-/

namespace A308019.P2451016273277917784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308019.P2451016273277917784

/-! ## A308019.P8596638480679711486

`∪[A308014(n+1), A331561(n+1)]`
-/

namespace A308019.P8596638480679711486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308019.P8596638480679711486

/-! ## A308019.P15628891194920268854

`record[A008619(n)*A308016(A008619(n))]`
-/

namespace A308019.P15628891194920268854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A308016 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308019.P15628891194920268854

/-! ## A308019.P3685873758403216242

`comp[A308017(n+5)%A039771(n+1)]`
-/

namespace A308019.P3685873758403216242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308017 (n + 5)) (A039771 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308019.P3685873758403216242

/-! ## A308019.P16350696206136045437

`record[A081146(A081145(n+1))*A308016(n+1)]`
-/

namespace A308019.P16350696206136045437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081146 (A081145 (n + 1)).toNat * A308016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308019.P16350696206136045437

/-! ## A308019.P13035487767021616110

`record[A008620(n)*A308016(A008620(n))]`
-/

namespace A308019.P13035487767021616110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A308016 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308019.P13035487767021616110

/-!
# A308020: List of y-coordinates of successive points on the higher of the two lines formed by the terms of A308007.

The programs for A308020, there is no canonical definition to state claims against.
-/

/-! ## A308020.P1440544549118968232

`record[A308007(n+1)]`
-/

namespace A308020.P1440544549118968232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308020.P1440544549118968232

/-! ## A308020.P16045375629116320772

`record[abs(A099004(n+1))]`
-/

namespace A308020.P16045375629116320772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099004 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308020.P16045375629116320772

/-! ## A308020.P17389056209110415018

`record[A258137(n+1)/2]`
-/

namespace A308020.P17389056209110415018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258137 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308020.P17389056209110415018

/-! ## A308020.P4455469756997184034

`record[abs(Δ[A081145(n+1)])]`
-/

namespace A308020.P4455469756997184034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308020.P4455469756997184034

/-! ## A308020.P15499975335046860828

`A308007(A308019(n+1))`
-/

namespace A308020.P15499975335046860828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308007 (A308019 (n + 1)).toNat

end

end A308020.P15499975335046860828

/-! ## A308020.P12113786979359098554

`record[lcm(A008836(n+1), A099004(n+1))]`
-/

namespace A308020.P12113786979359098554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A099004 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308020.P12113786979359098554

/-! ## A308020.P12572077697023317984

`A001281(record[A258137(n+1)])`
-/

namespace A308020.P12572077697023317984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308020.P12572077697023317984

/-! ## A308020.P3044895040398255712

`record[A308021(A081145(n+1))]`
-/

namespace A308020.P3044895040398255712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308021 (A081145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308020.P3044895040398255712

/-!
# A308021: Start at n=1. Fill in a(n) with a value d > 0 not used earlier such that n-d or n+d is the smallest possible index not visited earlier, then continue with that index.

The programs for A308021, there is no canonical definition to state claims against.
-/

/-! ## A308021.P9222313132630265375

`A258137(A081146(n+1))/2`
-/

namespace A308021.P9222313132630265375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258137 (A081146 (n + 1)).toNat : ℚ) / 2

end

end A308021.P9222313132630265375

/-! ## A308021.P12301317316483814418

`gcd(A000038(n), A099004(A081146(n+1)))`
-/

namespace A308021.P12301317316483814418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A099004 (A081146 (n + 1)).toNat)

end

end A308021.P12301317316483814418

/-! ## A308021.P14542964779820534693

`∑{d}[A099004(A081146(n+1)), A000010(#)]`
-/

namespace A308021.P14542964779820534693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (A081146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A308021.P14542964779820534693

/-! ## A308021.P12199156464141278618

`∏{d}[A099004(A081146(n+1)), A014963(#)]`
-/

namespace A308021.P12199156464141278618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099004 (A081146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A308021.P12199156464141278618

/-! ## A308021.P14394780497282660664

`A308007(A081146(n+1))`
-/

namespace A308021.P14394780497282660664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308007 (A081146 (n + 1)).toNat

end

end A308021.P14394780497282660664

/-!
# A308022: a(n) = prevprime(2*n-1) - nextprime(n-1), where prevprime = A151799 and nextprime = A151800.

The programs for A308022, the canonical program `A308022.P11125181129140425043` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308022 has offset 2).

The definition of A308022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308022.P11125181129140425043

`A151799(2*(n+2)-1)-A151800(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A308022

/-- `A151799(2*(n+2)-1)-A151800(n+1)` -/
def P11125181129140425043.Spec : Prop :=
  ∀ n, P11125181129140425043.a n = A308022 (n + 2)

theorem P11125181129140425043.correct : P11125181129140425043.Spec := by
  intro n
  simp only [A308022, Nat.add_sub_cancel]

end A308022

/-! ## A308022.P12381398611717644389

`A033558(n+1)-A238737(n)`
-/

namespace A308022.P12381398611717644389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (n + 1) - A238737 n

end

end A308022.P12381398611717644389

namespace A308022

/-- `A033558(n+1)-A238737(n)` -/
def P12381398611717644389.Spec : Prop :=
  ∀ n, P12381398611717644389.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P5882722835086306019

`A060308(n+1)-A151800(n+1)`
-/

namespace A308022.P5882722835086306019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1) - A151800 (n + 1)

end

end A308022.P5882722835086306019

namespace A308022

/-- `A060308(n+1)-A151800(n+1)` -/
def P5882722835086306019.Spec : Prop :=
  ∀ n, P5882722835086306019.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P2642016872065353768

`A060308(n+1)%A066169(n+1)`
-/

namespace A308022.P2642016872065353768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060308 (n + 1)) (A066169 (n + 1))

end

end A308022.P2642016872065353768

namespace A308022

/-- `A060308(n+1)%A066169(n+1)` -/
def P2642016872065353768.Spec : Prop :=
  ∀ n, P2642016872065353768.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P12623962529238631200

`A060308(n+1)-A000040(A036234(n+1))`
-/

namespace A308022.P12623962529238631200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1) - A000040 (A036234 (n + 1)).toNat

end

end A308022.P12623962529238631200

namespace A308022

/-- `A060308(n+1)-A000040(A036234(n+1))` -/
def P12623962529238631200.Spec : Prop :=
  ∀ n, P12623962529238631200.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P16262223989810745346

`A000040(A000720(2*(n+1)))-A151800(n+1)`
-/

namespace A308022.P16262223989810745346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (2 * (n + 1))).toNat - A151800 (n + 1)

end

end A308022.P16262223989810745346

namespace A308022

/-- `A000040(A000720(2*(n+1)))-A151800(n+1)` -/
def P16262223989810745346.Spec : Prop :=
  ∀ n, P16262223989810745346.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P11028315916320008443

`A151799(2*n+3)-A151799(A101300(n+1))`
-/

namespace A308022.P11028315916320008443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (2 * n + 3) - A151799 (A101300 (n + 1)).toNat

end

end A308022.P11028315916320008443

namespace A308022

/-- `A151799(2*n+3)-A151799(A101300(n+1))` -/
def P11028315916320008443.Spec : Prop :=
  ∀ n, P11028315916320008443.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P11463973063501133150

`A060308(n+1)-A007918(n+2)`
-/

namespace A308022.P11463973063501133150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1) - A007918 (n + 2)

end

end A308022.P11463973063501133150

namespace A308022

/-- `A060308(n+1)-A007918(n+2)` -/
def P11463973063501133150.Spec : Prop :=
  ∀ n, P11463973063501133150.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P2327187622552621047

`A151799(2*n+3)-A007918(n+2)`
-/

namespace A308022.P2327187622552621047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (2 * n + 3) - A007918 (n + 2)

end

end A308022.P2327187622552621047

namespace A308022

/-- `A151799(2*n+3)-A007918(n+2)` -/
def P2327187622552621047.Spec : Prop :=
  ∀ n, P2327187622552621047.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P6011388790470980065

`A000040(∑[C(2*n+1, ∏{d}[2*n+1, #])])-A007918(n+2)`
-/

namespace A308022.P6011388790470980065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - A007918 (n + 2)

end

end A308022.P6011388790470980065

namespace A308022

/-- `A000040(∑[C(2*n+1, ∏{d}[2*n+1, #])])-A007918(n+2)` -/
def P6011388790470980065.Spec : Prop :=
  ∀ n, P6011388790470980065.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P1842212412563731126

`A007917(2*(n+1))-A151800(n+1)`
-/

namespace A308022.P1842212412563731126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (2 * (n + 1)) - A151800 (n + 1)

end

end A308022.P1842212412563731126

namespace A308022

/-- `A007917(2*(n+1))-A151800(n+1)` -/
def P1842212412563731126.Spec : Prop :=
  ∀ n, P1842212412563731126.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P5820169521414494930

`A070320(2*n+1)-A070320(A151800(n+1))`
-/

namespace A308022.P5820169521414494930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070320 (2 * n + 1) - A070320 (A151800 (n + 1)).toNat

end

end A308022.P5820169521414494930

namespace A308022

/-- `A070320(2*n+1)-A070320(A151800(n+1))` -/
def P5820169521414494930.Spec : Prop :=
  ∀ n, P5820169521414494930.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P14791542340524923122

`A060308(n+1)-A159477(n+2)`
-/

namespace A308022.P14791542340524923122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1) - A159477 (n + 2)

end

end A308022.P14791542340524923122

namespace A308022

/-- `A060308(n+1)-A159477(n+2)` -/
def P14791542340524923122.Spec : Prop :=
  ∀ n, P14791542340524923122.a n = A308022 (n + 2)

end A308022

/-! ## A308022.P10194817048100138072

`A151799(2*n+3)-A159477(n+2)`
-/

namespace A308022.P10194817048100138072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (2 * n + 3) - A159477 (n + 2)

end

end A308022.P10194817048100138072

namespace A308022

/-- `A151799(2*n+3)-A159477(n+2)` -/
def P10194817048100138072.Spec : Prop :=
  ∀ n, P10194817048100138072.a n = A308022 (n + 2)

end A308022

/-!
# A308023: G.f. A(x) satisfies: A(x) = x * (1 + (1/(1 - x)) * (A(x/(1 - x)) + A(x^2/(1 - x)^2) + A(x^3/(1 - x)^3) + ...)).

The programs for A308023, there is no canonical definition to state claims against.
-/

/-! ## A308023.P17725510056045959187

`A331873(ceil(exp(n-1)))`
-/

namespace A308023.P17725510056045959187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A308023.P17725510056045959187

/-! ## A308023.P12198638344347826010

`A157271(A092465(n))`
-/

namespace A308023.P12198638344347826010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A092465 n).toNat

end

end A308023.P12198638344347826010

/-!
# A308025: a(n) = n*(2*n - 3 - (-1)^n)*(5*n - 2 + (-1)^n)/16.

The programs for A308025, the canonical program `A308025.P7060955320747623199` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308025 has offset 1).

The definition of A308025 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A308025.anchor (n : ℕ) : (A308025 (n + 1) : ℚ) = ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((5 * (n + 1) : ℤ) - 2 + (-1) ^ (n + 1)) : ℚ) / 16` in `Proof.A308.A308025`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308025.P7796839082166831436

`ogf((9x^2+10x^3+9x^4+2x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A308025.P7796839082166831436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 9, 10, 9, 2] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A308025.P7796839082166831436

namespace A308025

/-- `ogf((9x^2+10x^3+9x^4+2x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P7796839082166831436.Spec : Prop :=
  ∀ n, P7796839082166831436.a n = A308025 (n + 1)

end A308025

/-! ## A308025.P7060955320747623199

`(n+1)*(2*(n+1)-3-(-1)^(n+1))*(5*(n+1)-2+(-1)^(n+1))/16`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308025

/-- `(n+1)*(2*(n+1)-3-(-1)^(n+1))*(5*(n+1)-2+(-1)^(n+1))/16` -/
def P7060955320747623199.Spec : Prop :=
  ∀ n, P7060955320747623199.a n = (A308025 (n + 1) : ℚ)

end A308025

/-! ## A308025.P203128851212563517

`∑{#}[floor(n/2)-1, (#+1)²+2*(n+1-(#+1))²]`
-/

namespace A308025.P203128851212563517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (((k + 1) ^ 2 : ℤ) + 2 * ((n + 1 : ℤ) - (k + 1 : ℤ)) ^ 2)

end

end A308025.P203128851212563517

namespace A308025

/-- `∑{#}[floor(n/2)-1, (#+1)²+2*(n+1-(#+1))²]` -/
def P203128851212563517.Spec : Prop :=
  ∀ n, P203128851212563517.a n = A308025 (n + 1)

end A308025

/-! ## A308025.P30853710573692218

`∑[A032438(n)*A176059(n)]`
-/

namespace A308025.P30853710573692218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n * A176059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308025.P30853710573692218

namespace A308025

/-- `∑[A032438(n)*A176059(n)]` -/
def P30853710573692218.Spec : Prop :=
  ∀ n, P30853710573692218.a n = A308025 (n + 1)

end A308025

/-! ## A308025.P15959848947606822729

`A294473(n+1)-∑[A142150(n)²]`
-/

namespace A308025.P15959848947606822729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308025.P15959848947606822729

namespace A308025

/-- `A294473(n+1)-∑[A142150(n)²]` -/
def P15959848947606822729.Spec : Prop :=
  ∀ n, P15959848947606822729.a n = A308025 (n + 1)

end A308025

/-! ## A308025.P13422102973950541760

`∑[A020639(3*(n+1))*A032438(n)]`
-/

namespace A308025.P13422102973950541760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (n + 1)) * A032438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308025.P13422102973950541760

namespace A308025

/-- `∑[A020639(3*(n+1))*A032438(n)]` -/
def P13422102973950541760.Spec : Prop :=
  ∀ n, P13422102973950541760.a n = A308025 (n + 1)

end A308025

/-! ## A308025.P7970755238751444217

`A294473(n+1)-A000330(A004526(n))`
-/

namespace A308025.P7970755238751444217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (n + 1) - A000330 (A004526 n).toNat

end

end A308025.P7970755238751444217

namespace A308025

/-- `A294473(n+1)-A000330(A004526(n))` -/
def P7970755238751444217.Spec : Prop :=
  ∀ n, P7970755238751444217.a n = A308025 (n + 1)

end A308025

/-! ## A308025.P18221936446872110912

`A294473(n+1)-A060422(A109613(n))`
-/

namespace A308025.P18221936446872110912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (n + 1) - A060422 (A109613 n).toNat

end

end A308025.P18221936446872110912

namespace A308025

/-- `A294473(n+1)-A060422(A109613(n))` -/
def P18221936446872110912.Spec : Prop :=
  ∀ n, P18221936446872110912.a n = A308025 (n + 1)

end A308025

/-! ## A308025.P2963124031516669113

`∑[A004526(n)*A006370(A317318(n))]`
-/

namespace A308025.P2963124031516669113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A006370 (A317318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308025.P2963124031516669113

namespace A308025

/-- `∑[A004526(n)*A006370(A317318(n))]` -/
def P2963124031516669113.Spec : Prop :=
  ∀ n, P2963124031516669113.a n = A308025 (n + 1)

end A308025

/-! ## A308025.P15336329658217155166

`∑[A006370(n)*A123108(A317318(n))]`
-/

namespace A308025.P15336329658217155166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n * A123108 (A317318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308025.P15336329658217155166

namespace A308025

/-- `∑[A006370(n)*A123108(A317318(n))]` -/
def P15336329658217155166.Spec : Prop :=
  ∀ n, P15336329658217155166.a n = A308025 (n + 1)

end A308025

/-!
# A308026: a(n) = n*(2*n - 3 - (-1)^n)*(11*n + (-1)^n)/24.

The programs for A308026, the canonical program `A308026.P10004811425505037487` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308026 has offset 1).

The definition of A308026 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A308026.anchor (n : ℕ) : (A308026 (n + 1) : ℚ) = ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((11 * (n + 1) : ℤ) + (-1) ^ (n + 1)) : ℚ) / 24` in `Proof.A308.A308026`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308026.P6298173248035213806

`ogf((16x^2+14x^3+12x^4+2x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A308026.P6298173248035213806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 16, 14, 12, 2] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A308026.P6298173248035213806

namespace A308026

/-- `ogf((16x^2+14x^3+12x^4+2x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P6298173248035213806.Spec : Prop :=
  ∀ n, P6298173248035213806.a n = A308026 (n + 1)

end A308026

/-! ## A308026.P10004811425505037487

`(n+1)*(2*(n+1)-3-(-1)^(n+1))*(11*(n+1)+(-1)^(n+1))/24`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308026

/-- `(n+1)*(2*(n+1)-3-(-1)^(n+1))*(11*(n+1)+(-1)^(n+1))/24` -/
def P10004811425505037487.Spec : Prop :=
  ∀ n, P10004811425505037487.a n = (A308026 (n + 1) : ℚ)

end A308026

/-! ## A308026.P13628519449672136150

`2*∑{#}[floor(n/2)-1, (n+1-(#+1))*(n+1+#+1)]`
-/

namespace A308026.P13628519449672136150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, ((n + 1 : ℤ) - (k + 1 : ℤ)) * (n + 1 + (k + 1) : ℤ))

end

end A308026.P13628519449672136150

namespace A308026

/-- `2*∑{#}[floor(n/2)-1, (n+1-(#+1))*(n+1+#+1)]` -/
def P13628519449672136150.Spec : Prop :=
  ∀ n, P13628519449672136150.a n = A308026 (n + 1)

end A308026

/-! ## A308026.P4088782595378032219

`A294473(n+1)+∑[n+1]*A004526(n)`
-/

namespace A308026.P4088782595378032219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294473 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004526 n

end

end A308026.P4088782595378032219

namespace A308026

/-- `A294473(n+1)+∑[n+1]*A004526(n)` -/
def P4088782595378032219.Spec : Prop :=
  ∀ n, P4088782595378032219.a n = A308026 (n + 1)

end A308026

/-!
# A308027: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n * (1 + n*x - A(x))^(n+1), where A(0) = 0.

The programs for A308027, there is no canonical definition to state claims against.
-/

/-! ## A308027.P4555519336805932247

`A262689(or(n^n, ceil(n/2)))`
-/

namespace A308027.P4555519336805932247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lor (n ^ n : ℤ) ⌈(n : ℚ) / 2⌉).toNat

end

end A308027.P4555519336805932247

/-! ## A308027.P6267524904764399854

`A262689(∑[char[∑[n+1]]]+n^n)`
-/

namespace A308027.P6267524904764399854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ n)

end

end A308027.P6267524904764399854

/-! ## A308027.P10611619757126797544

`A089610(xor(2, ∑[floor(3^(10*(n-1)/7))])-1+n)`
-/

namespace A308027.P10611619757126797544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ (10 * (((n : ℤ) - 1 : ℚ) / 7) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ)).toNat

end

end A308027.P10611619757126797544

/-!
# A308030: G.f. A(x) satisfies: A(x) = x + x^2 + x^3 * (1 + A(A(x))).

The programs for A308030, there is no canonical definition to state claims against.
-/

/-! ## A308030.P7897853578928732234

`ceil(A321736(n+1)/13)`
-/

namespace A308030.P7897853578928732234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321736 (n + 1) : ℚ) / 13⌉

end

end A308030.P7897853578928732234

/-! ## A308030.P11292589340883882143

`A003056(∏[A227426(n)])`
-/

namespace A308030.P11292589340883882143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308030.P11292589340883882143

/-! ## A308030.P15972936767732510501

`A051889(floor(sqrt(A003470(n))))`
-/

namespace A308030.P15972936767732510501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.sqrt (A003470 n)).toNat

end

end A308030.P15972936767732510501

/-! ## A308030.P13243886517084046111

`∑[A000196(abs(A394879(n)))]`
-/

namespace A308030.P13243886517084046111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 |A394879 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308030.P13243886517084046111

/-! ## A308030.P5079623088395928544

`A108549(A006981(n))`
-/

namespace A308030.P5079623088395928544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (A006981 n).toNat

end

end A308030.P5079623088395928544

/-!
# A308031: G.f. A(x) satisfies: A(x) = x + x^2 + x^3 + x^4 * (1 + A(A(x))).

The programs for A308031, there is no canonical definition to state claims against.
-/

/-! ## A308031.P6859091949555511238

`floor(∑[A319778(n)/(n+1)])`
-/

namespace A308031.P6859091949555511238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319778 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A308031.P6859091949555511238

/-! ## A308031.P4170444846795255365

`A157905(A262502(n))`
-/

namespace A308031.P4170444846795255365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157905 (A262502 n).toNat

end

end A308031.P4170444846795255365

/-! ## A308031.P2193595762109337366

`A359415(A336010(n+1))`
-/

namespace A308031.P2193595762109337366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (A336010 (n + 1)).toNat

end

end A308031.P2193595762109337366

/-! ## A308031.P6765368642214000695

`A359415(A308032(n+2))`
-/

namespace A308031.P6765368642214000695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (A308032 (n + 2)).toNat

end

end A308031.P6765368642214000695

/-! ## A308031.P10294840987916318113

`A399998(A324166(n)+A040163(n+3))`
-/

namespace A308031.P10294840987916318113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399998 (A324166 n + A040163 (n + 3)).toNat

end

end A308031.P10294840987916318113

/-!
# A308032: G.f. A(x) satisfies: A(x) = x + x^2 + x^3 + x^4 + x^5 * (1 + A(A(x))).

The programs for A308032, there is no canonical definition to state claims against.
-/

/-! ## A308032.P6851324354028819465

`A336010(n)-A165877(A326473(n))`
-/

namespace A308032.P6851324354028819465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336010 n - A165877 (A326473 n).toNat

end

end A308032.P6851324354028819465

/-! ## A308032.P9191612890306027401

`A347520(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A308032.P9191612890306027401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1] fun n a =>
  A347520 (a (n - 1)).toNat + a (n - 1)

end

end A308032.P9191612890306027401

/-! ## A308032.P1519977425497079684

`A161359(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=2, a(7)=4, a(8)=8, a(9)=16, a(10)=32`
-/

namespace A308032.P1519977425497079684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 2, 4, 8, 16, 32] fun n a =>
  A161359 (2 * a (n - 1)).toNat

end

end A308032.P1519977425497079684

/-! ## A308032.P2161692649654121445

`A329452(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=2, a(7)=4, a(8)=8, a(9)=16, a(10)=32`
-/

namespace A308032.P2161692649654121445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 2, 4, 8, 16, 32] fun n a =>
  A329452 (2 * a (n - 1)).toNat

end

end A308032.P2161692649654121445

/-! ## A308032.P3394871398069340535

`∑{digits}[(A000010(n)/2*a(n-1))², (#%2)!]` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A308032.P3394871398069340535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1, 1] fun n f1 =>
  ((A000010 n : ℚ) / 2 * f1 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

end

end A308032.P3394871398069340535

/-!
# A308034: Number of partitions of n into 3 parts with at least 1 part that is a nondivisor of n.

The programs for A308034, the canonical program `A308034.P4024146489496561086` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308034 has offset 1).

The definition of A308034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308034.P4680108149797520895

`ogf((2x^4-3x^5+6x^6-6x^7+6x^8-3x^9)/(1-2x+2x^2-2x^3+x^4-x^6+2x^7-2x^8+2x^9-x^10))`
-/

namespace A308034.P4680108149797520895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 2, -3, 6, -6, 6, -3] [1, -2, 2, -2, 1, 0, -1, 2, -2, 2, -1] n

end

end A308034.P4680108149797520895

namespace A308034

/-- `ogf((2x^4-3x^5+6x^6-6x^7+6x^8-3x^9)/(1-2x+2x^2-2x^3+x^4-x^6+2x^7-2x^8+2x^9-x^10))` -/
def P4680108149797520895.Spec : Prop :=
  ∀ n, P4680108149797520895.a n = A308034 (n + 1)

end A308034

/-! ## A308034.P329127950376166884

`∑[round(xor(1, n)/6)]-A348536(n+1)`
-/

namespace A308034.P329127950376166884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A348536 (n + 1)

end

end A308034.P329127950376166884

namespace A308034

/-- `∑[round(xor(1, n)/6)]-A348536(n+1)` -/
def P329127950376166884.Spec : Prop :=
  ∀ n, P329127950376166884.a n = A308034 (n + 1)

end A308034

/-! ## A308034.P4024146489496561086

`A069905(n+1)-floor(sqrt(10%gcd(12, n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A308034

/-- `A069905(n+1)-floor(sqrt(10%gcd(12, n+1)))` -/
def P4024146489496561086.Spec : Prop :=
  ∀ n, P4024146489496561086.a n = A308034 (n + 1)

theorem P4024146489496561086.correct : P4024146489496561086.Spec := by
  intro n
  simp only [A308034, Nat.add_sub_cancel]

end A308034

/-! ## A308034.P1802978214812691536

`∑[A008615(n)]-A348536(n+1)`
-/

namespace A308034.P1802978214812691536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A348536 (n + 1)

end

end A308034.P1802978214812691536

namespace A308034

/-- `∑[A008615(n)]-A348536(n+1)` -/
def P1802978214812691536.Spec : Prop :=
  ∀ n, P1802978214812691536.a n = A308034 (n + 1)

end A308034

/-! ## A308034.P11094788876541262851

`A069905(n+1)-A348536(n+1)`
-/

namespace A308034.P11094788876541262851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A348536 (n + 1)

end

end A308034.P11094788876541262851

namespace A308034

/-- `A069905(n+1)-A348536(n+1)` -/
def P11094788876541262851.Spec : Prop :=
  ∀ n, P11094788876541262851.a n = A308034 (n + 1)

end A308034

/-! ## A308034.P6392752831269728887

`Δ[A181120(n)]-A348536(n+1)`
-/

namespace A308034.P6392752831269728887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348536 (n + 1)

end

end A308034.P6392752831269728887

namespace A308034

/-- `Δ[A181120(n)]-A348536(n+1)` -/
def P6392752831269728887.Spec : Prop :=
  ∀ n, P6392752831269728887.a n = A308034 (n + 1)

end A308034

/-! ## A308034.P518537305624732543

`A181120(n+1)-(A348536(n+1)+A181120(n))`
-/

namespace A308034.P518537305624732543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 1) - (A348536 (n + 1) + A181120 n)

end

end A308034.P518537305624732543

namespace A308034

/-- `A181120(n+1)-(A348536(n+1)+A181120(n))` -/
def P518537305624732543.Spec : Prop :=
  ∀ n, P518537305624732543.a n = A308034 (n + 1)

end A308034

/-! ## A308034.P4767159180746274478

`A005044(A103517(n))-A348536(n+1)`
-/

namespace A308034.P4767159180746274478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A103517 n).toNat - A348536 (n + 1)

end

end A308034.P4767159180746274478

namespace A308034

/-- `A005044(A103517(n))-A348536(n+1)` -/
def P4767159180746274478.Spec : Prop :=
  ∀ n, P4767159180746274478.a n = A308034 (n + 1)

end A308034

/-! ## A308034.P8897829208002644853

`A005044(A317440(n+1))-A348536(n+1)`
-/

namespace A308034.P8897829208002644853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A317440 (n + 1)).toNat - A348536 (n + 1)

end

end A308034.P8897829208002644853

namespace A308034

/-- `A005044(A317440(n+1))-A348536(n+1)` -/
def P8897829208002644853.Spec : Prop :=
  ∀ n, P8897829208002644853.a n = A308034 (n + 1)

end A308034

/-!
# A308035: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of 2/(1 - x + sqrt(1 - 2*x + (1+4*k)*x^2)).

The programs for A308035, there is no canonical definition to state claims against.
-/

/-! ## A308035.P13683416108116640720

`or(A221131(n), A353350(A001595(n)))`
-/

namespace A308035.P13683416108116640720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221131 n) (A353350 (A001595 n).toNat)

end

end A308035.P13683416108116640720

/-! ## A308035.P1564668308785613691

`A362277(n)-A276791(A210038(3*n+1))`
-/

namespace A308035.P1564668308785613691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362277 n - A276791 (A210038 (3 * n + 1)).toNat

end

end A308035.P1564668308785613691

/-! ## A308035.P993093534237225646

`or(A221131(n), A353350(A151747(3*n+4)))`
-/

namespace A308035.P993093534237225646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221131 n) (A353350 (A151747 (3 * n + 4)).toNat)

end

end A308035.P993093534237225646

/-!
# A308036: Coefficient of x^n in 1/(n+1) * (1 + x - 3*x^2)^(n+1).

The programs for A308036, the canonical program `A308036.P17720428160089540193` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308036 has offset 0).

The definition of A308036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308036.P17720428160089540193

`∑{#}[floor(n/2), (-3)^#*C(n, 2*#)*A000108(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A308036

/-- `∑{#}[floor(n/2), (-3)^#*C(n, 2*#)*A000108(#)]` -/
def P17720428160089540193.Spec : Prop :=
  ∀ n, P17720428160089540193.a n = A308036 n

theorem P17720428160089540193.correct : P17720428160089540193.Spec := by
  intro n
  simp only [A308036]

end A308036

/-! ## A308036.P6317996835692484421

`∑{#}[floor(n/2), (-3)^#*C(n, #)*C(n-#, #)/(#+1)]`
-/

namespace A308036.P6317996835692484421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((-3) ^ k * (Nat.choose n k : ℤ) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) : ℚ) / (k + 1 : ℚ)

end

end A308036.P6317996835692484421

namespace A308036

/-- `∑{#}[floor(n/2), (-3)^#*C(n, #)*C(n-#, #)/(#+1)]` -/
def P6317996835692484421.Spec : Prop :=
  ∀ n, P6317996835692484421.a n = (A308036 n : ℚ)

end A308036

/-! ## A308036.P17857547143045071694

`A100228(n+2)/A174971(n)`
-/

namespace A308036.P17857547143045071694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100228 (n + 2) : ℚ) / (A174971 n : ℚ)

end

end A308036.P17857547143045071694

namespace A308036

/-- `A100228(n+2)/A174971(n)` -/
def P17857547143045071694.Spec : Prop :=
  ∀ n, P17857547143045071694.a n = (A308036 n : ℚ)

end A308036

/-! ## A308036.P9890300665616837279

`A308035(∑[n+3]+n+3)`
-/

namespace A308036.P9890300665616837279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308035 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A308036.P9890300665616837279

namespace A308036

/-- `A308035(∑[n+3]+n+3)` -/
def P9890300665616837279.Spec : Prop :=
  ∀ n, P9890300665616837279.a n = A308036 n

end A308036

/-! ## A308036.P8778736608958015225

`A084614((n+1)²+n)/(n+1)`
-/

namespace A308036.P8778736608958015225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084614 ((n + 1) ^ 2 + n) : ℚ) / (n + 1 : ℚ)

end

end A308036.P8778736608958015225

namespace A308036

/-- `A084614((n+1)²+n)/(n+1)` -/
def P8778736608958015225.Spec : Prop :=
  ∀ n, P8778736608958015225.a n = (A308036 n : ℚ)

end A308036

/-!
# A308037: a(n) = Sum_{d|n} Stirling2(n,d).

The programs for A308037, there is no canonical definition to state claims against.
-/

/-! ## A308037.P1049058929740527273

`A049670(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=9, a(4)=2`
-/

namespace A308037.P1049058929740527273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 9, 2] fun n a =>
  A049670 (a (n - 1)).toNat

end

end A308037.P1049058929740527273

/-! ## A308037.P13115366692488916612

`(∑{e}[n+1, #]+1)*A140166(2^n)`
-/

namespace A308037.P13115366692488916612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) * A140166 (2 ^ n)

end

end A308037.P13115366692488916612

/-!
# A308038: a(n) = Sum_{i=1..floor((n-1)/2)} i * (n-i)^2.

The programs for A308038, the canonical program `A308038.P14011371948204488494` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308038 has offset 1).

The definition of A308038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2)-1, (#+1)*(n+1-(#+1))²]` (program `A308038.P14011371948204488494`, by `A308038.P14011371948204488494.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308038.P12894114341326271743

`ogf((4x^2+5x^3+9x^4+3x^5+x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`
-/

namespace A308038.P12894114341326271743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4, 5, 9, 3, 1] [1, -1, -4, 4, 6, -6, -4, 4, 1, -1] n

end

end A308038.P12894114341326271743

namespace A308038

/-- `ogf((4x^2+5x^3+9x^4+3x^5+x^6)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P12894114341326271743.Spec : Prop :=
  ∀ n, P12894114341326271743.a n = A308038 (n + 1)

end A308038

/-! ## A308038.P14011371948204488494

`∑{#}[floor(n/2)-1, (#+1)*(n+1-(#+1))²]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308038

/-- `∑{#}[floor(n/2)-1, (#+1)*(n+1-(#+1))²]` -/
def P14011371948204488494.Spec : Prop :=
  ∀ n, P14011371948204488494.a n = A308038 (n + 1)

theorem P14011371948204488494.correct : P14011371948204488494.Spec := by
  intro n
  simp only [A308038, Nat.add_sub_cancel]

end A308038

/-! ## A308038.P15205898591547740122

`A229093(eq[1, A382673(3*n+2)])`
-/

namespace A308038.P15205898591547740122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382673 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308038.P15205898591547740122

namespace A308038

/-- `A229093(eq[1, A382673(3*n+2)])` -/
def P15205898591547740122.Spec : Prop :=
  ∀ n, P15205898591547740122.a n = A308038 (n + 1)

end A308038

/-!
# A308040: Numbers k such that k - prevprime(k-1) is prime where prevprime(n) is the largest prime < n.

The programs for A308040, there is no canonical definition to state claims against.
-/

/-! ## A308040.P5695406763803723932

`lt[A259194(n), 37*A061358(n)]`
-/

namespace A308040.P5695406763803723932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308040.P5695406763803723932

/-! ## A308040.P15787346523795436744

`comp[(A003215(n)+2)*A061358(n)+n]`
-/

namespace A308040.P15787346523795436744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003215 n + 2) * A061358 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308040.P15787346523795436744

/-! ## A308040.P3063129454009625995

`eq[1, A001222(A175851(n+2)+1)]+4`
-/

namespace A308040.P3063129454009625995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A175851 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A308040.P3063129454009625995

/-! ## A308040.P5787516527774642793

`lt[A051516(n+1), A073610(n+1)]+1`
-/

namespace A308040.P5787516527774642793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A308040.P5787516527774642793

/-! ## A308040.P1582590142322235627

`lt[A070138(n+1), A073610(n+1)]+1`
-/

namespace A308040.P1582590142322235627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A308040.P1582590142322235627

/-! ## A308040.P13277051281188203539

`A025469(∑[char[2*n]])+A014091(n+1)`
-/

namespace A308040.P13277051281188203539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (∑ j ∈ Finset.range (n + 1), f1 j) + A014091 (n + 1)

end

end A308040.P13277051281188203539

/-! ## A308040.P6996826052425819453

`A014091(A043568(A027868(n))+n)`
-/

namespace A308040.P6996826052425819453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (A043568 (A027868 n).toNat + (n : ℤ)).toNat

end

end A308040.P6996826052425819453

/-! ## A308040.P8045176945331262438

`lt[A010785(A282318(n)), A098983(n)]`
-/

namespace A308040.P8045176945331262438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A282318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308040.P8045176945331262438

/-! ## A308040.P6890873300042560798

`A014091(record[A257684(A005788(n+1))])`
-/

namespace A308040.P6890873300042560798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A005788 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308040.P6890873300042560798

/-! ## A308040.P2745947068460275160

`A014091(n+1)+A000429(A261585(n))`
-/

namespace A308040.P2745947068460275160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1) + A000429 (A261585 n).toNat

end

end A308040.P2745947068460275160

/-!
# A308044: a(n) = 2*prevprime(2*n-1) - 2*n, where prevprime(n) is the largest prime < n.

The programs for A308044, the canonical program `A308044.P126588155799411502` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308044 has offset 2).

The definition of A308044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308044.P126588155799411502

`2*A151799(2*(n+2)-1)-2*(n+2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308044

/-- `2*A151799(2*(n+2)-1)-2*(n+2)` -/
def P126588155799411502.Spec : Prop :=
  ∀ n, P126588155799411502.a n = A308044 (n + 2)

theorem P126588155799411502.correct : P126588155799411502.Spec := by
  intro n
  simp only [A308044, Nat.add_sub_cancel]

end A308044

/-! ## A308044.P12807971802955762244

`2*A007917(2*(n+2)-2)-2*(n+2)`
-/

namespace A308044.P12807971802955762244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007917 (2 * (n + 2) - 2) - (2 * (n + 2) : ℤ)

end

end A308044.P12807971802955762244

namespace A308044

/-- `2*A007917(2*(n+2)-2)-2*(n+2)` -/
def P12807971802955762244.Spec : Prop :=
  ∀ n, P12807971802955762244.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P480570451346394384

`2*(n-A238737(n))`
-/

namespace A308044.P480570451346394384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A238737 n)

end

end A308044.P480570451346394384

namespace A308044

/-- `2*(n-A238737(n))` -/
def P480570451346394384.Spec : Prop :=
  ∀ n, P480570451346394384.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P2047704948289942431

`2*(n+1-A049716(n+1))`
-/

namespace A308044.P2047704948289942431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A049716 (n + 1))

end

end A308044.P2047704948289942431

namespace A308044

/-- `2*(n+1-A049716(n+1))` -/
def P2047704948289942431.Spec : Prop :=
  ∀ n, P2047704948289942431.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P14462885159941949959

`2*(A060308(n+1)-(n+2))`
-/

namespace A308044.P14462885159941949959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060308 (n + 1) - (n + 2 : ℤ))

end

end A308044.P14462885159941949959

namespace A308044

/-- `2*(A060308(n+1)-(n+2))` -/
def P14462885159941949959.Spec : Prop :=
  ∀ n, P14462885159941949959.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P13286611772790478564

`A005843(n-A238737(n))`
-/

namespace A308044.P13286611772790478564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - A238737 n).toNat

end

end A308044.P13286611772790478564

namespace A308044

/-- `A005843(n-A238737(n))` -/
def P13286611772790478564.Spec : Prop :=
  ∀ n, P13286611772790478564.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P7285457859302378340

`A005843(A060308(n+1)-(n+2))`
-/

namespace A308044.P7285457859302378340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A060308 (n + 1) - (n + 2 : ℤ)).toNat

end

end A308044.P7285457859302378340

namespace A308044

/-- `A005843(A060308(n+1)-(n+2))` -/
def P7285457859302378340.Spec : Prop :=
  ∀ n, P7285457859302378340.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P5802244714694117683

`A004273(n+1)-A004273(A175851(2*(n+1)))`
-/

namespace A308044.P5802244714694117683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - A004273 (A175851 (2 * (n + 1))).toNat

end

end A308044.P5802244714694117683

namespace A308044

/-- `A004273(n+1)-A004273(A175851(2*(n+1)))` -/
def P5802244714694117683.Spec : Prop :=
  ∀ n, P5802244714694117683.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P17658651174852487938

`A004277(n+1)-A004277(A175851(2*(n+1)))`
-/

namespace A308044.P17658651174852487938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) - A004277 (A175851 (2 * (n + 1))).toNat

end

end A308044.P17658651174852487938

namespace A308044

/-- `A004277(n+1)-A004277(A175851(2*(n+1)))` -/
def P17658651174852487938.Spec : Prop :=
  ∀ n, P17658651174852487938.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P11138403518743312004

`A103517(n+1)-A103517(A175851(2*(n+1)))`
-/

namespace A308044.P11138403518743312004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1) - A103517 (A175851 (2 * (n + 1))).toNat

end

end A308044.P11138403518743312004

namespace A308044

/-- `A103517(n+1)-A103517(A175851(2*(n+1)))` -/
def P11138403518743312004.Spec : Prop :=
  ∀ n, P11138403518743312004.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P10513967182513200475

`A063278(A005843(A060308(n+1)-n))`
-/

namespace A308044.P10513967182513200475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (A005843 (A060308 (n + 1) - (n : ℤ)).toNat).toNat

end

end A308044.P10513967182513200475

namespace A308044

/-- `A063278(A005843(A060308(n+1)-n))` -/
def P10513967182513200475.Spec : Prop :=
  ∀ n, P10513967182513200475.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P10070485310445446669

`A175856(2*(n+1))-2`
-/

namespace A308044.P10070485310445446669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175856 (2 * (n + 1)) - 2

end

end A308044.P10070485310445446669

namespace A308044

/-- `A175856(2*(n+1))-2` -/
def P10070485310445446669.Spec : Prop :=
  ∀ n, P10070485310445446669.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P696148416157047302

`A345668(2*n+3)-1`
-/

namespace A308044.P696148416157047302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345668 (2 * n + 3) - 1

end

end A308044.P696148416157047302

namespace A308044

/-- `A345668(2*n+3)-1` -/
def P696148416157047302.Spec : Prop :=
  ∀ n, P696148416157047302.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P4190321187232365826

`xor(-A175856(2*n+2), -2)`
-/

namespace A308044.P4190321187232365826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A175856 (2 * n + 2)) (-2)

end

end A308044.P4190321187232365826

namespace A308044

/-- `xor(-A175856(2*n+2), -2)` -/
def P4190321187232365826.Spec : Prop :=
  ∀ n, P4190321187232365826.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P3768687732194785673

`2*(n-A064722(2*(n+1)))`
-/

namespace A308044.P3768687732194785673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A064722 (2 * (n + 1)))

end

end A308044.P3768687732194785673

namespace A308044

/-- `2*(n-A064722(2*(n+1)))` -/
def P3768687732194785673.Spec : Prop :=
  ∀ n, P3768687732194785673.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P2528906591831580952

`A070320(2*n+1)-A175851(2*(n+1))`
-/

namespace A308044.P2528906591831580952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070320 (2 * n + 1) - A175851 (2 * (n + 1))

end

end A308044.P2528906591831580952

namespace A308044

/-- `A070320(2*n+1)-A175851(2*(n+1))` -/
def P2528906591831580952.Spec : Prop :=
  ∀ n, P2528906591831580952.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P3366235303153435149

`A151799(2*n+3)-A308050(2*(n+2))`
-/

namespace A308044.P3366235303153435149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (2 * n + 3) - A308050 (2 * (n + 2))

end

end A308044.P3366235303153435149

namespace A308044

/-- `A151799(2*n+3)-A308050(2*(n+2))` -/
def P3366235303153435149.Spec : Prop :=
  ∀ n, P3366235303153435149.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P16923380685682739939

`A020739(n+1)-A020739(A049711(2*n+3))`
-/

namespace A308044.P16923380685682739939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (n + 1) - A020739 (A049711 (2 * n + 3)).toNat

end

end A308044.P16923380685682739939

namespace A308044

/-- `A020739(n+1)-A020739(A049711(2*n+3))` -/
def P16923380685682739939.Spec : Prop :=
  ∀ n, P16923380685682739939.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P8041728333162091703

`A000010(A136548(2*(n+1)))-A175851(2*(n+1))`
-/

namespace A308044.P8041728333162091703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A136548 (2 * (n + 1))).toNat - A175851 (2 * (n + 1))

end

end A308044.P8041728333162091703

namespace A308044

/-- `A000010(A136548(2*(n+1)))-A175851(2*(n+1))` -/
def P8041728333162091703.Spec : Prop :=
  ∀ n, P8041728333162091703.a n = A308044 (n + 2)

end A308044

/-! ## A308044.P15076715524188367455

`A000010(A139421(2*n+1))-A175851(2*(n+1))`
-/

namespace A308044.P15076715524188367455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A139421 (2 * n + 1)).toNat - A175851 (2 * (n + 1))

end

end A308044.P15076715524188367455

namespace A308044

/-- `A000010(A139421(2*n+1))-A175851(2*(n+1))` -/
def P15076715524188367455.Spec : Prop :=
  ∀ n, P15076715524188367455.a n = A308044 (n + 2)

end A308044

/-!
# A308045: Numbers k such that usigma(k) = round(zeta(2)/zeta(3)*k), where usigma(k) is the sum of unitary divisors of k (A034448).

The programs for A308045, there is no canonical definition to state claims against.
-/

/-! ## A308045.P16149372189416192896

`A070527(n+1)-A340670(n)`
-/

namespace A308045.P16149372189416192896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070527 (n + 1) - A340670 n

end

end A308045.P16149372189416192896

/-! ## A308045.P11547561966606616330

`sqrt(∩[A072226(n+1), n²])-A340670(n)`
-/

namespace A308045.P11547561966606616330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ) - (A340670 n : ℝ)

end

end A308045.P11547561966606616330

/-! ## A308045.P12799750803755858282

`A067951(n)+A002262(A317451(n))`
-/

namespace A308045.P12799750803755858282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067951 n + A002262 (A317451 n).toNat

end

end A308045.P12799750803755858282

/-!
# A308046: a(n) = 2*nextprime(n - 1) - 2*n, where nextprime(n) is the smallest prime > n.

The programs for A308046, the canonical program `A308046.P12778737970063889955` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308046 has offset 1).

The definition of A308046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308046.P12778737970063889955

`2*A151800(n)-2*(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A308046

/-- `2*A151800(n)-2*(n+1)` -/
def P12778737970063889955.Spec : Prop :=
  ∀ n, P12778737970063889955.a n = A308046 (n + 1)

theorem P12778737970063889955.correct : P12778737970063889955.Spec := by
  intro n
  simp only [A308046, Nat.add_sub_cancel]

end A308046

/-! ## A308046.P1505545597111403768

`2*A007920(n+1)`
-/

namespace A308046.P1505545597111403768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007920 (n + 1)

end

end A308046.P1505545597111403768

namespace A308046

/-- `2*A007920(n+1)` -/
def P1505545597111403768.Spec : Prop :=
  ∀ n, P1505545597111403768.a n = A308046 (n + 1)

theorem P1505545597111403768.correct : P1505545597111403768.Spec := by
  intro n
  simp only [A308046, Nat.add_sub_cancel, A308046.P1505545597111403768.a, A308046.P12778737970063889955.a, A007920, A007920.P3719263903022372137.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308046

/-! ## A308046.P1993818702698353522

`2*(A013632(n)-1)`
-/

namespace A308046.P1993818702698353522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A013632 n - 1)

end

end A308046.P1993818702698353522

namespace A308046

/-- `2*(A013632(n)-1)` -/
def P1993818702698353522.Spec : Prop :=
  ∀ n, P1993818702698353522.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P8689156367009182200

`2*(A151800(n)-(n+1))`
-/

namespace A308046.P8689156367009182200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151800 n - (n + 1 : ℤ))

end

end A308046.P8689156367009182200

namespace A308046

/-- `2*(A151800(n)-(n+1))` -/
def P8689156367009182200.Spec : Prop :=
  ∀ n, P8689156367009182200.a n = A308046 (n + 1)

theorem P8689156367009182200.correct : P8689156367009182200.Spec := by
  intro n
  simp only [A308046, Nat.add_sub_cancel, A308046.P8689156367009182200.a, A308046.P12778737970063889955.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A308046

/-! ## A308046.P5642963808818638670

`2*(A007918(n+1)-(n+1))`
-/

namespace A308046.P5642963808818638670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007918 (n + 1) - (n + 1 : ℤ))

end

end A308046.P5642963808818638670

namespace A308046

/-- `2*(A007918(n+1)-(n+1))` -/
def P5642963808818638670.Spec : Prop :=
  ∀ n, P5642963808818638670.a n = A308046 (n + 1)

theorem P5642963808818638670.correct : P5642963808818638670.Spec := by
  intro n
  simp only [A308046, Nat.add_sub_cancel, A308046.P5642963808818638670.a, A308046.P12778737970063889955.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308046

/-! ## A308046.P1625000968855272051

`2*(A000040(∑[C(∑{p}[n, #], n)])-(n+1))`
-/

namespace A308046.P1625000968855272051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ))

end

end A308046.P1625000968855272051

namespace A308046

/-- `2*(A000040(∑[C(∑{p}[n, #], n)])-(n+1))` -/
def P1625000968855272051.Spec : Prop :=
  ∀ n, P1625000968855272051.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P14827848706339323104

`A005843(A007920(n+1))`
-/

namespace A308046.P14827848706339323104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007920 (n + 1)).toNat

end

end A308046.P14827848706339323104

namespace A308046

/-- `A005843(A007920(n+1))` -/
def P14827848706339323104.Spec : Prop :=
  ∀ n, P14827848706339323104.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P11843904844582710688

`A005843(A013632(n)-1)`
-/

namespace A308046.P11843904844582710688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A013632 n - 1).toNat

end

end A308046.P11843904844582710688

namespace A308046

/-- `A005843(A013632(n)-1)` -/
def P11843904844582710688.Spec : Prop :=
  ∀ n, P11843904844582710688.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P9928529470136197384

`2*(A013634(n)-A005408(n))`
-/

namespace A308046.P9928529470136197384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A013634 n - A005408 n)

end

end A308046.P9928529470136197384

namespace A308046

/-- `2*(A013634(n)-A005408(n))` -/
def P9928529470136197384.Spec : Prop :=
  ∀ n, P9928529470136197384.a n = A308046 (n + 1)

theorem P9928529470136197384.correct : P9928529470136197384.Spec := by
  intro n
  simp only [A308046, Nat.add_sub_cancel, A308046.P9928529470136197384.a, A308046.P12778737970063889955.a, A005408, A005408.P17437947328870227736.a, A013634, A013634.P1496314925931275042.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308046

/-! ## A308046.P3087171712908640123

`A317440(A151800(n))-A317440(n+1)`
-/

namespace A308046.P3087171712908640123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (A151800 n).toNat - A317440 (n + 1)

end

end A308046.P3087171712908640123

namespace A308046

/-- `A317440(A151800(n))-A317440(n+1)` -/
def P3087171712908640123.Spec : Prop :=
  ∀ n, P3087171712908640123.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P17882275109435783827

`A007920(n+1)+A007920(A028310(n+1))`
-/

namespace A308046.P17882275109435783827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 1) + A007920 (A028310 (n + 1)).toNat

end

end A308046.P17882275109435783827

namespace A308046

/-- `A007920(n+1)+A007920(A028310(n+1))` -/
def P17882275109435783827.Spec : Prop :=
  ∀ n, P17882275109435783827.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P7914555789696503462

`A004273(A007918(n+1))-A004273(n+1)`
-/

namespace A308046.P7914555789696503462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A007918 (n + 1)).toNat - A004273 (n + 1)

end

end A308046.P7914555789696503462

namespace A308046

/-- `A004273(A007918(n+1))-A004273(n+1)` -/
def P7914555789696503462.Spec : Prop :=
  ∀ n, P7914555789696503462.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P6664439099224413697

`A005408(A007918(n+1))-A005408(n+1)`
-/

namespace A308046.P6664439099224413697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A007918 (n + 1)).toNat - A005408 (n + 1)

end

end A308046.P6664439099224413697

namespace A308046

/-- `A005408(A007918(n+1))-A005408(n+1)` -/
def P6664439099224413697.Spec : Prop :=
  ∀ n, P6664439099224413697.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P12761023595389811345

`A100802(2*(n+1))`
-/

namespace A308046.P12761023595389811345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (2 * (n + 1))

end

end A308046.P12761023595389811345

namespace A308046

/-- `A100802(2*(n+1))` -/
def P12761023595389811345.Spec : Prop :=
  ∀ n, P12761023595389811345.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P182889853907096182

`A100802(Δ[n²])-1`
-/

namespace A308046.P182889853907096182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A308046.P182889853907096182

namespace A308046

/-- `A100802(Δ[n²])-1` -/
def P182889853907096182.Spec : Prop :=
  ∀ n, P182889853907096182.a n = A308046 (n + 1)

end A308046

/-! ## A308046.P9502365357254457811

`filter[A100802(n+1), A059841(#)]`
-/

namespace A308046.P9502365357254457811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A308046.P9502365357254457811

namespace A308046

/-- `filter[A100802(n+1), A059841(#)]` -/
def P9502365357254457811.Spec : Prop :=
  ∀ n, P9502365357254457811.a n = A308046 (n + 1)

end A308046

/-!
# A308047: Sum of subgroup indices of dihedral group, Sum_{H <= D(n)} [D(n):H].

The programs for A308047, the canonical program `A308047.P5773726846185413917` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308047 has offset 1).

The definition of A308047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308047.P5773726846185413917

`A001157(n+1)+2*A000203(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A308047

/-- `A001157(n+1)+2*A000203(n+1)` -/
def P5773726846185413917.Spec : Prop :=
  ∀ n, P5773726846185413917.a n = A308047 (n + 1)

theorem P5773726846185413917.correct : P5773726846185413917.Spec := by
  intro n
  simp only [A308047, Nat.add_sub_cancel]

end A308047

/-! ## A308047.P15935306428517453666

`∑{d}[n+1, (#+2)*#]`
-/

namespace A308047.P15935306428517453666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 2) * d

end

end A308047.P15935306428517453666

namespace A308047

/-- `∑{d}[n+1, (#+2)*#]` -/
def P15935306428517453666.Spec : Prop :=
  ∀ n, (P15935306428517453666.a n : ℤ) = A308047 (n + 1)

end A308047

/-! ## A308047.P16865912343821132969

`abs(∑{d}[n+1, 1-(#+1)²])`
-/

namespace A308047.P16865912343821132969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (1 - ((d + 1) ^ 2 : ℤ))|

end

end A308047.P16865912343821132969

namespace A308047

/-- `abs(∑{d}[n+1, 1-(#+1)²])` -/
def P16865912343821132969.Spec : Prop :=
  ∀ n, P16865912343821132969.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P10306396350406890409

`-∑{d}[n+1, 1-(#+1)²]`
-/

namespace A308047.P10306396350406890409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (1 - ((d + 1) ^ 2 : ℤ)))

end

end A308047.P10306396350406890409

namespace A308047

/-- `-∑{d}[n+1, 1-(#+1)²]` -/
def P10306396350406890409.Spec : Prop :=
  ∀ n, P10306396350406890409.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P14184837898744466894

`A074400(n+1)+∑{d}[n+1, #²]`
-/

namespace A308047.P14184837898744466894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ)

end

end A308047.P14184837898744466894

namespace A308047

/-- `A074400(n+1)+∑{d}[n+1, #²]` -/
def P14184837898744466894.Spec : Prop :=
  ∀ n, P14184837898744466894.a n = A308047 (n + 1)

theorem P14184837898744466894.correct : P14184837898744466894.Spec := by
  intro n
  simp only [A308047, Nat.add_sub_cancel, A308047.P14184837898744466894.f1, A308047.P14184837898744466894.a, A308047.P5773726846185413917.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308047

/-! ## A308047.P4178254666891962916

`∑{d}[n+1, (#+1)²]-A000005(n+1)`
-/

namespace A308047.P4178254666891962916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) ^ 2 : ℕ) : ℤ) - A000005 (n + 1)

end

end A308047.P4178254666891962916

namespace A308047

/-- `∑{d}[n+1, (#+1)²]-A000005(n+1)` -/
def P4178254666891962916.Spec : Prop :=
  ∀ n, P4178254666891962916.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P2726319536830012325

`A074400(n+1)+A001157(n+1)`
-/

namespace A308047.P2726319536830012325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + A001157 (n + 1)

end

end A308047.P2726319536830012325

namespace A308047

/-- `A074400(n+1)+A001157(n+1)` -/
def P2726319536830012325.Spec : Prop :=
  ∀ n, P2726319536830012325.a n = A308047 (n + 1)

theorem P2726319536830012325.correct : P2726319536830012325.Spec := by
  intro n
  simp only [A308047, Nat.add_sub_cancel, A308047.P2726319536830012325.a, A308047.P5773726846185413917.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308047

/-! ## A308047.P6455784520692608156

`A272027(n+1)+A086666(n+1)`
-/

namespace A308047.P6455784520692608156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) + A086666 (n + 1)

end

end A308047.P6455784520692608156

namespace A308047

/-- `A272027(n+1)+A086666(n+1)` -/
def P6455784520692608156.Spec : Prop :=
  ∀ n, P6455784520692608156.a n = A308047 (n + 1)

theorem P6455784520692608156.correct : P6455784520692608156.Spec := by
  intro n
  simp only [A308047, Nat.add_sub_cancel, A308047.P6455784520692608156.a, A308047.P5773726846185413917.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A086666, A086666.P3609160851876626108.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308047

/-! ## A308047.P588305137464600464

`A000203(n+1)+2*A007437(n+1)`
-/

namespace A308047.P588305137464600464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2 * A007437 (n + 1)

end

end A308047.P588305137464600464

namespace A308047

/-- `A000203(n+1)+2*A007437(n+1)` -/
def P588305137464600464.Spec : Prop :=
  ∀ n, P588305137464600464.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P432697988279658236

`A038040(n+1)+A189835(n+1)+A074400(n+1)`
-/

namespace A308047.P432697988279658236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + (A189835 (n + 1) + A074400 (n + 1))

end

end A308047.P432697988279658236

namespace A308047

/-- `A038040(n+1)+A189835(n+1)+A074400(n+1)` -/
def P432697988279658236.Spec : Prop :=
  ∀ n, P432697988279658236.a n = A308047 (n + 1)

theorem P432697988279658236.correct : P432697988279658236.Spec := by
  intro n
  simp only [A308047, Nat.add_sub_cancel, A308047.P432697988279658236.a, A308047.P5773726846185413917.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A038040, A038040.P16512896840577774730.a, A074400, A074400.P16312391460013478761.a, A189835, A189835.P10100538785749668856.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308047

/-! ## A308047.P4315128607882019024

`A065608(n+1)+A363628(n+1)+A069153(n+1)`
-/

namespace A308047.P4315128607882019024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + (A363628 (n + 1) + A069153 (n + 1))

end

end A308047.P4315128607882019024

namespace A308047

/-- `A065608(n+1)+A363628(n+1)+A069153(n+1)` -/
def P4315128607882019024.Spec : Prop :=
  ∀ n, P4315128607882019024.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P11046983826844842591

`A000203(n+1)+A092347(n+1)-A001158(n+1)`
-/

namespace A308047.P11046983826844842591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A092347 (n + 1) - A001158 (n + 1))

end

end A308047.P11046983826844842591

namespace A308047

/-- `A000203(n+1)+A092347(n+1)-A001158(n+1)` -/
def P11046983826844842591.Spec : Prop :=
  ∀ n, P11046983826844842591.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P17820667788880388659

`A000203(n+1)+A001158(n+1)-A092350(n+1)`
-/

namespace A308047.P17820667788880388659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A001158 (n + 1) - A092350 (n + 1))

end

end A308047.P17820667788880388659

namespace A308047

/-- `A000203(n+1)+A001158(n+1)-A092350(n+1)` -/
def P17820667788880388659.Spec : Prop :=
  ∀ n, P17820667788880388659.a n = A308047 (n + 1)

theorem P17820667788880388659.correct : P17820667788880388659.Spec := by
  intro n
  simp only [A308047, Nat.add_sub_cancel, A308047.P17820667788880388659.a, A308047.P5773726846185413917.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A092350, A092350.P468185143034267318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308047

/-! ## A308047.P10688429395331134289

`A363628(n+1)+A086666(n+1)-A363610(n+1)`
-/

namespace A308047.P10688429395331134289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363628 (n + 1) + A086666 (n + 1) - A363610 (n + 1)

end

end A308047.P10688429395331134289

namespace A308047

/-- `A363628(n+1)+A086666(n+1)-A363610(n+1)` -/
def P10688429395331134289.Spec : Prop :=
  ∀ n, P10688429395331134289.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P7143930554399900018

`A092346(n+1)+A000203(n+1)`
-/

namespace A308047.P7143930554399900018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092346 (n + 1) + A000203 (n + 1)

end

end A308047.P7143930554399900018

namespace A308047

/-- `A092346(n+1)+A000203(n+1)` -/
def P7143930554399900018.Spec : Prop :=
  ∀ n, P7143930554399900018.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P16449115462354614612

`A092346(n+1)+A092346(n+1)-A001157(n+1)`
-/

namespace A308047.P16449115462354614612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092346 (n + 1) + (A092346 (n + 1) - A001157 (n + 1))

end

end A308047.P16449115462354614612

namespace A308047

/-- `A092346(n+1)+A092346(n+1)-A001157(n+1)` -/
def P16449115462354614612.Spec : Prop :=
  ∀ n, P16449115462354614612.a n = A308047 (n + 1)

end A308047

/-! ## A308047.P12365917963707848197

`A092346(n+1)+A379812(n+1)/A001157(n+1)`
-/

namespace A308047.P12365917963707848197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092346 (n + 1) : ℚ) + (A379812 (n + 1) : ℚ) / (A001157 (n + 1) : ℚ)

end

end A308047.P12365917963707848197

namespace A308047

/-- `A092346(n+1)+A379812(n+1)/A001157(n+1)` -/
def P12365917963707848197.Spec : Prop :=
  ∀ n, P12365917963707848197.a n = (A308047 (n + 1) : ℚ)

end A308047

/-! ## A308047.P442371561474802223

`A146076(2*(n+1))+A001157(n+1)`
-/

namespace A308047.P442371561474802223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (2 * (n + 1)) + A001157 (n + 1)

end

end A308047.P442371561474802223

namespace A308047

/-- `A146076(2*(n+1))+A001157(n+1)` -/
def P442371561474802223.Spec : Prop :=
  ∀ n, P442371561474802223.a n = A308047 (n + 1)

end A308047

/-!
# A308048: a(n) = n - nextprime(ceiling(n/2) - 1), where nextprime(n) is the smallest prime > n.

The programs for A308048, the canonical program `A308048.P2909942597719409398` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308048 has offset 1).

The definition of A308048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308048.P2909942597719409398

`n+1-A151800(ceil((n+1)/2)-1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A308048

/-- `n+1-A151800(ceil((n+1)/2)-1)` -/
def P2909942597719409398.Spec : Prop :=
  ∀ n, P2909942597719409398.a n = A308048 (n + 1)

theorem P2909942597719409398.correct : P2909942597719409398.Spec := by
  intro n
  simp only [A308048, Nat.add_sub_cancel]

end A308048

/-! ## A308048.P12700487142944100176

`n-A098667(or(1, n))`
-/

namespace A308048.P12700487142944100176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A098667 (Nat.lor 1 n)

end

end A308048.P12700487142944100176

namespace A308048

/-- `n-A098667(or(1, n))` -/
def P12700487142944100176.Spec : Prop :=
  ∀ n, P12700487142944100176.a n = A308048 (n + 1)

end A308048

/-! ## A308048.P18081456759082466030

`1-A308052(1+n)+n`
-/

namespace A308048.P18081456759082466030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A308052 (1 + n) + (n : ℤ)

end

end A308048.P18081456759082466030

namespace A308048

/-- `1-A308052(1+n)+n` -/
def P18081456759082466030.Spec : Prop :=
  ∀ n, P18081456759082466030.a n = A308048 (n + 1)

end A308048

/-! ## A308048.P5394478027868226775

`1-A151800(floor(n/2))+n`
-/

namespace A308048.P5394478027868226775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A151800 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)

end

end A308048.P5394478027868226775

namespace A308048

/-- `1-A151800(floor(n/2))+n` -/
def P5394478027868226775.Spec : Prop :=
  ∀ n, P5394478027868226775.a n = A308048 (n + 1)

end A308048

/-! ## A308048.P6916347245643686648

`(n+1-A100802(n+1))/2`
-/

namespace A308048.P6916347245643686648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A100802 (n + 1) : ℚ) / 2

end

end A308048.P6916347245643686648

namespace A308048

/-- `(n+1-A100802(n+1))/2` -/
def P6916347245643686648.Spec : Prop :=
  ∀ n, P6916347245643686648.a n = (A308048 (n + 1) : ℚ)

end A308048

/-! ## A308048.P16183335160673593030

`n+1-A007918(∑[log2(gcd(2, n))])`
-/

namespace A308048.P16183335160673593030
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007918 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A308048.P16183335160673593030

namespace A308048

/-- `n+1-A007918(∑[log2(gcd(2, n))])` -/
def P16183335160673593030.Spec : Prop :=
  ∀ n, P16183335160673593030.a n = A308048 (n + 1)

end A308048

/-! ## A308048.P5813090681954040492

`n+1-A007918(ceil((n+1)/2))`
-/

namespace A308048.P5813090681954040492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007918 ⌈(n + 1 : ℚ) / 2⌉.toNat

end

end A308048.P5813090681954040492

namespace A308048

/-- `n+1-A007918(ceil((n+1)/2))` -/
def P5813090681954040492.Spec : Prop :=
  ∀ n, P5813090681954040492.a n = A308048 (n + 1)

end A308048

/-! ## A308048.P11611234710528513734

`1-A007918(A008619(n))+n`
-/

namespace A308048.P11611234710528513734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007918 (A008619 n).toNat + (n : ℤ)

end

end A308048.P11611234710528513734

namespace A308048

/-- `1-A007918(A008619(n))+n` -/
def P11611234710528513734.Spec : Prop :=
  ∀ n, P11611234710528513734.a n = A308048 (n + 1)

end A308048

/-! ## A308048.P2137731049464014122

`n-A000010(A308052(n+1))`
-/

namespace A308048.P2137731049464014122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (A308052 (n + 1)).toNat

end

end A308048.P2137731049464014122

namespace A308048

/-- `n-A000010(A308052(n+1))` -/
def P2137731049464014122.Spec : Prop :=
  ∀ n, P2137731049464014122.a n = A308048 (n + 1)

end A308048

/-!
# A308050: a(n) = n - prevprime(n - 1), where prevprime(n) is the largest prime < n.

The programs for A308050, the canonical program `A308050.P14878634318245272155` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308050 has offset 4).

The definition of A308050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308050.P14878634318245272155

`n+4-A151799(n+3)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308050

/-- `n+4-A151799(n+3)` -/
def P14878634318245272155.Spec : Prop :=
  ∀ n, P14878634318245272155.a n = A308050 (n + 4)

theorem P14878634318245272155.correct : P14878634318245272155.Spec := by
  intro n
  simp only [A308050, Nat.add_sub_cancel]

end A308050

/-! ## A308050.P11477232512356887134

`A175851(2+n)+1`
-/

namespace A308050.P11477232512356887134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 + n) + 1

end

end A308050.P11477232512356887134

namespace A308050

/-- `A175851(2+n)+1` -/
def P11477232512356887134.Spec : Prop :=
  ∀ n, P11477232512356887134.a n = A308050 (n + 4)

end A308050

/-! ## A308050.P4663612803751960425

`A049711(n+3)+1`
-/

namespace A308050.P4663612803751960425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3) + 1

end

end A308050.P4663612803751960425

namespace A308050

/-- `A049711(n+3)+1` -/
def P4663612803751960425.Spec : Prop :=
  ∀ n, P4663612803751960425.a n = A308050 (n + 4)

theorem P4663612803751960425.correct : P4663612803751960425.Spec := by
  intro n
  simp only [A308050, Nat.add_sub_cancel, A308050.P4663612803751960425.a, A308050.P14878634318245272155.a, A049711, A049711.P13725828664549977506.a, A151799, A151799.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308050

/-! ## A308050.P7118630944679650132

`A161758(n+5)-2`
-/

namespace A308050.P7118630944679650132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161758 (n + 5) - 2

end

end A308050.P7118630944679650132

namespace A308050

/-- `A161758(n+5)-2` -/
def P7118630944679650132.Spec : Prop :=
  ∀ n, P7118630944679650132.a n = A308050 (n + 4)

theorem P7118630944679650132.correct : P7118630944679650132.Spec := by
  intro n
  simp only [A308050, Nat.add_sub_cancel, A308050.P7118630944679650132.a, A308050.P14878634318245272155.a, A151799, A151799.P1836476777957611455.a, A161758, A161758.P17789184944753368102.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A049711, A049711.P13725828664549977506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308050

/-! ## A308050.P7865952272714139233

`A033557(n+3)-(n+2)`
-/

namespace A308050.P7865952272714139233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033557 (n + 3) - (n + 2 : ℤ)

end

end A308050.P7865952272714139233

namespace A308050

/-- `A033557(n+3)-(n+2)` -/
def P7865952272714139233.Spec : Prop :=
  ∀ n, P7865952272714139233.a n = A308050 (n + 4)

theorem P7865952272714139233.correct : P7865952272714139233.Spec := by
  intro n
  simp only [A308050, Nat.add_sub_cancel, A308050.P7865952272714139233.a, A308050.P14878634318245272155.a, A033557, A033557.P10567782228687270932.a, A151799, A151799.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308050

/-! ## A308050.P13071871489916814676

`4-A007917(n+2)+n`
-/

namespace A308050.P13071871489916814676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A007917 (n + 2) + (n : ℤ)

end

end A308050.P13071871489916814676

namespace A308050

/-- `4-A007917(n+2)+n` -/
def P13071871489916814676.Spec : Prop :=
  ∀ n, P13071871489916814676.a n = A308050 (n + 4)

end A308050

/-! ## A308050.P13153981847770714828

`∑{d}[n+2, A305806(#)]+1`
-/

namespace A308050.P13153981847770714828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305806 d + 1

end

end A308050.P13153981847770714828

namespace A308050

/-- `∑{d}[n+2, A305806(#)]+1` -/
def P13153981847770714828.Spec : Prop :=
  ∀ n, P13153981847770714828.a n = A308050 (n + 4)

end A308050

/-! ## A308050.P2080773506438086980

`2*(n+3)-A013635(n+3)+1`
-/

namespace A308050.P2080773506438086980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A013635 (n + 3) + 1

end

end A308050.P2080773506438086980

namespace A308050

/-- `2*(n+3)-A013635(n+3)+1` -/
def P2080773506438086980.Spec : Prop :=
  ∀ n, P2080773506438086980.a n = A308050 (n + 4)

theorem P2080773506438086980.correct : P2080773506438086980.Spec := by
  intro n
  simp only [A308050, Nat.add_sub_cancel, A308050.P2080773506438086980.a, A308050.P14878634318245272155.a, A013635, A013635.P15269542047157353855.a, A151799, A151799.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308050

/-! ## A308050.P9937347295614402522

`A003977(A065151(n+2))`
-/

namespace A308050.P9937347295614402522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A065151 (n + 2)).toNat

end

end A308050.P9937347295614402522

namespace A308050

/-- `A003977(A065151(n+2))` -/
def P9937347295614402522.Spec : Prop :=
  ∀ n, P9937347295614402522.a n = A308050 (n + 4)

end A308050

/-! ## A308050.P1559594744880183128

`A020725(A175851(n+2))`
-/

namespace A308050.P1559594744880183128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A175851 (n + 2)).toNat

end

end A308050.P1559594744880183128

namespace A308050

/-- `A020725(A175851(n+2))` -/
def P1559594744880183128.Spec : Prop :=
  ∀ n, P1559594744880183128.a n = A308050 (n + 4)

end A308050

/-! ## A308050.P17547412319571054818

`A020742(n)-A013635(n+3)`
-/

namespace A308050.P17547412319571054818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n - A013635 (n + 3)

end

end A308050.P17547412319571054818

namespace A308050

/-- `A020742(n)-A013635(n+3)` -/
def P17547412319571054818.Spec : Prop :=
  ∀ n, P17547412319571054818.a n = A308050 (n + 4)

theorem P17547412319571054818.correct : P17547412319571054818.Spec := by
  intro n
  simp only [A308050, Nat.add_sub_cancel, A308050.P17547412319571054818.a, A308050.P14878634318245272155.a, A013635, A013635.P15269542047157353855.a, A020742, A020742.P7099883194858047647.a, A151799, A151799.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308050

/-! ## A308050.P15910443651742785447

`A013637(n+3)%A020705(n)`
-/

namespace A308050.P15910443651742785447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013637 (n + 3)) (A020705 n)

end

end A308050.P15910443651742785447

namespace A308050

/-- `A013637(n+3)%A020705(n)` -/
def P15910443651742785447.Spec : Prop :=
  ∀ n, P15910443651742785447.a n = A308050 (n + 4)

end A308050

/-! ## A308050.P4680693057423115521

`n+1-A086801(A000720(n+2))`
-/

namespace A308050.P4680693057423115521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A086801 (A000720 (n + 2)).toNat

end

end A308050.P4680693057423115521

namespace A308050

/-- `n+1-A086801(A000720(n+2))` -/
def P4680693057423115521.Spec : Prop :=
  ∀ n, P4680693057423115521.a n = A308050 (n + 4)

theorem P4680693057423115521.correct : P4680693057423115521.Spec := by
  intro n
  simp only [A308050, Nat.add_sub_cancel, A308050.P4680693057423115521.a, A308050.P14878634318245272155.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A086801, A086801.P17699144881820784956.a, A151799, A151799.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308050

/-! ## A308050.P4448503606495728086

`A020739(n)+1-A013635(n+3)`
-/

namespace A308050.P4448503606495728086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n + (1 - A013635 (n + 3))

end

end A308050.P4448503606495728086

namespace A308050

/-- `A020739(n)+1-A013635(n+3)` -/
def P4448503606495728086.Spec : Prop :=
  ∀ n, P4448503606495728086.a n = A308050 (n + 4)

theorem P4448503606495728086.correct : P4448503606495728086.Spec := by
  intro n
  simp only [A308050, Nat.add_sub_cancel, A308050.P4448503606495728086.a, A308050.P14878634318245272155.a, A013635, A013635.P15269542047157353855.a, A020739, A020739.P2210282862978748125.a, A151799, A151799.P1836476777957611455.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308050

/-! ## A308050.P13038043729768088187

`2+A064722(n+2)`
-/

namespace A308050.P13038043729768088187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A064722 (n + 2)

end

end A308050.P13038043729768088187

namespace A308050

/-- `2+A064722(n+2)` -/
def P13038043729768088187.Spec : Prop :=
  ∀ n, P13038043729768088187.a n = A308050 (n + 4)

end A308050

/-! ## A308050.P2761939351703779290

`n+3-A070320(n+2)`
-/

namespace A308050.P2761939351703779290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A070320 (n + 2)

end

end A308050.P2761939351703779290

namespace A308050

/-- `n+3-A070320(n+2)` -/
def P2761939351703779290.Spec : Prop :=
  ∀ n, P2761939351703779290.a n = A308050 (n + 4)

end A308050

/-! ## A308050.P12394413152549644784

`A380783(A064924(n+2))`
-/

namespace A308050.P12394413152549644784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380783 (A064924 (n + 2)).toNat

end

end A308050.P12394413152549644784

namespace A308050

/-- `A380783(A064924(n+2))` -/
def P12394413152549644784.Spec : Prop :=
  ∀ n, P12394413152549644784.a n = A308050 (n + 4)

end A308050

/-!
# A308052: a(n) = nextprime(ceiling(n/2)-1), where nextprime(n) is the smallest prime > n.

The programs for A308052, the canonical program `A308052.P8174859683597679288` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308052 has offset 1).

The definition of A308052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A308052.P8174859683597679288

`A151800(floor(n/2))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A308052

/-- `A151800(floor(n/2))` -/
def P8174859683597679288.Spec : Prop :=
  ∀ n, P8174859683597679288.a n = A308052 (n + 1)

theorem P8174859683597679288.correct : P8174859683597679288.Spec := by
  intro n
  simp only [A308052, Nat.add_sub_cancel]

end A308052

/-! ## A308052.P1774180969737736943

`A007918(∑[log2(gcd(2, n))])`
-/

namespace A308052.P1774180969737736943
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A308052.P1774180969737736943

namespace A308052

/-- `A007918(∑[log2(gcd(2, n))])` -/
def P1774180969737736943.Spec : Prop :=
  ∀ n, P1774180969737736943.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P17969702702595222248

`A007918(∑[char[2*n]])`
-/

namespace A308052.P17969702702595222248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308052.P17969702702595222248

namespace A308052

/-- `A007918(∑[char[2*n]])` -/
def P17969702702595222248.Spec : Prop :=
  ∀ n, P17969702702595222248.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P5157571363458569513

`A013632(floor(n/2))+floor(n/2)`
-/

namespace A308052.P5157571363458569513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 ⌊(n : ℚ) / 2⌋.toNat + ⌊(n : ℚ) / 2⌋

end

end A308052.P5157571363458569513

namespace A308052

/-- `A013632(floor(n/2))+floor(n/2)` -/
def P5157571363458569513.Spec : Prop :=
  ∀ n, P5157571363458569513.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P1703783648358790679

`and(-1, A151800(A004526(n)))`
-/

namespace A308052.P1703783648358790679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151800 (A004526 n).toNat)

end

end A308052.P1703783648358790679

namespace A308052

/-- `and(-1, A151800(A004526(n)))` -/
def P1703783648358790679.Spec : Prop :=
  ∀ n, P1703783648358790679.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P9105973208459266717

`A000040(∑[A002126(n)%2])`
-/

namespace A308052.P9105973208459266717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002126 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308052.P9105973208459266717

namespace A308052

/-- `A000040(∑[A002126(n)%2])` -/
def P9105973208459266717.Spec : Prop :=
  ∀ n, P9105973208459266717.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P12972123811263417429

`A000040(∑[and(1, A002126(n))])`
-/

namespace A308052.P12972123811263417429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002126 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308052.P12972123811263417429

namespace A308052

/-- `A000040(∑[and(1, A002126(n))])` -/
def P12972123811263417429.Spec : Prop :=
  ∀ n, P12972123811263417429.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P4336809945415813711

`A000040(1-A282029(n)+n)`
-/

namespace A308052.P4336809945415813711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - A282029 n + (n : ℤ)).toNat

end

end A308052.P4336809945415813711

namespace A308052

/-- `A000040(1-A282029(n)+n)` -/
def P4336809945415813711.Spec : Prop :=
  ∀ n, P4336809945415813711.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P1866306884406526167

`A000040(1-(A282029(n)-n))`
-/

namespace A308052.P1866306884406526167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - (A282029 n - (n : ℤ))).toNat

end

end A308052.P1866306884406526167

namespace A308052

/-- `A000040(1-(A282029(n)-n))` -/
def P1866306884406526167.Spec : Prop :=
  ∀ n, P1866306884406526167.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P18258169555895969816

`A000040(∑[char[2*A000040(n+1)]]+1)`
-/

namespace A308052.P18258169555895969816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A308052.P18258169555895969816

namespace A308052

/-- `A000040(∑[char[2*A000040(n+1)]]+1)` -/
def P18258169555895969816.Spec : Prop :=
  ∀ n, P18258169555895969816.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P6849417414675282079

`(A100802(n+1)+n+1)/2`
-/

namespace A308052.P6849417414675282079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100802 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A308052.P6849417414675282079

namespace A308052

/-- `(A100802(n+1)+n+1)/2` -/
def P6849417414675282079.Spec : Prop :=
  ∀ n, P6849417414675282079.a n = (A308052 (n + 1) : ℚ)

end A308052

/-! ## A308052.P3478038572717021312

`A230775(A180107(n)+1)`
-/

namespace A308052.P3478038572717021312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A180107 n + 1).toNat

end

end A308052.P3478038572717021312

namespace A308052

/-- `A230775(A180107(n)+1)` -/
def P3478038572717021312.Spec : Prop :=
  ∀ n, P3478038572717021312.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P12173595545682356541

`A230775(A033638(n))`
-/

namespace A308052.P12173595545682356541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A033638 n).toNat

end

end A308052.P12173595545682356541

namespace A308052

/-- `A230775(A033638(n))` -/
def P12173595545682356541.Spec : Prop :=
  ∀ n, P12173595545682356541.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P14458157944238003025

`A230775(A212988(n))`
-/

namespace A308052.P14458157944238003025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A212988 n).toNat

end

end A308052.P14458157944238003025

namespace A308052

/-- `A230775(A212988(n))` -/
def P14458157944238003025.Spec : Prop :=
  ∀ n, P14458157944238003025.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P16657254222169730834

`A230775(A004652(n+1))`
-/

namespace A308052.P16657254222169730834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A004652 (n + 1)).toNat

end

end A308052.P16657254222169730834

namespace A308052

/-- `A230775(A004652(n+1))` -/
def P16657254222169730834.Spec : Prop :=
  ∀ n, P16657254222169730834.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P1803197804598914887

`A230775(A076921(n+1))`
-/

namespace A308052.P1803197804598914887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A076921 (n + 1)).toNat

end

end A308052.P1803197804598914887

namespace A308052

/-- `A230775(A076921(n+1))` -/
def P1803197804598914887.Spec : Prop :=
  ∀ n, P1803197804598914887.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P438690554855386129

`A230775(A180107(n+1))`
-/

namespace A308052.P438690554855386129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A180107 (n + 1)).toNat

end

end A308052.P438690554855386129

namespace A308052

/-- `A230775(A180107(n+1))` -/
def P438690554855386129.Spec : Prop :=
  ∀ n, P438690554855386129.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P13519032558764749916

`A230775(A181385(n+1))`
-/

namespace A308052.P13519032558764749916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A181385 (n + 1)).toNat

end

end A308052.P13519032558764749916

namespace A308052

/-- `A230775(A181385(n+1))` -/
def P13519032558764749916.Spec : Prop :=
  ∀ n, P13519032558764749916.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P18260667627718051088

`A230775(A189889(n+1))`
-/

namespace A308052.P18260667627718051088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A189889 (n + 1)).toNat

end

end A308052.P18260667627718051088

namespace A308052

/-- `A230775(A189889(n+1))` -/
def P18260667627718051088.Spec : Prop :=
  ∀ n, P18260667627718051088.a n = A308052 (n + 1)

end A308052

/-! ## A308052.P9830083049353990746

`A230775(A363268(n+1))`
-/

namespace A308052.P9830083049353990746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A363268 (n + 1)).toNat

end

end A308052.P9830083049353990746

namespace A308052

/-- `A230775(A363268(n+1))` -/
def P9830083049353990746.Spec : Prop :=
  ∀ n, P9830083049353990746.a n = A308052 (n + 1)

end A308052

/-!
# A308053: Coreful abundant numbers: numbers k such that csigma(k) > 2*k, where csigma(k) is the sum of the coreful divisors of k (A057723).

The programs for A308053, the canonical program `A308053.P10381955759339990208` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308053 has offset 1).

The definition of A308053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308053.P15889453605680999481

`lt[n+1, A336563(n+1)]+1`
-/

namespace A308053.P15889453605680999481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A308053.P15889453605680999481

namespace A308053

/-- `lt[n+1, A336563(n+1)]+1` -/
def P15889453605680999481.Spec : Prop :=
  ∀ n, (P15889453605680999481.a n : ℤ) = A308053 (n + 1)

end A308053

/-! ## A308053.P5553063827011490405

`lt[n, A336563(A028310(n))]`
-/

namespace A308053.P5553063827011490405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A308053.P5553063827011490405

namespace A308053

/-- `lt[n, A336563(A028310(n))]` -/
def P5553063827011490405.Spec : Prop :=
  ∀ n, (P5553063827011490405.a n : ℤ) = A308053 (n + 1)

end A308053

/-! ## A308053.P10381955759339990208

`A116966(lt[2*n+3, A057723(n+1)])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308053

/-- `A116966(lt[2*n+3, A057723(n+1)])` -/
def P10381955759339990208.Spec : Prop :=
  ∀ n, P10381955759339990208.a n = A308053 (n + 1)

theorem P10381955759339990208.correct : P10381955759339990208.Spec := by
  intro n
  simp only [A308053, Nat.add_sub_cancel]

end A308053

/-! ## A308053.P10449838265742696080

`A116966(lt[A116966(n), A336563(n+1)])`
-/

namespace A308053.P10449838265742696080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308053.P10449838265742696080

namespace A308053

/-- `A116966(lt[A116966(n), A336563(n+1)])` -/
def P10449838265742696080.Spec : Prop :=
  ∀ n, P10449838265742696080.a n = A308053 (n + 1)

end A308053

/-! ## A308053.P11820236577598532532

`A116966(lt[A003557(n+1), A336567(n+1)])`
-/

namespace A308053.P11820236577598532532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308053.P11820236577598532532

namespace A308053

/-- `A116966(lt[A003557(n+1), A336567(n+1)])` -/
def P11820236577598532532.Spec : Prop :=
  ∀ n, P11820236577598532532.a n = A308053 (n + 1)

end A308053

/-!
# A308054: The number of coreful abundant numbers (A308053) below 10^n.

The programs for A308054, there is no canonical definition to state claims against.
-/

/-! ## A308054.P16478380633653518546

`A000720(A325676(n)*A360065(n))`
-/

namespace A308054.P16478380633653518546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A325676 n * A360065 n).toNat

end

end A308054.P16478380633653518546

/-!
# A308055: a(1)=2; for n > 1, a(n) is the square root of the smallest square with a(n-1) as a prefix in base 10.

The programs for A308055, there is no canonical definition to state claims against.
-/

/-! ## A308055.P9931976957529906869

`sqrt(A018796(a(n-1)))` with `a(0)=2`
-/

namespace A308055.P9931976957529906869
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  Real.sqrt (A018796 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A308055.P9931976957529906869

/-! ## A308055.P14046746753872759450

`A018796(floor(a(n-1)))^(1/2)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A308055.P14046746753872759450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (A018796 ⌊a (n - 1)⌋.toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A308055.P14046746753872759450

/-! ## A308055.P13298678186836874579

`A018796(ceil(abs(a(n-1))))^(1/2)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A308055.P13298678186836874579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (A018796 ⌈|a (n - 1)|⌉.toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A308055.P13298678186836874579

/-! ## A308055.P9437125758893900959

`root(A018796(a(n-1)), A040000(n))` with `a(0)=2`
-/

namespace A308055.P9437125758893900959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (A018796 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) ^ (1 / (A040000 n : ℝ))

end

end A308055.P9437125758893900959

/-! ## A308055.P9264767375709034352

`A018796(A000027(a(n-1)))^(1/2)` with `a(0)=2`
-/

namespace A308055.P9264767375709034352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (A018796 (A000027 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A308055.P9264767375709034352

/-!
# A308056: a(1) = 1, a(n) is the sum of the divisors d of n such that d and n are exponentially coprime.

The programs for A308056, there is no canonical definition to state claims against.
-/

/-! ## A308056.P224108262560120460

`∏{p}[n+1, #]*A240670((n+1)/∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A308056.P224108262560120460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A240670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A308056.P224108262560120460

/-! ## A308056.P9505190439272056477

`A007913(n+1)*A117707(A007865(A003557(n+1)))`
-/

namespace A308056.P9505190439272056477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A117707 (A007865 (A003557 (n + 1)).toNat).toNat

end

end A308056.P9505190439272056477

/-! ## A308056.P13871287932362748913

`A073353(n+1)-A015052(A059479(n+1))`
-/

namespace A308056.P13871287932362748913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - A015052 (A059479 (n + 1)).toNat

end

end A308056.P13871287932362748913

/-! ## A308056.P7305081049220831697

`A254734(n+1)-A015052(A059479(n+1))`
-/

namespace A308056.P7305081049220831697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254734 (n + 1) - A015052 (A059479 (n + 1)).toNat

end

end A308056.P7305081049220831697

/-! ## A308056.P11247582218238040623

`A019554(A059479(n+1))%A076332(A064549(n+1))`
-/

namespace A308056.P11247582218238040623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019554 (A059479 (n + 1)).toNat) (A076332 (A064549 (n + 1)).toNat)

end

end A308056.P11247582218238040623

/-!
# A308057: Lexicographically earliest sequence of positive terms such that for any distinct m and n, a(m) + 2*a(m+1) <> a(n) + 2*a(n+1).

The programs for A308057, there is no canonical definition to state claims against.
-/

/-! ## A308057.P1797502425193543419

`A051953(n+4)-A293896(A005578(n+4))`
-/

namespace A308057.P1797502425193543419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 4) - A293896 (A005578 (n + 4)).toNat

end

end A308057.P1797502425193543419

/-!
# A308058: Lexicographically earliest sequence of positive terms such that for any distinct m and n, a(m) * a(m+1)^2 <> a(n) * a(n+1)^2.

The programs for A308058, there is no canonical definition to state claims against.
-/

/-! ## A308058.P11246993981101878573

`A257994(A261767(2*n))+1`
-/

namespace A308058.P11246993981101878573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A261767 (2 * n)).toNat + 1

end

end A308058.P11246993981101878573

/-! ## A308058.P3831830141911156347

`A001222(A007677(n)+n^(n%2))`
-/

namespace A308058.P3831830141911156347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007677 n + (n ^ (n % 2) : ℤ)).toNat

end

end A308058.P3831830141911156347

/-! ## A308058.P4336556187404957949

`A001222(or(A191788(n), A218982(n)))`
-/

namespace A308058.P4336556187404957949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A191788 n) (A218982 n)).toNat

end

end A308058.P4336556187404957949

/-! ## A308058.P276084099527916549

`A143488(A086958(n+1)*A143586(n+1))`
-/

namespace A308058.P276084099527916549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143488 (A086958 (n + 1) * A143586 (n + 1)).toNat

end

end A308058.P276084099527916549

/-! ## A308058.P4195232991575259281

`A001222(or(A103099(n+1), A123528(n+2)))`
-/

namespace A308058.P4195232991575259281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A103099 (n + 1)) (A123528 (n + 2))).toNat

end

end A308058.P4195232991575259281

/-!
# A308059: Lexicographically earliest sequence of positive terms such that for any distinct m and n, a(m) XOR (2*a(m+1)) <> a(n) XOR (2*a(n+1)) (where XOR denotes the bitwise XOR operator).

The programs for A308059, there is no canonical definition to state claims against.
-/

/-! ## A308059.P4872226167512708950

`A222266(A052382(n+1)^A115561(3*n+5))`
-/

namespace A308059.P4872226167512708950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (SequenceMachineLib.roundAway ((A052382 (n + 1) : ℚ) ^ (A115561 (3 * n + 5) : ℤ))).toNat

end

end A308059.P4872226167512708950

/-! ## A308059.P8891124164942233409

`A222266(A067251(n+1)^A115561(3*n+5))`
-/

namespace A308059.P8891124164942233409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (SequenceMachineLib.roundAway ((A067251 (n + 1) : ℚ) ^ (A115561 (3 * n + 5) : ℤ))).toNat

end

end A308059.P8891124164942233409

/-! ## A308059.P16956752306044561363

`A104524(A104552(2*n)+val(n+1, 10)+1)`
-/

namespace A308059.P16956752306044561363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104524 (A104552 (2 * n) + (SequenceMachineLib.valuation (n + 1) 10 + 1 : ℤ)).toNat

end

end A308059.P16956752306044561363

/-! ## A308059.P10534265811828745373

`A043556(A292496(n)+A126646(n))`
-/

namespace A308059.P10534265811828745373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A292496 n + A126646 n).toNat

end

end A308059.P10534265811828745373

/-! ## A308059.P14049512634480715913

`A121997(A048993(n)+A025052(n+1))`
-/

namespace A308059.P14049512634480715913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (A048993 n + A025052 (n + 1)).toNat

end

end A308059.P14049512634480715913

/-!
# A308060: G.f. A(x) satisfies: A(x) = x * exp(Sum_{i>=1} Sum_{j>=1} (-1)^(j+1)*A(x^(i*j))/j).

The programs for A308060, there is no canonical definition to state claims against.
-/

/-! ## A308060.P9785106740930901350

`A340764(A228645(2*(n+1))+1)`
-/

namespace A308060.P9785106740930901350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A228645 (2 * (n + 1)) + 1).toNat

end

end A308060.P9785106740930901350

/-! ## A308060.P7043491477802011387

`A276571(A118589(n))`
-/

namespace A308060.P7043491477802011387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A118589 n).toNat

end

end A308060.P7043491477802011387

/-! ## A308060.P9416401439689478804

`A182053(n)+A007949(A000088(n))`
-/

namespace A308060.P9416401439689478804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182053 n + A007949 (A000088 n).toNat

end

end A308060.P9416401439689478804

/-! ## A308060.P4842594357010423698

`A257839(A182143(n))+A006649(n)`
-/

namespace A308060.P4842594357010423698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A182143 n).toNat + A006649 n

end

end A308060.P4842594357010423698

/-!
# A308061: Number of integer-sided triangles with perimeter n whose side lengths are squarefree.

The programs for A308061, there is no canonical definition to state claims against.
-/

/-! ## A308061.P12271881680101789006

`A005044(n+1)-A307987(n+1)`
-/

namespace A308061.P12271881680101789006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A307987 (n + 1)

end

end A308061.P12271881680101789006

/-! ## A308061.P5450752762449795145

`Δ[A026810(n+1)]-A307987(n+1)`
-/

namespace A308061.P5450752762449795145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307987 (n + 1)

end

end A308061.P5450752762449795145

/-! ## A308061.P11805083041135159993

`A308116(n+1)/(n+1)`
-/

namespace A308061.P11805083041135159993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308116 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308061.P11805083041135159993

/-! ## A308061.P3915673768108665625

`(A308133(n+1)+A308143(n+1)+A308140(n+1))/(n+1)`
-/

namespace A308061.P3915673768108665625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308133 (n + 1) + (A308143 (n + 1) + A308140 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A308061.P3915673768108665625

/-! ## A308061.P11218160513470124285

`A308118(n+1)+A308117(n+1)`
-/

namespace A308061.P11218160513470124285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308118 (n + 1) + A308117 (n + 1)

end

end A308061.P11218160513470124285

/-! ## A308061.P14645638817350751611

`A005843(A308116(n+1))%A005408(n)`
-/

namespace A308061.P14645638817350751611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A308116 (n + 1)).toNat) (A005408 n)

end

end A308061.P14645638817350751611

/-!
# A308062: Number of ordered factorizations of n into Fibonacci numbers > 1.

The programs for A308062, there is no canonical definition to state claims against.
-/

/-! ## A308062.P9679144826034352788

`A318370(A172332(n+1))`
-/

namespace A308062.P9679144826034352788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318370 (A172332 (n + 1)).toNat

end

end A308062.P9679144826034352788

/-! ## A308062.P12986788517169330022

`A025426(A166656(n+1)+A000007(n))`
-/

namespace A308062.P12986788517169330022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A166656 (n + 1) + A000007 n).toNat

end

end A308062.P12986788517169330022

/-! ## A308062.P8905665255957627531

`A045778(n+1)*A097325(A376717(n))`
-/

namespace A308062.P8905665255957627531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) * A097325 (A376717 n).toNat

end

end A308062.P8905665255957627531

/-! ## A308062.P17993448709616877318

`and(A045778(n+1), A323094(A000045(n)))`
-/

namespace A308062.P17993448709616877318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045778 (n + 1)) (A323094 (A000045 n).toNat)

end

end A308062.P17993448709616877318

/-! ## A308062.P16965161359982019301

`and(A323091(n+1), A323094(A000045(n)))`
-/

namespace A308062.P16965161359982019301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323091 (n + 1)) (A323094 (A000045 n).toNat)

end

end A308062.P16965161359982019301

/-!
# A308063: Number of ordered factorizations of n into numbers with an odd number of distinct prime divisors.

The programs for A308063, there is no canonical definition to state claims against.
-/

/-! ## A308063.P3159681183755261353

`A335520(A046523(n+1))+A050363(n+1)`
-/

namespace A308063.P3159681183755261353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A046523 (n + 1)).toNat + A050363 (n + 1)

end

end A308063.P3159681183755261353

/-! ## A308063.P3504785406221661445

`A335520(A062513(n+1))+A050363(n+1)`
-/

namespace A308063.P3504785406221661445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A062513 (n + 1)).toNat + A050363 (n + 1)

end

end A308063.P3504785406221661445

/-! ## A308063.P13467765834701334891

`A335520(A071364(n+1))+A050363(n+1)`
-/

namespace A308063.P13467765834701334891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A071364 (n + 1)).toNat + A050363 (n + 1)

end

end A308063.P13467765834701334891

/-! ## A308063.P3860485153924083629

`A335520(A366905(n+1))+A050363(n+1)`
-/

namespace A308063.P3860485153924083629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A366905 (n + 1)).toNat + A050363 (n + 1)

end

end A308063.P3860485153924083629

/-! ## A308063.P5921190263007136009

`A335520(n+1)+A050363(n+1)`
-/

namespace A308063.P5921190263007136009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (n + 1) + A050363 (n + 1)

end

end A308063.P5921190263007136009

/-!
# A308064: Number of triangles with perimeter n whose side lengths are square numbers.

The programs for A308064, there is no canonical definition to state claims against.
-/

/-! ## A308064.P5460407955840827400

`A005044(n+1)-A308302(n+1)`
-/

namespace A308064.P5460407955840827400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308302 (n + 1)

end

end A308064.P5460407955840827400

/-! ## A308064.P6444105299795028415

`A308275(1+n)/(n+1)`
-/

namespace A308064.P6444105299795028415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308275 (1 + n) : ℚ) / (n + 1 : ℚ)

end

end A308064.P6444105299795028415

/-! ## A308064.P841909001516544945

`A308275(n+1)%A028310(n)`
-/

namespace A308064.P841909001516544945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308275 (n + 1)) (A028310 n)

end

end A308064.P841909001516544945

/-! ## A308064.P10092217322115611547

`A002828((n+1)*A308275(n+1))`
-/

namespace A308064.P10092217322115611547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((n + 1 : ℤ) * A308275 (n + 1)).toNat

end

end A308064.P10092217322115611547

/-! ## A308064.P15471096673872949254

`A002828(A308275(n+1)²)`
-/

namespace A308064.P15471096673872949254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A308275 (n + 1) ^ 2).toNat

end

end A308064.P15471096673872949254

/-!
# A308065: Nonnegative integers that are not the sum of two refactorable numbers whose difference is refactorable.

The programs for A308065, there is no canonical definition to state claims against.
-/

/-! ## A308065.P379554615898106720

`comp[A309347(n+1)]`
-/

namespace A308065.P379554615898106720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308065.P379554615898106720

/-! ## A308065.P6016250155945100431

`comp[∑[A152206(A327608(3*n+2))]]`
-/

namespace A308065.P6016250155945100431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152206 (A327608 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308065.P6016250155945100431

/-! ## A308065.P9792219411454811992

`comp[A003075(2*n+3)+A000120(n)]`
-/

namespace A308065.P9792219411454811992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003075 (2 * n + 3) + A000120 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308065.P9792219411454811992

/-! ## A308065.P363041459586769438

`comp[A191873(2*n+1)-A247509(n+1)]`
-/

namespace A308065.P363041459586769438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191873 (2 * n + 1) - A247509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308065.P363041459586769438

/-! ## A308065.P7586122415132751621

`lt[A076427(A065387(n+1)), A368515(n+2)]`
-/

namespace A308065.P7586122415132751621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076427 (A065387 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368515 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308065.P7586122415132751621

/-!
# A308066: Number of triangles with perimeter n whose side lengths are even.

The programs for A308066, the canonical program `A308066.P14476082537782703603` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308066 has offset 1).

The definition of A308066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308066.P2194485068683316561

`ogf(x^5/(1-x^4-x^6-x^8+x^10+x^12+x^14-x^18))`
-/

namespace A308066.P2194485068683316561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 1] [1, 0, 0, 0, -1, 0, -1, 0, -1, 0, 1, 0, 1, 0, 1, 0, 0, 0, -1] n

end

end A308066.P2194485068683316561

namespace A308066

/-- `ogf(x^5/(1-x^4-x^6-x^8+x^10+x^12+x^14-x^18))` -/
def P2194485068683316561.Spec : Prop :=
  ∀ n, P2194485068683316561.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P14476082537782703603

`A005044(∑[n]%(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A308066

/-- `A005044(∑[n]%(n+1))` -/
def P14476082537782703603.Spec : Prop :=
  ∀ n, P14476082537782703603.a n = A308066 (n + 1)

theorem P14476082537782703603.correct : P14476082537782703603.Spec := by
  intro n
  simp only [A308066, Nat.add_sub_cancel]

end A308066

/-! ## A308066.P2808581180112426488

`Δ[A026810(1+floor(n/2))]`
-/

namespace A308066.P2808581180112426488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (1 + ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308066.P2808581180112426488

namespace A308066

/-- `Δ[A026810(1+floor(n/2))]` -/
def P2808581180112426488.Spec : Prop :=
  ∀ n, P2808581180112426488.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P17143213560064701776

`A005044(gcd(xor(1, -n), ∑[n]))`
-/

namespace A308066.P17143213560064701776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A308066.P17143213560064701776

namespace A308066

/-- `A005044(gcd(xor(1, -n), ∑[n]))` -/
def P17143213560064701776.Spec : Prop :=
  ∀ n, P17143213560064701776.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P7827067395196713460

`A005044(gcd(n+1, ceil(n/2)))`
-/

namespace A308066.P7827067395196713460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

end

end A308066.P7827067395196713460

namespace A308066

/-- `A005044(gcd(n+1, ceil(n/2)))` -/
def P7827067395196713460.Spec : Prop :=
  ∀ n, P7827067395196713460.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P2940953634953876671

`A005044(n%2*ceil(n/2))`
-/

namespace A308066.P2940953634953876671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (((n % 2 : ℕ) : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A308066.P2940953634953876671

namespace A308066

/-- `A005044(n%2*ceil(n/2))` -/
def P2940953634953876671.Spec : Prop :=
  ∀ n, P2940953634953876671.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P13179416950664134261

`A005044(and((-1)^n, ceil(n/2)))`
-/

namespace A308066.P13179416950664134261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Int.land ((-1) ^ n) ⌈(n : ℚ) / 2⌉).toNat

end

end A308066.P13179416950664134261

namespace A308066

/-- `A005044(and((-1)^n, ceil(n/2)))` -/
def P13179416950664134261.Spec : Prop :=
  ∀ n, P13179416950664134261.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P105440120318577563

`A005044(C(ceil(n/2), floor(n/2)))`
-/

namespace A308066.P105440120318577563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat ⌊(n : ℚ) / 2⌋.toNat)

end

end A308066.P105440120318577563

namespace A308066

/-- `A005044(C(ceil(n/2), floor(n/2)))` -/
def P105440120318577563.Spec : Prop :=
  ∀ n, P105440120318577563.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P9203672830125670577

`A005044(gcd(1-n, floor(n/2))+1)`
-/

namespace A308066.P9203672830125670577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ + 1)

end

end A308066.P9203672830125670577

namespace A308066

/-- `A005044(gcd(1-n, floor(n/2))+1)` -/
def P9203672830125670577.Spec : Prop :=
  ∀ n, P9203672830125670577.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P704081932690975633

`A005044(A152271(n))`
-/

namespace A308066.P704081932690975633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A152271 n).toNat

end

end A308066.P704081932690975633

namespace A308066

/-- `A005044(A152271(n))` -/
def P704081932690975633.Spec : Prop :=
  ∀ n, P704081932690975633.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P14599902309339165400

`A005044(∑[A001057(n)])`
-/

namespace A308066.P14599902309339165400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308066.P14599902309339165400

namespace A308066

/-- `A005044(∑[A001057(n)])` -/
def P14599902309339165400.Spec : Prop :=
  ∀ n, P14599902309339165400.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P9345707057977891631

`A005044(A057979(n)+1)`
-/

namespace A308066.P9345707057977891631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A057979 n + 1).toNat

end

end A308066.P9345707057977891631

namespace A308066

/-- `A005044(A057979(n)+1)` -/
def P9345707057977891631.Spec : Prop :=
  ∀ n, P9345707057977891631.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P1985812786752415477

`A005044(A133265(n)/2)`
-/

namespace A308066.P1985812786752415477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A308066.P1985812786752415477

namespace A308066

/-- `A005044(A133265(n)/2)` -/
def P1985812786752415477.Spec : Prop :=
  ∀ n, P1985812786752415477.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P616966207229809692

`A005044(n-A065423(n+1))`
-/

namespace A308066.P616966207229809692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 ((n : ℤ) - A065423 (n + 1)).toNat

end

end A308066.P616966207229809692

namespace A308066

/-- `A005044(n-A065423(n+1))` -/
def P616966207229809692.Spec : Prop :=
  ∀ n, P616966207229809692.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P10373127853987962112

`∑{d}[n+1, A000035(#-1)*A051493((n+1)/#)]`
-/

namespace A308066.P10373127853987962112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (d - 1) * A051493 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308066.P10373127853987962112

namespace A308066

/-- `∑{d}[n+1, A000035(#-1)*A051493((n+1)/#)]` -/
def P10373127853987962112.Spec : Prop :=
  ∀ n, P10373127853987962112.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P7936678280244632993

`A000035(n)*A005044(∑[A000035(n)])`
-/

namespace A308066.P7936678280244632993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A005044 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308066.P7936678280244632993

namespace A308066

/-- `A000035(n)*A005044(∑[A000035(n)])` -/
def P7936678280244632993.Spec : Prop :=
  ∀ n, P7936678280244632993.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P16051226408040514352

`A005044(A142150(n+1))`
-/

namespace A308066.P16051226408040514352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A142150 (n + 1)).toNat

end

end A308066.P16051226408040514352

namespace A308066

/-- `A005044(A142150(n+1))` -/
def P16051226408040514352.Spec : Prop :=
  ∀ n, P16051226408040514352.a n = A308066 (n + 1)

end A308066

/-! ## A308066.P3759417464061164820

`A005044(A166514(n+1))`
-/

namespace A308066.P3759417464061164820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A166514 (n + 1)).toNat

end

end A308066.P3759417464061164820

namespace A308066

/-- `A005044(A166514(n+1))` -/
def P3759417464061164820.Spec : Prop :=
  ∀ n, P3759417464061164820.a n = A308066 (n + 1)

end A308066

/-!
# A308067: Number of integer-sided triangles with perimeter n whose longest side length is odd.

The programs for A308067, the canonical program `A308067.P13326540096461565212` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308067 has offset 1).

The definition of A308067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308067.P13326540096461565212

`ogf((x^2-x^3+x^4-x^5+x^6)/(1-x+x^2-x^3-x^4+x^5-2x^6+2x^7-x^8+x^9+x^10-x^11+x^12-x^13))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308067

/-- `ogf((x^2-x^3+x^4-x^5+x^6)/(1-x+x^2-x^3-x^4+x^5-2x^6+2x^7-x^8+x^9+x^10-x^11+x^12-x^13))` -/
def P13326540096461565212.Spec : Prop :=
  ∀ n, P13326540096461565212.a n = A308067 (n + 1)

theorem P13326540096461565212.correct : P13326540096461565212.Spec := by
  intro n
  simp only [A308067, Nat.add_sub_cancel]

end A308067

/-! ## A308067.P16837128725975221361

`A005044(n+1)-A308068(n+1)`
-/

namespace A308067.P16837128725975221361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308068 (n + 1)

end

end A308067.P16837128725975221361

namespace A308067

/-- `A005044(n+1)-A308068(n+1)` -/
def P16837128725975221361.Spec : Prop :=
  ∀ n, P16837128725975221361.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P12157600567182313061

`A026923(1+n)-A000217(A002265(n))`
-/

namespace A308067.P12157600567182313061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (1 + n) - A000217 (A002265 n).toNat

end

end A308067.P12157600567182313061

namespace A308067

/-- `A026923(1+n)-A000217(A002265(n))` -/
def P12157600567182313061.Spec : Prop :=
  ∀ n, P12157600567182313061.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P11598715862837126181

`A026923(n+1)-A161680(A008621(n))`
-/

namespace A308067.P11598715862837126181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026923 (n + 1) - A161680 (A008621 n).toNat

end

end A308067.P11598715862837126181

namespace A308067

/-- `A026923(n+1)-A161680(A008621(n))` -/
def P11598715862837126181.Spec : Prop :=
  ∀ n, P11598715862837126181.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P12503872531088065830

`A130518(A008619(n)+1-A110657(n+1))`
-/

namespace A308067.P12503872531088065830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (A008619 n + 1 - A110657 (n + 1)).toNat

end

end A308067.P12503872531088065830

namespace A308067

/-- `A130518(A008619(n)+1-A110657(n+1))` -/
def P12503872531088065830.Spec : Prop :=
  ∀ n, P12503872531088065830.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P3306249579299921192

`A025767(A004442(n))-A008805(A004526(n))`
-/

namespace A308067.P3306249579299921192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (A004442 n).toNat - A008805 (A004526 n).toNat

end

end A308067.P3306249579299921192

namespace A308067

/-- `A025767(A004442(n))-A008805(A004526(n))` -/
def P3306249579299921192.Spec : Prop :=
  ∀ n, P3306249579299921192.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P4281812335949417926

`A025767(A004442(n))-A008805(A123108(n))`
-/

namespace A308067.P4281812335949417926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (A004442 n).toNat - A008805 (A123108 n).toNat

end

end A308067.P4281812335949417926

namespace A308067

/-- `A025767(A004442(n))-A008805(A123108(n))` -/
def P4281812335949417926.Spec : Prop :=
  ∀ n, P4281812335949417926.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P17009507339171916156

`A308068(A065168(n+1))`
-/

namespace A308067.P17009507339171916156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308068 (A065168 (n + 1)).toNat

end

end A308067.P17009507339171916156

namespace A308067

/-- `A308068(A065168(n+1))` -/
def P17009507339171916156.Spec : Prop :=
  ∀ n, P17009507339171916156.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P3426025056594093237

`A130518(A110657(n+3)+A033999(n))`
-/

namespace A308067.P3426025056594093237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (A110657 (n + 3) + A033999 n).toNat

end

end A308067.P3426025056594093237

namespace A308067

/-- `A130518(A110657(n+3)+A033999(n))` -/
def P3426025056594093237.Spec : Prop :=
  ∀ n, P3426025056594093237.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P11353364387195652977

`A130518(A110654(n+3)-A110657(n+1))`
-/

namespace A308067.P11353364387195652977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (A110654 (n + 3) - A110657 (n + 1)).toNat

end

end A308067.P11353364387195652977

namespace A308067

/-- `A130518(A110654(n+3)-A110657(n+1))` -/
def P11353364387195652977.Spec : Prop :=
  ∀ n, P11353364387195652977.a n = A308067 (n + 1)

end A308067

/-! ## A308067.P9947593206110229942

`A130518(A065033(n+3)-A110657(n+1))`
-/

namespace A308067.P9947593206110229942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (A065033 (n + 3) - A110657 (n + 1)).toNat

end

end A308067.P9947593206110229942

namespace A308067

/-- `A130518(A065033(n+3)-A110657(n+1))` -/
def P9947593206110229942.Spec : Prop :=
  ∀ n, P9947593206110229942.a n = A308067 (n + 1)

end A308067

/-!
# A308068: Number of integer-sided triangles with perimeter n whose longest side length is even.

The programs for A308068, the canonical program `A308068.P7266491862810550122` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308068 has offset 1).

The definition of A308068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308068.P7579248717782311081

`ogf(x^4/(1-x+x^2-x^3-x^4+x^5-2x^6+2x^7-x^8+x^9+x^10-x^11+x^12-x^13))`
-/

namespace A308068.P7579248717782311081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -1, 1, -1, -1, 1, -2, 2, -1, 1, 1, -1, 1, -1] n

end

end A308068.P7579248717782311081

namespace A308068

/-- `ogf(x^4/(1-x+x^2-x^3-x^4+x^5-2x^6+2x^7-x^8+x^9+x^10-x^11+x^12-x^13))` -/
def P7579248717782311081.Spec : Prop :=
  ∀ n, P7579248717782311081.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P7266491862810550122

`floor(A008795(floor(n/2))/3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A308068

/-- `floor(A008795(floor(n/2))/3)` -/
def P7266491862810550122.Spec : Prop :=
  ∀ n, P7266491862810550122.a n = A308068 (n + 1)

theorem P7266491862810550122.correct : P7266491862810550122.Spec := by
  intro n
  simp only [A308068, Nat.add_sub_cancel]

end A308068

/-! ## A308068.P10021250141518802490

`A308067(A267458(n))`
-/

namespace A308068.P10021250141518802490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (A267458 n).toNat

end

end A308068.P10021250141518802490

namespace A308068

/-- `A308067(A267458(n))` -/
def P10021250141518802490.Spec : Prop :=
  ∀ n, P10021250141518802490.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P3808205835170129027

`A114209(∑[A267043(n)])`
-/

namespace A308068.P3808205835170129027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308068.P3808205835170129027

namespace A308068

/-- `A114209(∑[A267043(n)])` -/
def P3808205835170129027.Spec : Prop :=
  ∀ n, P3808205835170129027.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P271964658168584109

`A309683(xor(1, A004526(n)))`
-/

namespace A308068.P271964658168584109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (Int.xor 1 (A004526 n)).toNat

end

end A308068.P271964658168584109

namespace A308068

/-- `A309683(xor(1, A004526(n)))` -/
def P271964658168584109.Spec : Prop :=
  ∀ n, P271964658168584109.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P7437048279926505981

`A309683(xor(1, A123108(n)))`
-/

namespace A308068.P7437048279926505981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (Int.xor 1 (A123108 n)).toNat

end

end A308068.P7437048279926505981

namespace A308068

/-- `A309683(xor(1, A123108(n)))` -/
def P7437048279926505981.Spec : Prop :=
  ∀ n, P7437048279926505981.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P7649929159113845165

`A114209(floor(sqrt(A033638(n))))`
-/

namespace A308068.P7649929159113845165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (Int.sqrt (A033638 n)).toNat

end

end A308068.P7649929159113845165

namespace A308068

/-- `A114209(floor(sqrt(A033638(n))))` -/
def P7649929159113845165.Spec : Prop :=
  ∀ n, P7649929159113845165.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P10880453613615292567

`A005044(n+1)-A308067(n+1)`
-/

namespace A308068.P10880453613615292567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308067 (n + 1)

end

end A308068.P10880453613615292567

namespace A308068

/-- `A005044(n+1)-A308067(n+1)` -/
def P10880453613615292567.Spec : Prop :=
  ∀ n, P10880453613615292567.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P4334400689696112386

`A308067(A065164(n+1))`
-/

namespace A308068.P4334400689696112386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (A065164 (n + 1)).toNat

end

end A308068.P4334400689696112386

namespace A308068

/-- `A308067(A065164(n+1))` -/
def P4334400689696112386.Spec : Prop :=
  ∀ n, P4334400689696112386.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P1378826593200041882

`A308067(abs(Δ[A124625(n)]))`
-/

namespace A308068.P1378826593200041882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 |f1 (n + 1) - f1 n|.toNat

end

end A308068.P1378826593200041882

namespace A308068

/-- `A308067(abs(Δ[A124625(n)]))` -/
def P1378826593200041882.Spec : Prop :=
  ∀ n, P1378826593200041882.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P8346922191097778803

`A308067(A267460(n+1))`
-/

namespace A308068.P8346922191097778803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (A267460 (n + 1)).toNat

end

end A308068.P8346922191097778803

namespace A308068

/-- `A308067(A267460(n+1))` -/
def P8346922191097778803.Spec : Prop :=
  ∀ n, P8346922191097778803.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P6720367537012823146

`A308067(A213222(n+4))`
-/

namespace A308068.P6720367537012823146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308067 (A213222 (n + 4)).toNat

end

end A308068.P6720367537012823146

namespace A308068

/-- `A308067(A213222(n+4))` -/
def P6720367537012823146.Spec : Prop :=
  ∀ n, P6720367537012823146.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P15087619222855966250

`A308066(2*(n+1))-A308067(n+1)`
-/

namespace A308068.P15087619222855966250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (2 * (n + 1)) - A308067 (n + 1)

end

end A308068.P15087619222855966250

namespace A308068

/-- `A308066(2*(n+1))-A308067(n+1)` -/
def P15087619222855966250.Spec : Prop :=
  ∀ n, P15087619222855966250.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P8882041311553790885

`A025874(A007310(n+1))`
-/

namespace A308068.P8882041311553790885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (A007310 (n + 1)).toNat

end

end A308068.P8882041311553790885

namespace A308068

/-- `A025874(A007310(n+1))` -/
def P8882041311553790885.Spec : Prop :=
  ∀ n, P8882041311553790885.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P13866971362130582676

`A025874(A038179(n+2))`
-/

namespace A308068.P13866971362130582676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (A038179 (n + 2)).toNat

end

end A308068.P13866971362130582676

namespace A308068

/-- `A025874(A038179(n+2))` -/
def P13866971362130582676.Spec : Prop :=
  ∀ n, P13866971362130582676.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P13929782163195627163

`A025874(A091999(n+1)/2)`
-/

namespace A308068.P13929782163195627163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (SequenceMachineLib.roundAway ((A091999 (n + 1) : ℚ) / 2)).toNat

end

end A308068.P13929782163195627163

namespace A308068

/-- `A025874(A091999(n+1)/2)` -/
def P13929782163195627163.Spec : Prop :=
  ∀ n, P13929782163195627163.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P929358837406722376

`A025874(A168300(n+1))`
-/

namespace A308068.P929358837406722376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 (A168300 (n + 1)).toNat

end

end A308068.P929358837406722376

namespace A308068

/-- `A025874(A168300(n+1))` -/
def P929358837406722376.Spec : Prop :=
  ∀ n, P929358837406722376.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P67077685210994790

`A004526(A008796(floor(n/2)))`
-/

namespace A308068.P67077685210994790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008796 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A308068.P67077685210994790

namespace A308068

/-- `A004526(A008796(floor(n/2)))` -/
def P67077685210994790.Spec : Prop :=
  ∀ n, P67077685210994790.a n = A308068 (n + 1)

end A308068

/-! ## A308068.P12521890480764446740

`A002264(A008795(floor(n/2)))`
-/

namespace A308068.P12521890480764446740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008795 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A308068.P12521890480764446740

namespace A308068

/-- `A002264(A008795(floor(n/2)))` -/
def P12521890480764446740.Spec : Prop :=
  ∀ n, P12521890480764446740.a n = A308068 (n + 1)

end A308068

/-!
# A308069: Number of integer-sided triangles with perimeter n whose side lengths are semiprime.

The programs for A308069, there is no canonical definition to state claims against.
-/

/-! ## A308069.P4609332895400500361

`A005044(n+1)-A308307(n+1)`
-/

namespace A308069.P4609332895400500361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308307 (n + 1)

end

end A308069.P4609332895400500361

/-! ## A308069.P6085876771802713280

`A308066(2*(n+1))-A308307(n+1)`
-/

namespace A308069.P6085876771802713280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (2 * (n + 1)) - A308307 (n + 1)

end

end A308069.P6085876771802713280

/-! ## A308069.P9743048019258605239

`A138471(and(A060755(2*(n+2)), A169893(3*n+1)))`
-/

namespace A308069.P9743048019258605239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (Int.land (A060755 (2 * (n + 2))) (A169893 (3 * n + 1))).toNat

end

end A308069.P9743048019258605239

/-! ## A308069.P12408299666606101387

`A319659(A147389(n+2))`
-/

namespace A308069.P12408299666606101387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319659 (A147389 (n + 2)).toNat

end

end A308069.P12408299666606101387

/-! ## A308069.P2417960273540967805

`A138471(A032741(A063759(n)))`
-/

namespace A308069.P2417960273540967805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A032741 (A063759 n).toNat).toNat

end

end A308069.P2417960273540967805

/-!
# A308070: Numbers k such that k is the substring identical to the most significant digits of its base-7 representation.

The programs for A308070, there is no canonical definition to state claims against.
-/

/-! ## A308070.P15351864959020120930

`record[A160357(A054824(n+1))*A228050(n+1)]`
-/

namespace A308070.P15351864959020120930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (A054824 (n + 1)).toNat * A228050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308070.P15351864959020120930

/-! ## A308070.P14174688677546639104

`A228050(∑[A070251(A006519(n+1))])`
-/

namespace A308070.P14174688677546639104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070251 (A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308070.P14174688677546639104

/-! ## A308070.P8053012990456151559

`A228050(∑[A106800(n)!])`
-/

namespace A308070.P8053012990456151559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A106800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228050 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308070.P8053012990456151559

/-! ## A308070.P7694413941582106400

`A228050(∑[A151512(n)!])`
-/

namespace A308070.P7694413941582106400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A151512 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228050 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308070.P7694413941582106400

/-! ## A308070.P6687087563916509293

`A228050(∑[A238123(n)!])`
-/

namespace A308070.P6687087563916509293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A238123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228050 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308070.P6687087563916509293

/-!
# A308073: Lexicographically earliest sequence of positive terms such that for any distinct m and n, a(m) + dup(a(m+1)) <> a(n) + dup(a(n+1)) (where dup corresponds to A020330).

The programs for A308073, there is no canonical definition to state claims against.
-/

/-! ## A308073.P7620169811948727382

`A249068(A135381(n+1))`
-/

namespace A308073.P7620169811948727382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249068 (A135381 (n + 1)).toNat

end

end A308073.P7620169811948727382

/-! ## A308073.P8354338712845824314

`A249068(A135382(n+2))`
-/

namespace A308073.P8354338712845824314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249068 (A135382 (n + 2)).toNat

end

end A308073.P8354338712845824314

/-! ## A308073.P527170130439104839

`A249068(n+1)%p?[A096765(n)]`
-/

namespace A308073.P527170130439104839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249068 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A308073.P527170130439104839

/-! ## A308073.P4196548627411431030

`A249068(n+1)*A266608(A001248(n+2))`
-/

namespace A308073.P4196548627411431030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249068 (n + 1) * A266608 (A001248 (n + 2)).toNat

end

end A308073.P4196548627411431030

/-! ## A308073.P8353898340364420356

`and(A249068(n+1), A260196(A114168(n+2)))`
-/

namespace A308073.P8353898340364420356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249068 (n + 1)) (A260196 (A114168 (n + 2)).toNat)

end

end A308073.P8353898340364420356

/-!
# A308074: Number of integer-sided triangles with perimeter n whose side lengths are mutually coprime.

The programs for A308074, there is no canonical definition to state claims against.
-/

/-! ## A308074.P17529105445985826108

`A024161(n+1)+char[2]`
-/

namespace A308074.P17529105445985826108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024161 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A308074.P17529105445985826108

/-! ## A308074.P4665579629992768045

`A185012(n)+A024161(n+1)`
-/

namespace A308074.P4665579629992768045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n + A024161 (n + 1)

end

end A308074.P4665579629992768045

/-! ## A308074.P4267288346029459553

`A024161(n+1)^dr(A288697(n))`
-/

namespace A308074.P4267288346029459553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024161 (n + 1) ^ SequenceMachineLib.digitalRoot (A288697 n)

end

end A308074.P4267288346029459553

/-! ## A308074.P18441974642364496956

`A005044(n+1)-A308308(n+1)`
-/

namespace A308074.P18441974642364496956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A308308 (n + 1)

end

end A308074.P18441974642364496956

/-! ## A308074.P14884294533723556978

`A153638(C(3, n+1))+A024161(n+1)`
-/

namespace A308074.P14884294533723556978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153638 (Nat.choose 3 (n + 1)) + A024161 (n + 1)

end

end A308074.P14884294533723556978

/-! ## A308074.P4915841758777459290

`xor(A024161(n+1), A135461(A000010(2*n+1)))`
-/

namespace A308074.P4915841758777459290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024161 (n + 1)) (A135461 (A000010 (2 * n + 1)).toNat)

end

end A308074.P4915841758777459290

/-! ## A308074.P5954068619600777897

`A308229(n+1)/(n+1)`
-/

namespace A308074.P5954068619600777897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308229 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308074.P5954068619600777897

/-! ## A308074.P5883743043051683536

`A135461(∑[n])+A024161(n+1)`
-/

namespace A308074.P5883743043051683536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (∑ j ∈ Finset.range (n + 1), f1 j) + A024161 (n + 1)

end

end A308074.P5883743043051683536

/-!
# A308076: G.f. A(x) satisfies: A(x) = x + 2*A(x^2) + 4*A(x^3) + 8*A(x^4) + ... + 2^(k-1)*A(x^k) + ...

The programs for A308076, there is no canonical definition to state claims against.
-/

/-! ## A308076.P11947242829544200088

`record[gcd(A306060(n+1), A343552(n+1))]`
-/

namespace A308076.P11947242829544200088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306060 (n + 1)) (A343552 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308076.P11947242829544200088

/-! ## A308076.P11158110516485170806

`A000120(A177551(n))*A070175(n)`
-/

namespace A308076.P11158110516485170806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A177551 n).toNat * A070175 n

end

end A308076.P11158110516485170806

/-! ## A308076.P9760693495038710112

`record[A000005(A136217(n))*A292712(n)]`
-/

namespace A308076.P9760693495038710112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A136217 n).toNat * A292712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308076.P9760693495038710112

/-! ## A308076.P10075631627176794693

`A025487(n+1)*A117498(A348626(n+1))`
-/

namespace A308076.P10075631627176794693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) * A117498 (A348626 (n + 1)).toNat

end

end A308076.P10075631627176794693

/-!
# A308077: G.f. A(x) satisfies: A(x) = x - A(x^2) + A(x^3) - A(x^4) + A(x^5) - A(x^6) + ...

The programs for A308077, there is no canonical definition to state claims against.
-/

/-! ## A308077.P202050015105197683

`A358276(n+1)/(n+1)`
-/

namespace A308077.P202050015105197683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358276 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308077.P202050015105197683

/-! ## A308077.P12048890013480971442

`Δ[A347031(A000038(n)+n)]`
-/

namespace A308077.P12048890013480971442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347031 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308077.P12048890013480971442

/-! ## A308077.P5551995954906905657

`∑{d}[n+1, A008683(#)*A335062((n+1)/#)]`
-/

namespace A308077.P5551995954906905657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A335062 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308077.P5551995954906905657

/-! ## A308077.P8698975795508319591

`A000007(n)+Δ[A347031(A028310(n))]`
-/

namespace A308077.P8698975795508319591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347031 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A308077.P8698975795508319591

/-! ## A308077.P4505987897576039259

`Δ[A347031(A028310(n))+A040000(n)]`
-/

namespace A308077.P4505987897576039259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347031 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308077.P4505987897576039259

/-! ## A308077.P7762197985804328395

`Δ[A347031(A004277(A028310(n))-n)]`
-/

namespace A308077.P7762197985804328395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347031 (A004277 (A028310 n).toNat - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308077.P7762197985804328395

/-! ## A308077.P2366238162903109917

`Δ[A347031(A028310(n))%A004277(n)]`
-/

namespace A308077.P2366238162903109917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347031 (A028310 n).toNat) (A004277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308077.P2366238162903109917

/-! ## A308077.P9542660878218005564

`A347031(n+1)-A347031(A000038(n)+n)`
-/

namespace A308077.P9542660878218005564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347031 (n + 1) - A347031 (A000038 n + (n : ℤ)).toNat

end

end A308077.P9542660878218005564

/-! ## A308077.P7850463881438015466

`A347031(n+1)+A000007(n)-A347031(A028310(n))`
-/

namespace A308077.P7850463881438015466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347031 (n + 1) + (A000007 n - A347031 (A028310 n).toNat)

end

end A308077.P7850463881438015466

/-!
# A308078: Numbers k such that binomial(k^2,k) - k^k is squarefree.

The programs for A308078, there is no canonical definition to state claims against.
-/

/-! ## A308078.P12713773260972979805

`A003277(lt[A055469(n+1), A056993(n+3)])`
-/

namespace A308078.P12713773260972979805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056993 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308078.P12713773260972979805

/-! ## A308078.P13722950984225032328

`A003277(lt[A182624(n+1), A056993(n+3)])`
-/

namespace A308078.P13722950984225032328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056993 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308078.P13722950984225032328

/-! ## A308078.P18015845033577580105

`A003277(lt[A141031(n+2), A056993(n+3)])`
-/

namespace A308078.P18015845033577580105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141031 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056993 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308078.P18015845033577580105

/-! ## A308078.P17922615089875897858

`eq[A000688(A034595(3*n+2)), A053989(n+1)]`
-/

namespace A308078.P17922615089875897858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A034595 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308078.P17922615089875897858

/-! ## A308078.P17077811159967612618

`A003277(lt[A113243(3*n+5), A056993(n+3)])`
-/

namespace A308078.P17077811159967612618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113243 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056993 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308078.P17077811159967612618

/-!
# A308082: Numbers k such that floor(prime(k)/k) < floor(prime(k+1)/(k+1)).

The programs for A308082, there is no canonical definition to state claims against.
-/

/-! ## A308082.P11466405638331587264

`lt[A075765(n+1), A054541(n+1)]`
-/

namespace A308082.P11466405638331587264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308082.P11466405638331587264

/-! ## A308082.P13814539437815679319

`lt[A075765(n+1), A001223(A028310(n))]`
-/

namespace A308082.P13814539437815679319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308082.P13814539437815679319

/-! ## A308082.P13892417993245823930

`lt[A038605(A028310(n)), A038605(n+1)]`
-/

namespace A308082.P13892417993245823930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308082.P13892417993245823930

/-! ## A308082.P12845314572343365706

`lt[A068902(A028310(n)), A076079(n+1)]`
-/

namespace A308082.P12845314572343365706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308082.P12845314572343365706

/-! ## A308082.P17994525940472188216

`lt[A079415(A028310(n)), A079415(n+1)]`
-/

namespace A308082.P17994525940472188216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079415 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308082.P17994525940472188216

/-!
# A308084: a(n) = n*(n-1)*d(n)/4, where d(n)=A000005(n) is the number of divisors of n.

The programs for A308084, the canonical program `A308084.P7355965550228056148` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308084 has offset 1).

The definition of A308084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308084.P7355965550228056148

`(n+1)*n*A000005(n+1)/4`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A308084

/-- `(n+1)*n*A000005(n+1)/4` -/
def P7355965550228056148.Spec : Prop :=
  ∀ n, P7355965550228056148.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P10626132451309533899

`∑[n/2]*∏{e}[n+1, #+1]`
-/

namespace A308084.P10626132451309533899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ)

end

end A308084.P10626132451309533899

namespace A308084

/-- `∑[n/2]*∏{e}[n+1, #+1]` -/
def P10626132451309533899.Spec : Prop :=
  ∀ n, P10626132451309533899.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P13204063242930214263

`n*∑{d}[n+1, lcm(#, n+1)]/4`
-/

namespace A308084.P13204063242930214263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1)) : ℕ) : ℚ) / 4

end

end A308084.P13204063242930214263

namespace A308084

/-- `n*∑{d}[n+1, lcm(#, n+1)]/4` -/
def P13204063242930214263.Spec : Prop :=
  ∀ n, P13204063242930214263.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P1894483208660073086

`n/4*∑{d}[n+1, #*floor((n+1)/#)]`
-/

namespace A308084.P1894483208660073086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ⌊(n + 1 : ℚ) / (d : ℚ)⌋ : ℤ) : ℚ)

end

end A308084.P1894483208660073086

namespace A308084

/-- `n/4*∑{d}[n+1, #*floor((n+1)/#)]` -/
def P1894483208660073086.Spec : Prop :=
  ∀ n, P1894483208660073086.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P14825206083493034145

`A038040(n+1)/4*n`
-/

namespace A308084.P14825206083493034145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / 4 * (n : ℚ)

end

end A308084.P14825206083493034145

namespace A308084

/-- `A038040(n+1)/4*n` -/
def P14825206083493034145.Spec : Prop :=
  ∀ n, P14825206083493034145.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P7542080246940227973

`∑[n/2]*Δ[A054519(n)]`
-/

namespace A308084.P7542080246940227973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n : ℚ)

end

end A308084.P7542080246940227973

namespace A308084

/-- `∑[n/2]*Δ[A054519(n)]` -/
def P7542080246940227973.Spec : Prop :=
  ∀ n, P7542080246940227973.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P11556294512802303638

`(A032741(n+1)+1)*∑[n]/2`
-/

namespace A308084.P11556294512802303638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A308084.P11556294512802303638

namespace A308084

/-- `(A032741(n+1)+1)*∑[n]/2` -/
def P11556294512802303638.Spec : Prop :=
  ∀ n, P11556294512802303638.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P8597903615966490821

`A000005(2*n-(n-1))*∑[n/2]`
-/

namespace A308084.P8597903615966490821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308084.P8597903615966490821

namespace A308084

/-- `A000005(2*n-(n-1))*∑[n/2]` -/
def P8597903615966490821.Spec : Prop :=
  ∀ n, P8597903615966490821.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P9822224874280546435

`A000217(n)/2*Δ[A006218(n)]`
-/

namespace A308084.P9822224874280546435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A308084.P9822224874280546435

namespace A308084

/-- `A000217(n)/2*Δ[A006218(n)]` -/
def P9822224874280546435.Spec : Prop :=
  ∀ n, P9822224874280546435.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P8532469427478261486

`A034715(n+1)-A309731(n+1)`
-/

namespace A308084.P8532469427478261486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034715 (n + 1) - A309731 (n + 1)

end

end A308084.P8532469427478261486

namespace A308084

/-- `A034715(n+1)-A309731(n+1)` -/
def P8532469427478261486.Spec : Prop :=
  ∀ n, P8532469427478261486.a n = A308084 (n + 1)

end A308084

/-! ## A308084.P2476395582039797956

`A309732(n+1)-A034715(n+1)`
-/

namespace A308084.P2476395582039797956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309732 (n + 1) - A034715 (n + 1)

end

end A308084.P2476395582039797956

namespace A308084

/-- `A309732(n+1)-A034715(n+1)` -/
def P2476395582039797956.Spec : Prop :=
  ∀ n, P2476395582039797956.a n = A308084 (n + 1)

end A308084

/-! ## A308084.P7754331932905097060

`(A309732(n+1)-A309731(n+1))/2`
-/

namespace A308084.P7754331932905097060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309732 (n + 1) - A309731 (n + 1) : ℚ) / 2

end

end A308084.P7754331932905097060

namespace A308084

/-- `(A309732(n+1)-A309731(n+1))/2` -/
def P7754331932905097060.Spec : Prop :=
  ∀ n, P7754331932905097060.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P2526287793339594359

`n*A009191(n+1)*A009230(n+1)/4`
-/

namespace A308084.P2526287793339594359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A009191 (n + 1) * A009230 (n + 1) : ℚ) / 4)

end

end A308084.P2526287793339594359

namespace A308084

/-- `n*A009191(n+1)*A009230(n+1)/4` -/
def P2526287793339594359.Spec : Prop :=
  ∀ n, P2526287793339594359.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P15964018670210797581

`∑{d}[n+1, A007438(#)*A069153((n+1)/#)]`
-/

namespace A308084.P15964018670210797581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A069153 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308084.P15964018670210797581

namespace A308084

/-- `∑{d}[n+1, A007438(#)*A069153((n+1)/#)]` -/
def P15964018670210797581.Spec : Prop :=
  ∀ n, P15964018670210797581.a n = A308084 (n + 1)

end A308084

/-! ## A308084.P16138636452519300695

`∑{d}[n+1, A007437(#)*A102309((n+1)/#)]`
-/

namespace A308084.P16138636452519300695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A102309 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308084.P16138636452519300695

namespace A308084

/-- `∑{d}[n+1, A007437(#)*A102309((n+1)/#)]` -/
def P16138636452519300695.Spec : Prop :=
  ∀ n, P16138636452519300695.a n = A308084 (n + 1)

end A308084

/-! ## A308084.P9637708914558590538

`∑{d}[n+1, A000217(#)*A161680((n+1)/#)]`
-/

namespace A308084.P9637708914558590538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A161680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308084.P9637708914558590538

namespace A308084

/-- `∑{d}[n+1, A000217(#)*A161680((n+1)/#)]` -/
def P9637708914558590538.Spec : Prop :=
  ∀ n, P9637708914558590538.a n = A308084 (n + 1)

end A308084

/-! ## A308084.P11250080275884739350

`∑{d}[n+1, A309322(#)*A332049((n+1)/#)]`
-/

namespace A308084.P11250080275884739350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309322 d * A332049 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308084.P11250080275884739350

namespace A308084

/-- `∑{d}[n+1, A309322(#)*A332049((n+1)/#)]` -/
def P11250080275884739350.Spec : Prop :=
  ∀ n, P11250080275884739350.a n = A308084 (n + 1)

end A308084

/-! ## A308084.P13023759108721683198

`∑[n]*∑{d}[n+1, A057427(#)]/2`
-/

namespace A308084.P13023759108721683198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ d ∈ Nat.divisors (f2 n), A057427 d) : ℤ) : ℚ) / 2

end

end A308084.P13023759108721683198

namespace A308084

/-- `∑[n]*∑{d}[n+1, A057427(#)]/2` -/
def P13023759108721683198.Spec : Prop :=
  ∀ n, P13023759108721683198.a n = (A308084 (n + 1) : ℚ)

end A308084

/-! ## A308084.P15298162014790446823

`∑{d}[n+1, A195094(#)*A400585((n+1)/#)]`
-/

namespace A308084.P15298162014790446823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A195094 d * A400585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A308084.P15298162014790446823

namespace A308084

/-- `∑{d}[n+1, A195094(#)*A400585((n+1)/#)]` -/
def P15298162014790446823.Spec : Prop :=
  ∀ n, P15298162014790446823.a n = A308084 (n + 1)

end A308084

/-! ## A308084.P646457252950579912

`∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]*C(n+1, 2)/2`
-/

namespace A308084.P646457252950579912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋)) * (Nat.choose (n + 1) 2 : ℤ) : ℤ) : ℚ) / 2

end

end A308084.P646457252950579912

namespace A308084

/-- `∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]*C(n+1, 2)/2` -/
def P646457252950579912.Spec : Prop :=
  ∀ n, P646457252950579912.a n = (A308084 (n + 1) : ℚ)

end A308084

/-!
# A308087: Number of lattice paths from (0,0) to (n,n) using Euclid's orchard as a step-set.

The programs for A308087, there is no canonical definition to state claims against.
-/

/-! ## A308087.P16765754191159168033

`A248180(A273958(n+1)-A248180(3*n))`
-/

namespace A308087.P16765754191159168033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A273958 (n + 1) - A248180 (3 * n)).toNat

end

end A308087.P16765754191159168033

/-! ## A308087.P8678439213739778863

`A229950(lcm(4, 2^n))`
-/

namespace A308087.P8678439213739778863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (Nat.lcm 4 (2 ^ n))

end

end A308087.P8678439213739778863

/-! ## A308087.P15710358692816560756

`or(1, A229950(2^n))`
-/

namespace A308087.P15710358692816560756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229950 (2 ^ n))

end

end A308087.P15710358692816560756

/-!
# A308089: Sum of the perimeters of all integer-sided triangles with perimeter n.

The programs for A308089, the canonical program `A308089.P8981676203332288718` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308089 has offset 1).

The definition of A308089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308089.P8139506343185761495

`ogf((3x^2+3x^3+5x^4+5x^5+8x^6+6x^7+6x^8)/(1+x-2x^3-4x^4-2x^5+x^6+5x^7+5x^8+x^9-2x^10-4x^11-2x^12+x^14+x^15))`
-/

namespace A308089.P8139506343185761495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 3, 5, 5, 8, 6, 6] [1, 1, 0, -2, -4, -2, 1, 5, 5, 1, -2, -4, -2, 0, 1, 1] n

end

end A308089.P8139506343185761495

namespace A308089

/-- `ogf((3x^2+3x^3+5x^4+5x^5+8x^6+6x^7+6x^8)/(1+x-2x^3-4x^4-2x^5+x^6+5x^7+5x^8+x^9-2x^10-4x^11-2x^12+x^14+x^15))` -/
def P8139506343185761495.Spec : Prop :=
  ∀ n, P8139506343185761495.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P8981676203332288718

`(n+1)*A005044(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A308089

/-- `(n+1)*A005044(n+1)` -/
def P8981676203332288718.Spec : Prop :=
  ∀ n, P8981676203332288718.a n = A308089 (n + 1)

theorem P8981676203332288718.correct : P8981676203332288718.Spec := by
  intro n
  simp only [A308089, Nat.add_sub_cancel]

end A308089

/-! ## A308089.P15029658466711858862

`∑[-Δ[-(n*A005044(n))]]`
-/

namespace A308089.P15029658466711858862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * A005044 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308089.P15029658466711858862

namespace A308089

/-- `∑[-Δ[-(n*A005044(n))]]` -/
def P15029658466711858862.Spec : Prop :=
  ∀ n, P15029658466711858862.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P4703605436410242954

`A308123(n+1)+A308102(n+1)`
-/

namespace A308089.P4703605436410242954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308123 (n + 1) + A308102 (n + 1)

end

end A308089.P4703605436410242954

namespace A308089

/-- `A308123(n+1)+A308102(n+1)` -/
def P4703605436410242954.Spec : Prop :=
  ∀ n, P4703605436410242954.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P4166209464006657477

`(n+1)*A069905(A028242(n)+1)`
-/

namespace A308089.P4166209464006657477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069905 (A028242 n + 1).toNat

end

end A308089.P4166209464006657477

namespace A308089

/-- `(n+1)*A069905(A028242(n)+1)` -/
def P4166209464006657477.Spec : Prop :=
  ∀ n, P4166209464006657477.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P12503646330103809530

`(n+1)*(A008642(n)-A025767(n))`
-/

namespace A308089.P12503646330103809530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008642 n - A025767 n)

end

end A308089.P12503646330103809530

namespace A308089

/-- `(n+1)*(A008642(n)-A025767(n))` -/
def P12503646330103809530.Spec : Prop :=
  ∀ n, P12503646330103809530.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P5085720736136815615

`(n+1)*Δ[A026810(n+1)]`
-/

namespace A308089.P5085720736136815615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A308089.P5085720736136815615

namespace A308089

/-- `(n+1)*Δ[A026810(n+1)]` -/
def P5085720736136815615.Spec : Prop :=
  ∀ n, P5085720736136815615.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P14458211147097217464

`(n+1)*A211540(A060762(n+2))`
-/

namespace A308089.P14458211147097217464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211540 (A060762 (n + 2)).toNat

end

end A308089.P14458211147097217464

namespace A308089

/-- `(n+1)*A211540(A060762(n+2))` -/
def P14458211147097217464.Spec : Prop :=
  ∀ n, P14458211147097217464.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P13770909182524376831

`(A001399(n+1)-A008642(n+1))*(n+1)`
-/

namespace A308089.P13770909182524376831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001399 (n + 1) - A008642 (n + 1)) * (n + 1 : ℤ)

end

end A308089.P13770909182524376831

namespace A308089

/-- `(A001399(n+1)-A008642(n+1))*(n+1)` -/
def P13770909182524376831.Spec : Prop :=
  ∀ n, P13770909182524376831.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P13197009768953859383

`A005044(A052938(2*n))*A052938(2*n)`
-/

namespace A308089.P13197009768953859383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A052938 (2 * n)).toNat * A052938 (2 * n)

end

end A308089.P13197009768953859383

namespace A308089

/-- `A005044(A052938(2*n))*A052938(2*n)` -/
def P13197009768953859383.Spec : Prop :=
  ∀ n, P13197009768953859383.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P16651991874703842546

`A308066(2*(n+1))*(n+1)`
-/

namespace A308089.P16651991874703842546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (2 * (n + 1)) * (n + 1 : ℤ)

end

end A308089.P16651991874703842546

namespace A308089

/-- `A308066(2*(n+1))*(n+1)` -/
def P16651991874703842546.Spec : Prop :=
  ∀ n, P16651991874703842546.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P5239692174093825502

`A005044(A028242(2*n))*A028242(2*n)`
-/

namespace A308089.P5239692174093825502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A308089.P5239692174093825502

namespace A308089

/-- `A005044(A028242(2*n))*A028242(2*n)` -/
def P5239692174093825502.Spec : Prop :=
  ∀ n, P5239692174093825502.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P278654152100773995

`A005044(A110514(2*n))*A110514(2*n)`
-/

namespace A308089.P278654152100773995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A110514 (2 * n)).toNat * A110514 (2 * n)

end

end A308089.P278654152100773995

namespace A308089

/-- `A005044(A110514(2*n))*A110514(2*n)` -/
def P278654152100773995.Spec : Prop :=
  ∀ n, P278654152100773995.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P8618216971553230290

`A336972(n+1)+A307966(n+1)`
-/

namespace A308089.P8618216971553230290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336972 (n + 1) + A307966 (n + 1)

end

end A308089.P8618216971553230290

namespace A308089

/-- `A336972(n+1)+A307966(n+1)` -/
def P8618216971553230290.Spec : Prop :=
  ∀ n, P8618216971553230290.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P11886391531128018624

`A336973(n+1)+A308096(n+1)`
-/

namespace A308089.P11886391531128018624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) + A308096 (n + 1)

end

end A308089.P11886391531128018624

namespace A308089

/-- `A336973(n+1)+A308096(n+1)` -/
def P11886391531128018624.Spec : Prop :=
  ∀ n, P11886391531128018624.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P7474435189252787360

`A336974(n+1)+A307686(n+1)`
-/

namespace A308089.P7474435189252787360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336974 (n + 1) + A307686 (n + 1)

end

end A308089.P7474435189252787360

namespace A308089

/-- `A336974(n+1)+A307686(n+1)` -/
def P7474435189252787360.Spec : Prop :=
  ∀ n, P7474435189252787360.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P522140714088086618

`A307686(n+1)+A308096(n+1)+A307966(n+1)`
-/

namespace A308089.P522140714088086618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A308096 (n + 1) + A307966 (n + 1))

end

end A308089.P522140714088086618

namespace A308089

/-- `A307686(n+1)+A308096(n+1)+A307966(n+1)` -/
def P522140714088086618.Spec : Prop :=
  ∀ n, P522140714088086618.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P10189069368181531834

`A025865(3*n+2)*(n+1)`
-/

namespace A308089.P10189069368181531834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (3 * n + 2) * (n + 1 : ℤ)

end

end A308089.P10189069368181531834

namespace A308089

/-- `A025865(3*n+2)*(n+1)` -/
def P10189069368181531834.Spec : Prop :=
  ∀ n, P10189069368181531834.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P6609436870463584787

`(n+1)*Δ[A288165(3*(n+1))]`
-/

namespace A308089.P6609436870463584787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A308089.P6609436870463584787

namespace A308089

/-- `(n+1)*Δ[A288165(3*(n+1))]` -/
def P6609436870463584787.Spec : Prop :=
  ∀ n, P6609436870463584787.a n = A308089 (n + 1)

end A308089

/-! ## A308089.P100088425917169021

`A005044(A008619(2*n))*A008619(A008619(4*n))`
-/

namespace A308089.P100088425917169021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008619 (2 * n)).toNat * A008619 (A008619 (4 * n)).toNat

end

end A308089.P100088425917169021

namespace A308089

/-- `A005044(A008619(2*n))*A008619(A008619(4*n))` -/
def P100088425917169021.Spec : Prop :=
  ∀ n, P100088425917169021.a n = A308089 (n + 1)

end A308089

/-!
# A308090: a(n) = gcd(2^n + n!, 3^n + n!, n+1).

The programs for A308090, the canonical program `A308090.P3714707824000917373` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308090 has offset 1).

The definition of A308090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308090.P13837903576570084100

`(n+2)^round(n/∏{d}[n+2, #])`
-/

namespace A308090.P13837903576570084100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)) : ℤ)

end

end A308090.P13837903576570084100

namespace A308090

/-- `(n+2)^round(n/∏{d}[n+2, #])` -/
def P13837903576570084100.Spec : Prop :=
  ∀ n, P13837903576570084100.a n = (A308090 (n + 1) : ℚ)

end A308090

/-! ## A308090.P12770735581172525975

`(n+2)^floor(2*n/∏{d}[n+2, #])`
-/

namespace A308090.P12770735581172525975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (⌊(2 * n : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋ : ℤ)

end

end A308090.P12770735581172525975

namespace A308090

/-- `(n+2)^floor(2*n/∏{d}[n+2, #])` -/
def P12770735581172525975.Spec : Prop :=
  ∀ n, P12770735581172525975.a n = (A308090 (n + 1) : ℚ)

end A308090

/-! ## A308090.P12959376229078301479

`or(1, C(∏{p}[n+2, #-1], n))^abs(1-n%3)`
-/

namespace A308090.P12959376229078301479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat n) : ℚ) ^ (|1 - ((n % 3 : ℕ) : ℤ)| : ℤ)

end

end A308090.P12959376229078301479

namespace A308090

/-- `or(1, C(∏{p}[n+2, #-1], n))^abs(1-n%3)` -/
def P12959376229078301479.Spec : Prop :=
  ∀ n, P12959376229078301479.a n = (A308090 (n + 1) : ℚ)

end A308090

/-! ## A308090.P1870981365222684972

`A090585(char[1]+n+1)`
-/

namespace A308090.P1870981365222684972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 ((if ∃ j, f1 j = n then 1 else 0) + (n + 1))

end

end A308090.P1870981365222684972

namespace A308090

/-- `A090585(char[1]+n+1)` -/
def P1870981365222684972.Spec : Prop :=
  ∀ n, P1870981365222684972.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P11922044904679265192

`gcd(n+2, A030664(n+1))`
-/

namespace A308090.P11922044904679265192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A030664 (n + 1))

end

end A308090.P11922044904679265192

namespace A308090

/-- `gcd(n+2, A030664(n+1))` -/
def P11922044904679265192.Spec : Prop :=
  ∀ n, (P11922044904679265192.a n : ℤ) = A308090 (n + 1)

end A308090

/-! ## A308090.P3714707824000917373

`C(n+2, A113523(n+2))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A308090

/-- `C(n+2, A113523(n+2))` -/
def P3714707824000917373.Spec : Prop :=
  ∀ n, (P3714707824000917373.a n : ℤ) = A308090 (n + 1)

theorem P3714707824000917373.correct : P3714707824000917373.Spec := by
  intro n
  simp only [A308090, Nat.add_sub_cancel]

end A308090

/-! ## A308090.P16933411688461459794

`gcd(round(1/acot(n))+2, A151800(n))`
-/

namespace A308090.P16933411688461459794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 2) (A151800 n)

end

end A308090.P16933411688461459794

namespace A308090

/-- `gcd(round(1/acot(n))+2, A151800(n))` -/
def P16933411688461459794.Spec : Prop :=
  ∀ n, (P16933411688461459794.a n : ℤ) = A308090 (n + 1)

end A308090

/-! ## A308090.P12092841239701328713

`A089026(a(n-1)+n+1)` with `a(0)=1, a(1)=1`
-/

namespace A308090.P12092841239701328713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A089026 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A308090.P12092841239701328713

namespace A308090

/-- `A089026(a(n-1)+n+1)` -/
def P12092841239701328713.Spec : Prop :=
  ∀ n, P12092841239701328713.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P3198326112447857053

`C(A000010(n+2), n)+1-C(2, n)`
-/

namespace A308090.P3198326112447857053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000010 (n + 2)).toNat n + 1 : ℤ) - (Nat.choose 2 n : ℤ)

end

end A308090.P3198326112447857053

namespace A308090

/-- `C(A000010(n+2), n)+1-C(2, n)` -/
def P3198326112447857053.Spec : Prop :=
  ∀ n, P3198326112447857053.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P12632018610124470198

`A145737(A152271(n))`
-/

namespace A308090.P12632018610124470198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (A152271 n).toNat

end

end A308090.P12632018610124470198

namespace A308090

/-- `A145737(A152271(n))` -/
def P12632018610124470198.Spec : Prop :=
  ∀ n, P12632018610124470198.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P14845039972897331342

`A038502(A090585(n+1))`
-/

namespace A308090.P14845039972897331342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A090585 (n + 1)).toNat

end

end A308090.P14845039972897331342

namespace A308090

/-- `A038502(A090585(n+1))` -/
def P14845039972897331342.Spec : Prop :=
  ∀ n, P14845039972897331342.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P1711399603372880727

`A051724(A118136(n+1))`
-/

namespace A308090.P1711399603372880727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A118136 (n + 1)).toNat

end

end A308090.P1711399603372880727

namespace A308090

/-- `A051724(A118136(n+1))` -/
def P1711399603372880727.Spec : Prop :=
  ∀ n, P1711399603372880727.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P5764560179796603540

`A145737(A123684(n+1))`
-/

namespace A308090.P5764560179796603540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (A123684 (n + 1)).toNat

end

end A308090.P5764560179796603540

namespace A308090

/-- `A145737(A123684(n+1))` -/
def P5764560179796603540.Spec : Prop :=
  ∀ n, P5764560179796603540.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P8841025219479707123

`A051724(A014973(n+2))`
-/

namespace A308090.P8841025219479707123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A014973 (n + 2)).toNat

end

end A308090.P8841025219479707123

namespace A308090

/-- `A051724(A014973(n+2))` -/
def P8841025219479707123.Spec : Prop :=
  ∀ n, P8841025219479707123.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P18347159733051741873

`A029934(A074828(n+2))`
-/

namespace A308090.P18347159733051741873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029934 (A074828 (n + 2)).toNat

end

end A308090.P18347159733051741873

namespace A308090

/-- `A029934(A074828(n+2))` -/
def P18347159733051741873.Spec : Prop :=
  ∀ n, P18347159733051741873.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P1621266083927157776

`A051724(A089026(n+2))`
-/

namespace A308090.P1621266083927157776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A089026 (n + 2)).toNat

end

end A308090.P1621266083927157776

namespace A308090

/-- `A051724(A089026(n+2))` -/
def P1621266083927157776.Spec : Prop :=
  ∀ n, P1621266083927157776.a n = A308090 (n + 1)

end A308090

/-! ## A308090.P3396208753354762902

`gcd(n+2, A068111(n))`
-/

namespace A308090.P3396208753354762902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A068111 n)

end

end A308090.P3396208753354762902

namespace A308090

/-- `gcd(n+2, A068111(n))` -/
def P3396208753354762902.Spec : Prop :=
  ∀ n, (P3396208753354762902.a n : ℤ) = A308090 (n + 1)

end A308090

/-!
# A308092: The sum of the first n terms of the sequence is the concatenation of the first n bits of the sequence read as binary, with a(1) = 1.

The programs for A308092, there is no canonical definition to state claims against.
-/

/-! ## A308092.P8104138499873911534

`A005408(a(n-1))-A035195(A035195(n+1)+1)` with `a(0)=1`
-/

namespace A308092.P8104138499873911534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005408 (a (n - 1)).toNat - A035195 (A035195 (n + 1) + 1).toNat

end

end A308092.P8104138499873911534

/-! ## A308092.P9597212413919968246

`A014482(n)+A004526(A026622(n))`
-/

namespace A308092.P9597212413919968246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014482 n + A004526 (A026622 n).toNat

end

end A308092.P9597212413919968246

/-! ## A308092.P8346010485664026281

`A015538(n)+A004526(A026622(n))`
-/

namespace A308092.P8346010485664026281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015538 n + A004526 (A026622 n).toNat

end

end A308092.P8346010485664026281

/-! ## A308092.P13753230535162126635

`A065033(A026622(n)+A014482(n))`
-/

namespace A308092.P13753230535162126635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026622 n + A014482 n).toNat

end

end A308092.P13753230535162126635

/-! ## A308092.P16613689360946521621

`A065033(A026622(n)+A015538(n))`
-/

namespace A308092.P16613689360946521621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026622 n + A015538 n).toNat

end

end A308092.P16613689360946521621

/-!
# A308093: For any n > 0, let f_n be the lexicographically earliest sequence of distinct positive terms such that the concatenation of the binary representation of its terms, without leading zeros, corresponds to the binary representation of n repeated indefinitely. Apparently, n always appears in f_n. a(n) gives the index of n in f_n.

The programs for A308093, there is no canonical definition to state claims against.
-/

/-! ## A308093.P6350824493901330035

`A000045(A124771(n+1)%A129844(2*(n+2)))`
-/

namespace A308093.P6350824493901330035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A124771 (n + 1)) (A129844 (2 * (n + 2)))).toNat

end

end A308093.P6350824493901330035

/-! ## A308093.P333380728262078216

`A000045(A124771(n+1))%A265947(3*n+2)`
-/

namespace A308093.P333380728262078216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A124771 (n + 1)).toNat) (A265947 (3 * n + 2))

end

end A308093.P333380728262078216

/-! ## A308093.P18180034264964523074

`A000045(gcd(A124771(n+1), A335317(3*n+2)))`
-/

namespace A308093.P18180034264964523074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A124771 (n + 1)) (A335317 (3 * n + 2)))

end

end A308093.P18180034264964523074

/-! ## A308093.P5666137342228760270

`A001227(A055174(n+1))*A333224(A043318(n+1))`
-/

namespace A308093.P5666137342228760270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A055174 (n + 1)).toNat * A333224 (A043318 (n + 1)).toNat

end

end A308093.P5666137342228760270

/-!
# A308095: a(n) is the sum of sigma (i.e., A000203) over the totatives of n.

The programs for A308095, there is no canonical definition to state claims against.
-/

/-! ## A308095.P5163407676437678850

`∑[∑{d}[n+1, #]]-A399973(n+1)`
-/

namespace A308095.P5163407676437678850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A399973 (n + 1)

end

end A308095.P5163407676437678850

/-! ## A308095.P7923635517178926260

`A024916(n+1)-A399973(n+1)`
-/

namespace A308095.P7923635517178926260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A399973 (n + 1)

end

end A308095.P7923635517178926260

/-! ## A308095.P15997245648919236936

`∑[A000203(n+1)]-A399973(n+1)`
-/

namespace A308095.P15997245648919236936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A399973 (n + 1)

end

end A308095.P15997245648919236936

/-! ## A308095.P10250769313901271178

`∑[sqrt(A072861(n+1))]-A399973(n+1)`
-/

namespace A308095.P10250769313901271178
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A399973 (n + 1) : ℝ)

end

end A308095.P10250769313901271178

/-! ## A308095.P15976519410553540993

`∑[∑[A340793(n+1)]]-A399973(n+1)`
-/

namespace A308095.P15976519410553540993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A399973 (n + 1)

end

end A308095.P15976519410553540993

/-! ## A308095.P9870367942677099688

`∑[A088580(n+1)-1]-A399973(n+1)`
-/

namespace A308095.P9870367942677099688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A399973 (n + 1)

end

end A308095.P9870367942677099688

/-! ## A308095.P17285139993101294872

`∑[A001065(n+1)+n+1]-A399973(n+1)`
-/

namespace A308095.P17285139993101294872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A399973 (n + 1)

end

end A308095.P17285139993101294872

/-!
# A308096: Take all the integer-sided triangles with perimeter n and sides a, b, and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308096, the canonical program `A308096.P18429786400225441772` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308096 has offset 1).

The definition of A308096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308096.P18429786400225441772

`ogf((x^2+x^3+2x^4+2x^5+3x^6+2x^7+2x^8)/(1+x-2x^3-4x^4-2x^5+x^6+5x^7+5x^8+x^9-2x^10-4x^11-2x^12+x^14+x^15))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A308096

/-- `ogf((x^2+x^3+2x^4+2x^5+3x^6+2x^7+2x^8)/(1+x-2x^3-4x^4-2x^5+x^6+5x^7+5x^8+x^9-2x^10-4x^11-2x^12+x^14+x^15))` -/
def P18429786400225441772.Spec : Prop :=
  ∀ n, P18429786400225441772.a n = A308096 (n + 1)

theorem P18429786400225441772.correct : P18429786400225441772.Spec := by
  intro n
  simp only [A308096, Nat.add_sub_cancel]

end A308096

/-! ## A308096.P7168246889840768378

`A308160(n+1)+A308109(n+1)`
-/

namespace A308096.P7168246889840768378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308160 (n + 1) + A308109 (n + 1)

end

end A308096.P7168246889840768378

namespace A308096

/-- `A308160(n+1)+A308109(n+1)` -/
def P7168246889840768378.Spec : Prop :=
  ∀ n, P7168246889840768378.a n = A308096 (n + 1)

end A308096

/-! ## A308096.P9778770046687197391

`A336974(n+1)-A307966(n+1)`
-/

namespace A308096.P9778770046687197391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336974 (n + 1) - A307966 (n + 1)

end

end A308096.P9778770046687197391

namespace A308096

/-- `A336974(n+1)-A307966(n+1)` -/
def P9778770046687197391.Spec : Prop :=
  ∀ n, P9778770046687197391.a n = A308096 (n + 1)

end A308096

/-! ## A308096.P10809114108529138566

`A308089(n+1)-A336973(n+1)`
-/

namespace A308096.P10809114108529138566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - A336973 (n + 1)

end

end A308096.P10809114108529138566

namespace A308096

/-- `A308089(n+1)-A336973(n+1)` -/
def P10809114108529138566.Spec : Prop :=
  ∀ n, P10809114108529138566.a n = A308096 (n + 1)

end A308096

/-! ## A308096.P6935451061928195881

`A307966(n+1)-A008763(A028242(n))`
-/

namespace A308096.P6935451061928195881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307966 (n + 1) - A008763 (A028242 n).toNat

end

end A308096.P6935451061928195881

namespace A308096

/-- `A307966(n+1)-A008763(A028242(n))` -/
def P6935451061928195881.Spec : Prop :=
  ∀ n, P6935451061928195881.a n = A308096 (n + 1)

end A308096

/-! ## A308096.P6006122179957655982

`A336972(n+1)-A307686(n+1)`
-/

namespace A308096.P6006122179957655982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336972 (n + 1) - A307686 (n + 1)

end

end A308096.P6006122179957655982

namespace A308096

/-- `A336972(n+1)-A307686(n+1)` -/
def P6006122179957655982.Spec : Prop :=
  ∀ n, P6006122179957655982.a n = A308096 (n + 1)

end A308096

/-! ## A308096.P12219593833390831955

`A307686(n+1)+A181120(A028242(n))`
-/

namespace A308096.P12219593833390831955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + A181120 (A028242 n).toNat

end

end A308096.P12219593833390831955

namespace A308096

/-- `A307686(n+1)+A181120(A028242(n))` -/
def P12219593833390831955.Spec : Prop :=
  ∀ n, P12219593833390831955.a n = A308096 (n + 1)

end A308096

/-! ## A308096.P12845860345375670704

`(A340760(n)+A336973(n+1))/2`
-/

namespace A308096.P12845860345375670704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340760 n + A336973 (n + 1) : ℚ) / 2

end

end A308096.P12845860345375670704

namespace A308096

/-- `(A340760(n)+A336973(n+1))/2` -/
def P12845860345375670704.Spec : Prop :=
  ∀ n, P12845860345375670704.a n = (A308096 (n + 1) : ℚ)

end A308096

/-! ## A308096.P964511588573361942

`Δ[A308759(n+1)]`
-/

namespace A308096.P964511588573361942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308096.P964511588573361942

namespace A308096

/-- `Δ[A308759(n+1)]` -/
def P964511588573361942.Spec : Prop :=
  ∀ n, P964511588573361942.a n = A308096 (n + 1)

end A308096

/-! ## A308096.P12010823889434513624

`A308759(n+2)-A308759(n+1)`
-/

namespace A308096.P12010823889434513624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308759 (n + 2) - A308759 (n + 1)

end

end A308096.P12010823889434513624

namespace A308096

/-- `A308759(n+2)-A308759(n+1)` -/
def P12010823889434513624.Spec : Prop :=
  ∀ n, P12010823889434513624.a n = A308096 (n + 1)

end A308096

/-! ## A308096.P9216844273840516653

`A336972(n+1)+A001057(2*A307686(n+1))`
-/

namespace A308096.P9216844273840516653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336972 (n + 1) + A001057 (2 * A307686 (n + 1)).toNat

end

end A308096.P9216844273840516653

namespace A308096

/-- `A336972(n+1)+A001057(2*A307686(n+1))` -/
def P9216844273840516653.Spec : Prop :=
  ∀ n, P9216844273840516653.a n = A308096 (n + 1)

end A308096

/-!
# A308097: Take the integer-sided triangles with perimeter n and integer area. Then a(n) is the sum of the areas of all the triangles and the squares on their sides.

The programs for A308097, there is no canonical definition to state claims against.
-/

/-! ## A308097.P5257817684807344563

`A028710(A006564(n+1)-A105027(n))`
-/

namespace A308097.P5257817684807344563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028710 (A006564 (n + 1) - A105027 n).toNat

end

end A308097.P5257817684807344563

/-! ## A308097.P8483125331311622218

`A031061(n+1)*A064911(A143573(n))`
-/

namespace A308097.P8483125331311622218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031061 (n + 1) * A064911 (A143573 n).toNat

end

end A308097.P8483125331311622218

/-!
# A308098: Numbers m such that sequence of their values of sigma(m) corresponds to sequence of unique values of function sigma(n) for n >= 1 in increasing order (A007370).

The programs for A308098, there is no canonical definition to state claims against.
-/

/-! ## A308098.P2066551247945975342

`A051444(A007370(n+1))`
-/

namespace A308098.P2066551247945975342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A007370 (n + 1)).toNat

end

end A308098.P2066551247945975342

/-! ## A308098.P14499664513099269416

`A240667(record[∑{d}[A240667(n+1), #]])`
-/

namespace A308098.P14499664513099269416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A308098.P14499664513099269416

/-! ## A308098.P16599210572426648249

`A051444(eq[1, A054973(n+1)]+1)`
-/

namespace A308098.P16599210572426648249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A308098.P16599210572426648249

/-! ## A308098.P1986115753164908788

`A057637(eq[1, A054973(n+1)]+1)`
-/

namespace A308098.P1986115753164908788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A308098.P1986115753164908788

/-! ## A308098.P18291060020222146966

`A240667(A007370(2*n+1-n))`
-/

namespace A308098.P18291060020222146966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A007370 (2 * n + 1 - n)).toNat

end

end A308098.P18291060020222146966

/-! ## A308098.P17499527849545352760

`A258913(A007370(n+1)%A007371(n+1))`
-/

namespace A308098.P17499527849545352760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (Int.tmod (A007370 (n + 1)) (A007371 (n + 1))).toNat

end

end A308098.P17499527849545352760

/-! ## A308098.P4720942811188282716

`A258913(A007370(n+1))%A007372(n+1)`
-/

namespace A308098.P4720942811188282716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258913 (A007370 (n + 1)).toNat) (A007372 (n + 1))

end

end A308098.P4720942811188282716

/-! ## A308098.P2227627377868070004

`A258913(A146076(2*n+5)+A007370(n+1))`
-/

namespace A308098.P2227627377868070004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A146076 (2 * n + 5) + A007370 (n + 1)).toNat

end

end A308098.P2227627377868070004

/-! ## A308098.P17147233568047226023

`A258913(gcd(2*A007370(n+1), A007370(n+1)))`
-/

namespace A308098.P17147233568047226023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (Int.gcd (2 * A007370 (n + 1)) (A007370 (n + 1)))

end

end A308098.P17147233568047226023

/-! ## A308098.P18214952344211335059

`A258913(A007370(n+1)/(A000027(n+1)-n))`
-/

namespace A308098.P18214952344211335059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (SequenceMachineLib.roundAway ((A007370 (n + 1) : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ))).toNat

end

end A308098.P18214952344211335059

/-! ## A308098.P8318224908245318362

`A258913(A007370(n+1)/gcd(n, A014963(n+1)))`
-/

namespace A308098.P8318224908245318362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (SequenceMachineLib.roundAway ((A007370 (n + 1) : ℚ) / (Int.gcd (n : ℤ) (A014963 (n + 1)) : ℚ))).toNat

end

end A308098.P8318224908245318362

/-! ## A308098.P2339918709419033162

`A240667(A007369(n+1))+A240667(A007370(n+1))`
-/

namespace A308098.P2339918709419033162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (A007369 (n + 1)).toNat + A240667 (A007370 (n + 1)).toNat

end

end A308098.P2339918709419033162

/-! ## A308098.P9511117840450978318

`A258913(A007370(n+1))+A132440(A315960(n+1))`
-/

namespace A308098.P9511117840450978318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A007370 (n + 1)).toNat + A132440 (A315960 (n + 1)).toNat

end

end A308098.P9511117840450978318

/-!
# A308099: Numbers k with 2 or more chained distinct prime factors: the last digit of every prime factor is the same as the first digit of the next prime factor. Prime factors must be in ascending order.

The programs for A308099, there is no canonical definition to state claims against.
-/

/-! ## A308099.P10593569286471107876

`∩[A136012(n+1), A393069(n+1)]`
-/

namespace A308099.P10593569286471107876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308099.P10593569286471107876

/-! ## A308099.P3723658721550051754

`∩[A143907(n+1), A393069(n+1)]`
-/

namespace A308099.P3723658721550051754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308099.P3723658721550051754

