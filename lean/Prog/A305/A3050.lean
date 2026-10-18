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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B007.C001
import Seq.B008.C000
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
# A305000: Number of labeled antichains of finite sets spanning some subset of {1,...,n} with singleton edges allowed.

The programs for A305000, there is no canonical definition to state claims against.
-/

/-! ## A305000.P2321072700927031452

`2^n*A307249(n)`
-/

namespace A305000.P2321072700927031452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A307249 n

end

end A305000.P2321072700927031452

/-! ## A305000.P11670801177722680198

`A006126(A111332(n)+n)*2^n`
-/

namespace A305000.P11670801177722680198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006126 (A111332 n + (n : ℤ)).toNat * (2 ^ n : ℤ)

end

end A305000.P11670801177722680198

/-! ## A305000.P15279747386980497607

`(A006126(n)-A111332(n))*2^n`
-/

namespace A305000.P15279747386980497607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006126 n - A111332 n) * (2 ^ n : ℤ)

end

end A305000.P15279747386980497607

/-! ## A305000.P13348461419645785570

`∑[A011782(n)]*∏{e}[2^n, A006126(#)]`
-/

namespace A305000.P13348461419645785570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ p ∈ Nat.primeFactors (f2 n), A006126 (Nat.factorization (f2 n) p))

end

end A305000.P13348461419645785570

/-! ## A305000.P8150419158753095301

`record[A334437(n)]*∏{e}[2^n, A006126(#)]`
-/

namespace A305000.P8150419158753095301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (∏ p ∈ Nat.primeFactors (f2 n), A006126 (Nat.factorization (f2 n) p))

end

end A305000.P8150419158753095301

/-!
# A305002: Expansion of (1 + 20*x + 30*x^2 + 50*x^3 + 7*x^4 + 10*x^5)/((1 - x)*(1 + x^4)).

The programs for A305002, the canonical program `A305002.P7872995484369043211` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305002 has offset 0).

The definition of A305002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+20x+30x^2+50x^3+7x^4+10x^5)/(1-x+x^4-x^5))` (program `A305002.P7872995484369043211`, by `A305002.P7872995484369043211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305002.P7872995484369043211

`ogf((1+20x+30x^2+50x^3+7x^4+10x^5)/(1-x+x^4-x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305002

/-- `ogf((1+20x+30x^2+50x^3+7x^4+10x^5)/(1-x+x^4-x^5))` -/
def P7872995484369043211.Spec : Prop :=
  ∀ n, P7872995484369043211.a n = A305002 n

theorem P7872995484369043211.correct : P7872995484369043211.Spec := by
  intro n
  simp only [A305002]

end A305002

/-!
# A305003: Number of length-n binary words having no subwords that are abelian fourth powers.

The programs for A305003, there is no canonical definition to state claims against.
-/

/-! ## A305003.P4719441757745875337

`A308148(n)-A185284((2-n)²)`
-/

namespace A305003.P4719441757745875337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308148 n - A185284 ((2 - (n : ℤ)) ^ 2).toNat

end

end A305003.P4719441757745875337

/-! ## A305003.P3013942959047182694

`A066635(A000110(n))+A066624(n)`
-/

namespace A305003.P3013942959047182694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A000110 n).toNat + A066624 n

end

end A305003.P3013942959047182694

/-! ## A305003.P13456676844991229117

`A273154(n)-A185284(A000217(n))`
-/

namespace A305003.P13456676844991229117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273154 n - A185284 (A000217 n).toNat

end

end A305003.P13456676844991229117

/-! ## A305003.P5130351753408999101

`A004185(A164154(n)^A027828(n))`
-/

namespace A305003.P5130351753408999101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (SequenceMachineLib.roundAway ((A164154 n : ℚ) ^ (A027828 n : ℤ))).toNat

end

end A305003.P5130351753408999101

/-! ## A305003.P7560373826566796301

`A004185(C(A164154(n), A027828(n)))`
-/

namespace A305003.P7560373826566796301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (Nat.choose (A164154 n).toNat (A027828 n).toNat)

end

end A305003.P7560373826566796301

/-!
# A305004: Number of labeled hypertrees (connected acyclic antichains) spanning some subset of {1,...,n} without singleton edges.

The programs for A305004, there is no canonical definition to state claims against.
-/

/-! ## A305004.P10733114888537191218

`A304939(n)-(floor(acot(n))-1)`
-/

namespace A305004.P10733114888537191218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304939 n - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A305004.P10733114888537191218

/-! ## A305004.P16148097151103072354

`A304939(A028310(n))+1`
-/

namespace A305004.P16148097151103072354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304939 (A028310 n).toNat + 1

end

end A305004.P16148097151103072354

/-! ## A305004.P7263437327947076234

`A304939(n)-A057428(n)`
-/

namespace A305004.P7263437327947076234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304939 n - A057428 n

end

end A305004.P7263437327947076234

/-! ## A305004.P17924712432832376245

`A304939(A065033(2*n))+1`
-/

namespace A305004.P17924712432832376245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304939 (A065033 (2 * n)).toNat + 1

end

end A305004.P17924712432832376245

/-! ## A305004.P15767221128878786805

`A304939(n)+a(A044941(n))` with `a(0)=1`
-/

namespace A305004.P15767221128878786805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304939 n + a (A044941 n).toNat

end

end A305004.P15767221128878786805

/-! ## A305004.P14023503268062659215

`A304939(n)+A230877(A072376(n))`
-/

namespace A305004.P14023503268062659215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304939 n + A230877 (A072376 n).toNat

end

end A305004.P14023503268062659215

/-! ## A305004.P9183018289408099038

`A304939(n)-A114327(A001105(n))`
-/

namespace A305004.P9183018289408099038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304939 n - A114327 (A001105 n).toNat

end

end A305004.P9183018289408099038

/-! ## A305004.P8071871595108532386

`A304939(n)+A006003(n)%A000124(n)`
-/

namespace A305004.P8071871595108532386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304939 n + Int.tmod (A006003 n) (A000124 n)

end

end A305004.P8071871595108532386

/-!
# A305005: Number of labeled clutters (connected antichains) spanning some subset of {1,...,n} without singleton edges.

The programs for A305005, there is no canonical definition to state claims against.
-/

/-! ## A305005.P2414899031539224466

`A304986(n)-n`
-/

namespace A305005.P2414899031539224466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304986 n - (n : ℤ)

end

end A305005.P2414899031539224466

/-! ## A305005.P2871399450046182746

`abs(A304986(n)+A001489(n))`
-/

namespace A305005.P2871399450046182746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A304986 n + A001489 n|

end

end A305005.P2871399450046182746

/-! ## A305005.P4507919871018752503

`abs(A304986(n)+A076313(n))`
-/

namespace A305005.P4507919871018752503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A304986 n + A076313 n|

end

end A305005.P4507919871018752503

/-! ## A305005.P15345180821832799297

`A000372(n)-(A327354(n)+n)`
-/

namespace A305005.P15345180821832799297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n - (A327354 n + (n : ℤ))

end

end A305005.P15345180821832799297

/-! ## A305005.P5262428729803294725

`A014466(n)+1-A327354(n)-n`
-/

namespace A305005.P5262428729803294725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 n + (1 - A327354 n) - (n : ℤ)

end

end A305005.P5262428729803294725

/-!
# A305006: Numerators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

The programs for A305006, the canonical program `A305006.P10100576833363132034` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305006 has offset 1).

The definition of A305006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305006.P2626976647992377928

`A002129(n+1)/(n+1)*A305007(n+1)`
-/

namespace A305006.P2626976647992377928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) : ℚ) / (n + 1 : ℚ) * (A305007 (n + 1) : ℚ)

end

end A305006.P2626976647992377928

namespace A305006

/-- `A002129(n+1)/(n+1)*A305007(n+1)` -/
def P2626976647992377928.Spec : Prop :=
  ∀ n, P2626976647992377928.a n = (A305006 (n + 1) : ℚ)

end A305006

/-! ## A305006.P10100576833363132034

`lcm((n+1)², A326238(n+1))/A162395(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A305006

/-- `lcm((n+1)², A326238(n+1))/A162395(n+1)` -/
def P10100576833363132034.Spec : Prop :=
  ∀ n, P10100576833363132034.a n = (A305006 (n + 1) : ℚ)

end A305006

/-! ## A305006.P4289382110807152107

`A002129(n+1)/gcd(A002129(n+1), A153152(n))`
-/

namespace A305006.P4289382110807152107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) : ℚ) / (Int.gcd (A002129 (n + 1)) (A153152 n) : ℚ)

end

end A305006.P4289382110807152107

namespace A305006

/-- `A002129(n+1)/gcd(A002129(n+1), A153152(n))` -/
def P4289382110807152107.Spec : Prop :=
  ∀ n, P4289382110807152107.a n = (A305006 (n + 1) : ℚ)

end A305006

/-! ## A305006.P3908311917040254588

`A002129(n+1)/A051119(A187829(n+1))`
-/

namespace A305006.P3908311917040254588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) : ℚ) / (A051119 (A187829 (n + 1)).toNat : ℚ)

end

end A305006.P3908311917040254588

namespace A305006

/-- `A002129(n+1)/A051119(A187829(n+1))` -/
def P3908311917040254588.Spec : Prop :=
  ∀ n, P3908311917040254588.a n = (A305006 (n + 1) : ℚ)

end A305006

/-! ## A305006.P6661160301382742609

`A002129(A000027(n+1))/A353688(A187829(n+1))`
-/

namespace A305006.P6661160301382742609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (A000027 (n + 1)).toNat : ℚ) / (A353688 (A187829 (n + 1)).toNat : ℚ)

end

end A305006.P6661160301382742609

namespace A305006

/-- `A002129(A000027(n+1))/A353688(A187829(n+1))` -/
def P6661160301382742609.Spec : Prop :=
  ∀ n, P6661160301382742609.a n = (A305006 (n + 1) : ℚ)

end A305006

/-!
# A305007: Denominators of coefficients in expansion of Sum_{k>=1} x^k/(k*(1 + x^k)).

The programs for A305007, the canonical program `A305007.P6262789419513029025` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305007 has offset 1).

The definition of A305007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305007.P6262789419513029025

`(n+1)/gcd(n+1, A002129(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A305007

/-- `(n+1)/gcd(n+1, A002129(n+1))` -/
def P6262789419513029025.Spec : Prop :=
  ∀ n, P6262789419513029025.a n = (A305007 (n + 1) : ℚ)

end A305007

/-! ## A305007.P10483600281673666500

`(n+1)/gcd(A002129(n+1), A153152(n))`
-/

namespace A305007.P10483600281673666500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A002129 (n + 1)) (A153152 n) : ℚ)

end

end A305007.P10483600281673666500

namespace A305007

/-- `(n+1)/gcd(A002129(n+1), A153152(n))` -/
def P10483600281673666500.Spec : Prop :=
  ∀ n, P10483600281673666500.a n = (A305007 (n + 1) : ℚ)

end A305007

/-! ## A305007.P11790891503715367667

`(n+1)/A002129(n+1)*A305006(n+1)`
-/

namespace A305007.P11790891503715367667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002129 (n + 1) : ℚ) * (A305006 (n + 1) : ℚ)

end

end A305007.P11790891503715367667

namespace A305007

/-- `(n+1)/A002129(n+1)*A305006(n+1)` -/
def P11790891503715367667.Spec : Prop :=
  ∀ n, P11790891503715367667.a n = (A305007 (n + 1) : ℚ)

end A305007

/-! ## A305007.P1048184932804354907

`lcm(n+1, A002129(n+1))/A113184(n+1)`
-/

namespace A305007.P1048184932804354907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A002129 (n + 1)) : ℚ) / (A113184 (n + 1) : ℚ)

end

end A305007.P1048184932804354907

namespace A305007

/-- `lcm(n+1, A002129(n+1))/A113184(n+1)` -/
def P1048184932804354907.Spec : Prop :=
  ∀ n, P1048184932804354907.a n = (A305007 (n + 1) : ℚ)

end A305007

/-! ## A305007.P18010193523025298508

`A000027(n+1)/gcd(A000027(n+1), A058344(n+1))`
-/

namespace A305007.P18010193523025298508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A058344 (n + 1)) : ℚ)

end

end A305007.P18010193523025298508

namespace A305007

/-- `A000027(n+1)/gcd(A000027(n+1), A058344(n+1))` -/
def P18010193523025298508.Spec : Prop :=
  ∀ n, P18010193523025298508.a n = (A305007 (n + 1) : ℚ)

end A305007

/-! ## A305007.P17404682915418916224

`lcm(A000027(n+1), A113184(n+1))/A113184(n+1)`
-/

namespace A305007.P17404682915418916224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A113184 (n + 1)) : ℚ) / (A113184 (n + 1) : ℚ)

end

end A305007.P17404682915418916224

namespace A305007

/-- `lcm(A000027(n+1), A113184(n+1))/A113184(n+1)` -/
def P17404682915418916224.Spec : Prop :=
  ∀ n, P17404682915418916224.a n = (A305007 (n + 1) : ℚ)

end A305007

/-!
# A305009: Number of n X n 0..1 arrays with every element unequal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305009, there is no canonical definition to state claims against.
-/

/-! ## A305009.P15067760661195972425

`A305015(∑[4*n]+1)`
-/

namespace A305009.P15067760661195972425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305009.P15067760661195972425

/-! ## A305009.P13951932092567144755

`record[A305015(Δ[A235355(n)])]`
-/

namespace A305009.P13951932092567144755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305009.P13951932092567144755

/-! ## A305009.P11736687685858225057

`record[A305015(A330613(n+1))]`
-/

namespace A305009.P11736687685858225057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305009.P11736687685858225057

/-! ## A305009.P12598937638524155597

`A305015(A001844(n))+char[10]`
-/

namespace A305009.P12598937638524155597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305009.P12598937638524155597

/-! ## A305009.P3601618623857314705

`record[A216230(2*n)*A305015(2*n+1)]`
-/

namespace A305009.P3601618623857314705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 (2 * n) * A305015 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305009.P3601618623857314705

/-!
# A305010: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305010, there is no canonical definition to state claims against.
-/

/-! ## A305010.P715476874124704052

`A305015(∑[n+2]+4)`
-/

namespace A305010.P715476874124704052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305010.P715476874124704052

/-! ## A305010.P7204874606709424807

`A305015(A167614(n+1))+char[21]`
-/

namespace A305010.P7204874606709424807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305010.P7204874606709424807

/-! ## A305010.P17590794499661958022

`record[gcd(A303913(n), A305015(n+1))]`
-/

namespace A305010.P17590794499661958022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A305015 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305010.P17590794499661958022

/-! ## A305010.P5887625895427134295

`A305015(A034856(n+1)+5)+char[20]`
-/

namespace A305010.P5887625895427134295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305010.P5887625895427134295

/-! ## A305010.P16721913478710986107

`A326543(n)+A305015(A167614(n+1))`
-/

namespace A305010.P16721913478710986107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 n + A305015 (A167614 (n + 1)).toNat

end

end A305010.P16721913478710986107

/-!
# A305011: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305011, there is no canonical definition to state claims against.
-/

/-! ## A305011.P2281729049817068393

`A305015(∑[n+3]+7)`
-/

namespace A305011.P2281729049817068393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305011.P2281729049817068393

/-! ## A305011.P11794275088776438027

`A305015(A052905(n)+9)+C(n, 64)²`
-/

namespace A305011.P11794275088776438027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A052905 n + 9).toNat + (Nat.choose n 64 ^ 2 : ℤ)

end

end A305011.P11794275088776438027

/-! ## A305011.P602295181394650341

`A007318(and(1, -n))*A305015(A052905(n)+9)`
-/

namespace A305011.P602295181394650341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A305015 (A052905 n + 9).toNat

end

end A305011.P602295181394650341

/-! ## A305011.P3313544166896706634

`A000041(C(2, n+2))*A305015(A052905(n)+9)`
-/

namespace A305011.P3313544166896706634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A305015 (A052905 n + 9).toNat

end

end A305011.P3313544166896706634

/-! ## A305011.P1745575527133082727

`A305015(A052905(n)+9)%A000041(8*n+11)`
-/

namespace A305011.P1745575527133082727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305015 (A052905 n + 9).toNat) (A000041 (8 * n + 11))

end

end A305011.P1745575527133082727

/-!
# A305012: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305012, there is no canonical definition to state claims against.
-/

/-! ## A305012.P9296269900336766802

`A305015(∑[n+4]+11)`
-/

namespace A305012.P9296269900336766802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305012.P9296269900336766802

/-! ## A305012.P4684031723695297817

`or(A000007(n), A305015(A167499(n+3)))`
-/

namespace A305012.P4684031723695297817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A305015 (A167499 (n + 3)).toNat)

end

end A305012.P4684031723695297817

/-! ## A305012.P12805449172746361999

`A305015(A167499(n+3))+A000007(n+1)`
-/

namespace A305012.P12805449172746361999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A167499 (n + 3)).toNat + A000007 (n + 1)

end

end A305012.P12805449172746361999

/-! ## A305012.P8233091414977955308

`A344420(A344420(n))+A305015(A155212(n)+13)`
-/

namespace A305012.P8233091414977955308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A344420 n).toNat + A305015 (A155212 n + 13).toNat

end

end A305012.P8233091414977955308

/-! ## A305012.P10160149365726384946

`A305015(A374005(n+1))%A233505(n+4)`
-/

namespace A305012.P10160149365726384946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305015 (A374005 (n + 1)).toNat) (A233505 (n + 4))

end

end A305012.P10160149365726384946

/-!
# A305013: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305013, there is no canonical definition to state claims against.
-/

/-! ## A305013.P14082513421444595938

`A305015(A056115(n)+21)`
-/

namespace A305013.P14082513421444595938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A056115 n + 21).toNat

end

end A305013.P14082513421444595938

/-! ## A305013.P2635268563431641301

`A305015(A167499(n+4)+1)`
-/

namespace A305013.P2635268563431641301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A167499 (n + 4) + 1).toNat

end

end A305013.P2635268563431641301

/-! ## A305013.P795868342052228423

`A305015(A000124(n+5)+5)`
-/

namespace A305013.P795868342052228423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A000124 (n + 5) + 5).toNat

end

end A305013.P795868342052228423

/-! ## A305013.P17259105856035171686

`A305015(A000096(n+4)+7)`
-/

namespace A305013.P17259105856035171686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A000096 (n + 4) + 7).toNat

end

end A305013.P17259105856035171686

/-! ## A305013.P13919210790415702388

`A305015(A000217(n+5)+6)`
-/

namespace A305013.P13919210790415702388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A000217 (n + 5) + 6).toNat

end

end A305013.P13919210790415702388

/-!
# A305014: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305014, there is no canonical definition to state claims against.
-/

/-! ## A305014.P225786867176093141

`A305015(A056119(n)+28)`
-/

namespace A305014.P225786867176093141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A056119 n + 28).toNat

end

end A305014.P225786867176093141

/-! ## A305014.P10495352105397591723

`A305015(eq[11, A066657(n)])`
-/

namespace A305014.P10495352105397591723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305014.P10495352105397591723

/-! ## A305014.P18353671314476237998

`A305015(A167499(n+5)+2)`
-/

namespace A305014.P18353671314476237998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A167499 (n + 5) + 2).toNat

end

end A305014.P18353671314476237998

/-! ## A305014.P13136722026968049458

`A305015(A000217(n+6)+7)`
-/

namespace A305014.P13136722026968049458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A000217 (n + 6) + 7).toNat

end

end A305014.P13136722026968049458

/-! ## A305014.P16169072152232675574

`A305015(A027379(n+4)+10)`
-/

namespace A305014.P16169072152232675574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305015 (A027379 (n + 4) + 10).toNat

end

end A305014.P16169072152232675574

/-!
# A305015: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305015, there is no canonical definition to state claims against.
-/

/-! ## A305015.P6505662079424669435

`A316648(n+1)-A186034(A022167(n))`
-/

namespace A305015.P6505662079424669435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) - A186034 (A022167 n).toNat

end

end A305015.P6505662079424669435

/-! ## A305015.P9466620994911409042

`A316648(n+1)-A184159(A099594(n))`
-/

namespace A305015.P9466620994911409042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) - A184159 (A099594 n).toNat

end

end A305015.P9466620994911409042

/-! ## A305015.P18067984783547807035

`A316648(n+1)-A173920(A173917(n))`
-/

namespace A305015.P18067984783547807035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) - A173920 (A173917 n).toNat

end

end A305015.P18067984783547807035

/-! ## A305015.P6583894209647889106

`A316176(n+1)-A174875(A157177(n))`
-/

namespace A305015.P6583894209647889106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (n + 1) - A174875 (A157177 n).toNat

end

end A305015.P6583894209647889106

/-! ## A305015.P14937047033659490145

`A316648(n+1)-A131809(A331277(n)²)`
-/

namespace A305015.P14937047033659490145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) - A131809 (A331277 n ^ 2).toNat

end

end A305015.P14937047033659490145

/-!
# A305016: Number of n X n 0..1 arrays with every element unequal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305016, there is no canonical definition to state claims against.
-/

/-! ## A305016.P804349443773076583

`A305022(∑[4*n]+1)`
-/

namespace A305016.P804349443773076583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305016.P804349443773076583

/-! ## A305016.P10320017128546785036

`record[A305022(A152271(n²))]`
-/

namespace A305016.P10320017128546785036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305016.P10320017128546785036

/-! ## A305016.P12036461768636494112

`record[A003982(n)*A305022(n+1)]`
-/

namespace A305016.P12036461768636494112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305016.P12036461768636494112

/-! ## A305016.P13861583696372282220

`A305022(A001844(n))+A025439(n)`
-/

namespace A305016.P13861583696372282220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A001844 n).toNat + A025439 n

end

end A305016.P13861583696372282220

/-! ## A305016.P10231180982987838323

`lcm(A007318(n), A305022(A001844(n)))`
-/

namespace A305016.P10231180982987838323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A305022 (A001844 n).toNat)

end

end A305016.P10231180982987838323

/-!
# A305017: Number of nX3 0..1 arrays with every element unequal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305017, there is no canonical definition to state claims against.
-/

/-! ## A305017.P6324366605941851248

`A305022(∑[n+2]+4)`
-/

namespace A305017.P6324366605941851248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305017.P6324366605941851248

/-! ## A305017.P7268738696466625339

`A316686(∑[n+2]+4)`
-/

namespace A305017.P7268738696466625339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305017.P7268738696466625339

/-! ## A305017.P800459210612568483

`A316686(A167614(n+1))+A025469(n)`
-/

namespace A305017.P800459210612568483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A167614 (n + 1)).toNat + A025469 n

end

end A305017.P800459210612568483

/-! ## A305017.P17220617044945480446

`A316686(A167614(n+1))+A137579(n)`
-/

namespace A305017.P17220617044945480446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A167614 (n + 1)).toNat + A137579 n

end

end A305017.P17220617044945480446

/-! ## A305017.P9711866447586660077

`A057427(n)*A305022(A167614(n+1))`
-/

namespace A305017.P9711866447586660077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A305022 (A167614 (n + 1)).toNat

end

end A305017.P9711866447586660077

/-!
# A305018: Number of nX4 0..1 arrays with every element unequal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305018, there is no canonical definition to state claims against.
-/

/-! ## A305018.P16487773115099196658

`A305022(A374004(n+1))`
-/

namespace A305018.P16487773115099196658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A374004 (n + 1)).toNat

end

end A305018.P16487773115099196658

/-! ## A305018.P9705802740019386484

`A316686(A141214(n)+7)`
-/

namespace A305018.P9705802740019386484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A141214 n + 7).toNat

end

end A305018.P9705802740019386484

/-! ## A305018.P2548030507873101651

`A305022(A052905(n)+9)`
-/

namespace A305018.P2548030507873101651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A052905 n + 9).toNat

end

end A305018.P2548030507873101651

/-! ## A305018.P15987740156059346019

`A316686(A052905(n)+9)`
-/

namespace A305018.P15987740156059346019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (A052905 n + 9).toNat

end

end A305018.P15987740156059346019

/-! ## A305018.P10640997681760156630

`A305022(A055999(n)+10)`
-/

namespace A305018.P10640997681760156630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A055999 n + 10).toNat

end

end A305018.P10640997681760156630

/-!
# A305019: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305019, there is no canonical definition to state claims against.
-/

/-! ## A305019.P8892546871689509640

`A305022(A374005(n+1))`
-/

namespace A305019.P8892546871689509640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A374005 (n + 1)).toNat

end

end A305019.P8892546871689509640

/-! ## A305019.P9875109301957903108

`A305022(A155212(n)+13)`
-/

namespace A305019.P9875109301957903108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A155212 n + 13).toNat

end

end A305019.P9875109301957903108

/-! ## A305019.P9653876696035485088

`A305022(A000124(n+4)+4)`
-/

namespace A305019.P9653876696035485088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A000124 (n + 4) + 4).toNat

end

end A305019.P9653876696035485088

/-! ## A305019.P16480775218010696771

`A305022(record[A031285(n)]+A052905(n)+9)`
-/

namespace A305019.P16480775218010696771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A052905 n + 9)).toNat

end

end A305019.P16480775218010696771

/-! ## A305019.P18290085662897444283

`A305022(Δ[A023545(n+1)])`
-/

namespace A305019.P18290085662897444283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (f1 (n + 1) - f1 n).toNat

end

end A305019.P18290085662897444283

/-!
# A305020: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305020, there is no canonical definition to state claims against.
-/

/-! ## A305020.P38350065294264725

`A305022(A374007(n+1))`
-/

namespace A305020.P38350065294264725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A374007 (n + 1)).toNat

end

end A305020.P38350065294264725

/-! ## A305020.P4405111807730015273

`A305022(A052905(n+3))`
-/

namespace A305020.P4405111807730015273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A052905 (n + 3)).toNat

end

end A305020.P4405111807730015273

/-! ## A305020.P8898237100364549402

`A305022(eq[3, A219347(n)])`
-/

namespace A305020.P8898237100364549402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305020.P8898237100364549402

/-! ## A305020.P15836708242373307214

`A305022(eq[7, A049286(n+1)])`
-/

namespace A305020.P15836708242373307214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305020.P15836708242373307214

/-! ## A305020.P5548117780827712437

`A305022(Δ[Δ[A006504(n+1)]])`
-/

namespace A305020.P5548117780827712437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (f1 (n + 1) - f1 n).toNat

end

end A305020.P5548117780827712437

/-!
# A305021: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305021, there is no canonical definition to state claims against.
-/

/-! ## A305021.P7855887654268295101

`A305022(A374008(n+1))`
-/

namespace A305021.P7855887654268295101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A374008 (n + 1)).toNat

end

end A305021.P7855887654268295101

/-! ## A305021.P12569712381019781411

`A305022(A166136(n+5)+1)`
-/

namespace A305021.P12569712381019781411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (A166136 (n + 5) + 1).toNat

end

end A305021.P12569712381019781411

/-! ## A305021.P14951557377595577739

`A305022(eq[8, A131818(n+1)])`
-/

namespace A305021.P14951557377595577739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305021.P14951557377595577739

/-! ## A305021.P16974519816988280336

`A305022(Δ[A023551(n+1)]+13)`
-/

namespace A305021.P16974519816988280336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (f1 (n + 1) - f1 n + 13).toNat

end

end A305021.P16974519816988280336

/-! ## A305021.P4350771700789015628

`A305022(eq[4, A219347(n)])`
-/

namespace A305021.P4350771700789015628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305021.P4350771700789015628

/-!
# A305022: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305022, there is no canonical definition to state claims against.
-/

/-! ## A305022.P18246137245451664573

`A316686(∑[A010894(n)!])`
-/

namespace A305022.P18246137245451664573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305022.P18246137245451664573

/-! ## A305022.P18090576026180827503

`A316686(∑[A036225(n)^9])`
-/

namespace A305022.P18090576026180827503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305022.P18090576026180827503

/-! ## A305022.P13569214012732259907

`A316686(A010894(n)!+n)`
-/

namespace A305022.P13569214012732259907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A305022.P13569214012732259907

/-! ## A305022.P17755669369715553046

`A316686((n+1)^A036225(n))`
-/

namespace A305022.P17755669369715553046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A036225 n : ℤ))).toNat

end

end A305022.P17755669369715553046

/-! ## A305022.P14783571362438290187

`filter[A316686(n+1), A347523(#)]`
-/

namespace A305022.P14783571362438290187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A305022.P14783571362438290187

/-!
# A305023: Number of triples (p,q,r) of partitions such that p is a partition of n and r <= q <= p (by diagram containment).

The programs for A305023, there is no canonical definition to state claims against.
-/

/-! ## A305023.P6948195607897132807

`A243185(A218575(n+1)+1)`
-/

namespace A305023.P6948195607897132807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243185 (A218575 (n + 1) + 1).toNat

end

end A305023.P6948195607897132807

/-! ## A305023.P9807330010212774104

`A244970(A113699(n+1))+A000337(n)`
-/

namespace A305023.P9807330010212774104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244970 (A113699 (n + 1)).toNat + A000337 n

end

end A305023.P9807330010212774104

/-!
# A305024: Minimal number of squares, not all equal to 1, having as sum prime(n), such that their squares also sum to a prime; 0 if no such decomposition exists.

The programs for A305024, there is no canonical definition to state claims against.
-/

/-! ## A305024.P14576169145525485401

`A002828(A000040(n+1)%A350426(n+2))`
-/

namespace A305024.P14576169145525485401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (A000040 (n + 1)) (A350426 (n + 2))).toNat

end

end A305024.P14576169145525485401

/-! ## A305024.P17351761334136730784

`A002828(∑[A054541(n+1)]%A114411(2*n))`
-/

namespace A305024.P17351761334136730784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A114411 (2 * n))).toNat

