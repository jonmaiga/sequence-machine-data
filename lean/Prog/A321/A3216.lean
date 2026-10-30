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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A321601: G.f.: A(x,y) = Sum_{n=-oo...+oo} (x^n + y)^n = Sum_{n>=0} Sum_{k>=0} T(n,k) * x^(n^2 + n*k) * y^k, written here as a rectangle of coefficients T(n,k) read by antidiagonals.

The programs for A321601, the canonical program `A321601.P8978637378401901694` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321601 has offset 0).

The definition of A321601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321601.P8978637378401901694

`A014473(n)+∑[A130595(A061579(n))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A321601

/-- `A014473(n)+∑[A130595(A061579(n))]` -/
def P8978637378401901694.Spec : Prop :=
  ∀ n, P8978637378401901694.a n = A321601 n

theorem P8978637378401901694.correct : P8978637378401901694.Spec := by
  intro n
  simp only [A321601]

end A321601

/-! ## A321601.P12762983355433620898

`A014473(n)+A110555(n)+A057427(n)`
-/

namespace A321601.P12762983355433620898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A110555 n + A057427 n)

end

end A321601.P12762983355433620898

namespace A321601

/-- `A014473(n)+A110555(n)+A057427(n)` -/
def P12762983355433620898.Spec : Prop :=
  ∀ n, P12762983355433620898.a n = A321601 n

end A321601

/-! ## A321601.P2168856884232664186

`A007318(n)+A110555(n)-A000007(n)`
-/

namespace A321601.P2168856884232664186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A110555 n - A000007 n)

end

end A321601.P2168856884232664186

namespace A321601

/-- `A007318(n)+A110555(n)-A000007(n)` -/
def P2168856884232664186.Spec : Prop :=
  ∀ n, P2168856884232664186.a n = A321601 n

end A321601

/-! ## A321601.P4296634839014577427

`A007318(n)+A110555(n)%A066667(n)`
-/

namespace A321601.P4296634839014577427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A110555 n) (A066667 n)

end

end A321601.P4296634839014577427

namespace A321601

/-- `A007318(n)+A110555(n)%A066667(n)` -/
def P4296634839014577427.Spec : Prop :=
  ∀ n, P4296634839014577427.a n = A321601 n

end A321601

/-! ## A321601.P6634475330611593116

`A369929(n)+A335933(A264945(n+1))`
-/

namespace A321601.P6634475330611593116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369929 n + A335933 (A264945 (n + 1)).toNat

end

end A321601.P6634475330611593116

namespace A321601

/-- `A369929(n)+A335933(A264945(n+1))` -/
def P6634475330611593116.Spec : Prop :=
  ∀ n, P6634475330611593116.a n = A321601 n

end A321601

/-!
# A321602: G.f. A(x) satisfies: 1 = Sum_{n>=0} ((1+x)^(2*n) - A(x))^n.

The programs for A321602, there is no canonical definition to state claims against.
-/

/-! ## A321602.P8189053243153188910

`∑[A057164(7*n*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A321602.P8189053243153188910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  A057164 ((7 * n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321602.P8189053243153188910

/-!
# A321603: G.f. A(x) satisfies: 1 = Sum_{n>=0} ((1+x)^(3*n) - A(x))^n.

The programs for A321603, there is no canonical definition to state claims against.
-/

/-! ## A321603.P16981680243201974356

`A072154(A000081(n)*A001819(n))`
-/

namespace A321603.P16981680243201974356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A000081 n * A001819 n).toNat

end

end A321603.P16981680243201974356

/-!
# A321606: G.f.: A(x) = Sum_{n>=0} x^n * (1+x)^(3*n^2) / A(x)^(n^2).

The programs for A321606, there is no canonical definition to state claims against.
-/

/-! ## A321606.P10716903553219443030

`A328280(n)-A353310(A323867(n))`
-/

namespace A321606.P10716903553219443030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328280 n - A353310 (A323867 n).toNat

end

end A321606.P10716903553219443030

/-! ## A321606.P8676931003124096379

`A088004(A065178(n+1)+A000522(n))`
-/

namespace A321606.P8676931003124096379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A065178 (n + 1) + A000522 n).toNat

end

end A321606.P8676931003124096379

/-! ## A321606.P16684373751584873815

`A024417(A226282(n+1)+A154416(n))`
-/

namespace A321606.P16684373751584873815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A226282 (n + 1) + A154416 n).toNat

end

end A321606.P16684373751584873815

/-!
# A321607: G.f.: A(x) = Sum_{n>=0} x^n * (1+x)^(2*n^2) / A(x)^(2*n).

The programs for A321607, there is no canonical definition to state claims against.
-/

/-! ## A321607.P16176540877085313169

`A285881(2*n!)`
-/

namespace A321607.P16176540877085313169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (2 * Nat.factorial n)

end

end A321607.P16176540877085313169

/-! ## A321607.P1356432059028129861

`A157271(A008987(n))`
-/

namespace A321607.P1356432059028129861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A008987 n).toNat

end

end A321607.P1356432059028129861

/-! ## A321607.P13886087922443574808

`A285881(2*A000142(n))`
-/

namespace A321607.P13886087922443574808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (2 * A000142 n).toNat

end

end A321607.P13886087922443574808

/-!
# A321608: G.f.: A(x) = Sum_{n>=0} x^n * (1+x)^(2*n^2) / A(x)^n.

The programs for A321608, there is no canonical definition to state claims against.
-/

/-! ## A321608.P7356461260174093590

`A360744(∑[A087981(n)])`
-/

namespace A321608.P7356461260174093590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360744 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321608.P7356461260174093590

/-! ## A321608.P13492574247681990013

`A369421(n)+A278060(A000088(n))`
-/

namespace A321608.P13492574247681990013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369421 n + A278060 (A000088 n).toNat

end

end A321608.P13492574247681990013

/-! ## A321608.P14955190540877223761

`A103221(A267911(n+1)+A085486(n))`
-/

namespace A321608.P14955190540877223761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A267911 (n + 1) + A085486 n).toNat

end

end A321608.P14955190540877223761

/-!
# A321609: Array read by antidiagonals: T(n,k) is the number of inequivalent binary n X n matrices with k ones, under row and column permutations.

The programs for A321609, there is no canonical definition to state claims against.
-/

/-! ## A321609.P16555722671733125169

`A007895(A107110(n)^A070868(n+1))`
-/

namespace A321609.P16555722671733125169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A107110 n : ℚ) ^ (A070868 (n + 1) : ℤ))).toNat

end

end A321609.P16555722671733125169

/-! ## A321609.P10563152923328683537

`A353844(2*n+1)%A018006(A107110(n))`
-/

namespace A321609.P10563152923328683537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353844 (2 * n + 1)) (A018006 (A107110 n).toNat)

end

end A321609.P10563152923328683537

/-! ## A321609.P2486552521104653050

`A000217(A107110(n)%A352191(2*n+3))`
-/

namespace A321609.P2486552521104653050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A107110 n) (A352191 (2 * n + 3))).toNat

end

end A321609.P2486552521104653050

/-! ## A321609.P9347677347642703736

`A107110(A000982(A063074(A107110(n))))`
-/

namespace A321609.P9347677347642703736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107110 (A000982 (A063074 (A107110 n).toNat).toNat).toNat

end

end A321609.P9347677347642703736

/-! ## A321609.P12941504435947037025

`A255704(n+1)%A333175(A008000(3*n+4))`
-/

namespace A321609.P12941504435947037025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255704 (n + 1)) (A333175 (A008000 (3 * n + 4)).toNat)

end

end A321609.P12941504435947037025

/-!
# A321610: Number of permutations tau of {1,...,n} such that k^2 + tau(k)^2 is prime for every k = 1,...,n.

The programs for A321610, there is no canonical definition to state claims against.
-/

/-! ## A321610.P13524210459671133966

`A321742(A125080(n))²`
-/

namespace A321610.P13524210459671133966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321742 (A125080 n).toNat ^ 2

end

end A321610.P13524210459671133966

/-! ## A321610.P12336049196768076365

`and(A024352(A123020(n)), A330659(n))`
-/

namespace A321610.P12336049196768076365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024352 (A123020 n).toNat) (A330659 n)

end

end A321610.P12336049196768076365

/-!
# A321611: Number of permutations tau of {1,...,n} such that k^4 + tau(k)^4 is prime for every k = 1,...,n.

The programs for A321611, there is no canonical definition to state claims against.
-/

/-! ## A321611.P17691790483364363264

`A216620(∑[A006505(n)])²`
-/

namespace A321611.P17691790483364363264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A321611.P17691790483364363264

/-! ## A321611.P12089448386398019472

`A216624(∑[A006505(n)])²`
-/

namespace A321611.P12089448386398019472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A321611.P12089448386398019472

/-! ## A321611.P7996788699810482433

`A000005(or(A000111(n), A185356(n)))²`
-/

namespace A321611.P7996788699810482433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A000111 n) (A185356 n)).toNat ^ 2

end

end A321611.P7996788699810482433

/-! ## A321611.P513154926571781669

`A330571(A032440(n))`
-/

namespace A321611.P513154926571781669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330571 (A032440 n).toNat

end

end A321611.P513154926571781669

/-! ## A321611.P2686285107087459555

`A307359(A000111(n))²`
-/

namespace A321611.P2686285107087459555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307359 (A000111 n).toNat ^ 2

end

end A321611.P2686285107087459555

/-!
# A321612: Numbers k such that all k - t are triangular numbers where t is a triangular number in range k/2 <= t < k.

The programs for A321612, there is no canonical definition to state claims against.
-/

/-! ## A321612.P8956257421976974897

`ogf((2+2x+2x^2+x^3+2x^4+4x^5+3x^6+5x^7+10x^8)/(1-x))`
-/

namespace A321612.P8956257421976974897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2, 1, 2, 4, 3, 5, 10] [1, -1] n

end

end A321612.P8956257421976974897

/-! ## A321612.P15836225013795136878

`eq[2, gcd(6, A099796(n+1))]`
-/

namespace A321612.P15836225013795136878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A099796 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321612.P15836225013795136878

/-! ## A321612.P3253508153287708895

`ceil(A046369(3*n+2)/8)`
-/

namespace A321612.P3253508153287708895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046369 (3 * n + 2) : ℚ) / 8⌉

end

end A321612.P3253508153287708895

/-! ## A321612.P5341130056993508997

`round(sqrt(A162694(n+4)-4))-4`
-/

namespace A321612.P5341130056993508997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A162694 (n + 4) - 4 : ℝ)) - 4

end

end A321612.P5341130056993508997

/-! ## A321612.P12302472687365051405

`A018293(lt[0, and(n, -n²)])+1`
-/

namespace A321612.P12302472687365051405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A321612.P12302472687365051405

/-!
# A321613: Partial products of the unitary totient function (A047994): a(n) = Product_{k=1..n} uphi(k).

The programs for A321613, there is no canonical definition to state claims against.
-/

/-! ## A321613.P14420429856460722642

`∏[A047994(n+1)]`
-/

namespace A321613.P14420429856460722642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P14420429856460722642

/-! ## A321613.P13057363253264057556

`∏[A392085((n+1)²)]`
-/

namespace A321613.P13057363253264057556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392085 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P13057363253264057556

/-! ## A321613.P1705692790670774716

`∏[1-A323410(n+1)+n]`
-/

namespace A321613.P1705692790670774716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323410 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P1705692790670774716

/-! ## A321613.P12726208807035426847

`A047994(1+n)*a(n-1)` with `a(0)=1`
-/

namespace A321613.P12726208807035426847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047994 (1 + n) * a (n - 1)

end

end A321613.P12726208807035426847

/-! ## A321613.P1685071679022174888

`∏[A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]]`
-/

namespace A321613.P1685071679022174888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P1685071679022174888

/-! ## A321613.P12916597488977443758

`∏[A323408(n+1)-A323407(n+1)]`
-/

namespace A321613.P12916597488977443758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A323407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P12916597488977443758

/-! ## A321613.P11305537765117908212

`∏[A345044(n+1)*A345045(n+1)]`
-/

namespace A321613.P11305537765117908212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (n + 1) * A345045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P11305537765117908212

/-! ## A321613.P16876433488277364640

`∏[A345937(n+1)*A345938(n+1)]`
-/

namespace A321613.P16876433488277364640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345937 (n + 1) * A345938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P16876433488277364640

/-! ## A321613.P1297148496060495733

`∏[A191414(n+1)/A034448(n+1)]`
-/

namespace A321613.P1297148496060495733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P1297148496060495733

/-! ## A321613.P5490507133669200052

`∏[A047994(A131732(2*n))-A264668(n)]`
-/

namespace A321613.P5490507133669200052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A131732 (2 * n)).toNat - A264668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A321613.P5490507133669200052

/-!
# A321614: Number of nonequivalent ways to place 2n nonattacking kings on a 4 X 2n chessboard under all symmetry operations of the rectangle.

The programs for A321614, there is no canonical definition to state claims against.
-/

/-! ## A321614.P14769001730729284087

`A231145(A027379(n)+∑[A008486(n)])`
-/

