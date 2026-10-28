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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C048
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A277307: G.f. satisfies: A(x - 3*A(x)^2) = x - 2*A(x)^2.

The programs for A277307, there is no canonical definition to state claims against.
-/

/-! ## A277307.P13509255274679667088

`A249595(A147880(n²))`
-/

namespace A277307.P13509255274679667088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249595 (A147880 (n ^ 2)).toNat

end

end A277307.P13509255274679667088

/-!
# A277308: G.f. satisfies: A(x - 3*A(x)^2) = x - A(x)^2.

The programs for A277308, there is no canonical definition to state claims against.
-/

/-! ## A277308.P8130373290339057476

`∑[A301730(∑[A258846(n)])]`
-/

namespace A277308.P8130373290339057476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277308.P8130373290339057476

/-!
# A277310: G.f. satisfies: A(x - 4*A(x)^2) = x - 3*A(x)^2.

The programs for A277310, there is no canonical definition to state claims against.
-/

/-! ## A277310.P16248161496551298597

`A057032(A002478(∑[n]))`
-/

namespace A277310.P16248161496551298597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057032 (A002478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A277310.P16248161496551298597

/-!
# A277311: G.f. satisfies: A(x - 5*A(x)^2) = x - 4*A(x)^2.

The programs for A277311, there is no canonical definition to state claims against.
-/

/-! ## A277311.P18189047095505993257

`A065609(A269159(2*n+1)+A048287(n+1))`
-/

namespace A277311.P18189047095505993257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065609 (A269159 (2 * n + 1) + A048287 (n + 1)).toNat

end

end A277311.P18189047095505993257

/-!
# A277312: Smallest k such that k - lambda(k) = prime(n), where lambda(k) = A002322(k).

The programs for A277312, there is no canonical definition to state claims against.
-/

/-! ## A277312.P11013589742157909174

`A096153(A096127(n+2)+A000217(n))`
-/

namespace A277312.P11013589742157909174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096153 (A096127 (n + 2) + A000217 n).toNat

end

end A277312.P11013589742157909174

/-! ## A277312.P16323337109498425319

`A179216(A345008(n)+A055998(n))`
-/

namespace A277312.P16323337109498425319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179216 (A345008 n + A055998 n).toNat

end

end A277312.P16323337109498425319

/-! ## A277312.P2787328393009805052

`p?[round(8*n/7)]²%A340764(A002758(n))`
-/

namespace A277312.P2787328393009805052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) (A340764 (A002758 n).toNat)

end

end A277312.P2787328393009805052

/-!
# A277314: Number of nonzero coefficients in Stern polynomial B(n,t).

The programs for A277314, the canonical program `A277314.P8241262981008711249` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277314 has offset 0).

The definition of A277314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277314.P13060942728986654524

`A069010(A277020(n))`
-/

namespace A277314.P13060942728986654524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A277020 n).toNat

end

end A277314.P13060942728986654524

namespace A277314

/-- `A069010(A277020(n))` -/
def P13060942728986654524.Spec : Prop :=
  ∀ n, P13060942728986654524.a n = A277314 n

end A277314

/-! ## A277314.P8076479554307628287

`A001221(A260443(n))`
-/

namespace A277314.P8076479554307628287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A260443 n).toNat

end

end A277314.P8076479554307628287

namespace A277314

/-- `A001221(A260443(n))` -/
def P8076479554307628287.Spec : Prop :=
  ∀ n, P8076479554307628287.a n = A277314 n

end A277314

/-! ## A277314.P8241262981008711249

`A057526(A129343(n)+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277314

/-- `A057526(A129343(n)+1)` -/
def P8241262981008711249.Spec : Prop :=
  ∀ n, P8241262981008711249.a n = A277314 n

theorem P8241262981008711249.correct : P8241262981008711249.Spec := by
  intro n
  simp only [A277314]

end A277314

/-! ## A277314.P8928450984545196708

`A277329(n)-A007814(A008486(n))`
-/

namespace A277314.P8928450984545196708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277329 n - A007814 (A008486 n).toNat

end

end A277314.P8928450984545196708

namespace A277314

/-- `A277329(n)-A007814(A008486(n))` -/
def P8928450984545196708.Spec : Prop :=
  ∀ n, P8928450984545196708.a n = A277314 n

end A277314

/-! ## A277314.P10613719791590556259

`A008687(-xor(3*n, -n))`
-/

namespace A277314.P10613719791590556259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (-Int.xor (3 * n : ℤ) (-(n : ℤ))).toNat

end

end A277314.P10613719791590556259

namespace A277314

/-- `A008687(-xor(3*n, -n))` -/
def P10613719791590556259.Spec : Prop :=
  ∀ n, P10613719791590556259.a n = A277314 n

end A277314

/-! ## A277314.P14973706404391127149

`A023416(xor(1, xor(n, A008574(n)-(n+1))))`
-/

namespace A277314.P14973706404391127149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.xor 1 (Int.xor (n : ℤ) (A008574 n - (n + 1 : ℤ)))).toNat

end

end A277314.P14973706404391127149

namespace A277314

/-- `A023416(xor(1, xor(n, A008574(n)-(n+1))))` -/
def P14973706404391127149.Spec : Prop :=
  ∀ n, P14973706404391127149.a n = A277314 n

end A277314

/-! ## A277314.P13225896094426353282

`(A277327(4*n)+1)%(n+1)`
-/

namespace A277314.P13225896094426353282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277327 (4 * n) + 1) (n + 1 : ℤ)

end

end A277314.P13225896094426353282

namespace A277314

/-- `(A277327(4*n)+1)%(n+1)` -/
def P13225896094426353282.Spec : Prop :=
  ∀ n, P13225896094426353282.a n = A277314 n

end A277314

/-! ## A277314.P2146276739834405092

`A277327(A008574(n))+A057427(n)`
-/

namespace A277314.P2146276739834405092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A008574 n).toNat + A057427 n

end

end A277314.P2146276739834405092

namespace A277314

/-- `A277327(A008574(n))+A057427(n)` -/
def P2146276739834405092.Spec : Prop :=
  ∀ n, P2146276739834405092.a n = A277314 n

end A277314

/-! ## A277314.P11275192937527487638

`A023416(xor(A004273(n), A016921(n)))`
-/

namespace A277314.P11275192937527487638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.xor (A004273 n) (A016921 n)).toNat

end

end A277314.P11275192937527487638

namespace A277314

/-- `A023416(xor(A004273(n), A016921(n)))` -/
def P11275192937527487638.Spec : Prop :=
  ∀ n, P11275192937527487638.a n = A277314 n

end A277314

/-! ## A277314.P10870576178617626602

`A080791(xor(A016921(n), A053438(n)))`
-/

namespace A277314.P10870576178617626602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.xor (A016921 n) (A053438 n)).toNat

end

end A277314.P10870576178617626602

namespace A277314

/-- `A080791(xor(A016921(n), A053438(n)))` -/
def P10870576178617626602.Spec : Prop :=
  ∀ n, P10870576178617626602.a n = A277314 n

end A277314

/-!
# A277315: a(n) = the largest coefficient in Stern polynomial B(n,t).

The programs for A277315, there is no canonical definition to state claims against.
-/

/-! ## A277315.P12995068510105650388

`A051903(A260443(n))`
-/

namespace A277315.P12995068510105650388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A260443 n).toNat

end

end A277315.P12995068510105650388

/-! ## A277315.P4758596426734487916

`val(A278243(n), 2)`
-/

namespace A277315.P4758596426734487916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278243 n).toNat 2

end

end A277315.P4758596426734487916

/-! ## A277315.P3857143690137720535

`log2(gcd(A077957(2*n), A278243(n)))`
-/

namespace A277315.P3857143690137720535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A077957 (2 * n)) (A278243 n) : ℝ)

end

end A277315.P3857143690137720535

/-! ## A277315.P14652607921379573513

`A001222(gcd(A000079(n), A278243(n)))`
-/

namespace A277315.P14652607921379573513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A278243 n))

end

end A277315.P14652607921379573513

/-! ## A277315.P6993286723255840057

`A001222(and(-A278243(n), A278243(n)))`
-/

namespace A277315.P6993286723255840057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A278243 n) (A278243 n)).toNat

end

end A277315.P6993286723255840057

/-! ## A277315.P1215324032202163394

`A000005(and(-A278243(n), A278243(n)))-1`
-/

namespace A277315.P1215324032202163394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (-A278243 n) (A278243 n)).toNat - 1

end

end A277315.P1215324032202163394

/-! ## A277315.P1678330648138689750

`A006577(and(-A278243(n), A278243(n)))`
-/

namespace A277315.P1678330648138689750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (Int.land (-A278243 n) (A278243 n)).toNat

end

end A277315.P1678330648138689750

/-! ## A277315.P7136572603790167245

`A007814(and(-A278243(n), A278243(n)))`
-/

namespace A277315.P7136572603790167245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.land (-A278243 n) (A278243 n)).toNat

end

end A277315.P7136572603790167245

/-! ## A277315.P3213146869496321274

`A032741(and(-A278243(n), A278243(n)))`
-/

namespace A277315.P3213146869496321274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.land (-A278243 n) (A278243 n)).toNat

end

end A277315.P3213146869496321274

/-! ## A277315.P12475132392318631603

`A306754(and(-A278243(n), A278243(n)))`
-/

namespace A277315.P12475132392318631603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 (Int.land (-A278243 n) (A278243 n)).toNat

end

end A277315.P12475132392318631603

/-! ## A277315.P7319650708867694474

`A007814(gcd(A143095(n), A278243(2*n)))`
-/

namespace A277315.P7319650708867694474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A143095 n) (A278243 (2 * n)))

end

end A277315.P7319650708867694474

/-! ## A277315.P9273808673135400042

`A032741(and(1-A278243(n), A278243(n)))`
-/

namespace A277315.P9273808673135400042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.land (1 - A278243 n) (A278243 n)).toNat

end

end A277315.P9273808673135400042

/-! ## A277315.P10489428876867080110

`A306754(and(1-A278243(n), A278243(n)))`
-/

namespace A277315.P10489428876867080110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 (Int.land (1 - A278243 n) (A278243 n)).toNat

end

end A277315.P10489428876867080110

/-!
# A277316: Prime-factorization representation of the prime-th Stern-polynomial: a(n) = A260443(A000040(n)).

The programs for A277316, there is no canonical definition to state claims against.
-/

/-! ## A277316.P14683238532160283966

`A260443(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277316.P14683238532160283966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A000040 (n + 1)).toNat

end

end A277316.P14683238532160283966

/-! ## A277316.P12177405676578016062

`A260443(Δ[A007504(n)])`
-/

namespace A277316.P12177405676578016062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (n + 1) - f1 n).toNat

end

end A277316.P12177405676578016062

/-! ## A277316.P4487784939889638023

`A260443(A008578(n+2))`
-/

namespace A277316.P4487784939889638023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A008578 (n + 2)).toNat

end

end A277316.P4487784939889638023

/-! ## A277316.P11441134590708542421

`A260443(A182986(n+2))`
-/

namespace A277316.P11441134590708542421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A182986 (n + 2)).toNat

end

end A277316.P11441134590708542421

/-! ## A277316.P5575219177243599775

`A260443(eq[1, A003415(n)])`
-/

namespace A277316.P5575219177243599775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277316.P5575219177243599775

/-! ## A277316.P18009621939271751952

`A260443(record[A006530(n+2)])`
-/

namespace A277316.P18009621939271751952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277316.P18009621939271751952

/-! ## A277316.P7160784353329501565

`A260443(record[A014963(n+2)])`
-/

namespace A277316.P7160784353329501565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277316.P7160784353329501565

/-! ## A277316.P16527703104839318230

`A260443(record[A020639(n+2)])`
-/

namespace A277316.P16527703104839318230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277316.P16527703104839318230

/-! ## A277316.P13562139768525711086

`A260443(p?[lt[n, A260443(n)]])`
-/

namespace A277316.P13562139768525711086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A277316.P13562139768525711086

/-! ## A277316.P16632024914860174671

`A260443(A008864(n+1)-1)`
-/

namespace A277316.P16632024914860174671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A008864 (n + 1) - 1).toNat

end

end A277316.P16632024914860174671

/-! ## A277316.P17097565838075312319

`A260443(record[p?[A293217(n+1)]])`
-/

namespace A277316.P17097565838075312319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293217 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277316.P17097565838075312319

/-! ## A277316.P11173131046644596901

`A260443(record[p?[A293223(n+1)]])`
-/

namespace A277316.P11173131046644596901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277316.P11173131046644596901

/-! ## A277316.P4327183952060039808

`A260443(record[p?[A293224(n+1)]])`
-/

namespace A277316.P4327183952060039808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277316.P4327183952060039808

/-! ## A277316.P12351564437474724193

`A260443(record[p?[A300835(n+1)]])`
-/

namespace A277316.P12351564437474724193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300835 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277316.P12351564437474724193

/-! ## A277316.P9749237655583883654

`A260443(record[p?[A318835(n+1)]])`
-/

namespace A277316.P9749237655583883654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318835 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277316.P9749237655583883654

/-! ## A277316.P5522157406364685600

`A260443(A007504(n+1)-A007504(n))`
-/

namespace A277316.P5522157406364685600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A007504 (n + 1) - A007504 n).toNat

end

end A277316.P5522157406364685600

/-! ## A277316.P5336144156264068173

`A260443(A005145(∑[n]+1))`
-/

namespace A277316.P5336144156264068173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A005145 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A277316.P5336144156264068173

/-!
# A277317: Numbers k such that A277333(k) is a prime.

The programs for A277317, there is no canonical definition to state claims against.
-/

/-! ## A277317.P17694181360761339571

`A389912(lt[A334268(n), A123286(n)])`
-/

namespace A277317.P17694181360761339571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123286 (n + 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389912 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277317.P17694181360761339571

/-! ## A277317.P17450026430275164773

`A389912(A010785(n)+1)`
-/

namespace A277317.P17450026430275164773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389912 (A010785 n + 1).toNat

end

end A277317.P17450026430275164773

/-! ## A277317.P13775359192686013535

`A389912(A097855(n+1)+1)`
-/

namespace A277317.P13775359192686013535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389912 (A097855 (n + 1) + 1).toNat

end

end A277317.P13775359192686013535

/-! ## A277317.P14592854565927484073

`filter[A389912(n+1), A161996(#)]`
-/

namespace A277317.P14592854565927484073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A277317.P14592854565927484073

/-! ## A277317.P15788641390372843422

`filter[A389912(n+1), A181359(#)]`
-/

namespace A277317.P15788641390372843422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181359 (f1 j).toNat = 1) n)

end

end A277317.P15788641390372843422

/-!
# A277318: Prime-factorization representation of irreducible (non-constant) Stern-polynomials B(n,x), listed in the order of increasing index n: a(n) = A260443(A186891(n+1)).

The programs for A277318, there is no canonical definition to state claims against.
-/

/-! ## A277318.P3787084811188760922

`A260443(A186891(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277318.P3787084811188760922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A186891 (n + 2)).toNat

end

end A277318.P3787084811188760922

/-! ## A277318.P11440602232146440806

`A260443(eq[1, A277013(n+1)]+1)`
-/

namespace A277318.P11440602232146440806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277318.P11440602232146440806

/-! ## A277318.P13852035564994972289

`A260443(eq[1, A283991(n+1)]+1)`
-/

namespace A277318.P13852035564994972289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277318.P13852035564994972289

/-! ## A277318.P8054284927512629929

`A260443(eq[2, A284011(n+1)]+1)`
-/

namespace A277318.P8054284927512629929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277318.P8054284927512629929

/-!
# A277319: Numbers k such that A048675(k) is a prime.

The programs for A277319, the canonical program `A277319.P4189292472771048617` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277319 has offset 1).

The definition of A277319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277319.P4189292472771048617

`eq[1, A277892(n+2)]+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A277319

/-- `eq[1, A277892(n+2)]+2` -/
def P4189292472771048617.Spec : Prop :=
  ∀ n, (P4189292472771048617.a n : ℤ) = A277319 (n + 1)

theorem P4189292472771048617.correct : P4189292472771048617.Spec := by
  intro n
  simp only [A277319, Nat.add_sub_cancel]

end A277319

/-! ## A277319.P17942416289413009059

`A265283(eq[1, A277892(n+2)])`
-/

namespace A277319.P17942416289413009059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277319.P17942416289413009059

namespace A277319

/-- `A265283(eq[1, A277892(n+2)])` -/
def P17942416289413009059.Spec : Prop :=
  ∀ n, P17942416289413009059.a n = A277319 (n + 1)

end A277319

/-! ## A277319.P9942550008211667791

`A321220(eq[1, A277892(n+2)])`
-/

namespace A277319.P9942550008211667791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277319.P9942550008211667791

namespace A277319

/-- `A321220(eq[1, A277892(n+2)])` -/
def P9942550008211667791.Spec : Prop :=
  ∀ n, P9942550008211667791.a n = A277319 (n + 1)

end A277319

/-! ## A277319.P7061006405758363054

`record[A051755(n+2)-n*A277892(n+2)]`
-/

namespace A277319.P7061006405758363054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2) - (n : ℤ) * A277892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277319.P7061006405758363054

namespace A277319

/-- `record[A051755(n+2)-n*A277892(n+2)]` -/
def P7061006405758363054.Spec : Prop :=
  ∀ n, P7061006405758363054.a n = A277319 (n + 1)

end A277319

/-! ## A277319.P15977339705320137512

`record[A051755(n+2)/A277892(A051755(n+2))]`
-/

