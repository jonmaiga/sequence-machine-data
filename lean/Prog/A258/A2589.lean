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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A258902: Expansion of e.g.f. Series_Reversion(x - x^2/2 - x^3/3).

The programs for A258902, there is no canonical definition to state claims against.
-/

/-! ## A258902.P3371947975733135321

`A244567((n+1)^n-(n-1))`
-/

namespace A258902.P3371947975733135321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244567 (((n + 1) ^ n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A258902.P3371947975733135321

/-!
# A258903: E.g.f.: 2 - exp(2) + Sum_{n>=1} 2^n * exp(3*x^n) / n!.

The programs for A258903, there is no canonical definition to state claims against.
-/

/-! ## A258903.P8090235933853568918

`∏{p}[A073852(A096260(n)), #]`
-/

namespace A258903.P8090235933853568918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073852 (A096260 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A258903.P8090235933853568918

/-!
# A258904: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A258904, there is no canonical definition to state claims against.
-/

/-! ## A258904.P2534562301782510088

`A258910(∑[n+1]+2)`
-/

namespace A258904.P2534562301782510088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258904.P2534562301782510088

/-! ## A258904.P16472781161250154636

`record[A010054(n)*A258910(n+2)]`
-/

namespace A258904.P16472781161250154636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A258910 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258904.P16472781161250154636

/-! ## A258904.P2038134818437025003

`record[A258910(A198455(n+1))]`
-/

namespace A258904.P2038134818437025003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258904.P2038134818437025003

/-! ## A258904.P11905444471924069290

`record[A258910(A333530(n+1))]`
-/

namespace A258904.P11905444471924069290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258904.P11905444471924069290

/-! ## A258904.P11484244216212601702

`record[A258910(record[A316669(n+2)])]`
-/

namespace A258904.P11484244216212601702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258904.P11484244216212601702

/-!
# A258905: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A258905, there is no canonical definition to state claims against.
-/

/-! ## A258905.P4739312740234905634

`A258910(∑[n+2]+4)`
-/

namespace A258905.P4739312740234905634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258905.P4739312740234905634

/-! ## A258905.P13971499080575364718

`A258910(A167614(n+1))+A137579(n)`
-/

namespace A258905.P13971499080575364718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A167614 (n + 1)).toNat + A137579 n

end

end A258905.P13971499080575364718

/-! ## A258905.P2683133064356590694

`lcm(A020985(n), A258910(A167614(n+1)))`
-/

namespace A258905.P2683133064356590694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A258910 (A167614 (n + 1)).toNat)

end

end A258905.P2683133064356590694

/-! ## A258905.P17100227818730290949

`A258910(A167614(n+1))*A290105(n+1)`
-/

namespace A258905.P17100227818730290949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A167614 (n + 1)).toNat * A290105 (n + 1)

end

end A258905.P17100227818730290949

/-! ## A258905.P2049279856837018907

`A258910(A167614(n+1))%A258906(n+1)`
-/

namespace A258905.P2049279856837018907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258910 (A167614 (n + 1)).toNat) (A258906 (n + 1))

end

end A258905.P2049279856837018907

/-!
# A258906: Number of (n+2) X (4+2) 0..1 arrays with every 3 X 3 subblock diagonal median plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A258906, there is no canonical definition to state claims against.
-/

/-! ## A258906.P17222815295270022261

`A258910(A374004(n+1))`
-/

namespace A258906.P17222815295270022261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A374004 (n + 1)).toNat

end

end A258906.P17222815295270022261

/-! ## A258906.P13015174013226397188

`A258910(A141214(n)+7)`
-/

namespace A258906.P13015174013226397188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A141214 n + 7).toNat

end

end A258906.P13015174013226397188

/-! ## A258906.P9661848081484049800

`A258910(A052905(n)+9)`
-/

namespace A258906.P9661848081484049800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A052905 n + 9).toNat

end

end A258906.P9661848081484049800

/-! ## A258906.P9932196651617552341

`A258910(A167614(n+2)+1)`
-/

namespace A258906.P9932196651617552341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A167614 (n + 2) + 1).toNat

end

end A258906.P9932196651617552341

/-! ## A258906.P3666254928223457309

`A258910(A166136(n+2)-2)`
-/

namespace A258906.P3666254928223457309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A166136 (n + 2) - 2).toNat

end

end A258906.P3666254928223457309

/-!
# A258907: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A258907, there is no canonical definition to state claims against.
-/

/-! ## A258907.P4807302625786202963

`A258910(A374005(n+1))`
-/

namespace A258907.P4807302625786202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A374005 (n + 1)).toNat

end

end A258907.P4807302625786202963

/-! ## A258907.P2920746839945603216

`A258910(A155212(n)+13)`
-/

namespace A258907.P2920746839945603216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A155212 n + 13).toNat

end

end A258907.P2920746839945603216

/-! ## A258907.P10524638501380900415

`A258910(A056000(n)+15)`
-/

namespace A258907.P10524638501380900415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A056000 n + 15).toNat

end

end A258907.P10524638501380900415

/-! ## A258907.P14356584918302899996

`A258910(A051936(n+4)+14)`
-/

namespace A258907.P14356584918302899996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A051936 (n + 4) + 14).toNat

end

end A258907.P14356584918302899996

/-! ## A258907.P7422997105146802378

`A258910(eq[6, A131818(n+1)])`
-/

namespace A258907.P7422997105146802378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258907.P7422997105146802378

/-!
# A258908: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A258908, there is no canonical definition to state claims against.
-/

/-! ## A258908.P876004171277440612

`A258910(A374007(n+1))`
-/

namespace A258908.P876004171277440612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A374007 (n + 1)).toNat

end

end A258908.P876004171277440612

/-! ## A258908.P7604604756118244886

`A258910(eq[7, A131818(n+1)])`
-/

namespace A258908.P7604604756118244886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258908.P7604604756118244886

/-! ## A258908.P17536875635879804161

`A258910(eq[3, A219347(n)])`
-/

namespace A258908.P17536875635879804161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258908.P17536875635879804161

/-! ## A258908.P582301976421935192

`A258910(eq[5, A193592(n)])`
-/

namespace A258908.P582301976421935192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258908.P582301976421935192

/-! ## A258908.P10482623203097702377

`A258910(A046691(n+4)-1)`
-/

namespace A258908.P10482623203097702377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A046691 (n + 4) - 1).toNat

end

end A258908.P10482623203097702377

/-!
# A258909: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal median plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A258909, there is no canonical definition to state claims against.
-/

/-! ## A258909.P5594765459934528731

`A258910(A374008(n+1))`
-/

namespace A258909.P5594765459934528731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (A374008 (n + 1)).toNat

end

end A258909.P5594765459934528731

/-! ## A258909.P18312036826991123932

`A258910(eq[8, A131818(n+1)])`
-/

namespace A258909.P18312036826991123932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258909.P18312036826991123932

/-! ## A258909.P8271462630746627048

`A258910(eq[5, A025581(n)]+13)`
-/

namespace A258909.P8271462630746627048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 13)

end

end A258909.P8271462630746627048

/-! ## A258909.P15014062443053201919

`A258910(eq[4, A219347(n)])`
-/

namespace A258909.P15014062443053201919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258909.P15014062443053201919

/-! ## A258909.P4914077591489654286

`A258910(eq[6, A193592(n)])`
-/

namespace A258909.P4914077591489654286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258909.P4914077591489654286

/-!
# A258911: a(1)=a(2)=1, a(n) = ceiling(Pi*a(n-1) - a(n-2)), n>2.

The programs for A258911, the canonical program `A258911.P5888538456929254349` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258911 has offset 1).

The definition of A258911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258911.P5888538456929254349

`ceil(π*a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258911

/-- `ceil(π*a(n-1)-a(n-2))` -/
def P5888538456929254349.Spec : Prop :=
  ∀ n, P5888538456929254349.a n = A258911 (n + 1)

theorem P5888538456929254349.correct : P5888538456929254349.Spec := by
  intro n
  simp only [A258911, Nat.add_sub_cancel]

end A258911

/-! ## A258911.P927752634114529281

`A121381(a(n-1))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A258911.P927752634114529281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A121381 (a (n - 1)).toNat - a (n - 2)

end

end A258911.P927752634114529281

namespace A258911

/-- `A121381(a(n-1))-a(n-2)` -/
def P927752634114529281.Spec : Prop :=
  ∀ n, P927752634114529281.a n = A258911 (n + 1)

end A258911

/-! ## A258911.P17865698499213960422

`A343609(11*A318905(n+9))`
-/

namespace A258911.P17865698499213960422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (11 * A318905 (n + 9)).toNat

end

end A258911.P17865698499213960422

namespace A258911

/-- `A343609(11*A318905(n+9))` -/
def P17865698499213960422.Spec : Prop :=
  ∀ n, P17865698499213960422.a n = A258911 (n + 1)

end A258911

/-!
# A258913: a(n) is the sum of all numbers k for which sigma(k) = n.

The programs for A258913, there is no canonical definition to state claims against.
-/

/-! ## A258913.P967267386983084150

`∑{d}[n+1, A008683(#)*A378913((n+1)/#)]`
-/

namespace A258913.P967267386983084150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A258913.P967267386983084150

/-! ## A258913.P3105500298917560623

`A196904(A301331(n))*A240667(n+1)`
-/

namespace A258913.P3105500298917560623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A301331 n).toNat * A240667 (n + 1)

end

end A258913.P3105500298917560623

/-! ## A258913.P7694921665635603557

`A057637(A293448(n+1))%p?[A093579(n)]`
-/

namespace A258913.P7694921665635603557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057637 (A293448 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A258913.P7694921665635603557

/-! ## A258913.P5974363645255720270

`A057637(A293448(n+1)%A067678(n+1))`
-/

namespace A258913.P5974363645255720270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (Int.tmod (A293448 (n + 1)) (A067678 (n + 1))).toNat

end

end A258913.P5974363645255720270

/-! ## A258913.P9424396690203887476

`A000265(A000079(n))*A057637(A293448(n+1))`
-/

namespace A258913.P9424396690203887476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000079 n).toNat * A057637 (A293448 (n + 1)).toNat

end

end A258913.P9424396690203887476

/-!
# A258914: Numbers k such that A258913(k) > k.

The programs for A258914, there is no canonical definition to state claims against.
-/

/-! ## A258914.P1968055713939121459

`lt[n+1, A258913(n+1)]+1`
-/

namespace A258914.P1968055713939121459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258914.P1968055713939121459

/-! ## A258914.P14993207767138553263

`lt[n+1, A258913(A028310(n))]`
-/

namespace A258914.P14993207767138553263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A258914.P14993207767138553263

/-! ## A258914.P2574638154976907108

`A020725(lt[n+1, A258913(n+1)])`
-/

namespace A258914.P2574638154976907108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A258914.P2574638154976907108

/-! ## A258914.P4753300340249977863

`record[A159886(n+1)%A258913(A159886(n+1))]`
-/

namespace A258914.P4753300340249977863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159886 (n + 1)) (A258913 (A159886 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258914.P4753300340249977863

/-! ## A258914.P15299848511152222795

`lt[A065033(2*n), A258913(A065033(2*n))]`
-/

namespace A258914.P15299848511152222795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258914.P15299848511152222795

/-!
# A258915: The number of n-digit near-repdigit primes (A164937).

The programs for A258915, there is no canonical definition to state claims against.
-/

/-! ## A258915.P3823825056448825158

`A157928(n)*A385280(n+1)`
-/

namespace A258915.P3823825056448825158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A385280 (n + 1)

end

end A258915.P3823825056448825158

/-! ## A258915.P17223207454722882880

`A385280(n+1)%A000144(n)`
-/

namespace A258915.P17223207454722882880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385280 (n + 1)) (A000144 n)

end

end A258915.P17223207454722882880

/-! ## A258915.P17321552241510487052

`and(A134824(n), A385280(n+1))`
-/

namespace A258915.P17321552241510487052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A385280 (n + 1))

end

end A258915.P17321552241510487052

/-! ## A258915.P8467809572527610781

`and(A198693(n), A385280(n+1))`
-/

namespace A258915.P8467809572527610781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198693 n) (A385280 (n + 1))

end

end A258915.P8467809572527610781

/-! ## A258915.P3022535884049131756

`and(A198695(n), A385280(n+1))`
-/

namespace A258915.P3022535884049131756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198695 n) (A385280 (n + 1))

end

end A258915.P3022535884049131756

/-!
# A258916: n*a(n+1) = (2*n^2+2*n+1)*a(n)+(n+1)*a(n-1); a(0)=1, a(1)=0.

The programs for A258916, the canonical program `A258916.P12146902241456680086` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258916 has offset 0).

The definition of A258916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258916.P12146902241456680086

`((2*n²-2*n+1)*a(n-1)+n*a(n-2))/(n-1)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258916

/-- `((2*n²-2*n+1)*a(n-1)+n*a(n-2))/(n-1)` -/
def P12146902241456680086.Spec : Prop :=
  ∀ n, P12146902241456680086.a n = (A258916 n : ℚ)

end A258916

/-! ## A258916.P13862289937376690086

`xor(A029578(A002110(n)), A280580(n))`
-/

namespace A258916.P13862289937376690086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A029578 (A002110 n).toNat) (A280580 n)

end

end A258916.P13862289937376690086

namespace A258916

/-- `xor(A029578(A002110(n)), A280580(n))` -/
def P13862289937376690086.Spec : Prop :=
  ∀ n, P13862289937376690086.a n = A258916 n

end A258916

/-!
# A258918: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum equal to the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258918, there is no canonical definition to state claims against.
-/

/-! ## A258918.P1731567522267679083

`A258921(∑[n]+1)`
-/

namespace A258918.P1731567522267679083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258918.P1731567522267679083

/-! ## A258918.P12735843632394745893

`record[A258921(n+1)]`
-/

namespace A258918.P12735843632394745893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258918.P12735843632394745893

/-! ## A258918.P18425266229888318817

`A258921(A000124(n))+C(n, n+1)`
-/

namespace A258918.P18425266229888318817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A000124 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A258918.P18425266229888318817

/-! ## A258918.P9019028626245675574

`A258921(A000124(n))%A258904(n+1)`
-/

namespace A258918.P9019028626245675574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258921 (A000124 n).toNat) (A258904 (n + 1))

end

end A258918.P9019028626245675574

/-! ## A258918.P12832916541801695261

`lcm(2, A258921(A000096(n)+1))`
-/

namespace A258918.P12832916541801695261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258921 (A000096 n + 1).toNat)

end

end A258918.P12832916541801695261

/-! ## A258918.P17735487159235416246

`or(1, A258921(A000217(n+1)))-1`
-/

namespace A258918.P17735487159235416246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A258921 (A000217 (n + 1)).toNat) - 1

end

end A258918.P17735487159235416246

/-! ## A258918.P5584537110075842812

`A258921(A179865(n+2))+A002262(A179865(n+2))`
-/

namespace A258918.P5584537110075842812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A179865 (n + 2)).toNat + A002262 (A179865 (n + 2)).toNat

end

end A258918.P5584537110075842812

/-!
# A258919: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258919, there is no canonical definition to state claims against.
-/

/-! ## A258919.P14986446240756139247

`A258921(∑[n+1]+2)`
-/

namespace A258919.P14986446240756139247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258919.P14986446240756139247

/-! ## A258919.P6730005101842670012

`lcm(2, A258921(A000096(n+1)))`
-/

namespace A258919.P6730005101842670012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258921 (A000096 (n + 1)).toNat)

end

end A258919.P6730005101842670012

/-! ## A258919.P13355351037942048267

`A087960(n)²*A258921(A000096(n+1))`
-/

namespace A258919.P13355351037942048267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A258921 (A000096 (n + 1)).toNat

end

end A258919.P13355351037942048267

/-! ## A258919.P4003875537472257824

`A258921(A000096(n+1))%A202481(n+5)`
-/

namespace A258919.P4003875537472257824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258921 (A000096 (n + 1)).toNat) (A202481 (n + 5))

end

end A258919.P4003875537472257824

/-! ## A258919.P14889537316653821443

`A052552(2*n+1)*A258921(A000096(n+1))`
-/

namespace A258919.P14889537316653821443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * n + 1) * A258921 (A000096 (n + 1)).toNat

end

end A258919.P14889537316653821443

/-! ## A258919.P12949448610374657132

`A258921(A000096(n+1))+A002262(A179865(n+1))`
-/

namespace A258919.P12949448610374657132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A000096 (n + 1)).toNat + A002262 (A179865 (n + 1)).toNat

end

end A258919.P12949448610374657132

/-! ## A258919.P16122190310690491605

`A078898(A006530(n+1))*A258921(A000096(n+1))`
-/

namespace A258919.P16122190310690491605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A006530 (n + 1)).toNat * A258921 (A000096 (n + 1)).toNat

end

end A258919.P16122190310690491605

/-! ## A258919.P18395662538824774946

`A001222(A282177(n+1))*A258921(A000096(n+1))`
-/

namespace A258919.P18395662538824774946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A282177 (n + 1)).toNat * A258921 (A000096 (n + 1)).toNat

end

end A258919.P18395662538824774946

/-! ## A258919.P16134973216232975561

`A258921(A000096(n+1))+A049084((n+1)²)`
-/

namespace A258919.P16134973216232975561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A000096 (n + 1)).toNat + A049084 ((n + 1) ^ 2)

end

end A258919.P16134973216232975561

/-! ## A258919.P1820831052604200862

`A014963(A000132(n))*A258921(A000096(n+1))`
-/

namespace A258919.P1820831052604200862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000132 n).toNat * A258921 (A000096 (n + 1)).toNat

end

end A258919.P1820831052604200862

/-!
# A258920: Number of (n+2) X (3+2) 0..1 arrays with no 3 x 3 subblock diagonal sum equal to the antidiagonal sum or central row sum equal to the central column sum.

The programs for A258920, there is no canonical definition to state claims against.
-/

/-! ## A258920.P3170711670476188026

`A258921(A167614(n+1))`
-/

namespace A258920.P3170711670476188026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A167614 (n + 1)).toNat

end

end A258920.P3170711670476188026

/-! ## A258920.P9851582541462330705

`A258921(A373663(n+1))`
-/

namespace A258920.P9851582541462330705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A373663 (n + 1)).toNat

end

end A258920.P9851582541462330705

/-! ## A258920.P17137076550893005764

`A258921(A046691(n)+7)`
-/

namespace A258920.P17137076550893005764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A046691 n + 7).toNat

end

end A258920.P17137076550893005764

/-! ## A258920.P8889866237695885607

`A258921(A167499(n)+n)`
-/

namespace A258920.P8889866237695885607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A167499 n + (n : ℤ)).toNat

end

end A258920.P8889866237695885607

/-! ## A258920.P1510472594597279819

`A258921(A034856(n+1)+5)`
-/

namespace A258920.P1510472594597279819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A034856 (n + 1) + 5).toNat

end

end A258920.P1510472594597279819

/-! ## A258920.P4597055568519096096

`A258921(A022856(n+6)+1)`
-/

namespace A258920.P4597055568519096096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (A022856 (n + 6) + 1).toNat

end

end A258920.P4597055568519096096

/-! ## A258920.P808501851458966899

`A258921(∑[n+3]+1)`
-/

namespace A258920.P808501851458966899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258921 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258920.P808501851458966899

/-!
# A258922: E.g.f. satisfies A(x) = 1/(3 - 2*exp(x*A(x))).

The programs for A258922, there is no canonical definition to state claims against.
-/

/-! ## A258922.P483973823674457414

`A259063(n+1)/(n+1)`
-/

namespace A258922.P483973823674457414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259063 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258922.P483973823674457414

/-!
# A258923: E.g.f. satisfies A(x) = 1/(4 - 3*exp(x*A(x))).

The programs for A258923, there is no canonical definition to state claims against.
-/

/-! ## A258923.P5277891321420684314

`A259064(n+1)/(n+1)`
-/

namespace A258923.P5277891321420684314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259064 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A258923.P5277891321420684314

/-!
# A258929: a(n) is the unique even-valued residue modulo 5^n of a number m such that m^2+1 is divisible by 5^n.

The programs for A258929, there is no canonical definition to state claims against.
-/

/-! ## A258929.P12812535871383844018

`A000351(n+1)-A259266(n+1)`
-/

namespace A258929.P12812535871383844018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (n + 1) - A259266 (n + 1)

end

end A258929.P12812535871383844018

/-! ## A258929.P5102645111129861587

`A048898(n+1)+A048899(n+1)-A259266(n+1)`
-/

namespace A258929.P5102645111129861587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 (n + 1) + (A048899 (n + 1) - A259266 (n + 1))

end

end A258929.P5102645111129861587

/-!
# A258932: Numbers k such that 10^k + 103 is prime.

The programs for A258932, there is no canonical definition to state claims against.
-/

/-! ## A258932.P15451476010113875319

`∑[gcd(A193352(n+1), A218868(n+1))]`
-/

namespace A258932.P15451476010113875319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193352 (n + 1)) (A218868 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258932.P15451476010113875319

/-! ## A258932.P12257705328223271653

`eq[A214685(A302081(n+1)), A214713(n+1)]`
-/

namespace A258932.P12257705328223271653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (A302081 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214713 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A258932.P12257705328223271653

/-! ## A258932.P3806384807590747520

`lt[A240046(n+1), A014486(A001222(n+5))]`
-/

namespace A258932.P3806384807590747520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A001222 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258932.P3806384807590747520

/-!
# A258934: Half the difference between the 2n-th prime and the n-th prime, starting from n=2.

The programs for A258934, the canonical program `A258934.P655756384477978096` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258934 has offset 2).

The definition of A258934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072473, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258934.P655756384477978096

`A072473(n+2)/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A258934

