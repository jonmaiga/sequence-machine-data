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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A185001: Numbers k with the property that their basins (as defined in A204539) are 2.

The programs for A185001, there is no canonical definition to state claims against.
-/

/-! ## A185001.P12192051573728506969

`eq[4, A028913(n)]+2`
-/

namespace A185001.P12192051573728506969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A185001.P12192051573728506969

/-! ## A185001.P2569133521924550944

`eq[2, A028914(n+1)]+3`
-/

namespace A185001.P2569133521924550944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028914 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A185001.P2569133521924550944

/-! ## A185001.P901159925765464608

`eq[2, A204539(n+2)]+2`
-/

namespace A185001.P901159925765464608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204539 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A185001.P901159925765464608

/-! ## A185001.P14606547007910893768

`eq[4, A028913(A289207(n))]`
-/

namespace A185001.P14606547007910893768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185001.P14606547007910893768

/-! ## A185001.P10522334251158855863

`eq[2, A204539(A233583(n+1))]`
-/

namespace A185001.P10522334251158855863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204539 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185001.P10522334251158855863

/-!
# A185002: Numbers k such that P(k^2+1) > P((k+1)^2+1) where P(n) (A006530) is the largest prime factor of n.

The programs for A185002, the canonical program `A185002.P14315276868255119374` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185002 has offset 1).

The definition of A185002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185002.P14315276868255119374

`lt[A014442(n+2), A014442(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A185002

/-- `lt[A014442(n+2), A014442(n+1)]+1` -/
def P14315276868255119374.Spec : Prop :=
  ∀ n, (P14315276868255119374.a n : ℤ) = A185002 (n + 1)

theorem P14315276868255119374.correct : P14315276868255119374.Spec := by
  intro n
  simp only [A185002, Nat.add_sub_cancel]

end A185002

/-! ## A185002.P12467210389767293621

`lt[A250069(n+2), A250069(n+1)]+1`
-/

namespace A185002.P12467210389767293621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A185002.P12467210389767293621

namespace A185002

/-- `lt[A250069(n+2), A250069(n+1)]+1` -/
def P12467210389767293621.Spec : Prop :=
  ∀ n, (P12467210389767293621.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P16029422093304555236

`lt[A014442(n+1), A014442(A028310(n))]`
-/

namespace A185002.P16029422093304555236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185002.P16029422093304555236

namespace A185002

/-- `lt[A014442(n+1), A014442(A028310(n))]` -/
def P16029422093304555236.Spec : Prop :=
  ∀ n, (P16029422093304555236.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P3533488179101868194

`lt[A250069(n+1), A250069(A028310(n))]`
-/

namespace A185002.P3533488179101868194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185002.P3533488179101868194

namespace A185002

/-- `lt[A250069(n+1), A250069(A028310(n))]` -/
def P3533488179101868194.Spec : Prop :=
  ∀ n, (P3533488179101868194.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P7300857832019472256

`lt[A248746(n+1), A248746(A028310(n))]`
-/

namespace A185002.P7300857832019472256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248746 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185002.P7300857832019472256

namespace A185002

/-- `lt[A248746(n+1), A248746(A028310(n))]` -/
def P7300857832019472256.Spec : Prop :=
  ∀ n, (P7300857832019472256.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P15965598283665680682

`lt[A014442(n+1), A006530(A002522(n))]`
-/

namespace A185002.P15965598283665680682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002522 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185002.P15965598283665680682

namespace A185002

/-- `lt[A014442(n+1), A006530(A002522(n))]` -/
def P15965598283665680682.Spec : Prop :=
  ∀ n, (P15965598283665680682.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P17027624849653896139

`lt[A250069(n+1)+1, A006530(A002522(n))]`
-/

namespace A185002.P17027624849653896139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002522 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185002.P17027624849653896139

namespace A185002

/-- `lt[A250069(n+1)+1, A006530(A002522(n))]` -/
def P17027624849653896139.Spec : Prop :=
  ∀ n, (P17027624849653896139.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P15476488042398277941

`lt[Δ[A006530(n²+1)]+1, 1]`
-/

namespace A185002.P15476488042398277941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A185002.P15476488042398277941

namespace A185002

/-- `lt[Δ[A006530(n²+1)]+1, 1]` -/
def P15476488042398277941.Spec : Prop :=
  ∀ n, (P15476488042398277941.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P16355104608157239961

`lt[Δ[A006530(n²+1)], A010052(n)]`
-/

namespace A185002.P16355104608157239961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A185002.P16355104608157239961

namespace A185002

/-- `lt[Δ[A006530(n²+1)], A010052(n)]` -/
def P16355104608157239961.Spec : Prop :=
  ∀ n, (P16355104608157239961.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P1519365907754951684

`lt[Δ[A249547(A061395(n²+1)+n)], 3]`
-/

namespace A185002.P1519365907754951684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 (A061395 (n ^ 2 + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A185002.P1519365907754951684

namespace A185002

/-- `lt[Δ[A249547(A061395(n²+1)+n)], 3]` -/
def P1519365907754951684.Spec : Prop :=
  ∀ n, (P1519365907754951684.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P10318202552525659331

`lt[Δ[A006046(A061395(n²+1)+n+2)], 2]`
-/

namespace A185002.P10318202552525659331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A061395 (n ^ 2 + 1) + (n + 2 : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A185002.P10318202552525659331

namespace A185002

/-- `lt[Δ[A006046(A061395(n²+1)+n+2)], 2]` -/
def P10318202552525659331.Spec : Prop :=
  ∀ n, (P10318202552525659331.a n : ℤ) = A185002 (n + 1)

end A185002

/-! ## A185002.P9690180872719600542

`lt[A006530((n+1)²+1), A006530(A002522(n))]`
-/

namespace A185002.P9690180872719600542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002522 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185002.P9690180872719600542

namespace A185002

/-- `lt[A006530((n+1)²+1), A006530(A002522(n))]` -/
def P9690180872719600542.Spec : Prop :=
  ∀ n, (P9690180872719600542.a n : ℤ) = A185002 (n + 1)

end A185002

/-!
# A185003: a(n) = Sum_{k=1..n} binomial(n,k)*sigma(k).

The programs for A185003, the canonical program `A185003.P242712836508942151` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185003 has offset 1).

The definition of A185003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+1, #+1)*A000203(#+1)]` (program `A185003.P242712836508942151`, by `A185003.P242712836508942151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185003.P1504583125907441298

`A222115(n+1)-1`
-/

namespace A185003.P1504583125907441298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222115 (n + 1) - 1

end

end A185003.P1504583125907441298

namespace A185003

/-- `A222115(n+1)-1` -/
def P1504583125907441298.Spec : Prop :=
  ∀ n, P1504583125907441298.a n = A185003 (n + 1)

theorem P1504583125907441298.correct : P1504583125907441298.Spec := by
  intro n
  simp only [A185003, Nat.add_sub_cancel, A185003.P1504583125907441298.a, A185003.P242712836508942151.f1, A185003.P242712836508942151.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A222115, A222115.P291121289829346163.f1, A222115.P291121289829346163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185003

/-! ## A185003.P242712836508942151

`∑{#}[n, C(n+1, #+1)*A000203(#+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185003

/-- `∑{#}[n, C(n+1, #+1)*A000203(#+1)]` -/
def P242712836508942151.Spec : Prop :=
  ∀ n, P242712836508942151.a n = A185003 (n + 1)

theorem P242712836508942151.correct : P242712836508942151.Spec := by
  intro n
  simp only [A185003, Nat.add_sub_cancel]

end A185003

/-! ## A185003.P5318289963915782932

`∑[A131046(n+1)]`
-/

namespace A185003.P5318289963915782932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185003.P5318289963915782932

namespace A185003

/-- `∑[A131046(n+1)]` -/
def P5318289963915782932.Spec : Prop :=
  ∀ n, P5318289963915782932.a n = A185003 (n + 1)

end A185003

/-! ## A185003.P16101205296663640314

`abs(A222115(n+1)+A008683(A031393(n+1)))`
-/

namespace A185003.P16101205296663640314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A222115 (n + 1) + A008683 (A031393 (n + 1)).toNat|

end

end A185003.P16101205296663640314

namespace A185003

/-- `abs(A222115(n+1)+A008683(A031393(n+1)))` -/
def P16101205296663640314.Spec : Prop :=
  ∀ n, P16101205296663640314.a n = A185003 (n + 1)

end A185003

/-! ## A185003.P153072970336086179

`abs(A222115(n+1)+A106470(A319101(n+1)))`
-/

namespace A185003.P153072970336086179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A222115 (n + 1) + A106470 (A319101 (n + 1)).toNat|

end

end A185003.P153072970336086179

namespace A185003

/-- `abs(A222115(n+1)+A106470(A319101(n+1)))` -/
def P153072970336086179.Spec : Prop :=
  ∀ n, P153072970336086179.a n = A185003 (n + 1)

end A185003

/-! ## A185003.P15912876769459370242

`A291914(A031393(n+1))+A222115(n+1)`
-/

namespace A185003.P15912876769459370242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A031393 (n + 1)).toNat + A222115 (n + 1)

end

end A185003.P15912876769459370242

namespace A185003

/-- `A291914(A031393(n+1))+A222115(n+1)` -/
def P15912876769459370242.Spec : Prop :=
  ∀ n, P15912876769459370242.a n = A185003 (n + 1)

end A185003

/-! ## A185003.P8724485745758531545

`abs(A222115(n+1)+A033999(A000960(n+1)))`
-/

namespace A185003.P8724485745758531545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A222115 (n + 1) + A033999 (A000960 (n + 1)).toNat|

end

end A185003.P8724485745758531545

namespace A185003

/-- `abs(A222115(n+1)+A033999(A000960(n+1)))` -/
def P8724485745758531545.Spec : Prop :=
  ∀ n, P8724485745758531545.a n = A185003 (n + 1)

end A185003

/-!
# A185004: Ramanujan modulo primes R_(3,1)(n): a(n) is the smallest number such that if x >= a(n), then pi_(3,1)(x) - pi_(3,1)(x/2) >= n, where pi_(3,1)(x) is the number of primes==1 (mod 3) <= x.

The programs for A185004, there is no canonical definition to state claims against.
-/

/-! ## A185004.P12733196853906067252

`A107925(eq[3, A087061(n+4)])`
-/

namespace A185004.P12733196853906067252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185004.P12733196853906067252

/-! ## A185004.P5609147943672515116

`A272404(or(A003144(n+1), A006720(n)))`
-/

namespace A185004.P5609147943672515116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272404 (Int.lor (A003144 (n + 1)) (A006720 n)).toNat

end

end A185004.P5609147943672515116

/-!
# A185005: Ramanujan primes R_(3,2)(n): a(n) is the smallest number such that if x >= a(n), then pi_(3,2)(x) - pi_(3,2)(x/2) >= n, where pi_(3,2)(x) is the number of primes==2 (mod 3) <= x.

The programs for A185005, there is no canonical definition to state claims against.
-/

/-! ## A185005.P3873017818561917511

`A068231(A172540(n+1)+A031942(n+1))`
-/

namespace A185005.P3873017818561917511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (A172540 (n + 1) + A031942 (n + 1)).toNat

end

end A185005.P3873017818561917511

/-! ## A185005.P17116091618597253801

`A068231(A344341(n+1)%A134587(n+1))`
-/

namespace A185005.P17116091618597253801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (Int.tmod (A344341 (n + 1)) (A134587 (n + 1))).toNat

end

end A185005.P17116091618597253801

/-! ## A185005.P14736430761034438255

`A068231(lt[A000032(n), A082795(n+1)]+1)`
-/

namespace A185005.P14736430761034438255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A185005.P14736430761034438255

/-!
# A185006: Ramanujan primes R_(4,1)(n): a(n) is the smallest number such that if x >= a(n), then pi_(4,1)(x) - pi_(4,1)(x/2) >= n, where pi_(4,1)(x) is the number of primes==1 (mod 4) <= x.

The programs for A185006, there is no canonical definition to state claims against.
-/

/-! ## A185006.P10653425740125092883

`p?[or(A087253(3*n+5), A308416(3*n+5))]`
-/

namespace A185006.P10653425740125092883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087253 (3 * n + 5)) (A308416 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185006.P10653425740125092883

/-! ## A185006.P7508036442112815038

`A309588(eq[A010054(n), A308920(n)])`
-/

namespace A185006.P7508036442112815038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309588 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A185006.P7508036442112815038

/-! ## A185006.P16942177071706585148

`A002144(A187840(n+1)^A238019(n+2))`
-/

namespace A185006.P16942177071706585148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.roundAway ((A187840 (n + 1) : ℚ) ^ (A238019 (n + 2) : ℤ))).toNat

end

end A185006.P16942177071706585148

/-!
# A185007: Ramanujan primes R_(4,3)(n): a(n) is the smallest number such that if x >= a(n), then pi_(4,3)(x) - pi_(4,3)(x/2) >= n, where pi_(4,3)(x) is the number of primes==3 (mod 4) <= x.

The programs for A185007, there is no canonical definition to state claims against.
-/

/-! ## A185007.P16850258349125359340

`∩[A173757(n+1), A243009(n+1)]`
-/

namespace A185007.P16850258349125359340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185007.P16850258349125359340

/-! ## A185007.P11974986011800013405

`p?[or(A344150(n+5), A344155(3*(n+1)))]`
-/

namespace A185007.P11974986011800013405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A344150 (n + 5)) (A344155 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185007.P11974986011800013405

/-!
# A185008: Next semiprime after 10*n.

The programs for A185008, there is no canonical definition to state claims against.
-/

/-! ## A185008.P9495416841222775557

`A218643(∑[n+2])`
-/

namespace A185008.P9495416841222775557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218643 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185008.P9495416841222775557

/-! ## A185008.P9292316136602815513

`filter[A218643(n+1), A064911(#)]`
-/

namespace A185008.P9292316136602815513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A185008.P9292316136602815513

/-!
# A185009: Row sums of A051949 (differences of factorial numbers), seen as a triangle.

The programs for A185009, there is no canonical definition to state claims against.
-/

/-! ## A185009.P11795865329873502840

`∑[((n+1)²+1)*Δ[n!]]`
-/

namespace A185009.P11795865329873502840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185009.P11795865329873502840

/-! ## A185009.P9057209126592533821

`∑[n*(Δ[(n+1)!]+n!)]`
-/

namespace A185009.P9057209126592533821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185009.P9057209126592533821

/-! ## A185009.P13849445127035074700

`∑[((n+1)²+1)*n*n!]`
-/

namespace A185009.P13849445127035074700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1) * (n * Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185009.P13849445127035074700

/-! ## A185009.P1823759478201181094

`(n+1)²*∏[n+1]-∑[∏[n+1]]`
-/

namespace A185009.P1823759478201181094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A185009.P1823759478201181094

/-! ## A185009.P15257102969563608878

`∑[A001563(n)*A002522(n+1)]`
-/

namespace A185009.P15257102969563608878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n * A002522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185009.P15257102969563608878

/-! ## A185009.P16534170126078495325

`∑[A000142(n)*A062158(n+1)]`
-/

namespace A185009.P16534170126078495325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A062158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185009.P16534170126078495325

/-!
# A185010: a(n) = A000108(n)*A015518(n+1), where A000108 are the Catalan numbers and A015518(n) = 2*A015518(n-1) + 3*A015518(n-2).

The programs for A185010, the canonical program `A185010.P938023634184564924` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185010 has offset 0).

The definition of A185010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*A015518(n+1)` (program `A185010.P938023634184564924`, by `A185010.P938023634184564924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185010.P938023634184564924

`A000108(n)*A015518(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185010

/-- `A000108(n)*A015518(n+1)` -/
def P938023634184564924.Spec : Prop :=
  ∀ n, P938023634184564924.a n = A185010 n

theorem P938023634184564924.correct : P938023634184564924.Spec := by
  intro n
  simp only [A185010]

end A185010

/-! ## A185010.P17614578729096126283

`3^n/(n+1)*C(2*n, n)+(6/(n+1)-4)*a(n-1)` with `a(0)=1`
-/

namespace A185010.P17614578729096126283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ) + (6 / (n + 1 : ℚ) - 4) * a (n - 1)

end

end A185010.P17614578729096126283

namespace A185010

/-- `3^n/(n+1)*C(2*n, n)+(6/(n+1)-4)*a(n-1)` -/
def P17614578729096126283.Spec : Prop :=
  ∀ n, P17614578729096126283.a n = (A185010 n : ℚ)

end A185010

/-! ## A185010.P14939671933120510824

`A005159(n)+(6/(n+1)-4)*a(n-1)` with `a(0)=1`
-/

namespace A185010.P14939671933120510824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A005159 n : ℚ) + (6 / (n + 1 : ℚ) - 4) * a (n - 1)

end

end A185010.P14939671933120510824

namespace A185010

/-- `A005159(n)+(6/(n+1)-4)*a(n-1)` -/
def P14939671933120510824.Spec : Prop :=
  ∀ n, P14939671933120510824.a n = (A185010 n : ℚ)

end A185010

/-! ## A185010.P5767649447631699476

`A168491(n)+3*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A185010.P5767649447631699476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A168491 n : ℚ) + 3 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A185010.P5767649447631699476

namespace A185010

/-- `A168491(n)+3*(4-6/(n+1))*a(n-1)` -/
def P5767649447631699476.Spec : Prop :=
  ∀ n, P5767649447631699476.a n = (A185010 n : ℚ)

end A185010

/-! ## A185010.P7952652569364637372

`A025226(n+1)/3-(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A185010.P7952652569364637372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A025226 (n + 1) : ℚ) / 3 - (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A185010.P7952652569364637372

namespace A185010

/-- `A025226(n+1)/3-(4-6/(n+1))*a(n-1)` -/
def P7952652569364637372.Spec : Prop :=
  ∀ n, P7952652569364637372.a n = (A185010 n : ℚ)

end A185010

/-! ## A185010.P17599321484063124908

`3^n*A120588(n+1)-(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A185010.P17599321484063124908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((3 ^ n : ℤ) * A120588 (n + 1) : ℚ) - (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A185010.P17599321484063124908

namespace A185010

/-- `3^n*A120588(n+1)-(4-6/(n+1))*a(n-1)` -/
def P17599321484063124908.Spec : Prop :=
  ∀ n, P17599321484063124908.a n = (A185010 n : ℚ)

end A185010

/-! ## A185010.P15958428505753682620

`A000108(n)*∑[A046717(n)]`
-/

namespace A185010.P15958428505753682620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185010.P15958428505753682620

namespace A185010

/-- `A000108(n)*∑[A046717(n)]` -/
def P15958428505753682620.Spec : Prop :=
  ∀ n, P15958428505753682620.a n = A185010 n

end A185010

/-! ## A185010.P11372903244520983277

`∑[A352779(n)]*A168491(n)`
-/

namespace A185010.P11372903244520983277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A168491 n

end

end A185010.P11372903244520983277

namespace A185010

/-- `∑[A352779(n)]*A168491(n)` -/
def P11372903244520983277.Spec : Prop :=
  ∀ n, P11372903244520983277.a n = A185010 n

end A185010

/-! ## A185010.P2214293312218269930

`A000108(n)*Δ[A039300(n)]`
-/

namespace A185010.P2214293312218269930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A185010.P2214293312218269930

namespace A185010

/-- `A000108(n)*Δ[A039300(n)]` -/
def P2214293312218269930.Spec : Prop :=
  ∀ n, P2214293312218269930.a n = A185010 n

end A185010

/-!
# A185011: Numbers k such that P(k^2+1) < P((k+1)^2+1) where P(n) (A006530) is the largest prime factor of n.

The programs for A185011, the canonical program `A185011.P2025145827853629102` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185011 has offset 1).

The definition of A185011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185011.P2025145827853629102

`lt[A014442(n+1), A014442(n+2)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A185011

/-- `lt[A014442(n+1), A014442(n+2)]+1` -/
def P2025145827853629102.Spec : Prop :=
  ∀ n, (P2025145827853629102.a n : ℤ) = A185011 (n + 1)

theorem P2025145827853629102.correct : P2025145827853629102.Spec := by
  intro n
  simp only [A185011, Nat.add_sub_cancel]

end A185011

/-! ## A185011.P1543891621477032217

`lt[A250069(n+1), A250069(n+2)]+1`
-/

namespace A185011.P1543891621477032217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A185011.P1543891621477032217

namespace A185011

/-- `lt[A250069(n+1), A250069(n+2)]+1` -/
def P1543891621477032217.Spec : Prop :=
  ∀ n, (P1543891621477032217.a n : ℤ) = A185011 (n + 1)

end A185011

/-! ## A185011.P3471852239179542586

`lt[A014442(A028310(n)), A014442(n+1)]`
-/

namespace A185011.P3471852239179542586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185011.P3471852239179542586

namespace A185011

/-- `lt[A014442(A028310(n)), A014442(n+1)]` -/
def P3471852239179542586.Spec : Prop :=
  ∀ n, (P3471852239179542586.a n : ℤ) = A185011 (n + 1)

end A185011

/-! ## A185011.P12130333596332346025

`lt[A248746(A028310(n)), A248746(n+1)]`
-/

namespace A185011.P12130333596332346025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248746 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185011.P12130333596332346025

namespace A185011

/-- `lt[A248746(A028310(n)), A248746(n+1)]` -/
def P12130333596332346025.Spec : Prop :=
  ∀ n, (P12130333596332346025.a n : ℤ) = A185011 (n + 1)

end A185011

/-! ## A185011.P10578857031495255409

`lt[A250069(A028310(n)), A250069(n+1)]`
-/

namespace A185011.P10578857031495255409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185011.P10578857031495255409

namespace A185011

/-- `lt[A250069(A028310(n)), A250069(n+1)]` -/
def P10578857031495255409.Spec : Prop :=
  ∀ n, (P10578857031495255409.a n : ℤ) = A185011 (n + 1)

end A185011

/-! ## A185011.P17818783138468018167

`lt[1, Δ[A006530(n²+1)]]`
-/

namespace A185011.P17818783138468018167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ 2 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185011.P17818783138468018167

namespace A185011

/-- `lt[1, Δ[A006530(n²+1)]]` -/
def P17818783138468018167.Spec : Prop :=
  ∀ n, (P17818783138468018167.a n : ℤ) = A185011 (n + 1)

end A185011

/-! ## A185011.P2167173802430273341

`lt[A006530(A002522(n)), A250069(n+1)]`
-/

namespace A185011.P2167173802430273341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002522 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185011.P2167173802430273341

namespace A185011

/-- `lt[A006530(A002522(n)), A250069(n+1)]` -/
def P2167173802430273341.Spec : Prop :=
  ∀ n, (P2167173802430273341.a n : ℤ) = A185011 (n + 1)

end A185011

/-! ## A185011.P7838593877366343389

`lt[A006530(A002522(n))+1, A014442(n+1)]`
-/

namespace A185011.P7838593877366343389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002522 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185011.P7838593877366343389

namespace A185011

/-- `lt[A006530(A002522(n))+1, A014442(n+1)]` -/
def P7838593877366343389.Spec : Prop :=
  ∀ n, (P7838593877366343389.a n : ℤ) = A185011 (n + 1)

end A185011

/-! ## A185011.P11670561807450060997

`lt[A026741(A281793(n)), A250069(n+1)]`
-/

namespace A185011.P11670561807450060997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A281793 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185011.P11670561807450060997

namespace A185011

/-- `lt[A026741(A281793(n)), A250069(n+1)]` -/
def P11670561807450060997.Spec : Prop :=
  ∀ n, (P11670561807450060997.a n : ℤ) = A185011 (n + 1)

end A185011

/-! ## A185011.P10033086924493234282

`lt[A281793(n), A026741(A014442(n+1))]`
-/

namespace A185011.P10033086924493234282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A014442 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185011.P10033086924493234282

namespace A185011

/-- `lt[A281793(n), A026741(A014442(n+1))]` -/
def P10033086924493234282.Spec : Prop :=
  ∀ n, (P10033086924493234282.a n : ℤ) = A185011 (n + 1)

end A185011

/-!
# A185012: Characteristic function of two.

The programs for A185012, the canonical program `A185012.P4776339623456628527` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185012 has offset 0).

The definition of A185012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185012.P4776339623456628527

`char[2]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185012

/-- `char[2]` -/
def P4776339623456628527.Spec : Prop :=
  ∀ n, (P4776339623456628527.a n : ℤ) = A185012 n

theorem P4776339623456628527.correct : P4776339623456628527.Spec := by
  intro n
  simp only [A185012]

end A185012

/-!
# A185013: Characteristic function of {3}.

The programs for A185013, the canonical program `A185013.P16152479727158586121` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185013 has offset 0).

