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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A306701: Numbers k such that the sum of the digits and the sum of the square of the digits of k are prime factors of k.

The programs for A306701, there is no canonical definition to state claims against.
-/

/-! ## A306701.P14848109703188160957

`A104155(A041641(n))-1`
-/

namespace A306701.P14848109703188160957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104155 (A041641 n).toNat - 1

end

end A306701.P14848109703188160957

/-!
# A306705: a(n) = Product_{d|n} d*tau(d), where tau(k) = the number of the divisors of k (A000005).

The programs for A306705, the canonical program `A306705.P258986654421283042` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306705 has offset 1).

The definition of A306705 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211776, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306705.P258986654421283042

`A211776(n+1)*A007955(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A306705

/-- `A211776(n+1)*A007955(n+1)` -/
def P258986654421283042.Spec : Prop :=
  ∀ n, P258986654421283042.a n = A306705 (n + 1)

theorem P258986654421283042.correct : P258986654421283042.Spec := by
  intro n
  simp only [A306705, Nat.add_sub_cancel]

end A306705

/-! ## A306705.P15977304887159322079

`∏{d}[n+1, A038040(#)]`
-/

namespace A306705.P15977304887159322079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A038040 d

end

end A306705.P15977304887159322079

namespace A306705

/-- `∏{d}[n+1, A038040(#)]` -/
def P15977304887159322079.Spec : Prop :=
  ∀ n, P15977304887159322079.a n = A306705 (n + 1)

end A306705

/-! ## A306705.P16598853634247137042

`∏{d}[n+1, #*A000005(#)]`
-/

namespace A306705.P16598853634247137042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 d

end

end A306705.P16598853634247137042

namespace A306705

/-- `∏{d}[n+1, #*A000005(#)]` -/
def P16598853634247137042.Spec : Prop :=
  ∀ n, P16598853634247137042.a n = A306705 (n + 1)

end A306705

/-! ## A306705.P11070035433560433084

`A007955(n+1)*A211776(n+1)`
-/

namespace A306705.P11070035433560433084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A211776 (n + 1)

end

end A306705.P11070035433560433084

namespace A306705

/-- `A007955(n+1)*A211776(n+1)` -/
def P11070035433560433084.Spec : Prop :=
  ∀ n, P11070035433560433084.a n = A306705 (n + 1)

theorem P11070035433560433084.correct : P11070035433560433084.Spec := by
  intro n
  simp only [A306705, Nat.add_sub_cancel, A306705.P11070035433560433084.a, A306705.P258986654421283042.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A306705

/-! ## A306705.P2243610734708004826

`A334664(n+1)*A334795(n+1)`
-/

namespace A306705.P2243610734708004826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334664 (n + 1) * A334795 (n + 1)

end

end A306705.P2243610734708004826

namespace A306705

/-- `A334664(n+1)*A334795(n+1)` -/
def P2243610734708004826.Spec : Prop :=
  ∀ n, P2243610734708004826.a n = A306705 (n + 1)

end A306705

/-! ## A306705.P9182831514824349919

`(n+1)*A007956(n+1)*A211776(n+1)`
-/

namespace A306705.P9182831514824349919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007956 (n + 1) * A211776 (n + 1))

end

end A306705.P9182831514824349919

namespace A306705

/-- `(n+1)*A007956(n+1)*A211776(n+1)` -/
def P9182831514824349919.Spec : Prop :=
  ∀ n, P9182831514824349919.a n = A306705 (n + 1)

end A306705

/-! ## A306705.P9750896617559013222

`sqrt(n+1)^Δ[A006218(n)]*A211776(n+1)`
-/

namespace A306705.P9750896617559013222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) * (A211776 (n + 1) : ℝ)

end

end A306705.P9750896617559013222

namespace A306705

/-- `sqrt(n+1)^Δ[A006218(n)]*A211776(n+1)` -/
def P9750896617559013222.Spec : Prop :=
  ∀ n, P9750896617559013222.a n = (A306705 (n + 1) : ℝ)

end A306705

/-! ## A306705.P6154848972068783689

`(n+1)^(A000005(n+1)/2)*A211776(n+1)`
-/

namespace A306705.P6154848972068783689
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) * (A211776 (n + 1) : ℝ)

end

end A306705.P6154848972068783689

namespace A306705

/-- `(n+1)^(A000005(n+1)/2)*A211776(n+1)` -/
def P6154848972068783689.Spec : Prop :=
  ∀ n, P6154848972068783689.a n = (A306705 (n + 1) : ℝ)

end A306705

/-! ## A306705.P13561462410547590118

`A061537(n+1)*A061538(n+1)*A211776(n+1)`
-/

namespace A306705.P13561462410547590118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061537 (n + 1) * A061538 (n + 1) * A211776 (n + 1)

end

end A306705.P13561462410547590118

namespace A306705

/-- `A061537(n+1)*A061538(n+1)*A211776(n+1)` -/
def P13561462410547590118.Spec : Prop :=
  ∀ n, P13561462410547590118.a n = A306705 (n + 1)

end A306705

/-! ## A306705.P17736519044380939544

`A183091(n+1)*A183092(n+1)*A211776(n+1)`
-/

namespace A306705.P17736519044380939544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183091 (n + 1) * A183092 (n + 1) * A211776 (n + 1)

end

end A306705.P17736519044380939544

namespace A306705

/-- `A183091(n+1)*A183092(n+1)*A211776(n+1)` -/
def P17736519044380939544.Spec : Prop :=
  ∀ n, P17736519044380939544.a n = A306705 (n + 1)

end A306705

/-! ## A306705.P6287942196541231200

`A211776(n+1)*A291186(n+1)*A306671(n+1)`
-/

namespace A306705.P6287942196541231200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211776 (n + 1) * A291186 (n + 1) * A306671 (n + 1)

end

end A306705.P6287942196541231200

namespace A306705

/-- `A211776(n+1)*A291186(n+1)*A306671(n+1)` -/
def P6287942196541231200.Spec : Prop :=
  ∀ n, P6287942196541231200.a n = A306705 (n + 1)

end A306705

/-! ## A306705.P7104381919836347886

`sqrt(A062758(n+1))*A211776(n+1)`
-/

namespace A306705.P7104381919836347886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) * (A211776 (n + 1) : ℝ)

end

end A306705.P7104381919836347886

namespace A306705

/-- `sqrt(A062758(n+1))*A211776(n+1)` -/
def P7104381919836347886.Spec : Prop :=
  ∀ n, P7104381919836347886.a n = (A306705 (n + 1) : ℝ)

end A306705

/-! ## A306705.P2901514731303903902

`A307101(n+1)/A322672(n+1)`
-/

namespace A306705.P2901514731303903902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307101 (n + 1) : ℚ) / (A322672 (n + 1) : ℚ)

end

end A306705.P2901514731303903902

namespace A306705

/-- `A307101(n+1)/A322672(n+1)` -/
def P2901514731303903902.Spec : Prop :=
  ∀ n, P2901514731303903902.a n = (A306705 (n + 1) : ℚ)

end A306705

/-!
# A306709: For n > 1, a(n) = gcd(A001414(n), A167344(n)) where A001414(n) is the sum of primes p dividing n (with repetition) and A167344(n) = b(n) is the totally multiplicative sequence with b(p) = (p-1)*(p+1) = p^2 - 1; a(1) = 0.

The programs for A306709, the canonical program `A306709.P14333036255638275458` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306709 has offset 1).

The definition of A306709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306709.P14333036255638275458

`gcd(A001414(n+1), A167344(n+1))%(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A306709

/-- `gcd(A001414(n+1), A167344(n+1))%(n+1)` -/
def P14333036255638275458.Spec : Prop :=
  ∀ n, (P14333036255638275458.a n : ℤ) = A306709 (n + 1)

theorem P14333036255638275458.correct : P14333036255638275458.Spec := by
  intro n
  simp only [A306709, Nat.add_sub_cancel]

end A306709

/-!
# A306710: a(n) = f_n(0), where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways, with conventions that 0^0=1^0=1^1=1, 0^1=0.

The programs for A306710, there is no canonical definition to state claims against.
-/

/-! ## A306710.P707382614600118183

`A119715(A161790(n+1))%2`
-/

namespace A306710.P707382614600118183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119715 (A161790 (n + 1)).toNat) 2

end

end A306710.P707382614600118183

/-! ## A306710.P3360248280501583142

`A284588((A227979(n+1)+n+1)²)`
-/

namespace A306710.P3360248280501583142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284588 ((A227979 (n + 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A306710.P3360248280501583142

/-! ## A306710.P12509535832334713671

`A001221(gcd(A067824(n+2), A343377(2*n)))`
-/

namespace A306710.P12509535832334713671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A067824 (n + 2)) (A343377 (2 * n)))

end

end A306710.P12509535832334713671

/-! ## A306710.P289122327615365981

`A244992(A392712(n+2))`
-/

namespace A306710.P289122327615365981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (A392712 (n + 2)).toNat

end

end A306710.P289122327615365981

/-! ## A306710.P14986512758834770255

`A296657(A329326(n+4)+A000040(n+3))`
-/

namespace A306710.P14986512758834770255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (A329326 (n + 4) + A000040 (n + 3)).toNat

end

end A306710.P14986512758834770255

/-!
# A306711: Numbers k such that gcd(k, phi(k)) <> gcd(k, psi(k)).

The programs for A306711, there is no canonical definition to state claims against.
-/

/-! ## A306711.P1624593133099521748

`3*lt[12, A182639(3*n+1)]`
-/

namespace A306711.P1624593133099521748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182639 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306711.P1624593133099521748

/-! ## A306711.P7968382313017190721

`A257271(2*A005818(n+1))`
-/

namespace A306711.P7968382313017190721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257271 (2 * A005818 (n + 1)).toNat

end

end A306711.P7968382313017190721

/-! ## A306711.P4239142426153396828

`3*A319951(A080193(n+1))`
-/

namespace A306711.P4239142426153396828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A319951 (A080193 (n + 1)).toNat

end

end A306711.P4239142426153396828

/-! ## A306711.P3219790685149517370

`∑[A225766(Δ[A048703(n+1)])]`
-/

namespace A306711.P3219790685149517370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048703 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225766 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306711.P3219790685149517370

/-! ## A306711.P12401327757296757221

`eq[A127244(n), A128033(n)]`
-/

namespace A306711.P12401327757296757221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306711.P12401327757296757221

/-!
# A306712: Decimal expansion of 3*sqrt(3)/Pi.

The programs for A306712, there is no canonical definition to state claims against.
-/

/-! ## A306712.P6300359412908026605

`A289504(n-(floor(a(n-1))-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A306712.P6300359412908026605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289504 (((n : ℤ) - (a (n - 1) - a (n - 1))).toNat + 1)

end

end A306712.P6300359412908026605

/-! ## A306712.P8418415539039171984

`A289504(A098108(2*a(n-1))+n)` with `a(0)=1`
-/

namespace A306712.P8418415539039171984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289504 ((A098108 (2 * a (n - 1)).toNat + (n : ℤ)).toNat + 1)

end

end A306712.P8418415539039171984

/-! ## A306712.P9329195616054433615

`A289504(n-A098108(2*a(n-1)))` with `a(0)=1`
-/

namespace A306712.P9329195616054433615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289504 (((n : ℤ) - A098108 (2 * a (n - 1)).toNat).toNat + 1)

end

end A306712.P9329195616054433615

/-! ## A306712.P15632643940987865931

`A289504(n)-2*A098108(A006530(n+1))`
-/

namespace A306712.P15632643940987865931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289504 (n + 1) - 2 * A098108 (A006530 (n + 1)).toNat

end

end A306712.P15632643940987865931

/-! ## A306712.P4732918058512729427

`A289504(n)-2*A098108(n²+1)`
-/

namespace A306712.P4732918058512729427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289504 (n + 1) - 2 * A098108 (n ^ 2 + 1)

end

end A306712.P4732918058512729427

/-!
# A306713: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. 1/(1-x^k-x^(k+1)).

The programs for A306713, there is no canonical definition to state claims against.
-/

/-! ## A306713.P10334216224398364823

`A122950(n)^A238342(n)^6`
-/

namespace A306713.P10334216224398364823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122950 n : ℚ) ^ (A238342 n ^ 6 : ℤ)

end

end A306713.P10334216224398364823

/-! ## A306713.P11459897219465991494

`A122950(n)^A242447(n)^6`
-/

namespace A306713.P11459897219465991494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122950 n : ℚ) ^ (A242447 n ^ 6 : ℤ)