/-- `A072473(n+2)/2` -/
def P655756384477978096.Spec : Prop :=
  ∀ n, P655756384477978096.a n = (A258934 (n + 2) : ℚ)

end A258934

/-! ## A258934.P8899308222743734036

`A087461(n+2)-A065091(n+1)`
-/

namespace A258934.P8899308222743734036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2) - A065091 (n + 1)

end

end A258934.P8899308222743734036

namespace A258934

/-- `A087461(n+2)-A065091(n+1)` -/
def P8899308222743734036.Spec : Prop :=
  ∀ n, P8899308222743734036.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P5032187081072543451

`A087461(n+2)-A000040(n+2)`
-/

namespace A258934.P5032187081072543451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2) - A000040 (n + 2)

end

end A258934.P5032187081072543451

namespace A258934

/-- `A087461(n+2)-A000040(n+2)` -/
def P5032187081072543451.Spec : Prop :=
  ∀ n, P5032187081072543451.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P4532614377414666341

`A087461(n+2)-A006005(n+2)`
-/

namespace A258934.P4532614377414666341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 2) - A006005 (n + 2)

end

end A258934.P4532614377414666341

namespace A258934

/-- `A087461(n+2)-A006005(n+2)` -/
def P4532614377414666341.Spec : Prop :=
  ∀ n, P4532614377414666341.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P3198678892285330057

`A031215(n+2)-A087461(n+2)`
-/

namespace A258934.P3198678892285330057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 2) - A087461 (n + 2)

end

end A258934.P3198678892285330057

namespace A258934

/-- `A031215(n+2)-A087461(n+2)` -/
def P3198678892285330057.Spec : Prop :=
  ∀ n, P3198678892285330057.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P16142395455070180441

`(A066066(n+2)+A000040(n+2))/2`
-/

namespace A258934.P16142395455070180441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066066 (n + 2) + A000040 (n + 2) : ℚ) / 2

end

end A258934.P16142395455070180441

namespace A258934

/-- `(A066066(n+2)+A000040(n+2))/2` -/
def P16142395455070180441.Spec : Prop :=
  ∀ n, P16142395455070180441.a n = (A258934 (n + 2) : ℚ)

end A258934

/-! ## A258934.P3994267861156755440

`(A031215(n+2)-A000040(n+2))/2`
-/

namespace A258934.P3994267861156755440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 2) - A000040 (n + 2) : ℚ) / 2

end

end A258934.P3994267861156755440

namespace A258934

/-- `(A031215(n+2)-A000040(n+2))/2` -/
def P3994267861156755440.Spec : Prop :=
  ∀ n, P3994267861156755440.a n = (A258934 (n + 2) : ℚ)

end A258934

/-! ## A258934.P2357644404027113064

`A092390(n+2)/2-A000040(n+2)`
-/

namespace A258934.P2357644404027113064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092390 (n + 2) : ℚ) / 2 - (A000040 (n + 2) : ℚ)

end

end A258934.P2357644404027113064

namespace A258934

/-- `A092390(n+2)/2-A000040(n+2)` -/
def P2357644404027113064.Spec : Prop :=
  ∀ n, P2357644404027113064.a n = (A258934 (n + 2) : ℚ)

end A258934

/-! ## A258934.P9185349127616165329

`(A116368(n+2)-A001043(n+2))/2`
-/

namespace A258934.P9185349127616165329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116368 (n + 2) - A001043 (n + 2) : ℚ) / 2

end

end A258934.P9185349127616165329

namespace A258934

/-- `(A116368(n+2)-A001043(n+2))/2` -/
def P9185349127616165329.Spec : Prop :=
  ∀ n, P9185349127616165329.a n = (A258934 (n + 2) : ℚ)

end A258934

/-! ## A258934.P722557713451951054

`(A092390(n+2)-A100484(n+2))/2`
-/

namespace A258934.P722557713451951054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092390 (n + 2) - A100484 (n + 2) : ℚ) / 2

end

end A258934.P722557713451951054

namespace A258934

/-- `(A092390(n+2)-A100484(n+2))/2` -/
def P722557713451951054.Spec : Prop :=
  ∀ n, P722557713451951054.a n = (A258934 (n + 2) : ℚ)

end A258934

/-! ## A258934.P2641885198521862988

`A066066(n+2)+A087461(n+2)-A072473(n+2)`
-/

namespace A258934.P2641885198521862988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 2) + (A087461 (n + 2) - A072473 (n + 2))

end

end A258934.P2641885198521862988

namespace A258934

/-- `A066066(n+2)+A087461(n+2)-A072473(n+2)` -/
def P2641885198521862988.Spec : Prop :=
  ∀ n, P2641885198521862988.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P720834033699726839

`A272042(n+2)-(A087461(n+2)+A072473(n+2))`
-/

namespace A258934.P720834033699726839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 2) - (A087461 (n + 2) + A072473 (n + 2))

end

end A258934.P720834033699726839

namespace A258934

/-- `A272042(n+2)-(A087461(n+2)+A072473(n+2))` -/
def P720834033699726839.Spec : Prop :=
  ∀ n, P720834033699726839.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P16557542702287502790

`A005097(2*n+3)-A005097(n+1)`
-/

namespace A258934.P16557542702287502790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (2 * n + 3) - A005097 (n + 1)

end

end A258934.P16557542702287502790

namespace A258934

/-- `A005097(2*n+3)-A005097(n+1)` -/
def P16557542702287502790.Spec : Prop :=
  ∀ n, P16557542702287502790.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P11466293381445110960

`A006254(2*n+3)-A006254(n+1)`
-/

namespace A258934.P11466293381445110960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (2 * n + 3) - A006254 (n + 1)

end

end A258934.P11466293381445110960

namespace A258934

/-- `A006254(2*n+3)-A006254(n+1)` -/
def P11466293381445110960.Spec : Prop :=
  ∀ n, P11466293381445110960.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P7153391053939444728

`A067076(2*n+3)-A067076(n+1)`
-/

namespace A258934.P7153391053939444728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (2 * n + 3) - A067076 (n + 1)

end

end A258934.P7153391053939444728

namespace A258934

/-- `A067076(2*n+3)-A067076(n+1)` -/
def P7153391053939444728.Spec : Prop :=
  ∀ n, P7153391053939444728.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P10093614265864409496

`A089192(2*n+3)-A089192(n+1)`
-/

namespace A258934.P10093614265864409496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (2 * n + 3) - A089192 (n + 1)

end

end A258934.P10093614265864409496

namespace A258934

/-- `A089192(2*n+3)-A089192(n+1)` -/
def P10093614265864409496.Spec : Prop :=
  ∀ n, P10093614265864409496.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P4855661426674407679

`A089253(2*n+3)-A089253(n+1)`
-/

namespace A258934.P4855661426674407679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (2 * n + 3) - A089253 (n + 1)

end

end A258934.P4855661426674407679

namespace A258934

/-- `A089253(2*n+3)-A089253(n+1)` -/
def P4855661426674407679.Spec : Prop :=
  ∀ n, P4855661426674407679.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P11678480147898626977

`A097069(2*n+3)-A097069(n+1)`
-/

namespace A258934.P11678480147898626977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (2 * n + 3) - A097069 (n + 1)

end

end A258934.P11678480147898626977

namespace A258934

/-- `A097069(2*n+3)-A097069(n+1)` -/
def P11678480147898626977.Spec : Prop :=
  ∀ n, P11678480147898626977.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P7614172770696297090

`A097338(2*n+3)-A097338(n+1)`
-/

namespace A258934.P7614172770696297090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (2 * n + 3) - A097338 (n + 1)

end

end A258934.P7614172770696297090

namespace A258934

/-- `A097338(2*n+3)-A097338(n+1)` -/
def P7614172770696297090.Spec : Prop :=
  ∀ n, P7614172770696297090.a n = A258934 (n + 2)

end A258934

/-! ## A258934.P14786750305130640678

`A097363(2*n+3)-A097363(n+1)`
-/

namespace A258934.P14786750305130640678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (2 * n + 3) - A097363 (n + 1)

end

end A258934.P14786750305130640678

namespace A258934

/-- `A097363(2*n+3)-A097363(n+1)` -/
def P14786750305130640678.Spec : Prop :=
  ∀ n, P14786750305130640678.a n = A258934 (n + 2)

end A258934

/-!
# A258935: Independence number of Keller graphs.

The programs for A258935, the canonical program `A258935.P9336899814763210604` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258935 has offset 1).

The definition of A258935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258935.P16790479021363601142

`ogf((-4+3x+2x^2)/(-1+2x))`
-/

namespace A258935.P16790479021363601142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -2] [1, -2] n

end

end A258935.P16790479021363601142

namespace A258935

/-- `ogf((-4+3x+2x^2)/(-1+2x))` -/
def P16790479021363601142.Spec : Prop :=
  ∀ n, P16790479021363601142.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P9336899814763210604

`2*a(n-1)` with `a(0)=4, a(1)=5, a(2)=8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258935

/-- `2*a(n-1)` -/
def P9336899814763210604.Spec : Prop :=
  ∀ n, (P9336899814763210604.a n : ℤ) = A258935 (n + 1)

theorem P9336899814763210604.correct : P9336899814763210604.Spec := by
  intro n
  simp only [A258935, Nat.add_sub_cancel]

end A258935

/-! ## A258935.P8077677575289922069

`record[char[1]+lcm(4, 2^n)]`
-/

namespace A258935.P8077677575289922069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + Nat.lcm 4 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258935.P8077677575289922069

namespace A258935

/-- `record[char[1]+lcm(4, 2^n)]` -/
def P8077677575289922069.Spec : Prop :=
  ∀ n, (P8077677575289922069.a n : ℤ) = A258935 (n + 1)

end A258935

/-! ## A258935.P4556166239770443080

`round(acot(n)+2^(n+1))`
-/

namespace A258935.P4556166239770443080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (2 ^ (n + 1) : ℝ))

end

end A258935.P4556166239770443080

namespace A258935

/-- `round(acot(n)+2^(n+1))` -/
def P4556166239770443080.Spec : Prop :=
  ∀ n, P4556166239770443080.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P13725897130032185312

`a(n-1)+2^n` with `a(0)=4, a(1)=5, a(2)=8`
-/

namespace A258935.P13725897130032185312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 5, 8] fun n a =>
  a (n - 1) + 2 ^ n

end

end A258935.P13725897130032185312

namespace A258935

/-- `a(n-1)+2^n` -/
def P13725897130032185312.Spec : Prop :=
  ∀ n, (P13725897130032185312.a n : ℤ) = A258935 (n + 1)

end A258935

/-! ## A258935.P2757633241681833326

`C(2, n+1)+2^(n+1)`
-/

namespace A258935.P2757633241681833326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 1) + 2 ^ (n + 1)

end

end A258935.P2757633241681833326

namespace A258935

/-- `C(2, n+1)+2^(n+1)` -/
def P2757633241681833326.Spec : Prop :=
  ∀ n, (P2757633241681833326.a n : ℤ) = A258935 (n + 1)

end A258935

/-! ## A258935.P1768904847908801946

`floor(2/(n+1))+2^(n+1)`
-/

namespace A258935.P1768904847908801946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (n + 1 : ℚ)⌋ + (2 ^ (n + 1) : ℤ)

end

end A258935.P1768904847908801946

namespace A258935

/-- `floor(2/(n+1))+2^(n+1)` -/
def P1768904847908801946.Spec : Prop :=
  ∀ n, P1768904847908801946.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P2201418960873824456

`record[lcm(2^(n-1), a(n-1))]` with `a(0)=4, a(1)=5, a(2)=1`
-/

namespace A258935.P2201418960873824456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5, 1] fun n f1 =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (f1 (n - 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258935.P2201418960873824456

namespace A258935

/-- `record[lcm(2^(n-1), a(n-1))]` -/
def P2201418960873824456.Spec : Prop :=
  ∀ n, (P2201418960873824456.a n : ℤ) = A258935 (n + 1)

end A258935

/-! ## A258935.P4540093962565454435

`floor(a(n-1)+floor(a(n-1)))` with `a(0)=4, a(1)=5, a(2)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A258935.P4540093962565454435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 5, 8] fun n a =>
  a (n - 1) + a (n - 1)

end

end A258935.P4540093962565454435

namespace A258935

/-- `floor(a(n-1)+floor(a(n-1)))` -/
def P4540093962565454435.Spec : Prop :=
  ∀ n, (P4540093962565454435.a n : ℤ) = A258935 (n + 1)

theorem P4540093962565454435.correct : P4540093962565454435.Spec := by
  intro n
  simp only [A258935, Nat.add_sub_cancel, A258935.P4540093962565454435.a, A258935.P9336899814763210604.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A258935

/-! ## A258935.P12492947459157760709

`record[A239678(n)+1]`
-/

namespace A258935.P12492947459157760709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239678 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258935.P12492947459157760709

namespace A258935

/-- `record[A239678(n)+1]` -/
def P12492947459157760709.Spec : Prop :=
  ∀ n, P12492947459157760709.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P3058371343488191599

`(char[1]+4)*A011782(n)`
-/

namespace A258935.P3058371343488191599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 4 : ℕ) : ℤ) * A011782 n

end

end A258935.P3058371343488191599

namespace A258935

/-- `(char[1]+4)*A011782(n)` -/
def P3058371343488191599.Spec : Prop :=
  ∀ n, P3058371343488191599.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P12648671407162514402

`round(A000079(n+1)+acot(n))`
-/

namespace A258935.P12648671407162514402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ))

end

end A258935.P12648671407162514402

namespace A258935

/-- `round(A000079(n+1)+acot(n))` -/
def P12648671407162514402.Spec : Prop :=
  ∀ n, P12648671407162514402.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P9185605936668137726

`round(A135530(2*n)+acot(n))`
-/

namespace A258935.P9185605936668137726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135530 (2 * n) : ℝ) + SequenceMachineLib.acot (n : ℝ))

end

end A258935.P9185605936668137726

namespace A258935

/-- `round(A135530(2*n)+acot(n))` -/
def P9185605936668137726.Spec : Prop :=
  ∀ n, P9185605936668137726.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P16008086892752724622

`record[lcm(a(n-1), A117575(n+1))]` with `a(0)=4, a(1)=5, a(2)=1`
-/

namespace A258935.P16008086892752724622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5, 1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A117575 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258935.P16008086892752724622

namespace A258935

/-- `record[lcm(a(n-1), A117575(n+1))]` -/
def P16008086892752724622.Spec : Prop :=
  ∀ n, (P16008086892752724622.a n : ℤ) = A258935 (n + 1)

end A258935

/-! ## A258935.P12705836050855632360

`A228305(A004278(n+2))`
-/

namespace A258935.P12705836050855632360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (A004278 (n + 2)).toNat

end

end A258935.P12705836050855632360

namespace A258935

/-- `A228305(A004278(n+2))` -/
def P12705836050855632360.Spec : Prop :=
  ∀ n, P12705836050855632360.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P17420803376251616548