namespace A277319.P15977339705320137512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051755 (n + 2) : ℚ) / (A277892 (A051755 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277319.P15977339705320137512

namespace A277319

/-- `record[A051755(n+2)/A277892(A051755(n+2))]` -/
def P15977339705320137512.Spec : Prop :=
  ∀ n, P15977339705320137512.a n = (A277319 (n + 1) : ℚ)

end A277319

/-! ## A277319.P11922310212883394494

`record[A277894(n+4)/A277892(n+4)]`
-/

namespace A277319.P11922310212883394494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277894 (n + 4) : ℚ) / (A277892 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277319.P11922310212883394494

namespace A277319

/-- `record[A277894(n+4)/A277892(n+4)]` -/
def P11922310212883394494.Spec : Prop :=
  ∀ n, P11922310212883394494.a n = (A277319 (n + 1) : ℚ)

end A277319

/-! ## A277319.P8498349124406634154

`record[root(A277894(2*(n+2)), A277892(2*(n+2)))]`
-/

namespace A277319.P8498349124406634154
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277894 (2 * (n + 2)) : ℝ) ^ (1 / (A277892 (2 * (n + 2)) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277319.P8498349124406634154

namespace A277319

/-- `record[root(A277894(2*(n+2)), A277892(2*(n+2)))]` -/
def P8498349124406634154.Spec : Prop :=
  ∀ n, P8498349124406634154.a n = (A277319 (n + 1) : ℝ)

end A277319

/-! ## A277319.P4154048315856437351

`A055396(p?[A065091(n+1)*A277892(n+2)])`
-/

namespace A277319.P4154048315856437351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A277892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A277319.P4154048315856437351

namespace A277319

/-- `A055396(p?[A065091(n+1)*A277892(n+2)])` -/
def P4154048315856437351.Spec : Prop :=
  ∀ n, P4154048315856437351.a n = A277319 (n + 1)

end A277319

/-!
# A277320: Square array A(n,k) = A048720(A065621(n), k), read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A277320, there is no canonical definition to state claims against.
-/

/-! ## A277320.P12567295545696234415

`A277199(A038722(n+1))`
-/

namespace A277320.P12567295545696234415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277199 (A038722 (n + 1)).toNat

end

end A277320.P12567295545696234415

/-! ## A277320.P12715881521622106597

`A277199(A061579(n)+1)`
-/

namespace A277320.P12715881521622106597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277199 (A061579 n + 1).toNat

end

end A277320.P12715881521622106597

/-! ## A277320.P6737603650330489368

`A277199(A168038(n+1)-n)`
-/

namespace A277320.P6737603650330489368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277199 (A168038 (n + 1) - (n : ℤ)).toNat

end

end A277320.P6737603650330489368

/-! ## A277320.P4068030066684992140

`A277199(A002024(n+1)²-n)`
-/

namespace A277320.P4068030066684992140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277199 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A277320.P4068030066684992140

/-! ## A277320.P6662582538211529453

`A277199(A057944(n)+A004736(n+1))`
-/

namespace A277320.P6662582538211529453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277199 (A057944 n + A004736 (n + 1)).toNat

end

end A277320.P6662582538211529453

/-! ## A277320.P13744742221102056765

`A277199(A127739(n+1)-A002262(n))`
-/

namespace A277320.P13744742221102056765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277199 (A127739 (n + 1) - A002262 n).toNat

end

end A277320.P13744742221102056765

/-!
# A277321: Primes in A048675, in the order of appearance and with duplicates.

The programs for A277321, the canonical program `A277321.P16767251046932141454` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277321 has offset 1).

The definition of A277321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, A277319, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277321.P16767251046932141454

`A048675(A277319(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277321

/-- `A048675(A277319(n+1))` -/
def P16767251046932141454.Spec : Prop :=
  ∀ n, P16767251046932141454.a n = A277321 (n + 1)

theorem P16767251046932141454.correct : P16767251046932141454.Spec := by
  intro n
  simp only [A277321, Nat.add_sub_cancel]

end A277321

/-! ## A277321.P11954741061139822519

`A048675(eq[1, A277892(n+2)]+2)`
-/

namespace A277321.P11954741061139822519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A277321.P11954741061139822519

namespace A277321

/-- `A048675(eq[1, A277892(n+2)]+2)` -/
def P11954741061139822519.Spec : Prop :=
  ∀ n, P11954741061139822519.a n = A277321 (n + 1)

end A277321

/-! ## A277321.P13091549080226421957

`p?[A048675(n+1)%A105720(n+1)]`
-/

namespace A277321.P13091549080226421957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) (A105720 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277321.P13091549080226421957

namespace A277321

/-- `p?[A048675(n+1)%A105720(n+1)]` -/
def P13091549080226421957.Spec : Prop :=
  ∀ n, P13091549080226421957.a n = A277321 (n + 1)

end A277321

/-! ## A277321.P1152903100764633698

`p?[A048675(n+1)%A010004(n)]`
-/

namespace A277321.P1152903100764633698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (n + 1)) (A010004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277321.P1152903100764633698

namespace A277321

/-- `p?[A048675(n+1)%A010004(n)]` -/
def P1152903100764633698.Spec : Prop :=
  ∀ n, P1152903100764633698.a n = A277321 (n + 1)

end A277321

/-! ## A277321.P12486094548591263682

`p?[Δ[A336415(n)]]`
-/

namespace A277321.P12486094548591263682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277321.P12486094548591263682

namespace A277321

/-- `p?[Δ[A336415(n)]]` -/
def P12486094548591263682.Spec : Prop :=
  ∀ n, P12486094548591263682.a n = A277321 (n + 1)

end A277321

/-!
# A277322: a(n) = number of irreducible polynomial factors (counted with multiplicity) in the polynomial (with nonnegative integral coefficients) constructed from the prime factorization of n.

The programs for A277322, there is no canonical definition to state claims against.
-/

/-! ## A277322.P11617282177668074576

`∑{e}[A284010(n+1), #]`
-/

namespace A277322.P11617282177668074576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277322.P11617282177668074576

/-! ## A277322.P17889832203604348930

`A001222(A284010(n+1)+char[2^n-1])`
-/

namespace A277322.P17889832203604348930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284010 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A277322.P17889832203604348930

/-! ## A277322.P17072115192749707057

`A305822(A284010(n+1)+A036987(n))`
-/

namespace A277322.P17072115192749707057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305822 (A284010 (n + 1) + A036987 n).toNat

end

end A277322.P17072115192749707057

/-! ## A277322.P2339984171872597065

`A001222(A344438(n+1)+A284010(n+1))`
-/

namespace A277322.P2339984171872597065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A344438 (n + 1) + A284010 (n + 1)).toNat

end

end A277322.P2339984171872597065

/-! ## A277322.P15889788299591927607

`A001222(or(A209229(n+1), A284010(n+1)))`
-/

namespace A277322.P15889788299591927607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A209229 (n + 1)) (A284010 (n + 1))).toNat

end

end A277322.P15889788299591927607

/-! ## A277322.P17150980516198757687

`A001222(xor(A209229(n+1), A284010(n+1)))`
-/

namespace A277322.P17150980516198757687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A209229 (n + 1)) (A284010 (n + 1))).toNat

end

end A277322.P17150980516198757687

/-!
# A277323: Even bisection of A260443 (the odd terms): a(n) = A260443(2*n).

The programs for A277323, there is no canonical definition to state claims against.
-/

/-! ## A277323.P13907754479956120182

`A260443(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277323.P13907754479956120182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (2 * n)

end

end A277323.P13907754479956120182

/-! ## A277323.P11230725639930831155

`A003961(A260443(n))`
-/

namespace A277323.P11230725639930831155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A260443 n).toNat

end

end A277323.P11230725639930831155

/-! ## A277323.P4336347083323659690

`A284553(2*n)*A284554(2*n)`
-/

namespace A277323.P4336347083323659690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284553 (2 * n) * A284554 (2 * n)

end

end A277323.P4336347083323659690

/-! ## A277323.P2451357795777981202

`A283983(2*n)²*A277330(2*n)`
-/

namespace A277323.P2451357795777981202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 (2 * n) ^ 2 * A277330 (2 * n)

end

end A277323.P2451357795777981202

/-! ## A277323.P16600656232751969183

`A277330(2*n)*A283989(2*n)`
-/

namespace A277323.P16600656232751969183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (2 * n) * A283989 (2 * n)

end

end A277323.P16600656232751969183

/-! ## A277323.P16553903440504282025

`A260443(n+n)+A005369(A309231(n+1))`
-/

namespace A277323.P16553903440504282025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (n + n) + A005369 (A309231 (n + 1)).toNat

end

end A277323.P16553903440504282025

/-! ## A277323.P13380154264150004455

`A260443(n+n)/A038500(A038500(n+1)+1)`
-/

namespace A277323.P13380154264150004455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 (n + n) : ℚ) / (A038500 (A038500 (n + 1) + 1).toNat : ℚ)

end

end A277323.P13380154264150004455

/-! ## A277323.P8574640314222578732

`A277324(n)-A277197(2*n)`
-/

namespace A277323.P8574640314222578732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277324 n - A277197 (2 * n)

end

end A277323.P8574640314222578732

/-! ## A277323.P18167216619479360495

`A277324(2*n)/A277324(n)`
-/

namespace A277323.P18167216619479360495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277324 (2 * n) : ℚ) / (A277324 n : ℚ)

end

end A277323.P18167216619479360495

/-! ## A277323.P12221446027213558054

`A003961(A277330(n))*A283989(2*n)`
-/

namespace A277323.P12221446027213558054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A277330 n).toNat * A283989 (2 * n)

end

end A277323.P12221446027213558054

/-!
# A277324: Odd bisection of A260443 (the even terms): a(n) = A260443((2*n)+1).

The programs for A277324, there is no canonical definition to state claims against.
-/

/-! ## A277324.P7476282368633765587

`A260443(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277324.P7476282368633765587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (2 * n + 1)

end

end A277324.P7476282368633765587

/-! ## A277324.P15144090667269986479

`A277198(n)*A284008(n)`
-/

namespace A277324.P15144090667269986479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277198 n * A284008 n

end

end A277324.P15144090667269986479

/-! ## A277324.P17344101816521722630

`A284576(n)*A284578(n)`
-/

namespace A277324.P17344101816521722630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284576 n * A284578 n

end

end A277324.P17344101816521722630

/-! ## A277324.P1011103396397597909

`A284577(n)*A000290(A284578(n))`
-/

namespace A277324.P1011103396397597909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284577 n * A000290 (A284578 n).toNat

end

end A277324.P1011103396397597909

/-! ## A277324.P989987995630745527

`A005940(1+A277189(n))`
-/

namespace A277324.P989987995630745527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A277189 n).toNat

end

end A277324.P989987995630745527

/-! ## A277324.P11457478980203070074

`A284563(n)*A284564(n)`
-/

namespace A277324.P11457478980203070074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284563 n * A284564 n

end

end A277324.P11457478980203070074

/-! ## A277324.P4360727556129917164

`A284577(n)*A284578(n)²`
-/

namespace A277324.P4360727556129917164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284577 n * A284578 n ^ 2

end

end A277324.P4360727556129917164

/-! ## A277324.P14920023689008369699

`A277323(n)+A277197(2*n)`
-/

namespace A277324.P14920023689008369699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277323 n + A277197 (2 * n)

end

end A277324.P14920023689008369699

/-! ## A277324.P6526258741357800407

`A284553(2*n+1)*A284564(n)`
-/

namespace A277324.P6526258741357800407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284553 (2 * n + 1) * A284564 n

end

end A277324.P6526258741357800407

/-! ## A277324.P12745220612378581444

`A284554(2*n+1)*A284563(n)`
-/

namespace A277324.P12745220612378581444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284554 (2 * n + 1) * A284563 n

end

end A277324.P12745220612378581444

/-! ## A277324.P7167707869035020676

`A277330(2*n+1)*A283989(2*n+1)`
-/

namespace A277324.P7167707869035020676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 (2 * n + 1) * A283989 (2 * n + 1)

end

end A277324.P7167707869035020676

/-! ## A277324.P11985384884835375535

`A284553(2*n+1)*A284554(2*n+1)`
-/

namespace A277324.P11985384884835375535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284553 (2 * n + 1) * A284554 (2 * n + 1)

end

end A277324.P11985384884835375535

/-! ## A277324.P5384950136336767169

`A283983(2*n+1)²*A277330(2*n+1)`
-/

namespace A277324.P5384950136336767169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 (2 * n + 1) ^ 2 * A277330 (2 * n + 1)

end

end A277324.P5384950136336767169

/-! ## A277324.P7000496864210573468

`A284576(n)/A284577(n)*A284576(n)`
-/

namespace A277324.P7000496864210573468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n : ℚ) / (A284577 n : ℚ) * (A284576 n : ℚ)

end

end A277324.P7000496864210573468

/-! ## A277324.P8291428357397405730

`A284576(n)²/A284577(n)`
-/

namespace A277324.P8291428357397405730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284576 n ^ 2 : ℚ) / (A284577 n : ℚ)

end

end A277324.P8291428357397405730

/-!
# A277325: Product of nonzero coefficients of the n-th Stern polynomial.

The programs for A277325, there is no canonical definition to state claims against.
-/

/-! ## A277325.P10129528225957461292

`A227349(A277020(n))`
-/

namespace A277325.P10129528225957461292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A277020 n).toNat

end

end A277325.P10129528225957461292

/-! ## A277325.P16161462997261676453

`A005361(A260443(n))`
-/

namespace A277325.P16161462997261676453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A260443 n).toNat

end

end A277325.P16161462997261676453

/-! ## A277325.P11286166930310656719

`∏{p}[A283983(n), val(A260443(n), #)]`
-/

namespace A277325.P11286166930310656719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A260443 n).toNat p

end

end A277325.P11286166930310656719

/-! ## A277325.P14280677529319016888

`∏{e}[A278243(n), #]`
-/

namespace A277325.P14280677529319016888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277325.P14280677529319016888

/-! ## A277325.P11875542738303279946

`A000005(gcd(A278544(n), A283989(n)))`
-/

namespace A277325.P11875542738303279946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A278544 n) (A283989 n))

end

end A277325.P11875542738303279946

/-!
# A277326: LCM of nonzero coefficients of the n-th Stern polynomial.

The programs for A277326, there is no canonical definition to state claims against.
-/

/-! ## A277326.P3682759517837311081

`A072411(A260443(n))`
-/

namespace A277326.P3682759517837311081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A260443 n).toNat

end

end A277326.P3682759517837311081

/-! ## A277326.P4601394921241671355

`A284569(A277020(n))`
-/

namespace A277326.P4601394921241671355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (A277020 n).toNat

end

end A277326.P4601394921241671355

/-! ## A277326.P12072504827628968306

`A243057(∏{e}[A260443(n), #])`
-/

namespace A277326.P12072504827628968306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A277326.P12072504827628968306

/-! ## A277326.P14852867663528993950

`A243074(∏{e}[A260443(n), #])`
-/

namespace A277326.P14852867663528993950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A277326.P14852867663528993950

/-! ## A277326.P11164745876328807780

`A243057(∏{e}[A277197(n-1)+a(n-1), #])` with `a(0)=1`
-/

namespace A277326.P11164745876328807780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A277197 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A277326.P11164745876328807780

/-!
# A277327: Number of distinct primes dividing gcd(A260443(n), A260443(n+1)): a(n) = A001221(A277198(n)).

The programs for A277327, the canonical program `A277327.P2410345354115847540` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277327 has offset 0).

The definition of A277327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277327.P17818559796443406232

`A001221(A277198(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277327.P17818559796443406232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A277198 n).toNat

end

end A277327.P17818559796443406232

namespace A277327

/-- `A001221(A277198(n))` -/
def P17818559796443406232.Spec : Prop :=
  ∀ n, P17818559796443406232.a n = A277327 n

end A277327

/-! ## A277327.P2410345354115847540

`A277314(or(1, n))-∏{e}[and(n+1, -n), #]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A277327

/-- `A277314(or(1, n))-∏{e}[and(n+1, -n), #]` -/
def P2410345354115847540.Spec : Prop :=
  ∀ n, P2410345354115847540.a n = A277327 n

theorem P2410345354115847540.correct : P2410345354115847540.Spec := by
  intro n
  simp only [A277327]

end A277327

/-! ## A277327.P17997971801460402771

`A057526(or(1, n))+1-∏{e}[and(n+1, -n), #]`
-/

namespace A277327.P17997971801460402771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (Nat.lor 1 n) + 1 - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A277327.P17997971801460402771

namespace A277327

/-- `A057526(or(1, n))+1-∏{e}[and(n+1, -n), #]` -/
def P17997971801460402771.Spec : Prop :=
  ∀ n, P17997971801460402771.a n = A277327 n

end A277327

/-! ## A277327.P13605075644559739382

`A057526(A168276(n+1))-A136480(n)`
-/

namespace A277327.P13605075644559739382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A168276 (n + 1)).toNat - A136480 n

end

end A277327.P13605075644559739382

namespace A277327

/-- `A057526(A168276(n+1))-A136480(n)` -/
def P13605075644559739382.Spec : Prop :=
  ∀ n, P13605075644559739382.a n = A277327 n

end A277327

/-! ## A277327.P7444445269380253312

`A277314(n)+A277314(n+1)-A277314(2*n+1)`
-/

namespace A277327.P7444445269380253312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 n + (A277314 (n + 1) - A277314 (2 * n + 1))

end

end A277327.P7444445269380253312

namespace A277327

/-- `A277314(n)+A277314(n+1)-A277314(2*n+1)` -/
def P7444445269380253312.Spec : Prop :=
  ∀ n, P7444445269380253312.a n = A277327 n

end A277327

/-! ## A277327.P13251145453877700601

`A000194(∑{p}[A278543(n), #])`
-/

namespace A277327.P13251145453877700601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A277327.P13251145453877700601

namespace A277327

/-- `A000194(∑{p}[A278543(n), #])` -/
def P13251145453877700601.Spec : Prop :=
  ∀ n, P13251145453877700601.a n = A277327 n

end A277327

/-! ## A277327.P11054933894250170340

`∑{p}[A278543(n), A001221(#)]`
-/

namespace A277327.P11054933894250170340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A277327.P11054933894250170340

namespace A277327

/-- `∑{p}[A278543(n), A001221(#)]` -/
def P11054933894250170340.Spec : Prop :=
  ∀ n, P11054933894250170340.a n = A277327 n

end A277327

/-! ## A277327.P4552429973615212273

`∑{p}[A278543(n), A001222(#)]`
-/

namespace A277327.P4552429973615212273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A277327.P4552429973615212273

namespace A277327

/-- `∑{p}[A278543(n), A001222(#)]` -/
def P4552429973615212273.Spec : Prop :=
  ∀ n, P4552429973615212273.a n = A277327 n

end A277327

/-! ## A277327.P16628946633010111777

`∑{p}[A278543(n), A032742(#)]`
-/

namespace A277327.P16628946633010111777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032742 p

end

end A277327.P16628946633010111777

namespace A277327

/-- `∑{p}[A278543(n), A032742(#)]` -/
def P16628946633010111777.Spec : Prop :=
  ∀ n, P16628946633010111777.a n = A277327 n

end A277327

/-! ## A277327.P2224499163835102309

`A001221(∏{p}[A278543(n), #])`
-/

namespace A277327.P2224499163835102309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A277327.P2224499163835102309

namespace A277327

/-- `A001221(∏{p}[A278543(n), #])` -/
def P2224499163835102309.Spec : Prop :=
  ∀ n, P2224499163835102309.a n = A277327 n

end A277327

/-! ## A277327.P14605047623734262162

`A001222(∏{p}[A278543(n), #])`
-/

namespace A277327.P14605047623734262162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A277327.P14605047623734262162

namespace A277327

/-- `A001222(∏{p}[A278543(n), #])` -/
def P14605047623734262162.Spec : Prop :=
  ∀ n, P14605047623734262162.a n = A277327 n

end A277327

/-! ## A277327.P11785128991030348730

`∑{e}[A278543(n), A046534(#)]`
-/

namespace A277327.P11785128991030348730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A046534 (Nat.factorization (f1 n).natAbs p)

end

end A277327.P11785128991030348730

namespace A277327

/-- `∑{e}[A278543(n), A046534(#)]` -/
def P11785128991030348730.Spec : Prop :=
  ∀ n, P11785128991030348730.a n = A277327 n

end A277327

/-! ## A277327.P3860389556658400260

`∑{p}[A278543(n), A046523(#)-1]`
-/

namespace A277327.P3860389556658400260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A046523 p - 1)

end

end A277327.P3860389556658400260

namespace A277327

/-- `∑{p}[A278543(n), A046523(#)-1]` -/
def P3860389556658400260.Spec : Prop :=
  ∀ n, P3860389556658400260.a n = A277327 n

end A277327

/-! ## A277327.P4032330526097097314

`∑{e}[A278543(n), A000194(A000194(#))]`
-/