end

end A306713.P11459897219465991494

/-! ## A306713.P6355056592889177914

`A122950(n)^A002118(A238342(n))`
-/

namespace A306713.P6355056592889177914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122950 n : ℚ) ^ (A002118 (A238342 n).toNat : ℤ)

end

end A306713.P6355056592889177914

/-! ## A306713.P18090777933367785575

`A122950(n)^A002118(A242447(n))`
-/

namespace A306713.P18090777933367785575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122950 n : ℚ) ^ (A002118 (A242447 n).toNat : ℤ)

end

end A306713.P18090777933367785575

/-! ## A306713.P14379672143209909246

`A122950(n)^A238342(A055645(n))`
-/

namespace A306713.P14379672143209909246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122950 n : ℚ) ^ (A238342 (A055645 n).toNat : ℤ)

end

end A306713.P14379672143209909246

/-!
# A306714: Permanent of the circulant matrix whose first row is given by the binary expansion of n.

The programs for A306714, there is no canonical definition to state claims against.
-/

/-! ## A306714.P5400183272111599666

`A000120(n)*A115578(A017910(n))`
-/

namespace A306714.P5400183272111599666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A115578 (A017910 n).toNat

end

end A306714.P5400183272111599666

/-! ## A306714.P11216816010106800000

`∑{e}[A236602(n+1)+1, #]*A000120(n)`
-/

namespace A306714.P11216816010106800000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236602 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A000120 n

end

end A306714.P11216816010106800000

/-! ## A306714.P2850455600290214878

`A000120(n)*A036225(A136108(n))`
-/

namespace A306714.P2850455600290214878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A036225 (A136108 n).toNat

end

end A306714.P2850455600290214878

/-! ## A306714.P9809086943317338507

`A000120(n)*A115579(A133041(n))`
-/

namespace A306714.P9809086943317338507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A115579 (A133041 n).toNat

end

end A306714.P9809086943317338507

/-! ## A306714.P7250510789155188047

`A000120(n)*A350714(A063004(n))`
-/

namespace A306714.P7250510789155188047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A350714 (A063004 n).toNat

end

end A306714.P7250510789155188047

/-!
# A306715: Number of graphical necklaces with n vertices and distinct rotations.

The programs for A306715, the canonical program `A306715.P3399074615036014204` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306715 has offset 1).

The definition of A306715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306715.P9705467123389781430

`A324461(n+1)/(n+1)`
-/

namespace A306715.P9705467123389781430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324461 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A306715.P9705467123389781430

namespace A306715

/-- `A324461(n+1)/(n+1)` -/
def P9705467123389781430.Spec : Prop :=
  ∀ n, P9705467123389781430.a n = (A306715 (n + 1) : ℚ)

end A306715

/-! ## A306715.P3399074615036014204

`1/(n+1)*∑{d}[n+1, A008683(#)*2^((n+1)*((n+1)/#-1)/2+(n+1)*floor(#/2)/#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A306715

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*2^((n+1)*((n+1)/#-1)/2+(n+1)*floor(#/2)/#)]` -/
def P3399074615036014204.Spec : Prop :=
  ∀ n, P3399074615036014204.a n = (A306715 (n + 1) : ℝ)

end A306715

/-!
# A306717: Square array T(n, k) of positive integers, n > 0, k > 0, read by antidiagonals, filled the greedy way, such that for any i >= 0 and j >= 0 with i + j > 0, no three terms T(n, k), T(n+i, k+j), T(n+2*i, k+2*j) form an arithmetic progression.

The programs for A306717, there is no canonical definition to state claims against.
-/

/-! ## A306717.P13245703067890602376

`A001221(A247726(A328001(n)))`
-/

namespace A306717.P13245703067890602376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A247726 (A328001 n).toNat).toNat

end

end A306717.P13245703067890602376

/-! ## A306717.P16166105973229160644

`∑{p}[A247726(A328001(n)), A008480(#)]`
-/

namespace A306717.P16166105973229160644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A328001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008480 p

end

end A306717.P16166105973229160644

/-! ## A306717.P16158219341555880884

`A035170(A003991(n+1))%A126269(n+3)`
-/

namespace A306717.P16158219341555880884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035170 (A003991 (n + 1)).toNat) (A126269 (n + 3))

end

end A306717.P16158219341555880884

/-! ## A306717.P17844228077877521760

`A065339(A003991(n+1))+A008480(A016116(n))`
-/

namespace A306717.P17844228077877521760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A003991 (n + 1)).toNat + A008480 (A016116 n).toNat

end

end A306717.P17844228077877521760

/-! ## A306717.P5716695696439671822

`A090822(A080046(n+1))`
-/

namespace A306717.P5716695696439671822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A080046 (n + 1)).toNat

end

end A306717.P5716695696439671822

/-!
# A306719: Lexicographically earliest sequence containing 2 and all positive integers n such that the prime indices of n - 1 already belong to the sequence.

The programs for A306719, there is no canonical definition to state claims against.
-/

/-! ## A306719.P9824596032214338203

`A324699(n+1)+1`
-/

namespace A306719.P9824596032214338203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324699 (n + 1) + 1

end

end A306719.P9824596032214338203

/-! ## A306719.P15223157057565366836

`A014681(A324699(n+1))`
-/

namespace A306719.P15223157057565366836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A324699 (n + 1)).toNat

end

end A306719.P15223157057565366836

/-! ## A306719.P11748728944207765649

`A103889(A324699(-xor(n, -1)))`
-/

namespace A306719.P11748728944207765649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A324699 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A306719.P11748728944207765649

/-! ## A306719.P17930379378775394034

`∩[A066207(n+1), A171828(n+1)]+1`
-/

namespace A306719.P17930379378775394034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A306719.P17930379378775394034

/-!
# A306720: Even numbers that are not the sum of two unitary abundant numbers (not necessarily distinct).

The programs for A306720, there is no canonical definition to state claims against.
-/

/-! ## A306720.P10525145103230486896

`record[(2*(n+1))%A102505(A000010(n+1))]`
-/

namespace A306720.P10525145103230486896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A102505 (A000010 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306720.P10525145103230486896

/-! ## A306720.P7921434664782185562

`2*lt[A332003(n), A239455(n)]`
-/

namespace A306720.P7921434664782185562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306720.P7921434664782185562

/-! ## A306720.P11871958913019934904

`lt[A140356(n), n%or(1, n)]`
-/

namespace A306720.P11871958913019934904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A306720.P11871958913019934904

/-! ## A306720.P4362811112988138084

`lt[A140356(n), A134079(n)]`
-/

namespace A306720.P4362811112988138084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306720.P4362811112988138084

/-! ## A306720.P16018542264711831005

`∑[A046523(Δ[A328369(2*(n+1))])]`
-/

namespace A306720.P16018542264711831005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306720.P16018542264711831005

/-!
# A306721: a(n) = Sum_{k=0..n} binomial(k, 7*(n-k)).

The programs for A306721, the canonical program `A306721.P17564088651103366894` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306721 has offset 0).

The definition of A306721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#, 7*(n-#))]` (program `A306721.P17564088651103366894`, by `A306721.P17564088651103366894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306721.P9438047231518048415

`A017857(7*n)`
-/

namespace A306721.P9438047231518048415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (7 * n)

end

end A306721.P9438047231518048415

namespace A306721

/-- `A017857(7*n)` -/
def P9438047231518048415.Spec : Prop :=
  ∀ n, P9438047231518048415.a n = A306721 n

end A306721

/-! ## A306721.P12066998841763729749

`ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7-x^8))`
-/

namespace A306721.P12066998841763729749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 15, -20, 15, -6, 1] [1, -7, 21, -35, 35, -21, 7, -1, -1] n

end

end A306721.P12066998841763729749

namespace A306721

/-- `ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7-x^8))` -/
def P12066998841763729749.Spec : Prop :=
  ∀ n, P12066998841763729749.a n = A306721 n

end A306721

/-! ## A306721.P17564088651103366894

`∑{#}[n, C(#, 7*(n-#))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306721

/-- `∑{#}[n, C(#, 7*(n-#))]` -/
def P17564088651103366894.Spec : Prop :=
  ∀ n, (P17564088651103366894.a n : ℤ) = A306721 n

theorem P17564088651103366894.correct : P17564088651103366894.Spec := by
  intro n
  simp only [A306721]

end A306721

/-! ## A306721.P12105135347588110258

`A127842(A017005(n+1))`
-/

namespace A306721.P12105135347588110258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (A017005 (n + 1)).toNat

end

end A306721.P12105135347588110258

namespace A306721

/-- `A127842(A017005(n+1))` -/
def P12105135347588110258.Spec : Prop :=
  ∀ n, P12105135347588110258.a n = A306721 n

end A306721

/-! ## A306721.P12719334554040046770

`A127842(A004768(n)-n)`
-/

namespace A306721.P12719334554040046770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (A004768 n - (n : ℤ)).toNat

end

end A306721.P12719334554040046770

namespace A306721

/-- `A127842(A004768(n)-n)` -/
def P12719334554040046770.Spec : Prop :=
  ∀ n, P12719334554040046770.a n = A306721 n

end A306721

/-! ## A306721.P18185326654622959897

`A127842(A017077(n+1)-n)`
-/

namespace A306721.P18185326654622959897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (A017077 (n + 1) - (n : ℤ)).toNat

end

end A306721.P18185326654622959897

namespace A306721

/-- `A127842(A017077(n+1)-n)` -/
def P18185326654622959897.Spec : Prop :=
  ∀ n, P18185326654622959897.a n = A306721 n

end A306721

/-! ## A306721.P10339475841010065823

`Δ[A017857(A008458(n)+1+n)]`
-/

namespace A306721.P10339475841010065823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (A008458 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306721.P10339475841010065823

namespace A306721

/-- `Δ[A017857(A008458(n)+1+n)]` -/
def P10339475841010065823.Spec : Prop :=
  ∀ n, P10339475841010065823.a n = A306721 n

end A306721

/-! ## A306721.P6647795110064576560

`A306680(Δ[A264444(n+1)])`
-/

namespace A306721.P6647795110064576560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 (f1 (n + 1) - f1 n).toNat

end

end A306721.P6647795110064576560

namespace A306721

/-- `A306680(Δ[A264444(n+1)])` -/
def P6647795110064576560.Spec : Prop :=
  ∀ n, P6647795110064576560.a n = A306721 n

end A306721

/-! ## A306721.P5202914467199410507

`A306680(eq[8, A004736(n+1)])`
-/

namespace A306721.P5202914467199410507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306721.P5202914467199410507

namespace A306721

/-- `A306680(eq[8, A004736(n+1)])` -/
def P5202914467199410507.Spec : Prop :=
  ∀ n, P5202914467199410507.a n = A306721 n

end A306721

/-!
# A306722: Number of pairs of primes (p,q), p < q, which are a solution of the Diophantine equation (p-1)*(q-1) = (2n)^2.

The programs for A306722, there is no canonical definition to state claims against.
-/

/-! ## A306722.P18424775124931081558

`A306440(2*(n+1)²)`
-/

namespace A306722.P18424775124931081558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 (2 * (n + 1) ^ 2)

end

end A306722.P18424775124931081558

/-! ## A306722.P6402946771429774485

`dr(A306440(∑[A016825(n)]))`
-/

namespace A306722.P6402946771429774485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A306722.P6402946771429774485

/-! ## A306722.P17389383519879320598

`A306440(∑[A016825(2*n-n)])%6`
-/

namespace A306722.P17389383519879320598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 6

end

end A306722.P17389383519879320598

/-! ## A306722.P1434137747799693435

`gcd(A000038(n), A306440(∑[A016825(n)]))`
-/

namespace A306722.P1434137747799693435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A306722.P1434137747799693435

/-! ## A306722.P8566226677493914736

`A151878(n)!*A306440(∑[A016825(n)])`
-/

namespace A306722.P8566226677493914736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151878 n).toNat : ℤ) * A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306722.P8566226677493914736