namespace A321614.P14769001730729284087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231145 (A027379 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321614.P14769001730729284087

/-! ## A321614.P9341586731844675903

`A231145(A151933(n)+A056220(n+1))`
-/

namespace A321614.P9341586731844675903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231145 (A151933 n + A056220 (n + 1)).toNat

end

end A321614.P9341586731844675903

/-! ## A321614.P8811463344609384750

`record[A238583((n+2)²)]`
-/

namespace A321614.P8811463344609384750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238583 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321614.P8811463344609384750

/-! ## A321614.P2924899064651539650

`A238583((A004273(n)+2)²)`
-/

namespace A321614.P2924899064651539650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238583 ((A004273 n + 2) ^ 2).toNat

end

end A321614.P2924899064651539650

/-! ## A321614.P3465265671139333695

`A238583((A004275(n+1)+1)²)`
-/

namespace A321614.P3465265671139333695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238583 ((A004275 (n + 1) + 1) ^ 2).toNat

end

end A321614.P3465265671139333695

/-!
# A321615: Triangle read by rows: T(n,k) is the number of k X k integer matrices with sum of elements n, with no zero rows or columns, up to row and column permutation.

The programs for A321615, there is no canonical definition to state claims against.
-/

/-! ## A321615.P15410219031443312826

`A317369(A269945(n))`
-/

namespace A321615.P15410219031443312826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317369 (A269945 n).toNat

end

end A321615.P15410219031443312826

/-! ## A321615.P8506820314127978887

`A374992(A370507(n)^A374996(n))`
-/

namespace A321615.P8506820314127978887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 (SequenceMachineLib.roundAway ((A370507 n : ℚ) ^ (A374996 n : ℤ))).toNat

end

end A321615.P8506820314127978887

/-! ## A321615.P12474642832862433985

`A374994(A370507(n)^A374996(n))`
-/

namespace A321615.P12474642832862433985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 (SequenceMachineLib.roundAway ((A370507 n : ℚ) ^ (A374996 n : ℤ))).toNat

end

end A321615.P12474642832862433985

/-! ## A321615.P12019024925894526206

`A265170(n+1)%A368572(A145784(n+4))`
-/

namespace A321615.P12019024925894526206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265170 (n + 1)) (A368572 (A145784 (n + 4)).toNat)

end

end A321615.P12019024925894526206

/-! ## A321615.P14645623312061323398

`A057508(A291883(n)%A114612(3*n+2))`
-/

namespace A321615.P14645623312061323398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (Int.tmod (A291883 n) (A114612 (3 * n + 2))).toNat

end

end A321615.P14645623312061323398

/-!
# A321617: Last term of the first occurrence of n consecutive odd squarefree composite numbers.

The programs for A321617, there is no canonical definition to state claims against.
-/

/-! ## A321617.P9416160620945827147

`A322493(n+1)+2*n`
-/

namespace A321617.P9416160620945827147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322493 (n + 1) + (2 * n : ℤ)

end

end A321617.P9416160620945827147

/-! ## A321617.P17860747724666139242

`A322493(n+1)+A005408(n)-1`
-/

namespace A321617.P17860747724666139242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322493 (n + 1) + A005408 n - 1

end

end A321617.P17860747724666139242

/-! ## A321617.P2094479800091060324

`A322493(n+1)+A007953(n)+n`
-/

namespace A321617.P2094479800091060324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322493 (n + 1) + A007953 n + (n : ℤ)

end

end A321617.P2094479800091060324

/-! ## A321617.P18340467266998107557

`A322493(n+1)+A039723(n)+n`
-/

namespace A321617.P18340467266998107557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322493 (n + 1) + A039723 n + (n : ℤ)

end

end A321617.P18340467266998107557

/-!
# A321621: The Riordan square of the Motzkin numbers, triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A321621, there is no canonical definition to state claims against.
-/

/-! ## A321621.P8776803442899464666

`or(A200139(n), A284490(ceil(2^(n-1))))`
-/

namespace A321621.P8776803442899464666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200139 n) (A284490 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A321621.P8776803442899464666

/-! ## A321621.P646441142580873728

`A200139(n)+A054908(A134379(n))`
-/

namespace A321621.P646441142580873728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n + A054908 (A134379 n).toNat

end

end A321621.P646441142580873728

/-! ## A321621.P9827719749093969563

`A353593(n)+A054908(A134379(n))`
-/

namespace A321621.P9827719749093969563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353593 n + A054908 (A134379 n).toNat

end

end A321621.P9827719749093969563

/-! ## A321621.P7828006531428587872

`A284256(A321630(n))+A200139(n)`
-/

namespace A321621.P7828006531428587872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A321630 n).toNat + A200139 n

end

end A321621.P7828006531428587872

/-! ## A321621.P4800405877450962708

`A321694(A321507(n))+A200139(n)`
-/

namespace A321621.P4800405877450962708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 (A321507 n).toNat + A200139 n

end

end A321621.P4800405877450962708

/-!
# A321623: The Riordan square of the large Schröder numbers, triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A321623, there is no canonical definition to state claims against.
-/

/-! ## A321623.P14141835681730075445

`2^col(n)*A133367(C(row(n)+1, 2)+col(n))`
-/

namespace A321623.P14141835681730075445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) * A133367 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A321623.P14141835681730075445

/-! ## A321623.P6860300611105766188

`A059268(n)*A133367(n)`
-/

namespace A321623.P6860300611105766188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A133367 n

end

end A321623.P6860300611105766188

/-! ## A321623.P2546138059043785404

`A006519(A193859(n))*A133367(n)`
-/

namespace A321623.P2546138059043785404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A193859 n).toNat * A133367 n

end

end A321623.P2546138059043785404

/-!
# A321624: The Riordan square of the Lucas numbers, triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A321624, the canonical program `A321624.P11577836382483131838` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321624 has offset 0).

The definition of A321624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321624.P11577836382483131838

`T(n-1,k-1)+T(n-1,k)+T(n-2,k)+2*T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321624

/-- `T(n-1,k-1)+T(n-1,k)+T(n-2,k)+2*T(n-2,k-1)` -/
def P11577836382483131838.Spec : Prop :=
  ∀ n, (P11577836382483131838.a n : ℤ) = A321624 n

theorem P11577836382483131838.correct : P11577836382483131838.Spec := by
  intro n
  simp only [A321624]

end A321624

/-! ## A321624.P7607671737403375

`A319083(A187829(n+1))+A319083(n)`
-/

namespace A321624.P7607671737403375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 (A187829 (n + 1)).toNat + A319083 n

end

end A321624.P7607671737403375

namespace A321624

/-- `A319083(A187829(n+1))+A319083(n)` -/
def P7607671737403375.Spec : Prop :=
  ∀ n, P7607671737403375.a n = A321624 n

end A321624

/-! ## A321624.P11811138300886640431

`A319083(A077168(n))+A319083(n)`
-/

namespace A321624.P11811138300886640431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 (A077168 n).toNat + A319083 n

end

end A321624.P11811138300886640431

namespace A321624

/-- `A319083(A077168(n))+A319083(n)` -/
def P11811138300886640431.Spec : Prop :=
  ∀ n, P11811138300886640431.a n = A321624 n

end A321624

/-!
# A321625: The Riordan square of the swinging factorial (A056040), triangle read by rows, T(n, k) for 0 <= k<= n.

The programs for A321625, there is no canonical definition to state claims against.
-/

/-! ## A321625.P12460154232194895795

`A275328(n+1)+A275328(n)`
-/

namespace A321625.P12460154232194895795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275328 (n + 1) + A275328 n

end

end A321625.P12460154232194895795

/-!
# A321626: Row sums of A321625.

The programs for A321626, there is no canonical definition to state claims against.
-/

/-! ## A321626.P18095772936586380701

`A088048(a(n-2)+n)-1` with `a(0)=1, a(1)=2`
-/

namespace A321626.P18095772936586380701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A088048 (a (n - 2) + (n : ℤ)).toNat - 1

end

end A321626.P18095772936586380701

/-! ## A321626.P8275788419002215721

`A025052(∏{e}[n+1, #+1]+∑[and(n, -2)])`
-/

namespace A321626.P8275788419002215721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025052 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A321626.P8275788419002215721

/-!
# A321627: The Riordan square of the double factorial of odd numbers. Triangle T(n, k), 0 <= k <= n, read by rows.

The programs for A321627, there is no canonical definition to state claims against.
-/

/-! ## A321627.P11864367337182804668

`A350557(n)-A014083(A173271(n))`
-/

namespace A321627.P11864367337182804668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350557 n - A014083 (A173271 n).toNat

end

end A321627.P11864367337182804668

/-! ## A321627.P12975152271263769632

`A350557(n)-A324235(A113019(n+1))`
-/

namespace A321627.P12975152271263769632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350557 n - A324235 (A113019 (n + 1)).toNat

end

end A321627.P12975152271263769632

/-! ## A321627.P993913923301203852

`A350557(n)-A324235(2*A113019(n))`
-/

namespace A321627.P993913923301203852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350557 n - A324235 (2 * A113019 n).toNat

end

end A321627.P993913923301203852

/-! ## A321627.P10146624693426022920

`A350557(A055649(n))`
-/

namespace A321627.P10146624693426022920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350557 (A055649 n).toNat

end

end A321627.P10146624693426022920

/-! ## A321627.P1439702311674022851

`A350557(A061378(n))`
-/

namespace A321627.P1439702311674022851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350557 (A061378 n).toNat

end

end A321627.P1439702311674022851

/-!
# A321628: Row sums of A321627.

The programs for A321628, there is no canonical definition to state claims against.
-/

/-! ## A321628.P6009574488723992130

`A000122(n²)*A295553(n)`
-/

namespace A321628.P6009574488723992130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A295553 n

end

end A321628.P6009574488723992130

/-! ## A321628.P13416171950995620698

`A020639(A008458(n))*A295553(n)`
-/

namespace A321628.P13416171950995620698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A295553 n

end

end A321628.P13416171950995620698

/-! ## A321628.P6022104092557679601

`A020639(A103517(n))*A295553(n)`
-/

namespace A321628.P6022104092557679601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A295553 n

end

end A321628.P6022104092557679601

/-! ## A321628.P6858032515011950763

`A020639(A298784(n))*A295553(n)`
-/

namespace A321628.P6858032515011950763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A298784 n).toNat * A295553 n

end

end A321628.P6858032515011950763

/-!
# A321629: The Riordan square of the permutation involutions. Triangle T(n, k), 0 <= k <= n, read by rows.

The programs for A321629, there is no canonical definition to state claims against.
-/

/-! ## A321629.P13277710679700706268

`A321621(n)+A054908(A134379(n))`
-/

namespace A321629.P13277710679700706268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321621 n + A054908 (A134379 n).toNat

end

end A321629.P13277710679700706268

/-! ## A321629.P8283276639554653921

`A321621(n)+A284256(A321630(n))`
-/

namespace A321629.P8283276639554653921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321621 n + A284256 (A321630 n).toNat

end

end A321629.P8283276639554653921

/-! ## A321629.P9237076619903391479

`A321694(A321507(n))+A321621(n)`
-/

namespace A321629.P9237076619903391479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 (A321507 n).toNat + A321621 n

end

end A321629.P9237076619903391479

/-! ## A321629.P6027386328804189947

`A216344(A187829(n+1))+A126093(n)`
-/

namespace A321629.P6027386328804189947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216344 (A187829 (n + 1)).toNat + A126093 n

end

end A321629.P6027386328804189947

/-! ## A321629.P13944702082599000259

`A200139(n)+2*A054908(A134379(n))`
-/

namespace A321629.P13944702082599000259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n + 2 * A054908 (A134379 n).toNat

end

end A321629.P13944702082599000259

/-!
# A321630: The Riordan square of the Euler numbers. Triangle T(n, k), 0 <= k <= n, read by rows.

The programs for A321630, there is no canonical definition to state claims against.
-/

/-! ## A321630.P15683237014173278726

`A086646(n)-A257013(A118190(n))`
-/

namespace A321630.P15683237014173278726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086646 n - A257013 (A118190 n).toNat

end

end A321630.P15683237014173278726

/-! ## A321630.P17048466774917686578

`A086646(n)-A335460(A207453(n+1))`
-/

namespace A321630.P17048466774917686578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086646 n - A335460 (A207453 (n + 1)).toNat

end

end A321630.P17048466774917686578

/-! ## A321630.P18416280690697436328

`A086646(n)-A122923(A142458(n+1))²`
-/

namespace A321630.P18416280690697436328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086646 n - A122923 (A142458 (n + 1)).toNat ^ 2

end

end A321630.P18416280690697436328

/-!
# A321631: Row sums of A321630.

The programs for A321631, there is no canonical definition to state claims against.
-/

/-! ## A321631.P13121121088249362297

`A090631(A054452(n+1))`
-/

namespace A321631.P13121121088249362297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090631 (A054452 (n + 1)).toNat

end

end A321631.P13121121088249362297

/-!
# A321632: Expansion of e.g.f. (1 + sin(x))/exp(x).

The programs for A321632, the canonical program `A321632.P6016284402625633267` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321632 has offset 0).

The definition of A321632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321632.P6016284402625633267

`ogf((1+3x+3x^2)/(1+3x+4x^2+2x^3))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321632

/-- `ogf((1+3x+3x^2)/(1+3x+4x^2+2x^3))` -/
def P6016284402625633267.Spec : Prop :=
  ∀ n, P6016284402625633267.a n = A321632 n

theorem P6016284402625633267.correct : P6016284402625633267.Spec := by
  intro n
  simp only [A321632]

end A321632

/-! ## A321632.P9924995096010586664

`(-1)^n-2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A321632.P9924995096010586664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (-1) ^ n - 2 * (a (n - 1) + a (n - 2))

end

end A321632.P9924995096010586664

namespace A321632

/-- `(-1)^n-2*(a(n-1)+a(n-2))` -/
def P9924995096010586664.Spec : Prop :=
  ∀ n, P9924995096010586664.a n = A321632 n

end A321632

/-! ## A321632.P3642004774041407556

`Δ[n%2-A137505(n)]`
-/

namespace A321632.P3642004774041407556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - A137505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321632.P3642004774041407556

namespace A321632

/-- `Δ[n%2-A137505(n)]` -/
def P3642004774041407556.Spec : Prop :=
  ∀ n, P3642004774041407556.a n = A321632 n

end A321632

/-! ## A321632.P339880678171905711