end

end A305024.P17351761334136730784

/-! ## A305024.P1471426758944279968

`A002828(A118848(n+1)%A193595(3*n+2))`
-/

namespace A305024.P1471426758944279968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (A118848 (n + 1)) (A193595 (3 * n + 2))).toNat

end

end A305024.P1471426758944279968

/-! ## A305024.P2254051478050910213

`A002828((A014692(n+1)+n)%A114411(2*n))`
-/

namespace A305024.P2254051478050910213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (A014692 (n + 1) + (n : ℤ)) (A114411 (2 * n))).toNat

end

end A305024.P2254051478050910213

/-! ## A305024.P12508968553467964620

`A002828(∑{d}[n+1, A007444(#)]%A114411(2*n))`
-/

namespace A305024.P12508968553467964620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (∑ d ∈ Nat.divisors (f1 n), A007444 d) (A114411 (2 * n))).toNat

end

end A305024.P12508968553467964620

/-!
# A305025: a(n) = A001221(A004394(n)).

The programs for A305025, there is no canonical definition to state claims against.
-/

/-! ## A305025.P7835091292436162651

`A061394(A293635(n+1))`
-/

namespace A305025.P7835091292436162651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (A293635 (n + 1)).toNat

end

end A305025.P7835091292436162651

/-! ## A305025.P4195783346342642326

`A061395(A004394(n+1)/A139554(n))`
-/

namespace A305025.P4195783346342642326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A004394 (n + 1) : ℚ) / (A139554 n : ℚ))).toNat

end

end A305025.P4195783346342642326

/-! ## A305025.P10180475110017786129

`A124830(A332035(n+1))`
-/

namespace A305025.P10180475110017786129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124830 (A332035 (n + 1)).toNat

end

end A305025.P10180475110017786129

/-! ## A305025.P425778521057595428

`floor(sqrt(A147820(n+1)%A127302(n)))`
-/

namespace A305025.P425778521057595428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A147820 (n + 1)) (A127302 n))

end

end A305025.P425778521057595428

/-! ## A305025.P15275135531452320433

`∑{e}[A247451(A293635(n+1)), A000108(#)]`
-/

namespace A305025.P15275135531452320433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (A293635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000108 (Nat.factorization (f1 n).natAbs p)

end

end A305025.P15275135531452320433

/-!
# A305027: Array read by antidiagonals: T(n,m) is the number of nonisomorphic binary n X m matrices with 3 1's per column under row and column permutations (m >= 3).

The programs for A305027, there is no canonical definition to state claims against.
-/

/-! ## A305027.P11568249254306120574

`A364144(A362897(n))`
-/

namespace A305027.P11568249254306120574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364144 (A362897 n).toNat

end

end A305027.P11568249254306120574

/-! ## A305027.P11715632956158099243

`A351700(A384437(n))`
-/

namespace A305027.P11715632956158099243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351700 (A384437 n).toNat

end

end A305027.P11715632956158099243

/-! ## A305027.P13324657196869147575

`A039996(A184639(n+1)^A351357(n+1))`
-/

namespace A305027.P13324657196869147575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (SequenceMachineLib.roundAway ((A184639 (n + 1) : ℚ) ^ (A351357 (n + 1) : ℤ))).toNat

end

end A305027.P13324657196869147575

/-!
# A305028: Number of unlabeled blobs spanning n vertices without singleton edges.

The programs for A305028, there is no canonical definition to state claims against.
-/

/-! ## A305028.P15324253005107431725

`a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=10, a(5)=128`
-/

namespace A305028.P15324253005107431725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 10, 128] fun n a =>
  a (n - 3)

end

end A305028.P15324253005107431725

/-!
# A305029: Period 10 sequence [ 0, 2, 2, 2, 2, 0, -2, -2, -2, -2, ...] except a(0) = 1.

The programs for A305029, the canonical program `A305029.P18160857359177555856` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305029 has offset 0).

The definition of A305029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305029.P18160857359177555856

`-a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2, a(5)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305029

/-- `-a(n-5)` -/
def P18160857359177555856.Spec : Prop :=
  ∀ n, P18160857359177555856.a n = A305029 n

theorem P18160857359177555856.correct : P18160857359177555856.Spec := by
  intro n
  simp only [A305029]

end A305029

/-!
# A305030: Number of pairs {k, m} with 0 <= k <= m such that binomial(2k,k) + binomial(2m,m) is not only a primitive root modulo prime(n) but also smaller than prime(n).

The programs for A305030, there is no canonical definition to state claims against.
-/

/-! ## A305030.P5312526411828845057

`A001222(A048896(n)+A002605(n))`
-/

namespace A305030.P5312526411828845057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048896 n + A002605 n).toNat

end

end A305030.P5312526411828845057

/-! ## A305030.P11202293961060419713

`A322862(A222176(n)+A218482(n))`
-/

namespace A305030.P11202293961060419713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322862 (A222176 n + A218482 n).toNat

end

end A305030.P11202293961060419713

/-! ## A305030.P4613928794728921295

`A122922(A002350(n+1))+A122922(n)`
-/

namespace A305030.P4613928794728921295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A002350 (n + 1)).toNat + A122922 n

end

end A305030.P4613928794728921295

/-! ## A305030.P8591017324108727124

`A000120(A108951(n+1)-A119704(n))`
-/

namespace A305030.P8591017324108727124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A108951 (n + 1) - A119704 n).toNat

end

end A305030.P8591017324108727124

/-! ## A305030.P9857040577711166450

`A363944(A033862(n+1)*A363533(n+1))`
-/

namespace A305030.P9857040577711166450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (A033862 (n + 1) * A363533 (n + 1)).toNat

end

end A305030.P9857040577711166450

/-!
# A305031: Expansion of ((1 + 2*x)/(1 - 2*x))^(3/2).

The programs for A305031, the canonical program `A305031.P1662226059483018231` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305031 has offset 0).

The definition of A305031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305031.P1662226059483018231

`A047471(n+1)*A063886(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A305031

/-- `A047471(n+1)*A063886(n)` -/
def P1662226059483018231.Spec : Prop :=
  ∀ n, P1662226059483018231.a n = A305031 n

theorem P1662226059483018231.correct : P1662226059483018231.Spec := by
  intro n
  simp only [A305031]

end A305031

/-! ## A305031.P1930050822559438949

`A000007(n)+2*A305612(n)`
-/

namespace A305031.P1930050822559438949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A305612 n

end

end A305031.P1930050822559438949

namespace A305031

/-- `A000007(n)+2*A305612(n)` -/
def P1930050822559438949.Spec : Prop :=
  ∀ n, P1930050822559438949.a n = A305031 n

end A305031

/-! ## A305031.P4831226865049815175

`A005408(A042948(n))*A063886(n)`
-/

namespace A305031.P4831226865049815175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A042948 n).toNat * A063886 n

end

end A305031.P4831226865049815175

namespace A305031

/-- `A005408(A042948(n))*A063886(n)` -/
def P4831226865049815175.Spec : Prop :=
  ∀ n, P4831226865049815175.a n = A305031 n

end A305031

/-! ## A305031.P6650949120157524641

`A063886(n)*A080414(A016825(n))`
-/

namespace A305031.P6650949120157524641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n * A080414 (A016825 n).toNat

end

end A305031.P6650949120157524641

namespace A305031

/-- `A063886(n)*A080414(A016825(n))` -/
def P6650949120157524641.Spec : Prop :=
  ∀ n, P6650949120157524641.a n = A305031 n

end A305031

/-! ## A305031.P8345015619678509341

`A004273(A042948(n)+1)*A063886(n)`
-/

namespace A305031.P8345015619678509341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A042948 n + 1).toNat * A063886 n

end

end A305031.P8345015619678509341

namespace A305031

/-- `A004273(A042948(n)+1)*A063886(n)` -/
def P8345015619678509341.Spec : Prop :=
  ∀ n, P8345015619678509341.a n = A305031 n

end A305031

/-! ## A305031.P9334629495225261548

`A004273(A042963(n+1))*A063886(n)`
-/

namespace A305031.P9334629495225261548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A042963 (n + 1)).toNat * A063886 n

end

end A305031.P9334629495225261548

namespace A305031

/-- `A004273(A042963(n+1))*A063886(n)` -/
def P9334629495225261548.Spec : Prop :=
  ∀ n, P9334629495225261548.a n = A305031 n

end A305031

/-!
# A305032: a(0) = 0, a(1) = 1 and a(n) = 6*a(n-1)/(n-1) + 4*a(n-2) for n > 1.

The programs for A305032, the canonical program `A305032.P5721359160864012643` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305032 has offset 0).

The definition of A305032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305032.P5721359160864012643

