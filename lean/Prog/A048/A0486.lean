import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A048600: Array a(n,k) = number of colors that can be produced by n units of paint from k primary colors, read by descending antidiagonals.

The programs for A048600, there is no canonical definition to state claims against.
-/

/-! ## A048600.P15595570681914372048

`A002262(n)+A001222(2^A116672(n+1))`
-/

namespace A048600.P15595570681914372048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A116672 (n + 1) : ℤ))).toNat

end

end A048600.P15595570681914372048

/-! ## A048600.P5871491704860753998

`A331854(A046817(n))`
-/

namespace A048600.P5871491704860753998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331854 (A046817 n).toNat

end

end A048600.P5871491704860753998

/-! ## A048600.P5177313528456511851

`A072789(A364506(n))`
-/

namespace A048600.P5177313528456511851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072789 (A364506 n).toNat

end

end A048600.P5177313528456511851

/-! ## A048600.P3601522072716764619

`A177903(A300700(n))`
-/

namespace A048600.P3601522072716764619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A300700 n).toNat

end

end A048600.P3601522072716764619

/-! ## A048600.P1698416418862753096

`A108502(A373628(n))`
-/

namespace A048600.P1698416418862753096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108502 (A373628 n).toNat

end

end A048600.P1698416418862753096

/-!
# A048601: Robbins triangle read by rows: T(n,k) = number of alternating sign n X n matrices with a 1 at top of column k (n >= 1, 1<=k<=n).

The programs for A048601, there is no canonical definition to state claims against.
-/

/-! ## A048601.P7877486580450966350

`A132284(A014784(n))`
-/

namespace A048601.P7877486580450966350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A014784 n).toNat

end

end A048601.P7877486580450966350

/-! ## A048601.P6269004084866223728

`A014784(n)-A088705(A061993(n))`
-/

namespace A048601.P6269004084866223728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014784 n - A088705 (A061993 n).toNat

end

end A048601.P6269004084866223728

/-! ## A048601.P16676162706862144441

`A034836(A087842(n+1)^A059036(n))`
-/

namespace A048601.P16676162706862144441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (SequenceMachineLib.roundAway ((A087842 (n + 1) : ℚ) ^ (A059036 n : ℤ))).toNat

end

end A048601.P16676162706862144441

/-!
# A048602: Numerators of coefficients in function a(x) such that a(a(x)) = sin(x).

The programs for A048602, there is no canonical definition to state claims against.
-/

/-! ## A048602.P1662063620891649094

`A033999(n)*A048606(n)`
-/

namespace A048602.P1662063620891649094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A048606 n

end

end A048602.P1662063620891649094

/-! ## A048602.P8259505233479570380

`A048606(n)*A062157(n+1)`
-/

namespace A048602.P8259505233479570380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048606 n * A062157 (n + 1)

end

end A048602.P8259505233479570380

/-! ## A048602.P8995724486676742566

`Δ[A336835(3*(n+1))]*A048606(n)`
-/

namespace A048602.P8995724486676742566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048606 n

end

end A048602.P8995724486676742566

/-! ## A048602.P13567813343993788732

`A048606(n)/A033999(A008587(n))`
-/

namespace A048602.P13567813343993788732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048606 n : ℚ) / (A033999 (A008587 n).toNat : ℚ)

end

end A048602.P13567813343993788732

/-! ## A048602.P12217704959484185762

`A048606(n)/A033999(A008810(n))`
-/

namespace A048602.P12217704959484185762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048606 n : ℚ) / (A033999 (A008810 n).toNat : ℚ)

end

end A048602.P12217704959484185762

/-!
# A048604: Denominators of coefficients in function a(x) such that a(a(x)) = arctan(x).

The programs for A048604, there is no canonical definition to state claims against.
-/

/-! ## A048604.P1030894884046619909

`A000142(2*n+1)/A007913(A000246(n))`
-/

namespace A048604.P1030894884046619909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n + 1) : ℚ) / (A007913 (A000246 n).toNat : ℚ)

end

end A048604.P1030894884046619909

/-! ## A048604.P212220016910058411

`∏{d}[4^n, A000005(#)]/A093178(n)`
-/

namespace A048604.P212220016910058411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A000005 d : ℤ) : ℚ) / (A093178 n : ℚ)

end

end A048604.P212220016910058411

/-! ## A048604.P10532441023226438695

`∏{d}[4^n, A001222(#)+1]/A093178(n)`
-/

namespace A048604.P10532441023226438695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), (A001222 d + 1) : ℤ) : ℚ) / (A093178 n : ℚ)

end

end A048604.P10532441023226438695

/-! ## A048604.P8270398750281546626

`∏{d}[4^n, A000005(#)]/A007318(A128918(n+1))`
-/

namespace A048604.P8270398750281546626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A000005 d : ℤ) : ℚ) / (A007318 (A128918 (n + 1)).toNat : ℚ)

end

end A048604.P8270398750281546626

/-! ## A048604.P11035023282071265824

`∑{digits}[n, A000005(4^#)!]/A006530(A046212(n+1))`
-/

namespace A048604.P11035023282071265824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (A000005 (4 ^ x)).toNat).sum : ℕ) : ℚ) / (A006530 (A046212 (n + 1)).toNat : ℚ)

end

end A048604.P11035023282071265824

/-!
# A048605: Numerators of coefficients in function a(x) such that a(a(x)) = arctan(x).

The programs for A048605, there is no canonical definition to state claims against.
-/

/-! ## A048605.P12006190628731016795

`A095885(n)/A007913(A000272(n))`
-/

namespace A048605.P12006190628731016795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095885 n : ℚ) / (A007913 (A000272 n).toNat : ℚ)

end

end A048605.P12006190628731016795

/-! ## A048605.P10334050464437892144

`A095885(n)/A049586(A255132(n))`
-/

namespace A048605.P10334050464437892144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095885 n : ℚ) / (A049586 (A255132 n).toNat : ℚ)

end

end A048605.P10334050464437892144

/-!
# A048606: Numerators of coefficients in function a(x) such that a(a(x)) = sinh(x).

The programs for A048606, there is no canonical definition to state claims against.
-/

/-! ## A048606.P9256277528038508993

`A048602(n)/(-1)^n`
-/

namespace A048606.P9256277528038508993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048602 n : ℚ) / ((-1) ^ n : ℚ)

end

end A048606.P9256277528038508993

/-! ## A048606.P17512871984173793581

`A033999(n)*A048602(n)`
-/

namespace A048606.P17512871984173793581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A048602 n

end

end A048606.P17512871984173793581

/-! ## A048606.P5716587971263415714

`A048602(n)*A062157(n+1)`
-/

namespace A048606.P5716587971263415714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048602 n * A062157 (n + 1)

end

end A048606.P5716587971263415714

/-! ## A048606.P7402714102712633573

`A048602(n)*A105794(A000217(n))`
-/

namespace A048606.P7402714102712633573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048602 n * A105794 (A000217 n).toNat

end

end A048606.P7402714102712633573

/-! ## A048606.P6949973478807160736

`A048602(n)*A115660(A000079(n))`
-/

namespace A048606.P6949973478807160736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048602 n * A115660 (A000079 n).toNat

end

end A048606.P6949973478807160736

/-!
# A048607: Numerators of coefficients in function a(x) such that a(a(x)) = log(1+x).

The programs for A048607, there is no canonical definition to state claims against.
-/

/-! ## A048607.P4459846345323415630

`Δ[A327858(A254382(n)²)]`
-/

namespace A048607.P4459846345323415630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 (A254382 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048607.P4459846345323415630

/-!
# A048608: Denominators of coefficients in function a(x) such that a(a(x)) = log(1+x).

The programs for A048608, there is no canonical definition to state claims against.
-/

/-! ## A048608.P3309017835592034762

`A088440(A290659(∑[(n+1)/2^val(n+1, 2)]))`
-/

namespace A048608.P3309017835592034762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A290659 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A048608.P3309017835592034762

/-! ## A048608.P10401593117509057047

`A000010(2*n+1)*A000010(lcm((n+1)², a(n-1)))` with `a(0)=1`
-/

namespace A048608.P10401593117509057047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (2 * n + 1) * A000010 (Int.lcm ((n + 1) ^ 2 : ℤ) (a (n - 1)))

end

end A048608.P10401593117509057047

/-!
# A048610: Smallest number that is the sum of two positive squares in >= n ways.

The programs for A048610, there is no canonical definition to state claims against.
-/

/-! ## A048610.P694847556516465771

`A007511(∑[char[A060306(n+1)]])`
-/

namespace A048610.P694847556516465771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060306 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048610.P694847556516465771

/-! ## A048610.P19444479963128754

`A016032(A350786(n+1)%A003019(n+5))`
-/

namespace A048610.P19444479963128754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016032 (Int.tmod (A350786 (n + 1)) (A003019 (n + 5))).toNat

end

end A048610.P19444479963128754

/-! ## A048610.P14795732683116550823

`A016032(A157161(3*(n+1))%(A031436(n+3)+1)+1+n)`
-/

namespace A048610.P14795732683116550823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016032 (Int.tmod (A157161 (3 * (n + 1))) (A031436 (n + 3) + 1) + 1 + (n : ℤ)).toNat

end

end A048610.P14795732683116550823

/-!
# A048611: Find smallest pair (x,y) such that x^2 - y^2 = 11...1 (n times) = (10^n-1)/9; sequence gives value of x.

The programs for A048611, there is no canonical definition to state claims against.
-/

/-! ## A048611.P11720451271241947387

`sqrt(A273229(n+1)%A231604(n+1))`
-/

namespace A048611.P11720451271241947387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A273229 (n + 1)) (A231604 (n + 1)) : ℝ)

end

end A048611.P11720451271241947387

/-!
# A048612: Find smallest pair (x,y) such that x^2-y^2 = 11...1 (n times) = (10^n-1)/9; sequence gives value of y.

The programs for A048612, there is no canonical definition to state claims against.
-/

/-! ## A048612.P687950489204086235

`A174392(A225524(n))`
-/

namespace A048612.P687950489204086235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174392 (A225524 n).toNat

end

end A048612.P687950489204086235

/-!
# A048614: Number of primes between successive pairs of twin primes.

The programs for A048614, the canonical program `A048614.P8089396376325747707` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048614 has offset 1).

The definition of A048614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048614.P8089396376325747707

`A027833(C(2, n+1)+n+1)-2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048614

/-- `A027833(C(2, n+1)+n+1)-2` -/
def P8089396376325747707.Spec : Prop :=
  ∀ n, P8089396376325747707.a n = A048614 (n + 1)

theorem P8089396376325747707.correct : P8089396376325747707.Spec := by
  intro n
  simp only [A048614, Nat.add_sub_cancel]

end A048614

/-! ## A048614.P297345722809632865

`A289207(A027833(n+1))`
-/

namespace A048614.P297345722809632865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A027833 (n + 1)).toNat

end

end A048614.P297345722809632865

namespace A048614

/-- `A289207(A027833(n+1))` -/
def P297345722809632865.Spec : Prop :=
  ∀ n, P297345722809632865.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P18331019167919122104

`A289207(Δ[A029707(n+1)])`
-/

namespace A048614.P18331019167919122104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (f1 (n + 1) - f1 n).toNat

end

end A048614.P18331019167919122104

namespace A048614

/-- `A289207(Δ[A029707(n+1)])` -/
def P18331019167919122104.Spec : Prop :=
  ∀ n, P18331019167919122104.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P2765631400052310051

`A027833(A028310(n)+1)-2`
-/

namespace A048614.P2765631400052310051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (A028310 n + 1).toNat - 2

end

end A048614.P2765631400052310051

namespace A048614

/-- `A027833(A028310(n)+1)-2` -/
def P2765631400052310051.Spec : Prop :=
  ∀ n, P2765631400052310051.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P8502291839199454677

`Δ[A029707(n+1)-A004277(n)]`
-/

namespace A048614.P8502291839199454677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048614.P8502291839199454677

namespace A048614

/-- `Δ[A029707(n+1)-A004277(n)]` -/
def P8502291839199454677.Spec : Prop :=
  ∀ n, P8502291839199454677.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P14385331468165812614

`A204099(n+1)-A204136(n+1)`
-/

namespace A048614.P14385331468165812614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1) - A204136 (n + 1)

end

end A048614.P14385331468165812614

namespace A048614

/-- `A204099(n+1)-A204136(n+1)` -/
def P14385331468165812614.Spec : Prop :=
  ∀ n, P14385331468165812614.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P8107083506755117519

`A027833(n+1)+A000007(n)-2`
-/

namespace A048614.P8107083506755117519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1) + (A000007 n - 2)

end

end A048614.P8107083506755117519

namespace A048614

/-- `A027833(n+1)+A000007(n)-2` -/
def P8107083506755117519.Spec : Prop :=
  ∀ n, P8107083506755117519.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P11611359265696528960

`(A027833(n+1)-2)%∑[A305903(n+1)]`
-/

namespace A048614.P11611359265696528960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027833 (n + 1) - 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048614.P11611359265696528960

namespace A048614

/-- `(A027833(n+1)-2)%∑[A305903(n+1)]` -/
def P11611359265696528960.Spec : Prop :=
  ∀ n, P11611359265696528960.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P6966445043842323862

`A027833(n+1)-A020639(A001223(n+1))`
-/

namespace A048614.P6966445043842323862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1) - A020639 (A001223 (n + 1)).toNat

end

end A048614.P6966445043842323862

namespace A048614

/-- `A027833(n+1)-A020639(A001223(n+1))` -/
def P6966445043842323862.Spec : Prop :=
  ∀ n, P6966445043842323862.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P11627918561563303481

`A078731(n+1)-A168433(n+1)-A168433(n+1)`
-/

namespace A048614.P11627918561563303481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078731 (n + 1) - A168433 (n + 1) - A168433 (n + 1)

end

end A048614.P11627918561563303481

namespace A048614

/-- `A078731(n+1)-A168433(n+1)-A168433(n+1)` -/
def P11627918561563303481.Spec : Prop :=
  ∀ n, P11627918561563303481.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P11112094758882975728

`(A242767(n+3)-2)%(n+1)`
-/

namespace A048614.P11112094758882975728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242767 (n + 3) - 2) (n + 1 : ℤ)

end

end A048614.P11112094758882975728

namespace A048614

/-- `(A242767(n+3)-2)%(n+1)` -/
def P11112094758882975728.Spec : Prop :=
  ∀ n, P11112094758882975728.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P10290715547181777222

`A289207(A242767(n+3))`
-/

namespace A048614.P10290715547181777222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A242767 (n + 3)).toNat

end

end A048614.P10290715547181777222

namespace A048614

/-- `A289207(A242767(n+3))` -/
def P10290715547181777222.Spec : Prop :=
  ∀ n, P10290715547181777222.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P11853770725821560545

`A028310(Δ[eq[2, A001223(n+1)]]-1)-1`
-/

namespace A048614.P11853770725821560545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat - 1

end

end A048614.P11853770725821560545

namespace A048614

/-- `A028310(Δ[eq[2, A001223(n+1)]]-1)-1` -/
def P11853770725821560545.Spec : Prop :=
  ∀ n, P11853770725821560545.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P7429237997214913480

`A155752(n+2)-A334142(2*n+1)`
-/

namespace A048614.P7429237997214913480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 2) - A334142 (2 * n + 1)

end

end A048614.P7429237997214913480

namespace A048614

/-- `A155752(n+2)-A334142(2*n+1)` -/
def P7429237997214913480.Spec : Prop :=
  ∀ n, P7429237997214913480.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P15913395058960596205

`A334142(2*(n+1))-(A334142(2*n+1)+1)`
-/

namespace A048614.P15913395058960596205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - (A334142 (2 * n + 1) + 1)

end

end A048614.P15913395058960596205

namespace A048614

/-- `A334142(2*(n+1))-(A334142(2*n+1)+1)` -/
def P15913395058960596205.Spec : Prop :=
  ∀ n, P15913395058960596205.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P3476107852898780958

`Δ[A334142(2*n+1)]-2`
-/

namespace A048614.P3476107852898780958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A048614.P3476107852898780958

namespace A048614

/-- `Δ[A334142(2*n+1)]-2` -/
def P3476107852898780958.Spec : Prop :=
  ∀ n, P3476107852898780958.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P15963573941182202733

`Δ[A000720(A001097(2*n+1))]-2`
-/

namespace A048614.P15963573941182202733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001097 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A048614.P15963573941182202733

namespace A048614

/-- `Δ[A000720(A001097(2*n+1))]-2` -/
def P15963573941182202733.Spec : Prop :=
  ∀ n, P15963573941182202733.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P13884888563661445955

`A242768(A029707(n+1)+2)-2`
-/

namespace A048614.P13884888563661445955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242768 (A029707 (n + 1) + 2).toNat - 2

end

end A048614.P13884888563661445955

namespace A048614

/-- `A242768(A029707(n+1)+2)-2` -/
def P13884888563661445955.Spec : Prop :=
  ∀ n, P13884888563661445955.a n = A048614 (n + 1)

end A048614

/-! ## A048614.P6865012283536413242

`A254078(n+2)%A027833(n+1)`
-/

namespace A048614.P6865012283536413242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A027833 (n + 1))

end

end A048614.P6865012283536413242

namespace A048614

/-- `A254078(n+2)%A027833(n+1)` -/
def P6865012283536413242.Spec : Prop :=
  ∀ n, P6865012283536413242.a n = A048614 (n + 1)

end A048614

/-!
# A048615: Numerator of mass (Sum 1/|Aut(H)|) of Hadamard matrices of order 4n.

The programs for A048615, there is no canonical definition to state claims against.
-/

/-! ## A048615.P12091008353201340970

`511^a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=27, a(4)=127`
-/

namespace A048615.P12091008353201340970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 27, 127] fun n a =>
  511 ^ a (n - 1)

end

end A048615.P12091008353201340970

/-!
# A048617: a(n) = 2*(n!)^2.

The programs for A048617, the canonical program `A048617.P15117929929345730704` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048617 has offset 0).

The definition of A048617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!²` (program `A048617.P15117929929345730704`, by `A048617.P15117929929345730704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048617.P15117929929345730704

`2*n!²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048617

/-- `2*n!²` -/
def P15117929929345730704.Spec : Prop :=
  ∀ n, (P15117929929345730704.a n : ℤ) = A048617 n

theorem P15117929929345730704.correct : P15117929929345730704.Spec := by
  intro n
  simp only [A048617]

end A048617

/-! ## A048617.P14339764172903564761

`2*A001044(n)`
-/

namespace A048617.P14339764172903564761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001044 n

end

end A048617.P14339764172903564761

namespace A048617

/-- `2*A001044(n)` -/
def P14339764172903564761.Spec : Prop :=
  ∀ n, P14339764172903564761.a n = A048617 n

end A048617

/-! ## A048617.P17639852623940118203

`2*n!^2`
-/

namespace A048617.P17639852623940118203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n ^ 2

end

end A048617.P17639852623940118203

namespace A048617

/-- `2*n!^2` -/
def P17639852623940118203.Spec : Prop :=
  ∀ n, (P17639852623940118203.a n : ℤ) = A048617 n

theorem P17639852623940118203.correct : P17639852623940118203.Spec := by
  intro n
  simp only [A048617, Nat.add_sub_cancel, A048617.P17639852623940118203.a, A048617.P15117929929345730704.a, SequenceMachineLib.memo_apply]

end A048617

/-! ## A048617.P11089872873995275753

`2*n!*n!`
-/

namespace A048617.P11089872873995275753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.factorial n * Nat.factorial n)

end

end A048617.P11089872873995275753

namespace A048617

/-- `2*n!*n!` -/
def P11089872873995275753.Spec : Prop :=
  ∀ n, (P11089872873995275753.a n : ℤ) = A048617 n

theorem P11089872873995275753.correct : P11089872873995275753.Spec := by
  intro n
  simp only [A048617, Nat.add_sub_cancel, A048617.P11089872873995275753.a, A048617.P15117929929345730704.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048617

/-! ## A048617.P8112082585100593167

`(n!/cos(atan(1)))²`
-/

namespace A048617.P8112082585100593167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℝ) / Real.cos (Real.arctan (1 : ℝ))) ^ 2

end

end A048617.P8112082585100593167

namespace A048617

/-- `(n!/cos(atan(1)))²` -/
def P8112082585100593167.Spec : Prop :=
  ∀ n, P8112082585100593167.a n = (A048617 n : ℝ)

end A048617

/-!
# A048618: Even numbers n such that binomial(n,n/2) is divisible by n/2.

The programs for A048618, there is no canonical definition to state claims against.
-/

/-! ## A048618.P10340183123398209383

`2*A014847(n+1)`
-/

namespace A048618.P10340183123398209383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014847 (n + 1)

end

end A048618.P10340183123398209383

/-! ## A048618.P7946130451735882741

`2*(A004782(n+1)-1)`
-/

namespace A048618.P7946130451735882741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004782 (n + 1) - 1)

end

end A048618.P7946130451735882741

/-! ## A048618.P11966326706368564210

`A004782(n+1)+A014847(n+1)-1`
-/

namespace A048618.P11966326706368564210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004782 (n + 1) + (A014847 (n + 1) - 1)

end

end A048618.P11966326706368564210

/-! ## A048618.P9399102981591521718

`A014847(n+1)+A014847(n%(n+1)+1)`
-/

namespace A048618.P9399102981591521718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (n + 1) + A014847 (n % (n + 1) + 1)

end

end A048618.P9399102981591521718

/-! ## A048618.P11311898984303617382

`A014847(A000027(n+1))+A014847(n+1)`
-/

namespace A048618.P11311898984303617382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (A000027 (n + 1)).toNat + A014847 (n + 1)

end

end A048618.P11311898984303617382

/-! ## A048618.P14296191500984116504

`A014847(n+1)+A014847(A020725(n+1)-1)`
-/

namespace A048618.P14296191500984116504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (n + 1) + A014847 (A020725 (n + 1) - 1).toNat

end

end A048618.P14296191500984116504

/-! ## A048618.P5898153618017344532

`A014847(n+1)+A014847(A023443(n+2))`
-/

namespace A048618.P5898153618017344532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (n + 1) + A014847 (A023443 (n + 2)).toNat

end

end A048618.P5898153618017344532

/-! ## A048618.P17867895262934498313

`2*record[(n+1)/A093527(n)]`
-/

namespace A048618.P17867895262934498313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A093527 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048618.P17867895262934498313

/-! ## A048618.P6632089989905201244

`record[2*A071416(n+1)]`
-/

namespace A048618.P6632089989905201244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048618.P6632089989905201244

/-! ## A048618.P9322549503870678696

`record[2*gcd(n, A053214(n))]`
-/

namespace A048618.P9322549503870678696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (n : ℤ) (A053214 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048618.P9322549503870678696

/-! ## A048618.P16923461516171394590

`record[(2-A059288(n+1))*(n+1)]`
-/

namespace A048618.P16923461516171394590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059288 (n + 1)) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048618.P16923461516171394590

/-! ## A048618.P9116464893873686817

`A004275(A004782(n+1))`
-/

namespace A048618.P9116464893873686817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004782 (n + 1)).toNat

end

end A048618.P9116464893873686817

/-! ## A048618.P5942221259061342447

`A004277(A014847(n+1))`
-/

namespace A048618.P5942221259061342447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A014847 (n + 1)).toNat

end

end A048618.P5942221259061342447

/-! ## A048618.P17298581853700161940

`A005843(record[A071416(n+1)])`
-/

namespace A048618.P17298581853700161940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048618.P17298581853700161940

/-! ## A048618.P8523603729843704102

`A023443(A004782(n+1)-1)+A004782(n+1)`
-/

namespace A048618.P8523603729843704102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004782 (n + 1) - 1).toNat + A004782 (n + 1)

end

end A048618.P8523603729843704102

/-!
# A048619: a(n) = LCM(binomial(n,0), ..., binomial(n,n)) / binomial(n,floor(n/2)).

The programs for A048619, the canonical program `A048619.P16767299098900104543` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048619 has offset 0).

The definition of A048619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048619.P16767299098900104543

`A180000(n+1)/A152271(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048619

/-- `A180000(n+1)/A152271(n)` -/
def P16767299098900104543.Spec : Prop :=
  ∀ n, P16767299098900104543.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P2264634293861485669

`A263673(n+1)/A110654(n+1)`
-/

namespace A048619.P2264634293861485669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 (n + 1) : ℚ) / (A110654 (n + 1) : ℚ)

end

end A048619.P2264634293861485669

namespace A048619

/-- `A263673(n+1)/A110654(n+1)` -/
def P2264634293861485669.Spec : Prop :=
  ∀ n, P2264634293861485669.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P12810779947185073166

`A002944(n+1)/A001405(n)`
-/

namespace A048619.P12810779947185073166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A001405 n : ℚ)

end

end A048619.P12810779947185073166

namespace A048619

/-- `A002944(n+1)/A001405(n)` -/
def P12810779947185073166.Spec : Prop :=
  ∀ n, P12810779947185073166.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P4362461331162418578

`A003418(n+1)/A100071(n+1)`
-/

namespace A048619.P4362461331162418578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A100071 (n + 1) : ℚ)

end

end A048619.P4362461331162418578

namespace A048619

/-- `A003418(n+1)/A100071(n+1)` -/
def P4362461331162418578.Spec : Prop :=
  ∀ n, P4362461331162418578.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P14459167533750832536

`∏[A065033(n)/A048671(n+1)]`
-/

namespace A048619.P14459167533750832536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A048671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048619.P14459167533750832536

namespace A048619

/-- `∏[A065033(n)/A048671(n+1)]` -/
def P14459167533750832536.Spec : Prop :=
  ∀ n, P14459167533750832536.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P15819466321469495771

`A180000(n+1)/gcd(n+1, A001057(n+1))`
-/

namespace A048619.P15819466321469495771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A001057 (n + 1)) : ℚ)

end

end A048619.P15819466321469495771

namespace A048619

/-- `A180000(n+1)/gcd(n+1, A001057(n+1))` -/
def P15819466321469495771.Spec : Prop :=
  ∀ n, P15819466321469495771.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P16665789861378905677

`A180000(n+1)/A003602(A093178(n))`
-/

namespace A048619.P16665789861378905677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (A003602 (A093178 n).toNat : ℚ)

end

end A048619.P16665789861378905677

namespace A048619

/-- `A180000(n+1)/A003602(A093178(n))` -/
def P16665789861378905677.Spec : Prop :=
  ∀ n, P16665789861378905677.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P2909150011553464213

`A263673(n)/A048671(n+1)`
-/

namespace A048619.P2909150011553464213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 n : ℚ) / (A048671 (n + 1) : ℚ)

end

end A048619.P2909150011553464213

namespace A048619

/-- `A263673(n)/A048671(n+1)` -/
def P2909150011553464213.Spec : Prop :=
  ∀ n, P2909150011553464213.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P2236618231742193699

`A263673(n+1)/A008619(n)`
-/

namespace A048619.P2236618231742193699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 (n + 1) : ℚ) / (A008619 n : ℚ)

end

end A048619.P2236618231742193699

namespace A048619

/-- `A263673(n+1)/A008619(n)` -/
def P2236618231742193699.Spec : Prop :=
  ∀ n, P2236618231742193699.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P6961457149533732526

`A263673(n+1)/A065033(n+1)`
-/

namespace A048619.P6961457149533732526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 (n + 1) : ℚ) / (A065033 (n + 1) : ℚ)

end

end A048619.P6961457149533732526

namespace A048619

/-- `A263673(n+1)/A065033(n+1)` -/
def P6961457149533732526.Spec : Prop :=
  ∀ n, P6961457149533732526.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P12305307449246292394

`A263673(n+1)/A123108(n+2)`
-/

namespace A048619.P12305307449246292394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 (n + 1) : ℚ) / (A123108 (n + 2) : ℚ)

end

end A048619.P12305307449246292394

namespace A048619

/-- `A263673(n+1)/A123108(n+2)` -/
def P12305307449246292394.Spec : Prop :=
  ∀ n, P12305307449246292394.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P13357061222579178100

`A263673(n+1)/A110655(2*(n+1))`
-/

namespace A048619.P13357061222579178100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 (n + 1) : ℚ) / (A110655 (2 * (n + 1)) : ℚ)

end

end A048619.P13357061222579178100

namespace A048619

/-- `A263673(n+1)/A110655(2*(n+1))` -/
def P13357061222579178100.Spec : Prop :=
  ∀ n, P13357061222579178100.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P1611528044570415063

`A263673(n+1)/(A152271(n+1)*A152271(n))`
-/

namespace A048619.P1611528044570415063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263673 (n + 1) : ℚ) / (A152271 (n + 1) * A152271 n : ℚ)

end

end A048619.P1611528044570415063

namespace A048619

/-- `A263673(n+1)/(A152271(n+1)*A152271(n))` -/
def P1611528044570415063.Spec : Prop :=
  ∀ n, P1611528044570415063.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P16194952353439313482

`A180000(n+1)*A180000(n)/A263673(n)`
-/

namespace A048619.P16194952353439313482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) * A180000 n : ℚ) / (A263673 n : ℚ)

end

end A048619.P16194952353439313482

namespace A048619

/-- `A180000(n+1)*A180000(n)/A263673(n)` -/
def P16194952353439313482.Spec : Prop :=
  ∀ n, P16194952353439313482.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P3839398697610731963

`A180000(n+1)/A056040(n)*A001405(n)`
-/

namespace A048619.P3839398697610731963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (A056040 n : ℚ) * (A001405 n : ℚ)

end

end A048619.P3839398697610731963

namespace A048619

/-- `A180000(n+1)/A056040(n)*A001405(n)` -/
def P3839398697610731963.Spec : Prop :=
  ∀ n, P3839398697610731963.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P3295184197324571053

`A003418(n+1)/(A001405(n+1)*A110654(n+1))`
-/

namespace A048619.P3295184197324571053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A001405 (n + 1) * A110654 (n + 1) : ℚ)

end

end A048619.P3295184197324571053

namespace A048619

/-- `A003418(n+1)/(A001405(n+1)*A110654(n+1))` -/
def P3295184197324571053.Spec : Prop :=
  ∀ n, P3295184197324571053.a n = (A048619 n : ℚ)

end A048619

/-! ## A048619.P8884843259482980684

`A180000(n+1)/A081123(n+1)*A081123(n)`
-/

namespace A048619.P8884843259482980684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ) * (A081123 n : ℚ)

end

end A048619.P8884843259482980684

namespace A048619

/-- `A180000(n+1)/A081123(n+1)*A081123(n)` -/
def P8884843259482980684.Spec : Prop :=
  ∀ n, P8884843259482980684.a n = (A048619 n : ℚ)

end A048619

/-!
# A048620: a(n) is the maximal value of Omega(binomial(n,k)) over k, where Omega = A001222.

The programs for A048620, there is no canonical definition to state claims against.
-/

/-! ## A048620.P14403005849217356530

`A048622(n+1)+A048621(n+1)`
-/

namespace A048620.P14403005849217356530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048622 (n + 1) + A048621 (n + 1)

end

end A048620.P14403005849217356530

/-! ## A048620.P17382809873088923098

`A132896(Δ[n²]+ceil(n²/2))+A048622(n+1)`
-/

namespace A048620.P17382809873088923098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌈(n ^ 2 : ℚ) / 2⌉).toNat + A048622 (n + 1)

end

end A048620.P17382809873088923098

/-! ## A048620.P14605211830835289265

`∑{e}[A007318(∑[A079882(n)+n]), #]`
-/

namespace A048620.P14605211830835289265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A048620.P14605211830835289265

/-! ## A048620.P7086366106074775773

`∑{e}[A007318(A079945(n)+A000217(n)), #]`
-/

namespace A048620.P7086366106074775773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A079945 n + A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A048620.P7086366106074775773

/-! ## A048620.P8145816250995202931

`A001222(C(n+1, A162751(n+1)))`
-/

namespace A048620.P8145816250995202931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (n + 1) (A162751 (n + 1)).toNat)

end

end A048620.P8145816250995202931

/-!
# A048621: a(n) = A001222(A001405(n)).

The programs for A048621, the canonical program `A048621.P4771218726713487523` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048621 has offset 1).

The definition of A048621 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048621.P4771218726713487523