The definition of A185013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185013.P16152479727158586121

`A179184(n)-A185114(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185013

/-- `A179184(n)-A185114(n)` -/
def P16152479727158586121.Spec : Prop :=
  ∀ n, P16152479727158586121.a n = A185013 n

theorem P16152479727158586121.correct : P16152479727158586121.Spec := by
  intro n
  simp only [A185013]

end A185013

/-! ## A185013.P17619625008525990086

`char[3]`
-/

namespace A185013.P17619625008525990086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A185013.P17619625008525990086

namespace A185013

/-- `char[3]` -/
def P17619625008525990086.Spec : Prop :=
  ∀ n, (P17619625008525990086.a n : ℤ) = A185013 n

end A185013

/-!
# A185014: Characteristic function of four.

The programs for A185014, the canonical program `A185014.P14310411706898602348` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185014 has offset 0).

The definition of A185014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185014.P14310411706898602348

`A185114(n)-A185115(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185014

/-- `A185114(n)-A185115(n)` -/
def P14310411706898602348.Spec : Prop :=
  ∀ n, P14310411706898602348.a n = A185014 n

theorem P14310411706898602348.correct : P14310411706898602348.Spec := by
  intro n
  simp only [A185014]

end A185014

/-! ## A185014.P16827302782769355305

`char[4]`
-/

namespace A185014.P16827302782769355305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A185014.P16827302782769355305

namespace A185014

/-- `char[4]` -/
def P16827302782769355305.Spec : Prop :=
  ∀ n, (P16827302782769355305.a n : ℤ) = A185014 n

end A185014

/-!
# A185015: Characteristic function of 5.

The programs for A185015, the canonical program `A185015.P8568089362200605037` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185015 has offset 0).

The definition of A185015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185015.P8568089362200605037

`A185115(n)-A185116(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185015

/-- `A185115(n)-A185116(n)` -/
def P8568089362200605037.Spec : Prop :=
  ∀ n, P8568089362200605037.a n = A185015 n

theorem P8568089362200605037.correct : P8568089362200605037.Spec := by
  intro n
  simp only [A185015]

end A185015

/-! ## A185015.P5911830706936446284

`char[5]`
-/

namespace A185015.P5911830706936446284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A185015.P5911830706936446284

namespace A185015

/-- `char[5]` -/
def P5911830706936446284.Spec : Prop :=
  ∀ n, (P5911830706936446284.a n : ℤ) = A185015 n

end A185015

/-!
# A185016: Characteristic function of 6.

The programs for A185016, the canonical program `A185016.P15635717452489970801` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185016 has offset 0).

The definition of A185016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185016.P15635717452489970801

`A185116(n)-A185117(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185016

/-- `A185116(n)-A185117(n)` -/
def P15635717452489970801.Spec : Prop :=
  ∀ n, P15635717452489970801.a n = A185016 n

theorem P15635717452489970801.correct : P15635717452489970801.Spec := by
  intro n
  simp only [A185016]

end A185016

/-! ## A185016.P10386466676365229647

`char[6]`
-/

namespace A185016.P10386466676365229647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A185016.P10386466676365229647

namespace A185016

/-- `char[6]` -/
def P10386466676365229647.Spec : Prop :=
  ∀ n, (P10386466676365229647.a n : ℤ) = A185016 n

end A185016

/-!
# A185017: Characteristic function of 7.

The programs for A185017, the canonical program `A185017.P17290526473514130814` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185017 has offset 0).

The definition of A185017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185017.P17290526473514130814

`A185117(n)-A185118(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185017

/-- `A185117(n)-A185118(n)` -/
def P17290526473514130814.Spec : Prop :=
  ∀ n, P17290526473514130814.a n = A185017 n

theorem P17290526473514130814.correct : P17290526473514130814.Spec := by
  intro n
  simp only [A185017]

end A185017

/-! ## A185017.P578013991094088988

`char[7]`
-/

namespace A185017.P578013991094088988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A185017.P578013991094088988

namespace A185017

/-- `char[7]` -/
def P578013991094088988.Spec : Prop :=
  ∀ n, (P578013991094088988.a n : ℤ) = A185017 n

end A185017

/-!
# A185018: Inverse to sequence matrix for natural numbers.

The programs for A185018, the canonical program `A185018.P10903825836336431318` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185018 has offset 0).

The definition of A185018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185018.P10903825836336431318

`A053985(C(2, A025581(n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185018

/-- `A053985(C(2, A025581(n)))` -/
def P10903825836336431318.Spec : Prop :=
  ∀ n, P10903825836336431318.a n = A185018 n

theorem P10903825836336431318.correct : P10903825836336431318.Spec := by
  intro n
  simp only [A185018]

end A185018

/-! ## A185018.P13374247630679967480

`A181983(C(2, A025581(n)))`
-/

namespace A185018.P13374247630679967480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (Nat.choose 2 (A025581 n).toNat)

end

end A185018.P13374247630679967480

namespace A185018

/-- `A181983(C(2, A025581(n)))` -/
def P13374247630679967480.Spec : Prop :=
  ∀ n, P13374247630679967480.a n = A185018 n

end A185018

/-! ## A185018.P12650926285376530050

`A132014(n)/A094441(n)`
-/

namespace A185018.P12650926285376530050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132014 n : ℚ) / (A094441 n : ℚ)

end

end A185018.P12650926285376530050

namespace A185018

/-- `A132014(n)/A094441(n)` -/
def P12650926285376530050.Spec : Prop :=
  ∀ n, P12650926285376530050.a n = (A185018 n : ℚ)

end A185018

/-! ## A185018.P10532302743685511820

`A106246(n)/A130595(n)`
-/

namespace A185018.P10532302743685511820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106246 n : ℚ) / (A130595 n : ℚ)

end

end A185018.P10532302743685511820

namespace A185018

/-- `A106246(n)/A130595(n)` -/
def P10532302743685511820.Spec : Prop :=
  ∀ n, P10532302743685511820.a n = (A185018 n : ℚ)

end A185018

/-! ## A185018.P15640359408672129387

`A132014(n)/A107230(n)`
-/

namespace A185018.P15640359408672129387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132014 n : ℚ) / (A107230 n : ℚ)

end

end A185018.P15640359408672129387

namespace A185018

/-- `A132014(n)/A107230(n)` -/
def P15640359408672129387.Spec : Prop :=
  ∀ n, P15640359408672129387.a n = (A185018 n : ℚ)

end A185018

/-! ## A185018.P3155570621494545706

`A132014(n)/A119468(n)`
-/

namespace A185018.P3155570621494545706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132014 n : ℚ) / (A119468 n : ℚ)

end

end A185018.P3155570621494545706

namespace A185018

/-- `A132014(n)/A119468(n)` -/
def P3155570621494545706.Spec : Prop :=
  ∀ n, P3155570621494545706.a n = (A185018 n : ℚ)

end A185018

/-! ## A185018.P2358231560383400068

`A132014(n)/A124644(n)`
-/

namespace A185018.P2358231560383400068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132014 n : ℚ) / (A124644 n : ℚ)

end

end A185018.P2358231560383400068

namespace A185018

/-- `A132014(n)/A124644(n)` -/
def P2358231560383400068.Spec : Prop :=
  ∀ n, P2358231560383400068.a n = (A185018 n : ℚ)

end A185018

/-! ## A185018.P4687455729544233443

`A132014(n)/A171670(n)`
-/

namespace A185018.P4687455729544233443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132014 n : ℚ) / (A171670 n : ℚ)

end

end A185018.P4687455729544233443

namespace A185018

/-- `A132014(n)/A171670(n)` -/
def P4687455729544233443.Spec : Prop :=
  ∀ n, P4687455729544233443.a n = (A185018 n : ℚ)

end A185018

/-! ## A185018.P11526653893562843309

`1-A191532(C(2, A025581(n)))`
-/

namespace A185018.P11526653893562843309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A191532 (Nat.choose 2 (A025581 n).toNat)

end

end A185018.P11526653893562843309

namespace A185018

/-- `1-A191532(C(2, A025581(n)))` -/
def P11526653893562843309.Spec : Prop :=
  ∀ n, P11526653893562843309.a n = A185018 n

end A185018

/-! ## A185018.P17325923875835890820

`A097807(n)*A167194(n+1)`
-/

namespace A185018.P17325923875835890820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A167194 (n + 1)

end

end A185018.P17325923875835890820

namespace A185018

/-- `A097807(n)*A167194(n+1)` -/
def P17325923875835890820.Spec : Prop :=
  ∀ n, P17325923875835890820.a n = A185018 n

end A185018

/-! ## A185018.P11621784213220944481

`A110515(n)*A167194(n+1)`
-/

namespace A185018.P11621784213220944481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110515 n * A167194 (n + 1)

end

end A185018.P11621784213220944481

namespace A185018

/-- `A110515(n)*A167194(n+1)` -/
def P11621784213220944481.Spec : Prop :=
  ∀ n, P11621784213220944481.a n = A185018 n

end A185018

/-! ## A185018.P14529278265756862519

`A147768(n)*A167194(n+1)`
-/

namespace A185018.P14529278265756862519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147768 n * A167194 (n + 1)

end

end A185018.P14529278265756862519

namespace A185018

/-- `A147768(n)*A167194(n+1)` -/
def P14529278265756862519.Spec : Prop :=
  ∀ n, P14529278265756862519.a n = A185018 n

end A185018

/-! ## A185018.P11405263371757800768

`A132014(n)/A091869(n+1)`
-/

namespace A185018.P11405263371757800768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132014 n : ℚ) / (A091869 (n + 1) : ℚ)

end

end A185018.P11405263371757800768

namespace A185018

/-- `A132014(n)/A091869(n+1)` -/
def P11405263371757800768.Spec : Prop :=
  ∀ n, P11405263371757800768.a n = (A185018 n : ℚ)

end A185018

/-! ## A185018.P14387835662965292102

`Δ[A103452(n+1)]-A000007(n)`
-/

namespace A185018.P14387835662965292102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 n

end

end A185018.P14387835662965292102

namespace A185018

/-- `Δ[A103452(n+1)]-A000007(n)` -/
def P14387835662965292102.Spec : Prop :=
  ∀ n, P14387835662965292102.a n = A185018 n

end A185018

/-! ## A185018.P14801916323595140217

`Δ[A000007(n)-A167374(n)]`
-/

namespace A185018.P14801916323595140217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A167374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185018.P14801916323595140217

namespace A185018

/-- `Δ[A000007(n)-A167374(n)]` -/
def P14801916323595140217.Spec : Prop :=
  ∀ n, P14801916323595140217.a n = A185018 n

end A185018

/-! ## A185018.P17323638508075207151

`A167374(n)-(A167374(n+1)+A000007(n))`
-/

namespace A185018.P17323638508075207151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n - (A167374 (n + 1) + A000007 n)

end

end A185018.P17323638508075207151

namespace A185018

/-- `A167374(n)-(A167374(n+1)+A000007(n))` -/
def P17323638508075207151.Spec : Prop :=
  ∀ n, P17323638508075207151.a n = A185018 n

end A185018

/-! ## A185018.P18440709597120658080

`A129186(n+1)+A167374(n)-A129186(n)`
-/

namespace A185018.P18440709597120658080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (n + 1) + (A167374 n - A129186 n)

end

end A185018.P18440709597120658080

namespace A185018

/-- `A129186(n+1)+A167374(n)-A129186(n)` -/
def P18440709597120658080.Spec : Prop :=
  ∀ n, P18440709597120658080.a n = A185018 n

end A185018

/-! ## A185018.P6826285606312561103

`A060576(n+1)*A167374(n)-A167374(n+1)`
-/

namespace A185018.P6826285606312561103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) * A167374 n - A167374 (n + 1)

end

end A185018.P6826285606312561103

namespace A185018

/-- `A060576(n+1)*A167374(n)-A167374(n+1)` -/
def P6826285606312561103.Spec : Prop :=
  ∀ n, P6826285606312561103.a n = A185018 n

end A185018

/-! ## A185018.P14227135854315377529

`A167374(n)-A167371(n+1)*A167374(n+1)`
-/

namespace A185018.P14227135854315377529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n - A167371 (n + 1) * A167374 (n + 1)

end

end A185018.P14227135854315377529

namespace A185018

/-- `A167374(n)-A167371(n+1)*A167374(n+1)` -/
def P14227135854315377529.Spec : Prop :=
  ∀ n, P14227135854315377529.a n = A185018 n

end A185018

/-! ## A185018.P3787210368496969851

`Δ[Δ[char[∑[n+2]]]]`
-/

namespace A185018.P3787210368496969851
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185018.P3787210368496969851

namespace A185018

/-- `Δ[Δ[char[∑[n+2]]]]` -/
def P3787210368496969851.Spec : Prop :=
  ∀ n, P3787210368496969851.a n = A185018 n

end A185018

/-!
# A185019: a(n) = n*(14*n-3).

The programs for A185019, the canonical program `A185019.P9430512347604204283` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185019 has offset 0).

The definition of A185019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(14*n-3)` (program `A185019.P9430512347604204283`, by `A185019.P9430512347604204283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185019.P9430512347604204283

`n*(14*n-3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185019

/-- `n*(14*n-3)` -/
def P9430512347604204283.Spec : Prop :=
  ∀ n, P9430512347604204283.a n = A185019 n

theorem P9430512347604204283.correct : P9430512347604204283.Spec := by
  intro n
  simp only [A185019]

end A185019

/-! ## A185019.P2280500278556448501

`ogf((11x+17x^2)/(1-3x+3x^2-x^3))`
-/

namespace A185019.P2280500278556448501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11, 17] [1, -3, 3, -1] n

end

end A185019.P2280500278556448501

namespace A185019

/-- `ogf((11x+17x^2)/(1-3x+3x^2-x^3))` -/
def P2280500278556448501.Spec : Prop :=
  ∀ n, P2280500278556448501.a n = A185019 n

end A185019

/-! ## A185019.P1697149634251776926

`n+A195023(n)`
-/

namespace A185019.P1697149634251776926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A195023 n

end

end A185019.P1697149634251776926

namespace A185019

/-- `n+A195023(n)` -/
def P1697149634251776926.Spec : Prop :=
  ∀ n, P1697149634251776926.a n = A185019 n

theorem P1697149634251776926.correct : P1697149634251776926.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P1697149634251776926.a, A185019.P9430512347604204283.a, A195023, A195023.P13395883807883486776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P11205690421604137436

`∑[a(n-1)+28]` with `a(0)=0, a(1)=11`
-/

namespace A185019.P11205690421604137436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185019.P11205690421604137436

namespace A185019

/-- `∑[a(n-1)+28]` -/
def P11205690421604137436.Spec : Prop :=
  ∀ n, (P11205690421604137436.a n : ℤ) = A185019 n

end A185019

/-! ## A185019.P13640798570123008742

`4*n+7*C(2*n, 2)`
-/

namespace A185019.P13640798570123008742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 7 * Nat.choose (2 * n) 2

end

end A185019.P13640798570123008742

namespace A185019

/-- `4*n+7*C(2*n, 2)` -/
def P13640798570123008742.Spec : Prop :=
  ∀ n, (P13640798570123008742.a n : ℤ) = A185019 n

theorem P13640798570123008742.correct : P13640798570123008742.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P13640798570123008742.a, A185019.P9430512347604204283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P3018083292444847810

`2*A135703(n)+n`
-/

namespace A185019.P3018083292444847810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135703 n + (n : ℤ)

end

end A185019.P3018083292444847810

namespace A185019

/-- `2*A135703(n)+n` -/
def P3018083292444847810.Spec : Prop :=
  ∀ n, P3018083292444847810.a n = A185019 n

theorem P3018083292444847810.correct : P3018083292444847810.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P3018083292444847810.a, A185019.P9430512347604204283.a, A135703, A135703.P16089761573645246278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P9580597076605186793

`A195024(n)-2*n`
-/

namespace A185019.P9580597076605186793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195024 n - (2 * n : ℤ)

end

end A185019.P9580597076605186793

namespace A185019

/-- `A195024(n)-2*n` -/
def P9580597076605186793.Spec : Prop :=
  ∀ n, P9580597076605186793.a n = A185019 n

theorem P9580597076605186793.correct : P9580597076605186793.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P9580597076605186793.a, A185019.P9430512347604204283.a, A195024, A195024.P14352591559818533670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P669190123575771331

`A316466(n)+3*n`
-/

namespace A185019.P669190123575771331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316466 n + (3 * n : ℤ)

end

end A185019.P669190123575771331

namespace A185019

/-- `A316466(n)+3*n` -/
def P669190123575771331.Spec : Prop :=
  ∀ n, P669190123575771331.a n = A185019 n

theorem P669190123575771331.correct : P669190123575771331.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P669190123575771331.a, A185019.P9430512347604204283.a, A316466, A316466.P14248741323085177896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P549661578221112873

`A144555(n)-3*n`
-/

namespace A185019.P549661578221112873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n - (3 * n : ℤ)

end

end A185019.P549661578221112873

namespace A185019

/-- `A144555(n)-3*n` -/
def P549661578221112873.Spec : Prop :=
  ∀ n, P549661578221112873.a n = A185019 n

theorem P549661578221112873.correct : P549661578221112873.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P549661578221112873.a, A185019.P9430512347604204283.a, A144555, A144555.P7867283677367482726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P9866098429106502891

`A195320(n)+4*n`
-/

namespace A185019.P9866098429106502891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195320 n + (4 * n : ℤ)

end

end A185019.P9866098429106502891

namespace A185019

/-- `A195320(n)+4*n` -/
def P9866098429106502891.Spec : Prop :=
  ∀ n, P9866098429106502891.a n = A185019 n

theorem P9866098429106502891.correct : P9866098429106502891.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P9866098429106502891.a, A185019.P9430512347604204283.a, A195320, A195320.P13388806394777680698.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P1224442747989850437

`4*A022264(n)-n`
-/

namespace A185019.P1224442747989850437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022264 n - (n : ℤ)

end

end A185019.P1224442747989850437

namespace A185019

/-- `4*A022264(n)-n` -/
def P1224442747989850437.Spec : Prop :=
  ∀ n, P1224442747989850437.a n = A185019 n

end A185019

/-! ## A185019.P12776457215013892899

`A060785(n+2)-n²`
-/

namespace A185019.P12776457215013892899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060785 (n + 2) - (n ^ 2 : ℤ)

end

end A185019.P12776457215013892899

namespace A185019

/-- `A060785(n+2)-n²` -/
def P12776457215013892899.Spec : Prop :=
  ∀ n, P12776457215013892899.a n = A185019 n

theorem P12776457215013892899.correct : P12776457215013892899.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P12776457215013892899.a, A185019.P9430512347604204283.a, A060785, A060785.P12662276870661916787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P3119284660677332880

`A062783(n)+2*n²`
-/

namespace A185019.P3119284660677332880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n + (2 * n ^ 2 : ℤ)

end

end A185019.P3119284660677332880

namespace A185019

/-- `A062783(n)+2*n²` -/
def P3119284660677332880.Spec : Prop :=
  ∀ n, P3119284660677332880.a n = A185019 n

theorem P3119284660677332880.correct : P3119284660677332880.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P3119284660677332880.a, A185019.P9430512347604204283.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P16408082365174701451

`n²+2*A186030(n)`
-/

namespace A185019.P16408082365174701451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A186030 n

end

end A185019.P16408082365174701451

namespace A185019

/-- `n²+2*A186030(n)` -/
def P16408082365174701451.Spec : Prop :=
  ∀ n, P16408082365174701451.a n = A185019 n

end A185019

/-! ## A185019.P18205308497856891349

`A195018(n)+(2*n)²`
-/

namespace A185019.P18205308497856891349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195018 n + ((2 * n) ^ 2 : ℤ)

end

end A185019.P18205308497856891349

namespace A185019

/-- `A195018(n)+(2*n)²` -/
def P18205308497856891349.Spec : Prop :=
  ∀ n, P18205308497856891349.a n = A185019 n

theorem P18205308497856891349.correct : P18205308497856891349.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P18205308497856891349.a, A185019.P9430512347604204283.a, A195018, A195018.P10780825552711397623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P14987118284493780890

`∑[n]+A152996(n)+n`
-/

namespace A185019.P14987118284493780890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A152996 n + (n : ℤ))

end

end A185019.P14987118284493780890

namespace A185019

/-- `∑[n]+A152996(n)+n` -/
def P14987118284493780890.Spec : Prop :=
  ∀ n, P14987118284493780890.a n = A185019 n

end A185019

/-! ## A185019.P11155382965377856332

`A022278(n)+A001106(n)`
-/

namespace A185019.P11155382965377856332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n + A001106 n

end

end A185019.P11155382965377856332

namespace A185019

/-- `A022278(n)+A001106(n)` -/
def P11155382965377856332.Spec : Prop :=
  ∀ n, P11155382965377856332.a n = A185019 n

end A185019

/-! ## A185019.P9791093417742216385

`A014642(n)+A014105(n)`
-/

namespace A185019.P9791093417742216385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + A014105 n

end

end A185019.P9791093417742216385

namespace A185019

/-- `A014642(n)+A014105(n)` -/
def P9791093417742216385.Spec : Prop :=
  ∀ n, P9791093417742216385.a n = A185019 n

theorem P9791093417742216385.correct : P9791093417742216385.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P9791093417742216385.a, A185019.P9430512347604204283.a, A014105, A014105.P182524374866796289.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P10354176043496414462

`A033583(n)+A001107(n)`
-/

namespace A185019.P10354176043496414462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A001107 n

end

end A185019.P10354176043496414462

namespace A185019

/-- `A033583(n)+A001107(n)` -/
def P10354176043496414462.Spec : Prop :=
  ∀ n, P10354176043496414462.a n = A185019 n

theorem P10354176043496414462.correct : P10354176043496414462.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P10354176043496414462.a, A185019.P9430512347604204283.a, A001107, A001107.P15766833630772781234.a, A033583, A033583.P12285480609414282410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-! ## A185019.P6919835902999343807

`A049452(n)+A014635(n)`
-/

namespace A185019.P6919835902999343807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n + A014635 n

end

end A185019.P6919835902999343807

namespace A185019

/-- `A049452(n)+A014635(n)` -/
def P6919835902999343807.Spec : Prop :=
  ∀ n, P6919835902999343807.a n = A185019 n

theorem P6919835902999343807.correct : P6919835902999343807.Spec := by
  intro n
  simp only [A185019, Nat.add_sub_cancel, A185019.P6919835902999343807.a, A185019.P9430512347604204283.a, A014635, A014635.P12617269699985302371.a, A049452, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185019

/-!
# A185020: a(n) = A000108(n)*A002605(n+1), where A000108 are the Catalan numbers.

The programs for A185020, the canonical program `A185020.P3515777986495691671` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185020 has offset 0).

The definition of A185020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)*A002605(n+1)` (program `A185020.P3515777986495691671`, by `A185020.P3515777986495691671.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185020.P3515777986495691671

`A000108(n)*A002605(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185020

/-- `A000108(n)*A002605(n+1)` -/
def P3515777986495691671.Spec : Prop :=
  ∀ n, P3515777986495691671.a n = A185020 n

theorem P3515777986495691671.correct : P3515777986495691671.Spec := by
  intro n
  simp only [A185020]

end A185020

/-! ## A185020.P5833440570273636300

`A068875(n)*A155020(n)`
-/

namespace A185020.P5833440570273636300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n * A155020 n

end

end A185020.P5833440570273636300

namespace A185020

/-- `A068875(n)*A155020(n)` -/
def P5833440570273636300.Spec : Prop :=
  ∀ n, P5833440570273636300.a n = A185020 n

end A185020

/-! ## A185020.P10312824655766472847

`A000108(n)*∑[A026150(n)]`
-/

namespace A185020.P10312824655766472847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185020.P10312824655766472847

namespace A185020

/-- `A000108(n)*∑[A026150(n)]` -/
def P10312824655766472847.Spec : Prop :=
  ∀ n, P10312824655766472847.a n = A185020 n

end A185020

/-! ## A185020.P4623919727011587875

`A002605(n+1)*A000108(n)`
-/

namespace A185020.P4623919727011587875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) * A000108 n

end

end A185020.P4623919727011587875

namespace A185020

/-- `A002605(n+1)*A000108(n)` -/
def P4623919727011587875.Spec : Prop :=
  ∀ n, P4623919727011587875.a n = A185020 n

theorem P4623919727011587875.correct : P4623919727011587875.Spec := by
  intro n
  simp only [A185020, Nat.add_sub_cancel, A185020.P4623919727011587875.a, A185020.P3515777986495691671.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185020

/-! ## A185020.P796615783576930679

`∑[A026150(n)]*A208355(2*n)`
-/

namespace A185020.P796615783576930679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A208355 (2 * n)

end

end A185020.P796615783576930679

namespace A185020

/-- `∑[A026150(n)]*A208355(2*n)` -/
def P796615783576930679.Spec : Prop :=
  ∀ n, P796615783576930679.a n = A185020 n

end A185020

/-! ## A185020.P16731724780658376306

`(A028859(n)-A002605(n))*A000108(n)`
-/

namespace A185020.P16731724780658376306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028859 n - A002605 n) * A000108 n

end

end A185020.P16731724780658376306

namespace A185020

/-- `(A028859(n)-A002605(n))*A000108(n)` -/
def P16731724780658376306.Spec : Prop :=
  ∀ n, P16731724780658376306.a n = A185020 n

end A185020

/-!
# A185021: a(n) = h(1)*h(2)*...*h(n), where h(i) = i/[g(i/2)*g(i/4)*g(i/8)*...] and g(x) = x if x is an integer and g(x) = 1 otherwise.

The programs for A185021, the canonical program `A185021.P7780383072814977479` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185021 has offset 0).