`6*a(n-1)/(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305032

/-- `6*a(n-1)/(n-1)+4*a(n-2)` -/
def P5721359160864012643.Spec : Prop :=
  ∀ n, P5721359160864012643.a n = (A305032 n : ℚ)

end A305032

/-! ## A305032.P11997207290302997167

`n*A305031(n)/6`
-/

namespace A305032.P11997207290302997167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A305031 n : ℚ) / 6

end

end A305032.P11997207290302997167

namespace A305032

/-- `n*A305031(n)/6` -/
def P11997207290302997167.Spec : Prop :=
  ∀ n, P11997207290302997167.a n = (A305032 n : ℚ)

end A305032

/-! ## A305032.P17865456835936156532

`n/3*A305612(n)`
-/

namespace A305032.P17865456835936156532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A305612 n : ℚ)

end

end A305032.P17865456835936156532

namespace A305032

/-- `n/3*A305612(n)` -/
def P17865456835936156532.Spec : Prop :=
  ∀ n, P17865456835936156532.a n = (A305032 n : ℚ)

end A305032

/-! ## A305032.P4990882210572933832

`n*(A099326(n)-A102699(n))/3`
-/

namespace A305032.P4990882210572933832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A099326 n - A102699 n : ℚ) / 3)

end

end A305032.P4990882210572933832

namespace A305032

/-- `n*(A099326(n)-A102699(n))/3` -/
def P4990882210572933832.Spec : Prop :=
  ∀ n, P4990882210572933832.a n = (A305032 n : ℚ)

end A305032

/-! ## A305032.P5587923736462743650

`n*(A152548(n)-A210736(n))/3`
-/

namespace A305032.P5587923736462743650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A152548 n - A210736 n : ℚ) / 3)

end

end A305032.P5587923736462743650

namespace A305032

/-- `n*(A152548(n)-A210736(n))/3` -/
def P5587923736462743650.Spec : Prop :=
  ∀ n, P5587923736462743650.a n = (A305032 n : ℚ)

end A305032

/-! ## A305032.P446712919997951402

`A099327(n+1)-(A099326(n+1)+A099326(n))`
-/

namespace A305032.P446712919997951402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099327 (n + 1) - (A099326 (n + 1) + A099326 n)

end

end A305032.P446712919997951402

namespace A305032

/-- `A099327(n+1)-(A099326(n+1)+A099326(n))` -/
def P446712919997951402.Spec : Prop :=
  ∀ n, P446712919997951402.a n = A305032 n

end A305032

/-!
# A305033: Numbers m such that m + k# is a prime, where k = floor(sqrt(m)) and k# is the primorial A034386(k).

The programs for A305033, there is no canonical definition to state claims against.
-/

/-! ## A305033.P17475268549851731620

`record[A014963(A284776(n+1)-A123068(n+1))]`
-/

namespace A305033.P17475268549851731620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A284776 (n + 1) - A123068 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305033.P17475268549851731620

/-! ## A305033.P15491813019319807824

`lt[A003415(n), A032741(A324781(n))]`
-/

namespace A305033.P15491813019319807824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A324781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305033.P15491813019319807824

/-! ## A305033.P3163469014195057776

`A045320(n+1)-A000122(A336632(n))`
-/

namespace A305033.P3163469014195057776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1) - A000122 (A336632 n).toNat

end

end A305033.P3163469014195057776

/-! ## A305033.P11747715939155697463

`eq[A056731(n+1), A327766(n)]`
-/

namespace A305033.P11747715939155697463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305033.P11747715939155697463

/-! ## A305033.P5694824939131096867

`eq[A136568(n+1), A327766(n)]`
-/

namespace A305033.P5694824939131096867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A305033.P5694824939131096867

/-!
# A305034: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305034, there is no canonical definition to state claims against.
-/

/-! ## A305034.P961345716605739609

`A305040(∑[4*n]+1)`
-/

namespace A305034.P961345716605739609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305034.P961345716605739609

/-! ## A305034.P9784497650613877733

`record[A003982(n)*A305040(n+1)]`
-/

namespace A305034.P9784497650613877733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305034.P9784497650613877733

/-! ## A305034.P9297798688019820572

`record[A214505(n)*A305040(n+1)]`
-/

namespace A305034.P9297798688019820572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A305040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305034.P9297798688019820572

/-! ## A305034.P5491481495337259461

`record[gcd(A008482(n), A305040(n+1))]`
-/

namespace A305034.P5491481495337259461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A305040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305034.P5491481495337259461

/-! ## A305034.P13914952093411407777

`lcm(1-and(2, n), A305040(A001844(n)))`
-/

namespace A305034.P13914952093411407777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A305040 (A001844 n).toNat)

end

end A305034.P13914952093411407777

/-!
# A305035: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305035, the canonical program `A305035.P16917004683546799366` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305035 has offset 1).

The definition of A305035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305035.P16917004683546799366

`a(n-1)+2*a(n-3)` with `a(0)=4, a(1)=3, a(2)=7, a(3)=7, a(4)=13, a(5)=23`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305035

/-- `a(n-1)+2*a(n-3)` -/
def P16917004683546799366.Spec : Prop :=
  ∀ n, (P16917004683546799366.a n : ℤ) = A305035 (n + 1)

theorem P16917004683546799366.correct : P16917004683546799366.Spec := by
  intro n
  simp only [A305035, Nat.add_sub_cancel]

end A305035

/-! ## A305035.P14859833952942968707

`A305040(∑[n+2]+4)`
-/

namespace A305035.P14859833952942968707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305035.P14859833952942968707

namespace A305035

/-- `A305040(∑[n+2]+4)` -/
def P14859833952942968707.Spec : Prop :=
  ∀ n, P14859833952942968707.a n = A305035 (n + 1)

end A305035

/-! ## A305035.P3850373912827090816

`A152848(n)*A305040(A167614(n+1))`
-/

namespace A305035.P3850373912827090816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 n * A305040 (A167614 (n + 1)).toNat

end

end A305035.P3850373912827090816

namespace A305035

/-- `A152848(n)*A305040(A167614(n+1))` -/
def P3850373912827090816.Spec : Prop :=
  ∀ n, P3850373912827090816.a n = A305035 (n + 1)

end A305035

/-! ## A305035.P15451084213632153275

`A305040(A167614(n+1))%A016840(n)`
-/

namespace A305035.P15451084213632153275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305040 (A167614 (n + 1)).toNat) (A016840 n)

end

end A305035.P15451084213632153275

namespace A305035

/-- `A305040(A167614(n+1))%A016840(n)` -/
def P15451084213632153275.Spec : Prop :=
  ∀ n, P15451084213632153275.a n = A305035 (n + 1)

end A305035

/-! ## A305035.P10864310467339435338

`or(A000035(n), A305040(A167614(n+1)))`
-/

namespace A305035.P10864310467339435338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A305040 (A167614 (n + 1)).toNat)

end

end A305035.P10864310467339435338

namespace A305035

/-- `or(A000035(n), A305040(A167614(n+1)))` -/
def P10864310467339435338.Spec : Prop :=
  ∀ n, P10864310467339435338.a n = A305035 (n + 1)

end A305035

/-!
# A305036: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305036, there is no canonical definition to state claims against.
-/

/-! ## A305036.P10664216768796930311

`A305040(A141214(n)+7)`
-/

namespace A305036.P10664216768796930311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A141214 n + 7).toNat

end

end A305036.P10664216768796930311

/-! ## A305036.P6002502870423441127

`A305040(A052905(n)+9)`
-/

namespace A305036.P6002502870423441127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A052905 n + 9).toNat

end

end A305036.P6002502870423441127

/-! ## A305036.P9918884022614568320

`A305040(A055999(n)+10)`
-/

namespace A305036.P9918884022614568320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A055999 n + 10).toNat

end

end A305036.P9918884022614568320

/-! ## A305036.P4244834153013377446

`A305040(A167614(n+2)+1)`
-/

namespace A305036.P4244834153013377446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A167614 (n + 2) + 1).toNat

end

end A305036.P4244834153013377446

/-! ## A305036.P12304056622536155944

`A305040(A166136(n+2)-2)`
-/

namespace A305036.P12304056622536155944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A166136 (n + 2) - 2).toNat

end

end A305036.P12304056622536155944

/-!
# A305037: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305037, there is no canonical definition to state claims against.
-/

/-! ## A305037.P16869820990931990266

`A305040(A167499(n+3))`
-/

namespace A305037.P16869820990931990266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A167499 (n + 3)).toNat

end

end A305037.P16869820990931990266

/-! ## A305037.P6594314078607730808

`A305040(A056000(n)+15)`
-/

namespace A305037.P6594314078607730808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A056000 n + 15).toNat

end

end A305037.P6594314078607730808

/-! ## A305037.P2989550334913308708

`A305040(A166136(n+3)-1)`
-/

namespace A305037.P2989550334913308708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A166136 (n + 3) - 1).toNat

end

end A305037.P2989550334913308708

/-! ## A305037.P2583191403845081320

`A305040(A167614(n+3)+2)`
-/

namespace A305037.P2583191403845081320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A167614 (n + 3) + 2).toNat

end

end A305037.P2583191403845081320

/-! ## A305037.P17579562578172431663

`A305040(A000124(n+5)-(n+1))`
-/

namespace A305037.P17579562578172431663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A305037.P17579562578172431663

/-!
# A305038: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305038, there is no canonical definition to state claims against.
-/

/-! ## A305038.P5869702581495016379

`A305040(A166136(n+4))`
-/

namespace A305038.P5869702581495016379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A166136 (n + 4)).toNat

end

end A305038.P5869702581495016379

/-! ## A305038.P2583288169268621859

`A305040(A000217(n+5)+6)`
-/

namespace A305038.P2583288169268621859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A000217 (n + 5) + 6).toNat

end

end A305038.P2583288169268621859

/-! ## A305038.P4872167275228577203

`A305040(A055999(n+2)+12)`
-/

namespace A305038.P4872167275228577203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A055999 (n + 2) + 12).toNat

end

end A305038.P4872167275228577203

/-! ## A305038.P4691278511236329159

`A305040(A167499(n+12)-A004769(n+8))`
-/

namespace A305038.P4691278511236329159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A167499 (n + 12) - A004769 (n + 8)).toNat

end

end A305038.P4691278511236329159

/-! ## A305038.P290246193135457576

`A305040(A374007(n+1))`
-/

namespace A305038.P290246193135457576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A374007 (n + 1)).toNat

end

end A305038.P290246193135457576

/-!
# A305039: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305039, there is no canonical definition to state claims against.
-/

/-! ## A305039.P1146305751285576091

`A305040(A166136(n+5)+1)`
-/

namespace A305039.P1146305751285576091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A166136 (n + 5) + 1).toNat

end

end A305039.P1146305751285576091

/-! ## A305039.P12252499905294448635

`A305040(A167499(n+5)+2)`
-/

namespace A305039.P12252499905294448635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A167499 (n + 5) + 2).toNat

end

end A305039.P12252499905294448635

/-! ## A305039.P1973580866854595393

`A305040(A000124(n+6)+6)`
-/

namespace A305039.P1973580866854595393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A000124 (n + 6) + 6).toNat

end

end A305039.P1973580866854595393

/-! ## A305039.P5291328620518410897

`A305040(A000217(n+6)+7)`
-/

namespace A305039.P5291328620518410897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A000217 (n + 6) + 7).toNat

end

end A305039.P5291328620518410897

/-! ## A305039.P198405089080507316

`A305040(A005408(n+9)+A000096(n+3))`
-/

namespace A305039.P198405089080507316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305040 (A005408 (n + 9) + A000096 (n + 3)).toNat

end

end A305039.P198405089080507316

/-!
# A305040: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305040, there is no canonical definition to state claims against.
-/

/-! ## A305040.P4127250005699395174

`A304230(n+1)-A305258(A131235(n))`
-/

namespace A305040.P4127250005699395174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (n + 1) - A305258 (A131235 n).toNat

end

end A305040.P4127250005699395174

/-! ## A305040.P11743273461206518089

`A316693(n+1)-A340998(A174376(n))`
-/

namespace A305040.P11743273461206518089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (n + 1) - A340998 ((A174376 n).toNat + 140)

end

end A305040.P11743273461206518089

/-! ## A305040.P16050627886480411439

`A304230(n+1)+A082858(A059441(n+1))`
-/

namespace A305040.P16050627886480411439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (n + 1) + A082858 (A059441 (n + 1)).toNat

end

end A305040.P16050627886480411439

/-! ## A305040.P6844802646609059973

`A304230(n+1)+A289618(A317525(n+1))`
-/

namespace A305040.P6844802646609059973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (n + 1) + A289618 (A317525 (n + 1)).toNat

end

end A305040.P6844802646609059973

/-! ## A305040.P16298674685489937529

`A305586(n+1)+A058348(A131235(n))`
-/

namespace A305040.P16298674685489937529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (n + 1) + A058348 (A131235 n).toNat

end

end A305040.P16298674685489937529

/-!
# A305041: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305041, there is no canonical definition to state claims against.
-/

/-! ## A305041.P6890812448095740512

`A305047(∑[4*n]+1)`
-/

namespace A305041.P6890812448095740512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305041.P6890812448095740512

/-! ## A305041.P6592638525321889879

`and(-1, A305047(A001844(n)))`
-/

namespace A305041.P6592638525321889879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305047 (A001844 n).toNat)

end

end A305041.P6592638525321889879

/-! ## A305041.P844788984320458361

`A305047(A001844(n))+A061858(n)`
-/

namespace A305041.P844788984320458361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A001844 n).toNat + A061858 n

end

end A305041.P844788984320458361

/-! ## A305041.P9217558853922621902

`A305047(A001844(n))+A065718(n)`
-/

namespace A305041.P9217558853922621902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A001844 n).toNat + A065718 n

end

end A305041.P9217558853922621902

/-! ## A305041.P10049903701312017976

`A305047(A001844(n))+A185237(n)`
-/

namespace A305041.P10049903701312017976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A001844 n).toNat + A185237 n

end

end A305041.P10049903701312017976

/-!
# A305042: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305042, there is no canonical definition to state claims against.
-/

/-! ## A305042.P206442015029336337

`A305047(∑[n+2]+4)`
-/

namespace A305042.P206442015029336337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305042.P206442015029336337

/-! ## A305042.P14781499920104928631

`and(-1, A305047(A167614(n+1)))`
-/

namespace A305042.P14781499920104928631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305047 (A167614 (n + 1)).toNat)

end

end A305042.P14781499920104928631

/-! ## A305042.P13467169308949659142

`or(char[1], A305047(A055998(n)+6))`
-/

namespace A305042.P13467169308949659142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305047 (A055998 n + 6).toNat)

end

end A305042.P13467169308949659142

/-! ## A305042.P18359961832355772084

`or(char[1], A305047(A046691(n)+7))`
-/

namespace A305042.P18359961832355772084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305047 (A046691 n + 7).toNat)

end

end A305042.P18359961832355772084

/-! ## A305042.P15606101396210782746

`A305047(A167614(n+1))+A025469(n)`
-/

namespace A305042.P15606101396210782746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A167614 (n + 1)).toNat + A025469 n

end

end A305042.P15606101396210782746

/-!
# A305043: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305043, there is no canonical definition to state claims against.
-/

/-! ## A305043.P492076331021682024

`A305047(∑[n+3]+7)`
-/

namespace A305043.P492076331021682024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305043.P492076331021682024

/-! ## A305043.P7428458492109296977

`or(char[1], A305047(A055999(n)+10))`
-/

namespace A305043.P7428458492109296977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305047 (A055999 n + 10).toNat)

end

end A305043.P7428458492109296977

/-! ## A305043.P15861077349006410117

`or(char[1], A305047(A000217(n+3)+4))`
-/

namespace A305043.P15861077349006410117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305047 (A000217 (n + 3) + 4).toNat)

end

end A305043.P15861077349006410117

/-! ## A305043.P9453561359261343950

`∑{d}[A305047(A000217(n+3)+4), A000010(#)]`
-/

namespace A305043.P9453561359261343950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A000217 (n + 3) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A305043.P9453561359261343950

/-! ## A305043.P13371826278093584593

`A007318(C(2, n))*A305047(A000217(n+3)+4)`
-/

namespace A305043.P13371826278093584593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A305047 (A000217 (n + 3) + 4).toNat

end

end A305043.P13371826278093584593

/-!
# A305044: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305044, there is no canonical definition to state claims against.
-/

/-! ## A305044.P11132808661123996631

`A305047(A167499(n+3))`
-/

namespace A305044.P11132808661123996631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A167499 (n + 3)).toNat

end

end A305044.P11132808661123996631

/-! ## A305044.P14317892328424806787

`A305047(A077169(n+5))`
-/

namespace A305044.P14317892328424806787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A077169 (n + 5)).toNat

end

end A305044.P14317892328424806787

/-! ## A305044.P4245755002462596280

`A305047(A155212(n)+13)`
-/

namespace A305044.P4245755002462596280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A155212 n + 13).toNat

end

end A305044.P4245755002462596280

/-! ## A305044.P14961362999370964098

`A305047(A056000(n)+15)`
-/

namespace A305044.P14961362999370964098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A056000 n + 15).toNat

end

end A305044.P14961362999370964098

/-! ## A305044.P7963879074951910359

`A305047(eq[7, A066657(n)])`
-/

namespace A305044.P7963879074951910359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305044.P7963879074951910359

/-!
# A305045: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305045, there is no canonical definition to state claims against.
-/

/-! ## A305045.P3101914558553674872

`A305047(A056115(n)+21)`
-/

namespace A305045.P3101914558553674872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A056115 n + 21).toNat

end

end A305045.P3101914558553674872

/-! ## A305045.P9494966320939740822

`A305047(A167499(n+4)+1)`
-/

namespace A305045.P9494966320939740822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A167499 (n + 4) + 1).toNat

end

end A305045.P9494966320939740822

/-! ## A305045.P1969820743318530047

`A305047(A077169(n+6)+1)`
-/

namespace A305045.P1969820743318530047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A077169 (n + 6) + 1).toNat

end

end A305045.P1969820743318530047

/-! ## A305045.P3379057965831191478

`A305047(A167614(n+4)+3)`
-/

namespace A305045.P3379057965831191478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A167614 (n + 4) + 3).toNat

end

end A305045.P3379057965831191478

/-! ## A305045.P5529538640055838540

`A305047(A000124(n+5)+5)`
-/

namespace A305045.P5529538640055838540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A000124 (n + 5) + 5).toNat

end

end A305045.P5529538640055838540

/-!
# A305046: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305046, there is no canonical definition to state claims against.
-/

/-! ## A305046.P8248034611738566448

`A305047(A167487(n+5))`
-/

namespace A305046.P8248034611738566448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A167487 (n + 5)).toNat

end

end A305046.P8248034611738566448

/-! ## A305046.P15175749949262561831

`A305047(A056119(n)+28)`
-/

namespace A305046.P15175749949262561831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A056119 n + 28).toNat

end

end A305046.P15175749949262561831

/-! ## A305046.P17460363169790880422

`A305047(A167499(n+5)+2)`
-/

namespace A305046.P17460363169790880422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A167499 (n + 5) + 2).toNat

end

end A305046.P17460363169790880422

/-! ## A305046.P2068023731953506696

`A305047(A167614(n+5)+4)`
-/

namespace A305046.P2068023731953506696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A167614 (n + 5) + 4).toNat

end

end A305046.P2068023731953506696

/-! ## A305046.P9510181918879285386

`A305047(A000124(n+6)+6)`
-/

namespace A305046.P9510181918879285386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305047 (A000124 (n + 6) + 6).toNat

end

end A305046.P9510181918879285386

/-!
# A305047: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305047, there is no canonical definition to state claims against.
-/

/-! ## A305047.P8534574957086946798

`A316733(n+1)%∑[A219802(n+1)]`
-/

namespace A305047.P8534574957086946798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316733 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305047.P8534574957086946798

/-! ## A305047.P4425514139108169683

`or(C(A316695(n+1), n), A316733(n+1))`
-/

namespace A305047.P4425514139108169683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose (A316695 (n + 1)).toNat n : ℤ) (A316733 (n + 1))

end

end A305047.P4425514139108169683

/-! ## A305047.P7050079157721255917

`A316733(n+1)+A000007(A051715(n))`
-/

namespace A305047.P7050079157721255917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (n + 1) + A000007 (A051715 n).toNat

end

end A305047.P7050079157721255917

/-! ## A305047.P16114283148603941361

`A316733(n+1)+A000007(A219924(n))`
-/

namespace A305047.P16114283148603941361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (n + 1) + A000007 (A219924 n).toNat

end

end A305047.P16114283148603941361

/-! ## A305047.P4962465157491858

`A316733(n+1)+A000007(A329316(n))`
-/

namespace A305047.P4962465157491858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (n + 1) + A000007 (A329316 n).toNat

end

end A305047.P4962465157491858

/-! ## A305047.P17007886530271814109

`A316733(n+1)%A254242(A013598(n))`
-/

namespace A305047.P17007886530271814109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316733 (n + 1)) (A254242 (A013598 n).toNat)

end

end A305047.P17007886530271814109

/-! ## A305047.P17691517432459039330

`A316733(n+1)+A007814(A125636(n+1))`
-/

namespace A305047.P17691517432459039330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (n + 1) + A007814 (A125636 (n + 1)).toNat

end

end A305047.P17691517432459039330

/-! ## A305047.P12140827053626103514

`A316733(n+1)+A025469(A316695(n+1))`
-/

namespace A305047.P12140827053626103514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (n + 1) + A025469 (A316695 (n + 1)).toNat

end

end A305047.P12140827053626103514

/-! ## A305047.P9453739182932822395

`A316733(n+1)+A025469(A316767(n+1))`
-/

namespace A305047.P9453739182932822395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316733 (n + 1) + A025469 (A316767 (n + 1)).toNat

end

end A305047.P9453739182932822395

/-! ## A305047.P5516271105831967414

`A001222(A306537(n+1))*A316733(n+1)`
-/

namespace A305047.P5516271105831967414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A306537 (n + 1)).toNat * A316733 (n + 1)