`A009116(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A321632.P339880678171905711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009116 (n - 1) - a (n - 1)

end

end A321632.P339880678171905711

namespace A321632

/-- `A009116(n-1)-a(n-1)` -/
def P339880678171905711.Spec : Prop :=
  ∀ n, P339880678171905711.a n = A321632 n

end A321632

/-! ## A321632.P11371733829964511404

`(1-A138231(2*n))*A056594(2*n)`
-/

namespace A321632.P11371733829964511404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A138231 (2 * n)) * A056594 (2 * n)

end

end A321632.P11371733829964511404

namespace A321632

/-- `(1-A138231(2*n))*A056594(2*n)` -/
def P11371733829964511404.Spec : Prop :=
  ∀ n, P11371733829964511404.a n = A321632 n

end A321632

/-! ## A321632.P16738939736928437708

`(1-A138231(2*n))*A057077(2*n)`
-/

namespace A321632.P16738939736928437708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A138231 (2 * n)) * A057077 (2 * n)

end

end A321632.P16738939736928437708

namespace A321632

/-- `(1-A138231(2*n))*A057077(2*n)` -/
def P16738939736928437708.Spec : Prop :=
  ∀ n, P16738939736928437708.a n = A321632 n

end A321632

/-! ## A321632.P3651379811934717346

`A087960(2*n)-A090132(n+1)/2`
-/

namespace A321632.P3651379811934717346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n) : ℚ) - (A090132 (n + 1) : ℚ) / 2

end

end A321632.P3651379811934717346

namespace A321632

/-- `A087960(2*n)-A090132(n+1)/2` -/
def P3651379811934717346.Spec : Prop :=
  ∀ n, P3651379811934717346.a n = (A321632 n : ℚ)

end A321632

/-! ## A321632.P17933568349227908156

`A131379(2*n)-A090132(n+1)/2`
-/

namespace A321632.P17933568349227908156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131379 (2 * n) : ℚ) - (A090132 (n + 1) : ℚ) / 2

end

end A321632.P17933568349227908156

namespace A321632

/-- `A131379(2*n)-A090132(n+1)/2` -/
def P17933568349227908156.Spec : Prop :=
  ∀ n, P17933568349227908156.a n = (A321632 n : ℚ)

end A321632

/-! ## A321632.P990726696272886218

`(1-A138232(2*n+1))*A057077(2*n)`
-/

namespace A321632.P990726696272886218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A138232 (2 * n + 1)) * A057077 (2 * n)

end

end A321632.P990726696272886218

namespace A321632

/-- `(1-A138232(2*n+1))*A057077(2*n)` -/
def P990726696272886218.Spec : Prop :=
  ∀ n, P990726696272886218.a n = A321632 n

end A321632

/-! ## A321632.P16173418768838907196

`∑{#}[n, (-1)^(n-#)*C(n, #)*A117569(#)]`
-/

namespace A321632.P16173418768838907196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A117569 k : ℚ)

end

end A321632.P16173418768838907196

namespace A321632

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A117569(#)]` -/
def P16173418768838907196.Spec : Prop :=
  ∀ n, P16173418768838907196.a n = (A321632 n : ℚ)

end A321632

/-!
# A321633: Number of permutations of the multiset {1,1,1,1,2,2,2,2,3,3,3,3,...,n,n,n,n} with no two consecutive terms equal.

The programs for A321633, there is no canonical definition to state claims against.
-/

/-! ## A321633.P2325433495909348414

`n!*A190830(n)`
-/

namespace A321633.P2325433495909348414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A190830 n

end

end A321633.P2325433495909348414

/-! ## A321633.P14406589946970232896

`A000142(n)*A190830(n)`
-/

namespace A321633.P14406589946970232896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A190830 n

end

end A321633.P14406589946970232896

/-! ## A321633.P14295021414884949355

`abs(A133942(n)*A190830(n))`
-/

namespace A321633.P14295021414884949355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n * A190830 n|

end

end A321633.P14295021414884949355

/-! ## A321633.P2838742436598627748

`A190830(n)*A233543(A000096(n))`
-/

namespace A321633.P2838742436598627748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190830 n * A233543 (A000096 n).toNat

end

end A321633.P2838742436598627748

/-!
# A321634: Number of arrangements of n 1's, n 2's, ..., n n's avoiding equal consecutive terms.

The programs for A321634, there is no canonical definition to state claims against.
-/

/-! ## A321634.P15166889923076950937

`n!*A321666(n)`
-/

namespace A321634.P15166889923076950937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A321666 n

end

end A321634.P15166889923076950937

/-! ## A321634.P4725965953538932353

`A322093((n-1)²+n²)`
-/

namespace A321634.P4725965953538932353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322093 (((n : ℤ) - 1) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A321634.P4725965953538932353

/-! ## A321634.P13616723146208837452

`n!*A322013((n-1)²+n²)`
-/

namespace A321634.P13616723146208837452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A322013 (((n : ℤ) - 1) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A321634.P13616723146208837452

/-! ## A321634.P5961467368882611149

`A000142(n)*A321666(n)`
-/

namespace A321634.P5961467368882611149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A321666 n

end

end A321634.P5961467368882611149

/-!
# A321643: a(n) = 5*2^n - (-1)^n.

The programs for A321643, the canonical program `A321643.P11125085577448895168` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321643 has offset 0).

The definition of A321643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n-(-1)^n` (program `A321643.P11125085577448895168`, by `A321643.P11125085577448895168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A321643.P14588490978050270495

`ogf((4+7x)/(1-x-2x^2))`
-/

namespace A321643.P14588490978050270495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7] [1, -1, -2] n

end

end A321643.P14588490978050270495

namespace A321643

/-- `ogf((4+7x)/(1-x-2x^2))` -/
def P14588490978050270495.Spec : Prop :=
  ∀ n, P14588490978050270495.a n = A321643 n

end A321643

/-! ## A321643.P11125085577448895168

`5*2^n-(-1)^n`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321643

/-- `5*2^n-(-1)^n` -/
def P11125085577448895168.Spec : Prop :=
  ∀ n, P11125085577448895168.a n = A321643 n

theorem P11125085577448895168.correct : P11125085577448895168.Spec := by
  intro n
  simp only [A321643]

end A321643

/-! ## A321643.P9387804275509769015

`abs(1-Δ[A140360(n+1)])`
-/

namespace A321643.P9387804275509769015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)|

end

end A321643.P9387804275509769015

namespace A321643

/-- `abs(1-Δ[A140360(n+1)])` -/
def P9387804275509769015.Spec : Prop :=
  ∀ n, P9387804275509769015.a n = A321643 n

end A321643

/-! ## A321643.P6025885496367935733

`abs(Δ[5*A140966(n)]+1)`
-/

namespace A321643.P6025885496367935733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A140966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1|

end

end A321643.P6025885496367935733

namespace A321643

/-- `abs(Δ[5*A140966(n)]+1)` -/
def P6025885496367935733.Spec : Prop :=
  ∀ n, P6025885496367935733.a n = A321643 n

end A321643

/-! ## A321643.P212945198170324291

`xor(A020707(n), A062510(n))`
-/

namespace A321643.P212945198170324291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A062510 n)

end

end A321643.P212945198170324291

namespace A321643

/-- `xor(A020707(n), A062510(n))` -/
def P212945198170324291.Spec : Prop :=
  ∀ n, P212945198170324291.a n = A321643 n

end A321643

/-! ## A321643.P10003157004307297607

`xor(A020714(n), A084181(n))`
-/

namespace A321643.P10003157004307297607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020714 n) (A084181 n)

end

end A321643.P10003157004307297607

namespace A321643

/-- `xor(A020714(n), A084181(n))` -/
def P10003157004307297607.Spec : Prop :=
  ∀ n, P10003157004307297607.a n = A321643 n

end A321643

/-! ## A321643.P8087871764086157106

`abs(A020714(n)-A033999(n))`
-/

namespace A321643.P8087871764086157106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020714 n - A033999 n|

end

end A321643.P8087871764086157106

namespace A321643

/-- `abs(A020714(n)-A033999(n))` -/
def P8087871764086157106.Spec : Prop :=
  ∀ n, P8087871764086157106.a n = A321643 n

end A321643

/-! ## A321643.P5563913117446011794

`xor(A056486(n+1), A080924(n))`
-/

namespace A321643.P5563913117446011794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056486 (n + 1)) (A080924 n)

end

end A321643.P5563913117446011794

namespace A321643

/-- `xor(A056486(n+1), A080924(n))` -/
def P5563913117446011794.Spec : Prop :=
  ∀ n, P5563913117446011794.a n = A321643 n

end A321643

/-! ## A321643.P9253898467596226598

`xor(A091629(n+1), A201630(n))`
-/

namespace A321643.P9253898467596226598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091629 (n + 1)) (A201630 n)

end

end A321643.P9253898467596226598

namespace A321643

/-- `xor(A091629(n+1), A201630(n))` -/
def P9253898467596226598.Spec : Prop :=
  ∀ n, P9253898467596226598.a n = A321643 n

end A321643

/-! ## A321643.P10816139711840212780

`or(A000079(n+1)+A000079(n+1), A062510(n))`
-/

namespace A321643.P10816139711840212780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 1) + A000079 (n + 1)) (A062510 n)

end

end A321643.P10816139711840212780

namespace A321643

/-- `or(A000079(n+1)+A000079(n+1), A062510(n))` -/
def P10816139711840212780.Spec : Prop :=
  ∀ n, P10816139711840212780.a n = A321643 n

end A321643

/-! ## A321643.P541844796960394063

`Δ[xor(1, 2*a(n-1)-n%2)]` with `a(0)=6`
-/

namespace A321643.P541844796960394063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  Int.xor 1 (2 * f1 (n - 1) - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321643.P541844796960394063

namespace A321643

/-- `Δ[xor(1, 2*a(n-1)-n%2)]` -/
def P541844796960394063.Spec : Prop :=
  ∀ n, P541844796960394063.a n = A321643 n

end A321643

/-! ## A321643.P9127204760753491264

`Δ[A087940(n+2)]`
-/

namespace A321643.P9127204760753491264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321643.P9127204760753491264

namespace A321643

/-- `Δ[A087940(n+2)]` -/
def P9127204760753491264.Spec : Prop :=
  ∀ n, P9127204760753491264.a n = A321643 n

end A321643

/-! ## A321643.P16914341302535671523

`Δ[5*A000225(n)-and(1, n)]`
-/

namespace A321643.P16914341302535671523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000225 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321643.P16914341302535671523

namespace A321643

/-- `Δ[5*A000225(n)-and(1, n)]` -/
def P16914341302535671523.Spec : Prop :=
  ∀ n, P16914341302535671523.a n = A321643 n

end A321643

/-! ## A321643.P10086963655818273259

`∪[A156760(n), A199209(n)]`
-/

namespace A321643.P10086963655818273259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321643.P10086963655818273259

namespace A321643

/-- `∪[A156760(n), A199209(n)]` -/
def P10086963655818273259.Spec : Prop :=
  ∀ n, (P10086963655818273259.a n : ℤ) = A321643 n

end A321643

/-! ## A321643.P6795006911793058457

`Δ[A020714(n)-A000034(n)]`
-/

namespace A321643.P6795006911793058457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321643.P6795006911793058457

namespace A321643

/-- `Δ[A020714(n)-A000034(n)]` -/
def P6795006911793058457.Spec : Prop :=
  ∀ n, P6795006911793058457.a n = A321643 n

end A321643

/-! ## A321643.P17582384060510797208

`A081808(n+1)%A321483(n)`
-/

namespace A321643.P17582384060510797208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081808 (n + 1)) (A321483 n)

end

end A321643.P17582384060510797208

namespace A321643

/-- `A081808(n+1)%A321483(n)` -/
def P17582384060510797208.Spec : Prop :=
  ∀ n, P17582384060510797208.a n = A321643 n

end A321643

/-! ## A321643.P15658589626914003719

`∪[A199115(n)-2, A199209(n)]`
-/

namespace A321643.P15658589626914003719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199115 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321643.P15658589626914003719

namespace A321643

/-- `∪[A199115(n)-2, A199209(n)]` -/
def P15658589626914003719.Spec : Prop :=
  ∀ n, (P15658589626914003719.a n : ℤ) = A321643 n

end A321643

/-! ## A321643.P12667162422205374638

`∪[A153894(2*n+1)+2, A153894(2*n)]`
-/

namespace A321643.P12667162422205374638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321643.P12667162422205374638

namespace A321643

/-- `∪[A153894(2*n+1)+2, A153894(2*n)]` -/
def P12667162422205374638.Spec : Prop :=
  ∀ n, (P12667162422205374638.a n : ℤ) = A321643 n

end A321643

/-!
# A321644: Squarefree odd composite numbers whose factors are all twin primes (not necessarily from the same pair).

The programs for A321644, there is no canonical definition to state claims against.
-/

/-! ## A321644.P509790100977242923

`filter[A334141(n+1), A354353(#)]`
-/

namespace A321644.P509790100977242923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A321644.P509790100977242923

/-! ## A321644.P15197213467115976861

`filter[A334141(n+1), A380469(#)]`
-/

namespace A321644.P15197213467115976861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A321644.P15197213467115976861

/-! ## A321644.P841236404108508566

`filter[A334141(n+2), A354108(#)]`
-/

namespace A321644.P841236404108508566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A321644.P841236404108508566

/-! ## A321644.P2496975778092142008

`filter[A334141(n+2), A354819(#)]`
-/

namespace A321644.P2496975778092142008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A321644.P2496975778092142008

/-! ## A321644.P2450643773488981943

`filter[A334141(n+1), A066247(#)]`
-/

namespace A321644.P2450643773488981943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A321644.P2450643773488981943

/-! ## A321644.P8948452905252357661

`filter[A334141(n+1), A202238(#)]`
-/

namespace A321644.P8948452905252357661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A321644.P8948452905252357661

/-! ## A321644.P15704039847075173272

`filter[A334141(n+1), A323162(#)]`
-/

namespace A321644.P15704039847075173272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A321644.P15704039847075173272