namespace A277327.P4032330526097097314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000194 (A000194 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277327.P4032330526097097314

namespace A277327

/-- `∑{e}[A278543(n), A000194(A000194(#))]` -/
def P4032330526097097314.Spec : Prop :=
  ∀ n, P4032330526097097314.a n = A277327 n

end A277327

/-! ## A277327.P5045467905761281416

`∑{e}[A278543(n), A008620(A004526(#))]`
-/

namespace A277327.P5045467905761281416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008620 (A004526 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277327.P5045467905761281416

namespace A277327

/-- `∑{e}[A278543(n), A008620(A004526(#))]` -/
def P5045467905761281416.Spec : Prop :=
  ∀ n, P5045467905761281416.a n = A277327 n

end A277327

/-! ## A277327.P121140926960608330

`∑{e}[A278543(n), A008620(A008620(#))]`
-/

namespace A277327.P121140926960608330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008620 (A008620 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277327.P121140926960608330

namespace A277327

/-- `∑{e}[A278543(n), A008620(A008620(#))]` -/
def P121140926960608330.Spec : Prop :=
  ∀ n, P121140926960608330.a n = A277327 n

end A277327

/-! ## A277327.P13439698112012185356

`∑{e}[A278543(n), A014963(A089581(#))]`
-/

namespace A277327.P13439698112012185356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (A089581 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277327.P13439698112012185356

namespace A277327

/-- `∑{e}[A278543(n), A014963(A089581(#))]` -/
def P13439698112012185356.Spec : Prop :=
  ∀ n, P13439698112012185356.a n = A277327 n

end A277327

/-! ## A277327.P8890863601468933603

`∑{e}[A278543(n), A128924(A034444(#))]`
-/

namespace A277327.P8890863601468933603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A128924 (A034444 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277327.P8890863601468933603

namespace A277327

/-- `∑{e}[A278543(n), A128924(A034444(#))]` -/
def P8890863601468933603.Spec : Prop :=
  ∀ n, P8890863601468933603.a n = A277327 n

end A277327

/-! ## A277327.P14679094141808996521

`∑{e}[A278543(n), A014963(A258921(#))]`
-/

namespace A277327.P14679094141808996521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (A258921 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A277327.P14679094141808996521

namespace A277327

/-- `∑{e}[A278543(n), A014963(A258921(#))]` -/
def P14679094141808996521.Spec : Prop :=
  ∀ n, P14679094141808996521.a n = A277327 n

end A277327

/-! ## A277327.P7789978308326520046

`∑{p}[A278543(n), A278543(A046523(#²))]`
-/

namespace A277327.P7789978308326520046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A278543 (A046523 (p ^ 2)).toNat

end

end A277327.P7789978308326520046

namespace A277327

/-- `∑{p}[A278543(n), A278543(A046523(#²))]` -/
def P7789978308326520046.Spec : Prop :=
  ∀ n, P7789978308326520046.a n = A277327 n

end A277327

/-!
# A277328: Number of primes (counted with multiplicity) dividing gcd(A260443(n), A260443(n+1)): a(n) = A001222(A277198(n)).

The programs for A277328, there is no canonical definition to state claims against.
-/

/-! ## A277328.P1891153939342484420

`A001222(A277198(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277328.P1891153939342484420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A277198 n).toNat

end

end A277328.P1891153939342484420

/-! ## A277328.P6118400951049054067

`A007306(n+1)-A284009(n)`
-/

namespace A277328.P6118400951049054067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A284009 n

end

end A277328.P6118400951049054067

/-! ## A277328.P18296698219887704976

`A002487(n+1)+A002487(n)-A284009(n)`
-/

namespace A277328.P18296698219887704976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A002487 n - A284009 n)

end

end A277328.P18296698219887704976

/-! ## A277328.P4242924346578245367

`(A007306(n+1)%A284009(n))%A007306(n)`
-/

namespace A277328.P4242924346578245367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A007306 (n + 1)) (A284009 n)) (A007306 n)

end

end A277328.P4242924346578245367

/-! ## A277328.P14969484609738156588

`A114214(2*n)-A284009(n)`
-/

namespace A277328.P14969484609738156588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (2 * n) - A284009 n

end

end A277328.P14969484609738156588

/-! ## A277328.P5120479362704527887

`A002487(2*n+1)-A284009(n)`
-/

namespace A277328.P5120479362704527887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * n + 1) - A284009 n

end

end A277328.P5120479362704527887

/-! ## A277328.P13958146712386566410

`A002487(A005408(n))%A284009(n)`
-/

namespace A277328.P13958146712386566410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (A005408 n).toNat) (A284009 n)

end

end A277328.P13958146712386566410

/-! ## A277328.P1067701107022699446

`A002487(record[A004442(n)])%A284009(n)`
-/

namespace A277328.P1067701107022699446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A284009 n)

end

end A277328.P1067701107022699446

/-! ## A277328.P1058612826009710635

`∑{e}[A278543(n), #]`
-/

namespace A277328.P1058612826009710635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277328.P1058612826009710635

/-! ## A277328.P6937857407995323473

`A001222(A278543(n))`
-/

namespace A277328.P6937857407995323473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278543 n).toNat

end

end A277328.P6937857407995323473

/-!
# A277329: a(0)=0, for n >= 1, a(2n) = a(n)+1, a(4n-1) = a(n)+1, a(4n+1) = a(n)+1.

The programs for A277329, the canonical program `A277329.P17406840914073283256` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277329 has offset 0).

The definition of A277329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277329.P1930850636939960943

`A061395(A260443(n))`
-/

namespace A277329.P1930850636939960943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A260443 n).toNat

end

end A277329.P1930850636939960943

namespace A277329

/-- `A061395(A260443(n))` -/
def P1930850636939960943.Spec : Prop :=
  ∀ n, P1930850636939960943.a n = A277329 n

end A277329

/-! ## A277329.P17406840914073283256

`a(floor(lcm(2, n+1)/4))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277329

/-- `a(floor(lcm(2, n+1)/4))+1` -/
def P17406840914073283256.Spec : Prop :=
  ∀ n, (P17406840914073283256.a n : ℤ) = A277329 n

theorem P17406840914073283256.correct : P17406840914073283256.Spec := by
  intro n
  simp only [A277329]

end A277329

/-! ## A277329.P4546485752166133542

`a(floor(gcd(n+1, ∑[n])/2))+1` with `a(0)=0`
-/

namespace A277329.P4546485752166133542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋.toNat + 1

end

end A277329.P4546485752166133542

namespace A277329

/-- `a(floor(gcd(n+1, ∑[n])/2))+1` -/
def P4546485752166133542.Spec : Prop :=
  ∀ n, (P4546485752166133542.a n : ℤ) = A277329 n

end A277329

/-! ## A277329.P18001881533257027139

`a(floor(round(n/(n%2+1))/2))+1` with `a(0)=0`
-/

namespace A277329.P18001881533257027139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(SequenceMachineLib.roundAway ((n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)) : ℚ) / 2⌋.toNat + 1

end

end A277329.P18001881533257027139

namespace A277329

/-- `a(floor(round(n/(n%2+1))/2))+1` -/
def P18001881533257027139.Spec : Prop :=
  ∀ n, (P18001881533257027139.a n : ℤ) = A277329 n

end A277329

/-! ## A277329.P15160567397562564771

`A290251(A184617(n))`
-/

namespace A277329.P15160567397562564771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A184617 n).toNat

end

end A277329.P15160567397562564771

namespace A277329

/-- `A290251(A184617(n))` -/
def P15160567397562564771.Spec : Prop :=
  ∀ n, P15160567397562564771.a n = A277329 n

end A277329

/-! ## A277329.P12878238343518927565

`A033265(xor(n, A008486(n)))`
-/

namespace A277329.P12878238343518927565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (Int.xor (n : ℤ) (A008486 n)).toNat

end

end A277329.P12878238343518927565

namespace A277329

/-- `A033265(xor(n, A008486(n)))` -/
def P12878238343518927565.Spec : Prop :=
  ∀ n, P12878238343518927565.a n = A277329 n

end A277329

/-! ## A277329.P15432253061007491600

`A057526(A004277(n))`
-/

namespace A277329.P15432253061007491600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A004277 n).toNat

end

end A277329.P15432253061007491600

namespace A277329

/-- `A057526(A004277(n))` -/
def P15432253061007491600.Spec : Prop :=
  ∀ n, P15432253061007491600.a n = A277329 n

end A277329

/-! ## A277329.P2906797623615933190

`A057526(A004275(n+1))`
-/

namespace A277329.P2906797623615933190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A004275 (n + 1)).toNat

end

end A277329.P2906797623615933190

namespace A277329

/-- `A057526(A004275(n+1))` -/
def P2906797623615933190.Spec : Prop :=
  ∀ n, P2906797623615933190.a n = A277329 n

end A277329

/-! ## A277329.P4324553028265371781

`A057526(A092535(n+1))`
-/

namespace A277329.P4324553028265371781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A092535 (n + 1)).toNat

end

end A277329.P4324553028265371781

namespace A277329

/-- `A057526(A092535(n+1))` -/
def P4324553028265371781.Spec : Prop :=
  ∀ n, P4324553028265371781.a n = A277329 n

end A277329

/-! ## A277329.P6124376966866276810

`A277314(lt[n, A255051(abs(1-n)+1)])`
-/

namespace A277329.P6124376966866276810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255051 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A277329.P6124376966866276810

namespace A277329

/-- `A277314(lt[n, A255051(abs(1-n)+1)])` -/
def P6124376966866276810.Spec : Prop :=
  ∀ n, P6124376966866276810.a n = A277329 n

end A277329

/-! ## A277329.P1835769199018100937

`A057526(A004760(n+2))`
-/

namespace A277329.P1835769199018100937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A004760 (n + 2)).toNat

end

end A277329.P1835769199018100937

namespace A277329

/-- `A057526(A004760(n+2))` -/
def P1835769199018100937.Spec : Prop :=
  ∀ n, P1835769199018100937.a n = A277329 n

end A277329

/-! ## A277329.P8327996742936462045

`A000120(A361676(2*n))`
-/

namespace A277329.P8327996742936462045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A361676 (2 * n)).toNat

end

end A277329.P8327996742936462045

namespace A277329

/-- `A000120(A361676(2*n))` -/
def P8327996742936462045.Spec : Prop :=
  ∀ n, P8327996742936462045.a n = A277329 n

end A277329

/-! ## A277329.P11627033048578392167

`A080791(xor(n, 3*n))`
-/

namespace A277329.P11627033048578392167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.xor n (3 * n))

end

end A277329.P11627033048578392167

namespace A277329

/-- `A080791(xor(n, 3*n))` -/
def P11627033048578392167.Spec : Prop :=
  ∀ n, P11627033048578392167.a n = A277329 n

end A277329

/-! ## A277329.P4418732004071925152

`A080791(A178729(n))`
-/

namespace A277329.P4418732004071925152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A178729 n).toNat

end

end A277329.P4418732004071925152

namespace A277329

/-- `A080791(A178729(n))` -/
def P4418732004071925152.Spec : Prop :=
  ∀ n, P4418732004071925152.a n = A277329 n

end A277329

/-! ## A277329.P1852912994775694717

`A277327(record[lcm(2, n)])`
-/

namespace A277329.P1852912994775694717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A277329.P1852912994775694717

namespace A277329

/-- `A277327(record[lcm(2, n)])` -/
def P1852912994775694717.Spec : Prop :=
  ∀ n, P1852912994775694717.a n = A277329 n

end A277329

/-! ## A277329.P2270716691046517192

`A277327(A130824(n))`
-/

namespace A277329.P2270716691046517192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A130824 n).toNat

end

end A277329.P2270716691046517192

namespace A277329

/-- `A277327(A130824(n))` -/
def P2270716691046517192.Spec : Prop :=
  ∀ n, P2270716691046517192.a n = A277329 n

end A277329

/-! ## A277329.P8933897550245361080

`A057526(A056530(n+1))`
-/

namespace A277329.P8933897550245361080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A056530 (n + 1)).toNat

end

end A277329.P8933897550245361080

namespace A277329

/-- `A057526(A056530(n+1))` -/
def P8933897550245361080.Spec : Prop :=
  ∀ n, P8933897550245361080.a n = A277329 n

end A277329

/-! ## A277329.P9903675210465558005

`A057526(A131098(n+1))`
-/

namespace A277329.P9903675210465558005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (A131098 (n + 1)).toNat

end

end A277329.P9903675210465558005

namespace A277329

/-- `A057526(A131098(n+1))` -/
def P9903675210465558005.Spec : Prop :=
  ∀ n, P9903675210465558005.a n = A277329 n

end A277329

/-! ## A277329.P1504107589729104857

`A277327(A111284(n+1))`
-/

namespace A277329.P1504107589729104857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277327 (A111284 (n + 1)).toNat

end

end A277329.P1504107589729104857

namespace A277329

/-- `A277327(A111284(n+1))` -/
def P1504107589729104857.Spec : Prop :=
  ∀ n, P1504107589729104857.a n = A277329 n

end A277329

/-! ## A277329.P17745032682169890429

`A057526(4*n+1)`
-/

namespace A277329.P17745032682169890429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (4 * n + 1)

end

end A277329.P17745032682169890429

namespace A277329

/-- `A057526(4*n+1)` -/
def P17745032682169890429.Spec : Prop :=
  ∀ n, P17745032682169890429.a n = A277329 n

end A277329

/-!
# A277330: a(0)=1, a(1)=2, a(2n) = A003961(a(n)), a(2n+1) = lcm(a(n),a(n+1))/gcd(a(n),a(n+1)).

The programs for A277330, there is no canonical definition to state claims against.
-/

/-! ## A277330.P1248659579764142002

`A019565(A264977(n))`
-/

namespace A277330.P1248659579764142002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A264977 n).toNat

end

end A277330.P1248659579764142002

/-! ## A277330.P7398916676835637847

`A007913(A260443(n))`
-/

namespace A277330.P7398916676835637847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A260443 n).toNat

end

end A277330.P7398916676835637847

/-! ## A277330.P9394938745221414485

`A019565(n-A265397(n))`
-/

namespace A277330.P9394938745221414485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((n : ℤ) - A265397 n).toNat

end

end A277330.P9394938745221414485

/-! ## A277330.P11919998609094741406

`A260443(n)/A283989(n)`
-/

namespace A277330.P11919998609094741406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 n : ℚ) / (A283989 n : ℚ)

end

end A277330.P11919998609094741406

/-! ## A277330.P16136417029505879806

`A260443(n)/A283983(n)²`
-/

namespace A277330.P16136417029505879806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260443 n : ℚ) / (A283983 n ^ 2 : ℚ)

end

end A277330.P16136417029505879806

/-! ## A277330.P11577396271274713501

`A284553(n)/A283989(n)*A284554(n)`
-/

namespace A277330.P11577396271274713501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284553 n : ℚ) / (A283989 n : ℚ) * (A284554 n : ℚ)

end

end A277330.P11577396271274713501

/-!
# A277331: a(n) = A253563(A003714(n)).

The programs for A277331, the canonical program `A277331.P10020327164330900423` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277331 has offset 0).

The definition of A277331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277331.P10020327164330900423

`A253563(A003714(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277331

/-- `A253563(A003714(n))` -/
def P10020327164330900423.Spec : Prop :=
  ∀ n, P10020327164330900423.a n = A277331 n

theorem P10020327164330900423.correct : P10020327164330900423.Spec := by
  intro n
  simp only [A277331]

end A277331

/-! ## A277331.P6157064253021965302

`A122111(A277006(n))`
-/

namespace A277331.P6157064253021965302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A277006 n).toNat

end

end A277331.P6157064253021965302

namespace A277331

/-- `A122111(A277006(n))` -/
def P6157064253021965302.Spec : Prop :=
  ∀ n, P6157064253021965302.a n = A277331 n

end A277331

/-! ## A277331.P11930714445473194215

`A057335(A048679(n))`
-/

namespace A277331.P11930714445473194215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A048679 n).toNat

end

end A277331.P11930714445473194215

namespace A277331

/-- `A057335(A048679(n))` -/
def P11930714445473194215.Spec : Prop :=
  ∀ n, P11930714445473194215.a n = A277331 n

end A277331

/-! ## A277331.P13447770972390553433

`A253563(record[A090077(n)])`
-/

namespace A277331.P13447770972390553433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277331.P13447770972390553433

namespace A277331

/-- `A253563(record[A090077(n)])` -/
def P13447770972390553433.Spec : Prop :=
  ∀ n, P13447770972390553433.a n = A277331 n

end A277331

/-! ## A277331.P5837938131647829945

`A253563(A022340(n)/2)`
-/

namespace A277331.P5837938131647829945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A277331.P5837938131647829945

namespace A277331

/-- `A253563(A022340(n)/2)` -/
def P5837938131647829945.Spec : Prop :=
  ∀ n, P5837938131647829945.a n = A277331 n

end A277331

/-! ## A277331.P9729354646600769455

`A253563(eq[1, A246596(n)])`
-/

namespace A277331.P9729354646600769455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277331.P9729354646600769455

namespace A277331

/-- `A253563(eq[1, A246596(n)])` -/
def P9729354646600769455.Spec : Prop :=
  ∀ n, P9729354646600769455.a n = A277331 n

end A277331

/-! ## A277331.P13700437839180167884

`A253563(lt[A246596(n), 2])`
-/

namespace A277331.P13700437839180167884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A277331.P13700437839180167884

namespace A277331

/-- `A253563(lt[A246596(n), 2])` -/
def P13700437839180167884.Spec : Prop :=
  ∀ n, P13700437839180167884.a n = A277331 n

end A277331

/-! ## A277331.P10206894191544350318

`A253563(record[and(n, A004396(n))])`
-/

namespace A277331.P10206894191544350318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A004396 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277331.P10206894191544350318

namespace A277331

/-- `A253563(record[and(n, A004396(n))])` -/
def P10206894191544350318.Spec : Prop :=
  ∀ n, P10206894191544350318.a n = A277331 n

end A277331

/-! ## A277331.P17980424081984474380

`filter[A253563(n), A341629(#)]`
-/

namespace A277331.P17980424081984474380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A277331.P17980424081984474380

namespace A277331

/-- `filter[A253563(n), A341629(#)]` -/
def P17980424081984474380.Spec : Prop :=
  ∀ n, P17980424081984474380.a n = A277331 n

end A277331

/-!
# A277332: a(n) = A253565(A003714(n)).

The programs for A277332, the canonical program `A277332.P11800124899377962376` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277332 has offset 0).

The definition of A277332 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A253565, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277332.P11800124899377962376

`A253565(A003714(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A277332

/-- `A253565(A003714(n))` -/
def P11800124899377962376.Spec : Prop :=
  ∀ n, P11800124899377962376.a n = A277332 n

theorem P11800124899377962376.correct : P11800124899377962376.Spec := by
  intro n
  simp only [A277332]

end A277332

/-! ## A277332.P6592971544819396109

`A253565(A022340(n)/2)`
-/

namespace A277332.P6592971544819396109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A277332.P6592971544819396109

namespace A277332

/-- `A253565(A022340(n)/2)` -/
def P6592971544819396109.Spec : Prop :=
  ∀ n, P6592971544819396109.a n = A277332 n

end A277332

/-! ## A277332.P12821311385117435013

`A253565(eq[1, A085357(n)])`
-/

namespace A277332.P12821311385117435013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277332.P12821311385117435013

namespace A277332

/-- `A253565(eq[1, A085357(n)])` -/
def P12821311385117435013.Spec : Prop :=
  ∀ n, P12821311385117435013.a n = A277332 n

end A277332

/-! ## A277332.P14887496495792652678

`A253565(eq[1, A246674(n)])`
-/

namespace A277332.P14887496495792652678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277332.P14887496495792652678

namespace A277332

/-- `A253565(eq[1, A246674(n)])` -/
def P14887496495792652678.Spec : Prop :=
  ∀ n, P14887496495792652678.a n = A277332 n

end A277332

/-! ## A277332.P16335219652714827559

`A253565(eq[1, A085405(2*n)])`
-/

namespace A277332.P16335219652714827559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277332.P16335219652714827559

namespace A277332

/-- `A253565(eq[1, A085405(2*n)])` -/
def P16335219652714827559.Spec : Prop :=
  ∀ n, P16335219652714827559.a n = A277332 n

end A277332

/-! ## A277332.P1717525582166369399

`A253565(eq[1, A085405(n)]/2)`
-/

namespace A277332.P1717525582166369399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2)).toNat

end

end A277332.P1717525582166369399

namespace A277332

/-- `A253565(eq[1, A085405(n)]/2)` -/
def P1717525582166369399.Spec : Prop :=
  ∀ n, P1717525582166369399.a n = A277332 n

end A277332

/-! ## A277332.P2813598443000141173

`A241916(A277006(n))`
-/

namespace A277332.P2813598443000141173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A277006 n).toNat

end

end A277332.P2813598443000141173

namespace A277332

/-- `A241916(A277006(n))` -/
def P2813598443000141173.Spec : Prop :=
  ∀ n, P2813598443000141173.a n = A277332 n

end A277332

/-!
# A277333: Left inverse of A260443, giving 0 as a result when n is outside of the range of A260443.

The programs for A277333, there is no canonical definition to state claims against.
-/

/-! ## A277333.P11006977127054729790

`A048675(n+1)*A389449(n+1)`
-/

namespace A277333.P11006977127054729790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) * A389449 (n + 1)

end

end A277333.P11006977127054729790

/-! ## A277333.P16045425102109337596

`A162474(n+1)*A389449(n+1)`
-/

namespace A277333.P16045425102109337596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162474 (n + 1) * A389449 (n + 1)

end

end A277333.P16045425102109337596

/-! ## A277333.P6529572326407873892

`lcm(A008683(A046212(n+1)), A248663(n+1))`
-/

namespace A277333.P6529572326407873892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A046212 (n + 1)).toNat) (A248663 (n + 1))

end

end A277333.P6529572326407873892

/-! ## A277333.P8952017158942337499

`C(A248663(n+1), A141476(A280699(n+1)))`
-/

namespace A277333.P8952017158942337499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A248663 (n + 1)).toNat (A141476 (A280699 (n + 1)).toNat).toNat

end

end A277333.P8952017158942337499

/-! ## A277333.P16012571466918523233

`C(A248663(n+1), A165500(A280703(n+1)))`
-/

namespace A277333.P16012571466918523233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A248663 (n + 1)).toNat (A165500 (A280703 (n + 1)).toNat).toNat

end

end A277333.P16012571466918523233

/-!
# A277334: Numbers n, that apart from 2 are all odd and for which n/(largest prime dividing n) is squarefree.

The programs for A277334, the canonical program `A277334.P16407157094761775030` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277334 has offset 1).

The definition of A277334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6759 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277334.P16407157094761775030

`eq[1, A008683(A278525(n+1))²]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A277334

/-- `eq[1, A008683(A278525(n+1))²]+1` -/
def P16407157094761775030.Spec : Prop :=
  ∀ n, (P16407157094761775030.a n : ℤ) = A277334 (n + 1)

theorem P16407157094761775030.correct : P16407157094761775030.Spec := by
  intro n
  simp only [A277334, Nat.add_sub_cancel]

end A277334

/-! ## A277334.P8276514866787219331

`record[A008683(A278525(n+1))²*A141310(n)]`
-/

namespace A277334.P8276514866787219331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278525 (n + 1)).toNat ^ 2 * A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277334.P8276514866787219331

namespace A277334

/-- `record[A008683(A278525(n+1))²*A141310(n)]` -/
def P8276514866787219331.Spec : Prop :=
  ∀ n, P8276514866787219331.a n = A277334 (n + 1)

end A277334

/-! ## A277334.P12151652814142302309

`∩[A004274(n), A392698(n+1)]`
-/

namespace A277334.P12151652814142302309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277334.P12151652814142302309

namespace A277334

/-- `∩[A004274(n), A392698(n+1)]` -/
def P12151652814142302309.Spec : Prop :=
  ∀ n, (P12151652814142302309.a n : ℤ) = A277334 (n + 1)

end A277334

/-! ## A277334.P1780091008346619190

`eq[A086568(n+1), A278525(n+1)]+1`
-/

namespace A277334.P1780091008346619190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277334.P1780091008346619190

namespace A277334

/-- `eq[A086568(n+1), A278525(n+1)]+1` -/
def P1780091008346619190.Spec : Prop :=
  ∀ n, (P1780091008346619190.a n : ℤ) = A277334 (n + 1)

end A277334

/-! ## A277334.P1588360968848626427

`record[A141310(n)/A000688(A052126(n+1))]`
-/

namespace A277334.P1588360968848626427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 n : ℚ) / (A000688 (A052126 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277334.P1588360968848626427

namespace A277334

/-- `record[A141310(n)/A000688(A052126(n+1))]` -/
def P1588360968848626427.Spec : Prop :=
  ∀ n, P1588360968848626427.a n = (A277334 (n + 1) : ℚ)

end A277334

/-! ## A277334.P7425469382853526250

`A141310(eq[A086568(n+1), A278525(n+1)])`
-/

namespace A277334.P7425469382853526250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277334.P7425469382853526250

namespace A277334

/-- `A141310(eq[A086568(n+1), A278525(n+1)])` -/
def P7425469382853526250.Spec : Prop :=
  ∀ n, P7425469382853526250.a n = A277334 (n + 1)

end A277334

/-! ## A277334.P17795373947228010087

`record[A032742(n+1)/A008833(A052126(n+1))]`
-/

namespace A277334.P17795373947228010087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A008833 (A052126 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277334.P17795373947228010087

namespace A277334

/-- `record[A032742(n+1)/A008833(A052126(n+1))]` -/
def P17795373947228010087.Spec : Prop :=
  ∀ n, P17795373947228010087.a n = (A277334 (n + 1) : ℚ)

end A277334

/-! ## A277334.P15947613053462263130

`∪[A038249(n), A352830(n+1)]`
-/

namespace A277334.P15947613053462263130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277334.P15947613053462263130

namespace A277334

/-- `∪[A038249(n), A352830(n+1)]` -/
def P15947613053462263130.Spec : Prop :=
  ∀ n, (P15947613053462263130.a n : ℤ) = A277334 (n + 1)

end A277334

/-! ## A277334.P13591747000077477975

`∪[A062092(n), A352830(n+1)]`
-/

namespace A277334.P13591747000077477975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277334.P13591747000077477975

namespace A277334

/-- `∪[A062092(n), A352830(n+1)]` -/
def P13591747000077477975.Spec : Prop :=
  ∀ n, (P13591747000077477975.a n : ℤ) = A277334 (n + 1)

end A277334

/-! ## A277334.P13986234471569617412

`eq[A025480(A114099(n)²), A046769(n)]`
-/

namespace A277334.P13986234471569617412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A114099 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277334.P13986234471569617412

namespace A277334

/-- `eq[A025480(A114099(n)²), A046769(n)]` -/
def P13986234471569617412.Spec : Prop :=
  ∀ n, (P13986234471569617412.a n : ℤ) = A277334 (n + 1)

end A277334

/-!
# A277335: Fibbinary numbers multiplied by three: a(n) = 3*A003714(n); Numbers where all 1-bits occur in runs of even length.

The programs for A277335, the canonical program `A277335.P13601565206693033398` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277335 has offset 0).

The definition of A277335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277335.P13601565206693033398

`3*A003714(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A277335

/-- `3*A003714(n)` -/
def P13601565206693033398.Spec : Prop :=
  ∀ n, P13601565206693033398.a n = A277335 n

theorem P13601565206693033398.correct : P13601565206693033398.Spec := by
  intro n
  simp only [A277335]

end A277335

/-! ## A277335.P15904544759723629645

`A048297(n)-1`
-/

namespace A277335.P15904544759723629645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048297 n - 1

end

end A277335.P15904544759723629645

namespace A277335

/-- `A048297(n)-1` -/
def P15904544759723629645.Spec : Prop :=
  ∀ n, P15904544759723629645.a n = A277335 n

theorem P15904544759723629645.correct : P15904544759723629645.Spec := by
  intro n
  simp only [A277335, Nat.add_sub_cancel, A277335.P15904544759723629645.a, A277335.P13601565206693033398.a, A003714, A003714.P565032106299634425.a, A048297, A048297.P13500270705688942977.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, A002251, A002251.P8899938186717577679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277335

/-! ## A277335.P6181423461011520517

`3/2*A022340(n)`
-/

namespace A277335.P6181423461011520517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022340 n : ℚ)

end

end A277335.P6181423461011520517

namespace A277335

/-- `3/2*A022340(n)` -/
def P6181423461011520517.Spec : Prop :=
  ∀ n, P6181423461011520517.a n = (A277335 n : ℚ)

end A277335

/-! ## A277335.P6331545023172036190

`3*(A022341(n)-1)/4`
-/

namespace A277335.P6331545023172036190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A022341 n - 1 : ℚ) / 4)

end

end A277335.P6331545023172036190

namespace A277335

/-- `3*(A022341(n)-1)/4` -/
def P6331545023172036190.Spec : Prop :=
  ∀ n, P6331545023172036190.a n = (A277335 n : ℚ)

theorem P6331545023172036190.correct : P6331545023172036190.Spec := by
  intro n
  simp only [A277335, Nat.add_sub_cancel, A277335.P6331545023172036190.a, A277335.P13601565206693033398.a, A003714, A003714.P565032106299634425.a, A022341, A022341.P2847779761458071812.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, A002251, A002251.P8899938186717577679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277335

/-! ## A277335.P3306789222848576034

`A022340(n)+A003714(n)`
-/

namespace A277335.P3306789222848576034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n + A003714 n

end

end A277335.P3306789222848576034

namespace A277335

/-- `A022340(n)+A003714(n)` -/
def P3306789222848576034.Spec : Prop :=
  ∀ n, P3306789222848576034.a n = A277335 n

end A277335

/-! ## A277335.P15658963051437525495

`A022341(n)-(A003714(n)+1)`
-/

namespace A277335.P15658963051437525495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n - (A003714 n + 1)

end

end A277335.P15658963051437525495

namespace A277335

/-- `A022341(n)-(A003714(n)+1)` -/
def P15658963051437525495.Spec : Prop :=
  ∀ n, P15658963051437525495.a n = A277335 n

theorem P15658963051437525495.correct : P15658963051437525495.Spec := by
  intro n
  simp only [A277335, Nat.add_sub_cancel, A277335.P15658963051437525495.a, A277335.P13601565206693033398.a, A003714, A003714.P565032106299634425.a, A022341, A022341.P2847779761458071812.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, A002251, A002251.P8899938186717577679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277335

/-! ## A277335.P6057416910151152328

`∪[A290258(n+2), A001196(n)]`
-/

namespace A277335.P6057416910151152328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290258 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277335.P6057416910151152328

namespace A277335

/-- `∪[A290258(n+2), A001196(n)]` -/
def P6057416910151152328.Spec : Prop :=
  ∀ n, (P6057416910151152328.a n : ℤ) = A277335 n

end A277335

/-! ## A277335.P6374826362422653134

`∪[A002446(n), A290258(n+2)]`
-/

namespace A277335.P6374826362422653134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002446 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290258 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277335.P6374826362422653134

namespace A277335

/-- `∪[A002446(n), A290258(n+2)]` -/
def P6374826362422653134.Spec : Prop :=
  ∀ n, (P6374826362422653134.a n : ℤ) = A277335 n

end A277335

/-! ## A277335.P10772730672241285978

`∪[A290258(n+2), A016913(n)]`
-/

namespace A277335.P10772730672241285978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290258 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277335.P10772730672241285978

namespace A277335

/-- `∪[A290258(n+2), A016913(n)]` -/
def P10772730672241285978.Spec : Prop :=
  ∀ n, (P10772730672241285978.a n : ℤ) = A277335 n

end A277335

/-! ## A277335.P18035940075274282339

`∪[A097262(n), A290258(n+2)]`
-/

namespace A277335.P18035940075274282339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290258 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277335.P18035940075274282339

namespace A277335

/-- `∪[A097262(n), A290258(n+2)]` -/
def P18035940075274282339.Spec : Prop :=
  ∀ n, (P18035940075274282339.a n : ℤ) = A277335 n

end A277335

/-! ## A277335.P15406616534204983489

`A295897(A000201(n+1))`
-/

namespace A277335.P15406616534204983489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (A000201 (n + 1)).toNat

end

end A277335.P15406616534204983489

namespace A277335

/-- `A295897(A000201(n+1))` -/
def P15406616534204983489.Spec : Prop :=
  ∀ n, P15406616534204983489.a n = A277335 n

end A277335

/-! ## A277335.P11371536893759223719

`A295897(A066096(n+1))`
-/

namespace A277335.P11371536893759223719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (A066096 (n + 1)).toNat

end

end A277335.P11371536893759223719

namespace A277335

/-- `A295897(A066096(n+1))` -/
def P11371536893759223719.Spec : Prop :=
  ∀ n, P11371536893759223719.a n = A277335 n

end A277335

/-! ## A277335.P13317463816803518738

`A295897(A022342(n+1)+1)`
-/

namespace A277335.P13317463816803518738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (A022342 (n + 1) + 1).toNat

end

end A277335.P13317463816803518738

namespace A277335

/-- `A295897(A022342(n+1)+1)` -/
def P13317463816803518738.Spec : Prop :=
  ∀ n, P13317463816803518738.a n = A277335 n

end A277335

/-! ## A277335.P15133397794763106116

`A003714(A022342(n+1))+A003714(n)`
-/

namespace A277335.P15133397794763106116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A022342 (n + 1)).toNat + A003714 n

end

end A277335.P15133397794763106116

namespace A277335

/-- `A003714(A022342(n+1))+A003714(n)` -/
def P15133397794763106116.Spec : Prop :=
  ∀ n, P15133397794763106116.a n = A277335 n

end A277335

/-! ## A277335.P1797613521948441969

`record[xor(n, 2*n)]`
-/

namespace A277335.P1797613521948441969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277335.P1797613521948441969

namespace A277335

/-- `record[xor(n, 2*n)]` -/
def P1797613521948441969.Spec : Prop :=
  ∀ n, (P1797613521948441969.a n : ℤ) = A277335 n

end A277335

/-! ## A277335.P5054711196604663455

`record[and(2*n, 3*n)+n]`
-/

namespace A277335.P5054711196604663455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (3 * n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277335.P5054711196604663455

namespace A277335

/-- `record[and(2*n, 3*n)+n]` -/
def P5054711196604663455.Spec : Prop :=
  ∀ n, (P5054711196604663455.a n : ℤ) = A277335 n

end A277335

/-! ## A277335.P18282333871725815265

`record[3*(n-and(n, 2*n))]`
-/

namespace A277335.P18282333871725815265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - (Nat.land n (2 * n) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277335.P18282333871725815265

namespace A277335

/-- `record[3*(n-and(n, 2*n))]` -/
def P18282333871725815265.Spec : Prop :=
  ∀ n, P18282333871725815265.a n = A277335 n

end A277335

/-! ## A277335.P13669181195268006756

`record[-(3*or(2*n, -n))]`
-/

namespace A277335.P13669181195268006756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 * Int.lor (2 * n : ℤ) (-(n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277335.P13669181195268006756

namespace A277335

/-- `record[-(3*or(2*n, -n))]` -/
def P13669181195268006756.Spec : Prop :=
  ∀ n, P13669181195268006756.a n = A277335 n

end A277335

/-! ## A277335.P6499550975586868395

`xor(1, record[xor(n, n+1+n)])`
-/

namespace A277335.P6499550975586868395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A277335.P6499550975586868395

namespace A277335

/-- `xor(1, record[xor(n, n+1+n)])` -/
def P6499550975586868395.Spec : Prop :=
  ∀ n, (P6499550975586868395.a n : ℤ) = A277335 n

end A277335

/-! ## A277335.P411718851021774123

`record[3*(or(n, 2*n)-2*n)]`
-/

namespace A277335.P411718851021774123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.lor n (2 * n) : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277335.P411718851021774123

namespace A277335

/-- `record[3*(or(n, 2*n)-2*n)]` -/
def P411718851021774123.Spec : Prop :=
  ∀ n, P411718851021774123.a n = A277335 n

end A277335

/-!
# A277337: Number of pairs of functions (f,g) from a set of n elements into itself that are generalized reflexive inverses of each other.

The programs for A277337, the canonical program `A277337.P16045678672773206160` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277337 has offset 0).

The definition of A277337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277337.P16045678672773206160

`∑{#}[n, n!/(n-#)!*C(n, #)*#^(2*(n-#))]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277337

/-- `∑{#}[n, n!/(n-#)!*C(n, #)*#^(2*(n-#))]` -/
def P16045678672773206160.Spec : Prop :=
  ∀ n, P16045678672773206160.a n = (A277337 n : ℚ)

end A277337

/-!
# A277338: Reverse and Add! sequence starting with 295.

The programs for A277338, there is no canonical definition to state claims against.
-/

/-! ## A277338.P10526222941158487889

`A004086(a(n-1))+a(n-1)` with `a(0)=295`
-/

namespace A277338.P10526222941158487889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [295] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 1)

end

end A277338.P10526222941158487889

/-!
# A277341: a(n) is the nearest integer to prime(n)^prime(n+1)/prime(n+1)^prime(n).

The programs for A277341, there is no canonical definition to state claims against.
-/

/-! ## A277341.P8376268825571786388

`round(A053089(n+1)/A078422(n+1))`
-/

namespace A277341.P8376268825571786388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053089 (n + 1) : ℚ) / (A078422 (n + 1) : ℚ))

end

end A277341.P8376268825571786388

/-!
# A277342: a(n) = b(n^2) where b(n) = n-99*floor((n-1)/99).

The programs for A277342, the canonical program `A277342.P12687599225290150612` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277342 has offset 0).