/-! ## A306722.P14058589577538179722

`A306440(∑[A016825(n)])+A000007(n+1)`
-/

namespace A306722.P14058589577538179722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000007 (n + 1)

end

end A306722.P14058589577538179722

/-! ## A306722.P8792692638519731962

`A306440(∑[A016825(n)])+A000038(n+1)`
-/

namespace A306722.P8792692638519731962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000038 (n + 1)

end

end A306722.P8792692638519731962

/-! ## A306722.P16749774196855828742

`A263845(2*n)*A306440(∑[A016825(n)])`
-/

namespace A306722.P16749774196855828742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 (2 * n) * A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306722.P16749774196855828742

/-! ## A306722.P4168972448666952629

`A306440(∑[A016825(n)])+char[A044654(n+2)]`
-/

namespace A306722.P4168972448666952629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044654 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A306722.P4168972448666952629

/-! ## A306722.P11969299705191223079

`A306440(∑[A016825(n)])^(A000040(n+1)%2)`
-/

namespace A306722.P11969299705191223079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306440 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A306722.P11969299705191223079

/-!
# A306725: Number of connected strong irreducible digital images of n points up to strong homotopy equivalence.

The programs for A306725, there is no canonical definition to state claims against.
-/

/-! ## A306725.P18141775872366502829

`A068098(n)-A274225(A300662(n))`
-/

namespace A306725.P18141775872366502829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068098 n - A274225 (A300662 n).toNat

end

end A306725.P18141775872366502829

/-!
# A306726: a(n) = Sum_{i=1..n} f_i(0), where f_i is the i-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways, with conventions that 0^0=1^0=1^1=1, 0^1=0.

The programs for A306726, there is no canonical definition to state claims against.
-/

/-! ## A306726.P17922766340148568679

`∑[A267704(A103956(n)+A054911(n))]`
-/

namespace A306726.P17922766340148568679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267704 (A103956 n + A054911 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306726.P17922766340148568679

/-! ## A306726.P112714546104949181

`∑[A008966(∑[A323093(2*(n+2))])]`
-/

namespace A306726.P112714546104949181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323093 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306726.P112714546104949181

/-! ## A306726.P17810182540766384276

`round(∑[A050877(2*(n+1))/A050877(2*(n+2))])`
-/

namespace A306726.P17810182540766384276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050877 (2 * (n + 1)) : ℚ) / (A050877 (2 * (n + 2)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306726.P17810182540766384276

/-! ## A306726.P17298527888157416598

`∑[A228039(A004847(A202940(n+1)))]`
-/

namespace A306726.P17298527888157416598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (A004847 (A202940 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306726.P17298527888157416598

/-!
# A306727: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals: A(n,k) is the number of partitions of 3*n into powers of 3 less than or equal to 3^k.

The programs for A306727, there is no canonical definition to state claims against.
-/

/-! ## A306727.P16786821695933506142

`A325678(C(A131818(n+3), A053616(n)))`
-/

namespace A306727.P16786821695933506142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Nat.choose (A131818 (n + 3)).toNat (A053616 n).toNat)

end

end A306727.P16786821695933506142

/-! ## A306727.P6885657817145857974

`A000193((A152977(n)+1)²)`
-/

namespace A306727.P6885657817145857974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 ((A152977 n + 1) ^ 2).toNat

end

end A306727.P6885657817145857974

/-! ## A306727.P18103278673829214489

`A055980(A320750(n+1)²+2)`
-/

namespace A306727.P18103278673829214489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A320750 (n + 1) ^ 2 + 2).toNat

end

end A306727.P18103278673829214489

/-! ## A306727.P221116913964316322

`A081604(A000096(A137855(n+1)))`
-/

namespace A306727.P221116913964316322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A000096 (A137855 (n + 1)).toNat).toNat

end

end A306727.P221116913964316322

/-! ## A306727.P7552896561506485769

`A081604(A137855(n+1)*A152977(n))`
-/

namespace A306727.P7552896561506485769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A137855 (n + 1) * A152977 n).toNat

end

end A306727.P7552896561506485769

/-!
# A306730: Expansion of Sum_{k>=0} x^k * Product_{j=1..k} (1 + j*x^j).

The programs for A306730, there is no canonical definition to state claims against.
-/

/-! ## A306730.P14036941310829606444

`A122921(A076907(n))`
-/

namespace A306730.P14036941310829606444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A076907 n).toNat

end

end A306730.P14036941310829606444

/-! ## A306730.P13381658084440669720

`A262095(A214936(n))`
-/

namespace A306730.P13381658084440669720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (A214936 n).toNat

end

end A306730.P13381658084440669720

/-! ## A306730.P640384788880784491

`A262095(∏[A070939(n)])`
-/

namespace A306730.P640384788880784491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306730.P640384788880784491

/-! ## A306730.P9999884299468695882

`A262095(∏[Δ[A296349(n)]])`
-/

namespace A306730.P9999884299468695882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306730.P9999884299468695882

/-!
# A306731: Expansion of Sum_{k>=0} x^k * Product_{j=1..k} (1 + x^j)^j.

The programs for A306731, there is no canonical definition to state claims against.
-/

/-! ## A306731.P9894516214381902201

`A055641(A076836(n+1))+A025049(n+1)`
-/

namespace A306731.P9894516214381902201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A076836 (n + 1)).toNat + A025049 (n + 1)

end

end A306731.P9894516214381902201

/-! ## A306731.P16444851276632647730

`A329548(A334271(n))`
-/

namespace A306731.P16444851276632647730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A334271 n).toNat

end

end A306731.P16444851276632647730

/-! ## A306731.P17847120757369804684

`A373810(A367216(n))`
-/

namespace A306731.P17847120757369804684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A367216 n).toNat

end

end A306731.P17847120757369804684

/-! ## A306731.P3230821083208916501

`A363678(A024428(n+1))`
-/

namespace A306731.P3230821083208916501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363678 (A024428 (n + 1)).toNat

end

end A306731.P3230821083208916501

/-!
# A306734: Expansion of Sum_{k>=0} x^(k^2) * Product_{j=1..k} (1 + x^j).

The programs for A306734, there is no canonical definition to state claims against.
-/

/-! ## A306734.P13435155610981700938

`A329320(A306910(n)%A071519(n+1))`
-/

namespace A306734.P13435155610981700938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (Int.tmod (A306910 n) (A071519 (n + 1))).toNat

end

end A306734.P13435155610981700938

/-! ## A306734.P9568216694912654525

`gcd(and(2, A320606(n+1)), A350738(n))`
-/

namespace A306734.P9568216694912654525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.land 2 (A320606 (n + 1))) (A350738 n)

end

end A306734.P9568216694912654525

/-! ## A306734.P1308958345212996141

`gcd(A350723(A003114(n)), A350738(n))`
-/

namespace A306734.P1308958345212996141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350723 (A003114 n).toNat) (A350738 n)

end

end A306734.P1308958345212996141

/-!
# A306735: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. ((k+1-x)*(1-x)^(k-1))/((1-x)^k-x^(k+1)).

The programs for A306735, there is no canonical definition to state claims against.
-/

/-! ## A306735.P12695326694543940985

`A213361(A002796(A034699(n+1)))`
-/

namespace A306735.P12695326694543940985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213361 (A002796 (A034699 (n + 1)).toNat).toNat

end

end A306735.P12695326694543940985

/-! ## A306735.P1079843054714358354

`A004736(n+1)-Δ[A067132(A068034(n))]`
-/

namespace A306735.P1079843054714358354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A068034 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - (f1 (n + 1) - f1 n)

end

end A306735.P1079843054714358354

/-! ## A306735.P615410699732311132

`gcd(A217725(A113415(3*(n+1))), A349393(n+1))`
-/

namespace A306735.P615410699732311132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217725 (A113415 (3 * (n + 1))).toNat) (A349393 (n + 1))

end

end A306735.P615410699732311132

/-! ## A306735.P14900469904523219657

`A025581(n)+A016424(A271194(n+1))`
-/

namespace A306735.P14900469904523219657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A016424 (A271194 (n + 1)).toNat

end

end A306735.P14900469904523219657

/-! ## A306735.P14208646757583578390

`A333769(A246277(n+1)+A000217(n))`
-/

namespace A306735.P14208646757583578390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 (A246277 (n + 1) + A000217 n).toNat

end

end A306735.P14208646757583578390

/-!
# A306736: Exponential infinitary highly composite numbers: where the number of exponential infinitary divisors (A307848) increases to record.

The programs for A306736, there is no canonical definition to state claims against.
-/

/-! ## A306736.P7771535488833598847

`∏[A166684(n+1)²]`
-/

namespace A306736.P7771535488833598847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166684 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306736.P7771535488833598847

/-! ## A306736.P3390926448694129201

`∏[lt[A357312(n), n]²]`
-/

namespace A306736.P3390926448694129201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357312 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306736.P3390926448694129201

/-! ## A306736.P9746083865121851603

`∏[record[A140271(n+1)²]]`
-/

namespace A306736.P9746083865121851603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306736.P9746083865121851603

/-! ## A306736.P13991463450044479014

`A000430(n)²*a(n-1)` with `a(0)=1`
-/

namespace A306736.P13991463450044479014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000430 n ^ 2 * a (n - 1)

end

end A306736.P13991463450044479014

/-! ## A306736.P1314949924722508616

`(∏[A000430(n+1)]/A000430(n+1))²`
-/

namespace A306736.P1314949924722508616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000430 (n + 1) : ℚ)) ^ 2

end

end A306736.P1314949924722508616

/-!
# A306737: Irregular triangle where row n is a list of indices in A002110 with multiplicity whose product is A002182(n).

The programs for A306737, there is no canonical definition to state claims against.
-/

/-! ## A306737.P14173955002504501497

`A307322(n+1)+A102683(A306100(n))`
-/

namespace A306737.P14173955002504501497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307322 (n + 1) + A102683 (A306100 n).toNat

end

end A306737.P14173955002504501497

/-! ## A306737.P7298172728841100802

`A307322(n+1)+A180472(∑[n])`
-/

namespace A306737.P7298172728841100802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307322 (n + 1) + A180472 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306737.P7298172728841100802

/-! ## A306737.P11751036693649159020

`A307322(and(1, A176500(n+1))+n)`
-/

namespace A306737.P11751036693649159020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307322 (Int.land 1 (A176500 (n + 1)) + (n : ℤ)).toNat

end

end A306737.P11751036693649159020

/-! ## A306737.P11088371547640409191

`and(A192718(n+1), A307322(n+1))`
-/

namespace A306737.P11088371547640409191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192718 (n + 1)) (A307322 (n + 1))

end

end A306737.P11088371547640409191

/-! ## A306737.P13425158691309334406

`and(A248346(n+1), A307322(n+1))`
-/

namespace A306737.P13425158691309334406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248346 (n + 1)) (A307322 (n + 1))

end

end A306737.P13425158691309334406

/-!
# A306738: Number of permutations of [n] allowing i->i+j (mod n), j=0..ceiling(n/2)-1.

The programs for A306738, there is no canonical definition to state claims against.
-/

/-! ## A306738.P6813457083468324661

`A008305(A065033(n²))`
-/

namespace A306738.P6813457083468324661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008305 (A065033 (n ^ 2)).toNat

end

end A306738.P6813457083468324661

/-! ## A306738.P3430329512945414597

`A321352(A129756(n²))`
-/

namespace A306738.P3430329512945414597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (A129756 (n ^ 2)).toNat

end

end A306738.P3430329512945414597

/-! ## A306738.P4989890095212527281

`A321352(A007590(n)+1)`
-/

namespace A306738.P4989890095212527281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (A007590 n + 1).toNat

end

end A306738.P4989890095212527281

/-! ## A306738.P5800249836364846626