/-! ## A321644.P11208270607362685058

`filter[A334141(n+2), A005171(#)]`
-/

namespace A321644.P11208270607362685058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A321644.P11208270607362685058

/-! ## A321644.P8673311746899097015

`filter[A334141(n+2), A283265(#)]`
-/

namespace A321644.P8673311746899097015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A321644.P8673311746899097015

/-! ## A321644.P342017482032865787

`filter[A334141(n+2), A292438(#)]`
-/

namespace A321644.P342017482032865787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A321644.P342017482032865787

/-! ## A321644.P2552799087416459759

`filter[A062505(n+1), A380469(#)]`
-/

namespace A321644.P2552799087416459759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A321644.P2552799087416459759

/-! ## A321644.P46274039305373087

`filter[A062505(n+2), A354819(#)]`
-/

namespace A321644.P46274039305373087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A321644.P46274039305373087

/-! ## A321644.P10841154801272544870

`∩[A024556(n+1), A062505(n+1)]`
-/

namespace A321644.P10841154801272544870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321644.P10841154801272544870

/-! ## A321644.P2307724308764515331

`∩[A024556(n+1), A334141(n+1)]`
-/

namespace A321644.P2307724308764515331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321644.P2307724308764515331

/-! ## A321644.P11963039380256597418

`∩[A061346(n+1), A334141(n+1)]`
-/

namespace A321644.P11963039380256597418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321644.P11963039380256597418

/-! ## A321644.P5654918159087822750

`∩[A226025(n+1), A334141(n+1)]`
-/

namespace A321644.P5654918159087822750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321644.P5654918159087822750

/-! ## A321644.P2296817860741495521

`∩[A078505(n+1), A334141(n+1)]`
-/

namespace A321644.P2296817860741495521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321644.P2296817860741495521

/-! ## A321644.P1252261014903900080

`∩[A068992(n+1), A334141(n+1)]`
-/

namespace A321644.P1252261014903900080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321644.P1252261014903900080

/-! ## A321644.P4152617611954645731

`∩[A062505(n+1), A120944(n+1)]`
-/

namespace A321644.P4152617611954645731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321644.P4152617611954645731

/-! ## A321644.P10840705076236832639

`filter[A334141(n+1), A174898(#)]`
-/

namespace A321644.P10840705076236832639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A321644.P10840705076236832639

/-!
# A321645: Number of distinct row/column permutations of plane partitions of n.

The programs for A321645, there is no canonical definition to state claims against.
-/

/-! ## A321645.P10234003898512753360

`A225086(A294591(n))`
-/

namespace A321645.P10234003898512753360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A294591 n).toNat

end

end A321645.P10234003898512753360

/-! ## A321645.P13164655473279781975

`A055679(A038665(n))-A172471(n)`
-/

namespace A321645.P13164655473279781975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A038665 n).toNat - A172471 n

end

end A321645.P13164655473279781975

/-!
# A321646: Number of distinct row/column permutations of Ferrers diagrams of integer partitions of n.

The programs for A321646, there is no canonical definition to state claims against.
-/

/-! ## A321646.P8172470495678634851

`A087817(A149490(n))`
-/

namespace A321646.P8172470495678634851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087817 (A149490 n).toNat

end

end A321646.P8172470495678634851

/-! ## A321646.P12958740540874943743

`A098286(A104433(n))`
-/

namespace A321646.P12958740540874943743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098286 (A104433 n).toNat

end

end A321646.P12958740540874943743

/-! ## A321646.P909048790397849605

`A098286(A104434(n))`
-/

namespace A321646.P909048790397849605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098286 (A104434 n).toNat

end

end A321646.P909048790397849605

/-!
# A321647: Number of distinct row/column permutations of the Ferrers diagram of the integer partition with Heinz number n.

The programs for A321647, the canonical program `A321647.P6743024007268455286` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321647 has offset 1).

The definition of A321647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321647.P4785129754642340060

`A008480(n+1)*A321648(n+1)`
-/

namespace A321647.P4785129754642340060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A321648 (n + 1)

end

end A321647.P4785129754642340060

namespace A321647

/-- `A008480(n+1)*A321648(n+1)` -/
def P4785129754642340060.Spec : Prop :=
  ∀ n, P4785129754642340060.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P6743024007268455286

`A008480(n+1)*A008480(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A321647

/-- `A008480(n+1)*A008480(A122111(n+1))` -/
def P6743024007268455286.Spec : Prop :=
  ∀ n, P6743024007268455286.a n = A321647 (n + 1)

theorem P6743024007268455286.correct : P6743024007268455286.Spec := by
  intro n
  simp only [A321647, Nat.add_sub_cancel]

end A321647

/-! ## A321647.P2345306339557977948

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A321648(n+1)`
-/

namespace A321647.P2345306339557977948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A321648 (n + 1) : ℚ)

end

end A321647.P2345306339557977948

namespace A321647

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A321648(n+1)` -/
def P2345306339557977948.Spec : Prop :=
  ∀ n, P2345306339557977948.a n = (A321647 (n + 1) : ℚ)

end A321647

/-! ## A321647.P3029157596555210800

`abs(A355939(n+1))*A321648(n+1)`
-/

namespace A321647.P3029157596555210800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)| * A321648 (n + 1)

end

end A321647.P3029157596555210800

namespace A321647

/-- `abs(A355939(n+1))*A321648(n+1)` -/
def P3029157596555210800.Spec : Prop :=
  ∀ n, P3029157596555210800.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P16024904654812297708

`A001222(n+1)!/∏{e}[n+1, #!]*A321648(n+1)`
-/

namespace A321647.P16024904654812297708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) * (A321648 (n + 1) : ℚ)

end

end A321647.P16024904654812297708

namespace A321647

/-- `A001222(n+1)!/∏{e}[n+1, #!]*A321648(n+1)` -/
def P16024904654812297708.Spec : Prop :=
  ∀ n, P16024904654812297708.a n = (A321647 (n + 1) : ℚ)

end A321647

/-! ## A321647.P10553963994194531845

`A050382(A101296(n+1))*A321648(n+1)`
-/

namespace A321647.P10553963994194531845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050382 (A101296 (n + 1)).toNat * A321648 (n + 1)

end

end A321647.P10553963994194531845

namespace A321647

/-- `A050382(A101296(n+1))*A321648(n+1)` -/
def P10553963994194531845.Spec : Prop :=
  ∀ n, P10553963994194531845.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P5249843792918684436

`A028310(A168324(n+1))*A321648(n+1)`
-/

namespace A321647.P5249843792918684436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A168324 (n + 1)).toNat * A321648 (n + 1)

end

end A321647.P5249843792918684436

namespace A321647

/-- `A028310(A168324(n+1))*A321648(n+1)` -/
def P5249843792918684436.Spec : Prop :=
  ∀ n, P5249843792918684436.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P8864762951417694822

`A318762(A181819(n+1))*A321648(n+1)`
-/

namespace A321647.P8864762951417694822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A181819 (n + 1)).toNat * A321648 (n + 1)

end

end A321647.P8864762951417694822

namespace A321647

/-- `A318762(A181819(n+1))*A321648(n+1)` -/
def P8864762951417694822.Spec : Prop :=
  ∀ n, P8864762951417694822.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P7037144719049054125

`A321648(n+1)*A321648(A329607(n+1))`
-/

namespace A321647.P7037144719049054125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (n + 1) * A321648 (A329607 (n + 1)).toNat

end

end A321647.P7037144719049054125

namespace A321647

/-- `A321648(n+1)*A321648(A329607(n+1))` -/
def P7037144719049054125.Spec : Prop :=
  ∀ n, P7037144719049054125.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P11953687057971111919

`A298941(A087560(n+1))*A321648(n+1)`
-/

namespace A321647.P11953687057971111919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (A087560 (n + 1)).toNat * A321648 (n + 1)

end

end A321647.P11953687057971111919

namespace A321647

/-- `A298941(A087560(n+1))*A321648(n+1)` -/
def P11953687057971111919.Spec : Prop :=
  ∀ n, P11953687057971111919.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P4908373531738324966

`A321648(n+1)*A325392(A003961(n+1))`
-/

namespace A321647.P4908373531738324966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (n + 1) * A325392 (A003961 (n + 1)).toNat

end

end A321647.P4908373531738324966

namespace A321647

/-- `A321648(n+1)*A325392(A003961(n+1))` -/
def P4908373531738324966.Spec : Prop :=
  ∀ n, P4908373531738324966.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P472816062043588659

`A321648(n+1)*A325392(A064988(n+1))`
-/

namespace A321647.P472816062043588659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (n + 1) * A325392 (A064988 (n + 1)).toNat

end

end A321647.P472816062043588659

namespace A321647

/-- `A321648(n+1)*A325392(A064988(n+1))` -/
def P472816062043588659.Spec : Prop :=
  ∀ n, P472816062043588659.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P17567013886734598391

`A206487(A071364(n+1))*A321648(n+1)`
-/

namespace A321647.P17567013886734598391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A071364 (n + 1)).toNat * A321648 (n + 1)

end

end A321647.P17567013886734598391

namespace A321647

/-- `A206487(A071364(n+1))*A321648(n+1)` -/
def P17567013886734598391.Spec : Prop :=
  ∀ n, P17567013886734598391.a n = A321647 (n + 1)

end A321647

/-! ## A321647.P56443523974388804

`A206487(A097272(n+1))*A321648(n+1)`
-/

namespace A321647.P56443523974388804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A097272 (n + 1)).toNat * A321648 (n + 1)

end

end A321647.P56443523974388804

namespace A321647

/-- `A206487(A097272(n+1))*A321648(n+1)` -/
def P56443523974388804.Spec : Prop :=
  ∀ n, P56443523974388804.a n = A321647 (n + 1)

end A321647

/-!
# A321648: Number of permutations of the conjugate of the integer partition with Heinz number n.

The programs for A321648, the canonical program `A321648.P2406903624027956817` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321648 has offset 1).

The definition of A321648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A122111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321648.P2406903624027956817