The definition of A277342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277342.P12687599225290150612

`(n²-1)%99+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277342

/-- `(n²-1)%99+1` -/
def P12687599225290150612.Spec : Prop :=
  ∀ n, P12687599225290150612.a n = A277342 n

theorem P12687599225290150612.correct : P12687599225290150612.Spec := by
  intro n
  simp only [A277342]

end A277342

/-!
# A277343: a(1) is 4. a(n) is the least semiprime q (A001358) greater than p = a(n-1), such that p/q is a new minimum.

The programs for A277343, there is no canonical definition to state claims against.
-/

/-! ## A277343.P34524251207449916

`A088739(A124696(n)-n)`
-/

namespace A277343.P34524251207449916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (A124696 n - (n : ℤ)).toNat

end

end A277343.P34524251207449916

/-! ## A277343.P4698046683650228045

`A001462(∑[4^n]+1)+2`
-/

namespace A277343.P4698046683650228045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2

end

end A277343.P4698046683650228045

/-! ## A277343.P1678646194603268382

`A051742(A143658(2*(n+1)))+3`
-/

namespace A277343.P1678646194603268382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A143658 (2 * (n + 1))).toNat + 3

end

end A277343.P1678646194603268382

/-!
# A277345: a(n) = Gamma(n+1, phi)*exp(phi) + Gamma(n+1, 1-phi)*exp(1-phi), where phi=(1+sqrt(5))/2.

The programs for A277345, the canonical program `A277345.P1384586902131903580` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277345 has offset 0).

The definition of A277345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277345.P1384586902131903580

`(n+1)*a(n-1)-(n-2)*a(n-2)-(n-2)*a(n-3)` with `a(0)=2, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277345

/-- `(n+1)*a(n-1)-(n-2)*a(n-2)-(n-2)*a(n-3)` -/
def P1384586902131903580.Spec : Prop :=
  ∀ n, P1384586902131903580.a n = A277345 n

theorem P1384586902131903580.correct : P1384586902131903580.Spec := by
  intro n
  simp only [A277345]

end A277345

/-! ## A277345.P7236449766332607916

`round(ϕ^n+n*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A277345.P7236449766332607916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n + ((n : ℤ) * a (n - 1) : ℝ))

end

end A277345.P7236449766332607916

namespace A277345

/-- `round(ϕ^n+n*a(n-1))` -/
def P7236449766332607916.Spec : Prop :=
  ∀ n, P7236449766332607916.a n = A277345 n

end A277345

/-! ## A277345.P13018296148106117600

`A000032(n)+n*a(n-1)` with `a(0)=2`
-/

namespace A277345.P13018296148106117600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 n + (n : ℤ) * a (n - 1)

end

end A277345.P13018296148106117600

namespace A277345

/-- `A000032(n)+n*a(n-1)` -/
def P13018296148106117600.Spec : Prop :=
  ∀ n, P13018296148106117600.a n = A277345 n

end A277345

/-! ## A277345.P14708754603870737109

`Δ[A001610(n)]+n*a(n-1)` with `a(0)=2`
-/

namespace A277345.P14708754603870737109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A277345.P14708754603870737109

namespace A277345

/-- `Δ[A001610(n)]+n*a(n-1)` -/
def P14708754603870737109.Spec : Prop :=
  ∀ n, P14708754603870737109.a n = A277345 n

end A277345

/-! ## A277345.P12485051407434250336

`n*a(n-1)+A001612(n)-1` with `a(0)=2`
-/

namespace A277345.P12485051407434250336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * a (n - 1) + (A001612 n - 1)

end

end A277345.P12485051407434250336

namespace A277345

/-- `n*a(n-1)+A001612(n)-1` -/
def P12485051407434250336.Spec : Prop :=
  ∀ n, P12485051407434250336.a n = A277345 n

end A277345

/-! ## A277345.P7261329187360715707

`A329723(n+2)+n*a(n-1)` with `a(0)=2`
-/

namespace A277345.P7261329187360715707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A329723 (n + 2) + (n : ℤ) * a (n - 1)

end

end A277345.P7261329187360715707

namespace A277345

/-- `A329723(n+2)+n*a(n-1)` -/
def P7261329187360715707.Spec : Prop :=
  ∀ n, P7261329187360715707.a n = A277345 n

end A277345

/-! ## A277345.P3656016335172514951

`n*a(n-1)+A000211(n)-2` with `a(0)=2`
-/

namespace A277345.P3656016335172514951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * a (n - 1) + (A000211 n - 2)

end

end A277345.P3656016335172514951

namespace A277345

/-- `n*a(n-1)+A000211(n)-2` -/
def P3656016335172514951.Spec : Prop :=
  ∀ n, P3656016335172514951.a n = A277345 n

end A277345

/-! ## A277345.P17702499022025241843

`A111139(n)+2*A263823(n)`
-/

namespace A277345.P17702499022025241843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111139 n + 2 * A263823 n

end

end A277345.P17702499022025241843

namespace A277345

/-- `A111139(n)+2*A263823(n)` -/
def P17702499022025241843.Spec : Prop :=
  ∀ n, P17702499022025241843.a n = A277345 n

end A277345

/-! ## A277345.P11989018646050799901

`A000032(n)+ceil(n*a(A023443(n)))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A277345.P11989018646050799901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 n + (n : ℤ) * a (A023443 n).toNat