end

end A305047.P5516271105831967414

/-!
# A305049: Expansion of 1/(1 - Sum_{k>=1} tau_k(k)*x^k), where tau_k(k) = number of ordered k-factorizations of k (A163767).

The programs for A305049, there is no canonical definition to state claims against.
-/

/-! ## A305049.P373449303009931460

`A116111(A018072(n))`
-/

namespace A305049.P373449303009931460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116111 (A018072 n).toNat

end

end A305049.P373449303009931460

/-! ## A305049.P8240296518873910793

`A116111(A090170(n))`
-/

namespace A305049.P8240296518873910793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116111 (A090170 n).toNat

end

end A305049.P8240296518873910793

/-! ## A305049.P4429214591805894796

`A206141(n)+A069843(A094545(n))`
-/

namespace A305049.P4429214591805894796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206141 n + A069843 (A094545 n).toNat

end

end A305049.P4429214591805894796

/-!
# A305050: Expansion of Product_{i>=1, j>=1, k>=1} (1 + x^(i*j*k))/(1 - x^(i*j*k)).

The programs for A305050, there is no canonical definition to state claims against.
-/

/-! ## A305050.P11654426501857364081

`A082067(2*(n+1))*A340854(A280473(n))`
-/

namespace A305050.P11654426501857364081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (2 * (n + 1)) * A340854 (A280473 n).toNat

end

end A305050.P11654426501857364081

/-! ## A305050.P11398083230861281990

`∏{p}[(4^n+2)/3, A360457(#)]`
-/

namespace A305050.P11398083230861281990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 2 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A360457 p

end

end A305050.P11398083230861281990

/-!
# A305051: a(n) = n! * [x^n] exp(exp(x) - 1)/(1 - x)^n.

The programs for A305051, there is no canonical definition to state claims against.
-/

/-! ## A305051.P7411743567041454625

`∑[A131835(A300995(n))]`
-/

namespace A305051.P7411743567041454625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131835 (A300995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305051.P7411743567041454625

/-!
# A305052: z-density of the integer partition with Heinz number n. Clutter density of the n-th multiset multisystem (A302242).

The programs for A305052, there is no canonical definition to state claims against.
-/

/-! ## A305052.P6476418654989669563

`-A305079(n+1)`
-/

namespace A305052.P6476418654989669563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A305079 (n + 1)

end

end A305052.P6476418654989669563

/-! ## A305052.P16216830953076144497

`∑{e}[A327389(n+1), -#]`
-/

namespace A305052.P16216830953076144497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ))

end

end A305052.P16216830953076144497

/-! ## A305052.P6979517264167684800

`1-A305079(2*(n+1))`
-/

namespace A305052.P6979517264167684800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A305079 (2 * (n + 1))

end

end A305052.P6979517264167684800

/-! ## A305052.P5726601829808123706

`a(A327395(n+1)-1)-1` with `a(0)=0`
-/

namespace A305052.P5726601829808123706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A327395 (n + 1) - 1).toNat - 1

end

end A305052.P5726601829808123706

/-! ## A305052.P11669573170808666292

`-A001222(A327389(n+1))`
-/

namespace A305052.P11669573170808666292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001222 (A327389 (n + 1)).toNat

end

end A305052.P11669573170808666292

/-! ## A305052.P2595135359286549408

`A024000(A305079(n+1)+1)`
-/

namespace A305052.P2595135359286549408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A305079 (n + 1) + 1).toNat

end

end A305052.P2595135359286549408

/-! ## A305052.P9131140040557721301

`A057428(n)*A305079(n+1)`
-/

namespace A305052.P9131140040557721301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A305079 (n + 1)

end

end A305052.P9131140040557721301

/-! ## A305052.P4053685752633860581

`1-A000027(A305079(n+1)+1)`
-/

namespace A305052.P4053685752633860581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000027 (A305079 (n + 1) + 1).toNat

end

end A305052.P4053685752633860581

/-! ## A305052.P7960896495118854154

`1-A001222(2*A327389(n+1))`
-/

namespace A305052.P7960896495118854154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001222 (2 * A327389 (n + 1)).toNat

end

end A305052.P7960896495118854154

/-! ## A305052.P12331288395526597062

`1-A001222(A327512(2*(n+1)))`
-/

namespace A305052.P12331288395526597062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001222 (A327512 (2 * (n + 1))).toNat

end

end A305052.P12331288395526597062

/-!
# A305053: If n = Product_i prime(x_i)^k_i, then a(n) = Sum_i k_i * omega(x_i) - omega(n), where omega = A001221 is number of distinct prime factors.

The programs for A305053, there is no canonical definition to state claims against.
-/

/-! ## A305053.P7789054138584323973

`A305054(n+1)-A001221(n+1)`
-/

namespace A305053.P7789054138584323973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - A001221 (n + 1)

end

end A305053.P7789054138584323973

/-! ## A305053.P10535379997166119381

`A305054((n+1)/2^val(n+1, 2))-∑{p}[n+1, gcd(n, #)]`
-/

namespace A305053.P10535379997166119381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A305053.P10535379997166119381

/-! ## A305053.P9831035663690652906

`A305054(n+1)-A322307(n+1)`
-/

namespace A305053.P9831035663690652906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - A322307 (n + 1)

end

end A305053.P9831035663690652906

/-! ## A305053.P17566900040986004606

`A305054(n+1)-∑{p}[n+1, A001222(#)]`
-/

namespace A305053.P17566900040986004606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A305053.P17566900040986004606

/-! ## A305053.P10455530873938109319

`A305054(n+1)-A001222(∏{p}[n+1, #])`
-/

namespace A305053.P10455530873938109319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A305053.P10455530873938109319

/-! ## A305053.P304263794996376321

`∑{e}[A353394(n+1), #]-A001221(n+1)`
-/

namespace A305053.P304263794996376321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A001221 (n + 1)

end

end A305053.P304263794996376321

/-! ## A305053.P6069078813745886220

`A305054(n+1)-log2(A000005(∏{p}[n+1, #]))`
-/

namespace A305053.P6069078813745886220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A305054 (n + 1) : ℝ) - Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ)

end

end A305053.P6069078813745886220

/-! ## A305053.P7757903271246620350

`A305054(n+1)-A001222(A007947(n+1))`
-/

namespace A305053.P7757903271246620350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - A001222 (A007947 (n + 1)).toNat

end

end A305053.P7757903271246620350

/-! ## A305053.P17240483668961313795

`A305054(n+1)-A001222(A015053(n+1))`
-/

namespace A305053.P17240483668961313795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - A001222 (A015053 (n + 1)).toNat

end

end A305053.P17240483668961313795

/-! ## A305053.P9141214758075834248

`A305054(n+1)-A001222(A034444(n+1))`
-/

namespace A305053.P9141214758075834248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (n + 1) - A001222 (A034444 (n + 1)).toNat

end

end A305053.P9141214758075834248

/-!
# A305054: If n = Product_i prime(x_i)^k_i, then a(n) = Sum_i k_i * omega(x_i), where omega = A001221 is number of distinct prime factors.

The programs for A305054, there is no canonical definition to state claims against.
-/

/-! ## A305054.P1941672279722299921

`A305053(n+1)+A001221(n+1)`
-/

namespace A305054.P1941672279722299921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305053 (n + 1) + A001221 (n + 1)

end

end A305054.P1941672279722299921

/-! ## A305054.P4478914921492426517

`∑{e}[A353394(n+1), #]`
-/

namespace A305054.P4478914921492426517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305054.P4478914921492426517

/-! ## A305054.P8665769685775393490

`A001222(A353394(n+1))`
-/

namespace A305054.P8665769685775393490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A353394 (n + 1)).toNat

end

end A305054.P8665769685775393490

/-! ## A305054.P1284775843080478101

`∑{d}[n+1, A303975(A014963(#))]`
-/

namespace A305054.P1284775843080478101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303975 (A014963 d).toNat

end

end A305054.P1284775843080478101

/-! ## A305054.P4291142691963058250

`A303975(n+1)+a(A327401(n+1)-1)` with `a(0)=0`
-/

namespace A305054.P4291142691963058250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A303975 (n + 1) + a (A327401 (n + 1) - 1).toNat

end

end A305054.P4291142691963058250

/-! ## A305054.P12013874467491027243

`A001221(A181821(A353394(n+1))²)`
-/

namespace A305054.P12013874467491027243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181821 (A353394 (n + 1)).toNat ^ 2).toNat

end

end A305054.P12013874467491027243

/-! ## A305054.P6534665358586172234

`A297155(A139169(n+1))+A087436(n+1)`
-/

namespace A305054.P6534665358586172234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A139169 (n + 1)).toNat + A087436 (n + 1)

end

end A305054.P6534665358586172234

/-! ## A305054.P7687163094346216191

`A303975(n+1)+A001222(A327401(n+1))`
-/

namespace A305054.P7687163094346216191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1) + A001222 (A327401 (n + 1)).toNat

end

end A305054.P7687163094346216191

/-! ## A305054.P9115210793986087349

`A303975(n+1)+A252736(A327656(n+1))`
-/

namespace A305054.P9115210793986087349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1) + A252736 (A327656 (n + 1)).toNat

end

end A305054.P9115210793986087349

/-! ## A305054.P2679604493764272205

`A297155(A139169(n+1))+A001222(A064989(n+1))`
-/

namespace A305054.P2679604493764272205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A139169 (n + 1)).toNat + A001222 (A064989 (n + 1)).toNat

end

end A305054.P2679604493764272205

/-!
# A305056: a(n) = A004394(n)/A002110(A001221(A004394(n))).

The programs for A305056, there is no canonical definition to state claims against.
-/

/-! ## A305056.P14527190269714279456

`A004394(n+1)/A002110(A305025(n+1))`
-/

namespace A305056.P14527190269714279456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004394 (n + 1) : ℚ) / (A002110 (A305025 (n + 1)).toNat : ℚ)

end

end A305056.P14527190269714279456

/-! ## A305056.P14676667969329026719

`gcd(A004394(n+1), A046952(n+1))/A319865(n+1)`
-/

namespace A305056.P14676667969329026719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A004394 (n + 1)) (A046952 (n + 1)) : ℚ) / (A319865 (n + 1) : ℚ)

end

end A305056.P14676667969329026719

/-! ## A305056.P16028196309127666406

`A307107(A293635(n+1))`
-/

namespace A305056.P16028196309127666406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (A293635 (n + 1)).toNat

end

end A305056.P16028196309127666406

/-! ## A305056.P2059806816025400985

`A004394(n+1)/A247451(A293635(n+1))`
-/

namespace A305056.P2059806816025400985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004394 (n + 1) : ℚ) / (A247451 (A293635 (n + 1)).toNat : ℚ)

end

end A305056.P2059806816025400985

/-! ## A305056.P783134365739653944

`A025487(A293635(n+1))/A002110(A305025(n+1))`
-/

namespace A305056.P783134365739653944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (A293635 (n + 1)).toNat : ℚ) / (A002110 (A305025 (n + 1)).toNat : ℚ)

end

end A305056.P783134365739653944

/-! ## A305056.P6659832140327090333

`A397499(A332035(n+1))`
-/

namespace A305056.P6659832140327090333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397499 (A332035 (n + 1)).toNat

end

end A305056.P6659832140327090333

/-! ## A305056.P1488443561963811023

`A004394(n+1)/gcd(A002110(n), A004394(n+1))`
-/

namespace A305056.P1488443561963811023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004394 (n + 1) : ℚ) / (Int.gcd (A002110 n) (A004394 (n + 1)) : ℚ)

end

end A305056.P1488443561963811023

/-! ## A305056.P11622161446968074864

`A055932(A332035(n+1))/A002110(A305025(n+1))`
-/

namespace A305056.P11622161446968074864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055932 (A332035 (n + 1)).toNat : ℚ) / (A002110 (A305025 (n + 1)).toNat : ℚ)

end

end A305056.P11622161446968074864

/-! ## A305056.P6468527155917783752

`lcm(A002110(n), A004394(n+1))/A002110(n)`
-/

namespace A305056.P6468527155917783752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002110 n) (A004394 (n + 1)) : ℚ) / (A002110 n : ℚ)

end

end A305056.P6468527155917783752

/-!
# A305058: Totients t such that the number of divisors of t equals the number of solutions of phi(x) = t.

The programs for A305058, there is no canonical definition to state claims against.
-/

/-! ## A305058.P6733457268690130871

`eq[0, A322019(A028310(n))]`
-/

namespace A305058.P6733457268690130871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322019 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A305058.P6733457268690130871

/-!
# A305059: Triangle read by rows: T(n,k) is the number of connected unicyclic graphs on n unlabeled nodes with cycle length k and all nodes having degree at most 4.

The programs for A305059, there is no canonical definition to state claims against.
-/

/-! ## A305059.P14432135069990282750

`A340792(A098747(n+1))`
-/

namespace A305059.P14432135069990282750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340792 (A098747 (n + 1)).toNat

end

end A305059.P14432135069990282750

/-! ## A305059.P6252822290733239359

`A381637(A144886(n+1))`
-/

namespace A305059.P6252822290733239359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381637 (A144886 (n + 1)).toNat

end

end A305059.P6252822290733239359

/-! ## A305059.P15697403528467193449

`A087845(3*A213936(n+1))`
-/

namespace A305059.P15697403528467193449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (3 * A213936 (n + 1)).toNat

end

end A305059.P15697403528467193449

/-! ## A305059.P3304027195166035473

`∑{e}[A059474(A134134(n+1)), #]`
-/

namespace A305059.P3304027195166035473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059474 (A134134 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305059.P3304027195166035473

/-! ## A305059.P5089848437140137423

`∑{e}[A134401(A106240(n+1)), #]`
-/

namespace A305059.P5089848437140137423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 (A106240 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A305059.P5089848437140137423

/-!
# A305060: a(n) = 18*2^n + 10.

The programs for A305060, the canonical program `A305060.P11071758838076518638` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305060 has offset 0).

The definition of A305060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*2^n+10` (program `A305060.P11071758838076518638`, by `A305060.P11071758838076518638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305060.P11071758838076518638

`18*2^n+10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305060

/-- `18*2^n+10` -/
def P11071758838076518638.Spec : Prop :=
  ∀ n, (P11071758838076518638.a n : ℤ) = A305060 n

theorem P11071758838076518638.correct : P11071758838076518638.Spec := by
  intro n
  simp only [A305060]

end A305060

/-! ## A305060.P17482624661130670057

`2*(a(n-1)-5)` with `a(0)=28`
-/

namespace A305060.P17482624661130670057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [28] fun n a =>
  2 * (a (n - 1) - 5)

end

end A305060.P17482624661130670057

namespace A305060

/-- `2*(a(n-1)-5)` -/
def P17482624661130670057.Spec : Prop :=
  ∀ n, P17482624661130670057.a n = A305060 n

theorem P17482624661130670057.correct : P17482624661130670057.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A305060, Nat.add_sub_cancel, A305060.P17482624661130670057.a, A305060.P11071758838076518638.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A305060, Nat.add_sub_cancel, A305060.P17482624661130670057.a, A305060.P11071758838076518638.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A305060

/-! ## A305060.P10722646832076517059

`lcm(2, 5-a(n-1))` with `a(0)=28`
-/

namespace A305060.P10722646832076517059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28] fun n a =>
  Int.lcm 2 (5 - (a (n - 1) : ℤ))

end

end A305060.P10722646832076517059

namespace A305060

/-- `lcm(2, 5-a(n-1))` -/
def P10722646832076517059.Spec : Prop :=
  ∀ n, (P10722646832076517059.a n : ℤ) = A305060 n

end A305060

/-! ## A305060.P5452115185399814780

`2*(3*∑[ogf((-4+5x)/(-1+2x))]+2)`
-/

namespace A305060.P5452115185399814780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -5] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * (∑ j ∈ Finset.range (n + 1), f1 j) + 2)

end

end A305060.P5452115185399814780

namespace A305060

/-- `2*(3*∑[ogf((-4+5x)/(-1+2x))]+2)` -/
def P5452115185399814780.Spec : Prop :=
  ∀ n, P5452115185399814780.a n = A305060 n

end A305060

/-! ## A305060.P9448938953577975094

`2*(A083705(n)+4)`
-/

namespace A305060.P9448938953577975094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083705 n + 4)

end

end A305060.P9448938953577975094

namespace A305060

/-- `2*(A083705(n)+4)` -/
def P9448938953577975094.Spec : Prop :=
  ∀ n, P9448938953577975094.a n = A305060 n

end A305060

/-! ## A305060.P5138433847078288629

`2*(A005010(n)+5)`
-/

namespace A305060.P5138433847078288629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005010 n + 5)

end

end A305060.P5138433847078288629

namespace A305060

/-- `2*(A005010(n)+5)` -/
def P5138433847078288629.Spec : Prop :=
  ∀ n, P5138433847078288629.a n = A305060 n

end A305060

/-! ## A305060.P16288409407817567222

`2*(A168596(n)-A028399(n+2))`
-/

namespace A305060.P16288409407817567222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168596 n - A028399 (n + 2))

end

end A305060.P16288409407817567222

namespace A305060

/-- `2*(A168596(n)-A028399(n+2))` -/
def P16288409407817567222.Spec : Prop :=
  ∀ n, P16288409407817567222.a n = A305060 n

end A305060

/-!
# A305061: a(n) = 20*2^n + 14.

The programs for A305061, the canonical program `A305061.P15642789242644756684` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305061 has offset 0).

The definition of A305061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*2^n+14` (program `A305061.P15642789242644756684`, by `A305061.P15642789242644756684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305061.P15642789242644756684

`20*2^n+14`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305061

/-- `20*2^n+14` -/
def P15642789242644756684.Spec : Prop :=
  ∀ n, (P15642789242644756684.a n : ℤ) = A305061 n

theorem P15642789242644756684.correct : P15642789242644756684.Spec := by
  intro n
  simp only [A305061]

end A305061

/-! ## A305061.P17342314483023970154

`2*(a(n-1)-7)` with `a(0)=34`
-/

namespace A305061.P17342314483023970154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  2 * (a (n - 1) - 7)

end

end A305061.P17342314483023970154

namespace A305061

/-- `2*(a(n-1)-7)` -/
def P17342314483023970154.Spec : Prop :=
  ∀ n, P17342314483023970154.a n = A305061 n

theorem P17342314483023970154.correct : P17342314483023970154.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A305061, Nat.add_sub_cancel, A305061.P17342314483023970154.a, A305061.P15642789242644756684.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A305061, Nat.add_sub_cancel, A305061.P17342314483023970154.a, A305061.P15642789242644756684.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A305061

/-! ## A305061.P9974250166745128070

`2*(A231643(n+1)+2)`
-/

namespace A305061.P9974250166745128070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A231643 (n + 1) + 2)

end

end A305061.P9974250166745128070

namespace A305061

/-- `2*(A231643(n+1)+2)` -/
def P9974250166745128070.Spec : Prop :=
  ∀ n, P9974250166745128070.a n = A305061 n

end A305061

/-! ## A305061.P8461084534821259878

`2*(A020714(n+1)+7)`
-/

namespace A305061.P8461084534821259878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020714 (n + 1) + 7)

end

end A305061.P8461084534821259878

namespace A305061

/-- `2*(A020714(n+1)+7)` -/
def P8461084534821259878.Spec : Prop :=
  ∀ n, P8461084534821259878.a n = A305061 n

end A305061

/-! ## A305061.P9347614437118070409

`2*(A063920(2*n)+7)`
-/

namespace A305061.P9347614437118070409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063920 (2 * n) + 7)

end

end A305061.P9347614437118070409

namespace A305061

/-- `2*(A063920(2*n)+7)` -/
def P9347614437118070409.Spec : Prop :=
  ∀ n, P9347614437118070409.a n = A305061 n

end A305061

/-! ## A305061.P2089742264987071497

`2*(A168415(n)+A005010(n))`
-/

namespace A305061.P2089742264987071497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168415 n + A005010 n)

end

end A305061.P2089742264987071497

namespace A305061

/-- `2*(A168415(n)+A005010(n))` -/
def P2089742264987071497.Spec : Prop :=
  ∀ n, P2089742264987071497.a n = A305061 n

end A305061

/-!
# A305062: a(n) = 96*2^n + 80.

The programs for A305062, the canonical program `A305062.P6751208431558569708` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305062 has offset 0).

The definition of A305062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `96*2^n+80` (program `A305062.P6751208431558569708`, by `A305062.P6751208431558569708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305062.P6751208431558569708

`96*2^n+80`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305062

/-- `96*2^n+80` -/
def P6751208431558569708.Spec : Prop :=
  ∀ n, (P6751208431558569708.a n : ℤ) = A305062 n

theorem P6751208431558569708.correct : P6751208431558569708.Spec := by
  intro n
  simp only [A305062]

end A305062

/-! ## A305062.P13446935900593364223

`4*(A211715(n+1)+10)`
-/

namespace A305062.P13446935900593364223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A211715 (n + 1) + 10)

end

end A305062.P13446935900593364223

namespace A305062

/-- `4*(A211715(n+1)+10)` -/
def P13446935900593364223.Spec : Prop :=
  ∀ n, P13446935900593364223.a n = A305062 n

end A305062

/-! ## A305062.P6272813387390262270

`8*(A081808(n+1)+10)`
-/

namespace A305062.P6272813387390262270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A081808 (n + 1) + 10)

