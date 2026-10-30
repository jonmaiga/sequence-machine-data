import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A230101: a(n) = product of n and all its nonzero digits.

The programs for A230101, the canonical program `A230101.P17823981165506777543` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230101 has offset 0).

The definition of A230101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230101.P17823981165506777543

`n*∏{digits}[n, gcd(#, #!²)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230101

/-- `n*∏{digits}[n, gcd(#, #!²)]` -/
def P17823981165506777543.Spec : Prop :=
  ∀ n, (P17823981165506777543.a n : ℤ) = A230101 n

theorem P17823981165506777543.correct : P17823981165506777543.Spec := by
  intro n
  simp only [A230101]

end A230101

/-! ## A230101.P13505133196087180911

`n*∏{digits}[n, #^ceil(#/(n+1))]`
-/

namespace A230101.P13505133196087180911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (⌈(x : ℚ) / (n + 1 : ℚ)⌉ : ℤ)).prod

end

end A230101.P13505133196087180911

namespace A230101

/-- `n*∏{digits}[n, #^ceil(#/(n+1))]` -/
def P13505133196087180911.Spec : Prop :=
  ∀ n, P13505133196087180911.a n = (A230101 n : ℚ)

end A230101

/-! ## A230101.P332581113384018192

`n*A051801(n)`
-/

namespace A230101.P332581113384018192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051801 n

end

end A230101.P332581113384018192

namespace A230101

/-- `n*A051801(n)` -/
def P332581113384018192.Spec : Prop :=
  ∀ n, P332581113384018192.a n = A230101 n

theorem P332581113384018192.correct : P332581113384018192.Spec := by
  intro n
  simp only [A230101, Nat.add_sub_cancel, A230101.P332581113384018192.a, A230101.P17823981165506777543.f1, A230101.P17823981165506777543.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230101

/-! ## A230101.P8984212720697816251

`n*∏{digits}[n, A219209(#)]%(n+2)`
-/

namespace A230101.P8984212720697816251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219209 x).prod (n + 2 : ℤ)

end

end A230101.P8984212720697816251

namespace A230101

/-- `n*∏{digits}[n, A219209(#)]%(n+2)` -/
def P8984212720697816251.Spec : Prop :=
  ∀ n, P8984212720697816251.a n = A230101 n

end A230101

/-! ## A230101.P4977333290457968627

`n*A007954(A004185(n))`
-/

namespace A230101.P4977333290457968627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007954 (A004185 n).toNat

end

end A230101.P4977333290457968627

namespace A230101

/-- `n*A007954(A004185(n))` -/
def P4977333290457968627.Spec : Prop :=
  ∀ n, P4977333290457968627.a n = A230101 n

end A230101

/-! ## A230101.P16764443541419387113

`n*A089898(A235049(n))`
-/

namespace A230101.P16764443541419387113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A089898 (A235049 n).toNat

end

end A230101.P16764443541419387113

namespace A230101

/-- `n*A089898(A235049(n))` -/
def P16764443541419387113.Spec : Prop :=
  ∀ n, P16764443541419387113.a n = A230101 n

end A230101

/-! ## A230101.P15392232101656801096

`n*A003963(A113581(n))`
-/

namespace A230101.P15392232101656801096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003963 (A113581 n).toNat

end

end A230101.P15392232101656801096

namespace A230101

/-- `n*A003963(A113581(n))` -/
def P15392232101656801096.Spec : Prop :=
  ∀ n, P15392232101656801096.a n = A230101 n

end A230101

/-! ## A230101.P10225785318401125897

`n*∏{e}[A054842(n), #]`
-/

namespace A230101.P10225785318401125897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A230101.P10225785318401125897

namespace A230101

/-- `n*∏{e}[A054842(n), #]` -/
def P10225785318401125897.Spec : Prop :=
  ∀ n, (P10225785318401125897.a n : ℤ) = A230101 n

end A230101

/-! ## A230101.P11315100415234055567

`n*∏{e}[A069877(n), #]`
-/

namespace A230101.P11315100415234055567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A230101.P11315100415234055567

namespace A230101

/-- `n*∏{e}[A069877(n), #]` -/
def P11315100415234055567.Spec : Prop :=
  ∀ n, (P11315100415234055567.a n : ℤ) = A230101 n

end A230101

/-! ## A230101.P7821141956518001087

`n*∏{e}[A061509(n), #]`
-/

namespace A230101.P7821141956518001087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A230101.P7821141956518001087

namespace A230101

/-- `n*∏{e}[A061509(n), #]` -/
def P7821141956518001087.Spec : Prop :=
  ∀ n, (P7821141956518001087.a n : ℤ) = A230101 n

end A230101

/-!
# A230102: a(0)=1; thereafter a(n+1) = a(n) + (product of digits of a(n)).

The programs for A230102, the canonical program `A230102.P14819412051623608779` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230102 has offset 0).

The definition of A230102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230102.P14819412051623608779

`A230099(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A230102

/-- `A230099(a(n-1))` -/
def P14819412051623608779.Spec : Prop :=
  ∀ n, P14819412051623608779.a n = A230102 n

theorem P14819412051623608779.correct : P14819412051623608779.Spec := by
  intro n
  simp only [A230102]

end A230102

/-!
# A230103: Number of m such that m + (product of digits of m) equals n.

The programs for A230103, there is no canonical definition to state claims against.
-/

/-! ## A230103.P8118432452146156133

`A230106(n)+Δ[A343639(n)]`
-/

namespace A230103.P8118432452146156133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 n + (f1 (n + 1) - f1 n)

end

end A230103.P8118432452146156133

/-! ## A230103.P8008687789102905907

`A349907(∑[A154939(n+1)])`
-/

namespace A230103.P8008687789102905907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230103.P8008687789102905907

/-! ## A230103.P11018050737072147012

`A043562(n)%gcd(3, A122229(n))`
-/

namespace A230103.P11018050737072147012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043562 n) (Int.gcd 3 (A122229 n) : ℤ)

end

end A230103.P11018050737072147012

/-! ## A230103.P2549946532336747039

`char[2*n]*A040001(A251741(n))`
-/

namespace A230103.P2549946532336747039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A040001 (A251741 n).toNat

end

end A230103.P2549946532336747039

/-! ## A230103.P5827457911376267191

`A131743(lcm(1-n, A006512(n+1)))`
-/

namespace A230103.P5827457911376267191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (Int.lcm (1 - (n : ℤ)) (A006512 (n + 1)))

end

end A230103.P5827457911376267191

/-!
# A230104: Numbers k such that m + (product of digits of m) is never equal to k.

The programs for A230104, there is no canonical definition to state claims against.
-/

/-! ## A230104.P7541536339192860015

`comp[A337718(n+1)]`
-/

namespace A230104.P7541536339192860015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230104.P7541536339192860015

/-! ## A230104.P1892963768643850534

`eq[0, A230103(n)]`
-/

namespace A230104.P1892963768643850534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230104.P1892963768643850534

/-! ## A230104.P1994148120352112458

`record[(n+1)*(1-A230103(n+1))]`
-/

namespace A230104.P1994148120352112458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A230103 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230104.P1994148120352112458

/-! ## A230104.P4921855397164882356

`A000027(lt[A230103(n), 1])`
-/

namespace A230104.P4921855397164882356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A230104.P4921855397164882356

/-! ## A230104.P10881721338518747179

`eq[0, char[∏{digits}[n, #]+n]]`
-/

namespace A230104.P10881721338518747179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230104.P10881721338518747179

/-! ## A230104.P14669441252811011745

`comp[A230099(n)]`
-/

namespace A230104.P14669441252811011745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230104.P14669441252811011745

/-! ## A230104.P4872100335781595789

`comp[n+A007954(n)]`
-/

namespace A230104.P4872100335781595789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230104.P4872100335781595789

/-!
# A230105: Numbers n such that m + (product of digits of m) = n has exactly one solution m.

The programs for A230105, there is no canonical definition to state claims against.
-/

/-! ## A230105.P1028175993199142674

`eq[1, A230103(n)]`
-/

namespace A230105.P1028175993199142674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230105.P1028175993199142674

/-! ## A230105.P17002187263276609812

`filter[A337718(n+1), A230103(#)]`
-/

namespace A230105.P17002187263276609812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230103 (f1 j).toNat = 1) n)

end

end A230105.P17002187263276609812

/-! ## A230105.P17934574719136540168

`eq[1, A230106(n)+Δ[A343639(n)]]`
-/

namespace A230105.P17934574719136540168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230106 n + (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230105.P17934574719136540168

/-! ## A230105.P8067482127344638801

`eq[A054899(3*(n+1)), A332205(n+1)]`
-/

namespace A230105.P8067482127344638801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230105.P8067482127344638801

/-!
# A230106: Number of m such that m + (product of nonzero digits of m) equals n.

The programs for A230106, there is no canonical definition to state claims against.
-/

/-! ## A230106.P17636821571179540139

`A096972(floor(acot(n)+n))`
-/

namespace A230106.P17636821571179540139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A230106.P17636821571179540139

/-! ## A230106.P2160465729861625416

`A096972(or(n, floor(acot(n))))`
-/

namespace A230106.P2160465729861625416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A230106.P2160465729861625416

/-! ## A230106.P2805290709989018986

`A096972(xor(n, floor(acot(n))))`
-/

namespace A230106.P2805290709989018986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A230106.P2805290709989018986

/-! ## A230106.P5471976827308635661

`A096972(C(2, n²)+n)`
-/

namespace A230106.P5471976827308635661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (Nat.choose 2 (n ^ 2) + n)

end

end A230106.P5471976827308635661

/-! ## A230106.P13954784444692580550

`A096972(floor(sqrt(n²+1)))`
-/

namespace A230106.P13954784444692580550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (Nat.sqrt (n ^ 2 + 1))

end

end A230106.P13954784444692580550

/-! ## A230106.P10879414395157368947

`A096972(round(sqrt(n²+1)))%4`
-/

namespace A230106.P10879414395157368947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096972 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) 4

end

end A230106.P10879414395157368947

/-! ## A230106.P16460397059946094083

`dr(A096972(A028310(n)))`
-/

namespace A230106.P16460397059946094083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096972 (A028310 n).toNat)

end

end A230106.P16460397059946094083

/-! ## A230106.P9618535857895090251

`dr(A096972(A000007(n)+n))`
-/

namespace A230106.P9618535857895090251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096972 (A000007 n + (n : ℤ)).toNat)

end

end A230106.P9618535857895090251

/-! ## A230106.P11395271793181708946

`dr(A096972(xor(n, A000007(n))))`
-/

namespace A230106.P11395271793181708946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A096972 (Int.xor (n : ℤ) (A000007 n)).toNat)

end

end A230106.P11395271793181708946

/-! ## A230106.P1023126529628382845

`xor(A004524(a(n-1)), A096972(n))` with `a(0)=0, a(1)=0`
-/

namespace A230106.P1023126529628382845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.xor (A004524 (a (n - 1)).toNat) (A096972 n)

end

end A230106.P1023126529628382845

/-! ## A230106.P4704333453072681036

`A054977(n)*A096972(A028310(n))`
-/

namespace A230106.P4704333453072681036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A096972 (A028310 n).toNat

end

end A230106.P4704333453072681036

/-! ## A230106.P7136213118669949303

`and(A018805(n+1), A096972(A028310(n)))`
-/

namespace A230106.P7136213118669949303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018805 (n + 1)) (A096972 (A028310 n).toNat)

end

end A230106.P7136213118669949303

/-! ## A230106.P14694417301970141367

`and(A096972(A028310(n)), A277054(n+1))`
-/

namespace A230106.P14694417301970141367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096972 (A028310 n).toNat) (A277054 (n + 1))

end

end A230106.P14694417301970141367

/-! ## A230106.P14286297945319622332

`lcm(A020985(n), A096972(A000007(n)+n))`
-/

namespace A230106.P14286297945319622332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A096972 (A000007 n + (n : ℤ)).toNat)

end

end A230106.P14286297945319622332

/-! ## A230106.P1642722361663391324

`A034947(n+1)²*A096972(A028310(n))`
-/

namespace A230106.P1642722361663391324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 * A096972 (A028310 n).toNat

end

end A230106.P1642722361663391324

/-! ## A230106.P12415763486744954914

`A055874(2*n+1)*A096972(A028310(n))`
-/

namespace A230106.P12415763486744954914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (2 * n + 1) * A096972 (A028310 n).toNat

end

end A230106.P12415763486744954914

/-! ## A230106.P3262807227856869502

`A055881(2*n+1)*A096972(A028310(n))`
-/

namespace A230106.P3262807227856869502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (2 * n + 1) * A096972 (A028310 n).toNat

end

end A230106.P3262807227856869502

/-! ## A230106.P1047162617577157461

`A096972(A000007(n)+n)+A000007(n+1)`
-/

namespace A230106.P1047162617577157461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (A000007 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A230106.P1047162617577157461

/-! ## A230106.P5115832586959249348

`A000045(gcd(n, n+1))*A096972(A028310(n))`
-/

namespace A230106.P5115832586959249348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A096972 (A028310 n).toNat

end

end A230106.P5115832586959249348

/-! ## A230106.P3634774778240392419

`A096972(A028310(n))+A008683(4*(2*n+1))`
-/

namespace A230106.P3634774778240392419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (A028310 n).toNat + A008683 (4 * (2 * n + 1))

end

end A230106.P3634774778240392419

/-!
# A230108: Values of d such that the equation x^2 - d*y^2 = 2*d has integer solutions.

The programs for A230108, there is no canonical definition to state claims against.
-/

/-! ## A230108.P13823733913967348927

`eq[A000122(n), A103582(A300982(n))]`
-/

namespace A230108.P13823733913967348927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103582 (A300982 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230108.P13823733913967348927

/-!
# A230109: Values of d such that the equation x^2 - d*y^2 = 3*d has integer solutions.

The programs for A230109, there is no canonical definition to state claims against.
-/

/-! ## A230109.P14453327476420883642

`lt[A031364(A307590(n+1)), A374088(n)]`
-/

namespace A230109.P14453327476420883642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (A307590 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230109.P14453327476420883642

/-! ## A230109.P11451544911060736915

`A003136(lt[A096936(3*n+1), A265170(2*(n+2))])`
-/

namespace A230109.P11451544911060736915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265170 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A230109.P11451544911060736915

/-! ## A230109.P13789187779563647453

`A024614(A253784(n+1)%A141033(3*(n+1)))`
-/

namespace A230109.P13789187779563647453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (Int.tmod (A253784 (n + 1)) (A141033 (3 * (n + 1)))).toNat

end

end A230109.P13789187779563647453

/-! ## A230109.P6916764824693290407

`A024614(lt[A003106(n+4), A117120(n+1)])`
-/

namespace A230109.P6916764824693290407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A230109.P6916764824693290407

/-! ## A230109.P8173387042225064852

`∩[A028790(n+1), A326421(n+1)]`
-/

namespace A230109.P8173387042225064852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230109.P8173387042225064852

/-!
# A230112: Composite numbers m such that Product_{i=1..k} (p_i/(p_i-1)) / Sum_{i=1..k} (p_i/(p_i+1)) is an integer, where p_i are the k prime factors of m (with multiplicity).

The programs for A230112, there is no canonical definition to state claims against.
-/

/-! ## A230112.P17172558199332953537

`A322136(or(2^n, xor(n, 3*n)))`
-/

namespace A230112.P17172558199332953537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322136 (Nat.lor (2 ^ n) (Nat.xor n (3 * n)))

end

end A230112.P17172558199332953537

/-! ## A230112.P3530111787706338034

`2^(comp[∑[n]]-n)*A004739(n^n)`
-/

namespace A230112.P3530111787706338034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) * (A004739 (n ^ n) : ℚ)

end

end A230112.P3530111787706338034

/-!
# A230113: Digital root of summed Fibonacci and Lucas digital roots indexed by numbers not divisible by 2, 3 or 5.

The programs for A230113, the canonical program `A230113.P115488730651242556` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230113 has offset 1).

The definition of A230113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230113.P115488730651242556

`A211253(A007775(n+1))%9`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A230113

/-- `A211253(A007775(n+1))%9` -/
def P115488730651242556.Spec : Prop :=
  ∀ n, P115488730651242556.a n = A230113 (n + 1)

theorem P115488730651242556.correct : P115488730651242556.Spec := by
  intro n
  simp only [A230113, Nat.add_sub_cancel]

end A230113

/-!
# A230114: Expansion of e.g.f. 1/(1 - sin(8*x))^(1/8).

The programs for A230114, there is no canonical definition to state claims against.
-/

/-! ## A230114.P18087439218822403607

`A293703(A367080(n))`
-/

namespace A230114.P18087439218822403607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293703 (A367080 n).toNat

end

end A230114.P18087439218822403607

/-!
# A230115: Numbers n such that tau(n+1) - tau(n) = 2; where tau(n) = the number of divisors of n (A000005).

The programs for A230115, the canonical program `A230115.P1180303606197959416` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230115 has offset 1).