`A200947(A175787(n+2))`
-/

namespace A258935.P17420803376251616548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200947 (A175787 (n + 2)).toNat

end

end A258935.P17420803376251616548

namespace A258935

/-- `A200947(A175787(n+2))` -/
def P17420803376251616548.Spec : Prop :=
  ∀ n, P17420803376251616548.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P15980918579594911453

`A029749(A296515(n+1)+2)`
-/

namespace A258935.P15980918579594911453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (A296515 (n + 1) + 2).toNat

end

end A258935.P15980918579594911453

namespace A258935

/-- `A029749(A296515(n+1)+2)` -/
def P15980918579594911453.Spec : Prop :=
  ∀ n, P15980918579594911453.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P14518281612143362941

`A054977(n)*A240951(n+2)`
-/

namespace A258935.P14518281612143362941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A240951 (n + 2)

end

end A258935.P14518281612143362941

namespace A258935

/-- `A054977(n)*A240951(n+2)` -/
def P14518281612143362941.Spec : Prop :=
  ∀ n, P14518281612143362941.a n = A258935 (n + 1)

end A258935

/-! ## A258935.P12504156242914321995

`∩[A051916(n+1), A160967(n)]`
-/

namespace A258935.P12504156242914321995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160967 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258935.P12504156242914321995

namespace A258935

/-- `∩[A051916(n+1), A160967(n)]` -/
def P12504156242914321995.Spec : Prop :=
  ∀ n, (P12504156242914321995.a n : ℤ) = A258935 (n + 1)

end A258935

/-! ## A258935.P13461056092593152222

`∩[A160967(n), A228305(n+1)]`
-/

namespace A258935.P13461056092593152222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258935.P13461056092593152222

namespace A258935

/-- `∩[A160967(n), A228305(n+1)]` -/
def P13461056092593152222.Spec : Prop :=
  ∀ n, (P13461056092593152222.a n : ℤ) = A258935 (n + 1)

end A258935

/-!
# A258937: Define f_i as the i-th iterate of A260187. a(n) is the least prime for which f_i(a(n)) is prime for all i such that 0 <= i < n and f_n(a(n)) is not prime.

The programs for A258937, there is no canonical definition to state claims against.
-/

/-! ## A258937.P10069652361224369458

`A151800(∑[A038710(n+1)]-2)`
-/

namespace A258937.P10069652361224369458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A258937.P10069652361224369458

/-!
# A258938: Index of the Lucas numbers in A258740.

The programs for A258938, the canonical program `A258938.P11786850421693522442` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258938 has offset 1).

The definition of A258938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258938.P11786850421693522442

`lt[n², n*A139374(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258938

/-- `lt[n², n*A139374(n)]` -/
def P11786850421693522442.Spec : Prop :=
  ∀ n, (P11786850421693522442.a n : ℤ) = A258938 (n + 1)

theorem P11786850421693522442.correct : P11786850421693522442.Spec := by
  intro n
  simp only [A258938, Nat.add_sub_cancel]

end A258938

/-! ## A258938.P9305973317025708452

`record[(n+2)%A139374(n+2)]`
-/

namespace A258938.P9305973317025708452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A139374 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258938.P9305973317025708452

namespace A258938

/-- `record[(n+2)%A139374(n+2)]` -/
def P9305973317025708452.Spec : Prop :=
  ∀ n, P9305973317025708452.a n = A258938 (n + 1)

end A258938

/-! ## A258938.P2381230924919757691

`lt[n+1, A139374(n+1)]+1`
-/

namespace A258938.P2381230924919757691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A258938.P2381230924919757691

namespace A258938

/-- `lt[n+1, A139374(n+1)]+1` -/
def P2381230924919757691.Spec : Prop :=
  ∀ n, (P2381230924919757691.a n : ℤ) = A258938 (n + 1)

end A258938

/-! ## A258938.P12856691009548142512

`eq[n, A028310(n)%A139374(n)]`
-/

namespace A258938.P12856691009548142512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A139374 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258938.P12856691009548142512

namespace A258938

/-- `eq[n, A028310(n)%A139374(n)]` -/
def P12856691009548142512.Spec : Prop :=
  ∀ n, (P12856691009548142512.a n : ℤ) = A258938 (n + 1)

end A258938

/-! ## A258938.P4510606800489294691

`lt[A028310(n), A139374(A028310(n))]`
-/

namespace A258938.P4510606800489294691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139374 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258938.P4510606800489294691

namespace A258938

/-- `lt[A028310(n), A139374(A028310(n))]` -/
def P4510606800489294691.Spec : Prop :=
  ∀ n, (P4510606800489294691.a n : ℤ) = A258938 (n + 1)

end A258938

/-! ## A258938.P3734478599309760670

`lt[A233583(n+1), A139374(n)]`
-/

namespace A258938.P3734478599309760670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258938.P3734478599309760670

namespace A258938

/-- `lt[A233583(n+1), A139374(n)]` -/
def P3734478599309760670.Spec : Prop :=
  ∀ n, (P3734478599309760670.a n : ℤ) = A258938 (n + 1)

end A258938

/-! ## A258938.P16132045198479177380

`lt[A127218(n), A127218(A139374(n))]`
-/

namespace A258938.P16132045198479177380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (A139374 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A258938.P16132045198479177380

namespace A258938

/-- `lt[A127218(n), A127218(A139374(n))]` -/
def P16132045198479177380.Spec : Prop :=
  ∀ n, (P16132045198479177380.a n : ℤ) = A258938 (n + 1)

end A258938

/-!
# A258939: Expansion of f(-x^3, -x^5) * f(x^3, x^13) / (f(-x, -x^2) * f(-x^8, -x^16)) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A258939, there is no canonical definition to state claims against.
-/

/-! ## A258939.P20612313019983029

`-A029838(4*n+2)`
-/

namespace A258939.P20612313019983029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A029838 (4 * n + 2)

end

end A258939.P20612313019983029

/-! ## A258939.P8083705515540162930

`A036016(Δ[n²])`
-/

namespace A258939.P8083705515540162930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036016 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A258939.P8083705515540162930

/-! ## A258939.P14946068982177841812

`-A258741(Δ[n²])`
-/

namespace A258939.P14946068982177841812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A258741 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A258939.P14946068982177841812

/-! ## A258939.P947995531996980940

`abs(record[-A258741(n)])`
-/

namespace A258939.P947995531996980940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A258741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A258939.P947995531996980940

/-! ## A258939.P13477800127264270149

`abs(A258741(2*n+1))`
-/

namespace A258939.P13477800127264270149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258741 (2 * n + 1)|

end

end A258939.P13477800127264270149

/-! ## A258939.P12446940574690086846

`gcd(A000038(n), A258741(2*n+1))`
-/

namespace A258939.P12446940574690086846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258741 (2 * n + 1))

end

end A258939.P12446940574690086846

/-! ## A258939.P12539354642581058072

`lcm(A020985(n), A258741(2*n+1))`
-/

namespace A258939.P12539354642581058072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A258741 (2 * n + 1))

end

end A258939.P12539354642581058072

/-! ## A258939.P11977132817518048762

`A000007(n+1)-A258741(2*n+1)`
-/

namespace A258939.P11977132817518048762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A258741 (2 * n + 1)

end

end A258939.P11977132817518048762

/-! ## A258939.P17254201651276946316

`A000038(n+1)-A258741(2*n+1)`
-/

namespace A258939.P17254201651276946316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A258741 (2 * n + 1)

end

end A258939.P17254201651276946316

/-! ## A258939.P6566697446303603380

`A248394(2*n)-A258741(2*n+1)`
-/

namespace A258939.P6566697446303603380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (2 * n) - A258741 (2 * n + 1)

end

end A258939.P6566697446303603380

/-! ## A258939.P17566400540077558850

`1-(A258741(2*n+1)+A033999(2*n))`
-/

namespace A258939.P17566400540077558850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A258741 (2 * n + 1) + A033999 (2 * n))

end

end A258939.P17566400540077558850

/-! ## A258939.P6885104162314599652

`A033999(2*n+1)*A258741(2*n+1)`
-/

namespace A258939.P6885104162314599652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A258741 (2 * n + 1)

end

end A258939.P6885104162314599652

/-! ## A258939.P12954919131426047133

`(A001489(n+1)+n)*A258741(2*n+1)`
-/

namespace A258939.P12954919131426047133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001489 (n + 1) + (n : ℤ)) * A258741 (2 * n + 1)

end

end A258939.P12954919131426047133

/-! ## A258939.P9659060138391144748

`(n-A000463(2*n+1))*A258741(2*n+1)`
-/

namespace A258939.P9659060138391144748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000463 (2 * n + 1)) * A258741 (2 * n + 1)

end

end A258939.P9659060138391144748

/-! ## A258939.P14178570813992418545

`A118917(2*n+1)*A118917(2*n)-A258741(2*n+1)`
-/

namespace A258939.P14178570813992418545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (2 * n + 1) * A118917 (2 * n) - A258741 (2 * n + 1)

end

end A258939.P14178570813992418545

/-! ## A258939.P10335468921331157081

`abs(record[-A029838(n)])`
-/

namespace A258939.P10335468921331157081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A029838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A258939.P10335468921331157081

/-! ## A258939.P18056183713037561693

`abs(record[-A082303(n)])`
-/

namespace A258939.P18056183713037561693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A082303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A258939.P18056183713037561693

/-! ## A258939.P9688858482992404961

`A316384(4*n+2)`
-/

namespace A258939.P9688858482992404961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316384 (4 * n + 2)

end

end A258939.P9688858482992404961

/-! ## A258939.P10413508243972737673

`abs(A029838(2*(2*n+1)))`
-/

namespace A258939.P10413508243972737673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029838 (2 * (2 * n + 1))|

end

end A258939.P10413508243972737673

/-! ## A258939.P925298143287315037

`abs(record[-A093085(4*n)])`
-/

namespace A258939.P925298143287315037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A093085 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A258939.P925298143287315037

/-!
# A258940: Expansion of f(-x^8) * f(-x^12) * f(-x^24) * f(-x^2, -x^6)^2 / (f(-x^2) * f(-x^3, -x^5) * f(-x^3, -x^21)) in powers of x where f() is a Ramanujan theta function and f(, ) is Ramanujan's general theta function.

The programs for A258940, there is no canonical definition to state claims against.
-/

/-! ## A258940.P11937350195350445338

`(A128580(n)+A033762(n))/2`
-/

namespace A258940.P11937350195350445338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128580 n + A033762 n : ℚ) / 2

end

end A258940.P11937350195350445338

/-! ## A258940.P14327452741561704188

`A040001(A000537(n))-n%3`
-/

namespace A258940.P14327452741561704188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A000537 n).toNat - ((n % 3 : ℕ) : ℤ)

end

end A258940.P14327452741561704188

/-! ## A258940.P12157559083312499740

`A040001(A000537(n))-A010872(n)`
-/

namespace A258940.P12157559083312499740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A000537 n).toNat - A010872 n

end

end A258940.P12157559083312499740

/-! ## A258940.P13317805225356197638

`A040001(A000217(n)²)-A010872(n)`
-/

namespace A258940.P13317805225356197638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A000217 n ^ 2).toNat - A010872 n

end

end A258940.P13317805225356197638

/-! ## A258940.P10484288877944762545

`Δ[A004525(n)-A005361(A122552(n))]`
-/

namespace A258940.P10484288877944762545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - A005361 (A122552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258940.P10484288877944762545

/-!
# A258943: Exponential reversion of Fibonacci numbers A000045.

The programs for A258943, there is no canonical definition to state claims against.
-/

/-! ## A258943.P15849474460913637347

`A163280(A216247(n))*A225200(n+1)`
-/

namespace A258943.P15849474460913637347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163280 (A216247 n).toNat * A225200 (n + 1)

end

end A258943.P15849474460913637347

/-!
# A258946: Numbers that can be expressed using only the digits 0 and 1 in no more than three different bases.

The programs for A258946, there is no canonical definition to state claims against.
-/

/-! ## A258946.P57771764075587802

`lt[2, C(4, A068953(n+1))]+1`
-/

namespace A258946.P57771764075587802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A068953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A258946.P57771764075587802

/-!
# A258948: a(1)=1, a(2)=2; for n>2, a(n) = (1/2)*a(n-1)*a(n-2) + a(n-1) + a(n-2).

The programs for A258948, the canonical program `A258948.P11763770172159746747` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258948 has offset 1).

The definition of A258948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258948.P11763770172159746747

`1/2*a(n-1)*a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258948

/-- `1/2*a(n-1)*a(n-2)+a(n-1)+a(n-2)` -/
def P11763770172159746747.Spec : Prop :=
  ∀ n, P11763770172159746747.a n = (A258948 (n + 1) : ℚ)

end A258948

/-! ## A258948.P7739417381673058790

`a(n-1)+(a(n-1)/2+1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A258948.P7739417381673058790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) / 2 + 1) * a (n - 2)

end

end A258948.P7739417381673058790

namespace A258948

/-- `a(n-1)+(a(n-1)/2+1)*a(n-2)` -/
def P7739417381673058790.Spec : Prop :=
  ∀ n, P7739417381673058790.a n = (A258948 (n + 1) : ℚ)

end A258948

/-! ## A258948.P10570387996798032179

`∏{e}[A003945(n), A254132(#)]`
-/

namespace A258948.P10570387996798032179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A254132 (Nat.factorization (f1 n).natAbs p)

end

end A258948.P10570387996798032179

namespace A258948

/-- `∏{e}[A003945(n), A254132(#)]` -/
def P10570387996798032179.Spec : Prop :=
  ∀ n, P10570387996798032179.a n = A258948 (n + 1)

end A258948

/-! ## A258948.P10882542177356512075

`∏{e}[A020699(n), A254132(#)]`
-/

namespace A258948.P10882542177356512075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A254132 (Nat.factorization (f1 n).natAbs p)

end

end A258948.P10882542177356512075

namespace A258948

/-- `∏{e}[A020699(n), A254132(#)]` -/
def P10882542177356512075.Spec : Prop :=
  ∀ n, P10882542177356512075.a n = A258948 (n + 1)

end A258948

/-!
# A258949: Number of (n+3) X (n+3) 0..1 arrays with no 4 X 4 subblock diagonal sum not equal the antidiagonal sum.

The programs for A258949, there is no canonical definition to state claims against.
-/

/-! ## A258949.P2901550883113759645

`A258957(∑[4*n]+1)`
-/

namespace A258949.P2901550883113759645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258949.P2901550883113759645

/-! ## A258949.P9836876440328114277

`lcm(2, A258957(A001844(n)))`
-/

namespace A258949.P9836876440328114277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258957 (A001844 n).toNat)

end

end A258949.P9836876440328114277

/-! ## A258949.P13429173951391142618

`A258957(A001844(n))+A137579(n)`
-/

namespace A258949.P13429173951391142618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A001844 n).toNat + A137579 n

end

end A258949.P13429173951391142618

/-! ## A258949.P5970353114996008436

`A258957(A001844(n))+A008683(8*n+4)`
-/

namespace A258949.P5970353114996008436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A001844 n).toNat + A008683 (8 * n + 4)

end

end A258949.P5970353114996008436

/-! ## A258949.P579602288383734683

`A000045(ceil(2/(n+1)))*A258957(A001844(n))`
-/

namespace A258949.P579602288383734683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈2 / (n + 1 : ℚ)⌉.toNat * A258957 (A001844 n).toNat

end

end A258949.P579602288383734683

/-!
# A258950: Number of (n+3)X(1+3) 0..1 arrays with no 4x4 subblock diagonal sum not equal the antidiagonal sum.

The programs for A258950, there is no canonical definition to state claims against.
-/

/-! ## A258950.P10214308007892559309

`A258957(∑[n]+1)`
-/

namespace A258950.P10214308007892559309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258950.P10214308007892559309

/-! ## A258950.P2196506009748807842

`record[A258957(n+1)]`
-/

namespace A258950.P2196506009748807842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258950.P2196506009748807842

/-! ## A258950.P1723158611255190057

`lcm(2, A258957(A000124(n)))`
-/

namespace A258950.P1723158611255190057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258957 (A000124 n).toNat)

end

end A258950.P1723158611255190057

/-! ## A258950.P5199250673133415918

`A124794(A048896(n))*A258957(A000124(n))`
-/

namespace A258950.P5199250673133415918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A048896 n).toNat * A258957 (A000124 n).toNat

end

end A258950.P5199250673133415918

/-! ## A258950.P18446361889073679825

`lcm(4, A258957(C(n+2, 2)))`
-/

namespace A258950.P18446361889073679825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A258957 (Nat.choose (n + 2) 2))

end

end A258950.P18446361889073679825

/-!
# A258951: Number of (n+3)X(2+3) 0..1 arrays with no 4x4 subblock diagonal sum not equal the antidiagonal sum.

The programs for A258951, there is no canonical definition to state claims against.
-/

/-! ## A258951.P11072100045441321028

`A258957(∑[n+1]+2)`
-/

namespace A258951.P11072100045441321028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258951.P11072100045441321028

/-! ## A258951.P3793177799155966899

`record[gcd(A002262(n), A258957(n+2))]`
-/

namespace A258951.P3793177799155966899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A258957 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258951.P3793177799155966899

/-! ## A258951.P17546727569680225239

`record[gcd(A173787(n), A258957(n+3))]`
-/

namespace A258951.P17546727569680225239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173787 n) (A258957 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258951.P17546727569680225239

/-! ## A258951.P15952145687797238603

`lcm(2, A258957(A034856(n+1)+1))`
-/

namespace A258951.P15952145687797238603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258957 (A034856 (n + 1) + 1).toNat)

end

end A258951.P15952145687797238603

/-! ## A258951.P2352115967308981895

`A057427(n+1)*A258957(A000096(n+1))`
-/

namespace A258951.P2352115967308981895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A258957 (A000096 (n + 1)).toNat

end

end A258951.P2352115967308981895

/-!
# A258952: Number of (n+3)X(3+3) 0..1 arrays with no 4x4 subblock diagonal sum not equal the antidiagonal sum.

The programs for A258952, there is no canonical definition to state claims against.
-/

/-! ## A258952.P13683835605917564750

`A258957(A167614(n+1))`
-/