The definition of A185021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185021.P7780383072814977479

`a(A004526(n))*A056040(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185021

/-- `a(A004526(n))*A056040(n)` -/
def P7780383072814977479.Spec : Prop :=
  ∀ n, P7780383072814977479.a n = A185021 n

theorem P7780383072814977479.correct : P7780383072814977479.Spec := by
  intro n
  simp only [A185021]

end A185021

/-! ## A185021.P4271139962748570720

`a(A123108(n))*A056040(n)` with `a(0)=1`
-/

namespace A185021.P4271139962748570720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A123108 n).toNat * A056040 n

end

end A185021.P4271139962748570720

namespace A185021

/-- `a(A123108(n))*A056040(n)` -/
def P4271139962748570720.Spec : Prop :=
  ∀ n, P4271139962748570720.a n = A185021 n

end A185021

/-! ## A185021.P16330282450227160730

`a(val(A016116(n), 2))*A056040(n)` with `a(0)=1`
-/

namespace A185021.P16330282450227160730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.valuation (A016116 n).toNat 2) * A056040 n

end

end A185021.P16330282450227160730

namespace A185021

/-- `a(val(A016116(n), 2))*A056040(n)` -/
def P16330282450227160730.Spec : Prop :=
  ∀ n, P16330282450227160730.a n = A185021 n

end A185021

/-! ## A185021.P8107223543953805488

`a(floor(n/2))/A180000(n)*A003418(n)` with `a(0)=1`
-/

namespace A185021.P8107223543953805488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / (A180000 n : ℚ) * (A003418 n : ℚ)

end

end A185021.P8107223543953805488

namespace A185021

/-- `a(floor(n/2))/A180000(n)*A003418(n)` -/
def P8107223543953805488.Spec : Prop :=
  ∀ n, P8107223543953805488.a n = (A185021 n : ℚ)

end A185021

/-! ## A185021.P10188493200528155174

`a(A004526(n))*A182073(A000217(n))` with `a(0)=1`
-/

namespace A185021.P10188493200528155174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A182073 (A000217 n).toNat

end

end A185021.P10188493200528155174

namespace A185021

/-- `a(A004526(n))*A182073(A000217(n))` -/
def P10188493200528155174.Spec : Prop :=
  ∀ n, P10188493200528155174.a n = A185021 n

end A185021

/-!
# A185022: Prime p such that p, p+12, p+24 are all primes.

The programs for A185022, there is no canonical definition to state claims against.
-/

/-! ## A185022.P8525433535952319888

`A137796(n+1)-12`
-/

namespace A185022.P8525433535952319888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1) - 12

end

end A185022.P8525433535952319888

/-! ## A185022.P17306814584265817988

`p?[A046133(n+1)-12]`
-/

namespace A185022.P17306814584265817988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185022.P17306814584265817988

/-! ## A185022.P10681885156489099450

`p?[A087681(n+1)-18]`
-/

namespace A185022.P10681885156489099450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185022.P10681885156489099450

/-! ## A185022.P3589960788075426534

`p?[A092216(n+1)-24]`
-/

namespace A185022.P3589960788075426534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185022.P3589960788075426534

/-! ## A185022.P1641593770304705157

`∩[A046133(n+1), A092216(n+1)]-12`
-/

namespace A185022.P1641593770304705157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 12

end

end A185022.P1641593770304705157

/-! ## A185022.P8419278863575339381

`∩[A015917(n+1), A033560(n+1)]`
-/

namespace A185022.P8419278863575339381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185022.P8419278863575339381

/-! ## A185022.P5397398233055466221

`∩[A033560(n+1), A046133(n+1)]`
-/

namespace A185022.P5397398233055466221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185022.P5397398233055466221

/-! ## A185022.P11395941625918046492

`∩[A033560(n+1), A056775(n+1)]`
-/

namespace A185022.P11395941625918046492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185022.P11395941625918046492

/-! ## A185022.P15338609173301540497

`p?[A156323(A005843(n+1))-24]`
-/

namespace A185022.P15338609173301540497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156323 (A005843 (n + 1)).toNat - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185022.P15338609173301540497

/-! ## A185022.P11708188465203351707

`A023454(A137796(n+1))`
-/

namespace A185022.P11708188465203351707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A137796 (n + 1)).toNat

end

end A185022.P11708188465203351707

/-! ## A185022.P9352513985703535262

`p?[A014963(A015917(n+1))-12]`
-/

namespace A185022.P9352513985703535262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A015917 (n + 1)).toNat - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185022.P9352513985703535262

/-! ## A185022.P8585744332139012187

`p?[A014963(A056775(n+1))-12]`
-/

namespace A185022.P8585744332139012187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A056775 (n + 1)).toNat - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185022.P8585744332139012187

/-!
# A185024: Numbers occurring in just one row of Pascal's triangle.

The programs for A185024, there is no canonical definition to state claims against.
-/

/-! ## A185024.P17064918058273629047

`record[A058084(n+2)]`
-/

namespace A185024.P17064918058273629047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185024.P17064918058273629047

/-! ## A185024.P2767645065680664693

`lt[γ, sin(A003016(n))]`
-/

namespace A185024.P2767645065680664693
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A003016 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185024.P2767645065680664693

/-! ## A185024.P15673756479616060553

`eq[1, A357327(n+1)]+1`
-/

namespace A185024.P15673756479616060553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A185024.P15673756479616060553

/-! ## A185024.P154339644667288756

`eq[1, A059233(n+2)]+2`
-/

namespace A185024.P154339644667288756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A185024.P154339644667288756

/-! ## A185024.P3841372860439309600

`lt[n, A058084(n+1)]+1`
-/

namespace A185024.P3841372860439309600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A185024.P3841372860439309600

/-! ## A185024.P8473516978725084722

`eq[A003016(n), A329683(n)]`
-/

namespace A185024.P8473516978725084722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185024.P8473516978725084722

/-! ## A185024.P8087325776882591519

`∪[A000051(n), A137905(n+1)]`
-/

namespace A185024.P8087325776882591519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P8087325776882591519

/-! ## A185024.P4020271121469412264

`∪[A001060(n), A137905(n+1)]`
-/

namespace A185024.P4020271121469412264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P4020271121469412264

/-! ## A185024.P4845877551345645883

`∪[A003500(n), A137905(n+1)]`
-/

namespace A185024.P4845877551345645883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P4845877551345645883

/-! ## A185024.P13023084074267258874

`∪[A004171(n), A137905(n+1)]`
-/

namespace A185024.P13023084074267258874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P13023084074267258874

/-! ## A185024.P18051458302189736836

`∪[A005248(n), A137905(n+1)]`
-/

namespace A185024.P18051458302189736836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P18051458302189736836

/-! ## A185024.P12926401096219560337

`∪[A006043(n), A137905(n+1)]`
-/

namespace A185024.P12926401096219560337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P12926401096219560337

/-! ## A185024.P1603897716205139178

`∪[A007484(n), A137905(n+1)]`
-/

namespace A185024.P1603897716205139178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P1603897716205139178

/-! ## A185024.P5149928655332589268

`∪[A137905(n+1), A007533(n)]`
-/

namespace A185024.P5149928655332589268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007533 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P5149928655332589268

/-! ## A185024.P2870460895113695990

`∪[A007676(n), A137905(n+1)]`
-/

namespace A185024.P2870460895113695990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P2870460895113695990

/-! ## A185024.P16495771816616775318

`∪[A137905(n+1), A008512(n)]`
-/

namespace A185024.P16495771816616775318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008512 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P16495771816616775318

/-! ## A185024.P1158353222787908759

`∪[A137905(n+1), A014206(n)]`
-/

namespace A185024.P1158353222787908759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P1158353222787908759

/-! ## A185024.P11508802006277453944

`∪[A014210(n), A137905(n+1)]`
-/

namespace A185024.P11508802006277453944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P11508802006277453944

/-! ## A185024.P8861530714347100990

`∪[A014211(n), A137905(n+1)]`
-/

namespace A185024.P8861530714347100990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P8861530714347100990

/-! ## A185024.P1853857908196899283

`∪[A014448(n), A137905(n+1)]`
-/

namespace A185024.P1853857908196899283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185024.P1853857908196899283

/-!
# A185025: Triangular array read by rows: T(n,k) is the number of functions f:{1,2,...,n} -> {1,2,...,n} that have exactly k 2-cycles for n >= 0 and 0 <= k <= floor(n/2).

The programs for A185025, there is no canonical definition to state claims against.
-/

/-! ## A185025.P12268204837565473936

`A008619(and(A141355(n), A143093(n)))`
-/

namespace A185025.P12268204837565473936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.land (A141355 n) (A143093 n)).toNat

end

end A185025.P12268204837565473936

/-! ## A185025.P16498296497153192773

`A038566(A064340(n)+A040686(n+1))`
-/

namespace A185025.P16498296497153192773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A064340 n + A040686 (n + 1)).toNat

end

end A185025.P16498296497153192773

/-!
# A185026: The first bisection of the sequence A002616 of reduced totients.

The programs for A185026, there is no canonical definition to state claims against.
-/

/-! ## A185026.P9570196376750458739

`A002616(2*n+3)`
-/

namespace A185026.P9570196376750458739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (2 * n + 3)

end

end A185026.P9570196376750458739

/-! ## A185026.P13450404686553722478

`A002322(2*(n+1)+1)/2`
-/

namespace A185026.P13450404686553722478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (2 * (n + 1) + 1) : ℚ) / 2

end

end A185026.P13450404686553722478

/-! ## A185026.P15291351955263783731

`A011773(2*n+3)/2`
-/

namespace A185026.P15291351955263783731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011773 (2 * n + 3) : ℚ) / 2

end

end A185026.P15291351955263783731

/-! ## A185026.P3863883097792725880

`A277030(2*n+3)/2`
-/

namespace A185026.P3863883097792725880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277030 (2 * n + 3) : ℚ) / 2

end

end A185026.P3863883097792725880

/-! ## A185026.P11886728077614990016

`A006370(A002322(2*n+3))`
-/

namespace A185026.P11886728077614990016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A002322 (2 * n + 3)).toNat

end

end A185026.P11886728077614990016

/-!
# A185027: Sum of the triangular divisors of n.

The programs for A185027, the canonical program `A185027.P10949511265756633877` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185027 has offset 1).

The definition of A185027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185027.P10949511265756633877

`∑{d}[n+1, A127773(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185027

/-- `∑{d}[n+1, A127773(#)]` -/
def P10949511265756633877.Spec : Prop :=
  ∀ n, P10949511265756633877.a n = A185027 (n + 1)

theorem P10949511265756633877.correct : P10949511265756633877.Spec := by
  intro n
  simp only [A185027, Nat.add_sub_cancel]

end A185027

/-! ## A185027.P15624823913668528693

`∑{d}[n+1, #*A010054(#)]`
-/

namespace A185027.P15624823913668528693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010054 d

end

end A185027.P15624823913668528693

namespace A185027

/-- `∑{d}[n+1, #*A010054(#)]` -/
def P15624823913668528693.Spec : Prop :=
  ∀ n, P15624823913668528693.a n = A185027 (n + 1)

end A185027

/-! ## A185027.P131985949777572418

`∑{d}[n+1, #*A073423(#)]`
-/

namespace A185027.P131985949777572418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A073423 d

end

end A185027.P131985949777572418

namespace A185027

/-- `∑{d}[n+1, #*A073423(#)]` -/
def P131985949777572418.Spec : Prop :=
  ∀ n, P131985949777572418.a n = A185027 (n + 1)

end A185027

/-! ## A185027.P7667332375868372846

`∑{d}[n+1, #*A073424(#)]`
-/

namespace A185027.P7667332375868372846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A073424 d

end

end A185027.P7667332375868372846

namespace A185027

/-- `∑{d}[n+1, #*A073424(#)]` -/
def P7667332375868372846.Spec : Prop :=
  ∀ n, P7667332375868372846.a n = A185027 (n + 1)

end A185027

/-! ## A185027.P344921229525864514

`∑{d}[n+1, #*A023531(#-1)]`
-/

namespace A185027.P344921229525864514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A023531 (d - 1)

end

end A185027.P344921229525864514

namespace A185027

/-- `∑{d}[n+1, #*A023531(#-1)]` -/
def P344921229525864514.Spec : Prop :=
  ∀ n, P344921229525864514.a n = A185027 (n + 1)

end A185027

/-! ## A185027.P15486580838535585894

`∑{d}[n+1, #*(A035214(#)-1)]`
-/

namespace A185027.P15486580838535585894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A035214 d - 1)

end

end A185027.P15486580838535585894

namespace A185027

/-- `∑{d}[n+1, #*(A035214(#)-1)]` -/
def P15486580838535585894.Spec : Prop :=
  ∀ n, P15486580838535585894.a n = A185027 (n + 1)

end A185027

/-! ## A185027.P11367536456300393778

`∑{d}[n+1, #*A135764(#+1)%2]`
-/

namespace A185027.P11367536456300393778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A135764 (d + 1)) 2

end

end A185027.P11367536456300393778

namespace A185027

/-- `∑{d}[n+1, #*A135764(#+1)%2]` -/
def P11367536456300393778.Spec : Prop :=
  ∀ n, P11367536456300393778.a n = A185027 (n + 1)

end A185027

/-! ## A185027.P2525781326336177929

`A343408(n+1)+A127773(n+1)`
-/

namespace A185027.P2525781326336177929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343408 (n + 1) + A127773 (n + 1)

end

end A185027.P2525781326336177929

namespace A185027

/-- `A343408(n+1)+A127773(n+1)` -/
def P2525781326336177929.Spec : Prop :=
  ∀ n, P2525781326336177929.a n = A185027 (n + 1)

end A185027

/-! ## A185027.P10166445445766776978

`∑{d}[n+1, #%A038722(A038722(#+1)+1)]`
-/

namespace A185027.P10166445445766776978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A038722 (A038722 (d + 1) + 1).toNat)

end

end A185027.P10166445445766776978

namespace A185027

/-- `∑{d}[n+1, #%A038722(A038722(#+1)+1)]` -/
def P10166445445766776978.Spec : Prop :=
  ∀ n, P10166445445766776978.a n = A185027 (n + 1)

end A185027

/-! ## A185027.P16003680900349199051

`∑{d}[n+1, A099894(#-1)*A304876((n+1)/#)]`
-/

namespace A185027.P16003680900349199051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A304876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A185027.P16003680900349199051

namespace A185027

/-- `∑{d}[n+1, A099894(#-1)*A304876((n+1)/#)]` -/
def P16003680900349199051.Spec : Prop :=
  ∀ n, P16003680900349199051.a n = A185027 (n + 1)

end A185027

/-!
# A185028: Numbers of the base-10 form ddd...d having Hamming weight d.

The programs for A185028, there is no canonical definition to state claims against.
-/

/-! ## A185028.P7066497567880232514

`A000042(n+1)*A299701(A298036(n))`
-/

namespace A185028.P7066497567880232514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A299701 (A298036 n).toNat

end

end A185028.P7066497567880232514

/-!
# A185029: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(n^4*x)^n/n! * exp(-n*x*A(n^4*x)).

The programs for A185029, there is no canonical definition to state claims against.
-/

/-! ## A185029.P2948491517536543848

`A375023(A171432(n+1))`
-/

namespace A185029.P2948491517536543848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375023 (A171432 (n + 1)).toNat

end

end A185029.P2948491517536543848

/-!
# A185030: Number of permutations p of {1,...,n} such that exactly one element of {p(1),...,p(i-1)} is between p(i) and p(i+1) for all i from 2 to n-1.

The programs for A185030, there is no canonical definition to state claims against.
-/

/-! ## A185030.P8218809847039088619

`A157966(A004695(n+1))+1`
-/

namespace A185030.P8218809847039088619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A004695 (n + 1)).toNat + 1

end

end A185030.P8218809847039088619

/-! ## A185030.P4475257982773624296

`A325106(A000045(n))+A115623(2*(n+2))`
-/

namespace A185030.P4475257982773624296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A000045 n).toNat + A115623 (2 * (n + 2))

end

end A185030.P4475257982773624296

/-! ## A185030.P17728130318774637497

`A238886(A116975(n+1))+A143592(A156351(n+1))`
-/

namespace A185030.P17728130318774637497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 (A116975 (n + 1)).toNat + A143592 (A156351 (n + 1)).toNat

end

end A185030.P17728130318774637497

/-! ## A185030.P13888743609950607382

`A050377(2^A325832(n))`
-/

namespace A185030.P13888743609950607382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A325832 n : ℤ))).toNat

end

end A185030.P13888743609950607382

/-! ## A185030.P7456568176048976437

`A337135(2^A078467(n))`
-/

namespace A185030.P7456568176048976437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A078467 n : ℤ))).toNat

end

end A185030.P7456568176048976437

/-!
# A185033: Number of disconnected 3-regular simple graphs on 2n vertices with girth exactly 3.

The programs for A185033, there is no canonical definition to state claims against.
-/

/-! ## A185033.P18400569498884239525

`A165653(n)-A185234(n)`
-/

namespace A185033.P18400569498884239525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165653 n - A185234 n

end

end A185033.P18400569498884239525

/-! ## A185033.P3840954619193471269

`A005638(n)-(A185234(n)+A002851(n))`
-/

namespace A185033.P3840954619193471269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - (A185234 n + A002851 n)

end

end A185033.P3840954619193471269

/-! ## A185033.P17488570536988353129

`A005638(n)-A002851(n)-A185234(A028310(n))`
-/

namespace A185033.P17488570536988353129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - A002851 n - A185234 (A028310 n).toNat

end

end A185033.P17488570536988353129

/-! ## A185033.P7123884335409621329

`A165653(n)-(A185034(n)+A185036(n)+A185035(n))`
-/

namespace A185033.P7123884335409621329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165653 n - (A185034 n + (A185036 n + A185035 n))

end

end A185033.P7123884335409621329

/-! ## A185033.P17680165393771626514

`A165653(n)-(A185034(n)+A185236(n)+A185035(n))`
-/

namespace A185033.P17680165393771626514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165653 n - (A185034 n + (A185236 n + A185035 n))

end

end A185033.P17680165393771626514

/-!
# A185034: Number of disconnected 3-regular simple graphs on 2n vertices with girth exactly 4.

The programs for A185034, there is no canonical definition to state claims against.
-/

/-! ## A185034.P10692179883108350458

`A185234(n)-A185235(n)`
-/

namespace A185034.P10692179883108350458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185234 n - A185235 n

end

end A185034.P10692179883108350458

/-! ## A185034.P15910305770026399048

`A165653(n)-(A185235(n)+A185033(n))`
-/

namespace A185034.P15910305770026399048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165653 n - (A185235 n + A185033 n)

end

end A185034.P15910305770026399048

/-! ## A185034.P8428507735731745586

`A185234(n)-(A185036(n)+A185035(n))`
-/

namespace A185034.P8428507735731745586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185234 n - (A185036 n + A185035 n)

end

end A185034.P8428507735731745586

/-! ## A185034.P15121140909200701198

`A185234(n)-(A185236(n)+A185035(n))`
-/

namespace A185034.P15121140909200701198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185234 n - (A185236 n + A185035 n)

end

end A185034.P15121140909200701198

/-! ## A185034.P13114569999757708411

`A005638(n)-(A185033(n)+A002851(n))-A185235(n)`
-/

namespace A185034.P13114569999757708411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - (A185033 n + A002851 n) - A185235 n

end

end A185034.P13114569999757708411

/-!
# A185035: Number of disconnected 3-regular simple graphs on 2n vertices with girth exactly 5.

The programs for A185035, there is no canonical definition to state claims against.
-/

/-! ## A185035.P1072561217065549121

`A185235(n)-A185236(n)`
-/

namespace A185035.P1072561217065549121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185235 n - A185236 n

end

end A185035.P1072561217065549121

/-! ## A185035.P5951118675729942401

`A185235(n)-A185036(n)`
-/

namespace A185035.P5951118675729942401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185235 n - A185036 n

end

end A185035.P5951118675729942401

/-! ## A185035.P13322495471149714548

`A185234(n)-(A185036(n)+A185034(n))`
-/

namespace A185035.P13322495471149714548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185234 n - (A185036 n + A185034 n)

end

end A185035.P13322495471149714548

/-! ## A185035.P2839076789456157950

`A185234(n)-(A185236(n)+A185034(n))`
-/

namespace A185035.P2839076789456157950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185234 n - (A185236 n + A185034 n)

end

end A185035.P2839076789456157950

/-! ## A185035.P16341613107410689755

`A006926(n)+A185235(n)-A185136(n)`
-/

namespace A185035.P16341613107410689755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006926 n + (A185235 n - A185136 n)

end

end A185035.P16341613107410689755

/-!
# A185036: Number of disconnected 3-regular simple graphs on 2n vertices with girth exactly 6.

The programs for A185036, there is no canonical definition to state claims against.
-/

/-! ## A185036.P18228299073304360024

`A185236(n)-A185237(n)`
-/

namespace A185036.P18228299073304360024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n - A185237 n

end

end A185036.P18228299073304360024

/-! ## A185036.P11618649337194142222

`A185236(n)-A011738(n)`
-/

namespace A185036.P11618649337194142222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n - A011738 n

end

end A185036.P11618649337194142222

/-! ## A185036.P1204681078840888869

`A185236(n)-A086015(n)`
-/

namespace A185036.P1204681078840888869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n - A086015 n

end

end A185036.P1204681078840888869

/-! ## A185036.P4549082644499467733

`A185236(n)-A180472(n)`
-/

namespace A185036.P4549082644499467733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n - A180472 n

end

end A185036.P4549082644499467733

/-! ## A185036.P14199382909518269708

`A185236(n)-A185037(n)`
-/

namespace A185036.P14199382909518269708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n - A185037 n

end

end A185036.P14199382909518269708

/-!
# A185037: Number of disconnected 3-regular simple graphs on 2n vertices with girth exactly 7.

The programs for A185037, there is no canonical definition to state claims against.
-/

/-! ## A185037.P3011886214304543403

`A185237(n)-A185238(n)`
-/

namespace A185037.P3011886214304543403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n - A185238 n

end

end A185037.P3011886214304543403

/-! ## A185037.P2761074660424058343

`A185237(n)-A011744(n)`
-/

namespace A185037.P2761074660424058343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n - A011744 n

end

end A185037.P2761074660424058343

/-! ## A185037.P13786306879644362282

`A185237(n)-A025438(n)`
-/

namespace A185037.P13786306879644362282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n - A025438 n

end

end A185037.P13786306879644362282

/-! ## A185037.P17201433647367032092

`A185237(n)-A025443(n)`
-/

namespace A185037.P17201433647367032092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n - A025443 n

end

end A185037.P17201433647367032092

/-! ## A185037.P9676487150698897015

`A185237(n)-A034423(n+1)`
-/

namespace A185037.P9676487150698897015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n - A034423 (n + 1)