The definition of A230115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230115.P1180303606197959416

`eq[A000005(n+1)+2, A000005(n+2)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230115

/-- `eq[A000005(n+1)+2, A000005(n+2)]+1` -/
def P1180303606197959416.Spec : Prop :=
  ∀ n, (P1180303606197959416.a n : ℤ) = A230115 (n + 1)

theorem P1180303606197959416.correct : P1180303606197959416.Spec := by
  intro n
  simp only [A230115, Nat.add_sub_cancel]

end A230115

/-! ## A230115.P13912366860125270296

`∩[A074775(n+1), A162318(n+1)]`
-/

namespace A230115.P13912366860125270296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230115.P13912366860125270296

namespace A230115

/-- `∩[A074775(n+1), A162318(n+1)]` -/
def P13912366860125270296.Spec : Prop :=
  ∀ n, (P13912366860125270296.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P11252541443335494027

`eq[2, A051950(n+2)]+1`
-/

namespace A230115.P11252541443335494027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230115.P11252541443335494027

namespace A230115

/-- `eq[2, A051950(n+2)]+1` -/
def P11252541443335494027.Spec : Prop :=
  ∀ n, (P11252541443335494027.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P1110443648008626762

`eq[2, A341062(n+1)]`
-/

namespace A230115.P1110443648008626762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230115.P1110443648008626762

namespace A230115

/-- `eq[2, A341062(n+1)]` -/
def P1110443648008626762.Spec : Prop :=
  ∀ n, (P1110443648008626762.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P3165529123441274735

`A020725(eq[2, A051950(n+2)])`
-/

namespace A230115.P3165529123441274735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230115.P3165529123441274735

namespace A230115

/-- `A020725(eq[2, A051950(n+2)])` -/
def P3165529123441274735.Spec : Prop :=
  ∀ n, P3165529123441274735.a n = A230115 (n + 1)

end A230115

/-! ## A230115.P4523204898400260932

`A065475(eq[2, A051950(n+2)])`
-/

namespace A230115.P4523204898400260932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230115.P4523204898400260932

namespace A230115

/-- `A065475(eq[2, A051950(n+2)])` -/
def P4523204898400260932.Spec : Prop :=
  ∀ n, P4523204898400260932.a n = A230115 (n + 1)

end A230115

/-! ## A230115.P5220261270180617949

`A153152(eq[2, A051950(n+2)])`
-/

namespace A230115.P5220261270180617949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230115.P5220261270180617949

namespace A230115

/-- `A153152(eq[2, A051950(n+2)])` -/
def P5220261270180617949.Spec : Prop :=
  ∀ n, P5220261270180617949.a n = A230115 (n + 1)

end A230115

/-! ## A230115.P8159909073804910253

`eq[A032741(n)+2, A325765(n)]`
-/

namespace A230115.P8159909073804910253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P8159909073804910253

namespace A230115

/-- `eq[A032741(n)+2, A325765(n)]` -/
def P8159909073804910253.Spec : Prop :=
  ∀ n, (P8159909073804910253.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P5115765445155568575

`eq[A032741(n)+1, A070824(n+1)]`
-/

namespace A230115.P5115765445155568575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P5115765445155568575

namespace A230115

/-- `eq[A032741(n)+1, A070824(n+1)]` -/
def P5115765445155568575.Spec : Prop :=
  ∀ n, (P5115765445155568575.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P14090077849760071921

`eq[A032741(n)+2, A032741(n+1)]`
-/

namespace A230115.P14090077849760071921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P14090077849760071921

namespace A230115

/-- `eq[A032741(n)+2, A032741(n+1)]` -/
def P14090077849760071921.Spec : Prop :=
  ∀ n, (P14090077849760071921.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P4048860913566962610

`eq[A000005(A028310(n)), A070824(n+1)]`
-/

namespace A230115.P4048860913566962610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P4048860913566962610

namespace A230115

/-- `eq[A000005(A028310(n)), A070824(n+1)]` -/
def P4048860913566962610.Spec : Prop :=
  ∀ n, (P4048860913566962610.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P9404325340928246518

`eq[A023443(A070824(n+1)), A032741(n)]`
-/

namespace A230115.P9404325340928246518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A070824 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P9404325340928246518

namespace A230115

/-- `eq[A023443(A070824(n+1)), A032741(n)]` -/
def P9404325340928246518.Spec : Prop :=
  ∀ n, (P9404325340928246518.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P10817868389463968974

`eq[A004275(A264440(n+1)), A319410(n)]`
-/

namespace A230115.P10817868389463968974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A264440 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P10817868389463968974

namespace A230115

/-- `eq[A004275(A264440(n+1)), A319410(n)]` -/
def P10817868389463968974.Spec : Prop :=
  ∀ n, (P10817868389463968974.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P18170081176387852340

`eq[A049820(n+1)+1, A049820(A028310(n))]`
-/

namespace A230115.P18170081176387852340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P18170081176387852340

namespace A230115

/-- `eq[A049820(n+1)+1, A049820(A028310(n))]` -/
def P18170081176387852340.Spec : Prop :=
  ∀ n, (P18170081176387852340.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P10124169357814556586

`eq[A000005(A028310(n))+2, A000005(n+1)]`
-/

namespace A230115.P10124169357814556586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P10124169357814556586

namespace A230115

/-- `eq[A000005(A028310(n))+2, A000005(n+1)]` -/
def P10124169357814556586.Spec : Prop :=
  ∀ n, (P10124169357814556586.a n : ℤ) = A230115 (n + 1)

end A230115

/-! ## A230115.P3151325869156475153

`eq[A334954(A028310(n))+2, A334954(n+1)]`
-/

namespace A230115.P3151325869156475153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230115.P3151325869156475153

namespace A230115

/-- `eq[A334954(A028310(n))+2, A334954(n+1)]` -/
def P3151325869156475153.Spec : Prop :=
  ∀ n, (P3151325869156475153.a n : ℤ) = A230115 (n + 1)

end A230115

/-!
# A230116: Value of row n in triangle A166360 when seen as binary number.

The programs for A230116, there is no canonical definition to state claims against.
-/

/-! ## A230116.P916668607806223482

`A048735(∪[A038192(n), A048711(n)])`
-/

namespace A230116.P916668607806223482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048711 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A230116.P916668607806223482

/-! ## A230116.P1653167947402738272

`and(A099375(A006516(n)), A232878(n+1))`
-/

namespace A230116.P1653167947402738272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099375 (A006516 n).toNat) (A232878 (n + 1))

end

end A230116.P1653167947402738272

/-! ## A230116.P4350531784057437506

`A005408(eq[A195011(n), A324224(n+1)])`
-/

namespace A230116.P4350531784057437506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A230116.P4350531784057437506

/-! ## A230116.P15101925345942061007

`A265509(eq[A077385(n+1), A171142(n+3)])`
-/

namespace A230116.P15101925345942061007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171142 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A230116.P15101925345942061007

/-!
# A230117: Primes p such that 2*p+1 is prime and 2*p+3 is not prime.

The programs for A230117, the canonical program `A230117.P7534826294184350368` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230117 has offset 1).

The definition of A230117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230117.P10168811551158670204

`∩[A005384(n+1), A163769(n+1)]`
-/

namespace A230117.P10168811551158670204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P10168811551158670204

namespace A230117

/-- `∩[A005384(n+1), A163769(n+1)]` -/
def P10168811551158670204.Spec : Prop :=
  ∀ n, (P10168811551158670204.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P17008715657320842552

`∩[A163769(n+1), A163778(n+1)]`
-/

namespace A230117.P17008715657320842552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P17008715657320842552

namespace A230117

/-- `∩[A163769(n+1), A163778(n+1)]` -/
def P17008715657320842552.Spec : Prop :=
  ∀ n, (P17008715657320842552.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P7534826294184350368

`∩[A163769(n+1), A215751(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230117

/-- `∩[A163769(n+1), A215751(n+1)]` -/
def P7534826294184350368.Spec : Prop :=
  ∀ n, (P7534826294184350368.a n : ℤ) = A230117 (n + 1)

theorem P7534826294184350368.correct : P7534826294184350368.Spec := by
  intro n
  simp only [A230117, Nat.add_sub_cancel]

end A230117

/-! ## A230117.P8536127501003019512

`∩[A163769(n+1), A246857(n+1)]`
-/

namespace A230117.P8536127501003019512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P8536127501003019512

namespace A230117

/-- `∩[A163769(n+1), A246857(n+1)]` -/
def P8536127501003019512.Spec : Prop :=
  ∀ n, (P8536127501003019512.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P14351565724985906319

`∩[A163769(n+1), A259973(n+1)]`
-/

namespace A230117.P14351565724985906319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P14351565724985906319

namespace A230117

/-- `∩[A163769(n+1), A259973(n+1)]` -/
def P14351565724985906319.Spec : Prop :=
  ∀ n, (P14351565724985906319.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P1258696871156382747

`∩[A163769(n+1), A348511(n+1)]`
-/

namespace A230117.P1258696871156382747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P1258696871156382747

namespace A230117

/-- `∩[A163769(n+1), A348511(n+1)]` -/
def P1258696871156382747.Spec : Prop :=
  ∀ n, (P1258696871156382747.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P16441747611585920288

`∩[A163769(n+1), A350230(n+1)]`
-/

namespace A230117.P16441747611585920288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P16441747611585920288

namespace A230117

/-- `∩[A163769(n+1), A350230(n+1)]` -/
def P16441747611585920288.Spec : Prop :=
  ∀ n, (P16441747611585920288.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P15081362189091709676

`∩[A163769(n+1), A364926(n+1)]`
-/

namespace A230117.P15081362189091709676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P15081362189091709676

namespace A230117

/-- `∩[A163769(n+1), A364926(n+1)]` -/
def P15081362189091709676.Spec : Prop :=
  ∀ n, (P15081362189091709676.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P9227948756845287612

`∩[A078762(n+1), A163769(n+1)]`
-/

namespace A230117.P9227948756845287612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P9227948756845287612

namespace A230117

/-- `∩[A078762(n+1), A163769(n+1)]` -/
def P9227948756845287612.Spec : Prop :=
  ∀ n, (P9227948756845287612.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P16079706648996502020

`∩[A104635(n+1), A163769(n+1)]`
-/

namespace A230117.P16079706648996502020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P16079706648996502020

namespace A230117

/-- `∩[A104635(n+1), A163769(n+1)]` -/
def P16079706648996502020.Spec : Prop :=
  ∀ n, (P16079706648996502020.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P14906452181691195801

`∩[A054639(n+1), A163769(n+1)]`
-/

namespace A230117.P14906452181691195801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P14906452181691195801

namespace A230117

/-- `∩[A054639(n+1), A163769(n+1)]` -/
def P14906452181691195801.Spec : Prop :=
  ∀ n, (P14906452181691195801.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P9273646415166809132

`∩[A014109(n+1), A163769(n+1)]`
-/

namespace A230117.P9273646415166809132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P9273646415166809132

namespace A230117

/-- `∩[A014109(n+1), A163769(n+1)]` -/
def P9273646415166809132.Spec : Prop :=
  ∀ n, (P9273646415166809132.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P8035488389880572838

`∩[A156541(n+1), A163769(n+1)]`
-/

namespace A230117.P8035488389880572838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P8035488389880572838

namespace A230117

/-- `∩[A156541(n+1), A163769(n+1)]` -/
def P8035488389880572838.Spec : Prop :=
  ∀ n, (P8035488389880572838.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P15050194940495698597

`∩[A074821(n+1), A163769(n+1)]`
-/

namespace A230117.P15050194940495698597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P15050194940495698597

namespace A230117

/-- `∩[A074821(n+1), A163769(n+1)]` -/
def P15050194940495698597.Spec : Prop :=
  ∀ n, (P15050194940495698597.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P2639523603915330961

`∩[A034784(n+1), A163769(n+1)]`
-/

namespace A230117.P2639523603915330961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P2639523603915330961

namespace A230117

/-- `∩[A034784(n+1), A163769(n+1)]` -/
def P2639523603915330961.Spec : Prop :=
  ∀ n, (P2639523603915330961.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P16172196052946600326

`∩[A117360(n+1), A163769(n+1)]`
-/

namespace A230117.P16172196052946600326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P16172196052946600326

namespace A230117

/-- `∩[A117360(n+1), A163769(n+1)]` -/
def P16172196052946600326.Spec : Prop :=
  ∀ n, (P16172196052946600326.a n : ℤ) = A230117 (n + 1)

end A230117

/-! ## A230117.P14445398659380625707

`∩[A005097(n+1), A163769(n+1)]`
-/

namespace A230117.P14445398659380625707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230117.P14445398659380625707

namespace A230117

/-- `∩[A005097(n+1), A163769(n+1)]` -/
def P14445398659380625707.Spec : Prop :=
  ∀ n, (P14445398659380625707.a n : ℤ) = A230117 (n + 1)

end A230117

/-!
# A230118: Numbers of quasi-espalier polycubes of a given volume (number of atomic cells).

The programs for A230118, there is no canonical definition to state claims against.
-/

/-! ## A230118.P3511842930639465163

`A035301(n)-A284954(A087078(n+1))`
-/

namespace A230118.P3511842930639465163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035301 n - A284954 (A087078 (n + 1)).toNat

end

end A230118.P3511842930639465163

/-! ## A230118.P6662224423048795107

`∑[A096532(A357459(n+1))-A332281(n)]`
-/

namespace A230118.P6662224423048795107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 (A357459 (n + 1)).toNat - A332281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230118.P6662224423048795107

/-! ## A230118.P15127681052907219982

`A118759(∑[A100883(n)])`
-/

namespace A230118.P15127681052907219982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230118.P15127681052907219982

/-! ## A230118.P15408922342050398452

`A000188(∑[A100883(n)]²)`
-/

namespace A230118.P15408922342050398452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A230118.P15408922342050398452

/-! ## A230118.P13011238517991444355

`A000189(∑[A100883(n)]²)`
-/

namespace A230118.P13011238517991444355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A230118.P13011238517991444355

/-!
# A230119: Numbers of quasi-pyramid polycubes of a given volume (number of atomic cells).

The programs for A230119, there is no canonical definition to state claims against.
-/

/-! ## A230119.P18312243253045007973

`A114149(2^(n+1))+∑[4*n]+1`
-/

namespace A230119.P18312243253045007973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (2 ^ (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A230119.P18312243253045007973

/-! ## A230119.P2344597108490774156

`A001650(A112495(n))`
-/

namespace A230119.P2344597108490774156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A112495 n).toNat

end

end A230119.P2344597108490774156

/-!
# A230120: a(n) is the number of evil integers (A001969) not exceeding n and prime to n.

The programs for A230120, there is no canonical definition to state claims against.
-/

/-! ## A230120.P2628566999344576214

`A000010(n+1)-A230070(n+1)`
-/

namespace A230120.P2628566999344576214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A230070 (n + 1)

end

end A230120.P2628566999344576214

/-! ## A230120.P12464813095281903881

`A276331(A039649(n+1))-A230070(n+1)`
-/

namespace A230120.P12464813095281903881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A039649 (n + 1)).toNat - A230070 (n + 1)

end

end A230120.P12464813095281903881

/-! ## A230120.P6125001790337666345

`A054523(∑[n]+1)-A230070(n+1)`
-/

namespace A230120.P6125001790337666345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A230070 (n + 1)

end

end A230120.P6125001790337666345

/-!
# A230121: Number of ways to write n = x + y + z (0 < x <= y <= z) such that x*(x+1)/2 + y*(y+1)/2 + z*(z+1)/2 is a triangular number.

The programs for A230121, there is no canonical definition to state claims against.
-/

/-! ## A230121.P4997930841180057829

`A037816(A318460(3*n+1)+A070885(n+1))`
-/

namespace A230121.P4997930841180057829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A318460 (3 * n + 1) + A070885 (n + 1)).toNat

end

end A230121.P4997930841180057829

/-! ## A230121.P16857637026050938743

`5%A124768(A319390(n))`
-/

namespace A230121.P16857637026050938743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A124768 (A319390 n).toNat)

end

end A230121.P16857637026050938743

/-! ## A230121.P15958186318758897995

`abs(Δ[A031346(A187892(n))])`
-/

namespace A230121.P15958186318758897995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A187892 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A230121.P15958186318758897995

/-! ## A230121.P1146301045560179895

`A037813(A157640(n)+4*n)`
-/

namespace A230121.P1146301045560179895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A157640 n + (4 * n : ℤ)).toNat

end

end A230121.P1146301045560179895

/-! ## A230121.P214122749436871893

`A340832(A005940(n+2)+A001190(n))`
-/

namespace A230121.P214122749436871893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340832 (A005940 (n + 2) + A001190 n).toNat

end

end A230121.P214122749436871893

/-!
# A230122: 1-Fibonacci lattice paths.

The programs for A230122, there is no canonical definition to state claims against.
-/

/-! ## A230122.P3140685772542793577

`A062108(A149694(n))`
-/

namespace A230122.P3140685772542793577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A149694 n).toNat

end

end A230122.P3140685772542793577

/-! ## A230122.P14749872722484253184

`A097992(A196918(n+1)+A147704(n))`
-/

namespace A230122.P14749872722484253184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A196918 (n + 1) + A147704 n).toNat

end

end A230122.P14749872722484253184

/-! ## A230122.P4854142246284250998

`A110656(A291730(n)+A145548(n+1))`
-/

namespace A230122.P4854142246284250998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A291730 n + A145548 (n + 1)).toNat

end

end A230122.P4854142246284250998

/-! ## A230122.P13955166436680988811

`A110656(A291730(n)+A199883(n+1))`
-/

namespace A230122.P13955166436680988811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A291730 n + A199883 (n + 1)).toNat

end

end A230122.P13955166436680988811

/-!
# A230124: Squarefree evil numbers.

The programs for A230124, the canonical program `A230124.P9922372933548285315` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230124 has offset 1).

The definition of A230124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230124.P11617428162159117718

`filter[A001969(n+2), A008966(#)]`
-/

namespace A230124.P11617428162159117718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230124.P11617428162159117718

namespace A230124

/-- `filter[A001969(n+2), A008966(#)]` -/
def P11617428162159117718.Spec : Prop :=
  ∀ n, P11617428162159117718.a n = A230124 (n + 1)

end A230124

/-! ## A230124.P9922372933548285315

`∩[A001969(n+1), A005117(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230124

/-- `∩[A001969(n+1), A005117(n+1)]` -/
def P9922372933548285315.Spec : Prop :=
  ∀ n, (P9922372933548285315.a n : ℤ) = A230124 (n + 1)

theorem P9922372933548285315.correct : P9922372933548285315.Spec := by
  intro n
  simp only [A230124, Nat.add_sub_cancel]

end A230124

/-! ## A230124.P7870784000441383189

`filter[A295298(n+3), A008966(#)]`
-/

namespace A230124.P7870784000441383189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295298 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230124.P7870784000441383189

namespace A230124

/-- `filter[A295298(n+3), A008966(#)]` -/
def P7870784000441383189.Spec : Prop :=
  ∀ n, P7870784000441383189.a n = A230124 (n + 1)

end A230124

/-! ## A230124.P12027656301464878146

`∩[A001969(n+1), A144338(n+1)]`
-/

namespace A230124.P12027656301464878146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230124.P12027656301464878146

namespace A230124

/-- `∩[A001969(n+1), A144338(n+1)]` -/
def P12027656301464878146.Spec : Prop :=
  ∀ n, (P12027656301464878146.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P15016502820853857281

`record[∏{p}[A161560(2*(n+2)), #]]`
-/

namespace A230124.P15016502820853857281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230124.P15016502820853857281

namespace A230124

/-- `record[∏{p}[A161560(2*(n+2)), #]]` -/
def P15016502820853857281.Spec : Prop :=
  ∀ n, (P15016502820853857281.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P3160542501382179147

`eq[(n+a(floor(n/2)))%2, A284345(n)]` with `a(0)=9`
-/

namespace A230124.P3160542501382179147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  (n + f1 ⌊(n : ℚ) / 2⌋.toNat) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230124.P3160542501382179147

namespace A230124

/-- `eq[(n+a(floor(n/2)))%2, A284345(n)]` -/
def P3160542501382179147.Spec : Prop :=
  ∀ n, (P3160542501382179147.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P13618710666551054214

`eq[A087049(n), A102394(n)]`
-/

namespace A230124.P13618710666551054214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230124.P13618710666551054214

namespace A230124

/-- `eq[A087049(n), A102394(n)]` -/
def P13618710666551054214.Spec : Prop :=
  ∀ n, (P13618710666551054214.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P570423059800129113

`eq[A010059(n), A255326(n)]`
-/

namespace A230124.P570423059800129113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230124.P570423059800129113

namespace A230124

/-- `eq[A010059(n), A255326(n)]` -/
def P570423059800129113.Spec : Prop :=
  ∀ n, (P570423059800129113.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P15502067956504302132

`eq[A106400(n), A255326(n)]`
-/

namespace A230124.P15502067956504302132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230124.P15502067956504302132

namespace A230124

/-- `eq[A106400(n), A255326(n)]` -/
def P15502067956504302132.Spec : Prop :=
  ∀ n, (P15502067956504302132.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P16150840013664583403

`filter[A005117(n+1), A010059(#)]`
-/

namespace A230124.P16150840013664583403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A230124.P16150840013664583403

namespace A230124

/-- `filter[A005117(n+1), A010059(#)]` -/
def P16150840013664583403.Spec : Prop :=
  ∀ n, P16150840013664583403.a n = A230124 (n + 1)

end A230124

/-! ## A230124.P5750117726133314352

`filter[A005117(n+1), A092436(#)]`
-/

namespace A230124.P5750117726133314352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A230124.P5750117726133314352

namespace A230124

/-- `filter[A005117(n+1), A092436(#)]` -/
def P5750117726133314352.Spec : Prop :=
  ∀ n, P5750117726133314352.a n = A230124 (n + 1)

end A230124

/-! ## A230124.P15377511501326948630

`filter[A144338(n+1), A010059(#)]`
-/

namespace A230124.P15377511501326948630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A230124.P15377511501326948630

namespace A230124

/-- `filter[A144338(n+1), A010059(#)]` -/
def P15377511501326948630.Spec : Prop :=
  ∀ n, P15377511501326948630.a n = A230124 (n + 1)

end A230124

/-! ## A230124.P15949698739662355386

`filter[A144338(n+1), A092436(#)]`
-/

namespace A230124.P15949698739662355386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A230124.P15949698739662355386

namespace A230124

/-- `filter[A144338(n+1), A092436(#)]` -/
def P15949698739662355386.Spec : Prop :=
  ∀ n, P15949698739662355386.a n = A230124 (n + 1)

end A230124

/-! ## A230124.P12148247662218174714

`filter[A385212(n+1), A010059(#)]`
-/

namespace A230124.P12148247662218174714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A230124.P12148247662218174714

namespace A230124

/-- `filter[A385212(n+1), A010059(#)]` -/
def P12148247662218174714.Spec : Prop :=
  ∀ n, P12148247662218174714.a n = A230124 (n + 1)

end A230124

/-! ## A230124.P5804939854379361454

`filter[A385212(n+1), A092436(#)]`
-/

namespace A230124.P5804939854379361454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A230124.P5804939854379361454

namespace A230124

/-- `filter[A385212(n+1), A092436(#)]` -/
def P5804939854379361454.Spec : Prop :=
  ∀ n, P5804939854379361454.a n = A230124 (n + 1)

end A230124

/-! ## A230124.P309518894509919860

`eq[A010059(n), A285718(n+1)]`
-/

namespace A230124.P309518894509919860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230124.P309518894509919860

namespace A230124

/-- `eq[A010059(n), A285718(n+1)]` -/
def P309518894509919860.Spec : Prop :=
  ∀ n, (P309518894509919860.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P9767275049633387903

`eq[A102391(n), A285719(n+1)]`
-/

namespace A230124.P9767275049633387903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230124.P9767275049633387903

namespace A230124

/-- `eq[A102391(n), A285719(n+1)]` -/
def P9767275049633387903.Spec : Prop :=
  ∀ n, (P9767275049633387903.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P14260922655402016274

`eq[A106400(n), A285718(n+1)]`
-/

namespace A230124.P14260922655402016274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230124.P14260922655402016274

namespace A230124

/-- `eq[A106400(n), A285718(n+1)]` -/
def P14260922655402016274.Spec : Prop :=
  ∀ n, (P14260922655402016274.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P6819328499746336106

`eq[A010059(n), A399381(n+1)]`
-/

namespace A230124.P6819328499746336106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230124.P6819328499746336106

namespace A230124

/-- `eq[A010059(n), A399381(n+1)]` -/
def P6819328499746336106.Spec : Prop :=
  ∀ n, (P6819328499746336106.a n : ℤ) = A230124 (n + 1)

end A230124

/-! ## A230124.P2095511438731393169

`eq[A102391(n), A399682(n+1)]`
-/

namespace A230124.P2095511438731393169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230124.P2095511438731393169

namespace A230124

/-- `eq[A102391(n), A399682(n+1)]` -/
def P2095511438731393169.Spec : Prop :=
  ∀ n, (P2095511438731393169.a n : ℤ) = A230124 (n + 1)

end A230124

/-!
# A230125: Fibonacci numbers with no squarefree neighbors.

The programs for A230125, there is no canonical definition to state claims against.
-/

/-! ## A230125.P7407673420124308213

`A340400(A098670(n+1))`
-/

namespace A230125.P7407673420124308213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340400 (A098670 (n + 1)).toNat

end

end A230125.P7407673420124308213

/-!
# A230126: Smallest value of k such that Sum_{j=1..k} arctan(1/j) > n*Pi/2.

The programs for A230126, there is no canonical definition to state claims against.
-/

/-! ## A230126.P16343713523491940220

`A060384(A126405(n)-A000142(n))`
-/

namespace A230126.P16343713523491940220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A126405 n - A000142 n).toNat

end

end A230126.P16343713523491940220

/-! ## A230126.P15763675184662354802

`A323748(n+2)+A060143(A087447(2*n))`
-/

namespace A230126.P15763675184662354802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323748 (n + 2) + A060143 (A087447 (2 * n)).toNat

end

end A230126.P15763675184662354802

/-!
# A230127: Number of binary strings of length n avoiding "squares" (that is, repeated blocks of the form xx) with |x| > 1.

The programs for A230127, there is no canonical definition to state claims against.
-/

/-! ## A230127.P614125279674187626

`∑[A320111(A168542(3*n))]`
-/

namespace A230127.P614125279674187626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A168542 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230127.P614125279674187626

/-!
# A230128: The number of multinomial coefficients over partitions with value equal to 4.

The programs for A230128, the canonical program `A230128.P16100721587130228578` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230128 has offset 1).

The definition of A230128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230128.P15848648414960281789

`ogf((x^4+x^5+2x^6)/(1-x^3-x^4+x^7))`
-/

namespace A230128.P15848648414960281789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1, 1, 2] [1, 0, 0, -1, -1, 0, 0, 1] n

end

end A230128.P15848648414960281789

namespace A230128

/-- `ogf((x^4+x^5+2x^6)/(1-x^3-x^4+x^7))` -/
def P15848648414960281789.Spec : Prop :=
  ∀ n, P15848648414960281789.a n = A230128 (n + 1)

end A230128

/-! ## A230128.P16100721587130228578

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230128

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P16100721587130228578.Spec : Prop :=
  ∀ n, P16100721587130228578.a n = A230128 (n + 1)

theorem P16100721587130228578.correct : P16100721587130228578.Spec := by
  intro n
  simp only [A230128, Nat.add_sub_cancel]

end A230128

/-! ## A230128.P7051662188303559860

`floor(1/3*n)+floor(1/4*n)-floor(1/4*(n+1))`
-/

namespace A230128.P7051662188303559860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 3 * (n : ℚ)⌋ + ⌊(1 : ℚ) / 4 * (n : ℚ)⌋ - ⌊(1 : ℚ) / 4 * (n + 1 : ℚ)⌋

end

end A230128.P7051662188303559860

namespace A230128

/-- `floor(1/3*n)+floor(1/4*n)-floor(1/4*(n+1))` -/
def P7051662188303559860.Spec : Prop :=
  ∀ n, P7051662188303559860.a n = A230128 (n + 1)

end A230128

/-! ## A230128.P6427806850531130575

`abs(char[or(3, n)]-floor(n/3))`
-/

namespace A230128.P6427806850531130575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ⌊(n : ℚ) / 3⌋|

end

end A230128.P6427806850531130575

namespace A230128

/-- `abs(char[or(3, n)]-floor(n/3))` -/
def P6427806850531130575.Spec : Prop :=
  ∀ n, P6427806850531130575.a n = A230128 (n + 1)

end A230128

/-! ## A230128.P11053764463975984623

`floor(n/3-floor(n%4/3))`
-/

namespace A230128.P11053764463975984623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3 - (⌊((n % 4 : ℕ) : ℚ) / 3⌋ : ℚ)⌋

end

end A230128.P11053764463975984623

namespace A230128

/-- `floor(n/3-floor(n%4/3))` -/
def P11053764463975984623.Spec : Prop :=
  ∀ n, P11053764463975984623.a n = A230128 (n + 1)

end A230128

/-! ## A230128.P5703970171401074534

`abs(gcd(1-n, ∑[n])-ceil((n+1)/3))`
-/

namespace A230128.P5703970171401074534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) - ⌈(n + 1 : ℚ) / 3⌉|

end

end A230128.P5703970171401074534

namespace A230128

/-- `abs(gcd(1-n, ∑[n])-ceil((n+1)/3))` -/
def P5703970171401074534.Spec : Prop :=
  ∀ n, P5703970171401074534.a n = A230128 (n + 1)

end A230128

/-! ## A230128.P9972500186795992567

`Δ[ceil(C(n, 2)/2)-round((n+3)²/12)]`
-/

namespace A230128.P9972500186795992567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉ - SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230128.P9972500186795992567

namespace A230128

/-- `Δ[ceil(C(n, 2)/2)-round((n+3)²/12)]` -/
def P9972500186795992567.Spec : Prop :=
  ∀ n, P9972500186795992567.a n = A230128 (n + 1)

end A230128

/-! ## A230128.P11978744845531229731

`round((n-A177704(n)²)/3)`
-/

namespace A230128.P11978744845531229731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - A177704 n ^ 2 : ℚ) / 3)

end

end A230128.P11978744845531229731

namespace A230128

/-- `round((n-A177704(n)²)/3)` -/
def P11978744845531229731.Spec : Prop :=
  ∀ n, P11978744845531229731.a n = A230128 (n + 1)

end A230128

/-! ## A230128.P7683607679389028689

`abs(A008620(n)-A177704(n))`
-/

namespace A230128.P7683607679389028689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008620 n - A177704 n|

end

end A230128.P7683607679389028689

namespace A230128

/-- `abs(A008620(n)-A177704(n))` -/
def P7683607679389028689.Spec : Prop :=
  ∀ n, P7683607679389028689.a n = A230128 (n + 1)

end A230128

/-! ## A230128.P13378319970952093821

`Δ[A001840(n)-A001068(n)]`
-/

namespace A230128.P13378319970952093821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n - A001068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230128.P13378319970952093821

namespace A230128

/-- `Δ[A001840(n)-A001068(n)]` -/
def P13378319970952093821.Spec : Prop :=
  ∀ n, P13378319970952093821.a n = A230128 (n + 1)

end A230128

/-!
# A230129: Number of permutations of order n with the length of longest run equal 6.

The programs for A230129, there is no canonical definition to state claims against.
-/

/-! ## A230129.P12082080825736919631

`A010026(Δ[A111396(n)])`
-/

namespace A230129.P12082080825736919631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (f1 (n + 1) - f1 n).toNat

end

end A230129.P12082080825736919631

/-! ## A230129.P11677592532796691885

`A010026(A055998(n+3))`
-/

namespace A230129.P11677592532796691885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A055998 (n + 3)).toNat

end

end A230129.P11677592532796691885

/-! ## A230129.P7966035317268512575

`A010026(eq[3, A089688(n)])`
-/

namespace A230129.P7966035317268512575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230129.P7966035317268512575

/-! ## A230129.P1110109667242944713

`A010026(eq[2, A092921(n)]+1)`
-/

namespace A230129.P1110109667242944713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230129.P1110109667242944713

/-! ## A230129.P5395929756380043632

`A010026(eq[6, A047888(n+1)])`
-/

namespace A230129.P5395929756380043632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230129.P5395929756380043632

/-! ## A230129.P17318626735557871761

`A211318(eq[7, A131818(n+1)])`
-/

namespace A230129.P17318626735557871761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230129.P17318626735557871761

/-! ## A230129.P11498374306311086897

`A211318(A055999(n+4)-(2*n+1))`
-/

namespace A230129.P11498374306311086897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A230129.P11498374306311086897

/-! ## A230129.P7121024329618143995

`A010026(A111396(n+1)-A111396(n))`
-/

namespace A230129.P7121024329618143995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A111396 (n + 1) - A111396 n).toNat

end

end A230129.P7121024329618143995

/-!
# A230130: Number of permutations of order n with the length of the longest run equal to 7.

The programs for A230130, there is no canonical definition to state claims against.
-/

/-! ## A230130.P16772211435228589079

`A010026(A052905(n+3)+1)`
-/

namespace A230130.P16772211435228589079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A052905 (n + 3) + 1).toNat

end

end A230130.P16772211435228589079

/-! ## A230130.P8958058353658240372

`A211318(A167499(n+5)+2)`
-/

namespace A230130.P8958058353658240372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A167499 (n + 5) + 2).toNat

end

end A230130.P8958058353658240372

/-! ## A230130.P10607169156728445058

`A010026(A000096(n+5)-3)`
-/

namespace A230130.P10607169156728445058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A000096 (n + 5) - 3).toNat

end

end A230130.P10607169156728445058

/-! ## A230130.P3666143342785137865

`A211318(A056000(n+2)+17)`
-/

namespace A230130.P3666143342785137865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A056000 (n + 2) + 17).toNat

end

end A230130.P3666143342785137865

/-! ## A230130.P4053351792865650388

`A211318(eq[8, A131818(n+1)])`
-/

namespace A230130.P4053351792865650388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230130.P4053351792865650388

/-! ## A230130.P12850462635837149614

`A010026(Δ[A111396(n+1)]-1)`
-/

namespace A230130.P12850462635837149614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (f1 (n + 1) - f1 n - 1).toNat

end

end A230130.P12850462635837149614

/-! ## A230130.P7390389375719145778

`A211318(eq[15, A099375(n)]-2*n)`
-/

namespace A230130.P7390389375719145778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A230130.P7390389375719145778

/-!
# A230131: Number of permutations of order n with the length of longest run equal 8.

The programs for A230131, there is no canonical definition to state claims against.
-/

/-! ## A230131.P363421536265545488

`A010026(eq[4, A092921(n)])`
-/

namespace A230131.P363421536265545488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230131.P363421536265545488

/-! ## A230131.P3132744371054549474

`A010026(A055999(n+4)+1)`
-/

namespace A230131.P3132744371054549474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A055999 (n + 4) + 1).toNat

end

end A230131.P3132744371054549474

/-! ## A230131.P7789563259513810456

`A211318(eq[13, A066657(n)])`
-/

namespace A230131.P7789563259513810456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230131.P7789563259513810456

/-! ## A230131.P3561915492723822908

`A211318(eq[9, A131818(n+1)])`
-/

namespace A230131.P3561915492723822908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230131.P3561915492723822908

/-! ## A230131.P15721363649531077993

`A010026(eq[7, A200370(n+1)]+1)`
-/

namespace A230131.P15721363649531077993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230131.P15721363649531077993

/-!
# A230132: Number of permutations of order n with the length of longest run equal 9.

The programs for A230132, there is no canonical definition to state claims against.
-/

/-! ## A230132.P8728147046481073025

`A010026(A055999(n+5))`
-/

namespace A230132.P8728147046481073025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A055999 (n + 5)).toNat

end

end A230132.P8728147046481073025

/-! ## A230132.P11708714958510896130

`A010026(A056000(n+4)+4)`
-/

namespace A230132.P11708714958510896130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A056000 (n + 4) + 4).toNat

end

end A230132.P11708714958510896130

/-! ## A230132.P18297267609021590430

`A010026(A166136(n+5)+2*n+3)`
-/

namespace A230132.P18297267609021590430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A166136 (n + 5) + (2 * n + 3 : ℤ)).toNat

end

end A230132.P18297267609021590430

/-! ## A230132.P11757619188545484417

`A211318(A000217(n+8)+9)`
-/

namespace A230132.P11757619188545484417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A000217 (n + 8) + 9).toNat