`A001222(A001405(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A048621

/-- `A001222(A001405(n+1))` -/
def P4771218726713487523.Spec : Prop :=
  ∀ n, P4771218726713487523.a n = A048621 (n + 1)

theorem P4771218726713487523.correct : P4771218726713487523.Spec := by
  intro n
  simp only [A048621, Nat.add_sub_cancel]

end A048621

/-! ## A048621.P16106764121206962757

`∑[A001222(n+1)-A001222(∑[(n+1)%2])]`
-/

namespace A048621.P16106764121206962757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048621.P16106764121206962757

namespace A048621

/-- `∑[A001222(n+1)-A001222(∑[(n+1)%2])]` -/
def P16106764121206962757.Spec : Prop :=
  ∀ n, P16106764121206962757.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P5912114245078392673

`∑[A001222(n+1)-A001222(A008619(n))]`
-/

namespace A048621.P5912114245078392673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048621.P5912114245078392673

namespace A048621

/-- `∑[A001222(n+1)-A001222(A008619(n))]` -/
def P5912114245078392673.Spec : Prop :=
  ∀ n, P5912114245078392673.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P14429167963918198446

`∑[A001222(n+1)-A001222(A004526(n)+1)]`
-/

namespace A048621.P14429167963918198446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048621.P14429167963918198446

namespace A048621

/-- `∑[A001222(n+1)-A001222(A004526(n)+1)]` -/
def P14429167963918198446.Spec : Prop :=
  ∀ n, P14429167963918198446.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P498747742522205698

`∑[A001222(n+1)-A001222(A065033(n+1))]`
-/

namespace A048621.P498747742522205698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A065033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048621.P498747742522205698

namespace A048621

/-- `∑[A001222(n+1)-A001222(A065033(n+1))]` -/
def P498747742522205698.Spec : Prop :=
  ∀ n, P498747742522205698.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P921109594489538859

`∑[A001222(n+1)-A001222(A110654(n+1))]`
-/

namespace A048621.P921109594489538859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A110654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048621.P921109594489538859

namespace A048621

/-- `∑[A001222(n+1)-A001222(A110654(n+1))]` -/
def P921109594489538859.Spec : Prop :=
  ∀ n, P921109594489538859.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P17923912620846753382

`A048620(n+1)-A048622(n+1)`
-/

namespace A048621.P17923912620846753382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (n + 1) - A048622 (n + 1)

end

end A048621.P17923912620846753382

namespace A048621

/-- `A048620(n+1)-A048622(n+1)` -/
def P17923912620846753382.Spec : Prop :=
  ∀ n, P17923912620846753382.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P13193913329038621504

`A132896(A074148(n+1))`
-/

namespace A048621.P13193913329038621504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A074148 (n + 1)).toNat

end

end A048621.P13193913329038621504

namespace A048621

/-- `A132896(A074148(n+1))` -/
def P13193913329038621504.Spec : Prop :=
  ∀ n, P13193913329038621504.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P447784734474530590

`A132896(A194274(n+1))`
-/

namespace A048621.P447784734474530590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A194274 (n + 1)).toNat

end

end A048621.P447784734474530590

namespace A048621

/-- `A132896(A194274(n+1))` -/
def P447784734474530590.Spec : Prop :=
  ∀ n, P447784734474530590.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P18080914090879301639

`A132896(A007590(n+2))`
-/

namespace A048621.P18080914090879301639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A007590 (n + 2)).toNat

end

end A048621.P18080914090879301639

namespace A048621

/-- `A132896(A007590(n+2))` -/
def P18080914090879301639.Spec : Prop :=
  ∀ n, P18080914090879301639.a n = A048621 (n + 1)

end A048621

/-! ## A048621.P271161165686193116

`A132896(A080476(n+2))`
-/

namespace A048621.P271161165686193116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A080476 (n + 2)).toNat

end

end A048621.P271161165686193116

namespace A048621

/-- `A132896(A080476(n+2))` -/
def P271161165686193116.Spec : Prop :=
  ∀ n, P271161165686193116.a n = A048621 (n + 1)

end A048621

/-!
# A048622: Difference of maximal and central values of A001222 when applied to {C(n,k)} set.

The programs for A048622, there is no canonical definition to state claims against.
-/

/-! ## A048622.P708759569720191322

`A048620(n+1)-A048621(n+1)`
-/

namespace A048622.P708759569720191322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (n + 1) - A048621 (n + 1)

end

end A048622.P708759569720191322

/-! ## A048622.P13395634261618954554

`A048620(n+1)+A048621(n+1)*A057428(n)`
-/

namespace A048622.P13395634261618954554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (n + 1) + A048621 (n + 1) * A057428 n

end

end A048622.P13395634261618954554

/-! ## A048622.P7549278581867087157

`A048620(n+1)-A132896(A074148(n+1))`
-/

namespace A048622.P7549278581867087157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (n + 1) - A132896 (A074148 (n + 1)).toNat

end

end A048622.P7549278581867087157

/-! ## A048622.P1226815721982184847

`A048620(n+1)-A132896(A194274(n+1))`
-/

namespace A048622.P1226815721982184847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (n + 1) - A132896 (A194274 (n + 1)).toNat

end

end A048622.P1226815721982184847

/-! ## A048622.P3771173038037725258

`A048620(n+1)-A132896(A007590(n+2))`
-/

namespace A048622.P3771173038037725258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (n + 1) - A132896 (A007590 (n + 2)).toNat

end

end A048622.P3771173038037725258

/-! ## A048622.P5667755896536182802

`A048620(n+1)-A132896(A080476(n+2))`
-/

namespace A048622.P5667755896536182802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (n + 1) - A132896 (A080476 (n + 2)).toNat

end

end A048622.P5667755896536182802

/-!
# A048623: Binary encoding of semiprimes (A001358).

The programs for A048623, the canonical program `A048623.P8320924249129690389` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048623 has offset 1).

The definition of A048623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048623.P1936630353886363058

`∑{d}[A001358(n+1), A156552(A014963(#))]`
-/

namespace A048623.P1936630353886363058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A156552 (A014963 d).toNat

end

end A048623.P1936630353886363058

namespace A048623

/-- `∑{d}[A001358(n+1), A156552(A014963(#))]` -/
def P1936630353886363058.Spec : Prop :=
  ∀ n, P1936630353886363058.a n = A048623 (n + 1)

end A048623

/-! ## A048623.P15952386586716999572

`A304735(A140570(n+1))`
-/

namespace A048623.P15952386586716999572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304735 (A140570 (n + 1)).toNat

end

end A048623.P15952386586716999572

namespace A048623

/-- `A304735(A140570(n+1))` -/
def P15952386586716999572.Spec : Prop :=
  ∀ n, P15952386586716999572.a n = A048623 (n + 1)

end A048623

/-! ## A048623.P8320924249129690389

`A048675(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A048623

/-- `A048675(A001358(n+1))` -/
def P8320924249129690389.Spec : Prop :=
  ∀ n, P8320924249129690389.a n = A048623 (n + 1)

theorem P8320924249129690389.correct : P8320924249129690389.Spec := by
  intro n
  simp only [A048623, Nat.add_sub_cancel]

end A048623

/-! ## A048623.P13767696578827894424

`A048675(A176540(n+2))`
-/

namespace A048623.P13767696578827894424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A176540 (n + 2)).toNat

end

end A048623.P13767696578827894424

namespace A048623

/-- `A048675(A176540(n+2))` -/
def P13767696578827894424.Spec : Prop :=
  ∀ n, P13767696578827894424.a n = A048623 (n + 1)

end A048623

/-! ## A048623.P1060975743152219746

`A048675(eq[2, A105700(n)])`
-/

namespace A048623.P1060975743152219746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048623.P1060975743152219746

namespace A048623

/-- `A048675(eq[2, A105700(n)])` -/
def P1060975743152219746.Spec : Prop :=
  ∀ n, P1060975743152219746.a n = A048623 (n + 1)

end A048623

/-! ## A048623.P2508735588730586164

`A048675(A186621(n+1)+1)`
-/

namespace A048623.P2508735588730586164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A186621 (n + 1) + 1).toNat

end

end A048623.P2508735588730586164

namespace A048623

/-- `A048675(A186621(n+1)+1)` -/
def P2508735588730586164.Spec : Prop :=
  ∀ n, P2508735588730586164.a n = A048623 (n + 1)

end A048623

/-! ## A048623.P17281300312285445135

`A048675(A088707(n+1)-1)`
-/

namespace A048623.P17281300312285445135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A088707 (n + 1) - 1).toNat

end

end A048623.P17281300312285445135

namespace A048623

/-- `A048675(A088707(n+1)-1)` -/
def P17281300312285445135.Spec : Prop :=
  ∀ n, P17281300312285445135.a n = A048623 (n + 1)

end A048623

/-! ## A048623.P4435669905567667058

`A048675(eq[2, A001222(n+1)]+1)`
-/

namespace A048623.P4435669905567667058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A048623.P4435669905567667058

namespace A048623

/-- `A048675(eq[2, A001222(n+1)]+1)` -/
def P4435669905567667058.Spec : Prop :=
  ∀ n, P4435669905567667058.a n = A048623 (n + 1)

end A048623

/-! ## A048623.P6311435058843748001

`A048676(A001358(2*n+1-n))`
-/

namespace A048623.P6311435058843748001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (A001358 (2 * n + 1 - n)).toNat

end

end A048623.P6311435058843748001

namespace A048623

/-- `A048676(A001358(2*n+1-n))` -/
def P6311435058843748001.Spec : Prop :=
  ∀ n, P6311435058843748001.a n = A048623 (n + 1)

end A048623

/-! ## A048623.P11477438215893861084

`A048675(eq[A001221(n+1)+2, A000005(n+1)]+1)`
-/

namespace A048623.P11477438215893861084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A048623.P11477438215893861084

namespace A048623

/-- `A048675(eq[A001221(n+1)+2, A000005(n+1)]+1)` -/
def P11477438215893861084.Spec : Prop :=
  ∀ n, P11477438215893861084.a n = A048623 (n + 1)

end A048623

/-!
# A048625: Pisot sequence P(4,6).

The programs for A048625, the canonical program `A048625.P4891212532977413926` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048625 has offset 0).

The definition of A048625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048625.P4891212532977413926

`a(n-1)+a(n-3)` with `a(0)=4, a(1)=6, a(2)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048625

/-- `a(n-1)+a(n-3)` -/
def P4891212532977413926.Spec : Prop :=
  ∀ n, (P4891212532977413926.a n : ℤ) = A048625 n

theorem P4891212532977413926.correct : P4891212532977413926.Spec := by
  intro n
  simp only [A048625]

end A048625

/-! ## A048625.P16356573813489765410

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=4, a(1)=6`
-/

namespace A048625.P16356573813489765410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A048625.P16356573813489765410

namespace A048625

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P16356573813489765410.Spec : Prop :=
  ∀ n, P16356573813489765410.a n = A048625 n

end A048625

/-! ## A048625.P11725285610634348574

`ogf((4+2x+3x^2)/(1-x-x^3))`
-/

namespace A048625.P11725285610634348574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 3] [1, -1, 0, -1] n

end

end A048625.P11725285610634348574

namespace A048625

/-- `ogf((4+2x+3x^2)/(1-x-x^3))` -/
def P11725285610634348574.Spec : Prop :=
  ∀ n, P11725285610634348574.a n = A048625 n

end A048625

/-! ## A048625.P1662002862636011253

`A020745(n)+1`
-/

namespace A048625.P1662002862636011253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n + 1

end

end A048625.P1662002862636011253

namespace A048625

/-- `A020745(n)+1` -/
def P1662002862636011253.Spec : Prop :=
  ∀ n, P1662002862636011253.a n = A048625 n

end A048625

/-! ## A048625.P11009415286961860514

`A020711(n)-1`
-/

namespace A048625.P11009415286961860514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 n - 1

end

end A048625.P11009415286961860514

namespace A048625

/-- `A020711(n)-1` -/
def P11009415286961860514.Spec : Prop :=
  ∀ n, P11009415286961860514.a n = A048625 n

end A048625

/-! ## A048625.P10004210019119058500

`A048589(n)-3`
-/

namespace A048625.P10004210019119058500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 n - 3

end

end A048625.P10004210019119058500

namespace A048625

/-- `A048589(n)-3` -/
def P10004210019119058500.Spec : Prop :=
  ∀ n, P10004210019119058500.a n = A048625 n

end A048625

/-! ## A048625.P5982890135128618942

`A068921(n+4)`
-/

namespace A048625.P5982890135128618942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 4)

end

end A048625.P5982890135128618942

namespace A048625

/-- `A068921(n+4)` -/
def P5982890135128618942.Spec : Prop :=
  ∀ n, P5982890135128618942.a n = A048625 n

end A048625

/-! ## A048625.P11655303814978749149

`A000930(n+5)`
-/

namespace A048625.P11655303814978749149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 5)

end

end A048625.P11655303814978749149

namespace A048625

/-- `A000930(n+5)` -/
def P11655303814978749149.Spec : Prop :=
  ∀ n, P11655303814978749149.a n = A048625 n

end A048625

/-! ## A048625.P16944101230178229647

`A048591(n)-4`
-/

namespace A048625.P16944101230178229647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 n - 4

end

end A048625.P16944101230178229647

namespace A048625

/-- `A048591(n)-4` -/
def P16944101230178229647.Spec : Prop :=
  ∀ n, P16944101230178229647.a n = A048625 n

end A048625

/-! ## A048625.P294230706757574363

`A078012(n+8)`
-/

namespace A048625.P294230706757574363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 8)

end

end A048625.P294230706757574363

namespace A048625

/-- `A078012(n+8)` -/
def P294230706757574363.Spec : Prop :=
  ∀ n, P294230706757574363.a n = A048625 n

end A048625

/-! ## A048625.P1315752135758444686

`A135851(n+10)`
-/

namespace A048625.P1315752135758444686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 10)

end

end A048625.P1315752135758444686

namespace A048625

/-- `A135851(n+10)` -/
def P1315752135758444686.Spec : Prop :=
  ∀ n, P1315752135758444686.a n = A048625 n

end A048625

/-! ## A048625.P2680687345520706927

`A077868(n+2)+1`
-/

namespace A048625.P2680687345520706927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 2) + 1

end

end A048625.P2680687345520706927

namespace A048625

/-- `A077868(n+2)+1` -/
def P2680687345520706927.Spec : Prop :=
  ∀ n, P2680687345520706927.a n = A048625 n

end A048625

/-! ## A048625.P15314818093035773754

`A048585(n+1)-3`
-/

namespace A048625.P15314818093035773754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 1) - 3

end

end A048625.P15314818093035773754

namespace A048625

/-- `A048585(n+1)-3` -/
def P15314818093035773754.Spec : Prop :=
  ∀ n, P15314818093035773754.a n = A048625 n

end A048625

/-! ## A048625.P13888610410990343864

`A048588(n+1)-4`
-/

namespace A048625.P13888610410990343864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 1) - 4

end

end A048625.P13888610410990343864

namespace A048625

/-- `A048588(n+1)-4` -/
def P13888610410990343864.Spec : Prop :=
  ∀ n, P13888610410990343864.a n = A048625 n

end A048625

/-! ## A048625.P7965895159729092068

`∑[A019527(n+1)-2]+2`
-/

namespace A048625.P7965895159729092068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019527 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A048625.P7965895159729092068

namespace A048625

/-- `∑[A019527(n+1)-2]+2` -/
def P7965895159729092068.Spec : Prop :=
  ∀ n, P7965895159729092068.a n = A048625 n

end A048625

/-! ## A048625.P7973416988807358535

`A108104(A020744(n+1))`
-/

namespace A048625.P7973416988807358535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A020744 (n + 1)).toNat

end

end A048625.P7973416988807358535

namespace A048625

/-- `A108104(A020744(n+1))` -/
def P7973416988807358535.Spec : Prop :=
  ∀ n, P7973416988807358535.a n = A048625 n

end A048625

/-! ## A048625.P8221237368363626476

`A020749(n)-A077868(n)`
-/

namespace A048625.P8221237368363626476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 n - A077868 n

end

end A048625.P8221237368363626476

namespace A048625

/-- `A020749(n)-A077868(n)` -/
def P8221237368363626476.Spec : Prop :=
  ∀ n, P8221237368363626476.a n = A048625 n

end A048625

/-! ## A048625.P17879962208761360577

`A245989(n+3)/2`
-/

namespace A048625.P17879962208761360577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245989 (n + 3) : ℚ) / 2

end

end A048625.P17879962208761360577

namespace A048625

/-- `A245989(n+3)/2` -/
def P17879962208761360577.Spec : Prop :=
  ∀ n, P17879962208761360577.a n = (A048625 n : ℚ)

end A048625

/-! ## A048625.P14097579028742292029

`Δ[A020721(n+1)]`
-/

namespace A048625.P14097579028742292029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048625.P14097579028742292029

namespace A048625

/-- `Δ[A020721(n+1)]` -/
def P14097579028742292029.Spec : Prop :=
  ∀ n, P14097579028742292029.a n = A048625 n

end A048625

/-! ## A048625.P5534900968863230286

`Δ[A020749(n+1)]`
-/

namespace A048625.P5534900968863230286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048625.P5534900968863230286

namespace A048625

/-- `Δ[A020749(n+1)]` -/
def P5534900968863230286.Spec : Prop :=
  ∀ n, P5534900968863230286.a n = A048625 n

end A048625

/-!
# A048626: Pisot sequence P(6,9).

The programs for A048626, the canonical program `A048626.P14176195167096725475` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048626 has offset 0).

The definition of A048626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048626.P14176195167096725475

`a(n-1)+a(n-3)` with `a(0)=6, a(1)=9, a(2)=13`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048626

/-- `a(n-1)+a(n-3)` -/
def P14176195167096725475.Spec : Prop :=
  ∀ n, (P14176195167096725475.a n : ℤ) = A048626 n

theorem P14176195167096725475.correct : P14176195167096725475.Spec := by
  intro n
  simp only [A048626]

end A048626

/-! ## A048626.P8853800234016033867

`A048625(n+1)`
-/

namespace A048626.P8853800234016033867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 (n + 1)

end

end A048626.P8853800234016033867

namespace A048626

/-- `A048625(n+1)` -/
def P8853800234016033867.Spec : Prop :=
  ∀ n, P8853800234016033867.a n = A048626 n

end A048626

/-! ## A048626.P9485141570593293629

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=6, a(1)=9`
-/

namespace A048626.P9485141570593293629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A048626.P9485141570593293629

namespace A048626

/-- `ceil(a(n-1)²/a(n-2)-1/2)` -/
def P9485141570593293629.Spec : Prop :=
  ∀ n, P9485141570593293629.a n = A048626 n

end A048626

/-! ## A048626.P18103699404608025968

`ogf((6+3x+4x^2)/(1-x-x^3))`
-/

namespace A048626.P18103699404608025968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 3, 4] [1, -1, 0, -1] n

end

end A048626.P18103699404608025968

namespace A048626

/-- `ogf((6+3x+4x^2)/(1-x-x^3))` -/
def P18103699404608025968.Spec : Prop :=
  ∀ n, P18103699404608025968.a n = A048626 n

end A048626

/-! ## A048626.P11459735480407586214

`A020749(n)+1`
-/

namespace A048626.P11459735480407586214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020749 n + 1

end

end A048626.P11459735480407586214

namespace A048626

/-- `A020749(n)+1` -/
def P11459735480407586214.Spec : Prop :=
  ∀ n, P11459735480407586214.a n = A048626 n

end A048626

/-! ## A048626.P3929130822411915760

`A020721(n)-1`
-/

namespace A048626.P3929130822411915760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020721 n - 1

end

end A048626.P3929130822411915760

namespace A048626

/-- `A020721(n)-1` -/
def P3929130822411915760.Spec : Prop :=
  ∀ n, P3929130822411915760.a n = A048626 n

end A048626

/-! ## A048626.P18184492746306341236

`A068921(n+5)`
-/

namespace A048626.P18184492746306341236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 5)

end

end A048626.P18184492746306341236

namespace A048626

/-- `A068921(n+5)` -/
def P18184492746306341236.Spec : Prop :=
  ∀ n, P18184492746306341236.a n = A048626 n

end A048626

/-! ## A048626.P5202521026547818847

`A000930(n+6)`
-/

namespace A048626.P5202521026547818847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 6)

end

end A048626.P5202521026547818847

namespace A048626

/-- `A000930(n+6)` -/
def P5202521026547818847.Spec : Prop :=
  ∀ n, P5202521026547818847.a n = A048626 n

end A048626

/-! ## A048626.P5617914294427173461

`A078012(n+9)`
-/

namespace A048626.P5617914294427173461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 9)

end

end A048626.P5617914294427173461

namespace A048626

/-- `A078012(n+9)` -/
def P5617914294427173461.Spec : Prop :=
  ∀ n, P5617914294427173461.a n = A048626 n

end A048626

/-! ## A048626.P16133055598120829255

`A135851(n+11)`
-/

namespace A048626.P16133055598120829255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 11)

end

end A048626.P16133055598120829255

namespace A048626

/-- `A135851(n+11)` -/
def P16133055598120829255.Spec : Prop :=
  ∀ n, P16133055598120829255.a n = A048626 n

end A048626

/-! ## A048626.P4714536619663140283

`A020745(n+1)+1`
-/

namespace A048626.P4714536619663140283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 (n + 1) + 1

end

end A048626.P4714536619663140283

namespace A048626

/-- `A020745(n+1)+1` -/
def P4714536619663140283.Spec : Prop :=
  ∀ n, P4714536619663140283.a n = A048626 n

end A048626

/-! ## A048626.P17734995830005863979

`A020711(n+1)-1`
-/

namespace A048626.P17734995830005863979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 (n + 1) - 1

end

end A048626.P17734995830005863979

namespace A048626

/-- `A020711(n+1)-1` -/
def P17734995830005863979.Spec : Prop :=
  ∀ n, P17734995830005863979.a n = A048626 n

end A048626

/-! ## A048626.P6092948722529380016

`A077868(n+3)+1`
-/

namespace A048626.P6092948722529380016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 3) + 1

end

end A048626.P6092948722529380016

namespace A048626

/-- `A077868(n+3)+1` -/
def P6092948722529380016.Spec : Prop :=
  ∀ n, P6092948722529380016.a n = A048626 n

end A048626

/-! ## A048626.P8335087783638862260

`A048589(n+1)-3`
-/

namespace A048626.P8335087783638862260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048589 (n + 1) - 3

end

end A048626.P8335087783638862260

namespace A048626

/-- `A048589(n+1)-3` -/
def P8335087783638862260.Spec : Prop :=
  ∀ n, P8335087783638862260.a n = A048626 n

end A048626

/-! ## A048626.P3652911652529529173

`A048585(n+2)-3`
-/

namespace A048626.P3652911652529529173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (n + 2) - 3

end

end A048626.P3652911652529529173

namespace A048626

/-- `A048585(n+2)-3` -/
def P3652911652529529173.Spec : Prop :=
  ∀ n, P3652911652529529173.a n = A048626 n

end A048626

/-! ## A048626.P15355975977303113955

`A048591(n+1)-4`
-/

namespace A048626.P15355975977303113955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 (n + 1) - 4

end

end A048626.P15355975977303113955

namespace A048626

/-- `A048591(n+1)-4` -/
def P15355975977303113955.Spec : Prop :=
  ∀ n, P15355975977303113955.a n = A048626 n

end A048626

/-! ## A048626.P7454483747099800394

`A048588(n+2)-4`
-/

namespace A048626.P7454483747099800394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 (n + 2) - 4

end

end A048626.P7454483747099800394

namespace A048626

/-- `A048588(n+2)-4` -/
def P7454483747099800394.Spec : Prop :=
  ∀ n, P7454483747099800394.a n = A048626 n

end A048626

/-! ## A048626.P7202612579480204697

`A128424(n+5)-1`
-/

namespace A048626.P7202612579480204697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128424 (n + 5) - 1

end

end A048626.P7202612579480204697

namespace A048626

/-- `A128424(n+5)-1` -/
def P7202612579480204697.Spec : Prop :=
  ∀ n, P7202612579480204697.a n = A048626 n

end A048626

/-! ## A048626.P16637926415962987086

`record[A048625(abs(1-n))]`
-/

namespace A048626.P16637926415962987086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048625 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048626.P16637926415962987086

namespace A048626

/-- `record[A048625(abs(1-n))]` -/
def P16637926415962987086.Spec : Prop :=
  ∀ n, P16637926415962987086.a n = A048626 n

end A048626

/-! ## A048626.P11481774161486651424

`A050228(n+1)+5+n`
-/

namespace A048626.P11481774161486651424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 1) + 5 + (n : ℤ)

end

end A048626.P11481774161486651424

namespace A048626

/-- `A050228(n+1)+5+n` -/
def P11481774161486651424.Spec : Prop :=
  ∀ n, P11481774161486651424.a n = A048626 n

end A048626

/-!
# A048627: Numbers m such that the maximal value of A001222(binomial(m,k)) and the central value A001222(A001405(m)) are identical.

The programs for A048627, there is no canonical definition to state claims against.
-/

/-! ## A048627.P1236199571407263163

`eq[0, A048622(n+1)]+1`
-/

namespace A048627.P1236199571407263163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048627.P1236199571407263163

/-! ## A048627.P5935356059609706348

`record[gcd(A000027(n+1), A048622(n+1))]`
-/

namespace A048627.P5935356059609706348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A048622 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048627.P5935356059609706348

/-! ## A048627.P15561726990216848332

`record[(n+1)/A001405(A048622(n+1)+1)]`
-/

namespace A048627.P15561726990216848332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001405 (A048622 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048627.P15561726990216848332

/-! ## A048627.P1633289809113972085

`record[(n+1)/A000010(A048622(n+1)+2)]`
-/

namespace A048627.P1633289809113972085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (A048622 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048627.P1633289809113972085

/-!
# A048628: n-th 4k+1 prime times (n+1)st 4k+3 prime.

The programs for A048628, the canonical program `A048628.P16421708468092121704` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048628 has offset 1).

The definition of A048628 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048628.P16421708468092121704

`A002144(n+1)*A002145(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048628

/-- `A002144(n+1)*A002145(n+2)` -/
def P16421708468092121704.Spec : Prop :=
  ∀ n, P16421708468092121704.a n = A048628 (n + 1)

theorem P16421708468092121704.correct : P16421708468092121704.Spec := by
  intro n
  simp only [A048628, Nat.add_sub_cancel]

end A048628

/-! ## A048628.P17771326247741676762

`p?[4*n+1]*p?[4*n+7]`
-/

namespace A048628.P17771326247741676762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A048628.P17771326247741676762

namespace A048628

/-- `p?[4*n+1]*p?[4*n+7]` -/
def P17771326247741676762.Spec : Prop :=
  ∀ n, (P17771326247741676762.a n : ℤ) = A048628 (n + 1)

end A048628

/-! ## A048628.P8133106017915681220

`A002145(n+2)*A002313(n+2)`
-/

namespace A048628.P8133106017915681220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2) * A002313 (n + 2)

end

end A048628.P8133106017915681220

namespace A048628

/-- `A002145(n+2)*A002313(n+2)` -/
def P8133106017915681220.Spec : Prop :=
  ∀ n, P8133106017915681220.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P6805163322853610316

`A002145(n+2)*A280084(n+2)`
-/

namespace A048628.P6805163322853610316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2) * A280084 (n + 2)

end

end A048628.P6805163322853610316

namespace A048628

/-- `A002145(n+2)*A280084(n+2)` -/
def P6805163322853610316.Spec : Prop :=
  ∀ n, P6805163322853610316.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P16462399299229949448

`A002144(n+1)*A339900(2*n+3)`
-/

namespace A048628.P16462399299229949448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A339900 (2 * n + 3)

end

end A048628.P16462399299229949448

namespace A048628

/-- `A002144(n+1)*A339900(2*n+3)` -/
def P16462399299229949448.Spec : Prop :=
  ∀ n, P16462399299229949448.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P418108952721659636

`(A102261(n+1)+A002145(n+1))*A002145(n+2)`
-/

namespace A048628.P418108952721659636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102261 (n + 1) + A002145 (n + 1)) * A002145 (n + 2)

end

end A048628.P418108952721659636

namespace A048628

/-- `(A102261(n+1)+A002145(n+1))*A002145(n+2)` -/
def P418108952721659636.Spec : Prop :=
  ∀ n, P418108952721659636.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P10253887089513716735

`(A022757(n+1)-A002145(n+1))*A002145(n+2)`
-/

namespace A048628.P10253887089513716735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022757 (n + 1) - A002145 (n + 1)) * A002145 (n + 2)

end

end A048628.P10253887089513716735

namespace A048628

/-- `(A022757(n+1)-A002145(n+1))*A002145(n+2)` -/
def P10253887089513716735.Spec : Prop :=
  ∀ n, P10253887089513716735.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P4202559183289087768

`(A038347(n+2)-A038347(n+1))*A002144(n+1)`
-/

namespace A048628.P4202559183289087768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038347 (n + 2) - A038347 (n + 1)) * A002144 (n + 1)

end

end A048628.P4202559183289087768

namespace A048628

/-- `(A038347(n+2)-A038347(n+1))*A002144(n+1)` -/
def P4202559183289087768.Spec : Prop :=
  ∀ n, P4202559183289087768.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P3692656712160351169

`A002145(n+2)+A002145(n+2)*A152680(n+1)`
-/

namespace A048628.P3692656712160351169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2) + A002145 (n + 2) * A152680 (n + 1)

end

end A048628.P3692656712160351169

namespace A048628

/-- `A002145(n+2)+A002145(n+2)*A152680(n+1)` -/
def P3692656712160351169.Spec : Prop :=
  ∀ n, P3692656712160351169.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P3979397528003525854

`(A190105(n+2)+A005099(n+2))*A002144(n+1)`
-/

namespace A048628.P3979397528003525854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 2) + A005099 (n + 2)) * A002144 (n + 1)

end

end A048628.P3979397528003525854

namespace A048628

/-- `(A190105(n+2)+A005099(n+2))*A002144(n+1)` -/
def P3979397528003525854.Spec : Prop :=
  ∀ n, P3979397528003525854.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P14825494146220552517

`(A022757(n+2)-A002144(n+2))*A002144(n+1)`
-/

namespace A048628.P14825494146220552517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022757 (n + 2) - A002144 (n + 2)) * A002144 (n + 1)

end

end A048628.P14825494146220552517

namespace A048628

/-- `(A022757(n+2)-A002144(n+2))*A002144(n+1)` -/
def P14825494146220552517.Spec : Prop :=
  ∀ n, P14825494146220552517.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P12143570295696149243

`(A038347(n+2)-A038347(n+1))*A002313(n+2)`
-/

namespace A048628.P12143570295696149243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038347 (n + 2) - A038347 (n + 1)) * A002313 (n + 2)

end

end A048628.P12143570295696149243

namespace A048628

/-- `(A038347(n+2)-A038347(n+1))*A002313(n+2)` -/
def P12143570295696149243.Spec : Prop :=
  ∀ n, P12143570295696149243.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P7177218717460844040

`(A002144(n+2)-A102261(n+2))*A002144(n+1)`
-/

namespace A048628.P7177218717460844040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 2) - A102261 (n + 2)) * A002144 (n + 1)

end

end A048628.P7177218717460844040

namespace A048628

/-- `(A002144(n+2)-A102261(n+2))*A002144(n+1)` -/
def P7177218717460844040.Spec : Prop :=
  ∀ n, P7177218717460844040.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P11202696152708827789

`(A190105(n+2)+A005099(n+2))*A002313(n+2)`
-/

namespace A048628.P11202696152708827789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 2) + A005099 (n + 2)) * A002313 (n + 2)

end

end A048628.P11202696152708827789

namespace A048628

/-- `(A190105(n+2)+A005099(n+2))*A002313(n+2)` -/
def P11202696152708827789.Spec : Prop :=
  ∀ n, P11202696152708827789.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P8707812009345270802

`A048630(n+1)/A002145(n+1)*A002145(n+2)`
-/

namespace A048628.P8707812009345270802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048630 (n + 1) : ℚ) / (A002145 (n + 1) : ℚ) * (A002145 (n + 2) : ℚ)

end

end A048628.P8707812009345270802

namespace A048628

/-- `A048630(n+1)/A002145(n+1)*A002145(n+2)` -/
def P8707812009345270802.Spec : Prop :=
  ∀ n, P8707812009345270802.a n = (A048628 (n + 1) : ℚ)

end A048628

/-! ## A048628.P6014495514119061422

`A171555(n+1)/A005098(n+1)*A002145(n+2)`
-/

namespace A048628.P6014495514119061422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171555 (n + 1) : ℚ) / (A005098 (n + 1) : ℚ) * (A002145 (n + 2) : ℚ)

end

end A048628.P6014495514119061422

namespace A048628

/-- `A171555(n+1)/A005098(n+1)*A002145(n+2)` -/
def P6014495514119061422.Spec : Prop :=
  ∀ n, P6014495514119061422.a n = (A048628 (n + 1) : ℚ)

end A048628

/-! ## A048628.P18345597780057256470

`A002144(n+1)/A002144(n+2)*A048630(n+2)`
-/

namespace A048628.P18345597780057256470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) : ℚ) / (A002144 (n + 2) : ℚ) * (A048630 (n + 2) : ℚ)

end

end A048628.P18345597780057256470

namespace A048628

/-- `A002144(n+1)/A002144(n+2)*A048630(n+2)` -/
def P18345597780057256470.Spec : Prop :=
  ∀ n, P18345597780057256470.a n = (A048628 (n + 1) : ℚ)

end A048628

/-! ## A048628.P2024430128693218364

`A002144(n+1)*A045326(n+3)`
-/

namespace A048628.P2024430128693218364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A045326 (n + 3)

end

end A048628.P2024430128693218364

namespace A048628

/-- `A002144(n+1)*A045326(n+3)` -/
def P2024430128693218364.Spec : Prop :=
  ∀ n, P2024430128693218364.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P153330356921957597

`A002313(n+2)*A045326(n+3)`
-/

namespace A048628.P153330356921957597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A045326 (n + 3)

end

end A048628.P153330356921957597

namespace A048628

/-- `A002313(n+2)*A045326(n+3)` -/
def P153330356921957597.Spec : Prop :=
  ∀ n, P153330356921957597.a n = A048628 (n + 1)

end A048628

/-! ## A048628.P3603721018137223570

`A002145(n+2)*A267101(A080148(n+1))`
-/

namespace A048628.P3603721018137223570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2) * A267101 (A080148 (n + 1)).toNat

end

end A048628.P3603721018137223570

namespace A048628

/-- `A002145(n+2)*A267101(A080148(n+1))` -/
def P3603721018137223570.Spec : Prop :=
  ∀ n, P3603721018137223570.a n = A048628 (n + 1)

end A048628

/-!
# A048629: n-th 6k+1 prime times n-th 6k-1 prime.

The programs for A048629, the canonical program `A048629.P5752635512016575731` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048629 has offset 1).

The definition of A048629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002476, A007528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048629.P5752635512016575731

`A002476(n+1)*A007528(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A048629

/-- `A002476(n+1)*A007528(n+1)` -/
def P5752635512016575731.Spec : Prop :=
  ∀ n, P5752635512016575731.a n = A048629 (n + 1)

theorem P5752635512016575731.correct : P5752635512016575731.Spec := by
  intro n
  simp only [A048629, Nat.add_sub_cancel]

end A048629

/-! ## A048629.P15386706233667994248

`p?[3*n+1]*p?[3*n+5]`
-/

namespace A048629.P15386706233667994248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A048629.P15386706233667994248

namespace A048629

/-- `p?[3*n+1]*p?[3*n+5]` -/
def P15386706233667994248.Spec : Prop :=
  ∀ n, (P15386706233667994248.a n : ℤ) = A048629 (n + 1)

end A048629

/-! ## A048629.P10508598039547429943

`A007528(n+1)/2*A112772(n+1)`
-/

namespace A048629.P10508598039547429943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007528 (n + 1) : ℚ) / 2 * (A112772 (n + 1) : ℚ)

end

end A048629.P10508598039547429943

namespace A048629

/-- `A007528(n+1)/2*A112772(n+1)` -/
def P10508598039547429943.Spec : Prop :=
  ∀ n, P10508598039547429943.a n = (A048629 (n + 1) : ℚ)

end A048629

/-! ## A048629.P1826921896954546318

`(3*A024892(n+1)+1)*A007528(n+1)`
-/

namespace A048629.P1826921896954546318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A024892 (n + 1) + 1) * A007528 (n + 1)

end

end A048629.P1826921896954546318

namespace A048629

/-- `(3*A024892(n+1)+1)*A007528(n+1)` -/
def P1826921896954546318.Spec : Prop :=
  ∀ n, P1826921896954546318.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P1564088905079168031

`(A022759(n+1)-A002476(n+1))*A002476(n+1)`
-/

namespace A048629.P1564088905079168031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022759 (n + 1) - A002476 (n + 1)) * A002476 (n + 1)

end

end A048629.P1564088905079168031

namespace A048629

/-- `(A022759(n+1)-A002476(n+1))*A002476(n+1)` -/
def P1564088905079168031.Spec : Prop :=
  ∀ n, P1564088905079168031.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P11013278322603033390

`(A022759(n+1)-A007528(n+1))*A007528(n+1)`
-/

namespace A048629.P11013278322603033390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022759 (n + 1) - A007528 (n + 1)) * A007528 (n + 1)

end

end A048629.P11013278322603033390

namespace A048629

/-- `(A022759(n+1)-A007528(n+1))*A007528(n+1)` -/
def P11013278322603033390.Spec : Prop :=
  ∀ n, P11013278322603033390.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P17760302476324518562

`A002476(n+1)*A003627(n+2)`
-/

namespace A048629.P17760302476324518562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) * A003627 (n + 2)

end

end A048629.P17760302476324518562

namespace A048629

/-- `A002476(n+1)*A003627(n+2)` -/
def P17760302476324518562.Spec : Prop :=
  ∀ n, P17760302476324518562.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P7889816441647628685

`A007528(n+1)*A007645(n+2)`
-/

namespace A048629.P7889816441647628685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1) * A007645 (n + 2)

end

end A048629.P7889816441647628685

namespace A048629

/-- `A007528(n+1)*A007645(n+2)` -/
def P7889816441647628685.Spec : Prop :=
  ∀ n, P7889816441647628685.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P5476142475200487248

`A002476(n+1)*A045410(n+2)`
-/

namespace A048629.P5476142475200487248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) * A045410 (n + 2)

end

end A048629.P5476142475200487248

namespace A048629

/-- `A002476(n+1)*A045410(n+2)` -/
def P5476142475200487248.Spec : Prop :=
  ∀ n, P5476142475200487248.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P17345220236361537257

`A007528(n+1)*A045375(n+2)`
-/

namespace A048629.P17345220236361537257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1) * A045375 (n + 2)

end

end A048629.P17345220236361537257

namespace A048629

/-- `A007528(n+1)*A045375(n+2)` -/
def P17345220236361537257.Spec : Prop :=
  ∀ n, P17345220236361537257.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P12559627746344790699

`A007528(n+1)*A123365(n+2)`
-/

namespace A048629.P12559627746344790699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1) * A123365 (n + 2)

end

end A048629.P12559627746344790699

namespace A048629

/-- `A007528(n+1)*A123365(n+2)` -/
def P12559627746344790699.Spec : Prop :=
  ∀ n, P12559627746344790699.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P15654300944483513656

`A003627(n+2)*A007645(n+2)`
-/

namespace A048629.P15654300944483513656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2) * A007645 (n + 2)

end

end A048629.P15654300944483513656

namespace A048629

/-- `A003627(n+2)*A007645(n+2)` -/
def P15654300944483513656.Spec : Prop :=
  ∀ n, P15654300944483513656.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P4555757196444575037

`A003627(n+2)*A045375(n+2)`
-/

namespace A048629.P4555757196444575037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2) * A045375 (n + 2)

end

end A048629.P4555757196444575037

namespace A048629

/-- `A003627(n+2)*A045375(n+2)` -/
def P4555757196444575037.Spec : Prop :=
  ∀ n, P4555757196444575037.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P1965759706813514023

`A007645(n+2)*A045410(n+2)`
-/

namespace A048629.P1965759706813514023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2) * A045410 (n + 2)

end

end A048629.P1965759706813514023

namespace A048629

/-- `A007645(n+2)*A045410(n+2)` -/
def P1965759706813514023.Spec : Prop :=
  ∀ n, P1965759706813514023.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P13345518538357598316

`A045375(n+2)*A045410(n+2)`
-/

namespace A048629.P13345518538357598316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2) * A045410 (n + 2)

end

end A048629.P13345518538357598316

namespace A048629

/-- `A045375(n+2)*A045410(n+2)` -/
def P13345518538357598316.Spec : Prop :=
  ∀ n, P13345518538357598316.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P234977787449045881

`A003627(n+2)*A123365(n+2)`
-/

namespace A048629.P234977787449045881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2) * A123365 (n + 2)

end

end A048629.P234977787449045881

namespace A048629

/-- `A003627(n+2)*A123365(n+2)` -/
def P234977787449045881.Spec : Prop :=
  ∀ n, P234977787449045881.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P866939901271233276

`(A171715(n+2)+A007528(n+1))*A007528(n+1)`
-/

namespace A048629.P866939901271233276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171715 (n + 2) + A007528 (n + 1)) * A007528 (n + 1)

end

end A048629.P866939901271233276

namespace A048629

/-- `(A171715(n+2)+A007528(n+1))*A007528(n+1)` -/
def P866939901271233276.Spec : Prop :=
  ∀ n, P866939901271233276.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P654559060261650724

