import SequenceMachineLib
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B011.C001
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

/-!
# A216401: E.g.f.: artanh(x*exp(x)).

The programs for A216401, there is no canonical definition to state claims against.
-/

/-! ## A216401.P5020973183329969504

`A337636(A186264(n))+1`
-/

namespace A216401.P5020973183329969504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337636 (A186264 n).toNat + 1

end

end A216401.P5020973183329969504

/-! ## A216401.P348696524933491867

`A269734(A213099(n+1))+A084193(n)`
-/

namespace A216401.P348696524933491867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269734 (A213099 (n + 1)).toNat + A084193 n

end

end A216401.P348696524933491867

/-!
# A216403: Number of distinct values taken by 10th derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1.

The programs for A216403, there is no canonical definition to state claims against.
-/

/-! ## A216403.P12623996633526389775

`A216368(A033443(n+2))`
-/

namespace A216403.P12623996633526389775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (A033443 (n + 2)).toNat

end

end A216403.P12623996633526389775

/-! ## A216403.P13931435692468920223

`A216368(∑[A028904(n)+1])`
-/

namespace A216403.P13931435692468920223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216403.P13931435692468920223

/-! ## A216403.P15953573232850862498

`A216368(∑[A122256(n+1)])`
-/

namespace A216403.P15953573232850862498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216403.P15953573232850862498

/-! ## A216403.P6034017343642571764

`A028310(A145547(n+1)+A026816(n))`
-/

namespace A216403.P6034017343642571764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A145547 (n + 1) + A026816 n).toNat

end

end A216403.P6034017343642571764

/-! ## A216403.P5006313678744972409

`A185238(A000793(n))+A145547(n+1)`
-/

namespace A216403.P5006313678744972409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A000793 n).toNat + A145547 (n + 1)

end

end A216403.P5006313678744972409

/-!
# A216404: a(n) = lcm((d1 + 1), (d2 + 1), ..., (dk + 1)), where d1, d2, ..., dk are the prime factors of the n-th Fermat pseudoprime to base 2, A001567(n).

The programs for A216404, there is no canonical definition to state claims against.
-/

/-! ## A216404.P8135424175645253843

`A238162(A001567(n+1))`
-/

namespace A216404.P8135424175645253843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238162 (A001567 (n + 1)).toNat

end

end A216404.P8135424175645253843

/-! ## A216404.P1017531723342929324

`A353783(xor(1, A001567(n+1))+1)`
-/

namespace A216404.P1017531723342929324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (Int.xor 1 (A001567 (n + 1)) + 1).toNat

end

end A216404.P1017531723342929324

/-! ## A216404.P14450653844199770450

`A238162(∩[A020136(n+1), A020137(n+1)])`
-/

namespace A216404.P14450653844199770450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238162 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A216404.P14450653844199770450

/-! ## A216404.P12641797220904180690

`A238162(∩[A020137(n+1), A020144(n+1)])`
-/

namespace A216404.P12641797220904180690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238162 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A216404.P12641797220904180690

/-! ## A216404.P9838168169074693035

`A238162(∩[A020136(n+1), A020160(n+1)])`
-/

namespace A216404.P9838168169074693035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238162 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A216404.P9838168169074693035

/-!
# A216407: Sum of decimal digits not appearing in n.

The programs for A216407, there is no canonical definition to state claims against.
-/

/-! ## A216407.P12021501472004771069

`45-A217928(n)`
-/

namespace A216407.P12021501472004771069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 - A217928 n

end

end A216407.P12021501472004771069

/-! ## A216407.P7624249071416224743

`∑{digits}[A230959(n), #]`
-/

namespace A216407.P7624249071416224743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A216407.P7624249071416224743

/-! ## A216407.P18146431968095237380

`45-A007953(A137564(n))`
-/

namespace A216407.P18146431968095237380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 - A007953 (A137564 n).toNat

end

end A216407.P18146431968095237380

/-! ## A216407.P4125856453934218158

`45-A007953(A227362(n))`
-/

namespace A216407.P4125856453934218158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 - A007953 (A227362 n).toNat

end

end A216407.P4125856453934218158

/-! ## A216407.P12777141298055900701

`A061601(A217928(n)+54)`
-/

namespace A216407.P12777141298055900701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A217928 n + 54).toNat

end

end A216407.P12777141298055900701

/-!
# A216408: Perfect squares which can be written neither as a^2+b^2, nor as a^2+2*b^2, nor as a^2+3*b^2, nor as a^2+7*b^2, with a > 0 and b > 0.

The programs for A216408, there is no canonical definition to state claims against.
-/

/-! ## A216408.P15793745070934716562

`A216827(n+1)²`
-/

namespace A216408.P15793745070934716562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216827 (n + 1) ^ 2

end

end A216408.P15793745070934716562

/-! ## A216408.P11810302351784720103

`record[A216827(A065648(n))²]`
-/

namespace A216408.P11810302351784720103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216827 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216408.P11810302351784720103

/-! ## A216408.P3995660865908479721

`record[A216827(A086742(n))²]`
-/

namespace A216408.P3995660865908479721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216827 (A086742 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216408.P3995660865908479721

/-! ## A216408.P1734611312301936349

`A002620(2*A216827(n+1))`
-/

namespace A216408.P1734611312301936349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A216827 (n + 1)).toNat

end

end A216408.P1734611312301936349

/-! ## A216408.P14231413028431034792

`A000290(or(1, A216827(n+1)))`
-/

namespace A216408.P14231413028431034792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A216827 (n + 1))).toNat

end

end A216408.P14231413028431034792

/-!
# A216409: Expansion of e.g.f. (x/cos(x)) * exp(x*tan(x)) (odd powers only).

The programs for A216409, there is no canonical definition to state claims against.
-/

/-! ## A216409.P9451426467749582569

`A157142(n)*A354020(n+1)`
-/

namespace A216409.P9451426467749582569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n * A354020 (n + 1)

end

end A216409.P9451426467749582569

/-! ## A216409.P7239293272397951259

`abs(A354020(n+1))*A005408(n)`
-/

namespace A216409.P7239293272397951259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A354020 (n + 1)| * A005408 n

end

end A216409.P7239293272397951259

/-!
# A216411: Number of bases in which n begins with a "1".

The programs for A216411, the canonical program `A216411.P9923526773590359509` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216411 has offset 2).

The definition of A216411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216411.P9923526773590359509

`A255165(n+2)-A255165(A004526(n)+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A216411

/-- `A255165(n+2)-A255165(A004526(n)+1)` -/
def P9923526773590359509.Spec : Prop :=
  ∀ n, P9923526773590359509.a n = A216411 (n + 2)

theorem P9923526773590359509.correct : P9923526773590359509.Spec := by
  intro n
  simp only [A216411, Nat.add_sub_cancel]

end A216411

/-! ## A216411.P17117027059136299337

`A255165(n+2)-A255165(A065033(n+1))`
-/

namespace A216411.P17117027059136299337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255165 (n + 2) - A255165 (A065033 (n + 1)).toNat

end

end A216411.P17117027059136299337

namespace A216411

/-- `A255165(n+2)-A255165(A065033(n+1))` -/
def P17117027059136299337.Spec : Prop :=
  ∀ n, P17117027059136299337.a n = A216411 (n + 2)

end A216411

/-! ## A216411.P534619191884265964

`A070939(A103580(n+1)*A304465(n+1))`
-/

namespace A216411.P534619191884265964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A103580 (n + 1) * A304465 (n + 1)).toNat

end

end A216411.P534619191884265964

namespace A216411

/-- `A070939(A103580(n+1)*A304465(n+1))` -/
def P534619191884265964.Spec : Prop :=
  ∀ n, P534619191884265964.a n = A216411 (n + 2)

end A216411

/-! ## A216411.P12937517512876798848

`A048766(A014206(5*n+1))-A000720(n+1)`
-/

namespace A216411.P12937517512876798848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A014206 (5 * n + 1)).toNat - A000720 (n + 1)

end

end A216411.P12937517512876798848

namespace A216411

/-- `A048766(A014206(5*n+1))-A000720(n+1)` -/
def P12937517512876798848.Spec : Prop :=
  ∀ n, P12937517512876798848.a n = A216411 (n + 2)

end A216411

/-! ## A216411.P17112805961363032630

`A048766(A014206(5*n+1))-A230980(n+1)`
-/

namespace A216411.P17112805961363032630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A014206 (5 * n + 1)).toNat - A230980 (n + 1)

end

end A216411.P17112805961363032630

namespace A216411

/-- `A048766(A014206(5*n+1))-A230980(n+1)` -/
def P17112805961363032630.Spec : Prop :=
  ∀ n, P17112805961363032630.a n = A216411 (n + 2)

end A216411

/-!
# A216412: The cubes arising in A039771.

The programs for A216412, the canonical program `A216412.P4166279177706564649` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216412 has offset 1).

The definition of A216412 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A039771, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216412.P4166279177706564649

`A000010(A039771(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216412

/-- `A000010(A039771(n+1))` -/
def P4166279177706564649.Spec : Prop :=
  ∀ n, P4166279177706564649.a n = A216412 (n + 1)

theorem P4166279177706564649.correct : P4166279177706564649.Spec := by
  intro n
  simp only [A216412, Nat.add_sub_cancel]

end A216412

/-! ## A216412.P4237039126508173313

`∑{d}[A039771(n+1), A007431(#)]`
-/

namespace A216412.P4237039126508173313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A216412.P4237039126508173313

namespace A216412

/-- `∑{d}[A039771(n+1), A007431(#)]` -/
def P4237039126508173313.Spec : Prop :=
  ∀ n, P4237039126508173313.a n = A216412 (n + 1)

end A216412

/-! ## A216412.P12596755470519481767

`A039649(A039771(C(n+1, n)))-1`
-/

namespace A216412.P12596755470519481767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A039771 (Nat.choose (n + 1) n)).toNat - 1

end

end A216412.P12596755470519481767

namespace A216412

/-- `A039649(A039771(C(n+1, n)))-1` -/
def P12596755470519481767.Spec : Prop :=
  ∀ n, P12596755470519481767.a n = A216412 (n + 1)

end A216412

/-! ## A216412.P16203163582210861551

`A039649(A039771(ceil(acot(n)+n)))-1`
-/

namespace A216412.P16203163582210861551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A039771 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat).toNat - 1

end

end A216412.P16203163582210861551

namespace A216412

/-- `A039649(A039771(ceil(acot(n)+n)))-1` -/
def P16203163582210861551.Spec : Prop :=
  ∀ n, P16203163582210861551.a n = A216412 (n + 1)

end A216412

/-! ## A216412.P11951931577796195163

`A039649(A039771(2*n+1-n))-1`
-/

namespace A216412.P11951931577796195163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A039771 (2 * n + 1 - n)).toNat - 1

end

end A216412.P11951931577796195163

namespace A216412

/-- `A039649(A039771(2*n+1-n))-1` -/
def P11951931577796195163.Spec : Prop :=
  ∀ n, P11951931577796195163.a n = A216412 (n + 1)

end A216412

/-!
# A216413: Number of forests of trees on n labeled nodes in which each tree has a distinct number of vertices.

The programs for A216413, there is no canonical definition to state claims against.
-/

/-! ## A216413.P5643697709023443099

`A030581(ceil(n^n/2)+1)`
-/

namespace A216413.P5643697709023443099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030581 (⌈(n ^ n : ℚ) / 2⌉ + 1).toNat

end

end A216413.P5643697709023443099

/-! ## A216413.P12680824369746340443

`A332086(∏[eq[n, ∏{d}[n, #]]]+2)`
-/

namespace A216413.P12680824369746340443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (∏ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A216413.P12680824369746340443

/-!
# A216414: a(n) = (-1)^(n-3)*binomial(n,3) - 1.

The programs for A216414, the canonical program `A216414.P17747069119867532728` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216414 has offset 3).

The definition of A216414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*C(n+3, 3)-1` (program `A216414.P17747069119867532728`, by `A216414.P17747069119867532728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216414.P17747069119867532728