namespace A258952.P13683835605917564750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A167614 (n + 1)).toNat

end

end A258952.P13683835605917564750

/-! ## A258952.P11464296852286235124

`A258957(A373663(n+1))`
-/

namespace A258952.P11464296852286235124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A373663 (n + 1)).toNat

end

end A258952.P11464296852286235124

/-! ## A258952.P17723428023344633236

`A258957(A055998(n)+6)`
-/

namespace A258952.P17723428023344633236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A055998 n + 6).toNat

end

end A258952.P17723428023344633236

/-! ## A258952.P465220715705852874

`A258957(A167499(n)+n)`
-/

namespace A258952.P465220715705852874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A167499 n + (n : ℤ)).toNat

end

end A258952.P465220715705852874

/-! ## A258952.P9048227366814547561

`A258957(A034856(n+1)+5)`
-/

namespace A258952.P9048227366814547561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A034856 (n + 1) + 5).toNat

end

end A258952.P9048227366814547561

/-!
# A258953: Number of (n+3)X(4+3) 0..1 arrays with no 4x4 subblock diagonal sum not equal the antidiagonal sum.

The programs for A258953, there is no canonical definition to state claims against.
-/

/-! ## A258953.P5376028685801606935

`A258957(∑[n+3]+7)`
-/

namespace A258953.P5376028685801606935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A258953.P5376028685801606935

/-! ## A258953.P10937366260154069579

`lcm(2, A258957(A052905(n)+9))`
-/

namespace A258953.P10937366260154069579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258957 (A052905 n + 9).toNat)

end

end A258953.P10937366260154069579

/-! ## A258953.P5254215959805837942

`lcm(A033999(n), A258957(A034856(n+2)+6))`
-/

namespace A258953.P5254215959805837942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A258957 (A034856 (n + 2) + 6).toNat)

end

end A258953.P5254215959805837942

/-! ## A258953.P6295369237326561272

`A258957(A052905(n)+9)+A000217(C(n+1, 47))`
-/

namespace A258953.P6295369237326561272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A052905 n + 9).toNat + A000217 (Nat.choose (n + 1) 47)

end

end A258953.P6295369237326561272

/-! ## A258953.P18007949321516451192

`A258957(A055999(n)+10)+A010057(A055999(n)+10)`
-/

namespace A258953.P18007949321516451192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A055999 n + 10).toNat + A010057 (A055999 n + 10).toNat

end

end A258953.P18007949321516451192

/-!
# A258954: Number of (n+3)X(5+3) 0..1 arrays with no 4x4 subblock diagonal sum not equal the antidiagonal sum.

The programs for A258954, there is no canonical definition to state claims against.
-/

/-! ## A258954.P8350521102181442048

`A258957(A374005(n+1))`
-/

namespace A258954.P8350521102181442048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A374005 (n + 1)).toNat

end

end A258954.P8350521102181442048

/-! ## A258954.P8478946572860202054

`A258957(A167499(n+3))`
-/

namespace A258954.P8478946572860202054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A167499 (n + 3)).toNat

end

end A258954.P8478946572860202054

/-! ## A258954.P1395539930980352394

`A258957(A155212(n)+13)`
-/

namespace A258954.P1395539930980352394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A155212 n + 13).toNat

end

end A258954.P1395539930980352394

/-! ## A258954.P14137781288328568394

`A258957(A056000(n)+15)`
-/

namespace A258954.P14137781288328568394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A056000 n + 15).toNat

end

end A258954.P14137781288328568394

/-! ## A258954.P2835286207485528709

`A258957(eq[4, A193592(n)])`
-/

namespace A258954.P2835286207485528709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258954.P2835286207485528709

/-!
# A258955: Number of (n+3)X(6+3) 0..1 arrays with no 4x4 subblock diagonal sum not equal the antidiagonal sum.

The programs for A258955, there is no canonical definition to state claims against.
-/

/-! ## A258955.P16045871994083172831

`A258957(A374007(n+1))`
-/

namespace A258955.P16045871994083172831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A374007 (n + 1)).toNat

end

end A258955.P16045871994083172831

/-! ## A258955.P12402793989256495781

`A258957(A052905(n+3))`
-/

namespace A258955.P12402793989256495781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A052905 (n + 3)).toNat

end

end A258955.P12402793989256495781

/-! ## A258955.P16072953312291145123

`A258957(eq[5, A193592(n)])`
-/

namespace A258955.P16072953312291145123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258955.P16072953312291145123

/-! ## A258955.P13678812488268248896

`A258957(eq[8, A185782(n+1)])`
-/

namespace A258955.P13678812488268248896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258955.P13678812488268248896

/-! ## A258955.P2293139165433074493

`A258957(eq[16, A057728(n+1)])`
-/

namespace A258955.P2293139165433074493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258955.P2293139165433074493

/-!
# A258956: Number of (n+3)X(7+3) 0..1 arrays with no 4x4 subblock diagonal sum not equal the antidiagonal sum.

The programs for A258956, there is no canonical definition to state claims against.
-/

/-! ## A258956.P13052322003852873952

`A258957(A374008(n+1))`
-/

namespace A258956.P13052322003852873952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A374008 (n + 1)).toNat

end

end A258956.P13052322003852873952

/-! ## A258956.P18286585167268153446

`A258957(eq[8, A131818(n+1)])`
-/

namespace A258956.P18286585167268153446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258956.P18286585167268153446

/-! ## A258956.P9916348691787446724

`A258957(A000124(n+7)-(n+1))`
-/

namespace A258956.P9916348691787446724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A258956.P9916348691787446724

/-! ## A258956.P11295605708704865418

`A258957(A055999(n+4))`
-/

namespace A258956.P11295605708704865418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (A055999 (n + 4)).toNat

end

end A258956.P11295605708704865418

/-! ## A258956.P396139879938537337

`A258957(eq[6, A193592(n)])`
-/

namespace A258956.P396139879938537337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A258956.P396139879938537337

/-!
# A258958: Number of (n+2) X (n+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 0 or 3 and no column sum 0 or 3.

The programs for A258958, there is no canonical definition to state claims against.
-/

/-! ## A258958.P16276033537833659065

`A258966(∑[4*n]+1)`
-/

namespace A258958.P16276033537833659065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258958.P16276033537833659065

/-! ## A258958.P11187366538977102240

`lcm(2, A258966((n+1)²+n²))`
-/

namespace A258958.P11187366538977102240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258966 ((n + 1) ^ 2 + n ^ 2))

end

end A258958.P11187366538977102240

/-! ## A258958.P10594050180257530043

`A258966(A001844(n))%A017479(n)`
-/

namespace A258958.P10594050180257530043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258966 (A001844 n).toNat) (A017479 n)

end

end A258958.P10594050180257530043

/-! ## A258958.P7702045865902262282

`A000034(2*n)*A258966(A001844(n))`
-/

namespace A258958.P7702045865902262282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A258966 (A001844 n).toNat

end

end A258958.P7702045865902262282

/-! ## A258958.P981554499821099765

`A000041(C(2, n+2))*A258966(A001844(n))`
-/

namespace A258958.P981554499821099765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A258966 (A001844 n).toNat

end

end A258958.P981554499821099765

/-! ## A258958.P11342490916830959730

`A258966(A001844(n))+A004247(A000096(n+3))`
-/

namespace A258958.P11342490916830959730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A001844 n).toNat + A004247 (A000096 (n + 3)).toNat

end

end A258958.P11342490916830959730

/-!
# A258959: Number of (n+2) X (1+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 0 or 3 and no column sum 0 or 3.

The programs for A258959, there is no canonical definition to state claims against.
-/

/-! ## A258959.P12469510256088329739

`A258966(∑[n]+1)`
-/

namespace A258959.P12469510256088329739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258959.P12469510256088329739

/-! ## A258959.P17606076252322598913

`xor(1, A258966(A000124(n))+1)`
-/

namespace A258959.P17606076252322598913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A258966 (A000124 n).toNat + 1)

end

end A258959.P17606076252322598913

/-! ## A258959.P17113564920744311594

`record[A258966(A010054(n+1)+n)]`
-/

namespace A258959.P17113564920744311594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A010054 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258959.P17113564920744311594

/-! ## A258959.P1605210203010113138

`record[A258966(n+1)/A258993(n+1)]`
-/

namespace A258959.P1605210203010113138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258966 (n + 1) : ℚ) / (A258993 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258959.P1605210203010113138

/-! ## A258959.P4286565154308217499

`A033999(n)²*A258966(A000124(n))`
-/

namespace A258959.P4286565154308217499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A258966 (A000124 n).toNat

end

end A258959.P4286565154308217499

/-! ## A258959.P898802253554492578

`A033999(2*n)*A258966(A000124(n))`
-/

namespace A258959.P898802253554492578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A258966 (A000124 n).toNat

end

end A258959.P898802253554492578

/-! ## A258959.P4485677442136469167

`A258966(A000124(n))/A033999(A063468(n+1))`
-/

namespace A258959.P4485677442136469167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258966 (A000124 n).toNat : ℚ) / (A033999 (A063468 (n + 1)).toNat : ℚ)

end

end A258959.P4485677442136469167

/-! ## A258959.P3848466819174632800

`A033999(A063468(n+2))+A258966(A000124(n))-1`
-/

namespace A258959.P3848466819174632800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063468 (n + 2)).toNat + (A258966 (A000124 n).toNat - 1)

end

end A258959.P3848466819174632800

/-! ## A258959.P5188899649837198057

`record[(1-A025581(n))*A258966(n+1)]`
-/

namespace A258959.P5188899649837198057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025581 n) * A258966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258959.P5188899649837198057

/-! ## A258959.P2880753485401530510

`record[A258966(A000217(A126759(n)))]`
-/

namespace A258959.P2880753485401530510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000217 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258959.P2880753485401530510

/-! ## A258959.P11622532762089896427

`record[A016393(A025581(n))*A258966(n+1)]`
-/

namespace A258959.P11622532762089896427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016393 (A025581 n).toNat * A258966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258959.P11622532762089896427

/-! ## A258959.P9870416635707932667

`A258966(A000217(n+1))+char[A103537(n+1)]`
-/

namespace A258959.P9870416635707932667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103537 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258959.P9870416635707932667

/-! ## A258959.P5441487800317120884

`A258966(A000217(n+1))+char[A044718(n+2)]`
-/

namespace A258959.P5441487800317120884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258959.P5441487800317120884

/-! ## A258959.P6814333177415871423

`A258966(A000217(n+1))+char[A258966(n+2)]`
-/

namespace A258959.P6814333177415871423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258959.P6814333177415871423

/-! ## A258959.P13581646789721828255

`A001221(A002385(n+2))*A258966(A000217(n+1))`
-/

namespace A258959.P13581646789721828255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002385 (n + 2)).toNat * A258966 (A000217 (n + 1)).toNat

end

end A258959.P13581646789721828255

/-! ## A258959.P6803015274523224448

`A001221(A002373(n+4))*A258966(A000217(n+1))`
-/

namespace A258959.P6803015274523224448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002373 (n + 4)).toNat * A258966 (A000217 (n + 1)).toNat

end

end A258959.P6803015274523224448

/-! ## A258959.P1189798146752951878

`A010052(A000290(n+1))*A258966(A000217(n+1))`
-/

namespace A258959.P1189798146752951878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 (n + 1)).toNat * A258966 (A000217 (n + 1)).toNat

end

end A258959.P1189798146752951878

/-!
# A258960: Number of (n+2) X (2+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 0 or 3 and no column sum 0 or 3.

The programs for A258960, there is no canonical definition to state claims against.
-/

/-! ## A258960.P12564997745113593689

`A258966(∑[n+1]+2)`
-/

namespace A258960.P12564997745113593689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258960.P12564997745113593689

/-! ## A258960.P498989298283216236

`lcm(A033999(n), A258966(A133263(n+1)))`
-/

namespace A258960.P498989298283216236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A258966 (A133263 (n + 1)).toNat)

end

end A258960.P498989298283216236

/-! ## A258960.P8956772108615986309

`A020985(n)²*A258966(A133263(n+1))`
-/

namespace A258960.P8956772108615986309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A258966 (A133263 (n + 1)).toNat

end

end A258960.P8956772108615986309

/-! ## A258960.P12542161194842877977

`A033999(2*n)*A258966(A133263(n+1))`
-/

namespace A258960.P12542161194842877977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A258966 (A133263 (n + 1)).toNat

end

end A258960.P12542161194842877977

/-! ## A258960.P12960887905095348039

`A258966(A133263(n+1))+char[A255172(n+1)]`
-/

namespace A258960.P12960887905095348039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255172 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258960.P12960887905095348039

/-! ## A258960.P15266833701928847855

`A258966(A133263(n+1))+char[A258966(n+2)]`
-/

namespace A258960.P15266833701928847855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258960.P15266833701928847855

/-! ## A258960.P4047670643757698890

`A258966(A133263(n+1))+A008683(4*(n+1))`
-/

namespace A258960.P4047670643757698890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A133263 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A258960.P4047670643757698890

/-! ## A258960.P6710645388419300566

`A258966(A133263(n+1))+A001222((n+1)²)%2`
-/

namespace A258960.P6710645388419300566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A133263 (n + 1)).toNat + Int.tmod (A001222 ((n + 1) ^ 2)) 2

end

end A258960.P6710645388419300566

/-! ## A258960.P11096267044210075696

`A258966(A133263(n+1))+(2*A001222(n+1))%2`
-/

namespace A258960.P11096267044210075696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A133263 (n + 1)).toNat + Int.tmod (2 * A001222 (n + 1)) 2

end

end A258960.P11096267044210075696

/-! ## A258960.P12875698487190860747

`A258966(A133263(n+1))+A055747(n)%gcd(2, n+1)`
-/

namespace A258960.P12875698487190860747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A133263 (n + 1)).toNat + Int.tmod (A055747 n) (Nat.gcd 2 (n + 1) : ℤ)

end

end A258960.P12875698487190860747

/-! ## A258960.P6562039311213398082

`A258966(A133263(n+1))+A000217(2*n)%(2*n+1)`
-/

namespace A258960.P6562039311213398082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A133263 (n + 1)).toNat + Int.tmod (A000217 (2 * n)) (2 * n + 1 : ℤ)

end

end A258960.P6562039311213398082

/-! ## A258960.P17058649937995346423

`A258966(A133263(n+1))+A204531(A322489(n+1))`
-/

namespace A258960.P17058649937995346423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A133263 (n + 1)).toNat + A204531 (A322489 (n + 1)).toNat

end

end A258960.P17058649937995346423

/-! ## A258960.P4860805993659403584

`A083888(A104793(n+1))*A258966(A133263(n+1))`
-/

namespace A258960.P4860805993659403584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A104793 (n + 1)).toNat * A258966 (A133263 (n + 1)).toNat

end

end A258960.P4860805993659403584

/-! ## A258960.P703564083859531483

`A001222(A020482(n+2))*A258966(A133263(n+1))`
-/

namespace A258960.P703564083859531483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020482 (n + 2)).toNat * A258966 (A133263 (n + 1)).toNat

end

end A258960.P703564083859531483

/-! ## A258960.P17583283944546296475

`A258966(A000096(n+1))+A004247(A000096(n+1))`
-/

namespace A258960.P17583283944546296475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000096 (n + 1)).toNat + A004247 (A000096 (n + 1)).toNat

end

end A258960.P17583283944546296475

/-!
# A258961: Number of (n+2) X (3+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 0 or 3 and no column sum 0 or 3.

The programs for A258961, there is no canonical definition to state claims against.
-/

/-! ## A258961.P10163769746237326621

`A258966(∑[n+2]+4)`
-/

namespace A258961.P10163769746237326621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A258961.P10163769746237326621

/-! ## A258961.P14822643764714765569

`lcm(2, A258966(A167614(n+1)))`
-/

namespace A258961.P14822643764714765569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258966 (A167614 (n + 1)).toNat)

end

end A258961.P14822643764714765569

/-! ## A258961.P10496620122320730271

`A258966(A167614(n+1))%A017106(n)`
-/

namespace A258961.P10496620122320730271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258966 (A167614 (n + 1)).toNat) (A017106 n)

end

end A258961.P10496620122320730271

/-! ## A258961.P8953454004582329259

`A033999(n)²*A258966(A167614(n+1))`
-/

namespace A258961.P8953454004582329259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A258966 (A167614 (n + 1)).toNat

end

end A258961.P8953454004582329259

/-! ## A258961.P5610988774463729309

`A258966(A167614(n+1))+A000007(n+1)`
-/

namespace A258961.P5610988774463729309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A258961.P5610988774463729309

/-! ## A258961.P14080976490494713271

`A010052(A000290(n))*A258966(A167614(n+1))`
-/

namespace A258961.P14080976490494713271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat * A258966 (A167614 (n + 1)).toNat

end

end A258961.P14080976490494713271

/-! ## A258961.P1715608949516601690

`A014963(A244416(n+1))*A258966(A167614(n+1))`
-/

namespace A258961.P1715608949516601690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A244416 (n + 1)).toNat * A258966 (A167614 (n + 1)).toNat

end

end A258961.P1715608949516601690

/-!
# A258962: Number of (n+2) X (4+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 0 or 3 and no column sum 0 or 3.

The programs for A258962, there is no canonical definition to state claims against.
-/

/-! ## A258962.P10514708066011032153

`A258966(∑[n+3]+7)`
-/

namespace A258962.P10514708066011032153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A258962.P10514708066011032153

/-! ## A258962.P6186260733114326449

`or(char[1], A258966(A055999(n)+10))`
-/

namespace A258962.P6186260733114326449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A258966 (A055999 n + 10).toNat)

end

end A258962.P6186260733114326449

/-! ## A258962.P5145898352186400459

`A258966(A055999(n)+10)%A127229(n+5)`
-/

namespace A258962.P5145898352186400459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258966 (A055999 n + 10).toNat) (A127229 (n + 5))

end

end A258962.P5145898352186400459

/-! ## A258962.P5708645462412752137

`A258966(A055999(n)+10)+n*A000007(n)`
-/

namespace A258962.P5708645462412752137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A055999 n + 10).toNat + (n : ℤ) * A000007 n

end

end A258962.P5708645462412752137

/-! ## A258962.P4157300546521001336

`A258966(A055999(n)+10)+A151878(A039960(n))`
-/