`A321352(A099392(n+1))`
-/

namespace A306738.P5800249836364846626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (A099392 (n + 1)).toNat

end

end A306738.P5800249836364846626

/-! ## A306738.P8767414264460051658

`A321352(A004525(n²+1))`
-/

namespace A306738.P8767414264460051658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321352 (A004525 (n ^ 2 + 1)).toNat

end

end A306738.P8767414264460051658

/-!
# A306739: n-th derivative of f_{n+1} at x=1, where f_k is the k-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A306739, there is no canonical definition to state claims against.
-/

/-! ## A306739.P9214076225838430763

`A215703(A046092(n)%C(2^(n+1), n))`
-/

namespace A306739.P9214076225838430763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (Int.tmod (A046092 n) (Nat.choose (2 ^ (n + 1)) n : ℤ)).toNat

end

end A306739.P9214076225838430763

/-! ## A306739.P8502458995263186803

`A215703(A046092(n)%A101346(n+1))`
-/

namespace A306739.P8502458995263186803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (Int.tmod (A046092 n) (A101346 (n + 1))).toNat

end

end A306739.P8502458995263186803

/-! ## A306739.P6610786263215292529

`A215703(2*n*A242474(n+1))`
-/

namespace A306739.P6610786263215292529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (2 * ((n : ℤ) * A242474 (n + 1))).toNat

end

end A306739.P6610786263215292529

/-! ## A306739.P8133127444976053669

`A215703(A005843(n)*A242474(n+1))`
-/

namespace A306739.P8133127444976053669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A005843 n * A242474 (n + 1)).toNat

end

end A306739.P8133127444976053669

/-! ## A306739.P14225321777230942270

`A215703(A000005(A000079(n))*A005843(n))`
-/

namespace A306739.P14225321777230942270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000005 (A000079 n).toNat * A005843 n).toNat

end

end A306739.P14225321777230942270

/-!
# A306740: Numbers k such that A306607(k) = 0.

The programs for A306740, there is no canonical definition to state claims against.
-/

/-! ## A306740.P15796611449814068256

`eq[0, A306607(n)]`
-/

namespace A306740.P15796611449814068256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306607 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306740.P15796611449814068256

/-! ## A306740.P690371649764284566

`lt[A057427(n), acot(A306607(n))]`
-/

namespace A306740.P690371649764284566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A306607 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A306740.P690371649764284566

/-! ## A306740.P878097238172480763

`lt[lcm(A000034(n), A306607(n)), 1]`
-/

namespace A306740.P878097238172480763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A306607 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306740.P878097238172480763

/-! ## A306740.P4307388636937729706

`lt[abs(A306607(n)), A057427(n+1)]`
-/

namespace A306740.P4307388636937729706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A306607 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306740.P4307388636937729706

/-! ## A306740.P13320298397921228416

`lt[A306607(n)², A057427(n+3)]`
-/

namespace A306740.P13320298397921228416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306607 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306740.P13320298397921228416

/-! ## A306740.P17450141236618085873

`lt[A306607(n)², A000034(2*n)]`
-/

namespace A306740.P17450141236618085873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306607 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306740.P17450141236618085873

/-!
# A306741: Square array T(n,k), n > 0, k > 1, read by antidiagonals: T(n, k) = 1 when n <= 2 or k <= 2, T(n, k) = T(n-T(n-1, k-1), k-T(n-2, k-2)) + T(n-T(n-2, k-2), k-T(n-1, k-1)) otherwise.

The programs for A306741, there is no canonical definition to state claims against.
-/

/-! ## A306741.P8368363896601038004

`A069903(A008327(n)+1)`
-/

namespace A306741.P8368363896601038004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (A008327 n + 1).toNat

end

end A306741.P8368363896601038004

/-! ## A306741.P10814209004788371589

`A055642((A377060(n)+2)²)`
-/

namespace A306741.P10814209004788371589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((A377060 n + 2) ^ 2).toNat

end

end A306741.P10814209004788371589

/-! ## A306741.P12565425103757527769

`A321318(A331852(A377060(n)))`
-/

namespace A306741.P12565425103757527769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321318 (A331852 (A377060 n).toNat).toNat

end

end A306741.P12565425103757527769

/-! ## A306741.P8322629188199472692

`A055642(A180977(n+1)+A007318(n))`
-/

namespace A306741.P8322629188199472692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A180977 (n + 1) + A007318 n).toNat

end

end A306741.P8322629188199472692

/-! ## A306741.P14090087523436729457

`A055642(A180977(n+1)+A094683(2*(n+2)))`
-/

namespace A306741.P14090087523436729457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A180977 (n + 1) + A094683 (2 * (n + 2))).toNat

end

end A306741.P14090087523436729457

/-!
# A306742: Number of length-n binary words that can be written as the concatenation of two unbordered binary words.

The programs for A306742, there is no canonical definition to state claims against.
-/

/-! ## A306742.P9657091820414599223

`A027709(A003683(n))`
-/

namespace A306742.P9657091820414599223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A003683 n).toNat

end

end A306742.P9657091820414599223

/-! ## A306742.P16843183287030974510

`A027709(Δ[A084152(n)])`
-/

namespace A306742.P16843183287030974510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (f1 (n + 1) - f1 n).toNat

end

end A306742.P16843183287030974510

/-! ## A306742.P2292096212517449226

`2*A123578(A192382(n+1))`
-/

namespace A306742.P2292096212517449226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123578 (A192382 (n + 1)).toNat

end

end A306742.P2292096212517449226

/-! ## A306742.P16946296693182603979

`A027709(A192382(n+1)/2)`
-/

namespace A306742.P16946296693182603979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (SequenceMachineLib.roundAway ((A192382 (n + 1) : ℚ) / 2)).toNat

end

end A306742.P16946296693182603979

/-!
# A306743: Main diagonal of the array A306741.

The programs for A306743, there is no canonical definition to state claims against.
-/

/-! ## A306743.P376968816924521388

`A000010(A274462(n)+p?[A274450(n+1)])`
-/

namespace A306743.P376968816924521388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A274462 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A306743.P376968816924521388

/-! ## A306743.P9893204151281871421

`A051702(A099327(n)%A091809(n+4))`
-/

namespace A306743.P9893204151281871421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (Int.tmod (A099327 n) (A091809 (n + 4))).toNat

end

end A306743.P9893204151281871421

/-! ## A306743.P17289032742480468648

`A000010(A095689(n+1)%A068599(n+1))`
-/

namespace A306743.P17289032742480468648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A095689 (n + 1)) (A068599 (n + 1))).toNat

end

end A306743.P17289032742480468648

/-! ## A306743.P17407031175875167465

`A000010(A095689(n+1))%A348927(n+1)`
-/

namespace A306743.P17407031175875167465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A095689 (n + 1)).toNat) (A348927 (n + 1))

end

end A306743.P17407031175875167465

/-! ## A306743.P5847681072724318482

`A000010(A077168(2*n+1)-A222253(n+1))`
-/

namespace A306743.P5847681072724318482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A077168 (2 * n + 1) - A222253 (n + 1)).toNat

end

end A306743.P5847681072724318482

/-!
# A306745: Even bisection of A318256.

The programs for A306745, there is no canonical definition to state claims against.
-/

/-! ## A306745.P7473590420351075067

`A144845(2*n)/A007947(2*n+1)`
-/

namespace A306745.P7473590420351075067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (2 * n) : ℚ) / (A007947 (2 * n + 1) : ℚ)

end

end A306745.P7473590420351075067

/-! ## A306745.P3828980789183298675

`A195441(2*n)/A324369(2*n+1)`
-/

namespace A306745.P3828980789183298675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195441 (2 * n) : ℚ) / (A324369 (2 * n + 1) : ℚ)

end

end A306745.P3828980789183298675

/-! ## A306745.P505181867760156312

`A286515(2*n+1)/A324369(2*n+1)`
-/

namespace A306745.P505181867760156312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286515 (2 * n + 1) : ℚ) / (A324369 (2 * n + 1) : ℚ)

end

end A306745.P505181867760156312

/-! ## A306745.P1584403338483349278

`A144845(2*n)/A015053(A015053(2*n+1))`
-/

namespace A306745.P1584403338483349278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (2 * n) : ℚ) / (A015053 (A015053 (2 * n + 1)).toNat : ℚ)

end

end A306745.P1584403338483349278

/-! ## A306745.P15610456869520484316

`A144845(2*n)/A019555(A019555(2*n+1))`
-/

namespace A306745.P15610456869520484316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (2 * n) : ℚ) / (A019555 (A019555 (2 * n + 1)).toNat : ℚ)

end

end A306745.P15610456869520484316

/-! ## A306745.P268935368850973436

`A027642(2*n)/A007947(2*n+1)*A286515(2*n)`
-/

namespace A306745.P268935368850973436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A007947 (2 * n + 1) : ℚ) * (A286515 (2 * n) : ℚ)

end

end A306745.P268935368850973436

/-! ## A306745.P1076432469616897515

`A324371(2*n+1)/A007947(2*n+1)*A195441(2*n)`
-/

namespace A306745.P1076432469616897515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324371 (2 * n + 1) : ℚ) / (A007947 (2 * n + 1) : ℚ) * (A195441 (2 * n) : ℚ)

end

end A306745.P1076432469616897515

/-! ## A306745.P11469919040365409517

`A144845(2*n)/(A324369(2*n+1)*A324371(2*n+1))`
-/

namespace A306745.P11469919040365409517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (2 * n) : ℚ) / (A324369 (2 * n + 1) * A324371 (2 * n + 1) : ℚ)

end

end A306745.P11469919040365409517

/-! ## A306745.P15772976526578091285

`A286515(2*n+1)/gcd(A000265(2*n+1), A286515(2*n+1))`
-/

namespace A306745.P15772976526578091285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286515 (2 * n + 1) : ℚ) / (Int.gcd (A000265 (2 * n + 1)) (A286515 (2 * n + 1)) : ℚ)

end

end A306745.P15772976526578091285

/-! ## A306745.P6621398093845277344

`A318256(2*n)`
-/

namespace A306745.P6621398093845277344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318256 (2 * n)

end

end A306745.P6621398093845277344

/-! ## A306745.P8053796817354649419

`xor(1, xor(1, A318256(n+n)))`
-/

namespace A306745.P8053796817354649419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A318256 (n + n)))

end

end A306745.P8053796817354649419

/-! ## A306745.P6450548643396759232

`gcd(A064538(2*n), A066838(2*n+1))`
-/

namespace A306745.P6450548643396759232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064538 (2 * n)) (A066838 (2 * n + 1))

end

end A306745.P6450548643396759232

/-!
# A306746: A Goldbug number is an even number 2m for which there exists a subset of the prime non-divisors of 2m, P={p1, p2, p3, ..., pk}, such that each prime factor of (2m-p1)*(2m-p2)*(2m-p3)*...*(2m-pk) is in P and max(P) is strictly between m/2 and m.

The programs for A306746, there is no canonical definition to state claims against.
-/

/-! ## A306746.P29853915391669425

`A327772(comp[5*n])`
-/

namespace A306746.P29853915391669425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327772 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A306746.P29853915391669425

/-!
# A306751: Numbers k such that 9*10^(2*k) + 3*10^k + 1 is prime.

The programs for A306751, there is no canonical definition to state claims against.
-/

/-! ## A306751.P15910482936108013532

`∩[A098651(n+1), ∑[n]]-1`
-/

namespace A306751.P15910482936108013532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098651 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℤ) - 1

end

end A306751.P15910482936108013532

/-!
# A306752: a(n) = Sum_{k=0..n} binomial(k, 8*(n-k)).

The programs for A306752, the canonical program `A306752.P4314131934780814374` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306752 has offset 0).

The definition of A306752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#, 8*(n-#))]` (program `A306752.P4314131934780814374`, by `A306752.P4314131934780814374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306752.P15877373641399873806

`A017867(8*n)`
-/

namespace A306752.P15877373641399873806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (8 * n)

end

end A306752.P15877373641399873806

namespace A306752