end

end A185037.P9676487150698897015

/-!
# A185038: Positions at which A090895 (a(1) = 1 then a(n) = a(n-1)/2 if a(n-1) is even, a(n) = a(n-1) + n otherwise) reach the value of 1.

The programs for A185038, there is no canonical definition to state claims against.
-/

/-! ## A185038.P8206716848519964113

`record[A208852(A208849(n))+n]`
-/

namespace A185038.P8206716848519964113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208852 (A208849 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185038.P8206716848519964113

/-!
# A185039: Numbers of the form 9*m^2 + 4*m, m an integer.

The programs for A185039, the canonical program `A185039.P4008326806517723638` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185039 has offset 1).

The definition of A185039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185039.P7573648342775292155

`ogf((5x+8x^2+5x^3)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A185039.P7573648342775292155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 8, 5] [1, -1, -2, 2, 1, -1] n

end

end A185039.P7573648342775292155

namespace A185039

/-- `ogf((5x+8x^2+5x^3)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P7573648342775292155.Spec : Prop :=
  ∀ n, P7573648342775292155.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P9668519311138912249

`(18*(n+1)*n+(2*(n+1)-1)*(-1)^(n+1)+1)/8`
-/

namespace A185039.P9668519311138912249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * (n + 1) * n : ℤ) + ((2 * (n + 1) : ℤ) - 1) * (-1) ^ (n + 1) + 1 : ℚ) / 8

end

end A185039.P9668519311138912249

namespace A185039

/-- `(18*(n+1)*n+(2*(n+1)-1)*(-1)^(n+1)+1)/8` -/
def P9668519311138912249.Spec : Prop :=
  ∀ n, P9668519311138912249.a n = (A185039 (n + 1) : ℚ)

end A185039

/-! ## A185039.P4008326806517723638

`A004526(n+1)*A156638(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185039

/-- `A004526(n+1)*A156638(n+1)` -/
def P4008326806517723638.Spec : Prop :=
  ∀ n, P4008326806517723638.a n = A185039 (n + 1)

theorem P4008326806517723638.correct : P4008326806517723638.Spec := by
  intro n
  simp only [A185039, Nat.add_sub_cancel]

end A185039

/-! ## A185039.P7456166534837728816

`∑[n*(n%2+4)]`
-/

namespace A185039.P7456166534837728816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185039.P7456166534837728816

namespace A185039

/-- `∑[n*(n%2+4)]` -/
def P7456166534837728816.Spec : Prop :=
  ∀ n, (P7456166534837728816.a n : ℤ) = A185039 (n + 1)

end A185039

/-! ## A185039.P8322903700021317689

`∑[lcm(2, n)+3*n]`
-/

namespace A185039.P8322903700021317689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185039.P8322903700021317689

namespace A185039

/-- `∑[lcm(2, n)+3*n]` -/
def P8322903700021317689.Spec : Prop :=
  ∀ n, (P8322903700021317689.a n : ℤ) = A185039 (n + 1)

end A185039

/-! ## A185039.P9224820889792364814

`∑[n*(6-gcd(2, n))]`
-/

namespace A185039.P9224820889792364814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (6 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185039.P9224820889792364814

namespace A185039

/-- `∑[n*(6-gcd(2, n))]` -/
def P9224820889792364814.Spec : Prop :=
  ∀ n, P9224820889792364814.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P2602216830360296228

`∑[n*(and(1, n)+4)]`
-/

namespace A185039.P2602216830360296228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185039.P2602216830360296228

namespace A185039

/-- `∑[n*(and(1, n)+4)]` -/
def P2602216830360296228.Spec : Prop :=
  ∀ n, (P2602216830360296228.a n : ℤ) = A185039 (n + 1)

end A185039

/-! ## A185039.P5306134893140078830

`∑[n*(5-and(1, n-1))]`
-/

namespace A185039.P5306134893140078830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (5 - Int.land 1 ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185039.P5306134893140078830

namespace A185039

/-- `∑[n*(5-and(1, n-1))]` -/
def P5306134893140078830.Spec : Prop :=
  ∀ n, P5306134893140078830.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P10149180818171492409

`∑[n*(or(1, n+3)-(n-1))]`
-/

namespace A185039.P10149180818171492409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lor 1 (n + 3) : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185039.P10149180818171492409

namespace A185039

/-- `∑[n*(or(1, n+3)-(n-1))]` -/
def P10149180818171492409.Spec : Prop :=
  ∀ n, P10149180818171492409.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P6933130151894024872

`floor((∑[floor(a(n-2))]/3)²)` with `a(0)=2, a(1)=5, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A185039.P6933130151894024872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3) ^ 2⌋

end

end A185039.P6933130151894024872

namespace A185039

/-- `floor((∑[floor(a(n-2))]/3)²)` -/
def P6933130151894024872.Spec : Prop :=
  ∀ n, P6933130151894024872.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P4448777279338393534

`∑[n*A010710(n)]`
-/

namespace A185039.P4448777279338393534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185039.P4448777279338393534

namespace A185039

/-- `∑[n*A010710(n)]` -/
def P4448777279338393534.Spec : Prop :=
  ∀ n, P4448777279338393534.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P15124333532488070416

`A266958(n+1)+1`
-/

namespace A185039.P15124333532488070416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266958 (n + 1) + 1

end

end A185039.P15124333532488070416

namespace A185039

/-- `A266958(n+1)+1` -/
def P15124333532488070416.Spec : Prop :=
  ∀ n, P15124333532488070416.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P15842657096677379971

`A045943(n)+∑[lcm(2, n)]`
-/

namespace A185039.P15842657096677379971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185039.P15842657096677379971

namespace A185039

/-- `A045943(n)+∑[lcm(2, n)]` -/
def P15842657096677379971.Spec : Prop :=
  ∀ n, P15842657096677379971.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P8712519224989497600

`A036666(n+1)+∑[2*n]`
-/

namespace A185039.P8712519224989497600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A185039.P8712519224989497600

namespace A185039

/-- `A036666(n+1)+∑[2*n]` -/
def P8712519224989497600.Spec : Prop :=
  ∀ n, P8712519224989497600.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P7890121762375150135

`∑[n]+2*A274830(n+1)`
-/

namespace A185039.P7890121762375150135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A274830 (n + 1)

end

end A185039.P7890121762375150135

namespace A185039

/-- `∑[n]+2*A274830(n+1)` -/
def P7890121762375150135.Spec : Prop :=
  ∀ n, P7890121762375150135.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P6062250449022222531

`A152749(n)+A045943(n)`
-/

namespace A185039.P6062250449022222531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n + A045943 n

end

end A185039.P6062250449022222531

namespace A185039

/-- `A152749(n)+A045943(n)` -/
def P6062250449022222531.Spec : Prop :=
  ∀ n, P6062250449022222531.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P13889501285307146543

`A317300(n)+A273368(n)`
-/

namespace A185039.P13889501285307146543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n + A273368 n

end

end A185039.P13889501285307146543

namespace A185039

/-- `A317300(n)+A273368(n)` -/
def P13889501285307146543.Spec : Prop :=
  ∀ n, P13889501285307146543.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P14434215973221664023

`A045944(n)-A032438(n)`
-/

namespace A185039.P14434215973221664023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - A032438 n

end

end A185039.P14434215973221664023

namespace A185039

/-- `A045944(n)-A032438(n)` -/
def P14434215973221664023.Spec : Prop :=
  ∀ n, P14434215973221664023.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P17646745671724395930

`A028895(n)-A110660(n)`
-/

namespace A185039.P17646745671724395930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n - A110660 n

end

end A185039.P17646745671724395930

namespace A185039

/-- `A028895(n)-A110660(n)` -/
def P17646745671724395930.Spec : Prop :=
  ∀ n, P17646745671724395930.a n = A185039 (n + 1)

end A185039

/-! ## A185039.P8573553238422240066

`A016754(n)-A212965(n)`
-/

namespace A185039.P8573553238422240066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A212965 n

end

end A185039.P8573553238422240066

namespace A185039

/-- `A016754(n)-A212965(n)` -/
def P8573553238422240066.Spec : Prop :=
  ∀ n, P8573553238422240066.a n = A185039 (n + 1)

end A185039

/-!
# A185040: O.g.f.: 1/(1-x) * Sum_{n>=0} 1/(1-(n+1)*x)^n * x^n/n! * exp(-x/(1-(n+1)*x)).

The programs for A185040, there is no canonical definition to state claims against.
-/

/-! ## A185040.P15314274005337592402

`A316364(41*n!)`
-/

namespace A185040.P15314274005337592402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316364 (41 * Nat.factorial n)

end

end A185040.P15314274005337592402

/-! ## A185040.P17836892629652299487

`round(root(A266572(∑[n+3]+1), 5))`
-/

namespace A185040.P17836892629652299487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A266572 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℝ) ^ (1 / (5 : ℝ)))

end

end A185040.P17836892629652299487

/-! ## A185040.P8865347315666505719

`A256133(A110140(n))`
-/

namespace A185040.P8865347315666505719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A110140 n).toNat

end

end A185040.P8865347315666505719

/-!
# A185042: Initial term of first run of exactly n consecutive numbers with 4 distinct prime factors.

The programs for A185042, there is no canonical definition to state claims against.
-/

/-! ## A185042.P17171569046499946330

`A375287(Δ[A005586(n)])`
-/

namespace A185042.P17171569046499946330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375287 (f1 (n + 1) - f1 n).toNat

end

end A185042.P17171569046499946330

/-! ## A185042.P6776656078745008988

`A375287(A075543(n+1))`
-/

namespace A185042.P6776656078745008988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375287 (A075543 (n + 1)).toNat

end

end A185042.P6776656078745008988

/-!
# A185043: Number of disconnected 4-regular simple graphs on n vertices with girth exactly 3.

The programs for A185043, there is no canonical definition to state claims against.
-/

/-! ## A185043.P13778966182088660371

`A033483(n)-A185044(n)`
-/

namespace A185043.P13778966182088660371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033483 n - A185044 n

end

end A185043.P13778966182088660371

/-! ## A185043.P3655641753445892998

`A033301(n)-(A185044(n)+A006820(n))`
-/

namespace A185043.P3655641753445892998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - (A185044 n + A006820 n)

end

end A185043.P3655641753445892998

/-! ## A185043.P5898050676456360846

`A033301(n)-A006820(n)-A185044(A028310(n))`
-/

namespace A185043.P5898050676456360846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - A006820 n - A185044 (A028310 n).toNat

end

end A185043.P5898050676456360846

/-! ## A185043.P15879466403708216767

`A185143(n)-A184943(n)`
-/

namespace A185043.P15879466403708216767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185143 n - A184943 n

end

end A185043.P15879466403708216767

/-! ## A185043.P9558751334906042787

`A033886(n)+A185143(n)-A006820(n)`
-/

namespace A185043.P9558751334906042787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 n + (A185143 n - A006820 n)

end

end A185043.P9558751334906042787

/-!
# A185044: Number of disconnected 4-regular simple graphs on n vertices with girth exactly 4.

The programs for A185044, there is no canonical definition to state claims against.
-/

/-! ## A185044.P11561569427443307545

`A185144(n)-A184944(n)`
-/

namespace A185044.P11561569427443307545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185144 n - A184944 n

end

end A185044.P11561569427443307545

/-! ## A185044.P12773093743448920894

`A033483(n)-A185043(n)`
-/

namespace A185044.P12773093743448920894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033483 n - A185043 n

end

end A185044.P12773093743448920894

/-! ## A185044.P7375540276783585107

`A033483(n)+A057428(n)*A185043(n)`
-/

namespace A185044.P7375540276783585107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033483 n + A057428 n * A185043 n

end

end A185044.P7375540276783585107

/-! ## A185044.P12343851736700126788

`A033301(n)-(A185043(n)+A006820(n))`
-/

namespace A185044.P12343851736700126788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - (A185043 n + A006820 n)

end

end A185044.P12343851736700126788

/-! ## A185044.P1833493082403504250

`A033301(n)-A006820(n)-A185043(A028310(n))`
-/

namespace A185044.P1833493082403504250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - A006820 n - A185043 (A028310 n).toNat

end

end A185044.P1833493082403504250

/-!
# A185045: Triangle of coefficients of polynomials u(n,x) jointly generated with A208659; see the Formula section.

The programs for A185045, the canonical program `A185045.P3015252119137830144` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185045 has offset 1).

The definition of A185045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185045.P3015252119137830144

`2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-2*T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185045

/-- `2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-2*T(n-2,k-1)` -/
def P3015252119137830144.Spec : Prop :=
  ∀ n, P3015252119137830144.a n = A185045 (n + 1)

theorem P3015252119137830144.correct : P3015252119137830144.Spec := by
  intro n
  simp only [A185045, Nat.add_sub_cancel]

end A185045

/-! ## A185045.P10633199885032625026

`A081277(n)*A238303(n)`
-/

namespace A185045.P10633199885032625026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 n * A238303 n

end

end A185045.P10633199885032625026

namespace A185045

/-- `A081277(n)*A238303(n)` -/
def P10633199885032625026.Spec : Prop :=
  ∀ n, P10633199885032625026.a n = A185045 (n + 1)

end A185045

/-! ## A185045.P1139231163560181025

`A193734(n)/A232089(n)`
-/

namespace A185045.P1139231163560181025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193734 n : ℚ) / (A232089 n : ℚ)

end

end A185045.P1139231163560181025

namespace A185045

/-- `A193734(n)/A232089(n)` -/
def P1139231163560181025.Spec : Prop :=
  ∀ n, P1139231163560181025.a n = (A185045 (n + 1) : ℚ)

end A185045

/-! ## A185045.P5907369265817264072

`A208659(n+1)-A073424(n)`
-/

namespace A185045.P5907369265817264072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208659 (n + 1) - A073424 n

end

end A185045.P5907369265817264072

namespace A185045

/-- `A208659(n+1)-A073424(n)` -/
def P5907369265817264072.Spec : Prop :=
  ∀ n, P5907369265817264072.a n = A185045 (n + 1)

end A185045

/-! ## A185045.P11001116623469928180

`A059268(n)*A208510(n+1)`
-/

namespace A185045.P11001116623469928180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208510 (n + 1)

end

end A185045.P11001116623469928180

namespace A185045

/-- `A059268(n)*A208510(n+1)` -/
def P11001116623469928180.Spec : Prop :=
  ∀ n, P11001116623469928180.a n = A185045 (n + 1)

end A185045

/-! ## A185045.P2006840493526375564

`gcd(A010816(n), A208659(n+1))`
-/

namespace A185045.P2006840493526375564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A208659 (n + 1))

end

end A185045.P2006840493526375564

namespace A185045

/-- `gcd(A010816(n), A208659(n+1))` -/
def P2006840493526375564.Spec : Prop :=
  ∀ n, (P2006840493526375564.a n : ℤ) = A185045 (n + 1)

end A185045

/-! ## A185045.P15305743643065882167

`abs((3-A035214(n))*A079628(n))`
-/

namespace A185045.P15305743643065882167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 - A035214 n) * A079628 n|

end

end A185045.P15305743643065882167

namespace A185045

/-- `abs((3-A035214(n))*A079628(n))` -/
def P15305743643065882167.Spec : Prop :=
  ∀ n, P15305743643065882167.a n = A185045 (n + 1)

end A185045

/-! ## A185045.P8827815340720527410

`A208510(n+1)+A208659(n+1)-A029653(n)`
-/

namespace A185045.P8827815340720527410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) + (A208659 (n + 1) - A029653 n)

end

end A185045.P8827815340720527410

namespace A185045

/-- `A208510(n+1)+A208659(n+1)-A029653(n)` -/
def P8827815340720527410.Spec : Prop :=
  ∀ n, P8827815340720527410.a n = A185045 (n + 1)

end A185045

/-! ## A185045.P4431911229443221195

`A208510(n+1)/A110813(n)*A209757(n+1)`
-/

namespace A185045.P4431911229443221195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208510 (n + 1) : ℚ) / (A110813 n : ℚ) * (A209757 (n + 1) : ℚ)

end

end A185045.P4431911229443221195

namespace A185045

/-- `A208510(n+1)/A110813(n)*A209757(n+1)` -/
def P4431911229443221195.Spec : Prop :=
  ∀ n, P4431911229443221195.a n = (A185045 (n + 1) : ℚ)

end A185045

/-! ## A185045.P2539449040120373811

`A208510(n+1)/A208342(n+1)*A208747(n+1)`
-/

namespace A185045.P2539449040120373811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208510 (n + 1) : ℚ) / (A208342 (n + 1) : ℚ) * (A208747 (n + 1) : ℚ)

end

end A185045.P2539449040120373811

namespace A185045

/-- `A208510(n+1)/A208342(n+1)*A208747(n+1)` -/
def P2539449040120373811.Spec : Prop :=
  ∀ n, P2539449040120373811.a n = (A185045 (n + 1) : ℚ)

end A185045

/-! ## A185045.P14163344784548752053

`A208659(n+1)/A208659(A029653(n)/A208510(n+1))`
-/

namespace A185045.P14163344784548752053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208659 (n + 1) : ℚ) / (A208659 (SequenceMachineLib.roundAway ((A029653 n : ℚ) / (A208510 (n + 1) : ℚ))).toNat : ℚ)

end

end A185045.P14163344784548752053

namespace A185045

/-- `A208659(n+1)/A208659(A029653(n)/A208510(n+1))` -/
def P14163344784548752053.Spec : Prop :=
  ∀ n, P14163344784548752053.a n = (A185045 (n + 1) : ℚ)

end A185045

/-! ## A185045.P11843751759439158629

`A208510(n+1)*A209757(n+1)/A110813(n)`
-/

namespace A185045.P11843751759439158629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208510 (n + 1) * A209757 (n + 1) : ℚ) / (A110813 n : ℚ)

end

end A185045.P11843751759439158629

namespace A185045

/-- `A208510(n+1)*A209757(n+1)/A110813(n)` -/
def P11843751759439158629.Spec : Prop :=
  ∀ n, P11843751759439158629.a n = (A185045 (n + 1) : ℚ)

end A185045

/-! ## A185045.P13107799857346194542

`A020639(A124927(n))*A081277(n)`
-/

namespace A185045.P13107799857346194542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124927 n).toNat * A081277 n

end

end A185045.P13107799857346194542

namespace A185045

/-- `A020639(A124927(n))*A081277(n)` -/
def P13107799857346194542.Spec : Prop :=
  ∀ n, P13107799857346194542.a n = A185045 (n + 1)

end A185045

/-! ## A185045.P3234306389349230205

`A020639(A035607(n))*A081277(n)`
-/

namespace A185045.P3234306389349230205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A035607 n).toNat * A081277 n

end

end A185045.P3234306389349230205

namespace A185045

/-- `A020639(A035607(n))*A081277(n)` -/
def P3234306389349230205.Spec : Prop :=
  ∀ n, P3234306389349230205.a n = A185045 (n + 1)

end A185045

/-! ## A185045.P5223595397064350745

`A014963(A059268(n))*A081277(n)`
-/

namespace A185045.P5223595397064350745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A059268 n).toNat * A081277 n

end

end A185045.P5223595397064350745

namespace A185045

/-- `A014963(A059268(n))*A081277(n)` -/
def P5223595397064350745.Spec : Prop :=
  ∀ n, P5223595397064350745.a n = A185045 (n + 1)

end A185045

/-!
# A185047: Expansion of 2F1( [1, 4/3]; [3]; 9*x).

The programs for A185047, the canonical program `A185047.P18180775153408804782` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185047 has offset 0).

The definition of A185047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185047.P18180775153408804782

`A155579(n+1)/3`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185047

/-- `A155579(n+1)/3` -/
def P18180775153408804782.Spec : Prop :=
  ∀ n, P18180775153408804782.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P3414525298324063993

`(9*n+3)*a(n-1)/(n+2)` with `a(0)=1`
-/

namespace A185047.P3414525298324063993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n + 3 : ℚ) * a (n - 1) / (n + 2 : ℚ)

end

end A185047.P3414525298324063993

namespace A185047

/-- `(9*n+3)*a(n-1)/(n+2)` -/
def P3414525298324063993.Spec : Prop :=
  ∀ n, P3414525298324063993.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P7063904458617302791

`A004991(n)/Δ[A000292(n)]`
-/

namespace A185047.P7063904458617302791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A185047.P7063904458617302791

namespace A185047

/-- `A004991(n)/Δ[A000292(n)]` -/
def P7063904458617302791.Spec : Prop :=
  ∀ n, P7063904458617302791.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P13022990802116357930

`A004991(n)/record[A008795(n)]`
-/

namespace A185047.P13022990802116357930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A185047.P13022990802116357930

namespace A185047

/-- `A004991(n)/record[A008795(n)]` -/
def P13022990802116357930.Spec : Prop :=
  ∀ n, P13022990802116357930.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P15147331774556083963

`A004991(n)/A008795(2*n)`
-/

namespace A185047.P15147331774556083963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (A008795 (2 * n) : ℚ)

end

end A185047.P15147331774556083963

namespace A185047

/-- `A004991(n)/A008795(2*n)` -/
def P15147331774556083963.Spec : Prop :=
  ∀ n, P15147331774556083963.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P16963099244354374201

`A004991(n)/(A000124(n)+n)`
-/

namespace A185047.P16963099244354374201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (A000124 n + (n : ℤ) : ℚ)

end

end A185047.P16963099244354374201

namespace A185047

/-- `A004991(n)/(A000124(n)+n)` -/
def P16963099244354374201.Spec : Prop :=
  ∀ n, P16963099244354374201.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P5165382283685133965

`A004991(n)/record[A038722(n+1)]`
-/

namespace A185047.P5165382283685133965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A185047.P5165382283685133965

namespace A185047

/-- `A004991(n)/record[A038722(n+1)]` -/
def P5165382283685133965.Spec : Prop :=
  ∀ n, P5165382283685133965.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P14695046697531892563

`A004991(n)/A038722(A000124(n))`
-/

namespace A185047.P14695046697531892563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (A038722 (A000124 n).toNat : ℚ)

end

end A185047.P14695046697531892563

namespace A185047

/-- `A004991(n)/A038722(A000124(n))` -/
def P14695046697531892563.Spec : Prop :=
  ∀ n, P14695046697531892563.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P408703843086106560

`A004991(n)/A008619(A028552(n))`
-/

namespace A185047.P408703843086106560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (A008619 (A028552 n).toNat : ℚ)

end

end A185047.P408703843086106560

namespace A185047

/-- `A004991(n)/A008619(A028552(n))` -/
def P408703843086106560.Spec : Prop :=
  ∀ n, P408703843086106560.a n = (A185047 n : ℚ)

end A185047

/-! ## A185047.P10093181109149946245

`A007559(n+1)/A034000(n+1)*A034164(n)`
-/

namespace A185047.P10093181109149946245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007559 (n + 1) : ℚ) / (A034000 (n + 1) : ℚ) * (A034164 n : ℚ)

end

end A185047.P10093181109149946245

namespace A185047

/-- `A007559(n+1)/A034000(n+1)*A034164(n)` -/
def P10093181109149946245.Spec : Prop :=
  ∀ n, P10093181109149946245.a n = (A185047 n : ℚ)

end A185047

/-!
# A185048: Length of the continued fraction for floor(Fibonacci(n)*(1+sqrt(5))/2) / Fibonacci(n).

The programs for A185048, the canonical program `A185048.P12342454790647845616` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185048 has offset 1).

The definition of A185048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185048.P12342454790647845616

`ogf((1+x+x^2+x^3+x^4-x^5+x^6+x^7)/(1-x^2-x^4+x^6))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185048

/-- `ogf((1+x+x^2+x^3+x^4-x^5+x^6+x^7)/(1-x^2-x^4+x^6))` -/
def P12342454790647845616.Spec : Prop :=
  ∀ n, P12342454790647845616.a n = A185048 (n + 1)

theorem P12342454790647845616.correct : P12342454790647845616.Spec := by
  intro n
  simp only [A185048, Nat.add_sub_cancel]

end A185048

/-! ## A185048.P2081809848211257609