end

end A277345.P11989018646050799901

namespace A277345

/-- `A000032(n)+ceil(n*a(A023443(n)))` -/
def P11989018646050799901.Spec : Prop :=
  ∀ n, P11989018646050799901.a n = A277345 n

end A277345

/-! ## A277345.P121304556415806037

`n*a(n-1)+A118658(n)+A000045(n)` with `a(0)=2`
-/

namespace A277345.P121304556415806037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * a (n - 1) + (A118658 n + A000045 n)

end

end A277345.P121304556415806037

namespace A277345

/-- `n*a(n-1)+A118658(n)+A000045(n)` -/
def P121304556415806037.Spec : Prop :=
  ∀ n, P121304556415806037.a n = A277345 n

end A277345

/-!
# A277346: Maximal coefficient among squares of the polynomials in row n of the triangle of q-binomial coefficients.

The programs for A277346, there is no canonical definition to state claims against.
-/

/-! ## A277346.P399242877108873429

`A125806(∑[or(1, n)]-1)`
-/

namespace A277346.P399242877108873429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A277346.P399242877108873429

/-! ## A277346.P1671261943303883035

`A125806(floor((n+1)²/2))`
-/

namespace A277346.P1671261943303883035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A277346.P1671261943303883035

/-! ## A277346.P14192983443766642388

`or(char[1], A125806(A004526((n+1)²)))`
-/

namespace A277346.P14192983443766642388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A125806 (A004526 ((n + 1) ^ 2)).toNat)

end

end A277346.P14192983443766642388

/-! ## A277346.P3782837600250165369

`A007318(∑[n])*A125806(A004526((n+1)²))`
-/

namespace A277346.P3782837600250165369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A125806 (A004526 ((n + 1) ^ 2)).toNat

end

end A277346.P3782837600250165369

/-! ## A277346.P1222246161617858988

`A125806(A004526((n+1)²))/A007318(C(2, n))`
-/

namespace A277346.P1222246161617858988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125806 (A004526 ((n + 1) ^ 2)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A277346.P1222246161617858988

/-!
# A277347: a(n) = Product_{k=1..n} (2*k*(k-1)+1).

The programs for A277347, there is no canonical definition to state claims against.
-/

/-! ## A277347.P2136691941384564490

`∏[∑[4*n]+1]`
-/

namespace A277347.P2136691941384564490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277347.P2136691941384564490

/-! ## A277347.P15354680196793126811

`or(1, ∏[or(1, ∑[4*n])])`
-/

namespace A277347.P15354680196793126811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A277347.P15354680196793126811

/-! ## A277347.P14708950973945478852

`or(1, ∏[(n+1)²+n²])`
-/

namespace A277347.P14708950973945478852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A277347.P14708950973945478852

/-! ## A277347.P12672722362429195581

`(∑[4*n]+1)*a(n-1)` with `a(0)=1`
-/

namespace A277347.P12672722362429195581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * a (n - 1)

end

end A277347.P12672722362429195581

/-! ## A277347.P9747579127744752747

`abs(∏[lcm(2*n+1, n+1)-n])`
-/

namespace A277347.P9747579127744752747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A277347.P9747579127744752747

/-!
# A277349: Expansion of Product_{k>=1} 1/(1 - x^(6*k+1)).

The programs for A277349, there is no canonical definition to state claims against.
-/

/-! ## A277349.P11159802535214878240

`A007895(A127841(n+1)^A131325(n))`
-/

namespace A277349.P11159802535214878240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A127841 (n + 1) : ℚ) ^ (A131325 n : ℤ))).toNat

end

end A277349.P11159802535214878240

/-! ## A277349.P563251702844822122

`A001876(A127841(n+1)^A037027(n))`
-/

namespace A277349.P563251702844822122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((A127841 (n + 1) : ℚ) ^ (A037027 n : ℤ))).toNat

end

end A277349.P563251702844822122

/-! ## A277349.P15099327115240800712

`A001876(A127841(n+1)^A049695(n))`
-/

namespace A277349.P15099327115240800712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((A127841 (n + 1) : ℚ) ^ (A049695 n : ℤ))).toNat

end

end A277349.P15099327115240800712

/-! ## A277349.P2235642545633671503

`A060128(A127841(n+1)^A037027(n))`
-/

namespace A277349.P2235642545633671503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (SequenceMachineLib.roundAway ((A127841 (n + 1) : ℚ) ^ (A037027 n : ℤ))).toNat

end

end A277349.P2235642545633671503

/-! ## A277349.P12084321224032887176

`A071858(A127841(n+1)^A245192(3*n+2))`
-/

namespace A277349.P12084321224032887176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (SequenceMachineLib.roundAway ((A127841 (n + 1) : ℚ) ^ (A245192 (3 * n + 2) : ℤ))).toNat

end

end A277349.P12084321224032887176

/-!
# A277351: Value of (n+1,n) concatenated in binary representation.

The programs for A277351, the canonical program `A277351.P13613904926195031193` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277351 has offset 1).

The definition of A277351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277351.P725776138600022718

`(n+2)*2^(1+A000523(n+1))+n+1`
-/

namespace A277351.P725776138600022718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (1 + A000523 (n + 1) : ℤ) + (n + 1 : ℚ)

end

end A277351.P725776138600022718

namespace A277351

/-- `(n+2)*2^(1+A000523(n+1))+n+1` -/
def P725776138600022718.Spec : Prop :=
  ∀ n, P725776138600022718.a n = (A277351 (n + 1) : ℚ)

end A277351

/-! ## A277351.P13613904926195031193

`(n+2)*2^A070939(n+1)+n+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277351

/-- `(n+2)*2^A070939(n+1)+n+1` -/
def P13613904926195031193.Spec : Prop :=
  ∀ n, P13613904926195031193.a n = (A277351 (n + 1) : ℚ)

end A277351

/-! ## A277351.P3678050050040342173

`(n+2)*∑[C(and(n+1, 2*n), n)]+2*n+3`
-/

namespace A277351.P3678050050040342173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land (n + 1) (2 * n)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n + 3)

end

end A277351.P3678050050040342173

namespace A277351

/-- `(n+2)*∑[C(and(n+1, 2*n), n)]+2*n+3` -/
def P3678050050040342173.Spec : Prop :=
  ∀ n, (P3678050050040342173.a n : ℤ) = A277351 (n + 1)

end A277351

/-! ## A277351.P3289481613355312134

`(n+2)*A076877(n+1)-1`
-/

namespace A277351.P3289481613355312134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A076877 (n + 1) - 1

end

end A277351.P3289481613355312134

namespace A277351

/-- `(n+2)*A076877(n+1)-1` -/
def P3289481613355312134.Spec : Prop :=
  ∀ n, P3289481613355312134.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P1908281764521584213

`A253608(n+1)+2*n+3`
-/

namespace A277351.P1908281764521584213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253608 (n + 1) + (2 * n + 3 : ℤ)

end

end A277351.P1908281764521584213

namespace A277351

/-- `A253608(n+1)+2*n+3` -/
def P1908281764521584213.Spec : Prop :=
  ∀ n, P1908281764521584213.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P14043693064751464955

`A020330(n+1)+A076877(n+1)-1`
-/

namespace A277351.P14043693064751464955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1) + (A076877 (n + 1) - 1)

end

end A277351.P14043693064751464955

namespace A277351

/-- `A020330(n+1)+A076877(n+1)-1` -/
def P14043693064751464955.Spec : Prop :=
  ∀ n, P14043693064751464955.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P13456765526472349476

`A020330(n+1)+A206332(n+1)-n`
-/

namespace A277351.P13456765526472349476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1) + (A206332 (n + 1) - (n : ℤ))

end

end A277351.P13456765526472349476

namespace A277351

/-- `A020330(n+1)+A206332(n+1)-n` -/
def P13456765526472349476.Spec : Prop :=
  ∀ n, P13456765526472349476.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P16688347281556448448

`A020330(n+1)+A053644(n+1)+A053644(n+1)`
-/

namespace A277351.P16688347281556448448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1) + (A053644 (n + 1) + A053644 (n + 1))

end

end A277351.P16688347281556448448

namespace A277351

/-- `A020330(n+1)+A053644(n+1)+A053644(n+1)` -/
def P16688347281556448448.Spec : Prop :=
  ∀ n, P16688347281556448448.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P10809950951733707293

`A004756(n+1)+A020330(n+1)-A004754(n+1)`
-/

namespace A277351.P10809950951733707293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1) + (A020330 (n + 1) - A004754 (n + 1))

end

end A277351.P10809950951733707293

namespace A277351

/-- `A004756(n+1)+A020330(n+1)-A004754(n+1)` -/
def P10809950951733707293.Spec : Prop :=
  ∀ n, P10809950951733707293.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P16510845895707828818

`A004757(n+1)+A020330(n+1)-A004755(n+1)`
-/

namespace A277351.P16510845895707828818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1) + (A020330 (n + 1) - A004755 (n + 1))

end

end A277351.P16510845895707828818

namespace A277351

/-- `A004757(n+1)+A020330(n+1)-A004755(n+1)` -/
def P16510845895707828818.Spec : Prop :=
  ∀ n, P16510845895707828818.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P14203559657723473304

`A004758(n+1)+A020330(n+1)-A004756(n+1)`
-/

namespace A277351.P14203559657723473304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1) + (A020330 (n + 1) - A004756 (n + 1))

end

end A277351.P14203559657723473304

namespace A277351

/-- `A004758(n+1)+A020330(n+1)-A004756(n+1)` -/
def P14203559657723473304.Spec : Prop :=
  ∀ n, P14203559657723473304.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P1862957488664620270

`A004759(n+1)+A020330(n+1)-A004757(n+1)`
-/

namespace A277351.P1862957488664620270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1) + (A020330 (n + 1) - A004757 (n + 1))

end

end A277351.P1862957488664620270

namespace A277351

/-- `A004759(n+1)+A020330(n+1)-A004757(n+1)` -/
def P1862957488664620270.Spec : Prop :=
  ∀ n, P1862957488664620270.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P3527782143531242754

`(n+2)*A062383(n+1)+n+1`
-/

namespace A277351.P3527782143531242754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A062383 (n + 1) + (n + 1 : ℤ)

end

end A277351.P3527782143531242754

namespace A277351

/-- `(n+2)*A062383(n+1)+n+1` -/
def P3527782143531242754.Spec : Prop :=
  ∀ n, P3527782143531242754.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P14455612405637710177

`A062383(n+1)+A020330(n+1)`
-/

namespace A277351.P14455612405637710177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) + A020330 (n + 1)

end

end A277351.P14455612405637710177

namespace A277351

/-- `A062383(n+1)+A020330(n+1)` -/
def P14455612405637710177.Spec : Prop :=
  ∀ n, P14455612405637710177.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P12442461433956015931

`A276795(n+2)+n+1-A035928(n+1)`
-/

namespace A277351.P12442461433956015931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276795 (n + 2) + ((n + 1 : ℤ) - A035928 (n + 1))

end

end A277351.P12442461433956015931

namespace A277351

/-- `A276795(n+2)+n+1-A035928(n+1)` -/
def P12442461433956015931.Spec : Prop :=
  ∀ n, P12442461433956015931.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P260693543533133315

`A053644(A076877(n+1))+A020330(n+1)`
-/

namespace A277351.P260693543533133315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A076877 (n + 1)).toNat + A020330 (n + 1)

end

end A277351.P260693543533133315

namespace A277351

/-- `A053644(A076877(n+1))+A020330(n+1)` -/
def P260693543533133315.Spec : Prop :=
  ∀ n, P260693543533133315.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P7746385868135162682

`A112714(A092754(n+1)+1)+2+n`
-/

namespace A277351.P7746385868135162682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112714 (A092754 (n + 1) + 1).toNat + 2 + (n : ℤ)

end

end A277351.P7746385868135162682

namespace A277351

/-- `A112714(A092754(n+1)+1)+2+n` -/
def P7746385868135162682.Spec : Prop :=
  ∀ n, P7746385868135162682.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P17965109844174745846

`A053644(A004754(n+1))+A020330(n+1)`
-/

namespace A277351.P17965109844174745846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A004754 (n + 1)).toNat + A020330 (n + 1)

end

end A277351.P17965109844174745846

namespace A277351

/-- `A053644(A004754(n+1))+A020330(n+1)` -/
def P17965109844174745846.Spec : Prop :=
  ∀ n, P17965109844174745846.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P16320738232803121553

`A076877(A004754(n+1))+n*A076877(n+1)`
-/

namespace A277351.P16320738232803121553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076877 (A004754 (n + 1)).toNat + (n : ℤ) * A076877 (n + 1)

end

end A277351.P16320738232803121553

namespace A277351

/-- `A076877(A004754(n+1))+n*A076877(n+1)` -/
def P16320738232803121553.Spec : Prop :=
  ∀ n, P16320738232803121553.a n = A277351 (n + 1)

end A277351

/-! ## A277351.P3375585331128940127

`A053644(2*(n+1))+A020330(n+1)`
-/

namespace A277351.P3375585331128940127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * (n + 1)) + A020330 (n + 1)

end

end A277351.P3375585331128940127

namespace A277351

/-- `A053644(2*(n+1))+A020330(n+1)` -/
def P3375585331128940127.Spec : Prop :=
  ∀ n, P3375585331128940127.a n = A277351 (n + 1)

end A277351

/-!
# A277352: a(n) = Product_{k=1..n} (2*k^2+1).

The programs for A277352, there is no canonical definition to state claims against.
-/

/-! ## A277352.P5815377553006237036

`∏[2*n²+1]`
-/

namespace A277352.P5815377553006237036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277352.P5815377553006237036

/-! ## A277352.P7976730460554851815

`or(1, ∏[n*2*n+1])`
-/

namespace A277352.P7976730460554851815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A277352.P7976730460554851815

/-! ## A277352.P14761850804568199343

`(2*n²+1)*a(n-1)` with `a(0)=1`
-/

namespace A277352.P14761850804568199343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n ^ 2 + 1) * a (n - 1)

end

end A277352.P14761850804568199343

/-! ## A277352.P7961666043679070546

`floor(∏[a(n-1)+4*n-2])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A277352.P7961666043679070546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (4 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277352.P7961666043679070546

/-! ## A277352.P17078779886394102876

`ceil(∏[a(n-1)+4*n-2])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A277352.P17078779886394102876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (4 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277352.P17078779886394102876

/-!
# A277353: a(n) = Product_{k=1..n} (3*k^2+1).

The programs for A277353, there is no canonical definition to state claims against.
-/

/-! ## A277353.P10696096601613716906

`∏[3*n²+1]`
-/

namespace A277353.P10696096601613716906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277353.P10696096601613716906

/-! ## A277353.P18364899386918483619

`(3*n²+1)*a(n-1)` with `a(0)=1`
-/

namespace A277353.P18364899386918483619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n ^ 2 + 1) * a (n - 1)

end

end A277353.P18364899386918483619

/-! ## A277353.P14834002965877650433

`floor((3*n*n+1)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A277353.P14834002965877650433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * (n * n) + 1) * a (n - 1)

end

end A277353.P14834002965877650433

/-! ## A277353.P14911268333903659800

`abs(a(n-1))*round(3*n/acot(n))` with `a(0)=1`
-/

namespace A277353.P14911268333903659800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1)| * SequenceMachineLib.roundAway (3 * ((n : ℝ) / SequenceMachineLib.acot (n : ℝ)))

end

end A277353.P14911268333903659800

/-! ## A277353.P9170214592327381189

`a(n-1)+3*a(n-1)*n*n` with `a(0)=1`
-/

namespace A277353.P9170214592327381189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * a (n - 1) * (n * n)

end

end A277353.P9170214592327381189

/-!
# A277354: a(n) = Product_{k=1..n} (4*k^2+1).

The programs for A277354, there is no canonical definition to state claims against.
-/

/-! ## A277354.P10856658054108977190

`(-1)^(n+1)*A101928(n+2)`
-/

namespace A277354.P10856658054108977190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A101928 (n + 2)

end

end A277354.P10856658054108977190

/-! ## A277354.P5296275937853429110

`∏[(2*n)²+1]`
-/

namespace A277354.P5296275937853429110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277354.P5296275937853429110

/-! ## A277354.P7608198544390129072

`floor(∏[record[lcm(2, n²+1)/2]])`
-/

namespace A277354.P7608198544390129072
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n ^ 2 + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A277354.P7608198544390129072

/-! ## A277354.P10101567323015742853

`((2*n)²+1)*a(n-1)` with `a(0)=1`
-/

namespace A277354.P10101567323015742853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n) ^ 2 + 1) * a (n - 1)

end

end A277354.P10101567323015742853

/-! ## A277354.P9175920120836873814

`floor((4*n*n+1)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A277354.P9175920120836873814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * (n * n) + 1) * a (n - 1)

end

end A277354.P9175920120836873814

/-!
# A277355: a(n) = Product_{k=1..n} (2^k + k).

The programs for A277355, there is no canonical definition to state claims against.
-/

/-! ## A277355.P10888708655103957159

`∏[2^n+n]`
-/

namespace A277355.P10888708655103957159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277355.P10888708655103957159

/-! ## A277355.P1286201616413813638

`(2^n+n)*a(n-1)` with `a(0)=1`
-/

namespace A277355.P1286201616413813638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n + n) * a (n - 1)

end

end A277355.P1286201616413813638

/-! ## A277355.P9872795171447861239

`a(n-1)*or(n, 2^n)` with `a(0)=1`
-/

namespace A277355.P9872795171447861239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * Nat.lor n (2 ^ n)

end

end A277355.P9872795171447861239

/-! ## A277355.P9230392014051061570

`ceil(xor(n, 2^n)*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A277355.P9230392014051061570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor n (2 ^ n) * a (n - 1)

end

end A277355.P9230392014051061570

/-! ## A277355.P3246929657911026879

`a(n-1)/(2^n+n)^(-1)` with `a(0)=1`
-/

namespace A277355.P3246929657911026879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (2 ^ n + n : ℚ) ^ (-1 : ℤ)

end

end A277355.P3246929657911026879

/-!
# A277356: Jacobsthal numbers which are semiprimes.

The programs for A277356, there is no canonical definition to state claims against.
-/

/-! ## A277356.P16461260171972026022

`A001045(A363837(n+1))`
-/

namespace A277356.P16461260171972026022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A363837 (n + 1)).toNat

end

end A277356.P16461260171972026022

/-! ## A277356.P8334270924442962534

`A001045(eq[3, A286565(n+1)]+1)`
-/

namespace A277356.P8334270924442962534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277356.P8334270924442962534

/-! ## A277356.P3538917972638813359

`A167030(eq[3, A286565(n+1)]+1)+1`
-/

namespace A277356.P3538917972638813359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A277356.P3538917972638813359

/-! ## A277356.P12834632624414271612

`A128209(eq[3, A286565(n+1)]+1)-1`
-/

namespace A277356.P12834632624414271612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A277356.P12834632624414271612

/-!
# A277357: a(1) = 1; for n > 1, a(n) = (2^n-1)*a(n-1) + 1.