/-- `A017867(8*n)` -/
def P15877373641399873806.Spec : Prop :=
  ∀ n, P15877373641399873806.a n = A306752 n

end A306752

/-! ## A306752.P10672742562130771260

`ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8-x^9))`
-/

namespace A306752.P10672742562130771260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, 21, -35, 35, -21, 7, -1] [1, -8, 28, -56, 70, -56, 28, -8, 1, -1] n

end

end A306752.P10672742562130771260

namespace A306752

/-- `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8-x^9))` -/
def P10672742562130771260.Spec : Prop :=
  ∀ n, P10672742562130771260.a n = A306752 n

end A306752

/-! ## A306752.P4314131934780814374

`∑{#}[n, C(#, 8*(n-#))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306752

/-- `∑{#}[n, C(#, 8*(n-#))]` -/
def P4314131934780814374.Spec : Prop :=
  ∀ n, (P4314131934780814374.a n : ℤ) = A306752 n

theorem P4314131934780814374.correct : P4314131934780814374.Spec := by
  intro n
  simp only [A306752]

end A306752

/-! ## A306752.P11336033719422209113

`A390220(2*n)`
-/

namespace A306752.P11336033719422209113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390220 (2 * n)

end

end A306752.P11336033719422209113

namespace A306752

/-- `A390220(2*n)` -/
def P11336033719422209113.Spec : Prop :=
  ∀ n, P11336033719422209113.a n = A306752 n

end A306752

/-! ## A306752.P9312815913775256950

`A127843(8*n+10)`
-/

namespace A306752.P9312815913775256950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (8 * n + 10)

end

end A306752.P9312815913775256950

namespace A306752

/-- `A127843(8*n+10)` -/
def P9312815913775256950.Spec : Prop :=
  ∀ n, P9312815913775256950.a n = A306752 n

end A306752

/-! ## A306752.P10516056275773641073

`Δ[A017867(A017077(n))]`
-/

namespace A306752.P10516056275773641073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (A017077 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306752.P10516056275773641073

namespace A306752

/-- `Δ[A017867(A017077(n))]` -/
def P10516056275773641073.Spec : Prop :=
  ∀ n, P10516056275773641073.a n = A306752 n

end A306752

/-! ## A306752.P7284187353982148235

`A017867(A008590(n))%Δ[A276041(n)]`
-/

namespace A306752.P7284187353982148235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017867 (A008590 n).toNat) (f1 (n + 1) - f1 n)

end

end A306752.P7284187353982148235

namespace A306752

/-- `A017867(A008590(n))%Δ[A276041(n)]` -/
def P7284187353982148235.Spec : Prop :=
  ∀ n, P7284187353982148235.a n = A306752 n

end A306752

/-! ## A306752.P11882620654138920557

`A017867(A008590(n))%A041090(n)`
-/

namespace A306752.P11882620654138920557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017867 (A008590 n).toNat) (A041090 n)

end

end A306752.P11882620654138920557

namespace A306752

/-- `A017867(A008590(n))%A041090(n)` -/
def P11882620654138920557.Spec : Prop :=
  ∀ n, P11882620654138920557.a n = A306752 n

end A306752

/-! ## A306752.P3948231684639421571

`A017867(A008590(n))+A061720(n+1)%4`
-/

namespace A306752.P3948231684639421571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (A008590 n).toNat + Int.tmod (A061720 (n + 1)) 4

end

end A306752.P3948231684639421571

namespace A306752

/-- `A017867(A008590(n))+A061720(n+1)%4` -/
def P3948231684639421571.Spec : Prop :=
  ∀ n, P3948231684639421571.a n = A306752 n

end A306752

/-!
# A306753: a(n) = Sum_{k=0..n} binomial(k, 9*(n-k)).

The programs for A306753, the canonical program `A306753.P15062724601457286552` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306753 has offset 0).

The definition of A306753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#, 9*(n-#))]` (program `A306753.P15062724601457286552`, by `A306753.P15062724601457286552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306753.P8827207824995559459

`A017877(9*n)`
-/

namespace A306753.P8827207824995559459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (9 * n)

end

end A306753.P8827207824995559459

namespace A306753

/-- `A017877(9*n)` -/
def P8827207824995559459.Spec : Prop :=
  ∀ n, P8827207824995559459.a n = A306753 n

end A306753

/-! ## A306753.P15062724601457286552

`∑{#}[n, C(#, 9*(n-#))]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306753

/-- `∑{#}[n, C(#, 9*(n-#))]` -/
def P15062724601457286552.Spec : Prop :=
  ∀ n, (P15062724601457286552.a n : ℤ) = A306753 n

theorem P15062724601457286552.correct : P15062724601457286552.Spec := by
  intro n
  simp only [A306753]

end A306753

/-! ## A306753.P8503320939873789900

`A392273(3*n)`
-/

namespace A306753.P8503320939873789900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392273 (3 * n)

end

end A306753.P8503320939873789900

namespace A306753

/-- `A392273(3*n)` -/
def P8503320939873789900.Spec : Prop :=
  ∀ n, P8503320939873789900.a n = A306753 n

end A306753

/-! ## A306753.P8515026494187172133

`A127844(9*n+11)`
-/

namespace A306753.P8515026494187172133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (9 * n + 11)

end

end A306753.P8515026494187172133

namespace A306753

/-- `A127844(9*n+11)` -/
def P8515026494187172133.Spec : Prop :=
  ∀ n, P8515026494187172133.a n = A306753 n

end A306753

/-! ## A306753.P9765366576815003583

`Δ[A017877(Δ[A051682(n)])]`
-/

namespace A306753.P9765366576815003583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306753.P9765366576815003583

namespace A306753

/-- `Δ[A017877(Δ[A051682(n)])]` -/
def P9765366576815003583.Spec : Prop :=
  ∀ n, P9765366576815003583.a n = A306753 n

end A306753

/-! ## A306753.P18047753074554238445

`A306680(A000217(n+10)-10)`
-/

namespace A306753.P18047753074554238445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 (A000217 (n + 10) - 10).toNat

end

end A306753.P18047753074554238445

namespace A306753

/-- `A306680(A000217(n+10)-10)` -/
def P18047753074554238445.Spec : Prop :=
  ∀ n, P18047753074554238445.a n = A306753 n

end A306753

/-!
# A306755: a(n) = a(n-6) + a(n-7) with a(0)=7, a(1)=...=a(5)=0, a(6)=6.

The programs for A306755, the canonical program `A306755.P9260145746377279125` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306755 has offset 0).

The definition of A306755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-6)+a(n-7)` (program `A306755.P9260145746377279125`, by `A306755.P9260145746377279125.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306755.P9260145746377279125

`a(n-6)+a(n-7)` with `a(0)=7, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=6`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306755

/-- `a(n-6)+a(n-7)` -/
def P9260145746377279125.Spec : Prop :=
  ∀ n, (P9260145746377279125.a n : ℤ) = A306755 n

theorem P9260145746377279125.correct : P9260145746377279125.Spec := by
  intro n
  simp only [A306755]

end A306755

/-! ## A306755.P17901571527680040281

`ogf((7-x^6)/(1-x^6-x^7))`
-/

namespace A306755.P17901571527680040281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 0, 0, 0, 0, 0, -1] [1, 0, 0, 0, 0, 0, -1, -1] n

end

end A306755.P17901571527680040281

namespace A306755

/-- `ogf((7-x^6)/(1-x^6-x^7))` -/
def P17901571527680040281.Spec : Prop :=
  ∀ n, P17901571527680040281.a n = A306755 n

end A306755

/-! ## A306755.P14082492298927650740

`A127841(n+1)+6*A017847(n)`
-/

namespace A306755.P14082492298927650740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 1) + 6 * A017847 n

end

end A306755.P14082492298927650740

namespace A306755

/-- `A127841(n+1)+6*A017847(n)` -/
def P14082492298927650740.Spec : Prop :=
  ∀ n, P14082492298927650740.a n = A306755 n

end A306755

/-! ## A306755.P12348690603089026898

`A306646((n+4)²-∑[n+1])`
-/

namespace A306755.P12348690603089026898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306755.P12348690603089026898

namespace A306755

/-- `A306646((n+4)²-∑[n+1])` -/
def P12348690603089026898.Spec : Prop :=
  ∀ n, P12348690603089026898.a n = A306755 n

end A306755

/-! ## A306755.P17220815062084171820

`A127841(n+1)+A008588(A017847(n))`
-/

namespace A306755.P17220815062084171820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 1) + A008588 (A017847 n).toNat

end

end A306755.P17220815062084171820

namespace A306755

/-- `A127841(n+1)+A008588(A017847(n))` -/
def P17220815062084171820.Spec : Prop :=
  ∀ n, P17220815062084171820.a n = A306755 n

end A306755

/-! ## A306755.P4228734316683202300

`A127841(n+1)+A008588(A127841(n+8))`
-/

namespace A306755.P4228734316683202300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 1) + A008588 (A127841 (n + 8)).toNat

end

end A306755.P4228734316683202300

namespace A306755

/-- `A127841(n+1)+A008588(A127841(n+8))` -/
def P4228734316683202300.Spec : Prop :=
  ∀ n, P4228734316683202300.a n = A306755 n

end A306755

/-!
# A306756: a(n) = a(n-7) + a(n-8) with a(0)=8, a(1)=...=a(6)=0, a(7)=7.

The programs for A306756, the canonical program `A306756.P4388618961904135462` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306756 has offset 0).

The definition of A306756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-7)+a(n-8)` (program `A306756.P4388618961904135462`, by `A306756.P4388618961904135462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306756.P4388618961904135462

`a(n-7)+a(n-8)` with `a(0)=8, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=7`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306756

/-- `a(n-7)+a(n-8)` -/
def P4388618961904135462.Spec : Prop :=
  ∀ n, (P4388618961904135462.a n : ℤ) = A306756 n

theorem P4388618961904135462.correct : P4388618961904135462.Spec := by
  intro n
  simp only [A306756]

end A306756

/-! ## A306756.P14274837313645494314

`ogf((8-x^7)/(1-x^7-x^8))`
-/

namespace A306756.P14274837313645494314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 0, 0, 0, 0, 0, 0, -1] [1, 0, 0, 0, 0, 0, 0, -1, -1] n

end

end A306756.P14274837313645494314

namespace A306756

/-- `ogf((8-x^7)/(1-x^7-x^8))` -/
def P14274837313645494314.Spec : Prop :=
  ∀ n, P14274837313645494314.a n = A306756 n

end A306756

/-! ## A306756.P6545970295671487461

`A127842(n+1)+7*A017857(n)`
-/

namespace A306756.P6545970295671487461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (n + 1) + 7 * A017857 n

end

end A306756.P6545970295671487461

namespace A306756

/-- `A127842(n+1)+7*A017857(n)` -/
def P6545970295671487461.Spec : Prop :=
  ∀ n, P6545970295671487461.a n = A306756 n

end A306756

/-! ## A306756.P13414305575635232553

`A127842(n+1)+7*Δ[A103375(n+8)]`
-/

namespace A306756.P13414305575635232553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (n + 1) + 7 * (f1 (n + 1) - f1 n)

end

end A306756.P13414305575635232553

namespace A306756

/-- `A127842(n+1)+7*Δ[A103375(n+8)]` -/
def P13414305575635232553.Spec : Prop :=
  ∀ n, P13414305575635232553.a n = A306756 n

end A306756

/-! ## A306756.P16788370915094991852

`A306646(A055999(n+4)-1)`
-/

namespace A306756.P16788370915094991852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A055999 (n + 4) - 1).toNat

end

end A306756.P16788370915094991852

namespace A306756

/-- `A306646(A055999(n+4)-1)` -/
def P16788370915094991852.Spec : Prop :=
  ∀ n, P16788370915094991852.a n = A306756 n

end A306756

/-! ## A306756.P5317593251657948423

`A306646(A052905(n+4)-2)`
-/

namespace A306756.P5317593251657948423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A052905 (n + 4) - 2).toNat

end

end A306756.P5317593251657948423

namespace A306756

/-- `A306646(A052905(n+4)-2)` -/
def P5317593251657948423.Spec : Prop :=
  ∀ n, P5317593251657948423.a n = A306756 n