end

end A305062.P6272813387390262270

namespace A305062

/-- `8*(A081808(n+1)+10)` -/
def P6272813387390262270.Spec : Prop :=
  ∀ n, P6272813387390262270.a n = A305062 n

end A305062

/-! ## A305062.P5837828061181916806

`16*(A003945(n+2)+5)`
-/

namespace A305062.P5837828061181916806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A003945 (n + 2) + 5)

end

end A305062.P5837828061181916806

namespace A305062

/-- `16*(A003945(n+2)+5)` -/
def P5837828061181916806.Spec : Prop :=
  ∀ n, P5837828061181916806.a n = A305062 n

end A305062

/-! ## A305062.P2473735008210476374

`16*(A153893(n+1)+6)`
-/

namespace A305062.P2473735008210476374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A153893 (n + 1) + 6)

end

end A305062.P2473735008210476374

namespace A305062

/-- `16*(A153893(n+1)+6)` -/
def P2473735008210476374.Spec : Prop :=
  ∀ n, P2473735008210476374.a n = A305062 n

end A305062

/-! ## A305062.P7396593811663528066

`8*(2*A164094(n+1)+6)`
-/

namespace A305062.P7396593811663528066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (2 * A164094 (n + 1) + 6)

end

end A305062.P7396593811663528066

namespace A305062

/-- `8*(2*A164094(n+1)+6)` -/
def P7396593811663528066.Spec : Prop :=
  ∀ n, P7396593811663528066.a n = A305062 n

end A305062

/-! ## A305062.P10629410505041775656

`8*(3*(A000079(n+2)+3)+1)`
-/

namespace A305062.P10629410505041775656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (3 * (A000079 (n + 2) + 3) + 1)

end

end A305062.P10629410505041775656

namespace A305062

/-- `8*(3*(A000079(n+2)+3)+1)` -/
def P10629410505041775656.Spec : Prop :=
  ∀ n, P10629410505041775656.a n = A305062 n

end A305062

/-! ## A305062.P4872503823412997858

`16*(3*(∑[A007283(n)/3]+2)+2)`
-/

namespace A305062.P4872503823412997858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  16 * (3 * (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 2)

end

end A305062.P4872503823412997858

namespace A305062

/-- `16*(3*(∑[A007283(n)/3]+2)+2)` -/
def P4872503823412997858.Spec : Prop :=
  ∀ n, P4872503823412997858.a n = (A305062 n : ℚ)

end A305062

/-! ## A305062.P2344320639211762592

`abs(A099945(n+3)-A305261(n))`
-/

namespace A305062.P2344320639211762592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099945 (n + 3) - A305261 n|

end

end A305062.P2344320639211762592

namespace A305062

/-- `abs(A099945(n+3)-A305261(n))` -/
def P2344320639211762592.Spec : Prop :=
  ∀ n, P2344320639211762592.a n = A305062 n

end A305062

/-! ## A305062.P17396564323134403079

`(A099945(n+3)-A305261(n))*A007318(∑[n])`
-/

namespace A305062.P17396564323134403079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099945 (n + 3) - A305261 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305062.P17396564323134403079

namespace A305062

/-- `(A099945(n+3)-A305261(n))*A007318(∑[n])` -/
def P17396564323134403079.Spec : Prop :=
  ∀ n, P17396564323134403079.a n = A305062 n

end A305062

/-! ## A305062.P407356356750200475

`A329637(A000124(n+9)-9)/2`
-/

namespace A305062.P407356356750200475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329637 (A000124 (n + 9) - 9).toNat : ℚ) / 2

end

end A305062.P407356356750200475

namespace A305062

/-- `A329637(A000124(n+9)-9)/2` -/
def P407356356750200475.Spec : Prop :=
  ∀ n, P407356356750200475.a n = (A305062 n : ℚ)

end A305062

/-!
# A305063: a(n) = 110*2^n + 118.

The programs for A305063, the canonical program `A305063.P17760620064274113846` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305063 has offset 0).

The definition of A305063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `110*2^n+118` (program `A305063.P17760620064274113846`, by `A305063.P17760620064274113846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305063.P17760620064274113846

`110*2^n+118`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305063

/-- `110*2^n+118` -/
def P17760620064274113846.Spec : Prop :=
  ∀ n, (P17760620064274113846.a n : ℤ) = A305063 n

theorem P17760620064274113846.correct : P17760620064274113846.Spec := by
  intro n
  simp only [A305063]

end A305063

/-! ## A305063.P6653526249272049195

`A017485(10*A000051(n))`
-/

namespace A305063.P6653526249272049195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (10 * A000051 n).toNat

end

end A305063.P6653526249272049195

namespace A305063

/-- `A017485(10*A000051(n))` -/
def P6653526249272049195.Spec : Prop :=
  ∀ n, P6653526249272049195.a n = A305063 n

end A305063

/-!
# A305064: a(n) = 42*2^n - 20.

The programs for A305064, the canonical program `A305064.P8398010822638105161` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305064 has offset 0).

The definition of A305064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `42*2^n-20` (program `A305064.P8398010822638105161`, by `A305064.P8398010822638105161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305064.P8398010822638105161

`42*2^n-20`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305064

/-- `42*2^n-20` -/
def P8398010822638105161.Spec : Prop :=
  ∀ n, P8398010822638105161.a n = A305064 n

theorem P8398010822638105161.correct : P8398010822638105161.Spec := by
  intro n
  simp only [A305064]

end A305064

/-! ## A305064.P4993787956661571219

`ogf((22-2x)/(1-3x+2x^2))`
-/

namespace A305064.P4993787956661571219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, -2] [1, -3, 2] n

end

end A305064.P4993787956661571219

namespace A305064

/-- `ogf((22-2x)/(1-3x+2x^2))` -/
def P4993787956661571219.Spec : Prop :=
  ∀ n, P4993787956661571219.a n = A305064 n

end A305064

/-! ## A305064.P6197586648749382529

`2*(a(n-1)+10)` with `a(0)=22`
-/

namespace A305064.P6197586648749382529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22] fun n a =>
  2 * (a (n - 1) + 10)

end

end A305064.P6197586648749382529

namespace A305064

/-- `2*(a(n-1)+10)` -/
def P6197586648749382529.Spec : Prop :=
  ∀ n, (P6197586648749382529.a n : ℤ) = A305064 n

theorem P6197586648749382529.correct : P6197586648749382529.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A305064, Nat.add_sub_cancel, A305064.P6197586648749382529.a, A305064.P8398010822638105161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A305064, Nat.add_sub_cancel, A305064.P6197586648749382529.a, A305064.P8398010822638105161.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A305064

/-! ## A305064.P9167035718170549139

`∑[2*a(n-1)]` with `a(0)=22, a(1)=42`
-/

namespace A305064.P9167035718170549139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22, 42] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305064.P9167035718170549139

namespace A305064

/-- `∑[2*a(n-1)]` -/
def P9167035718170549139.Spec : Prop :=
  ∀ n, (P9167035718170549139.a n : ℤ) = A305064 n

end A305064

/-! ## A305064.P15875557833790693822

`2*(A305158(n)+5)`
-/

namespace A305064.P15875557833790693822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A305158 n + 5)

end

end A305064.P15875557833790693822

namespace A305064

/-- `2*(A305158(n)+5)` -/
def P15875557833790693822.Spec : Prop :=
  ∀ n, P15875557833790693822.a n = A305064 n

end A305064

/-! ## A305064.P10790096712403526632

`2*(A304517(n+1)-A086225(n))`
-/

namespace A305064.P10790096712403526632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A304517 (n + 1) - A086225 n)

end

end A305064.P10790096712403526632

namespace A305064

/-- `2*(A304517(n+1)-A086225(n))` -/
def P10790096712403526632.Spec : Prop :=
  ∀ n, P10790096712403526632.a n = A305064 n

end A305064

/-! ## A305064.P11233446319891694749

`2*(A139697(n+2)-A083329(n+1))`
-/

namespace A305064.P11233446319891694749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139697 (n + 2) - A083329 (n + 1))

end

end A305064.P11233446319891694749

namespace A305064

/-- `2*(A139697(n+2)-A083329(n+1))` -/
def P11233446319891694749.Spec : Prop :=
  ∀ n, P11233446319891694749.a n = A305064 n

end A305064

/-! ## A305064.P6755915153150335971

`(A139700(n+2)+A139697(n+2))/2`
-/

namespace A305064.P6755915153150335971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139700 (n + 2) + A139697 (n + 2) : ℚ) / 2

end

end A305064.P6755915153150335971

namespace A305064

/-- `(A139700(n+2)+A139697(n+2))/2` -/
def P6755915153150335971.Spec : Prop :=
  ∀ n, P6755915153150335971.a n = (A305064 n : ℚ)

end A305064

/-! ## A305064.P15825561471001465063

`A305066(n)%A248877(n+1)`
-/

namespace A305064.P15825561471001465063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305066 n) (A248877 (n + 1))

end

end A305064.P15825561471001465063

namespace A305064

/-- `A305066(n)%A248877(n+1)` -/
def P15825561471001465063.Spec : Prop :=
  ∀ n, P15825561471001465063.a n = A305064 n

end A305064

/-!
# A305065: a(n) = 48*2^n - 24.

The programs for A305065, the canonical program `A305065.P15176425881241093860` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305065 has offset 0).

The definition of A305065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `48*2^n-24` (program `A305065.P15176425881241093860`, by `A305065.P15176425881241093860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305065.P15176425881241093860

`48*2^n-24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305065

/-- `48*2^n-24` -/
def P15176425881241093860.Spec : Prop :=
  ∀ n, P15176425881241093860.a n = A305065 n

theorem P15176425881241093860.correct : P15176425881241093860.Spec := by
  intro n
  simp only [A305065]

end A305065

/-! ## A305065.P14215534680015458263

`ogf(24/(1-3x+2x^2))`
-/

namespace A305065.P14215534680015458263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [24] [1, -3, 2] n

end

end A305065.P14215534680015458263

namespace A305065

/-- `ogf(24/(1-3x+2x^2))` -/
def P14215534680015458263.Spec : Prop :=
  ∀ n, P14215534680015458263.a n = A305065 n

end A305065

/-! ## A305065.P5983662691226648529

`∑[2*a(n-1)]` with `a(0)=24`
-/

namespace A305065.P5983662691226648529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305065.P5983662691226648529

namespace A305065

/-- `∑[2*a(n-1)]` -/
def P5983662691226648529.Spec : Prop :=
  ∀ n, (P5983662691226648529.a n : ℤ) = A305065 n

end A305065

/-! ## A305065.P7502421536285415241

`2*(a(n-1)+12)` with `a(0)=24`
-/

namespace A305065.P7502421536285415241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  2 * (a (n - 1) + 12)

end

end A305065.P7502421536285415241

namespace A305065

/-- `2*(a(n-1)+12)` -/
def P7502421536285415241.Spec : Prop :=
  ∀ n, (P7502421536285415241.a n : ℤ) = A305065 n

theorem P7502421536285415241.correct : P7502421536285415241.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A305065, Nat.add_sub_cancel, A305065.P7502421536285415241.a, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A305065, Nat.add_sub_cancel, A305065.P7502421536285415241.a, A305065.P15176425881241093860.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A305065

/-! ## A305065.P14934352404451552540

`lcm(2, ∑[lcm(3, 2^(n+3))])`
-/

namespace A305065.P14934352404451552540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (2 ^ (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305065.P14934352404451552540

namespace A305065

/-- `lcm(2, ∑[lcm(3, 2^(n+3))])` -/
def P14934352404451552540.Spec : Prop :=
  ∀ n, (P14934352404451552540.a n : ℤ) = A305065 n

end A305065

/-! ## A305065.P6339582754433639072

`∑[A081808(n+2)]`
-/

namespace A305065.P6339582754433639072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305065.P6339582754433639072

namespace A305065

/-- `∑[A081808(n+2)]` -/
def P6339582754433639072.Spec : Prop :=
  ∀ n, P6339582754433639072.a n = A305065 n

end A305065

/-! ## A305065.P11461543719268679646

`∑[A007283(n+3)]`
-/

namespace A305065.P11461543719268679646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305065.P11461543719268679646

namespace A305065

/-- `∑[A007283(n+3)]` -/
def P11461543719268679646.Spec : Prop :=
  ∀ n, P11461543719268679646.a n = A305065 n

end A305065

/-! ## A305065.P8687431170984765117

`∑[A091629(n+3)]`
-/

namespace A305065.P8687431170984765117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091629 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305065.P8687431170984765117

namespace A305065

/-- `∑[A091629(n+3)]` -/
def P8687431170984765117.Spec : Prop :=
  ∀ n, P8687431170984765117.a n = A305065 n

end A305065

/-! ## A305065.P6622083853576629489

`∑[A132477(n+3)]`
-/

namespace A305065.P6622083853576629489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132477 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305065.P6622083853576629489

namespace A305065

/-- `∑[A132477(n+3)]` -/
def P6622083853576629489.Spec : Prop :=
  ∀ n, P6622083853576629489.a n = A305065 n

end A305065

/-! ## A305065.P12459581759377649990

`4*Δ[A247620(n)]`
-/

namespace A305065.P12459581759377649990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A305065.P12459581759377649990

namespace A305065

/-- `4*Δ[A247620(n)]` -/
def P12459581759377649990.Spec : Prop :=
  ∀ n, P12459581759377649990.a n = A305065 n

end A305065

/-! ## A305065.P15124622392817036485

`lcm(24, ∑[A007283(n)])`
-/

namespace A305065.P15124622392817036485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 24 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305065.P15124622392817036485

namespace A305065

/-- `lcm(24, ∑[A007283(n)])` -/
def P15124622392817036485.Spec : Prop :=
  ∀ n, (P15124622392817036485.a n : ℤ) = A305065 n

end A305065

/-! ## A305065.P9110245254768284887

`3*A159741(n+1)`
-/

namespace A305065.P9110245254768284887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A159741 (n + 1)

end

end A305065.P9110245254768284887

namespace A305065

/-- `3*A159741(n+1)` -/
def P9110245254768284887.Spec : Prop :=
  ∀ n, P9110245254768284887.a n = A305065 n

end A305065

/-! ## A305065.P10646020387247631878

`4*A068293(n+2)`
-/

namespace A305065.P10646020387247631878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A068293 (n + 2)

end

end A305065.P10646020387247631878

namespace A305065

/-- `4*A068293(n+2)` -/
def P10646020387247631878.Spec : Prop :=
  ∀ n, P10646020387247631878.a n = A305065 n

end A305065

/-! ## A305065.P5393372036390713802

`6*A173033(n+1)`
-/

namespace A305065.P5393372036390713802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A173033 (n + 1)

end

end A305065.P5393372036390713802

namespace A305065

/-- `6*A173033(n+1)` -/
def P5393372036390713802.Spec : Prop :=
  ∀ n, P5393372036390713802.a n = A305065 n

end A305065

/-! ## A305065.P18012682418773617881

`2*(A182461(n)-4)`
-/

namespace A305065.P18012682418773617881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182461 n - 4)

end

end A305065.P18012682418773617881

namespace A305065

/-- `2*(A182461(n)-4)` -/
def P18012682418773617881.Spec : Prop :=
  ∀ n, P18012682418773617881.a n = A305065 n

end A305065

/-! ## A305065.P16925507049870440165

`6*A028399(n+3)`
-/

namespace A305065.P16925507049870440165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A028399 (n + 3)

end

end A305065.P16925507049870440165

namespace A305065

/-- `6*A028399(n+3)` -/
def P16925507049870440165.Spec : Prop :=
  ∀ n, P16925507049870440165.a n = A305065 n

end A305065

/-! ## A305065.P6116075917096359860

`8*A068156(n+1)`
-/

namespace A305065.P6116075917096359860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A068156 (n + 1)

end

end A305065.P6116075917096359860

namespace A305065

/-- `8*A068156(n+1)` -/
def P6116075917096359860.Spec : Prop :=
  ∀ n, P6116075917096359860.a n = A305065 n

end A305065

/-! ## A305065.P16401984693754471562

`24*A000225(n+1)`
-/

namespace A305065.P16401984693754471562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000225 (n + 1)

end

end A305065.P16401984693754471562

namespace A305065

/-- `24*A000225(n+1)` -/
def P16401984693754471562.Spec : Prop :=
  ∀ n, P16401984693754471562.a n = A305065 n

end A305065

/-! ## A305065.P16056096581774660392

`∑[abs(A176414(n+3))]`
-/

namespace A305065.P16056096581774660392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176414 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305065.P16056096581774660392

namespace A305065

/-- `∑[abs(A176414(n+3))]` -/
def P16056096581774660392.Spec : Prop :=
  ∀ n, P16056096581774660392.a n = A305065 n

end A305065

/-! ## A305065.P4339167179322455682

`∑[record[A112033(n+2)]]`
-/

namespace A305065.P4339167179322455682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112033 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305065.P4339167179322455682

namespace A305065

/-- `∑[record[A112033(n+2)]]` -/
def P4339167179322455682.Spec : Prop :=
  ∀ n, P4339167179322455682.a n = A305065 n

end A305065

/-!
# A305066: a(n) = 234*2^n - 120.

The programs for A305066, the canonical program `A305066.P921502333372402444` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305066 has offset 0).

The definition of A305066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `234*2^n-120` (program `A305066.P921502333372402444`, by `A305066.P921502333372402444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305066.P921502333372402444

`234*2^n-120`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305066

/-- `234*2^n-120` -/
def P921502333372402444.Spec : Prop :=
  ∀ n, P921502333372402444.a n = A305066 n

theorem P921502333372402444.correct : P921502333372402444.Spec := by
  intro n
  simp only [A305066]

end A305066

/-! ## A305066.P8658973649978254273

`6*(3*A100206(n+1)-2)`
-/

namespace A305066.P8658973649978254273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (3 * A100206 (n + 1) - 2)

end

end A305066.P8658973649978254273

namespace A305066

/-- `6*(3*A100206(n+1)-2)` -/
def P8658973649978254273.Spec : Prop :=
  ∀ n, P8658973649978254273.a n = A305066 n

end A305066

/-! ## A305066.P17041432909430387481

`3*(39*A255047(n+1)-1)`
-/

namespace A305066.P17041432909430387481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (39 * A255047 (n + 1) - 1)

end

end A305066.P17041432909430387481

namespace A305066

/-- `3*(39*A255047(n+1)-1)` -/
def P17041432909430387481.Spec : Prop :=
  ∀ n, P17041432909430387481.a n = A305066 n

end A305066

/-! ## A305066.P8058772560150904598

`3*(A304612(n)+A033484(n))`
-/

namespace A305066.P8058772560150904598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A304612 n + A033484 n)

end

end A305066.P8058772560150904598

namespace A305066

/-- `3*(A304612(n)+A033484(n))` -/
def P8058772560150904598.Spec : Prop :=
  ∀ n, P8058772560150904598.a n = A305066 n

end A305066

/-! ## A305066.P13474427142760675869

`A063136(A100206(n+1))`
-/

namespace A305066.P13474427142760675869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063136 (A100206 (n + 1)).toNat

end

end A305066.P13474427142760675869

namespace A305066

/-- `A063136(A100206(n+1))` -/
def P13474427142760675869.Spec : Prop :=
  ∀ n, P13474427142760675869.a n = A305066 n

end A305066

/-!
# A305067: a(n) = 282*2^n - 150.

The programs for A305067, the canonical program `A305067.P15912666456447076027` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305067 has offset 0).

The definition of A305067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `282*2^n-150` (program `A305067.P15912666456447076027`, by `A305067.P15912666456447076027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305067.P15912666456447076027

`282*2^n-150`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305067

/-- `282*2^n-150` -/
def P15912666456447076027.Spec : Prop :=
  ∀ n, P15912666456447076027.a n = A305067 n

theorem P15912666456447076027.correct : P15912666456447076027.Spec := by
  intro n
  simp only [A305067]

end A305067

/-! ## A305067.P12342995236305210708

`6*(A305065(n)-A000051(n))`
-/

namespace A305067.P12342995236305210708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A305065 n - A000051 n)

end

end A305067.P12342995236305210708

namespace A305067

/-- `6*(A305065(n)-A000051(n))` -/
def P12342995236305210708.Spec : Prop :=
  ∀ n, P12342995236305210708.a n = A305067 n

end A305067

/-! ## A305067.P11283749775703877537

`6*(A248877(n+1)-A000079(n))`
-/

namespace A305067.P11283749775703877537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A248877 (n + 1) - A000079 n)