`(A002476(n+1)-A171715(n+2))*A002476(n+1)`
-/

namespace A048629.P654559060261650724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) - A171715 (n + 2)) * A002476 (n + 1)

end

end A048629.P654559060261650724

namespace A048629

/-- `(A002476(n+1)-A171715(n+2))*A002476(n+1)` -/
def P654559060261650724.Spec : Prop :=
  ∀ n, P654559060261650724.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P5525002067993132578

`(A172188(n+2)-A172188(n+1))*A002476(n+1)`
-/

namespace A048629.P5525002067993132578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A172188 (n + 2) - A172188 (n + 1)) * A002476 (n + 1)

end

end A048629.P5525002067993132578

namespace A048629

/-- `(A172188(n+2)-A172188(n+1))*A002476(n+1)` -/
def P5525002067993132578.Spec : Prop :=
  ∀ n, P5525002067993132578.a n = A048629 (n + 1)

end A048629

/-! ## A048629.P12194741957803294238

`(A171715(n+2)+A003627(n+2))*A003627(n+2)`
-/

namespace A048629.P12194741957803294238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171715 (n + 2) + A003627 (n + 2)) * A003627 (n + 2)

end

end A048629.P12194741957803294238

namespace A048629

/-- `(A171715(n+2)+A003627(n+2))*A003627(n+2)` -/
def P12194741957803294238.Spec : Prop :=
  ∀ n, P12194741957803294238.a n = A048629 (n + 1)

end A048629

/-!
# A048630: n-th 4k+1 prime times n-th 4k-1 prime.

The programs for A048630, the canonical program `A048630.P1585536363652979874` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048630 has offset 1).

The definition of A048630 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048630.P1585536363652979874

`A002144(n+1)*A002145(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048630

/-- `A002144(n+1)*A002145(n+1)` -/
def P1585536363652979874.Spec : Prop :=
  ∀ n, P1585536363652979874.a n = A048630 (n + 1)

theorem P1585536363652979874.correct : P1585536363652979874.Spec := by
  intro n
  simp only [A048630, Nat.add_sub_cancel]

end A048630

/-! ## A048630.P5417313696547317731

`A055131(n)/3*A002145(n+1)`
-/

namespace A048630.P5417313696547317731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 * (A002145 (n + 1) : ℚ)

end

end A048630.P5417313696547317731

namespace A048630

/-- `A055131(n)/3*A002145(n+1)` -/
def P5417313696547317731.Spec : Prop :=
  ∀ n, P5417313696547317731.a n = (A048630 (n + 1) : ℚ)

end A048630

/-! ## A048630.P13059998759633855746

`A002144(n+1)*A339900(Δ[n²])`
-/

namespace A048630.P13059998759633855746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A048630.P13059998759633855746

namespace A048630

/-- `A002144(n+1)*A339900(Δ[n²])` -/
def P13059998759633855746.Spec : Prop :=
  ∀ n, P13059998759633855746.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P457919870747943527

`sqrt(A080109(n+1))*A002145(n+1)`
-/

namespace A048630.P457919870747943527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ) * (A002145 (n + 1) : ℝ)

end

end A048630.P457919870747943527

namespace A048630

/-- `sqrt(A080109(n+1))*A002145(n+1)` -/
def P457919870747943527.Spec : Prop :=
  ∀ n, P457919870747943527.a n = (A048630 (n + 1) : ℝ)

end A048630

/-! ## A048630.P9985321682817391262

`sqrt(A087691(n+1))*A002144(n+1)`
-/

namespace A048630.P9985321682817391262
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087691 (n + 1) : ℝ) * (A002144 (n + 1) : ℝ)

end

end A048630.P9985321682817391262

namespace A048630

/-- `sqrt(A087691(n+1))*A002144(n+1)` -/
def P9985321682817391262.Spec : Prop :=
  ∀ n, P9985321682817391262.a n = (A048630 (n + 1) : ℝ)

end A048630

/-! ## A048630.P17385098107712427286

`(A152680(n+1)+1)*A002145(n+1)`
-/

namespace A048630.P17385098107712427286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) + 1) * A002145 (n + 1)

end

end A048630.P17385098107712427286

namespace A048630

/-- `(A152680(n+1)+1)*A002145(n+1)` -/
def P17385098107712427286.Spec : Prop :=
  ∀ n, P17385098107712427286.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P10655024266828809801

`(A102261(n+1)+A002145(n+1))*A002145(n+1)`
-/

namespace A048630.P10655024266828809801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102261 (n + 1) + A002145 (n + 1)) * A002145 (n + 1)

end

end A048630.P10655024266828809801

namespace A048630

/-- `(A102261(n+1)+A002145(n+1))*A002145(n+1)` -/
def P10655024266828809801.Spec : Prop :=
  ∀ n, P10655024266828809801.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P6261281320569359605

`(A190105(n+1)+A005099(n+1))*A002144(n+1)`
-/

namespace A048630.P6261281320569359605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 1) + A005099 (n + 1)) * A002144 (n + 1)

end

end A048630.P6261281320569359605

namespace A048630

/-- `(A190105(n+1)+A005099(n+1))*A002144(n+1)` -/
def P6261281320569359605.Spec : Prop :=
  ∀ n, P6261281320569359605.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P16628242922311051671

`(A022757(n+1)-A002144(n+1))*A002144(n+1)`
-/

namespace A048630.P16628242922311051671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022757 (n + 1) - A002144 (n + 1)) * A002144 (n + 1)

end

end A048630.P16628242922311051671

namespace A048630

/-- `(A022757(n+1)-A002144(n+1))*A002144(n+1)` -/
def P16628242922311051671.Spec : Prop :=
  ∀ n, P16628242922311051671.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P9931675515529643012

`(A022757(n+1)-A002145(n+1))*A002145(n+1)`
-/

namespace A048630.P9931675515529643012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022757 (n + 1) - A002145 (n + 1)) * A002145 (n + 1)

end

end A048630.P9931675515529643012

namespace A048630

/-- `(A022757(n+1)-A002145(n+1))*A002145(n+1)` -/
def P9931675515529643012.Spec : Prop :=
  ∀ n, P9931675515529643012.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P2104187745001749777

`(A002144(n+1)-A102261(n+1))*A002144(n+1)`
-/

namespace A048630.P2104187745001749777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) - A102261 (n + 1)) * A002144 (n + 1)

end

end A048630.P2104187745001749777

namespace A048630

/-- `(A002144(n+1)-A102261(n+1))*A002144(n+1)` -/
def P2104187745001749777.Spec : Prop :=
  ∀ n, P2104187745001749777.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P1809706499072376154

`A002145(n+1)/A005098(n+1)*A171555(n+1)`
-/

namespace A048630.P1809706499072376154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) : ℚ) / (A005098 (n + 1) : ℚ) * (A171555 (n + 1) : ℚ)

end

end A048630.P1809706499072376154

namespace A048630

/-- `A002145(n+1)/A005098(n+1)*A171555(n+1)` -/
def P1809706499072376154.Spec : Prop :=
  ∀ n, P1809706499072376154.a n = (A048630 (n + 1) : ℚ)

end A048630

/-! ## A048630.P14686676440456552759

`A002145(n+1)*A002313(n+2)`
-/

namespace A048630.P14686676440456552759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) * A002313 (n + 2)

end

end A048630.P14686676440456552759

namespace A048630

/-- `A002145(n+1)*A002313(n+2)` -/
def P14686676440456552759.Spec : Prop :=
  ∀ n, P14686676440456552759.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P4972962909987200719

`A002144(n+1)*A045326(n+2)`
-/

namespace A048630.P4972962909987200719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A045326 (n + 2)

end

end A048630.P4972962909987200719

namespace A048630

/-- `A002144(n+1)*A045326(n+2)` -/
def P4972962909987200719.Spec : Prop :=
  ∀ n, P4972962909987200719.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P6875913247935985762

`A002145(n+1)*A280084(n+2)`
-/

namespace A048630.P6875913247935985762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) * A280084 (n + 2)

end

end A048630.P6875913247935985762

namespace A048630

/-- `A002145(n+1)*A280084(n+2)` -/
def P6875913247935985762.Spec : Prop :=
  ∀ n, P6875913247935985762.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P8495392486086875998

`A002313(n+2)*A045326(n+2)`
-/

namespace A048630.P8495392486086875998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A045326 (n + 2)

end

end A048630.P8495392486086875998

namespace A048630

/-- `A002313(n+2)*A045326(n+2)` -/
def P8495392486086875998.Spec : Prop :=
  ∀ n, P8495392486086875998.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P13990757015280825407

`(A022757(n+1)-A002313(n+2))*A002313(n+2)`
-/

namespace A048630.P13990757015280825407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022757 (n + 1) - A002313 (n + 2)) * A002313 (n + 2)

end

end A048630.P13990757015280825407

namespace A048630

/-- `(A022757(n+1)-A002313(n+2))*A002313(n+2)` -/
def P13990757015280825407.Spec : Prop :=
  ∀ n, P13990757015280825407.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P13746539297778226329

`A002145(n+1)*A048628(n+1)/A002145(n+2)`
-/

namespace A048630.P13746539297778226329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) * A048628 (n + 1) : ℚ) / (A002145 (n + 2) : ℚ)

end

end A048630.P13746539297778226329

namespace A048630

/-- `A002145(n+1)*A048628(n+1)/A002145(n+2)` -/
def P13746539297778226329.Spec : Prop :=
  ∀ n, P13746539297778226329.a n = (A048630 (n + 1) : ℚ)

end A048630

/-! ## A048630.P9806694535824820319

`A002145(n+1)*A267101(A080148(n+1))`
-/

namespace A048630.P9806694535824820319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) * A267101 (A080148 (n + 1)).toNat

end

end A048630.P9806694535824820319

namespace A048630

/-- `A002145(n+1)*A267101(A080148(n+1))` -/
def P9806694535824820319.Spec : Prop :=
  ∀ n, P9806694535824820319.a n = A048630 (n + 1)

end A048630

/-! ## A048630.P2371694127173084277

`A000040(A080148(n+1))*A002144(n+1)`
-/

namespace A048630.P2371694127173084277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080148 (n + 1)).toNat * A002144 (n + 1)

end

end A048630.P2371694127173084277

namespace A048630

/-- `A000040(A080148(n+1))*A002144(n+1)` -/
def P2371694127173084277.Spec : Prop :=
  ∀ n, P2371694127173084277.a n = A048630 (n + 1)

end A048630

/-!
# A048631: Xfactorials - like factorials but use carryless GF(2)[ X ] polynomial multiplication.

The programs for A048631, there is no canonical definition to state claims against.
-/

/-! ## A048631.P16543625178671135629

`n!-A048632(n)`
-/

namespace A048631.P16543625178671135629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A048632 n

end

end A048631.P16543625178671135629

/-! ## A048631.P1579021242779009031

`A000142(n)-A048632(n)`
-/

namespace A048631.P1579021242779009031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A048632 n

end

end A048631.P1579021242779009031

/-! ## A048631.P9541436543329289119

`∏[A028310(n)]-A048632(n)`
-/

namespace A048631.P9541436543329289119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A048632 n

end

end A048631.P9541436543329289119

/-! ## A048631.P8122214413694466599

`A047920(A000217(n))-A048632(n)`
-/

namespace A048631.P8122214413694466599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 n).toNat - A048632 n

end

end A048631.P8122214413694466599

/-! ## A048631.P3495889515031424490

`A048642(n)-(A048643(n)+A048632(n))`
-/

namespace A048631.P3495889515031424490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048642 n - (A048643 n + A048632 n)

end

end A048631.P3495889515031424490

/-!
# A048632: Differences between factorials and Xfactorials: A048631 - A000142.

The programs for A048632, there is no canonical definition to state claims against.
-/

/-! ## A048632.P14208025222758924812

`n!-A048631(n)`
-/

namespace A048632.P14208025222758924812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A048631 n

end

end A048632.P14208025222758924812

/-! ## A048632.P16655436215930834679

`A000142(n)-A048631(n)`
-/

namespace A048632.P16655436215930834679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A048631 n

end

end A048632.P16655436215930834679

/-! ## A048632.P12068219907757353033

`A142071(∑[n+2])-A048631(n)`
-/

namespace A048632.P12068219907757353033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (∑ j ∈ Finset.range (n + 1), f1 j) - A048631 n

end

end A048632.P12068219907757353033

/-! ## A048632.P528639150653785428

`A225475(A000096(n))-A048631(n)`
-/

namespace A048632.P528639150653785428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225475 (A000096 n).toNat - A048631 n

end

end A048632.P528639150653785428

/-!
# A048633: Largest squarefree number dividing n-th central binomial coefficient C(n,[ n/2 ]).

The programs for A048633, the canonical program `A048633.P1441411904083909438` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048633 has offset 1).

The definition of A048633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048633.P12927582606391655466

`A048681(n+1)-A048682(n+1)`
-/

namespace A048633.P12927582606391655466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048681 (n + 1) - A048682 (n + 1)

end

end A048633.P12927582606391655466

namespace A048633

/-- `A048681(n+1)-A048682(n+1)` -/
def P12927582606391655466.Spec : Prop :=
  ∀ n, P12927582606391655466.a n = A048633 (n + 1)

end A048633

/-! ## A048633.P14750611872863955380

`A007947(A056056(n+1))*A056060(n+1)`
-/

namespace A048633.P14750611872863955380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A056056 (n + 1)).toNat * A056060 (n + 1)

end

end A048633.P14750611872863955380

namespace A048633

/-- `A007947(A056056(n+1))*A056060(n+1)` -/
def P14750611872863955380.Spec : Prop :=
  ∀ n, P14750611872863955380.a n = A048633 (n + 1)

end A048633

/-! ## A048633.P7127060607921803785

`A163641(n+1)/A056610(n+1)*A163644(n+1)`
-/

namespace A048633.P7127060607921803785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163641 (n + 1) : ℚ) / (A056610 (n + 1) : ℚ) * (A163644 (n + 1) : ℚ)

end

end A048633.P7127060607921803785

namespace A048633

/-- `A163641(n+1)/A056610(n+1)*A163644(n+1)` -/
def P7127060607921803785.Spec : Prop :=
  ∀ n, P7127060607921803785.a n = (A048633 (n + 1) : ℚ)

end A048633

/-! ## A048633.P2343701339755871857

`A034386(n+1)/A056610(n+1)`
-/

namespace A048633.P2343701339755871857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A056610 (n + 1) : ℚ)

end

end A048633.P2343701339755871857

namespace A048633

/-- `A034386(n+1)/A056610(n+1)` -/
def P2343701339755871857.Spec : Prop :=
  ∀ n, P2343701339755871857.a n = (A048633 (n + 1) : ℚ)

end A048633

/-! ## A048633.P8592869998267858582

`A056606(n+1)/A056611(n+1)`
-/

namespace A048633.P8592869998267858582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056606 (n + 1) : ℚ) / (A056611 (n + 1) : ℚ)

end

end A048633.P8592869998267858582

namespace A048633

/-- `A056606(n+1)/A056611(n+1)` -/
def P8592869998267858582.Spec : Prop :=
  ∀ n, P8592869998267858582.a n = (A048633 (n + 1) : ℚ)

end A048633

/-! ## A048633.P1441411904083909438

`gcd(A001405(n+1), A034386(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048633

/-- `gcd(A001405(n+1), A034386(n+1))` -/
def P1441411904083909438.Spec : Prop :=
  ∀ n, (P1441411904083909438.a n : ℤ) = A048633 (n + 1)

theorem P1441411904083909438.correct : P1441411904083909438.Spec := by
  intro n
  simp only [A048633, Nat.add_sub_cancel]

end A048633

/-! ## A048633.P2860472686233349860

`gcd(2*A001405(n+1), A056606(n+1))`
-/

namespace A048633.P2860472686233349860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A001405 (n + 1)) (A056606 (n + 1))

end

end A048633.P2860472686233349860

namespace A048633

/-- `gcd(2*A001405(n+1), A056606(n+1))` -/
def P2860472686233349860.Spec : Prop :=
  ∀ n, (P2860472686233349860.a n : ℤ) = A048633 (n + 1)

end A048633

/-! ## A048633.P13246561265078919556

`gcd(A001405(n+1)², A056606(n+1))`
-/

namespace A048633.P13246561265078919556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (n + 1) ^ 2) (A056606 (n + 1))

end

end A048633.P13246561265078919556

namespace A048633

/-- `gcd(A001405(n+1)², A056606(n+1))` -/
def P13246561265078919556.Spec : Prop :=
  ∀ n, (P13246561265078919556.a n : ℤ) = A048633 (n + 1)

end A048633

/-! ## A048633.P7843466649784056468

`A080396(A074148(n+1))`
-/

namespace A048633.P7843466649784056468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080396 (A074148 (n + 1)).toNat

end

end A048633.P7843466649784056468

namespace A048633

/-- `A080396(A074148(n+1))` -/
def P7843466649784056468.Spec : Prop :=
  ∀ n, P7843466649784056468.a n = A048633 (n + 1)

end A048633

/-! ## A048633.P246852709829891004

`A080396(A194274(n+1))`
-/

namespace A048633.P246852709829891004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080396 (A194274 (n + 1)).toNat

end

end A048633.P246852709829891004

namespace A048633

/-- `A080396(A194274(n+1))` -/
def P246852709829891004.Spec : Prop :=
  ∀ n, P246852709829891004.a n = A048633 (n + 1)

end A048633

/-! ## A048633.P14857863980010221123

`A080396(A080476(n+2))`
-/

namespace A048633.P14857863980010221123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080396 (A080476 (n + 2)).toNat

end

end A048633.P14857863980010221123

namespace A048633

/-- `A080396(A080476(n+2))` -/
def P14857863980010221123.Spec : Prop :=
  ∀ n, P14857863980010221123.a n = A048633 (n + 1)

end A048633

/-!
# A048634: a(n) = a(n-1)*a(n-3) + a(n-2), with a(0)=a(1)=0 and a(2)=1.

The programs for A048634, the canonical program `A048634.P7963237532041953931` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048634 has offset 0).

The definition of A048634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)+a(n-2)` (program `A048634.P7963237532041953931`, by `A048634.P7963237532041953931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048634.P7963237532041953931

`a(n-1)*a(n-3)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048634

/-- `a(n-1)*a(n-3)+a(n-2)` -/
def P7963237532041953931.Spec : Prop :=
  ∀ n, (P7963237532041953931.a n : ℤ) = A048634 n

theorem P7963237532041953931.correct : P7963237532041953931.Spec := by
  intro n
  simp only [A048634]

end A048634

/-! ## A048634.P7423692039692813730

`a(n-2)+lcm(a(n-1), a(n-3))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A048634.P7423692039692813730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + Nat.lcm (a (n - 1)) (a (n - 3))

end

end A048634.P7423692039692813730

namespace A048634

/-- `a(n-2)+lcm(a(n-1), a(n-3))` -/
def P7423692039692813730.Spec : Prop :=
  ∀ n, (P7423692039692813730.a n : ℤ) = A048634 n

end A048634

/-! ## A048634.P667583248908645715

`a(n-2)+a(A023443(n))*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A048634.P667583248908645715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 2) + a (A023443 n).toNat * a (n - 3)

end

end A048634.P667583248908645715

namespace A048634

/-- `a(n-2)+a(A023443(n))*a(n-3)` -/
def P667583248908645715.Spec : Prop :=
  ∀ n, (P667583248908645715.a n : ℤ) = A048634 n

end A048634

/-! ## A048634.P16449465860228477309

`A000194(A054907(2*(n+2))-A267417(3*n+1))`
-/

namespace A048634.P16449465860228477309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A054907 (2 * (n + 2)) - A267417 (3 * n + 1)).toNat

end

end A048634.P16449465860228477309

namespace A048634

/-- `A000194(A054907(2*(n+2))-A267417(3*n+1))` -/
def P16449465860228477309.Spec : Prop :=
  ∀ n, P16449465860228477309.a n = A048634 n

end A048634

/-! ## A048634.P913838538157981320

`A000194(xor(A054907(2*(n+2)), A267417(3*n+1)))`
-/

namespace A048634.P913838538157981320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor (A054907 (2 * (n + 2))) (A267417 (3 * n + 1))).toNat

end

end A048634.P913838538157981320

namespace A048634

/-- `A000194(xor(A054907(2*(n+2)), A267417(3*n+1)))` -/
def P913838538157981320.Spec : Prop :=
  ∀ n, P913838538157981320.a n = A048634 n

end A048634

/-!
# A048635: Number of rational points of Klein curve over GF(2^n).

The programs for A048635, the canonical program `A048635.P7304203680119451702` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048635 has offset 1).

The definition of A048635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048635.P7304203680119451702

`4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=14, a(2)=24, a(3)=14`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048635

/-- `4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P7304203680119451702.Spec : Prop :=
  ∀ n, P7304203680119451702.a n = A048635 (n + 1)

theorem P7304203680119451702.correct : P7304203680119451702.Spec := by
  intro n
  simp only [A048635, Nat.add_sub_cancel]

end A048635

/-! ## A048635.P1941493954931226733

`A002248(n+1)+Δ[A002249(n+2)]`
-/

namespace A048635.P1941493954931226733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002248 (n + 1) + (f1 (n + 1) - f1 n)

end

end A048635.P1941493954931226733

namespace A048635

/-- `A002248(n+1)+Δ[A002249(n+2)]` -/
def P1941493954931226733.Spec : Prop :=
  ∀ n, P1941493954931226733.a n = A048635 (n + 1)

end A048635

/-! ## A048635.P3454389056888968368

`A002248(n+1)-2*A002249(n+1)`
-/

namespace A048635.P3454389056888968368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002248 (n + 1) - 2 * A002249 (n + 1)

end

end A048635.P3454389056888968368

namespace A048635

/-- `A002248(n+1)-2*A002249(n+1)` -/
def P3454389056888968368.Spec : Prop :=
  ∀ n, P3454389056888968368.a n = A048635 (n + 1)

end A048635

/-!
# A048636: Primes of the form prime^3 + 2.

The programs for A048636, there is no canonical definition to state claims against.
-/

/-! ## A048636.P5656594792361874353

`A048637(n+1)^3+2`
-/

namespace A048636.P5656594792361874353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1) ^ 3 + 2

end

end A048636.P5656594792361874353

/-! ## A048636.P15031529696844134801

`A132282(n+3)`
-/

namespace A048636.P15031529696844134801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132282 (n + 3)

end

end A048636.P15031529696844134801

/-! ## A048636.P14869456989843634959

`A132281(n+3)^3+2`
-/

namespace A048636.P14869456989843634959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 3) ^ 3 + 2

end

end A048636.P14869456989843634959

/-! ## A048636.P1968778961968591926

`p?[A067200(n+1)]^3+2`
-/

namespace A048636.P1968778961968591926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3 + 2

end

end A048636.P1968778961968591926

/-! ## A048636.P17173922625143988065

`∩[A053703(n+1), A188764(n+1)]`
-/

namespace A048636.P17173922625143988065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048636.P17173922625143988065

/-! ## A048636.P2975654999147542464

`A270437(A048637(n+1))+2`
-/

namespace A048636.P2975654999147542464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270437 (A048637 (n + 1)).toNat + 2

end

end A048636.P2975654999147542464

/-! ## A048636.P678968774920922622

`A270437(A132281(n+3))+2`
-/

namespace A048636.P678968774920922622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270437 (A132281 (n + 3)).toNat + 2

end

end A048636.P678968774920922622

/-! ## A048636.P14396130351689618109

`A270437(p?[A067200(n+1)])+2`
-/

namespace A048636.P14396130351689618109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270437 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2

end

end A048636.P14396130351689618109

/-! ## A048636.P8777956044978467005

`A014220(A048637(n+1))`
-/

namespace A048636.P8777956044978467005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (A048637 (n + 1)).toNat

end

end A048636.P8777956044978467005

/-! ## A048636.P4775813575711116287

`A014220(A132281(n+3))`
-/

namespace A048636.P4775813575711116287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (A132281 (n + 3)).toNat

end

end A048636.P4775813575711116287

/-! ## A048636.P14430554079084916310

`A014220(p?[A067200(n+1)])`
-/

namespace A048636.P14430554079084916310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048636.P14430554079084916310

/-! ## A048636.P15455316765847160299

`A181758(p?[A067200(n+1)])`
-/

namespace A048636.P15455316765847160299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181758 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A048636.P15455316765847160299

/-! ## A048636.P4777136456067054157

`A034324(A132281(n+3)+2)`
-/

namespace A048636.P4777136456067054157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034324 (A132281 (n + 3) + 2).toNat

end

end A048636.P4777136456067054157

/-! ## A048636.P4094288095052514988

`A181758(or(1, A048637(n+1)))`
-/

namespace A048636.P4094288095052514988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181758 (Int.lor 1 (A048637 (n + 1))).toNat

end

end A048636.P4094288095052514988

/-! ## A048636.P10889001376630028728

`∑{d}[A048637(n+1), A007331(#)]`
-/

namespace A048636.P10889001376630028728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007331 d

end

end A048636.P10889001376630028728

/-! ## A048636.P4613553728545682605

`∑{d}[A048637(n+1), A184628(#)]`
-/

namespace A048636.P4613553728545682605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A184628 d

end

end A048636.P4613553728545682605

/-! ## A048636.P15300408765499534449

`A000578(p?[A067200(n+1)])+2`
-/

namespace A048636.P15300408765499534449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2

end

end A048636.P15300408765499534449

/-!
# A048637: Primes p such that p^3 + 2 is also prime.

The programs for A048637, there is no canonical definition to state claims against.
-/

/-! ## A048637.P12383898157863738490

`floor(root(A048636(n+1), 3))`
-/

namespace A048637.P12383898157863738490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048636 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A048637.P12383898157863738490

/-! ## A048637.P14557230942127859038

`A132281(n+3)`
-/

namespace A048637.P14557230942127859038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132281 (n + 3)

end

end A048637.P14557230942127859038

/-! ## A048637.P9318682137509668994

`p?[A067200(n+1)]`
-/

namespace A048637.P9318682137509668994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048637.P9318682137509668994

/-! ## A048637.P14672248516750787297

`∩[A045309(n+1), A067200(n+1)]`
-/

namespace A048637.P14672248516750787297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P14672248516750787297

/-! ## A048637.P6780627939244455657

`∩[A045410(n+1), A067200(n+1)]`
-/

namespace A048637.P6780627939244455657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P6780627939244455657

/-! ## A048637.P1503558737680998167

`∩[A049596(n+1), A067200(n+1)]`
-/

namespace A048637.P1503558737680998167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P1503558737680998167

/-! ## A048637.P6145081477407650516

`∩[A067200(n+1), A164319(n+1)]`
-/

namespace A048637.P6145081477407650516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P6145081477407650516

/-! ## A048637.P5527071228369828652

`∩[A040087(n+1), A067200(n+1)]`
-/

namespace A048637.P5527071228369828652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P5527071228369828652

/-! ## A048637.P16883631353892702249

`∩[A040028(n+1), A067200(n+1)]`
-/

namespace A048637.P16883631353892702249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P16883631353892702249

/-! ## A048637.P15687585032493967628

`∩[A040036(n+1), A067200(n+1)]`
-/

namespace A048637.P15687585032493967628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P15687585032493967628

/-! ## A048637.P1710197548715661976

`∩[A040044(n+1), A067200(n+1)]`
-/

namespace A048637.P1710197548715661976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P1710197548715661976

/-! ## A048637.P14791709692700228788

`∩[A040046(n+1), A067200(n+1)]`
-/

namespace A048637.P14791709692700228788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P14791709692700228788

/-! ## A048637.P6594194355382027593

`∩[A040049(n+1), A067200(n+1)]`
-/

namespace A048637.P6594194355382027593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P6594194355382027593

/-! ## A048637.P8008912841744465268

`∩[A040054(n+1), A067200(n+1)]`
-/

namespace A048637.P8008912841744465268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P8008912841744465268

/-! ## A048637.P851844791867959883

`∩[A040060(n+1), A067200(n+1)]`
-/

namespace A048637.P851844791867959883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P851844791867959883

/-! ## A048637.P18404000173910240330

`∩[A040062(n+1), A067200(n+1)]`
-/

namespace A048637.P18404000173910240330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P18404000173910240330

/-! ## A048637.P2419570050752360070

`∩[A040065(n+1), A067200(n+1)]`
-/

namespace A048637.P2419570050752360070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P2419570050752360070

/-! ## A048637.P15471892033799273599

`∩[A040078(n+1), A067200(n+1)]`
-/

namespace A048637.P15471892033799273599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P15471892033799273599

/-! ## A048637.P18036423955210193878

`∩[A040083(n+1), A067200(n+1)]`
-/

namespace A048637.P18036423955210193878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P18036423955210193878

/-! ## A048637.P13331988755483142454

`∩[A040085(n+1), A067200(n+1)]`
-/

namespace A048637.P13331988755483142454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048637.P13331988755483142454

/-!
# A048638: Height of lattice of parameters of mixed orthogonal arrays with 2^n runs and strength 2.

The programs for A048638, there is no canonical definition to state claims against.
-/

/-! ## A048638.P16647761763434477716

`A339695(∑[ceil(∑[2^(n-1)]²)])+n`
-/

namespace A048638.P16647761763434477716
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f2 j) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339695 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A048638.P16647761763434477716

/-! ## A048638.P15455108734887927325

`A055086(∑[∑[A344248(n+1)]])`
-/

namespace A048638.P15455108734887927325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344248 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048638.P15455108734887927325

/-! ## A048638.P7751917286367472736

`∑[A172441(n)+A089797(2*(n+3))/3]`
-/

namespace A048638.P7751917286367472736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172441 n : ℚ) + (A089797 (2 * (n + 3)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048638.P7751917286367472736

/-!
# A048639: Binary encoding of A006881, numbers with two distinct prime divisors.

The programs for A048639, the canonical program `A048639.P11152378786203377738` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048639 has offset 1).

The definition of A048639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048639.P14175327013182074950

`A297168(eq[3, A002033(n)]+1)`
-/

namespace A048639.P14175327013182074950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A048639.P14175327013182074950

namespace A048639

/-- `A297168(eq[3, A002033(n)]+1)` -/
def P14175327013182074950.Spec : Prop :=
  ∀ n, P14175327013182074950.a n = A048639 (n + 1)

end A048639

/-! ## A048639.P9396778891088195040

`A048675(A006881(n+1))`
-/

namespace A048639.P9396778891088195040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A006881 (n + 1)).toNat

end

end A048639.P9396778891088195040

namespace A048639

/-- `A048675(A006881(n+1))` -/
def P9396778891088195040.Spec : Prop :=
  ∀ n, P9396778891088195040.a n = A048639 (n + 1)

end A048639

/-! ## A048639.P11152378786203377738

`A048675(A161918(n+2))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A048639

/-- `A048675(A161918(n+2))` -/
def P11152378786203377738.Spec : Prop :=
  ∀ n, P11152378786203377738.a n = A048639 (n + 1)

theorem P11152378786203377738.correct : P11152378786203377738.Spec := by
  intro n
  simp only [A048639, Nat.add_sub_cancel]

end A048639

/-! ## A048639.P2095722739463285698

`A048676(A006881(2*n+1-n))`
-/

namespace A048639.P2095722739463285698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (A006881 (2 * n + 1 - n)).toNat

end

end A048639.P2095722739463285698

namespace A048639

/-- `A048676(A006881(2*n+1-n))` -/
def P2095722739463285698.Spec : Prop :=
  ∀ n, P2095722739463285698.a n = A048639 (n + 1)

end A048639

/-! ## A048639.P4017027472518280176

`A087207(eq[A008683(n+1)+1, A001222(n+1)]+1)`
-/

namespace A048639.P4017027472518280176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A048639.P4017027472518280176

namespace A048639

/-- `A087207(eq[A008683(n+1)+1, A001222(n+1)]+1)` -/
def P4017027472518280176.Spec : Prop :=
  ∀ n, P4017027472518280176.a n = A048639 (n + 1)

end A048639

/-! ## A048639.P8099904679442075446

`A048675(eq[2*A285328(n+1), A001221(n+1)]+1)`
-/

namespace A048639.P8099904679442075446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A048639.P8099904679442075446

namespace A048639

/-- `A048675(eq[2*A285328(n+1), A001221(n+1)]+1)` -/
def P8099904679442075446.Spec : Prop :=
  ∀ n, P8099904679442075446.a n = A048639 (n + 1)

end A048639

/-! ## A048639.P5917456417866584848

`A285330(eq[2, A001222(n+1)*A285328(n+1)]+1)`
-/

namespace A048639.P5917456417866584848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A285328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A048639.P5917456417866584848

namespace A048639

/-- `A285330(eq[2, A001222(n+1)*A285328(n+1)]+1)` -/
def P5917456417866584848.Spec : Prop :=
  ∀ n, P5917456417866584848.a n = A048639 (n + 1)

end A048639

/-!
# A048640: Binary encoding of the squarefree numbers, A005117.

The programs for A048640, the canonical program `A048640.P576295911288433352` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048640 has offset 1).

The definition of A048640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048640.P576295911288433352

`A000007(n)+2*A048672(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A048640

/-- `A000007(n)+2*A048672(n+1)` -/
def P576295911288433352.Spec : Prop :=
  ∀ n, P576295911288433352.a n = A048640 (n + 1)

theorem P576295911288433352.correct : P576295911288433352.Spec := by
  intro n
  simp only [A048640, Nat.add_sub_cancel]

end A048640

/-! ## A048640.P1182631958242317145

`(2*A048672(n+1))^A057428(n)²`
-/

namespace A048640.P1182631958242317145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A048672 (n + 1) : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A048640.P1182631958242317145

namespace A048640

/-- `(2*A048672(n+1))^A057428(n)²` -/
def P1182631958242317145.Spec : Prop :=
  ∀ n, P1182631958242317145.a n = (A048640 (n + 1) : ℚ)

end A048640

/-! ## A048640.P6074600453376767754

`A013916(n+1)%2+2*A048672(n+1)`
-/

namespace A048640.P6074600453376767754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013916 (n + 1)) 2 + 2 * A048672 (n + 1)

end

end A048640.P6074600453376767754

namespace A048640

/-- `A013916(n+1)%2+2*A048672(n+1)` -/
def P6074600453376767754.Spec : Prop :=
  ∀ n, P6074600453376767754.a n = A048640 (n + 1)

end A048640

/-! ## A048640.P3285456637072772130

`A008683(A004011(n))+2*A048672(n+1)`
-/

namespace A048640.P3285456637072772130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004011 n).toNat + 2 * A048672 (n + 1)

end

end A048640.P3285456637072772130

namespace A048640

/-- `A008683(A004011(n))+2*A048672(n+1)` -/
def P3285456637072772130.Spec : Prop :=
  ∀ n, P3285456637072772130.a n = A048640 (n + 1)

end A048640

/-! ## A048640.P13869628145658334519

`A008683(A008574(n))+2*A048672(n+1)`
-/

namespace A048640.P13869628145658334519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + 2 * A048672 (n + 1)

end

end A048640.P13869628145658334519

namespace A048640

/-- `A008683(A008574(n))+2*A048672(n+1)` -/
def P13869628145658334519.Spec : Prop :=
  ∀ n, P13869628145658334519.a n = A048640 (n + 1)

end A048640

/-!
# A048641: Partial sums of A003188 (Gray code).

The programs for A048641, the canonical program `A048641.P3161406874688888869` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048641 has offset 1).

The definition of A048641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048641.P3161406874688888869