`(-1)^n*C(n+3, 3)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216414

/-- `(-1)^n*C(n+3, 3)-1` -/
def P17747069119867532728.Spec : Prop :=
  ∀ n, P17747069119867532728.a n = A216414 (n + 3)

theorem P17747069119867532728.correct : P17747069119867532728.Spec := by
  intro n
  simp only [A216414, Nat.add_sub_cancel]

end A216414

/-! ## A216414.P3568231544794830317

`(-1)^n*∑[∑[n+1]]-1`
-/

namespace A216414.P3568231544794830317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A216414.P3568231544794830317

namespace A216414

/-- `(-1)^n*∑[∑[n+1]]-1` -/
def P3568231544794830317.Spec : Prop :=
  ∀ n, P3568231544794830317.a n = A216414 (n + 3)

end A216414

/-! ## A216414.P8595616263326450391

`(3-(a(n-1)+2)*(n+3))/n` with `a(0)=0`
-/

namespace A216414.P8595616263326450391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 - (a (n - 1) + 2) * (n + 3 : ℚ)) / (n : ℚ)

end

end A216414.P8595616263326450391

namespace A216414

/-- `(3-(a(n-1)+2)*(n+3))/n` -/
def P8595616263326450391.Spec : Prop :=
  ∀ n, P8595616263326450391.a n = (A216414 (n + 3) : ℚ)

end A216414

/-! ## A216414.P16607995078178481492

`(A331433(n)-6)/6`
-/

namespace A216414.P16607995078178481492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331433 n - 6 : ℚ) / 6

end

end A216414.P16607995078178481492

namespace A216414

/-- `(A331433(n)-6)/6` -/
def P16607995078178481492.Spec : Prop :=
  ∀ n, P16607995078178481492.a n = (A216414 (n + 3) : ℚ)

end A216414

/-! ## A216414.P17243121498117784470

`∑[(n-A014681(n))*∑[(n+1)²]]`
-/

namespace A216414.P17243121498117784470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A014681 n) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216414.P17243121498117784470

namespace A216414

/-- `∑[(n-A014681(n))*∑[(n+1)²]]` -/
def P17243121498117784470.Spec : Prop :=
  ∀ n, P17243121498117784470.a n = A216414 (n + 3)

end A216414

/-! ## A216414.P3823728472565711209

`(C(n+3, 3)-A033999(n))*A033999(n)`
-/

namespace A216414.P3823728472565711209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 3) 3 : ℤ) - A033999 n) * A033999 n

end

end A216414.P3823728472565711209

namespace A216414

/-- `(C(n+3, 3)-A033999(n))*A033999(n)` -/
def P3823728472565711209.Spec : Prop :=
  ∀ n, P3823728472565711209.a n = A216414 (n + 3)

end A216414

/-! ## A216414.P10472868728783811436

`(∑[∑[n+1]]-A062157(n+1))/A062157(n+1)`
-/

namespace A216414.P10472868728783811436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A062157 (n + 1) : ℚ) / (A062157 (n + 1) : ℚ)

end

end A216414.P10472868728783811436

namespace A216414

/-- `(∑[∑[n+1]]-A062157(n+1))/A062157(n+1)` -/
def P10472868728783811436.Spec : Prop :=
  ∀ n, P10472868728783811436.a n = (A216414 (n + 3) : ℚ)

end A216414

/-! ## A216414.P14089889190542282408

`(A000292(n+1)-A033999(n))*A033999(n)`
-/

namespace A216414.P14089889190542282408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) - A033999 n) * A033999 n

end

end A216414.P14089889190542282408

namespace A216414

/-- `(A000292(n+1)-A033999(n))*A033999(n)` -/
def P14089889190542282408.Spec : Prop :=
  ∀ n, P14089889190542282408.a n = A216414 (n + 3)

end A216414

/-! ## A216414.P10002428711191597671

`(A087960(2*n+1)+A000292(n+1))*A087960(2*n)`
-/

namespace A216414.P10002428711191597671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) + A000292 (n + 1)) * A087960 (2 * n)

end

end A216414.P10002428711191597671

namespace A216414

/-- `(A087960(2*n+1)+A000292(n+1))*A087960(2*n)` -/
def P10002428711191597671.Spec : Prop :=
  ∀ n, P10002428711191597671.a n = A216414 (n + 3)

end A216414

/-! ## A216414.P452266221965632615

`(A087960(2*n+1)+A008804(2*n))*A087960(2*n)`
-/

namespace A216414.P452266221965632615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) + A008804 (2 * n)) * A087960 (2 * n)

end

end A216414.P452266221965632615

namespace A216414

/-- `(A087960(2*n+1)+A008804(2*n))*A087960(2*n)` -/
def P452266221965632615.Spec : Prop :=
  ∀ n, P452266221965632615.a n = A216414 (n + 3)

end A216414

/-!
# A216415: a(n) = smallest positive m such that 2n-1 | 10^m-1, or 0 if no such m exists.

The programs for A216415, there is no canonical definition to state claims against.
-/

/-! ## A216415.P14376938561973564339

`A084680(Δ[n²])`
-/

namespace A216415.P14376938561973564339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216415.P14376938561973564339

/-! ## A216415.P12971446507136144107

`A070682(floor(acot(n)+n))`
-/

namespace A216415.P12971446507136144107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A216415.P12971446507136144107

/-! ## A216415.P16558413616122057439

`A070682(n^floor(atan(n)))`
-/

namespace A216415.P16558413616122057439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A216415.P16558413616122057439

/-! ## A216415.P11894412897668650538

`A070682(C(n, floor(atan(n))))`
-/

namespace A216415.P11894412897668650538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A216415.P11894412897668650538

/-! ## A216415.P4059937255005481929

`gcd(floor(acot(n)), A070682(n))`
-/

namespace A216415.P4059937255005481929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A070682 n)

end

end A216415.P4059937255005481929

/-! ## A216415.P8040338720595828314

`A070682(or(n, floor(acot(n))))`
-/

namespace A216415.P8040338720595828314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A216415.P8040338720595828314

/-! ## A216415.P7363568349291621581

`A070682(xor(n, floor(acot(n))))`
-/

namespace A216415.P7363568349291621581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A216415.P7363568349291621581

/-! ## A216415.P12527218807613813205

`A070682(gcd(n, C(2, n²)))`
-/

namespace A216415.P12527218807613813205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (Nat.gcd n (Nat.choose 2 (n ^ 2)))

end

end A216415.P12527218807613813205

/-! ## A216415.P737079441946541938

`A070682(C(2, n+2)+n)`
-/

namespace A216415.P737079441946541938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (Nat.choose 2 (n + 2) + n)

end

end A216415.P737079441946541938

/-! ## A216415.P5495327684428499127

`A070682(n^a(floor(acot(n))))` with `a(0)=1`
-/

namespace A216415.P5495327684428499127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070682 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ))).toNat

end

end A216415.P5495327684428499127

/-! ## A216415.P16675290217874543456

`or(char[1], A084680(2*n+1))`
-/

namespace A216415.P16675290217874543456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084680 (2 * n + 1))

end

end A216415.P16675290217874543456

/-! ## A216415.P2185147115445185610

`A070682(or(n, round(1/(n+1))))`
-/

namespace A216415.P2185147115445185610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ)))).toNat

end

end A216415.P2185147115445185610

/-! ## A216415.P4301710582135832900

`A070682(n^(n²%(n+1)))`
-/

namespace A216415.P4301710582135832900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (n ^ (n ^ 2 % (n + 1)))

end

end A216415.P4301710582135832900

/-! ## A216415.P15185732987670603159

`A070682(A028310(n))`
-/

namespace A216415.P15185732987670603159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (A028310 n).toNat

end

end A216415.P15185732987670603159

/-! ## A216415.P17375307604765817671

`A070682(A171950(n+2))`
-/

namespace A216415.P17375307604765817671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (A171950 (n + 2)).toNat

end

end A216415.P17375307604765817671

/-! ## A216415.P1177525023044698169

`A070682(A000007(n)+n)`
-/

namespace A216415.P1177525023044698169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (A000007 n + (n : ℤ)).toNat

end

end A216415.P1177525023044698169

/-! ## A216415.P7356311263752772740

`A070682(xor(n, A000007(n)))`
-/

namespace A216415.P7356311263752772740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A216415.P7356311263752772740

/-! ## A216415.P11490919829245989184

`A084681(A106610(2*n+1))`
-/

namespace A216415.P11490919829245989184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A106610 (2 * n + 1)).toNat

end

end A216415.P11490919829245989184

/-! ## A216415.P10517521149759943798

`A070682(n)+A008683((n+1)²)`
-/

namespace A216415.P10517521149759943798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 n + A008683 ((n + 1) ^ 2)

end

end A216415.P10517521149759943798

/-! ## A216415.P3839136045140259372

`A070682(A321512(2*n+1)+n)`
-/

namespace A216415.P3839136045140259372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (A321512 (2 * n + 1) + (n : ℤ)).toNat

end

end A216415.P3839136045140259372

/-!
# A216416: a(n) = smallest m such that 2n-1 | 10^m+1, or 0 if no such m exists.

The programs for A216416, there is no canonical definition to state claims against.
-/

/-! ## A216416.P15308313197738910325

`A069531(Δ[n²])`
-/

namespace A216416.P15308313197738910325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216416.P15308313197738910325

/-! ## A216416.P15887678198252827124

`A069531(2*n+1)%99`
-/

namespace A216416.P15887678198252827124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069531 (2 * n + 1)) 99

end

end A216416.P15887678198252827124

/-! ## A216416.P7789504918981357576

`A000194(A069531(2*n+1)²)`
-/

namespace A216416.P7789504918981357576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A069531 (2 * n + 1) ^ 2).toNat

end

end A216416.P7789504918981357576

/-! ## A216416.P14763724572922225743

`A023443(A069531(2*n+1)+1)`
-/

namespace A216416.P14763724572922225743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A069531 (2 * n + 1) + 1).toNat

end

end A216416.P14763724572922225743

/-! ## A216416.P18231926286857893576

`A078898(2*A069531(2*n+1))`
-/

namespace A216416.P18231926286857893576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (2 * A069531 (2 * n + 1)).toNat

end

end A216416.P18231926286857893576

/-! ## A216416.P1664927863385967193

`filter[A069531(2*n+1), A236861(#)]`
-/

namespace A216416.P1664927863385967193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A216416.P1664927863385967193

/-! ## A216416.P15702772216509464267

`∑{d}[A069531(2*n+1), A000010(#)]`
-/

namespace A216416.P15702772216509464267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A216416.P15702772216509464267

/-! ## A216416.P2483319736915676283

`A153733(2*A069531(2*n+1))/2`
-/

namespace A216416.P2483319736915676283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 (2 * A069531 (2 * n + 1)).toNat : ℚ) / 2

end

end A216416.P2483319736915676283

/-! ## A216416.P13289341007329355946

`A069531(2*n+1)+A063524(n+2)`
-/

namespace A216416.P13289341007329355946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (2 * n + 1) + A063524 (n + 2)

end

end A216416.P13289341007329355946

/-! ## A216416.P9739470121782947546

`A007318(C(2, n))*A069531(2*n+1)`
-/

namespace A216416.P9739470121782947546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A069531 (2 * n + 1)

end

end A216416.P9739470121782947546

/-!
# A216417: Numbers of the form p^2*q^3 where p, q are (not necessarily distinct) primes.

The programs for A216417, there is no canonical definition to state claims against.
-/

/-! ## A216417.P15322255898027477194

`∪[A050997(n+1), A143610(n+1)]`
-/

namespace A216417.P15322255898027477194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P15322255898027477194

/-! ## A216417.P440207454864568266

`filter[A014614(n+1), A355448(#)]`
-/

namespace A216417.P440207454864568266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355448 (f1 j).toNat = 1) n)

end

end A216417.P440207454864568266

/-! ## A216417.P5642699208588861799

`∩[A001694(n+1), A014614(n+1)]`
-/

namespace A216417.P5642699208588861799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P5642699208588861799

/-! ## A216417.P11942009474963605235

`∩[A014614(n+1), A056166(n+1)]`
-/

namespace A216417.P11942009474963605235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P11942009474963605235

/-! ## A216417.P1455927144195660233

`∩[A014614(n+1), A102834(n+1)]`
-/

namespace A216417.P1455927144195660233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P1455927144195660233

/-! ## A216417.P12279348392473535234

`∩[A014614(n+1), A216427(n+1)]`
-/

namespace A216417.P12279348392473535234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P12279348392473535234

/-! ## A216417.P6814242496157316899

`∩[A014614(n+1), A320966(n+1)]`
-/

namespace A216417.P6814242496157316899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P6814242496157316899

/-! ## A216417.P6820344196730767728

`∩[A014614(n+1), A350014(n+1)]`
-/

namespace A216417.P6820344196730767728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P6820344196730767728

/-! ## A216417.P5829055241299633186

`∩[A014614(n+1), A370786(n+1)]`
-/

namespace A216417.P5829055241299633186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P5829055241299633186

/-! ## A216417.P10378767825332954950

`∩[A014614(n+1), A376171(n+1)]`
-/

namespace A216417.P10378767825332954950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216417.P10378767825332954950

/-!
# A216419: Odd powers that are not prime powers.

The programs for A216419, there is no canonical definition to state claims against.
-/

/-! ## A216419.P10991839742685704180

`∩[A075109(n+1), A363217(n+1)]`
-/

namespace A216419.P10991839742685704180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P10991839742685704180

/-! ## A216419.P8940660596542582850

`∩[A062739(n+1), A380456(n+1)]`
-/

namespace A216419.P8940660596542582850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P8940660596542582850

/-! ## A216419.P3679276288995395667

`∩[A075109(n+1), A380456(n+1)]`
-/

namespace A216419.P3679276288995395667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P3679276288995395667

/-! ## A216419.P13893527361379577165

`∩[A363217(n+1), A380456(n+1)]`
-/

namespace A216419.P13893527361379577165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P13893527361379577165

/-! ## A216419.P11098556265317292961

`∩[A062739(n+1), A387620(n+1)]`
-/

namespace A216419.P11098556265317292961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P11098556265317292961

/-! ## A216419.P16853063772438728503

`∩[A075109(n+1), A387620(n+1)]`
-/

namespace A216419.P16853063772438728503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P16853063772438728503

/-! ## A216419.P12552353420101869741

`∩[A363217(n+1), A387620(n+1)]`
-/

namespace A216419.P12552353420101869741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P12552353420101869741

/-! ## A216419.P12419212336041378244

`∩[A131605(n+1), A363217(n+1)]`
-/

namespace A216419.P12419212336041378244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P12419212336041378244

/-! ## A216419.P17308834083218388022

`∩[A062739(n+1), A131605(n+2)]`
-/

namespace A216419.P17308834083218388022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P17308834083218388022

/-! ## A216419.P12502833692331096108

`∩[A075109(n+1), A131605(n+2)]`
-/

namespace A216419.P12502833692331096108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P12502833692331096108

/-! ## A216419.P14865254629062830282

`∩[or(1, A131605(n+1)), A131605(n+4)]`
-/

namespace A216419.P14865254629062830282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A131605 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P14865254629062830282

/-! ## A216419.P12415686918891193017

`∩[A001597(n+1), A363217(n+1)]`
-/

namespace A216419.P12415686918891193017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P12415686918891193017

/-! ## A216419.P1594426558334259519

`∩[A075109(n+1), A369417(n+1)]`
-/

namespace A216419.P1594426558334259519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P1594426558334259519

/-! ## A216419.P6396305946999244764

`∩[A075109(n+1), A369636(n+1)]`
-/

namespace A216419.P6396305946999244764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P6396305946999244764

/-! ## A216419.P8197134856299837509

`∩[A075109(n+1), A286708(n+1)]`
-/

namespace A216419.P8197134856299837509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P8197134856299837509

/-! ## A216419.P11261195719607855109

`∩[A075109(n+1), A370266(n+1)]`
-/

namespace A216419.P11261195719607855109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P11261195719607855109

/-! ## A216419.P15587507709693934385

`∩[A001597(n+1), A361487(n+1)]`
-/

namespace A216419.P15587507709693934385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P15587507709693934385

/-! ## A216419.P6188584872683835143

`∩[A002760(n+1), A361487(n+1)]`
-/

namespace A216419.P6188584872683835143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P6188584872683835143

/-! ## A216419.P9521306470070944908

`∩[A073042(n+1), A361487(n+1)]`
-/

namespace A216419.P9521306470070944908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P9521306470070944908

/-! ## A216419.P2519597823443310843

`∩[A075109(n+1), A361487(n+1)]`
-/

namespace A216419.P2519597823443310843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216419.P2519597823443310843

/-!
# A216424: Numbers k such that 4^k + k^4 - 1 is prime.

The programs for A216424, there is no canonical definition to state claims against.
-/

/-! ## A216424.P5353284665327670351

`A151723(3*n)+A128353(A000045(n+2))`
-/

namespace A216424.P5353284665327670351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (3 * n) + A128353 (A000045 (n + 2)).toNat

end

end A216424.P5353284665327670351

/-!
# A216426: Numbers of the form a^2*b^3, where a != b and a, b > 1.

The programs for A216426, there is no canonical definition to state claims against.
-/

/-! ## A216426.P17870432757849742762

`A216427(record[∑[A176046(n)]+1])`
-/

namespace A216426.P17870432757849742762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216426.P17870432757849742762

/-! ## A216426.P5527742338111995261

`∩[A216427(n+1), A335249(n+1)]`
-/

namespace A216426.P5527742338111995261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216426.P5527742338111995261

/-! ## A216426.P13162298013502406755

`A216427(A235402(n+1)+A077739(n+1))`
-/

namespace A216426.P13162298013502406755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (A235402 (n + 1) + A077739 (n + 1)).toNat

end

end A216426.P13162298013502406755

/-!
# A216427: Numbers of the form a^2*b^3, where a >= 2 and b >= 2.

The programs for A216427, there is no canonical definition to state claims against.
-/

/-! ## A216427.P9994439128665141713

`A104026(A100793(n))`
-/

namespace A216427.P9994439128665141713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104026 (A100793 n).toNat

end

end A216427.P9994439128665141713

/-! ## A216427.P1463583115881309720

`A104026(A001096(n)+1)`
-/

namespace A216427.P1463583115881309720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104026 (A001096 n + 1).toNat

end

end A216427.P1463583115881309720

/-!
# A216428: Primes of the form 2^(n-1)*(n+1)^2-(-1)^n.

The programs for A216428, there is no canonical definition to state claims against.
-/

/-! ## A216428.P4815315316399891624

`p?[abs((n+2)²*(-2)^n+1)]`
-/

namespace A216428.P4815315316399891624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 2) ^ 2 : ℤ) * (-2) ^ n + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216428.P4815315316399891624

/-!
# A216430: (-1)^A081603(n), parity of the number of 2's in the ternary expansion of n.

The programs for A216430, the canonical program `A216430.P17716969539992197610` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216430 has offset 1).

The definition of A216430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216430.P17716969539992197610