namespace A258962.P4157300546521001336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A055999 n + 10).toNat + A151878 (A039960 n).toNat

end

end A258962.P4157300546521001336

/-! ## A258962.P9462925681212286391

`A001222(A004139(n+1))*A258966(A055999(n)+10)`
-/

namespace A258962.P9462925681212286391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004139 (n + 1)).toNat * A258966 (A055999 n + 10).toNat

end

end A258962.P9462925681212286391

/-! ## A258962.P5201871648194088673

`A001222(A139317(n+1))*A258966(A055999(n)+10)`
-/

namespace A258962.P5201871648194088673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A139317 (n + 1)).toNat * A258966 (A055999 n + 10).toNat

end

end A258962.P5201871648194088673

/-! ## A258962.P15994596287476291554

`A258966(A056000(n)+7)%A258964(n+1)`
-/

namespace A258962.P15994596287476291554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258966 (A056000 n + 7).toNat) (A258964 (n + 1))

end

end A258962.P15994596287476291554

/-!
# A258963: Number of (n+2) X (5+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 0 or 3 and no column sum 0 or 3.

The programs for A258963, there is no canonical definition to state claims against.
-/

/-! ## A258963.P15101717081396381059

`A258966(A374005(n+1))`
-/

namespace A258963.P15101717081396381059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A374005 (n + 1)).toNat

end

end A258963.P15101717081396381059

/-! ## A258963.P9926678725761943011

`A258966(A077169(n+5))`
-/

namespace A258963.P9926678725761943011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A077169 (n + 5)).toNat

end

end A258963.P9926678725761943011

/-! ## A258963.P9727141317048955539

`A258966(A167614(n+3)+2)`
-/

namespace A258963.P9727141317048955539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A167614 (n + 3) + 2).toNat

end

end A258963.P9727141317048955539

/-! ## A258963.P17107704809161894223

`A258966(∑[n+5]+6)`
-/

namespace A258963.P17107704809161894223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A258963.P17107704809161894223

/-! ## A258963.P2747728863538036199

`and(1, n)!*A258966(A000217(n+5)-4)`
-/

namespace A258963.P2747728863538036199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A258966 (A000217 (n + 5) - 4).toNat

end

end A258963.P2747728863538036199

/-! ## A258963.P71649077258420044

`A258966(A000217(n+5)-4)+char[A103537(n)]`
-/

namespace A258963.P71649077258420044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103537 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000217 (n + 5) - 4).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258963.P71649077258420044

/-! ## A258963.P1842480499081161097

`A258966(A000217(n+5)-4)%A258964(n+1)`
-/

namespace A258963.P1842480499081161097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258966 (A000217 (n + 5) - 4).toNat) (A258964 (n + 1))

end

end A258963.P1842480499081161097

/-! ## A258963.P13396903028287838278

`A258966(A000217(n+5)-4)+char[A044718(n+1)]`
-/

namespace A258963.P13396903028287838278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044718 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000217 (n + 5) - 4).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A258963.P13396903028287838278

/-! ## A258963.P9166173930692741956

`A014963(4*n+10)*A258966(A000217(n+5)-4)`
-/

namespace A258963.P9166173930692741956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A258966 (A000217 (n + 5) - 4).toNat

end

end A258963.P9166173930692741956

/-! ## A258963.P11431648588990030309

`A001221(A002385(n+1))*A258966(A000217(n+5)-4)`
-/

namespace A258963.P11431648588990030309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002385 (n + 1)).toNat * A258966 (A000217 (n + 5) - 4).toNat

end

end A258963.P11431648588990030309

/-! ## A258963.P8087039630936261257

`A001221(A002373(n+3))*A258966(A000217(n+5)-4)`
-/

namespace A258963.P8087039630936261257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002373 (n + 3)).toNat * A258966 (A000217 (n + 5) - 4).toNat

end

end A258963.P8087039630936261257

/-!
# A258964: Number of (n+2) X (6+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 0 or 3 and no column sum 0 or 3.

The programs for A258964, there is no canonical definition to state claims against.
-/

/-! ## A258964.P10881157654311348804

`A258966(A374007(n+1))`
-/

namespace A258964.P10881157654311348804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A374007 (n + 1)).toNat

end

end A258964.P10881157654311348804

/-! ## A258964.P2308467328395259401

`A258966(A000096(n+4)+7)`
-/

namespace A258964.P2308467328395259401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000096 (n + 4) + 7).toNat

end

end A258964.P2308467328395259401

/-! ## A258964.P4574401286918575105

`A258966((n+4)²-∑[n+1]+1)`
-/

namespace A258964.P4574401286918575105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A258964.P4574401286918575105

/-! ## A258964.P379436182804084276

`abs(A258966(A052905(n+3))-n)+n`
-/

namespace A258964.P379436182804084276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258966 (A052905 (n + 3)).toNat - (n : ℤ)| + (n : ℤ)

end

end A258964.P379436182804084276

/-! ## A258964.P17748613349898127353

`A014963(12*n+10)*A258966(A052905(n+3))`
-/

namespace A258964.P17748613349898127353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 10) * A258966 (A052905 (n + 3)).toNat

end

end A258964.P17748613349898127353

/-! ## A258964.P7404296192205055034

`A010052(A000290(n))*A258966(A000217(n+6)-5)`
-/

namespace A258964.P7404296192205055034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat * A258966 (A000217 (n + 6) - 5).toNat

end

end A258964.P7404296192205055034

/-! ## A258964.P4891690372589446291

`A258966(A052905(n+3))*A259094(A000005(n+1)+1)`
-/

namespace A258964.P4891690372589446291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A052905 (n + 3)).toNat * A259094 (A000005 (n + 1) + 1).toNat

end

end A258964.P4891690372589446291

/-! ## A258964.P94137627652501915

`A258966(A052905(n+3))%A258954(n+1)`
-/

namespace A258964.P94137627652501915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258966 (A052905 (n + 3)).toNat) (A258954 (n + 1))

end

end A258964.P94137627652501915

/-! ## A258964.P5653025521548340227

`A258966(A055999(n+3)+1)%A258954(n+1)`
-/

namespace A258964.P5653025521548340227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258966 (A055999 (n + 3) + 1).toNat) (A258954 (n + 1))

end

end A258964.P5653025521548340227

/-!
# A258965: Number of (n+2) X (7+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 0 and no antidiagonal sum 3 and no row sum 0 or 3 and no column sum 0 or 3.

The programs for A258965, there is no canonical definition to state claims against.
-/

/-! ## A258965.P8242754578728290037

`A258966(A374008(n+1))`
-/

namespace A258965.P8242754578728290037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A374008 (n + 1)).toNat

end

end A258965.P8242754578728290037

/-! ## A258965.P149665398008545521

`A258966(A167499(n+5)+2)`
-/

namespace A258965.P149665398008545521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A167499 (n + 5) + 2).toNat

end

end A258965.P149665398008545521

/-! ## A258965.P13236286694720672552

`A258966(A000096(n+5)+8)`
-/

namespace A258965.P13236286694720672552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000096 (n + 5) + 8).toNat

end

end A258965.P13236286694720672552

/-! ## A258965.P9976852815029593579

`A258966(A000217(n+6)+7)`
-/

namespace A258965.P9976852815029593579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000217 (n + 6) + 7).toNat

end

end A258965.P9976852815029593579

/-! ## A258965.P3375798244854163952

`A258966(A027379(n+4)+10)`
-/

namespace A258965.P3375798244854163952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A027379 (n + 4) + 10).toNat

end

end A258965.P3375798244854163952

/-! ## A258965.P6688946221192395775

`A258966(A052905(n+3)+12)`
-/

namespace A258965.P6688946221192395775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A052905 (n + 3) + 12).toNat

end

end A258965.P6688946221192395775

/-! ## A258965.P6165824862605470443

`A258966(A055999(n+4))`
-/

namespace A258965.P6165824862605470443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A055999 (n + 4)).toNat

end

end A258965.P6165824862605470443

/-! ## A258965.P13704122732273802036

`A258966(A046691(n+5)-2)`
-/

namespace A258965.P13704122732273802036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A046691 (n + 5) - 2).toNat

end

end A258965.P13704122732273802036

/-! ## A258965.P11820860483556109432

`A258966(A000124(n+7)-7)`
-/

namespace A258965.P11820860483556109432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (A000124 (n + 7) - 7).toNat

end

end A258965.P11820860483556109432

/-! ## A258965.P728017608371977235

`A258966(eq[64, A130321(n)]+1)`
-/

namespace A258965.P728017608371977235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A258965.P728017608371977235

/-!
# A258967: a(1)=1, a(2)=2, a(3)=3, a(n) = ceiling(sqrt(a(n-1)*a(n-2)*a(n-3))), n>3.

The programs for A258967, the canonical program `A258967.P18145457645351620610` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258967 has offset 1).

The definition of A258967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(a(n-1)*a(n-2)*a(n-3)))` (program `A258967.P18145457645351620610`, by `A258967.P18145457645351620610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A258967.P18145457645351620610

`ceil(sqrt(a(n-1)*a(n-2)*a(n-3)))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A258967

/-- `ceil(sqrt(a(n-1)*a(n-2)*a(n-3)))` -/
def P18145457645351620610.Spec : Prop :=
  ∀ n, P18145457645351620610.a n = A258967 (n + 1)

theorem P18145457645351620610.correct : P18145457645351620610.Spec := by
  intro n
  simp only [A258967, Nat.add_sub_cancel]

end A258967

/-! ## A258967.P17551726732945199361

`A118168(∑[A000628(n)]+1)`
-/

namespace A258967.P17551726732945199361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A258967.P17551726732945199361

namespace A258967

/-- `A118168(∑[A000628(n)]+1)` -/
def P17551726732945199361.Spec : Prop :=
  ∀ n, P17551726732945199361.a n = A258967 (n + 1)

end A258967

/-! ## A258967.P1726557983206005244

`A030190(n)+A018293(A038348(n))`
-/

namespace A258967.P1726557983206005244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n + A018293 (A038348 n).toNat

end

end A258967.P1726557983206005244

namespace A258967

/-- `A030190(n)+A018293(A038348(n))` -/
def P1726557983206005244.Spec : Prop :=
  ∀ n, P1726557983206005244.a n = A258967 (n + 1)

end A258967

/-! ## A258967.P10268695068838679801

`A124760(A054718(n))+A063823(n)`
-/

namespace A258967.P10268695068838679801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A054718 n).toNat + A063823 n

end

end A258967.P10268695068838679801

namespace A258967

/-- `A124760(A054718(n))+A063823(n)` -/
def P10268695068838679801.Spec : Prop :=
  ∀ n, P10268695068838679801.a n = A258967 (n + 1)

end A258967

/-!
# A258969: E.g.f.: A'(x) = 1 + A(x)^3, with A(0)=1.

The programs for A258969, there is no canonical definition to state claims against.
-/

/-! ## A258969.P5243530796281214288

`A227250(n+1)`
-/

namespace A258969.P5243530796281214288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227250 (n + 1)

end

end A258969.P5243530796281214288

/-!
# A258970: E.g.f.: A'(x) = 1 + A(x)^4, with A(0)=1.

The programs for A258970, there is no canonical definition to state claims against.
-/

/-! ## A258970.P12198251062232455818

`A004277(2/A004277(n)*A179540(n)*A011782(n))`
-/

namespace A258970.P12198251062232455818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (2 / (A004277 n : ℚ) * (A179540 n : ℚ) * (A011782 n : ℚ))).toNat

end

end A258970.P12198251062232455818

/-!
# A258971: E.g.f.: A'(x) = 1 + A(x)^5, with A(0)=1.

The programs for A258971, there is no canonical definition to state claims against.
-/

/-! ## A258971.P1452341257957058502

`A376807(A078406(n))`
-/

namespace A258971.P1452341257957058502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376807 (A078406 n).toNat

end

end A258971.P1452341257957058502

/-!
# A258972: Number of other odd numbers between the twin primes, with a(1) = 1.

The programs for A258972, the canonical program `A258972.P6619001247388290016` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258972 has offset 1).

The definition of A258972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258972.P6619001247388290016

`abs((A001359(n+2)-A001359(n+1))/2-2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A258972

/-- `abs((A001359(n+2)-A001359(n+1))/2-2)` -/
def P6619001247388290016.Spec : Prop :=
  ∀ n, P6619001247388290016.a n = (A258972 (n + 1) : ℚ)

end A258972

/-! ## A258972.P12472953380590500457

`abs((A006512(n+2)-A006512(n+1))/2-2)`
-/

namespace A258972.P12472953380590500457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A006512 (n + 2) - A006512 (n + 1) : ℚ) / 2 - 2|

end

end A258972.P12472953380590500457

namespace A258972

/-- `abs((A006512(n+2)-A006512(n+1))/2-2)` -/
def P12472953380590500457.Spec : Prop :=
  ∀ n, P12472953380590500457.a n = (A258972 (n + 1) : ℚ)

end A258972

/-! ## A258972.P16507283488058076655

`A256262(Δ[n²])`
-/

namespace A258972.P16507283488058076655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A258972.P16507283488058076655

namespace A258972

/-- `A256262(Δ[n²])` -/
def P16507283488058076655.Spec : Prop :=
  ∀ n, P16507283488058076655.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P10506312734321154815

`abs(2-Δ[A040040(n+1)])`
-/

namespace A258972.P10506312734321154815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A258972.P10506312734321154815

namespace A258972

/-- `abs(2-Δ[A040040(n+1)])` -/
def P10506312734321154815.Spec : Prop :=
  ∀ n, P10506312734321154815.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P14973651530138490212

`abs(1-A167132(n+1)/2)`
-/

namespace A258972.P14973651530138490212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (A167132 (n + 1) : ℚ) / 2|

end

end A258972.P14973651530138490212

namespace A258972

/-- `abs(1-A167132(n+1)/2)` -/
def P14973651530138490212.Spec : Prop :=
  ∀ n, P14973651530138490212.a n = (A258972 (n + 1) : ℚ)

end A258972

/-! ## A258972.P12047205800268079310

`abs(2-A053319(n+1)/2)`
-/

namespace A258972.P12047205800268079310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |2 - (A053319 (n + 1) : ℚ) / 2|

end

end A258972.P12047205800268079310

namespace A258972

/-- `abs(2-A053319(n+1)/2)` -/
def P12047205800268079310.Spec : Prop :=
  ∀ n, P12047205800268079310.a n = (A258972 (n + 1) : ℚ)

end A258972

/-! ## A258972.P11536343260704222597

`abs(2-Δ[A001359(n+1)/2])`
-/

namespace A258972.P11536343260704222597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A258972.P11536343260704222597

namespace A258972

/-- `abs(2-Δ[A001359(n+1)/2])` -/
def P11536343260704222597.Spec : Prop :=
  ∀ n, P11536343260704222597.a n = (A258972 (n + 1) : ℚ)

end A258972

/-! ## A258972.P9739968042975474727

`A028242(A204099(n+1))`
-/

namespace A258972.P9739968042975474727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A204099 (n + 1)).toNat

end

end A258972.P9739968042975474727

namespace A258972

/-- `A028242(A204099(n+1))` -/
def P9739968042975474727.Spec : Prop :=
  ∀ n, P9739968042975474727.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P5555647226104590245

`A267182(A167132(n+1))`
-/

namespace A258972.P5555647226104590245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A167132 (n + 1)).toNat

end

end A258972.P5555647226104590245

namespace A258972

/-- `A267182(A167132(n+1))` -/
def P5555647226104590245.Spec : Prop :=
  ∀ n, P5555647226104590245.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P17615826490238364345

`A266285(A204100(n+1))`
-/

namespace A258972.P17615826490238364345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (A204100 (n + 1)).toNat

end

end A258972.P17615826490238364345

namespace A258972

/-- `A266285(A204100(n+1))` -/
def P17615826490238364345.Spec : Prop :=
  ∀ n, P17615826490238364345.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P18397269276112508963

`filter[A256262(2*n+1), A011655(#)]`
-/

namespace A258972.P18397269276112508963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A258972.P18397269276112508963

namespace A258972

/-- `filter[A256262(2*n+1), A011655(#)]` -/
def P18397269276112508963.Spec : Prop :=
  ∀ n, P18397269276112508963.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P3317952788773358120

`filter[A256262(2*n+1), A014578(#)]`
-/

namespace A258972.P3317952788773358120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A258972.P3317952788773358120

namespace A258972

/-- `filter[A256262(2*n+1), A014578(#)]` -/
def P3317952788773358120.Spec : Prop :=
  ∀ n, P3317952788773358120.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P2876425384542421171

`filter[A256262(2*n+1), A023532(#)]`
-/

namespace A258972.P2876425384542421171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A258972.P2876425384542421171

namespace A258972

/-- `filter[A256262(2*n+1), A023532(#)]` -/
def P2876425384542421171.Spec : Prop :=
  ∀ n, P2876425384542421171.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P16788483120727412612

`filter[A256262(2*n+1), A097325(#)]`
-/

namespace A258972.P16788483120727412612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A258972.P16788483120727412612

namespace A258972

/-- `filter[A256262(2*n+1), A097325(#)]` -/
def P16788483120727412612.Spec : Prop :=
  ∀ n, P16788483120727412612.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P16604171998043002753

`filter[A256262(2*n+1), A131719(#)]`
-/

namespace A258972.P16604171998043002753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A258972.P16604171998043002753

namespace A258972

/-- `filter[A256262(2*n+1), A131719(#)]` -/
def P16604171998043002753.Spec : Prop :=
  ∀ n, P16604171998043002753.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P13090462239602675976

`filter[A256262(2*n+1), A137893(#)]`
-/

namespace A258972.P13090462239602675976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A258972.P13090462239602675976

namespace A258972

/-- `filter[A256262(2*n+1), A137893(#)]` -/
def P13090462239602675976.Spec : Prop :=
  ∀ n, P13090462239602675976.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P11390889942299281099

`filter[A256262(2*n+1), A141212(#)]`
-/

namespace A258972.P11390889942299281099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141212 (f1 j).toNat = 1) n)

end

end A258972.P11390889942299281099

namespace A258972

/-- `filter[A256262(2*n+1), A141212(#)]` -/
def P11390889942299281099.Spec : Prop :=
  ∀ n, P11390889942299281099.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P2566765357389268664

`filter[A256262(2*n+1), A156595(#)]`
-/