`∑[xor(n, floor(n/2))]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048641

/-- `∑[xor(n, floor(n/2))]` -/
def P3161406874688888869.Spec : Prop :=
  ∀ n, P3161406874688888869.a n = A048641 (n + 1)

theorem P3161406874688888869.correct : P3161406874688888869.Spec := by
  intro n
  simp only [A048641, Nat.add_sub_cancel]

end A048641

/-! ## A048641.P13367906478239965392

`∑[abs(xor(n, n-∑[n%2]))]`
-/

namespace A048641.P13367906478239965392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P13367906478239965392

namespace A048641

/-- `∑[abs(xor(n, n-∑[n%2]))]` -/
def P13367906478239965392.Spec : Prop :=
  ∀ n, P13367906478239965392.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P1358706688482508673

`∑[xor(2*n, and(n, -2))/2]`
-/

namespace A048641.P1358706688482508673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P1358706688482508673

namespace A048641

/-- `∑[xor(2*n, and(n, -2))/2]` -/
def P1358706688482508673.Spec : Prop :=
  ∀ n, P1358706688482508673.a n = (A048641 (n + 1) : ℚ)

end A048641

/-! ## A048641.P48377747087731805

`∑[ceil(xor(n-1, 2*n)/2)]`
-/

namespace A048641.P48377747087731805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P48377747087731805

namespace A048641

/-- `∑[ceil(xor(n-1, 2*n)/2)]` -/
def P48377747087731805.Spec : Prop :=
  ∀ n, P48377747087731805.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P3788555612188769712

`∑[xor(2*n+1, or(1, n))/2]`
-/

namespace A048641.P3788555612188769712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n + 1) (Nat.lor 1 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P3788555612188769712

namespace A048641

/-- `∑[xor(2*n+1, or(1, n))/2]` -/
def P3788555612188769712.Spec : Prop :=
  ∀ n, P3788555612188769712.a n = (A048641 (n + 1) : ℚ)

end A048641

/-! ## A048641.P11880777776519393288

`a(n-1)+xor(n, floor(n/2))` with `a(0)=0`
-/

namespace A048641.P11880777776519393288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A048641.P11880777776519393288

namespace A048641

/-- `a(n-1)+xor(n, floor(n/2))` -/
def P11880777776519393288.Spec : Prop :=
  ∀ n, P11880777776519393288.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P17299447749740212445

`∑[and(2*n, -n)-ceil(n/2)]`
-/

namespace A048641.P17299447749740212445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P17299447749740212445

namespace A048641

/-- `∑[and(2*n, -n)-ceil(n/2)]` -/
def P17299447749740212445.Spec : Prop :=
  ∀ n, P17299447749740212445.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P16985605320501903518

`∑[floor(n/2)+and(n, Δ[-n²])]`
-/

namespace A048641.P16985605320501903518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + Int.land (n : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P16985605320501903518

namespace A048641

/-- `∑[floor(n/2)+and(n, Δ[-n²])]` -/
def P16985605320501903518.Spec : Prop :=
  ∀ n, P16985605320501903518.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P8808796926442856610

`∑[round(xor(2*n+1, n+1)/2)]`
-/

namespace A048641.P8808796926442856610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P8808796926442856610

namespace A048641

/-- `∑[round(xor(2*n+1, n+1)/2)]` -/
def P8808796926442856610.Spec : Prop :=
  ∀ n, P8808796926442856610.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P15471351229336081829

`∑[floor(n/2-and(n, 2*n))]+∑[n]`
-/

namespace A048641.P15471351229336081829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (Nat.land n (2 * n) : ℚ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A048641.P15471351229336081829

namespace A048641

/-- `∑[floor(n/2-and(n, 2*n))]+∑[n]` -/
def P15471351229336081829.Spec : Prop :=
  ∀ n, P15471351229336081829.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P8999186233393953934

`∑[A003188(n)]`
-/

namespace A048641.P8999186233393953934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P8999186233393953934

namespace A048641

/-- `∑[A003188(n)]` -/
def P8999186233393953934.Spec : Prop :=
  ∀ n, P8999186233393953934.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P10143876154178527420

`A048644(n)+∑[n]`
-/

namespace A048641.P10143876154178527420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048644 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048641.P10143876154178527420

namespace A048641

/-- `A048644(n)+∑[n]` -/
def P10143876154178527420.Spec : Prop :=
  ∀ n, P10143876154178527420.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P5025404699238885073

`∑[A286548(n)+n]`
-/

namespace A048641.P5025404699238885073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P5025404699238885073

namespace A048641

/-- `∑[A286548(n)+n]` -/
def P5025404699238885073.Spec : Prop :=
  ∀ n, P5025404699238885073.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P942767975818825500

`∑[floor(A048724(n)/2)]`
-/

namespace A048641.P942767975818825500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048724 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P942767975818825500

namespace A048641

/-- `∑[floor(A048724(n)/2)]` -/
def P942767975818825500.Spec : Prop :=
  ∀ n, P942767975818825500.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P13727573915345856042

`∑[A105081(n+1)-1]`
-/

namespace A048641.P13727573915345856042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P13727573915345856042

namespace A048641

/-- `∑[A105081(n+1)-1]` -/
def P13727573915345856042.Spec : Prop :=
  ∀ n, P13727573915345856042.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P4031024644324869586

`∑[xor(n, A123108(n))]-1`
-/

namespace A048641.P4031024644324869586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A123108 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A048641.P4031024644324869586

namespace A048641

/-- `∑[xor(n, A123108(n))]-1` -/
def P4031024644324869586.Spec : Prop :=
  ∀ n, P4031024644324869586.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P9503749179971377211

`∑[A057300(A300838(n))]`
-/

namespace A048641.P9503749179971377211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A300838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P9503749179971377211

namespace A048641

/-- `∑[A057300(A300838(n))]` -/
def P9503749179971377211.Spec : Prop :=
  ∀ n, P9503749179971377211.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P6530936591363314364

`∑[A302844(A163355(n))]`
-/

namespace A048641.P6530936591363314364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P6530936591363314364

namespace A048641

/-- `∑[A302844(A163355(n))]` -/
def P6530936591363314364.Spec : Prop :=
  ∀ n, P6530936591363314364.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P6313485966921202989

`∑[A302846(A302843(n))]`
-/

namespace A048641.P6313485966921202989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A302843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P6313485966921202989

namespace A048641

/-- `∑[A302846(A302843(n))]` -/
def P6313485966921202989.Spec : Prop :=
  ∀ n, P6313485966921202989.a n = A048641 (n + 1)

end A048641

/-! ## A048641.P5863908129110225712

`∑[A229763(n)+A004526(n)]`
-/

namespace A048641.P5863908129110225712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048641.P5863908129110225712

namespace A048641

/-- `∑[A229763(n)+A004526(n)]` -/
def P5863908129110225712.Spec : Prop :=
  ∀ n, P5863908129110225712.a n = A048641 (n + 1)

end A048641

/-!
# A048642: Partial products of A003188 (Gray code).

The programs for A048642, there is no canonical definition to state claims against.
-/

/-! ## A048642.P13007751159277850137

`∏[xor(n, ceil(abs((1-n)/2)))]`
-/

namespace A048642.P13007751159277850137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048642.P13007751159277850137

/-! ## A048642.P4051932483101449240

`xor(n, floor(n/2))*a(n-1)` with `a(0)=1`
-/

namespace A048642.P4051932483101449240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ * a (n - 1)

end

end A048642.P4051932483101449240

/-! ## A048642.P12890245044828375310

`∏[A003188(floor(acot(n)+n))]`
-/

namespace A048642.P12890245044828375310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048642.P12890245044828375310

/-! ## A048642.P10460098603616143795

`a(n-1)*A003188(n)` with `a(0)=1`
-/

namespace A048642.P10460098603616143795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A003188 n

end

end A048642.P10460098603616143795

/-! ## A048642.P12693761350356698487

`∏[A028310(xor(n, floor(n/2)))]`
-/

namespace A048642.P12693761350356698487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048642.P12693761350356698487

/-! ## A048642.P7524148309321754096

`(A286548(n)+n)*a(n-1)` with `a(0)=1`
-/

namespace A048642.P7524148309321754096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A286548 n + (n : ℤ)) * a (n - 1)

end

end A048642.P7524148309321754096

/-! ## A048642.P10036925817822462685

`∏[A000007(n)+xor(n, floor(n/2))]`
-/

namespace A048642.P10036925817822462685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048642.P10036925817822462685

/-! ## A048642.P12012657684524766689

`abs(xor(n, A004526(n))*a(n-1))` with `a(0)=1`
-/

namespace A048642.P12012657684524766689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.xor (n : ℤ) (A004526 n) * a (n - 1)|

end

end A048642.P12012657684524766689

/-! ## A048642.P14045561261249916694

`∏[A028310(A003188(n))]`
-/

namespace A048642.P14045561261249916694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048642.P14045561261249916694

/-! ## A048642.P238481939808717665

`A048643(n)+A000142(n)`
-/

namespace A048642.P238481939808717665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048643 n + A000142 n

end

end A048642.P238481939808717665

/-!
# A048643: Differences between partial products of Gray code (A048642) and factorials (A000142).

The programs for A048643, there is no canonical definition to state claims against.
-/

/-! ## A048643.P3591374984807964693

`A048642(n)-A000142(n)`
-/

namespace A048643.P3591374984807964693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048642 n - A000142 n

end

end A048643.P3591374984807964693

/-! ## A048643.P3092587659685099790

`A048642(n)-∏[A028310(n)]`
-/

namespace A048643.P3092587659685099790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048642 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048643.P3092587659685099790

/-! ## A048643.P1626447221008178322

`A048642(n)-A104150(n+1)`
-/

namespace A048643.P1626447221008178322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048642 n - A104150 (n + 1)

end

end A048643.P1626447221008178322

/-! ## A048643.P5410122746764972596

`∏[A028310(A003188(n))]-A000142(n)`
-/

namespace A048643.P5410122746764972596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000142 n

end

end A048643.P5410122746764972596

/-!
# A048644: Differences between partial sums of Gray code (A048641) and triangular numbers (A000217).

The programs for A048644, the canonical program `A048644.P13781728292975826031` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048644 has offset 0).

The definition of A048644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048644.P13781728292975826031

`∑[xor(n, floor(n/2))-n]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048644

/-- `∑[xor(n, floor(n/2))-n]` -/
def P13781728292975826031.Spec : Prop :=
  ∀ n, P13781728292975826031.a n = A048644 n

theorem P13781728292975826031.correct : P13781728292975826031.Spec := by
  intro n
  simp only [A048644]

end A048644

/-! ## A048644.P5622821448657118040

`∑[floor(n/2-and(n, 2*n))]`
-/

namespace A048644.P5622821448657118040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (Nat.land n (2 * n) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P5622821448657118040

namespace A048644

/-- `∑[floor(n/2-and(n, 2*n))]` -/
def P5622821448657118040.Spec : Prop :=
  ∀ n, P5622821448657118040.a n = A048644 n

end A048644

/-! ## A048644.P15172387122693078247

`∑[abs(xor(n, n-∑[n%2]))-n]`
-/

namespace A048644.P15172387122693078247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))| - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P15172387122693078247

namespace A048644

/-- `∑[abs(xor(n, n-∑[n%2]))-n]` -/
def P15172387122693078247.Spec : Prop :=
  ∀ n, P15172387122693078247.a n = A048644 n

end A048644

/-! ## A048644.P6955799154593570435

`∑[and(n, Δ[-n²])-ceil(n/2)]`
-/

namespace A048644.P6955799154593570435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f2 (n + 1) - f2 n) - ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P6955799154593570435

namespace A048644

/-- `∑[and(n, Δ[-n²])-ceil(n/2)]` -/
def P6955799154593570435.Spec : Prop :=
  ∀ n, P6955799154593570435.a n = A048644 n

end A048644

/-! ## A048644.P2709016464454150654

`∑[abs(xor(n, (or(1, n)-1)/2))-n]`
-/

namespace A048644.P2709016464454150654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))| - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P2709016464454150654

namespace A048644

/-- `∑[abs(xor(n, (or(1, n)-1)/2))-n]` -/
def P2709016464454150654.Spec : Prop :=
  ∀ n, P2709016464454150654.a n = A048644 n

end A048644

/-! ## A048644.P14418210118744033438

`∑[ceil(n/2)-and(n, 2*n+1)]`
-/

namespace A048644.P14418210118744033438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - (Nat.land n (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P14418210118744033438

namespace A048644

/-- `∑[ceil(n/2)-and(n, 2*n+1)]` -/
def P14418210118744033438.Spec : Prop :=
  ∀ n, P14418210118744033438.a n = A048644 n

end A048644

/-! ## A048644.P3203807812703792424

`∑[ceil(xor(n-1, 2*n)/2)-n]`
-/

namespace A048644.P3203807812703792424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉ - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P3203807812703792424

namespace A048644

/-- `∑[ceil(xor(n-1, 2*n)/2)-n]` -/
def P3203807812703792424.Spec : Prop :=
  ∀ n, P3203807812703792424.a n = A048644 n

end A048644

/-! ## A048644.P17315831818166433046

`∑[round(xor(n+1, 2*n+1)/2)-n]`
-/

namespace A048644.P17315831818166433046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor (n + 1) (2 * n + 1) : ℚ) / 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P17315831818166433046

namespace A048644

/-- `∑[round(xor(n+1, 2*n+1)/2)-n]` -/
def P17315831818166433046.Spec : Prop :=
  ∀ n, P17315831818166433046.a n = A048644 n

end A048644

/-! ## A048644.P11321588442411328891

`∑[A286548(n)]`
-/

namespace A048644.P11321588442411328891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P11321588442411328891

namespace A048644

/-- `∑[A286548(n)]` -/
def P11321588442411328891.Spec : Prop :=
  ∀ n, P11321588442411328891.a n = A048644 n

end A048644

/-! ## A048644.P9615791347117775662

`∑[A003188(n)-n]`
-/

namespace A048644.P9615791347117775662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P9615791347117775662

namespace A048644

/-- `∑[A003188(n)-n]` -/
def P9615791347117775662.Spec : Prop :=
  ∀ n, P9615791347117775662.a n = A048644 n

end A048644

/-! ## A048644.P16372146895917629860

`A048641(n+1)-∑[n]`
-/

namespace A048644.P16372146895917629860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048641 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048644.P16372146895917629860

namespace A048644

/-- `A048641(n+1)-∑[n]` -/
def P16372146895917629860.Spec : Prop :=
  ∀ n, P16372146895917629860.a n = A048644 n

end A048644

/-! ## A048644.P11856179740073147176

`∑[xor(n, A004526(n))]-∑[n]`
-/

namespace A048644.P11856179740073147176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004526 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A048644.P11856179740073147176

namespace A048644

/-- `∑[xor(n, A004526(n))]-∑[n]` -/
def P11856179740073147176.Spec : Prop :=
  ∀ n, P11856179740073147176.a n = A048644 n

end A048644

/-! ## A048644.P15731754807796846172

`∑[A105081(n+1)-(n+1)]`
-/

namespace A048644.P15731754807796846172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P15731754807796846172

namespace A048644

/-- `∑[A105081(n+1)-(n+1)]` -/
def P15731754807796846172.Spec : Prop :=
  ∀ n, P15731754807796846172.a n = A048644 n

end A048644

/-! ## A048644.P3746246401571198714

`∑[xor(A109613(n)-1, 2*n)/2-n]`
-/

namespace A048644.P3746246401571198714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A109613 n - 1) (2 * n : ℤ) : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P3746246401571198714

namespace A048644

/-- `∑[xor(A109613(n)-1, 2*n)/2-n]` -/
def P3746246401571198714.Spec : Prop :=
  ∀ n, P3746246401571198714.a n = (A048644 n : ℚ)

end A048644

/-! ## A048644.P4665050485866889096

`∑[or(n, 2*n)+A008619(n)-(2*n+1)-n]`
-/

namespace A048644.P4665050485866889096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) + (A008619 n - (2 * n + 1 : ℤ)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P4665050485866889096

namespace A048644

/-- `∑[or(n, 2*n)+A008619(n)-(2*n+1)-n]` -/
def P4665050485866889096.Spec : Prop :=
  ∀ n, P4665050485866889096.a n = A048644 n

end A048644

/-! ## A048644.P3324048193855462853

`∑[A057300(A300838(n))-n]`
-/

namespace A048644.P3324048193855462853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A300838 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P3324048193855462853

namespace A048644

/-- `∑[A057300(A300838(n))-n]` -/
def P3324048193855462853.Spec : Prop :=
  ∀ n, P3324048193855462853.a n = A048644 n

end A048644

/-! ## A048644.P5542305382276014152

`∑[A302844(A163355(n))-n]`
-/

namespace A048644.P5542305382276014152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P5542305382276014152

namespace A048644

/-- `∑[A302844(A163355(n))-n]` -/
def P5542305382276014152.Spec : Prop :=
  ∀ n, P5542305382276014152.a n = A048644 n

end A048644

/-! ## A048644.P12878614948309756216

`∑[A302846(A302843(n))-n]`
-/

namespace A048644.P12878614948309756216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A302843 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P12878614948309756216

namespace A048644

/-- `∑[A302846(A302843(n))-n]` -/
def P12878614948309756216.Spec : Prop :=
  ∀ n, P12878614948309756216.a n = A048644 n

end A048644

/-! ## A048644.P4917720693972386285

`A048641(n+1)%A179865(n+1)`
-/

namespace A048644.P4917720693972386285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048641 (n + 1)) (A179865 (n + 1))

end

end A048644.P4917720693972386285

namespace A048644

/-- `A048641(n+1)%A179865(n+1)` -/
def P4917720693972386285.Spec : Prop :=
  ∀ n, P4917720693972386285.a n = A048644 n

end A048644

/-! ## A048644.P1186368883200873861

`∑[A193231(A234613(n))-n]`
-/

namespace A048644.P1186368883200873861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234613 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048644.P1186368883200873861

namespace A048644

/-- `∑[A193231(A234613(n))-n]` -/
def P1186368883200873861.Spec : Prop :=
  ∀ n, P1186368883200873861.a n = A048644 n

end A048644

/-!
# A048645: Integers with one or two 1-bits in their binary expansion.

The programs for A048645, the canonical program `A048645.P10151414295702732837` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048645 has offset 1).

The definition of A048645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048645.P13153933333519944865

`∑[A232089(abs(1-n))]`
-/

namespace A048645.P13153933333519944865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048645.P13153933333519944865

namespace A048645

/-- `∑[A232089(abs(1-n))]` -/
def P13153933333519944865.Spec : Prop :=
  ∀ n, P13153933333519944865.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P10151414295702732837

`floor(A018900(n+1)/2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A048645

/-- `floor(A018900(n+1)/2)` -/
def P10151414295702732837.Spec : Prop :=
  ∀ n, P10151414295702732837.a n = A048645 (n + 1)

theorem P10151414295702732837.correct : P10151414295702732837.Spec := by
  intro n
  simp only [A048645, Nat.add_sub_cancel]

end A048645

/-! ## A048645.P12810384356134483441

`A232089(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A048645.P12810384356134483441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A232089 (n - 1) + a (n - 1)

end

end A048645.P12810384356134483441

namespace A048645

/-- `A232089(n-1)+a(n-1)` -/
def P12810384356134483441.Spec : Prop :=
  ∀ n, P12810384356134483441.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P7563792635247574655

`A140531(n)+A137688(n)`
-/

namespace A048645.P7563792635247574655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 n + A137688 n

end

end A048645.P7563792635247574655

namespace A048645

/-- `A140531(n)+A137688(n)` -/
def P7563792635247574655.Spec : Prop :=
  ∀ n, P7563792635247574655.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P2110886335308049292

`A173786(n)-A232089(n)`
-/

namespace A048645.P2110886335308049292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n - A232089 n

end

end A048645.P2110886335308049292

namespace A048645

/-- `A173786(n)-A232089(n)` -/
def P2110886335308049292.Spec : Prop :=
  ∀ n, P2110886335308049292.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P15260916107903649649

`∪[A000079(n), A173786(n)]`
-/

namespace A048645.P15260916107903649649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048645.P15260916107903649649

namespace A048645

/-- `∪[A000079(n), A173786(n)]` -/
def P15260916107903649649.Spec : Prop :=
  ∀ n, (P15260916107903649649.a n : ℤ) = A048645 (n + 1)

end A048645

/-! ## A048645.P5422961943101402184

`∪[A000302(n), A173786(n)]`
-/

namespace A048645.P5422961943101402184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048645.P5422961943101402184

namespace A048645

/-- `∪[A000302(n), A173786(n)]` -/
def P5422961943101402184.Spec : Prop :=
  ∀ n, (P5422961943101402184.a n : ℤ) = A048645 (n + 1)

end A048645

/-! ## A048645.P15524411723882440211

`∪[A001901(n), A173786(n)]`
-/

namespace A048645.P15524411723882440211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048645.P15524411723882440211

namespace A048645

/-- `∪[A001901(n), A173786(n)]` -/
def P15524411723882440211.Spec : Prop :=
  ∀ n, (P15524411723882440211.a n : ℤ) = A048645 (n + 1)

end A048645

/-! ## A048645.P978006210126356946

`∪[A002001(n), A173786(n)]`
-/

namespace A048645.P978006210126356946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048645.P978006210126356946

namespace A048645

/-- `∪[A002001(n), A173786(n)]` -/
def P978006210126356946.Spec : Prop :=
  ∀ n, (P978006210126356946.a n : ℤ) = A048645 (n + 1)

end A048645

/-! ## A048645.P3578307737892274695

`∪[A003945(n), A173786(n)]`
-/

namespace A048645.P3578307737892274695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048645.P3578307737892274695

namespace A048645

/-- `∪[A003945(n), A173786(n)]` -/
def P3578307737892274695.Spec : Prop :=
  ∀ n, (P3578307737892274695.a n : ℤ) = A048645 (n + 1)

end A048645

/-! ## A048645.P8824222698446562056

`∪[A003947(n), A173786(n)]`
-/

namespace A048645.P8824222698446562056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048645.P8824222698446562056

namespace A048645

/-- `∪[A003947(n), A173786(n)]` -/
def P8824222698446562056.Spec : Prop :=
  ∀ n, (P8824222698446562056.a n : ℤ) = A048645 (n + 1)

end A048645

/-! ## A048645.P3931126706815722971

`∪[A007582(n), A173786(n)]`
-/

namespace A048645.P3931126706815722971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A048645.P3931126706815722971

namespace A048645

/-- `∪[A007582(n), A173786(n)]` -/
def P3931126706815722971.Spec : Prop :=
  ∀ n, (P3931126706815722971.a n : ℤ) = A048645 (n + 1)

end A048645

/-! ## A048645.P5304817794944356101

`A099627(n)+1-A232089(n)`
-/

namespace A048645.P5304817794944356101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n + (1 - A232089 n)

end

end A048645.P5304817794944356101

namespace A048645

/-- `A099627(n)+1-A232089(n)` -/
def P5304817794944356101.Spec : Prop :=
  ∀ n, P5304817794944356101.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P9565332995961852601

`A140531(n)+A140513(n)/2`
-/

namespace A048645.P9565332995961852601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140531 n : ℚ) + (A140513 n : ℚ) / 2

end

end A048645.P9565332995961852601

namespace A048645

/-- `A140531(n)+A140513(n)/2` -/
def P9565332995961852601.Spec : Prop :=
  ∀ n, P9565332995961852601.a n = (A048645 (n + 1) : ℚ)

end A048645

/-! ## A048645.P9624159799549066213

`∑[A057728(A056942(n)+2-n)]`
-/

namespace A048645.P9624159799549066213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (A056942 n + (2 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048645.P9624159799549066213

namespace A048645

/-- `∑[A057728(A056942(n)+2-n)]` -/
def P9624159799549066213.Spec : Prop :=
  ∀ n, P9624159799549066213.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P5252937593058837811

`∑[A057728(2-(n-A056942(n)))]`
-/

namespace A048645.P5252937593058837811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (2 - ((n : ℤ) - A056942 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048645.P5252937593058837811

namespace A048645

/-- `∑[A057728(2-(n-A056942(n)))]` -/
def P5252937593058837811.Spec : Prop :=
  ∀ n, P5252937593058837811.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P1600925712861499935

`(A018900(n+1)-A010054(n))/2`
-/

namespace A048645.P1600925712861499935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018900 (n + 1) - A010054 n : ℚ) / 2

end

end A048645.P1600925712861499935

namespace A048645

/-- `(A018900(n+1)-A010054(n))/2` -/
def P1600925712861499935.Spec : Prop :=
  ∀ n, P1600925712861499935.a n = (A048645 (n + 1) : ℚ)

end A048645

/-! ## A048645.P10700380225609462042

`A059268(n)+A173787(n)+A140531(n)`
-/

namespace A048645.P10700380225609462042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A173787 n + A140531 n)

end

end A048645.P10700380225609462042

namespace A048645

/-- `A059268(n)+A173787(n)+A140531(n)` -/
def P10700380225609462042.Spec : Prop :=
  ∀ n, P10700380225609462042.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P15252928811917944290

`A140531(n)+A173786(n)-A059268(n)`
-/

namespace A048645.P15252928811917944290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 n + (A173786 n - A059268 n)

end

end A048645.P15252928811917944290

namespace A048645

/-- `A140531(n)+A173786(n)-A059268(n)` -/
def P15252928811917944290.Spec : Prop :=
  ∀ n, P15252928811917944290.a n = A048645 (n + 1)

end A048645

/-! ## A048645.P9349408170615266911

`A140531(n)+A059268(n)*A130321(n)`
-/

namespace A048645.P9349408170615266911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 n + A059268 n * A130321 n

end

end A048645.P9349408170615266911

namespace A048645

/-- `A140531(n)+A059268(n)*A130321(n)` -/
def P9349408170615266911.Spec : Prop :=
  ∀ n, P9349408170615266911.a n = A048645 (n + 1)

end A048645

/-!
# A048646: Primes p such that the decimal digits of p^2 can be partitioned into two or more nonzero squares.

The programs for A048646, there is no canonical definition to state claims against.
-/

/-! ## A048646.P4466741659843304752

`p?[A048653(n+1)]`
-/

namespace A048646.P4466741659843304752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048646.P4466741659843304752

/-! ## A048646.P3226423806584185430

`p?[record[A048653(A052938(n))]]`
-/

namespace A048646.P3226423806584185430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048646.P3226423806584185430

/-! ## A048646.P10111812821155067634

`∩[A048653(n+1), A344045(n+1)]`
-/

namespace A048646.P10111812821155067634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048646.P10111812821155067634

/-! ## A048646.P3449088066081805868

`∩[A048653(n+1), A216885(n+1)]`
-/

namespace A048646.P3449088066081805868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048646.P3449088066081805868

/-! ## A048646.P10220933477210195691

`∩[A000040(n+1), A048653(n+1)]`
-/

namespace A048646.P10220933477210195691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048646.P10220933477210195691

/-! ## A048646.P12298846275282886033

`∩[A004139(n+1), A048653(n+1)]`
-/

namespace A048646.P12298846275282886033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048646.P12298846275282886033

/-! ## A048646.P14886859561499470302

`∩[A006005(n+1), A048653(n+1)]`
-/

namespace A048646.P14886859561499470302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048646.P14886859561499470302

/-! ## A048646.P18030642895665042182

`∩[A008578(n+1), A048653(n+1)]`
-/

namespace A048646.P18030642895665042182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048646.P18030642895665042182

/-! ## A048646.P6449494397876517275

`∩[A045319(n+1), A048653(n+1)]`
-/

namespace A048646.P6449494397876517275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048646.P6449494397876517275

/-! ## A048646.P317278340861575299

`∩[A045344(n+1), A048653(n+1)]`
-/

namespace A048646.P317278340861575299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048646.P317278340861575299

/-!
# A048647: Write n in base 4, then replace each digit '1' with '3' and vice versa and convert back to decimal.

The programs for A048647, the canonical program `A048647.P4624465745581970192` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048647 has offset 0).

The definition of A048647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048647.P4624465745581970192

`xor(n, 2*n)+2*(floor(n/2)-a(floor(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048647

/-- `xor(n, 2*n)+2*(floor(n/2)-a(floor(n/2)))` -/
def P4624465745581970192.Spec : Prop :=
  ∀ n, P4624465745581970192.a n = A048647 n

theorem P4624465745581970192.correct : P4624465745581970192.Spec := by
  intro n
  simp only [A048647]

end A048647

/-! ## A048647.P16551467365987436696

`xor(n, A004514(n))`
-/

namespace A048647.P16551467365987436696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004514 n)

end

end A048647.P16551467365987436696

namespace A048647

/-- `xor(n, A004514(n))` -/
def P16551467365987436696.Spec : Prop :=
  ∀ n, P16551467365987436696.a n = A048647 n

end A048647

/-! ## A048647.P7406950703564677795

`xor(n, A088442(n)-1)`
-/

namespace A048647.P7406950703564677795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A088442 n - 1)

end

end A048647.P7406950703564677795

namespace A048647

/-- `xor(n, A088442(n)-1)` -/
def P7406950703564677795.Spec : Prop :=
  ∀ n, P7406950703564677795.a n = A048647 n

end A048647

/-! ## A048647.P3096518869181868454

`xor(n, 2*A063694(n))`
-/

namespace A048647.P3096518869181868454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * A063694 n)

end

end A048647.P3096518869181868454

namespace A048647

/-- `xor(n, 2*A063694(n))` -/
def P3096518869181868454.Spec : Prop :=
  ∀ n, P3096518869181868454.a n = A048647 n

end A048647

/-! ## A048647.P7264288678224209142

`xor(n, A053985(n)+n)`
-/

namespace A048647.P7264288678224209142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A053985 n + (n : ℤ))

end

end A048647.P7264288678224209142

namespace A048647

/-- `xor(n, A053985(n)+n)` -/
def P7264288678224209142.Spec : Prop :=
  ∀ n, P7264288678224209142.a n = A048647 n

end A048647

/-! ## A048647.P13840951110764754058

`A057300(A004468(n))`
-/

namespace A048647.P13840951110764754058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A004468 n).toNat

end

end A048647.P13840951110764754058

namespace A048647

/-- `A057300(A004468(n))` -/
def P13840951110764754058.Spec : Prop :=
  ∀ n, P13840951110764754058.a n = A048647 n

end A048647

/-! ## A048647.P7935920541717278155

`A006015(A057300(n))`
-/

namespace A048647.P7935920541717278155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A057300 n).toNat

end

end A048647.P7935920541717278155

namespace A048647

/-- `A006015(A057300(n))` -/
def P7935920541717278155.Spec : Prop :=
  ∀ n, P7935920541717278155.a n = A048647 n

end A048647

/-! ## A048647.P16198463931549449198

`A004468(A163241(n))`
-/

namespace A048647.P16198463931549449198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A163241 n).toNat

end

end A048647.P16198463931549449198

namespace A048647

/-- `A004468(A163241(n))` -/
def P16198463931549449198.Spec : Prop :=
  ∀ n, P16198463931549449198.a n = A048647 n

end A048647

/-! ## A048647.P1976690137122235678

`xor(A004442(n), A088442(n))`
-/

namespace A048647.P1976690137122235678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004442 n) (A088442 n)

end

end A048647.P1976690137122235678

namespace A048647

/-- `xor(A004442(n), A088442(n))` -/
def P1976690137122235678.Spec : Prop :=
  ∀ n, P1976690137122235678.a n = A048647 n

end A048647

/-! ## A048647.P8138707075860943231

`xor(n, A057300(A063694(n)))`
-/

namespace A048647.P8138707075860943231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057300 (A063694 n).toNat)

end

end A048647.P8138707075860943231

namespace A048647

/-- `xor(n, A057300(A063694(n)))` -/
def P8138707075860943231.Spec : Prop :=
  ∀ n, P8138707075860943231.a n = A048647 n

end A048647

/-! ## A048647.P8405198998680150224

`xor(A057300(n), A163241(n))`
-/

namespace A048647.P8405198998680150224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057300 n) (A163241 n)

end

end A048647.P8405198998680150224

namespace A048647

/-- `xor(A057300(n), A163241(n))` -/
def P8405198998680150224.Spec : Prop :=
  ∀ n, P8405198998680150224.a n = A048647 n

end A048647

/-! ## A048647.P6272092685877563852

`xor(n, 2*A000695(A059905(n)))`
-/

namespace A048647.P6272092685877563852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * A000695 (A059905 n).toNat)

end

end A048647.P6272092685877563852

namespace A048647

/-- `xor(n, 2*A000695(A059905(n)))` -/
def P6272092685877563852.Spec : Prop :=
  ∀ n, P6272092685877563852.a n = A048647 n

end A048647

/-! ## A048647.P5259400913268113376

`xor(n, A006015(n-A063695(n)))`
-/

namespace A048647.P5259400913268113376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A006015 ((n : ℤ) - A063695 n).toNat)

end

end A048647.P5259400913268113376

namespace A048647

/-- `xor(n, A006015(n-A063695(n)))` -/
def P5259400913268113376.Spec : Prop :=
  ∀ n, P5259400913268113376.a n = A048647 n

end A048647

/-! ## A048647.P11675036860975362536

`A163485(A057300(A163486(n)))`
-/

namespace A048647.P11675036860975362536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 (A057300 (A163486 n).toNat).toNat

end

end A048647.P11675036860975362536

namespace A048647

/-- `A163485(A057300(A163486(n)))` -/
def P11675036860975362536.Spec : Prop :=
  ∀ n, P11675036860975362536.a n = A048647 n

end A048647

/-! ## A048647.P14806960150560134211

`A006015(xor(A006015(n), A063695(n)))`
-/

namespace A048647.P14806960150560134211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (Int.xor (A006015 n) (A063695 n)).toNat

end

end A048647.P14806960150560134211

namespace A048647

/-- `A006015(xor(A006015(n), A063695(n)))` -/
def P14806960150560134211.Spec : Prop :=
  ∀ n, P14806960150560134211.a n = A048647 n

end A048647

/-! ## A048647.P7084238798347516456

`2*A004468(n)-A004468(A063694(n))`
-/

namespace A048647.P7084238798347516456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004468 n - A004468 (A063694 n).toNat

end

end A048647.P7084238798347516456

namespace A048647

/-- `2*A004468(n)-A004468(A063694(n))` -/
def P7084238798347516456.Spec : Prop :=
  ∀ n, P7084238798347516456.a n = A048647 n

end A048647

/-! ## A048647.P8963241296087039960

`A006015(n)+A006015(A163241(n))-n`
-/

namespace A048647.P8963241296087039960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n + (A006015 (A163241 n).toNat - (n : ℤ))

end

end A048647.P8963241296087039960

namespace A048647

/-- `A006015(n)+A006015(A163241(n))-n` -/
def P8963241296087039960.Spec : Prop :=
  ∀ n, P8963241296087039960.a n = A048647 n

end A048647

/-! ## A048647.P5532911159340761235

`A063694(n)+2*A063694(A003188(n))`
-/

namespace A048647.P5532911159340761235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n + 2 * A063694 (A003188 n).toNat

end

end A048647.P5532911159340761235

namespace A048647

/-- `A063694(n)+2*A063694(A003188(n))` -/
def P5532911159340761235.Spec : Prop :=
  ∀ n, P5532911159340761235.a n = A048647 n

end A048647

/-! ## A048647.P15406959520036037734

`A163241(A006015(n))`
-/

namespace A048647.P15406959520036037734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A006015 n).toNat

end

end A048647.P15406959520036037734

namespace A048647

/-- `A163241(A006015(n))` -/
def P15406959520036037734.Spec : Prop :=
  ∀ n, P15406959520036037734.a n = A048647 n

end A048647

/-! ## A048647.P5884266864205352473

`A063695(A063694(n)+n)+A063694(n)`
-/

namespace A048647.P5884266864205352473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 (A063694 n + (n : ℤ)).toNat + A063694 n

end

end A048647.P5884266864205352473

namespace A048647

/-- `A063695(A063694(n)+n)+A063694(n)` -/
def P5884266864205352473.Spec : Prop :=
  ∀ n, P5884266864205352473.a n = A048647 n

end A048647

/-!
# A048648: Order of n-th stable homotopy group of spheres.

The programs for A048648, there is no canonical definition to state claims against.
-/

/-! ## A048648.P3539655414128895988

`A112624(A001358(n+1)*A061978(n+1))`
-/

namespace A048648.P3539655414128895988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A001358 (n + 1) * A061978 (n + 1)).toNat

end

end A048648.P3539655414128895988

/-! ## A048648.P13644766471450389723

`A246660(A127632(n)*A137613(3*(n+1)))`
-/

namespace A048648.P13644766471450389723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 (A127632 n * A137613 (3 * (n + 1))).toNat

end

end A048648.P13644766471450389723

/-! ## A048648.P3276243696701152376

`A206497(A002057(n+1))-A025430(2*n+1)`
-/

namespace A048648.P3276243696701152376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206497 (A002057 (n + 1)).toNat - A025430 (2 * n + 1)

end

end A048648.P3276243696701152376

/-!
# A048653: Numbers k such that the decimal digits of k^2 can be partitioned into two or more nonzero squares.

The programs for A048653, there is no canonical definition to state claims against.
-/

/-! ## A048653.P14104339582115051564

`A039958(A009404(n+1))`
-/

namespace A048653.P14104339582115051564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039958 (A009404 (n + 1)).toNat

end

end A048653.P14104339582115051564

/-! ## A048653.P5163278037527068909

`A000188(2*A009404(n+1))`
-/

namespace A048653.P5163278037527068909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A009404 (n + 1)).toNat

end

end A048653.P5163278037527068909

/-! ## A048653.P10784596009317524310

`A002260(2*A009404(n+1))`
-/

namespace A048653.P10784596009317524310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A009404 (n + 1)).toNat

end

end A048653.P10784596009317524310

/-! ## A048653.P6500570498599285777

`A002262(2*A009404(n+1))`
-/

namespace A048653.P6500570498599285777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A009404 (n + 1)).toNat

end

end A048653.P6500570498599285777

/-! ## A048653.P13176744482378122276

`A346704(2*A009404(n+1))`
-/

namespace A048653.P13176744482378122276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (2 * A009404 (n + 1)).toNat

end

end A048653.P13176744482378122276

/-!
# A048654: a(n) = 2*a(n-1) + a(n-2); a(0)=1, a(1)=4.

The programs for A048654, the canonical program `A048654.P7288807868170625605` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048654 has offset 0).

The definition of A048654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A048654.P7288807868170625605`, by `A048654.P7288807868170625605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048654.P7288807868170625605

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048654

/-- `2*a(n-1)+a(n-2)` -/
def P7288807868170625605.Spec : Prop :=
  ∀ n, (P7288807868170625605.a n : ℤ) = A048654 n

theorem P7288807868170625605.correct : P7288807868170625605.Spec := by
  intro n
  simp only [A048654]

end A048654

/-! ## A048654.P12201753155953403689

`2*A000129(n+2)-3*A000129(n+1)`
-/

namespace A048654.P12201753155953403689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 (n + 2) - 3 * A000129 (n + 1)

end

end A048654.P12201753155953403689

namespace A048654

/-- `2*A000129(n+2)-3*A000129(n+1)` -/
def P12201753155953403689.Spec : Prop :=
  ∀ n, P12201753155953403689.a n = A048654 n

end A048654

/-! ## A048654.P6915885635091715013

`ogf((1+2x)/(1-2x-x^2))`
-/

namespace A048654.P6915885635091715013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, -1] n

end

end A048654.P6915885635091715013

namespace A048654

/-- `ogf((1+2x)/(1-2x-x^2))` -/
def P6915885635091715013.Spec : Prop :=
  ∀ n, P6915885635091715013.a n = A048654 n

end A048654

/-! ## A048654.P11390378932638883240

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A048654.P11390378932638883240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A048654.P11390378932638883240

namespace A048654

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P11390378932638883240.Spec : Prop :=
  ∀ n, (P11390378932638883240.a n : ℤ) = A048654 n

theorem P11390378932638883240.correct : P11390378932638883240.Spec := by
  intro n
  simp only [A048654, Nat.add_sub_cancel, A048654.P11390378932638883240.a, A048654.P7288807868170625605.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048654

/-! ## A048654.P11101431047490186042

`2-(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A048654.P11101431047490186042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A048654.P11101431047490186042

namespace A048654

/-- `2-(2*(1-a(n-1))-a(n-2))` -/
def P11101431047490186042.Spec : Prop :=
  ∀ n, P11101431047490186042.a n = A048654 n

end A048654

/-! ## A048654.P11374513736999556334

`a(n-2)-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=4`
-/

namespace A048654.P11374513736999556334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A048654.P11374513736999556334

namespace A048654

/-- `a(n-2)-a(n-1)/(1/2-1)` -/
def P11374513736999556334.Spec : Prop :=
  ∀ n, P11374513736999556334.a n = (A048654 n : ℚ)

end A048654

/-! ## A048654.P5312723617948536688

`Δ[A098790(n)]`
-/

namespace A048654.P5312723617948536688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048654.P5312723617948536688

namespace A048654

/-- `Δ[A098790(n)]` -/
def P5312723617948536688.Spec : Prop :=
  ∀ n, P5312723617948536688.a n = A048654 n

end A048654

/-! ## A048654.P8589449663996431417

`∑[abs(A135532(n))]`
-/

namespace A048654.P8589449663996431417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135532 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048654.P8589449663996431417

namespace A048654

/-- `∑[abs(A135532(n))]` -/
def P8589449663996431417.Spec : Prop :=
  ∀ n, P8589449663996431417.a n = A048654 n

end A048654

/-! ## A048654.P16313655519618717487

`Δ[A353580(n+1)]`
-/

namespace A048654.P16313655519618717487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048654.P16313655519618717487

namespace A048654

/-- `Δ[A353580(n+1)]` -/
def P16313655519618717487.Spec : Prop :=
  ∀ n, P16313655519618717487.a n = A048654 n

end A048654

/-! ## A048654.P7748335515438380135

`A266504(2*(n+1))`
-/

namespace A048654.P7748335515438380135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * (n + 1))

end

end A048654.P7748335515438380135

namespace A048654

/-- `A266504(2*(n+1))` -/
def P7748335515438380135.Spec : Prop :=
  ∀ n, P7748335515438380135.a n = A048654 n

end A048654

/-! ## A048654.P709401779316465585

`A266506(4*(n+1))`
-/

namespace A048654.P709401779316465585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (4 * (n + 1))

end

end A048654.P709401779316465585

namespace A048654

/-- `A266506(4*(n+1))` -/
def P709401779316465585.Spec : Prop :=
  ∀ n, P709401779316465585.a n = A048654 n

end A048654

/-! ## A048654.P14526548611348701982

`∑[abs(A266505(2*n))]`
-/

namespace A048654.P14526548611348701982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266505 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048654.P14526548611348701982

namespace A048654

/-- `∑[abs(A266505(2*n))]` -/
def P14526548611348701982.Spec : Prop :=
  ∀ n, P14526548611348701982.a n = A048654 n

end A048654

/-! ## A048654.P7573924947648919393

`A135532(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A048654.P7573924947648919393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135532 (n + 1) - a (n - 1)

end

end A048654.P7573924947648919393

namespace A048654

/-- `A135532(n+1)-a(n-1)` -/
def P7573924947648919393.Spec : Prop :=
  ∀ n, P7573924947648919393.a n = A048654 n

end A048654

/-! ## A048654.P6064850619825935990

`A163271(n+1)+∑[round((sqrt(2)+1)^n/2)]`
-/

namespace A048654.P6064850619825935990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048654.P6064850619825935990

namespace A048654

/-- `A163271(n+1)+∑[round((sqrt(2)+1)^n/2)]` -/
def P6064850619825935990.Spec : Prop :=
  ∀ n, P6064850619825935990.a n = A048654 n

end A048654

/-! ## A048654.P11287435027955665284

`∑[A266505(A004277(n))]`
-/

namespace A048654.P11287435027955665284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048654.P11287435027955665284

namespace A048654

/-- `∑[A266505(A004277(n))]` -/
def P11287435027955665284.Spec : Prop :=
  ∀ n, P11287435027955665284.a n = A048654 n

end A048654

/-! ## A048654.P5763620439576311687

`A078057(n)+A000129(n)`
-/

namespace A048654.P5763620439576311687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + A000129 n

end

end A048654.P5763620439576311687

namespace A048654

/-- `A078057(n)+A000129(n)` -/
def P5763620439576311687.Spec : Prop :=
  ∀ n, P5763620439576311687.a n = A048654 n

end A048654

/-! ## A048654.P12212280179263246276

`A078343(n)+A002203(n)`
-/

namespace A048654.P12212280179263246276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + A002203 n

end

end A048654.P12212280179263246276

namespace A048654

/-- `A078343(n)+A002203(n)` -/
def P12212280179263246276.Spec : Prop :=
  ∀ n, P12212280179263246276.a n = A048654 n

end A048654

/-! ## A048654.P11338279187662051273

`A106515(n)+A001932(n)`
-/

namespace A048654.P11338279187662051273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106515 n + A001932 n

end

end A048654.P11338279187662051273

namespace A048654

/-- `A106515(n)+A001932(n)` -/
def P11338279187662051273.Spec : Prop :=
  ∀ n, P11338279187662051273.a n = A048654 n

end A048654

/-! ## A048654.P7758647634318126890

`A182143(n)+A111955(n)`
-/

namespace A048654.P7758647634318126890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 n + A111955 n

end

end A048654.P7758647634318126890

namespace A048654

/-- `A182143(n)+A111955(n)` -/
def P7758647634318126890.Spec : Prop :=
  ∀ n, P7758647634318126890.a n = A048654 n

end A048654

/-! ## A048654.P10902297783911950089

`A353580(n)+A098790(n)`
-/

namespace A048654.P10902297783911950089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 n + A098790 n

end

end A048654.P10902297783911950089

namespace A048654

/-- `A353580(n)+A098790(n)` -/
def P10902297783911950089.Spec : Prop :=
  ∀ n, P10902297783911950089.a n = A048654 n

end A048654

/-!
# A048655: Generalized Pellian with second term equal to 5.

The programs for A048655, the canonical program `A048655.P1606543997500894648` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048655 has offset 0).

The definition of A048655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048655.P1606543997500894648

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048655

/-- `2*a(n-1)+a(n-2)` -/
def P1606543997500894648.Spec : Prop :=
  ∀ n, (P1606543997500894648.a n : ℤ) = A048655 n

theorem P1606543997500894648.correct : P1606543997500894648.Spec := by
  intro n
  simp only [A048655]

end A048655

/-! ## A048655.P8742075867309529971

`ogf((1+3x)/(1-2x-x^2))`
-/

namespace A048655.P8742075867309529971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, -1] n

end

end A048655.P8742075867309529971

namespace A048655

/-- `ogf((1+3x)/(1-2x-x^2))` -/
def P8742075867309529971.Spec : Prop :=
  ∀ n, P8742075867309529971.a n = A048655 n

end A048655

/-! ## A048655.P17180730791321136705

`a(n-2)+lcm(2, a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A048655.P17180730791321136705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1))