`(-1)^A081603(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216430

/-- `(-1)^A081603(n+1)` -/
def P17716969539992197610.Spec : Prop :=
  ∀ n, P17716969539992197610.a n = (A216430 (n + 1) : ℚ)

end A216430

/-! ## A216430.P4258156712284554941

`(-1)^∑[A156595(n)]`
-/

namespace A216430.P4258156712284554941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A216430.P4258156712284554941

namespace A216430

/-- `(-1)^∑[A156595(n)]` -/
def P4258156712284554941.Spec : Prop :=
  ∀ n, P4258156712284554941.a n = (A216430 (n + 1) : ℚ)

end A216430

/-! ## A216430.P3857787208994788471

`(-1)^A004488(n+1)`
-/

namespace A216430.P3857787208994788471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004488 (n + 1) : ℤ)

end

end A216430.P3857787208994788471

namespace A216430

/-- `(-1)^A004488(n+1)` -/
def P3857787208994788471.Spec : Prop :=
  ∀ n, P3857787208994788471.a n = (A216430 (n + 1) : ℚ)

end A216430

/-! ## A216430.P7389943881225251178

`(-1)^A189717(n+1)`
-/

namespace A216430.P7389943881225251178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A189717 (n + 1) : ℤ)

end

end A216430.P7389943881225251178

namespace A216430

/-- `(-1)^A189717(n+1)` -/
def P7389943881225251178.Spec : Prop :=
  ∀ n, P7389943881225251178.a n = (A216430 (n + 1) : ℚ)

end A216430

/-! ## A216430.P17889581882953434657

`(-1)^A061436(n+2)`
-/

namespace A216430.P17889581882953434657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A061436 (n + 2) : ℤ)

end

end A216430.P17889581882953434657

namespace A216430

/-- `(-1)^A061436(n+2)` -/
def P17889581882953434657.Spec : Prop :=
  ∀ n, P17889581882953434657.a n = (A216430 (n + 1) : ℚ)

end A216430

/-! ## A216430.P8321817838345624141

`A011584(A006047(n+1))`
-/

namespace A216430.P8321817838345624141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 (A006047 (n + 1)).toNat

end

end A216430.P8321817838345624141

namespace A216430

/-- `A011584(A006047(n+1))` -/
def P8321817838345624141.Spec : Prop :=
  ∀ n, P8321817838345624141.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P1494761027969036252

`A004718(A117592(n+1))`
-/

namespace A216430.P1494761027969036252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A117592 (n + 1)).toNat

end

end A216430.P1494761027969036252

namespace A216430

/-- `A004718(A117592(n+1))` -/
def P1494761027969036252.Spec : Prop :=
  ∀ n, P1494761027969036252.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P15113738006865671593

`A008836(A290092(n+1))`
-/

namespace A216430.P15113738006865671593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A290092 (n + 1)).toNat

end

end A216430.P15113738006865671593

namespace A216430

/-- `A008836(A290092(n+1))` -/
def P15113738006865671593.Spec : Prop :=
  ∀ n, P15113738006865671593.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P13512450203738513265

`A009001(A300222(n+1))`
-/

namespace A216430.P13512450203738513265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A300222 (n + 1)).toNat

end

end A216430.P13512450203738513265

namespace A216430

/-- `A009001(A300222(n+1))` -/
def P13512450203738513265.Spec : Prop :=
  ∀ n, P13512450203738513265.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P8725057500868266237

`(-1)^A120855(n+1)`
-/

namespace A216430.P8725057500868266237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A120855 (n + 1) : ℤ)

end

end A216430.P8725057500868266237

namespace A216430

/-- `(-1)^A120855(n+1)` -/
def P8725057500868266237.Spec : Prop :=
  ∀ n, P8725057500868266237.a n = (A216430 (n + 1) : ℚ)

end A216430

/-! ## A216430.P8654628954754473635

`or(1, -A064990(n+1))`
-/

namespace A216430.P8654628954754473635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A064990 (n + 1))

end

end A216430.P8654628954754473635

namespace A216430

/-- `or(1, -A064990(n+1))` -/
def P8654628954754473635.Spec : Prop :=
  ∀ n, P8654628954754473635.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P4012347730630557067

`A011582(A120879(n+1))`
-/

namespace A216430.P4012347730630557067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A120879 (n + 1)).toNat

end

end A216430.P4012347730630557067

namespace A216430

/-- `A011582(A120879(n+1))` -/
def P4012347730630557067.Spec : Prop :=
  ∀ n, P4012347730630557067.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P10538593190007528724

`(-1)^A137305(n+1)`
-/

namespace A216430.P10538593190007528724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A137305 (n + 1) : ℤ)

end

end A216430.P10538593190007528724

namespace A216430

/-- `(-1)^A137305(n+1)` -/
def P10538593190007528724.Spec : Prop :=
  ∀ n, P10538593190007528724.a n = (A216430 (n + 1) : ℚ)

end A216430

/-! ## A216430.P898379682656269242

`A033999(A137305(n+1))`
-/

namespace A216430.P898379682656269242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A137305 (n + 1)).toNat

end

end A216430.P898379682656269242

namespace A216430

/-- `A033999(A137305(n+1))` -/
def P898379682656269242.Spec : Prop :=
  ∀ n, P898379682656269242.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P10708040034632215757

`(-1)^A357616(n+1)`
-/

namespace A216430.P10708040034632215757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A357616 (n + 1) : ℤ)

end

end A216430.P10708040034632215757

namespace A216430

/-- `(-1)^A357616(n+1)` -/
def P10708040034632215757.Spec : Prop :=
  ∀ n, P10708040034632215757.a n = (A216430 (n + 1) : ℚ)

end A216430

/-! ## A216430.P14748888809823723090

`A033999(A004488(n+1))`
-/

namespace A216430.P14748888809823723090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004488 (n + 1)).toNat

end

end A216430.P14748888809823723090

namespace A216430

/-- `A033999(A004488(n+1))` -/
def P14748888809823723090.Spec : Prop :=
  ∀ n, P14748888809823723090.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P15729632530231258591

`A057077(A128173(n+1))`
-/

namespace A216430.P15729632530231258591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A128173 (n + 1)).toNat

end

end A216430.P15729632530231258591

namespace A216430

/-- `A057077(A128173(n+1))` -/
def P15729632530231258591.Spec : Prop :=
  ∀ n, P15729632530231258591.a n = A216430 (n + 1)

end A216430

/-! ## A216430.P10322975367667442034

`A033999(A357616(n+1))`
-/

namespace A216430.P10322975367667442034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A357616 (n + 1)).toNat

end

end A216430.P10322975367667442034

namespace A216430

/-- `A033999(A357616(n+1))` -/
def P10322975367667442034.Spec : Prop :=
  ∀ n, P10322975367667442034.a n = A216430 (n + 1)

end A216430

/-!
# A216431: a(0)=0; thereafter a(n+1) = a(n) + 1 + number of 0's in binary representation of a(n), counted with A023416.

The programs for A216431, the canonical program `A216431.P5274582083580161709` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216431 has offset 0).

The definition of A216431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216431.P5274582083580161709

`A233272(a(n-1))` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216431

/-- `A233272(a(n-1))` -/
def P5274582083580161709.Spec : Prop :=
  ∀ n, P5274582083580161709.a n = A216431 n

theorem P5274582083580161709.correct : P5274582083580161709.Spec := by
  intro n
  simp only [A216431]

end A216431

/-! ## A216431.P9620738114792772211

`A233271(round(sqrt(n*(n+2))))`
-/

namespace A216431.P9620738114792772211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (SequenceMachineLib.roundAway (Real.sqrt (n * (n + 2) : ℝ))).toNat

end

end A216431.P9620738114792772211

namespace A216431

/-- `A233271(round(sqrt(n*(n+2))))` -/
def P9620738114792772211.Spec : Prop :=
  ∀ n, P9620738114792772211.a n = A216431 n

end A216431

/-! ## A216431.P14506468084652850359

`A233271(n+1)%∑[n+1]`
-/

namespace A216431.P14506468084652850359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233271 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A216431.P14506468084652850359

namespace A216431

/-- `A233271(n+1)%∑[n+1]` -/
def P14506468084652850359.Spec : Prop :=
  ∀ n, P14506468084652850359.a n = A216431 n

end A216431

/-! ## A216431.P17162319562746049554

`A233271(n+1)-A036987(2*n)`
-/

namespace A216431.P17162319562746049554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (n + 1) - A036987 (2 * n)

end

end A216431.P17162319562746049554

namespace A216431

/-- `A233271(n+1)-A036987(2*n)` -/
def P17162319562746049554.Spec : Prop :=
  ∀ n, P17162319562746049554.a n = A216431 n

end A216431

/-! ## A216431.P5700391493922350819

`A233271(n+1)-A000038(n)/2`
-/

namespace A216431.P5700391493922350819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233271 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A216431.P5700391493922350819

namespace A216431

/-- `A233271(n+1)-A000038(n)/2` -/
def P5700391493922350819.Spec : Prop :=
  ∀ n, P5700391493922350819.a n = (A216431 n : ℚ)

end A216431

/-! ## A216431.P8734573473478787001

`A233271(n+1)+A080791(n)-A023416(n)`
-/

namespace A216431.P8734573473478787001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (n + 1) + (A080791 n - A023416 n)

end

end A216431.P8734573473478787001

namespace A216431

/-- `A233271(n+1)+A080791(n)-A023416(n)` -/
def P8734573473478787001.Spec : Prop :=
  ∀ n, P8734573473478787001.a n = A216431 n

end A216431

/-! ## A216431.P4221555806875104785

`A071542(2*n)+A233271(n+1)-A071542(2*n+1)`
-/

namespace A216431.P4221555806875104785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 * n) + (A233271 (n + 1) - A071542 (2 * n + 1))

end

end A216431.P4221555806875104785

namespace A216431

/-- `A071542(2*n)+A233271(n+1)-A071542(2*n+1)` -/
def P4221555806875104785.Spec : Prop :=
  ∀ n, P4221555806875104785.a n = A216431 n

end A216431

/-! ## A216431.P1208934537983104918

`(A080791(2*n)-A080791(n))*A233271(n+1)`
-/

namespace A216431.P1208934537983104918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080791 (2 * n) - A080791 n) * A233271 (n + 1)

end

end A216431.P1208934537983104918

namespace A216431

/-- `(A080791(2*n)-A080791(n))*A233271(n+1)` -/
def P1208934537983104918.Spec : Prop :=
  ∀ n, P1208934537983104918.a n = A216431 n

end A216431

/-! ## A216431.P8849706962580772763

`A029837(2*n+1)+A233271(n+1)-(A029837(n+1)+1)`
-/

namespace A216431.P8849706962580772763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (2 * n + 1) + (A233271 (n + 1) - (A029837 (n + 1) + 1))

end

end A216431.P8849706962580772763

namespace A216431

/-- `A029837(2*n+1)+A233271(n+1)-(A029837(n+1)+1)` -/
def P8849706962580772763.Spec : Prop :=
  ∀ n, P8849706962580772763.a n = A216431 n

end A216431

/-! ## A216431.P3965530171363510394

`(A023416(4*n)-A023416(2*n))*A233271(n+1)`
-/

namespace A216431.P3965530171363510394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023416 (4 * n) - A023416 (2 * n)) * A233271 (n + 1)

end

end A216431.P3965530171363510394

namespace A216431

/-- `(A023416(4*n)-A023416(2*n))*A233271(n+1)` -/
def P3965530171363510394.Spec : Prop :=
  ∀ n, P3965530171363510394.a n = A216431 n

end A216431

/-! ## A216431.P11214393657259395243

`a(n-1)+A023416(a(n-1))+1` with `a(0)=0`
-/

namespace A216431.P11214393657259395243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A023416 (a (n - 1)).toNat + 1)

end

end A216431.P11214393657259395243

namespace A216431

/-- `a(n-1)+A023416(a(n-1))+1` -/
def P11214393657259395243.Spec : Prop :=
  ∀ n, P11214393657259395243.a n = A216431 n

end A216431

/-! ## A216431.P14324392181720350245

`eq[1, char[A233271(char[1]+n)]]`
-/

namespace A216431.P14324392181720350245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 ((if ∃ j, f4 j = n then 1 else 0) + n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216431.P14324392181720350245

namespace A216431

/-- `eq[1, char[A233271(char[1]+n)]]` -/
def P14324392181720350245.Spec : Prop :=
  ∀ n, (P14324392181720350245.a n : ℤ) = A216431 n

end A216431

/-! ## A216431.P1235510340154307513

`A087156(A233271(n+1))`
-/

namespace A216431.P1235510340154307513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A233271 (n + 1)).toNat

end

end A216431.P1235510340154307513

namespace A216431

/-- `A087156(A233271(n+1))` -/
def P1235510340154307513.Spec : Prop :=
  ∀ n, P1235510340154307513.a n = A216431 n

end A216431

/-! ## A216431.P371000988858879270

`A199969(A233271(n+1)+1)`
-/

namespace A216431.P371000988858879270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A233271 (n + 1) + 1).toNat

end

end A216431.P371000988858879270

namespace A216431

/-- `A199969(A233271(n+1)+1)` -/
def P371000988858879270.Spec : Prop :=
  ∀ n, P371000988858879270.a n = A216431 n

end A216431

/-! ## A216431.P16767120805322019166

`∩[A057717(n), A233271(n)]`
-/

namespace A216431.P16767120805322019166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216431.P16767120805322019166

namespace A216431

/-- `∩[A057717(n), A233271(n)]` -/
def P16767120805322019166.Spec : Prop :=
  ∀ n, (P16767120805322019166.a n : ℤ) = A216431 n

end A216431

/-! ## A216431.P894587861010935643

`A233271(n)+A080791(2*A233271(n))`
-/

namespace A216431.P894587861010935643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 n + A080791 (2 * A233271 n).toNat

end

end A216431.P894587861010935643

namespace A216431

/-- `A233271(n)+A080791(2*A233271(n))` -/
def P894587861010935643.Spec : Prop :=
  ∀ n, P894587861010935643.a n = A216431 n

end A216431

/-! ## A216431.P8273927311163743320

`A233271(n+1)-A213719(2*n+1)*A213719(2*n)`
-/

namespace A216431.P8273927311163743320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (n + 1) - A213719 (2 * n + 1) * A213719 (2 * n)

end

end A216431.P8273927311163743320

namespace A216431

/-- `A233271(n+1)-A213719(2*n+1)*A213719(2*n)` -/
def P8273927311163743320.Spec : Prop :=
  ∀ n, P8273927311163743320.a n = A216431 n

end A216431

/-!
# A216432: Semiprimes that are sums of squares of two consecutive primes.

The programs for A216432, there is no canonical definition to state claims against.
-/

/-! ## A216432.P11222798160982604031

`2*A093343(n+1)`
-/

namespace A216432.P11222798160982604031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093343 (n + 1)

end

end A216432.P11222798160982604031

/-! ## A216432.P9528233483025076392

`lcm(2, A093343(A000027(n+1)))`
-/

namespace A216432.P9528233483025076392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A093343 (A000027 (n + 1)).toNat)

end

end A216432.P9528233483025076392

/-! ## A216432.P4437437561944578771

`A093343(A000027(n+1))+A093343(n+1)`
-/

namespace A216432.P4437437561944578771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093343 (A000027 (n + 1)).toNat + A093343 (n + 1)

end

end A216432.P4437437561944578771

/-! ## A216432.P242430545564647598

`A093343(n+1)+or(A047999(n+1), A093343(n+1))`
-/

namespace A216432.P242430545564647598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093343 (n + 1) + Int.lor (A047999 (n + 1)) (A093343 (n + 1))

end

end A216432.P242430545564647598

/-! ## A216432.P11064741134689252953

`lcm(A000002(A013948(n+1)), A093343(n+1))`
-/

namespace A216432.P11064741134689252953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000002 (A013948 (n + 1)).toNat) (A093343 (n + 1))

end

end A216432.P11064741134689252953

/-! ## A216432.P2446287368824134614

`A069484(A240749(n+1))`
-/

namespace A216432.P2446287368824134614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (A240749 (n + 1)).toNat

end

end A216432.P2446287368824134614

/-! ## A216432.P11175576904624786482

`A048851(A240749(n+1)+1)`
-/

namespace A216432.P11175576904624786482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (A240749 (n + 1) + 1).toNat

end

end A216432.P11175576904624786482

/-! ## A216432.P4468728652438246814

`A001248(A240749(n+1)+1)+A001248(A240749(n+1))`
-/

namespace A216432.P4468728652438246814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A240749 (n + 1) + 1).toNat + A001248 (A240749 (n + 1)).toNat

end

end A216432.P4468728652438246814

/-!
# A216433: Numbers k such that the k-th Lucas number can be written in the form a^2 + 7*b^2.

The programs for A216433, there is no canonical definition to state claims against.
-/

/-! ## A216433.P1241338851012438402

`lt[A185329(n), A334996(A244268(n+1))]`
-/

namespace A216433.P1241338851012438402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334996 (A244268 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216433.P1241338851012438402

/-!
# A216434: G.f. satisfies: A(x) = (1 + x*(2-x)*A(x)) * (1 + x^2*A(x)).

The programs for A216434, there is no canonical definition to state claims against.
-/

/-! ## A216434.P11445701802374100970

`A000720(floor(ratio[A367902(n)]))`
-/

namespace A216434.P11445701802374100970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A216434.P11445701802374100970

/-! ## A216434.P17652864310784704959

`A000720(ceil(ratio[A367902(n)]))`
-/

namespace A216434.P17652864310784704959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A216434.P17652864310784704959

/-! ## A216434.P9703429865616545950

`A000720(round(ratio[A367902(n)]))`
-/

namespace A216434.P9703429865616545950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A216434.P9703429865616545950

/-! ## A216434.P15982583841959181978

`A248559(A138573(n)+round(sqrt(n²+1)))`
-/

namespace A216434.P15982583841959181978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (A138573 n + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A216434.P15982583841959181978

/-!
# A216435: Number of Dyck n-paths with equally spaced returns.

The programs for A216435, there is no canonical definition to state claims against.
-/

/-! ## A216435.P1077218463844236778

`A342516(A070559(n))`
-/

namespace A216435.P1077218463844236778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (A070559 n).toNat

end

end A216435.P1077218463844236778

/-! ## A216435.P15954889447143724194

`A284837(A210345(n+1))`
-/

namespace A216435.P15954889447143724194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (A210345 (n + 1)).toNat

end

end A216435.P15954889447143724194

/-! ## A216435.P11148759416263863483

`A342516(A320788(n+3))`
-/

namespace A216435.P11148759416263863483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342516 (A320788 (n + 3)).toNat

end

end A216435.P11148759416263863483

/-! ## A216435.P5012410612537322052

`A001462(A053496(n)+2)-1`
-/

namespace A216435.P5012410612537322052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A053496 n + 2).toNat - 1

end

end A216435.P5012410612537322052

/-!
# A216436: For g=A201557(n), define a(n) as the prime p|g such that G(g/p) is maximum, where G(k) = sigma(k)/(k*log(log(k))).

The programs for A216436, there is no canonical definition to state claims against.
-/

/-! ## A216436.P3571433734304713958

`2*∑{d}[∑[(n-1)*a(n-1)], and(1, #)]+15` with `a(0)=1, a(1)=3`
-/

namespace A216436.P3571433734304713958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  ((n : ℤ) - 1) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d) + 15

end

end A216436.P3571433734304713958

/-! ## A216436.P6340025109801283296

`or(17, A071364(A002533(n)))`
-/

namespace A216436.P6340025109801283296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 17 (A071364 (A002533 n).toNat)

end

end A216436.P6340025109801283296

/-! ## A216436.P259785662758108156

`∑[A033735(A123611(n))]+15`
-/

namespace A216436.P259785662758108156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033735 (A123611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 15

end

end A216436.P259785662758108156

/-! ## A216436.P3766033353707434050

`A001227(A087005(3*n+5))+15`
-/

namespace A216436.P3766033353707434050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A087005 (3 * n + 5)).toNat + 15

end

end A216436.P3766033353707434050

/-!
# A216437: Primes which do not divide any Repunit R(10^n) = (10^(10^n)-1)/9.

The programs for A216437, there is no canonical definition to state claims against.
-/

/-! ## A216437.P8150156700315903777

`A000040(A077168(∑[A328483(n)]))`
-/

namespace A216437.P8150156700315903777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A077168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A216437.P8150156700315903777

/-! ## A216437.P7567524918026271669

`∩[A042987(n+1), A308078(n+1)]`
-/

namespace A216437.P7567524918026271669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216437.P7567524918026271669

/-! ## A216437.P5661361689773705462

`∩[A089189(n+1), A308078(n+1)]`
-/

namespace A216437.P5661361689773705462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216437.P5661361689773705462

/-! ## A216437.P3511146747150267261

`∩[A007459(n+1), A308078(n+1)]`
-/

namespace A216437.P3511146747150267261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216437.P3511146747150267261

/-! ## A216437.P2064642320545514967

`record[A051698(A352486(n+1)-A352514(n))]`
-/

namespace A216437.P2064642320545514967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A352486 (n + 1) - A352514 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216437.P2064642320545514967

/-!
# A216438: Odd composite numbers which do not divide any tribonacci number.

The programs for A216438, there is no canonical definition to state claims against.
-/

/-! ## A216438.P8754259297401531288

`filter[A215782(n+1), A005171(#)]`
-/

namespace A216438.P8754259297401531288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A216438.P8754259297401531288

/-! ## A216438.P10012272004954211925

`filter[A215782(n+1), A066247(#)]`
-/

namespace A216438.P10012272004954211925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A216438.P10012272004954211925

/-! ## A216438.P1460577825338874441

`filter[A215782(n+1), A202238(#)]`
-/

namespace A216438.P1460577825338874441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A216438.P1460577825338874441

/-! ## A216438.P15414502145946140114

`filter[A215782(n+1), A292438(#)]`
-/

namespace A216438.P15414502145946140114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A216438.P15414502145946140114

/-! ## A216438.P2216147450239099844

`filter[A215782(n+1), A323162(#)]`
-/

namespace A216438.P2216147450239099844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A216438.P2216147450239099844

/-! ## A216438.P13653487131305352812

`∩[A014076(n+1), A215782(n+1)]`
-/

namespace A216438.P13653487131305352812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P13653487131305352812

/-! ## A216438.P8227741560979937818

`∩[A039769(n+1), A215782(n+1)]`
-/

namespace A216438.P8227741560979937818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P8227741560979937818

/-! ## A216438.P5361855350154089940

`∩[A071904(n+1), A215782(n+1)]`
-/

namespace A216438.P5361855350154089940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P5361855350154089940

/-! ## A216438.P14493938566917564477

`∩[A078505(n+1), A215782(n+1)]`
-/

namespace A216438.P14493938566917564477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P14493938566917564477

/-! ## A216438.P4910964370506633212

`∩[A215782(n+1), A226025(n+1)]`
-/

namespace A216438.P4910964370506633212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P4910964370506633212

/-! ## A216438.P16878899382278719694

`∩[A215782(n+1), A270574(n+1)]`
-/

namespace A216438.P16878899382278719694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P16878899382278719694

/-! ## A216438.P9031029095914911613

`∩[A058957(n+1), A215782(n+1)]`
-/

namespace A216438.P9031029095914911613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P9031029095914911613

/-! ## A216438.P12932278303475034921

`∩[A079364(n+1), A215782(n+1)]`
-/

namespace A216438.P12932278303475034921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P12932278303475034921

/-! ## A216438.P6119777432100330303

`∩[A215782(n+1), A333312(n+1)]`
-/

namespace A216438.P6119777432100330303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P6119777432100330303

/-! ## A216438.P15294071225649326140

`∩[A215782(n+1), A363863(n+1)]`
-/

namespace A216438.P15294071225649326140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P15294071225649326140

/-! ## A216438.P7963290625308257269

`∩[A171845(n+1), A215782(n+1)]`
-/

namespace A216438.P7963290625308257269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216438.P7963290625308257269

/-!
# A216440: a(n) = smallest m such that 2n-1 | 2^m+1, or 0 if no such m exists.

The programs for A216440, there is no canonical definition to state claims against.
-/

/-! ## A216440.P4439769924785698290

`and(A051732(n+1), A332433(n))`
-/

namespace A216440.P4439769924785698290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051732 (n + 1)) (A332433 n)