namespace A258972.P2566765357389268664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A258972.P2566765357389268664

namespace A258972

/-- `filter[A256262(2*n+1), A156595(#)]` -/
def P2566765357389268664.Spec : Prop :=
  ∀ n, P2566765357389268664.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P9802079292608001554

`filter[A256262(2*n+1), A168182(#)]`
-/

namespace A258972.P9802079292608001554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A258972.P9802079292608001554

namespace A258972

/-- `filter[A256262(2*n+1), A168182(#)]` -/
def P9802079292608001554.Spec : Prop :=
  ∀ n, P9802079292608001554.a n = A258972 (n + 1)

end A258972

/-! ## A258972.P11964995246422460804

`filter[A256262(2*n+1), A168185(#)]`
-/

namespace A258972.P11964995246422460804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A258972.P11964995246422460804

namespace A258972

/-- `filter[A256262(2*n+1), A168185(#)]` -/
def P11964995246422460804.Spec : Prop :=
  ∀ n, P11964995246422460804.a n = A258972 (n + 1)

end A258972

/-!
# A258973: The number of plain lambda terms presented by de Bruijn indices, see Bendkowski et al., where zeros have no weight.

The programs for A258973, there is no canonical definition to state claims against.
-/

/-! ## A258973.P5610459445673628621

`∑[A360102(n)]`
-/

namespace A258973.P5610459445673628621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258973.P5610459445673628621

/-! ## A258973.P17243183791029522929

`∑[∑[A360100(n)]]`
-/

namespace A258973.P17243183791029522929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A258973.P17243183791029522929

/-!
# A258974: a(n) = 1 + sigma(n)^2.

The programs for A258974, the canonical program `A258974.P9822892926536719651` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258974 has offset 1).

The definition of A258974 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258974.P9822892926536719651

`1+A072861(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258974

/-- `1+A072861(n+1)` -/
def P9822892926536719651.Spec : Prop :=
  ∀ n, P9822892926536719651.a n = A258974 (n + 1)

theorem P9822892926536719651.correct : P9822892926536719651.Spec := by
  intro n
  simp only [A258974, Nat.add_sub_cancel]

end A258974

/-! ## A258974.P4466533170833626338

`1+A000203(n+1)²`
-/

namespace A258974.P4466533170833626338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1) ^ 2

end

end A258974.P4466533170833626338

namespace A258974

/-- `1+A000203(n+1)²` -/
def P4466533170833626338.Spec : Prop :=
  ∀ n, P4466533170833626338.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P11956789521712780819

`A002522(A000203(n+1))`
-/

namespace A258974.P11956789521712780819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A000203 (n + 1)).toNat

end

end A258974.P11956789521712780819

namespace A258974

/-- `A002522(A000203(n+1))` -/
def P11956789521712780819.Spec : Prop :=
  ∀ n, P11956789521712780819.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P11376828710120463139

`∑{d}[n+1, #]²+1`
-/

namespace A258974.P11376828710120463139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 2 + 1

end

end A258974.P11376828710120463139

namespace A258974

/-- `∑{d}[n+1, #]²+1` -/
def P11376828710120463139.Spec : Prop :=
  ∀ n, (P11376828710120463139.a n : ℤ) = A258974 (n + 1)

end A258974

/-! ## A258974.P16329567245462332598

`∑{d}[n+1, #]^2+1`
-/

namespace A258974.P16329567245462332598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 2 + 1

end

end A258974.P16329567245462332598

namespace A258974

/-- `∑{d}[n+1, #]^2+1` -/
def P16329567245462332598.Spec : Prop :=
  ∀ n, (P16329567245462332598.a n : ℤ) = A258974 (n + 1)

end A258974

/-! ## A258974.P17365569414916829633

`∑{d}[n+1, #]*∑{d}[n+1, #]+1`
-/

namespace A258974.P17365569414916829633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (∑ d ∈ Nat.divisors (f2 n), d) + 1

end

end A258974.P17365569414916829633

namespace A258974

/-- `∑{d}[n+1, #]*∑{d}[n+1, #]+1` -/
def P17365569414916829633.Spec : Prop :=
  ∀ n, (P17365569414916829633.a n : ℤ) = A258974 (n + 1)

end A258974

/-! ## A258974.P629675046692405719

`ceil(sqrt(A259308(n+1)))`
-/

namespace A258974.P629675046692405719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A259308 (n + 1) : ℝ)⌉

end

end A258974.P629675046692405719

namespace A258974

/-- `ceil(sqrt(A259308(n+1)))` -/
def P629675046692405719.Spec : Prop :=
  ∀ n, P629675046692405719.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P8185630611769461193

`Δ[A160664(n)]²+1`
-/

namespace A258974.P8185630611769461193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A258974.P8185630611769461193

namespace A258974

/-- `Δ[A160664(n)]²+1` -/
def P8185630611769461193.Spec : Prop :=
  ∀ n, P8185630611769461193.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P13122126879541599026

`Δ[A330725(n)]²+1`
-/

namespace A258974.P13122126879541599026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A258974.P13122126879541599026

namespace A258974

/-- `Δ[A330725(n)]²+1` -/
def P13122126879541599026.Spec : Prop :=
  ∀ n, P13122126879541599026.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P1872227365183681022

`A143348(n+1)²+1`
-/

namespace A258974.P1872227365183681022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) ^ 2 + 1

end

end A258974.P1872227365183681022

namespace A258974

/-- `A143348(n+1)²+1` -/
def P1872227365183681022.Spec : Prop :=
  ∀ n, P1872227365183681022.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P7850049557724673837

`sqrt(A361179(n+1))+1`
-/

namespace A258974.P7850049557724673837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A361179 (n + 1) : ℝ) + 1

end

end A258974.P7850049557724673837

namespace A258974

/-- `sqrt(A361179(n+1))+1` -/
def P7850049557724673837.Spec : Prop :=
  ∀ n, P7850049557724673837.a n = (A258974 (n + 1) : ℝ)

end A258974

/-! ## A258974.P11866466246495409049

`∑[A340793(n+1)]²+1`
-/

namespace A258974.P11866466246495409049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1

end

end A258974.P11866466246495409049

namespace A258974

/-- `∑[A340793(n+1)]²+1` -/
def P11866466246495409049.Spec : Prop :=
  ∀ n, P11866466246495409049.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P8427002851678391554

`(1-A088580(n+1))²+1`
-/

namespace A258974.P8427002851678391554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A088580 (n + 1)) ^ 2 + 1

end

end A258974.P8427002851678391554

namespace A258974

/-- `(1-A088580(n+1))²+1` -/
def P8427002851678391554.Spec : Prop :=
  ∀ n, P8427002851678391554.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P7969514321349553810

`A245092(2*n+1)²+1`
-/

namespace A258974.P7969514321349553810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) ^ 2 + 1

end

end A258974.P7969514321349553810

namespace A258974

/-- `A245092(2*n+1)²+1` -/
def P7969514321349553810.Spec : Prop :=
  ∀ n, P7969514321349553810.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P13443918696862118949

`(A074400(n+1)/2)²+1`
-/

namespace A258974.P13443918696862118949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A074400 (n + 1) : ℚ) / 2) ^ 2 + 1

end

end A258974.P13443918696862118949

namespace A258974

/-- `(A074400(n+1)/2)²+1` -/
def P13443918696862118949.Spec : Prop :=
  ∀ n, P13443918696862118949.a n = (A258974 (n + 1) : ℚ)

end A258974

/-! ## A258974.P12275898037198195165

`1-Δ[a(n-1)-A000203(n)²]` with `a(0)=0`
-/

namespace A258974.P12275898037198195165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A000203 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A258974.P12275898037198195165

namespace A258974

/-- `1-Δ[a(n-1)-A000203(n)²]` -/
def P12275898037198195165.Spec : Prop :=
  ∀ n, P12275898037198195165.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P4804382445274630423

`A259184(n+1)+A000203(n+1)`
-/

namespace A258974.P4804382445274630423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259184 (n + 1) + A000203 (n + 1)

end

end A258974.P4804382445274630423

namespace A258974

/-- `A259184(n+1)+A000203(n+1)` -/
def P4804382445274630423.Spec : Prop :=
  ∀ n, P4804382445274630423.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P4319729885188066330

`A258774(n+1)-A000203(n+1)`
-/

namespace A258974.P4319729885188066330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258774 (n + 1) - A000203 (n + 1)

end

end A258974.P4319729885188066330

namespace A258974

/-- `A258774(n+1)-A000203(n+1)` -/
def P4319729885188066330.Spec : Prop :=
  ∀ n, P4319729885188066330.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P10412522951459155857

`(A000005(n+1)-A007503(n+1))²+1`
-/

namespace A258974.P10412522951459155857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - A007503 (n + 1)) ^ 2 + 1

end

end A258974.P10412522951459155857

namespace A258974

/-- `(A000005(n+1)-A007503(n+1))²+1` -/
def P10412522951459155857.Spec : Prop :=
  ∀ n, P10412522951459155857.a n = A258974 (n + 1)

end A258974

/-! ## A258974.P16629238180038604071

`A000203(n+1)^A020639(2*(n+1))+1`
-/

namespace A258974.P16629238180038604071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) + 1

end

end A258974.P16629238180038604071

namespace A258974

/-- `A000203(n+1)^A020639(2*(n+1))+1` -/
def P16629238180038604071.Spec : Prop :=
  ∀ n, P16629238180038604071.a n = (A258974 (n + 1) : ℚ)

end A258974

/-!
# A258975: a(n) = n-th pi-based antiderivative of 1.

The programs for A258975, there is no canonical definition to state claims against.
-/

/-! ## A258975.P16858632170366800258

`A259016(∑[n+1]+1)`
-/

namespace A258975.P16858632170366800258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A258975.P16858632170366800258

/-! ## A258975.P797479956092019950

`A259016(A000124(n+1))+char[20]`
-/

namespace A258975.P797479956092019950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (A000124 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258975.P797479956092019950

/-! ## A258975.P17867891140024096135

`A259016(A000124(n+1))%A035794(n+1)`
-/

namespace A258975.P17867891140024096135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259016 (A000124 (n + 1)).toNat) (A035794 (n + 1))

end

end A258975.P17867891140024096135

/-! ## A258975.P2460903650477521857

`A007318(C(2, n))*A259016(A000124(n+1))`
-/

namespace A258975.P2460903650477521857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A259016 (A000124 (n + 1)).toNat

end

end A258975.P2460903650477521857

/-! ## A258975.P16342660278914092931

`A259016(A000124(n+1))/A007318(C(n, 2))`
-/

namespace A258975.P16342660278914092931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259016 (A000124 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A258975.P16342660278914092931

/-!
# A258976: Numbers n such that 1 + sigma(n)^2 is prime.

The programs for A258976, the canonical program `A258976.P4357151660865668430` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258976 has offset 1).

The definition of A258976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258976.P18267957546929555788

`eq[2, A278162(∑{d}[n, #])]`
-/

namespace A258976.P18267957546929555788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A258976.P18267957546929555788

namespace A258976

/-- `eq[2, A278162(∑{d}[n, #])]` -/
def P18267957546929555788.Spec : Prop :=
  ∀ n, (P18267957546929555788.a n : ℤ) = A258976 (n + 1)

end A258976

/-! ## A258976.P4357151660865668430

`eq[1, A053000(A000203(n+1))]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A258976

/-- `eq[1, A053000(A000203(n+1))]+1` -/
def P4357151660865668430.Spec : Prop :=
  ∀ n, (P4357151660865668430.a n : ℤ) = A258976 (n + 1)

theorem P4357151660865668430.correct : P4357151660865668430.Spec := by
  intro n
  simp only [A258976, Nat.add_sub_cancel]

end A258976

/-! ## A258976.P15003322410103841244

`eq[1, A053000(abs(A143348(n+1)))]+1`
-/

namespace A258976.P15003322410103841244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 |A143348 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258976.P15003322410103841244

namespace A258976

/-- `eq[1, A053000(abs(A143348(n+1)))]+1` -/
def P15003322410103841244.Spec : Prop :=
  ∀ n, (P15003322410103841244.a n : ℤ) = A258976 (n + 1)

end A258976

/-! ## A258976.P13164528866085560559

`record[(n+2)/A053000(A000203(n+2))]`
-/

namespace A258976.P13164528866085560559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A053000 (A000203 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A258976.P13164528866085560559

namespace A258976

/-- `record[(n+2)/A053000(A000203(n+2))]` -/
def P13164528866085560559.Spec : Prop :=
  ∀ n, P13164528866085560559.a n = (A258976 (n + 1) : ℚ)

end A258976

/-! ## A258976.P18293929594236096149

`eq[2, A278162(A039653(n+1)+1)]+1`
-/

namespace A258976.P18293929594236096149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (A039653 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A258976.P18293929594236096149

namespace A258976

/-- `eq[2, A278162(A039653(n+1)+1)]+1` -/
def P18293929594236096149.Spec : Prop :=
  ∀ n, (P18293929594236096149.a n : ℤ) = A258976 (n + 1)

end A258976

/-! ## A258976.P16961063553465257497

`lt[A278162(A039653(abs(1-n)+1)+1), 6]`
-/

namespace A258976.P16961063553465257497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (A039653 (|1 - (n : ℤ)| + 1).toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A258976.P16961063553465257497

namespace A258976

/-- `lt[A278162(A039653(abs(1-n)+1)+1), 6]` -/
def P16961063553465257497.Spec : Prop :=
  ∀ n, (P16961063553465257497.a n : ℤ) = A258976 (n + 1)

end A258976

/-!
# A258977: Primes in A258974.

The programs for A258977, the canonical program `A258977.P6713999893642362193` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258977 has offset 1).

The definition of A258977 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258974, A258976, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A258977.P6713999893642362193

`A258974(A258976(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A258977

/-- `A258974(A258976(n+1))` -/
def P6713999893642362193.Spec : Prop :=
  ∀ n, P6713999893642362193.a n = A258977 (n + 1)

theorem P6713999893642362193.correct : P6713999893642362193.Spec := by
  intro n
  simp only [A258977, Nat.add_sub_cancel]

end A258977

/-! ## A258977.P14550722106644714799

`∑{d}[A258976(n+1), #]²-A133574(A001316(n))`
-/

namespace A258977.P14550722106644714799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2 : ℕ) : ℤ) - A133574 (A001316 n).toNat

end

end A258977.P14550722106644714799

namespace A258977

/-- `∑{d}[A258976(n+1), #]²-A133574(A001316(n))` -/
def P14550722106644714799.Spec : Prop :=
  ∀ n, P14550722106644714799.a n = A258977 (n + 1)

end A258977

/-! ## A258977.P4692800079269328229

`A007318(C(3, n))+A000203(A258976(n+1))^2`
-/

namespace A258977.P4692800079269328229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) + A000203 (A258976 (n + 1)).toNat ^ 2

end

end A258977.P4692800079269328229

namespace A258977

/-- `A007318(C(3, n))+A000203(A258976(n+1))^2` -/
def P4692800079269328229.Spec : Prop :=
  ∀ n, P4692800079269328229.a n = A258977 (n + 1)

end A258977

/-! ## A258977.P9128912587132374721

`A002522(∑{d}[A258976(n+1), #])`
-/

namespace A258977.P9128912587132374721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A258977.P9128912587132374721

namespace A258977

/-- `A002522(∑{d}[A258976(n+1), #])` -/
def P9128912587132374721.Spec : Prop :=
  ∀ n, P9128912587132374721.a n = A258977 (n + 1)

end A258977

/-! ## A258977.P13492759301366672247

`A089120(∑{d}[A258976(n+1), #])`
-/

namespace A258977.P13492759301366672247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A258977.P13492759301366672247

namespace A258977

/-- `A089120(∑{d}[A258976(n+1), #])` -/
def P13492759301366672247.Spec : Prop :=
  ∀ n, P13492759301366672247.a n = A258977 (n + 1)

end A258977

/-! ## A258977.P4493731994021402853

`A259036(∑{d}[A258976(n+1), #])`
-/

namespace A258977.P4493731994021402853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A258977.P4493731994021402853

namespace A258977

/-- `A259036(∑{d}[A258976(n+1), #])` -/
def P4493731994021402853.Spec : Prop :=
  ∀ n, P4493731994021402853.a n = A258977 (n + 1)

end A258977

/-! ## A258977.P10599847023532724790

`p?[A033638(A074400(n+1))%A067382(n+1)]`
-/

namespace A258977.P10599847023532724790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033638 (A074400 (n + 1)).toNat) (A067382 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258977.P10599847023532724790

namespace A258977

/-- `p?[A033638(A074400(n+1))%A067382(n+1)]` -/
def P10599847023532724790.Spec : Prop :=
  ∀ n, P10599847023532724790.a n = A258977 (n + 1)

end A258977

/-! ## A258977.P18015477504143817149

`p?[∑{d}[n, #]²+1]`
-/

namespace A258977.P18015477504143817149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A258977.P18015477504143817149

namespace A258977

/-- `p?[∑{d}[n, #]²+1]` -/
def P18015477504143817149.Spec : Prop :=
  ∀ n, (P18015477504143817149.a n : ℤ) = A258977 (n + 1)

end A258977

/-! ## A258977.P9441469940110104149

`p?[A258974(n+1)]`
-/

namespace A258977.P9441469940110104149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258977.P9441469940110104149

namespace A258977

/-- `p?[A258974(n+1)]` -/
def P9441469940110104149.Spec : Prop :=
  ∀ n, P9441469940110104149.a n = A258977 (n + 1)

end A258977

/-!
# A258978: a(n) = 1 + sigma(n) + sigma(n)^2 + sigma(n)^3 + sigma(n)^4.

The programs for A258978, the canonical program `A258978.P2625331780401583892` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258978 has offset 1).

The definition of A258978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A258978.P2625331780401583892