`A008480(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A321648

/-- `A008480(A122111(n+1))` -/
def P2406903624027956817.Spec : Prop :=
  ∀ n, P2406903624027956817.a n = A321648 (n + 1)

theorem P2406903624027956817.correct : P2406903624027956817.Spec := by
  intro n
  simp only [A321648, Nat.add_sub_cancel]

end A321648

/-! ## A321648.P2501837429857967545

`A321647(n+1)/A008480(n+1)`
-/

namespace A321648.P2501837429857967545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A008480 (n + 1) : ℚ)

end

end A321648.P2501837429857967545

namespace A321648

/-- `A321647(n+1)/A008480(n+1)` -/
def P2501837429857967545.Spec : Prop :=
  ∀ n, P2501837429857967545.a n = (A321648 (n + 1) : ℚ)

end A321648

/-! ## A321648.P10594609378446616618

`A321647(n+1)/A050382(A101296(n+1))`
-/

namespace A321648.P10594609378446616618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A050382 (A101296 (n + 1)).toNat : ℚ)

end

end A321648.P10594609378446616618

namespace A321648

/-- `A321647(n+1)/A050382(A101296(n+1))` -/
def P10594609378446616618.Spec : Prop :=
  ∀ n, P10594609378446616618.a n = (A321648 (n + 1) : ℚ)

end A321648

/-! ## A321648.P10943393152131902035

`A321647(n+1)/A318762(A181819(n+1))`
-/

namespace A321648.P10943393152131902035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A318762 (A181819 (n + 1)).toNat : ℚ)

end

end A321648.P10943393152131902035

namespace A321648

/-- `A321647(n+1)/A318762(A181819(n+1))` -/
def P10943393152131902035.Spec : Prop :=
  ∀ n, P10943393152131902035.a n = (A321648 (n + 1) : ℚ)

end A321648

/-! ## A321648.P8477962731137521575

`A321647(n+1)/A298941(A087560(n+1))`
-/

namespace A321648.P8477962731137521575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A298941 (A087560 (n + 1)).toNat : ℚ)

end

end A321648.P8477962731137521575

namespace A321648

/-- `A321647(n+1)/A298941(A087560(n+1))` -/
def P8477962731137521575.Spec : Prop :=
  ∀ n, P8477962731137521575.a n = (A321648 (n + 1) : ℚ)

end A321648

/-! ## A321648.P6350623236833164149

`A321647(n+1)/A325392(A003961(n+1))`
-/

namespace A321648.P6350623236833164149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A325392 (A003961 (n + 1)).toNat : ℚ)

end

end A321648.P6350623236833164149

namespace A321648

/-- `A321647(n+1)/A325392(A003961(n+1))` -/
def P6350623236833164149.Spec : Prop :=
  ∀ n, P6350623236833164149.a n = (A321648 (n + 1) : ℚ)

end A321648

/-! ## A321648.P5842974091866183409

`A321647(n+1)/A325392(A332818(n+1))`
-/

namespace A321648.P5842974091866183409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A325392 (A332818 (n + 1)).toNat : ℚ)

end

end A321648.P5842974091866183409

namespace A321648

/-- `A321647(n+1)/A325392(A332818(n+1))` -/
def P5842974091866183409.Spec : Prop :=
  ∀ n, P5842974091866183409.a n = (A321648 (n + 1) : ℚ)

end A321648

/-! ## A321648.P10415954504224769156

`A321647(n+1)/A325392(A064988(n+1))`
-/

namespace A321648.P10415954504224769156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A325392 (A064988 (n + 1)).toNat : ℚ)

end

end A321648.P10415954504224769156

namespace A321648

/-- `A321647(n+1)/A325392(A064988(n+1))` -/
def P10415954504224769156.Spec : Prop :=
  ∀ n, P10415954504224769156.a n = (A321648 (n + 1) : ℚ)

end A321648

/-! ## A321648.P9468251590905865722

`A321647(n+1)/A206487(A071364(n+1))`
-/

namespace A321648.P9468251590905865722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A206487 (A071364 (n + 1)).toNat : ℚ)

end

end A321648.P9468251590905865722

namespace A321648

/-- `A321647(n+1)/A206487(A071364(n+1))` -/
def P9468251590905865722.Spec : Prop :=
  ∀ n, P9468251590905865722.a n = (A321648 (n + 1) : ℚ)

end A321648

/-! ## A321648.P11043764548096714500

`A124774(gcd(A087207(n+1), A297109(n+1)))`
-/

namespace A321648.P11043764548096714500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (Int.gcd (A087207 (n + 1)) (A297109 (n + 1)))

end

end A321648.P11043764548096714500

namespace A321648

/-- `A124774(gcd(A087207(n+1), A297109(n+1)))` -/
def P11043764548096714500.Spec : Prop :=
  ∀ n, P11043764548096714500.a n = A321648 (n + 1)

end A321648

/-!
# A321650: Irregular triangle whose n-th row is the reversed conjugate of the integer partition with Heinz number n.

The programs for A321650, there is no canonical definition to state claims against.
-/

/-! ## A321650.P7074920258190040955

`A038538(or(A086329(2*n), A141214(n)))`
-/

namespace A321650.P7074920258190040955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038538 (Int.lor (A086329 (2 * n)) (A141214 n)).toNat

end

end A321650.P7074920258190040955

/-! ## A321650.P12691626922977692507

`gcd(A196547(A064766(n)), A268679(2*(n+2)))`
-/

namespace A321650.P12691626922977692507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196547 (A064766 n).toNat) (A268679 (2 * (n + 2)))

end

end A321650.P12691626922977692507

/-! ## A321650.P4198853206251373394

`gcd(A194983(2*n+1), A276775(A333123(3*n+2)))`
-/

namespace A321650.P4198853206251373394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194983 (2 * n + 1)) (A276775 (A333123 (3 * n + 2)).toNat)

end

end A321650.P4198853206251373394

/-! ## A321650.P3776218359792311181

`A030346((n+1)^A127836(2*n))`
-/

namespace A321650.P3776218359792311181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A127836 (2 * n) : ℤ))).toNat

end

end A321650.P3776218359792311181

/-! ## A321650.P8976373492294548203

`A030346(A282462(n+1))`
-/

namespace A321650.P8976373492294548203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030346 (A282462 (n + 1)).toNat

end

end A321650.P8976373492294548203

/-!
# A321651: Number of even permutations f of {1,...,n} such that k^3 + f(k)^3 is a practical number for every k = 1,...,n.

The programs for A321651, there is no canonical definition to state claims against.
-/

/-! ## A321651.P17789514773794061016

`A161895(A072881(n+1)+A000010(n+1))`
-/

namespace A321651.P17789514773794061016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A072881 (n + 1) + A000010 (n + 1)).toNat

end

end A321651.P17789514773794061016

/-!
# A321652: Number of nonnegative integer matrices with sum of entries equal to n and no zero rows or columns, with weakly decreasing row sums and column sums.

The programs for A321652, there is no canonical definition to state claims against.
-/

/-! ## A321652.P12707843396441279191

`A300700(n)+A027868(A027911(n))`
-/

namespace A321652.P12707843396441279191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300700 n + A027868 (A027911 n).toNat

end

end A321652.P12707843396441279191

/-! ## A321652.P11650192920743814895

`A008621(A125784(n))-A085062(n)`
-/

namespace A321652.P11650192920743814895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A125784 n).toNat - A085062 n

end

end A321652.P11650192920743814895

/-!
# A321655: Number of distinct row/column permutations of strict plane partitions of n.

The programs for A321655, there is no canonical definition to state claims against.
-/

/-! ## A321655.P7030415088581750121

`A321662(n)+A351638(n)-1`
-/

namespace A321655.P7030415088581750121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321662 n + (A351638 n - 1)

end

end A321655.P7030415088581750121

/-! ## A321655.P17798078109031943725

`A004396(A336130(n)+A336128(n))`
-/

namespace A321655.P17798078109031943725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A336130 n + A336128 n).toNat

end

end A321655.P17798078109031943725

/-! ## A321655.P10839634631652560126

`A014681(A351638(n)+A321662(n))`
-/

namespace A321655.P10839634631652560126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A351638 n + A321662 n).toNat

end

end A321655.P10839634631652560126

/-! ## A321655.P17906634402788607720

`A102899(A336130(n)+A336128(n))`
-/

namespace A321655.P17906634402788607720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 (A336130 n + A336128 n).toNat

end

end A321655.P17906634402788607720

/-! ## A321655.P18328471183356435366

`A133310(A336130(n)+A336128(n))`
-/

namespace A321655.P18328471183356435366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A336130 n + A336128 n).toNat

end

end A321655.P18328471183356435366

/-!
# A321656: Fibonacci numbers with distinct digits.

The programs for A321656, there is no canonical definition to state claims against.
-/

/-! ## A321656.P10416461606940653035

`filter[A010784(n+1), A010056(#)]`
-/

namespace A321656.P10416461606940653035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A321656.P10416461606940653035

/-! ## A321656.P11733204446191029044

`record[A137564(A000045(n))]`
-/

namespace A321656.P11733204446191029044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321656.P11733204446191029044

/-! ## A321656.P4260294355998209300

`record[A137564(A053602(n))]`
-/

namespace A321656.P4260294355998209300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A053602 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321656.P4260294355998209300

/-! ## A321656.P13612915834076089861

`record[A137564(A103609(n))]`
-/

namespace A321656.P13612915834076089861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A103609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321656.P13612915834076089861

/-! ## A321656.P2986259722834498939

`eq[n, A035514(A137564(n))]`
-/

namespace A321656.P2986259722834498939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035514 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321656.P2986259722834498939

/-!
# A321657: Base-4 deletable primes (written in base 10).

The programs for A321657, there is no canonical definition to state claims against.
-/

/-! ## A321657.P2777339862932448200

`p?[record[A003986(A156009(n+1))]]`
-/

namespace A321657.P2777339862932448200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A156009 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321657.P2777339862932448200

/-! ## A321657.P7143521062251869878

`eq[A005408(n), A286050(A062584(n)+1)]`
-/

namespace A321657.P7143521062251869878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286050 (A062584 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321657.P7143521062251869878

/-! ## A321657.P10308635449903834455

`eq[A071041(n), A269252(n+1)]`
-/

namespace A321657.P10308635449903834455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321657.P10308635449903834455

/-! ## A321657.P880982205442587050

`∩[A042987(n+1), A375738(n+1)]`
-/

namespace A321657.P880982205442587050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321657.P880982205442587050

/-! ## A321657.P903302564062330825

`∩[A089189(n+1), A375738(n+1)]`
-/

namespace A321657.P903302564062330825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321657.P903302564062330825

/-!
# A321658: Primes that are not base-4 deletable primes (written in base 10).

The programs for A321658, there is no canonical definition to state claims against.
-/

/-! ## A321658.P12049350724991169988

`p?[A271955(n)+A036993(n+1)]`
-/

namespace A321658.P12049350724991169988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271955 n + A036993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321658.P12049350724991169988

/-! ## A321658.P1786242556831861500

`p?[∏{d}[A023717(3*n+1), #]]`
-/

namespace A321658.P1786242556831861500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A321658.P1786242556831861500

/-! ## A321658.P3035667533583108050

`p?[A023717(abs(1-n))^gcd(3, n)]`
-/

namespace A321658.P3035667533583108050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 |1 - (n : ℤ)|.toNat ^ Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321658.P3035667533583108050

/-! ## A321658.P16591392977186578371

`∩[A040102(n+1), A354912(n)]`
-/

namespace A321658.P16591392977186578371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321658.P16591392977186578371

/-!
# A321659: Number of nonnegative integer matrices with sum of entries equal to n and no zero rows or columns, whose nonzero entries are all distinct.

The programs for A321659, there is no canonical definition to state claims against.
-/

/-! ## A321659.P14192565975223694276

`and(ceil(3^(n-1)), A071699(ceil(5^n/4)))`
-/

namespace A321659.P14192565975223694276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A071699 ⌈(5 ^ n : ℚ) / 4⌉.toNat)

end

end A321659.P14192565975223694276

/-! ## A321659.P17002549632371111018

`A020650(∑{d}[n+1, lcm(#, (n+1)²)]^floor(n/3))`
-/

namespace A321659.P17002549632371111018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d ((n + 1) ^ 2) : ℕ) : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))).toNat

end

end A321659.P17002549632371111018

/-! ## A321659.P4953333376985858818

`and(ceil(3^(n-1)), A053919((n+1)²/∏{p}[n+1, #]))`
-/

namespace A321659.P4953333376985858818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A053919 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A321659.P4953333376985858818

/-!
# A321660: Number of nonnegative integer matrices with sum of entries equal to n and no zero rows or columns, whose entries are all distinct.

The programs for A321660, there is no canonical definition to state claims against.
-/

/-! ## A321660.P9643913923603062495

`A105356(A384891(n))`
-/

namespace A321660.P9643913923603062495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105356 (A384891 n).toNat

end

end A321660.P9643913923603062495

/-! ## A321660.P7175467798578505509

`∑[and(A001590(n+3), A336262(3*n))]`
-/

namespace A321660.P7175467798578505509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001590 (n + 3)) (A336262 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321660.P7175467798578505509

/-! ## A321660.P4740950852119967284

`A016813(A271372(n)^A134734(n+1))`
-/

namespace A321660.P4740950852119967284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.roundAway ((A271372 n : ℚ) ^ (A134734 (n + 1) : ℤ))).toNat

end

end A321660.P4740950852119967284

/-!
# A321661: Number of non-isomorphic multiset partitions of weight n where the nonzero entries of the incidence matrix are all distinct.

The programs for A321661, there is no canonical definition to state claims against.
-/

/-! ## A321661.P3534955841018631338

`A118759(A271372(n)+A032020(n))`
-/

namespace A321661.P3534955841018631338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A271372 n + A032020 n).toNat

end

end A321661.P3534955841018631338

/-! ## A321661.P13921301811167507848

`A156246(A333149(n)+A032020(n))`
-/

namespace A321661.P13921301811167507848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156246 (A333149 n + A032020 n).toNat

end

end A321661.P13921301811167507848

/-! ## A321661.P18324813364019257786

`A271371(n)+A118759(A351638(n))`
-/

namespace A321661.P18324813364019257786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271371 n + A118759 (A351638 n).toNat

end

end A321661.P18324813364019257786

/-! ## A321661.P9730752332119537850

`A000194(A032020(n)*A321660(n))`
-/

namespace A321661.P9730752332119537850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A032020 n * A321660 n).toNat

end

end A321661.P9730752332119537850

/-!
# A321662: Number of non-isomorphic multiset partitions of weight n whose incidence matrix has all distinct entries.

The programs for A321662, there is no canonical definition to state claims against.
-/

/-! ## A321662.P15571242323112598312

`A321655(n)+1-A351638(n)`
-/

namespace A321662.P15571242323112598312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321655 n + (1 - A351638 n)

end

end A321662.P15571242323112598312

/-! ## A321662.P17685396012948632343

`A014681(A321655(n))-A351638(n)`
-/

namespace A321662.P17685396012948632343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A321655 n).toNat - A351638 n

end

end A321662.P17685396012948632343

/-! ## A321662.P13571010323743315398

`A323462(A032139(n))`
-/

namespace A321662.P13571010323743315398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323462 (A032139 n).toNat

end

end A321662.P13571010323743315398

/-! ## A321662.P3332663031639562179

`A323462(A384891(n))`
-/

namespace A321662.P3332663031639562179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323462 (A384891 n).toNat

end

end A321662.P3332663031639562179

/-! ## A321662.P13495484719201129224

`A367306(A298478(n+1))`
-/

namespace A321662.P13495484719201129224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A298478 (n + 1)).toNat

end

end A321662.P13495484719201129224

/-!
# A321663: a(n) = prime(n)^prime(n+2).

The programs for A321663, there is no canonical definition to state claims against.
-/

/-! ## A321663.P17750915558154255707

`p?[comp[6*n]]^p?[2*n+5]`
-/

namespace A321663.P17750915558154255707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

end

end A321663.P17750915558154255707

/-! ## A321663.P11126785019000085343

`ratio[A002110(n)]^p?[2*n+5]`
-/

namespace A321663.P11126785019000085343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A321663.P11126785019000085343

/-! ## A321663.P7413796800707198689

`p?[A004274(n)]^A000040(n+3)`
-/

namespace A321663.P7413796800707198689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A000040 (n + 3) : ℤ)

end

end A321663.P7413796800707198689

/-! ## A321663.P3635236618840946521

`A000040(n+1)^A000040(n+3)`
-/

namespace A321663.P3635236618840946521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000040 (n + 3) : ℤ)

end

end A321663.P3635236618840946521

/-!
# A321664: A sequence consisting of three disjoint copies of the Fibonacci sequence, one shifted, with the property that for any four consecutive terms the maximum term is the sum of the two minimum terms.

The programs for A321664, the canonical program `A321664.P1292611556970221603` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321664 has offset 0).

The definition of A321664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321664.P12085255425850261727

`ogf((x+x^2+x^3-x^5-x^7)/(1-2x^3+x^9))`
-/

namespace A321664.P12085255425850261727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 0, -1, 0, -1] [1, 0, 0, -2, 0, 0, 0, 0, 0, 1] n

end

end A321664.P12085255425850261727

namespace A321664

/-- `ogf((x+x^2+x^3-x^5-x^7)/(1-2x^3+x^9))` -/
def P12085255425850261727.Spec : Prop :=
  ∀ n, P12085255425850261727.a n = A321664 n

end A321664

/-! ## A321664.P1292611556970221603