The programs for A277357, the canonical program `A277357.P7186880868583201411` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277357 has offset 1).

The definition of A277357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(2^(n+1)-1)*a(n-1)` (program `A277357.P7186880868583201411`, by `A277357.P7186880868583201411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277357.P7186880868583201411

`1+(2^(n+1)-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277357

/-- `1+(2^(n+1)-1)*a(n-1)` -/
def P7186880868583201411.Spec : Prop :=
  ∀ n, P7186880868583201411.a n = A277357 (n + 1)

theorem P7186880868583201411.correct : P7186880868583201411.Spec := by
  intro n
  simp only [A277357, Nat.add_sub_cancel]

end A277357

/-! ## A277357.P12579570368839560662

`(2^(n+1)-1)*a(n-1)+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277357.P12579570368839560662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ (n + 1) : ℤ) - 1) * a (n - 1) + 1

end

end A277357.P12579570368839560662

namespace A277357

/-- `(2^(n+1)-1)*a(n-1)+1` -/
def P12579570368839560662.Spec : Prop :=
  ∀ n, P12579570368839560662.a n = A277357 (n + 1)

theorem P12579570368839560662.correct : P12579570368839560662.Spec := by
  intro n
  simp only [A277357, Nat.add_sub_cancel, A277357.P12579570368839560662.a, A277357.P7186880868583201411.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A277357

/-! ## A277357.P16105247126025130692

`a(n-1)*∑[2^n]+1` with `a(0)=1`
-/

namespace A277357.P16105247126025130692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A277357.P16105247126025130692

namespace A277357

/-- `a(n-1)*∑[2^n]+1` -/
def P16105247126025130692.Spec : Prop :=
  ∀ n, (P16105247126025130692.a n : ℤ) = A277357 (n + 1)

end A277357

/-! ## A277357.P10247022531399757208

`floor(a(n-1)*∑[2*a(n-1)])+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A277357.P10247022531399757208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A277357.P10247022531399757208

namespace A277357

/-- `floor(a(n-1)*∑[2*a(n-1)])+1` -/
def P10247022531399757208.Spec : Prop :=
  ∀ n, (P10247022531399757208.a n : ℤ) = A277357 (n + 1)

end A277357

/-! ## A277357.P18403621518401489615

`ceil(a(n-1)*∑[A000079(n)])+1` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A277357.P18403621518401489615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A277357.P18403621518401489615

namespace A277357

/-- `ceil(a(n-1)*∑[A000079(n)])+1` -/
def P18403621518401489615.Spec : Prop :=
  ∀ n, P18403621518401489615.a n = A277357 (n + 1)

end A277357

/-!
# A277358: Number of self-avoiding planar walks starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1).

The programs for A277358, the canonical program `A277358.P12713750462321619303` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277358 has offset 0).

The definition of A277358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277358.P12713750462321619303

`2*n*a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277358

/-- `2*n*a(n-1)+(n-1)*a(n-2)` -/
def P12713750462321619303.Spec : Prop :=
  ∀ n, P12713750462321619303.a n = A277358 n

theorem P12713750462321619303.correct : P12713750462321619303.Spec := by
  intro n
  simp only [A277358]

end A277358

/-! ## A277358.P3338152419899134396

`∏[(n-1)/a(n-1)+2*n]` with `a(0)=1`
-/

namespace A277358.P3338152419899134396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A277358.P3338152419899134396

namespace A277358

/-- `∏[(n-1)/a(n-1)+2*n]` -/
def P3338152419899134396.Spec : Prop :=
  ∀ n, P3338152419899134396.a n = (A277358 n : ℚ)

end A277358

/-! ## A277358.P9249966331156450357

`record[A383313(n)]/(n+1)`
-/

namespace A277358.P9249966331156450357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383313 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A277358.P9249966331156450357

namespace A277358

/-- `record[A383313(n)]/(n+1)` -/
def P9249966331156450357.Spec : Prop :=
  ∀ n, P9249966331156450357.a n = (A277358 n : ℚ)

end A277358

/-! ## A277358.P11498885510798196486

`A383313(n+2)/(n+1)`
-/

namespace A277358.P11498885510798196486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383313 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A277358.P11498885510798196486

namespace A277358

/-- `A383313(n+2)/(n+1)` -/
def P11498885510798196486.Spec : Prop :=
  ∀ n, P11498885510798196486.a n = (A277358 n : ℚ)

end A277358

/-!
# A277359: Number of self-avoiding planar walks starting at (0,0), ending at (n,n), remaining in the first quadrant and using steps (0,1) and (1,0) on or below the diagonal and using steps (1,1), (-1,1), and (1,-1) on or above the diagonal.

The programs for A277359, there is no canonical definition to state claims against.
-/

/-! ## A277359.P7442669809175683430

`Δ[A137687(∏[A039214(n+1)])]`
-/

namespace A277359.P7442669809175683430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039214 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277359.P7442669809175683430

/-! ## A277359.P11246930169173850900

`Δ[A137687(∏[A114149(n+1)])]`
-/

namespace A277359.P11246930169173850900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277359.P11246930169173850900

/-!
# A277360: Number of self-avoiding planar walks starting at (0,0), ending at (n,n), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1).

The programs for A277360, the canonical program `A277360.P6593108354382510716` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277360 has offset 0).

The definition of A277360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277360.P6593108354382510716

`(16*n²-4*n-1)*a(n-1)-n*(4*n-6)*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277360

/-- `(16*n²-4*n-1)*a(n-1)-n*(4*n-6)*a(n-2)` -/
def P6593108354382510716.Spec : Prop :=
  ∀ n, P6593108354382510716.a n = A277360 n

theorem P6593108354382510716.correct : P6593108354382510716.Spec := by
  intro n
  simp only [A277360]

end A277360

/-! ## A277360.P15967555164893589661

`A277358(2*n)`
-/

namespace A277360.P15967555164893589661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277358 (2 * n)

end

end A277360.P15967555164893589661

namespace A277360

/-- `A277358(2*n)` -/
def P15967555164893589661.Spec : Prop :=
  ∀ n, P15967555164893589661.a n = A277360 n

end A277360

/-! ## A277360.P13571009759286070816

`record[A277358(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A277360.P13571009759286070816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A277358 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277360.P13571009759286070816

namespace A277360

/-- `record[A277358(C(n, a(n-1)))]` -/
def P13571009759286070816.Spec : Prop :=
  ∀ n, P13571009759286070816.a n = A277360 n

end A277360

/-! ## A277360.P6923362768605888078

`record[A277358(A014681(n))]`
-/

namespace A277360.P6923362768605888078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277358 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277360.P6923362768605888078

namespace A277360

/-- `record[A277358(A014681(n))]` -/
def P6923362768605888078.Spec : Prop :=
  ∀ n, P6923362768605888078.a n = A277360 n

end A277360

/-! ## A277360.P1859607762077264255

`or(1, A277358(A005843(n)))`
-/

namespace A277360.P1859607762077264255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277358 (A005843 n).toNat)

end

end A277360.P1859607762077264255

namespace A277360

/-- `or(1, A277358(A005843(n)))` -/
def P1859607762077264255.Spec : Prop :=
  ∀ n, P1859607762077264255.a n = A277360 n

end A277360

/-!
# A277361: a(n) = Sum_{k=0..n} k^3 * binomial(n-k, k).

The programs for A277361, the canonical program `A277361.P17653528190333164500` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277361 has offset 0).

The definition of A277361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, #^3*C(n-#, #)]` (program `A277361.P17653528190333164500`, by `A277361.P17653528190333164500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277361.P16590600146667926451

`ogf((x^2-2x^3+5x^4-4x^5+x^6)/(1-4x+2x^2+8x^3-5x^4-8x^5+2x^6+4x^7+x^8))`
-/

namespace A277361.P16590600146667926451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -2, 5, -4, 1] [1, -4, 2, 8, -5, -8, 2, 4, 1] n

end

end A277361.P16590600146667926451

namespace A277361

/-- `ogf((x^2-2x^3+5x^4-4x^5+x^6)/(1-4x+2x^2+8x^3-5x^4-8x^5+2x^6+4x^7+x^8))` -/
def P16590600146667926451.Spec : Prop :=
  ∀ n, P16590600146667926451.a n = A277361 n

end A277361

/-! ## A277361.P17653528190333164500

`∑{#}[n, #^3*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277361

/-- `∑{#}[n, #^3*C(n-#, #)]` -/
def P17653528190333164500.Spec : Prop :=
  ∀ n, (P17653528190333164500.a n : ℤ) = A277361 n

theorem P17653528190333164500.correct : P17653528190333164500.Spec := by
  intro n
  simp only [A277361]

end A277361

/-!
# A277362: Self-convolution of a(n)/4^n gives factorials (A000142).

The programs for A277362, there is no canonical definition to state claims against.
-/

/-! ## A277362.P12398400350418381559

`A047209(A349524(n))+and(n, -(n+2))`
-/

namespace A277362.P12398400350418381559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (A349524 n).toNat + Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A277362.P12398400350418381559

/-!
# A277363: Self-convolution of a(n)/4^n gives fibonorials (A003266).

The programs for A277363, there is no canonical definition to state claims against.
-/

/-! ## A277363.P8220510064019577255

`A336957(A001699(n))+A126211(n)`
-/

namespace A277363.P8220510064019577255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A001699 n).toNat + A126211 n

end

end A277363.P8220510064019577255

/-!
# A277364: Number of ways to partition a set of n elements into at most n/2 disjoint subsets.

The programs for A277364, there is no canonical definition to state claims against.
-/

/-! ## A277364.P8959884569950018934

`A359107(ceil((n²-1)/2)+n)`
-/

namespace A277364.P8959884569950018934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359107 (⌈((n ^ 2 : ℤ) - 1 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A277364.P8959884569950018934

/-! ## A277364.P776281768489220323

`A078898(floor(n/2)^n)`
-/

namespace A277364.P776281768489220323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (⌊(n : ℚ) / 2⌋ ^ n).toNat

end

end A277364.P776281768489220323

/-! ## A277364.P15787118726237760306

`A108934(A210981(n))`
-/

namespace A277364.P15787118726237760306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108934 (A210981 n).toNat

end

end A277364.P15787118726237760306

/-! ## A277364.P17184311092174278550

`A110654(A029923(n)^A029923(2*n))`
-/

namespace A277364.P17184311092174278550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A029923 n : ℚ) ^ (A029923 (2 * n) : ℤ))).toNat

end

end A277364.P17184311092174278550

/-!
# A277367: a(n) = gcd(A006666(n), A006667(n)) where A006666 and A006667 are respectively the number of halving and tripling steps in the '3x+1' problem.

The programs for A277367, there is no canonical definition to state claims against.
-/

/-! ## A277367.P1082648001068045297

`gcd(A006666(n+1), A006667(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277367.P1082648001068045297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006666 (n + 1)) (A006667 (n + 1))

end

end A277367.P1082648001068045297

/-! ## A277367.P11456355799669856915

`gcd(A006577(n+1), A006666(n+1))`
-/

namespace A277367.P11456355799669856915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006577 (n + 1)) (A006666 (n + 1))

end

end A277367.P11456355799669856915

/-! ## A277367.P17434590592690959451

`gcd(A008908(n+1)-1, A078719(n+1)-1)`
-/

namespace A277367.P17434590592690959451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008908 (n + 1) - 1) (A078719 (n + 1) - 1)

end

end A277367.P17434590592690959451

/-! ## A277367.P8966845988189390331

`gcd(1-A064433(n+2), A006667(2*(n+1)))`
-/

namespace A277367.P8966845988189390331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A064433 (n + 2)) (A006667 (2 * (n + 1)))

end

end A277367.P8966845988189390331

/-! ## A277367.P12827816182342309586

`gcd(A006577(n+1), A006667(A103517(n)))`
-/

namespace A277367.P12827816182342309586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006577 (n + 1)) (A006667 (A103517 n).toNat)

end

end A277367.P12827816182342309586

/-! ## A277367.P14887922661604982496

`gcd(A006666(n+1), A210516(A000124(n)))`
-/

namespace A277367.P14887922661604982496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006666 (n + 1)) (A210516 (A000124 n).toNat)

end

end A277367.P14887922661604982496

/-!
# A277368: Numbers such that the number of their divisors divide the sum of their aliquot parts.

The programs for A277368, the canonical program `A277368.P2770458880963617441` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277368 has offset 1).

The definition of A277368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277368.P2770458880963617441

`eq[0, A160550(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A277368

/-- `eq[0, A160550(n+1)]+1` -/
def P2770458880963617441.Spec : Prop :=
  ∀ n, (P2770458880963617441.a n : ℤ) = A277368 (n + 1)

theorem P2770458880963617441.correct : P2770458880963617441.Spec := by
  intro n
  simp only [A277368, Nat.add_sub_cancel]

end A277368

/-! ## A277368.P14426178520843808972

`record[gcd(n+2, A160550(n+2))]`
-/

namespace A277368.P14426178520843808972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A160550 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277368.P14426178520843808972

namespace A277368

/-- `record[gcd(n+2, A160550(n+2))]` -/
def P14426178520843808972.Spec : Prop :=
  ∀ n, (P14426178520843808972.a n : ℤ) = A277368 (n + 1)

end A277368

/-! ## A277368.P333323184481371873

`record[or(-A160550(n+1), A000027(n+1))]`
-/

namespace A277368.P333323184481371873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A160550 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277368.P333323184481371873

namespace A277368

/-- `record[or(-A160550(n+1), A000027(n+1))]` -/
def P333323184481371873.Spec : Prop :=
  ∀ n, P333323184481371873.a n = A277368 (n + 1)

end A277368

/-! ## A277368.P12912504194433677827

`A089088(eq[0, A160550(A089088(n))])`
-/

namespace A277368.P12912504194433677827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160550 (A089088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277368.P12912504194433677827

namespace A277368

/-- `A089088(eq[0, A160550(A089088(n))])` -/
def P12912504194433677827.Spec : Prop :=
  ∀ n, P12912504194433677827.a n = A277368 (n + 1)

end A277368

/-! ## A277368.P5639418888708312246

`eq[A054008(n+1), A054025(n+1)]+1`
-/

namespace A277368.P5639418888708312246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277368.P5639418888708312246

namespace A277368

/-- `eq[A054008(n+1), A054025(n+1)]+1` -/
def P5639418888708312246.Spec : Prop :=
  ∀ n, (P5639418888708312246.a n : ℤ) = A277368 (n + 1)

end A277368

/-! ## A277368.P1525573657190802195

`record[(A005408(n)-n)/A160533(A160550(n+1))]`
-/

namespace A277368.P1525573657190802195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A160533 (A160550 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277368.P1525573657190802195

namespace A277368

/-- `record[(A005408(n)-n)/A160533(A160550(n+1))]` -/
def P1525573657190802195.Spec : Prop :=
  ∀ n, P1525573657190802195.a n = (A277368 (n + 1) : ℚ)

end A277368

/-!
# A277369: a(0) = 5, a(1) = 8; for n>1, a(n) = 2*a(n-1) + a(n-2).

The programs for A277369, the canonical program `A277369.P4730007283509321833` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277369 has offset 0).

The definition of A277369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A277369.P4730007283509321833`, by `A277369.P4730007283509321833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277369.P1799517526670266780

`ogf((5-2x)/(1-2x-x^2))`
-/

namespace A277369.P1799517526670266780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2] [1, -2, -1] n

end

end A277369.P1799517526670266780

namespace A277369

/-- `ogf((5-2x)/(1-2x-x^2))` -/
def P1799517526670266780.Spec : Prop :=
  ∀ n, P1799517526670266780.a n = A277369 n

end A277369

/-! ## A277369.P4730007283509321833

`2*a(n-1)+a(n-2)` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277369

/-- `2*a(n-1)+a(n-2)` -/
def P4730007283509321833.Spec : Prop :=
  ∀ n, (P4730007283509321833.a n : ℤ) = A277369 n

theorem P4730007283509321833.correct : P4730007283509321833.Spec := by
  intro n
  simp only [A277369]

end A277369

/-! ## A277369.P1896720081394803846

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=5, a(1)=8`
-/

namespace A277369.P1896720081394803846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A277369.P1896720081394803846

namespace A277369

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P1896720081394803846.Spec : Prop :=
  ∀ n, (P1896720081394803846.a n : ℤ) = A277369 n

theorem P1896720081394803846.correct : P1896720081394803846.Spec := by
  intro n
  simp only [A277369, Nat.add_sub_cancel, A277369.P1896720081394803846.a, A277369.P4730007283509321833.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A277369

/-! ## A277369.P11671677480995029200

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=5, a(1)=8`
-/

namespace A277369.P11671677480995029200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A277369.P11671677480995029200

namespace A277369

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P11671677480995029200.Spec : Prop :=
  ∀ n, P11671677480995029200.a n = A277369 n

end A277369

/-! ## A277369.P1116449026392918743

`A162268(n)+A000129(n)`
-/

namespace A277369.P1116449026392918743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162268 n + A000129 n

end

end A277369.P1116449026392918743

namespace A277369

/-- `A162268(n)+A000129(n)` -/
def P1116449026392918743.Spec : Prop :=
  ∀ n, P1116449026392918743.a n = A277369 n

end A277369

/-! ## A277369.P6342362899118588956

`A163607(n)-A000129(n)`
-/

namespace A277369.P6342362899118588956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163607 n - A000129 n

end

end A277369.P6342362899118588956

namespace A277369

/-- `A163607(n)-A000129(n)` -/
def P6342362899118588956.Spec : Prop :=
  ∀ n, P6342362899118588956.a n = A277369 n

end A277369

/-! ## A277369.P7555606164252986450

`A164303(n)-A221172(n)`
-/

namespace A277369.P7555606164252986450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164303 n - A221172 n

end

end A277369.P7555606164252986450

namespace A277369

/-- `A164303(n)-A221172(n)` -/
def P7555606164252986450.Spec : Prop :=
  ∀ n, P7555606164252986450.a n = A277369 n

end A277369

/-! ## A277369.P14063103923271352928

`A048693(n+1)-A048655(n)`
-/

namespace A277369.P14063103923271352928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 (n + 1) - A048655 n

end

end A277369.P14063103923271352928

namespace A277369

/-- `A048693(n+1)-A048655(n)` -/
def P14063103923271352928.Spec : Prop :=
  ∀ n, P14063103923271352928.a n = A277369 n

end A277369

/-! ## A277369.P15066456023341537572

`A137199(n)+A111955(n+2)`
-/

namespace A277369.P15066456023341537572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 n + A111955 (n + 2)

end

end A277369.P15066456023341537572

namespace A277369

/-- `A137199(n)+A111955(n+2)` -/
def P15066456023341537572.Spec : Prop :=
  ∀ n, P15066456023341537572.a n = A277369 n

end A277369

/-! ## A277369.P17887558252114339033

`A002203(n+2)-A048693(n)`
-/

namespace A277369.P17887558252114339033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 2) - A048693 n

end

end A277369.P17887558252114339033

namespace A277369

/-- `A002203(n+2)-A048693(n)` -/
def P17887558252114339033.Spec : Prop :=
  ∀ n, P17887558252114339033.a n = A277369 n

end A277369

/-! ## A277369.P10162875783663272001

`A221172(n+2)-A135532(n)`
-/

namespace A277369.P10162875783663272001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 2) - A135532 n

end

end A277369.P10162875783663272001

namespace A277369

/-- `A221172(n+2)-A135532(n)` -/
def P10162875783663272001.Spec : Prop :=
  ∀ n, P10162875783663272001.a n = A277369 n

end A277369

/-! ## A277369.P6562895973217838129

`A048654(n)+2*A002203(n)`
-/

namespace A277369.P6562895973217838129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + 2 * A002203 n

end

end A277369.P6562895973217838129

namespace A277369

/-- `A048654(n)+2*A002203(n)` -/
def P6562895973217838129.Spec : Prop :=
  ∀ n, P6562895973217838129.a n = A277369 n

end A277369

/-! ## A277369.P8750385307697189552

`A000129(n+1)+Δ[A048655(n)]`
-/