`lcm(2, 1-n)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A185048.P2081809848211257609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  (Int.lcm 2 (1 - (n : ℤ)) : ℤ) - a (n - 2)

end

end A185048.P2081809848211257609

namespace A185048

/-- `lcm(2, 1-n)-a(n-2)` -/
def P2081809848211257609.Spec : Prop :=
  ∀ n, P2081809848211257609.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P3889791204054026942

`a(a(n-2))+(n+1)%(a(a(n-2))+1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A185048.P3889791204054026942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  a (a (n - 2)) + (n + 1) % (a (a (n - 2)) + 1)

end

end A185048.P3889791204054026942

namespace A185048

/-- `a(a(n-2))+(n+1)%(a(a(n-2))+1)` -/
def P3889791204054026942.Spec : Prop :=
  ∀ n, (P3889791204054026942.a n : ℤ) = A185048 (n + 1)

end A185048

/-! ## A185048.P9115810525827331495

`A240828(n+1)+C(n, n²)`
-/

namespace A185048.P9115810525827331495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A185048.P9115810525827331495

namespace A185048

/-- `A240828(n+1)+C(n, n²)` -/
def P9115810525827331495.Spec : Prop :=
  ∀ n, P9115810525827331495.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P9940162851761358232

`A131055(A026741(n+1))`
-/

namespace A185048.P9940162851761358232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A026741 (n + 1)).toNat

end

end A185048.P9940162851761358232

namespace A185048

/-- `A131055(A026741(n+1))` -/
def P9940162851761358232.Spec : Prop :=
  ∀ n, P9940162851761358232.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P15611284864105149027

`A028310(A240828(n+1))`
-/

namespace A185048.P15611284864105149027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A240828 (n + 1)).toNat

end

end A185048.P15611284864105149027

namespace A185048

/-- `A028310(A240828(n+1))` -/
def P15611284864105149027.Spec : Prop :=
  ∀ n, P15611284864105149027.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P11616922343531458418

`A065190(A240828(n+1)+1)`
-/

namespace A185048.P11616922343531458418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A240828 (n + 1) + 1).toNat

end

end A185048.P11616922343531458418

namespace A185048

/-- `A065190(A240828(n+1)+1)` -/
def P11616922343531458418.Spec : Prop :=
  ∀ n, P11616922343531458418.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P8335379290686382727

`gcd(A130779(n), A240828(n+1))`
-/

namespace A185048.P8335379290686382727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130779 n) (A240828 (n + 1))

end

end A185048.P8335379290686382727

namespace A185048

/-- `gcd(A130779(n), A240828(n+1))` -/
def P8335379290686382727.Spec : Prop :=
  ∀ n, (P8335379290686382727.a n : ℤ) = A185048 (n + 1)

end A185048

/-! ## A185048.P7224539975259369484

`A240828(n+1)+A019590(n+1)`
-/

namespace A185048.P7224539975259369484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (n + 1) + A019590 (n + 1)

end

end A185048.P7224539975259369484

namespace A185048

/-- `A240828(n+1)+A019590(n+1)` -/
def P7224539975259369484.Spec : Prop :=
  ∀ n, P7224539975259369484.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P10593566609996553217

`A029578(n+3-A106469(A029578(n+1)))`
-/

namespace A185048.P10593566609996553217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ((n + 3 : ℤ) - A106469 (A029578 (n + 1)).toNat).toNat

end

end A185048.P10593566609996553217

namespace A185048

/-- `A029578(n+3-A106469(A029578(n+1)))` -/
def P10593566609996553217.Spec : Prop :=
  ∀ n, P10593566609996553217.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P16318518324343480080

`A240828(n+1)+A130779(A240828(n+1)+1)`
-/

namespace A185048.P16318518324343480080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (n + 1) + A130779 (A240828 (n + 1) + 1).toNat

end

end A185048.P16318518324343480080

namespace A185048

/-- `A240828(n+1)+A130779(A240828(n+1)+1)` -/
def P16318518324343480080.Spec : Prop :=
  ∀ n, P16318518324343480080.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P12380576169489016076

`A004277(A130722(n+1))`
-/

namespace A185048.P12380576169489016076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A130722 (n + 1)).toNat

end

end A185048.P12380576169489016076

namespace A185048

/-- `A004277(A130722(n+1))` -/
def P12380576169489016076.Spec : Prop :=
  ∀ n, P12380576169489016076.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P16109227069744819775

`A055456(A215495(n+1))`
-/

namespace A185048.P16109227069744819775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A215495 (n + 1)).toNat

end

end A185048.P16109227069744819775

namespace A185048

/-- `A055456(A215495(n+1))` -/
def P16109227069744819775.Spec : Prop :=
  ∀ n, P16109227069744819775.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P7090302739734799710

`A004275(A178804(n+2))`
-/

namespace A185048.P7090302739734799710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A178804 (n + 2)).toNat

end

end A185048.P7090302739734799710

namespace A185048

/-- `A004275(A178804(n+2))` -/
def P7090302739734799710.Spec : Prop :=
  ∀ n, P7090302739734799710.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P9240555391749266613

`A004275(A130722(n+1)+1)`
-/

namespace A185048.P9240555391749266613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A130722 (n + 1) + 1).toNat

end

end A185048.P9240555391749266613

namespace A185048

/-- `A004275(A130722(n+1)+1)` -/
def P9240555391749266613.Spec : Prop :=
  ∀ n, P9240555391749266613.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P4943104005795348257

`Δ[A008751(A267528(n+1))]`
-/

namespace A185048.P4943104005795348257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008751 (A267528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185048.P4943104005795348257

namespace A185048

/-- `Δ[A008751(A267528(n+1))]` -/
def P4943104005795348257.Spec : Prop :=
  ∀ n, P4943104005795348257.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P1084527468446211897

`A092533(lcm(2, n+1))`
-/

namespace A185048.P1084527468446211897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (Nat.lcm 2 (n + 1))

end

end A185048.P1084527468446211897

namespace A185048

/-- `A092533(lcm(2, n+1))` -/
def P1084527468446211897.Spec : Prop :=
  ∀ n, P1084527468446211897.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P9925171631954586568

`A092533(A109534(n))`
-/

namespace A185048.P9925171631954586568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A109534 n).toNat

end

end A185048.P9925171631954586568

namespace A185048

/-- `A092533(A109534(n))` -/
def P9925171631954586568.Spec : Prop :=
  ∀ n, P9925171631954586568.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P7037027678092393050

`A092533(A059029(n+1))`
-/

namespace A185048.P7037027678092393050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A059029 (n + 1)).toNat

end

end A185048.P7037027678092393050

namespace A185048

/-- `A092533(A059029(n+1))` -/
def P7037027678092393050.Spec : Prop :=
  ∀ n, P7037027678092393050.a n = A185048 (n + 1)

end A185048

/-! ## A185048.P11079853868238909125

`A092533(A066043(n+1))`
-/

namespace A185048.P11079853868238909125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A066043 (n + 1)).toNat

end

end A185048.P11079853868238909125

namespace A185048

/-- `A092533(A066043(n+1))` -/
def P11079853868238909125.Spec : Prop :=
  ∀ n, P11079853868238909125.a n = A185048 (n + 1)

end A185048

/-!
# A185049: Last term in the continued fraction for floor(Fibonacci(n)*(1+sqrt(5))/2) / Fibonacci(n).

The programs for A185049, the canonical program `A185049.P17998193582702363390` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185049 has offset 1).

The definition of A185049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185049.P17998193582702363390

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185049

/-- `a(n-4)` -/
def P17998193582702363390.Spec : Prop :=
  ∀ n, (P17998193582702363390.a n : ℤ) = A185049 (n + 1)

theorem P17998193582702363390.correct : P17998193582702363390.Spec := by
  intro n
  simp only [A185049, Nat.add_sub_cancel]

end A185049

/-!
# A185050: Least k such that G(k) > 3 - 1/2^n, where G(k) is the sum of the first k terms of the geometric series 1 + 2/3 + (2/3)^2 + ....

The programs for A185050, the canonical program `A185050.P3885030406127625706` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185050 has offset 0).

The definition of A185050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185050.P6337445102997121048

`comp[floor(n*log2(3))]+1-n`
-/

namespace A185050.P6337445102997121048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A185050.P6337445102997121048

namespace A185050

/-- `comp[floor(n*log2(3))]+1-n` -/
def P6337445102997121048.Spec : Prop :=
  ∀ n, P6337445102997121048.a n = A185050 n

end A185050

/-! ## A185050.P3885030406127625706

`abs(A054414(n+1)-n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185050

/-- `abs(A054414(n+1)-n)` -/
def P3885030406127625706.Spec : Prop :=
  ∀ n, P3885030406127625706.a n = A185050 n

theorem P3885030406127625706.correct : P3885030406127625706.Spec := by
  intro n
  simp only [A185050]

end A185050

/-! ## A185050.P15489226214506053037

`A009056(A325913(n+1))`
-/

namespace A185050.P15489226214506053037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A325913 (n + 1)).toNat

end

end A185050.P15489226214506053037

namespace A185050

/-- `A009056(A325913(n+1))` -/
def P15489226214506053037.Spec : Prop :=
  ∀ n, P15489226214506053037.a n = A185050 n

end A185050

/-! ## A185050.P3828403407346540606

`record[a(A022921(n))+n]` with `a(0)=3, a(1)=0`
-/

namespace A185050.P3828403407346540606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (A022921 n).toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185050.P3828403407346540606

namespace A185050

/-- `record[a(A022921(n))+n]` -/
def P3828403407346540606.Spec : Prop :=
  ∀ n, (P3828403407346540606.a n : ℤ) = A185050 n

end A185050

/-! ## A185050.P13444988051988583884

`record[n+5-A093476(n+2)]`
-/

namespace A185050.P13444988051988583884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - A093476 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185050.P13444988051988583884

namespace A185050

/-- `record[n+5-A093476(n+2)]` -/
def P13444988051988583884.Spec : Prop :=
  ∀ n, P13444988051988583884.a n = A185050 n

end A185050

/-! ## A185050.P16919095462807194928

`record[floor(cosh(A022921(n+1))+n)]`
-/

namespace A185050.P16919095462807194928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (A022921 (n + 1) : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185050.P16919095462807194928

namespace A185050

/-- `record[floor(cosh(A022921(n+1))+n)]` -/
def P16919095462807194928.Spec : Prop :=
  ∀ n, P16919095462807194928.a n = A185050 n

end A185050

/-! ## A185050.P5314443893627377878

`A009056(eq[2, A093476(n+2)]+1)`
-/

namespace A185050.P5314443893627377878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093476 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A185050.P5314443893627377878

namespace A185050

/-- `A009056(eq[2, A093476(n+2)]+1)` -/
def P5314443893627377878.Spec : Prop :=
  ∀ n, P5314443893627377878.a n = A185050 n

end A185050

/-! ## A185050.P9398252366749437483

`A020915(A054414(n+1)+1)`
-/

namespace A185050.P9398252366749437483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A054414 (n + 1) + 1).toNat

end

end A185050.P9398252366749437483

namespace A185050

/-- `A020915(A054414(n+1)+1)` -/
def P9398252366749437483.Spec : Prop :=
  ∀ n, P9398252366749437483.a n = A185050 n

end A185050

/-! ## A185050.P12025573212573233423

`A156301(A054414(n+1)+1)`
-/

namespace A185050.P12025573212573233423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A054414 (n + 1) + 1).toNat

end

end A185050.P12025573212573233423

namespace A185050

/-- `A156301(A054414(n+1)+1)` -/
def P12025573212573233423.Spec : Prop :=
  ∀ n, P12025573212573233423.a n = A185050 n

end A185050

/-! ## A185050.P14689462823044025583

`A020915(A117630(n+1)+2)`
-/

namespace A185050.P14689462823044025583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A117630 (n + 1) + 2).toNat

end

end A185050.P14689462823044025583

namespace A185050

/-- `A020915(A117630(n+1)+2)` -/
def P14689462823044025583.Spec : Prop :=
  ∀ n, P14689462823044025583.a n = A185050 n

end A185050

/-! ## A185050.P18314251890336010364

`A156301(A117630(n+1)+2)`
-/

namespace A185050.P18314251890336010364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A117630 (n + 1) + 2).toNat

end

end A185050.P18314251890336010364

namespace A185050

/-- `A156301(A117630(n+1)+2)` -/
def P18314251890336010364.Spec : Prop :=
  ∀ n, P18314251890336010364.a n = A185050 n

end A185050

/-! ## A185050.P1388162108780112126

`round(log(A220381(n+2)))`
-/

namespace A185050.P1388162108780112126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A220381 (n + 2) : ℝ))

end

end A185050.P1388162108780112126

namespace A185050

/-- `round(log(A220381(n+2)))` -/
def P1388162108780112126.Spec : Prop :=
  ∀ n, P1388162108780112126.a n = A185050 n

end A185050

/-!
# A185052: Nearest prime to (prime(n)/2)^4.

The programs for A185052, there is no canonical definition to state claims against.
-/

/-! ## A185052.P10876132503427106117

`A007918(floor((A001248(n+1)/4)²))`
-/

namespace A185052.P10876132503427106117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ⌊((A001248 (n + 1) : ℚ) / 4) ^ 2⌋.toNat

end

end A185052.P10876132503427106117

/-!
# A185053: Number of disconnected 5-regular simple graphs on 2n vertices with girth exactly 3.

The programs for A185053, there is no canonical definition to state claims against.
-/

/-! ## A185053.P8975425574480471847

`A165655(n)-A185254(n)`
-/

namespace A185053.P8975425574480471847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 n - A185254 n

end

end A185053.P8975425574480471847

/-! ## A185053.P15854777629218176992

`A165655(n)-A073357(A033483(n))`
-/

namespace A185053.P15854777629218176992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 n - A073357 (A033483 n).toNat

end

end A185053.P15854777629218176992

/-! ## A185053.P16905540492124691241

`A165655(n)-A003415(A151359(n))`
-/

namespace A185053.P16905540492124691241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 n - A003415 (A151359 n).toNat

end

end A185053.P16905540492124691241

/-! ## A185053.P12290038092040831058

`A165655(n)-A001591(A165652(n))`
-/

namespace A185053.P12290038092040831058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 n - A001591 (A165652 n).toNat

end

end A185053.P12290038092040831058

/-! ## A185053.P3475635811111091510

`A165655(n)-A073357(A185043(n))`
-/

namespace A185053.P3475635811111091510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 n - A073357 (A185043 n).toNat

end

end A185053.P3475635811111091510

/-!
# A185054: G.f.: 1/(1-x) = Sum_{n>=0} a(n) * x^n*(1-x)^n / Product_{k=1..n-1} (1 + k*x).

The programs for A185054, there is no canonical definition to state claims against.
-/

/-! ## A185054.P2473352529841945607

`A064775(A276928(n)+A052845(n))`
-/

namespace A185054.P2473352529841945607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A276928 n + A052845 n).toNat

end

end A185054.P2473352529841945607

/-! ## A185054.P15731825226595992244

`A014307(n)-A137579(A005001(n))`
-/

namespace A185054.P15731825226595992244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n - A137579 (A005001 n).toNat

end

end A185054.P15731825226595992244

/-! ## A185054.P17660741258302053263

`A014307(n)-A137579(A007623(n))`
-/

namespace A185054.P17660741258302053263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014307 n - A137579 (A007623 n).toNat

end

end A185054.P17660741258302053263

/-!
# A185055: Number of representations of 5^(2n) as a sum a^2 + b^2 + c^2 with 0 < a <= b <= c.

The programs for A185055, the canonical program `A185055.P17663764066162180206` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185055 has offset 0).

The definition of A185055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185055.P14005382801600646333

`ogf(2x^2/(1-7x+11x^2-5x^3))`
-/

namespace A185055.P14005382801600646333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -7, 11, -5] n

end

end A185055.P14005382801600646333

namespace A185055

/-- `ogf(2x^2/(1-7x+11x^2-5x^3))` -/
def P14005382801600646333.Spec : Prop :=
  ∀ n, P14005382801600646333.a n = A185055 n

end A185055

/-! ## A185055.P17663764066162180206

`7*a(n-1)-11*a(n-2)+5*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185055

/-- `7*a(n-1)-11*a(n-2)+5*a(n-3)` -/
def P17663764066162180206.Spec : Prop :=
  ∀ n, P17663764066162180206.a n = A185055 n

theorem P17663764066162180206.correct : P17663764066162180206.Spec := by
  intro n
  simp only [A185055]

end A185055

/-! ## A185055.P14175818133578135420

`(5^n-4*n-1)/8`
-/

namespace A185055.P14175818133578135420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - (4 * n : ℤ) - 1 : ℚ) / 8

end

end A185055.P14175818133578135420

namespace A185055

/-- `(5^n-4*n-1)/8` -/
def P14175818133578135420.Spec : Prop :=
  ∀ n, P14175818133578135420.a n = (A185055 n : ℚ)

theorem P14175818133578135420.correct : P14175818133578135420.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A185055, Nat.add_sub_cancel, A185055.P14175818133578135420.a, A185055.P17663764066162180206.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A185055, Nat.add_sub_cancel, A185055.P14175818133578135420.a, A185055.P17663764066162180206.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A185055

/-! ## A185055.P17243278054911503750

`∑[ogf(2x^2/(1-6x+5x^2))]`
-/

namespace A185055.P17243278054911503750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -6, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185055.P17243278054911503750

namespace A185055

/-- `∑[ogf(2x^2/(1-6x+5x^2))]` -/
def P17243278054911503750.Spec : Prop :=
  ∀ n, P17243278054911503750.a n = A185055 n

end A185055

/-! ## A185055.P8387643077021974772

`∑[5*a(n-1)+2]` with `a(0)=0, a(1)=0`
-/

namespace A185055.P8387643077021974772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  5 * f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185055.P8387643077021974772

namespace A185055

/-- `∑[5*a(n-1)+2]` -/
def P8387643077021974772.Spec : Prop :=
  ∀ n, (P8387643077021974772.a n : ℤ) = A185055 n

end A185055

/-! ## A185055.P13223255851814685157

`∑[∑[5*a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A185055.P13223255851814685157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  5 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185055.P13223255851814685157

namespace A185055

/-- `∑[∑[5*a(n-1)]]` -/
def P13223255851814685157.Spec : Prop :=
  ∀ n, (P13223255851814685157.a n : ℤ) = A185055 n

end A185055

/-! ## A185055.P6051971428195405145

`2*(n-1)+5*a(n-1)` with `a(0)=0`
-/

namespace A185055.P6051971428195405145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n : ℤ) - 1) + 5 * a (n - 1)

end

end A185055.P6051971428195405145

namespace A185055

/-- `2*(n-1)+5*a(n-1)` -/
def P6051971428195405145.Spec : Prop :=
  ∀ n, P6051971428195405145.a n = A185055 n

end A185055

/-! ## A185055.P6068104366181233439

`5*a(n-1)-2*(1-n)` with `a(0)=0`
-/

namespace A185055.P6068104366181233439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * a (n - 1) - 2 * (1 - (n : ℤ))

end

end A185055.P6068104366181233439

namespace A185055

/-- `5*a(n-1)-2*(1-n)` -/
def P6068104366181233439.Spec : Prop :=
  ∀ n, P6068104366181233439.a n = A185055 n

end A185055

/-! ## A185055.P16534575215858545460

`A233106(n+1)-A164039(n)`
-/

namespace A185055.P16534575215858545460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 1) - A164039 n

end

end A185055.P16534575215858545460

namespace A185055

/-- `A233106(n+1)-A164039(n)` -/
def P16534575215858545460.Spec : Prop :=
  ∀ n, P16534575215858545460.a n = A185055 n

end A185055

/-! ## A185055.P10457117759294989277

`∑[A121177(n+1)]-A121177(n+1)`
-/

namespace A185055.P10457117759294989277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A121177 (n + 1)

end

end A185055.P10457117759294989277

namespace A185055

/-- `∑[A121177(n+1)]-A121177(n+1)` -/
def P10457117759294989277.Spec : Prop :=
  ∀ n, P10457117759294989277.a n = A185055 n

end A185055

/-!
# A185056: Number of ways to place n nonattacking composite pieces bishop + semi-rook on an n X n board.

The programs for A185056, there is no canonical definition to state claims against.
-/

/-! ## A185056.P3684287124090878843

`A289497(or(A006879(n), A007052(n)))`
-/

namespace A185056.P3684287124090878843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (Int.lor (A006879 n) (A007052 n)).toNat

end

end A185056.P3684287124090878843

/-! ## A185056.P3301177278116133428

`A007614(A132961(n+1))+A002467(n)`
-/

namespace A185056.P3301177278116133428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A132961 (n + 1)).toNat + A002467 n

end

end A185056.P3301177278116133428

/-!
# A185057: a(n) = n^n! (mod 5).

The programs for A185057, the canonical program `A185057.P9441839771885145019` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185057 has offset 0).

The definition of A185057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185057.P9441839771885145019

`a(a(n-5))` with `a(0)=0, a(1)=1, a(2)=4, a(3)=4, a(4)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185057

/-- `a(a(n-5))` -/
def P9441839771885145019.Spec : Prop :=
  ∀ n, (P9441839771885145019.a n : ℤ) = A185057 n

theorem P9441839771885145019.correct : P9441839771885145019.Spec := by
  intro n
  simp only [A185057]

end A185057

/-!
# A185058: a(n) = n^n! mod 7.

The programs for A185058, the canonical program `A185058.P2593882989368106348` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185058 has offset 0).

The definition of A185058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185058.P2593882989368106348

`ogf((x+4x^2+x^3+x^4+x^5+x^6-3x^9)/(1-x^7))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185058

/-- `ogf((x+4x^2+x^3+x^4+x^5+x^6-3x^9)/(1-x^7))` -/
def P2593882989368106348.Spec : Prop :=
  ∀ n, P2593882989368106348.a n = A185058 n

theorem P2593882989368106348.correct : P2593882989368106348.Spec := by
  intro n
  simp only [A185058]

end A185058

/-!
# A185059: a(n) = A010815(7*n).

The programs for A185059, the canonical program `A185059.P3995956921967741887` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185059 has offset 0).

The definition of A185059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185059.P3995956921967741887

`A010815(7*n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185059

/-- `A010815(7*n)` -/
def P3995956921967741887.Spec : Prop :=
  ∀ n, P3995956921967741887.a n = A185059 n

theorem P3995956921967741887.correct : P3995956921967741887.Spec := by
  intro n
  simp only [A185059]

end A185059

/-! ## A185059.P7251224484090706763

`A274719(2*7*n)`
-/

namespace A185059.P7251224484090706763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * (7 * n))

end

end A185059.P7251224484090706763

namespace A185059

/-- `A274719(2*7*n)` -/
def P7251224484090706763.Spec : Prop :=
  ∀ n, P7251224484090706763.a n = A185059 n

end A185059

/-! ## A185059.P3354860894004160603

`A010815(A008589(n))^5`
-/

namespace A185059.P3354860894004160603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A008589 n).toNat ^ 5

end

end A185059.P3354860894004160603

namespace A185059

/-- `A010815(A008589(n))^5` -/
def P3354860894004160603.Spec : Prop :=
  ∀ n, P3354860894004160603.a n = A185059 n

end A185059

/-! ## A185059.P13183482122261802065

`A010815(A016993(n)-1)^3`
-/

namespace A185059.P13183482122261802065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A016993 n - 1).toNat ^ 3

end

end A185059.P13183482122261802065

namespace A185059

/-- `A010815(A016993(n)-1)^3` -/
def P13183482122261802065.Spec : Prop :=
  ∀ n, P13183482122261802065.a n = A185059 n

end A185059

/-! ## A185059.P16244535276269990344

`A000007(n)-A257628(7*n)`
-/

namespace A185059.P16244535276269990344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A257628 (7 * n)

end

end A185059.P16244535276269990344

namespace A185059

/-- `A000007(n)-A257628(7*n)` -/
def P16244535276269990344.Spec : Prop :=
  ∀ n, P16244535276269990344.a n = A185059 n

end A185059

/-! ## A185059.P11338595453865834297

`A062157(n+1)*A121373(7*n)`
-/

namespace A185059.P11338595453865834297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A121373 (7 * n)

end

end A185059.P11338595453865834297

namespace A185059

/-- `A062157(n+1)*A121373(7*n)` -/
def P11338595453865834297.Spec : Prop :=
  ∀ n, P11338595453865834297.a n = A185059 n

end A185059

/-! ## A185059.P5825004959234594189

`A034947(2*n+1)*A121373(A008589(n))`
-/

namespace A185059.P5825004959234594189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A121373 (A008589 n).toNat

end

end A185059.P5825004959234594189

namespace A185059