end

end A216440.P4439769924785698290

/-! ## A216440.P5011702537264566615

`floor(A003558(n)^-A332433(n))`
-/

namespace A216440.P5011702537264566615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003558 n : ℚ) ^ (-A332433 n : ℤ)⌋

end

end A216440.P5011702537264566615

/-! ## A216440.P15375400754065766206

`C(A179382(n+1), A137605(n+1))`
-/

namespace A216440.P15375400754065766206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A179382 (n + 1)).toNat (A137605 (n + 1)).toNat

end

end A216440.P15375400754065766206

/-! ## A216440.P8810357658591960955

`C(A179382(n+1), A003558(n)-1)`
-/

namespace A216440.P8810357658591960955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A179382 (n + 1)).toNat (A003558 n - 1).toNat

end

end A216440.P8810357658591960955

/-! ## A216440.P2220988542679626942

`A002326(n)-A003558(n)%(n+1)`
-/

namespace A216440.P2220988542679626942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n - Int.tmod (A003558 n) (n + 1 : ℤ)

end

end A216440.P2220988542679626942

/-! ## A216440.P9043712394910822484

`A002326(round(sqrt(n²+1)))-A003558(n)`
-/

namespace A216440.P9043712394910822484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A003558 n

end

end A216440.P9043712394910822484

/-! ## A216440.P16025013510045234298

`A254667(A002326(n))-A003558(n)`
-/

namespace A216440.P16025013510045234298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A002326 n).toNat - A003558 n

end

end A216440.P16025013510045234298

/-! ## A216440.P14785599448511633587

`A003558(n)%A007733(Δ[A005899(n)])`
-/

namespace A216440.P14785599448511633587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003558 n) (A007733 (f1 (n + 1) - f1 n).toNat)

end

end A216440.P14785599448511633587

/-! ## A216440.P3092742664131132561

`A000007(n)+A002326(n)-A003558(n)`
-/

namespace A216440.P3092742664131132561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A002326 n - A003558 n)

end

end A216440.P3092742664131132561

/-! ## A216440.P6612510907636758667

`A002326(n)-and(A000225(n), A003558(n))`
-/

namespace A216440.P6612510907636758667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n - Int.land (A000225 n) (A003558 n)

end

end A216440.P6612510907636758667

/-! ## A216440.P13810789318465445563

`A008683((n+1)²)-(A003558(n)-A002326(n))`
-/

namespace A216440.P13810789318465445563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) - (A003558 n - A002326 n)

end

end A216440.P13810789318465445563

/-! ## A216440.P426442209589200587

`A008683(record[(1-n)²])²-(A003558(n)-A002326(n))`
-/

namespace A216440.P426442209589200587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2 - (A003558 n - A002326 n)

end

end A216440.P426442209589200587

/-!
# A216441: a(n) = n! mod !n.

The programs for A216441, there is no canonical definition to state claims against.
-/

/-! ## A216441.P14961701716295903496

`A055596(n+2)*A157928(n)`
-/

namespace A216441.P14961701716295903496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055596 (n + 2) * A157928 n

end

end A216441.P14961701716295903496

/-! ## A216441.P4922652547500642959

`record[A055596(n+1)]%A096654(n)`
-/

namespace A216441.P4922652547500642959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A096654 n)

end

end A216441.P4922652547500642959

/-! ## A216441.P18170612699321528596

`A002467(n+2)%record[A000166(n)]`
-/

namespace A216441.P18170612699321528596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002467 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A216441.P18170612699321528596

/-! ## A216441.P1741275677106970118

`A055596(n+2)*A057427(A083920(n))`
-/

namespace A216441.P1741275677106970118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055596 (n + 2) * A057427 (A083920 n).toNat

end

end A216441.P1741275677106970118

/-! ## A216441.P14436810370928449211

`∏[n+2]%A182386(n+2)`
-/

namespace A216441.P14436810370928449211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A182386 (n + 2))

end

end A216441.P14436810370928449211

/-! ## A216441.P5597118964463906924

`Δ[A096654(n)]%A096654(n)`
-/

namespace A216441.P5597118964463906924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A096654 n)

end

end A216441.P5597118964463906924

/-! ## A216441.P2359540639406816774

`A096654(n+1)%A096654(n)`
-/

namespace A216441.P2359540639406816774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096654 (n + 1)) (A096654 n)

end

end A216441.P2359540639406816774

/-! ## A216441.P5427729312625476264

`A000142(n+2)%record[A000166(n)]`
-/

namespace A216441.P5427729312625476264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A216441.P5427729312625476264

/-! ## A216441.P3545147149248159411

`record[A047920(n+3)]%A000166(n+2)`
-/

namespace A216441.P3545147149248159411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000166 (n + 2))

end

end A216441.P3545147149248159411

/-! ## A216441.P10148417342841081107

`A068106(A000096(n+2))%A000166(n+2)`
-/

namespace A216441.P10148417342841081107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068106 (A000096 (n + 2)).toNat) (A000166 (n + 2))

end

end A216441.P10148417342841081107

/-!
# A216443: a(n) = n!! mod !n.

The programs for A216443, the canonical program `A216443.P3025474630098673305` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216443 has offset 2).

The definition of A216443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216443.P3025474630098673305

`(n+2)*a(n-2)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=15`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216443

/-- `(n+2)*a(n-2)` -/
def P3025474630098673305.Spec : Prop :=
  ∀ n, (P3025474630098673305.a n : ℤ) = A216443 (n + 2)

theorem P3025474630098673305.correct : P3025474630098673305.Spec := by
  intro n
  simp only [A216443, Nat.add_sub_cancel]

end A216443

/-! ## A216443.P583671158636325374

`record[A006882(n)-and(n+1, A011782(n))]`
-/

namespace A216443.P583671158636325374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n - Int.land (n + 1 : ℤ) (A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216443.P583671158636325374

namespace A216443

/-- `record[A006882(n)-and(n+1, A011782(n))]` -/
def P583671158636325374.Spec : Prop :=
  ∀ n, P583671158636325374.a n = A216443 (n + 2)

end A216443

/-! ## A216443.P16932861514537769147

`A006882(n+2)-2*A016116(n)%2`
-/

namespace A216443.P16932861514537769147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 2) - 2 * Int.tmod (A016116 n) 2

end

end A216443.P16932861514537769147

namespace A216443

/-- `A006882(n+2)-2*A016116(n)%2` -/
def P16932861514537769147.Spec : Prop :=
  ∀ n, P16932861514537769147.a n = A216443 (n + 2)

end A216443

/-! ## A216443.P14276787815304350951

`A006882(n+2)-A016116(n+2)%4`
-/

namespace A216443.P14276787815304350951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 2) - Int.tmod (A016116 (n + 2)) 4

end

end A216443.P14276787815304350951

namespace A216443

/-- `A006882(n+2)-A016116(n+2)%4` -/
def P14276787815304350951.Spec : Prop :=
  ∀ n, P14276787815304350951.a n = A216443 (n + 2)

end A216443

/-! ## A216443.P1904086675035707861

`A006882(n+2)-A000038(A161680(n))`
-/

namespace A216443.P1904086675035707861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 2) - A000038 (A161680 n).toNat

end

end A216443.P1904086675035707861

namespace A216443

/-- `A006882(n+2)-A000038(A161680(n))` -/
def P1904086675035707861.Spec : Prop :=
  ∀ n, P1904086675035707861.a n = A216443 (n + 2)

end A216443

/-! ## A216443.P10136898667504486292

`A006882(n+2)-val(A135401(n+6), A135401(n+2))`
-/

namespace A216443.P10136898667504486292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 2) - (SequenceMachineLib.valuation (A135401 (n + 6)).toNat (A135401 (n + 2)).toNat : ℤ)

end

end A216443.P10136898667504486292

namespace A216443

/-- `A006882(n+2)-val(A135401(n+6), A135401(n+2))` -/
def P10136898667504486292.Spec : Prop :=
  ∀ n, P10136898667504486292.a n = A216443 (n + 2)

end A216443

/-! ## A216443.P7913369333732527350

`A006882(n+2)%A001075(A032766(n))`
-/

namespace A216443.P7913369333732527350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 (n + 2)) (A001075 (A032766 n).toNat)

end

end A216443.P7913369333732527350

namespace A216443

/-- `A006882(n+2)%A001075(A032766(n))` -/
def P7913369333732527350.Spec : Prop :=
  ∀ n, P7913369333732527350.a n = A216443 (n + 2)

end A216443

/-! ## A216443.P3838605321060294556

`record[A006882(A282738(n))%A045992(n)]`
-/

namespace A216443.P3838605321060294556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 (A282738 n).toNat) (A045992 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216443.P3838605321060294556

namespace A216443

/-- `record[A006882(A282738(n))%A045992(n)]` -/
def P3838605321060294556.Spec : Prop :=
  ∀ n, P3838605321060294556.a n = A216443 (n + 2)

end A216443

/-! ## A216443.P14311159144744844532

`(n+2)!/a(n-1)` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A216443.P14311159144744844532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  (Nat.factorial (n + 2) : ℚ) / a (n - 1)

end

end A216443.P14311159144744844532

namespace A216443

/-- `(n+2)!/a(n-1)` -/
def P14311159144744844532.Spec : Prop :=
  ∀ n, P14311159144744844532.a n = (A216443 (n + 2) : ℚ)

end A216443

/-! ## A216443.P9626721132373324827

`∏[n+2]/a(n-1)` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A216443.P9626721132373324827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A216443.P9626721132373324827

namespace A216443

/-- `∏[n+2]/a(n-1)` -/
def P9626721132373324827.Spec : Prop :=
  ∀ n, P9626721132373324827.a n = (A216443 (n + 2) : ℚ)

end A216443

/-!
# A216444: List of primes with property that if they have d digits, these digits are a permutation of {1..d}.

The programs for A216444, there is no canonical definition to state claims against.
-/

/-! ## A216444.P14602693634481716900

`∩[A177119(n+1), A225567(n+1)]`
-/

namespace A216444.P14602693634481716900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216444.P14602693634481716900

/-!
# A216445: a(n) = !n mod n!!.

The programs for A216445, there is no canonical definition to state claims against.
-/

/-! ## A216445.P13769277830319256054

`A000166(n)%A006882(n)`
-/

namespace A216445.P13769277830319256054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000166 n) (A006882 n)