`2*a(n-3)-a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1, a(6)=2, a(7)=3, a(8)=2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321664

/-- `2*a(n-3)-a(n-9)` -/
def P1292611556970221603.Spec : Prop :=
  ∀ n, P1292611556970221603.a n = A321664 n

theorem P1292611556970221603.correct : P1292611556970221603.Spec := by
  intro n
  simp only [A321664]

end A321664

/-! ## A321664.P7434900246626968029

`A053602(∑[A204418(n)])-A079978(n)`
-/

namespace A321664.P7434900246626968029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A079978 n

end

end A321664.P7434900246626968029

namespace A321664

/-- `A053602(∑[A204418(n)])-A079978(n)` -/
def P7434900246626968029.Spec : Prop :=
  ∀ n, P7434900246626968029.a n = A321664 n

end A321664

/-! ## A321664.P7660749730888952125

`A320015(A196534(n+1))+A048485(n+1)`
-/

namespace A321664.P7660749730888952125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320015 (A196534 (n + 1)).toNat + A048485 (n + 1)

end

end A321664.P7660749730888952125

namespace A321664

/-- `A320015(A196534(n+1))+A048485(n+1)` -/
def P7660749730888952125.Spec : Prop :=
  ∀ n, P7660749730888952125.a n = A321664 n

end A321664

/-! ## A321664.P8802747512606108511

`A039913(lt[A163078(n+1), A352950(3*n+4)])`
-/

namespace A321664.P8802747512606108511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352950 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321664.P8802747512606108511

namespace A321664

/-- `A039913(lt[A163078(n+1), A352950(3*n+4)])` -/
def P8802747512606108511.Spec : Prop :=
  ∀ n, P8802747512606108511.a n = A321664 n

end A321664

/-!
# A321665: Number of strict integer partitions of n containing no 1's or prime powers.

The programs for A321665, there is no canonical definition to state claims against.
-/

/-! ## A321665.P7552650003638036135

`A321347(n)-a(n-1)` with `a(0)=1`
-/

namespace A321665.P7552650003638036135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321347 n - a (n - 1)

end

end A321665.P7552650003638036135

/-! ## A321665.P1033971421124313783

`A005136(A078173(n+1)*A321378(n))`
-/

namespace A321665.P1033971421124313783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A078173 (n + 1) * A321378 n).toNat

end

end A321665.P1033971421124313783

/-! ## A321665.P7090272642793489082

`A005136(A101048(n)*A321378(n))`
-/

namespace A321665.P7090272642793489082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A101048 n * A321378 n).toNat

end

end A321665.P7090272642793489082

/-! ## A321665.P1870803015226853960

`A279061(A115095(n+1)*A321378(n))`
-/

namespace A321665.P1870803015226853960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A115095 (n + 1) * A321378 n).toNat

end

end A321665.P1870803015226853960

/-! ## A321665.P10716048464512030653

`ceil(A001222(A322843(3*(n+1)))*A321378(n)/9)`
-/

namespace A321665.P10716048464512030653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001222 (A322843 (3 * (n + 1))).toNat * A321378 n : ℚ) / 9⌉

end

end A321665.P10716048464512030653

/-!
# A321666: Number of arrangements of n 1's, n 2's, ..., n n's avoiding equal consecutive terms and introduced in ascending order.

The programs for A321666, there is no canonical definition to state claims against.
-/

/-! ## A321666.P10705225389580660872

`A321634(n)/n!`
-/

namespace A321666.P10705225389580660872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321634 n : ℚ) / (Nat.factorial n : ℚ)

end

end A321666.P10705225389580660872

/-! ## A321666.P58284354721877468

`A322013((n-1)²+n²)`
-/

namespace A321666.P58284354721877468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322013 (((n : ℤ) - 1) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A321666.P58284354721877468

/-! ## A321666.P16274432110796768436

`A322093((n-1)²+n²)/n!`
-/

namespace A321666.P16274432110796768436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322093 (((n : ℤ) - 1) ^ 2 + (n ^ 2 : ℤ)).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A321666.P16274432110796768436

/-! ## A321666.P17677873627160135367

`A321634(n)/A000142(n)`
-/

namespace A321666.P17677873627160135367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321634 n : ℚ) / (A000142 n : ℚ)

end

end A321666.P17677873627160135367

/-!
# A321667: (3/2) * n^(2/3) rounded to nearest integer.

The programs for A321667, there is no canonical definition to state claims against.
-/

/-! ## A321667.P5784541995740874460

`A134914(A195045(n)+2)`
-/

namespace A321667.P5784541995740874460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A195045 n + 2).toNat

end

end A321667.P5784541995740874460

/-! ## A321667.P8411524380081270656

`A048766(∑[A007412(6*n+7)+n])`
-/

namespace A321667.P8411524380081270656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (6 * n + 7) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321667.P8411524380081270656

/-! ## A321667.P11805237446750517085

`A048766((2*n+3)²-∑[A048760(n)])`
-/

namespace A321667.P11805237446750517085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (((2 * n + 3) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321667.P11805237446750517085

/-! ## A321667.P16194502174707378600

`A048766(∑[A017053(A014684(n+1))])`
-/

namespace A321667.P16194502174707378600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A014684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321667.P16194502174707378600

/-! ## A321667.P3938529620902476057

`A048766(A106648(n)+A005384(n+1))`
-/

namespace A321667.P3938529620902476057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A106648 n + A005384 (n + 1)).toNat

end

end A321667.P3938529620902476057

/-!
# A321669: Number of permutations of 9 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 1.

The programs for A321669, there is no canonical definition to state claims against.
-/

/-! ## A321669.P6234766407431187132

`A322145(n)/n!`
-/

namespace A321669.P6234766407431187132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322145 n : ℚ) / (Nat.factorial n : ℚ)

end

end A321669.P6234766407431187132

/-! ## A321669.P17042719427248530583

`A322145(n)/A000142(n)`
-/

namespace A321669.P17042719427248530583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322145 n : ℚ) / (A000142 n : ℚ)

end

end A321669.P17042719427248530583

/-! ## A321669.P12793172307073680971

`abs(A322145(n)/A133942(n))`
-/

namespace A321669.P12793172307073680971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A322145 n : ℚ) / (A133942 n : ℚ)|

end

end A321669.P12793172307073680971

/-!
# A321670: Number of permutations of 10 copies of 1..n introduced in order 1..n with no element equal to another within a distance of 1.

The programs for A321670, there is no canonical definition to state claims against.
-/

/-! ## A321670.P11741080933016695743

`A322146(n)/n!`
-/

namespace A321670.P11741080933016695743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322146 n : ℚ) / (Nat.factorial n : ℚ)

end

end A321670.P11741080933016695743

/-! ## A321670.P16888596554055671721

`A322146(n)/A000142(n)`
-/

namespace A321670.P16888596554055671721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322146 n : ℚ) / (A000142 n : ℚ)

end

end A321670.P16888596554055671721

/-! ## A321670.P15288099089564479752

`abs(A322146(n)/A133942(n))`
-/

namespace A321670.P15288099089564479752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A322146 n : ℚ) / (A133942 n : ℚ)|

end

end A321670.P15288099089564479752

/-!
# A321671: Primes of the form 2^j - 3^k, for j >= 0, k >= 0.

The programs for A321671, there is no canonical definition to state claims against.
-/

/-! ## A321671.P14080149611324900081

`p?[A192110(n+1)]`
-/

namespace A321671.P14080149611324900081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321671.P14080149611324900081

/-! ## A321671.P1191986488550088126

`p?[record[A192110(A052938(n))]]`
-/

namespace A321671.P1191986488550088126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321671.P1191986488550088126

/-! ## A321671.P14942875882336152289

`p?[record[A192110(A133310(n))]]`
-/

namespace A321671.P14942875882336152289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321671.P14942875882336152289

/-! ## A321671.P5848862770612612305

`p?[record[A192110(A193738(n))]]`
-/

namespace A321671.P5848862770612612305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321671.P5848862770612612305

/-! ## A321671.P5346152845948681353

`p?[∪[3*n, A192110(ϕ²-(ϕ-n))]]`
-/

namespace A321671.P5346152845948681353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A321671.P5346152845948681353

/-!
# A321672: Number of chiral pairs of rows of length 5 using up to n colors.

The programs for A321672, the canonical program `A321672.P12387618061068922238` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321672 has offset 0).

The definition of A321672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321672.P15103273989634299655

`(n^5-n^3)/2`
-/

namespace A321672.P15103273989634299655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 5 : ℤ) - (n ^ 3 : ℤ) : ℚ) / 2

end

end A321672.P15103273989634299655

namespace A321672

/-- `(n^5-n^3)/2` -/
def P15103273989634299655.Spec : Prop :=
  ∀ n, P15103273989634299655.a n = (A321672 n : ℚ)

theorem P15103273989634299655.correct : P15103273989634299655.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P15103273989634299655.a, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-! ## A321672.P10533478513762020301

`A168178(n)-A000578(n)`
-/

namespace A321672.P10533478513762020301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n - A000578 n

end

end A321672.P10533478513762020301

namespace A321672

/-- `A168178(n)-A000578(n)` -/
def P10533478513762020301.Spec : Prop :=
  ∀ n, P10533478513762020301.a n = A321672 n

theorem P10533478513762020301.correct : P10533478513762020301.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P10533478513762020301.a, A321672.P12387618061068922238.a, A000578, A000578.P12162961755414704816.a, A000584, A000584.P5477385692209315495.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-! ## A321672.P12387618061068922238

`A000584(n)-A168178(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A321672

/-- `A000584(n)-A168178(n)` -/
def P12387618061068922238.Spec : Prop :=
  ∀ n, P12387618061068922238.a n = A321672 n

theorem P12387618061068922238.correct : P12387618061068922238.Spec := by
  intro n
  simp only [A321672]

end A321672

/-! ## A321672.P14582948213709861460

`n*C(n², 2)`
-/

namespace A321672.P14582948213709861460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n ^ 2) 2

end

end A321672.P14582948213709861460

namespace A321672

/-- `n*C(n², 2)` -/
def P14582948213709861460.Spec : Prop :=
  ∀ n, (P14582948213709861460.a n : ℤ) = A321672 n

theorem P14582948213709861460.correct : P14582948213709861460.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P14582948213709861460.a, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-! ## A321672.P14603912320606556864

`C(n*n, 2)*n`
-/

namespace A321672.P14603912320606556864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * n) 2 * n

end

end A321672.P14603912320606556864

namespace A321672

/-- `C(n*n, 2)*n` -/
def P14603912320606556864.Spec : Prop :=
  ∀ n, (P14603912320606556864.a n : ℤ) = A321672 n

theorem P14603912320606556864.correct : P14603912320606556864.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P14603912320606556864.a, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-! ## A321672.P2293086993243622926

`lcm(1-n, n²)*∑[n]`
-/

namespace A321672.P2293086993243622926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321672.P2293086993243622926

namespace A321672

/-- `lcm(1-n, n²)*∑[n]` -/
def P2293086993243622926.Spec : Prop :=
  ∀ n, (P2293086993243622926.a n : ℤ) = A321672 n

end A321672

/-! ## A321672.P14336136643389893075

`n²*∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=0`
-/

namespace A321672.P14336136643389893075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321672.P14336136643389893075

namespace A321672

/-- `n²*∑[∑[a(n-1)+3]]` -/
def P14336136643389893075.Spec : Prop :=
  ∀ n, (P14336136643389893075.a n : ℤ) = A321672 n

end A321672

/-! ## A321672.P9578780517048182526

`n²*∑[∑[ogf(3x^2/(1-2x+x^2))]]`
-/

namespace A321672.P9578780517048182526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A321672.P9578780517048182526

namespace A321672

/-- `n²*∑[∑[ogf(3x^2/(1-2x+x^2))]]` -/
def P9578780517048182526.Spec : Prop :=
  ∀ n, P9578780517048182526.a n = A321672 n

end A321672

/-! ## A321672.P14320115502223722776

`n*n*∑[∑[ogf(3x^2/(1-2x+x^2))]]`
-/

namespace A321672.P14320115502223722776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A321672.P14320115502223722776

namespace A321672

/-- `n*n*∑[∑[ogf(3x^2/(1-2x+x^2))]]` -/
def P14320115502223722776.Spec : Prop :=
  ∀ n, P14320115502223722776.a n = A321672 n

end A321672

/-! ## A321672.P3711870628950266243

`A101377(n)-n²`
-/

namespace A321672.P3711870628950266243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101377 n - (n ^ 2 : ℤ)

end

end A321672.P3711870628950266243

namespace A321672

/-- `A101377(n)-n²` -/
def P3711870628950266243.Spec : Prop :=
  ∀ n, P3711870628950266243.a n = A321672 n

theorem P3711870628950266243.correct : P3711870628950266243.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P3711870628950266243.a, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A101377, A101377.P8020524187896428552.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-! ## A321672.P17882885845899440653

`n²*A135503(n)`
-/

namespace A321672.P17882885845899440653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A135503 n

end

end A321672.P17882885845899440653

namespace A321672

/-- `n²*A135503(n)` -/
def P17882885845899440653.Spec : Prop :=
  ∀ n, P17882885845899440653.a n = A321672 n

end A321672

/-! ## A321672.P4610176706079132371

`∑[n]*A045991(n)`
-/

namespace A321672.P4610176706079132371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A045991 n

end

end A321672.P4610176706079132371

namespace A321672

/-- `∑[n]*A045991(n)` -/
def P4610176706079132371.Spec : Prop :=
  ∀ n, P4610176706079132371.a n = A321672 n

end A321672

/-! ## A321672.P4522809572425625262

`2*n*A006011(n)`
-/

namespace A321672.P4522809572425625262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A006011 n)

end

end A321672.P4522809572425625262

namespace A321672

/-- `2*n*A006011(n)` -/
def P4522809572425625262.Spec : Prop :=
  ∀ n, P4522809572425625262.a n = A321672 n

end A321672

/-! ## A321672.P8084943301758255307