end

end A048655.P17180730791321136705

namespace A048655

/-- `a(n-2)+lcm(2, a(n-1))` -/
def P17180730791321136705.Spec : Prop :=
  ∀ n, (P17180730791321136705.a n : ℤ) = A048655 n

end A048655

/-! ## A048655.P2253118207542147909

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A048655.P2253118207542147909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A048655.P2253118207542147909

namespace A048655

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P2253118207542147909.Spec : Prop :=
  ∀ n, (P2253118207542147909.a n : ℤ) = A048655 n

theorem P2253118207542147909.correct : P2253118207542147909.Spec := by
  intro n
  simp only [A048655, Nat.add_sub_cancel, A048655.P2253118207542147909.a, A048655.P1606543997500894648.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048655

/-! ## A048655.P15961720707800252905

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A048655.P15961720707800252905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A048655.P15961720707800252905

namespace A048655

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P15961720707800252905.Spec : Prop :=
  ∀ n, P15961720707800252905.a n = A048655 n

end A048655

/-! ## A048655.P16880319393543989214

`A135246(2*n)`
-/

namespace A048655.P16880319393543989214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135246 (2 * n)

end

end A048655.P16880319393543989214

namespace A048655

/-- `A135246(2*n)` -/
def P16880319393543989214.Spec : Prop :=
  ∀ n, P16880319393543989214.a n = A048655 n

end A048655

/-! ## A048655.P12672354850943108496

`A266505(Δ[n²])`
-/

namespace A048655.P12672354850943108496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A048655.P12672354850943108496

namespace A048655

/-- `A266505(Δ[n²])` -/
def P12672354850943108496.Spec : Prop :=
  ∀ n, P12672354850943108496.a n = A048655 n

end A048655

/-! ## A048655.P8778461714648694003

`abs(A266505(2*n+1))`
-/

namespace A048655.P8778461714648694003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266505 (2 * n + 1)|

end

end A048655.P8778461714648694003

namespace A048655

/-- `abs(A266505(2*n+1))` -/
def P8778461714648694003.Spec : Prop :=
  ∀ n, P8778461714648694003.a n = A048655 n

end A048655

/-! ## A048655.P4034315521068402100

`A266506(3*(n+1)+n)`
-/

namespace A048655.P4034315521068402100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (3 * (n + 1) + n)

end

end A048655.P4034315521068402100

namespace A048655

/-- `A266506(3*(n+1)+n)` -/
def P4034315521068402100.Spec : Prop :=
  ∀ n, P4034315521068402100.a n = A048655 n

end A048655

/-! ## A048655.P9442748384886902689

`A265107(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A048655.P9442748384886902689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265107 (n + 2) - a (n - 1)

end

end A048655.P9442748384886902689

namespace A048655

/-- `A265107(n+2)-a(n-1)` -/
def P9442748384886902689.Spec : Prop :=
  ∀ n, P9442748384886902689.a n = A048655 n

end A048655

/-! ## A048655.P3191203563555253594

`Δ[A002203(n)]+round((sqrt(2)+1)^n/2)`
-/

namespace A048655.P3191203563555253594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2)

end

end A048655.P3191203563555253594

namespace A048655

/-- `Δ[A002203(n)]+round((sqrt(2)+1)^n/2)` -/
def P3191203563555253594.Spec : Prop :=
  ∀ n, P3191203563555253594.a n = A048655 n

end A048655

/-! ## A048655.P14066656145971233472

`Δ[A100227(n)]+round((sqrt(2)+1)^n/2)`
-/

namespace A048655.P14066656145971233472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2)

end

end A048655.P14066656145971233472

namespace A048655

/-- `Δ[A100227(n)]+round((sqrt(2)+1)^n/2)` -/
def P14066656145971233472.Spec : Prop :=
  ∀ n, P14066656145971233472.a n = A048655 n

end A048655

/-! ## A048655.P6737922655853099734

`A048654(n)+A000129(n)`
-/

namespace A048655.P6737922655853099734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + A000129 n

end

end A048655.P6737922655853099734

namespace A048655

/-- `A048654(n)+A000129(n)` -/
def P6737922655853099734.Spec : Prop :=
  ∀ n, P6737922655853099734.a n = A048655 n

end A048655

/-! ## A048655.P10299414676951034953

`A135532(n)+A002203(n)`
-/

namespace A048655.P10299414676951034953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n + A002203 n

end

end A048655.P10299414676951034953

namespace A048655

/-- `A135532(n)+A002203(n)` -/
def P10299414676951034953.Spec : Prop :=
  ∀ n, P10299414676951034953.a n = A048655 n

end A048655

/-! ## A048655.P12950585997108372414

`A353580(n)+A048739(n)`
-/

namespace A048655.P12950585997108372414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 n + A048739 n

end

end A048655.P12950585997108372414

namespace A048655

/-- `A353580(n)+A048739(n)` -/
def P12950585997108372414.Spec : Prop :=
  ∀ n, P12950585997108372414.a n = A048655 n

end A048655

/-! ## A048655.P18349050506170021188

`A048693(n)-A000129(n)`
-/

namespace A048655.P18349050506170021188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n - A000129 n

end

end A048655.P18349050506170021188

namespace A048655

/-- `A048693(n)-A000129(n)` -/
def P18349050506170021188.Spec : Prop :=
  ∀ n, P18349050506170021188.a n = A048655 n

end A048655

/-! ## A048655.P3396611210234791315

`A001333(n)+Δ[A002203(n)]`
-/

namespace A048655.P3396611210234791315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f1 (n + 1) - f1 n)

end

end A048655.P3396611210234791315

namespace A048655

/-- `A001333(n)+Δ[A002203(n)]` -/
def P3396611210234791315.Spec : Prop :=
  ∀ n, P3396611210234791315.a n = A048655 n

end A048655

/-! ## A048655.P2849579508407496483

`A078057(n)+Δ[A001333(n)]`
-/

namespace A048655.P2849579508407496483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (f1 (n + 1) - f1 n)

end

end A048655.P2849579508407496483

namespace A048655

/-- `A078057(n)+Δ[A001333(n)]` -/
def P2849579508407496483.Spec : Prop :=
  ∀ n, P2849579508407496483.a n = A048655 n

end A048655

/-! ## A048655.P4293195222234584089

`A001333(n)+Δ[A100227(n)]`
-/

namespace A048655.P4293195222234584089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f1 (n + 1) - f1 n)

end

end A048655.P4293195222234584089

namespace A048655

/-- `A001333(n)+Δ[A100227(n)]` -/
def P4293195222234584089.Spec : Prop :=
  ∀ n, P4293195222234584089.a n = A048655 n

end A048655

/-! ## A048655.P11574397032131654757

`A078343(n+1)+A078343(n)`
-/

namespace A048655.P11574397032131654757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1) + A078343 n

end

end A048655.P11574397032131654757

namespace A048655

/-- `A078343(n+1)+A078343(n)` -/
def P11574397032131654757.Spec : Prop :=
  ∀ n, P11574397032131654757.a n = A048655 n

end A048655

/-!
# A048656: a(n) is the number of unitary (and also of squarefree) divisors of n!.

The programs for A048656, the canonical program `A048656.P10913799290874468636` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048656 has offset 1).

The definition of A048656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048656.P10913799290874468636

`2^A000720(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048656

/-- `2^A000720(n+1)` -/
def P10913799290874468636.Spec : Prop :=
  ∀ n, P10913799290874468636.a n = (A048656 (n + 1) : ℚ)

end A048656

/-! ## A048656.P7060865208504442006

`2^∑[∑{p}[n+1, val(#, n+1)]]`
-/

namespace A048656.P7060865208504442006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048656.P7060865208504442006

namespace A048656

/-- `2^∑[∑{p}[n+1, val(#, n+1)]]` -/
def P7060865208504442006.Spec : Prop :=
  ∀ n, (P7060865208504442006.a n : ℤ) = A048656 (n + 1)

end A048656

/-! ## A048656.P15054098391869603123

`2^∑[∑{p}[n+1, C(#, n+1)]]`
-/

namespace A048656.P15054098391869603123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048656.P15054098391869603123

namespace A048656

/-- `2^∑[∑{p}[n+1, C(#, n+1)]]` -/
def P15054098391869603123.Spec : Prop :=
  ∀ n, (P15054098391869603123.a n : ℤ) = A048656 (n + 1)

end A048656

/-! ## A048656.P13999578546965744614

`∏[Δ[A095117(n)]]`
-/

namespace A048656.P13999578546965744614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P13999578546965744614

namespace A048656

/-- `∏[Δ[A095117(n)]]` -/
def P13999578546965744614.Spec : Prop :=
  ∀ n, P13999578546965744614.a n = A048656 (n + 1)

end A048656

/-! ## A048656.P8602927156321553847

`∏[ceil(ratio[A151800(n)])]`
-/

namespace A048656.P8602927156321553847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P8602927156321553847

namespace A048656

/-- `∏[ceil(ratio[A151800(n)])]` -/
def P8602927156321553847.Spec : Prop :=
  ∀ n, P8602927156321553847.a n = A048656 (n + 1)

end A048656

/-! ## A048656.P1733918044883981018

`A357215(n+1)+1`
-/

namespace A048656.P1733918044883981018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357215 (n + 1) + 1

end

end A048656.P1733918044883981018

namespace A048656

/-- `A357215(n+1)+1` -/
def P1733918044883981018.Spec : Prop :=
  ∀ n, P1733918044883981018.a n = A048656 (n + 1)

end A048656

/-! ## A048656.P13087795629066476376

`2^A230980(n+1)`
-/

namespace A048656.P13087795629066476376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A230980 (n + 1) : ℤ)

end

end A048656.P13087795629066476376

namespace A048656

/-- `2^A230980(n+1)` -/
def P13087795629066476376.Spec : Prop :=
  ∀ n, P13087795629066476376.a n = (A048656 (n + 1) : ℚ)

end A048656

/-! ## A048656.P10946885931082244917

`∏[ceil(2/A013632(n))]`
-/

namespace A048656.P10946885931082244917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A013632 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P10946885931082244917

namespace A048656

/-- `∏[ceil(2/A013632(n))]` -/
def P10946885931082244917.Spec : Prop :=
  ∀ n, P10946885931082244917.a n = A048656 (n + 1)

end A048656

/-! ## A048656.P8799721687335815642

`∏[Δ[A064427(n+1)]]`
-/

namespace A048656.P8799721687335815642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P8799721687335815642

namespace A048656

/-- `∏[Δ[A064427(n+1)]]` -/
def P8799721687335815642.Spec : Prop :=
  ∀ n, P8799721687335815642.a n = A048656 (n + 1)

end A048656

/-! ## A048656.P14922083901667447145

`∏[A010051(n+1)+1]`
-/

namespace A048656.P14922083901667447145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P14922083901667447145

namespace A048656

/-- `∏[A010051(n+1)+1]` -/
def P14922083901667447145.Spec : Prop :=
  ∀ n, P14922083901667447145.a n = A048656 (n + 1)

end A048656

/-! ## A048656.P12045197508925833654

`∏[2-A005171(n+1)]`
-/

namespace A048656.P12045197508925833654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P12045197508925833654

namespace A048656

/-- `∏[2-A005171(n+1)]` -/
def P12045197508925833654.Spec : Prop :=
  ∀ n, P12045197508925833654.a n = A048656 (n + 1)

end A048656

/-! ## A048656.P3137657056934162284

`2^(A036234(n+1)-1)`
-/

namespace A048656.P3137657056934162284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A036234 (n + 1) - 1 : ℤ)

end

end A048656.P3137657056934162284

namespace A048656

/-- `2^(A036234(n+1)-1)` -/
def P3137657056934162284.Spec : Prop :=
  ∀ n, P3137657056934162284.a n = (A048656 (n + 1) : ℚ)

end A048656

/-! ## A048656.P6885943820535070187

`2^A055679(2*(n+1))`
-/

namespace A048656.P6885943820535070187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A055679 (2 * (n + 1)) : ℤ)

end

end A048656.P6885943820535070187

namespace A048656

/-- `2^A055679(2*(n+1))` -/
def P6885943820535070187.Spec : Prop :=
  ∀ n, P6885943820535070187.a n = (A048656 (n + 1) : ℚ)

end A048656

/-! ## A048656.P6623624590306497426

`2^A056172(2*(n+1))`
-/

namespace A048656.P6623624590306497426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056172 (2 * (n + 1)) : ℤ)

end

end A048656.P6623624590306497426

namespace A048656

/-- `2^A056172(2*(n+1))` -/
def P6623624590306497426.Spec : Prop :=
  ∀ n, P6623624590306497426.a n = (A048656 (n + 1) : ℚ)

end A048656

/-! ## A048656.P7886373511189918344

`2^A242096(2*n+3)`
-/

namespace A048656.P7886373511189918344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A242096 (2 * n + 3) : ℤ)

end

end A048656.P7886373511189918344

namespace A048656

/-- `2^A242096(2*n+3)` -/
def P7886373511189918344.Spec : Prop :=
  ∀ n, P7886373511189918344.a n = (A048656 (n + 1) : ℚ)

end A048656

/-! ## A048656.P2510163747220781164

`2^(n-A065855(n+1))`
-/

namespace A048656.P2510163747220781164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A065855 (n + 1) : ℤ)

end

end A048656.P2510163747220781164

namespace A048656

/-- `2^(n-A065855(n+1))` -/
def P2510163747220781164.Spec : Prop :=
  ∀ n, P2510163747220781164.a n = (A048656 (n + 1) : ℚ)

end A048656

/-! ## A048656.P3718598299941638431

`2^∑[A129950(n+1)²]`
-/

namespace A048656.P3718598299941638431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A048656.P3718598299941638431

namespace A048656

/-- `2^∑[A129950(n+1)²]` -/
def P3718598299941638431.Spec : Prop :=
  ∀ n, P3718598299941638431.a n = (A048656 (n + 1) : ℚ)

end A048656

/-! ## A048656.P17151640712364705092

`∏[C(2, A001222(n+1))!]`
-/

namespace A048656.P17151640712364705092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (A001222 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P17151640712364705092

namespace A048656

/-- `∏[C(2, A001222(n+1))!]` -/
def P17151640712364705092.Spec : Prop :=
  ∀ n, (P17151640712364705092.a n : ℤ) = A048656 (n + 1)

end A048656

/-! ## A048656.P13289719698410487279

`∏[A064911(2*(n+1))+1]`
-/

namespace A048656.P13289719698410487279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P13289719698410487279

namespace A048656

/-- `∏[A064911(2*(n+1))+1]` -/
def P13289719698410487279.Spec : Prop :=
  ∀ n, P13289719698410487279.a n = A048656 (n + 1)

end A048656

/-! ## A048656.P1561340305073780094

`∏[A303337(2*(n+1))+1]`
-/

namespace A048656.P1561340305073780094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303337 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048656.P1561340305073780094

namespace A048656

/-- `∏[A303337(2*(n+1))+1]` -/
def P1561340305073780094.Spec : Prop :=
  ∀ n, P1561340305073780094.a n = A048656 (n + 1)

end A048656

/-!
# A048657: Number of non-unitary divisors of n!.

The programs for A048657, the canonical program `A048657.P12251602765094748303` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048657 has offset 1).

The definition of A048657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048657.P12251602765094748303

`A027423(n+1)-A048656(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048657

/-- `A027423(n+1)-A048656(n+1)` -/
def P12251602765094748303.Spec : Prop :=
  ∀ n, P12251602765094748303.a n = A048657 (n + 1)

theorem P12251602765094748303.correct : P12251602765094748303.Spec := by
  intro n
  simp only [A048657, Nat.add_sub_cancel]

end A048657

/-! ## A048657.P6069073678291305047

`∑[A038024(n+1)]-A048656(n+1)`
-/

namespace A048657.P6069073678291305047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A048656 (n + 1)

end

end A048657.P6069073678291305047

namespace A048657

/-- `∑[A038024(n+1)]-A048656(n+1)` -/
def P6069073678291305047.Spec : Prop :=
  ∀ n, P6069073678291305047.a n = A048657 (n + 1)

end A048657

/-! ## A048657.P3987504691294319377

`A153823(n+1)-(A048656(n+1)-1)`
-/

namespace A048657.P3987504691294319377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 (n + 1) - (A048656 (n + 1) - 1)

end

end A048657.P3987504691294319377

namespace A048657

/-- `A153823(n+1)-(A048656(n+1)-1)` -/
def P3987504691294319377.Spec : Prop :=
  ∀ n, P3987504691294319377.a n = A048657 (n + 1)

end A048657

/-! ## A048657.P16162893994936577906

`A027423(n+1)-A000079(A000720(n+1))`
-/

namespace A048657.P16162893994936577906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1) - A000079 (A000720 (n + 1)).toNat

end

end A048657.P16162893994936577906

namespace A048657

/-- `A027423(n+1)-A000079(A000720(n+1))` -/
def P16162893994936577906.Spec : Prop :=
  ∀ n, P16162893994936577906.a n = A048657 (n + 1)

end A048657

/-! ## A048657.P6725800205898493825

`A153823(n+1)-A000225(A000720(n+1))`
-/

namespace A048657.P6725800205898493825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 (n + 1) - A000225 (A000720 (n + 1)).toNat

end

end A048657.P6725800205898493825

namespace A048657

/-- `A153823(n+1)-A000225(A000720(n+1))` -/
def P6725800205898493825.Spec : Prop :=
  ∀ n, P6725800205898493825.a n = A048657 (n + 1)

end A048657

/-! ## A048657.P3200292659910135242

`A133951(n+1)+A133952(n+1)-A048656(n+1)`
-/

namespace A048657.P3200292659910135242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133951 (n + 1) + (A133952 (n + 1) - A048656 (n + 1))

end

end A048657.P3200292659910135242

namespace A048657

/-- `A133951(n+1)+A133952(n+1)-A048656(n+1)` -/
def P3200292659910135242.Spec : Prop :=
  ∀ n, P3200292659910135242.a n = A048657 (n + 1)

end A048657

/-!
# A048661: Number of n-digit dihedral primes for which the 4 numbers (n, n upside-down, n in a mirror, n upside-down and mirrored) are distinct.

The programs for A048661, there is no canonical definition to state claims against.
-/

/-! ## A048661.P4196236803883149714

`lcm(4, A241464(lt[0, ∏{digits}[n, #]]))`
-/

namespace A048661.P4196236803883149714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A241464 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n))

end

end A048661.P4196236803883149714

/-! ## A048661.P3600249404848369229

`Δ[or(10, A146687(2*(n+1)))]`
-/

namespace A048661.P3600249404848369229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 10 (A146687 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048661.P3600249404848369229

/-! ## A048661.P5939518172312871226

`4*A321378(A319913(n+1))`
-/

namespace A048661.P5939518172312871226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A321378 (A319913 (n + 1)).toNat

end

end A048661.P5939518172312871226

/-! ## A048661.P10736916178099370480

`lcm(4, A241464(A097569(n+1)))`
-/

namespace A048661.P10736916178099370480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A241464 (A097569 (n + 1)).toNat)

end

end A048661.P10736916178099370480

/-! ## A048661.P17665587287443898865

`A241464(n+1)*A356227(A007865(n))`
-/

namespace A048661.P17665587287443898865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241464 (n + 1) * A356227 (A007865 n).toNat

end

end A048661.P17665587287443898865

/-!
# A048663: Number of rooted polycubes with n cells, with no symmetries removed.

The programs for A048663, there is no canonical definition to state claims against.
-/

/-! ## A048663.P17489718931664893298

`(n+1)*A001931(n+1)`
-/

namespace A048663.P17489718931664893298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001931 (n + 1)

end

end A048663.P17489718931664893298

/-! ## A048663.P8272442003312928606

`A001931(n+1)*A291769(n)`
-/

namespace A048663.P8272442003312928606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001931 (n + 1) * A291769 n

end

end A048663.P8272442003312928606

/-! ## A048663.P15293090064222966187

`A001931(n+1)*A348553(n)`
-/

namespace A048663.P15293090064222966187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001931 (n + 1) * A348553 n

end

end A048663.P15293090064222966187

/-! ## A048663.P11600750429992614517

`A001931(A008619(2*n))*A008619(2*n)`
-/

namespace A048663.P11600750429992614517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001931 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A048663.P11600750429992614517

/-! ## A048663.P7291862399563002409

`A001931(A008619(2*n))*A208521(A000124(n))`
-/

namespace A048663.P7291862399563002409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001931 (A008619 (2 * n)).toNat * A208521 (A000124 n).toNat

end

end A048663.P7291862399563002409

/-!
# A048664: Number of rooted 2-dimensional polyominoes with n square cells, with no symmetries removed.

The programs for A048664, there is no canonical definition to state claims against.
-/

/-! ## A048664.P1836624522924549256

`(n+1)*A001168(n+1)`
-/

namespace A048664.P1836624522924549256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001168 (n + 1)

end

end A048664.P1836624522924549256

/-! ## A048664.P2898220000638927485

`∑[abs(Δ[n*A001168(n)])]`
-/

namespace A048664.P2898220000638927485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048664.P2898220000638927485

/-! ## A048664.P8507908349991917786

`record[A001168(A008611(n))*A008611(n)]`
-/

namespace A048664.P8507908349991917786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A008611 n).toNat * A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048664.P8507908349991917786

/-! ## A048664.P15037146038963410676

`record[A001168(A008612(n))*A008612(n)]`
-/

namespace A048664.P15037146038963410676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A008612 n).toNat * A008612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048664.P15037146038963410676

/-! ## A048664.P1640549309658341574

`record[A001168(A028242(n))*A028242(n)]`
-/

namespace A048664.P1640549309658341574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A028242 n).toNat * A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048664.P1640549309658341574

/-! ## A048664.P13144795509505233528

`record[A001168(A103221(n))*A103221(n)]`
-/

namespace A048664.P13144795509505233528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A103221 n).toNat * A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048664.P13144795509505233528

/-! ## A048664.P5197778451309002949

`record[A001168(A106249(n))*A106249(n)]`
-/

namespace A048664.P5197778451309002949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A106249 n).toNat * A106249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048664.P5197778451309002949

/-! ## A048664.P552945677850458969

`record[A001168(A110659(n))*A110659(n)]`
-/

namespace A048664.P552945677850458969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A110659 n).toNat * A110659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048664.P552945677850458969

/-! ## A048664.P17150726011795984132

`A001168(A008619(2*n))*A008619(2*n)`
-/

namespace A048664.P17150726011795984132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A048664.P17150726011795984132

/-! ## A048664.P4059980486558684124

`A001168(A028242(2*n))*A028242(2*n)`
-/

namespace A048664.P4059980486558684124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A048664.P4059980486558684124

/-!
# A048665: Number of rooted 4-dimensional "polycubes" with n cells, with no symmetries removed.

The programs for A048665, there is no canonical definition to state claims against.
-/

/-! ## A048665.P13971132341280622150

`(n+1)*A151830(n+1)`
-/

namespace A048665.P13971132341280622150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151830 (n + 1)

end

end A048665.P13971132341280622150

/-! ## A048665.P912551592888971911

`A151830(n+1)*A291769(n)`
-/

namespace A048665.P912551592888971911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151830 (n + 1) * A291769 n

end

end A048665.P912551592888971911

/-! ## A048665.P11293408707192268560

`A151830(n+1)*A348553(n)`
-/

namespace A048665.P11293408707192268560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151830 (n + 1) * A348553 n

end

end A048665.P11293408707192268560

/-! ## A048665.P4372698780284344387

`record[A151830(A344180(n))]*A291769(n)`
-/

namespace A048665.P4372698780284344387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151830 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A291769 n

end

end A048665.P4372698780284344387

/-! ## A048665.P8305094670890168600

`record[A151830(A344180(n))]*A348553(n)`
-/

namespace A048665.P8305094670890168600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151830 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A348553 n

end

end A048665.P8305094670890168600

/-!
# A048666: Number of rooted 5-dimensional "polycubes" with n cells, with no symmetries removed.

The programs for A048666, there is no canonical definition to state claims against.
-/

/-! ## A048666.P5421481964798114518

`(n+1)*A151831(n+1)`
-/

namespace A048666.P5421481964798114518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151831 (n + 1)

end

end A048666.P5421481964798114518

/-! ## A048666.P14126416014704833225

`A151831(A005555(n))*(n+1)`
-/

namespace A048666.P14126416014704833225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151831 (A005555 n).toNat * (n + 1 : ℤ)

end

end A048666.P14126416014704833225

/-! ## A048666.P17867985558431190869

`A151831(n+1)*A291769(n)`
-/

namespace A048666.P17867985558431190869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151831 (n + 1) * A291769 n

end

end A048666.P17867985558431190869

/-! ## A048666.P17687866685077538430

`A151831(n+1)*A348553(n)`
-/

namespace A048666.P17687866685077538430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151831 (n + 1) * A348553 n

end

end A048666.P17687866685077538430

/-! ## A048666.P6202594583780067012

`record[A151831(A344180(n))]*A291769(n)`
-/

namespace A048666.P6202594583780067012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151831 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A291769 n

end

end A048666.P6202594583780067012

/-!
# A048667: Number of rooted 6-dimensional "polycubes" with n cells, with no symmetries removed.

The programs for A048667, there is no canonical definition to state claims against.
-/

/-! ## A048667.P12910194433586108410

`(n+1)*A151832(n+1)`
-/

namespace A048667.P12910194433586108410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151832 (n + 1)

end

end A048667.P12910194433586108410

/-! ## A048667.P11028054139810682750

`A151832(n+1)*A291769(n)`
-/

namespace A048667.P11028054139810682750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151832 (n + 1) * A291769 n

end

end A048667.P11028054139810682750

/-! ## A048667.P5658115866695128741

`A151832(n+1)*A348553(n)`
-/

namespace A048667.P5658115866695128741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151832 (n + 1) * A348553 n

end

end A048667.P5658115866695128741

/-! ## A048667.P71454718876748884

`A151832(A216556(n))*A216556(n)`
-/

namespace A048667.P71454718876748884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151832 (A216556 n).toNat * A216556 n

end

end A048667.P71454718876748884

/-!
# A048668: Number of rooted 7-dimensional "polycubes" with n cells, with no symmetries removed.

The programs for A048668, there is no canonical definition to state claims against.
-/

/-! ## A048668.P12053279656948758899

`(n+1)*A151833(n+1)`
-/

namespace A048668.P12053279656948758899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151833 (n + 1)

end

end A048668.P12053279656948758899

/-! ## A048668.P245652270168270530

`A151833(n+1)*A291769(n)`
-/

namespace A048668.P245652270168270530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151833 (n + 1) * A291769 n

end

end A048668.P245652270168270530

/-! ## A048668.P18193594985364955017

`A151833(n+1)*A348553(n)`
-/

namespace A048668.P18193594985364955017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151833 (n + 1) * A348553 n

end

end A048668.P18193594985364955017

/-! ## A048668.P5471818612602291698

`record[A151833(A344180(n))]*A291769(n)`
-/

namespace A048668.P5471818612602291698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151833 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A291769 n

end

end A048668.P5471818612602291698

/-! ## A048668.P1907550947660397177

`record[A151833(A344180(n))]*A348553(n)`
-/

namespace A048668.P1907550947660397177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151833 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A348553 n

end

end A048668.P1907550947660397177

/-!
# A048669: The Jacobsthal function g(n): maximal gap in a list of all the integers relatively prime to n.

The programs for A048669, there is no canonical definition to state claims against.
-/

/-! ## A048669.P17737546778237529433

`A132468(n+1)+1`
-/

namespace A048669.P17737546778237529433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (n + 1) + 1

end

end A048669.P17737546778237529433

/-! ## A048669.P10238051734067032558

`A005555(A132468(n+1))`
-/

namespace A048669.P10238051734067032558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A132468 (n + 1)).toNat

end

end A048669.P10238051734067032558

/-! ## A048669.P15142755142968820640

`A130706(n)+A049298(n+1)`
-/

namespace A048669.P15142755142968820640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + A049298 (n + 1)

end

end A048669.P15142755142968820640

/-! ## A048669.P631613810522691525

`gcd(Δ[A003817(n)], A049298(n+1))`
-/

namespace A048669.P631613810522691525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A049298 (n + 1))