end

end A216445.P13769277830319256054

/-! ## A216445.P17911457609321514730

`abs(A182386(n)%A006882(n))`
-/

namespace A216445.P17911457609321514730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A182386 n) (A006882 n)|

end

end A216445.P17911457609321514730

/-! ## A216445.P305815173130663177

`A008290(∑[n])%A006882(n)`
-/

namespace A216445.P305815173130663177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008290 (∑ j ∈ Finset.range (n + 1), f1 j)) (A006882 n)

end

end A216445.P305815173130663177

/-! ## A216445.P7744720734492354874

`A068106(∑[n])%A006882(n)`
-/

namespace A216445.P7744720734492354874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068106 (∑ j ∈ Finset.range (n + 1), f1 j)) (A006882 n)

end

end A216445.P7744720734492354874

/-! ## A216445.P1605959016659774132

`A060475(A000096(n))%A006882(n)`
-/

namespace A216445.P1605959016659774132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060475 (A000096 n).toNat) (A006882 n)

end

end A216445.P1605959016659774132

/-! ## A216445.P3149553558052909454

`abs(A182386(n))%A172089(A000124(n))`
-/

namespace A216445.P3149553558052909454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A182386 n| (A172089 (A000124 n).toNat)

end

end A216445.P3149553558052909454

/-!
# A216446: Palindromic numbers which can be written as the sum of two or more consecutive squares.

The programs for A216446, there is no canonical definition to state claims against.
-/

/-! ## A216446.P13992476182333078629

`∩[A180436(n+1), A212015(n+1)]`
-/

namespace A216446.P13992476182333078629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216446.P13992476182333078629

/-! ## A216446.P14745245469539718378

`filter[A180436(n+1), A049240(#)]`
-/

namespace A216446.P14745245469539718378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A216446.P14745245469539718378

/-! ## A216446.P18051965798624820355

`∩[A002113(n+1), A174069(n+1)]`
-/

namespace A216446.P18051965798624820355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216446.P18051965798624820355

/-! ## A216446.P9553146931119149844

`∩[A083158(n+1), A174069(n+1)]`
-/

namespace A216446.P9553146931119149844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216446.P9553146931119149844

/-! ## A216446.P10769740497780080054

`∩[A110751(n+1), A174069(n+1)]`
-/

namespace A216446.P10769740497780080054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216446.P10769740497780080054

/-!
# A216447: G.f. satisfies: A(x) = (1 + x*(1-x)*A(x)^2) * (1 + x^2*A(x)^2).

The programs for A216447, there is no canonical definition to state claims against.
-/

/-! ## A216447.P4942011848816052158

`A344420(A218263(n+3)+15)`
-/

namespace A216447.P4942011848816052158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A218263 (n + 3) + 15).toNat

end

end A216447.P4942011848816052158

/-! ## A216447.P6326403881558222524

`A181734(n)+A050924(A304976(n))`
-/

namespace A216447.P6326403881558222524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181734 n + A050924 (A304976 n).toNat

end

end A216447.P6326403881558222524

/-! ## A216447.P2147065510329374942

`A181734(n)+A060763(A379089(n))`
-/

namespace A216447.P2147065510329374942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181734 n + A060763 (A379089 n).toNat

end

end A216447.P2147065510329374942

/-! ## A216447.P18344439311086257343

`A307487(A032551(n+1))-A179006(n)`
-/

namespace A216447.P18344439311086257343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307487 (A032551 (n + 1)).toNat - A179006 n

end

end A216447.P18344439311086257343

/-!
# A216448: The Lambda word generated by log(3)/log(2).

The programs for A216448, there is no canonical definition to state claims against.
-/

/-! ## A216448.P16243725317192852032

`A216763(n)-A185284(A052083(n+1))`
-/

namespace A216448.P16243725317192852032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 n - A185284 (A052083 (n + 1)).toNat

end

end A216448.P16243725317192852032

/-! ## A216448.P4221889665753123811

`A216763(A175424(A175423(n))+n)`
-/

namespace A216448.P4221889665753123811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A175424 (A175423 n).toNat + (n : ℤ)).toNat

end

end A216448.P4221889665753123811

/-! ## A216448.P5051707594641977020

`A216763(n)-A185284(A332072(n+1))`
-/

namespace A216448.P5051707594641977020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 n - A185284 (A332072 (n + 1)).toNat

end

end A216448.P5051707594641977020

/-! ## A216448.P12739541159078096282

`and(A113860(n), A216763(n))`
-/

namespace A216448.P12739541159078096282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113860 n) (A216763 n)

end

end A216448.P12739541159078096282

/-! ## A216448.P4238950255307547218

`and(A168165(n+1), A216763(n))`
-/

namespace A216448.P4238950255307547218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168165 (n + 1)) (A216763 n)

end

end A216448.P4238950255307547218

/-!
# A216451: Numbers which are simultaneously of the form x^2+y^2, x^2+2y^2, x^2+3y^2, x^2+7y^2, all with x>0, y>0.

The programs for A216451, there is no canonical definition to state claims against.
-/

/-! ## A216451.P6123635965573095695

`filter[A216500(n+1), A049240(#)]`
-/

namespace A216451.P6123635965573095695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A216451.P6123635965573095695

/-! ## A216451.P12888458468483812487

`filter[A216500(n+1), A066829(#)]`
-/

namespace A216451.P12888458468483812487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A216451.P12888458468483812487

/-! ## A216451.P5990310656571783895

`filter[A216500(n+1), A267594(#)]`
-/

namespace A216451.P5990310656571783895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A216451.P5990310656571783895

/-! ## A216451.P10593032361149647598

`filter[A216500(n+1), A267612(#)]`
-/

namespace A216451.P10593032361149647598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A216451.P10593032361149647598

/-! ## A216451.P2185250119381372817

`filter[A216500(n+1), A267635(#)]`
-/

namespace A216451.P2185250119381372817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A216451.P2185250119381372817

/-!
# A216452: The fourth roots of the fourth powers arising in A078164.

The programs for A216452, there is no canonical definition to state claims against.
-/

/-! ## A216452.P10109825157848883479

`A014684(∑[A010052(A105658(n))])`
-/

namespace A216452.P10109825157848883479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A105658 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216452.P10109825157848883479

/-! ## A216452.P12502415300594761506

`A000010(∑[A000122(2*n)]%A218711(n+3))`
-/

namespace A216452.P12502415300594761506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A218711 (n + 3))).toNat

end

end A216452.P12502415300594761506

/-! ## A216452.P6301498550721756921

`A000010(A086520(2*(n+1))%A086474(n+1))`
-/

namespace A216452.P6301498550721756921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A086520 (2 * (n + 1))) (A086474 (n + 1))).toNat

end

end A216452.P6301498550721756921

/-! ## A216452.P12395553210711059907

`A056813(A079896(n+1))-A328855(A023503(n+2))`
-/

namespace A216452.P12395553210711059907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A079896 (n + 1)).toNat - A328855 (A023503 (n + 2)).toNat

end

end A216452.P12395553210711059907

/-! ## A216452.P7846933190847560230

`A340282(A178047(∑[gcd(8, (n+2)²)]-n))`
-/

namespace A216452.P7846933190847560230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340282 (A178047 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A216452.P7846933190847560230

/-!
# A216453: Number of points hidden from the central point by a closer point in a hexagonal orchard of order n.

The programs for A216453, the canonical program `A216453.P12765062278134612430` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216453 has offset 1).

The definition of A216453 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063985, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216453.P12765062278134612430