end

end A230132.P11757619188545484417

/-! ## A230132.P11902265998753212485

`A211318(eq[10, A131818(n+1)])`
-/

namespace A230132.P11902265998753212485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230132.P11902265998753212485

/-!
# A230133: Number of permutations of order n with the length of longest run equal 10.

The programs for A230133, there is no canonical definition to state claims against.
-/

/-! ## A230133.P5792939580460466739

`A010026(A155212(n+5)+1)`
-/

namespace A230133.P5792939580460466739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A155212 (n + 5) + 1).toNat

end

end A230133.P5792939580460466739

/-! ## A230133.P8699850115339085429

`A010026(A027379(n+7)-4)`
-/

namespace A230133.P8699850115339085429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A027379 (n + 7) - 4).toNat

end

end A230133.P8699850115339085429

/-! ## A230133.P9791932765942530214

`A010026(A000217(n+9)-7)`
-/

namespace A230133.P9791932765942530214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010026 (A000217 (n + 9) - 7).toNat

end

end A230133.P9791932765942530214

/-! ## A230133.P7805834047853851182

`A211318(eq[10, A130270(n+1)])`
-/

namespace A230133.P7805834047853851182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230133.P7805834047853851182

/-! ## A230133.P12255302981565441475

`A211318(eq[11, A131818(n+1)])`
-/