`A053699(A000203(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258978

/-- `A053699(A000203(n+1))` -/
def P2625331780401583892.Spec : Prop :=
  ∀ n, P2625331780401583892.a n = A258978 (n + 1)

theorem P2625331780401583892.correct : P2625331780401583892.Spec := by
  intro n
  simp only [A258978, Nat.add_sub_cancel]

end A258978

/-! ## A258978.P17788782149524379611

`A053699(∑{d}[n+1, #])`
-/

namespace A258978.P17788782149524379611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A258978.P17788782149524379611

namespace A258978

/-- `A053699(∑{d}[n+1, #])` -/
def P17788782149524379611.Spec : Prop :=
  ∀ n, P17788782149524379611.a n = A258978 (n + 1)

end A258978

/-! ## A258978.P9800573532505246719

`A027445(∑{d}[n+1, #])+1`
-/

namespace A258978.P9800573532505246719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (∑ d ∈ Nat.divisors (f1 n), d) + 1

end

end A258978.P9800573532505246719

namespace A258978

/-- `A027445(∑{d}[n+1, #])+1` -/
def P9800573532505246719.Spec : Prop :=
  ∀ n, P9800573532505246719.a n = A258978 (n + 1)

end A258978

/-! ## A258978.P973289811048420726

`2*A071237(∑{d}[n+1, #])+1`
-/

namespace A258978.P973289811048420726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071237 (∑ d ∈ Nat.divisors (f1 n), d) + 1

end

end A258978.P973289811048420726

namespace A258978

/-- `2*A071237(∑{d}[n+1, #])+1` -/
def P973289811048420726.Spec : Prop :=
  ∀ n, P973289811048420726.a n = A258978 (n + 1)

end A258978

/-! ## A258978.P16095104996864624060

`A152031(∑{d}[n+1, #])/∑{d}[n+1, #]`
-/

namespace A258978.P16095104996864624060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152031 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

end

end A258978.P16095104996864624060

namespace A258978

/-- `A152031(∑{d}[n+1, #])/∑{d}[n+1, #]` -/
def P16095104996864624060.Spec : Prop :=
  ∀ n, P16095104996864624060.a n = (A258978 (n + 1) : ℚ)

end A258978

/-! ## A258978.P331527618014048419

`A053699(A074400(n+1)/2)`
-/

namespace A258978.P331527618014048419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A258978.P331527618014048419

namespace A258978

/-- `A053699(A074400(n+1)/2)` -/
def P331527618014048419.Spec : Prop :=
  ∀ n, P331527618014048419.a n = A258978 (n + 1)

end A258978

/-! ## A258978.P6291152270865505806

`A053699(A001065(n+1)+1+n)`
-/

namespace A258978.P6291152270865505806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A258978.P6291152270865505806

namespace A258978

/-- `A053699(A001065(n+1)+1+n)` -/
def P6291152270865505806.Spec : Prop :=
  ∀ n, P6291152270865505806.a n = A258978 (n + 1)

end A258978

/-!
# A258980: Primes in A258978.

The programs for A258980, there is no canonical definition to state claims against.
-/

/-! ## A258980.P1028665473017159075

`A258978(A258979(n+1))`
-/

namespace A258980.P1028665473017159075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258978 (A258979 (n + 1)).toNat

end

end A258980.P1028665473017159075

/-! ## A258980.P13132696072061934783

`A053699(∑{d}[A258979(n+1), #])`
-/

namespace A258980.P13132696072061934783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A258980.P13132696072061934783

/-! ## A258980.P818079823624300904

`p?[A258978(∑[A307430(n+1)])]`
-/

namespace A258980.P818079823624300904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307430 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258978 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258980.P818079823624300904

/-! ## A258980.P4060829808362333467

`p?[A258978(A307430(n+1)+n)]`
-/

namespace A258980.P4060829808362333467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258978 (A307430 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258980.P4060829808362333467

/-!
# A258981: Numbers containing only 1's and 0's in their base-2, base-3, and base-4 representations.

The programs for A258981, there is no canonical definition to state claims against.
-/

/-! ## A258981.P9137967118354969941

`∩[A005836(n+1), A000695(n)]`
-/

namespace A258981.P9137967118354969941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258981.P9137967118354969941

/-! ## A258981.P5290828701716253805

`∩[A005836(n+1), A098871(n)-1]`
-/

namespace A258981.P5290828701716253805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258981.P5290828701716253805

/-! ## A258981.P8462693262171942105

`∩[A212591(2*n)-a(n-1), A005836(n+1)]` with `a(0)=0`
-/

namespace A258981.P8462693262171942105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A212591 (2 * n) - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258981.P8462693262171942105

/-!
# A258992: Primes p such that p^2 - 8 is also prime.

The programs for A258992, there is no canonical definition to state claims against.
-/

/-! ## A258992.P1469657924359711350

`p?[A028885(n+1)]`
-/

namespace A258992.P1469657924359711350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258992.P1469657924359711350

/-! ## A258992.P3988079114252811262

`p?[ceil(sqrt(A028886(n+1)))]`
-/

namespace A258992.P3988079114252811262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028886 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A258992.P3988079114252811262

/-! ## A258992.P11935684697262189331

`∩[A028885(n+1), A042988(n)]`
-/

namespace A258992.P11935684697262189331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P11935684697262189331

/-! ## A258992.P2538185426091953742

`∩[A028885(n+1), A042966(n+1)]`
-/

namespace A258992.P2538185426091953742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P2538185426091953742

/-! ## A258992.P5517693814192750695

`∩[A028885(n+1), A042989(n+1)]`
-/

namespace A258992.P5517693814192750695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P5517693814192750695

/-! ## A258992.P14761318262406292039

`∩[A028885(n+1), A216882(n+1)]`
-/

namespace A258992.P14761318262406292039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P14761318262406292039

/-! ## A258992.P9068158225872980667

`∩[A000040(n+1), A028885(n+1)]`
-/

namespace A258992.P9068158225872980667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P9068158225872980667

/-! ## A258992.P2071493299857620397

`∩[A006005(n+1), A028885(n+1)]`
-/

namespace A258992.P2071493299857620397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P2071493299857620397

/-! ## A258992.P8994953657718036830

`∩[A008578(n+1), A028885(n+1)]`
-/

namespace A258992.P8994953657718036830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P8994953657718036830

/-! ## A258992.P16392578906774186691

`∩[A028885(n+1), A045344(n+1)]`
-/

namespace A258992.P16392578906774186691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P16392578906774186691

/-! ## A258992.P12553241170490082627

`∩[A028885(n+1), A046022(n+1)]`
-/

namespace A258992.P12553241170490082627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P12553241170490082627

/-! ## A258992.P6875418350979793367

`∩[A028885(n+1), A051948(n+1)]`
-/

namespace A258992.P6875418350979793367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P6875418350979793367

/-! ## A258992.P11050150030236576834

`∩[A028885(n+1), A065091(n+1)]`
-/

namespace A258992.P11050150030236576834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P11050150030236576834

/-! ## A258992.P99887515367283890

`∩[A028885(n+1), A093515(n+1)]`
-/

namespace A258992.P99887515367283890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P99887515367283890

/-! ## A258992.P15358887074051352033

`∩[A140475(n+1), A028885(n+1)]`
-/

namespace A258992.P15358887074051352033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P15358887074051352033

/-! ## A258992.P13576212504952302550

`∩[A028885(n+1), A182986(n+1)]`
-/

namespace A258992.P13576212504952302550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P13576212504952302550

/-! ## A258992.P7141319256238380539

`∩[A028885(n+1), A053813(n+1)]`
-/

namespace A258992.P7141319256238380539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P7141319256238380539

/-! ## A258992.P16951872509529370039

`∩[A140826(n+1), A028885(n+1)]`
-/

namespace A258992.P16951872509529370039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P16951872509529370039

/-! ## A258992.P9555941695074041604

`∩[A028885(n+1), A201879(n+1)]`
-/

namespace A258992.P9555941695074041604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P9555941695074041604

/-! ## A258992.P12936493536013723174

`∩[A028885(n+1), A053577(n+1)]`
-/

namespace A258992.P12936493536013723174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A258992.P12936493536013723174

/-!
# A258993: Triangle read by rows: T(n,k) = binomial(n+k,n-k), k = 0..n-1.

The programs for A258993, the canonical program `A258993.P5933175710610269850` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258993 has offset 1).

The definition of A258993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258993.P5933175710610269850

`C(A094727(n+1), A004736(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A258993

/-- `C(A094727(n+1), A004736(n+1))` -/
def P5933175710610269850.Spec : Prop :=
  ∀ n, (P5933175710610269850.a n : ℤ) = A258993 (n + 1)

theorem P5933175710610269850.correct : P5933175710610269850.Spec := by
  intro n
  simp only [A258993, Nat.add_sub_cancel]

end A258993

/-! ## A258993.P1843935022170754661

`C(A094727(n+1), A025581(n)+1)`
-/

namespace A258993.P1843935022170754661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (A025581 n + 1).toNat

end

end A258993.P1843935022170754661

namespace A258993

/-- `C(A094727(n+1), A025581(n)+1)` -/
def P1843935022170754661.Spec : Prop :=
  ∀ n, (P1843935022170754661.a n : ℤ) = A258993 (n + 1)

end A258993

/-! ## A258993.P5504200939368247416

`C(A003056(n)+A002260(n+1), A004736(n+1))`
-/

namespace A258993.P5504200939368247416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + A002260 (n + 1)).toNat (A004736 (n + 1)).toNat

end

end A258993.P5504200939368247416

namespace A258993

/-- `C(A003056(n)+A002260(n+1), A004736(n+1))` -/
def P5504200939368247416.Spec : Prop :=
  ∀ n, (P5504200939368247416.a n : ℤ) = A258993 (n + 1)

end A258993

/-! ## A258993.P6692581425750737670

`A210551(A038722(n+1))`
-/

namespace A258993.P6692581425750737670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210551 (A038722 (n + 1)).toNat

end

end A258993.P6692581425750737670

namespace A258993

/-- `A210551(A038722(n+1))` -/
def P6692581425750737670.Spec : Prop :=
  ∀ n, P6692581425750737670.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P10943757247710783574

`A085478(comp[∑[n+1]])`
-/

namespace A258993.P10943757247710783574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A258993.P10943757247710783574

namespace A258993

/-- `A085478(comp[∑[n+1]])` -/
def P10943757247710783574.Spec : Prop :=
  ∀ n, P10943757247710783574.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P12977134879966719919

`abs(A129818(∑[A035214(n)]-1))`
-/

namespace A258993.P12977134879966719919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat|

end

end A258993.P12977134879966719919

namespace A258993

/-- `abs(A129818(∑[A035214(n)]-1))` -/
def P12977134879966719919.Spec : Prop :=
  ∀ n, P12977134879966719919.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P11006664969396020298

`A078812(lt[1, A029653(n)])-A078812(n)`
-/

namespace A258993.P11006664969396020298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A078812 n

end

end A258993.P11006664969396020298

namespace A258993

/-- `A078812(lt[1, A029653(n)])-A078812(n)` -/
def P11006664969396020298.Spec : Prop :=
  ∀ n, P11006664969396020298.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P15699048939828818681

`A078812(lt[1, A078812(n)])-A078812(n)`
-/

namespace A258993.P15699048939828818681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A078812 n

end

end A258993.P15699048939828818681

namespace A258993

/-- `A078812(lt[1, A078812(n)])-A078812(n)` -/
def P15699048939828818681.Spec : Prop :=
  ∀ n, P15699048939828818681.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P12420963437711225968

`A143858((2*n)%(n+1)+1)`
-/

namespace A258993.P12420963437711225968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (2 * n % (n + 1) + 1)

end

end A258993.P12420963437711225968

namespace A258993

/-- `A143858((2*n)%(n+1)+1)` -/
def P12420963437711225968.Spec : Prop :=
  ∀ n, P12420963437711225968.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P8720184436370099472

`A143858(n-(n+2)%(n+1)+1)`
-/

namespace A258993.P8720184436370099472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 ((n : ℤ) - (((n + 2) % (n + 1) : ℕ) : ℤ) + 1).toNat

end

end A258993.P8720184436370099472

namespace A258993

/-- `A143858(n-(n+2)%(n+1)+1)` -/
def P8720184436370099472.Spec : Prop :=
  ∀ n, P8720184436370099472.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P15505499569732281171

`A143858(A028310(n))`
-/

namespace A258993.P15505499569732281171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A028310 n).toNat

end

end A258993.P15505499569732281171

namespace A258993

/-- `A143858(A028310(n))` -/
def P15505499569732281171.Spec : Prop :=
  ∀ n, P15505499569732281171.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P18441651791082715701

`A143858(A000007(n)+n)`
-/

namespace A258993.P18441651791082715701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A000007 n + (n : ℤ)).toNat

end

end A258993.P18441651791082715701

namespace A258993

/-- `A143858(A000007(n)+n)` -/
def P18441651791082715701.Spec : Prop :=
  ∀ n, P18441651791082715701.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P8252475403881989618

`A143858(A066182(n+1))`
-/

namespace A258993.P8252475403881989618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A066182 (n + 1)).toNat

end

end A258993.P8252475403881989618

namespace A258993

/-- `A143858(A066182(n+1))` -/
def P8252475403881989618.Spec : Prop :=
  ∀ n, P8252475403881989618.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P15387711886134765565

`A370233(n)/A085478(n)`
-/

namespace A258993.P15387711886134765565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370233 n : ℚ) / (A085478 n : ℚ)

end

end A258993.P15387711886134765565

namespace A258993

/-- `A370233(n)/A085478(n)` -/
def P15387711886134765565.Spec : Prop :=
  ∀ n, P15387711886134765565.a n = (A258993 (n + 1) : ℚ)

end A258993

/-! ## A258993.P279255688735339047

`A102426(A063657(n+1))`
-/

namespace A258993.P279255688735339047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A063657 (n + 1)).toNat

end

end A258993.P279255688735339047

namespace A258993

/-- `A102426(A063657(n+1))` -/
def P279255688735339047.Spec : Prop :=
  ∀ n, P279255688735339047.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P6461369780964485382

`A098925(A217575(n+1))`
-/

namespace A258993.P6461369780964485382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A217575 (n + 1)).toNat

end

end A258993.P6461369780964485382

namespace A258993

/-- `A098925(A217575(n+1))` -/
def P6461369780964485382.Spec : Prop :=
  ∀ n, P6461369780964485382.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P11650224423799928748

`A098925(A063657(n+1)-1)`
-/

namespace A258993.P11650224423799928748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A063657 (n + 1) - 1).toNat

end

end A258993.P11650224423799928748

namespace A258993

/-- `A098925(A063657(n+1)-1)` -/
def P11650224423799928748.Spec : Prop :=
  ∀ n, P11650224423799928748.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P13004306265678370577

`A030111(A185869(n+1)-1)`
-/

namespace A258993.P13004306265678370577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A185869 (n + 1) - 1).toNat

end

end A258993.P13004306265678370577

namespace A258993

/-- `A030111(A185869(n+1)-1)` -/
def P13004306265678370577.Spec : Prop :=
  ∀ n, P13004306265678370577.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P4342031760765103974

`A030111(A185870(n+1)-2)`
-/

namespace A258993.P4342031760765103974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A185870 (n + 1) - 2).toNat

end

end A258993.P4342031760765103974

namespace A258993

/-- `A030111(A185870(n+1)-2)` -/
def P4342031760765103974.Spec : Prop :=
  ∀ n, P4342031760765103974.a n = A258993 (n + 1)

end A258993

/-! ## A258993.P16553296769897935608

`A030111(A185871(n+1)-2)`
-/

namespace A258993.P16553296769897935608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (A185871 (n + 1) - 2).toNat

end

end A258993.P16553296769897935608

namespace A258993

/-- `A030111(A185871(n+1)-2)` -/
def P16553296769897935608.Spec : Prop :=
  ∀ n, P16553296769897935608.a n = A258993 (n + 1)

end A258993

/-!
# A258994: E.g.f.: A'(x) = 1 + A(x)^6, with A(0)=1.

The programs for A258994, there is no canonical definition to state claims against.
-/

/-! ## A258994.P14906692875656089107

`A250246(A265265(∑[n]))`
-/

namespace A258994.P14906692875656089107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A265265 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A258994.P14906692875656089107

/-!
# A258995: Third pi-based antiderivative of n: the least m such that A258851^3(m) equals n.

The programs for A258995, there is no canonical definition to state claims against.
-/

/-! ## A258995.P11875888721031204843

`A259016(∑[n+4]+2)`
-/

namespace A258995.P11875888721031204843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A258995.P11875888721031204843

/-! ## A258995.P1426564341930515350

`A259016(A000096(n+3)-3)+char[20]`
-/

namespace A258995.P1426564341930515350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (A000096 (n + 3) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258995.P1426564341930515350

/-! ## A258995.P15186495113935708771

`∑{d}[A259016(A000096(n+3)-3), A000010(#)]`
-/

namespace A258995.P15186495113935708771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (A000096 (n + 3) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A258995.P15186495113935708771

/-! ## A258995.P14435547262870408974

`A259016(A000096(n+3)-3)%A000045(n+6)`
-/

namespace A258995.P14435547262870408974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259016 (A000096 (n + 3) - 3).toNat) (A000045 (n + 6))

end

end A258995.P14435547262870408974

/-! ## A258995.P10412341947910678763

`A007318(C(n, 2))*A259016(A000096(n+3)-3)`
-/

namespace A258995.P10412341947910678763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A259016 (A000096 (n + 3) - 3).toNat

end

end A258995.P10412341947910678763

/-!
# A258996: Permutation of the positive integers: this permutation transforms the enumeration system of positive irreducible fractions A002487/A002487' (Calkin-Wilf) into the enumeration system A162911/A162912 (Drib), and vice versa.

The programs for A258996, the canonical program `A258996.P1766384816688748904` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258996 has offset 1).

The definition of A258996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258996.P13138157244064139901

`A284447(2*(n+1))/2`
-/

namespace A258996.P13138157244064139901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284447 (2 * (n + 1)) : ℚ) / 2

end

end A258996.P13138157244064139901

namespace A258996

/-- `A284447(2*(n+1))/2` -/
def P13138157244064139901.Spec : Prop :=
  ∀ n, P13138157244064139901.a n = (A258996 (n + 1) : ℚ)

end A258996

/-! ## A258996.P14174505279868838390

`A284447(A092569(n+1))`
-/

namespace A258996.P14174505279868838390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (A092569 (n + 1)).toNat

end

end A258996.P14174505279868838390

namespace A258996

/-- `A284447(A092569(n+1))` -/
def P14174505279868838390.Spec : Prop :=
  ∀ n, P14174505279868838390.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P16210599859962447171

`A284447(A054429(A065190(n+1)))`
-/

namespace A258996.P16210599859962447171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (A054429 (A065190 (n + 1)).toNat).toNat

end

end A258996.P16210599859962447171

namespace A258996

/-- `A284447(A054429(A065190(n+1)))` -/
def P16210599859962447171.Spec : Prop :=
  ∀ n, P16210599859962447171.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P17583132003231927992

`A284459(A231550(n+1))`
-/

namespace A258996.P17583132003231927992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284459 (A231550 (n + 1)).toNat

end

end A258996.P17583132003231927992

namespace A258996

/-- `A284459(A231550(n+1))` -/
def P17583132003231927992.Spec : Prop :=
  ∀ n, P17583132003231927992.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P6472771074855236002

`A372358(2*(n+1))+A372358(n+1)`
-/

namespace A258996.P6472771074855236002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372358 (2 * (n + 1)) + A372358 (n + 1)

end

end A258996.P6472771074855236002

namespace A258996

/-- `A372358(2*(n+1))+A372358(n+1)` -/
def P6472771074855236002.Spec : Prop :=
  ∀ n, P6472771074855236002.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P17136060416836337079

`A332769(A054429(n+1))`
-/

namespace A258996.P17136060416836337079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A054429 (n + 1)).toNat

end

end A258996.P17136060416836337079

namespace A258996

/-- `A332769(A054429(n+1))` -/
def P17136060416836337079.Spec : Prop :=
  ∀ n, P17136060416836337079.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P8368190679387798381

`A231551(A284460(n+1))`
-/

namespace A258996.P8368190679387798381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A284460 (n + 1)).toNat