end

end A305067.P11283749775703877537

namespace A305067

/-- `6*(A248877(n+1)-A000079(n))` -/
def P11283749775703877537.Spec : Prop :=
  ∀ n, P11283749775703877537.a n = A305067 n

end A305067

/-! ## A305067.P11607021590583781711

`A008588(A248877(n+1)-A000079(n))`
-/

namespace A305067.P11607021590583781711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A248877 (n + 1) - A000079 n).toNat

end

end A305067.P11607021590583781711

namespace A305067

/-- `A008588(A248877(n+1)-A000079(n))` -/
def P11607021590583781711.Spec : Prop :=
  ∀ n, P11607021590583781711.a n = A305067 n

end A305067

/-!
# A305068: a(n) = 54*n - 18 (n>=1).

The programs for A305068, the canonical program `A305068.P4121231179080299152` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305068 has offset 1).

The definition of A305068 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `54*(n+1)-18` (program `A305068.P4121231179080299152`, by `A305068.P4121231179080299152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305068.P4121231179080299152

`54*(n+1)-18`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305068

/-- `54*(n+1)-18` -/
def P4121231179080299152.Spec : Prop :=
  ∀ n, P4121231179080299152.a n = A305068 (n + 1)

theorem P4121231179080299152.correct : P4121231179080299152.Spec := by
  intro n
  simp only [A305068, Nat.add_sub_cancel]

end A305068

/-!
# A305069: a(n) = 117*n - 72 (n>=1).

The programs for A305069, the canonical program `A305069.P4398503455629357812` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305069 has offset 1).

The definition of A305069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `117*(n+1)-72` (program `A305069.P4398503455629357812`, by `A305069.P4398503455629357812.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305069.P4398503455629357812

`117*(n+1)-72`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305069

/-- `117*(n+1)-72` -/
def P4398503455629357812.Spec : Prop :=
  ∀ n, P4398503455629357812.a n = A305069 (n + 1)

theorem P4398503455629357812.correct : P4398503455629357812.Spec := by
  intro n
  simp only [A305069, Nat.add_sub_cancel]

end A305069

/-!
# A305070: a(n) = 378*n^2 - 54*n (n>=1).

The programs for A305070, the canonical program `A305070.P13019323945714558940` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305070 has offset 1).

The definition of A305070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `378*(n+1)²-54*(n+1)` (program `A305070.P13019323945714558940`, by `A305070.P13019323945714558940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305070.P13019323945714558940

`378*(n+1)²-54*(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305070

/-- `378*(n+1)²-54*(n+1)` -/
def P13019323945714558940.Spec : Prop :=
  ∀ n, P13019323945714558940.a n = A305070 (n + 1)

theorem P13019323945714558940.correct : P13019323945714558940.Spec := by
  intro n
  simp only [A305070, Nat.add_sub_cancel]

end A305070

/-! ## A305070.P17352860746796893511

`54*(7*A000290(n+1)-(n+1))`
-/

namespace A305070.P17352860746796893511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  54 * (7 * A000290 (n + 1) - (n + 1 : ℤ))

end

end A305070.P17352860746796893511

namespace A305070

/-- `54*(7*A000290(n+1)-(n+1))` -/
def P17352860746796893511.Spec : Prop :=
  ∀ n, P17352860746796893511.a n = A305070 (n + 1)

end A305070

/-! ## A305070.P845606765615551039

`9*(A017053(n)-n)*A017053(n)`
-/

namespace A305070.P845606765615551039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A017053 n - (n : ℤ)) * A017053 n

end

end A305070.P845606765615551039

namespace A305070

/-- `9*(A017053(n)-n)*A017053(n)` -/
def P845606765615551039.Spec : Prop :=
  ∀ n, P845606765615551039.a n = A305070 (n + 1)

end A305070

/-! ## A305070.P8352928611423773021

`3*(7*n+6)*A008600(n+1)`
-/

namespace A305070.P8352928611423773021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (7 * n + 6) : ℤ) * A008600 (n + 1)

end

end A305070.P8352928611423773021

namespace A305070

/-- `3*(7*n+6)*A008600(n+1)` -/
def P8352928611423773021.Spec : Prop :=
  ∀ n, P8352928611423773021.a n = A305070 (n + 1)

end A305070

/-! ## A305070.P10904180467131089183

`12*(A000217(A004771(n))-A000217(n+1))`
-/

namespace A305070.P10904180467131089183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A000217 (A004771 n).toNat - A000217 (n + 1))

end

end A305070.P10904180467131089183

namespace A305070

/-- `12*(A000217(A004771(n))-A000217(n+1))` -/
def P10904180467131089183.Spec : Prop :=
  ∀ n, P10904180467131089183.a n = A305070 (n + 1)

end A305070

/-! ## A305070.P7553891269590608734

`3*A316466(3*(n+1))`
-/

namespace A305070.P7553891269590608734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A316466 (3 * (n + 1))

end

end A305070.P7553891269590608734

namespace A305070

/-- `3*A316466(3*(n+1))` -/
def P7553891269590608734.Spec : Prop :=
  ∀ n, P7553891269590608734.a n = A305070 (n + 1)

end A305070

/-! ## A305070.P1355507874481438438

`3*4*A218471(3*(n+1))`
-/

namespace A305070.P1355507874481438438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A218471 (3 * (n + 1)))

end

end A305070.P1355507874481438438

namespace A305070

/-- `3*4*A218471(3*(n+1))` -/
def P1355507874481438438.Spec : Prop :=
  ∀ n, P1355507874481438438.a n = A305070 (n + 1)

end A305070

/-! ## A305070.P11476200174097230168

`A008585(A017041(2*n+1))*9*(n+1)`
-/

namespace A305070.P11476200174097230168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A017041 (2 * n + 1)).toNat * (9 * (n + 1) : ℤ)

end

end A305070.P11476200174097230168

namespace A305070

/-- `A008585(A017041(2*n+1))*9*(n+1)` -/
def P11476200174097230168.Spec : Prop :=
  ∀ n, P11476200174097230168.a n = A305070 (n + 1)

end A305070

/-!
# A305071: a(n) = 972*n^2 - 270*n (n>=1).

The programs for A305071, the canonical program `A305071.P10479033954878364053` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305071 has offset 1).

The definition of A305071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `972*(n+1)²-270*(n+1)` (program `A305071.P10479033954878364053`, by `A305071.P10479033954878364053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305071.P10479033954878364053

`972*(n+1)²-270*(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305071

/-- `972*(n+1)²-270*(n+1)` -/
def P10479033954878364053.Spec : Prop :=
  ∀ n, P10479033954878364053.a n = A305071 (n + 1)

theorem P10479033954878364053.correct : P10479033954878364053.Spec := by
  intro n
  simp only [A305071, Nat.add_sub_cancel]

end A305071

/-! ## A305071.P14025395413374373379

`lcm(A008591(A008588(n+1)), A051866(3*(n+1)))`
-/

namespace A305071.P14025395413374373379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008591 (A008588 (n + 1)).toNat) (A051866 (3 * (n + 1)))

end

end A305071.P14025395413374373379

namespace A305071

/-- `lcm(A008591(A008588(n+1)), A051866(3*(n+1)))` -/
def P14025395413374373379.Spec : Prop :=
  ∀ n, (P14025395413374373379.a n : ℤ) = A305071 (n + 1)

end A305071

/-! ## A305071.P17081481069511021193

`∑[A305548(A044102(2*n+1)-10)]`
-/

namespace A305071.P17081481069511021193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (A044102 (2 * n + 1) - 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305071.P17081481069511021193

namespace A305071

/-- `∑[A305548(A044102(2*n+1)-10)]` -/
def P17081481069511021193.Spec : Prop :=
  ∀ n, P17081481069511021193.a n = A305071 (n + 1)

end A305071

/-!
# A305072: a(n) = 144*n^2 - 24*n (n>=1).

The programs for A305072, the canonical program `A305072.P165285397883766145` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305072 has offset 1).

The definition of A305072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `144*(n+1)²-24*(n+1)` (program `A305072.P165285397883766145`, by `A305072.P165285397883766145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305072.P165285397883766145

`144*(n+1)²-24*(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305072

/-- `144*(n+1)²-24*(n+1)` -/
def P165285397883766145.Spec : Prop :=
  ∀ n, P165285397883766145.a n = A305072 (n + 1)

theorem P165285397883766145.correct : P165285397883766145.Spec := by
  intro n
  simp only [A305072, Nat.add_sub_cancel]

end A305072

/-! ## A305072.P3907658965782652825

`xor(1, (12*n+11)²)`
-/

namespace A305072.P3907658965782652825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((12 * n + 11) ^ 2)

end

end A305072.P3907658965782652825

namespace A305072

/-- `xor(1, (12*n+11)²)` -/
def P3907658965782652825.Spec : Prop :=
  ∀ n, (P3907658965782652825.a n : ℤ) = A305072 (n + 1)

end A305072

/-! ## A305072.P1232029262273674680

`8*C(6*(n+1), 2)`
-/

namespace A305072.P1232029262273674680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (6 * (n + 1)) 2

end

end A305072.P1232029262273674680

namespace A305072

/-- `8*C(6*(n+1), 2)` -/
def P1232029262273674680.Spec : Prop :=
  ∀ n, (P1232029262273674680.a n : ℤ) = A305072 (n + 1)

end A305072

/-! ## A305072.P9526343464832515738

`24*∑[a(n-1)+12]` with `a(0)=5`
-/

namespace A305072.P9526343464832515738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305072.P9526343464832515738

namespace A305072

/-- `24*∑[a(n-1)+12]` -/
def P9526343464832515738.Spec : Prop :=
  ∀ n, (P9526343464832515738.a n : ℤ) = A305072 (n + 1)

end A305072

/-! ## A305072.P7250718815802365421

`∑[24*A017581(n)]`
-/

namespace A305072.P7250718815802365421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A017581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305072.P7250718815802365421

namespace A305072

/-- `∑[24*A017581(n)]` -/
def P7250718815802365421.Spec : Prop :=
  ∀ n, P7250718815802365421.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P299143676509334589

`4*A291582(n+1)`
-/

namespace A305072.P299143676509334589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A291582 (n + 1)

end

end A305072.P299143676509334589

namespace A305072

/-- `4*A291582(n+1)` -/
def P299143676509334589.Spec : Prop :=
  ∀ n, P299143676509334589.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P5548233909298686187

`4*(n+1)*A209876(n+1)`
-/

namespace A305072.P5548233909298686187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A209876 (n + 1))

end

end A305072.P5548233909298686187

namespace A305072

/-- `4*(n+1)*A209876(n+1)` -/
def P5548233909298686187.Spec : Prop :=
  ∀ n, P5548233909298686187.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P8599327198372582701

`6*4*(n+1)*A016969(n)`
-/

namespace A305072.P8599327198372582701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((4 * (n + 1) : ℤ) * A016969 n)

end

end A305072.P8599327198372582701

namespace A305072

/-- `6*4*(n+1)*A016969(n)` -/
def P8599327198372582701.Spec : Prop :=
  ∀ n, P8599327198372582701.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P201964804045386324

`(12*n+10)*A008594(n+1)`
-/

namespace A305072.P201964804045386324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 10 : ℤ) * A008594 (n + 1)

end

end A305072.P201964804045386324

namespace A305072

/-- `(12*n+10)*A008594(n+1)` -/
def P201964804045386324.Spec : Prop :=
  ∀ n, P201964804045386324.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P4593666710262718581

`2*(n+1)*Δ[(2*A016777(n))²]`
-/

namespace A305072.P4593666710262718581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A016777 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (f1 (n + 1) - f1 n)

end

end A305072.P4593666710262718581

namespace A305072

/-- `2*(n+1)*Δ[(2*A016777(n))²]` -/
def P4593666710262718581.Spec : Prop :=
  ∀ n, P4593666710262718581.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P3662013106415066745

`(A017641(n)+2)*A017641(n)`
-/

namespace A305072.P3662013106415066745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017641 n + 2) * A017641 n

end

end A305072.P3662013106415066745

namespace A305072

/-- `(A017641(n)+2)*A017641(n)` -/
def P3662013106415066745.Spec : Prop :=
  ∀ n, P3662013106415066745.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P1199384733579689974

`∑[A158543(n+1)-A158546(n)]`
-/

namespace A305072.P1199384733579689974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158543 (n + 1) - A158546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305072.P1199384733579689974

namespace A305072

/-- `∑[A158543(n+1)-A158546(n)]` -/
def P1199384733579689974.Spec : Prop :=
  ∀ n, P1199384733579689974.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P17894462153036541760

`lcm(A037239(n+1), A291582(n+1))`
-/

namespace A305072.P17894462153036541760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037239 (n + 1)) (A291582 (n + 1))

end

end A305072.P17894462153036541760

namespace A305072

/-- `lcm(A037239(n+1), A291582(n+1))` -/
def P17894462153036541760.Spec : Prop :=
  ∀ n, (P17894462153036541760.a n : ℤ) = A305072 (n + 1)

end A305072

/-! ## A305072.P14380933747118107030

`Δ[(n+1)*A068628(n+1)]`
-/

namespace A305072.P14380933747118107030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305072.P14380933747118107030

namespace A305072

/-- `Δ[(n+1)*A068628(n+1)]` -/
def P14380933747118107030.Spec : Prop :=
  ∀ n, P14380933747118107030.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P15460717376714216037

`A008588(n+1)*A017617(2*n+1)`
-/

namespace A305072.P15460717376714216037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (n + 1) * A017617 (2 * n + 1)

end

end A305072.P15460717376714216037

namespace A305072

/-- `A008588(n+1)*A017617(2*n+1)` -/
def P15460717376714216037.Spec : Prop :=
  ∀ n, P15460717376714216037.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P13994513714792230233

`A017233(2*n+1)*A022144(n+1)`
-/

namespace A305072.P13994513714792230233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (2 * n + 1) * A022144 (n + 1)

end

end A305072.P13994513714792230233

namespace A305072

/-- `A017233(2*n+1)*A022144(n+1)` -/
def P13994513714792230233.Spec : Prop :=
  ∀ n, P13994513714792230233.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P11486636450899612192

`2*A153792(2*(n+1))`
-/

namespace A305072.P11486636450899612192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153792 (2 * (n + 1))

end

end A305072.P11486636450899612192

namespace A305072

/-- `2*A153792(2*(n+1))` -/
def P11486636450899612192.Spec : Prop :=
  ∀ n, P11486636450899612192.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P11682554609950657173

`3*A014642(2*(n+1))`
-/

namespace A305072.P11682554609950657173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014642 (2 * (n + 1))

end

end A305072.P11682554609950657173

namespace A305072

/-- `3*A014642(2*(n+1))` -/
def P11682554609950657173.Spec : Prop :=
  ∀ n, P11682554609950657173.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P7836785852806041038

`A067239(3*(n+1))`
-/

namespace A305072.P7836785852806041038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067239 (3 * (n + 1))

end

end A305072.P7836785852806041038

namespace A305072

/-- `A067239(3*(n+1))` -/
def P7836785852806041038.Spec : Prop :=
  ∀ n, P7836785852806041038.a n = A305072 (n + 1)

end A305072

/-! ## A305072.P1395499935060362439

`A152750(3*(n+1))`
-/

namespace A305072.P1395499935060362439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 (3 * (n + 1))

end

end A305072.P1395499935060362439

namespace A305072

/-- `A152750(3*(n+1))` -/
def P1395499935060362439.Spec : Prop :=
  ∀ n, P1395499935060362439.a n = A305072 (n + 1)

end A305072

/-!
# A305073: a(n) = 288*n^2 - 96*n (n>=1).

The programs for A305073, the canonical program `A305073.P2127987445775996738` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305073 has offset 1).

The definition of A305073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `288*(n+1)²-96*(n+1)` (program `A305073.P2127987445775996738`, by `A305073.P2127987445775996738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305073.P2127987445775996738

`288*(n+1)²-96*(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305073

/-- `288*(n+1)²-96*(n+1)` -/
def P2127987445775996738.Spec : Prop :=
  ∀ n, P2127987445775996738.a n = A305073 (n + 1)

theorem P2127987445775996738.correct : P2127987445775996738.Spec := by
  intro n
  simp only [A305073, Nat.add_sub_cancel]

end A305073

/-! ## A305073.P11898067669175244525

`4*3*4*∑[ogf((4+8x)/(1-2x+x^2))]`
-/

namespace A305073.P11898067669175244525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (3 * (4 * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A305073.P11898067669175244525

namespace A305073

/-- `4*3*4*∑[ogf((4+8x)/(1-2x+x^2))]` -/
def P11898067669175244525.Spec : Prop :=
  ∀ n, P11898067669175244525.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P16906977872377054529

`64*∑[A017197(n)]`
-/

namespace A305073.P16906977872377054529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305073.P16906977872377054529

namespace A305073

/-- `64*∑[A017197(n)]` -/
def P16906977872377054529.Spec : Prop :=
  ∀ n, P16906977872377054529.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P13040382652398368556

`2*(A017642(n)-4)`
-/

namespace A305073.P13040382652398368556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A017642 n - 4)

end

end A305073.P13040382652398368556

namespace A305073

/-- `2*(A017642(n)-4)` -/
def P13040382652398368556.Spec : Prop :=
  ∀ n, P13040382652398368556.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P17256492379659091834

`8*(A016970(n)-1)`
-/

namespace A305073.P17256492379659091834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A016970 n - 1)

end

end A305073.P17256492379659091834

namespace A305073

/-- `8*(A016970(n)-1)` -/
def P17256492379659091834.Spec : Prop :=
  ∀ n, P17256492379659091834.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P1184647995774708544

`64*A000217(3*n+2)`
-/

namespace A305073.P1184647995774708544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A000217 (3 * n + 2)

end

end A305073.P1184647995774708544

namespace A305073

/-- `64*A000217(3*n+2)` -/
def P1184647995774708544.Spec : Prop :=
  ∀ n, P1184647995774708544.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P10751876711130642893

`4*6*(n+1)*A017617(n)`
-/

namespace A305073.P10751876711130642893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (6 * (n + 1)) : ℤ) * A017617 n

end

end A305073.P10751876711130642893

namespace A305073

/-- `4*6*(n+1)*A017617(n)` -/
def P10751876711130642893.Spec : Prop :=
  ∀ n, P10751876711130642893.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P3543163874863898698

`2*(12*n+8)*A008594(n+1)`
-/

namespace A305073.P3543163874863898698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (12 * n + 8) : ℤ) * A008594 (n + 1)

end

end A305073.P3543163874863898698

namespace A305073