/-- `A034947(2*n+1)*A121373(A008589(n))` -/
def P5825004959234594189.Spec : Prop :=
  ∀ n, P5825004959234594189.a n = A185059 n

end A185059

/-! ## A185059.P13767299934755895334

`A008683(A076821(n+1))-A257628(7*n)`
-/

namespace A185059.P13767299934755895334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A076821 (n + 1)).toNat - A257628 (7 * n)

end

end A185059.P13767299934755895334

namespace A185059

/-- `A008683(A076821(n+1))-A257628(7*n)` -/
def P13767299934755895334.Spec : Prop :=
  ∀ n, P13767299934755895334.a n = A185059 n

end A185059

/-! ## A185059.P8617064553848362298

`A121373(A008589(n))/A034947(A016921(n))`
-/

namespace A185059.P8617064553848362298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (A008589 n).toNat : ℚ) / (A034947 (A016921 n).toNat : ℚ)

end

end A185059.P8617064553848362298

namespace A185059

/-- `A121373(A008589(n))/A034947(A016921(n))` -/
def P8617064553848362298.Spec : Prop :=
  ∀ n, P8617064553848362298.a n = (A185059 n : ℚ)

end A185059

/-! ## A185059.P4934161351908530922

`A185295(A008607(n))`
-/

namespace A185059.P4934161351908530922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185295 (A008607 n).toNat

end

end A185059.P4934161351908530922

namespace A185059

/-- `A185295(A008607(n))` -/
def P4934161351908530922.Spec : Prop :=
  ∀ n, P4934161351908530922.a n = A185059 n

end A185059

/-! ## A185059.P4330593649881685867

`A204843(A103214(7*n))`
-/

namespace A185059.P4330593649881685867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204843 (A103214 (7 * n)).toNat

end

end A185059.P4330593649881685867

namespace A185059

/-- `A204843(A103214(7*n))` -/
def P4330593649881685867.Spec : Prop :=
  ∀ n, P4330593649881685867.a n = A185059 n

end A185059

/-! ## A185059.P8174698019418998333

`A008683((n+1)²)-A257628(7*n)`
-/

namespace A185059.P8174698019418998333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) - A257628 (7 * n)

end

end A185059.P8174698019418998333

namespace A185059

/-- `A008683((n+1)²)-A257628(7*n)` -/
def P8174698019418998333.Spec : Prop :=
  ∀ n, P8174698019418998333.a n = A185059 n

end A185059

/-! ## A185059.P5136364404480172918

`A134756(7*n)%2`
-/

namespace A185059.P5136364404480172918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134756 (7 * n)) 2

end

end A185059.P5136364404480172918

namespace A185059

/-- `A134756(7*n)%2` -/
def P5136364404480172918.Spec : Prop :=
  ∀ n, P5136364404480172918.a n = A185059 n

end A185059

/-! ## A185059.P5864321804424461437

`A007706(7*n)-1`
-/

namespace A185059.P5864321804424461437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 (7 * n) - 1

end

end A185059.P5864321804424461437

namespace A185059

/-- `A007706(7*n)-1` -/
def P5864321804424461437.Spec : Prop :=
  ∀ n, P5864321804424461437.a n = A185059 n

end A185059

/-!
# A185061: Position of the first occurrence of n in A193358 when it is considered to have the starting offset 1 instead of 0.

The programs for A185061, the canonical program `A185061.P6509372795270976756` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185061 has offset 1).

The definition of A185061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185061.P17795284702605030081

`ogf((1+x+x^2-4x^3+3x^4+x^5-x^6)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A185061.P17795284702605030081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -4, 3, 1, -1] [1, -1, -2, 2, 1, -1] n

end

end A185061.P17795284702605030081

namespace A185061

/-- `ogf((1+x+x^2-4x^3+3x^4+x^5-x^6)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P17795284702605030081.Spec : Prop :=
  ∀ n, P17795284702605030081.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P6509372795270976756

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=3, a(4)=11, a(5)=7, a(6)=19`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185061

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6509372795270976756.Spec : Prop :=
  ∀ n, P6509372795270976756.a n = A185061 (n + 1)

theorem P6509372795270976756.correct : P6509372795270976756.Spec := by
  intro n
  simp only [A185061, Nat.add_sub_cancel]

end A185061

/-! ## A185061.P16876994569187238927

`A193422(n+1)+1`
-/

namespace A185061.P16876994569187238927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193422 (n + 1) + 1

end

end A185061.P16876994569187238927

namespace A185061

/-- `A193422(n+1)+1` -/
def P16876994569187238927.Spec : Prop :=
  ∀ n, P16876994569187238927.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P11777797107962157085

`or(1, xor(1, n)+or(1, a(n-2)-1))` with `a(0)=1, a(1)=2`
-/

namespace A185061.P11777797107962157085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 ((Nat.xor 1 n : ℤ) + Int.lor 1 (a (n - 2) - 1))

end

end A185061.P11777797107962157085

namespace A185061

/-- `or(1, xor(1, n)+or(1, a(n-2)-1))` -/
def P11777797107962157085.Spec : Prop :=
  ∀ n, P11777797107962157085.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P12336500568353288046

`or(1, 2*xor(1, n)-(n-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A185061.P12336500568353288046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 ((2 * Nat.xor 1 n : ℤ) - ((n : ℤ) - a (n - 2)))

end

end A185061.P12336500568353288046

namespace A185061

/-- `or(1, 2*xor(1, n)-(n-a(n-2)))` -/
def P12336500568353288046.Spec : Prop :=
  ∀ n, P12336500568353288046.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P14448645353923931877

`or(1, xor(1, n)-(and(1, n)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A185061.P14448645353923931877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 ((Nat.xor 1 n : ℤ) - ((Nat.land 1 n : ℤ) - a (n - 2)))

end

end A185061.P14448645353923931877

namespace A185061

/-- `or(1, xor(1, n)-(and(1, n)-a(n-2)))` -/
def P14448645353923931877.Spec : Prop :=
  ∀ n, P14448645353923931877.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P5445874383191322006

`gcd(2, n)²+a(n-2)+n-2` with `a(0)=1, a(1)=2, a(2)=5, a(3)=3`
-/

namespace A185061.P5445874383191322006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 3] fun n a =>
  (Nat.gcd 2 n ^ 2 : ℤ) + (a (n - 2) + (n : ℤ)) - 2

end

end A185061.P5445874383191322006

namespace A185061

/-- `gcd(2, n)²+a(n-2)+n-2` -/
def P5445874383191322006.Spec : Prop :=
  ∀ n, P5445874383191322006.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P8800592895269898484

`gcd(4, n%2)+a(n-2)+n-2` with `a(0)=1, a(1)=2, a(2)=5, a(3)=3`
-/

namespace A185061.P8800592895269898484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 3] fun n a =>
  (Nat.gcd 4 (n % 2) : ℤ) + (a (n - 2) + (n : ℤ)) - 2

end

end A185061.P8800592895269898484

namespace A185061

/-- `gcd(4, n%2)+a(n-2)+n-2` -/
def P8800592895269898484.Spec : Prop :=
  ∀ n, P8800592895269898484.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P2479097049869299114

`char[1]+A338041(n+1)-n`
-/

namespace A185061.P2479097049869299114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A338041 (n + 1) - (n : ℤ))

end

end A185061.P2479097049869299114

namespace A185061

/-- `char[1]+A338041(n+1)-n` -/
def P2479097049869299114.Spec : Prop :=
  ∀ n, P2479097049869299114.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P11252463576206527215

`A338041(n+1)-A199969(n+1)`
-/

namespace A185061.P11252463576206527215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338041 (n + 1) - A199969 (n + 1)

end

end A185061.P11252463576206527215

namespace A185061

/-- `A338041(n+1)-A199969(n+1)` -/
def P11252463576206527215.Spec : Prop :=
  ∀ n, P11252463576206527215.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P1751497322467850421

`A065033(n)+(A065033(n)-A105812(n))²`
-/

namespace A185061.P1751497322467850421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + (A065033 n - A105812 n) ^ 2

end

end A185061.P1751497322467850421

namespace A185061

/-- `A065033(n)+(A065033(n)-A105812(n))²` -/
def P1751497322467850421.Spec : Prop :=
  ∀ n, P1751497322467850421.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P10033706608561017704

`A004273(A008795(n))+1-A033999(n)`
-/

namespace A185061.P10033706608561017704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008795 n).toNat + (1 - A033999 n)

end

end A185061.P10033706608561017704

namespace A185061

/-- `A004273(A008795(n))+1-A033999(n)` -/
def P10033706608561017704.Spec : Prop :=
  ∀ n, P10033706608561017704.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P3747119294963300312

`A141310(A193422(n+1))`
-/

namespace A185061.P3747119294963300312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A193422 (n + 1)).toNat

end

end A185061.P3747119294963300312

namespace A185061

/-- `A141310(A193422(n+1))` -/
def P3747119294963300312.Spec : Prop :=
  ∀ n, P3747119294963300312.a n = A185061 (n + 1)

end A185061

/-! ## A185061.P5167035410400574904

`A057174(A193422(n+1))`
-/

namespace A185061.P5167035410400574904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (A193422 (n + 1)).toNat

end

end A185061.P5167035410400574904

namespace A185061

/-- `A057174(A193422(n+1))` -/
def P5167035410400574904.Spec : Prop :=
  ∀ n, P5167035410400574904.a n = A185061 (n + 1)

end A185061

/-!
# A185062: Number of n-element subsets that can be chosen from {1,2,...,2*n^3} having element sum n^4.

The programs for A185062, there is no canonical definition to state claims against.
-/

/-! ## A185062.P12355893616889054142

`A185282(∑[n+3]+n+3)`
-/

namespace A185062.P12355893616889054142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185282 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A185062.P12355893616889054142

/-!
# A185063: Number of disconnected 6-regular simple graphs on n vertices with girth exactly 3.

The programs for A185063, there is no canonical definition to state claims against.
-/

/-! ## A185063.P14676598913198644896

`A165656(n)-A185264(n)`
-/

namespace A185063.P14676598913198644896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n - A185264 n

end

end A185063.P14676598913198644896

/-! ## A185063.P16289176276342482946

`A165656(n)-A011738(n)`
-/

namespace A185063.P16289176276342482946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n - A011738 n

end

end A185063.P16289176276342482946

/-! ## A185063.P655991882104879484

`A165656(n)-A086015(n)`
-/

namespace A185063.P655991882104879484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n - A086015 n

end

end A185063.P655991882104879484

/-! ## A185063.P15887454350280330761

`A165656(n)-A180472(n)`
-/

namespace A185063.P15887454350280330761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n - A180472 n

end

end A185063.P15887454350280330761

/-! ## A185063.P3110108776279826336

`A165656(n)-A185037(n)`
-/

namespace A185063.P3110108776279826336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n - A185037 n

end

end A185063.P3110108776279826336

/-!
# A185064: Numbers k such that a Golay sequence of length k exists.

The programs for A185064, there is no canonical definition to state claims against.
-/

/-! ## A185064.P12454412828233408861

`∏{e}[2^n, A036975(#)]`
-/

namespace A185064.P12454412828233408861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A036975 (Nat.factorization (f1 n) p)

end

end A185064.P12454412828233408861

/-! ## A185064.P13990767933765458099

`∪[2^n, A036975(n+1)]`
-/

namespace A185064.P13990767933765458099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185064.P13990767933765458099

/-! ## A185064.P3598365438725130965

`∪[A036975(n+1), A000079(n)]`
-/

namespace A185064.P3598365438725130965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185064.P3598365438725130965

/-! ## A185064.P3102721085558152360

`∪[A036975(n+1), A035746(n)]`
-/

namespace A185064.P3102721085558152360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185064.P3102721085558152360

/-! ## A185064.P240538511344095612

`∪[A036975(n+1), A035747(n)]`
-/

namespace A185064.P240538511344095612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185064.P240538511344095612

/-!
# A185065: a(n) = n*(n^3 + 2).

The programs for A185065, the canonical program `A185065.P13419024490524670823` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185065 has offset 0).

The definition of A185065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^3+2)` (program `A185065.P13419024490524670823`, by `A185065.P13419024490524670823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185065.P13419024490524670823

`n*(n^3+2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185065

/-- `n*(n^3+2)` -/
def P13419024490524670823.Spec : Prop :=
  ∀ n, (P13419024490524670823.a n : ℤ) = A185065 n

theorem P13419024490524670823.correct : P13419024490524670823.Spec := by
  intro n
  simp only [A185065]

end A185065

/-! ## A185065.P16738258764687274034

`ogf((3x+5x^2+17x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A185065.P16738258764687274034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 5, 17, -1] [1, -5, 10, -10, 5, -1] n

end

end A185065.P16738258764687274034

namespace A185065

/-- `ogf((3x+5x^2+17x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16738258764687274034.Spec : Prop :=
  ∀ n, P16738258764687274034.a n = A185065 n

end A185065

/-! ## A185065.P2959772283953210883

`lcm(2, 2*n)+n²²`
-/

namespace A185065.P2959772283953210883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n) + (n ^ 2) ^ 2

end

end A185065.P2959772283953210883

namespace A185065

/-- `lcm(2, 2*n)+n²²` -/
def P2959772283953210883.Spec : Prop :=
  ∀ n, (P2959772283953210883.a n : ℤ) = A185065 n

theorem P2959772283953210883.correct : P2959772283953210883.Spec := by
  intro n
  simp only [A185065, Nat.add_sub_cancel, A185065.P2959772283953210883.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A185065

/-! ## A185065.P15990512743567851928

`lcm(n, n²²+n+n)`
-/

namespace A185065.P15990512743567851928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n ^ 2) ^ 2 + n + n)

end

end A185065.P15990512743567851928

namespace A185065

/-- `lcm(n, n²²+n+n)` -/
def P15990512743567851928.Spec : Prop :=
  ∀ n, (P15990512743567851928.a n : ℤ) = A185065 n

end A185065

/-! ## A185065.P4748348442024977952

`and(2*n, -2)+n²²`
-/

namespace A185065.P4748348442024977952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-2) + ((n ^ 2) ^ 2 : ℤ)

end

end A185065.P4748348442024977952

namespace A185065

/-- `and(2*n, -2)+n²²` -/
def P4748348442024977952.Spec : Prop :=
  ∀ n, P4748348442024977952.a n = A185065 n

end A185065

/-! ## A185065.P4163001470076100768

`record[and(n, n+1)]+n^4`
-/

namespace A185065.P4163001470076100768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n ^ 4

end

end A185065.P4163001470076100768

namespace A185065

/-- `record[and(n, n+1)]+n^4` -/
def P4163001470076100768.Spec : Prop :=
  ∀ n, (P4163001470076100768.a n : ℤ) = A185065 n

end A185065

/-! ## A185065.P15392589229528878361

`xor(1, 2*n+1)+n²²`
-/

namespace A185065.P15392589229528878361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + 1) + (n ^ 2) ^ 2

end

end A185065.P15392589229528878361

namespace A185065

/-- `xor(1, 2*n+1)+n²²` -/
def P15392589229528878361.Spec : Prop :=
  ∀ n, (P15392589229528878361.a n : ℤ) = A185065 n

end A185065

/-! ## A185065.P2717572005642532969

`(n%(n+1))²²+2*n`
-/

namespace A185065.P2717572005642532969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n % (n + 1)) ^ 2) ^ 2 + 2 * n

end

end A185065.P2717572005642532969

namespace A185065

/-- `(n%(n+1))²²+2*n` -/
def P2717572005642532969.Spec : Prop :=
  ∀ n, (P2717572005642532969.a n : ℤ) = A185065 n

theorem P2717572005642532969.correct : P2717572005642532969.Spec := by
  intro n
  simp only [A185065, Nat.add_sub_cancel, A185065.P2717572005642532969.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A185065

/-! ## A185065.P7748058430914875159

`gcd(n, 2*n)²²+2*n`
-/

namespace A185065.P7748058430914875159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n) ^ 2) ^ 2 + 2 * n

end

end A185065.P7748058430914875159

namespace A185065

/-- `gcd(n, 2*n)²²+2*n` -/
def P7748058430914875159.Spec : Prop :=
  ∀ n, (P7748058430914875159.a n : ℤ) = A185065 n

theorem P7748058430914875159.correct : P7748058430914875159.Spec := by
  intro n
  simp only [A185065, Nat.add_sub_cancel, A185065.P7748058430914875159.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A185065

/-! ## A185065.P3311111314877987083

`(∑[n]+C(n, 2))²+2*n`
-/

namespace A185065.P3311111314877987083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2) ^ 2 + 2 * n

end

end A185065.P3311111314877987083

namespace A185065

/-- `(∑[n]+C(n, 2))²+2*n` -/
def P3311111314877987083.Spec : Prop :=
  ∀ n, (P3311111314877987083.a n : ℤ) = A185065 n

end A185065

/-! ## A185065.P1308861960271587531

`2*n+n*Δ[C(n, 2)²]`
-/

namespace A185065.P1308861960271587531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A185065.P1308861960271587531

namespace A185065

/-- `2*n+n*Δ[C(n, 2)²]` -/
def P1308861960271587531.Spec : Prop :=
  ∀ n, P1308861960271587531.a n = A185065 n

theorem P1308861960271587531.correct : P1308861960271587531.Spec := by
  intro n
  simp only [A185065, Nat.add_sub_cancel, A185065.P1308861960271587531.f1, A185065.P1308861960271587531.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185065

/-! ## A185065.P2592268688677560108

`C(n, abs(1-n))²²+2*n`
-/

namespace A185065.P2592268688677560108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n |1 - (n : ℤ)|.toNat ^ 2) ^ 2 + 2 * n

end

end A185065.P2592268688677560108

namespace A185065

/-- `C(n, abs(1-n))²²+2*n` -/
def P2592268688677560108.Spec : Prop :=
  ∀ n, (P2592268688677560108.a n : ℤ) = A185065 n

end A185065

/-! ## A185065.P7624685133044732985

`(1-C(n+1, n))²²+2*n`
-/

namespace A185065.P7624685133044732985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (Nat.choose (n + 1) n : ℤ)) ^ 2) ^ 2 + (2 * n : ℤ)

end

end A185065.P7624685133044732985

namespace A185065

/-- `(1-C(n+1, n))²²+2*n` -/
def P7624685133044732985.Spec : Prop :=
  ∀ n, P7624685133044732985.a n = A185065 n

theorem P7624685133044732985.correct : P7624685133044732985.Spec := by
  intro n
  simp only [A185065, Nat.add_sub_cancel, A185065.P7624685133044732985.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A185065

/-! ## A185065.P11535040622143823794

`(C(2, n+3)+n)²²+2*n`
-/

namespace A185065.P11535040622143823794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 3) + n) ^ 2) ^ 2 + 2 * n

end

end A185065.P11535040622143823794

namespace A185065

/-- `(C(2, n+3)+n)²²+2*n` -/
def P11535040622143823794.Spec : Prop :=
  ∀ n, (P11535040622143823794.a n : ℤ) = A185065 n

end A185065

/-! ## A185065.P1479115222825826733

`(and(1, 2*n)+n)²²+2*n`
-/

namespace A185065.P1479115222825826733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (2 * n) + n) ^ 2) ^ 2 + 2 * n

end

end A185065.P1479115222825826733

namespace A185065

/-- `(and(1, 2*n)+n)²²+2*n` -/
def P1479115222825826733.Spec : Prop :=
  ∀ n, (P1479115222825826733.a n : ℤ) = A185065 n

theorem P1479115222825826733.correct : P1479115222825826733.Spec := by
  intro n
  simp only [A185065, Nat.add_sub_cancel, A185065.P1479115222825826733.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A185065

/-! ## A185065.P738204138000804161

`2*n-(and(1, 2*n)-n²²)`
-/

namespace A185065.P738204138000804161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.land 1 (2 * n) : ℤ) - ((n ^ 2) ^ 2 : ℤ))

end

end A185065.P738204138000804161

namespace A185065

/-- `2*n-(and(1, 2*n)-n²²)` -/
def P738204138000804161.Spec : Prop :=
  ∀ n, P738204138000804161.a n = A185065 n

theorem P738204138000804161.correct : P738204138000804161.Spec := by
  intro n
  simp only [A185065, Nat.add_sub_cancel, A185065.P738204138000804161.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A185065

/-! ## A185065.P286043272660857627

`C(n+1, n)+n²²+n-1`
-/

namespace A185065.P286043272660857627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℤ) + (((n ^ 2) ^ 2 : ℤ) + ((n : ℤ) - 1))

end

end A185065.P286043272660857627

namespace A185065

/-- `C(n+1, n)+n²²+n-1` -/
def P286043272660857627.Spec : Prop :=
  ∀ n, P286043272660857627.a n = A185065 n

theorem P286043272660857627.correct : P286043272660857627.Spec := by
  intro n
  simp only [A185065, Nat.add_sub_cancel, A185065.P286043272660857627.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A185065

/-! ## A185065.P16731535393711867359

`∑[a(n-1)+2]²+2*n` with `a(0)=0, a(1)=1`
-/

namespace A185065.P16731535393711867359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n

end

end A185065.P16731535393711867359

namespace A185065

/-- `∑[a(n-1)+2]²+2*n` -/
def P16731535393711867359.Spec : Prop :=
  ∀ n, (P16731535393711867359.a n : ℤ) = A185065 n

end A185065

/-! ## A185065.P1497720223744521291

`Δ[(n-1)²²]+a(n-1)+2` with `a(0)=0`
-/

namespace A185065.P1497720223744521291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1) + 2

end

end A185065.P1497720223744521291

namespace A185065

/-- `Δ[(n-1)²²]+a(n-1)+2` -/
def P1497720223744521291.Spec : Prop :=
  ∀ n, P1497720223744521291.a n = A185065 n

theorem P1497720223744521291.correct : P1497720223744521291.Spec := by
  intro n
  induction n with
  | zero => simp [A185065, A185065.P1497720223744521291.f1, A185065.P1497720223744521291.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A185065, Nat.add_sub_cancel, A185065.P1497720223744521291.f1, A185065.P1497720223744521291.a, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A185065

/-! ## A185065.P16408472525180465280

`∪[(n+1)², (2*n)²]²+2*n`
-/

namespace A185065.P16408472525180465280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n ^ 2 + 2 * n

end

end A185065.P16408472525180465280

namespace A185065

/-- `∪[(n+1)², (2*n)²]²+2*n` -/
def P16408472525180465280.Spec : Prop :=
  ∀ n, (P16408472525180465280.a n : ℤ) = A185065 n

end A185065

/-!
# A185069: Primes of the form k*6^m +1 with k prime and m an integer.

The programs for A185069, there is no canonical definition to state claims against.
-/

/-! ## A185069.P14880158654030285709

`p?[C(2*n+3, A162642(3*(n+1)))]`
-/

namespace A185069.P14880158654030285709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) (A162642 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A185069.P14880158654030285709

/-! ## A185069.P12877081339984491296

`p?[Δ[A118967(A004277(n))]]`
-/

namespace A185069.P12877081339984491296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118967 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185069.P12877081339984491296

/-! ## A185069.P2264780444966116697

`record[A014963(A114611(n+1)+3+n)]`
-/

namespace A185069.P2264780444966116697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A114611 (n + 1) + 3 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185069.P2264780444966116697

/-! ## A185069.P8986810841934833392

`A007645(lt[A384919(2*n+5), A055225(n+5)])`
-/

namespace A185069.P8986810841934833392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384919 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185069.P8986810841934833392

/-!
# A185070: Triangular array read by rows. T(n,k) is the number of functions f:{1,2,...,n}->{1,2,...,n} that have exactly k 3-cycles. n>=0, 0<=k<=floor(n/3).

The programs for A185070, there is no canonical definition to state claims against.
-/

/-! ## A185070.P5476540765987567631

`A260121(A120031(n+1))`
-/

namespace A185070.P5476540765987567631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260121 (A120031 (n + 1)).toNat

end

end A185070.P5476540765987567631

/-! ## A185070.P3500935556586945474

`A193920(A219694(n+2))`
-/

namespace A185070.P3500935556586945474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193920 (A219694 (n + 2)).toNat

end

end A185070.P3500935556586945474

/-!
# A185071: E.g.f.: 1/sqrt(cos(x)*cosh(x) - sin(x)*sinh(x)), omitting the zero-valued coefficients of odd powers of x.

The programs for A185071, there is no canonical definition to state claims against.
-/

/-! ## A185071.P5088609982004039744

`A174090(A356633(n)*A356667(n))`
-/

namespace A185071.P5088609982004039744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (A356633 n * A356667 n).toNat

end

end A185071.P5088609982004039744

/-!
# A185074: Number of representations of n in the form sum(i=1..n, c(i)/i ), where each of the c(i)'s is in {0,1,...,n}.

The programs for A185074, there is no canonical definition to state claims against.
-/

/-! ## A185074.P13096252502392097062

`A045917(A242459(2*n+1)+ceil(10^n/9))`
-/

namespace A185074.P13096252502392097062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A242459 (2 * n + 1) + ⌈(10 ^ n : ℚ) / 9⌉).toNat

end

end A185074.P13096252502392097062

/-! ## A185074.P13234435840720012716

`A264749(lcm(A057335(n), A231538(n+1)))`
-/

namespace A185074.P13234435840720012716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (Int.lcm (A057335 n) (A231538 (n + 1)))

end

end A185074.P13234435840720012716

/-!
# A185075: The number of distinct residues modulo n of {i^i: i=1,2...}.

The programs for A185075, there is no canonical definition to state claims against.
-/

/-! ## A185075.P12843517499052137528

`ceil(∑{d}[n+1, #²]/A334466(∑[n]+1))`
-/

namespace A185075.P12843517499052137528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℚ) / (A334466 (∑ j ∈ Finset.range (n + 1), f2 j + 1) : ℚ)⌉

end

end A185075.P12843517499052137528

/-! ## A185075.P8528594998284465479

`∑{e}[A057335(A259939(n)), #]`
-/

namespace A185075.P8528594998284465479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A259939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A185075.P8528594998284465479

/-! ## A185075.P8776727473950969073

`ceil(A001157(n+1)/A334466(∑[n]+1))`
-/

namespace A185075.P8776727473950969073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001157 (n + 1) : ℚ) / (A334466 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)⌉

end

end A185075.P8776727473950969073

/-! ## A185075.P13804656004653488216

`ceil(∑{d}[n+1, #²]/A000203(A077168(n))%64)`
-/

namespace A185075.P13804656004653488216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℚ) / (Int.tmod (A000203 (A077168 n).toNat) 64 : ℚ)⌉

end

end A185075.P13804656004653488216

/-! ## A185075.P3724785131822749992

`A050430(A057568(n+1)+A000079(n))`
-/

namespace A185075.P3724785131822749992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (A057568 (n + 1) + A000079 n).toNat

end

end A185075.P3724785131822749992

/-!
# A185076: a(n) is the least number k such that (sum of digits of k^2) + (number of digits of k^2) = n, or 0 if no such k exists.

The programs for A185076, there is no canonical definition to state claims against.
-/

/-! ## A185076.P12263670319754778182

`A054841(A109919(n+1))`
-/

namespace A185076.P12263670319754778182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A109919 (n + 1)).toNat

end

end A185076.P12263670319754778182

/-! ## A185076.P18340837843245735132

`A054841(A109920(n+1)²)/2`
-/

namespace A185076.P18340837843245735132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054841 (A109920 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A185076.P18340837843245735132

/-! ## A185076.P16357832238327176788

`A054841(2*A109920(n+1))-1`
-/

namespace A185076.P16357832238327176788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (2 * A109920 (n + 1)).toNat - 1

end

end A185076.P16357832238327176788

/-!
# A185078: Numbers k for which A064380(k) = k/2.

The programs for A185078, there is no canonical definition to state claims against.
-/

/-! ## A185078.P7960194776488764321

`∩[A022556(n+1), A373057(n+1)]`
-/

namespace A185078.P7960194776488764321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185078.P7960194776488764321

/-! ## A185078.P18406203945027908408

`∩[A001162(n+1), A373057(n+1)]`
-/

namespace A185078.P18406203945027908408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185078.P18406203945027908408

/-! ## A185078.P5450836613869411502

`∩[A108193(n+1), A373057(n+1)]`
-/

namespace A185078.P5450836613869411502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185078.P5450836613869411502

/-! ## A185078.P1476649251804171913

`filter[A373057(n+1), A022930(#)]`
-/

namespace A185078.P1476649251804171913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A185078.P1476649251804171913

/-! ## A185078.P11455642654726086478

`filter[A373057(n+1), A188295(#)]`
-/

namespace A185078.P11455642654726086478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188295 (f1 j).toNat = 1) n)

end

end A185078.P11455642654726086478

/-!
# A185079: a(n) = A064380(n) * A049417(n).

The programs for A185079, there is no canonical definition to state claims against.
-/

/-! ## A185079.P13403873671940859632

`A064380(n+2)*A049417(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185079.P13403873671940859632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064380 (n + 2) * A049417 (n + 2)

end

end A185079.P13403873671940859632

/-! ## A185079.P7405616530366537754

`A049417(n+2)*A064380(n+2)`
-/

namespace A185079.P7405616530366537754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 2) * A064380 (n + 2)

end

end A185079.P7405616530366537754

/-! ## A185079.P12948184831852541777

`Δ[A327566(n+1)]*A064380(n+2)`
-/

namespace A185079.P12948184831852541777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A064380 (n + 2)

end

end A185079.P12948184831852541777

/-! ## A185079.P17950232344693964775

`Δ[eq[1, A064379(n+2)]]*A049417(n+2)`
-/

namespace A185079.P17950232344693964775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064379 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A049417 (n + 2)

end

end A185079.P17950232344693964775

/-! ## A185079.P10896152806032517554

`A049417(n+2)*A186970(A044917(n+2))`
-/

namespace A185079.P10896152806032517554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (n + 2) * A186970 (A044917 (n + 2)).toNat

end

end A185079.P10896152806032517554

/-!
# A185080: a(n) = 6 * binomial(2*n,n-1) + binomial(2*n-1,n).

The programs for A185080, the canonical program `A185080.P5706692019376967767` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185080 has offset 1).

The definition of A185080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(2*(n+1), n)+C(2*(n+1)-1, n+1)` (program `A185080.P5706692019376967767`, by `A185080.P5706692019376967767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185080.P2456358067173112724

`(13*(n+1)+1)*A000108(n+1)/2`
-/

namespace A185080.P2456358067173112724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 * (n + 1) + 1 : ℤ) * A000108 (n + 1) : ℚ) / 2

end

end A185080.P2456358067173112724

namespace A185080

/-- `(13*(n+1)+1)*A000108(n+1)/2` -/
def P2456358067173112724.Spec : Prop :=
  ∀ n, P2456358067173112724.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P7855760552310085497

`(2+22*(n+1)-52*(n+1)²)*a(n-1)/(12-(n+1)-13*(n+1)²)` with `a(0)=7`
-/

namespace A185080.P7855760552310085497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  ((2 + 22 * (n + 1) : ℤ) - (52 * (n + 1) ^ 2 : ℤ) : ℚ) * a (n - 1) / (12 - (n + 1 : ℤ) - (13 * (n + 1) ^ 2 : ℤ) : ℚ)

end

end A185080.P7855760552310085497

namespace A185080

/-- `(2+22*(n+1)-52*(n+1)²)*a(n-1)/(12-(n+1)-13*(n+1)²)` -/
def P7855760552310085497.Spec : Prop :=
  ∀ n, P7855760552310085497.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P5706692019376967767

`6*C(2*(n+1), n)+C(2*(n+1)-1, n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185080

/-- `6*C(2*(n+1), n)+C(2*(n+1)-1, n+1)` -/
def P5706692019376967767.Spec : Prop :=
  ∀ n, (P5706692019376967767.a n : ℤ) = A185080 (n + 1)

theorem P5706692019376967767.correct : P5706692019376967767.Spec := by
  intro n
  simp only [A185080, Nat.add_sub_cancel]

end A185080

/-! ## A185080.P5481164091732619755

`(13*(n+1)+1)*C(2*(n+1), n+1)/(2*(n+1)+2)`
-/

namespace A185080.P5481164091732619755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 * (n + 1) + 1) * Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / (2 * (n + 1) + 2 : ℚ)

end

end A185080.P5481164091732619755

namespace A185080

/-- `(13*(n+1)+1)*C(2*(n+1), n+1)/(2*(n+1)+2)` -/
def P5481164091732619755.Spec : Prop :=
  ∀ n, P5481164091732619755.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P10207717439812908210

`A050476(n+1)+A276666(n+1)/2`
-/

namespace A185080.P10207717439812908210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050476 (n + 1) : ℚ) + (A276666 (n + 1) : ℚ) / 2

end

end A185080.P10207717439812908210

namespace A185080

/-- `A050476(n+1)+A276666(n+1)/2` -/
def P10207717439812908210.Spec : Prop :=
  ∀ n, P10207717439812908210.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P5891537212542582126

`A128650(n+3)+A051945(n+1)/2`
-/

namespace A185080.P5891537212542582126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128650 (n + 3) : ℚ) + (A051945 (n + 1) : ℚ) / 2