end

end A258996.P8368190679387798381

namespace A258996

/-- `A231551(A284460(n+1))` -/
def P8368190679387798381.Spec : Prop :=
  ∀ n, P8368190679387798381.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P8473493253681615348

`A341916(A340250(n+1))`
-/

namespace A258996.P8473493253681615348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A340250 (n + 1)).toNat

end

end A258996.P8473493253681615348

namespace A258996

/-- `A341916(A340250(n+1))` -/
def P8473493253681615348.Spec : Prop :=
  ∀ n, P8473493253681615348.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P11843902894355324135

`A332769(xor(n+1, A092323(n+1)))`
-/

namespace A258996.P11843902894355324135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (Int.xor (n + 1 : ℤ) (A092323 (n + 1))).toNat

end

end A258996.P11843902894355324135

namespace A258996

/-- `A332769(xor(n+1, A092323(n+1)))` -/
def P11843902894355324135.Spec : Prop :=
  ∀ n, P11843902894355324135.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P1766384816688748904

`A059893(A258746(A059893(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A258996

/-- `A059893(A258746(A059893(n+1)))` -/
def P1766384816688748904.Spec : Prop :=
  ∀ n, P1766384816688748904.a n = A258996 (n + 1)

theorem P1766384816688748904.correct : P1766384816688748904.Spec := by
  intro n
  simp only [A258996, Nat.add_sub_cancel]

end A258996

/-! ## A258996.P8783434805580141002

`A092569(A065190(A332769(n+1)))`
-/

namespace A258996.P8783434805580141002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A065190 (A332769 (n + 1)).toNat).toNat

end

end A258996.P8783434805580141002

namespace A258996

/-- `A092569(A065190(A332769(n+1)))` -/
def P8783434805580141002.Spec : Prop :=
  ∀ n, P8783434805580141002.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P11587624776175617332

`A332769(A117120(A063946(n+1)))`
-/

namespace A258996.P11587624776175617332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A117120 (A063946 (n + 1)).toNat).toNat

end

end A258996.P11587624776175617332

namespace A258996

/-- `A332769(A117120(A063946(n+1)))` -/
def P11587624776175617332.Spec : Prop :=
  ∀ n, P11587624776175617332.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P2565252140189985305

`A284447(A065190(A063946(A117120(n+1))))`
-/

namespace A258996.P2565252140189985305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (A065190 (A063946 (A117120 (n + 1)).toNat).toNat).toNat

end

end A258996.P2565252140189985305

namespace A258996

/-- `A284447(A065190(A063946(A117120(n+1))))` -/
def P2565252140189985305.Spec : Prop :=
  ∀ n, P2565252140189985305.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P778691056087632929

`A154437(A231550(A231550(A154437(n+1))))`
-/

namespace A258996.P778691056087632929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A231550 (A231550 (A154437 (n + 1)).toNat).toNat).toNat

end

end A258996.P778691056087632929

namespace A258996

/-- `A154437(A231550(A231550(A154437(n+1))))` -/
def P778691056087632929.Spec : Prop :=
  ∀ n, P778691056087632929.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P16417477399696584109

`A332769(A231550(A332769(A231551(n+1))))`
-/

namespace A258996.P16417477399696584109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A231550 (A332769 (A231551 (n + 1)).toNat).toNat).toNat

end

end A258996.P16417477399696584109

namespace A258996

/-- `A332769(A231550(A332769(A231551(n+1))))` -/
def P16417477399696584109.Spec : Prop :=
  ∀ n, P16417477399696584109.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P17336918806865857051

`A332769(A284460(A332769(A284459(n+1))))`
-/

namespace A258996.P17336918806865857051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332769 (A284460 (A332769 (A284459 (n + 1)).toNat).toNat).toNat

end

end A258996.P17336918806865857051

namespace A258996

/-- `A332769(A284460(A332769(A284459(n+1))))` -/
def P17336918806865857051.Spec : Prop :=
  ∀ n, P17336918806865857051.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P5262545957749526157

`A284460(n+1)+A284460(A332769(n+1))-A332769(n+1)`
-/

namespace A258996.P5262545957749526157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284460 (n + 1) + (A284460 (A332769 (n + 1)).toNat - A332769 (n + 1))

end

end A258996.P5262545957749526157

namespace A258996

/-- `A284460(n+1)+A284460(A332769(n+1))-A332769(n+1)` -/
def P5262545957749526157.Spec : Prop :=
  ∀ n, P5262545957749526157.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P12789131421531324564

`A284447(A284120(A065190(A063946(A258746(n+1)))))`
-/

namespace A258996.P12789131421531324564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284447 (A284120 (A065190 (A063946 (A258746 (n + 1)).toNat).toNat).toNat).toNat

end

end A258996.P12789131421531324564

namespace A258996

/-- `A284447(A284120(A065190(A063946(A258746(n+1)))))` -/
def P12789131421531324564.Spec : Prop :=
  ∀ n, P12789131421531324564.a n = A258996 (n + 1)

end A258996

/-! ## A258996.P7243057835639606068

`A332769(2*n+3)/2`
-/

namespace A258996.P7243057835639606068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332769 (2 * n + 3) : ℚ) / 2

end

end A258996.P7243057835639606068

namespace A258996

/-- `A332769(2*n+3)/2` -/
def P7243057835639606068.Spec : Prop :=
  ∀ n, P7243057835639606068.a n = (A258996 (n + 1) : ℚ)

end A258996

/-! ## A258996.P10165270182988204987

`A110654(A332769(2*(n+1))-1)`
-/

namespace A258996.P10165270182988204987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A332769 (2 * (n + 1)) - 1).toNat

end

end A258996.P10165270182988204987

namespace A258996

/-- `A110654(A332769(2*(n+1))-1)` -/
def P10165270182988204987.Spec : Prop :=
  ∀ n, P10165270182988204987.a n = A258996 (n + 1)

end A258996

/-!
# A258997: A(n,k) = pi-based antiderivative of n^k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A258997, there is no canonical definition to state claims against.
-/

/-! ## A258997.P7823004262822611935

`A258851((n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A258997.P7823004262822611935
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (SequenceMachineLib.roundAway (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat

end

end A258997.P7823004262822611935

/-! ## A258997.P13650669512798798809

`A258851(A004248(n))`
-/

namespace A258997.P13650669512798798809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A004248 n).toNat

end

end A258997.P13650669512798798809

/-! ## A258997.P6503151632656931555

`A258851(A103462(n)-1)`
-/

namespace A258997.P6503151632656931555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A103462 n - 1).toNat

end

end A258997.P6503151632656931555

/-! ## A258997.P12390371135007904186

`A258851(A059297(n)/A007318(n))`
-/

namespace A258997.P12390371135007904186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (SequenceMachineLib.roundAway ((A059297 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A258997.P12390371135007904186

/-! ## A258997.P7349304703868732262

`A258851(A002262(n)^A025581(n))`
-/

namespace A258997.P7349304703868732262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A258997.P7349304703868732262

/-! ## A258997.P9014658792891611588

`A258851(A002262(n)^A025660(n+1))`
-/

namespace A258997.P9014658792891611588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A025660 (n + 1) : ℤ))).toNat

end

end A258997.P9014658792891611588

/-!
# A258998: a(n) = -(-1)^n if n = k^2 for positive integer k, otherwise 0.

The programs for A258998, the canonical program `A258998.P12736834426368686172` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A258998 has offset 0).

The definition of A258998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A258998.P5428651567000529874

`n-xor(n, char[(n+1)²])`
-/

namespace A258998.P5428651567000529874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.xor n (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A258998.P5428651567000529874

namespace A258998

/-- `n-xor(n, char[(n+1)²])` -/
def P5428651567000529874.Spec : Prop :=
  ∀ n, P5428651567000529874.a n = A258998 n

end A258998

/-! ## A258998.P11039675423082191518

`Δ[gcd(2, ceil(sqrt(n)))]%(n+1)`
-/

namespace A258998.P11039675423082191518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (n + 1 : ℤ)

end

end A258998.P11039675423082191518

namespace A258998

/-- `Δ[gcd(2, ceil(sqrt(n)))]%(n+1)` -/
def P11039675423082191518.Spec : Prop :=
  ∀ n, P11039675423082191518.a n = A258998 n

end A258998

/-! ## A258998.P17504691321560755170

`(-1)^(n+1)*char[(n+1)²]`
-/

namespace A258998.P17504691321560755170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A258998.P17504691321560755170

namespace A258998

/-- `(-1)^(n+1)*char[(n+1)²]` -/
def P17504691321560755170.Spec : Prop :=
  ∀ n, P17504691321560755170.a n = A258998 n

end A258998

/-! ## A258998.P13635938536724006538

`Δ[A040001(ceil(sqrt(n)))]`
-/

namespace A258998.P13635938536724006538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 ⌈Real.sqrt (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258998.P13635938536724006538

namespace A258998

/-- `Δ[A040001(ceil(sqrt(n)))]` -/
def P13635938536724006538.Spec : Prop :=
  ∀ n, P13635938536724006538.a n = A258998 n

end A258998

/-! ## A258998.P12736834426368686172

`Δ[A266253(abs(3-n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A258998

/-- `Δ[A266253(abs(3-n))]` -/
def P12736834426368686172.Spec : Prop :=
  ∀ n, P12736834426368686172.a n = A258998 n

theorem P12736834426368686172.correct : P12736834426368686172.Spec := by
  intro n
  simp only [A258998]

end A258998

/-! ## A258998.P15325590551891998220

`A062157(n*char[n²])`
-/

namespace A258998.P15325590551891998220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A258998.P15325590551891998220

namespace A258998

/-- `A062157(n*char[n²])` -/
def P15325590551891998220.Spec : Prop :=
  ∀ n, P15325590551891998220.a n = A258998 n

end A258998

/-! ## A258998.P3192447332181480422

`(A267635(n)-1)^(n+1)`
-/

namespace A258998.P3192447332181480422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267635 n - 1) ^ (n + 1)

end

end A258998.P3192447332181480422

namespace A258998

/-- `(A267635(n)-1)^(n+1)` -/
def P3192447332181480422.Spec : Prop :=
  ∀ n, P3192447332181480422.a n = A258998 n

end A258998

/-! ## A258998.P16526617883324098178

`(A267621(n+1)-1)^(n+1)`
-/

namespace A258998.P16526617883324098178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267621 (n + 1) - 1) ^ (n + 1)

end

end A258998.P16526617883324098178

namespace A258998

/-- `(A267621(n+1)-1)^(n+1)` -/
def P16526617883324098178.Spec : Prop :=
  ∀ n, P16526617883324098178.a n = A258998 n

end A258998

/-! ## A258998.P8305100521669618050

`A132380(A246631(n))`
-/

namespace A258998.P8305100521669618050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A246631 n).toNat

end

end A258998.P8305100521669618050

namespace A258998

/-- `A132380(A246631(n))` -/
def P8305100521669618050.Spec : Prop :=
  ∀ n, P8305100521669618050.a n = A258998 n

end A258998

/-! ## A258998.P3160253415355218294

`A132380(A329290(n))`
-/

namespace A258998.P3160253415355218294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A329290 n).toNat

end

end A258998.P3160253415355218294

namespace A258998

/-- `A132380(A329290(n))` -/
def P3160253415355218294.Spec : Prop :=
  ∀ n, P3160253415355218294.a n = A258998 n

end A258998

/-! ## A258998.P16363358898392890733

`A266434(n)-A267034(n)`
-/

namespace A258998.P16363358898392890733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 n - A267034 n

end

end A258998.P16363358898392890733

namespace A258998

/-- `A266434(n)-A267034(n)` -/
def P16363358898392890733.Spec : Prop :=
  ∀ n, P16363358898392890733.a n = A258998 n

end A258998

/-! ## A258998.P14239304491675681330

`A214304(A037213(n)²)-1`
-/

namespace A258998.P14239304491675681330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 (A037213 n ^ 2).toNat - 1

end

end A258998.P14239304491675681330

namespace A258998

/-- `A214304(A037213(n)²)-1` -/
def P14239304491675681330.Spec : Prop :=
  ∀ n, P14239304491675681330.a n = A258998 n

end A258998

/-! ## A258998.P16573034521794766595

`(A000007(n)-A002448(n))/2`
-/

namespace A258998.P16573034521794766595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n - A002448 n : ℚ) / 2

end

end A258998.P16573034521794766595

namespace A258998

/-- `(A000007(n)-A002448(n))/2` -/
def P16573034521794766595.Spec : Prop :=
  ∀ n, P16573034521794766595.a n = (A258998 n : ℚ)

end A258998

/-! ## A258998.P7659714098050818951

`A267034(n+1)-A266982(n+1)`
-/

namespace A258998.P7659714098050818951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (n + 1) - A266982 (n + 1)

end

end A258998.P7659714098050818951

namespace A258998

/-- `A267034(n+1)-A266982(n+1)` -/
def P7659714098050818951.Spec : Prop :=
  ∀ n, P7659714098050818951.a n = A258998 n

end A258998

/-! ## A258998.P13555476481381892182

`A266434(n)-A266434(A020703(n+1))`
-/

namespace A258998.P13555476481381892182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 n - A266434 (A020703 (n + 1)).toNat

end

end A258998.P13555476481381892182

namespace A258998

/-- `A266434(n)-A266434(A020703(n+1))` -/
def P13555476481381892182.Spec : Prop :=
  ∀ n, P13555476481381892182.a n = A258998 n

end A258998

/-! ## A258998.P1975361064464029531

`A000122(n)*A354034(n+1)-A010052(n)`
-/

namespace A258998.P1975361064464029531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A354034 (n + 1) - A010052 n

end

end A258998.P1975361064464029531

namespace A258998

/-- `A000122(n)*A354034(n+1)-A010052(n)` -/
def P1975361064464029531.Spec : Prop :=
  ∀ n, P1975361064464029531.a n = A258998 n

end A258998

/-! ## A258998.P17837937791121704512

`Δ[∑[char[(n+1)²+1]]%2]`
-/

namespace A258998.P17837937791121704512
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A258998.P17837937791121704512

namespace A258998

/-- `Δ[∑[char[(n+1)²+1]]%2]` -/
def P17837937791121704512.Spec : Prop :=
  ∀ n, P17837937791121704512.a n = A258998 n

end A258998

/-! ## A258998.P4796264248562117941

`Δ[A266982(n+1)]`
-/

namespace A258998.P4796264248562117941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258998.P4796264248562117941

namespace A258998

/-- `Δ[A266982(n+1)]` -/
def P4796264248562117941.Spec : Prop :=
  ∀ n, P4796264248562117941.a n = A258998 n

end A258998

/-! ## A258998.P8008615096587697375

`(A265186(n+2)-1)^(n+1)`
-/

namespace A258998.P8008615096587697375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265186 (n + 2) - 1) ^ (n + 1)

end

end A258998.P8008615096587697375

namespace A258998

/-- `(A265186(n+2)-1)^(n+1)` -/
def P8008615096587697375.Spec : Prop :=
  ∀ n, P8008615096587697375.a n = A258998 n

end A258998

/-! ## A258998.P10602511675718805627

`Δ[A000035(∑[char[(n+1)²+1]])]`
-/

namespace A258998.P10602511675718805627
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258998.P10602511675718805627

namespace A258998

/-- `Δ[A000035(∑[char[(n+1)²+1]])]` -/
def P10602511675718805627.Spec : Prop :=
  ∀ n, P10602511675718805627.a n = A258998 n

end A258998

/-!
# A258999: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column plus the two sums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A258999, there is no canonical definition to state claims against.
-/

/-! ## A258999.P13301903039732299678

`A259006((n+1)²+n²)`
-/

namespace A258999.P13301903039732299678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 ((n + 1) ^ 2 + n ^ 2)

end

end A258999.P13301903039732299678

/-! ## A258999.P576464795598913972

`lcm(A057077(n), A259006(A001844(n)))`
-/

namespace A258999.P576464795598913972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A259006 (A001844 n).toNat)

end

end A258999.P576464795598913972

/-! ## A258999.P6986270417269556129

`A259006(A001844(n))+A077957(2*n+1)`
-/

namespace A258999.P6986270417269556129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A001844 n).toNat + A077957 (2 * n + 1)

end

end A258999.P6986270417269556129

/-! ## A258999.P17207229621841440014

`A259006(A001844(n))+A025441(A025442(n))`
-/

namespace A258999.P17207229621841440014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A001844 n).toNat + A025441 (A025442 n).toNat

end

end A258999.P17207229621841440014

/-! ## A258999.P15884230554521733356

`A259006(A001844(n))+A037861(A031443(n+1))`
-/

namespace A258999.P15884230554521733356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259006 (A001844 n).toNat + A037861 (A031443 (n + 1)).toNat

end

end A258999.P15884230554521733356