namespace A230133.P12255302981565441475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230133.P12255302981565441475

/-!
# A230134: Expansion of e.g.f. 1/(1 - sin(5*x))^(1/5).

The programs for A230134, there is no canonical definition to state claims against.
-/

/-! ## A230134.P301906326040571382

`A385896(A052905(n+3)-1)`
-/

namespace A230134.P301906326040571382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385896 (A052905 (n + 3) - 1).toNat

end

end A230134.P301906326040571382

/-! ## A230134.P11800372083447917928

`A276617(A046643(2*n+1)*A180038(n))`
-/

namespace A230134.P11800372083447917928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276617 (A046643 (2 * n + 1) * A180038 n).toNat

end

end A230134.P11800372083447917928

/-!
# A230135: Triangle read by rows: T(n, k) = 1 if ((k mod 4 = 2) and (n mod 2 = 1)) or ((k mod 4 = 0) and (n mod 2 = 0)) else T(n, k) = 0.

The programs for A230135, the canonical program `A230135.P17583688101352504264` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230135 has offset 0).

The definition of A230135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230135.P15782972485997705744

`T(col(n), T(row(n), col(n)-2)+T(n-1,k))` with `a(0)=1`
-/

namespace A230135.P15782972485997705744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) (SequenceMachineLib.triAt a (SequenceMachineLib.triRow n : ℤ) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUp a n : ℤ)

end

end A230135.P15782972485997705744

namespace A230135

/-- `T(col(n), T(row(n), col(n)-2)+T(n-1,k))` -/
def P15782972485997705744.Spec : Prop :=
  ∀ n, (P15782972485997705744.a n : ℤ) = A230135 n

end A230135

/-! ## A230135.P18045189287729958004

`T(col(n)-T(row(n), col(n)-2), T(n-1,k))` with `a(0)=1`
-/

namespace A230135.P18045189287729958004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triAt a (SequenceMachineLib.triRow n : ℤ) ((SequenceMachineLib.triCol n : ℤ) - 2) : ℕ) : ℤ)) ((SequenceMachineLib.triUp a n : ℕ) : ℤ)

end

end A230135.P18045189287729958004

namespace A230135

/-- `T(col(n)-T(row(n), col(n)-2), T(n-1,k))` -/
def P18045189287729958004.Spec : Prop :=
  ∀ n, (P18045189287729958004.a n : ℤ) = A230135 n

end A230135

/-! ## A230135.P7425098954432316348

`T(n-2,k)+(1-T(n-2,k))*T(row(n)-1, col(n)-2)` with `a(0)=1`
-/

namespace A230135.P7425098954432316348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + (1 - SequenceMachineLib.triUp2 a n) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A230135.P7425098954432316348

namespace A230135

/-- `T(n-2,k)+(1-T(n-2,k))*T(row(n)-1, col(n)-2)` -/
def P7425098954432316348.Spec : Prop :=
  ∀ n, P7425098954432316348.a n = A230135 n

end A230135

/-! ## A230135.P16810570463619504064

`T(n-2,k)-(T(n-2,k)-1)*T(row(n)-1, col(n)-2)` with `a(0)=1`
-/

namespace A230135.P16810570463619504064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n - (SequenceMachineLib.triUp2 a n - 1) * SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A230135.P16810570463619504064

namespace A230135

/-- `T(n-2,k)-(T(n-2,k)-1)*T(row(n)-1, col(n)-2)` -/
def P16810570463619504064.Spec : Prop :=
  ∀ n, P16810570463619504064.a n = A230135 n

end A230135

/-! ## A230135.P5421552499957934183

`C(2, n+2)^((eq[1, floor(2*sqrt(n))%2]-(2*n+3))%4)`
-/

namespace A230135.P5421552499957934183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℚ) ^ (Int.tmod ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n + 3 : ℤ)) 4 : ℤ)

end

end A230135.P5421552499957934183

namespace A230135

/-- `C(2, n+2)^((eq[1, floor(2*sqrt(n))%2]-(2*n+3))%4)` -/
def P5421552499957934183.Spec : Prop :=
  ∀ n, P5421552499957934183.a n = (A230135 n : ℚ)

end A230135

/-! ## A230135.P8766155919611593573

`char[lt[0, A073278(n)]]`
-/

namespace A230135.P8766155919611593573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073278 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A230135.P8766155919611593573

namespace A230135

/-- `char[lt[0, A073278(n)]]` -/
def P8766155919611593573.Spec : Prop :=
  ∀ n, (P8766155919611593573.a n : ℤ) = A230135 n

end A230135

/-! ## A230135.P4617132367867495102

`char[lt[0, A076257(n)]]`
-/

namespace A230135.P4617132367867495102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A230135.P4617132367867495102

namespace A230135

/-- `char[lt[0, A076257(n)]]` -/
def P4617132367867495102.Spec : Prop :=
  ∀ n, (P4617132367867495102.a n : ℤ) = A230135 n

end A230135

/-! ## A230135.P6513008903588217143

`4%gcd(3, A228405(n))`
-/

namespace A230135.P6513008903588217143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 % Int.gcd 3 (A228405 n)

end

end A230135.P6513008903588217143

namespace A230135

/-- `4%gcd(3, A228405(n))` -/
def P6513008903588217143.Spec : Prop :=
  ∀ n, (P6513008903588217143.a n : ℤ) = A230135 n

end A230135

/-! ## A230135.P17583688101352504264