end

end A185080.P5891537212542582126

namespace A185080

/-- `A128650(n+3)+A051945(n+1)/2` -/
def P5891537212542582126.Spec : Prop :=
  ∀ n, P5891537212542582126.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P9553233116987678437

`A037952(2*n+1)+2*A143360(2*(n+1))`
-/

namespace A185080.P9553233116987678437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1) + 2 * A143360 (2 * (n + 1))

end

end A185080.P9553233116987678437

namespace A185080

/-- `A037952(2*n+1)+2*A143360(2*(n+1))` -/
def P9553233116987678437.Spec : Prop :=
  ∀ n, P9553233116987678437.a n = A185080 (n + 1)

end A185080

/-! ## A185080.P13924859602328266380

`A050476(n+1)+A001700(n)-A000108(n+1)`
-/

namespace A185080.P13924859602328266380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 (n + 1) + (A001700 n - A000108 (n + 1))

end

end A185080.P13924859602328266380

namespace A185080

/-- `A050476(n+1)+A001700(n)-A000108(n+1)` -/
def P13924859602328266380.Spec : Prop :=
  ∀ n, P13924859602328266380.a n = A185080 (n + 1)

end A185080

/-! ## A185080.P298245351618299462

`A062561(n+1)+A088218(n+1)+A062561(n+1)`
-/

namespace A185080.P298245351618299462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062561 (n + 1) + (A088218 (n + 1) + A062561 (n + 1))

end

end A185080.P298245351618299462

namespace A185080

/-- `A062561(n+1)+A088218(n+1)+A062561(n+1)` -/
def P298245351618299462.Spec : Prop :=
  ∀ n, P298245351618299462.a n = A185080 (n + 1)

end A185080

/-! ## A185080.P11345883278152633233

`A050477(n+1)-A001700(n)`
-/

namespace A185080.P11345883278152633233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050477 (n + 1) - A001700 n

end

end A185080.P11345883278152633233

namespace A185080

/-- `A050477(n+1)-A001700(n)` -/
def P11345883278152633233.Spec : Prop :=
  ∀ n, P11345883278152633233.a n = A185080 (n + 1)

end A185080

/-! ## A185080.P8028612940078587559

`A001791(n+1)+A050490(n+1)/2`
-/

namespace A185080.P8028612940078587559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001791 (n + 1) : ℚ) + (A050490 (n + 1) : ℚ) / 2

end

end A185080.P8028612940078587559

namespace A185080

/-- `A001791(n+1)+A050490(n+1)/2` -/
def P8028612940078587559.Spec : Prop :=
  ∀ n, P8028612940078587559.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P8022865453794609861

`(A050491(n+1)+A001791(n+1))/2`
-/

namespace A185080.P8022865453794609861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050491 (n + 1) + A001791 (n + 1) : ℚ) / 2

end

end A185080.P8022865453794609861

namespace A185080

/-- `(A050491(n+1)+A001791(n+1))/2` -/
def P8022865453794609861.Spec : Prop :=
  ∀ n, P8022865453794609861.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P3507717333725281213

`A062561(n+1)+A050477(n+1)/2`
-/

namespace A185080.P3507717333725281213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062561 (n + 1) : ℚ) + (A050477 (n + 1) : ℚ) / 2

end

end A185080.P3507717333725281213

namespace A185080

/-- `A062561(n+1)+A050477(n+1)/2` -/
def P3507717333725281213.Spec : Prop :=
  ∀ n, P3507717333725281213.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P5717589585576055541

`(A062561(n+1)+A050489(n+1))/2`
-/

namespace A185080.P5717589585576055541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062561 (n + 1) + A050489 (n + 1) : ℚ) / 2

end

end A185080.P5717589585576055541

namespace A185080

/-- `(A062561(n+1)+A050489(n+1))/2` -/
def P5717589585576055541.Spec : Prop :=
  ∀ n, P5717589585576055541.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P11352956424572742792

`A162551(n+1)+A050479(n+1)/2`
-/

namespace A185080.P11352956424572742792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162551 (n + 1) : ℚ) + (A050479 (n + 1) : ℚ) / 2

end

end A185080.P11352956424572742792

namespace A185080

/-- `A162551(n+1)+A050479(n+1)/2` -/
def P11352956424572742792.Spec : Prop :=
  ∀ n, P11352956424572742792.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P661574369773621693

`(A162551(n+1)+A050490(n+1))/2`
-/

namespace A185080.P661574369773621693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162551 (n + 1) + A050490 (n + 1) : ℚ) / 2

end

end A185080.P661574369773621693

namespace A185080

/-- `(A162551(n+1)+A050490(n+1))/2` -/
def P661574369773621693.Spec : Prop :=
  ∀ n, P661574369773621693.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P8848995829284991749

`A050477(n+1)-A000984(n+1)/2`
-/

namespace A185080.P8848995829284991749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050477 (n + 1) : ℚ) - (A000984 (n + 1) : ℚ) / 2

end

end A185080.P8848995829284991749

namespace A185080

/-- `A050477(n+1)-A000984(n+1)/2` -/
def P8848995829284991749.Spec : Prop :=
  ∀ n, P8848995829284991749.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P5884348618304290517

`A050489(n+1)-A050477(n+1)/2`
-/

namespace A185080.P5884348618304290517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050489 (n + 1) : ℚ) - (A050477 (n + 1) : ℚ) / 2

end

end A185080.P5884348618304290517

namespace A185080

/-- `A050489(n+1)-A050477(n+1)/2` -/
def P5884348618304290517.Spec : Prop :=
  ∀ n, P5884348618304290517.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P15707656741758601569

`A050490(n+1)-A050479(n+1)/2`
-/

namespace A185080.P15707656741758601569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050490 (n + 1) : ℚ) - (A050479 (n + 1) : ℚ) / 2

end

end A185080.P15707656741758601569

namespace A185080

/-- `A050490(n+1)-A050479(n+1)/2` -/
def P15707656741758601569.Spec : Prop :=
  ∀ n, P15707656741758601569.a n = (A185080 (n + 1) : ℚ)

end A185080

/-! ## A185080.P527870356253649721

`A050491(n+1)-A050490(n+1)/2`
-/

namespace A185080.P527870356253649721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050491 (n + 1) : ℚ) - (A050490 (n + 1) : ℚ) / 2

end

end A185080.P527870356253649721

namespace A185080

/-- `A050491(n+1)-A050490(n+1)/2` -/
def P527870356253649721.Spec : Prop :=
  ∀ n, P527870356253649721.a n = (A185080 (n + 1) : ℚ)

end A185080

/-!
# A185081: Triangle T(n,k), read by rows, given by (0, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 1, -1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A185081, there is no canonical definition to state claims against.
-/

/-! ## A185081.P4383262982982664541

`A000120(A089408(n)*A256311(n))`
-/

namespace A185081.P4383262982982664541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A089408 n * A256311 n).toNat

end

end A185081.P4383262982982664541

/-! ## A185081.P7651463760243616582

`A092335(A287908(n))*A097805(n)`
-/

namespace A185081.P7651463760243616582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092335 (A287908 n).toNat * A097805 n

end

end A185081.P7651463760243616582

/-! ## A185081.P8926601676529067701

`A255270(lcm(A000032(n), A361956(n)))`
-/

namespace A185081.P8926601676529067701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (Int.lcm (A000032 n) (A361956 n))

end

end A185081.P8926601676529067701

/-! ## A185081.P14672537672268216661

`A330786(A156882(n))+A318754(n+1)`
-/

namespace A185081.P14672537672268216661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330786 (A156882 n).toNat + A318754 (n + 1)

end

end A185081.P14672537672268216661

/-! ## A185081.P9558181748615932111

`A005136(A156274(n+1))*A097805(n)`
-/

namespace A185081.P9558181748615932111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A156274 (n + 1)).toNat * A097805 n

end

end A185081.P9558181748615932111

/-!
# A185082: a(n) = [x^n] G_{n+1}(x) where G_n(x) = F(x*G_n(x)^n) and F(x) = g.f. of A185072 such that [x^n] G_n(x) = 0.

The programs for A185082, there is no canonical definition to state claims against.
-/

/-! ## A185082.P1055561477241145610

`A092695(A375836(n))`
-/

namespace A185082.P1055561477241145610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (A375836 n).toNat

end

end A185082.P1055561477241145610

/-! ## A185082.P12781438913988530778

`A105025(A155456(n)²)`
-/

namespace A185082.P12781438913988530778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 (A155456 n ^ 2).toNat

end

end A185082.P12781438913988530778

/-!
# A185083: Partitions of 2*n into parts not congruent to 0, +-2, +-12, +-14, 16 (mod 32).

The programs for A185083, there is no canonical definition to state claims against.
-/

/-! ## A185083.P2653119964963784642

`A115671(2*n)`
-/

namespace A185083.P2653119964963784642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 (2 * n)

end

end A185083.P2653119964963784642

/-! ## A185083.P11382297044911745921

`A208851((n-1)%(n+1))`
-/

namespace A185083.P11382297044911745921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208851 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A185083.P11382297044911745921

/-! ## A185083.P17890209314360129318

`A208851(A289207(n+1))`
-/

namespace A185083.P17890209314360129318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208851 (A289207 (n + 1)).toNat

end

end A185083.P17890209314360129318

/-! ## A185083.P759490776660703811

`ceil(A208850(n)/2)`
-/

namespace A185083.P759490776660703811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A208850 n : ℚ) / 2⌉

end

end A185083.P759490776660703811

/-! ## A185083.P1870453990568875366

`lcm(2, A210065(n))/2`
-/

namespace A185083.P1870453990568875366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A210065 n) : ℚ) / 2

end

end A185083.P1870453990568875366

/-! ## A185083.P4731278019326040370

`A210065(n)/A280560(n)`
-/

namespace A185083.P4731278019326040370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210065 n : ℚ) / (A280560 n : ℚ)

end

end A185083.P4731278019326040370

/-! ## A185083.P16653829220234383108

`ceil(A080054(2*n)/2)`
-/

namespace A185083.P16653829220234383108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080054 (2 * n) : ℚ) / 2⌉

end

end A185083.P16653829220234383108

/-! ## A185083.P1554615034628923959

`A208856(A004273(n))`
-/

namespace A185083.P1554615034628923959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208856 (A004273 n).toNat

end

end A185083.P1554615034628923959

/-! ## A185083.P17577407744964023867

`A080054(A028310(2*n))/2`
-/

namespace A185083.P17577407744964023867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (A028310 (2 * n)).toNat : ℚ) / 2

end

end A185083.P17577407744964023867

/-! ## A185083.P1737744028037072821

`A080054(A028310(n)+n)/2`
-/

namespace A185083.P1737744028037072821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (A028310 n + (n : ℤ)).toNat : ℚ) / 2

end

end A185083.P1737744028037072821

/-! ## A185083.P4531801545536743844

`A080054(2*n)/A036453(n+1)`
-/

namespace A185083.P4531801545536743844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (2 * n) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A185083.P4531801545536743844

/-! ## A185083.P1193685476526458928

`abs(A245432(2*n))`
-/

namespace A185083.P1193685476526458928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245432 (2 * n)|

end

end A185083.P1193685476526458928

/-! ## A185083.P6433505548256944987

`ceil(A108494(2*n)/2)`
-/

namespace A185083.P6433505548256944987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108494 (2 * n) : ℚ) / 2⌉

end

end A185083.P6433505548256944987

/-! ## A185083.P4583331611875134160

`xor(1, xor(1, A115671(n+n)))`
-/

namespace A185083.P4583331611875134160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A115671 (n + n)))

end

end A185083.P4583331611875134160

/-! ## A185083.P10435821470225006485

`A208856(A289207(2*n+1))`
-/

namespace A185083.P10435821470225006485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208856 (A289207 (2 * n + 1)).toNat

end

end A185083.P10435821470225006485

/-! ## A185083.P364413520253312069

`A208851(A289207(2*n)/2)`
-/

namespace A185083.P364413520253312069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208851 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A185083.P364413520253312069

/-! ## A185083.P10859644046336051027

`A210030(2*n)/A280560(n)`
-/

namespace A185083.P10859644046336051027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210030 (2 * n) : ℚ) / (A280560 n : ℚ)

end

end A185083.P10859644046336051027

/-! ## A185083.P6768470884338432958

`gcd(A000038(n), A245432(2*n))`
-/

namespace A185083.P6768470884338432958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245432 (2 * n))

end

end A185083.P6768470884338432958

/-!
# A185085: Number of ways to place n nonattacking nightriders on an n X n board.

The programs for A185085, there is no canonical definition to state claims against.
-/

/-! ## A185085.P15001703057646506981

`A065855(A225615(n)+A169837(n+1))`
-/

namespace A185085.P15001703057646506981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A225615 n + A169837 (n + 1)).toNat

end

end A185085.P15001703057646506981

/-!
# A185086: Fouvry-Iwaniec primes: Primes of the form k^2 + p^2 where p is a prime.

The programs for A185086, there is no canonical definition to state claims against.
-/

/-! ## A185086.P12402091719201233127

`p?[A361300(n+1)]`
-/

namespace A185086.P12402091719201233127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185086.P12402091719201233127

/-! ## A185086.P12978575330681084075

`record[A006530(A361300(n+3))]`
-/

namespace A185086.P12978575330681084075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A361300 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185086.P12978575330681084075

/-! ## A185086.P17217606069853416032

`filter[A361300(n+1), A010051(#)]`
-/

namespace A185086.P17217606069853416032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A185086.P17217606069853416032

/-! ## A185086.P6568844711255569429

`∩[A000040(n+1), A361300(n+1)]`
-/

namespace A185086.P6568844711255569429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P6568844711255569429

/-! ## A185086.P9052107156409306231

`∩[A002144(n+1), A361300(n+1)]`
-/

namespace A185086.P9052107156409306231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P9052107156409306231

/-! ## A185086.P17297712559076028137

`∩[A002313(n+1), A361300(n+1)]`
-/

namespace A185086.P17297712559076028137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P17297712559076028137

/-! ## A185086.P3800223825784085023

`∩[A006005(n+1), A361300(n+1)]`
-/

namespace A185086.P3800223825784085023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P3800223825784085023

/-! ## A185086.P9491214285778518310

`∩[A008578(n+1), A361300(n+1)]`
-/

namespace A185086.P9491214285778518310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P9491214285778518310

/-! ## A185086.P5645169328473603740

`∩[A033946(n+1), A361300(n+1)]`
-/

namespace A185086.P5645169328473603740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P5645169328473603740

/-! ## A185086.P6978264202683964351

`∩[A042998(n+1), A361300(n+1)]`
-/

namespace A185086.P6978264202683964351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P6978264202683964351

/-! ## A185086.P18307137999209848725

`∩[A045344(n+1), A361300(n+1)]`
-/

namespace A185086.P18307137999209848725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P18307137999209848725

/-! ## A185086.P11351381732833288283

`∩[A045352(n+1), A361300(n+1)]`
-/

namespace A185086.P11351381732833288283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P11351381732833288283

/-! ## A185086.P1675939529330358237

`∩[A045403(n+1), A361300(n+1)]`
-/

namespace A185086.P1675939529330358237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P1675939529330358237

/-! ## A185086.P9872240783667715072

`∩[A045442(n+1), A361300(n+1)]`
-/

namespace A185086.P9872240783667715072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P9872240783667715072

/-! ## A185086.P3147599741801554794

`∩[A046022(n+1), A361300(n+1)]`
-/

namespace A185086.P3147599741801554794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P3147599741801554794

/-! ## A185086.P919746871201376436

`∩[A049092(n+1), A361300(n+1)]`
-/

namespace A185086.P919746871201376436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P919746871201376436

/-! ## A185086.P2411602172208227356