/-- `2*(12*n+8)*A008594(n+1)` -/
def P3543163874863898698.Spec : Prop :=
  ∀ n, P3543163874863898698.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P6426074700528248314

`(A051062(n+1)+A051062(n))*A017233(n)`
-/

namespace A305073.P6426074700528248314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051062 (n + 1) + A051062 n) * A017233 n

end

end A305073.P6426074700528248314

namespace A305073

/-- `(A051062(n+1)+A051062(n))*A017233(n)` -/
def P6426074700528248314.Spec : Prop :=
  ∀ n, P6426074700528248314.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P15328026480296863125

`(n+1)*Δ[A017546(n)]`
-/

namespace A305073.P15328026480296863125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A305073.P15328026480296863125

namespace A305073

/-- `(n+1)*Δ[A017546(n)]` -/
def P15328026480296863125.Spec : Prop :=
  ∀ n, P15328026480296863125.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P10690444548400395730

`(n+1)*Δ[A017545(n)²]`
-/

namespace A305073.P10690444548400395730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A305073.P10690444548400395730

namespace A305073

/-- `(n+1)*Δ[A017545(n)²]` -/
def P10690444548400395730.Spec : Prop :=
  ∀ n, P10690444548400395730.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P3224570846173362230

`Δ[A016921(n)²]*4*(n+1)`
-/

namespace A305073.P3224570846173362230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (4 * (n + 1) : ℤ)

end

end A305073.P3224570846173362230

namespace A305073

/-- `Δ[A016921(n)²]*4*(n+1)` -/
def P3224570846173362230.Spec : Prop :=
  ∀ n, P3224570846173362230.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P10753912044010531386

`2*A008590(n+1)*A019557(n+1)`
-/

namespace A305073.P10753912044010531386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008590 (n + 1) * A019557 (n + 1))

end

end A305073.P10753912044010531386

namespace A305073

/-- `2*A008590(n+1)*A019557(n+1)` -/
def P10753912044010531386.Spec : Prop :=
  ∀ n, P10753912044010531386.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P11868366564700696236

`2*A019557(n+1)*A022144(n+1)`
-/

namespace A305073.P11868366564700696236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A019557 (n + 1) * A022144 (n + 1))

end

end A305073.P11868366564700696236

namespace A305073

/-- `2*A019557(n+1)*A022144(n+1)` -/
def P11868366564700696236.Spec : Prop :=
  ∀ n, P11868366564700696236.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P14413616973295059108

`(A051062(n+1)+A051062(n))*A122709(n+1)`
-/

namespace A305073.P14413616973295059108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051062 (n + 1) + A051062 n) * A122709 (n + 1)

end

end A305073.P14413616973295059108

namespace A305073

/-- `(A051062(n+1)+A051062(n))*A122709(n+1)` -/
def P14413616973295059108.Spec : Prop :=
  ∀ n, P14413616973295059108.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P15442324312626909191

`(A298035(n+1)+A063122(n+2))*A022144(n+1)`
-/

namespace A305073.P15442324312626909191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A298035 (n + 1) + A063122 (n + 2)) * A022144 (n + 1)

end

end A305073.P15442324312626909191

namespace A305073

/-- `(A298035(n+1)+A063122(n+2))*A022144(n+1)` -/
def P15442324312626909191.Spec : Prop :=
  ∀ n, P15442324312626909191.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P7425814847044899146

`Δ[(4*n)²*A008458(n+1)]`
-/

namespace A305073.P7425814847044899146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n) ^ 2 : ℤ) * A008458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A305073.P7425814847044899146

namespace A305073

/-- `Δ[(4*n)²*A008458(n+1)]` -/
def P7425814847044899146.Spec : Prop :=
  ∀ n, P7425814847044899146.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P3380429118423284985

`12*(n+1)*A017569(2*n+1)`
-/

namespace A305073.P3380429118423284985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℤ) * A017569 (2 * n + 1)

end

end A305073.P3380429118423284985

namespace A305073

/-- `12*(n+1)*A017569(2*n+1)` -/
def P3380429118423284985.Spec : Prop :=
  ∀ n, P3380429118423284985.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P9236524210968519750

`A008598(n+1)*A017197(2*n+1)`
-/

namespace A305073.P9236524210968519750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (n + 1) * A017197 (2 * n + 1)

end

end A305073.P9236524210968519750

namespace A305073

/-- `A008598(n+1)*A017197(2*n+1)` -/
def P9236524210968519750.Spec : Prop :=
  ∀ n, P9236524210968519750.a n = A305073 (n + 1)

end A305073

/-! ## A305073.P13656599787726128733

`A008594(n+1)*A259751(2*(n+1))`
-/

namespace A305073.P13656599787726128733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) * A259751 (2 * (n + 1))

end

end A305073.P13656599787726128733

namespace A305073

/-- `A008594(n+1)*A259751(2*(n+1))` -/
def P13656599787726128733.Spec : Prop :=
  ∀ n, P13656599787726128733.a n = A305073 (n + 1)

end A305073

/-!
# A305074: a(n) = 20*n - 8 (n>=1).

The programs for A305074, the canonical program `A305074.P9440456111715766458` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305074 has offset 1).

The definition of A305074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*(n+1)-8` (program `A305074.P9440456111715766458`, by `A305074.P9440456111715766458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305074.P9440456111715766458

`20*(n+1)-8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305074

/-- `20*(n+1)-8` -/
def P9440456111715766458.Spec : Prop :=
  ∀ n, P9440456111715766458.a n = A305074 (n + 1)

theorem P9440456111715766458.correct : P9440456111715766458.Spec := by
  intro n
  simp only [A305074, Nat.add_sub_cancel]

end A305074

/-!
# A305075: a(n) = 32*n - 24 (n>=1).

The programs for A305075, the canonical program `A305075.P8646303328831969502` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305075 has offset 1).

The definition of A305075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1)-24` (program `A305075.P8646303328831969502`, by `A305075.P8646303328831969502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305075.P8646303328831969502

`32*(n+1)-24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305075

/-- `32*(n+1)-24` -/
def P8646303328831969502.Spec : Prop :=
  ∀ n, P8646303328831969502.a n = A305075 (n + 1)

theorem P8646303328831969502.correct : P8646303328831969502.Spec := by
  intro n
  simp only [A305075, Nat.add_sub_cancel]

end A305075

/-!
# A305077: Partial sums of absolute values of A076191.

The programs for A305077, the canonical program `A305077.P4696874048755374241` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305077 has offset 1).

The definition of A305077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305077.P4696874048755374241

`∑[abs(∑{e}[n+2, #]-∑{e}[n+1, #])]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305077

/-- `∑[abs(∑{e}[n+2, #]-∑{e}[n+1, #])]` -/
def P4696874048755374241.Spec : Prop :=
  ∀ n, P4696874048755374241.a n = A305077 (n + 1)

theorem P4696874048755374241.correct : P4696874048755374241.Spec := by
  intro n
  simp only [A305077, Nat.add_sub_cancel]

end A305077

/-! ## A305077.P7596431547130610644

`∑[abs(A076191(n+1))]`
-/

namespace A305077.P7596431547130610644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076191 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305077.P7596431547130610644

namespace A305077

/-- `∑[abs(A076191(n+1))]` -/
def P7596431547130610644.Spec : Prop :=
  ∀ n, P7596431547130610644.a n = A305077 (n + 1)

end A305077

/-! ## A305077.P2851604529026894941

`∑[abs(Δ[A001222(n+1)])]`
-/

namespace A305077.P2851604529026894941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305077.P2851604529026894941

namespace A305077

/-- `∑[abs(Δ[A001222(n+1)])]` -/
def P2851604529026894941.Spec : Prop :=
  ∀ n, P2851604529026894941.a n = A305077 (n + 1)

end A305077

/-! ## A305077.P15701684060365081696

`∑[A000196(Δ[A001222(n+1)]²)]`
-/

namespace A305077.P15701684060365081696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305077.P15701684060365081696

namespace A305077

/-- `∑[A000196(Δ[A001222(n+1)]²)]` -/
def P15701684060365081696.Spec : Prop :=
  ∀ n, P15701684060365081696.a n = A305077 (n + 1)

end A305077

/-! ## A305077.P2749555112395758446

`∑[abs(Δ[∑{e}[n+1, #]])]`
-/

namespace A305077.P2749555112395758446
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305077.P2749555112395758446

namespace A305077

/-- `∑[abs(Δ[∑{e}[n+1, #]])]` -/
def P2749555112395758446.Spec : Prop :=
  ∀ n, P2749555112395758446.a n = A305077 (n + 1)

theorem P2749555112395758446.correct : P2749555112395758446.Spec := by
  intro n
  simp only [A305077, Nat.add_sub_cancel, A305077.P2749555112395758446.f3, A305077.P2749555112395758446.f2, A305077.P2749555112395758446.f1, A305077.P2749555112395758446.a, A305077.P4696874048755374241.f2, A305077.P4696874048755374241.f3, A305077.P4696874048755374241.f1, A305077.P4696874048755374241.a, SequenceMachineLib.memo_apply]

end A305077

/-! ## A305077.P8416814725507276150

`∑[abs(Δ[A073093(n+1)])]`
-/

namespace A305077.P8416814725507276150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305077.P8416814725507276150

namespace A305077

/-- `∑[abs(Δ[A073093(n+1)])]` -/
def P8416814725507276150.Spec : Prop :=
  ∀ n, P8416814725507276150.a n = A305077 (n + 1)

end A305077

/-!
# A305078: Heinz numbers of connected integer partitions.

The programs for A305078, there is no canonical definition to state claims against.
-/

/-! ## A305078.P16011555391664590311

`A328336(n+2)`
-/

namespace A305078.P16011555391664590311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 2)

end

end A305078.P16011555391664590311

/-! ## A305078.P16312343859517567100

`eq[1, A305079(n+1)]+1`
-/

namespace A305078.P16312343859517567100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305078.P16312343859517567100

/-! ## A305078.P2702569585520785546

`lt[A305079(n+2), 2]+2`
-/

namespace A305078.P2702569585520785546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A305078.P2702569585520785546

/-! ## A305078.P13919353746286152078

`lt[A327512(n+2), 3]+2`
-/

namespace A305078.P13919353746286152078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A305078.P13919353746286152078

/-! ## A305078.P8139528474450021518

`lt[n, A327656(n+2)]+2`
-/

namespace A305078.P8139528474450021518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A305078.P8139528474450021518

/-! ## A305078.P14251060524921150289

`comp[A327529(n+1)-C(2, n)]`
-/

namespace A305078.P14251060524921150289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (n + 1) - (Nat.choose 2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A305078.P14251060524921150289

/-! ## A305078.P17196524733481436914

`∪[A318978(n+1), A014210(n)]`
-/

namespace A305078.P17196524733481436914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305078.P17196524733481436914

/-! ## A305078.P16985477906402658821

`∪[A318978(n+1), A033844(n)]`
-/

namespace A305078.P16985477906402658821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305078.P16985477906402658821

/-! ## A305078.P11309694152477777481

`∪[A318978(n+1), A042988(n)]`
-/

namespace A305078.P11309694152477777481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A305078.P11309694152477777481

/-!
# A305079: Number of connected components of the integer partition with Heinz number n.

The programs for A305079, there is no canonical definition to state claims against.
-/

/-! ## A305079.P14019409334240397870

`A305501(A064989(n+1))+A007814(n+1)`
-/

namespace A305079.P14019409334240397870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (A064989 (n + 1)).toNat + A007814 (n + 1)

end

end A305079.P14019409334240397870

/-! ## A305079.P6015271416090809031

`A305501(A064989(n+1))+1-A088705(n+1)`
-/

namespace A305079.P6015271416090809031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (A064989 (n + 1)).toNat + 1 - A088705 (n + 1)

end

end A305079.P6015271416090809031

/-! ## A305079.P17763942949702383411

`A001222(A327512(2*(n+1)))-A318320(A117838(2*n+1))`
-/

namespace A305079.P17763942949702383411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327512 (2 * (n + 1))).toNat - A318320 (A117838 (2 * n + 1)).toNat

end

end A305079.P17763942949702383411

/-! ## A305079.P6471796986218843778

`A001222(A327512(2*(n+1)))-A001222(A213740(n+1))`
-/

namespace A305079.P6471796986218843778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327512 (2 * (n + 1))).toNat - A001222 (A213740 (n + 1)).toNat

end

end A305079.P6471796986218843778

/-! ## A305079.P5264842501050609976

`A001222(A327512(2*(n+1)))-A001222(A019546(n+1))`
-/

namespace A305079.P5264842501050609976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327512 (2 * (n + 1))).toNat - A001222 (A019546 (n + 1)).toNat

end

end A305079.P5264842501050609976

/-! ## A305079.P13341524266889606648

`A001222(A327512(2*(n+1)))-A345936(A217046(n+1))`
-/

namespace A305079.P13341524266889606648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327512 (2 * (n + 1))).toNat - A345936 (A217046 (n + 1)).toNat

end

end A305079.P13341524266889606648

/-! ## A305079.P11553807196225668893

`A001222(A327512(2*(n+1)))-A014963(A074981(n+1))`
-/

namespace A305079.P11553807196225668893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327512 (2 * (n + 1))).toNat - A014963 (A074981 (n + 1)).toNat

end

end A305079.P11553807196225668893

/-! ## A305079.P9448360023934009515

`(A001222(A327512(2*(n+1)))-1)%A000010(A140513(n))`
-/

namespace A305079.P9448360023934009515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A327512 (2 * (n + 1))).toNat - 1) (A000010 (A140513 n).toNat)

end

end A305079.P9448360023934009515

/-! ## A305079.P11384655445560299519

`A028310(A001222(A327512(n+1)))%A033492(n+1)`
-/

namespace A305079.P11384655445560299519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A001222 (A327512 (n + 1)).toNat).toNat) (A033492 (n + 1))

end

end A305079.P11384655445560299519

/-! ## A305079.P2037082155725130101

`A327406(n+1)+A139352(Δ[A000695(n)])`
-/

namespace A305079.P2037082155725130101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (n + 1) + A139352 (f1 (n + 1) - f1 n).toNat

end

end A305079.P2037082155725130101

/-! ## A305079.P11823004265969764129

`A327406(n+1)+A275024(A006519(n+1))`
-/

namespace A305079.P11823004265969764129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (n + 1) + A275024 (A006519 (n + 1)).toNat

end

end A305079.P11823004265969764129

/-! ## A305079.P3859136977786942352

`A327406(n+1)+A007814(A328617(n+1))`
-/

namespace A305079.P3859136977786942352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (n + 1) + A007814 (A328617 (n + 1)).toNat

end

end A305079.P3859136977786942352

/-!
# A305080: Number of connected strict integer partitions of n with pairwise indivisible and squarefree parts.

The programs for A305080, there is no canonical definition to state claims against.
-/

/-! ## A305080.P3828246160166588621

`A125250(gcd(A075328(n), A221586(n)))`
-/

namespace A305080.P3828246160166588621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125250 (Int.gcd (A075328 n) (A221586 n))

end

end A305080.P3828246160166588621

/-! ## A305080.P3699680456192924113

`A037800(A152660(n+3))^A037800(n+2)`
-/

namespace A305080.P3699680456192924113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037800 (A152660 (n + 3)).toNat : ℚ) ^ (A037800 (n + 2) : ℤ)

end

end A305080.P3699680456192924113

/-! ## A305080.P8697439214207567958

`A049419(A136625(n))-A004526(A049419(n+1))`
-/

namespace A305080.P8697439214207567958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A136625 n).toNat - A004526 (A049419 (n + 1)).toNat

end

end A305080.P8697439214207567958

/-! ## A305080.P16937692472390839210

`gcd(A102679(A251765(n)), A302050(n+1))`
-/

namespace A305080.P16937692472390839210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102679 (A251765 n).toNat) (A302050 (n + 1))

end

end A305080.P16937692472390839210

/-! ## A305080.P2799518523891612866

`A168049(A280542(n+1))^A322044(A145033(n))`
-/

namespace A305080.P2799518523891612866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168049 (A280542 (n + 1)).toNat : ℚ) ^ (A322044 (A145033 n).toNat : ℤ)

end

end A305080.P2799518523891612866

/-!
# A305081: Heinz numbers of z-trees. Heinz numbers of connected integer partitions with pairwise indivisible parts and z-density -1.

The programs for A305081, there is no canonical definition to state claims against.
-/

/-! ## A305081.P3859347076263463611

`A329559(comp[A349303(n)²])`
-/

namespace A305081.P3859347076263463611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349303 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A305081.P3859347076263463611

/-! ## A305081.P11663277573927100208

`A329559(A180925(n+1)+1)`
-/

namespace A305081.P11663277573927100208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (A180925 (n + 1) + 1).toNat

end

end A305081.P11663277573927100208

/-! ## A305081.P4221649930134268521

`A329559(comp[A054910(n+1)²])`
-/

namespace A305081.P4221649930134268521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054910 (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A305081.P4221649930134268521

/-! ## A305081.P12810890255826626058

`A329559(comp[A198954(2*n)²])`
-/

namespace A305081.P12810890255826626058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (2 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A305081.P12810890255826626058

/-! ## A305081.P7894907925119343586

`A329559(comp[A380235(n+7)]+2)`
-/

namespace A305081.P7894907925119343586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380235 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A305081.P7894907925119343586

/-! ## A305081.P6664054293570286310

`A329559(comp[A362562(3*n+1)²])`
-/

namespace A305081.P6664054293570286310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362562 (3 * n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A305081.P6664054293570286310

/-!
# A305082: G.f.: Sum_{k>=1} x^k/(1-x^k) * Product_{k>=1} (1+x^k).

The programs for A305082, there is no canonical definition to state claims against.
-/

/-! ## A305082.P11591447276921371693

`A090867(n)+A067588(n)`
-/

namespace A305082.P11591447276921371693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090867 n + A067588 n

end

end A305082.P11591447276921371693

/-! ## A305082.P9593290732018104144

`A067588(n)+A067588(n)-(A116680(n)+A116676(n))`
-/

namespace A305082.P9593290732018104144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n + (A067588 n - (A116680 n + A116676 n))

end

end A305082.P9593290732018104144

/-! ## A305082.P16516469451024673190

`A067588(n)+A341495(n)+A341494(n)`
-/

namespace A305082.P16516469451024673190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n + (A341495 n + A341494 n)

end

end A305082.P16516469451024673190

/-! ## A305082.P14670909830814529632

`A067588(n)+A341497(n)+A341496(n)`
-/

namespace A305082.P14670909830814529632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n + (A341497 n + A341496 n)

end

end A305082.P14670909830814529632

/-! ## A305082.P6186935527087297673

`A067588(n)+A116680(n)+2*A341496(n)`
-/

namespace A305082.P6186935527087297673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n + (A116680 n + 2 * A341496 n)

end

end A305082.P6186935527087297673

/-! ## A305082.P1715523162243864178

`A067588(n)+2*A341497(n)-A116680(n)`
-/

namespace A305082.P1715523162243864178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067588 n + (2 * A341497 n - A116680 n)

end

end A305082.P1715523162243864178

/-!
# A305083: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305083, there is no canonical definition to state claims against.
-/

/-! ## A305083.P2399177224538121172

`A305089(∑[4*n]+1)`
-/

namespace A305083.P2399177224538121172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305083.P2399177224538121172

/-! ## A305083.P9508065754553202263

`record[A305089(Δ[A235355(n)])]`
-/

namespace A305083.P9508065754553202263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305083.P9508065754553202263

/-! ## A305083.P4985397459116954544

`record[A305089(A330613(n+1))]`
-/

namespace A305083.P4985397459116954544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305083.P4985397459116954544

/-! ## A305083.P1330971194151079320

`A305089(A001844(n))+char[10]`
-/

namespace A305083.P1330971194151079320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305083.P1330971194151079320

/-! ## A305083.P2631362682946966062

`record[A003982(n)*A305089(n+1)]`
-/

namespace A305083.P2631362682946966062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305083.P2631362682946966062

/-!
# A305084: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305084, there is no canonical definition to state claims against.
-/

/-! ## A305084.P10145663208209045881

`A305089(∑[n+2]+4)`
-/

namespace A305084.P10145663208209045881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305084.P10145663208209045881

/-! ## A305084.P11496463183147589170

`A305089(A167614(n+1))+char[19]`
-/

namespace A305084.P11496463183147589170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305084.P11496463183147589170

/-! ## A305084.P16908090234182948894

`record[A010054(n)*A305089(n+3)]`
-/

namespace A305084.P16908090234182948894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A305089 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305084.P16908090234182948894

/-! ## A305084.P14952225904300076027

`record[gcd(A109754(n+2), A305089(n+5))]`
-/

namespace A305084.P14952225904300076027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109754 (n + 2)) (A305089 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305084.P14952225904300076027

/-! ## A305084.P1599440133313576220

`A305089(A167614(n+1))%A291016(n)`
-/

namespace A305084.P1599440133313576220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305089 (A167614 (n + 1)).toNat) (A291016 n)

end

end A305084.P1599440133313576220

/-!
# A305085: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305085, there is no canonical definition to state claims against.
-/

/-! ## A305085.P5893813713592802923

`A305089(∑[n+3]+7)`
-/

namespace A305085.P5893813713592802923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305085.P5893813713592802923

/-! ## A305085.P7666442019305863750

`or(A003982(n+1), A305089(A141214(n)+7))`
-/

namespace A305085.P7666442019305863750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 (n + 1)) (A305089 (A141214 n + 7).toNat)

end

end A305085.P7666442019305863750

/-! ## A305085.P15904060350975645803

`A305089(A055998(n+2))%A050249(n+1)`
-/

namespace A305085.P15904060350975645803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305089 (A055998 (n + 2)).toNat) (A050249 (n + 1))