namespace A277369.P8750385307697189552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (f1 (n + 1) - f1 n)

end

end A277369.P8750385307697189552

namespace A277369

/-- `A000129(n+1)+Δ[A048655(n)]` -/
def P8750385307697189552.Spec : Prop :=
  ∀ n, P8750385307697189552.a n = A277369 n

end A277369

/-! ## A277369.P7401464014047499829

`A135532(n+1)+A078343(n+1)`
-/

namespace A277369.P7401464014047499829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (n + 1) + A078343 (n + 1)

end

end A277369.P7401464014047499829

namespace A277369

/-- `A135532(n+1)+A078343(n+1)` -/
def P7401464014047499829.Spec : Prop :=
  ∀ n, P7401464014047499829.a n = A277369 n

end A277369

/-! ## A277369.P1449266039860798773

`A221173(n+1)+A001333(n+1)`
-/

namespace A277369.P1449266039860798773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1) + A001333 (n + 1)

end

end A277369.P1449266039860798773

namespace A277369

/-- `A221173(n+1)+A001333(n+1)` -/
def P1449266039860798773.Spec : Prop :=
  ∀ n, P1449266039860798773.a n = A277369 n

end A277369

/-! ## A277369.P11691320355438929416

`A221174(n+1)+2*A000129(n)`
-/

namespace A277369.P11691320355438929416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (n + 1) + 2 * A000129 n

end

end A277369.P11691320355438929416

namespace A277369

/-- `A221174(n+1)+2*A000129(n)` -/
def P11691320355438929416.Spec : Prop :=
  ∀ n, P11691320355438929416.a n = A277369 n

end A277369

/-! ## A277369.P10002473260452832162

`A266504(2*n)+A001333(n+2)`
-/

namespace A277369.P10002473260452832162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n) + A001333 (n + 2)

end

end A277369.P10002473260452832162

namespace A277369

/-- `A266504(2*n)+A001333(n+2)` -/
def P10002473260452832162.Spec : Prop :=
  ∀ n, P10002473260452832162.a n = A277369 n

end A277369

/-! ## A277369.P13688245071255500290

`A162268(n)+A163271(n+1)/2`
-/

namespace A277369.P13688245071255500290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162268 n : ℚ) + (A163271 (n + 1) : ℚ) / 2

end

end A277369.P13688245071255500290

namespace A277369

/-- `A162268(n)+A163271(n+1)/2` -/
def P13688245071255500290.Spec : Prop :=
  ∀ n, P13688245071255500290.a n = (A277369 n : ℚ)

end A277369

/-! ## A277369.P7067813431114267911

`A163607(n)-A163271(n+1)/2`
-/

namespace A277369.P7067813431114267911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163607 n : ℚ) - (A163271 (n + 1) : ℚ) / 2

end

end A277369.P7067813431114267911

namespace A277369

/-- `A163607(n)-A163271(n+1)/2` -/
def P7067813431114267911.Spec : Prop :=
  ∀ n, P7067813431114267911.a n = (A277369 n : ℚ)

end A277369

/-! ## A277369.P14556096582173952586

`A221172(n+2)-A266505(2*n)`
-/

namespace A277369.P14556096582173952586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 2) - A266505 (2 * n)

end

end A277369.P14556096582173952586

namespace A277369

/-- `A221172(n+2)-A266505(2*n)` -/
def P14556096582173952586.Spec : Prop :=
  ∀ n, P14556096582173952586.a n = A277369 n

end A277369

/-!
# A277370: Positive integers k that divide 7^k + 2.

The programs for A277370, there is no canonical definition to state claims against.
-/

/-! ## A277370.P568314525552275971

`A130080(∑[n*gcd(2, n)+1]^A119288(n+1))`
-/

namespace A277370.P568314525552275971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A119288 (n + 1) : ℤ))).toNat

end

end A277370.P568314525552275971

/-!
# A277371: Positive integers k that divide 7^k + 3.

The programs for A277371, there is no canonical definition to state claims against.
-/

/-! ## A277371.P15030670253139591482

`A332347(A347429(n))+n`
-/

namespace A277371.P15030670253139591482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (A347429 n).toNat + (n : ℤ)

end

end A277371.P15030670253139591482

/-! ## A277371.P7337975782443144547

`∑[A259862(A212915(n+1))]`
-/

namespace A277371.P7337975782443144547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259862 (A212915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277371.P7337975782443144547

/-!
# A277372: a(n) = Sum_{k=1..n} binomial(n,n-k)*n^(n-k)*n!/(n-k)!.

The programs for A277372, the canonical program `A277372.P1670781695493787923` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277372 has offset 0).

The definition of A277372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277372.P1670781695493787923

`∑{#}[n-1, C(n, n-(#+1))*n^(n-(#+1))*n!/(n-(#+1))!]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277372

/-- `∑{#}[n-1, C(n, n-(#+1))*n^(n-(#+1))*n!/(n-(#+1))!]` -/
def P1670781695493787923.Spec : Prop :=
  ∀ n, P1670781695493787923.a n = (A277372 n : ℚ)

end A277372

/-! ## A277372.P10169412474360289144

`A277373(n)-n^n`
-/

namespace A277372.P10169412474360289144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277373 n - (n ^ n : ℤ)

end

end A277372.P10169412474360289144

namespace A277372

/-- `A277373(n)-n^n` -/
def P10169412474360289144.Spec : Prop :=
  ∀ n, P10169412474360289144.a n = A277372 n

end A277372

/-! ## A277372.P17675299831547853165

`abs(A000312(n)-A277373(n))`
-/

namespace A277372.P17675299831547853165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n - A277373 n|

end

end A277372.P17675299831547853165

namespace A277372

/-- `abs(A000312(n)-A277373(n))` -/
def P17675299831547853165.Spec : Prop :=
  ∀ n, P17675299831547853165.a n = A277372 n

end A277372

/-! ## A277372.P3367940217365977380

`A322583(A216822(3*n+5))-(A000312(n)-A277373(n))`
-/

namespace A277372.P3367940217365977380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A216822 (3 * n + 5)).toNat - (A000312 n - A277373 n)

end

end A277372.P3367940217365977380

namespace A277372

/-- `A322583(A216822(3*n+5))-(A000312(n)-A277373(n))` -/
def P3367940217365977380.Spec : Prop :=
  ∀ n, P3367940217365977380.a n = A277372 n

end A277372

/-! ## A277372.P4876445763068342198

`A289192(∑[4*n])-A000312(n)`
-/

namespace A277372.P4876445763068342198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (∑ j ∈ Finset.range (n + 1), f1 j) - A000312 n

end

end A277372.P4876445763068342198

namespace A277372

/-- `A289192(∑[4*n])-A000312(n)` -/
def P4876445763068342198.Spec : Prop :=
  ∀ n, P4876445763068342198.a n = A277372 n

end A277372

/-!
# A277373: a(n) = Sum_{k=0..n} binomial(n,n-k)*n^(n-k)*n!/(n-k)!.

The programs for A277373, the canonical program `A277373.P8720000775250791460` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277373 has offset 0).

The definition of A277373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277373.P8720000775250791460

`∑{#}[n, C(n, n-#)*n^(n-#)*n!/(n-#)!]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277373

/-- `∑{#}[n, C(n, n-#)*n^(n-#)*n!/(n-#)!]` -/
def P8720000775250791460.Spec : Prop :=
  ∀ n, P8720000775250791460.a n = (A277373 n : ℚ)

end A277373

/-! ## A277373.P8075742424039410303

`A344048(∑[n]+n)`
-/

namespace A277373.P8075742424039410303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344048 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A277373.P8075742424039410303

namespace A277373

/-- `A344048(∑[n]+n)` -/
def P8075742424039410303.Spec : Prop :=
  ∀ n, P8075742424039410303.a n = A277373 n

end A277373

/-! ## A277373.P8900066950143913289

`A338435(∑[n+1]+n)`
-/

namespace A277373.P8900066950143913289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338435 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A277373.P8900066950143913289

namespace A277373

/-- `A338435(∑[n+1]+n)` -/
def P8900066950143913289.Spec : Prop :=
  ∀ n, P8900066950143913289.a n = A277373 n

end A277373

/-! ## A277373.P5057862187466566715

`A289192(∑[4*n])`
-/

namespace A277373.P5057862187466566715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277373.P5057862187466566715

namespace A277373

/-- `A289192(∑[4*n])` -/
def P5057862187466566715.Spec : Prop :=
  ∀ n, P5057862187466566715.a n = A277373 n

end A277373

/-! ## A277373.P6172096638022709976

`record[A289192(n*A008619(n))]`
-/

namespace A277373.P6172096638022709976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277373.P6172096638022709976

namespace A277373

/-- `record[A289192(n*A008619(n))]` -/
def P6172096638022709976.Spec : Prop :=
  ∀ n, P6172096638022709976.a n = A277373 n

end A277373

/-!
# A277374: a(n) = 2^n*floor(n/2)!*Gamma(ceiling((n+1)/2),-1/4)*exp(-1/4).

The programs for A277374, there is no canonical definition to state claims against.
-/

/-! ## A277374.P8132368892321931117

`A277393(n)/A056040(n)`
-/

namespace A277374.P8132368892321931117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277393 n : ℚ) / (A056040 n : ℚ)

end

end A277374.P8132368892321931117

/-! ## A277374.P2296865627098312788

`A277393(n)/A163840(A000096(n))`
-/

namespace A277374.P2296865627098312788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277393 n : ℚ) / (A163840 (A000096 n).toNat : ℚ)

end

end A277374.P2296865627098312788

/-! ## A277374.P1029527365549729652

`record[∏[A000138(n)^A033999(n)]]/(A275329(n)-A057977(n))`
-/

namespace A277374.P1029527365549729652
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000138 n : ℚ) ^ (A033999 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (A275329 n - A057977 n : ℚ)

end

end A277374.P1029527365549729652

/-! ## A277374.P11619922006118107829

`record[∏[A000138(n)^A033999(n)]]/(A009001(n)*A128057(n))`
-/

namespace A277374.P11619922006118107829
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000138 n : ℚ) ^ (A033999 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (A009001 n * A128057 n : ℚ)

end

end A277374.P11619922006118107829

/-! ## A277374.P14649192809633404668

`record[∏[A000138(n)^A033999(n)]]/(A001405(n)*A152271(n))`
-/

namespace A277374.P14649192809633404668
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000138 n : ℚ) ^ (A033999 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (A001405 n * A152271 n : ℚ)

end

end A277374.P14649192809633404668

/-!
# A277377: Each odd integer k is followed by k even integers.

The programs for A277377, the canonical program `A277377.P315428366020284387` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277377 has offset 1).

The definition of A277377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277377.P315428366020284387

`Δ[A053187(n)+A002061(A056847(n))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277377

/-- `Δ[A053187(n)+A002061(A056847(n))]` -/
def P315428366020284387.Spec : Prop :=
  ∀ n, P315428366020284387.a n = A277377 (n + 1)

theorem P315428366020284387.correct : P315428366020284387.Spec := by
  intro n
  simp only [A277377, Nat.add_sub_cancel]

end A277377

/-! ## A277377.P10073624647559151530

`Δ[A053187(n)+A002061(n-A000194(n))]`
-/

namespace A277377.P10073624647559151530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n + A002061 ((n : ℤ) - A000194 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277377.P10073624647559151530

namespace A277377

/-- `Δ[A053187(n)+A002061(n-A000194(n))]` -/
def P10073624647559151530.Spec : Prop :=
  ∀ n, P10073624647559151530.a n = A277377 (n + 1)

end A277377

/-! ## A277377.P916598272894530092

`Δ[A165900(n-A000194(n))+A053187(n)]`
-/

namespace A277377.P916598272894530092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 ((n : ℤ) - A000194 n).toNat + A053187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277377.P916598272894530092

namespace A277377

/-- `Δ[A165900(n-A000194(n))+A053187(n)]` -/
def P916598272894530092.Spec : Prop :=
  ∀ n, P916598272894530092.a n = A277377 (n + 1)

end A277377

/-! ## A277377.P5288030738992954507

`Δ[A056847(A056847(n)²)+A053187(n)]`
-/

namespace A277377.P5288030738992954507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A056847 n ^ 2).toNat + A053187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277377.P5288030738992954507

namespace A277377

/-- `Δ[A056847(A056847(n)²)+A053187(n)]` -/
def P5288030738992954507.Spec : Prop :=
  ∀ n, P5288030738992954507.a n = A277377 (n + 1)

end A277377

/-!
# A277378: Expansion of e.g.f. exp(2*x/(1-x))/sqrt(1-x^2).

The programs for A277378, there is no canonical definition to state claims against.
-/

/-! ## A277378.P5549083042609603723

`A242818(n)²*A000034(n)`
-/

namespace A277378.P5549083042609603723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242818 n ^ 2 * A000034 n

end

end A277378.P5549083042609603723

/-! ## A277378.P17698177223405234213

`lcm(A242818(n)², Δ[A028242(n)])`
-/

namespace A277378.P17698177223405234213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A242818 n ^ 2) (f1 (n + 1) - f1 n)

end

end A277378.P17698177223405234213

/-! ## A277378.P11984151259461434574

`A000898(n)/A000079(n)*A000898(n)`
-/

namespace A277378.P11984151259461434574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (A000079 n : ℚ) * (A000898 n : ℚ)

end

end A277378.P11984151259461434574

/-! ## A277378.P13253679930431671580

`A000898(n)/A011782(n)*A000902(n)`
-/

namespace A277378.P13253679930431671580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (A011782 n : ℚ) * (A000902 n : ℚ)

end

end A277378.P13253679930431671580

/-! ## A277378.P12350659539273638924

`A000898(n)/A016116(n)*A242818(n)`
-/

namespace A277378.P12350659539273638924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (A016116 n : ℚ) * (A242818 n : ℚ)

end

end A277378.P12350659539273638924

/-! ## A277378.P3229064709722058027

`A000898(n)²/A000079(n)`
-/

namespace A277378.P3229064709722058027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A277378.P3229064709722058027

/-! ## A277378.P14335636721565160971

`record[A135401(n)²/A060546(n)]`
-/

namespace A277378.P14335636721565160971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135401 n ^ 2 : ℚ) / (A060546 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277378.P14335636721565160971

/-! ## A277378.P2607783861166320434

`A000898(n)²/A011782(n+1)`
-/

namespace A277378.P2607783861166320434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n ^ 2 : ℚ) / (A011782 (n + 1) : ℚ)

end

end A277378.P2607783861166320434

/-! ## A277378.P4363127553169481672

`A000898(n)²/A016116(2*n)`
-/

namespace A277378.P4363127553169481672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n ^ 2 : ℚ) / (A016116 (2 * n) : ℚ)

end

end A277378.P4363127553169481672

/-! ## A277378.P16927243170207936937

`A135401(2*n)²/A000079(n)`
-/

namespace A277378.P16927243170207936937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135401 (2 * n) ^ 2 : ℚ) / (A000079 n : ℚ)

end

end A277378.P16927243170207936937

/-!
# A277380: a(n) = Sum_{k>=1} H_n(k-1)/2^k, where H_n(x) is n-th Hermite polynomial.

The programs for A277380, there is no canonical definition to state claims against.
-/

/-! ## A277380.P14898735900575580501

`A260731(A149971(n)²)`
-/

namespace A277380.P14898735900575580501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A149971 n ^ 2).toNat

end

end A277380.P14898735900575580501

/-!
# A277381: a(n) = exp(-1) * Sum_{k>=0} H_n(k)/k!, where H_n(x) is n-th Hermite polynomial.

The programs for A277381, there is no canonical definition to state claims against.
-/

/-! ## A277381.P171904333966335949

`record[A161515(n)]*A213094(n)`
-/

namespace A277381.P171904333966335949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A213094 n

end

end A277381.P171904333966335949

/-! ## A277381.P5661454804653306772

`A092533(2*A184695(n+1))`
-/

namespace A277381.P5661454804653306772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (2 * A184695 (n + 1)).toNat

end

end A277381.P5661454804653306772

/-!
# A277382: a(n) = n!*LaguerreL(n, -3).

The programs for A277382, the canonical program `A277382.P15938404222849824702` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277382 has offset 0).

The definition of A277382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277382.P11438339624596206415

`∑{#}[n, 3^#*(n-#)!*C(n, #)²]`
-/

namespace A277382.P11438339624596206415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.factorial ((n : ℤ) - (k : ℤ)).toNat * Nat.choose n k ^ 2

end

end A277382.P11438339624596206415

namespace A277382

/-- `∑{#}[n, 3^#*(n-#)!*C(n, #)²]` -/
def P11438339624596206415.Spec : Prop :=
  ∀ n, (P11438339624596206415.a n : ℤ) = A277382 n

end A277382

/-! ## A277382.P15938404222849824702

`2*(n+1)*a(n-1)-(n-1)²*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277382

/-- `2*(n+1)*a(n-1)-(n-1)²*a(n-2)` -/
def P15938404222849824702.Spec : Prop :=
  ∀ n, P15938404222849824702.a n = A277382 n

theorem P15938404222849824702.correct : P15938404222849824702.Spec := by
  intro n
  simp only [A277382]

end A277382

/-! ## A277382.P10508843158351832511

`n!*A160613(n)/A160614(n)`
-/

namespace A277382.P10508843158351832511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160613 n : ℚ) / (A160614 n : ℚ)

end

end A277382.P10508843158351832511

namespace A277382

/-- `n!*A160613(n)/A160614(n)` -/
def P10508843158351832511.Spec : Prop :=
  ∀ n, P10508843158351832511.a n = (A277382 n : ℚ)

end A277382

/-! ## A277382.P3755083928813163389

`A289192(∑[n+3]+n+3)`
-/

namespace A277382.P3755083928813163389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A277382.P3755083928813163389

namespace A277382

/-- `A289192(∑[n+3]+n+3)` -/
def P3755083928813163389.Spec : Prop :=
  ∀ n, P3755083928813163389.a n = A277382 n

end A277382

/-! ## A277382.P11267020090975002319

`A255806(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A277382.P11267020090975002319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255806 n + (n : ℤ) * a (n - 1)

end

end A277382.P11267020090975002319

namespace A277382

/-- `A255806(n)+n*a(n-1)` -/
def P11267020090975002319.Spec : Prop :=
  ∀ n, P11267020090975002319.a n = A277382 n

end A277382

/-! ## A277382.P4590089908135208245

`A343847(A167614(n+2))`
-/

namespace A277382.P4590089908135208245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343847 (A167614 (n + 2)).toNat

end

end A277382.P4590089908135208245

namespace A277382

/-- `A343847(A167614(n+2))` -/
def P4590089908135208245.Spec : Prop :=
  ∀ n, P4590089908135208245.a n = A277382 n

end A277382

/-! ## A277382.P337384364922652507

`gcd(n, n+1)*A289192(A046691(n+2))`
-/

namespace A277382.P337384364922652507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A289192 (A046691 (n + 2)).toNat

end

end A277382.P337384364922652507

namespace A277382

/-- `gcd(n, n+1)*A289192(A046691(n+2))` -/
def P337384364922652507.Spec : Prop :=
  ∀ n, P337384364922652507.a n = A277382 n

end A277382

/-! ## A277382.P2604625814909067579

`record[A289192(A046691(A134478(n)))]`
-/

namespace A277382.P2604625814909067579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A046691 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277382.P2604625814909067579

namespace A277382

/-- `record[A289192(A046691(A134478(n)))]` -/
def P2604625814909067579.Spec : Prop :=
  ∀ n, P2604625814909067579.a n = A277382 n

end A277382

/-! ## A277382.P10431771837677975909

`A000120(A061142(n+1))*A289192(A046691(n+2))`
-/

namespace A277382.P10431771837677975909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A061142 (n + 1)).toNat * A289192 (A046691 (n + 2)).toNat

end

end A277382.P10431771837677975909

namespace A277382

/-- `A000120(A061142(n+1))*A289192(A046691(n+2))` -/
def P10431771837677975909.Spec : Prop :=
  ∀ n, P10431771837677975909.a n = A277382 n

end A277382

/-!
# A277383: Each even integer k is followed by k odd integers.

The programs for A277383, the canonical program `A277383.P12304855010601705857` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277383 has offset 1).