`6*A063985(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216453

/-- `6*A063985(n+1)` -/
def P12765062278134612430.Spec : Prop :=
  ∀ n, P12765062278134612430.a n = A216453 (n + 1)

theorem P12765062278134612430.correct : P12765062278134612430.Spec := by
  intro n
  simp only [A216453, Nat.add_sub_cancel]

end A216453

/-! ## A216453.P924398375919378652

`∑[6*(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)]`
-/

namespace A216453.P924398375919378652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216453.P924398375919378652

namespace A216453

/-- `∑[6*(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)]` -/
def P924398375919378652.Spec : Prop :=
  ∀ n, P924398375919378652.a n = (A216453 (n + 1) : ℚ)

end A216453

/-! ## A216453.P17557752251459434618

`∑[6*A051953(n+1)]`
-/

namespace A216453.P17557752251459434618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216453.P17557752251459434618

namespace A216453

/-- `∑[6*A051953(n+1)]` -/
def P17557752251459434618.Spec : Prop :=
  ∀ n, P17557752251459434618.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P2245679017891416186

`3*(A100613(n+1)+n)`
-/

namespace A216453.P2245679017891416186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A100613 (n + 1) + (n : ℤ))

end

end A216453.P2245679017891416186

namespace A216453

/-- `3*(A100613(n+1)+n)` -/
def P2245679017891416186.Spec : Prop :=
  ∀ n, P2245679017891416186.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P17201362294408091524

`∑[6*(n-A109606(n+1))]`
-/

namespace A216453.P17201362294408091524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℤ) - A109606 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216453.P17201362294408091524

namespace A216453

/-- `∑[6*(n-A109606(n+1))]` -/
def P17201362294408091524.Spec : Prop :=
  ∀ n, P17201362294408091524.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P9899701707865703530

`6*(∑[A016035(n+1)+1]-1)`
-/

namespace A216453.P9899701707865703530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A216453.P9899701707865703530

namespace A216453

/-- `6*(∑[A016035(n+1)+1]-1)` -/
def P9899701707865703530.Spec : Prop :=
  ∀ n, P9899701707865703530.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P9909273250918409676

`6*∑[1-A000010(n+1)+n]`
-/

namespace A216453.P9909273250918409676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216453.P9909273250918409676

namespace A216453

/-- `6*∑[1-A000010(n+1)+n]` -/
def P9909273250918409676.Spec : Prop :=
  ∀ n, P9909273250918409676.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P17360948128125206972

`∑[6*(2-A039649(n+1)+n)]`
-/

namespace A216453.P17360948128125206972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (2 - A039649 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216453.P17360948128125206972

namespace A216453

/-- `∑[6*(2-A039649(n+1)+n)]` -/
def P17360948128125206972.Spec : Prop :=
  ∀ n, P17360948128125206972.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P6758757588057041572

`6*(A000096(n)-A015614(n+1))`
-/

namespace A216453.P6758757588057041572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000096 n - A015614 (n + 1))

end

end A216453.P6758757588057041572

namespace A216453

/-- `6*(A000096(n)-A015614(n+1))` -/
def P6758757588057041572.Spec : Prop :=
  ∀ n, P6758757588057041572.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P15682990632111949285

`6*(A000217(n)-A015613(n+1))`
-/

namespace A216453.P15682990632111949285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000217 n - A015613 (n + 1))

end

end A216453.P15682990632111949285

namespace A216453

/-- `6*(A000217(n)-A015613(n+1))` -/
def P15682990632111949285.Spec : Prop :=
  ∀ n, P15682990632111949285.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P13106466256606920502

`6*A034856(n+1)%A187263(n+1)`
-/

namespace A216453.P13106466256606920502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (A034856 (n + 1)) (A187263 (n + 1))

end

end A216453.P13106466256606920502

namespace A216453

/-- `6*A034856(n+1)%A187263(n+1)` -/
def P13106466256606920502.Spec : Prop :=
  ∀ n, P13106466256606920502.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P2109681953809886695

`∑[6*(n+1-A353749(n+1)/A064989(n+1))]`
-/

namespace A216453.P2109681953809886695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n + 1 : ℚ) - (A353749 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216453.P2109681953809886695

namespace A216453

/-- `∑[6*(n+1-A353749(n+1)/A064989(n+1))]` -/
def P2109681953809886695.Spec : Prop :=
  ∀ n, P2109681953809886695.a n = (A216453 (n + 1) : ℚ)

end A216453

/-! ## A216453.P13258516935966111588

`∑[6*(n+1-Δ[A049632(n)-A049643(n)])]`
-/

namespace A216453.P13258516935966111588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n + 1 : ℤ) - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216453.P13258516935966111588

namespace A216453

/-- `∑[6*(n+1-Δ[A049632(n)-A049643(n)])]` -/
def P13258516935966111588.Spec : Prop :=
  ∀ n, P13258516935966111588.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P17775588986262417375

`3*(A049620(n+1)-n)`
-/

namespace A216453.P17775588986262417375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A049620 (n + 1) - (n : ℤ))

end

end A216453.P17775588986262417375

namespace A216453

/-- `3*(A049620(n+1)-n)` -/
def P17775588986262417375.Spec : Prop :=
  ∀ n, P17775588986262417375.a n = A216453 (n + 1)

end A216453

/-! ## A216453.P4678555556757031740

`A008588(A063985(n+1))`
-/

namespace A216453.P4678555556757031740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A063985 (n + 1)).toNat

end

end A216453.P4678555556757031740

namespace A216453

/-- `A008588(A063985(n+1))` -/
def P4678555556757031740.Spec : Prop :=
  ∀ n, P4678555556757031740.a n = A216453 (n + 1)

end A216453

/-!
# A216454: G.f. satisfies: A(x) = (1 + x*(3-x)*A(x)) * (1 + x^2*A(x)).

The programs for A216454, there is no canonical definition to state claims against.
-/

/-! ## A216454.P17604559207185395949

`A103446(n)+A008620(A000302(n))`
-/

namespace A216454.P17604559207185395949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 n + A008620 (A000302 n).toNat

end

end A216454.P17604559207185395949

/-! ## A216454.P5914731769173194765

`A103446(n)+A008621(A080674(n))`
-/

namespace A216454.P5914731769173194765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 n + A008621 (A080674 n).toNat

end

end A216454.P5914731769173194765

/-! ## A216454.P2457291608316287038

`A103446(n)+A008620(A103454(n))`
-/

namespace A216454.P2457291608316287038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103446 n + A008620 (A103454 n).toNat

end

end A216454.P2457291608316287038

/-!
# A216455: If n is a perfect fourth power, then replace it with the fourth root of n.

The programs for A216455, there is no canonical definition to state claims against.
-/

/-! ## A216455.P18007998202910041451

`gcd(n+1, A028896(Δ[A255270(n)]))`
-/

namespace A216455.P18007998202910041451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A028896 (f1 (n + 1) - f1 n).toNat)

end

end A216455.P18007998202910041451

/-! ## A216455.P7231024481060030257

`(n+1)/A008834(A223490(n+1))`
-/

namespace A216455.P7231024481060030257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008834 (A223490 (n + 1)).toNat : ℚ)

end

end A216455.P7231024481060030257

/-! ## A216455.P5725122146116199442

`(n+1)%A027444(A053166(n+1))`
-/

namespace A216455.P5725122146116199442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A027444 (A053166 (n + 1)).toNat)

end

end A216455.P5725122146116199442

/-! ## A216455.P14701649083027949379

`lcm(A052410(n+1), A383764(n+1))`
-/

namespace A216455.P14701649083027949379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052410 (n + 1)) (A383764 (n + 1))

end

end A216455.P14701649083027949379

/-! ## A216455.P14375126380002697108

`root(n+1, 4^Δ[A000196(A000196(n))])`
-/

namespace A216455.P14375126380002697108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 n).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / ((4 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) : ℝ))

end

end A216455.P14375126380002697108

/-! ## A216455.P3891929717304931582

`(n+1)/A056926(A056926(n+1)^3)`
-/

namespace A216455.P3891929717304931582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056926 (A056926 (n + 1) ^ 3).toNat : ℚ)

end

end A216455.P3891929717304931582

/-! ## A216455.P12008169850749654400

`gcd(A037213(A037213(n+1)), A131738(n))`
-/

namespace A216455.P12008169850749654400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037213 (A037213 (n + 1)).toNat) (A131738 n)

end

end A216455.P12008169850749654400

/-! ## A216455.P5013237287659498237

`gcd(n, A001222(A049456(A316782(n+1))²))+1`
-/

namespace A216455.P5013237287659498237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A001222 (A049456 (A316782 (n + 1)).toNat ^ 2).toNat) + 1

end

end A216455.P5013237287659498237

/-! ## A216455.P9570719873293691428

`(n+1)/A326037(A126796(A316789(n+1)))`
-/

namespace A216455.P9570719873293691428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A326037 (A126796 (A316789 (n + 1)).toNat).toNat : ℚ)

end

end A216455.P9570719873293691428

/-!
# A216456: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of an n X n array with new integer colors introduced in row major order.

The programs for A216456, there is no canonical definition to state claims against.
-/

/-! ## A216456.P7541216314316570168

`A216460(∑[4*n]+1)`
-/

namespace A216456.P7541216314316570168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216456.P7541216314316570168

/-!
# A216457: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of an nX3 array with new integer colors introduced in row major order.

The programs for A216457, there is no canonical definition to state claims against.
-/

/-! ## A216457.P5429946597285093088

`A011971(A210981(n))`
-/

namespace A216457.P5429946597285093088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A210981 n).toNat

end

end A216457.P5429946597285093088

/-! ## A216457.P3759757292170792700

`A106436(A117748(n+2)-(n+1))`
-/

namespace A216457.P3759757292170792700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A117748 (n + 2) - (n + 1 : ℤ)).toNat

end

end A216457.P3759757292170792700

/-! ## A216457.P1175564365064925206

`A011971(A245300(record[A151890(n)]))`
-/

namespace A216457.P1175564365064925206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A245300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A216457.P1175564365064925206

/-! ## A216457.P908935192973990159

`A011971(A245300(record[A245300(n)]))`
-/

namespace A216457.P908935192973990159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A245300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A216457.P908935192973990159

/-! ## A216457.P5383933575015613799

`A123346(A210981(n)+A110654(n))`
-/

namespace A216457.P5383933575015613799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (A210981 n + A110654 n).toNat

end

end A216457.P5383933575015613799

/-! ## A216457.P13744335554375421993

`A011971(A000096(A032766(n))-n)`
-/

namespace A216457.P13744335554375421993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000096 (A032766 n).toNat - (n : ℤ)).toNat

end

end A216457.P13744335554375421993

/-! ## A216457.P10995549413149533613

`A123346(∑[A057353(A178414(n+1))])`
-/

namespace A216457.P10995549413149533613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A178414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216457.P10995549413149533613

/-!
# A216458: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of an nX5 array with new integer colors introduced in row major order.

The programs for A216458, there is no canonical definition to state claims against.
-/

/-! ## A216458.P6457169379088883629

`A216460(Δ[A264443(n)])`
-/

namespace A216458.P6457169379088883629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (f1 (n + 1) - f1 n).toNat

end

end A216458.P6457169379088883629

/-! ## A216458.P281881153908355361

`A216460(eq[4, A193592(n)])`
-/

namespace A216458.P281881153908355361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216458.P281881153908355361

/-! ## A216458.P7066821317792155009

`A216460(Δ[A023545(n+1)])`
-/

namespace A216458.P7066821317792155009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (f1 (n + 1) - f1 n).toNat

end

end A216458.P7066821317792155009

/-! ## A216458.P9178453959488421657

`A216460(A055998(n+3)-1)`
-/

namespace A216458.P9178453959488421657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A055998 (n + 3) - 1).toNat

end

end A216458.P9178453959488421657

/-! ## A216458.P18128955277782446696

`A216460(A000096(n+4)-3)`
-/

namespace A216458.P18128955277782446696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A000096 (n + 4) - 3).toNat

end

end A216458.P18128955277782446696

/-!
# A216459: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of an nX7 array with new integer colors introduced in row major order.

The programs for A216459, there is no canonical definition to state claims against.
-/

/-! ## A216459.P13336304591718769705

`A216460(eq[4, A219347(n)])`
-/

namespace A216459.P13336304591718769705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216459.P13336304591718769705

/-!
# A216461: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of a 3Xn array with new integer colors introduced in row major order.

The programs for A216461, there is no canonical definition to state claims against.
-/

/-! ## A216461.P5319649147520032077

`A216460(∑[n+2]+4)`
-/

namespace A216461.P5319649147520032077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216461.P5319649147520032077

/-! ## A216461.P5653397410128028338

`A216460(A167614(n+1))+A025439(n)`
-/

namespace A216461.P5653397410128028338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A167614 (n + 1)).toNat + A025439 n

end

end A216461.P5653397410128028338

/-! ## A216461.P1367437307034542105

`A216460(A167614(n+1))+A025469(n)`
-/

namespace A216461.P1367437307034542105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A167614 (n + 1)).toNat + A025469 n

end

end A216461.P1367437307034542105

/-! ## A216461.P16215228564309388886

`A067059(n)*A216460(A167614(n+1))`
-/

namespace A216461.P16215228564309388886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A216460 (A167614 (n + 1)).toNat

end

end A216461.P16215228564309388886

/-! ## A216461.P2835219397110492369

`A216460(A167614(n+1))+A101638(n+1)`
-/

namespace A216461.P2835219397110492369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A167614 (n + 1)).toNat + A101638 (n + 1)

end

end A216461.P2835219397110492369

/-!
# A216462: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of a 4Xn array with new integer colors introduced in row major order.

The programs for A216462, there is no canonical definition to state claims against.
-/

/-! ## A216462.P5265035988649161978

`A216612(A141214(n)+7)`
-/

namespace A216462.P5265035988649161978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A141214 n + 7).toNat

end

end A216462.P5265035988649161978

/-! ## A216462.P13541692501227322791

`A216460(A052905(n)+9)`
-/

namespace A216462.P13541692501227322791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A052905 n + 9).toNat

end

end A216462.P13541692501227322791

/-! ## A216462.P6105326537235569778

`A216612(A052905(n)+9)`
-/

namespace A216462.P6105326537235569778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A052905 n + 9).toNat

end

end A216462.P6105326537235569778

/-! ## A216462.P4799376681700454018

`A216460(A055999(n)+10)`
-/

namespace A216462.P4799376681700454018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A055999 n + 10).toNat

end

end A216462.P4799376681700454018

/-! ## A216462.P4552359006617141000

`A216612(A055999(n)+10)`
-/

namespace A216462.P4552359006617141000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A055999 n + 10).toNat

end

end A216462.P4552359006617141000

/-!
# A216463: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of a 5Xn array with new integer colors introduced in row major order.

The programs for A216463, there is no canonical definition to state claims against.
-/

/-! ## A216463.P12702117279827873624

`A216460(A155212(n)+13)`
-/

namespace A216463.P12702117279827873624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A155212 n + 13).toNat

end

end A216463.P12702117279827873624

/-! ## A216463.P13881930062959667954

`A216460(A056000(n)+15)`
-/

namespace A216463.P13881930062959667954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A056000 n + 15).toNat

end

end A216463.P13881930062959667954

/-! ## A216463.P7003588461916862694

`A216460(eq[7, A066657(n)])`
-/

namespace A216463.P7003588461916862694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216463.P7003588461916862694

/-! ## A216463.P17056816738492939300

`A216460(eq[6, A131818(n+1)])`
-/

namespace A216463.P17056816738492939300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216463.P17056816738492939300

/-! ## A216463.P1909502589381378474

`A216460(eq[6, A200370(n+1)]-(2*n+1))`
-/

namespace A216463.P1909502589381378474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A216463.P1909502589381378474

/-!
# A216464: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of a 6Xn array with new integer colors introduced in row major order.

The programs for A216464, there is no canonical definition to state claims against.
-/

/-! ## A216464.P14213500438714364476

`A216460(C(n+7, 2)-n)`
-/

namespace A216464.P14213500438714364476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (Nat.choose (n + 7) 2 - n)

end

end A216464.P14213500438714364476

/-! ## A216464.P6315187977938783553

`A216460(A166136(n+4))`
-/

namespace A216464.P6315187977938783553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A166136 (n + 4)).toNat

end

end A216464.P6315187977938783553

/-! ## A216464.P15896941844166887448

`A216460(A056115(n)+21)`
-/

namespace A216464.P15896941844166887448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A056115 n + 21).toNat

end

end A216464.P15896941844166887448

/-! ## A216464.P13138719770963169068

`A216612(A056115(n)+21)`
-/

namespace A216464.P13138719770963169068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A056115 n + 21).toNat

end

end A216464.P13138719770963169068

/-!
# A216465: Number of horizontal, diagonal and antidiagonal neighbor colorings of the even squares of a 7Xn array with new integer colors introduced in row major order.

The programs for A216465, there is no canonical definition to state claims against.
-/

/-! ## A216465.P15811697386730995141

`A216460(eq[8, A131818(n+1)])`
-/

namespace A216465.P15811697386730995141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216465.P15811697386730995141

/-!
# A216466: a(n) = n!! mod n!

The programs for A216466, the canonical program `A216466.P3373873399537309570` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216466 has offset 0).

The definition of A216466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216466.P3373873399537309570

`n*a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216466

/-- `n*a(n-2)` -/
def P3373873399537309570.Spec : Prop :=
  ∀ n, (P3373873399537309570.a n : ℤ) = A216466 n

theorem P3373873399537309570.correct : P3373873399537309570.Spec := by
  intro n
  simp only [A216466]

end A216466

/-! ## A216466.P1159790116971015340

`A006882(n)-A130779(n)`
-/

namespace A216466.P1159790116971015340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n - A130779 n

end

end A216466.P1159790116971015340

namespace A216466

/-- `A006882(n)-A130779(n)` -/
def P1159790116971015340.Spec : Prop :=
  ∀ n, P1159790116971015340.a n = A216466 n

end A216466

/-! ## A216466.P13419300645630275825

`lcm(A006882(n), A080585(n))`
-/

namespace A216466.P13419300645630275825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006882 n) (A080585 n)

end

end A216466.P13419300645630275825

namespace A216466

/-- `lcm(A006882(n), A080585(n))` -/
def P13419300645630275825.Spec : Prop :=
  ∀ n, (P13419300645630275825.a n : ℤ) = A216466 n

end A216466

/-! ## A216466.P13236784778814280656

`A006882(n)%A000085(n)`
-/

namespace A216466.P13236784778814280656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 n) (A000085 n)

end

end A216466.P13236784778814280656

namespace A216466

/-- `A006882(n)%A000085(n)` -/
def P13236784778814280656.Spec : Prop :=
  ∀ n, P13236784778814280656.a n = A216466 n

end A216466

/-! ## A216466.P2251347676455338455

`n!/a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A216466.P2251347676455338455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 3] fun n a =>
  (Nat.factorial n : ℚ) / a (n - 1)

end

end A216466.P2251347676455338455

namespace A216466

/-- `n!/a(n-1)` -/
def P2251347676455338455.Spec : Prop :=
  ∀ n, P2251347676455338455.a n = (A216466 n : ℚ)

end A216466

/-! ## A216466.P6970547818231850240

`∏[n/a(n-1)]%-∏[n-C(2, n+2)]` with `a(0)=1, a(1)=1`
-/

namespace A216466.P6970547818231850240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (-(∏ j ∈ Finset.range (n + 1), f2 j))

end

end A216466.P6970547818231850240

namespace A216466

/-- `∏[n/a(n-1)]%-∏[n-C(2, n+2)]` -/
def P6970547818231850240.Spec : Prop :=
  ∀ n, P6970547818231850240.a n = A216466 n

end A216466

/-! ## A216466.P4037707485718070498

`A230698(∑[n])%n!`
-/

namespace A216466.P4037707485718070498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)) (Nat.factorial n : ℤ)

end

end A216466.P4037707485718070498

namespace A216466

/-- `A230698(∑[n])%n!` -/
def P4037707485718070498.Spec : Prop :=
  ∀ n, P4037707485718070498.a n = A216466 n

end A216466

/-!
# A216467: Smallest numbers in the coordinates of the isolated visible lattice points in the infinite square grid.

The programs for A216467, there is no canonical definition to state claims against.
-/

/-! ## A216467.P16987674932511306058

`lt[A092543(A052905(n)+3), A276781(n+1)]`
-/

namespace A216467.P16987674932511306058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A052905 n + 3).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216467.P16987674932511306058

/-! ## A216467.P5837453066351672756

`lt[A090288(A035457(n))+1, A276781(n+1)]`
-/

namespace A216467.P5837453066351672756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 (A035457 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216467.P5837453066351672756

/-! ## A216467.P6665070501723249100

`filter[A389735(n+1), A353675(#)]`
-/

namespace A216467.P6665070501723249100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A216467.P6665070501723249100

/-! ## A216467.P7011011782936455420

`filter[A389735(n+1), A353676(#)]`
-/

namespace A216467.P7011011782936455420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A216467.P7011011782936455420

/-! ## A216467.P1483820198143541437

`∩[A096603(n+1), A246048(n+1)]`
-/

namespace A216467.P1483820198143541437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216467.P1483820198143541437

/-!
# A216469: a(n) = smallest m such that 2n-1 | (2^m+1)/3, or 0 if no such m exists.

The programs for A216469, there is no canonical definition to state claims against.
-/

/-! ## A216469.P12441627828121746115

`A193356(A323712(2*n+1))`
-/

namespace A216469.P12441627828121746115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A323712 (2 * n + 1)).toNat

end

end A216469.P12441627828121746115

/-! ## A216469.P11403805182173346482

`A193356(A003558(3*n+1))`
-/

namespace A216469.P11403805182173346482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A003558 (3 * n + 1)).toNat

end

end A216469.P11403805182173346482

/-! ## A216469.P11015857378437844586

`A216833(n+1)-A003558(3*n+1)`
-/

namespace A216469.P11015857378437844586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216833 (n + 1) - A003558 (3 * n + 1)

end

end A216469.P11015857378437844586

/-! ## A216469.P15829884843875005423

`A054703(6*n+3)-A323712(Δ[n²])`
-/

namespace A216469.P15829884843875005423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (6 * n + 3) - A323712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216469.P15829884843875005423

/-! ## A216469.P3297682601144696495

`A002326(3*n+1)-A003558(3*n+1)`
-/

namespace A216469.P3297682601144696495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (3 * n + 1) - A003558 (3 * n + 1)

end

end A216469.P3297682601144696495

/-! ## A216469.P15969660075467296152

`A024222(6*n+3)-A323712(2*n+1)`
-/

namespace A216469.P15969660075467296152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (6 * n + 3) - A323712 (2 * n + 1)

end

end A216469.P15969660075467296152

/-! ## A216469.P7597465037461801518

`A216833(n+1)-A323712(A005408(n))`
-/

namespace A216469.P7597465037461801518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216833 (n + 1) - A323712 (A005408 n).toNat

end

end A216469.P7597465037461801518

/-! ## A216469.P2884638018036097966

`A002326(A016777(n))-A323712(2*n+1)`
-/

namespace A216469.P2884638018036097966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A016777 n).toNat - A323712 (2 * n + 1)

end

end A216469.P2884638018036097966

/-!
# A216470: a(n) = smallest m such that 2n-1 | (10^m+1)/11, or 0 if no such m exists.

The programs for A216470, there is no canonical definition to state claims against.
-/

/-! ## A216470.P5837072834183189992

`A069531(Δ[11*n²])`
-/

namespace A216470.P5837072834183189992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216470.P5837072834183189992

/-! ## A216470.P6232802347707738300

`A069531(A008593(Δ[n²]))%(n+2)²`
-/

namespace A216470.P6232802347707738300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069531 (A008593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat) ((n + 2) ^ 2 : ℤ)

end

end A216470.P6232802347707738300

/-! ## A216470.P3084825516649347075

`A069531(A008593(Δ[n²]))+A000007(n+1)`
-/

namespace A216470.P3084825516649347075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A008593 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat + A000007 (n + 1)

end

end A216470.P3084825516649347075

/-! ## A216470.P14863109046193447189

`A069531(A008593(2*n+1))+A069531(2*(n+1))`
-/

namespace A216470.P14863109046193447189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A008593 (2 * n + 1)).toNat + A069531 (2 * (n + 1))

end

end A216470.P14863109046193447189

/-!
# A216473: a(n) = smallest m such that 2n-1 | (10^m-1)/9, or 0 if no such m exists.

The programs for A216473, there is no canonical definition to state claims against.
-/

/-! ## A216473.P8723214329106336640

`A084681(Δ[n²])`
-/

namespace A216473.P8723214329106336640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216473.P8723214329106336640