end

end A305085.P15904060350975645803

/-! ## A305085.P14441669761090042213

`A305089(A141214(n+1))+A003982(2*n+1)`
-/

namespace A305085.P14441669761090042213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A141214 (n + 1)).toNat + A003982 (2 * n + 1)

end

end A305085.P14441669761090042213

/-! ## A305085.P16249573564353731181

`A305089(Δ[A034857(n+1)])+A135523(2*n+5)`
-/

namespace A305085.P16249573564353731181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (f1 (n + 1) - f1 n).toNat + A135523 (2 * n + 5)

end

end A305085.P16249573564353731181

/-!
# A305086: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305086, there is no canonical definition to state claims against.
-/

/-! ## A305086.P11553395819658978523

`A305089(A374005(n+1))`
-/

namespace A305086.P11553395819658978523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A374005 (n + 1)).toNat

end

end A305086.P11553395819658978523

/-! ## A305086.P4557100969547621579

`A305089(A167499(n+3))`
-/

namespace A305086.P4557100969547621579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A167499 (n + 3)).toNat

end

end A305086.P4557100969547621579

/-! ## A305086.P6921504774254358116

`A305089(A155212(n)+13)`
-/

namespace A305086.P6921504774254358116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A155212 n + 13).toNat

end

end A305086.P6921504774254358116

/-! ## A305086.P16009939483603866871

`A305089(A056000(n)+15)`
-/

namespace A305086.P16009939483603866871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A056000 n + 15).toNat

end

end A305086.P16009939483603866871

/-! ## A305086.P6914121757246806969

`A305089(eq[7, A066657(n)])`
-/

namespace A305086.P6914121757246806969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305086.P6914121757246806969

/-!
# A305087: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305087, there is no canonical definition to state claims against.
-/

/-! ## A305087.P984235988176461693

`A305089(A374007(n+1))`
-/

namespace A305087.P984235988176461693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A374007 (n + 1)).toNat

end

end A305087.P984235988176461693

/-! ## A305087.P4108633440656653895

`A305089(A166136(n+4))`
-/

namespace A305087.P4108633440656653895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A166136 (n + 4)).toNat

end

end A305087.P4108633440656653895

/-! ## A305087.P1363586773205767277

`A305089(A056115(n)+21)`
-/

namespace A305087.P1363586773205767277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A056115 n + 21).toNat

end

end A305087.P1363586773205767277

/-! ## A305087.P4292604779307364686

`A305089(Δ[A264443(n)]+10)`
-/

namespace A305087.P4292604779307364686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (f1 (n + 1) - f1 n + 10).toNat

end

end A305087.P4292604779307364686

/-! ## A305087.P13099262774944620228

`A305089(A167499(n+4)+1)`
-/

namespace A305087.P13099262774944620228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A167499 (n + 4) + 1).toNat

end

end A305087.P13099262774944620228

/-!
# A305088: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305088, there is no canonical definition to state claims against.
-/

/-! ## A305088.P6066500613461703967

`A305089(A374008(n+1))`
-/

namespace A305088.P6066500613461703967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A374008 (n + 1)).toNat

end

end A305088.P6066500613461703967

/-! ## A305088.P9308625250168973884

`A305089(A056119(n)+28)`
-/

namespace A305088.P9308625250168973884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A056119 n + 28).toNat

end

end A305088.P9308625250168973884

/-! ## A305088.P17935009586799571727

`A305089(eq[11, A066657(n)])`
-/

namespace A305088.P17935009586799571727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305088.P17935009586799571727

/-! ## A305088.P11708271082325370414

`A305089(A166136(n+5)+1)`
-/

namespace A305088.P11708271082325370414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A166136 (n + 5) + 1).toNat

end

end A305088.P11708271082325370414

/-! ## A305088.P3552626436658986598

`A305089(A167499(n+5)+2)`
-/

namespace A305088.P3552626436658986598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305089 (A167499 (n + 5) + 2).toNat

end

end A305088.P3552626436658986598

/-!
# A305089: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305089, there is no canonical definition to state claims against.
-/

/-! ## A305089.P6104053045623202708

`A316740(n+1)-A037800(A188910(n+1))`
-/

namespace A305089.P6104053045623202708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (n + 1) - A037800 (A188910 (n + 1)).toNat

end

end A305089.P6104053045623202708

/-! ## A305089.P1161752749916861806

`A316740(n+1)-A037800(A189111(n+1))`
-/

namespace A305089.P1161752749916861806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (n + 1) - A037800 (A189111 (n + 1)).toNat

end

end A305089.P1161752749916861806

/-! ## A305089.P4183674356385950918

`A316740(n+1)+A178798(A008292(n+1))`
-/

namespace A305089.P4183674356385950918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (n + 1) + A178798 (A008292 (n + 1)).toNat

end

end A305089.P4183674356385950918

/-! ## A305089.P2951875427967065759

`xor(A010051(A014342(2*n+5)), A316740(n+1))`
-/

namespace A305089.P2951875427967065759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A014342 (2 * n + 5)).toNat) (A316740 (n + 1))

end

end A305089.P2951875427967065759

/-! ## A305089.P8600743428340458389

`A316740(n+1)+A178798(A006046(n))`
-/

namespace A305089.P8600743428340458389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316740 (n + 1) + A178798 (A006046 n).toNat

end

end A305089.P8600743428340458389

/-!
# A305090: Number of n X n 0..1 arrays with every element unequal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305090, there is no canonical definition to state claims against.
-/

/-! ## A305090.P5455813120046995412

`A305097(∑[4*n]+1)`
-/

namespace A305090.P5455813120046995412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305090.P5455813120046995412

/-! ## A305090.P14938683844249240697

`record[A305097(Δ[A235355(n)])]`
-/

namespace A305090.P14938683844249240697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305090.P14938683844249240697

/-! ## A305090.P684090436117394668

`record[A305097(A272267(n+1))]`
-/

namespace A305090.P684090436117394668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305090.P684090436117394668

/-! ## A305090.P235243855681944289

`record[A305097(A330613(n+1))]`
-/

namespace A305090.P235243855681944289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305090.P235243855681944289

/-! ## A305090.P615707299105972131

`A305097(A001844(n))+char[17]`
-/

namespace A305090.P615707299105972131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305090.P615707299105972131

/-!
# A305091: Number of n X 2 0..1 arrays with every element unequal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305091, the canonical program `A305091.P17680255567806590091` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305091 has offset 1).

The definition of A305091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305091.P17680255567806590091

`a(n-1)+a(n-2)+8*a(n-3)-16*a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=10, a(4)=27, a(5)=109`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A305091

/-- `a(n-1)+a(n-2)+8*a(n-3)-16*a(n-5)` -/
def P17680255567806590091.Spec : Prop :=
  ∀ n, P17680255567806590091.a n = A305091 (n + 1)

theorem P17680255567806590091.correct : P17680255567806590091.Spec := by
  intro n
  simp only [A305091, Nat.add_sub_cancel]

end A305091

/-! ## A305091.P7659681447493406097

`A305097(∑[n+1]+2)`
-/

namespace A305091.P7659681447493406097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A305091.P7659681447493406097

namespace A305091

/-- `A305097(∑[n+1]+2)` -/
def P7659681447493406097.Spec : Prop :=
  ∀ n, P7659681447493406097.a n = A305091 (n + 1)

end A305091

/-! ## A305091.P473994589074818130

`and(-1, A305097(A133263(n+1)))`
-/

namespace A305091.P473994589074818130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305097 (A133263 (n + 1)).toNat)

end

end A305091.P473994589074818130

namespace A305091

/-- `and(-1, A305097(A133263(n+1)))` -/
def P473994589074818130.Spec : Prop :=
  ∀ n, P473994589074818130.a n = A305091 (n + 1)

end A305091

/-! ## A305091.P16638075804317308267

`record[A305097(A286246(n+1)+1)]`
-/

namespace A305091.P16638075804317308267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A286246 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305091.P16638075804317308267

namespace A305091

/-- `record[A305097(A286246(n+1)+1)]` -/
def P16638075804317308267.Spec : Prop :=
  ∀ n, P16638075804317308267.a n = A305091 (n + 1)

end A305091

/-! ## A305091.P12068703743752161229

`record[A010054(n)*A305097(n+2)]`
-/

namespace A305091.P12068703743752161229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A305097 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305091.P12068703743752161229

namespace A305091

/-- `record[A010054(n)*A305097(n+2)]` -/
def P12068703743752161229.Spec : Prop :=
  ∀ n, P12068703743752161229.a n = A305091 (n + 1)

end A305091

/-!
# A305092: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305092, there is no canonical definition to state claims against.
-/

/-! ## A305092.P10792307492227605117

`A305097(∑[n+2]+4)`
-/

namespace A305092.P10792307492227605117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305092.P10792307492227605117

/-! ## A305092.P17100785953695868277

`or(char[1], A305097(A167614(n+1)))`
-/

namespace A305092.P17100785953695868277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305097 (A167614 (n + 1)).toNat)

end

end A305092.P17100785953695868277

/-! ## A305092.P7411517181030002935

`record[A010054(n)*A305097(n+3)]`
-/

namespace A305092.P7411517181030002935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A305097 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305092.P7411517181030002935

/-! ## A305092.P11781702356871317488

`record[gcd(A264909(n), A305097(n+4))]`
-/

namespace A305092.P11781702356871317488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264909 n) (A305097 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305092.P11781702356871317488

/-! ## A305092.P12162615277819107756

`or(char[1], A305097(A000096(n+1)+4))`
-/

namespace A305092.P12162615277819107756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305097 (A000096 (n + 1) + 4).toNat)

end

end A305092.P12162615277819107756

/-!
# A305093: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305093, there is no canonical definition to state claims against.
-/

/-! ## A305093.P16651698335066618856

`A305097(∑[n+3]+7)`
-/

namespace A305093.P16651698335066618856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305093.P16651698335066618856

/-! ## A305093.P971183314850629116

`A305097(A141214(n)+7)%A006319(n+2)`
-/

namespace A305093.P971183314850629116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305097 (A141214 n + 7).toNat) (A006319 (n + 2))

end

end A305093.P971183314850629116

/-! ## A305093.P3487078157225081709

`A305097(A141214(n)+7)/A028234(A003557(n+1))`
-/

namespace A305093.P3487078157225081709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305097 (A141214 n + 7).toNat : ℚ) / (A028234 (A003557 (n + 1)).toNat : ℚ)

end

end A305093.P3487078157225081709

/-! ## A305093.P2165508580508515206

`A305097(A155212(n)+5)+char[18]`
-/

namespace A305093.P2165508580508515206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A155212 n + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305093.P2165508580508515206

/-! ## A305093.P8468369525070620623

`A305097(A155212(n)+5)%A000108(n+3)`
-/

namespace A305093.P8468369525070620623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305097 (A155212 n + 5).toNat) (A000108 (n + 3))

end

end A305093.P8468369525070620623

/-!
# A305094: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305094, there is no canonical definition to state claims against.
-/

/-! ## A305094.P17673642217589391049

`A305097(A167499(n+3))`
-/

namespace A305094.P17673642217589391049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A167499 (n + 3)).toNat

end

end A305094.P17673642217589391049

/-! ## A305094.P9117780043126844777

`A305097(A155212(n)+13)`
-/

namespace A305094.P9117780043126844777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A155212 n + 13).toNat

end

end A305094.P9117780043126844777

/-! ## A305094.P11583811828301127069

`A305097(A056000(n)+15)`
-/

namespace A305094.P11583811828301127069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A056000 n + 15).toNat

end

end A305094.P11583811828301127069

/-! ## A305094.P12113524323523263734

`A305097(eq[7, A066657(n)])`
-/

namespace A305094.P12113524323523263734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305094.P12113524323523263734

/-! ## A305094.P18088925770402853014

`A305097(A167614(n+3)+2)`
-/

namespace A305094.P18088925770402853014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A167614 (n + 3) + 2).toNat

end

end A305094.P18088925770402853014

/-!
# A305095: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305095, there is no canonical definition to state claims against.
-/

/-! ## A305095.P4402168735318233115

`A305097(A056115(n)+21)`
-/

namespace A305095.P4402168735318233115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A056115 n + 21).toNat

end

end A305095.P4402168735318233115

/-! ## A305095.P1537834457806528066

`A305097(A000124(n+5)+5)`
-/

namespace A305095.P1537834457806528066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A000124 (n + 5) + 5).toNat

end

end A305095.P1537834457806528066

/-! ## A305095.P16521884960219547704

`A305097(A025747(n+4)+6)`
-/

namespace A305095.P16521884960219547704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A025747 (n + 4) + 6).toNat

end

end A305095.P16521884960219547704

/-! ## A305095.P7414455000235681616

`A305097(A000096(n+4)+7)`
-/

namespace A305095.P7414455000235681616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A000096 (n + 4) + 7).toNat

end

end A305095.P7414455000235681616

/-! ## A305095.P16335341920856779048

`A305097(A000217(n+5)+6)`
-/

namespace A305095.P16335341920856779048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A000217 (n + 5) + 6).toNat

end

end A305095.P16335341920856779048

/-!
# A305096: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305096, there is no canonical definition to state claims against.
-/

/-! ## A305096.P7471780607890773841

`A305097(A167487(n+5))`
-/

namespace A305096.P7471780607890773841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A167487 (n + 5)).toNat

end

end A305096.P7471780607890773841

/-! ## A305096.P12068631146785316634

`A305097(A056119(n)+28)`
-/

namespace A305096.P12068631146785316634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A056119 n + 28).toNat

end

end A305096.P12068631146785316634

/-! ## A305096.P15005819338440744393

`A305097(eq[11, A066657(n)])`
-/

namespace A305096.P15005819338440744393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305096.P15005819338440744393

/-! ## A305096.P17913891847391620253

`A305097(A167499(n+5)+2)`
-/

namespace A305096.P17913891847391620253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A167499 (n + 5) + 2).toNat

end

end A305096.P17913891847391620253

/-! ## A305096.P6727761236446455794

`A305097(A000124(n+6)+6)`
-/

namespace A305096.P6727761236446455794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305097 (A000124 (n + 6) + 6).toNat

end

end A305096.P6727761236446455794

/-!
# A305097: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A305097, there is no canonical definition to state claims against.
-/

/-! ## A305097.P7769091052073802858

`A316757(n+1)-A347689(A309876(n))`
-/

namespace A305097.P7769091052073802858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (n + 1) - A347689 (A309876 n).toNat

end

end A305097.P7769091052073802858

/-! ## A305097.P324150513620028330

`A316757(n+1)-A316867(A260340(n)²)`
-/

namespace A305097.P324150513620028330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (n + 1) - A316867 (A260340 n ^ 2).toNat

end

end A305097.P324150513620028330

/-! ## A305097.P17950284023888990511

`A316757(n+1)-A363806(A233862(n+1))`
-/

namespace A305097.P17950284023888990511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316757 (n + 1) - A363806 (A233862 (n + 1)).toNat

end

end A305097.P17950284023888990511

/-! ## A305097.P1655694288897520384

`A308590(A301615(n+1))`
-/

namespace A305097.P1655694288897520384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (A301615 (n + 1)).toNat

end

end A305097.P1655694288897520384

/-!
# A305098: Triangle read by rows: T(0,0) = 1; T(n,k) = -T(n-1,k) + 2 T(n-2,k-1) for k = 0..floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A305098, there is no canonical definition to state claims against.
-/

/-! ## A305098.P16907710288399333806

`A303872(A091018(n))`
-/

namespace A305098.P16907710288399333806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303872 (A091018 n).toNat

end

end A305098.P16907710288399333806

/-! ## A305098.P2633181858680380970

`Δ[A053615(n)]*A128099(n)`
-/

namespace A305098.P2633181858680380970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A128099 n

end

end A305098.P2633181858680380970

/-! ## A305098.P13719780904816558088

`A303872(A056536(n+1)-1)`
-/

namespace A305098.P13719780904816558088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303872 (A056536 (n + 1) - 1).toNat

end

end A305098.P13719780904816558088

/-! ## A305098.P1691358566843996619

`Δ[dr(A196199(n))]*A128099(n)`
-/

namespace A305098.P1691358566843996619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A196199 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A128099 n

end

end A305098.P1691358566843996619

/-! ## A305098.P6215136393686346364

`Δ[A004738(n+1)]*A128099(n)`
-/

namespace A305098.P6215136393686346364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A128099 n

end

end A305098.P6215136393686346364

/-! ## A305098.P2880018067527702888

`A014995(A055086(n))*A128099(n)`
-/

namespace A305098.P2880018067527702888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014995 (A055086 n).toNat * A128099 n

end

end A305098.P2880018067527702888

/-! ## A305098.P11770444158834094197

`A014995(A082375(n))*A128099(n)`
-/

namespace A305098.P11770444158834094197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014995 (A082375 n).toNat * A128099 n

end

end A305098.P11770444158834094197

/-! ## A305098.P6953832967000416173

`A055975(A152204(n))*A128099(n)`
-/

namespace A305098.P6953832967000416173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A152204 n).toNat * A128099 n

end

end A305098.P6953832967000416173

/-! ## A305098.P18216634460945364071

`A013609(A091018(n))*A033999(A055086(n))`
-/

namespace A305098.P18216634460945364071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A091018 n).toNat * A033999 (A055086 n).toNat

end

end A305098.P18216634460945364071

/-!
# A305099: Least prime m such that either prime(n)# - m is prime or prime(n)# + m is prime, where p# denotes the product of all primes <= p.

The programs for A305099, there is no canonical definition to state claims against.
-/

/-! ## A305099.P980516869082219092

`A180101(A278487(n+2))`
-/

namespace A305099.P980516869082219092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A278487 (n + 2)).toNat

end

end A305099.P980516869082219092

/-! ## A305099.P16558986141307524380

`A094343(n+1)%(A153722(n+1)+1)`
-/

namespace A305099.P16558986141307524380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094343 (n + 1)) (A153722 (n + 1) + 1)

end

end A305099.P16558986141307524380

/-! ## A305099.P5062450972183038215

`A000040(record[A329288(n+1)]-(char[1]-1))`
-/

namespace A305099.P5062450972183038215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329288 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1)).toNat

end

end A305099.P5062450972183038215

/-! ## A305099.P1340849274944414459

`A094343(n+1)-A151672(A074496(n))`
-/

namespace A305099.P1340849274944414459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (n + 1) - A151672 (A074496 n).toNat

end

end A305099.P1340849274944414459

/-! ## A305099.P4845383387266895616

`A180101(A173088(n+2))`
-/

namespace A305099.P4845383387266895616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A173088 (n + 2)).toNat

end

end A305099.P4845383387266895616