The definition of A277383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277383.P12304855010601705857

`A005843(A007606(n+1))%A005408(A048761(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277383

/-- `A005843(A007606(n+1))%A005408(A048761(n))` -/
def P12304855010601705857.Spec : Prop :=
  ∀ n, P12304855010601705857.a n = A277383 (n + 1)

theorem P12304855010601705857.correct : P12304855010601705857.Spec := by
  intro n
  simp only [A277383, Nat.add_sub_cancel]

end A277383

/-!
# A277384: Least common multiple of n + 4 and n - 4.

The programs for A277384, the canonical program `A277384.P3904036181190473848` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277384 has offset 1).

The definition of A277384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277384.P3904036181190473848

`lcm(n+5, n-3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277384

/-- `lcm(n+5, n-3)` -/
def P3904036181190473848.Spec : Prop :=
  ∀ n, (P3904036181190473848.a n : ℤ) = A277384 (n + 1)

theorem P3904036181190473848.correct : P3904036181190473848.Spec := by
  intro n
  simp only [A277384, Nat.add_sub_cancel]

end A277384

/-! ## A277384.P15356166929875189338

`(n+5)*A231190(2*(n+1))`
-/

namespace A277384.P15356166929875189338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A231190 (2 * (n + 1))

end

end A277384.P15356166929875189338

namespace A277384

/-- `(n+5)*A231190(2*(n+1))` -/
def P15356166929875189338.Spec : Prop :=
  ∀ n, P15356166929875189338.a n = A277384 (n + 1)

end A277384

/-!
# A277385: Records in A277384.

The programs for A277385, the canonical program `A277385.P18223950157447054377` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277385 has offset 1).

The definition of A277385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277385.P6663401570533542871

`ogf((15-12x+11x^2-6x^3)/(1-3x+3x^2-x^3))`
-/

namespace A277385.P6663401570533542871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -12, 11, -6] [1, -3, 3, -1] n

end

end A277385.P6663401570533542871

namespace A277385

/-- `ogf((15-12x+11x^2-6x^3)/(1-3x+3x^2-x^3))` -/
def P6663401570533542871.Spec : Prop :=
  ∀ n, P6663401570533542871.a n = A277385 (n + 1)

end A277385

/-! ## A277385.P18223950157447054377

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=15, a(1)=33, a(2)=65, a(3)=105`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277385

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P18223950157447054377.Spec : Prop :=
  ∀ n, P18223950157447054377.a n = A277385 (n + 1)

theorem P18223950157447054377.correct : P18223950157447054377.Spec := by
  intro n
  simp only [A277385, Nat.add_sub_cancel]

end A277385

/-! ## A277385.P2647172317576512763

`record[lcm(n+3, 5-n)]`
-/

namespace A277385.P2647172317576512763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (5 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277385.P2647172317576512763

namespace A277385

/-- `record[lcm(n+3, 5-n)]` -/
def P2647172317576512763.Spec : Prop :=
  ∀ n, (P2647172317576512763.a n : ℤ) = A277385 (n + 1)

end A277385

/-! ## A277385.P8468942324243397505

`record[abs((2*n+1)²-16)]`
-/

namespace A277385.P8468942324243397505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n + 1) ^ 2 : ℤ) - 16|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277385.P8468942324243397505

namespace A277385

/-- `record[abs((2*n+1)²-16)]` -/
def P8468942324243397505.Spec : Prop :=
  ∀ n, P8468942324243397505.a n = A277385 (n + 1)

end A277385

/-! ## A277385.P4329636107289801537

`sqrt(record[A225948(n+1)²])`
-/

namespace A277385.P4329636107289801537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A277385.P4329636107289801537

namespace A277385

/-- `sqrt(record[A225948(n+1)²])` -/
def P4329636107289801537.Spec : Prop :=
  ∀ n, P4329636107289801537.a n = (A277385 (n + 1) : ℝ)

end A277385

/-! ## A277385.P11665795816786937831

`sqrt(record[A277384(n+1)²])`
-/

namespace A277385.P11665795816786937831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277384 (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A277385.P11665795816786937831

namespace A277385

/-- `sqrt(record[A277384(n+1)²])` -/
def P11665795816786937831.Spec : Prop :=
  ∀ n, P11665795816786937831.a n = (A277385 (n + 1) : ℝ)

end A277385

/-! ## A277385.P2691597558481889675

`record[A277384(n+1)]%A257044(n+1)`
-/

namespace A277385.P2691597558481889675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A257044 (n + 1))

end

end A277385.P2691597558481889675

namespace A277385

/-- `record[A277384(n+1)]%A257044(n+1)` -/
def P2691597558481889675.Spec : Prop :=
  ∀ n, P2691597558481889675.a n = A277385 (n + 1)

end A277385

/-! ## A277385.P7784200258857896062

`A155212(A233583(2*(n+1)))+A155212(2*n)`
-/

namespace A277385.P7784200258857896062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (A233583 (2 * (n + 1))).toNat + A155212 (2 * n)

end

end A277385.P7784200258857896062

namespace A277385

/-- `A155212(A233583(2*(n+1)))+A155212(2*n)` -/
def P7784200258857896062.Spec : Prop :=
  ∀ n, P7784200258857896062.a n = A277385 (n + 1)

end A277385

/-! ## A277385.P13566646563950014985

`A000027(record[A277384(n+1)])`
-/

namespace A277385.P13566646563950014985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277385.P13566646563950014985

namespace A277385

/-- `A000027(record[A277384(n+1)])` -/
def P13566646563950014985.Spec : Prop :=
  ∀ n, P13566646563950014985.a n = A277385 (n + 1)

end A277385

/-! ## A277385.P1436302315929322708

`filter[A277384(2*n+1), A354108(#)]`
-/

namespace A277385.P1436302315929322708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277384 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A277385.P1436302315929322708

namespace A277385

/-- `filter[A277384(2*n+1), A354108(#)]` -/
def P1436302315929322708.Spec : Prop :=
  ∀ n, P1436302315929322708.a n = A277385 (n + 1)

end A277385

/-!
# A277386: a(n) = Sum_{k=0..n} binomial(n, k)^3 * 3^(n-k) * k!.

The programs for A277386, the canonical program `A277386.P17953064896314033490` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277386 has offset 0).

The definition of A277386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277386.P17953064896314033490

`∑{#}[n, C(n, #)^3*3^(n-#)*#!]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277386

/-- `∑{#}[n, C(n, #)^3*3^(n-#)*#!]` -/
def P17953064896314033490.Spec : Prop :=
  ∀ n, P17953064896314033490.a n = (A277386 n : ℚ)

end A277386

/-!
# A277387: Number of nonnegative solutions of a certain system of linear Diophantine equations depending on an even parameter.

The programs for A277387, the canonical program `A277387.P6020369209286216696` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277387 has offset 1).

The definition of A277387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277387.P6083753019841038899

`ogf((1+10x+40x^2+26x^3+3x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A277387.P6083753019841038899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 40, 26, 3] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A277387.P6083753019841038899

namespace A277387

/-- `ogf((1+10x+40x^2+26x^3+3x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P6083753019841038899.Spec : Prop :=
  ∀ n, P6083753019841038899.a n = A277387 (n + 1)

end A277387

/-! ## A277387.P6020369209286216696

`(n+1)*(1+n+1)*(3+2*(n+1)+(n+1)²+(n+1)^3+2*(n+1)^4)/18`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277387

/-- `(n+1)*(1+n+1)*(3+2*(n+1)+(n+1)²+(n+1)^3+2*(n+1)^4)/18` -/
def P6020369209286216696.Spec : Prop :=
  ∀ n, P6020369209286216696.a n = (A277387 (n + 1) : ℚ)

end A277387

/-! ## A277387.P14399053052702784469

`A277388(n+2)-2*A108674(n)`
-/

namespace A277387.P14399053052702784469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277388 (n + 2) - 2 * A108674 n

end

end A277387.P14399053052702784469

namespace A277387

/-- `A277388(n+2)-2*A108674(n)` -/
def P14399053052702784469.Spec : Prop :=
  ∀ n, P14399053052702784469.a n = A277387 (n + 1)

end A277387

/-! ## A277387.P14112237856972598350

`A002411(n+1)+A000330(n)*A167875(n+1)`
-/

namespace A277387.P14112237856972598350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1) + A000330 n * A167875 (n + 1)

end

end A277387.P14112237856972598350

namespace A277387

/-- `A002411(n+1)+A000330(n)*A167875(n+1)` -/
def P14112237856972598350.Spec : Prop :=
  ∀ n, P14112237856972598350.a n = A277387 (n + 1)

end A277387

/-! ## A277387.P2834120406055157803

`A006325(n+2)+A000292(n)*A006331(n+1)`
-/

namespace A277387.P2834120406055157803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 2) + A000292 n * A006331 (n + 1)

end

end A277387.P2834120406055157803

namespace A277387

/-- `A006325(n+2)+A000292(n)*A006331(n+1)` -/
def P2834120406055157803.Spec : Prop :=
  ∀ n, P2834120406055157803.a n = A277387 (n + 1)

end A277387

/-! ## A277387.P15167714332402801528

`A006325(n+2)+A006918(2*n+1)*A006918(2*n)`
-/

namespace A277387.P15167714332402801528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 2) + A006918 (2 * n + 1) * A006918 (2 * n)

end

end A277387.P15167714332402801528

namespace A277387

/-- `A006325(n+2)+A006918(2*n+1)*A006918(2*n)` -/
def P15167714332402801528.Spec : Prop :=
  ∀ n, P15167714332402801528.a n = A277387 (n + 1)

end A277387

/-!
# A277388: Number of nonnegative solutions of a certain system of linear Diophantine equations depending on an odd parameter.

The programs for A277388, the canonical program `A277388.P5951870282482200364` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277388 has offset 2).

The definition of A277388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277388.P2283916717216651877

`ogf((3+26x+40x^2+10x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A277388.P2283916717216651877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 26, 40, 10, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A277388.P2283916717216651877

namespace A277388

/-- `ogf((3+26x+40x^2+10x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P2283916717216651877.Spec : Prop :=
  ∀ n, P2283916717216651877.a n = A277388 (n + 2)

end A277388

/-! ## A277388.P5951870282482200364

`(n+2)*(n+1)*(2*(n+2)^4-(n+2)^3+(n+2)²-2*(n+2)+3)/18`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277388

/-- `(n+2)*(n+1)*(2*(n+2)^4-(n+2)^3+(n+2)²-2*(n+2)+3)/18` -/
def P5951870282482200364.Spec : Prop :=
  ∀ n, P5951870282482200364.a n = (A277388 (n + 2) : ℚ)

end A277388

/-! ## A277388.P3266241012393441048

`∑[A220892(n)+2*A108674(n)]`
-/

namespace A277388.P3266241012393441048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220892 n + 2 * A108674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277388.P3266241012393441048

namespace A277388

/-- `∑[A220892(n)+2*A108674(n)]` -/
def P3266241012393441048.Spec : Prop :=
  ∀ n, P3266241012393441048.a n = A277388 (n + 2)

end A277388

/-! ## A277388.P1872753298242875004

`A006325(n+2)+A000292(n+1)*A006331(n+1)`
-/

namespace A277388.P1872753298242875004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 2) + A000292 (n + 1) * A006331 (n + 1)

end

end A277388.P1872753298242875004

namespace A277388

/-- `A006325(n+2)+A000292(n+1)*A006331(n+1)` -/
def P1872753298242875004.Spec : Prop :=
  ∀ n, P1872753298242875004.a n = A277388 (n + 2)

end A277388

/-! ## A277388.P16684409097783732220

`A006325(n+2)+A006918(2*n+1)*A006918(2*(n+1))`
-/

namespace A277388.P16684409097783732220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 2) + A006918 (2 * n + 1) * A006918 (2 * (n + 1))

end

end A277388.P16684409097783732220

namespace A277388

/-- `A006325(n+2)+A006918(2*n+1)*A006918(2*(n+1))` -/
def P16684409097783732220.Spec : Prop :=
  ∀ n, P16684409097783732220.a n = A277388 (n + 2)

end A277388

/-!
# A277391: a(n) = n!*LaguerreL(n, -2*n).

The programs for A277391, the canonical program `A277391.P2944634818676818250` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277391 has offset 0).

The definition of A277391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277391.P2944634818676818250

`n!*∑{#}[n, C(n, #)*2^#*n^#/#!]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A277391

/-- `n!*∑{#}[n, C(n, #)*2^#*n^#/#!]` -/
def P2944634818676818250.Spec : Prop :=
  ∀ n, P2944634818676818250.a n = (A277391 n : ℚ)

end A277391

/-! ## A277391.P14711448837198666263

`A338435(∑[n+3])`
-/

namespace A277391.P14711448837198666263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277391.P14711448837198666263

namespace A277391

/-- `A338435(∑[n+3])` -/
def P14711448837198666263.Spec : Prop :=
  ∀ n, P14711448837198666263.a n = A277391 n

end A277391

/-! ## A277391.P6125128179210443377

`A289192(A062725(n))`
-/

namespace A277391.P6125128179210443377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A062725 n).toNat

end

end A277391.P6125128179210443377

namespace A277391

/-- `A289192(A062725(n))` -/
def P6125128179210443377.Spec : Prop :=
  ∀ n, P6125128179210443377.a n = A277391 n

end A277391

/-! ## A277391.P8846597158098316675

`A343847(A062728(n))`
-/

namespace A277391.P8846597158098316675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343847 (A062728 n).toNat

end

end A277391.P8846597158098316675

namespace A277391

/-- `A343847(A062728(n))` -/
def P8846597158098316675.Spec : Prop :=
  ∀ n, P8846597158098316675.a n = A277391 n

end A277391

/-! ## A277391.P9796969259096011998

`A289192(A062728(n)-n)`
-/

namespace A277391.P9796969259096011998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A062728 n - (n : ℤ)).toNat

end

end A277391.P9796969259096011998

namespace A277391

/-- `A289192(A062728(n)-n)` -/
def P9796969259096011998.Spec : Prop :=
  ∀ n, P9796969259096011998.a n = A277391 n

end A277391

/-!
# A277392: a(n) = n!*LaguerreL(n, -3*n).

The programs for A277392, there is no canonical definition to state claims against.
-/

/-! ## A277392.P4366807501120949788

`A289192(A139276(n))`
-/

namespace A277392.P4366807501120949788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (A139276 n).toNat

end

end A277392.P4366807501120949788

/-! ## A277392.P8870334977454537308

`A289192(n*A017101(n))`
-/

namespace A277392.P8870334977454537308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 ((n : ℤ) * A017101 n).toNat

end

end A277392.P8870334977454537308

/-! ## A277392.P9942929965686374906

`A289192(A033954(2*n)/2)`
-/

namespace A277392.P9942929965686374906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (SequenceMachineLib.roundAway ((A033954 (2 * n) : ℚ) / 2)).toNat

end

end A277392.P9942929965686374906

/-! ## A277392.P2010748654071602784

`A289192(2*A002943(n)-n)`
-/

namespace A277392.P2010748654071602784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (2 * A002943 n - (n : ℤ)).toNat

end

end A277392.P2010748654071602784

/-! ## A277392.P15335570778437981027

`A289192(n*A004767(2*n))`
-/

namespace A277392.P15335570778437981027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 ((n : ℤ) * A004767 (2 * n)).toNat

end

end A277392.P15335570778437981027

/-!
# A277393: a(n) = Integral_{x=0..infinity} H_n(x) * exp(-x), where H_n(x) is n-th Hermite polynomial.

The programs for A277393, there is no canonical definition to state claims against.
-/

/-! ## A277393.P16604151352144284291

`A056040(n)*A277374(n)`
-/

namespace A277393.P16604151352144284291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A277374 n

end

end A277393.P16604151352144284291

/-! ## A277393.P11494122638457198235

`A163840(A000096(n))*A277374(n)`
-/

namespace A277393.P11494122638457198235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163840 (A000096 n).toNat * A277374 n

end

end A277393.P11494122638457198235

/-! ## A277393.P14716796344772488841

`(A189911(n)-A212303(n))*A277374(n)`
-/

namespace A277393.P14716796344772488841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189911 n - A212303 n) * A277374 n

end

end A277393.P14716796344772488841

/-! ## A277393.P82112517341480234

`A000138(2*n)/A001147(n)`
-/

namespace A277393.P82112517341480234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000138 (2 * n) : ℚ) / (A001147 n : ℚ)

end

end A277393.P82112517341480234

/-!
# A277395: a(n) = Sum_{k=0..n} binomial(n+1,k+1)*A001003(k).

The programs for A277395, the canonical program `A277395.P4022941343630032347` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277395 has offset 0).

The definition of A277395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277395.P4022941343630032347

`∑{#}[n, C(n+1, #+1)*A001003(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277395

/-- `∑{#}[n, C(n+1, #+1)*A001003(#)]` -/
def P4022941343630032347.Spec : Prop :=
  ∀ n, P4022941343630032347.a n = A277395 n

theorem P4022941343630032347.correct : P4022941343630032347.Spec := by
  intro n
  simp only [A277395]

end A277395

/-! ## A277395.P8204048741549178290

`∑[∑[A068764(n)]]`
-/

namespace A277395.P8204048741549178290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277395.P8204048741549178290

namespace A277395

/-- `∑[∑[A068764(n)]]` -/
def P8204048741549178290.Spec : Prop :=
  ∀ n, P8204048741549178290.a n = A277395 n

end A277395

/-! ## A277395.P14218540366073252187

`∑[A118376(n+1)]`
-/

namespace A277395.P14218540366073252187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277395.P14218540366073252187

namespace A277395

/-- `∑[A118376(n+1)]` -/
def P14218540366073252187.Spec : Prop :=
  ∀ n, P14218540366073252187.a n = A277395 n

end A277395

/-! ## A277395.P2501204090901548148

`∑[ceil(A174347(n)/2)]`
-/

namespace A277395.P2501204090901548148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174347 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277395.P2501204090901548148

namespace A277395

/-- `∑[ceil(A174347(n)/2)]` -/
def P2501204090901548148.Spec : Prop :=
  ∀ n, P2501204090901548148.a n = A277395 n

end A277395

/-! ## A277395.P11508244097082690383

`∑[2*A226316(n)]-1`
-/

namespace A277395.P11508244097082690383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A277395.P11508244097082690383

namespace A277395

/-- `∑[2*A226316(n)]-1` -/
def P11508244097082690383.Spec : Prop :=
  ∀ n, P11508244097082690383.a n = A277395 n

end A277395

/-! ## A277395.P11258282702460132231

`∑[∑[ceil(A166229(n)/2)]]`
-/

namespace A277395.P11258282702460132231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166229 n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277395.P11258282702460132231

namespace A277395

/-- `∑[∑[ceil(A166229(n)/2)]]` -/
def P11258282702460132231.Spec : Prop :=
  ∀ n, P11258282702460132231.a n = A277395 n

end A277395

/-! ## A277395.P8716834290078258283

`∑[record[A118376(A141256(n))]]`
-/

namespace A277395.P8716834290078258283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118376 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277395.P8716834290078258283

namespace A277395

/-- `∑[record[A118376(A141256(n))]]` -/
def P8716834290078258283.Spec : Prop :=
  ∀ n, P8716834290078258283.a n = A277395 n

end A277395

/-!
# A277396: Coefficients in asymptotic expansion of sequence A277175.

The programs for A277396, there is no canonical definition to state claims against.
-/

/-! ## A277396.P6519513616746144575

`A056171(∑[A316367(n)]+1)`
-/

namespace A277396.P6519513616746144575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A277396.P6519513616746144575

/-! ## A277396.P4499860274549628400

`A008619(A116983(n)+n!*∑[n/n!]-n)`
-/

namespace A277396.P4499860274549628400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A116983 n : ℚ) + ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℚ)))).toNat

end

end A277396.P4499860274549628400

/-! ## A277396.P12345561135003065462

`A032742(A165472(3*n+2)+A007526(n))`
-/

namespace A277396.P12345561135003065462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A165472 (3 * n + 2) + A007526 n).toNat

end

end A277396.P12345561135003065462