/-! ## A216473.P9738338538096507436

`A070682(9*n+4)`
-/

namespace A216473.P9738338538096507436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 (9 * n + 4)

end

end A216473.P9738338538096507436

/-! ## A216473.P15322919285399731544

`A084680(Δ[(3*n)²])`
-/

namespace A216473.P15322919285399731544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216473.P15322919285399731544

/-! ## A216473.P10922741890832759401

`or(char[1], A084681(2*n+1))`
-/

namespace A216473.P10922741890832759401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084681 (2 * n + 1))

end

end A216473.P10922741890832759401

/-! ## A216473.P10937776742245378452

`A004526(2*A084681(2*n+1))`
-/

namespace A216473.P10937776742245378452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A084681 (2 * n + 1)).toNat

end

end A216473.P10937776742245378452

/-! ## A216473.P5997482226141217640

`A084681(2*n+1)%A004767(n)`
-/

namespace A216473.P5997482226141217640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084681 (2 * n + 1)) (A004767 n)

end

end A216473.P5997482226141217640

/-! ## A216473.P5997494299550314288

`filter[A084681(2*n+1), A236861(#)]`
-/

namespace A216473.P5997494299550314288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A216473.P5997494299550314288

/-! ## A216473.P11556920452176866612

`∑{d}[A084681(2*n+1), A000010(#)]`
-/

namespace A216473.P11556920452176866612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A216473.P11556920452176866612

/-! ## A216473.P16797523047413110961

`abs(A246016(n))*A084681(2*n+1)`
-/

namespace A216473.P16797523047413110961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246016 n| * A084681 (2 * n + 1)

end

end A216473.P16797523047413110961

/-! ## A216473.P9522655752399740327

`A007318(C(2, n))*A084681(2*n+1)`
-/

namespace A216473.P9522655752399740327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A084681 (2 * n + 1)

end

end A216473.P9522655752399740327

/-!
# A216475: The number of numbers coprime to and less than n+2, excluding 2.

The programs for A216475, the canonical program `A216475.P4696027615986910322` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216475 has offset 1).

The definition of A216475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216475.P8097400397735588587

`A000010(n+3)-log2(gcd(2, n))`
-/

namespace A216475.P8097400397735588587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A216475.P8097400397735588587

namespace A216475

/-- `A000010(n+3)-log2(gcd(2, n))` -/
def P8097400397735588587.Spec : Prop :=
  ∀ n, P8097400397735588587.a n = (A216475 (n + 1) : ℝ)

end A216475

/-! ## A216475.P17659116504687690088

`floor((Δ[A018805(n+2)]-(n+1)%2)/2)`
-/

namespace A216475.P17659116504687690088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n - (((n + 1) % 2 : ℕ) : ℤ) : ℚ) / 2⌋

end

end A216475.P17659116504687690088

namespace A216475

/-- `floor((Δ[A018805(n+2)]-(n+1)%2)/2)` -/
def P17659116504687690088.Spec : Prop :=
  ∀ n, P17659116504687690088.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P8451448971074108176

`A000010(2*(n+1)-n+1)+n-or(1, n)`
-/

namespace A216475.P8451448971074108176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * (n + 1) : ℤ) - (n : ℤ) + 1).toNat + (n : ℤ) - (Nat.lor 1 n : ℤ)

end

end A216475.P8451448971074108176

namespace A216475

/-- `A000010(2*(n+1)-n+1)+n-or(1, n)` -/
def P8451448971074108176.Spec : Prop :=
  ∀ n, P8451448971074108176.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P12065038127205638276

`A000010(n+3)-A059841(n)`
-/

namespace A216475.P12065038127205638276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - A059841 n

end

end A216475.P12065038127205638276

namespace A216475

/-- `A000010(n+3)-A059841(n)` -/
def P12065038127205638276.Spec : Prop :=
  ∀ n, P12065038127205638276.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P15292333868416787847

`A000010(n+3)-∑[A033999(n)]`
-/

namespace A216475.P15292333868416787847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216475.P15292333868416787847

namespace A216475

/-- `A000010(n+3)-∑[A033999(n)]` -/
def P15292333868416787847.Spec : Prop :=
  ∀ n, P15292333868416787847.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P12454460353443255477

`A000035(n)+A000010(n+3)-1`
-/

namespace A216475.P12454460353443255477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A000010 (n + 3) - 1)

end

end A216475.P12454460353443255477

namespace A216475

/-- `A000035(n)+A000010(n+3)-1` -/
def P12454460353443255477.Spec : Prop :=
  ∀ n, P12454460353443255477.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P5425918657586692736

`A000032(and(1, n-1))+A000010(n+3)-2`
-/

namespace A216475.P5425918657586692736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 1 ((n : ℤ) - 1)).toNat + (A000010 (n + 3) - 2)

end

end A216475.P5425918657586692736

namespace A216475

/-- `A000032(and(1, n-1))+A000010(n+3)-2` -/
def P5425918657586692736.Spec : Prop :=
  ∀ n, P5425918657586692736.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P12607897307281036058

`A000005(gcd(n+1, n-1))+A000010(n+3)-2`
-/

namespace A216475.P12607897307281036058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)) + (A000010 (n + 3) - 2)

end

end A216475.P12607897307281036058

namespace A216475

/-- `A000005(gcd(n+1, n-1))+A000010(n+3)-2` -/
def P12607897307281036058.Spec : Prop :=
  ∀ n, P12607897307281036058.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P11446831301834601715

`A008683(gcd(n+3, 2*n)+2)+A000010(n+3)`
-/

namespace A216475.P11446831301834601715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd (n + 3) (2 * n) + 2) + A000010 (n + 3)

end

end A216475.P11446831301834601715

namespace A216475

/-- `A008683(gcd(n+3, 2*n)+2)+A000010(n+3)` -/
def P11446831301834601715.Spec : Prop :=
  ∀ n, P11446831301834601715.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P13606273927022870413

`a(n-2)+A000010(n+3)-A000010(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A216475.P13606273927022870413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (A000010 (n + 3) - A000010 (n + 1))

end

end A216475.P13606273927022870413

namespace A216475

/-- `a(n-2)+A000010(n+3)-A000010(n+1)` -/
def P13606273927022870413.Spec : Prop :=
  ∀ n, P13606273927022870413.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P6540294407965025183

`A000010(n+3)-A135528(n+2)`
-/

namespace A216475.P6540294407965025183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) - A135528 (n + 2)

end

end A216475.P6540294407965025183

namespace A216475

/-- `A000010(n+3)-A135528(n+2)` -/
def P6540294407965025183.Spec : Prop :=
  ∀ n, P6540294407965025183.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P14128254439766335995

`2*A023022(n+3)-A000035(n+1)`
-/

namespace A216475.P14128254439766335995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023022 (n + 3) - A000035 (n + 1)

end

end A216475.P14128254439766335995

namespace A216475

/-- `2*A023022(n+3)-A000035(n+1)` -/
def P14128254439766335995.Spec : Prop :=
  ∀ n, P14128254439766335995.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P4696027615986910322

`Δ[Δ[A049688(n+1)]-A008619(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A216475

/-- `Δ[Δ[A049688(n+1)]-A008619(n+1)]` -/
def P4696027615986910322.Spec : Prop :=
  ∀ n, P4696027615986910322.a n = A216475 (n + 1)

theorem P4696027615986910322.correct : P4696027615986910322.Spec := by
  intro n
  simp only [A216475, Nat.add_sub_cancel]

end A216475

/-! ## A216475.P2393853450441485712

`A109606(n+3)+1-char[2*n]`
-/

namespace A216475.P2393853450441485712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 3) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A216475.P2393853450441485712

namespace A216475

/-- `A109606(n+3)+1-char[2*n]` -/
def P2393853450441485712.Spec : Prop :=
  ∀ n, P2393853450441485712.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P4539372857627458568

`Δ[A015614(abs(2*n+1-n)+1)]+n-or(1, n)`
-/

namespace A216475.P4539372857627458568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (|(2 * n + 1 : ℤ) - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) - (Nat.lor 1 n : ℤ)

end

end A216475.P4539372857627458568

namespace A216475

/-- `Δ[A015614(abs(2*n+1-n)+1)]+n-or(1, n)` -/
def P4539372857627458568.Spec : Prop :=
  ∀ n, P4539372857627458568.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P1862336138541132518

`A039649(n+3)-Δ[A007494(n)]`
-/

namespace A216475.P1862336138541132518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 3) - (f1 (n + 1) - f1 n)

end

end A216475.P1862336138541132518

namespace A216475

/-- `A039649(n+3)-Δ[A007494(n)]` -/
def P1862336138541132518.Spec : Prop :=
  ∀ n, P1862336138541132518.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P15688503559384853757

`A049635(n)-A049693(n)`
-/

namespace A216475.P15688503559384853757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n - A049693 n

end

end A216475.P15688503559384853757

namespace A216475

/-- `A049635(n)-A049693(n)` -/
def P15688503559384853757.Spec : Prop :=
  ∀ n, P15688503559384853757.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P6510757769600705875

`A049694(n)+1-A049693(n)`
-/

namespace A216475.P6510757769600705875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 n + (1 - A049693 n)

end

end A216475.P6510757769600705875

namespace A216475

/-- `A049694(n)+1-A049693(n)` -/
def P6510757769600705875.Spec : Prop :=
  ∀ n, P6510757769600705875.a n = A216475 (n + 1)

end A216475

/-! ## A216475.P7516159932465586564

`A000010((n+3)²)/(n+3)-and(1, n+1)`
-/

namespace A216475.P7516159932465586564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 3) ^ 2) : ℚ) / (n + 3 : ℚ) - (Nat.land 1 (n + 1) : ℚ)

end

end A216475.P7516159932465586564

namespace A216475

/-- `A000010((n+3)²)/(n+3)-and(1, n+1)` -/
def P7516159932465586564.Spec : Prop :=
  ∀ n, P7516159932465586564.a n = (A216475 (n + 1) : ℚ)

end A216475

/-!
# A216476: Number of iterations of the "Oware" operation until the initial position n is reproduced.

The programs for A216476, there is no canonical definition to state claims against.
-/

/-! ## A216476.P11140901412846023579

`A002326(∑[A054898(n)^(n+1)])`
-/

namespace A216476.P11140901412846023579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216476.P11140901412846023579

/-! ## A216476.P12513882722307898325

`A002326(∑[A343609(n)^A002326(n)])`
-/

namespace A216476.P12513882722307898325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343609 n : ℚ) ^ (A002326 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A216476.P12513882722307898325

/-!
# A216477: The sequence of the parts in the partition binary diagram represented as an array.

The programs for A216477, there is no canonical definition to state claims against.
-/

/-! ## A216477.P4523871286225841742

`A193739(Δ[n²]-n%floor(sqrt(n+1)))`
-/

namespace A216477.P4523871286225841742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)).toNat

end

end A216477.P4523871286225841742

/-! ## A216477.P11665756765524880924

`A025581(eq[0, A265017(n)])`
-/

namespace A216477.P11665756765524880924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216477.P11665756765524880924

/-! ## A216477.P182063826613963329

`A193739(eq[0, A218757(n)])`
-/

namespace A216477.P182063826613963329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216477.P182063826613963329

/-! ## A216477.P15812731981618890073

`A237447(eq[0, A218757(n)])`
-/

namespace A216477.P15812731981618890073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216477.P15812731981618890073

/-! ## A216477.P12290609588589471447

`A025581(lt[A265017(n), 1])`
-/

namespace A216477.P12290609588589471447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265017 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A216477.P12290609588589471447

/-! ## A216477.P4877928914718249221

`A193739(lt[A218757(n), 1])`
-/

namespace A216477.P4877928914718249221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218757 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A216477.P4877928914718249221

/-! ## A216477.P13975734549384381898

`A193739(record[A057028(n+1)])`
-/

namespace A216477.P13975734549384381898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216477.P13975734549384381898

/-! ## A216477.P15538391918428954005

`A193739(2*n+1-A055087(n))`
-/

namespace A216477.P15538391918428954005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 ((2 * n + 1 : ℤ) - A055087 n).toNat

end

end A216477.P15538391918428954005

/-! ## A216477.P11742222720236179636

`A004736(2*n+1-A280026(n))`
-/

namespace A216477.P11742222720236179636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((2 * n + 1 : ℤ) - A280026 n).toNat

end

end A216477.P11742222720236179636

/-! ## A216477.P698236283200246222

`A004736(A206224(A206224(n))+n+1)`
-/

namespace A216477.P698236283200246222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A206224 (A206224 n).toNat + (n + 1 : ℤ)).toNat

end

end A216477.P698236283200246222

/-!
# A216478: a(n) is the least multiple of n which uses only digits 1 and 2. a(n) = -1 if no such multiple exists.

The programs for A216478, there is no canonical definition to state claims against.
-/

/-! ## A216478.P1023967485311233676

`or(A121373(A018047(n)), A181060(n+1))`
-/

namespace A216478.P1023967485311233676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121373 (A018047 n).toNat) (A181060 (n + 1))

end

end A216478.P1023967485311233676

/-! ## A216478.P1548098384615444485

`A181061(A079339(n+1))*A216482(n+1)`
-/

namespace A216478.P1548098384615444485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A079339 (n + 1)).toNat * A216482 (n + 1)

end

end A216478.P1548098384615444485

/-! ## A216478.P3991836162481362657

`A181061(A244927(n+1))*A216482(n+1)`
-/

namespace A216478.P3991836162481362657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A244927 (n + 1)).toNat * A216482 (n + 1)

end

end A216478.P3991836162481362657

/-! ## A216478.P12698992613260583536

`or(A056594(A079339(n+1)), A181060(n+1))`
-/

namespace A216478.P12698992613260583536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056594 (A079339 (n + 1)).toNat) (A181060 (n + 1))

end

end A216478.P12698992613260583536

/-!
# A216479: a(n) is the least multiple of n which uses only the digit 1, or a(n) = -1 if no such multiple exists.

The programs for A216479, there is no canonical definition to state claims against.
-/

/-! ## A216479.P9731926184768153235

`or(1, A002275(A084681(n+1))-1)`
-/

namespace A216479.P9731926184768153235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002275 (A084681 (n + 1)).toNat - 1)

end

end A216479.P9731926184768153235

/-! ## A216479.P11468074190831695244

`floor(A216481(2*(n+1))/2)`
-/

namespace A216479.P11468074190831695244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216481 (2 * (n + 1)) : ℚ) / 2⌋

end

end A216479.P11468074190831695244

/-! ## A216479.P3182793499557690163

`round(A216481(2*n+2)/2)`
-/

namespace A216479.P3182793499557690163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216481 (2 * n + 2) : ℚ) / 2)

end

end A216479.P3182793499557690163

/-! ## A216479.P4280608506351715453

`A216481(2*(n+1))/gcd(2, A216485(n+1))`
-/

namespace A216479.P4280608506351715453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216481 (2 * (n + 1)) : ℚ) / (Int.gcd 2 (A216485 (n + 1)) : ℚ)

end

end A216479.P4280608506351715453

/-! ## A216479.P14644269700469635732

`A216481(2*(n+1))-A002275(A084681(n+1))`
-/

namespace A216479.P14644269700469635732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216481 (2 * (n + 1)) - A002275 (A084681 (n + 1)).toNat

end

end A216479.P14644269700469635732

/-!
# A216480: Primitive non-solvable numbers: orders of non-solvable groups such that all groups with order a proper divisor of that order are solvable.

The programs for A216480, there is no canonical definition to state claims against.
-/

/-! ## A216480.P4708838963445336827

`A330584(lt[A218952(n), A330578(n+1)])`
-/

namespace A216480.P4708838963445336827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330584 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216480.P4708838963445336827

/-! ## A216480.P12972140908524071152

`A330585(lt[A218952(n), A330578(n+1)])`
-/

namespace A216480.P12972140908524071152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216480.P12972140908524071152

/-! ## A216480.P16743729176146456091

`A335000(A029963(n+1)+A001414(2*(n+2)))`
-/

namespace A216480.P16743729176146456091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335000 (A029963 (n + 1) + A001414 (2 * (n + 2))).toNat

end

end A216480.P16743729176146456091

/-!
# A216481: a(n) is the least multiple of n which uses only digit 2, or a(n) = -1 if no such multiple exists.

The programs for A216481, there is no canonical definition to state claims against.
-/