`∩[A051948(n+1), A361300(n+1)]`
-/

namespace A185086.P2411602172208227356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P2411602172208227356

/-! ## A185086.P16960924733593858745

`∩[A053813(n+1), A361300(n+1)]`
-/

namespace A185086.P16960924733593858745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P16960924733593858745

/-! ## A185086.P7140450614659912907

`∩[A055025(n+1), A361300(n+1)]`
-/

namespace A185086.P7140450614659912907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P7140450614659912907

/-! ## A185086.P16344777912838258882

`∩[A057948(n+1), A361300(n+1)]`
-/

namespace A185086.P16344777912838258882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185086.P16344777912838258882

/-!
# A185087: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k)*A000108(k+1).

The programs for A185087, the canonical program `A185087.P14808243335168489928` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185087 has offset 0).

The definition of A185087 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n-#, #)*A000108(#+1)]` (program `A185087.P14808243335168489928`, by `A185087.P14808243335168489928.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185087.P1812026714000062495

`A090345(n+2)`
-/

namespace A185087.P1812026714000062495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090345 (n + 2)

end

end A185087.P1812026714000062495

namespace A185087

/-- `A090345(n+2)` -/
def P1812026714000062495.Spec : Prop :=
  ∀ n, P1812026714000062495.a n = A185087 n

end A185087

/-! ## A185087.P14808243335168489928

`∑{#}[floor(n/2), C(n-#, #)*A000108(#+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A185087

/-- `∑{#}[floor(n/2), C(n-#, #)*A000108(#+1)]` -/
def P14808243335168489928.Spec : Prop :=
  ∀ n, P14808243335168489928.a n = A185087 n

theorem P14808243335168489928.correct : P14808243335168489928.Spec := by
  intro n
  simp only [A185087]

end A185087

/-! ## A185087.P5256549194780381375

`Δ[A090344(n+1)]`
-/

namespace A185087.P5256549194780381375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185087.P5256549194780381375

namespace A185087

/-- `Δ[A090344(n+1)]` -/
def P5256549194780381375.Spec : Prop :=
  ∀ n, P5256549194780381375.a n = A185087 n

end A185087

/-! ## A185087.P8082229724598174195

`Δ[A124329(n+1)]`
-/

namespace A185087.P8082229724598174195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185087.P8082229724598174195

namespace A185087

/-- `Δ[A124329(n+1)]` -/
def P8082229724598174195.Spec : Prop :=
  ∀ n, P8082229724598174195.a n = A185087 n

end A185087

/-! ## A185087.P12583709831731782581

`A090344(n+2)-A090344(n+1)`
-/

namespace A185087.P12583709831731782581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 (n + 2) - A090344 (n + 1)

end

end A185087.P12583709831731782581

namespace A185087

/-- `A090344(n+2)-A090344(n+1)` -/
def P12583709831731782581.Spec : Prop :=
  ∀ n, P12583709831731782581.a n = A185087 n

end A185087

/-! ## A185087.P12495895419382966023

`A124329(n+2)-A124329(n+1)`
-/

namespace A185087.P12495895419382966023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124329 (n + 2) - A124329 (n + 1)

end

end A185087.P12495895419382966023

namespace A185087

/-- `A124329(n+2)-A124329(n+1)` -/
def P12495895419382966023.Spec : Prop :=
  ∀ n, P12495895419382966023.a n = A185087 n

end A185087

/-! ## A185087.P17026312006367692162

`A026585(n+2)-A026587(n+2)`
-/

namespace A185087.P17026312006367692162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026585 (n + 2) - A026587 (n + 2)

end

end A185087.P17026312006367692162

namespace A185087

/-- `A026585(n+2)-A026587(n+2)` -/
def P17026312006367692162.Spec : Prop :=
  ∀ n, P17026312006367692162.a n = A185087 n

end A185087

/-!
# A185088: a(n) = |n^2 - A185079(n)|.

The programs for A185088, there is no canonical definition to state claims against.
-/

/-! ## A185088.P17327382235918039270

`abs((n+2)²-A185079(n+2))`
-/

namespace A185088.P17327382235918039270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 2) ^ 2 : ℤ) - A185079 (n + 2)|

end

end A185088.P17327382235918039270

/-! ## A185088.P5967602219661939404

`A049417(n+2)*A185373(n+2)/A185383(n+2)`
-/

namespace A185088.P5967602219661939404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049417 (n + 2) * A185373 (n + 2) : ℚ) / (A185383 (n + 2) : ℚ)

end

end A185088.P5967602219661939404

/-! ## A185088.P18013761018564351971

`(n+2)²-A049417(n+2)*A186970(A077168(n)+1)`
-/

namespace A185088.P18013761018564351971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A049417 (n + 2) * A186970 (A077168 n + 1).toNat

end

end A185088.P18013761018564351971

/-! ## A185088.P5401602829508407919

`(A010055(A000225(n)+1)+n+1)²%A185079(n+2)`
-/

namespace A185088.P5401602829508407919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A010055 (A000225 n + 1).toNat + (n + 1 : ℤ)) ^ 2) (A185079 (n + 2))

end

end A185088.P5401602829508407919

/-! ## A185088.P6762831259216986851

`A044917(n+2)²-A049417(n+2)*A186970(A161953(n+2))`
-/

namespace A185088.P6762831259216986851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044917 (n + 2) ^ 2 - A049417 (n + 2) * A186970 (A161953 (n + 2)).toNat

end

end A185088.P6762831259216986851

/-!
# A185089: A transform of the little Schroeder numbers.

The programs for A185089, the canonical program `A185089.P10783222129125107798` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185089 has offset 0).

The definition of A185089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185089.P10783222129125107798

`∑{#}[floor(n/2), C(n-#, #)*A001003(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A185089

/-- `∑{#}[floor(n/2), C(n-#, #)*A001003(#)]` -/
def P10783222129125107798.Spec : Prop :=
  ∀ n, P10783222129125107798.a n = A185089 n

theorem P10783222129125107798.correct : P10783222129125107798.Spec := by
  intro n
  simp only [A185089]

end A185089

/-! ## A185089.P725912910351568437

`ceil(A160823(n)/2)`
-/

namespace A185089.P725912910351568437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160823 n : ℚ) / 2⌉

end

end A185089.P725912910351568437

namespace A185089

/-- `ceil(A160823(n)/2)` -/
def P725912910351568437.Spec : Prop :=
  ∀ n, P725912910351568437.a n = A185089 n

end A185089

/-! ## A185089.P11379505004973836823

`or(round(A160823(n)/2), A256434(n))`
-/

namespace A185089.P11379505004973836823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A160823 n : ℚ) / 2)) (A256434 n)

end

end A185089.P11379505004973836823

namespace A185089

/-- `or(round(A160823(n)/2), A256434(n))` -/
def P11379505004973836823.Spec : Prop :=
  ∀ n, P11379505004973836823.a n = A185089 n

end A185089

/-! ## A185089.P12268488921136508477

`round(A160823(n)/2)*A177702(3*n+1)`
-/

namespace A185089.P12268488921136508477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A160823 n : ℚ) / 2) * A177702 (3 * n + 1)

end

end A185089.P12268488921136508477

namespace A185089

/-- `round(A160823(n)/2)*A177702(3*n+1)` -/
def P12268488921136508477.Spec : Prop :=
  ∀ n, P12268488921136508477.a n = A185089 n

end A185089

/-! ## A185089.P1221882691881878271

`(A160823(n)-A008683(A151800(n)))/2`
-/

namespace A185089.P1221882691881878271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160823 n - A008683 (A151800 n).toNat : ℚ) / 2

end

end A185089.P1221882691881878271

namespace A185089

/-- `(A160823(n)-A008683(A151800(n)))/2` -/
def P1221882691881878271.Spec : Prop :=
  ∀ n, P1221882691881878271.a n = (A185089 n : ℚ)

end A185089

/-!
# A185090: Triangle read by rows: T(n,k) (n >= 2, 2 <= k <= n) = number of edge-disjoint spanners of delay 2 for complete bipartite graph K_{n,k}.

The programs for A185090, there is no canonical definition to state claims against.
-/

/-! ## A185090.P15570631057918941336

`ceil(A174063(n+1)/4)`
-/

namespace A185090.P15570631057918941336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174063 (n + 1) : ℚ) / 4⌉

end

end A185090.P15570631057918941336

/-! ## A185090.P13680682474553112470

`round(root(A296449(n+1), 6))`
-/

namespace A185090.P13680682474553112470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A296449 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A185090.P13680682474553112470

/-! ## A185090.P3240489625962461121

`round(root(A360145(n+1), 6))`
-/

namespace A185090.P3240489625962461121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A360145 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

end

end A185090.P3240489625962461121

/-! ## A185090.P6932395239020093582

`ceil(A066686(n+1)/23)`
-/

namespace A185090.P6932395239020093582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066686 (n + 1) : ℚ) / 23⌉

end

end A185090.P6932395239020093582

/-! ## A185090.P4685264364711212213

`ceil(A084855(n+1)/24)`
-/

namespace A185090.P4685264364711212213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084855 (n + 1) : ℚ) / 24⌉

end

end A185090.P4685264364711212213

/-!
# A185091: The smallest positive noncomposite q such that 2n-1 = 2p+q for some positive noncomposite p.

The programs for A185091, there is no canonical definition to state claims against.
-/

/-! ## A185091.P3110865658325186803

`gcd(A103506(n+1), A267133(n+1))`
-/

namespace A185091.P3110865658325186803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103506 (n + 1)) (A267133 (n + 1))

end

end A185091.P3110865658325186803

/-! ## A185091.P13874637408551643368

`A014963(A103506(n+1)+A080339(n+1))`
-/

namespace A185091.P13874637408551643368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A103506 (n + 1) + A080339 (n + 1)).toNat

end

end A185091.P13874637408551643368

/-! ## A185091.P7334892166045766670

`A093178(A103506(n+1)+A010051(n+1))`
-/

namespace A185091.P7334892166045766670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A103506 (n + 1) + A010051 (n + 1)).toNat

end

end A185091.P7334892166045766670

/-! ## A185091.P10935838868029353994

`A093178(A103506(n+1)+A080339(n+1))`
-/

namespace A185091.P10935838868029353994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A103506 (n + 1) + A080339 (n + 1)).toNat

end

end A185091.P10935838868029353994

/-! ## A185091.P17330882733841538343

`∏{e}[A103506(A000005(n+1)+1), A103506(n^#+1)]`
-/

namespace A185091.P17330882733841538343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A103506 (n ^ Nat.factorization (f1 n).natAbs p + 1)

end

end A185091.P17330882733841538343

/-!
# A185095: Rectangular array read by antidiagonals: row q has generating function F_q(x) = sum_{r=0,...,q-1} ((q-r)*(-1)^r*binomial(2*q-r,r)*x^r) / sum_{s=0,...,q} ((-1)^s*binomial(2*q-s,s)*x^s), where q=1,2,....

The programs for A185095, there is no canonical definition to state claims against.
-/

/-! ## A185095.P10500079467562544897

`A186740(∑[2*n]%comp[∑[n]])`
-/

namespace A185095.P10500079467562544897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186740 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A185095.P10500079467562544897

/-! ## A185095.P5362601604767429500

`A186740(∑[char[∑[n]]]²-(n+1))`
-/

namespace A185095.P5362601604767429500
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186740 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A185095.P5362601604767429500

/-! ## A185095.P1403632616379770622

`or(char[2], A186740(A061579(n)))`
-/

namespace A185095.P1403632616379770622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A186740 (A061579 n).toNat)

end

end A185095.P1403632616379770622

/-! ## A185095.P7341621396952460058

`A186740(A061579(n))%A001539(n)`
-/

namespace A185095.P7341621396952460058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186740 (A061579 n).toNat) (A001539 n)

end

end A185095.P7341621396952460058

/-! ## A185095.P9531289212219486418

`A007318(C(2, n))*A186740(A061579(n))`
-/

namespace A185095.P9531289212219486418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A186740 (A061579 n).toNat

end

end A185095.P9531289212219486418

/-! ## A185095.P14895747137018170987

`A186740(A061579(n))/A007318(C(3, n))`
-/

namespace A185095.P14895747137018170987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186740 (A061579 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A185095.P14895747137018170987

/-! ## A185095.P11487047289711865266

`A186740(A061579(n))+A008683(8*n+4)`
-/

namespace A185095.P11487047289711865266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186740 (A061579 n).toNat + A008683 (8 * n + 4)

end

end A185095.P11487047289711865266

/-! ## A185095.P1350216314261773834

`A000108(C(2, n+2))*A186740(A061579(n))`
-/

namespace A185095.P1350216314261773834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A186740 (A061579 n).toNat

end

end A185095.P1350216314261773834

/-! ## A185095.P13089150088627002796

`A186740(A061579(n))+A001222(((-1)^n)²)`
-/

namespace A185095.P13089150088627002796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186740 (A061579 n).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A185095.P13089150088627002796

/-!
# A185096: Let T(n) = n(n+1)/2 be the n-th triangular number (A000217); a(n) = T(8T(n)).

The programs for A185096, the canonical program `A185096.P3778731296284897470` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185096 has offset 0).

The definition of A185096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185096.P6091812388296360834

`ogf((36x+120x^2+36x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A185096.P6091812388296360834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 36, 120, 36] [1, -5, 10, -10, 5, -1] n

end

end A185096.P6091812388296360834

namespace A185096

/-- `ogf((36x+120x^2+36x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6091812388296360834.Spec : Prop :=
  ∀ n, P6091812388296360834.a n = A185096 n

end A185096

/-! ## A185096.P3778731296284897470

`2*n*(n+1)*(2*n+1)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185096

/-- `2*n*(n+1)*(2*n+1)²` -/
def P3778731296284897470.Spec : Prop :=
  ∀ n, (P3778731296284897470.a n : ℤ) = A185096 n

theorem P3778731296284897470.correct : P3778731296284897470.Spec := by
  intro n
  simp only [A185096]

end A185096

/-! ## A185096.P15811444291659343190

`A322677(n)/8`
-/

namespace A185096.P15811444291659343190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322677 n : ℚ) / 8

end

end A185096.P15811444291659343190

namespace A185096

/-- `A322677(n)/8` -/
def P15811444291659343190.Spec : Prop :=
  ∀ n, P15811444291659343190.a n = (A185096 n : ℚ)

theorem P15811444291659343190.correct : P15811444291659343190.Spec := by
  intro n
  simp only [A185096, Nat.add_sub_cancel, A185096.P15811444291659343190.a, A185096.P3778731296284897470.a, A322677, A322677.P15951521492401261500.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185096

/-! ## A185096.P11505043698730574087

`C(Δ[n²]², 2)`
-/

namespace A185096.P11505043698730574087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat 2

end

end A185096.P11505043698730574087

namespace A185096

/-- `C(Δ[n²]², 2)` -/
def P11505043698730574087.Spec : Prop :=
  ∀ n, (P11505043698730574087.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P2145003670107505789

`record[n%2*C(n², 2)]`
-/

namespace A185096.P2145003670107505789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * Nat.choose (n ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185096.P2145003670107505789

namespace A185096

/-- `record[n%2*C(n², 2)]` -/
def P2145003670107505789.Spec : Prop :=
  ∀ n, (P2145003670107505789.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P5474354524455730311

`lcm(Δ[n²]², ∑[4*n])`
-/

namespace A185096.P5474354524455730311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A185096.P5474354524455730311

namespace A185096

/-- `lcm(Δ[n²]², ∑[4*n])` -/
def P5474354524455730311.Spec : Prop :=
  ∀ n, (P5474354524455730311.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P15011020113387439712

`and(-2, C((2*n+1)², 2))`
-/

namespace A185096.P15011020113387439712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (Nat.choose ((2 * n + 1) ^ 2) 2 : ℤ)

end

end A185096.P15011020113387439712

namespace A185096

/-- `and(-2, C((2*n+1)², 2))` -/
def P15011020113387439712.Spec : Prop :=
  ∀ n, P15011020113387439712.a n = A185096 n

end A185096

/-! ## A185096.P7086202255339452335

`xor(1, C((2*n+1)², 2)+1)`
-/

namespace A185096.P7086202255339452335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose ((2 * n + 1) ^ 2) 2 + 1)

end

end A185096.P7086202255339452335

namespace A185096

/-- `xor(1, C((2*n+1)², 2)+1)` -/
def P7086202255339452335.Spec : Prop :=
  ∀ n, (P7086202255339452335.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P4649097025850551449

`or(1, C((2*n+1)², 2))-1`
-/

namespace A185096.P4649097025850551449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.choose ((2 * n + 1) ^ 2) 2) : ℤ) - 1

end

end A185096.P4649097025850551449

namespace A185096

/-- `or(1, C((2*n+1)², 2))-1` -/
def P4649097025850551449.Spec : Prop :=
  ∀ n, P4649097025850551449.a n = A185096 n

end A185096

/-! ## A185096.P4322871679238443549

`and(2, n²)+C((2*n+1)², 2)`
-/

namespace A185096.P4322871679238443549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n ^ 2) + Nat.choose ((2 * n + 1) ^ 2) 2

end

end A185096.P4322871679238443549

namespace A185096

/-- `and(2, n²)+C((2*n+1)², 2)` -/
def P4322871679238443549.Spec : Prop :=
  ∀ n, (P4322871679238443549.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P6404094060436935272

`C((2*n+1)², 2)/(ϕ²-ϕ)`
-/

namespace A185096.P6404094060436935272
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * n + 1) ^ 2) 2 : ℝ) / (Real.goldenRatio ^ 2 - Real.goldenRatio)

end

end A185096.P6404094060436935272

namespace A185096

/-- `C((2*n+1)², 2)/(ϕ²-ϕ)` -/
def P6404094060436935272.Spec : Prop :=
  ∀ n, P6404094060436935272.a n = (A185096 n : ℝ)

end A185096

/-! ## A185096.P16927033199166157663

`C((2*n+1)², 2)+C(2, n+3)`
-/

namespace A185096.P16927033199166157663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n + 1) ^ 2) 2 + Nat.choose 2 (n + 3)

end

end A185096.P16927033199166157663

namespace A185096

/-- `C((2*n+1)², 2)+C(2, n+3)` -/
def P16927033199166157663.Spec : Prop :=
  ∀ n, (P16927033199166157663.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P8886683184308274999

`∑[4*A118465(n)]`
-/

namespace A185096.P8886683184308274999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A118465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185096.P8886683184308274999

namespace A185096

/-- `∑[4*A118465(n)]` -/
def P8886683184308274999.Spec : Prop :=
  ∀ n, P8886683184308274999.a n = A185096 n

end A185096

/-! ## A185096.P4053431036713788428

`record[C(A006257(n)², 2)]`
-/

namespace A185096.P4053431036713788428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006257 n ^ 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185096.P4053431036713788428

namespace A185096

/-- `record[C(A006257(n)², 2)]` -/
def P4053431036713788428.Spec : Prop :=
  ∀ n, (P4053431036713788428.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P2639734458881369700

`record[C(A093178(n)², 2)]`
-/

namespace A185096.P2639734458881369700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093178 n ^ 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185096.P2639734458881369700

namespace A185096

/-- `record[C(A093178(n)², 2)]` -/
def P2639734458881369700.Spec : Prop :=
  ∀ n, (P2639734458881369700.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P6526187680537021582

`∑[n*(A010021(n)+2)]`
-/

namespace A185096.P6526187680537021582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010021 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185096.P6526187680537021582

namespace A185096

/-- `∑[n*(A010021(n)+2)]` -/
def P6526187680537021582.Spec : Prop :=
  ∀ n, P6526187680537021582.a n = A185096 n

end A185096

/-! ## A185096.P8364577801743080777

`∑[2*n*A010006(n)]`
-/

namespace A185096.P8364577801743080777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A010006 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185096.P8364577801743080777

namespace A185096

/-- `∑[2*n*A010006(n)]` -/
def P8364577801743080777.Spec : Prop :=
  ∀ n, P8364577801743080777.a n = A185096 n

end A185096

/-! ## A185096.P15892865116027748872

`record[C(A000265(n+1)², 2)]`
-/

namespace A185096.P15892865116027748872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000265 (n + 1) ^ 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185096.P15892865116027748872

namespace A185096

/-- `record[C(A000265(n+1)², 2)]` -/
def P15892865116027748872.Spec : Prop :=
  ∀ n, (P15892865116027748872.a n : ℤ) = A185096 n

end A185096

/-! ## A185096.P18046941804736492736

`A175110(n)-A001844(n)`
-/

namespace A185096.P18046941804736492736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175110 n - A001844 n

end

end A185096.P18046941804736492736

namespace A185096

/-- `A175110(n)-A001844(n)` -/
def P18046941804736492736.Spec : Prop :=
  ∀ n, P18046941804736492736.a n = A185096 n

end A185096

/-! ## A185096.P6999829556195396263

`A272850(n)-A016754(n)`
-/

namespace A185096.P6999829556195396263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272850 n - A016754 n

end

end A185096.P6999829556195396263

namespace A185096

/-- `A272850(n)-A016754(n)` -/
def P6999829556195396263.Spec : Prop :=
  ∀ n, P6999829556195396263.a n = A185096 n

theorem P6999829556195396263.correct : P6999829556195396263.Spec := by
  intro n
  simp only [A185096, Nat.add_sub_cancel, A185096.P6999829556195396263.a, A185096.P3778731296284897470.a, A016754, A016754.P2987865549988322084.a, A272850, A272850.P3692482739853026065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185096

/-!
# A185097: 

The programs for A185097, there is no canonical definition to state claims against.
-/

/-! ## A185097.P9794696758471205444

`C(8*a(n-1)+1, 2)` with `a(0)=1`
-/

namespace A185097.P9794696758471205444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (8 * a (n - 1) + 1) 2

end

end A185097.P9794696758471205444

/-!
# A185098: a(n) = floor((265/6)*4^(n-4) - n^2 - ((15+(-1)^(n-1))/6)* 2^(n-3)).

The programs for A185098, the canonical program `A185098.P841783801236569670` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185098 has offset 4).

The definition of A185098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(265/6*4^n-(n+4)²-(15+(-1)^(n+3))/6*2^(n+1))` (program `A185098.P841783801236569670`, by `A185098.P841783801236569670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185098.P3391180926173305477

`floor(265/6*4^n-((n+4)²+(15+(-1)^(n+3))/6*2^(n+1)))`
-/

namespace A185098.P3391180926173305477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(265 : ℚ) / 6 * (4 ^ n : ℚ) - (((n + 4) ^ 2 : ℚ) + (15 + (-1) ^ (n + 3) : ℚ) / 6 * (2 ^ (n + 1) : ℚ))⌋

end

end A185098.P3391180926173305477

namespace A185098

/-- `floor(265/6*4^n-((n+4)²+(15+(-1)^(n+3))/6*2^(n+1)))` -/
def P3391180926173305477.Spec : Prop :=
  ∀ n, P3391180926173305477.a n = A185098 (n + 4)

theorem P3391180926173305477.correct : P3391180926173305477.Spec := by
  intro n
  simp only [A185098, Nat.add_sub_cancel, A185098.P3391180926173305477.a, A185098.P841783801236569670.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185098

/-! ## A185098.P841783801236569670

`floor(265/6*4^n-(n+4)²-(15+(-1)^(n+3))/6*2^(n+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185098

/-- `floor(265/6*4^n-(n+4)²-(15+(-1)^(n+3))/6*2^(n+1))` -/
def P841783801236569670.Spec : Prop :=
  ∀ n, P841783801236569670.a n = A185098 (n + 4)

theorem P841783801236569670.correct : P841783801236569670.Spec := by
  intro n
  simp only [A185098, Nat.add_sub_cancel]

end A185098

/-! ## A185098.P15232310990201348340

`ogf((23-20x-82x^2+67x^3+22x^4-36x^5+8x^6)/(1-7x+11x^2+15x^3-56x^4+52x^5-16x^6))`
-/

namespace A185098.P15232310990201348340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [23, -20, -82, 67, 22, -36, 8] [1, -7, 11, 15, -56, 52, -16] n

end

end A185098.P15232310990201348340

namespace A185098

/-- `ogf((23-20x-82x^2+67x^3+22x^4-36x^5+8x^6)/(1-7x+11x^2+15x^3-56x^4+52x^5-16x^6))` -/
def P15232310990201348340.Spec : Prop :=
  ∀ n, P15232310990201348340.a n = A185098 (n + 4)

end A185098