end

end A048669.P631613810522691525

/-! ## A048669.P14086205849658049947

`A049298(n+1)+A134824(n)+1`
-/

namespace A048669.P14086205849658049947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049298 (n + 1) + (A134824 n + 1)

end

end A048669.P14086205849658049947

/-! ## A048669.P1091475497161541748

`gcd(A049298(Δ[n²]-n), A130706(n))`
-/

namespace A048669.P1091475497161541748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049298 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (A130706 n)

end

end A048669.P1091475497161541748

/-! ## A048669.P16376176230787569718

`or(A035656(a(n-1)), A049298(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A048669.P16376176230787569718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor (A035656 (a (n - 1)).toNat) (A049298 (n + 1))

end

end A048669.P16376176230787569718

/-! ## A048669.P17318563716584235231

`gcd(A001898(n), A049298(n+1))`
-/

namespace A048669.P17318563716584235231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001898 n) (A049298 (n + 1))

end

end A048669.P17318563716584235231

/-! ## A048669.P18139691601100961053

`A101296(A320111(A007947(n+1)²))`
-/

namespace A048669.P18139691601100961053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A320111 (A007947 (n + 1) ^ 2).toNat).toNat

end

end A048669.P18139691601100961053

/-! ## A048669.P7100593320871334383

`gcd(A049298(n+1)+A349260(n)², A349260(n))`
-/

namespace A048669.P7100593320871334383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049298 (n + 1) + A349260 n ^ 2) (A349260 n)

end

end A048669.P7100593320871334383

/-! ## A048669.P1178304411261361193

`A365207(A365207((n+1)²))`
-/

namespace A048669.P1178304411261361193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365207 (A365207 ((n + 1) ^ 2)).toNat

end

end A048669.P1178304411261361193

/-! ## A048669.P10399867944872793093

`A000034(n²)*A099812(n+1)`
-/

namespace A048669.P10399867944872793093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n ^ 2) * A099812 (n + 1)

end

end A048669.P10399867944872793093

/-! ## A048669.P16779547170953507249

`A000005(A000005(A144907((n+1)²)))`
-/

namespace A048669.P16779547170953507249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A144907 ((n + 1) ^ 2)).toNat).toNat

end

end A048669.P16779547170953507249

/-! ## A048669.P10338143741622808967

`A069733(A069733(A007948((n+1)²)))`
-/

namespace A048669.P10338143741622808967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (A069733 (A007948 ((n + 1) ^ 2)).toNat).toNat

end

end A048669.P10338143741622808967

/-! ## A048669.P1575705161960378579

`A069733(A069733(A007947(n+1)²))`
-/

namespace A048669.P1575705161960378579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (A069733 (A007947 (n + 1) ^ 2).toNat).toNat

end

end A048669.P1575705161960378579

/-! ## A048669.P15089301071729748644

`A174238(A174238(A019554(n+1)²))`
-/

namespace A048669.P15089301071729748644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174238 (A174238 (A019554 (n + 1) ^ 2).toNat).toNat

end

end A048669.P15089301071729748644

/-! ## A048669.P1913775224668891077

`A069733(A069733((n+1)*A007913(n+1)))`
-/

namespace A048669.P1913775224668891077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (A069733 ((n + 1 : ℤ) * A007913 (n + 1)).toNat).toNat

end

end A048669.P1913775224668891077

/-!
# A048670: Jacobsthal function A048669 applied to the product of the first n primes (A002110).

The programs for A048670, there is no canonical definition to state claims against.
-/

/-! ## A048670.P15820564272786197357

`A058989(n+1)+1`
-/

namespace A048670.P15820564272786197357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058989 (n + 1) + 1

end

end A048670.P15820564272786197357

/-! ## A048670.P9151794363869532853

`A014681(A058989(n+1))`
-/

namespace A048670.P9151794363869532853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A058989 (n + 1)).toNat

end

end A048670.P9151794363869532853

/-! ## A048670.P16812389111946912654

`A331118(∑[A329815(n+1)]+2)`
-/

namespace A048670.P16812389111946912654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331118 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A048670.P16812389111946912654

/-! ## A048670.P15401959908414889643

`A331118(eq[4, A331118(n+2)])`
-/

namespace A048670.P15401959908414889643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048670.P15401959908414889643

/-! ## A048670.P10320706914776506145

`record[A331118(n+3-A331118(n+1))]`
-/

namespace A048670.P10320706914776506145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331118 ((n + 3 : ℤ) - A331118 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048670.P10320706914776506145

/-!
# A048671: a(n) is the least common multiple of the proper divisors of n.

The programs for A048671, the canonical program `A048671.P10271734858964489763` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048671 has offset 1).

The definition of A048671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048671.P3015931791300419177

`(n+1)/A014963(n+1)`
-/

namespace A048671.P3015931791300419177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (n + 1) : ℚ)

end

end A048671.P3015931791300419177

namespace A048671

/-- `(n+1)/A014963(n+1)` -/
def P3015931791300419177.Spec : Prop :=
  ∀ n, P3015931791300419177.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P5553199698797635808

`lcm(A052126(n+1), A032742(n+1))`
-/

namespace A048671.P5553199698797635808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052126 (n + 1)) (A032742 (n + 1))

end

end A048671.P5553199698797635808

namespace A048671

/-- `lcm(A052126(n+1), A032742(n+1))` -/
def P5553199698797635808.Spec : Prop :=
  ∀ n, (P5553199698797635808.a n : ℤ) = A048671 (n + 1)

end A048671

/-! ## A048671.P10271734858964489763

`A003418(n)/A002944(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048671

/-- `A003418(n)/A002944(n+1)` -/
def P10271734858964489763.Spec : Prop :=
  ∀ n, P10271734858964489763.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P1762060957534515173

`(n+1)*A003418(n)/A003418(n+1)`
-/

namespace A048671.P1762060957534515173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A003418 n : ℚ) / (A003418 (n + 1) : ℚ)

end

end A048671.P1762060957534515173

namespace A048671

/-- `(n+1)*A003418(n)/A003418(n+1)` -/
def P1762060957534515173.Spec : Prop :=
  ∀ n, P1762060957534515173.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P13894024667585871165

`gcd(n+1, ∏{p}[n+1, (n+1)/#])`
-/

namespace A048671.P13894024667585871165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))

end

end A048671.P13894024667585871165

namespace A048671

/-- `gcd(n+1, ∏{p}[n+1, (n+1)/#])` -/
def P13894024667585871165.Spec : Prop :=
  ∀ n, (P13894024667585871165.a n : ℤ) = A048671 (n + 1)

end A048671

/-! ## A048671.P13707496426278475647

`A140651(n+1)/(n+1)`
-/

namespace A048671.P13707496426278475647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140651 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A048671.P13707496426278475647

namespace A048671

/-- `A140651(n+1)/(n+1)` -/
def P13707496426278475647.Spec : Prop :=
  ∀ n, P13707496426278475647.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P16412868826335852299

`gcd(n+1, A205959(n+1))`
-/

namespace A048671.P16412868826335852299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A205959 (n + 1))

end

end A048671.P16412868826335852299

namespace A048671

/-- `gcd(n+1, A205959(n+1))` -/
def P16412868826335852299.Spec : Prop :=
  ∀ n, (P16412868826335852299.a n : ℤ) = A048671 (n + 1)

end A048671

/-! ## A048671.P1364960296520738029

`(n+1)²/A140580(n+1)`
-/

namespace A048671.P1364960296520738029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A140580 (n + 1) : ℚ)

end

end A048671.P1364960296520738029

namespace A048671

/-- `(n+1)²/A140580(n+1)` -/
def P1364960296520738029.Spec : Prop :=
  ∀ n, P1364960296520738029.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P426191254626212511

`(n+1)/A089026(∏{p}[n+1, #])`
-/

namespace A048671.P426191254626212511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A089026 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A048671.P426191254626212511

namespace A048671

/-- `(n+1)/A089026(∏{p}[n+1, #])` -/
def P426191254626212511.Spec : Prop :=
  ∀ n, P426191254626212511.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P16269851193169544410

`(n+1)*∏{d}[n+1, #^A008683(#)]`
-/

namespace A048671.P16269851193169544410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A008683 d : ℤ))

end

end A048671.P16269851193169544410

namespace A048671

/-- `(n+1)*∏{d}[n+1, #^A008683(#)]` -/
def P16269851193169544410.Spec : Prop :=
  ∀ n, P16269851193169544410.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P722157931528791893

`floor((2*n-(n-1))/A014963(2*n-(n-1)))`
-/

namespace A048671.P722157931528791893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℤ) - ((n : ℤ) - 1) : ℚ) / (A014963 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ)⌋

end

end A048671.P722157931528791893

namespace A048671

/-- `floor((2*n-(n-1))/A014963(2*n-(n-1)))` -/
def P722157931528791893.Spec : Prop :=
  ∀ n, P722157931528791893.a n = A048671 (n + 1)

end A048671

/-! ## A048671.P16324543025598921262

`A366649(n+1)+A081805(n+1)`
-/

namespace A048671.P16324543025598921262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366649 (n + 1) + A081805 (n + 1)

end

end A048671.P16324543025598921262

namespace A048671

/-- `A366649(n+1)+A081805(n+1)` -/
def P16324543025598921262.Spec : Prop :=
  ∀ n, P16324543025598921262.a n = A048671 (n + 1)

end A048671

/-! ## A048671.P3095695829014110035

`A014683(n+1)-A092509(n+1)`
-/

namespace A048671.P3095695829014110035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) - A092509 (n + 1)

end

end A048671.P3095695829014110035

namespace A048671

/-- `A014683(n+1)-A092509(n+1)` -/
def P3095695829014110035.Spec : Prop :=
  ∀ n, P3095695829014110035.a n = A048671 (n + 1)

end A048671

/-! ## A048671.P1768520776729963469

`n+1-A133937(A100994(n+1))`
-/

namespace A048671.P1768520776729963469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A133937 (A100994 (n + 1)).toNat

end

end A048671.P1768520776729963469

namespace A048671

/-- `n+1-A133937(A100994(n+1))` -/
def P1768520776729963469.Spec : Prop :=
  ∀ n, P1768520776729963469.a n = A048671 (n + 1)

end A048671

/-! ## A048671.P5759498791474003978

`A003557(n+1)*A340679(n+1)`
-/

namespace A048671.P5759498791474003978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A340679 (n + 1)

end

end A048671.P5759498791474003978

namespace A048671

/-- `A003557(n+1)*A340679(n+1)` -/
def P5759498791474003978.Spec : Prop :=
  ∀ n, P5759498791474003978.a n = A048671 (n + 1)

end A048671

/-! ## A048671.P16250459904548680083

`A284600(n+1)*A366649(n+1)`
-/

namespace A048671.P16250459904548680083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (n + 1) * A366649 (n + 1)

end

end A048671.P16250459904548680083

namespace A048671

/-- `A284600(n+1)*A366649(n+1)` -/
def P16250459904548680083.Spec : Prop :=
  ∀ n, P16250459904548680083.a n = A048671 (n + 1)

end A048671

/-! ## A048671.P7165391619764766744

`(n+1)/A014973(A007947(n+1))`
-/

namespace A048671.P7165391619764766744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014973 (A007947 (n + 1)).toNat : ℚ)

end

end A048671.P7165391619764766744

namespace A048671

/-- `(n+1)/A014973(A007947(n+1))` -/
def P7165391619764766744.Spec : Prop :=
  ∀ n, P7165391619764766744.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P11054372550915593024

`(n+1)/A028310(A020500(n+1))`
-/

namespace A048671.P11054372550915593024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A028310 (A020500 (n + 1)).toNat : ℚ)

end

end A048671.P11054372550915593024

namespace A048671

/-- `(n+1)/A028310(A020500(n+1))` -/
def P11054372550915593024.Spec : Prop :=
  ∀ n, P11054372550915593024.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P12851257029160577330

`(n+1)/A014973(A052410(n+1))`
-/

namespace A048671.P12851257029160577330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014973 (A052410 (n + 1)).toNat : ℚ)

end

end A048671.P12851257029160577330

namespace A048671

/-- `(n+1)/A014973(A052410(n+1))` -/
def P12851257029160577330.Spec : Prop :=
  ∀ n, P12851257029160577330.a n = (A048671 (n + 1) : ℚ)

end A048671

/-! ## A048671.P10382717668513929324

`A023896(n+1)/A092502(n+1)`
-/

namespace A048671.P10382717668513929324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (A092502 (n + 1) : ℚ)

end

end A048671.P10382717668513929324

namespace A048671

/-- `A023896(n+1)/A092502(n+1)` -/
def P10382717668513929324.Spec : Prop :=
  ∀ n, P10382717668513929324.a n = (A048671 (n + 1) : ℚ)

end A048671

/-!
# A048672: Binary encoding of squarefree numbers (A005117): A048640(n)/2.

The programs for A048672, the canonical program `A048672.P15831279191570922518` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048672 has offset 1).

The definition of A048672 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A087207, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048672.P15831279191570922518

`A087207(A005117(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A048672

/-- `A087207(A005117(n+1))` -/
def P15831279191570922518.Spec : Prop :=
  ∀ n, P15831279191570922518.a n = A048672 (n + 1)

theorem P15831279191570922518.correct : P15831279191570922518.Spec := by
  intro n
  simp only [A048672, Nat.add_sub_cancel]

end A048672

/-! ## A048672.P3588202755796603940

`A048675(record[∏{p}[n, #]])`
-/

namespace A048672.P3588202755796603940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A048672.P3588202755796603940

namespace A048672

/-- `A048675(record[∏{p}[n, #]])` -/
def P3588202755796603940.Spec : Prop :=
  ∀ n, P3588202755796603940.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P10819831971911643731

`A087207(record[∏{p}[n, #]])`
-/

namespace A048672.P10819831971911643731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A048672.P10819831971911643731

namespace A048672

/-- `A087207(record[∏{p}[n, #]])` -/
def P10819831971911643731.Spec : Prop :=
  ∀ n, P10819831971911643731.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P15545849937697700894

`A248663(record[∏{p}[n, #]])`
-/

namespace A048672.P15545849937697700894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A048672.P15545849937697700894

namespace A048672

/-- `A248663(record[∏{p}[n, #]])` -/
def P15545849937697700894.Spec : Prop :=
  ∀ n, P15545849937697700894.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P12272474826532042747

`A048675(eq[n, ∏{p}[n, #]])`
-/

namespace A048672.P12272474826532042747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A048672.P12272474826532042747

namespace A048672

/-- `A048675(eq[n, ∏{p}[n, #]])` -/
def P12272474826532042747.Spec : Prop :=
  ∀ n, P12272474826532042747.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P5821186552097011250

`A334872(A133466(n+1))`
-/

namespace A048672.P5821186552097011250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334872 (A133466 (n + 1)).toNat

end

end A048672.P5821186552097011250

namespace A048672

/-- `A334872(A133466(n+1))` -/
def P5821186552097011250.Spec : Prop :=
  ∀ n, P5821186552097011250.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P1281655539833137417

`A048675(record[A007913(n+1)])`
-/

namespace A048672.P1281655539833137417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048672.P1281655539833137417

namespace A048672

/-- `A048675(record[A007913(n+1)])` -/
def P1281655539833137417.Spec : Prop :=
  ∀ n, P1281655539833137417.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P3891717163461709379

`A248663(record[A007913(n+1)])`
-/

namespace A048672.P3891717163461709379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048672.P3891717163461709379

namespace A048672

/-- `A248663(record[A007913(n+1)])` -/
def P3891717163461709379.Spec : Prop :=
  ∀ n, P3891717163461709379.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P3594348384410221408

`A087207(A088610(2*n+1))`
-/

namespace A048672.P3594348384410221408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A088610 (2 * n + 1)).toNat

end

end A048672.P3594348384410221408

namespace A048672

/-- `A087207(A088610(2*n+1))` -/
def P3594348384410221408.Spec : Prop :=
  ∀ n, P3594348384410221408.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P2423076691068242322

`A048675(eq[1, A046951(n+1)]+1)`
-/

namespace A048672.P2423076691068242322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A048672.P2423076691068242322

namespace A048672

/-- `A048675(eq[1, A046951(n+1)]+1)` -/
def P2423076691068242322.Spec : Prop :=
  ∀ n, P2423076691068242322.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P14830912530045713874

`A048675(eq[1, A162510(n+1)]+1)`
-/

namespace A048672.P14830912530045713874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A048672.P14830912530045713874

namespace A048672

/-- `A048675(eq[1, A162510(n+1)]+1)` -/
def P14830912530045713874.Spec : Prop :=
  ∀ n, P14830912530045713874.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P943955152274942582

`A048676(A005117(2*n+1-n))`
-/

namespace A048672.P943955152274942582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (A005117 (2 * n + 1 - n)).toNat

end

end A048672.P943955152274942582

namespace A048672

/-- `A048676(A005117(2*n+1-n))` -/
def P943955152274942582.Spec : Prop :=
  ∀ n, P943955152274942582.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P2854678562412646656

`floor(A048640(n+1)/2)`
-/

namespace A048672.P2854678562412646656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048640 (n + 1) : ℚ) / 2⌋

end

end A048672.P2854678562412646656

namespace A048672

/-- `floor(A048640(n+1)/2)` -/
def P2854678562412646656.Spec : Prop :=
  ∀ n, P2854678562412646656.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P11071997514068240019

`A248663(A005117(A049084(A000040(n+1))))`
-/

namespace A048672.P11071997514068240019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A005117 (A049084 (A000040 (n + 1)).toNat).toNat).toNat

end

end A048672.P11071997514068240019

namespace A048672

/-- `A248663(A005117(A049084(A000040(n+1))))` -/
def P11071997514068240019.Spec : Prop :=
  ∀ n, P11071997514068240019.a n = A048672 (n + 1)

end A048672

/-! ## A048672.P17077507601356844011

`A334872(A195085(n+1))`
-/

namespace A048672.P17077507601356844011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334872 (A195085 (n + 1)).toNat

end

end A048672.P17077507601356844011

namespace A048672

/-- `A334872(A195085(n+1))` -/
def P17077507601356844011.Spec : Prop :=
  ∀ n, P17077507601356844011.a n = A048672 (n + 1)

end A048672

/-!
# A048673: Permutation of natural numbers: a(n) = (A003961(n)+1) / 2 [where A003961(n) shifts the prime factorization of n one step towards larger primes].

The programs for A048673, the canonical program `A048673.P16342935298832955059` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048673 has offset 1).

The definition of A048673 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045965, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048673.P18080057636650662703

`A108228(n+1)+1`
-/

namespace A048673.P18080057636650662703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 (n + 1) + 1

end

end A048673.P18080057636650662703

namespace A048673

/-- `A108228(n+1)+1` -/
def P18080057636650662703.Spec : Prop :=
  ∀ n, P18080057636650662703.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P495345281962053967

`A243501(n+1)/2`
-/

namespace A048673.P495345281962053967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) : ℚ) / 2

end

end A048673.P495345281962053967

namespace A048673

/-- `A243501(n+1)/2` -/
def P495345281962053967.Spec : Prop :=
  ∀ n, P495345281962053967.a n = (A048673 (n + 1) : ℚ)

end A048673

/-! ## A048673.P12408119014961415605

`(A003961(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048673.P12408119014961415605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) + 1 : ℚ) / 2

end

end A048673.P12408119014961415605

namespace A048673

/-- `(A003961(n+1)+1)/2` -/
def P12408119014961415605.Spec : Prop :=
  ∀ n, P12408119014961415605.a n = (A048673 (n + 1) : ℚ)

end A048673

/-! ## A048673.P16342935298832955059

`floor((A045965(n+1)+1)/2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A048673

/-- `floor((A045965(n+1)+1)/2)` -/
def P16342935298832955059.Spec : Prop :=
  ∀ n, P16342935298832955059.a n = A048673 (n + 1)

theorem P16342935298832955059.correct : P16342935298832955059.Spec := by
  intro n
  simp only [A048673, Nat.add_sub_cancel]

end A048673

/-! ## A048673.P1451921837367823829

`A003602(A003961(n+1))`
-/

namespace A048673.P1451921837367823829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A003961 (n + 1)).toNat

end

end A048673.P1451921837367823829

namespace A048673

/-- `A003602(A003961(n+1))` -/
def P1451921837367823829.Spec : Prop :=
  ∀ n, P1451921837367823829.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P10169032371002408147

`A245608(A245605(n+1))`
-/

namespace A048673.P10169032371002408147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245608 (A245605 (n + 1)).toNat

end

end A048673.P10169032371002408147

namespace A048673

/-- `A245608(A245605(n+1))` -/
def P10169032371002408147.Spec : Prop :=
  ∀ n, P10169032371002408147.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P3613002930333742504

`A249745(A249824(n+1))`
-/

namespace A048673.P3613002930333742504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249745 (A249824 (n + 1)).toNat

end

end A048673.P3613002930333742504

namespace A048673

/-- `A249745(A249824(n+1))` -/
def P3613002930333742504.Spec : Prop :=
  ∀ n, P3613002930333742504.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P3473661141215821663

`A253885(n)/2+1`
-/

namespace A048673.P3473661141215821663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n : ℚ) / 2 + 1

end

end A048673.P3473661141215821663

namespace A048673

/-- `A253885(n)/2+1` -/
def P3473661141215821663.Spec : Prop :=
  ∀ n, P3473661141215821663.a n = (A048673 (n + 1) : ℚ)

end A048673

/-! ## A048673.P18085911995868965647

`∑{d}[n+1, A378521(#)]`
-/

namespace A048673.P18085911995868965647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378521 d

end

end A048673.P18085911995868965647

namespace A048673

/-- `∑{d}[n+1, A378521(#)]` -/
def P18085911995868965647.Spec : Prop :=
  ∀ n, P18085911995868965647.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P6578722587552470117

`A349573(n+1)+1+n`
-/

namespace A048673.P6578722587552470117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (n + 1) + 1 + (n : ℤ)

end

end A048673.P6578722587552470117

namespace A048673

/-- `A349573(n+1)+1+n` -/
def P6578722587552470117.Spec : Prop :=
  ∀ n, P6578722587552470117.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P14743562173314605645

`∑{d}[n+1, #*A349571((n+1)/#)]`
-/

namespace A048673.P14743562173314605645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A048673.P14743562173314605645

namespace A048673

/-- `∑{d}[n+1, #*A349571((n+1)/#)]` -/
def P14743562173314605645.Spec : Prop :=
  ∀ n, P14743562173314605645.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P10631528524291724575

`A378747(n+1)+A001065(n+1)`
-/

namespace A048673.P10631528524291724575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378747 (n + 1) + A001065 (n + 1)

end

end A048673.P10631528524291724575

namespace A048673

/-- `A378747(n+1)+A001065(n+1)` -/
def P10631528524291724575.Spec : Prop :=
  ∀ n, P10631528524291724575.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P2145040819028397792

`A337336(n+1)%A045965(n+1)`
-/

namespace A048673.P2145040819028397792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337336 (n + 1)) (A045965 (n + 1))

end

end A048673.P2145040819028397792

namespace A048673

/-- `A337336(n+1)%A045965(n+1)` -/
def P2145040819028397792.Spec : Prop :=
  ∀ n, P2145040819028397792.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P10352542920237323597

`∑{d}[n+1, A008683(#)*A336840((n+1)/#)]`
-/

namespace A048673.P10352542920237323597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A336840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A048673.P10352542920237323597

namespace A048673

/-- `∑{d}[n+1, A008683(#)*A336840((n+1)/#)]` -/
def P10352542920237323597.Spec : Prop :=
  ∀ n, P10352542920237323597.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P6690424721946875914

`∑{d}[n+1, A064216(#)*A349398((n+1)/#)]`
-/

namespace A048673.P6690424721946875914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064216 d * A349398 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A048673.P6690424721946875914

namespace A048673

/-- `∑{d}[n+1, A064216(#)*A349398((n+1)/#)]` -/
def P6690424721946875914.Spec : Prop :=
  ∀ n, P6690424721946875914.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P5915014662333458678

`A245447(A064216(n+1))`
-/

namespace A048673.P5915014662333458678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (A064216 (n + 1)).toNat

end

end A048673.P5915014662333458678

namespace A048673

/-- `A245447(A064216(n+1))` -/
def P5915014662333458678.Spec : Prop :=
  ∀ n, P5915014662333458678.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P3545972181654679935

`A249810(2*(n+1))`
-/

namespace A048673.P3545972181654679935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (2 * (n + 1))

end

end A048673.P3545972181654679935

namespace A048673

/-- `A249810(2*(n+1))` -/
def P3545972181654679935.Spec : Prop :=
  ∀ n, P3545972181654679935.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P7414037831323062961

`A249820(2*(n+1))+n+1`
-/

namespace A048673.P7414037831323062961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249820 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A048673.P7414037831323062961

namespace A048673

/-- `A249820(2*(n+1))+n+1` -/
def P7414037831323062961.Spec : Prop :=
  ∀ n, P7414037831323062961.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P7451742723200295828

`A283464(2*(n+1))`
-/

namespace A048673.P7451742723200295828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (2 * (n + 1))

end

end A048673.P7451742723200295828

namespace A048673

/-- `A283464(2*(n+1))` -/
def P7451742723200295828.Spec : Prop :=
  ∀ n, P7451742723200295828.a n = A048673 (n + 1)

end A048673

/-! ## A048673.P2139636651751381736

`A264996(A266408(n+1))`
-/

namespace A048673.P2139636651751381736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (A266408 (n + 1)).toNat

end

end A048673.P2139636651751381736

namespace A048673

/-- `A264996(A266408(n+1))` -/
def P2139636651751381736.Spec : Prop :=
  ∀ n, P2139636651751381736.a n = A048673 (n + 1)

end A048673

/-!
# A048674: Fixed points of A048673 and A064216: Numbers n such that if n = product_{k >= 1} (p_k)^(c_k), then Product_{k >= 1} (p_{k+1})^(c_k) = (2*n)-1, where p_k indicates the k-th prime, A000040(k).

The programs for A048674, there is no canonical definition to state claims against.
-/

/-! ## A048674.P4068767101380234703

`record[A378980(n+1)/A379216(n+1)]`
-/

namespace A048674.P4068767101380234703
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378980 (n + 1) : ℚ) / (A379216 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048674.P4068767101380234703

/-! ## A048674.P10795156604249284266

`eq[n, A048673(A028310(n))]`
-/

namespace A048674.P10795156604249284266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048674.P10795156604249284266

/-! ## A048674.P17806535302670670003

`eq[n, A283463(A004277(n))]`
-/

namespace A048674.P17806535302670670003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048674.P17806535302670670003

/-! ## A048674.P4699783058546781403

`record[A090331(A280693(n+2))]`
-/

namespace A048674.P4699783058546781403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (A280693 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048674.P4699783058546781403

/-!
# A048675: If n = p_i^e_i * ... * p_k^e_k, p_i < ... < p_k primes (with p_i = prime(i)), then a(n) = (1/2) * (e_i * 2^i + ... + e_k * 2^k).

The programs for A048675, the canonical program `A048675.P15792214674053257917` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048675 has offset 1).

The definition of A048675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048675.P13659372009013935395

`A087207(A097248(n+1))`
-/

namespace A048675.P13659372009013935395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A097248 (n + 1)).toNat

end

end A048675.P13659372009013935395

namespace A048675

/-- `A087207(A097248(n+1))` -/
def P13659372009013935395.Spec : Prop :=
  ∀ n, P13659372009013935395.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P14660327672949980217

`2^(A055396(n+1)-1)+a(A032742(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A048675.P14660327672949980217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 : ℚ) ^ (A055396 (n + 1) - 1 : ℤ) + a (A032742 (n + 1) - 1).toNat

end

end A048675.P14660327672949980217

namespace A048675

/-- `2^(A055396(n+1)-1)+a(A032742(n+1)-1)` -/
def P14660327672949980217.Spec : Prop :=
  ∀ n, P14660327672949980217.a n = (A048675 (n + 1) : ℚ)

end A048675

/-! ## A048675.P16237466232982061941

`A067029(n+1)*2^(A055396(n+1)-1)+a(A028234(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A048675.P16237466232982061941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (A067029 (n + 1) : ℚ) * (2 : ℚ) ^ (A055396 (n + 1) - 1 : ℤ) + a (A028234 (n + 1) - 1).toNat

end

end A048675.P16237466232982061941

namespace A048675

/-- `A067029(n+1)*2^(A055396(n+1)-1)+a(A028234(n+1)-1)` -/
def P16237466232982061941.Spec : Prop :=
  ∀ n, P16237466232982061941.a n = (A048675 (n + 1) : ℚ)

end A048675

/-! ## A048675.P15792214674053257917

`∑{d}[n+1, A297108(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048675

/-- `∑{d}[n+1, A297108(#)]` -/
def P15792214674053257917.Spec : Prop :=
  ∀ n, P15792214674053257917.a n = A048675 (n + 1)

theorem P15792214674053257917.correct : P15792214674053257917.Spec := by
  intro n
  simp only [A048675, Nat.add_sub_cancel]

end A048675

/-! ## A048675.P9943751976490084915

`A304735(A064664(n+1))`
-/

namespace A048675.P9943751976490084915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304735 (A064664 (n + 1)).toNat

end

end A048675.P9943751976490084915

namespace A048675

/-- `A304735(A064664(n+1))` -/
def P9943751976490084915.Spec : Prop :=
  ∀ n, P9943751976490084915.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P6557012146285389911

`A048672(A322815(n+1))`
-/

namespace A048675.P6557012146285389911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048672 (A322815 (n + 1)).toNat

end

end A048675.P6557012146285389911

namespace A048675

/-- `A048672(A322815(n+1))` -/
def P6557012146285389911.Spec : Prop :=
  ∀ n, P6557012146285389911.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P685115640796294180

`∑{p}[A097248(n+1), A156552(#)]`
-/

namespace A048675.P685115640796294180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A048675.P685115640796294180

namespace A048675

/-- `∑{p}[A097248(n+1), A156552(#)]` -/
def P685115640796294180.Spec : Prop :=
  ∀ n, P685115640796294180.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P16844972493389204138

`∑{p}[A097248(n+1), A297112(#)]`
-/

namespace A048675.P16844972493389204138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297112 p

end

end A048675.P16844972493389204138

namespace A048675

/-- `∑{p}[A097248(n+1), A297112(#)]` -/
def P16844972493389204138.Spec : Prop :=
  ∀ n, P16844972493389204138.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P14286656291878000228

`A156552(n+1)-A323905(n+1)`
-/

namespace A048675.P14286656291878000228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A323905 (n + 1)

end

end A048675.P14286656291878000228

namespace A048675

/-- `A156552(n+1)-A323905(n+1)` -/
def P14286656291878000228.Spec : Prop :=
  ∀ n, P14286656291878000228.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P5761648796369697947

`A331740(A097248(2*n+1-n))`
-/

namespace A048675.P5761648796369697947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A097248 (2 * n + 1 - n)).toNat

end

end A048675.P5761648796369697947

namespace A048675

/-- `A331740(A097248(2*n+1-n))` -/
def P5761648796369697947.Spec : Prop :=
  ∀ n, P5761648796369697947.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P11133702581340386080

`A005941(n+1)-(A323905(n+1)+1)`
-/

namespace A048675.P11133702581340386080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) - (A323905 (n + 1) + 1)

end

end A048675.P11133702581340386080

namespace A048675

/-- `A005941(n+1)-(A323905(n+1)+1)` -/
def P11133702581340386080.Spec : Prop :=
  ∀ n, P11133702581340386080.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P6402080283420798104

`A087207(n+1)+a(A003557(n+1)-1)` with `a(0)=0`
-/

namespace A048675.P6402080283420798104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087207 (n + 1) + a (A003557 (n + 1) - 1).toNat

end

end A048675.P6402080283420798104

namespace A048675

/-- `A087207(n+1)+a(A003557(n+1)-1)` -/
def P6402080283420798104.Spec : Prop :=
  ∀ n, P6402080283420798104.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P9827004508255825254

`Δ[A336415(n)]`
-/

namespace A048675.P9827004508255825254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048675.P9827004508255825254

namespace A048675

/-- `Δ[A336415(n)]` -/
def P9827004508255825254.Spec : Prop :=
  ∀ n, P9827004508255825254.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P11219046481954634525

`A336415(n+1)-A336415(n)`
-/

namespace A048675.P11219046481954634525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 (n + 1) - A336415 n

end

end A048675.P11219046481954634525

namespace A048675

/-- `A336415(n+1)-A336415(n)` -/
def P11219046481954634525.Spec : Prop :=
  ∀ n, P11219046481954634525.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P1411252848734636560

`A323243(n+1)-(A324865(n+1)+A323905(n+1))`
-/

namespace A048675.P1411252848734636560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - (A324865 (n + 1) + A323905 (n + 1))

end

end A048675.P1411252848734636560

namespace A048675

/-- `A323243(n+1)-(A324865(n+1)+A323905(n+1))` -/
def P1411252848734636560.Spec : Prop :=
  ∀ n, P1411252848734636560.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P933467337631556740

`A292380(n+1)+A292382(n+1)-A323905(n+1)`
-/

namespace A048675.P933467337631556740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1) + (A292382 (n + 1) - A323905 (n + 1))

end

end A048675.P933467337631556740

namespace A048675

/-- `A292380(n+1)+A292382(n+1)-A323905(n+1)` -/
def P933467337631556740.Spec : Prop :=
  ∀ n, P933467337631556740.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P14130929967833826014

`A252754(A250245(n+1))-A323905(n+1)`
-/

namespace A048675.P14130929967833826014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A250245 (n + 1)).toNat - A323905 (n + 1)

end

end A048675.P14130929967833826014

namespace A048675

/-- `A252754(A250245(n+1))-A323905(n+1)` -/
def P14130929967833826014.Spec : Prop :=
  ∀ n, P14130929967833826014.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P17502728043610536543

`A269388(A302025(n+1))-A323905(n+1)`
-/

namespace A048675.P17502728043610536543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat - A323905 (n + 1)

end

end A048675.P17502728043610536543

namespace A048675

/-- `A269388(A302025(n+1))-A323905(n+1)` -/
def P17502728043610536543.Spec : Prop :=
  ∀ n, P17502728043610536543.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P10518114251956581426

`A285335(A048673(n+1))`
-/

namespace A048675.P10518114251956581426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285335 (A048673 (n + 1)).toNat

end

end A048675.P10518114251956581426

namespace A048675

/-- `A285335(A048673(n+1))` -/
def P10518114251956581426.Spec : Prop :=
  ∀ n, P10518114251956581426.a n = A048675 (n + 1)

end A048675

/-! ## A048675.P16933837651419892830

`A334109(A097248(n+1)²)`
-/

namespace A048675.P16933837651419892830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334109 (A097248 (n + 1) ^ 2).toNat

end

end A048675.P16933837651419892830

namespace A048675

/-- `A334109(A097248(n+1)²)` -/
def P16933837651419892830.Spec : Prop :=
  ∀ n, P16933837651419892830.a n = A048675 (n + 1)

end A048675

/-!
# A048676: Binary encoding of factorizations, alternative 2, a(n) = bef2(n);.

The programs for A048676, there is no canonical definition to state claims against.
-/

/-! ## A048676.P65666557277240804

`A048675(A099208(n+1))`
-/

namespace A048676.P65666557277240804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A099208 (n + 1)).toNat

end

end A048676.P65666557277240804

/-! ## A048676.P6423334994327899570

`∑{d}[A099208(n+1), A297108(#)]`
-/

namespace A048676.P6423334994327899570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A048676.P6423334994327899570

/-! ## A048676.P2185894197188223051

`A048675(A099209(n+1))`
-/

namespace A048676.P2185894197188223051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A099209 (n + 1)).toNat

end

end A048676.P2185894197188223051

/-! ## A048676.P16410439012906757343

`∑{d}[A099209(n+1), A297108(#)]`
-/

namespace A048676.P16410439012906757343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A048676.P16410439012906757343

/-! ## A048676.P7081271319382085097

`A248663(A099209(n+1)%A154820(n+1))`
-/

namespace A048676.P7081271319382085097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (Int.tmod (A099209 (n + 1)) (A154820 (n + 1))).toNat

end

end A048676.P7081271319382085097

/-! ## A048676.P12059042933590247061

`A331740(A099209(n+1)²)`
-/

namespace A048676.P12059042933590247061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A099209 (n + 1) ^ 2).toNat

end

end A048676.P12059042933590247061

/-! ## A048676.P16222066715463600736

`A248663(A099209(n+1)²)+A248663(A099209(n+1))`
-/

namespace A048676.P16222066715463600736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A099209 (n + 1) ^ 2).toNat + A248663 (A099209 (n + 1)).toNat

end

end A048676.P16222066715463600736

/-!
# A048678: Binary expansion of nonnegative integers expanded to "Zeckendorffian format" with rewrite rules 0->0, 1->01.

The programs for A048678, the canonical program `A048678.P373883144184057159` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048678 has offset 0).