`3*n*A008911(n)`
-/

namespace A321672.P8084943301758255307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * A008911 n)

end

end A321672.P8084943301758255307

namespace A321672

/-- `3*n*A008911(n)` -/
def P8084943301758255307.Spec : Prop :=
  ∀ n, P8084943301758255307.a n = A321672 n

theorem P8084943301758255307.correct : P8084943301758255307.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P8084943301758255307.a, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A008911, A008911.P13273812959186450040.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-! ## A321672.P4064334367079206012

`6*n*A002415(n)`
-/

namespace A321672.P4064334367079206012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℤ) * A002415 n)

end

end A321672.P4064334367079206012

namespace A321672

/-- `6*n*A002415(n)` -/
def P4064334367079206012.Spec : Prop :=
  ∀ n, P4064334367079206012.a n = A321672 n

end A321672

/-! ## A321672.P6953783667992126744

`A168178(n)-n^3`
-/

namespace A321672.P6953783667992126744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n - (n ^ 3 : ℤ)

end

end A321672.P6953783667992126744

namespace A321672

/-- `A168178(n)-n^3` -/
def P6953783667992126744.Spec : Prop :=
  ∀ n, P6953783667992126744.a n = A321672 n

theorem P6953783667992126744.correct : P6953783667992126744.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P6953783667992126744.a, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-! ## A321672.P1985380742893628085

`n*(A101374(n)-n)`
-/

namespace A321672.P1985380742893628085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A101374 n - (n : ℤ))

end

end A321672.P1985380742893628085

namespace A321672

/-- `n*(A101374(n)-n)` -/
def P1985380742893628085.Spec : Prop :=
  ∀ n, P1985380742893628085.a n = A321672 n

end A321672

/-! ## A321672.P3189863905450326080

`n²*Δ[A050534(n)]`
-/

namespace A321672.P3189863905450326080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A321672.P3189863905450326080

namespace A321672

/-- `n²*Δ[A050534(n)]` -/
def P3189863905450326080.Spec : Prop :=
  ∀ n, P3189863905450326080.a n = A321672 n

theorem P3189863905450326080.correct : P3189863905450326080.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P3189863905450326080.f1, A321672.P3189863905450326080.a, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A050534, A050534.P12216670126680451922.a, A168178, A168178.P7150128011749350720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-! ## A321672.P10855718924421613100

`(n+1)*(A101375(n)-n)`
-/

namespace A321672.P10855718924421613100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A101375 n - (n : ℤ))

end

end A321672.P10855718924421613100

namespace A321672

/-- `(n+1)*(A101375(n)-n)` -/
def P10855718924421613100.Spec : Prop :=
  ∀ n, P10855718924421613100.a n = A321672 n

end A321672

/-! ## A321672.P3082900225528792273

`2*Δ[A292061(n+1)]`
-/

namespace A321672.P3082900225528792273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A321672.P3082900225528792273

namespace A321672

/-- `2*Δ[A292061(n+1)]` -/
def P3082900225528792273.Spec : Prop :=
  ∀ n, P3082900225528792273.a n = A321672 n

theorem P3082900225528792273.correct : P3082900225528792273.Spec := by
  intro n
  simp only [A321672, Nat.add_sub_cancel, A321672.P3082900225528792273.f1, A321672.P3082900225528792273.a, A321672.P12387618061068922238.a, A000584, A000584.P5477385692209315495.a, A168178, A168178.P7150128011749350720.a, A292061, A292061.P8566333683621435124.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A321672

/-!
# A321673: Number of minimum total dominating sets in the n X n bishop graph.

The programs for A321673, there is no canonical definition to state claims against.
-/

/-! ## A321673.P3722455328120900196

`A303141(n+1)^A049419(A000351(n))`
-/

namespace A321673.P3722455328120900196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303141 (n + 1) : ℚ) ^ (A049419 (A000351 n).toNat : ℤ)

end

end A321673.P3722455328120900196

/-! ## A321673.P4349259578189817442

`A303141(n+1)^A115623(A041287(n))`
-/

namespace A321673.P4349259578189817442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303141 (n + 1) : ℚ) ^ (A115623 (A041287 n).toNat : ℤ)

end

end A321673.P4349259578189817442

/-!
# A321675: a(n) = Sum_{k=1..10^n} k*sigma(k).

The programs for A321675, the canonical program `A321675.P11611611303101211705` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321675 has offset 0).

The definition of A321675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321675.P11611611303101211705