`val(gcd(4, A294317(n)), 4)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A230135

/-- `val(gcd(4, A294317(n)), 4)` -/
def P17583688101352504264.Spec : Prop :=
  ∀ n, (P17583688101352504264.a n : ℤ) = A230135 n

theorem P17583688101352504264.correct : P17583688101352504264.Spec := by
  intro n
  simp only [A230135]

end A230135

/-! ## A230135.P1788781684651820592

`val(gcd(6, A292495(n)), 3)`
-/

namespace A230135.P1788781684651820592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd 6 (A292495 n)) 3

end

end A230135.P1788781684651820592

namespace A230135

/-- `val(gcd(6, A292495(n)), 3)` -/
def P1788781684651820592.Spec : Prop :=
  ∀ n, (P1788781684651820592.a n : ℤ) = A230135 n

end A230135

/-! ## A230135.P18124470452402693823

`8%gcd(7, A227418(n))`
-/

namespace A230135.P18124470452402693823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 % Int.gcd 7 (A227418 n)

end

end A230135.P18124470452402693823

namespace A230135

/-- `8%gcd(7, A227418(n))` -/
def P18124470452402693823.Spec : Prop :=
  ∀ n, (P18124470452402693823.a n : ℤ) = A230135 n

end A230135

/-! ## A230135.P12415096085304658347

`val(A277810(comp[∑[n]]), 6)`
-/

namespace A230135.P12415096085304658347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277810 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 6

end

end A230135.P12415096085304658347

namespace A230135

/-- `val(A277810(comp[∑[n]]), 6)` -/
def P12415096085304658347.Spec : Prop :=
  ∀ n, (P12415096085304658347.a n : ℤ) = A230135 n

end A230135

/-! ## A230135.P12008157921519465316

`A121262(A294317(n))`
-/

namespace A230135.P12008157921519465316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A294317 n).toNat

end

end A230135.P12008157921519465316

namespace A230135

/-- `A121262(A294317(n))` -/
def P12008157921519465316.Spec : Prop :=
  ∀ n, P12008157921519465316.a n = A230135 n

end A230135

/-! ## A230135.P17927835027455785798

`A008801(A054238(n))%2`
-/

namespace A230135.P17927835027455785798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008801 (A054238 n).toNat) 2

end

end A230135.P17927835027455785798

namespace A230135

/-- `A008801(A054238(n))%2` -/
def P17927835027455785798.Spec : Prop :=
  ∀ n, P17927835027455785798.a n = A230135 n

end A230135

/-! ## A230135.P8176728788274021548

`ceil(A053119(n)/A053124(n))`
-/

namespace A230135.P8176728788274021548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053119 n : ℚ) / (A053124 n : ℚ)⌉

end

end A230135.P8176728788274021548

namespace A230135

/-- `ceil(A053119(n)/A053124(n))` -/
def P8176728788274021548.Spec : Prop :=
  ∀ n, P8176728788274021548.a n = A230135 n

end A230135

/-! ## A230135.P795463550762455196

`and(A309559(n), A376583(n+1))`
-/

namespace A230135.P795463550762455196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A309559 n) (A376583 (n + 1))

end

end A230135.P795463550762455196

namespace A230135

/-- `and(A309559(n), A376583(n+1))` -/
def P795463550762455196.Spec : Prop :=
  ∀ n, P795463550762455196.a n = A230135 n

end A230135

/-! ## A230135.P17679516193756934793

`and(A057059(n+1), A133821(n+1))`
-/

namespace A230135.P17679516193756934793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057059 (n + 1)) (A133821 (n + 1))

end

end A230135.P17679516193756934793

namespace A230135

/-- `and(A057059(n+1), A133821(n+1))` -/
def P17679516193756934793.Spec : Prop :=
  ∀ n, P17679516193756934793.a n = A230135 n

end A230135

/-! ## A230135.P6225600061090557849

`and(A057059(n+1), A376583(n+1))`
-/

namespace A230135.P6225600061090557849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057059 (n + 1)) (A376583 (n + 1))

end

end A230135.P6225600061090557849

namespace A230135

/-- `and(A057059(n+1), A376583(n+1))` -/
def P6225600061090557849.Spec : Prop :=
  ∀ n, P6225600061090557849.a n = A230135 n

end A230135

/-! ## A230135.P6754699631582811650

`and(A134464(n+1), A376583(n+1))`
-/

namespace A230135.P6754699631582811650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134464 (n + 1)) (A376583 (n + 1))

end

end A230135.P6754699631582811650

namespace A230135

/-- `and(A134464(n+1), A376583(n+1))` -/
def P6754699631582811650.Spec : Prop :=
  ∀ n, P6754699631582811650.a n = A230135 n

end A230135

/-! ## A230135.P11424297839944486661

`and(A141419(n+1), A376583(n+1))`
-/

namespace A230135.P11424297839944486661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141419 (n + 1)) (A376583 (n + 1))

end

end A230135.P11424297839944486661

namespace A230135

/-- `and(A141419(n+1), A376583(n+1))` -/
def P11424297839944486661.Spec : Prop :=
  ∀ n, P11424297839944486661.a n = A230135 n

end A230135

/-!
# A230136: Integer areas A of integer-sided cyclic quadrilaterals such that the circumradius is of prime length.

The programs for A230136, there is no canonical definition to state claims against.
-/

/-! ## A230136.P11350911402254567359

`2*A256629(n+1)`
-/

namespace A230136.P11350911402254567359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256629 (n + 1)

end

end A230136.P11350911402254567359

/-! ## A230136.P9495696270530476343

`A256629(A000027(n+1))+A256629(n+1)`
-/

namespace A230136.P9495696270530476343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256629 (A000027 (n + 1)).toNat + A256629 (n + 1)

end

end A230136.P9495696270530476343

/-! ## A230136.P11994109554277082785

`A008590(A256629(n+1)/4)`
-/

namespace A230136.P11994109554277082785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (SequenceMachineLib.roundAway ((A256629 (n + 1) : ℚ) / 4)).toNat

end

end A230136.P11994109554277082785

/-! ## A230136.P13376128966818837038

`A022144(A256629(n+1)/4)`
-/

namespace A230136.P13376128966818837038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.roundAway ((A256629 (n + 1) : ℚ) / 4)).toNat

end

end A230136.P13376128966818837038

/-! ## A230136.P14100562899659165279

`A382865(A256629(n+1))`
-/

namespace A230136.P14100562899659165279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382865 (A256629 (n + 1)).toNat

end

end A230136.P14100562899659165279

/-!
# A230137: a(n)/2^n is the expected value of the maximum of the number of heads and the number of tails when n fair coins are tossed.

The programs for A230137, the canonical program `A230137.P8347840085871938097` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230137 has offset 0).

The definition of A230137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230137.P8347840085871938097

`A100071(n)+A001787(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A230137

/-- `A100071(n)+A001787(n)` -/
def P8347840085871938097.Spec : Prop :=
  ∀ n, P8347840085871938097.a n = A230137 n

theorem P8347840085871938097.correct : P8347840085871938097.Spec := by
  intro n
  simp only [A230137]

end A230137

/-! ## A230137.P5747666797432849857

`A189391(n)+A130783(n)`
-/

namespace A230137.P5747666797432849857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + A130783 n

end

end A230137.P5747666797432849857

namespace A230137

/-- `A189391(n)+A130783(n)` -/
def P5747666797432849857.Spec : Prop :=
  ∀ n, P5747666797432849857.a n = A230137 n

end A230137

/-! ## A230137.P2681673227357942103

`A099326(n)-A323988(n)`
-/

namespace A230137.P2681673227357942103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - A323988 n

end

end A230137.P2681673227357942103

namespace A230137

/-- `A099326(n)-A323988(n)` -/
def P2681673227357942103.Spec : Prop :=
  ∀ n, P2681673227357942103.a n = A230137 n

end A230137

/-! ## A230137.P5131560951373239308

`A139756(n+1)+A100071(n)`
-/

namespace A230137.P5131560951373239308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + A100071 n

end

end A230137.P5131560951373239308

namespace A230137

/-- `A139756(n+1)+A100071(n)` -/
def P5131560951373239308.Spec : Prop :=
  ∀ n, P5131560951373239308.a n = A230137 n

end A230137

/-! ## A230137.P1696083634077299913

`A005183(n)+A100071(n)-1`
-/

namespace A230137.P1696083634077299913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n + (A100071 n - 1)

end

end A230137.P1696083634077299913

namespace A230137

/-- `A005183(n)+A100071(n)-1` -/
def P1696083634077299913.Spec : Prop :=
  ∀ n, P1696083634077299913.a n = A230137 n

end A230137

/-! ## A230137.P2085012337422025202

`A100071(n)+n*A011782(n)`
-/

namespace A230137.P2085012337422025202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n + (n : ℤ) * A011782 n

end

end A230137.P2085012337422025202

namespace A230137

/-- `A100071(n)+n*A011782(n)` -/
def P2085012337422025202.Spec : Prop :=
  ∀ n, P2085012337422025202.a n = A230137 n

end A230137

/-! ## A230137.P4500203221224130607

`n*(A191391(n)+A001405(n))`
-/

namespace A230137.P4500203221224130607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A191391 n + A001405 n)

end

end A230137.P4500203221224130607

namespace A230137

/-- `n*(A191391(n)+A001405(n))` -/
def P4500203221224130607.Spec : Prop :=
  ∀ n, P4500203221224130607.a n = A230137 n

end A230137

/-! ## A230137.P9000677341543281478

`n*(A210736(n)+A011782(n))`
-/

namespace A230137.P9000677341543281478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A210736 n + A011782 n)

end

end A230137.P9000677341543281478

namespace A230137

/-- `n*(A210736(n)+A011782(n))` -/
def P9000677341543281478.Spec : Prop :=
  ∀ n, P9000677341543281478.a n = A230137 n

end A230137

/-! ## A230137.P6243399147851719778

`n*(A210736(n)+A131577(n))`
-/

namespace A230137.P6243399147851719778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A210736 n + A131577 n)

end

end A230137.P6243399147851719778

namespace A230137

/-- `n*(A210736(n)+A131577(n))` -/
def P6243399147851719778.Spec : Prop :=
  ∀ n, P6243399147851719778.a n = A230137 n

end A230137

/-! ## A230137.P2409123424232812914

`n*(A210736(n)+∑[A166444(n)])`
-/

namespace A230137.P2409123424232812914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A210736 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230137.P2409123424232812914

namespace A230137

/-- `n*(A210736(n)+∑[A166444(n)])` -/
def P2409123424232812914.Spec : Prop :=
  ∀ n, P2409123424232812914.a n = A230137 n

end A230137

/-! ## A230137.P12558743141069858709

`n*(A191389(n)+A001405(n+1))`
-/

namespace A230137.P12558743141069858709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A191389 n + A001405 (n + 1))

end

end A230137.P12558743141069858709

namespace A230137

/-- `n*(A191389(n)+A001405(n+1))` -/
def P12558743141069858709.Spec : Prop :=
  ∀ n, P12558743141069858709.a n = A230137 n

end A230137

/-! ## A230137.P13776647079410762778

`A100071(n)+lcm(n, A085750(n+1))`
-/

namespace A230137.P13776647079410762778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n + (Int.lcm (n : ℤ) (A085750 (n + 1)) : ℤ)

end

end A230137.P13776647079410762778

namespace A230137

/-- `A100071(n)+lcm(n, A085750(n+1))` -/
def P13776647079410762778.Spec : Prop :=
  ∀ n, P13776647079410762778.a n = A230137 n

end A230137

/-! ## A230137.P2679246673592216954

`∑{#}[n-1, C(n-1, floor(n/2))+n*C(n-1, #)]`
-/

namespace A230137.P2679246673592216954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - 1).toNat ⌊(n : ℚ) / 2⌋.toNat + n * Nat.choose ((n : ℤ) - 1).toNat k)

end

end A230137.P2679246673592216954

namespace A230137

/-- `∑{#}[n-1, C(n-1, floor(n/2))+n*C(n-1, #)]` -/
def P2679246673592216954.Spec : Prop :=
  ∀ n, (P2679246673592216954.a n : ℤ) = A230137 n

end A230137

/-! ## A230137.P8788996589418551319

`n*(A011782(n)+A007318(A007590(n)))`
-/

namespace A230137.P8788996589418551319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011782 n + A007318 (A007590 n).toNat)

end

end A230137.P8788996589418551319

namespace A230137

/-- `n*(A011782(n)+A007318(A007590(n)))` -/
def P8788996589418551319.Spec : Prop :=
  ∀ n, P8788996589418551319.a n = A230137 n

end A230137

/-!
# A230138: List of those primes p with p + 2 and 2*p - 5 both prime.

The programs for A230138, the canonical program `A230138.P14470204290748473805` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230138 has offset 1).

The definition of A230138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230138.P14470204290748473805

`∩[A001359(n+1), A063909(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A230138

/-- `∩[A001359(n+1), A063909(n+1)]` -/
def P14470204290748473805.Spec : Prop :=
  ∀ n, (P14470204290748473805.a n : ℤ) = A230138 (n + 1)

theorem P14470204290748473805.correct : P14470204290748473805.Spec := by
  intro n
  simp only [A230138, Nat.add_sub_cancel]

end A230138

/-! ## A230138.P16934801087831208258

`∩[A063909(n+1), A141830(n+1)]`
-/

namespace A230138.P16934801087831208258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P16934801087831208258

namespace A230138

/-- `∩[A063909(n+1), A141830(n+1)]` -/
def P16934801087831208258.Spec : Prop :=
  ∀ n, (P16934801087831208258.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P7111091344341009366

`∩[A063909(n+1), A378983(n+1)]`
-/

namespace A230138.P7111091344341009366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P7111091344341009366

namespace A230138

/-- `∩[A063909(n+1), A378983(n+1)]` -/
def P7111091344341009366.Spec : Prop :=
  ∀ n, (P7111091344341009366.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P15427547155112247551

`∩[A054799(n+1), A063909(n+1)]`
-/

namespace A230138.P15427547155112247551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P15427547155112247551

namespace A230138

/-- `∩[A054799(n+1), A063909(n+1)]` -/
def P15427547155112247551.Spec : Prop :=
  ∀ n, (P15427547155112247551.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P7471264228530907732

`∩[A063700(n+1), A063909(n+1)]`
-/

namespace A230138.P7471264228530907732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P7471264228530907732

namespace A230138

/-- `∩[A063700(n+1), A063909(n+1)]` -/
def P7471264228530907732.Spec : Prop :=
  ∀ n, (P7471264228530907732.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P10697040853741339030

`∩[A063909(n+1), A111166(n+1)]`
-/

namespace A230138.P10697040853741339030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P10697040853741339030

namespace A230138

/-- `∩[A063909(n+1), A111166(n+1)]` -/
def P10697040853741339030.Spec : Prop :=
  ∀ n, (P10697040853741339030.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P9768889438374083173

`∩[A063909(n+1), A124588(n+1)]`
-/

namespace A230138.P9768889438374083173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P9768889438374083173

namespace A230138

/-- `∩[A063909(n+1), A124588(n+1)]` -/
def P9768889438374083173.Spec : Prop :=
  ∀ n, (P9768889438374083173.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P66278065434577304

`∩[A063909(n+1), A181747(n+1)]`
-/

namespace A230138.P66278065434577304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P66278065434577304

namespace A230138

/-- `∩[A063909(n+1), A181747(n+1)]` -/
def P66278065434577304.Spec : Prop :=
  ∀ n, (P66278065434577304.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P18402542709073957559

`∩[A063909(n+1), A238528(n+1)]`
-/

namespace A230138.P18402542709073957559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P18402542709073957559

namespace A230138

/-- `∩[A063909(n+1), A238528(n+1)]` -/
def P18402542709073957559.Spec : Prop :=
  ∀ n, (P18402542709073957559.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P13248360353337377953

`∩[A063909(n+1), A280255(n+1)]`
-/

namespace A230138.P13248360353337377953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P13248360353337377953

namespace A230138

/-- `∩[A063909(n+1), A280255(n+1)]` -/
def P13248360353337377953.Spec : Prop :=
  ∀ n, (P13248360353337377953.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P1272024283865077225

`∩[A063693(n+1), A063909(n+1)]`
-/

namespace A230138.P1272024283865077225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P1272024283865077225

namespace A230138

/-- `∩[A063693(n+1), A063909(n+1)]` -/
def P1272024283865077225.Spec : Prop :=
  ∀ n, (P1272024283865077225.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P18288529084569222457

`∩[A395788(n+1), A063909(n+1)]`
-/

namespace A230138.P18288529084569222457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P18288529084569222457

namespace A230138

/-- `∩[A395788(n+1), A063909(n+1)]` -/
def P18288529084569222457.Spec : Prop :=
  ∀ n, (P18288529084569222457.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P17022594501585919829

`∩[A063909(n+1), A073534(n+1)]`
-/

namespace A230138.P17022594501585919829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P17022594501585919829

namespace A230138

/-- `∩[A063909(n+1), A073534(n+1)]` -/
def P17022594501585919829.Spec : Prop :=
  ∀ n, (P17022594501585919829.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P11661514602212539374

`∩[A063909(n+1), A280590(n+1)]`
-/

namespace A230138.P11661514602212539374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P11661514602212539374

namespace A230138

/-- `∩[A063909(n+1), A280590(n+1)]` -/
def P11661514602212539374.Spec : Prop :=
  ∀ n, (P11661514602212539374.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P14764194757342639293

`∩[A001838(n+1), A063909(n+1)]`
-/

namespace A230138.P14764194757342639293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P14764194757342639293

namespace A230138

/-- `∩[A001838(n+1), A063909(n+1)]` -/
def P14764194757342639293.Spec : Prop :=
  ∀ n, (P14764194757342639293.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P5762976302311364140

`p?[A063911(n+1)-2]`
-/

namespace A230138.P5762976302311364140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063911 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230138.P5762976302311364140

namespace A230138

/-- `p?[A063911(n+1)-2]` -/
def P5762976302311364140.Spec : Prop :=
  ∀ n, P5762976302311364140.a n = A230138 (n + 1)

end A230138

/-! ## A230138.P7049058284245732312

`∩[A001097(n+1), A063909(n+1)]`
-/

namespace A230138.P7049058284245732312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P7049058284245732312

namespace A230138

/-- `∩[A001097(n+1), A063909(n+1)]` -/
def P7049058284245732312.Spec : Prop :=
  ∀ n, (P7049058284245732312.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P13051390577901307841

`∩[A063909(n+1), A171688(n+1)]`
-/

namespace A230138.P13051390577901307841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P13051390577901307841

namespace A230138

/-- `∩[A063909(n+1), A171688(n+1)]` -/
def P13051390577901307841.Spec : Prop :=
  ∀ n, (P13051390577901307841.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P11214579560143582801

`∩[A063909(n+1), A171821(n+1)]`
-/

namespace A230138.P11214579560143582801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P11214579560143582801

namespace A230138

/-- `∩[A063909(n+1), A171821(n+1)]` -/
def P11214579560143582801.Spec : Prop :=
  ∀ n, (P11214579560143582801.a n : ℤ) = A230138 (n + 1)

end A230138

/-! ## A230138.P13178930666384883772

`∩[A063909(n+1), A274212(n+1)]`
-/

namespace A230138.P13178930666384883772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230138.P13178930666384883772

namespace A230138

/-- `∩[A063909(n+1), A274212(n+1)]` -/
def P13178930666384883772.Spec : Prop :=
  ∀ n, (P13178930666384883772.a n : ℤ) = A230138 (n + 1)

end A230138

/-!
# A230139: Numbers n such that (17^n - 4^n)/13 is prime.

The programs for A230139, there is no canonical definition to state claims against.
-/

/-! ## A230139.P3687641934754902379

`∩[A001087(n+1), A045396(n+1)]`
-/

namespace A230139.P3687641934754902379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230139.P3687641934754902379

/-! ## A230139.P13329749977615061690

`∩[A001087(n+1), A045397(n+1)]`
-/

namespace A230139.P13329749977615061690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230139.P13329749977615061690

/-!
# A230140: Number of ways to write n = x + y + z with 0 < x <= y <= z such that 6*x-1, 6*y-1, 6*z-1 are among those primes p (terms of A230138) with p + 2 and 2*p - 5 also prime.

The programs for A230140, there is no canonical definition to state claims against.
-/

/-! ## A230140.P11751462421489578201

`A001221(A101333(n)+A002944(n+1))`
-/

namespace A230140.P11751462421489578201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A101333 n + A002944 (n + 1)).toNat

end

end A230140.P11751462421489578201

/-! ## A230140.P9315518245818279164

`A001221(A289048(n)-A242663(n+1))`
-/

namespace A230140.P9315518245818279164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A289048 n - A242663 (n + 1)).toNat

end

end A230140.P9315518245818279164

/-! ## A230140.P9150281995183199683

`A037800(xor(A001405(n), A006094(n+1)))`
-/

namespace A230140.P9150281995183199683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.xor (A001405 n) (A006094 (n + 1))).toNat

end

end A230140.P9150281995183199683

/-!
# A230143: Denominator of 1/u_n(1/2), where polynomial u_n(x) is used to approximate x->sin(Pi*x)/Pi.

The programs for A230143, there is no canonical definition to state claims against.
-/

/-! ## A230143.P9216582358329547012

`A014963(A359109(n))*A230145(n+1)`
-/

namespace A230143.P9216582358329547012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A359109 n).toNat * A230145 (n + 1)

end

end A230143.P9216582358329547012

/-! ## A230143.P1723788440961203817

`A230145(n+1)*A285706(A101098(n+1))`
-/

namespace A230143.P1723788440961203817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230145 (n + 1) * A285706 (A101098 (n + 1)).toNat

end

end A230143.P1723788440961203817

/-! ## A230143.P5951337675446303224

`A230145(n+1)*A285706(A011782(2*n))`
-/

namespace A230143.P5951337675446303224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230145 (n + 1) * A285706 (A011782 (2 * n)).toNat

end

end A230143.P5951337675446303224

/-! ## A230143.P11056343747998831962

`A094216(A096162(2*(n+1)))*A230145(n+1)`
-/

namespace A230143.P11056343747998831962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094216 (A096162 (2 * (n + 1))).toNat * A230145 (n + 1)

end

end A230143.P11056343747998831962

/-!
# A230145: Denominator of 1/v_n(1/2), where polynomial v_n(x) is used to approximate x->sin(Pi*x)/Pi.

The programs for A230145, there is no canonical definition to state claims against.
-/

/-! ## A230145.P12612950751226863930

`A230143(n+1)/A285706(A101098(n+1))`
-/

namespace A230145.P12612950751226863930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230143 (n + 1) : ℚ) / (A285706 (A101098 (n + 1)).toNat : ℚ)

end

end A230145.P12612950751226863930

/-! ## A230145.P8237663995354006950

`A230143(n+1)/A014963(A136092(n))`
-/

namespace A230145.P8237663995354006950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230143 (n + 1) : ℚ) / (A014963 (A136092 n).toNat : ℚ)

end

end A230145.P8237663995354006950

/-! ## A230145.P8436628542362039372

`A230143(n+1)/A212181(A108276(n))`
-/

namespace A230145.P8436628542362039372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230143 (n + 1) : ℚ) / (A212181 (A108276 n).toNat : ℚ)

end

end A230145.P8436628542362039372

/-!
# A230147: Record values in A165959.

The programs for A230147, there is no canonical definition to state claims against.
-/

/-! ## A230147.P10895986777981748293

`record[A165959(n+1)]`
-/

namespace A230147.P10895986777981748293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230147.P10895986777981748293

/-! ## A230147.P1799470573491246132

`A165959(A230146(n+1))`
-/

namespace A230147.P1799470573491246132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165959 (A230146 (n + 1)).toNat

end

end A230147.P1799470573491246132

/-! ## A230147.P18107393069787639221

`record[A039739(n+2)+A000007(n)]`
-/

namespace A230147.P18107393069787639221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039739 (n + 2) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230147.P18107393069787639221

/-! ## A230147.P10457001011864847127

`record[A039739(n+2)+A000122(n)]`
-/

namespace A230147.P10457001011864847127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039739 (n + 2) + A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230147.P10457001011864847127

/-! ## A230147.P12613091246650560830

`A151622(n)+record[A039739(n+2)]`
-/

namespace A230147.P12613091246650560830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230147.P12613091246650560830

/-!
# A230149: The number of multinomial coefficients over partitions with value equal to 5.

The programs for A230149, the canonical program `A230149.P1551189312521609856` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230149 has offset 1).

The definition of A230149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230149.P15771123762698918801

`ogf((x^5+x^6+x^7+2x^8)/(1-x^4-x^5+x^9))`
-/

namespace A230149.P15771123762698918801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 1, 1, 1, 2] [1, 0, 0, 0, -1, -1, 0, 0, 0, 1] n

end

end A230149.P15771123762698918801

namespace A230149

/-- `ogf((x^5+x^6+x^7+2x^8)/(1-x^4-x^5+x^9))` -/
def P15771123762698918801.Spec : Prop :=
  ∀ n, P15771123762698918801.a n = A230149 (n + 1)

end A230149

/-! ## A230149.P1551189312521609856

`floor(1/4*n)+floor(1/5*n)-floor(1/5*(n+1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230149

/-- `floor(1/4*n)+floor(1/5*n)-floor(1/5*(n+1))` -/
def P1551189312521609856.Spec : Prop :=
  ∀ n, P1551189312521609856.a n = A230149 (n + 1)

theorem P1551189312521609856.correct : P1551189312521609856.Spec := by
  intro n
  simp only [A230149, Nat.add_sub_cancel]

end A230149

/-! ## A230149.P14339943771821285444

`floor((n+1-gcd(5, n+1))/4)`
-/

namespace A230149.P14339943771821285444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) - (Nat.gcd 5 (n + 1) : ℤ) : ℚ) / 4⌋