end A306756

/-! ## A306756.P3050708759887502946

`A306646(A027379(n+5)-4)`
-/

namespace A306756.P3050708759887502946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A027379 (n + 5) - 4).toNat

end

end A306756.P3050708759887502946

namespace A306756

/-- `A306646(A027379(n+5)-4)` -/
def P3050708759887502946.Spec : Prop :=
  ∀ n, P3050708759887502946.a n = A306756 n

end A306756

/-! ## A306756.P14981281510398091660

`A306646(A000217(n+7)-7)`
-/

namespace A306756.P14981281510398091660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A000217 (n + 7) - 7).toNat

end

end A306756.P14981281510398091660

namespace A306756

/-- `A306646(A000217(n+7)-7)` -/
def P14981281510398091660.Spec : Prop :=
  ∀ n, P14981281510398091660.a n = A306756 n

end A306756

/-! ## A306756.P56448519417479271

`A306646(A055998(n+4)-A001489(n+3))`
-/

namespace A306756.P56448519417479271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A055998 (n + 4) - A001489 (n + 3)).toNat

end

end A306756.P56448519417479271

namespace A306756

/-- `A306646(A055998(n+4)-A001489(n+3))` -/
def P56448519417479271.Spec : Prop :=
  ∀ n, P56448519417479271.a n = A306756 n

end A306756

/-! ## A306756.P8257935758791773882

`A306646(A046691(n+4)-A001489(n+4))`
-/

namespace A306756.P8257935758791773882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A046691 (n + 4) - A001489 (n + 4)).toNat

end

end A306756.P8257935758791773882

namespace A306756

/-- `A306646(A046691(n+4)-A001489(n+4))` -/
def P8257935758791773882.Spec : Prop :=
  ∀ n, P8257935758791773882.a n = A306756 n

end A306756

/-! ## A306756.P5446263525173133753

`A306646(A167614(n+9)-A016777(n+12))`
-/

namespace A306756.P5446263525173133753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A167614 (n + 9) - A016777 (n + 12)).toNat

end

end A306756.P5446263525173133753

namespace A306756

/-- `A306646(A167614(n+9)-A016777(n+12))` -/
def P5446263525173133753.Spec : Prop :=
  ∀ n, P5446263525173133753.a n = A306756 n

end A306756

/-!
# A306757: a(n) = a(n-8) + a(n-9) with a(0)=9, a(1)=...=a(7)=0, a(8)=8.

The programs for A306757, the canonical program `A306757.P13413513583535420455` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306757 has offset 0).

The definition of A306757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-8)+a(n-9)` (program `A306757.P13413513583535420455`, by `A306757.P13413513583535420455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306757.P13413513583535420455

`a(n-8)+a(n-9)` with `a(0)=9, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=8`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306757

/-- `a(n-8)+a(n-9)` -/
def P13413513583535420455.Spec : Prop :=
  ∀ n, (P13413513583535420455.a n : ℤ) = A306757 n

theorem P13413513583535420455.correct : P13413513583535420455.Spec := by
  intro n
  simp only [A306757]

end A306757

/-! ## A306757.P15891614521173751265

`ogf((9-x^8)/(1-x^8-x^9))`
-/

namespace A306757.P15891614521173751265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 0, 0, 0, 0, 0, 0, 0, -1] [1, 0, 0, 0, 0, 0, 0, 0, -1, -1] n

end

end A306757.P15891614521173751265

namespace A306757

/-- `ogf((9-x^8)/(1-x^8-x^9))` -/
def P15891614521173751265.Spec : Prop :=
  ∀ n, P15891614521173751265.a n = A306757 n

end A306757

/-! ## A306757.P14212490313192004879

`A127843(n+1)+8*A017867(n)`
-/

namespace A306757.P14212490313192004879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 1) + 8 * A017867 n

end

end A306757.P14212490313192004879

namespace A306757

/-- `A127843(n+1)+8*A017867(n)` -/
def P14212490313192004879.Spec : Prop :=
  ∀ n, P14212490313192004879.a n = A306757 n

end A306757

/-! ## A306757.P17073223084062001979

`A127843(n+1)+8*A127843(n+10)`
-/

namespace A306757.P17073223084062001979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 1) + 8 * A127843 (n + 10)

end

end A306757.P17073223084062001979

namespace A306757

/-- `A127843(n+1)+8*A127843(n+10)` -/
def P17073223084062001979.Spec : Prop :=
  ∀ n, P17073223084062001979.a n = A306757 n

end A306757

/-! ## A306757.P13894318146363524703

`A127843(n+1)+A008590(A017867(n))`
-/

namespace A306757.P13894318146363524703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 1) + A008590 (A017867 n).toNat

end

end A306757.P13894318146363524703

namespace A306757

/-- `A127843(n+1)+A008590(A017867(n))` -/
def P13894318146363524703.Spec : Prop :=
  ∀ n, P13894318146363524703.a n = A306757 n

end A306757

/-! ## A306757.P6853291750105035139

`A127843(n+1)+A008590(A127843(n+10))`
-/

namespace A306757.P6853291750105035139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (n + 1) + A008590 (A127843 (n + 10)).toNat

end

end A306757.P6853291750105035139

namespace A306757

/-- `A127843(n+1)+A008590(A127843(n+10))` -/
def P6853291750105035139.Spec : Prop :=
  ∀ n, P6853291750105035139.a n = A306757 n

end A306757

/-! ## A306757.P7507658565401884695

`A306646(A055999(n+5)-2)`
-/

namespace A306757.P7507658565401884695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A055999 (n + 5) - 2).toNat

end

end A306757.P7507658565401884695

namespace A306757

/-- `A306646(A055999(n+5)-2)` -/
def P7507658565401884695.Spec : Prop :=
  ∀ n, P7507658565401884695.a n = A306757 n

end A306757

/-! ## A306757.P10348985732267264942

`A306646(A052905(n+5)-3)`
-/

namespace A306757.P10348985732267264942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A052905 (n + 5) - 3).toNat

end

end A306757.P10348985732267264942

namespace A306757

/-- `A306646(A052905(n+5)-3)` -/
def P10348985732267264942.Spec : Prop :=
  ∀ n, P10348985732267264942.a n = A306757 n

end A306757

/-! ## A306757.P4097476820826040455

`A306646(A027379(n+5)+n+3)`
-/

namespace A306757.P4097476820826040455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A027379 (n + 5) + (n + 3 : ℤ)).toNat

end

end A306757.P4097476820826040455

namespace A306757

/-- `A306646(A027379(n+5)+n+3)` -/
def P4097476820826040455.Spec : Prop :=
  ∀ n, P4097476820826040455.a n = A306757 n

end A306757

/-! ## A306757.P16769516655340804587

`A306646(A046691(n+5)-A001489(n+4))`
-/

namespace A306757.P16769516655340804587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A046691 (n + 5) - A001489 (n + 4)).toNat

end

end A306757.P16769516655340804587

namespace A306757

/-- `A306646(A046691(n+5)-A001489(n+4))` -/
def P16769516655340804587.Spec : Prop :=
  ∀ n, P16769516655340804587.a n = A306757 n

end A306757

/-!
# A306758: a(n) = a(n-9) + a(n-10) with a(0)=10, a(1)=...=a(8)=0, a(9)=9.

The programs for A306758, the canonical program `A306758.P2747036999462109549` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306758 has offset 0).

The definition of A306758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-9)+a(n-10)` (program `A306758.P2747036999462109549`, by `A306758.P2747036999462109549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306758.P2747036999462109549

`a(n-9)+a(n-10)` with `a(0)=10, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=9`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306758

/-- `a(n-9)+a(n-10)` -/
def P2747036999462109549.Spec : Prop :=
  ∀ n, (P2747036999462109549.a n : ℤ) = A306758 n

theorem P2747036999462109549.correct : P2747036999462109549.Spec := by
  intro n
  simp only [A306758]

end A306758

/-! ## A306758.P16502092301331980162

`ogf((10-x^9)/(1-x^9-x^10))`
-/

namespace A306758.P16502092301331980162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 0, 0, 0, 0, 0, 0, 0, 0, -1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1] n

end

end A306758.P16502092301331980162

namespace A306758

/-- `ogf((10-x^9)/(1-x^9-x^10))` -/
def P16502092301331980162.Spec : Prop :=
  ∀ n, P16502092301331980162.a n = A306758 n

end A306758

/-! ## A306758.P2517155034229840745

`A127844(n+1)+9*A017877(n)`
-/

namespace A306758.P2517155034229840745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (n + 1) + 9 * A017877 n

end

end A306758.P2517155034229840745

namespace A306758

/-- `A127844(n+1)+9*A017877(n)` -/
def P2517155034229840745.Spec : Prop :=
  ∀ n, P2517155034229840745.a n = A306758 n

end A306758

/-! ## A306758.P17855072941770876865

`A306646(A055999(n+6)-3)`
-/

namespace A306758.P17855072941770876865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A055999 (n + 6) - 3).toNat

end

end A306758.P17855072941770876865

namespace A306758

/-- `A306646(A055999(n+6)-3)` -/
def P17855072941770876865.Spec : Prop :=
  ∀ n, P17855072941770876865.a n = A306758 n

end A306758

/-! ## A306758.P10736975463249382339

`A306646(A000217(n+9)-9)`
-/

namespace A306758.P10736975463249382339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A000217 (n + 9) - 9).toNat

end

end A306758.P10736975463249382339

namespace A306758

/-- `A306646(A000217(n+9)-9)` -/
def P10736975463249382339.Spec : Prop :=
  ∀ n, P10736975463249382339.a n = A306758 n

end A306758

/-! ## A306758.P3534666351809934772

`A306646(A000096(n+7)+n+1)`
-/

namespace A306758.P3534666351809934772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A306758.P3534666351809934772

namespace A306758

/-- `A306646(A000096(n+7)+n+1)` -/
def P3534666351809934772.Spec : Prop :=
  ∀ n, P3534666351809934772.a n = A306758 n

end A306758

/-! ## A306758.P6134912583555380240

`A306646(A223134(n+5)+A055998(n+5))`
-/

namespace A306758.P6134912583555380240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A223134 (n + 5) + A055998 (n + 5)).toNat

end

end A306758.P6134912583555380240

namespace A306758

/-- `A306646(A223134(n+5)+A055998(n+5))` -/
def P6134912583555380240.Spec : Prop :=
  ∀ n, P6134912583555380240.a n = A306758 n

end A306758

/-!
# A306764: a(n) is a sequence of period 12: repeat [1, 1, 6, 2, 1, 3, 2, 2, 3, 1, 2, 6].

The programs for A306764, the canonical program `A306764.P4285760110033934414` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306764 has offset 0).

The definition of A306764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306764.P4285760110033934414