`A143128(10^n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A321675

/-- `A143128(10^n)` -/
def P11611611303101211705.Spec : Prop :=
  ∀ n, P11611611303101211705.a n = A321675 n

theorem P11611611303101211705.correct : P11611611303101211705.Spec := by
  intro n
  simp only [A321675]

end A321675

/-!
# A321677: Number of non-isomorphic set multipartitions (multisets of sets) of weight n with no singletons.

The programs for A321677, there is no canonical definition to state claims against.
-/

/-! ## A321677.P5319243388719448698

`A027383(A260391(n+1))%A211121((n+1)^ceil(n/8))`
-/

namespace A321677.P5319243388719448698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027383 (A260391 (n + 1)).toNat) (A211121 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat)

end

end A321677.P5319243388719448698

/-!
# A321678: Number of non-isomorphic weight-n strict antichains of sets with no singletons.

The programs for A321678, there is no canonical definition to state claims against.
-/

/-! ## A321678.P5010792361583366953

`or(char[2*n], A035060(A035054(n)))`
-/

namespace A321678.P5010792361583366953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A035060 (A035054 n).toNat)

end

end A321678.P5010792361583366953

/-! ## A321678.P6106118422530613855

`A194057(A047074(n))-A005812(n)`
-/

namespace A321678.P6106118422530613855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194057 (A047074 n).toNat - A005812 n

end

end A321678.P6106118422530613855

/-! ## A321678.P17591792032418018652

`or(A035060(A035054(n)), A088917(n))`
-/

namespace A321678.P17591792032418018652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035060 (A035054 n).toNat) (A088917 n)

end

end A321678.P17591792032418018652

/-! ## A321678.P17258663300717717117

`A137937(A338866(n+1))+A027187(n)`
-/

namespace A321678.P17258663300717717117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137937 (A338866 (n + 1)).toNat + A027187 n

end

end A321678.P17258663300717717117

/-! ## A321678.P2125863127169178138

`A347520(A347521(n+1))-A202168(n+1)`
-/

namespace A321678.P2125863127169178138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A347521 (n + 1)).toNat - A202168 (n + 1)

end

end A321678.P2125863127169178138

/-!
# A321679: Number of non-isomorphic weight-n antichains (not necessarily strict) of sets.

The programs for A321679, there is no canonical definition to state claims against.
-/

/-! ## A321679.P4901553559352543041

`A338117(A000608(n))+A027306(n)`
-/

namespace A321679.P4901553559352543041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (A000608 n).toNat + A027306 n

end

end A321679.P4901553559352543041

/-!
# A321682: Numbers with distinct digits in factorial base.

The programs for A321682, there is no canonical definition to state claims against.
-/

/-! ## A321682.P8359170559096513583

`lt[A275949(n)+A275850(n), 2]`
-/

namespace A321682.P8359170559096513583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 n + A275850 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321682.P8359170559096513583

/-! ## A321682.P9044562056560875224

`lt[A275850(n), A278235(n)%4]`
-/

namespace A321682.P9044562056560875224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278235 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321682.P9044562056560875224

/-! ## A321682.P6354680231101814664

`eq[0, A107846(A007623(n))]`
-/

namespace A321682.P6354680231101814664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A007623 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321682.P6354680231101814664

/-! ## A321682.P2848025521831330821

`eq[1, A178788(A007623(n))]+A008683(8*n+4)`
-/

namespace A321682.P2848025521831330821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A007623 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A008683 (8 * n + 4)

end

end A321682.P2848025521831330821

/-! ## A321682.P11096161478443629260

`A000040(n+1)%2*eq[1, A178788(A007623(n))]`
-/

namespace A321682.P11096161478443629260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 (A007623 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A321682.P11096161478443629260

/-!
# A321683: Numbers with distinct digits in primorial base.

The programs for A321683, there is no canonical definition to state claims against.
-/

/-! ## A321683.P2945783353073707036

`eq[0, A107846(A049345(n))]`
-/

namespace A321683.P2945783353073707036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A049345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321683.P2945783353073707036

/-! ## A321683.P2604382938723237143

`lt[A107846(A049345(n)), A000007(n)+1]`
-/

namespace A321683.P2604382938723237143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A049345 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321683.P2604382938723237143

/-! ## A321683.P16756607666339641762

`lt[A000041(n)*A107846(A049345(n)), 1]`
-/

namespace A321683.P16756607666339641762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A107846 (A049345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321683.P16756607666339641762

/-! ## A321683.P16818050946388562338

`lt[A000292(n)*A107846(A049345(n)), 1]`
-/

namespace A321683.P16818050946388562338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A107846 (A049345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321683.P16818050946388562338

/-! ## A321683.P3354862367603009357

`lt[A005843(n)*A107846(A049345(n)), 1]`
-/

namespace A321683.P3354862367603009357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A107846 (A049345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321683.P3354862367603009357

/-! ## A321683.P15904204806579871615

`lt[A005894(n)*A107846(A049345(n)), 1]`
-/

namespace A321683.P15904204806579871615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n * A107846 (A049345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321683.P15904204806579871615

/-! ## A321683.P2293893996562335200

`lt[A028310(n)*A107846(A049345(n)), 1]`
-/

namespace A321683.P2293893996562335200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A107846 (A049345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321683.P2293893996562335200

/-! ## A321683.P7346697823377309534

`lt[A064189(n)*A107846(A049345(n)), 1]`
-/

namespace A321683.P7346697823377309534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 n * A107846 (A049345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321683.P7346697823377309534

/-! ## A321683.P14546580212232403800

`lt[A107846(A049345(n))*A133310(n), 1]`
-/

namespace A321683.P14546580212232403800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A049345 n).toNat * A133310 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321683.P14546580212232403800

/-! ## A321683.P2128763983551327316

`lt[A002618(n+1)*A107846(A049345(n)), 1]`
-/

namespace A321683.P2128763983551327316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) * A107846 (A049345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321683.P2128763983551327316

/-!
# A321684: Independent domination number of the n X n grid graph.

The programs for A321684, the canonical program `A321684.P10752415671943883701` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321684 has offset 0).

The definition of A321684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321684.P10752415671943883701

`ogf((x+2x^5-x^6-x^7+2x^8+x^9-4x^10+3x^11-2x^13+x^14+x^15-2x^16+2x^17-2x^19+x^20)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321684

/-- `ogf((x+2x^5-x^6-x^7+2x^8+x^9-4x^10+3x^11-2x^13+x^14+x^15-2x^16+2x^17-2x^19+x^20)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P10752415671943883701.Spec : Prop :=
  ∀ n, P10752415671943883701.a n = A321684 n

theorem P10752415671943883701.correct : P10752415671943883701.Spec := by
  intro n
  simp only [A321684]

end A321684

/-!
# A321686: Triangle read by rows: T(n,k) is the sum of the number of the arrangements of p_1 1's, p_2 2's, ..., p_k k's (p_1 + p_2 + ... + p_k = n and p_1 >= p_2 >= ... >= p_k) avoiding equal consecutive terms, where 1 <= k <= n.

The programs for A321686, there is no canonical definition to state claims against.
-/

/-! ## A321686.P4679417011323320370

`A050873(A187829(n+1))*A131689(n)`
-/

namespace A321686.P4679417011323320370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A187829 (n + 1)).toNat * A131689 n

end

end A321686.P4679417011323320370

/-! ## A321686.P14143775214843536929

`A050873(A077168(n))*A131689(n)`
-/

namespace A321686.P14143775214843536929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A077168 n).toNat * A131689 n

end

end A321686.P14143775214843536929

/-! ## A321686.P7464357726699372039

`gcd(A008458(2^n), A050873(n+1))*A131689(n)`
-/

namespace A321686.P7464357726699372039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A008458 (2 ^ n)) (A050873 (n + 1)) : ℤ) * A131689 n

end

end A321686.P7464357726699372039

/-! ## A321686.P7272912849529623378

`A264954(n+1)/A104248(A275628(n))`
-/

namespace A321686.P7272912849529623378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264954 (n + 1) : ℚ) / (A104248 (A275628 n).toNat : ℚ)

end

end A321686.P7272912849529623378

/-!
# A321688: Row sums of triangle A321686.

The programs for A321688, there is no canonical definition to state claims against.
-/

/-! ## A321688.P14508764903942652275

`A303363(A002110(n))+A193113(n)`
-/

namespace A321688.P14508764903942652275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303363 (A002110 n).toNat + A193113 n

end

end A321688.P14508764903942652275

/-! ## A321688.P13724057232762428815

`A216223(n)+A008619(A080337(n+1))`
-/

namespace A321688.P13724057232762428815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216223 n + A008619 (A080337 (n + 1)).toNat

end

end A321688.P13724057232762428815

/-!
# A321689: Approximation of the 2-adic integer exp(-4) up to 2^n.

The programs for A321689, there is no canonical definition to state claims against.
-/

/-! ## A321689.P6270337778753173287

`∑[and(floor(2^(n-1)), A057708(2*(n+1)))]`
-/

namespace A321689.P6270337778753173287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A057708 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321689.P6270337778753173287

/-! ## A321689.P1222767196611449499

`A000567(A325894(n))%A000079(n)`
-/

namespace A321689.P1222767196611449499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000567 (A325894 n).toNat) (A000079 n)

end

end A321689.P1222767196611449499

/-! ## A321689.P17843277511223429124

`and(A000225(n), A000567(A325894(n)))`
-/

namespace A321689.P17843277511223429124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A000567 (A325894 n).toNat)

end

end A321689.P17843277511223429124

/-! ## A321689.P1628315776736709220

`and(A000567(A325894(n)), A036563(n))`
-/

namespace A321689.P1628315776736709220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000567 (A325894 n).toNat) (A036563 n)

end

end A321689.P1628315776736709220

/-! ## A321689.P3268965556876359488

`and(A001095(A000225(n)), A036563(n))`
-/

namespace A321689.P3268965556876359488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001095 (A000225 n).toNat) (A036563 n)

end

end A321689.P3268965556876359488

/-!
# A321690: Approximations up to 2^n for the 2-adic integer log(5).

The programs for A321690, there is no canonical definition to state claims against.
-/

/-! ## A321690.P15391066607951694444

`∑[A014477(A139076(n+1))]%A000079(n)`
-/

namespace A321690.P15391066607951694444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 (A139076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000079 n)

end

end A321690.P15391066607951694444

/-! ## A321690.P3851858245454688397

`A139086(3^∑[char[∑[3^n]]])%(2^n)`
-/

namespace A321690.P3851858245454688397
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139086 (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j))) (2 ^ n : ℤ)

end

end A321690.P3851858245454688397

/-! ## A321690.P13232978742781061207

`∑[and(A011782(n), A334598(n+1))]`
-/

namespace A321690.P13232978742781061207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011782 n) (A334598 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321690.P13232978742781061207

/-! ## A321690.P4908805177954777614

`∑[and(A094373(n), A334598(n+1))]`
-/

namespace A321690.P4908805177954777614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094373 n) (A334598 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321690.P4908805177954777614

/-! ## A321690.P82788129775621775

`∑[and(2^((n-1)%(n+1)), A347506(2*n+3))]`
-/

namespace A321690.P82788129775621775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))) (A347506 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321690.P82788129775621775

/-!
# A321691: Approximations up to 2^n for the 2-adic integer log(-3).

The programs for A321691, there is no canonical definition to state claims against.
-/

/-! ## A321691.P1026841665855385281

`2*A309753(abs(1-n))`
-/

namespace A321691.P1026841665855385281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309753 |1 - (n : ℤ)|.toNat

end

end A321691.P1026841665855385281

/-! ## A321691.P3277903549531794656

`(2*A309753(n))%(2^n)`
-/

namespace A321691.P3277903549531794656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A309753 n) (2 ^ n : ℤ)

end

end A321691.P3277903549531794656

/-! ## A321691.P7858735341509462291

`2*A309753(n)%A011782(n)`
-/

namespace A321691.P7858735341509462291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A309753 n) (A011782 n)

end

end A321691.P7858735341509462291

/-! ## A321691.P3442596724218580911

`and(2*A309753(n), A000225(n))`
-/

namespace A321691.P3442596724218580911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A309753 n) (A000225 n)

end

end A321691.P3442596724218580911

/-! ## A321691.P3742854283980467832

`∑[and(2*A309753(n), A131577(n))]`
-/

namespace A321691.P3742854283980467832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A309753 n) (A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321691.P3742854283980467832

/-!
# A321692: Digits of the 2-adic integer exp(-4).

The programs for A321692, there is no canonical definition to state claims against.
-/

/-! ## A321692.P12626056451773147384

`(A321689(n+1)-A321689(n))/2^n`
-/

namespace A321692.P12626056451773147384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321689 (n + 1) - A321689 n : ℚ) / (2 ^ n : ℚ)

end

end A321692.P12626056451773147384

/-! ## A321692.P9364592871357125098

`ceil(Δ[atan(A321689(n))])`
-/

namespace A321692.P9364592871357125098
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A321689 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A321692.P9364592871357125098

/-! ## A321692.P17556514834938943173

`A320815(C(2, Δ[A321689(n)]))`
-/

namespace A321692.P17556514834938943173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320815 (Nat.choose 2 (f1 (n + 1) - f1 n).toNat)

end

end A321692.P17556514834938943173

/-! ## A321692.P13848435640403512721

`Δ[A321689(n)]/A000079(n)`
-/

namespace A321692.P13848435640403512721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321689 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A321692.P13848435640403512721

/-! ## A321692.P1963553617290300911

`A102395(C(n, Δ[A321689(n)]))`
-/

namespace A321692.P1963553617290300911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102395 (Nat.choose n (f1 (n + 1) - f1 n).toNat)

end

end A321692.P1963553617290300911

/-!
# A321693: Numerator of least value of the squared diameters of the enclosing circles of all strictly convex lattice n-gons with minimal area given by A070911.

The programs for A321693, there is no canonical definition to state claims against.
-/

/-! ## A321693.P16521903835394564304

`A322106(A171717(n)+3)`
-/

namespace A321693.P16521903835394564304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322106 (A171717 n + 3).toNat

end

end A321693.P16521903835394564304

/-! ## A321693.P7044991520566861707

`A322106(A032555(n+1)+2)`
-/

namespace A321693.P7044991520566861707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322106 (A032555 (n + 1) + 2).toNat

end

end A321693.P7044991520566861707

/-! ## A321693.P2065570181145540427

`A322106(A077739(n+1)+2)`
-/

namespace A321693.P2065570181145540427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322106 (A077739 (n + 1) + 2).toNat

end

end A321693.P2065570181145540427

/-! ## A321693.P18312104384531159776

`A322106(A257275(n+1)+2)`
-/

namespace A321693.P18312104384531159776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322106 (A257275 (n + 1) + 2).toNat

end

end A321693.P18312104384531159776

/-! ## A321693.P15848192290684566478

`A322106(A276142(n+1)+2)`
-/

namespace A321693.P15848192290684566478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322106 (A276142 (n + 1) + 2).toNat

end

end A321693.P15848192290684566478

/-!
# A321694: Digits of the 2-adic integer log(-3).

The programs for A321694, there is no canonical definition to state claims against.
-/

/-! ## A321694.P17799509779515443665

`(A321691(n+1)-A321691(n))/2^n`
-/

namespace A321694.P17799509779515443665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321691 (n + 1) - A321691 n : ℚ) / (2 ^ n : ℚ)

end

end A321694.P17799509779515443665

/-! ## A321694.P15717458438199802232

`A309754(n-ceil(n/98))`
-/

namespace A321694.P15717458438199802232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309754 ((n : ℤ) - ⌈(n : ℚ) / 98⌉).toNat

end

end A321694.P15717458438199802232

/-! ## A321694.P16616130929624273114

`round(A309753(n)/2^n)`
-/

namespace A321694.P16616130929624273114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A309753 n : ℚ) / (2 ^ n : ℚ))

end

end A321694.P16616130929624273114

/-! ## A321694.P9627028100205578567

`floor(A309753(n)/A011782(n))`
-/

namespace A321694.P9627028100205578567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309753 n : ℚ) / (A011782 n : ℚ)⌋

end

end A321694.P9627028100205578567

/-! ## A321694.P13731124972610217725

`Δ[2*A309753(abs(1-n))]/A000079(n)`
-/

namespace A321694.P13731124972610217725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309753 |1 - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ)

end

end A321694.P13731124972610217725

/-!
# A321695: For any sequence f of positive integers, let g(f) be the unique Golomb-like sequence with run lengths given by f and let k(f) be the unique Kolakoski-like sequence with run lengths given by f and initial term 1; this sequence is the unique sequence f satisfying f = g(k(f)).

The programs for A321695, there is no canonical definition to state claims against.
-/

/-! ## A321695.P17646911497215986488

`∑[char[∑[A321696(n+1)]]]+1`
-/

namespace A321695.P17646911497215986488
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A321695.P17646911497215986488

/-! ## A321695.P10037302011561661889

`runs[A321696(n+1)]`
-/

namespace A321695.P10037302011561661889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321696 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A321695.P10037302011561661889

/-! ## A321695.P12889521403126001579

`∑[A011655(A219529(2*(n+2))+A079651(n+1))]`
-/

namespace A321695.P12889521403126001579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A219529 (2 * (n + 2)) + A079651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321695.P12889521403126001579

/-! ## A321695.P8076472371839523048

`A157271(lt[A193915(n), A193915(2*n)])`
-/

namespace A321695.P8076472371839523048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193915 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321695.P8076472371839523048

/-! ## A321695.P9759616986574368103

`A084320(A222025(n+1))`
-/

namespace A321695.P9759616986574368103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084320 (A222025 (n + 1)).toNat

end

end A321695.P9759616986574368103

/-!
# A321696: For any sequence f of positive integers, let g(f) be the unique Golomb-like sequence with run lengths given by f and let k(f) be the unique Kolakoski-like sequence with run lengths given by f and initial term 1; this sequence is the unique sequence f satisfying f = k(g(f)).

The programs for A321696, there is no canonical definition to state claims against.
-/

/-! ## A321696.P5338608944448343577

`∑[char[∑[A321695(n+1)]]]%2+1`
-/

namespace A321696.P5338608944448343577
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1

end

end A321696.P5338608944448343577

/-! ## A321696.P12743964692240764080

`runs[A321695(n+1)]`
-/

namespace A321696.P12743964692240764080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A321696.P12743964692240764080

/-! ## A321696.P14792355583473591371

`A133083(A016921(C(n+2, 64)²+n))`
-/

namespace A321696.P14792355583473591371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133083 (A016921 (Nat.choose (n + 2) 64 ^ 2 + n)).toNat

end

end A321696.P14792355583473591371

/-! ## A321696.P13443580717321996874

`gcd(A133083(A016921(n)), A289323(n+3))`
-/

namespace A321696.P13443580717321996874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133083 (A016921 n).toNat) (A289323 (n + 3))

end

end A321696.P13443580717321996874

/-! ## A321696.P4860868717744700872

`A133083(A016921(n))+A000038(A116553(n))`
-/

namespace A321696.P4860868717744700872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133083 (A016921 n).toNat + A000038 (A116553 n).toNat

end

end A321696.P4860868717744700872

/-! ## A321696.P12307847978613998279

`A133083(A144917(n+2))`
-/

namespace A321696.P12307847978613998279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133083 (A144917 (n + 2)).toNat

end

end A321696.P12307847978613998279

/-!
# A321697: T(j,k) = binomial(j^k,k)/j, j <= m, k <= j, written as triangle T(j,k).

The programs for A321697, the canonical program `A321697.P10552657701207320879` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321697 has offset 1).

The definition of A321697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321697.P10552657701207320879

`C((row(n)+1)^(col(n)+1), col(n)+1)/(row(n)+1)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A321697

/-- `C((row(n)+1)^(col(n)+1), col(n)+1)/(row(n)+1)` -/
def P10552657701207320879.Spec : Prop :=
  ∀ n, P10552657701207320879.a n = (A321697 (n + 1) : ℚ)

end A321697

/-! ## A321697.P13710202238567532668

`C(A075363(n+1), A002260(n+1))/A002024(n+1)`
-/

namespace A321697.P13710202238567532668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A075363 (n + 1)).toNat (A002260 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)

end

end A321697.P13710202238567532668

namespace A321697

/-- `C(A075363(n+1), A002260(n+1))/A002024(n+1)` -/
def P13710202238567532668.Spec : Prop :=
  ∀ n, P13710202238567532668.a n = (A321697 (n + 1) : ℚ)

end A321697

/-!
# A321698: MM-numbers of uniform regular multiset multisystems. Numbers whose prime indices all have the same number of prime factors counted with multiplicity, and such that the product of the same prime indices is a power of a squarefree number.

The programs for A321698, there is no canonical definition to state claims against.
-/

/-! ## A321698.P17003699713277617912

`∪[A322833(n+1), A243497(n)]`
-/

namespace A321698.P17003699713277617912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321698.P17003699713277617912

/-! ## A321698.P9173873744514418321

`∪[A025475(n+1), A322833(n+1)]`
-/

namespace A321698.P9173873744514418321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321698.P9173873744514418321

/-! ## A321698.P11462539571926209113

`∪[A134611(n+1), A322833(n+1)]`
-/

namespace A321698.P11462539571926209113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321698.P11462539571926209113

/-! ## A321698.P3164239120674325019

`∪[A134612(n+1), A322833(n+1)]`
-/

namespace A321698.P3164239120674325019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321698.P3164239120674325019

/-! ## A321698.P17538991724613162832

`∪[A195942(n+1), A322833(n+1)]`
-/

namespace A321698.P17538991724613162832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321698.P17538991724613162832

/-! ## A321698.P14281823335828576148

`∪[A246547(n+1), A322833(n+1)]`
-/

namespace A321698.P14281823335828576148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321698.P14281823335828576148

/-! ## A321698.P5142877955648738470

`∪[A320323(n+1), A322531(n+1)]`
-/

namespace A321698.P5142877955648738470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321698.P5142877955648738470

/-! ## A321698.P5221696275213754644

`∪[A322833(n+1), A387420(n+1)]`
-/

namespace A321698.P5221696275213754644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A321698.P5221696275213754644

/-!
# A321699: MM-numbers of uniform regular multiset multisystems spanning an initial interval of positive integers.

The programs for A321699, there is no canonical definition to state claims against.
-/

/-! ## A321699.P3265068244765041909

`∩[A319837(n+1), A321698(n+1)]`
-/

namespace A321699.P3265068244765041909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321699.P3265068244765041909

/-! ## A321699.P229392431678420725

`∩[A321698(n+1), A330104(n+1)]`
-/

namespace A321699.P229392431678420725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321699.P229392431678420725

/-! ## A321699.P15529132616230403418

`∩[A321698(n+1), A330060(n+1)]`
-/

namespace A321699.P15529132616230403418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321699.P15529132616230403418

/-! ## A321699.P9687993157487052596

`∩[A320456(n+1), A321698(n+1)]`
-/

namespace A321699.P9687993157487052596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321699.P9687993157487052596

/-! ## A321699.P2061763047758190062

`record[A330061(A321698(n+1))]`
-/

namespace A321699.P2061763047758190062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330061 (A321698 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321699.P2061763047758190062