end

end A230149.P14339943771821285444

namespace A230149

/-- `floor((n+1-gcd(5, n+1))/4)` -/
def P14339943771821285444.Spec : Prop :=
  ∀ n, P14339943771821285444.a n = A230149 (n + 1)

end A230149

/-! ## A230149.P10686978285372151763

`round(floor(n/4)-atan(val(n+1, 5)))`
-/

namespace A230149.P10686978285372151763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌊(n : ℚ) / 4⌋ : ℝ) - Real.arctan (SequenceMachineLib.valuation (n + 1) 5 : ℝ))

end

end A230149.P10686978285372151763

namespace A230149

/-- `round(floor(n/4)-atan(val(n+1, 5)))` -/
def P10686978285372151763.Spec : Prop :=
  ∀ n, P10686978285372151763.a n = A230149 (n + 1)

end A230149

/-! ## A230149.P8200265377482177307

`A002265(n-and(4, n%5))`
-/

namespace A230149.P8200265377482177307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n - Nat.land 4 (n % 5))

end

end A230149.P8200265377482177307

namespace A230149

/-- `A002265(n-and(4, n%5))` -/
def P8200265377482177307.Spec : Prop :=
  ∀ n, P8200265377482177307.a n = A230149 (n + 1)

end A230149

/-! ## A230149.P9449398326065201548

`abs(A002265(n)-Δ[A002266(n)])`
-/

namespace A230149.P9449398326065201548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002265 n - (f1 (n + 1) - f1 n)|

end

end A230149.P9449398326065201548

namespace A230149

/-- `abs(A002265(n)-Δ[A002266(n)])` -/
def P9449398326065201548.Spec : Prop :=
  ∀ n, P9449398326065201548.a n = A230149 (n + 1)

end A230149

/-!
# A230166: Terms of A222263 such that 2n/sigma(n) - 1 = 1/2^k, for some integer k.

The programs for A230166, there is no canonical definition to state claims against.
-/

/-! ## A230166.P6381908694055294552

`∩[A043305(n+1), A222263(n+1)]`
-/

namespace A230166.P6381908694055294552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230166.P6381908694055294552

/-! ## A230166.P12805588951871544032

`∩[A043305(n+1), A222264(n+1)]`
-/

namespace A230166.P12805588951871544032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230166.P12805588951871544032

/-! ## A230166.P10266007265169084748

`filter[A222263(n+1), A355943(#)]`
-/

namespace A230166.P10266007265169084748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355943 (f1 j).toNat = 1) n)

end

end A230166.P10266007265169084748

/-! ## A230166.P7919893972304324692

`filter[A222264(n+1), A355943(#)]`
-/

namespace A230166.P7919893972304324692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355943 (f1 j).toNat = 1) n)

end

end A230166.P7919893972304324692

/-! ## A230166.P11274377607187881704

`filter[A222263(n+1), A361465(#)]`
-/

namespace A230166.P11274377607187881704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361465 (f1 j).toNat = 1) n)

end

end A230166.P11274377607187881704

/-!
# A230168: Primes of the form 45*2^n - 1.

The programs for A230168, there is no canonical definition to state claims against.
-/

/-! ## A230168.P12314615093202913659

`p?[45*2^n-1]`
-/

namespace A230168.P12314615093202913659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * 2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230168.P12314615093202913659

/-! ## A230168.P14078824270050906615

`record[p?[or(1, 2*a(n-2))]]` with `a(0)=44, a(1)=4`
-/

namespace A230168.P14078824270050906615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [44, 4] fun n f2 =>
  Nat.lor 1 (2 * f2 (n - 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230168.P14078824270050906615

/-! ## A230168.P14522133271575075567

`record[p?[2*a(and(n, n-1))+1]]` with `a(0)=89`
-/

namespace A230168.P14522133271575075567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [89] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230168.P14522133271575075567

/-!
# A230169: Number of n X n 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230169, there is no canonical definition to state claims against.
-/

/-! ## A230169.P14181363112826523340

`A230176((n+1)²+n²)`
-/

namespace A230169.P14181363112826523340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 ((n + 1) ^ 2 + n ^ 2)

end

end A230169.P14181363112826523340

/-!
# A230170: Number of n X 2 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230170, there is no canonical definition to state claims against.
-/

/-! ## A230170.P3072603741056862627

`A230176(∑[n+1]+2)`
-/

namespace A230170.P3072603741056862627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230170.P3072603741056862627

/-! ## A230170.P18442147575558992779

`record[A010054(n)*A230176(n+2)]`
-/

namespace A230170.P18442147575558992779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230176 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230170.P18442147575558992779

/-! ## A230170.P6129593912815982302

`record[root(A230176(n+2), A193592(n))]`
-/

namespace A230170.P6129593912815982302
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A230176 (n + 2) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230170.P6129593912815982302

/-! ## A230170.P9929594914483698476

`record[lcm(A103452(n), A230176(n+2))]`
-/

namespace A230170.P9929594914483698476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103452 n) (A230176 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230170.P9929594914483698476

/-! ## A230170.P15997018145798840000

`record[gcd(A230176(n+2), A298177(n+1))]`
-/

namespace A230170.P15997018145798840000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230176 (n + 2)) (A298177 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230170.P15997018145798840000

/-!
# A230171: Number of n X 3 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230171, there is no canonical definition to state claims against.
-/

/-! ## A230171.P9834820141007542864

`A230176(∑[n+2]+4)`
-/

namespace A230171.P9834820141007542864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230171.P9834820141007542864

/-! ## A230171.P3485774408299321704

`or(1, A230176(A167614(n+1)))`
-/

namespace A230171.P3485774408299321704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A230176 (A167614 (n + 1)).toNat)

end

end A230171.P3485774408299321704

/-! ## A230171.P7156536209648410981

`A230176(A167614(n+1))+A061858(n)`
-/

namespace A230171.P7156536209648410981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A167614 (n + 1)).toNat + A061858 n

end

end A230171.P7156536209648410981

/-! ## A230171.P7021844471615846274

`A256974(n)+A230176(A167614(n+1))`
-/

namespace A230171.P7021844471615846274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A230176 (A167614 (n + 1)).toNat

end

end A230171.P7021844471615846274

/-! ## A230171.P1316146453800516317

`A230176(A167614(n+1))%A207474(n+1)`
-/

namespace A230171.P1316146453800516317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230176 (A167614 (n + 1)).toNat) (A207474 (n + 1))

end

end A230171.P1316146453800516317

/-!
# A230172: Number of n X 4 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230172, there is no canonical definition to state claims against.
-/

/-! ## A230172.P1424092412185176746

`A230176(A374004(n+1))`
-/

namespace A230172.P1424092412185176746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A374004 (n + 1)).toNat

end

end A230172.P1424092412185176746

/-! ## A230172.P11725623650028407592

`A230176(A052905(n)+9)`
-/

namespace A230172.P11725623650028407592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A052905 n + 9).toNat

end

end A230172.P11725623650028407592

/-! ## A230172.P12862756470803941355

`A230176(A055999(n)+10)`
-/

namespace A230172.P12862756470803941355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A055999 n + 10).toNat

end

end A230172.P12862756470803941355

/-! ## A230172.P8941770958186979028

`A230176(A167614(n+2)+1)`
-/

namespace A230172.P8941770958186979028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A167614 (n + 2) + 1).toNat

end

end A230172.P8941770958186979028

/-! ## A230172.P3939317347749671464

`A230176(A166136(n+2)-2)`
-/

namespace A230172.P3939317347749671464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A166136 (n + 2) - 2).toNat

end

end A230172.P3939317347749671464

/-!
# A230173: Number of nX5 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230173, there is no canonical definition to state claims against.
-/

/-! ## A230173.P14580206912390154379

`A230176(A374005(n+1))`
-/

namespace A230173.P14580206912390154379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A374005 (n + 1)).toNat

end

end A230173.P14580206912390154379

/-! ## A230173.P3008691400216679721

`A230176(eq[4, A002262(n)]+1)`
-/

namespace A230173.P3008691400216679721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230173.P3008691400216679721

/-! ## A230173.P3064773545888309059

`A230176(eq[6, A131818(n+1)])`
-/

namespace A230173.P3064773545888309059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230173.P3064773545888309059

/-! ## A230173.P17838880359286232753

`A230176(eq[4, A193592(n)])`
-/

namespace A230173.P17838880359286232753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230173.P17838880359286232753

/-! ## A230173.P10830652078161352907

`A230176(eq[5, A239144(n)])`
-/

namespace A230173.P10830652078161352907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230173.P10830652078161352907

/-!
# A230174: Number of nX6 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230174, there is no canonical definition to state claims against.
-/

/-! ## A230174.P11862365500905867928

`A230176(A374007(n+1))`
-/

namespace A230174.P11862365500905867928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A374007 (n + 1)).toNat

end

end A230174.P11862365500905867928

/-! ## A230174.P5564763697410135444

`A230176(A055999(n+3)+1)`
-/

namespace A230174.P5564763697410135444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A055999 (n + 3) + 1).toNat

end

end A230174.P5564763697410135444

/-! ## A230174.P13129751096774095291

`A230176(eq[8, A185782(n+1)])`
-/

namespace A230174.P13129751096774095291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230174.P13129751096774095291

/-! ## A230174.P14411574906944667806

`A230176(Δ[A023545(n+2)]-1)`
-/

namespace A230174.P14411574906944667806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (f1 (n + 1) - f1 n - 1).toNat

end

end A230174.P14411574906944667806

/-!
# A230175: Number of nX7 0..2 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230175, there is no canonical definition to state claims against.
-/

/-! ## A230175.P16253181953092372120

`A230176(A374008(n+1))`
-/

namespace A230175.P16253181953092372120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (A374008 (n + 1)).toNat

end

end A230175.P16253181953092372120