`ogf((1+x+6x^2+x^3-3x^5+x^6+2x^7+6x^8)/(1-x^3+x^6-x^9))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306764

/-- `ogf((1+x+6x^2+x^3-3x^5+x^6+2x^7+6x^8)/(1-x^3+x^6-x^9))` -/
def P4285760110033934414.Spec : Prop :=
  ∀ n, P4285760110033934414.a n = A306764 n

theorem P4285760110033934414.correct : P4285760110033934414.Spec := by
  intro n
  simp only [A306764]

end A306764

/-!
# A306767: Least x > 0 such that (x^2-1)/(y^2-1) = n, where y=A130280(n), or 0 if no such x exists.

The programs for A306767, there is no canonical definition to state claims against.
-/

/-! ## A306767.P627244924522121725

`ceil(sqrt((n+1)*A084702(n+1)))`
-/

namespace A306767.P627244924522121725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℤ) * A084702 (n + 1) : ℝ)⌉

end

end A306767.P627244924522121725

/-! ## A306767.P9899417353690552183

`round(sqrt((n+1)*A084702(-xor(n, -1))))`
-/

namespace A306767.P9899417353690552183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * A084702 (-Int.xor (n : ℤ) (-1)).toNat : ℝ))

end

end A306767.P9899417353690552183

/-! ## A306767.P152439884305463660

`round(sqrt(A008619(2*n)*A084702(n+1)))`
-/

namespace A306767.P152439884305463660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008619 (2 * n) * A084702 (n + 1) : ℝ))

end

end A306767.P152439884305463660

/-! ## A306767.P14882074976960949166

`A000194((n+1)*A084702(n+1))`
-/

namespace A306767.P14882074976960949166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1 : ℤ) * A084702 (n + 1)).toNat

end

end A306767.P14882074976960949166

/-! ## A306767.P16744012564770238819

`A086520((n+1)*A084702(n+1))`
-/

namespace A306767.P16744012564770238819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 ((n + 1 : ℤ) * A084702 (n + 1)).toNat

end

end A306767.P16744012564770238819

/-!
# A306771: Numbers m such that m = i + j = i * k and phi(m) = phi(i) + phi(j) = phi(i) * phi(k) for some i, j, k, where phi is the Euler totient function A000010.

The programs for A306771, the canonical program `A306771.P35156319757117047` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306771 has offset 1).

The definition of A306771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306771.P9551495564402134125

`ogf((3+12x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A306771.P9551495564402134125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 12, 3] [1, -1, -1, 1] n

end

end A306771.P9551495564402134125

namespace A306771

/-- `ogf((3+12x+3x^2)/(1-x-x^2+x^3))` -/
def P9551495564402134125.Spec : Prop :=
  ∀ n, P9551495564402134125.a n = A306771 (n + 1)

end A306771

/-! ## A306771.P35156319757117047

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=15, a(2)=21`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306771

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P35156319757117047.Spec : Prop :=
  ∀ n, P35156319757117047.a n = A306771 (n + 1)

theorem P35156319757117047.correct : P35156319757117047.Spec := by
  intro n
  simp only [A306771, Nat.add_sub_cancel]

end A306771

/-! ## A306771.P5360021731934387289

`3*(3*(2*(n+1)-1)+(-1)^(n+1))/2`
-/

namespace A306771.P5360021731934387289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (3 * ((2 * (n + 1) : ℤ) - 1) + (-1) ^ (n + 1)) : ℚ) / 2

end

end A306771.P5360021731934387289

namespace A306771

/-- `3*(3*(2*(n+1)-1)+(-1)^(n+1))/2` -/
def P5360021731934387289.Spec : Prop :=
  ∀ n, P5360021731934387289.a n = (A306771 (n + 1) : ℚ)

theorem P5360021731934387289.correct : P5360021731934387289.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A306771, Nat.add_sub_cancel, A306771.P5360021731934387289.a, A306771.P35156319757117047.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A306771, Nat.add_sub_cancel, A306771.P5360021731934387289.a, A306771.P35156319757117047.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A306771

/-! ## A306771.P384610216815642595

`record[lcm(3, or(1, n))]`
-/

namespace A306771.P384610216815642595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306771.P384610216815642595

namespace A306771

/-- `record[lcm(3, or(1, n))]` -/
def P384610216815642595.Spec : Prop :=
  ∀ n, (P384610216815642595.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P1207366359682013841

`a(n-2)+18` with `a(0)=3, a(1)=15`
-/

namespace A306771.P1207366359682013841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 15] fun n a =>
  a (n - 2) + 18

end

end A306771.P1207366359682013841

namespace A306771

/-- `a(n-2)+18` -/
def P1207366359682013841.Spec : Prop :=
  ∀ n, (P1207366359682013841.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P15631998168735181613

`3*or(1, 3*n+1)`
-/

namespace A306771.P15631998168735181613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 1 (3 * n + 1)

end

end A306771.P15631998168735181613

namespace A306771

/-- `3*or(1, 3*n+1)` -/
def P15631998168735181613.Spec : Prop :=
  ∀ n, (P15631998168735181613.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P16140142757552968365

`∑[18-a(n-1)]` with `a(0)=3, a(1)=12`
-/

namespace A306771.P16140142757552968365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 12] fun n f1 =>
  18 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306771.P16140142757552968365

namespace A306771

/-- `∑[18-a(n-1)]` -/
def P16140142757552968365.Spec : Prop :=
  ∀ n, P16140142757552968365.a n = A306771 (n + 1)

end A306771

/-! ## A306771.P13305082187152100821

`18*n-a(n-1)` with `a(0)=3`
-/

namespace A306771.P13305082187152100821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (18 * n : ℤ) - a (n - 1)

end

end A306771.P13305082187152100821

namespace A306771

/-- `18*n-a(n-1)` -/
def P13305082187152100821.Spec : Prop :=
  ∀ n, P13305082187152100821.a n = A306771 (n + 1)

end A306771

/-! ## A306771.P11268085780990870966

`filter[2*n+1, val(#, 3)]`
-/

namespace A306771.P11268085780990870966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j) 3 = 1) n)

end

end A306771.P11268085780990870966

namespace A306771

/-- `filter[2*n+1, val(#, 3)]` -/
def P11268085780990870966.Spec : Prop :=
  ∀ n, (P11268085780990870966.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P9732296306497125625

`∑[6*gcd(2, n+1)]-3`
-/

namespace A306771.P9732296306497125625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A306771.P9732296306497125625

namespace A306771

/-- `∑[6*gcd(2, n+1)]-3` -/
def P9732296306497125625.Spec : Prop :=
  ∀ n, P9732296306497125625.a n = A306771 (n + 1)

end A306771

/-! ## A306771.P17080813170563540796

`record[lcm(2*n+1, 6/2)]`
-/

namespace A306771.P17080813170563540796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway ((6 : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306771.P17080813170563540796

namespace A306771

/-- `record[lcm(2*n+1, 6/2)]` -/
def P17080813170563540796.Spec : Prop :=
  ∀ n, (P17080813170563540796.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P14591473344280564932

`record[sqrt(lcm(9, (2*n+1)²))]`
-/

namespace A306771.P14591473344280564932
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 9 ((2 * n + 1) ^ 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306771.P14591473344280564932

namespace A306771

/-- `record[sqrt(lcm(9, (2*n+1)²))]` -/
def P14591473344280564932.Spec : Prop :=
  ∀ n, P14591473344280564932.a n = (A306771 (n + 1) : ℝ)

end A306771

/-! ## A306771.P11678321272300937778

`filter[n+1+n, val(#, 3)²]`
-/

namespace A306771.P11678321272300937778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.valuation (f1 j) 3 ^ 2 = 1) n)

end

end A306771.P11678321272300937778

namespace A306771

/-- `filter[n+1+n, val(#, 3)²]` -/
def P11678321272300937778.Spec : Prop :=
  ∀ n, (P11678321272300937778.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P18233198797488024568

`3*(n%2+3*n+1)`
-/

namespace A306771.P18233198797488024568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2 + 3 * n + 1)

end

end A306771.P18233198797488024568

namespace A306771

/-- `3*(n%2+3*n+1)` -/
def P18233198797488024568.Spec : Prop :=
  ∀ n, (P18233198797488024568.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P10349053598945483610

`3*filter[2*n+1, gcd(3, #)]`
-/

namespace A306771.P10349053598945483610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => Nat.gcd 3 (f1 j) = 1) n)

end

end A306771.P10349053598945483610

namespace A306771

/-- `3*filter[2*n+1, gcd(3, #)]` -/
def P10349053598945483610.Spec : Prop :=
  ∀ n, (P10349053598945483610.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P10111786531261552604

`3*(∑[and(3, 2*n+1)]+n)`
-/

namespace A306771.P10111786531261552604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A306771.P10111786531261552604

namespace A306771

/-- `3*(∑[and(3, 2*n+1)]+n)` -/
def P10111786531261552604.Spec : Prop :=
  ∀ n, (P10111786531261552604.a n : ℤ) = A306771 (n + 1)

end A306771

/-! ## A306771.P12197155187021217110

`3*(record[and(n+1, n-1)]+n)`
-/

namespace A306771.P12197155187021217110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A306771.P12197155187021217110

namespace A306771

/-- `3*(record[and(n+1, n-1)]+n)` -/
def P12197155187021217110.Spec : Prop :=
  ∀ n, P12197155187021217110.a n = A306771 (n + 1)

end A306771

/-! ## A306771.P11990581838160247251

`3*(and(n+1, -2)+2*n+1)`
-/

namespace A306771.P11990581838160247251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (Int.land (n + 1 : ℤ) (-2) + (2 * n + 1 : ℤ))

end

end A306771.P11990581838160247251

namespace A306771

/-- `3*(and(n+1, -2)+2*n+1)` -/
def P11990581838160247251.Spec : Prop :=
  ∀ n, P11990581838160247251.a n = A306771 (n + 1)

end A306771

/-! ## A306771.P9411757795284526845

`record[(2*n+1)*(4-gcd(n+2, n-1))]`
-/

namespace A306771.P9411757795284526845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (4 - (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306771.P9411757795284526845

namespace A306771

/-- `record[(2*n+1)*(4-gcd(n+2, n-1))]` -/
def P9411757795284526845.Spec : Prop :=
  ∀ n, P9411757795284526845.a n = A306771 (n + 1)

end A306771

/-! ## A306771.P11887886126780472174

`∩[2*n-dr(n+2), 3*(2*n+1)]`
-/

namespace A306771.P11887886126780472174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A306771.P11887886126780472174

namespace A306771

/-- `∩[2*n-dr(n+2), 3*(2*n+1)]` -/
def P11887886126780472174.Spec : Prop :=
  ∀ n, (P11887886126780472174.a n : ℤ) = A306771 (n + 1)

end A306771

/-!
# A306772: a(n) is the least number k such that k! is divisible by (k+1)^n but not by (k+1)^(n+1).

The programs for A306772, there is no canonical definition to state claims against.
-/

/-! ## A306772.P5106319081995432792

`A011777(n+1)-1`
-/

namespace A306772.P5106319081995432792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011777 (n + 1) - 1

end

end A306772.P5106319081995432792

/-! ## A306772.P9721053682369714311

`A133481(n+1)-ceil(n/98)`
-/

namespace A306772.P9721053682369714311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 1) - ⌈(n : ℚ) / 98⌉

end

end A306772.P9721053682369714311

/-! ## A306772.P5553472860779924362

`A023443(A011777(n+1))`
-/

namespace A306772.P5553472860779924362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A011777 (n + 1)).toNat

end

end A306772.P5553472860779924362

/-! ## A306772.P9700598721207343333

`A055456(A133481(n+1))`
-/

namespace A306772.P9700598721207343333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A133481 (n + 1)).toNat

end

end A306772.P9700598721207343333

/-! ## A306772.P2425641117899043630

`A028310(A133481(n+1)-1)`
-/

namespace A306772.P2425641117899043630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A133481 (n + 1) - 1).toNat

end

end A306772.P2425641117899043630

/-!
# A306775: Partial sums of A060648: sum of the inverse Moebius transform of the Dedekind psi function from 1 to n.

The programs for A306775, the canonical program `A306775.P13729468879149621780` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306775 has offset 1).

The definition of A306775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306775.P13729468879149621780