The definition of A048678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048678.P373883144184057159

`(3-(-1)^n)*a(floor(n/2))+(1-(-1)^n)/2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048678

/-- `(3-(-1)^n)*a(floor(n/2))+(1-(-1)^n)/2` -/
def P373883144184057159.Spec : Prop :=
  ∀ n, P373883144184057159.a n = (A048678 n : ℚ)

end A048678

/-! ## A048678.P14056201738036759863

`A124108(n)/2`
-/

namespace A048678.P14056201738036759863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124108 n : ℚ) / 2

end

end A048678.P14056201738036759863

namespace A048678

/-- `A124108(n)/2` -/
def P14056201738036759863.Spec : Prop :=
  ∀ n, P14056201738036759863.a n = (A048678 n : ℚ)

end A048678

/-! ## A048678.P5193534201235249942

`A088698(n)/3`
-/

namespace A048678.P5193534201235249942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088698 n : ℚ) / 3

end

end A048678.P5193534201235249942

namespace A048678

/-- `A088698(n)/3` -/
def P5193534201235249942.Spec : Prop :=
  ∀ n, P5193534201235249942.a n = (A048678 n : ℚ)

end A048678

/-! ## A048678.P17959398815132715760

`A088698(n)-A124108(n)`
-/

namespace A048678.P17959398815132715760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088698 n - A124108 n

end

end A048678.P17959398815132715760

namespace A048678

/-- `A088698(n)-A124108(n)` -/
def P17959398815132715760.Spec : Prop :=
  ∀ n, P17959398815132715760.a n = A048678 n

end A048678

/-! ## A048678.P10553376763000153033

`and(A088698(n), A196168(2*n))`
-/

namespace A048678.P10553376763000153033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088698 n) (A196168 (2 * n))

end

end A048678.P10553376763000153033

namespace A048678

/-- `and(A088698(n), A196168(2*n))` -/
def P10553376763000153033.Spec : Prop :=
  ∀ n, P10553376763000153033.a n = A048678 n

end A048678

/-! ## A048678.P4485041649442796608

`A003714(A048680(n))`
-/

namespace A048678.P4485041649442796608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A048680 n).toNat

end

end A048678.P4485041649442796608

namespace A048678

/-- `A003714(A048680(n))` -/
def P4485041649442796608.Spec : Prop :=
  ∀ n, P4485041649442796608.a n = A048678 n

end A048678

/-! ## A048678.P15162731567443576708

`A003714(A074049(n+1)-1)`
-/

namespace A048678.P15162731567443576708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A074049 (n + 1) - 1).toNat

end

end A048678.P15162731567443576708

namespace A048678

/-- `A003714(A074049(n+1)-1)` -/
def P15162731567443576708.Spec : Prop :=
  ∀ n, P15162731567443576708.a n = A048678 n

end A048678

/-! ## A048678.P15582786425233730228

`A379657(A005836(n+1))`
-/

namespace A048678.P15582786425233730228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379657 (A005836 (n + 1)).toNat

end

end A048678.P15582786425233730228

namespace A048678

/-- `A379657(A005836(n+1))` -/
def P15582786425233730228.Spec : Prop :=
  ∀ n, P15582786425233730228.a n = A048678 n

end A048678

/-! ## A048678.P8454667554864082712

`A196168(n)-A006257(A196168(n))`
-/

namespace A048678.P8454667554864082712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196168 n - A006257 (A196168 n).toNat

end

end A048678.P8454667554864082712

namespace A048678

/-- `A196168(n)-A006257(A196168(n))` -/
def P8454667554864082712.Spec : Prop :=
  ∀ n, P8454667554864082712.a n = A048678 n

end A048678

/-! ## A048678.P10326920772258723651

`A362090(A005823(n+1))`
-/

namespace A048678.P10326920772258723651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362090 (A005823 (n + 1)).toNat

end

end A048678.P10326920772258723651

namespace A048678

/-- `A362090(A005823(n+1))` -/
def P10326920772258723651.Spec : Prop :=
  ∀ n, P10326920772258723651.a n = A048678 n

end A048678

/-! ## A048678.P9697153580250731216

`A124108(2*n)-A003188(A124108(n))`
-/

namespace A048678.P9697153580250731216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124108 (2 * n) - A003188 (A124108 n).toNat

end

end A048678.P9697153580250731216

namespace A048678

/-- `A124108(2*n)-A003188(A124108(n))` -/
def P9697153580250731216.Spec : Prop :=
  ∀ n, P9697153580250731216.a n = A048678 n

end A048678

/-! ## A048678.P15668510718285926501

`A361646(A335063(n))`
-/

namespace A048678.P15668510718285926501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361646 (A335063 n).toNat

end

end A048678.P15668510718285926501

namespace A048678

/-- `A361646(A335063(n))` -/
def P15668510718285926501.Spec : Prop :=
  ∀ n, P15668510718285926501.a n = A048678 n

end A048678

/-! ## A048678.P2816041180388166739

`filter[A379657(n), A085357(#)]`
-/

namespace A048678.P2816041180388166739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A048678.P2816041180388166739

namespace A048678

/-- `filter[A379657(n), A085357(#)]` -/
def P2816041180388166739.Spec : Prop :=
  ∀ n, P2816041180388166739.a n = A048678 n

end A048678

/-! ## A048678.P16032116253016751438

`A002264(A088698(n))`
-/

namespace A048678.P16032116253016751438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A088698 n).toNat

end

end A048678.P16032116253016751438

namespace A048678

/-- `A002264(A088698(n))` -/
def P16032116253016751438.Spec : Prop :=
  ∀ n, P16032116253016751438.a n = A048678 n

end A048678

/-! ## A048678.P5553311085673740604

`A001281(A124108(n))`
-/

namespace A048678.P5553311085673740604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A124108 n).toNat

end

end A048678.P5553311085673740604

namespace A048678

/-- `A001281(A124108(n))` -/
def P5553311085673740604.Spec : Prop :=
  ∀ n, P5553311085673740604.a n = A048678 n

end A048678

/-! ## A048678.P6246960329514051895

`A035327(A196168(n))`
-/

namespace A048678.P6246960329514051895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A196168 n).toNat

end

end A048678.P6246960329514051895

namespace A048678

/-- `A035327(A196168(n))` -/
def P6246960329514051895.Spec : Prop :=
  ∀ n, P6246960329514051895.a n = A048678 n

end A048678

/-! ## A048678.P4481691917168380237

`A008611(A088698(n)+1)`
-/

namespace A048678.P4481691917168380237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A088698 n + 1).toNat

end

end A048678.P4481691917168380237

namespace A048678

/-- `A008611(A088698(n)+1)` -/
def P4481691917168380237.Spec : Prop :=
  ∀ n, P4481691917168380237.a n = A048678 n

end A048678

/-! ## A048678.P8206838087994996800

`A008619(A124108(n)+1)-1`
-/

namespace A048678.P8206838087994996800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A124108 n + 1).toNat - 1

end

end A048678.P8206838087994996800

namespace A048678

/-- `A008619(A124108(n)+1)-1` -/
def P8206838087994996800.Spec : Prop :=
  ∀ n, P8206838087994996800.a n = A048678 n

end A048678

/-!
# A048679: Compressed fibbinary numbers (A003714), with rewrite 0->0, 01->1 applied to their binary expansion.

The programs for A048679, there is no canonical definition to state claims against.
-/

/-! ## A048679.P3079566963463716675

`A003188(A227351(n))`
-/

namespace A048679.P3079566963463716675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A227351 n).toNat

end

end A048679.P3079566963463716675

/-! ## A048679.P11146854580369833537

`A072650(A003714(n))`
-/

namespace A048679.P11146854580369833537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A003714 n).toNat

end

end A048679.P11146854580369833537

/-! ## A048679.P18185158195500098335

`A074050(n+1)-1`
-/

namespace A048679.P18185158195500098335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074050 (n + 1) - 1

end

end A048679.P18185158195500098335

/-! ## A048679.P5233070459748836117

`A304100(comp[floor(ϕ*n)-1])-1`
-/

namespace A048679.P5233070459748836117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304100 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A048679.P5233070459748836117

/-! ## A048679.P2883360380175324654

`A054238(A072794(n))`
-/

namespace A048679.P2883360380175324654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A072794 n).toNat

end

end A048679.P2883360380175324654

/-! ## A048679.P8037642545716499579

`A023443(A074050(n+1))`
-/

namespace A048679.P8037642545716499579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074050 (n + 1)).toNat

end

end A048679.P8037642545716499579

/-! ## A048679.P8838496188586583354

`A087808(record[and(n, -(2*n+1))])`
-/

namespace A048679.P8838496188586583354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048679.P8838496188586583354

/-! ## A048679.P1658007021556090249

`A087808(A022340(n)/2)`
-/

namespace A048679.P1658007021556090249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A048679.P1658007021556090249

/-! ## A048679.P8064832688731148273

`A087808(eq[0, A014081(n)])`
-/

namespace A048679.P8064832688731148273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048679.P8064832688731148273

/-! ## A048679.P4556466251147505717

`A087808(A003714(2*n-n))`
-/

namespace A048679.P4556466251147505717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A003714 (2 * n - n)).toNat

end

end A048679.P4556466251147505717

/-! ## A048679.P4253928800663599950

`A087808(lt[n, A229763(n)+1])`
-/

namespace A048679.P4253928800663599950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A048679.P4253928800663599950

/-! ## A048679.P11111016915391459259

`A087808(lt[n-1, A229763(n)])`
-/

namespace A048679.P11111016915391459259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048679.P11111016915391459259

/-! ## A048679.P8741871989192916524

`∑{p}[A277006(n), A048675(#)]`
-/

namespace A048679.P8741871989192916524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A048679.P8741871989192916524

/-! ## A048679.P272178307603356100

`∑{p}[A277006(n), A087207(#)]`
-/

namespace A048679.P272178307603356100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A048679.P272178307603356100

/-! ## A048679.P1425563508085152790

`∑{p}[A277006(n), A233249(#)]`
-/

namespace A048679.P1425563508085152790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A048679.P1425563508085152790

/-! ## A048679.P3222119114605842760

`A087808(A118113(n))-1`
-/

namespace A048679.P3222119114605842760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A118113 n).toNat - 1

end

end A048679.P3222119114605842760

/-! ## A048679.P2456567490533871634

`A087808(A022340(n)+1)-1`
-/

namespace A048679.P2456567490533871634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A022340 n + 1).toNat - 1

end

end A048679.P2456567490533871634

/-! ## A048679.P9000859773555363831

`A072650(A277335(n))`
-/

namespace A048679.P9000859773555363831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A277335 n).toNat

end

end A048679.P9000859773555363831

/-!
# A048680: Nonnegative integers A001477 expanded with rewrite 0->0, 01->1, then interpreted as Zeckendorffian expansions (as numbers of Fibonacci number system).

The programs for A048680, there is no canonical definition to state claims against.
-/

/-! ## A048680.P13987078926794973672

`A074049(n+1)-1`
-/

namespace A048680.P13987078926794973672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (n + 1) - 1

end

end A048680.P13987078926794973672

/-! ## A048680.P18206003434163581490

`A001478(n+1)+A074049(n+1)+n`
-/

namespace A048680.P18206003434163581490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A074049 (n + 1) + (n : ℤ))

end

end A048680.P18206003434163581490

/-! ## A048680.P1954218436554670001

`A225948(and(n, -(n+1)))+A074049(n+1)`
-/

namespace A048680.P1954218436554670001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (Int.land (n : ℤ) (-(n + 1 : ℤ))).toNat + A074049 (n + 1)

end

end A048680.P1954218436554670001

/-! ## A048680.P3772396935557766610

`A134824(n+2)+A074049(n+1)`
-/

namespace A048680.P3772396935557766610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A074049 (n + 1)

end

end A048680.P3772396935557766610

/-! ## A048680.P15909508386117844531

`A260196(n+2)+A074049(n+1)`
-/

namespace A048680.P15909508386117844531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A074049 (n + 1)

end

end A048680.P15909508386117844531

/-! ## A048680.P10190398752962261927

`A227352(A006068(n))`
-/

namespace A048680.P10190398752962261927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227352 (A006068 n).toNat

end

end A048680.P10190398752962261927

/-! ## A048680.P5156969745061341587

`A227352(A286546(n)+n)`
-/

namespace A048680.P5156969745061341587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227352 (A286546 n + (n : ℤ)).toNat

end

end A048680.P5156969745061341587

/-! ## A048680.P14276308604594658643

`A072793(A054239(n))`
-/

namespace A048680.P14276308604594658643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072793 (A054239 n).toNat

end

end A048680.P14276308604594658643

/-! ## A048680.P13372130604407260711

`A023443(A074049(n+1))`
-/

namespace A048680.P13372130604407260711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074049 (n + 1)).toNat

end

end A048680.P13372130604407260711

/-! ## A048680.P942935424279371120

`A023444(A074049(n+1)+1)`
-/

namespace A048680.P942935424279371120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A074049 (n + 1) + 1).toNat

end

end A048680.P942935424279371120

/-! ## A048680.P3970497180205498474

`A078024(A014963(12*(n+1)))+A074049(n+1)`
-/

namespace A048680.P3970497180205498474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (A014963 (12 * (n + 1))).toNat + A074049 (n + 1)

end

end A048680.P3970497180205498474

/-! ## A048680.P4559943622953525950

`A022290(A048678(n))`
-/

namespace A048680.P4559943622953525950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A048678 n).toNat

end

end A048680.P4559943622953525950

/-! ## A048680.P8129097198278581383

`A356874(A124108(n))`
-/

namespace A048680.P8129097198278581383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A124108 n).toNat

end

end A048680.P8129097198278581383

/-! ## A048680.P4866975078815912740

`A327616(A088698(n)+1)-1`
-/

namespace A048680.P4866975078815912740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327616 (A088698 n + 1).toNat - 1

end

end A048680.P4866975078815912740

/-! ## A048680.P15313060830429157404

`A072646(A072637(n))`
-/

namespace A048680.P15313060830429157404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072646 (A072637 n).toNat

end

end A048680.P15313060830429157404

/-! ## A048680.P6092730920785547290

`A072646(A057163(A072635(n)))`
-/

namespace A048680.P6092730920785547290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072646 (A057163 (A072635 n).toNat).toNat

end

end A048680.P6092730920785547290

/-!
# A048681: Maximum over k of the largest squarefree number dividing a value of binomial(n,k).

The programs for A048681, there is no canonical definition to state claims against.
-/

/-! ## A048681.P13537216938532898898

`A048682(n+1)+A048633(n+1)`
-/

namespace A048681.P13537216938532898898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048682 (n + 1) + A048633 (n + 1)

end

end A048681.P13537216938532898898

/-! ## A048681.P13895229318261030569

`A048682(n+1)+A007947(A056056(n+1))*A056060(n+1)`
-/

namespace A048681.P13895229318261030569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048682 (n + 1) + A007947 (A056056 (n + 1)).toNat * A056060 (n + 1)

end

end A048681.P13895229318261030569

/-! ## A048681.P7401115375238825990

`A048682(n+1)+A163641(n+1)/A056610(n+1)*A163644(n+1)`
-/

namespace A048681.P7401115375238825990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048682 (n + 1) : ℚ) + (A163641 (n + 1) : ℚ) / (A056610 (n + 1) : ℚ) * (A163644 (n + 1) : ℚ)

end

end A048681.P7401115375238825990

/-! ## A048681.P5863768093552016242

`A048682(n+1)+A034386(n+1)/A056610(n+1)`
-/

namespace A048681.P5863768093552016242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048682 (n + 1) : ℚ) + (A034386 (n + 1) : ℚ) / (A056610 (n + 1) : ℚ)

end

end A048681.P5863768093552016242

/-! ## A048681.P17266852983185775711

`A048682(n+1)+gcd(A001405(n+1), A034386(n+1))`
-/

namespace A048681.P17266852983185775711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048682 (n + 1) + (Int.gcd (A001405 (n + 1)) (A034386 (n + 1)) : ℤ)

end

end A048681.P17266852983185775711

/-! ## A048681.P9978983206137424997

`A048682(n+1)+gcd(2*A001405(n+1), A056606(n+1))`
-/

namespace A048681.P9978983206137424997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048682 (n + 1) + (Int.gcd (2 * A001405 (n + 1)) (A056606 (n + 1)) : ℤ)

end

end A048681.P9978983206137424997

/-! ## A048681.P2196567723539452199

`A048682(n+1)+gcd(A001405(n+1)², A056606(n+1))`
-/

namespace A048681.P2196567723539452199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048682 (n + 1) + (Int.gcd (A001405 (n + 1) ^ 2) (A056606 (n + 1)) : ℤ)

end

end A048681.P2196567723539452199

/-!
# A048682: a(n) is the difference between maximal and central squarefree kernel numbers dividing values of {binomial(n,k)} or A001405(n), respectively.

The programs for A048682, there is no canonical definition to state claims against.
-/

/-! ## A048682.P5694610212733069889

`A048681(n+1)-A048633(n+1)`
-/

namespace A048682.P5694610212733069889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048681 (n + 1) - A048633 (n + 1)

end

end A048682.P5694610212733069889

/-! ## A048682.P8549874365479531016

`A048681(n+1)-A007947(A056056(n+1))*A056060(n+1)`
-/

namespace A048682.P8549874365479531016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048681 (n + 1) - A007947 (A056056 (n + 1)).toNat * A056060 (n + 1)

end

end A048682.P8549874365479531016

/-! ## A048682.P9250019953572876209

`A048681(n+1)-gcd(A001405(n+1), A034386(n+1))`
-/

namespace A048682.P9250019953572876209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048681 (n + 1) - (Int.gcd (A001405 (n + 1)) (A034386 (n + 1)) : ℤ)

end

end A048682.P9250019953572876209

/-! ## A048682.P16769452672215409335

`A048681(n+1)-gcd(2*A001405(n+1), A056606(n+1))`
-/

namespace A048682.P16769452672215409335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048681 (n + 1) - (Int.gcd (2 * A001405 (n + 1)) (A056606 (n + 1)) : ℤ)

end

end A048682.P16769452672215409335

/-! ## A048682.P10535720777526928870

`A048681(n+1)-gcd(A001405(n+1)², A056606(n+1))`
-/

namespace A048682.P10535720777526928870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048681 (n + 1) - (Int.gcd (A001405 (n + 1) ^ 2) (A056606 (n + 1)) : ℤ)

end

end A048682.P10535720777526928870

/-!
# A048683: Values of n for which the difference of maximal and central squarefree kernel numbers dividing values of {C(n,k)} or A001405(n) is zero.

The programs for A048683, there is no canonical definition to state claims against.
-/

/-! ## A048683.P9292629746525417200

`eq[0, A048682(n+1)]+1`
-/

namespace A048683.P9292629746525417200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048683.P9292629746525417200

/-! ## A048683.P16186768734976666928

`record[A000027(n+1)-A048682(n+1)]`
-/

namespace A048683.P16186768734976666928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A048682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048683.P16186768734976666928

/-! ## A048683.P16071234266320649004

`A028310(record[n+1-A048682(n+1)])`
-/

namespace A048683.P16071234266320649004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A048683.P16071234266320649004

/-! ## A048683.P5487470528989304190

`record[A005408(n)-n-A048682(n+1)]`
-/

namespace A048683.P5487470528989304190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - A048682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048683.P5487470528989304190

/-! ## A048683.P3127726613834830748

`eq[A000007(n), A048682(A028310(n))]`
-/

namespace A048683.P3127726613834830748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048682 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048683.P3127726613834830748

/-! ## A048683.P991012265027825891

`eq[A000038(n), A048682(A028310(n))]`
-/

namespace A048683.P991012265027825891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048682 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048683.P991012265027825891

/-!
# A048684: Multiplicity of the maximum squarefree kernel function applied to the binomial coefficients C(n,k).

The programs for A048684, there is no canonical definition to state claims against.
-/

/-! ## A048684.P6001022006486686767

`A230850(gcd(A034699(n+1), A192074(n+1)))`
-/

namespace A048684.P6001022006486686767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (Int.gcd (A034699 (n + 1)) (A192074 (n + 1)))

end

end A048684.P6001022006486686767

/-! ## A048684.P8310422955783569146

`A229904(2^and(A020915(n), A325950(n)))`
-/

namespace A048684.P8310422955783569146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229904 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.land (A020915 n) (A325950 n) : ℤ))).toNat

end

end A048684.P8310422955783569146

/-! ## A048684.P3888481960406835748

`A124762(A115593(n))+gcd(2, n)`
-/

namespace A048684.P3888481960406835748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A115593 n).toNat + (Nat.gcd 2 n : ℤ)

end

end A048684.P3888481960406835748

/-! ## A048684.P9443594948664375296

`gcd(A000120(A322312(2*(n+1))), A266676(n+1))`
-/

namespace A048684.P9443594948664375296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A322312 (2 * (n + 1))).toNat) (A266676 (n + 1))

end

end A048684.P9443594948664375296

/-! ## A048684.P17848948022524428784

`A368248(A340964(n+1))`
-/

namespace A048684.P17848948022524428784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368248 (A340964 (n + 1 + 16)).toNat

end

end A048684.P17848948022524428784

/-!
# A048686: Number of classes generated by function A007947 when applied to binomial coefficients.

The programs for A048686, there is no canonical definition to state claims against.
-/

/-! ## A048686.P11882246909795988098

`A080513(n)-A086076(A323710(n+1))`
-/

namespace A048686.P11882246909795988098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - A086076 (A323710 (n + 1)).toNat

end

end A048686.P11882246909795988098

/-!
# A048687: a(n) is the number of classes generated by function A001221 when applied to binomial coefficients.

The programs for A048687, there is no canonical definition to state claims against.
-/

/-! ## A048687.P751795938454713485

`A008966(A160664(A160664(n)))+A003056(n)`
-/

namespace A048687.P751795938454713485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A160664 (A160664 n).toNat).toNat + A003056 n

end

end A048687.P751795938454713485

/-! ## A048687.P12277258472579255118

`A091862(A034729(n+1))+A003056(n)`
-/

namespace A048687.P12277258472579255118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (A034729 (n + 1)).toNat + A003056 n

end

end A048687.P12277258472579255118

/-!
# A048691: a(n) = d(n^2), where d(k) = A000005(k) is the number of divisors of k.

The programs for A048691, the canonical program `A048691.P12736965295069668205` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048691 has offset 1).

The definition of A048691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048691.P12666930317621315056

`A055205(n+1)+A000005(n+1)`
-/

namespace A048691.P12666930317621315056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055205 (n + 1) + A000005 (n + 1)

end

end A048691.P12666930317621315056

namespace A048691

/-- `A055205(n+1)+A000005(n+1)` -/
def P12666930317621315056.Spec : Prop :=
  ∀ n, P12666930317621315056.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P12736965295069668205

`A000005(A000290(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A048691

/-- `A000005(A000290(n+1))` -/
def P12736965295069668205.Spec : Prop :=
  ∀ n, P12736965295069668205.a n = A048691 (n + 1)

theorem P12736965295069668205.correct : P12736965295069668205.Spec := by
  intro n
  simp only [A048691, Nat.add_sub_cancel]

end A048691

/-! ## A048691.P7142327682218058308

`∏{e}[n+1, 2*#+1]`
-/

namespace A048691.P7142327682218058308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1)

end

end A048691.P7142327682218058308

namespace A048691

/-- `∏{e}[n+1, 2*#+1]` -/
def P7142327682218058308.Spec : Prop :=
  ∀ n, (P7142327682218058308.a n : ℤ) = A048691 (n + 1)

end A048691

/-! ## A048691.P12328803905663286181

`∏{p}[n+1, val((n+1)², #)+1]`
-/

namespace A048691.P12328803905663286181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation ((n + 1) ^ 2) p + 1)

end

end A048691.P12328803905663286181

namespace A048691

/-- `∏{p}[n+1, val((n+1)², #)+1]` -/
def P12328803905663286181.Spec : Prop :=
  ∀ n, (P12328803905663286181.a n : ℤ) = A048691 (n + 1)

end A048691

/-! ## A048691.P3425696149633391683

`∑{d}[n+1, A034444(#)]`
-/

namespace A048691.P3425696149633391683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d

end

end A048691.P3425696149633391683

namespace A048691

/-- `∑{d}[n+1, A034444(#)]` -/
def P3425696149633391683.Spec : Prop :=
  ∀ n, P3425696149633391683.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P641260486021166040

`2*A063647(n+1)+1`
-/

namespace A048691.P641260486021166040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063647 (n + 1) + 1

end

end A048691.P641260486021166040

namespace A048691

/-- `2*A063647(n+1)+1` -/
def P641260486021166040.Spec : Prop :=
  ∀ n, P641260486021166040.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P2300475284095934696

`2*A018892(n+1)-1`
-/

namespace A048691.P2300475284095934696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018892 (n + 1) - 1

end

end A048691.P2300475284095934696

namespace A048691

/-- `2*A018892(n+1)-1` -/
def P2300475284095934696.Spec : Prop :=
  ∀ n, P2300475284095934696.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P9905321723819990515

`∑{d}[n+1, 2^A001221(#)]`
-/

namespace A048691.P9905321723819990515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A001221 d : ℤ)

end

end A048691.P9905321723819990515

namespace A048691

/-- `∑{d}[n+1, 2^A001221(#)]` -/
def P9905321723819990515.Spec : Prop :=
  ∀ n, P9905321723819990515.a n = (A048691 (n + 1) : ℚ)

end A048691

/-! ## A048691.P9841680900180366873

`2*A046079(2*(n+1))+1`
-/

namespace A048691.P9841680900180366873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046079 (2 * (n + 1)) + 1

end

end A048691.P9841680900180366873

namespace A048691

/-- `2*A046079(2*(n+1))+1` -/
def P9841680900180366873.Spec : Prop :=
  ∀ n, P9841680900180366873.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P13317300117141777135

`A004273(A018892(n+1))`
-/

namespace A048691.P13317300117141777135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A018892 (n + 1)).toNat

end

end A048691.P13317300117141777135

namespace A048691

/-- `A004273(A018892(n+1))` -/
def P13317300117141777135.Spec : Prop :=
  ∀ n, P13317300117141777135.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P10509862816121183201

`A004396(A146564(n+1))`
-/

namespace A048691.P10509862816121183201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A146564 (n + 1)).toNat

end

end A048691.P10509862816121183201

namespace A048691

/-- `A004396(A146564(n+1))` -/
def P10509862816121183201.Spec : Prop :=
  ∀ n, P10509862816121183201.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P2670245122970934646

`A071054(A117677(n+1))`
-/

namespace A048691.P2670245122970934646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071054 (A117677 (n + 1)).toNat

end

end A048691.P2670245122970934646

namespace A048691

/-- `A071054(A117677(n+1))` -/
def P2670245122970934646.Spec : Prop :=
  ∀ n, P2670245122970934646.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P8079365571834803870

`A004273(A063647(n+1)+1)`
-/

namespace A048691.P8079365571834803870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A063647 (n + 1) + 1).toNat

end

end A048691.P8079365571834803870

namespace A048691

/-- `A004273(A063647(n+1)+1)` -/
def P8079365571834803870.Spec : Prop :=
  ∀ n, P8079365571834803870.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P8203836442308557451

`A004273(A046079(2*(n+1))+1)`
-/

namespace A048691.P8203836442308557451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A046079 (2 * (n + 1)) + 1).toNat

end

end A048691.P8203836442308557451

namespace A048691

/-- `A004273(A046079(2*(n+1))+1)` -/
def P8203836442308557451.Spec : Prop :=
  ∀ n, P8203836442308557451.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P1217516594128245205

`A063647(n+1)+A018892(n+1)`
-/

namespace A048691.P1217516594128245205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1) + A018892 (n + 1)

end

end A048691.P1217516594128245205

namespace A048691

/-- `A063647(n+1)+A018892(n+1)` -/
def P1217516594128245205.Spec : Prop :=
  ∀ n, P1217516594128245205.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P402986259002787306

`A035116(n+1)-A065814(n+1)`
-/

namespace A048691.P402986259002787306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1) - A065814 (n + 1)

end

end A048691.P402986259002787306

namespace A048691

/-- `A035116(n+1)-A065814(n+1)` -/
def P402986259002787306.Spec : Prop :=
  ∀ n, P402986259002787306.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P4209954804556986461

`A086222(n+1)-A086165(n+1)`
-/

namespace A048691.P4209954804556986461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086222 (n + 1) - A086165 (n + 1)

end

end A048691.P4209954804556986461

namespace A048691

/-- `A086222(n+1)-A086165(n+1)` -/
def P4209954804556986461.Spec : Prop :=
  ∀ n, P4209954804556986461.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P238854274085260125

`A146564(n+1)-A063647(n+1)`
-/

namespace A048691.P238854274085260125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (n + 1) - A063647 (n + 1)

end

end A048691.P238854274085260125

namespace A048691

/-- `A146564(n+1)-A063647(n+1)` -/
def P238854274085260125.Spec : Prop :=
  ∀ n, P238854274085260125.a n = A048691 (n + 1)

end A048691

/-! ## A048691.P17660643322778065372

`A361689(n+1)-A275367(n+1)`
-/

namespace A048691.P17660643322778065372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361689 (n + 1) - A275367 (n + 1)

end

end A048691.P17660643322778065372

namespace A048691

/-- `A361689(n+1)-A275367(n+1)` -/
def P17660643322778065372.Spec : Prop :=
  ∀ n, P17660643322778065372.a n = A048691 (n + 1)

end A048691

/-!
# A048692: Triangle read by rows in which row n contains first n numbers with exactly n distinct prime factors.

The programs for A048692, there is no canonical definition to state claims against.
-/

/-! ## A048692.P15581542169334800273

`A125666(A245300(n)+1)`
-/

namespace A048692.P15581542169334800273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125666 (A245300 n + 1).toNat

end

end A048692.P15581542169334800273

/-! ## A048692.P4532089861243802354

`lt[A067003(n+1), A083399(n+1)]+1`
-/

namespace A048692.P4532089861243802354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048692.P4532089861243802354

/-! ## A048692.P6507137317189240073

`lt[A334655(n+1), A124830(n+1)]+1`
-/

namespace A048692.P6507137317189240073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A048692.P6507137317189240073

/-!
# A048693: Generalized Pellian with 2nd term equal to 6.

The programs for A048693, the canonical program `A048693.P4696771100022917895` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048693 has offset 0).

The definition of A048693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048693.P4696771100022917895

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048693

/-- `2*a(n-1)+a(n-2)` -/
def P4696771100022917895.Spec : Prop :=
  ∀ n, (P4696771100022917895.a n : ℤ) = A048693 n

theorem P4696771100022917895.correct : P4696771100022917895.Spec := by
  intro n
  simp only [A048693]

end A048693

/-! ## A048693.P1779340301310558944

`4*A000129(n)+A000129(n+1)`
-/

namespace A048693.P1779340301310558944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000129 n + A000129 (n + 1)

end

end A048693.P1779340301310558944

namespace A048693

/-- `4*A000129(n)+A000129(n+1)` -/
def P1779340301310558944.Spec : Prop :=
  ∀ n, P1779340301310558944.a n = A048693 n

end A048693

/-! ## A048693.P17738026544931839791

`ogf((1+4x)/(1-2x-x^2))`
-/

namespace A048693.P17738026544931839791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -2, -1] n

end

end A048693.P17738026544931839791

namespace A048693

/-- `ogf((1+4x)/(1-2x-x^2))` -/
def P17738026544931839791.Spec : Prop :=
  ∀ n, P17738026544931839791.a n = A048693 n

end A048693

/-! ## A048693.P15371038953168932770

`a(n-2)-2*floor(-a(n-1))` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A048693.P15371038953168932770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) - 2 * (-a (n - 1))

end

end A048693.P15371038953168932770

namespace A048693

/-- `a(n-2)-2*floor(-a(n-1))` -/
def P15371038953168932770.Spec : Prop :=
  ∀ n, P15371038953168932770.a n = A048693 n

end A048693

/-! ## A048693.P15707410912893330757

`a(n-2)+a(n-1)/sqrt(1/4)` with `a(0)=1, a(1)=6`
-/

namespace A048693.P15707410912893330757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A048693.P15707410912893330757

namespace A048693

/-- `a(n-2)+a(n-1)/sqrt(1/4)` -/
def P15707410912893330757.Spec : Prop :=
  ∀ n, P15707410912893330757.a n = (A048693 n : ℝ)

end A048693

/-! ## A048693.P13945010865032673687

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A048693.P13945010865032673687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A048693.P13945010865032673687

namespace A048693

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P13945010865032673687.Spec : Prop :=
  ∀ n, (P13945010865032673687.a n : ℤ) = A048693 n

theorem P13945010865032673687.correct : P13945010865032673687.Spec := by
  intro n
  simp only [A048693, Nat.add_sub_cancel, A048693.P13945010865032673687.a, A048693.P4696771100022917895.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048693

/-! ## A048693.P16329576468107623375

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A048693.P16329576468107623375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A048693.P16329576468107623375

namespace A048693

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P16329576468107623375.Spec : Prop :=
  ∀ n, P16329576468107623375.a n = A048693 n

end A048693

/-! ## A048693.P11545309846023449276

`A048655(n)+A000129(n)`
-/

namespace A048693.P11545309846023449276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + A000129 n

end

end A048693.P11545309846023449276

namespace A048693

/-- `A048655(n)+A000129(n)` -/
def P11545309846023449276.Spec : Prop :=
  ∀ n, P11545309846023449276.a n = A048693 n

end A048693

/-! ## A048693.P15544257024325758512

`A048694(n)-A000129(n)`
-/

namespace A048693.P15544257024325758512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n - A000129 n

end

end A048693.P15544257024325758512

namespace A048693

/-- `A048694(n)-A000129(n)` -/
def P15544257024325758512.Spec : Prop :=
  ∀ n, P15544257024325758512.a n = A048693 n

end A048693

/-! ## A048693.P4774789954113443777

`A048654(n)+Δ[A001333(n)]`
-/

namespace A048693.P4774789954113443777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (f1 (n + 1) - f1 n)

end

end A048693.P4774789954113443777

namespace A048693

/-- `A048654(n)+Δ[A001333(n)]` -/
def P4774789954113443777.Spec : Prop :=
  ∀ n, P4774789954113443777.a n = A048693 n

end A048693

/-! ## A048693.P3670140118407684311

`A221174(n)+Δ[A221172(n)]`
-/

namespace A048693.P3670140118407684311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 n + (f1 (n + 1) - f1 n)

end

end A048693.P3670140118407684311

namespace A048693

/-- `A221174(n)+Δ[A221172(n)]` -/
def P3670140118407684311.Spec : Prop :=
  ∀ n, P3670140118407684311.a n = A048693 n

end A048693

/-! ## A048693.P4887393123374249527

`A163271(n+1)+A048654(n)`
-/

namespace A048693.P4887393123374249527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A048654 n

end

end A048693.P4887393123374249527

namespace A048693

/-- `A163271(n+1)+A048654(n)` -/
def P4887393123374249527.Spec : Prop :=
  ∀ n, P4887393123374249527.a n = A048693 n

end A048693

/-! ## A048693.P1966997485443304128

`A135532(n)+A078343(n+1)`
-/

namespace A048693.P1966997485443304128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n + A078343 (n + 1)

end

end A048693.P1966997485443304128

namespace A048693

/-- `A135532(n)+A078343(n+1)` -/
def P1966997485443304128.Spec : Prop :=
  ∀ n, P1966997485443304128.a n = A048693 n

end A048693

/-! ## A048693.P1591860662776845353

`A048695(n)-A163271(n+1)`
-/

namespace A048693.P1591860662776845353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 n - A163271 (n + 1)

end

end A048693.P1591860662776845353

namespace A048693

/-- `A048695(n)-A163271(n+1)` -/
def P1591860662776845353.Spec : Prop :=
  ∀ n, P1591860662776845353.a n = A048693 n

end A048693

/-! ## A048693.P15259263408722927940

`A137199(n+2)+A111955(n)`
-/

namespace A048693.P15259263408722927940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (n + 2) + A111955 n

end

end A048693.P15259263408722927940

namespace A048693

/-- `A137199(n+2)+A111955(n)` -/
def P15259263408722927940.Spec : Prop :=
  ∀ n, P15259263408722927940.a n = A048693 n

end A048693

/-! ## A048693.P6125207610976373160

`A048654(n)+2*A000129(n)`
-/

namespace A048693.P6125207610976373160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + 2 * A000129 n

end

end A048693.P6125207610976373160

namespace A048693

/-- `A048654(n)+2*A000129(n)` -/
def P6125207610976373160.Spec : Prop :=
  ∀ n, P6125207610976373160.a n = A048693 n

end A048693

/-! ## A048693.P13879340604289193903

`A048655(n)+A002965(2*n)`
-/

namespace A048693.P13879340604289193903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + A002965 (2 * n)

end

end A048693.P13879340604289193903

namespace A048693

/-- `A048655(n)+A002965(2*n)` -/
def P13879340604289193903.Spec : Prop :=
  ∀ n, P13879340604289193903.a n = A048693 n

end A048693

/-! ## A048693.P8586152176985228165

`A135246(2*n)+A000129(n)`
-/

namespace A048693.P8586152176985228165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135246 (2 * n) + A000129 n

end

end A048693.P8586152176985228165

namespace A048693

/-- `A135246(2*n)+A000129(n)` -/
def P8586152176985228165.Spec : Prop :=
  ∀ n, P8586152176985228165.a n = A048693 n

end A048693

/-! ## A048693.P17225020162779729054

`A048695(n)-2*A000129(n)`
-/

namespace A048693.P17225020162779729054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 n - 2 * A000129 n

end

end A048693.P17225020162779729054

namespace A048693

/-- `A048695(n)-2*A000129(n)` -/
def P17225020162779729054.Spec : Prop :=
  ∀ n, P17225020162779729054.a n = A048693 n

end A048693

/-! ## A048693.P5909088733512673971

`A266504(2*n+1)+A135532(n)`
-/

namespace A048693.P5909088733512673971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n + 1) + A135532 n