/-! ## A230175.P4786806506613041649

`A230176(eq[10, A185782(n+1)])`
-/

namespace A230175.P4786806506613041649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230175.P4786806506613041649

/-!
# A230177: Number of binary strings of length n avoiding "squares" (that is, repeated blocks of the form xx) with |x| > 3.

The programs for A230177, there is no canonical definition to state claims against.
-/

/-! ## A230177.P191071935702229308

`A000079(n)-A010413(A283920(n+1))`
-/

namespace A230177.P191071935702229308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A010413 (A283920 (n + 1)).toNat

end

end A230177.P191071935702229308

/-! ## A230177.P431437489934074044

`∏{e}[∏[∑[A046799(n)]], #+1]`
-/

namespace A230177.P431437489934074044
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A230177.P431437489934074044

/-! ## A230177.P16007919189780752392

`A061392(A062109(n))`
-/

namespace A230177.P16007919189780752392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A062109 n).toNat

end

end A230177.P16007919189780752392

/-! ## A230177.P17797863828733457424

`A131883(A001628(n))`
-/

namespace A230177.P17797863828733457424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A001628 n).toNat

end

end A230177.P17797863828733457424

/-! ## A230177.P13551410155466765306

`A131883(A048492(n))`
-/

namespace A230177.P13551410155466765306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A048492 n).toNat

end

end A230177.P13551410155466765306

/-!
# A230178: Number of n X n 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230178, there is no canonical definition to state claims against.
-/

/-! ## A230178.P10676442091963357610

`A230184(∑[4*n]+1)`
-/

namespace A230178.P10676442091963357610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230178.P10676442091963357610

/-!
# A230179: Number of n X 3 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230179, the canonical program `A230179.P4158157626050523683` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230179 has offset 1).

The definition of A230179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230179.P13975226901922598850

`ogf(3/(1-9x+4x^2))`
-/

namespace A230179.P13975226901922598850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -9, 4] n

end

end A230179.P13975226901922598850

namespace A230179

/-- `ogf(3/(1-9x+4x^2))` -/
def P13975226901922598850.Spec : Prop :=
  ∀ n, P13975226901922598850.a n = A230179 (n + 1)

end A230179

/-! ## A230179.P4158157626050523683

`9*a(n-1)-4*a(n-2)` with `a(0)=3, a(1)=27`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230179

/-- `9*a(n-1)-4*a(n-2)` -/
def P4158157626050523683.Spec : Prop :=
  ∀ n, P4158157626050523683.a n = A230179 (n + 1)

theorem P4158157626050523683.correct : P4158157626050523683.Spec := by
  intro n
  simp only [A230179, Nat.add_sub_cancel]

end A230179

/-! ## A230179.P6343367678611232171

`3*A190981(n+1)`
-/

namespace A230179.P6343367678611232171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A190981 (n + 1)

end

end A230179.P6343367678611232171

namespace A230179

/-- `3*A190981(n+1)` -/
def P6343367678611232171.Spec : Prop :=
  ∀ n, P6343367678611232171.a n = A230179 (n + 1)

end A230179

/-! ## A230179.P5143436498934939458

`A230647(2*n+3)`
-/

namespace A230179.P5143436498934939458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230647 (2 * n + 3)

end

end A230179.P5143436498934939458

namespace A230179

/-- `A230647(2*n+3)` -/
def P5143436498934939458.Spec : Prop :=
  ∀ n, P5143436498934939458.a n = A230179 (n + 1)

end A230179

/-! ## A230179.P298326852703075235

`record[A230647(A000265(n+1)+2)]`
-/

namespace A230179.P298326852703075235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230647 (A000265 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230179.P298326852703075235

namespace A230179

/-- `record[A230647(A000265(n+1)+2)]` -/
def P298326852703075235.Spec : Prop :=
  ∀ n, P298326852703075235.a n = A230179 (n + 1)

end A230179

/-!
# A230180: Number of n X 4 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230180, there is no canonical definition to state claims against.
-/

/-! ## A230180.P4106101526961281468

`A230184(A141214(n+1))`
-/

namespace A230180.P4106101526961281468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A141214 (n + 1)).toNat

end

end A230180.P4106101526961281468

/-! ## A230180.P1721275561063007020

`A230184(A055998(n+2))`
-/

namespace A230180.P1721275561063007020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A055998 (n + 2)).toNat

end

end A230180.P1721275561063007020

/-! ## A230180.P7052010065631975477

`A230184(A155212(n)+5)`
-/

namespace A230180.P7052010065631975477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A155212 n + 5).toNat

end

end A230180.P7052010065631975477

/-! ## A230180.P18156060197959215203

`A230184(A056000(n)+7)`
-/

namespace A230180.P18156060197959215203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A056000 n + 7).toNat

end

end A230180.P18156060197959215203

/-! ## A230180.P8997057850495297554

`A230184(Δ[A034857(n+1)])`
-/

namespace A230180.P8997057850495297554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (f1 (n + 1) - f1 n).toNat

end

end A230180.P8997057850495297554

/-!
# A230181: Number of nX5 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230181, there is no canonical definition to state claims against.
-/

/-! ## A230181.P15568245347898795038

`A230184(Δ[A264443(n)])`
-/

namespace A230181.P15568245347898795038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (f1 (n + 1) - f1 n).toNat

end

end A230181.P15568245347898795038

/-! ## A230181.P17401563164422406467

`A230184(A046691(n+3))`
-/

namespace A230181.P17401563164422406467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A046691 (n + 3)).toNat

end

end A230181.P17401563164422406467

/-! ## A230181.P308053803485167525

`A230184(eq[4, A193592(n)])`
-/

namespace A230181.P308053803485167525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230181.P308053803485167525

/-! ## A230181.P6416779540958080337

`A230184(Δ[A023545(n+1)])`
-/

namespace A230181.P6416779540958080337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (f1 (n + 1) - f1 n).toNat

end

end A230181.P6416779540958080337

/-! ## A230181.P598676318394386860

`A230184(A141214(n+2)-1)`
-/

namespace A230181.P598676318394386860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A141214 (n + 2) - 1).toNat

end

end A230181.P598676318394386860

/-!
# A230182: Number of nX6 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230182, there is no canonical definition to state claims against.
-/

/-! ## A230182.P13709770536456505470

`A230184(A052905(n+3))`
-/

namespace A230182.P13709770536456505470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A052905 (n + 3)).toNat

end

end A230182.P13709770536456505470

/-! ## A230182.P17772338328468900167

`A230184(eq[5, A193592(n)])`
-/

namespace A230182.P17772338328468900167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230182.P17772338328468900167

/-! ## A230182.P1345484426658853707

`A230184(A055999(n+3)+1)`
-/

namespace A230182.P1345484426658853707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A055999 (n + 3) + 1).toNat

end

end A230182.P1345484426658853707

/-! ## A230182.P6926578777649604852

`A230184(A155212(n+2)+3)`
-/

namespace A230182.P6926578777649604852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A155212 (n + 2) + 3).toNat

end

end A230182.P6926578777649604852

/-! ## A230182.P11705916021077453952

`A230184(eq[6, A200370(n+1)])`
-/

namespace A230182.P11705916021077453952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230182.P11705916021077453952

/-!
# A230183: Number of n X 7 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230183, there is no canonical definition to state claims against.
-/

/-! ## A230183.P4127727512492696192

`A230184(eq[7, A200370(n+1)])`
-/

namespace A230183.P4127727512492696192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230183.P4127727512492696192

/-!
# A230184: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230184, there is no canonical definition to state claims against.
-/

/-! ## A230184.P5682227881852958683

`A065331(3^n)%A144878(n+1)`
-/

namespace A230184.P5682227881852958683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065331 (3 ^ n)) (A144878 (n + 1))

end

end A230184.P5682227881852958683

/-! ## A230184.P8649920946441194433

`A195161(A000244(n))%A144878(n+1)`
-/

namespace A230184.P8649920946441194433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195161 (A000244 n).toNat) (A144878 (n + 1))

end

end A230184.P8649920946441194433

/-!
# A230185: Number of 2 X n 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230185, the canonical program `A230185.P6815631489354413527` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230185 has offset 1).

The definition of A230185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230185.P6815631489354413527

`ogf((9x-9x^2-12x^3-9x^4+9x^5)/(1-4x-7x^2-x^3+6x^4+5x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230185

/-- `ogf((9x-9x^2-12x^3-9x^4+9x^5)/(1-4x-7x^2-x^3+6x^4+5x^5))` -/
def P6815631489354413527.Spec : Prop :=
  ∀ n, P6815631489354413527.a n = A230185 (n + 1)

theorem P6815631489354413527.correct : P6815631489354413527.Spec := by
  intro n
  simp only [A230185, Nat.add_sub_cancel]

end A230185

/-! ## A230185.P4319111605538643171

`A230184(∑[n+1]+2)`
-/

namespace A230185.P4319111605538643171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230185.P4319111605538643171

namespace A230185

/-- `A230184(∑[n+1]+2)` -/
def P4319111605538643171.Spec : Prop :=
  ∀ n, P4319111605538643171.a n = A230185 (n + 1)

end A230185

/-! ## A230185.P5278372190444298051

`record[A230184(A130270(n+1)+2)]`
-/

namespace A230185.P5278372190444298051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230185.P5278372190444298051

namespace A230185

/-- `record[A230184(A130270(n+1)+2)]` -/
def P5278372190444298051.Spec : Prop :=
  ∀ n, P5278372190444298051.a n = A230185 (n + 1)

end A230185

/-! ## A230185.P15217580010764430014

`record[A230184(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A230185.P15217580010764430014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230185.P15217580010764430014

namespace A230185

/-- `record[A230184(A133263(∑[(-1)^(n%3)]))]` -/
def P15217580010764430014.Spec : Prop :=
  ∀ n, P15217580010764430014.a n = A230185 (n + 1)

end A230185

/-! ## A230185.P6832288620692568516

`record[A230184(A133263(val(n+1, 2)+1))]`
-/

namespace A230185.P6832288620692568516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230185.P6832288620692568516

namespace A230185

/-- `record[A230184(A133263(val(n+1, 2)+1))]` -/
def P6832288620692568516.Spec : Prop :=
  ∀ n, P6832288620692568516.a n = A230185 (n + 1)

end A230185

/-!
# A230186: Number of 3Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230186, there is no canonical definition to state claims against.
-/

/-! ## A230186.P6384616059339342810

`A230184(∑[n+2]+4)`
-/

namespace A230186.P6384616059339342810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230186.P6384616059339342810

/-! ## A230186.P5127293028690052557

`lcm(3, A230184(A167614(n+1)))`
-/

namespace A230186.P5127293028690052557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A230184 (A167614 (n + 1)).toNat)

end

end A230186.P5127293028690052557

/-! ## A230186.P5321052360793386168

`A057427(n)*A230184(A167614(n+1))`
-/

namespace A230186.P5321052360793386168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A230184 (A167614 (n + 1)).toNat

end

end A230186.P5321052360793386168

/-! ## A230186.P852755350225691333

`or(A038189(n), A230184(A167614(n+1)))`
-/

namespace A230186.P852755350225691333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038189 n) (A230184 (A167614 (n + 1)).toNat)

end

end A230186.P852755350225691333

/-! ## A230186.P7141147604578470246

`A007318(C(2, n))*A230184(A167614(n+1))`
-/

namespace A230186.P7141147604578470246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A230184 (A167614 (n + 1)).toNat

end

end A230186.P7141147604578470246

/-!
# A230187: Number of 4Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230187, there is no canonical definition to state claims against.
-/

/-! ## A230187.P7260603349356340564

`A230184(A141214(n)+7)`
-/

namespace A230187.P7260603349356340564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A141214 n + 7).toNat

end

end A230187.P7260603349356340564

/-! ## A230187.P10457354904131063716

`A230184(A052905(n)+9)`
-/

namespace A230187.P10457354904131063716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A052905 n + 9).toNat

end

end A230187.P10457354904131063716

/-! ## A230187.P5759922748180140229

`A230184(A055999(n)+10)`
-/

namespace A230187.P5759922748180140229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A055999 n + 10).toNat

end

end A230187.P5759922748180140229

/-! ## A230187.P9616310700306807052

`A230184(A167614(n+2)+1)`
-/

namespace A230187.P9616310700306807052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A167614 (n + 2) + 1).toNat

end

end A230187.P9616310700306807052

/-! ## A230187.P2795439663912814209

`A230184(A166136(n+2)-2)`
-/

namespace A230187.P2795439663912814209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A166136 (n + 2) - 2).toNat

end

end A230187.P2795439663912814209

/-!
# A230188: Number of 5Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230188, there is no canonical definition to state claims against.
-/

/-! ## A230188.P11786651324816469887

`A230184(A167499(n+3))`
-/

namespace A230188.P11786651324816469887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A167499 (n + 3)).toNat

end

end A230188.P11786651324816469887

/-! ## A230188.P1818685397734654177

`A230184(A155212(n)+13)`
-/

namespace A230188.P1818685397734654177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A155212 n + 13).toNat

end

end A230188.P1818685397734654177

/-! ## A230188.P13047545202049976981

`A230184(A056000(n)+15)`
-/

namespace A230188.P13047545202049976981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A056000 n + 15).toNat

end

end A230188.P13047545202049976981

/-! ## A230188.P11179060116001622477

`A230184(eq[7, A066657(n)])`
-/

namespace A230188.P11179060116001622477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230188.P11179060116001622477

/-! ## A230188.P9793257401100794860

`A230184(eq[6, A131818(n+1)])`
-/

namespace A230188.P9793257401100794860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230188.P9793257401100794860

/-!
# A230189: Number of 6Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230189, there is no canonical definition to state claims against.
-/

/-! ## A230189.P13928005741611908048

`A230184(A141214(n+2)+9)`
-/

namespace A230189.P13928005741611908048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A141214 (n + 2) + 9).toNat

end

end A230189.P13928005741611908048

/-! ## A230189.P1801135883709269073

`A230184(eq[7, A131818(n+1)])`
-/

namespace A230189.P1801135883709269073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230189.P1801135883709269073

/-! ## A230189.P7974982609250942609

`A230184(eq[3, A238802(n)]+9)`
-/

namespace A230189.P7974982609250942609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9)

end

end A230189.P7974982609250942609

/-! ## A230189.P12625005191006965131

`A230184(Δ[A023545(n+1)]+10)`
-/

namespace A230189.P12625005191006965131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (f1 (n + 1) - f1 n + 10).toNat

end

end A230189.P12625005191006965131

/-! ## A230189.P4052933343872050042

`A230184(A167499(n+2)+A020744(n+1))`
-/

namespace A230189.P4052933343872050042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A167499 (n + 2) + A020744 (n + 1)).toNat

end

end A230189.P4052933343872050042

/-!
# A230190: Number of 7Xn 0..2 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230190, there is no canonical definition to state claims against.
-/

/-! ## A230190.P15145151501860031243

`A230184(A166136(n+5)+1)`
-/

namespace A230190.P15145151501860031243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (A166136 (n + 5) + 1).toNat

end

end A230190.P15145151501860031243

/-! ## A230190.P15284756093366995533

`A230184(eq[8, A131818(n+1)])`
-/

namespace A230190.P15284756093366995533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230190.P15284756093366995533

/-!
# A230193: Numbers divisible by 3 or 11.

The programs for A230193, the canonical program `A230193.P4014985696572561360` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230193 has offset 1).

The definition of A230193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230193.P4014985696572561360