/-! ## A216481.P12247264676742045968

`or(A078241(n+1), A162201(A001519(n)))`
-/

namespace A216481.P12247264676742045968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078241 (n + 1)) (A162201 (A001519 n).toNat)

end

end A216481.P12247264676742045968

/-!
# A216482: a(n) is the least value of k such that k*n uses only digits 1 and 2. a(n) = -1 if no such multiple exists.

The programs for A216482, there is no canonical definition to state claims against.
-/

/-! ## A216482.P16597459405072561013

`floor(A216478(n+1)/(n+1))`
-/

namespace A216482.P16597459405072561013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216478 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A216482.P16597459405072561013

/-!
# A216483: a(n) = Sum_{k=0..n} binomial(n,k)^3 * 4^k.

The programs for A216483, there is no canonical definition to state claims against.
-/

/-! ## A216483.P12325351232177291138

`A336163(eq[4, C(comp[∑[n]]-n, 2)-(n+1)])`
-/

namespace A216483.P12325351232177291138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216483.P12325351232177291138

/-! ## A216483.P1511880882349765684

`A336163(A052905(n+2))`
-/

namespace A216483.P1511880882349765684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (A052905 (n + 2)).toNat

end

end A216483.P1511880882349765684

/-! ## A216483.P16885640514070444078

`A336163(A056115(n)+10)`
-/

namespace A216483.P16885640514070444078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (A056115 n + 10).toNat

end

end A216483.P16885640514070444078

/-!
# A216484: 

The programs for A216484, there is no canonical definition to state claims against.
-/

/-! ## A216484.P55817848066826169

`∪[A040993(n+1), A070183(n+1)]`
-/

namespace A216484.P55817848066826169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216484.P55817848066826169

/-! ## A216484.P6756860762610938146

`∪[A059264(n+1), A070183(n+1)]`
-/

namespace A216484.P6756860762610938146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216484.P6756860762610938146

/-! ## A216484.P15993831764620161427

`∪[A040100(n+1), A212375(n+1)]`
-/

namespace A216484.P15993831764620161427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216484.P15993831764620161427

/-! ## A216484.P11560930390284395183

`∪[A059264(n+1), A212375(n+1)]`
-/

namespace A216484.P11560930390284395183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216484.P11560930390284395183

/-! ## A216484.P7419913229564462748

`∪[A070183(n+1), A212375(n+1)]`
-/

namespace A216484.P7419913229564462748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216484.P7419913229564462748

/-!
# A216485: a(n) is the least value of k such that k*n uses only the digit 2, or a(n) = -1 if no such multiple exists.

The programs for A216485, there is no canonical definition to state claims against.
-/

/-! ## A216485.P18047280690971744178

`floor(A216481(n+1)/(n+1))`
-/

namespace A216485.P18047280690971744178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216481 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A216485.P18047280690971744178

/-! ## A216485.P16825526062377172655

`A216481(n+1)/gcd(A216455(n+1), A216481(n+1))`
-/

namespace A216485.P16825526062377172655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216481 (n + 1) : ℚ) / (Int.gcd (A216455 (n + 1)) (A216481 (n + 1)) : ℚ)

end

end A216485.P16825526062377172655

/-!
# A216487: Smallest prime factor of n^(2n) - 1 having the form k*n+1.

The programs for A216487, there is no canonical definition to state claims against.
-/

/-! ## A216487.P15398280690571623857

`(n+2)*A216506(n+2)+1`
-/

namespace A216487.P15398280690571623857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A216506 (n + 2) + 1

end

end A216487.P15398280690571623857

/-! ## A216487.P16187195903480283147

`A141310((n+2)*A216506(n+2))`
-/

namespace A216487.P16187195903480283147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n + 2 : ℤ) * A216506 (n + 2)).toNat

end

end A216487.P16187195903480283147

/-! ## A216487.P10174947376626755374

`A151800((n+2)*A216506(n+2))`
-/

namespace A216487.P10174947376626755374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 2 : ℤ) * A216506 (n + 2)).toNat

end

end A216487.P10174947376626755374

/-! ## A216487.P9593429270008989374

`A166333((n+2)*A216506(n+2))`
-/

namespace A216487.P9593429270008989374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 ((n + 2 : ℤ) * A216506 (n + 2)).toNat

end

end A216487.P9593429270008989374

/-!
# A216490: G.f. satisfies A(x) = 1 + x*A(x)^2 + x^3*A(x)^5.

The programs for A216490, there is no canonical definition to state claims against.
-/

/-! ## A216490.P5105074448558758240

`A008617((2^n+1)²)`
-/

namespace A216490.P5105074448558758240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 ((2 ^ n + 1) ^ 2)

end

end A216490.P5105074448558758240

/-! ## A216490.P3913464177867331836

`A109497(A015528(n))`
-/

namespace A216490.P3913464177867331836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A015528 n).toNat

end

end A216490.P3913464177867331836

/-! ## A216490.P10758718555952679758

`A214701(A111279(n))`
-/

namespace A216490.P10758718555952679758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A111279 n).toNat

end

end A216490.P10758718555952679758

/-!
# A216491: a(n) = 12*5^n.

The programs for A216491, the canonical program `A216491.P11113372753551455099` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216491 has offset 0).

The definition of A216491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*5^n` (program `A216491.P11113372753551455099`, by `A216491.P11113372753551455099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216491.P11113372753551455099

`12*5^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216491

/-- `12*5^n` -/
def P11113372753551455099.Spec : Prop :=
  ∀ n, (P11113372753551455099.a n : ℤ) = A216491 n

theorem P11113372753551455099.correct : P11113372753551455099.Spec := by
  intro n
  simp only [A216491]

end A216491

/-!
# A216492: Number of inequivalent connected planar figures that can be formed from n 1 X 2 rectangles (or dominoes) such that each pair of touching rectangles shares exactly one edge, of length 1, and the adjacency graph of the rectangles is a tree.

The programs for A216492, there is no canonical definition to state claims against.
-/

/-! ## A216492.P9217944166510793736

`A075255(A325296(n))+n`
-/

namespace A216492.P9217944166510793736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A325296 n).toNat + (n : ℤ)

end

end A216492.P9217944166510793736

/-! ## A216492.P1459586138130524139

`A059567(A001147(n))-∑[∑{e}[n, #]]`
-/

namespace A216492.P1459586138130524139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059567 (A001147 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A216492.P1459586138130524139

/-!
# A216493: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^5*A(x)^13.

The programs for A216493, there is no canonical definition to state claims against.
-/

/-! ## A216493.P15846487714213800854

`A000027(A216494(n)-A102683(n))`
-/

namespace A216493.P15846487714213800854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A216494 n - A102683 n).toNat

end

end A216493.P15846487714213800854

/-! ## A216493.P14306301559851025250

`A216494(n)-A185284(A000045(n))`
-/

namespace A216493.P14306301559851025250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216494 n - A185284 (A000045 n).toNat

end

end A216493.P14306301559851025250

/-! ## A216493.P15132287773136840693

`A216494(n)-A188009(A006414(n))`
-/

namespace A216493.P15132287773136840693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216494 n - A188009 (A006414 n).toNat

end

end A216493.P15132287773136840693

/-! ## A216493.P11213719208783432361

`A216494(n)-A185284(A179822(n))`
-/

namespace A216493.P11213719208783432361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216494 n - A185284 (A179822 n).toNat

end

end A216493.P11213719208783432361

/-! ## A216493.P16884521915676424631

`filter[A216494(n), A115971(#)]`
-/

namespace A216493.P16884521915676424631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A216493.P16884521915676424631

/-!
# A216494: G.f. satisfies A(x) = 1 + x*A(x)^3/(1 - x^4*A(x)^10).

The programs for A216494, there is no canonical definition to state claims against.
-/

/-! ## A216494.P14968718533804446403

`A216493(n)+A107846(floor(3^(n-1)))`
-/

namespace A216494.P14968718533804446403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216493 n + A107846 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A216494.P14968718533804446403

/-! ## A216494.P17817263797802721494

`A102683(n)+A000027(A216493(n))`
-/

namespace A216494.P17817263797802721494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A000027 (A216493 n).toNat

end

end A216494.P17817263797802721494

/-! ## A216494.P18356875313291244453

`A216493(n)+A185284(A179822(n))`
-/

namespace A216494.P18356875313291244453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216493 n + A185284 (A179822 n).toNat

end

end A216494.P18356875313291244453

/-! ## A216494.P12589881489147210147

`A216493(n)+A184974(A184974(n))`
-/

namespace A216494.P12589881489147210147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216493 n + A184974 (A184974 n).toNat

end

end A216494.P12589881489147210147

/-!
# A216495: Primes p with property that there exists a number d>0 such that numbers p-d, p-2*d are primes.

The programs for A216495, the canonical program `A216495.P3012631399220531716` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216495 has offset 1).

The definition of A216495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216495.P3012631399220531716

`A000040(floor(sqrt((n+1)*(n+11)))+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216495

/-- `A000040(floor(sqrt((n+1)*(n+11)))+1)` -/
def P3012631399220531716.Spec : Prop :=
  ∀ n, P3012631399220531716.a n = A216495 (n + 1)

theorem P3012631399220531716.correct : P3012631399220531716.Spec := by
  intro n
  simp only [A216495, Nat.add_sub_cancel]

end A216495

/-! ## A216495.P10273534349271324461

`p?[A345377(n)+A254667(n)]`
-/

namespace A216495.P10273534349271324461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345377 n + A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216495.P10273534349271324461

namespace A216495

/-- `p?[A345377(n)+A254667(n)]` -/
def P10273534349271324461.Spec : Prop :=
  ∀ n, P10273534349271324461.a n = A216495 (n + 1)

end A216495

/-! ## A216495.P7849178296510965770

`p?[lt[3, A350067(n+1)]]`
-/

namespace A216495.P7849178296510965770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350067 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216495.P7849178296510965770

namespace A216495

/-- `p?[lt[3, A350067(n+1)]]` -/
def P7849178296510965770.Spec : Prop :=
  ∀ n, (P7849178296510965770.a n : ℤ) = A216495 (n + 1)

end A216495

/-! ## A216495.P7862464442359237814

`p?[lt[4, A350068(n+1)]]`
-/

namespace A216495.P7862464442359237814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350068 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216495.P7862464442359237814

namespace A216495

/-- `p?[lt[4, A350068(n+1)]]` -/
def P7862464442359237814.Spec : Prop :=
  ∀ n, (P7862464442359237814.a n : ℤ) = A216495 (n + 1)

end A216495

/-! ## A216495.P11528911339865521786

`p?[lt[83, A178034(n+1)]]`
-/

namespace A216495.P11528911339865521786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  83

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178034 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216495.P11528911339865521786

namespace A216495

/-- `p?[lt[83, A178034(n+1)]]` -/
def P11528911339865521786.Spec : Prop :=
  ∀ n, (P11528911339865521786.a n : ℤ) = A216495 (n + 1)

end A216495

/-! ## A216495.P13747645602303534067

`p?[comp[A229461(n+1)]]`
-/

namespace A216495.P13747645602303534067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229461 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216495.P13747645602303534067

namespace A216495

/-- `p?[comp[A229461(n+1)]]` -/
def P13747645602303534067.Spec : Prop :=
  ∀ n, (P13747645602303534067.a n : ℤ) = A216495 (n + 1)

end A216495

/-! ## A216495.P10327345408442180859

`p?[(n+1)*(n*A268340(n+1)+1)+5]`
-/

namespace A216495.P10327345408442180859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A268340 (n + 1) + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216495.P10327345408442180859

namespace A216495

/-- `p?[(n+1)*(n*A268340(n+1)+1)+5]` -/
def P10327345408442180859.Spec : Prop :=
  ∀ n, P10327345408442180859.a n = A216495 (n + 1)

end A216495

/-! ## A216495.P6117088312926937867

`p?[(n+6)*A072211(n+1)]`
-/

namespace A216495.P6117088312926937867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℤ) * A072211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216495.P6117088312926937867

namespace A216495

/-- `p?[(n+6)*A072211(n+1)]` -/
def P6117088312926937867.Spec : Prop :=
  ∀ n, P6117088312926937867.a n = A216495 (n + 1)

end A216495

/-! ## A216495.P4332509147783397980

`A389809(A183905(n+2))`
-/

namespace A216495.P4332509147783397980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A183905 (n + 2)).toNat

end

end A216495.P4332509147783397980

namespace A216495

/-- `A389809(A183905(n+2))` -/
def P4332509147783397980.Spec : Prop :=
  ∀ n, P4332509147783397980.a n = A216495 (n + 1)

end A216495

/-! ## A216495.P1074432787318322119

`∪[A034849(n+1), A178641(n+1)]`
-/

namespace A216495.P1074432787318322119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216495.P1074432787318322119

namespace A216495

/-- `∪[A034849(n+1), A178641(n+1)]` -/
def P1074432787318322119.Spec : Prop :=
  ∀ n, (P1074432787318322119.a n : ℤ) = A216495 (n + 1)

end A216495

/-!
# A216496: Primes that are not in A094383.

The programs for A216496, there is no canonical definition to state claims against.
-/

/-! ## A216496.P16097563291838155080

`∩[A028804(n+1), A086983(n+1)]`
-/

namespace A216496.P16097563291838155080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216496.P16097563291838155080

/-! ## A216496.P5541393013020865959

`A000040(lt[A000700(n), A068438(3*n+5)])`
-/

namespace A216496.P5541393013020865959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068438 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216496.P5541393013020865959

/-! ## A216496.P15109994484007354005

`∩[A028804(n+1), A363998(n+1)]`
-/

namespace A216496.P15109994484007354005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216496.P15109994484007354005

/-! ## A216496.P5716171180338561943

`∩[A317294(n+1), A363998(n+1)]`
-/

namespace A216496.P5716171180338561943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216496.P5716171180338561943

/-! ## A216496.P542383846613137880

`∩[A363998(n+1), A371421(n+1)]`
-/

namespace A216496.P542383846613137880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216496.P542383846613137880

/-!
# A216497: Primes p with property that there exists a number d>0 such that numbers p-k*d, k=1...4, are four primes.

The programs for A216497, there is no canonical definition to state claims against.
-/

/-! ## A216497.P2351032323366359715

`A156784(n+1)-A186681(A001339(n))`
-/

namespace A216497.P2351032323366359715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156784 (n + 1) - A186681 (A001339 n).toNat

end

end A216497.P2351032323366359715

/-! ## A216497.P12187295654752538374

`A156784(n+1)-A186681(A094567(n))`
-/

namespace A216497.P12187295654752538374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156784 (n + 1) - A186681 (A094567 n).toNat

end

end A216497.P12187295654752538374

/-!
# A216498: Primes p with property that there exists a number d>0 such that numbers p-k*d, k=1...5, are five primes.

The programs for A216498, there is no canonical definition to state claims against.
-/

/-! ## A216498.P505121277626602578

`A356833(A356833(n+3)+A284177(n))`
-/

namespace A216498.P505121277626602578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356833 (A356833 (n + 3) + A284177 n).toNat

end

end A216498.P505121277626602578

/-!
# A216499: The maximum possible number of rooted triples consistent with any galled-tree (level-1 phylogenetic network) containing exactly n leaves.

The programs for A216499, there is no canonical definition to state claims against.
-/

/-! ## A216499.P2642925167981045309

`∑[∑[A302642(A049547(n+1))]]`
-/

namespace A216499.P2642925167981045309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302642 (A049547 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216499.P2642925167981045309

/-! ## A216499.P11094372105469124569

`∑[∑[A094382(A324515(3*n+4))]]`
-/

namespace A216499.P11094372105469124569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094382 (A324515 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216499.P11094372105469124569

/-! ## A216499.P13762515865006162287

`floor(C(A001222(4^n)-n, 2)²/(n+1))`
-/

namespace A216499.P13762515865006162287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A001222 (4 ^ n) - (n : ℤ)).toNat 2 ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A216499.P13762515865006162287

/-! ## A216499.P1224316592828930560

`A301506(A108478(n))`
-/

namespace A216499.P1224316592828930560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (A108478 n).toNat

end

end A216499.P1224316592828930560

/-! ## A216499.P14610721819259153702

`A301506(A136752(n)*A374517(n))`
-/

namespace A216499.P14610721819259153702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (A136752 n * A374517 n).toNat

end

end A216499.P14610721819259153702