`∑{#}[n, A001615(#+1)*floor((n+1)/(#+1))]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306775

/-- `∑{#}[n, A001615(#+1)*floor((n+1)/(#+1))]` -/
def P13729468879149621780.Spec : Prop :=
  ∀ n, P13729468879149621780.a n = A306775 (n + 1)

theorem P13729468879149621780.correct : P13729468879149621780.Spec := by
  intro n
  simp only [A306775, Nat.add_sub_cancel]

end A306775

/-! ## A306775.P9481484861690508417

`∑{#}[n, (#+1)*A064608(floor((n+1)/(#+1)))]`
-/

namespace A306775.P9481484861690508417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A064608 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A306775.P9481484861690508417

namespace A306775

/-- `∑{#}[n, (#+1)*A064608(floor((n+1)/(#+1)))]` -/
def P9481484861690508417.Spec : Prop :=
  ∀ n, P9481484861690508417.a n = A306775 (n + 1)

end A306775

/-! ## A306775.P4537564709775864372

`∑[A060648(n+1)]`
-/

namespace A306775.P4537564709775864372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P4537564709775864372

namespace A306775

/-- `∑[A060648(n+1)]` -/
def P4537564709775864372.Spec : Prop :=
  ∀ n, P4537564709775864372.a n = A306775 (n + 1)

end A306775

/-! ## A306775.P15524743381179666335

`∑[∑{d}[n+1, A001615(#)]]`
-/

namespace A306775.P15524743381179666335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A001615 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P15524743381179666335

namespace A306775

/-- `∑[∑{d}[n+1, A001615(#)]]` -/
def P15524743381179666335.Spec : Prop :=
  ∀ n, P15524743381179666335.a n = A306775 (n + 1)

end A306775

/-! ## A306775.P500771301290584024

`∑[∑{d}[n+1, A000082(#)/#]]`
-/

namespace A306775.P500771301290584024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A000082 d : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P500771301290584024

namespace A306775

/-- `∑[∑{d}[n+1, A000082(#)/#]]` -/
def P500771301290584024.Spec : Prop :=
  ∀ n, P500771301290584024.a n = (A306775 (n + 1) : ℚ)

end A306775

/-! ## A306775.P12141009231845498190

`∑[∑{d}[A007947(n+1), A000203((n+1)/#)]]`
-/

namespace A306775.P12141009231845498190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P12141009231845498190

namespace A306775

/-- `∑[∑{d}[A007947(n+1), A000203((n+1)/#)]]` -/
def P12141009231845498190.Spec : Prop :=
  ∀ n, P12141009231845498190.a n = A306775 (n + 1)

end A306775

/-! ## A306775.P14702919862167280343

`∑{d}[n+1, A000005(#)*A063659((n+1)/#)]+a(n-1)` with `a(0)=1`
-/

namespace A306775.P14702919862167280343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + a (n - 1)

end

end A306775.P14702919862167280343

namespace A306775

/-- `∑{d}[n+1, A000005(#)*A063659((n+1)/#)]+a(n-1)` -/
def P14702919862167280343.Spec : Prop :=
  ∀ n, P14702919862167280343.a n = A306775 (n + 1)

end A306775

/-! ## A306775.P14840440601184966523

`∑[A216621(∑[n+1])]`
-/

namespace A306775.P14840440601184966523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216621 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P14840440601184966523

namespace A306775

/-- `∑[A216621(∑[n+1])]` -/
def P14840440601184966523.Spec : Prop :=
  ∀ n, P14840440601184966523.a n = A306775 (n + 1)

end A306775

/-! ## A306775.P6733104241006562420

`∑[A055155((n+1)²)]`
-/

namespace A306775.P6733104241006562420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055155 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P6733104241006562420

namespace A306775

/-- `∑[A055155((n+1)²)]` -/
def P6733104241006562420.Spec : Prop :=
  ∀ n, P6733104241006562420.a n = A306775 (n + 1)

end A306775

/-! ## A306775.P17634972778035728395

`∑[∑{d}[(n+1)², A000188(#)]]`
-/

namespace A306775.P17634972778035728395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000188 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306775.P17634972778035728395

namespace A306775

/-- `∑[∑{d}[(n+1)², A000188(#)]]` -/
def P17634972778035728395.Spec : Prop :=
  ∀ n, P17634972778035728395.a n = A306775 (n + 1)

end A306775

/-!
# A306776: Numbers that are the sum of two abundant numbers (not necessarily distinct) in a record number of ways.

The programs for A306776, there is no canonical definition to state claims against.
-/

/-! ## A306776.P15400724519376417743

`A067766(A325678((n+1)²))`
-/

namespace A306776.P15400724519376417743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067766 (A325678 ((n + 1) ^ 2)).toNat

end

end A306776.P15400724519376417743

/-!
# A306777: a(0)=0, a(1)=1, a(n) = a(n-1) + sum(a(floor(n/d)), d=2^x, x=1...n).

The programs for A306777, there is no canonical definition to state claims against.
-/

/-! ## A306777.P14425777955347601721

`∑[A081387(∑[A122746(n)])]`
-/

namespace A306777.P14425777955347601721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081387 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306777.P14425777955347601721

/-! ## A306777.P789927501468750811

`A065094(n+1)-A237593(A157277(2*(n+1)))`
-/

namespace A306777.P789927501468750811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065094 (n + 1) - A237593 (A157277 (2 * (n + 1))).toNat

end

end A306777.P789927501468750811

/-! ## A306777.P2270795030047360223

`A035984(n+1)-A124734(A035984(3*(n+1)))`
-/

namespace A306777.P2270795030047360223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035984 (n + 1) - A124734 (A035984 (3 * (n + 1))).toNat

end

end A306777.P2270795030047360223

/-! ## A306777.P2411540353679246678

`A094023(A062399(n)+1)-A257639(A137822(n+1))`
-/

namespace A306777.P2411540353679246678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 (A062399 n + 1).toNat - A257639 (A137822 (n + 1)).toNat

end

end A306777.P2411540353679246678

/-! ## A306777.P17727306164578313170

`∑[A320887(7^floor(n/2))]-1`
-/

namespace A306777.P17727306164578313170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320887 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A306777.P17727306164578313170

/-!
# A306779: Table read by rows: T(n,k) is the length of the longest non-intersecting loop starting at (0,0) on the n X k torus consisting of steps up and to the right, 1 <= k <= n.

The programs for A306779, there is no canonical definition to state claims against.
-/

/-! ## A306779.P15989475688054725288

`A075362(n+1)-A390514(n+1)`
-/

namespace A306779.P15989475688054725288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A390514 (n + 1)

end

end A306779.P15989475688054725288

/-! ## A306779.P43757991263768884

`A075362(n+1)-A254605(n+1)^A000079(n)`
-/

namespace A306779.P43757991263768884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) - (A254605 (n + 1) : ℚ) ^ (A000079 n : ℤ)

end

end A306779.P43757991263768884

/-! ## A306779.P12394393553444817421

`A075362(n+1)-A254605(n+1)^A004119(n)`
-/

namespace A306779.P12394393553444817421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) - (A254605 (n + 1) : ℚ) ^ (A004119 n : ℤ)

end

end A306779.P12394393553444817421

/-! ## A306779.P8446532715392391718

`A075362(n+1)-A254605(n+1)^A048578(n)`
-/

namespace A306779.P8446532715392391718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) - (A254605 (n + 1) : ℚ) ^ (A048578 n : ℤ)

end

end A306779.P8446532715392391718

/-! ## A306779.P3243404960878010458

`A075362(n+1)-A254605(n+1)^A060546(n)`
-/

namespace A306779.P3243404960878010458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) : ℚ) - (A254605 (n + 1) : ℚ) ^ (A060546 n : ℤ)

end

end A306779.P3243404960878010458

/-!
# A306786: Primes p such that p^2 divides A087935(p).

The programs for A306786, there is no canonical definition to state claims against.
-/

/-! ## A306786.P1304280531247719856

`p?[∑[A301934(A281118(n+1))]]`
-/

namespace A306786.P1304280531247719856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301934 (A281118 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306786.P1304280531247719856

/-! ## A306786.P15437350003897301899

`p?[A056292(n+1)+A026813(n)]`
-/

namespace A306786.P15437350003897301899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056292 (n + 1) + A026813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306786.P15437350003897301899

/-!
# A306788: Numbers k such that all digits in k are different and for each digit d it is true that k = d (mod sum of digits(k) - d).

The programs for A306788, there is no canonical definition to state claims against.
-/

/-! ## A306788.P16708410938379949766

`filter[A172189(n+1), A178788(#)]`
-/

namespace A306788.P16708410938379949766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A306788.P16708410938379949766

/-!
# A306789: a(n) = Product_{k=0..n} binomial(n + k, n).

The programs for A306789, the canonical program `A306789.P5473283175137858930` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306789 has offset 0).

The definition of A306789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306789.P5473283175137858930

`a(n-1)*2*n*(2*n-1)!²/(n!^3*n^(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A306789

/-- `a(n-1)*2*n*(2*n-1)!²/(n!^3*n^(n-1))` -/
def P5473283175137858930.Spec : Prop :=
  ∀ n, P5473283175137858930.a n = (A306789 n : ℚ)

end A306789

/-! ## A306789.P6099496026413760904

`A007685(n)/A001142(n)*A296590(n)`
-/

namespace A306789.P6099496026413760904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007685 n : ℚ) / (A001142 n : ℚ) * (A296590 n : ℚ)

end

end A306789.P6099496026413760904

namespace A306789

/-- `A007685(n)/A001142(n)*A296590(n)` -/
def P6099496026413760904.Spec : Prop :=
  ∀ n, P6099496026413760904.a n = (A306789 n : ℚ)

end A306789

/-! ## A306789.P7986118438994866431

`A000984(n)/A039622(n)*A034841(n)`
-/

namespace A306789.P7986118438994866431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A039622 n : ℚ) * (A034841 n : ℚ)

end

end A306789.P7986118438994866431

namespace A306789

/-- `A000984(n)/A039622(n)*A034841(n)` -/
def P7986118438994866431.Spec : Prop :=
  ∀ n, P7986118438994866431.a n = (A306789 n : ℚ)

end A306789

/-! ## A306789.P8358527176607467659

`A079478(n)/A036740(n)`
-/

namespace A306789.P8358527176607467659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079478 n : ℚ) / (A036740 n : ℚ)

end

end A306789.P8358527176607467659

namespace A306789

/-- `A079478(n)/A036740(n)` -/
def P8358527176607467659.Spec : Prop :=
  ∀ n, P8358527176607467659.a n = (A306789 n : ℚ)

end A306789

/-! ## A306789.P11907456481180209295

`A079478(n)/A000142(n)^n`
-/

namespace A306789.P11907456481180209295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079478 n : ℚ) / (A000142 n ^ n : ℚ)

end

end A306789.P11907456481180209295

namespace A306789

/-- `A079478(n)/A000142(n)^n` -/
def P11907456481180209295.Spec : Prop :=
  ∀ n, P11907456481180209295.a n = (A306789 n : ℚ)

end A306789

/-!
# A306790: Number of ways to write n as x*(3*x+1)/2 + y*(y+1)*(y+2)/2 + z*(z+1)*(z+2)/6, where x is a nonzero integer, and y and z are nonnegative integers.

The programs for A306790, there is no canonical definition to state claims against.
-/

/-! ## A306790.P16109934946600014609

`A096492(A135765(n+1)+n)`
-/

namespace A306790.P16109934946600014609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096492 (A135765 (n + 1) + (n : ℤ)).toNat

end

end A306790.P16109934946600014609

/-! ## A306790.P16755362462089109908

`A301608(n+1)+A007814(A289931(n))`
-/

namespace A306790.P16755362462089109908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301608 (n + 1) + A007814 (A289931 n).toNat

end

end A306790.P16755362462089109908

/-! ## A306790.P8909637712371465515

`A227687(A098584(n+1)+A023647(2*n+7))`
-/

namespace A306790.P8909637712371465515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227687 (A098584 (n + 1) + A023647 (2 * n + 7)).toNat

end

end A306790.P8909637712371465515

/-!
# A306794: Number of distinct real eigenvalues of n X n matrices with elements {-1, 1}.

The programs for A306794, there is no canonical definition to state claims against.
-/

/-! ## A306794.P10219362475478011842

`A252463(A006862(n+1)-A029578(n))`
-/

namespace A306794.P10219362475478011842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A006862 (n + 1) - A029578 n).toNat

end

end A306794.P10219362475478011842

/-!
# A306799: Expansion of e.g.f. (sec(x) + tan(x))*(BesselI(0,2*x) + BesselI(1,2*x)).

The programs for A306799, there is no canonical definition to state claims against.
-/

/-! ## A306799.P3831805640651213007

`A062108(A076177(n)+n)`
-/

namespace A306799.P3831805640651213007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A076177 n + (n : ℤ)).toNat

end

end A306799.P3831805640651213007

/-! ## A306799.P4810950658672909596

`A084556(A052888(n))+A052893(n)`
-/

namespace A306799.P4810950658672909596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A052888 n).toNat + A052893 n

end

end A306799.P4810950658672909596