`lt[n, n*gcd(33, n)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230193

/-- `lt[n, n*gcd(33, n)]` -/
def P4014985696572561360.Spec : Prop :=
  ∀ n, (P4014985696572561360.a n : ℤ) = A230193 (n + 1)

theorem P4014985696572561360.correct : P4014985696572561360.Spec := by
  intro n
  simp only [A230193, Nat.add_sub_cancel]

end A230193

/-! ## A230193.P3298929514541787165

`comp[lcm(n*n²%3, round(sin((n^5)%11)))]`
-/

namespace A230193.P3298929514541787165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n * (n ^ 2 % 3) : ℕ) : ℤ) (SequenceMachineLib.roundAway (Real.sin ((n ^ 5 % 11 : ℕ) : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230193.P3298929514541787165

namespace A230193

/-- `comp[lcm(n*n²%3, round(sin((n^5)%11)))]` -/
def P3298929514541787165.Spec : Prop :=
  ∀ n, (P3298929514541787165.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P1501324903761709821

`record[A230215(n+2)-A168200(n+2)]`
-/

namespace A230193.P1501324903761709821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230215 (n + 2) - A168200 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230193.P1501324903761709821

namespace A230193

/-- `record[A230215(n+2)-A168200(n+2)]` -/
def P1501324903761709821.Spec : Prop :=
  ∀ n, P1501324903761709821.a n = A230193 (n + 1)

end A230193

/-! ## A230193.P8574496032938159008

`record[A230215(n+1)%A168200(n+1)]`
-/

namespace A230193.P8574496032938159008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230215 (n + 1)) (A168200 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230193.P8574496032938159008

namespace A230193

/-- `record[A230215(n+1)%A168200(n+1)]` -/
def P8574496032938159008.Spec : Prop :=
  ∀ n, P8574496032938159008.a n = A230193 (n + 1)

end A230193

/-! ## A230193.P4610191768267427661

`lt[(n*A391502(n)+1)²-n, 1]`
-/

namespace A230193.P4610191768267427661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A391502 n + 1) ^ 2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230193.P4610191768267427661

namespace A230193

/-- `lt[(n*A391502(n)+1)²-n, 1]` -/
def P4610191768267427661.Spec : Prop :=
  ∀ n, (P4610191768267427661.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P14338810348699156540

`eq[A130706(n), A391502(n)]`
-/

namespace A230193.P14338810348699156540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P14338810348699156540

namespace A230193

/-- `eq[A130706(n), A391502(n)]` -/
def P14338810348699156540.Spec : Prop :=
  ∀ n, (P14338810348699156540.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P9013219892467281684

`eq[A166926(n), A391502(n)]`
-/

namespace A230193.P9013219892467281684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P9013219892467281684

namespace A230193

/-- `eq[A166926(n), A391502(n)]` -/
def P9013219892467281684.Spec : Prop :=
  ∀ n, (P9013219892467281684.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P17646309188525349376

`eq[A167891(n), A391502(n)]`
-/

namespace A230193.P17646309188525349376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P17646309188525349376

namespace A230193

/-- `eq[A167891(n), A391502(n)]` -/
def P17646309188525349376.Spec : Prop :=
  ∀ n, (P17646309188525349376.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P2179114991615152655

`eq[A169585(n), A391502(n)]`
-/

namespace A230193.P2179114991615152655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P2179114991615152655

namespace A230193

/-- `eq[A169585(n), A391502(n)]` -/
def P2179114991615152655.Spec : Prop :=
  ∀ n, (P2179114991615152655.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P13618372497753288973

`lt[A106612(A106610(n)), n]`
-/

namespace A230193.P13618372497753288973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A106610 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230193.P13618372497753288973

namespace A230193

/-- `lt[A106612(A106610(n)), n]` -/
def P13618372497753288973.Spec : Prop :=
  ∀ n, (P13618372497753288973.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P2790082200926645420

`lt[A145568(n), A088439(n)]`
-/

namespace A230193.P2790082200926645420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230193.P2790082200926645420

namespace A230193

/-- `lt[A145568(n), A088439(n)]` -/
def P2790082200926645420.Spec : Prop :=
  ∀ n, (P2790082200926645420.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P7871426043235045381

`eq[A154955(n+1), A391502(n)]`
-/

namespace A230193.P7871426043235045381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P7871426043235045381

namespace A230193

/-- `eq[A154955(n+1), A391502(n)]` -/
def P7871426043235045381.Spec : Prop :=
  ∀ n, (P7871426043235045381.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P18127229826821608084

`eq[A173012(n+1), A391502(n)]`
-/

namespace A230193.P18127229826821608084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P18127229826821608084

namespace A230193

/-- `eq[A173012(n+1), A391502(n)]` -/
def P18127229826821608084.Spec : Prop :=
  ∀ n, (P18127229826821608084.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P11051410684214764557

`eq[A285476(n), A391502(n)]`
-/

namespace A230193.P11051410684214764557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P11051410684214764557

namespace A230193

/-- `eq[A285476(n), A391502(n)]` -/
def P11051410684214764557.Spec : Prop :=
  ∀ n, (P11051410684214764557.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P6618347362700735106

`eq[A099890(n), A391502(n)]`
-/

namespace A230193.P6618347362700735106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P6618347362700735106

namespace A230193

/-- `eq[A099890(n), A391502(n)]` -/
def P6618347362700735106.Spec : Prop :=
  ∀ n, (P6618347362700735106.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P6624946384724798664

`lt[A109047(A109052(n)-n), A109052(n)]`
-/

namespace A230193.P6624946384724798664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109047 (A109052 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230193.P6624946384724798664

namespace A230193

/-- `lt[A109047(A109052(n)-n), A109052(n)]` -/
def P6624946384724798664.Spec : Prop :=
  ∀ n, (P6624946384724798664.a n : ℤ) = A230193 (n + 1)

end A230193

/-! ## A230193.P731787784874619966

`eq[A119522(n+1), A391502(n)]`
-/

namespace A230193.P731787784874619966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230193.P731787784874619966

namespace A230193

/-- `eq[A119522(n+1), A391502(n)]` -/
def P731787784874619966.Spec : Prop :=
  ∀ n, (P731787784874619966.a n : ℤ) = A230193 (n + 1)

end A230193

/-!
# A230195: Integer areas A of the triangles such that A and the sides are integers, and the length of the inradius is a prime number.

The programs for A230195, there is no canonical definition to state claims against.
-/

/-! ## A230195.P4335335072933282884

`A188158(lt[A112932(3*n+1), A049691(n)])`
-/

namespace A230195.P4335335072933282884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112932 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188158 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A230195.P4335335072933282884

/-! ## A230195.P9434188597317474575

`∩[A184425(n+1), A228383(n+1)]`
-/

namespace A230195.P9434188597317474575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230195.P9434188597317474575

/-! ## A230195.P17228912965805199076

`A228383(A029731(n+1)+2)`
-/

namespace A230195.P17228912965805199076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (A029731 (n + 1) + 2).toNat

end

end A230195.P17228912965805199076

/-! ## A230195.P3957199104590294282

`A228383(A029967(n+1)+2)`
-/

namespace A230195.P3957199104590294282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (A029967 (n + 1) + 2).toNat

end

end A230195.P3957199104590294282

/-! ## A230195.P13901282520395316459

`A228383(A029969(n+1)+2)`
-/

namespace A230195.P13901282520395316459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (A029969 (n + 1) + 2).toNat

end

end A230195.P13901282520395316459

/-!
# A230196: Number of pairs (p,q) such that 2*p + 3*q = n and p != q.

The programs for A230196, the canonical program `A230196.P14601525591634332718` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230196 has offset 1).

The definition of A230196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230196.P1660501970820202711

`ogf((x^6+2x^7+2x^8)/(1+x-x^3-x^4-x^5-x^6+x^8+x^9))`
-/

namespace A230196.P1660501970820202711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 0, 1, 2, 2] [1, 1, 0, -1, -1, -1, -1, 0, 1, 1] n

end

end A230196.P1660501970820202711

namespace A230196

/-- `ogf((x^6+2x^7+2x^8)/(1+x-x^3-x^4-x^5-x^6+x^8+x^9))` -/
def P1660501970820202711.Spec : Prop :=
  ∀ n, P1660501970820202711.a n = A230196 (n + 1)

end A230196

/-! ## A230196.P14601525591634332718

`floor((n-2)/2)-floor((n-2)/3)+floor(n/5)-floor((n+1)/5)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230196

/-- `floor((n-2)/2)-floor((n-2)/3)+floor(n/5)-floor((n+1)/5)` -/
def P14601525591634332718.Spec : Prop :=
  ∀ n, P14601525591634332718.a n = A230196 (n + 1)

theorem P14601525591634332718.correct : P14601525591634332718.Spec := by
  intro n
  simp only [A230196, Nat.add_sub_cancel]

end A230196

/-! ## A230196.P12292114787457596708

`Δ[A001399(n+1)-A047253(n+1)]`
-/

namespace A230196.P12292114787457596708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) - A047253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230196.P12292114787457596708

namespace A230196

/-- `Δ[A001399(n+1)-A047253(n+1)]` -/
def P12292114787457596708.Spec : Prop :=
  ∀ n, P12292114787457596708.a n = A230196 (n + 1)

end A230196

/-! ## A230196.P13990914163477378385

`A399985(A230258(n+1)%A399970(n+1))`
-/

namespace A230196.P13990914163477378385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399985 (Int.tmod (A230258 (n + 1)) (A399970 (n + 1))).toNat

end

end A230196.P13990914163477378385

namespace A230196

/-- `A399985(A230258(n+1)%A399970(n+1))` -/
def P13990914163477378385.Spec : Prop :=
  ∀ n, P13990914163477378385.a n = A230196 (n + 1)

end A230196

/-!
# A230197: The number of multinomial coefficients over partitions with value equal to 7.

The programs for A230197, the canonical program `A230197.P10822127407575057338` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230197 has offset 1).

The definition of A230197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230197.P10822127407575057338

`floor(n*1/6)+floor(n*1/7)-floor(1/7*(n+1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230197

/-- `floor(n*1/6)+floor(n*1/7)-floor(1/7*(n+1))` -/
def P10822127407575057338.Spec : Prop :=
  ∀ n, P10822127407575057338.a n = A230197 (n + 1)

theorem P10822127407575057338.correct : P10822127407575057338.Spec := by
  intro n
  simp only [A230197, Nat.add_sub_cancel]

end A230197

/-! ## A230197.P5633887079617840684

`ogf((x^7+x^8+x^9+x^10+x^11+2x^12)/(1-x^6-x^7+x^13))`
-/

namespace A230197.P5633887079617840684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2] [1, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 1] n

end

end A230197.P5633887079617840684

namespace A230197

/-- `ogf((x^7+x^8+x^9+x^10+x^11+2x^12)/(1-x^6-x^7+x^13))` -/
def P5633887079617840684.Spec : Prop :=
  ∀ n, P5633887079617840684.a n = A230197 (n + 1)

end A230197

/-! ## A230197.P11065546659485011826

`floor((n+1-gcd(7, n+1))/6)`
-/

namespace A230197.P11065546659485011826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) - (Nat.gcd 7 (n + 1) : ℤ) : ℚ) / 6⌋

end

end A230197.P11065546659485011826

namespace A230197

/-- `floor((n+1-gcd(7, n+1))/6)` -/
def P11065546659485011826.Spec : Prop :=
  ∀ n, P11065546659485011826.a n = A230197 (n + 1)

end A230197

/-! ## A230197.P1426333642701078495

`(A047368(n+1)+char[A047368(n+2)])%(n+1)`
-/

namespace A230197.P1426333642701078495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047368 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A230197.P1426333642701078495

namespace A230197

/-- `(A047368(n+1)+char[A047368(n+2)])%(n+1)` -/
def P1426333642701078495.Spec : Prop :=
  ∀ n, P1426333642701078495.a n = A230197 (n + 1)

end A230197

/-! ## A230197.P10283830183091275714

`Δ[A275673(n+1)-A004777(n+1)]`
-/

namespace A230197.P10283830183091275714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275673 (n + 1) - A004777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230197.P10283830183091275714

namespace A230197

/-- `Δ[A275673(n+1)-A004777(n+1)]` -/
def P10283830183091275714.Spec : Prop :=
  ∀ n, P10283830183091275714.a n = A230197 (n + 1)

end A230197

/-!
# A230198: The number of multinomial coefficients over partitions with value equal to 8.

The programs for A230198, the canonical program `A230198.P15707358100290472068` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230198 has offset 1).

The definition of A230198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230198.P15707358100290472068

`floor(n*1/7)+floor(n*1/8)-floor(1/8*(n+1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230198

/-- `floor(n*1/7)+floor(n*1/8)-floor(1/8*(n+1))` -/
def P15707358100290472068.Spec : Prop :=
  ∀ n, P15707358100290472068.a n = A230198 (n + 1)

theorem P15707358100290472068.correct : P15707358100290472068.Spec := by
  intro n
  simp only [A230198, Nat.add_sub_cancel]

end A230198

/-! ## A230198.P4268664239670506140

`(A004777(n+1)+char[A004777(n+2)])%(n+1)`
-/

namespace A230198.P4268664239670506140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004777 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A230198.P4268664239670506140

namespace A230198

/-- `(A004777(n+1)+char[A004777(n+2)])%(n+1)` -/
def P4268664239670506140.Spec : Prop :=
  ∀ n, P4268664239670506140.a n = A230198 (n + 1)

end A230198

/-! ## A230198.P6115484649354288071

`A230257(A342851(n+3))%A135850(A135850(n+1))`
-/

namespace A230198.P6115484649354288071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230257 (A342851 (n + 3)).toNat) (A135850 (A135850 (n + 1)).toNat)

end

end A230198.P6115484649354288071

namespace A230198

/-- `A230257(A342851(n+3))%A135850(A135850(n+1))` -/
def P6115484649354288071.Spec : Prop :=
  ∀ n, P6115484649354288071.a n = A230198 (n + 1)

end A230198

/-! ## A230198.P7246500367466758922

`A230257(A342851(n+3))%A070952(A048333(n))`
-/

namespace A230198.P7246500367466758922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230257 (A342851 (n + 3)).toNat) (A070952 (A048333 n).toNat)

end

end A230198.P7246500367466758922

namespace A230198

/-- `A230257(A342851(n+3))%A070952(A048333(n))` -/
def P7246500367466758922.Spec : Prop :=
  ∀ n, P7246500367466758922.a n = A230198 (n + 1)

end A230198

/-!
# A230199: Sum of digits of n-th palindromic prime.

The programs for A230199, there is no canonical definition to state claims against.
-/

/-! ## A230199.P15592867541906357751

`A007953(A002385(n+1))`
-/

namespace A230199.P15592867541906357751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002385 (n + 1)).toNat

end

end A230199.P15592867541906357751

/-! ## A230199.P16209382874863664215

`∑{digits}[A002385(n+1), #]`
-/

namespace A230199.P16209382874863664215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230199.P16209382874863664215

/-! ## A230199.P8641015969365221456

`∑{digits}[A083139(n+1), #]`
-/

namespace A230199.P8641015969365221456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230199.P8641015969365221456

/-! ## A230199.P568744830061643111

`∑{digits}[∩[A072299(n+1), A265641(n+1)], #]`
-/

namespace A230199.P568744830061643111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A230199.P568744830061643111

/-! ## A230199.P9219970701942626692

`∑{digits}[record[A002385(A065648(n))], #]`
-/

namespace A230199.P9219970701942626692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230199.P9219970701942626692

/-! ## A230199.P16447414369259223132

`∑{digits}[A069217(n+2), #]`
-/

namespace A230199.P16447414369259223132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230199.P16447414369259223132

/-! ## A230199.P14639708152683657902

`∑{digits}[p?[A002113(n+1)], #]`
-/

namespace A230199.P14639708152683657902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230199.P14639708152683657902

/-! ## A230199.P18398831548112463947

`∑{digits}[p?[A061917(n+1)], #]`
-/

namespace A230199.P18398831548112463947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230199.P18398831548112463947

/-! ## A230199.P5453143261915754469

`∑{digits}[p?[A072299(n+1)], #]`
-/

namespace A230199.P5453143261915754469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230199.P5453143261915754469

/-! ## A230199.P11354849334926421128

`∑{digits}[p?[A327325(n+1)], #]`
-/

namespace A230199.P11354849334926421128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230199.P11354849334926421128

/-! ## A230199.P13934897733381249023

`A007605(A075807(n+1))`
-/

namespace A230199.P13934897733381249023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A075807 (n + 1)).toNat

end

end A230199.P13934897733381249023