end

end A048693.P5909088733512673971

namespace A048693

/-- `A266504(2*n+1)+A135532(n)` -/
def P5909088733512673971.Spec : Prop :=
  ∀ n, P5909088733512673971.a n = A048693 n

end A048693

/-!
# A048694: Generalized Pellian with second term equal to 7.

The programs for A048694, the canonical program `A048694.P15724250820898679982` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048694 has offset 0).

The definition of A048694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048694.P15724250820898679982

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048694

/-- `2*a(n-1)+a(n-2)` -/
def P15724250820898679982.Spec : Prop :=
  ∀ n, (P15724250820898679982.a n : ℤ) = A048694 n

theorem P15724250820898679982.correct : P15724250820898679982.Spec := by
  intro n
  simp only [A048694]

end A048694

/-! ## A048694.P8627873141803282136

`ogf((1+5x)/(1-2x-x^2))`
-/

namespace A048694.P8627873141803282136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -2, -1] n

end

end A048694.P8627873141803282136

namespace A048694

/-- `ogf((1+5x)/(1-2x-x^2))` -/
def P8627873141803282136.Spec : Prop :=
  ∀ n, P8627873141803282136.a n = A048694 n

end A048694

/-! ## A048694.P4738702114814738479

`a(n-2)+lcm(2, a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A048694.P4738702114814738479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1))

end

end A048694.P4738702114814738479

namespace A048694

/-- `a(n-2)+lcm(2, a(n-1))` -/
def P4738702114814738479.Spec : Prop :=
  ∀ n, (P4738702114814738479.a n : ℤ) = A048694 n

end A048694

/-! ## A048694.P4640963574497902700

`a(n-2)+a(n-1)/sqrt(1/4)` with `a(0)=1, a(1)=7`
-/

namespace A048694.P4640963574497902700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A048694.P4640963574497902700

namespace A048694

/-- `a(n-2)+a(n-1)/sqrt(1/4)` -/
def P4640963574497902700.Spec : Prop :=
  ∀ n, P4640963574497902700.a n = (A048694 n : ℝ)

end A048694

/-! ## A048694.P3150194985427560065

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A048694.P3150194985427560065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A048694.P3150194985427560065

namespace A048694

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P3150194985427560065.Spec : Prop :=
  ∀ n, (P3150194985427560065.a n : ℤ) = A048694 n

theorem P3150194985427560065.correct : P3150194985427560065.Spec := by
  intro n
  simp only [A048694, Nat.add_sub_cancel, A048694.P3150194985427560065.a, A048694.P15724250820898679982.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048694

/-! ## A048694.P16931678795206770649

`A048693(n)+A000129(n)`
-/

namespace A048694.P16931678795206770649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n + A000129 n

end

end A048694.P16931678795206770649

namespace A048694

/-- `A048693(n)+A000129(n)` -/
def P16931678795206770649.Spec : Prop :=
  ∀ n, P16931678795206770649.a n = A048694 n

end A048694

/-! ## A048694.P13802846347809327555

`A276849(n)+A221174(n)`
-/

namespace A048694.P13802846347809327555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276849 n + A221174 n

end

end A048694.P13802846347809327555

namespace A048694

/-- `A276849(n)+A221174(n)` -/
def P13802846347809327555.Spec : Prop :=
  ∀ n, P13802846347809327555.a n = A048694 n

end A048694

/-! ## A048694.P16509317811908766203

`A048695(n)-A000129(n)`
-/

namespace A048694.P16509317811908766203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 n - A000129 n

end

end A048694.P16509317811908766203

namespace A048694

/-- `A048695(n)-A000129(n)` -/
def P16509317811908766203.Spec : Prop :=
  ∀ n, P16509317811908766203.a n = A048694 n

end A048694

/-! ## A048694.P64381153948438199

`A078057(n)+Δ[A002203(n)]`
-/

namespace A048694.P64381153948438199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (f1 (n + 1) - f1 n)

end

end A048694.P64381153948438199

namespace A048694

/-- `A078057(n)+Δ[A002203(n)]` -/
def P64381153948438199.Spec : Prop :=
  ∀ n, P64381153948438199.a n = A048694 n

end A048694

/-! ## A048694.P11795123749799504567

`A135532(n)+A052542(n+1)`
-/

namespace A048694.P11795123749799504567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n + A052542 (n + 1)

end

end A048694.P11795123749799504567

namespace A048694

/-- `A135532(n)+A052542(n+1)` -/
def P11795123749799504567.Spec : Prop :=
  ∀ n, P11795123749799504567.a n = A048694 n

end A048694

/-! ## A048694.P9548338856271174417

`A163271(n+1)+A048655(n)`
-/

namespace A048694.P9548338856271174417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A048655 n

end

end A048694.P9548338856271174417

namespace A048694

/-- `A163271(n+1)+A048655(n)` -/
def P9548338856271174417.Spec : Prop :=
  ∀ n, P9548338856271174417.a n = A048694 n

end A048694

/-! ## A048694.P11942989078810564845

`A221172(n+1)+A221172(n)`
-/

namespace A048694.P11942989078810564845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + A221172 n

end

end A048694.P11942989078810564845

namespace A048694

/-- `A221172(n+1)+A221172(n)` -/
def P11942989078810564845.Spec : Prop :=
  ∀ n, P11942989078810564845.a n = A048694 n

end A048694

/-! ## A048694.P141010688098329838

`A078343(n)+A000129(n+2)`
-/

namespace A048694.P141010688098329838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + A000129 (n + 2)

end

end A048694.P141010688098329838

namespace A048694

/-- `A078343(n)+A000129(n+2)` -/
def P141010688098329838.Spec : Prop :=
  ∀ n, P141010688098329838.a n = A048694 n

end A048694

/-! ## A048694.P16809535034928228233

`A215928(n+2)+A078343(n)`
-/

namespace A048694.P16809535034928228233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2) + A078343 n

end

end A048694.P16809535034928228233

namespace A048694

/-- `A215928(n+2)+A078343(n)` -/
def P16809535034928228233.Spec : Prop :=
  ∀ n, P16809535034928228233.a n = A048694 n

end A048694

/-! ## A048694.P12781600127798909221

`A048655(n)+2*A000129(n)`
-/

namespace A048694.P12781600127798909221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + 2 * A000129 n

end

end A048694.P12781600127798909221

namespace A048694

/-- `A048655(n)+2*A000129(n)` -/
def P12781600127798909221.Spec : Prop :=
  ∀ n, P12781600127798909221.a n = A048694 n

end A048694

/-! ## A048694.P5861760362536938685

`A001333(n+1)+Δ[A002203(n)]`
-/

namespace A048694.P5861760362536938685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (f1 (n + 1) - f1 n)

end

end A048694.P5861760362536938685

namespace A048694

/-- `A001333(n+1)+Δ[A002203(n)]` -/
def P5861760362536938685.Spec : Prop :=
  ∀ n, P5861760362536938685.a n = A048694 n

end A048694

/-! ## A048694.P16463662038404275171

`A001333(n+1)+Δ[A100227(n)]`
-/

namespace A048694.P16463662038404275171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (f1 (n + 1) - f1 n)

end

end A048694.P16463662038404275171

namespace A048694

/-- `A001333(n+1)+Δ[A100227(n)]` -/
def P16463662038404275171.Spec : Prop :=
  ∀ n, P16463662038404275171.a n = A048694 n

end A048694

/-! ## A048694.P2777392598455286531

`A078057(n)+Δ[2*A001333(n)]`
-/

namespace A048694.P2777392598455286531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (f1 (n + 1) - f1 n)

end

end A048694.P2777392598455286531

namespace A048694

/-- `A078057(n)+Δ[2*A001333(n)]` -/
def P2777392598455286531.Spec : Prop :=
  ∀ n, P2777392598455286531.a n = A048694 n

end A048694

/-! ## A048694.P3633351600644367480

`A078057(n)+2*A163271(n+1)`
-/

namespace A048694.P3633351600644367480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + 2 * A163271 (n + 1)

end

end A048694.P3633351600644367480

namespace A048694

/-- `A078057(n)+2*A163271(n+1)` -/
def P3633351600644367480.Spec : Prop :=
  ∀ n, P3633351600644367480.a n = A048694 n

end A048694

/-! ## A048694.P8849265444604254716

`A266505(2*n)+A052542(n+1)`
-/

namespace A048694.P8849265444604254716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (2 * n) + A052542 (n + 1)

end

end A048694.P8849265444604254716

namespace A048694

/-- `A266505(2*n)+A052542(n+1)` -/
def P8849265444604254716.Spec : Prop :=
  ∀ n, P8849265444604254716.a n = A048694 n

end A048694

/-!
# A048695: Generalized Pellian with second term equal to 8.

The programs for A048695, the canonical program `A048695.P12312906506144184987` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048695 has offset 0).

The definition of A048695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048695.P12312906506144184987

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048695

/-- `2*a(n-1)+a(n-2)` -/
def P12312906506144184987.Spec : Prop :=
  ∀ n, (P12312906506144184987.a n : ℤ) = A048695 n

theorem P12312906506144184987.correct : P12312906506144184987.Spec := by
  intro n
  simp only [A048695]

end A048695

/-! ## A048695.P5770198796388841171

`ogf((1+6x)/(1-2x-x^2))`
-/

namespace A048695.P5770198796388841171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -2, -1] n

end

end A048695.P5770198796388841171

namespace A048695

/-- `ogf((1+6x)/(1-2x-x^2))` -/
def P5770198796388841171.Spec : Prop :=
  ∀ n, P5770198796388841171.a n = A048695 n

end A048695

/-! ## A048695.P1636414029416276863

`∑[a(n-2)+lcm(2, a(n-1))]` with `a(0)=1, a(1)=7, a(2)=9`
-/

namespace A048695.P1636414029416276863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 9] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048695.P1636414029416276863

namespace A048695

/-- `∑[a(n-2)+lcm(2, a(n-1))]` -/
def P1636414029416276863.Spec : Prop :=
  ∀ n, (P1636414029416276863.a n : ℤ) = A048695 n

end A048695

/-! ## A048695.P6250504398606756464

`a(n-2)+a(n-1)/sqrt(1/4)` with `a(0)=1, a(1)=8`
-/

namespace A048695.P6250504398606756464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) + a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A048695.P6250504398606756464

namespace A048695

/-- `a(n-2)+a(n-1)/sqrt(1/4)` -/
def P6250504398606756464.Spec : Prop :=
  ∀ n, P6250504398606756464.a n = (A048695 n : ℝ)

end A048695

/-! ## A048695.P12396489233948881884

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A048695.P12396489233948881884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A048695.P12396489233948881884

namespace A048695

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P12396489233948881884.Spec : Prop :=
  ∀ n, (P12396489233948881884.a n : ℤ) = A048695 n

theorem P12396489233948881884.correct : P12396489233948881884.Spec := by
  intro n
  simp only [A048695, Nat.add_sub_cancel, A048695.P12396489233948881884.a, A048695.P12312906506144184987.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048695

/-! ## A048695.P16942950434510293738

`A048694(n)+A000129(n)`
-/

namespace A048695.P16942950434510293738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n + A000129 n

end

end A048695.P16942950434510293738

namespace A048695

/-- `A048694(n)+A000129(n)` -/
def P16942950434510293738.Spec : Prop :=
  ∀ n, P16942950434510293738.a n = A048695 n

end A048695

/-! ## A048695.P6704473385199876261

`A048654(n)+Δ[A002203(n)]`
-/

namespace A048695.P6704473385199876261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (f1 (n + 1) - f1 n)

end

end A048695.P6704473385199876261

namespace A048695

/-- `A048654(n)+Δ[A002203(n)]` -/
def P6704473385199876261.Spec : Prop :=
  ∀ n, P6704473385199876261.a n = A048695 n

end A048695

/-! ## A048695.P280083173079050816

`A078343(n)+A002203(n+1)`
-/

namespace A048695.P280083173079050816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + A002203 (n + 1)

end

end A048695.P280083173079050816

namespace A048695

/-- `A078343(n)+A002203(n+1)` -/
def P280083173079050816.Spec : Prop :=
  ∀ n, P280083173079050816.a n = A048695 n

end A048695

/-! ## A048695.P9994467138604677116

`A111955(n)+A051927(n+1)`
-/

namespace A048695.P9994467138604677116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 n + A051927 (n + 1)

end

end A048695.P9994467138604677116

namespace A048695

/-- `A111955(n)+A051927(n+1)` -/
def P9994467138604677116.Spec : Prop :=
  ∀ n, P9994467138604677116.a n = A048695 n

end A048695

/-! ## A048695.P5710432579300872722

`A163271(n+1)+A048693(n)`
-/

namespace A048695.P5710432579300872722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A048693 n

end

end A048695.P5710432579300872722

namespace A048695

/-- `A163271(n+1)+A048693(n)` -/
def P5710432579300872722.Spec : Prop :=
  ∀ n, P5710432579300872722.a n = A048695 n

end A048695

/-! ## A048695.P16058451641514444061

`A221172(n)+A135532(n+1)`
-/

namespace A048695.P16058451641514444061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n + A135532 (n + 1)

end

end A048695.P16058451641514444061

namespace A048695

/-- `A221172(n)+A135532(n+1)` -/
def P16058451641514444061.Spec : Prop :=
  ∀ n, P16058451641514444061.a n = A048695 n

end A048695

/-! ## A048695.P15658359717552271486

`A135532(n)+A000129(n+2)`
-/

namespace A048695.P15658359717552271486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n + A000129 (n + 2)

end

end A048695.P15658359717552271486

namespace A048695

/-- `A135532(n)+A000129(n+2)` -/
def P15658359717552271486.Spec : Prop :=
  ∀ n, P15658359717552271486.a n = A048695 n

end A048695

/-! ## A048695.P5597967056133512369

`A215928(n+2)+A135532(n)`
-/

namespace A048695.P5597967056133512369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2) + A135532 n

end

end A048695.P5597967056133512369

namespace A048695

/-- `A215928(n+2)+A135532(n)` -/
def P5597967056133512369.Spec : Prop :=
  ∀ n, P5597967056133512369.a n = A048695 n

end A048695

/-! ## A048695.P12627753415732103057

`A048693(n)+2*A000129(n)`
-/

namespace A048695.P12627753415732103057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n + 2 * A000129 n

end

end A048695.P12627753415732103057

namespace A048695

/-- `A048693(n)+2*A000129(n)` -/
def P12627753415732103057.Spec : Prop :=
  ∀ n, P12627753415732103057.a n = A048695 n

end A048695

/-! ## A048695.P14764772869872935225

`A078343(n)+2*A078057(n)`
-/

namespace A048695.P14764772869872935225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + 2 * A078057 n

end

end A048695.P14764772869872935225

namespace A048695

/-- `A078343(n)+2*A078057(n)` -/
def P14764772869872935225.Spec : Prop :=
  ∀ n, P14764772869872935225.a n = A048695 n

end A048695

/-! ## A048695.P5288399811519195734

`A221173(n)+2*A002203(n)`
-/

namespace A048695.P5288399811519195734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 n + 2 * A002203 n

end

end A048695.P5288399811519195734

namespace A048695

/-- `A221173(n)+2*A002203(n)` -/
def P5288399811519195734.Spec : Prop :=
  ∀ n, P5288399811519195734.a n = A048695 n

end A048695

/-! ## A048695.P14637251441065745256

`A048654(n)+Δ[2*A001333(n)]`
-/

namespace A048695.P14637251441065745256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (f1 (n + 1) - f1 n)

end

end A048695.P14637251441065745256

namespace A048695

/-- `A048654(n)+Δ[2*A001333(n)]` -/
def P14637251441065745256.Spec : Prop :=
  ∀ n, P14637251441065745256.a n = A048695 n

end A048695

/-! ## A048695.P3062890666475568448

`A048654(n)+2*A163271(n+1)`
-/

namespace A048695.P3062890666475568448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + 2 * A163271 (n + 1)

end

end A048695.P3062890666475568448

namespace A048695

/-- `A048654(n)+2*A163271(n+1)` -/
def P3062890666475568448.Spec : Prop :=
  ∀ n, P3062890666475568448.a n = A048695 n

end A048695

/-! ## A048695.P8541140518144134382

`A221172(n+1)+2*A078343(n)`
-/

namespace A048695.P8541140518144134382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + 2 * A078343 n

end

end A048695.P8541140518144134382

namespace A048695

/-- `A221172(n+1)+2*A078343(n)` -/
def P8541140518144134382.Spec : Prop :=
  ∀ n, P8541140518144134382.a n = A048695 n

end A048695

/-! ## A048695.P2188055474395941178

`A048694(n)+A163271(n+1)/2`
-/

namespace A048695.P2188055474395941178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048694 n : ℚ) + (A163271 (n + 1) : ℚ) / 2

end

end A048695.P2188055474395941178

namespace A048695

/-- `A048694(n)+A163271(n+1)/2` -/
def P2188055474395941178.Spec : Prop :=
  ∀ n, P2188055474395941178.a n = (A048695 n : ℚ)

end A048695

/-!
# A048696: Generalized Pellian with second term equal to 9.

The programs for A048696, the canonical program `A048696.P9460989097753470199` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048696 has offset 0).

The definition of A048696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048696.P9460989097753470199

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048696

/-- `2*a(n-1)+a(n-2)` -/
def P9460989097753470199.Spec : Prop :=
  ∀ n, (P9460989097753470199.a n : ℤ) = A048696 n

theorem P9460989097753470199.correct : P9460989097753470199.Spec := by
  intro n
  simp only [A048696]

end A048696

/-! ## A048696.P5372131981748531567

`ogf((1+7x)/(1-2x-x^2))`
-/

namespace A048696.P5372131981748531567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -2, -1] n

end

end A048696.P5372131981748531567

namespace A048696

/-- `ogf((1+7x)/(1-2x-x^2))` -/
def P5372131981748531567.Spec : Prop :=
  ∀ n, P5372131981748531567.a n = A048696 n

end A048696

/-! ## A048696.P16377993677165526957

`a(n-2)+lcm(2, a(n-1))` with `a(0)=1, a(1)=9`
-/

namespace A048696.P16377993677165526957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1))

end

end A048696.P16377993677165526957

namespace A048696

/-- `a(n-2)+lcm(2, a(n-1))` -/
def P16377993677165526957.Spec : Prop :=
  ∀ n, (P16377993677165526957.a n : ℤ) = A048696 n

end A048696

/-! ## A048696.P11366043941898589271

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A048696.P11366043941898589271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A048696.P11366043941898589271

namespace A048696

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P11366043941898589271.Spec : Prop :=
  ∀ n, (P11366043941898589271.a n : ℤ) = A048696 n

theorem P11366043941898589271.correct : P11366043941898589271.Spec := by
  intro n
  simp only [A048696, Nat.add_sub_cancel, A048696.P11366043941898589271.a, A048696.P9460989097753470199.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048696

/-! ## A048696.P6016553384486672685

`Δ[A221173(n+1)]`
-/

namespace A048696.P6016553384486672685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048696.P6016553384486672685

namespace A048696

/-- `Δ[A221173(n+1)]` -/
def P6016553384486672685.Spec : Prop :=
  ∀ n, P6016553384486672685.a n = A048696 n

end A048696

/-! ## A048696.P18253408127778204151

`A048695(n)+A000129(n)`
-/

namespace A048696.P18253408127778204151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 n + A000129 n

end

end A048696.P18253408127778204151

namespace A048696

/-- `A048695(n)+A000129(n)` -/
def P18253408127778204151.Spec : Prop :=
  ∀ n, P18253408127778204151.a n = A048696 n

end A048696

/-! ## A048696.P4861904086113686243

`A048697(n)-A000129(n)`
-/

namespace A048696.P4861904086113686243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048697 n - A000129 n

end

end A048696.P4861904086113686243

namespace A048696

/-- `A048697(n)-A000129(n)` -/
def P4861904086113686243.Spec : Prop :=
  ∀ n, P4861904086113686243.a n = A048696 n

end A048696

/-! ## A048696.P3196978965052280292

`A164303(n)-A002203(n)`
-/

namespace A048696.P3196978965052280292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164303 n - A002203 n

end

end A048696.P3196978965052280292

namespace A048696

/-- `A164303(n)-A002203(n)` -/
def P3196978965052280292.Spec : Prop :=
  ∀ n, P3196978965052280292.a n = A048696 n

end A048696

/-! ## A048696.P861561638935682364

`A135532(n)+A002203(n+1)`
-/

namespace A048696.P861561638935682364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n + A002203 (n + 1)

end

end A048696.P861561638935682364

namespace A048696

/-- `A135532(n)+A002203(n+1)` -/
def P861561638935682364.Spec : Prop :=
  ∀ n, P861561638935682364.a n = A048696 n

end A048696

/-! ## A048696.P16791703607979065926

`A163271(n+1)+A048694(n)`
-/

namespace A048696.P16791703607979065926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A048694 n

end

end A048696.P16791703607979065926

namespace A048696

/-- `A163271(n+1)+A048694(n)` -/
def P16791703607979065926.Spec : Prop :=
  ∀ n, P16791703607979065926.a n = A048696 n

end A048696

/-! ## A048696.P8588796184474237814

`A221173(n+1)+A221173(n)`
-/

namespace A048696.P8588796184474237814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1) + A221173 n

end

end A048696.P8588796184474237814

namespace A048696

/-- `A221173(n+1)+A221173(n)` -/
def P8588796184474237814.Spec : Prop :=
  ∀ n, P8588796184474237814.a n = A048696 n

end A048696

/-! ## A048696.P11327720913681371145

`A048694(n)+2*A000129(n)`
-/

namespace A048696.P11327720913681371145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048694 n + 2 * A000129 n

end

end A048696.P11327720913681371145

namespace A048696

/-- `A048694(n)+2*A000129(n)` -/
def P11327720913681371145.Spec : Prop :=
  ∀ n, P11327720913681371145.a n = A048696 n

end A048696

/-! ## A048696.P13861878227781077188

`2*A048655(n)-A001333(n)`
-/

namespace A048696.P13861878227781077188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048655 n - A001333 n

end

end A048696.P13861878227781077188

namespace A048696

/-- `2*A048655(n)-A001333(n)` -/
def P13861878227781077188.Spec : Prop :=
  ∀ n, P13861878227781077188.a n = A048696 n

end A048696

/-! ## A048696.P9871746132099151511

`2*A048694(n)-A048655(n)`
-/

namespace A048696.P9871746132099151511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048694 n - A048655 n

end

end A048696.P9871746132099151511

namespace A048696

/-- `2*A048694(n)-A048655(n)` -/
def P9871746132099151511.Spec : Prop :=
  ∀ n, P9871746132099151511.a n = A048696 n

end A048696

/-! ## A048696.P6825835440673488657

`2*A048695(n)-A048694(n)`
-/

namespace A048696.P6825835440673488657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048695 n - A048694 n

end

end A048696.P6825835440673488657

namespace A048696

/-- `2*A048695(n)-A048694(n)` -/
def P6825835440673488657.Spec : Prop :=
  ∀ n, P6825835440673488657.a n = A048696 n

end A048696

/-! ## A048696.P60874137124759355

`Δ[A000129(n)+2*A002203(n)]`
-/

namespace A048696.P60874137124759355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + 2 * A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048696.P60874137124759355

namespace A048696

/-- `Δ[A000129(n)+2*A002203(n)]` -/
def P60874137124759355.Spec : Prop :=
  ∀ n, P60874137124759355.a n = A048696 n

end A048696

/-! ## A048696.P13157170379036384466

`A001333(n)+Δ[2*A002203(n)]`
-/

namespace A048696.P13157170379036384466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f1 (n + 1) - f1 n)

end

end A048696.P13157170379036384466

namespace A048696

/-- `A001333(n)+Δ[2*A002203(n)]` -/
def P13157170379036384466.Spec : Prop :=
  ∀ n, P13157170379036384466.a n = A048696 n

end A048696

/-! ## A048696.P12685156750965097540

`Δ[A000129(n)+2*A100227(n)]`
-/

namespace A048696.P12685156750965097540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + 2 * A100227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048696.P12685156750965097540

namespace A048696

/-- `Δ[A000129(n)+2*A100227(n)]` -/
def P12685156750965097540.Spec : Prop :=
  ∀ n, P12685156750965097540.a n = A048696 n

end A048696

/-! ## A048696.P5089692855243582513

`A001333(n)+Δ[2*A100227(n)]`
-/

namespace A048696.P5089692855243582513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f1 (n + 1) - f1 n)

end

end A048696.P5089692855243582513

namespace A048696

/-- `A001333(n)+Δ[2*A100227(n)]` -/
def P5089692855243582513.Spec : Prop :=
  ∀ n, P5089692855243582513.a n = A048696 n

end A048696

/-! ## A048696.P2208068756824938478

`2*A048655(n)-Δ[A000129(n)]`
-/

namespace A048696.P2208068756824938478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048655 n - (f1 (n + 1) - f1 n)

end

end A048696.P2208068756824938478

namespace A048696

/-- `2*A048655(n)-Δ[A000129(n)]` -/
def P2208068756824938478.Spec : Prop :=
  ∀ n, P2208068756824938478.a n = A048696 n

end A048696

/-!
# A048697: Generalized Pellian with second term equal to 10.

The programs for A048697, the canonical program `A048697.P16319538447097147296` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048697 has offset 0).

The definition of A048697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048697.P16319538447097147296

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A048697

/-- `2*a(n-1)+a(n-2)` -/
def P16319538447097147296.Spec : Prop :=
  ∀ n, (P16319538447097147296.a n : ℤ) = A048697 n

theorem P16319538447097147296.correct : P16319538447097147296.Spec := by
  intro n
  simp only [A048697]

end A048697

/-! ## A048697.P17258075351040692254

`ogf((1+8x)/(1-2x-x^2))`
-/

namespace A048697.P17258075351040692254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -2, -1] n

end

end A048697.P17258075351040692254

namespace A048697

/-- `ogf((1+8x)/(1-2x-x^2))` -/
def P17258075351040692254.Spec : Prop :=
  ∀ n, P17258075351040692254.a n = A048697 n

end A048697

/-! ## A048697.P13603039170452055957

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A048697.P13603039170452055957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A048697.P13603039170452055957

namespace A048697

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P13603039170452055957.Spec : Prop :=
  ∀ n, (P13603039170452055957.a n : ℤ) = A048697 n

theorem P13603039170452055957.correct : P13603039170452055957.Spec := by
  intro n
  simp only [A048697, Nat.add_sub_cancel, A048697.P13603039170452055957.a, A048697.P16319538447097147296.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048697

/-! ## A048697.P12997839144805606426

`A048696(n)+A000129(n)`
-/

namespace A048697.P12997839144805606426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048696 n + A000129 n

end

end A048697.P12997839144805606426

namespace A048697

/-- `A048696(n)+A000129(n)` -/
def P12997839144805606426.Spec : Prop :=
  ∀ n, P12997839144805606426.a n = A048697 n

end A048697

/-! ## A048697.P2796739658358717964

`A221173(n)+Δ[A048655(n)]`
-/

namespace A048697.P2796739658358717964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 n + (f1 (n + 1) - f1 n)

end

end A048697.P2796739658358717964

namespace A048697

/-- `A221173(n)+Δ[A048655(n)]` -/
def P2796739658358717964.Spec : Prop :=
  ∀ n, P2796739658358717964.a n = A048697 n

end A048697

/-! ## A048697.P6765006640936253337

`A163271(n+1)+A048695(n)`
-/

namespace A048697.P6765006640936253337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A048695 n

end

end A048697.P6765006640936253337

namespace A048697

/-- `A163271(n+1)+A048695(n)` -/
def P6765006640936253337.Spec : Prop :=
  ∀ n, P6765006640936253337.a n = A048697 n

end A048697

/-! ## A048697.P17539384202568675628

`A221172(n)+A001333(n+2)`
-/

namespace A048697.P17539384202568675628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 n + A001333 (n + 2)

end

end A048697.P17539384202568675628

namespace A048697

/-- `A221172(n)+A001333(n+2)` -/
def P17539384202568675628.Spec : Prop :=
  ∀ n, P17539384202568675628.a n = A048697 n

end A048697

/-! ## A048697.P14322828782351792475

`A048695(n)+2*A000129(n)`
-/

namespace A048697.P14322828782351792475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048695 n + 2 * A000129 n

end

end A048697.P14322828782351792475

namespace A048697

/-- `A048695(n)+2*A000129(n)` -/
def P14322828782351792475.Spec : Prop :=
  ∀ n, P14322828782351792475.a n = A048697 n

end A048697

/-! ## A048697.P4439387738343727274

`A078343(n)+2*A048654(n)`
-/

namespace A048697.P4439387738343727274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + 2 * A048654 n

end

end A048697.P4439387738343727274

namespace A048697

/-- `A078343(n)+2*A048654(n)` -/
def P4439387738343727274.Spec : Prop :=
  ∀ n, P4439387738343727274.a n = A048697 n

end A048697

/-! ## A048697.P17602747289458359872

`2*A048694(n)-A048654(n)`
-/

namespace A048697.P17602747289458359872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048694 n - A048654 n

end

end A048697.P17602747289458359872

namespace A048697

/-- `2*A048694(n)-A048654(n)` -/
def P17602747289458359872.Spec : Prop :=
  ∀ n, P17602747289458359872.a n = A048697 n

end A048697

/-! ## A048697.P7590660483405311116

`A048654(n)+6*A000129(n)`
-/

namespace A048697.P7590660483405311116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + 6 * A000129 n

end

end A048697.P7590660483405311116

namespace A048697

/-- `A048654(n)+6*A000129(n)` -/
def P7590660483405311116.Spec : Prop :=
  ∀ n, P7590660483405311116.a n = A048697 n

end A048697

/-! ## A048697.P17250171799378448725

`A000129(n)+Δ[A221173(n+1)]`
-/

namespace A048697.P17250171799378448725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f1 (n + 1) - f1 n)

end

end A048697.P17250171799378448725

namespace A048697

/-- `A000129(n)+Δ[A221173(n+1)]` -/
def P17250171799378448725.Spec : Prop :=
  ∀ n, P17250171799378448725.a n = A048697 n

end A048697

/-! ## A048697.P4824494898080277960

`Δ[A221174(n+1)]-A000129(n)`
-/

namespace A048697.P4824494898080277960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000129 n

end

end A048697.P4824494898080277960

namespace A048697

/-- `Δ[A221174(n+1)]-A000129(n)` -/
def P4824494898080277960.Spec : Prop :=
  ∀ n, P4824494898080277960.a n = A048697 n

end A048697

/-! ## A048697.P137458745614399383

`A048693(n)+2*A163271(n+1)`
-/

namespace A048697.P137458745614399383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 n + 2 * A163271 (n + 1)

end

end A048697.P137458745614399383

namespace A048697

/-- `A048693(n)+2*A163271(n+1)` -/
def P137458745614399383.Spec : Prop :=
  ∀ n, P137458745614399383.a n = A048697 n

end A048697

/-! ## A048697.P445888730073780767

`A001333(n+3)-A221175(n+1)`
-/

namespace A048697.P445888730073780767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 3) - A221175 (n + 1)

end

end A048697.P445888730073780767

namespace A048697

/-- `A001333(n+3)-A221175(n+1)` -/
def P445888730073780767.Spec : Prop :=
  ∀ n, P445888730073780767.a n = A048697 n

end A048697

/-! ## A048697.P6519528778674077023

`A048696(n)+A163271(n+1)/2`
-/

namespace A048697.P6519528778674077023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048696 n : ℚ) + (A163271 (n + 1) : ℚ) / 2

end

end A048697.P6519528778674077023

namespace A048697

/-- `A048696(n)+A163271(n+1)/2` -/
def P6519528778674077023.Spec : Prop :=
  ∀ n, P6519528778674077023.a n = (A048697 n : ℚ)

end A048697

/-! ## A048697.P17531058954760789490

`A000129(n+1)+8*A000129(n)`
-/

namespace A048697.P17531058954760789490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + 8 * A000129 n

end

end A048697.P17531058954760789490

namespace A048697

/-- `A000129(n+1)+8*A000129(n)` -/
def P17531058954760789490.Spec : Prop :=
  ∀ n, P17531058954760789490.a n = A048697 n

end A048697

/-! ## A048697.P8810158921563878418

`A221172(n+1)+2*A266505(2*n)`
-/

namespace A048697.P8810158921563878418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + 2 * A266505 (2 * n)

end

end A048697.P8810158921563878418

namespace A048697

/-- `A221172(n+1)+2*A266505(2*n)` -/
def P8810158921563878418.Spec : Prop :=
  ∀ n, P8810158921563878418.a n = A048697 n

end A048697

/-! ## A048697.P9090322756604518120

`A048654(n)+A048694(n)-A001333(n)`
-/

namespace A048697.P9090322756604518120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A048694 n - A001333 n)

end

end A048697.P9090322756604518120

namespace A048697

/-- `A048654(n)+A048694(n)-A001333(n)` -/
def P9090322756604518120.Spec : Prop :=
  ∀ n, P9090322756604518120.a n = A048697 n

end A048697

/-! ## A048697.P16835323762038655656

`A048655(n)+A048693(n)-A001333(n)`
-/

namespace A048697.P16835323762038655656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + (A048693 n - A001333 n)

end

end A048697.P16835323762038655656

namespace A048697

/-- `A048655(n)+A048693(n)-A001333(n)` -/
def P16835323762038655656.Spec : Prop :=
  ∀ n, P16835323762038655656.a n = A048697 n

end A048697

/-!
# A048698: Nonprime numbers k such that sum of aliquot divisors of k is a cube.

The programs for A048698, there is no canonical definition to state claims against.
-/

/-! ## A048698.P4495919313574534997

`filter[A194948(n+1), A005171(#)]`
-/

namespace A048698.P4495919313574534997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A048698.P4495919313574534997

/-! ## A048698.P4457889647083648553

`filter[A194948(n+1), A292438(#)]`
-/

namespace A048698.P4457889647083648553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A048698.P4457889647083648553

/-! ## A048698.P3452024865042957207

`∩[A018252(n+1), A194948(n+1)]`
-/

namespace A048698.P3452024865042957207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048698.P3452024865042957207

/-! ## A048698.P11770203971085915170

`∩[A141468(n+1), A194948(n+1)]`
-/

namespace A048698.P11770203971085915170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048698.P11770203971085915170

/-! ## A048698.P4404975590382887570

`∩[A056653(n+1), A194948(n+1)]`
-/

namespace A048698.P4404975590382887570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048698.P4404975590382887570

/-!
# A048699: Nonprime numbers whose sum of aliquot divisors (A001065) is a perfect square.

The programs for A048699, there is no canonical definition to state claims against.
-/

/-! ## A048699.P1257045030458757186

`filter[A073040(n+1), A005171(#)]`
-/

namespace A048699.P1257045030458757186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A048699.P1257045030458757186

/-! ## A048699.P9471726867331888103

`∩[A018252(n+1), A073040(n+1)]`
-/

namespace A048699.P9471726867331888103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048699.P9471726867331888103

/-! ## A048699.P14866891921081866660

`∩[A073040(n+1), A141468(n+1)]`
-/

namespace A048699.P14866891921081866660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048699.P14866891921081866660

/-! ## A048699.P1757760432694151415

`∩[A056653(n+1), A073040(n+1)]`
-/

namespace A048699.P1757760432694151415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048699.P1757760432694151415

/-! ## A048699.P4289220115487743523

`record[A005451(A073040(n+1))]`
-/

namespace A048699.P4289220115487743523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A073040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048699.P4289220115487743523

/-! ## A048699.P15807582185237950727

`record[A191558(A073040(n+1))]%A064499(n+1)²`
-/

namespace A048699.P15807582185237950727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A073040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A064499 (n + 1) ^ 2)

end

end A048699.P15807582185237950727

