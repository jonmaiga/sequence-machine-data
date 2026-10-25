import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C013
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
# A289500: Number of primes in the interval [9n, 10n].

The programs for A289500, the canonical program `A289500.P6623169090579863016` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289500 has offset 1).

The definition of A289500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289500.P684456926689530149

`A038801(n+1)-A000720(9*(n+1))`
-/

namespace A289500.P684456926689530149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (n + 1) - A000720 (9 * (n + 1))

end

end A289500.P684456926689530149

namespace A289500

/-- `A038801(n+1)-A000720(9*(n+1))` -/
def P684456926689530149.Spec : Prop :=
  ∀ n, P684456926689530149.a n = A289500 (n + 1)

end A289500

/-! ## A289500.P6623169090579863016

`A038801(n+1)-A100637(A016789(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A289500

/-- `A038801(n+1)-A100637(A016789(n))` -/
def P6623169090579863016.Spec : Prop :=
  ∀ n, P6623169090579863016.a n = A289500 (n + 1)

theorem P6623169090579863016.correct : P6623169090579863016.Spec := by
  intro n
  simp only [A289500, Nat.add_sub_cancel]

end A289500

/-! ## A289500.P2530525038383078202

`A289495(2*(n+1))-A289499(n+1)`
-/

namespace A289500.P2530525038383078202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (2 * (n + 1)) - A289499 (n + 1)

end

end A289500.P2530525038383078202

namespace A289500

/-- `A289495(2*(n+1))-A289499(n+1)` -/
def P2530525038383078202.Spec : Prop :=
  ∀ n, P2530525038383078202.a n = A289500 (n + 1)

theorem P2530525038383078202.correct : P2530525038383078202.Spec := by
  intro n
  simp only [A289500, Nat.add_sub_cancel, A289500.P2530525038383078202.a, A289500.P6623169090579863016.a, A016789, A016789.P8277564872725303677.a, A038801, A038801.P2729700346565965031.a, A100637, A100637.P13819822131188342482.a, A289495, A289495.P8621251357975722322.a, A289499, A289499.P16333506063555151706.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008706, A008706.P2829034798076193717.a, A075743, A075743.P8124416718606607743.a, A099801, A099801.P5638060238408130792.f1, A099801.P5638060238408130792.a, A007310, A007310.P9946423629536973135.a, A010051, A010051.P15078252821583414300.a, A101808, A101808.P11599829099457824818.f2, A101808.P11599829099457824818.f1, A101808.P11599829099457824818.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A289500

/-! ## A289500.P1324043361665776451

`A289494(3*(n+1))-A289496(2*(n+1))`
-/

namespace A289500.P1324043361665776451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (3 * (n + 1)) - A289496 (2 * (n + 1))

end

end A289500.P1324043361665776451

namespace A289500

/-- `A289494(3*(n+1))-A289496(2*(n+1))` -/
def P1324043361665776451.Spec : Prop :=
  ∀ n, P1324043361665776451.a n = A289500 (n + 1)

end A289500

/-! ## A289500.P14103319124184252367

`A230980(10*(n+1))-A230980(A007310(3*(n+1)))`
-/

namespace A289500.P14103319124184252367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (10 * (n + 1)) - A230980 (A007310 (3 * (n + 1))).toNat

end

end A289500.P14103319124184252367

namespace A289500

/-- `A230980(10*(n+1))-A230980(A007310(3*(n+1)))` -/
def P14103319124184252367.Spec : Prop :=
  ∀ n, P14103319124184252367.a n = A289500 (n + 1)

end A289500

/-! ## A289500.P13208858554146721438

`∑[A038800(n)-A155462(n)]`
-/

namespace A289500.P13208858554146721438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 n - A155462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289500.P13208858554146721438

namespace A289500

/-- `∑[A038800(n)-A155462(n)]` -/
def P13208858554146721438.Spec : Prop :=
  ∀ n, P13208858554146721438.a n = A289500 (n + 1)

end A289500

/-!
# A289501: Number of enriched p-trees of weight n.

The programs for A289501, there is no canonical definition to state claims against.
-/

/-! ## A289501.P13651280271601997616

`A318847(A005180(n+1))`
-/

namespace A289501.P13651280271601997616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A005180 (n + 1)).toNat

end

end A289501.P13651280271601997616

/-! ## A289501.P12126584433629769682

`A318847(A008578(n+1))`
-/

namespace A289501.P12126584433629769682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A008578 (n + 1)).toNat

end

end A289501.P12126584433629769682

/-! ## A289501.P13395523629838100017

`A318847(A015919(n+1))`
-/

namespace A289501.P13395523629838100017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A015919 (n + 1)).toNat

end

end A289501.P13395523629838100017

/-! ## A289501.P5443202919037534193

`A318847(A052424(n+1))`
-/

namespace A289501.P5443202919037534193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A052424 (n + 1)).toNat

end

end A289501.P5443202919037534193

/-! ## A289501.P5894464272505907895

`A318847(A064555(n+1))`
-/

namespace A289501.P5894464272505907895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318847 (A064555 (n + 1)).toNat

end

end A289501.P5894464272505907895

/-!
# A289506: Write n as a product of primes p_{s_1}*p_{s_2}*p_{s_3}*... where p_i denotes the i-th prime; then a(n) = s_1^2 + s_2^2 + s_3^2 + ...

The programs for A289506, the canonical program `A289506.P11740211383965713094` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289506 has offset 1).

The definition of A289506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289506.P11740211383965713094

`∑{d}[n+1, A297109(#)²]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A289506

/-- `∑{d}[n+1, A297109(#)²]` -/
def P11740211383965713094.Spec : Prop :=
  ∀ n, P11740211383965713094.a n = A289506 (n + 1)

theorem P11740211383965713094.correct : P11740211383965713094.Spec := by
  intro n
  simp only [A289506, Nat.add_sub_cancel]

end A289506

/-! ## A289506.P15099766278122187380

`A289507(2*(n+1))-1`
-/

namespace A289506.P15099766278122187380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (2 * (n + 1)) - 1

end

end A289506.P15099766278122187380

namespace A289506

/-- `A289507(2*(n+1))-1` -/
def P15099766278122187380.Spec : Prop :=
  ∀ n, P15099766278122187380.a n = A289506 (n + 1)

end A289506

/-! ## A289506.P800342864759273053

`∑{d}[n+1, A000720(A014963(#))²]`
-/

namespace A289506.P800342864759273053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000720 (A014963 d).toNat ^ 2

end

end A289506.P800342864759273053

namespace A289506

/-- `∑{d}[n+1, A000720(A014963(#))²]` -/
def P800342864759273053.Spec : Prop :=
  ∀ n, P800342864759273053.a n = A289506 (n + 1)

end A289506

/-! ## A289506.P12421712054619703647

`A289507(n+1)*A289508(n+1)`
-/

namespace A289506.P12421712054619703647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (n + 1) * A289508 (n + 1)

end

end A289506.P12421712054619703647

namespace A289506

/-- `A289507(n+1)*A289508(n+1)` -/
def P12421712054619703647.Spec : Prop :=
  ∀ n, P12421712054619703647.a n = A289506 (n + 1)

end A289506

/-! ## A289506.P16465019010313278739

`∑{d}[n+1, A061395(A014963(#))*A061395(#)]`
-/

namespace A289506.P16465019010313278739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061395 (A014963 d).toNat * A061395 d

end

end A289506.P16465019010313278739

namespace A289506

/-- `∑{d}[n+1, A061395(A014963(#))*A061395(#)]` -/
def P16465019010313278739.Spec : Prop :=
  ∀ n, P16465019010313278739.a n = A289506 (n + 1)

end A289506

/-! ## A289506.P11953357504421607870

`∑{e}[A181821(n+1), #²]`
-/

namespace A289506.P11953357504421607870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2

end

end A289506.P11953357504421607870

namespace A289506

/-- `∑{e}[A181821(n+1), #²]` -/
def P11953357504421607870.Spec : Prop :=
  ∀ n, (P11953357504421607870.a n : ℤ) = A289506 (n + 1)

end A289506

/-! ## A289506.P12527818059061193919

`∑{d}[n+1, A329025(A014963(#))*A329025(#)]`
-/

namespace A289506.P12527818059061193919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A329025 (A014963 d).toNat * A329025 d

end

end A289506.P12527818059061193919

namespace A289506

/-- `∑{d}[n+1, A329025(A014963(#))*A329025(#)]` -/
def P12527818059061193919.Spec : Prop :=
  ∀ n, P12527818059061193919.a n = A289506 (n + 1)

end A289506

/-! ## A289506.P4291488991859206779

`A090885(A181821(n+1))`
-/

namespace A289506.P4291488991859206779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A181821 (n + 1)).toNat

end

end A289506.P4291488991859206779

namespace A289506

/-- `A090885(A181821(n+1))` -/
def P4291488991859206779.Spec : Prop :=
  ∀ n, P4291488991859206779.a n = A289506 (n + 1)

end A289506

/-! ## A289506.P6332422371305137032

`A090885(A304660(n+1))`
-/

namespace A289506.P6332422371305137032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (A304660 (n + 1)).toNat

end

end A289506.P6332422371305137032

namespace A289506

/-- `A090885(A304660(n+1))` -/
def P6332422371305137032.Spec : Prop :=
  ∀ n, P6332422371305137032.a n = A289506 (n + 1)

end A289506

/-!
# A289507: The sum of squares of the elements of a finite multiset of positive integers divided by their gcd, the multiset {s_j} being indexed by n = Product_j p_{s_j}, where p_{s_j} is the s_j-th prime.

The programs for A289507, there is no canonical definition to state claims against.
-/

/-! ## A289507.P17787548076929170029

`A289506(A316437(n+1))*A289508(n+1)`
-/

namespace A289507.P17787548076929170029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A316437 (n + 1)).toNat * A289508 (n + 1)

end

end A289507.P17787548076929170029

/-! ## A289507.P9498780268406227999

`A289506(n+1)/A028310(A289508(n+1))`
-/

namespace A289507.P9498780268406227999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289506 (n + 1) : ℚ) / (A028310 (A289508 (n + 1)).toNat : ℚ)

end

end A289507.P9498780268406227999

/-! ## A289507.P4862185536423390607

`A289506(n+1)/(A289508(n+1)+A000038(n))`
-/

namespace A289507.P4862185536423390607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289506 (n + 1) : ℚ) / (A289508 (n + 1) + A000038 n : ℚ)

end

end A289507.P4862185536423390607

/-! ## A289507.P14152111101212259756

`∑{d}[n+1, A297109(#)²]/A028310(A289508(n+1))`
-/

namespace A289507.P14152111101212259756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A297109 d ^ 2 : ℤ) : ℚ) / (A028310 (A289508 (n + 1)).toNat : ℚ)

end

end A289507.P14152111101212259756

/-! ## A289507.P14321486781819368917

`A289506(n+1)/gcd(A003963(n+1), A289508(n+1))`
-/

namespace A289507.P14321486781819368917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289506 (n + 1) : ℚ) / (Int.gcd (A003963 (n + 1)) (A289508 (n + 1)) : ℚ)

end

end A289507.P14321486781819368917

/-! ## A289507.P10091723797334151109

`A289506(n+1)/A290104(A066048(n+1))`
-/

namespace A289507.P10091723797334151109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289506 (n + 1) : ℚ) / (A290104 (A066048 (n + 1)).toNat : ℚ)

end

end A289507.P10091723797334151109

/-!
# A289508: a(n) is the GCD of the indices j for which the j-th prime p_j divides n.

The programs for A289508, there is no canonical definition to state claims against.
-/

/-! ## A289508.P10526939150492641800

`ceil(acot(A289507(n+1))*A289506(n+1))`
-/

namespace A289508.P10526939150492641800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A289507 (n + 1) : ℝ) * (A289506 (n + 1) : ℝ)⌉

end

end A289508.P10526939150492641800

/-! ## A289508.P10156328782122358364

`A289506(n+1)/A289507(A028310(n)+1)`
-/

namespace A289508.P10156328782122358364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289506 (n + 1) : ℚ) / (A289507 (A028310 n + 1).toNat : ℚ)

end

end A289508.P10156328782122358364

/-! ## A289508.P15131528344485533922

`gcd(A052409(A322865(n+1)), A061395(n+1))`
-/

namespace A289508.P15131528344485533922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052409 (A322865 (n + 1)).toNat) (A061395 (n + 1))

end

end A289508.P15131528344485533922

/-! ## A289508.P4361145898134876841

`gcd(A055396(n+1), A297173(A081346(n)))`
-/

namespace A289508.P4361145898134876841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055396 (n + 1)) (A297173 (A081346 n).toNat)

end

end A289508.P4361145898134876841

/-! ## A289508.P6847959712297095827

`gcd(A066328(n+1), A297173(A243057(n+1)))`
-/

namespace A289508.P6847959712297095827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066328 (n + 1)) (A297173 (A243057 (n + 1)).toNat)

end

end A289508.P6847959712297095827

/-! ## A289508.P7548817218996603492

`gcd(A061395(A028233((n+1)²)), A061395((n+1)²))`
-/

namespace A289508.P7548817218996603492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061395 (A028233 ((n + 1) ^ 2)).toNat) (A061395 ((n + 1) ^ 2))

end

end A289508.P7548817218996603492

/-! ## A289508.P7729282244208379243

`gcd(A056239(n+1), A363486(n+1))`
-/

namespace A289508.P7729282244208379243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (n + 1)) (A363486 (n + 1))

end

end A289508.P7729282244208379243

/-! ## A289508.P10469793091182100323

`gcd(A242411(n+1), A367583(n+1))`
-/

namespace A289508.P10469793091182100323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242411 (n + 1)) (A367583 (n + 1))

end

end A289508.P10469793091182100323

/-! ## A289508.P270716056131535839

`gcd(A354871(n+1), A363941(n+1))`
-/

namespace A289508.P270716056131535839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A354871 (n + 1)) (A363941 (n + 1))

end

end A289508.P270716056131535839

/-!
# A289509: Numbers k such that the gcd of the indices j for which the j-th prime prime(j) divides k is 1.

The programs for A289509, there is no canonical definition to state claims against.
-/

/-! ## A289509.P1060028230993063372

`record[A316437(n+2)]`
-/

namespace A289509.P1060028230993063372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289509.P1060028230993063372

/-! ## A289509.P15751924901408094427

`eq[1, A289508(n+1)]+1`
-/

namespace A289509.P15751924901408094427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289509.P15751924901408094427

/-! ## A289509.P7369369662267886545

`lt[1, A327405(n+1)]+1`
-/

namespace A289509.P7369369662267886545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289509.P7369369662267886545

/-! ## A289509.P9208483897502031596

`lt[1, A327512(n+1)]+1`
-/

namespace A289509.P9208483897502031596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289509.P9208483897502031596

/-! ## A289509.P3045114519806915680

`lt[1, A327513(n+1)]+1`
-/

namespace A289509.P3045114519806915680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289509.P3045114519806915680

/-! ## A289509.P15902635351237450475

`record[3-A289508(n+2)+n]`
-/

namespace A289509.P15902635351237450475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A289508 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289509.P15902635351237450475

/-! ## A289509.P10695482622867355323

`lt[A001221(A327656(n+1)), A001221(n+1)]+1`
-/

namespace A289509.P10695482622867355323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327656 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A289509.P10695482622867355323

/-!
# A289510: Primes of the form k!4+32, where k!4 is the quadruple factorial number (A007662).

The programs for A289510, there is no canonical definition to state claims against.
-/

/-! ## A289510.P7399372506937474964

`A007662(A291345(n+1))+32`
-/

namespace A289510.P7399372506937474964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A291345 (n + 1)).toNat + 32

end

end A289510.P7399372506937474964

/-! ## A289510.P18021932838438784532

`A007662(2*∑{e}[4^n, val(#!, 2)]+5)+32`
-/

namespace A289510.P18021932838438784532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (2 * (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2) + 5) + 32

end

end A289510.P18021932838438784532

/-! ## A289510.P10073398305459881751

`A007662(2*A001222(∏[gcd(2*n, 2^n)])+5)+32`
-/

namespace A289510.P10073398305459881751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (2 * A001222 (∏ j ∈ Finset.range (n + 1), f1 j) + 5).toNat + 32

end

end A289510.P10073398305459881751

/-! ## A289510.P9640152090973179943

`A007662(∑{d}[A046161(n), A020639(#+4)])+32`
-/

namespace A289510.P9640152090973179943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (∑ d ∈ Nat.divisors (f1 n).natAbs, A020639 (d + 4)).toNat + 32

end

end A289510.P9640152090973179943

/-!
# A289518: Primes of the form k!4+64, where k!4 is the quadruple factorial number (A007662).

The programs for A289518, there is no canonical definition to state claims against.
-/

/-! ## A289518.P4662685185574074550

`A007662(A291347(n+1))+64`
-/

namespace A289518.P4662685185574074550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A291347 (n + 1)).toNat + 64

end

end A289518.P4662685185574074550

/-!
# A289521: Number of vertices in a planar Apollonian graph at iteration n.

The programs for A289521, the canonical program `A289521.P9254726694826321527` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289521 has offset 1).

The definition of A289521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A289521.P9254726694826321527

`a(n-1)+3^n` with `a(0)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289521

/-- `a(n-1)+3^n` -/
def P9254726694826321527.Spec : Prop :=
  ∀ n, (P9254726694826321527.a n : ℤ) = A289521 (n + 1)

theorem P9254726694826321527.correct : P9254726694826321527.Spec := by
  intro n
  simp only [A289521, Nat.add_sub_cancel]

end A289521

/-! ## A289521.P6171368796645622092

`(3^(n+1)+5)/2`
-/

namespace A289521.P6171368796645622092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) + 5 : ℚ) / 2

end

end A289521.P6171368796645622092

namespace A289521

/-- `(3^(n+1)+5)/2` -/
def P6171368796645622092.Spec : Prop :=
  ∀ n, P6171368796645622092.a n = (A289521 (n + 1) : ℚ)

theorem P6171368796645622092.correct : P6171368796645622092.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A289521, Nat.add_sub_cancel, A289521.P6171368796645622092.a, A289521.P9254726694826321527.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A289521, Nat.add_sub_cancel, A289521.P6171368796645622092.a, A289521.P9254726694826321527.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A289521

/-! ## A289521.P14021211228119853162

`4*a(n-1)-3*a(n-2)` with `a(0)=4, a(1)=7`
-/

namespace A289521.P14021211228119853162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 7] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2)

end

end A289521.P14021211228119853162

namespace A289521

/-- `4*a(n-1)-3*a(n-2)` -/
def P14021211228119853162.Spec : Prop :=
  ∀ n, P14021211228119853162.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P4477943902366520125

`ogf((4-9x)/(1-4x+3x^2))`
-/

namespace A289521.P4477943902366520125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -9] [1, -4, 3] n

end

end A289521.P4477943902366520125

namespace A289521

/-- `ogf((4-9x)/(1-4x+3x^2))` -/
def P4477943902366520125.Spec : Prop :=
  ∀ n, P4477943902366520125.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P17244207087688662452

`-xor(-3, ∑[3^n])`
-/

namespace A289521.P17244207087688662452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-3) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A289521.P17244207087688662452

namespace A289521

/-- `-xor(-3, ∑[3^n])` -/
def P17244207087688662452.Spec : Prop :=
  ∀ n, P17244207087688662452.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P11118724677947492120

`3*a(n-1)-5` with `a(0)=4`
-/

namespace A289521.P11118724677947492120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * a (n - 1) - 5

end

end A289521.P11118724677947492120

namespace A289521

/-- `3*a(n-1)-5` -/
def P11118724677947492120.Spec : Prop :=
  ∀ n, P11118724677947492120.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P7296873157856906654

`abs(lcm(3, a(n-1))-5)` with `a(0)=4`
-/

namespace A289521.P7296873157856906654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |(Int.lcm 3 (a (n - 1)) : ℤ) - 5|

end

end A289521.P7296873157856906654

namespace A289521

/-- `abs(lcm(3, a(n-1))-5)` -/
def P7296873157856906654.Spec : Prop :=
  ∀ n, P7296873157856906654.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P6810742278285227843

`∑[3^(n%a(n-1))]` with `a(0)=4`
-/

namespace A289521.P6810742278285227843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  3 ^ (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289521.P6810742278285227843

namespace A289521

/-- `∑[3^(n%a(n-1))]` -/
def P6810742278285227843.Spec : Prop :=
  ∀ n, (P6810742278285227843.a n : ℤ) = A289521 (n + 1)

end A289521

/-! ## A289521.P16571393495300963097

`∑[gcd(3, a(n-1))^n]` with `a(0)=4, a(1)=3`
-/

namespace A289521.P16571393495300963097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  Nat.gcd 3 (f1 (n - 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289521.P16571393495300963097

namespace A289521

/-- `∑[gcd(3, a(n-1))^n]` -/
def P16571393495300963097.Spec : Prop :=
  ∀ n, (P16571393495300963097.a n : ℤ) = A289521 (n + 1)

end A289521

/-! ## A289521.P13748252831581242436

`∑[(3^n/a(n-1))^n]` with `a(0)=4, a(1)=3`
-/

namespace A289521.P13748252831581242436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  ((3 ^ n : ℚ) / f1 (n - 1)) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289521.P13748252831581242436

namespace A289521

/-- `∑[(3^n/a(n-1))^n]` -/
def P13748252831581242436.Spec : Prop :=
  ∀ n, P13748252831581242436.a n = (A289521 (n + 1) : ℚ)

end A289521

/-! ## A289521.P18130619268055617500

`∑[3^(a(n-1)-floor(a(n-1)-n))]` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A289521.P18130619268055617500
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f1 =>
  (3 : ℝ) ^ (f1 (n - 1) - (⌊f1 (n - 1) - (n : ℝ)⌋ : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289521.P18130619268055617500

namespace A289521

/-- `∑[3^(a(n-1)-floor(a(n-1)-n))]` -/
def P18130619268055617500.Spec : Prop :=
  ∀ n, P18130619268055617500.a n = (A289521 (n + 1) : ℝ)

end A289521

/-! ## A289521.P11850287380490014583

`∑[a(n-1)+a(n-1)+a(n-1)]` with `a(0)=4, a(1)=3`
-/

namespace A289521.P11850287380490014583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289521.P11850287380490014583

namespace A289521

/-- `∑[a(n-1)+a(n-1)+a(n-1)]` -/
def P11850287380490014583.Spec : Prop :=
  ∀ n, (P11850287380490014583.a n : ℤ) = A289521 (n + 1)

end A289521

/-! ## A289521.P5419446514642175736

`floor(a(n-1)-5+a(n-1)+floor(a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A289521.P5419446514642175736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - 5 + (a (n - 1) + a (n - 1))

end

end A289521.P5419446514642175736

namespace A289521

/-- `floor(a(n-1)-5+a(n-1)+floor(a(n-1)))` -/
def P5419446514642175736.Spec : Prop :=
  ∀ n, P5419446514642175736.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P10782168912263070148

`floor(floor(a(n-1))-(5-a(n-1)-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A289521.P10782168912263070148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - (5 - a (n - 1) - a (n - 1))

end

end A289521.P10782168912263070148

namespace A289521

/-- `floor(floor(a(n-1))-(5-a(n-1)-a(n-1)))` -/
def P10782168912263070148.Spec : Prop :=
  ∀ n, P10782168912263070148.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P17809460852926156459

`A067771(n)+1`
-/

namespace A289521.P17809460852926156459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067771 n + 1

end

end A289521.P17809460852926156459

namespace A289521

/-- `A067771(n)+1` -/
def P17809460852926156459.Spec : Prop :=
  ∀ n, P17809460852926156459.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P4928500809158227388

`A291773(n+4)`
-/

namespace A289521.P4928500809158227388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291773 (n + 4)

end

end A289521.P4928500809158227388

namespace A289521

/-- `A291773(n+4)` -/
def P4928500809158227388.Spec : Prop :=
  ∀ n, P4928500809158227388.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P546463368429781448

`A302487(n+4)`
-/

namespace A289521.P546463368429781448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302487 (n + 4)

end

end A289521.P546463368429781448

namespace A289521

/-- `A302487(n+4)` -/
def P546463368429781448.Spec : Prop :=
  ∀ n, P546463368429781448.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P2230939433943644752

`A115098(n+1)+1`
-/

namespace A289521.P2230939433943644752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (n + 1) + 1

end

end A289521.P2230939433943644752

namespace A289521

/-- `A115098(n+1)+1` -/
def P2230939433943644752.Spec : Prop :=
  ∀ n, P2230939433943644752.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P14141411915830400909

`A007051(n+1)+2`
-/

namespace A289521.P14141411915830400909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) + 2

end

end A289521.P14141411915830400909

namespace A289521

/-- `A007051(n+1)+2` -/
def P14141411915830400909.Spec : Prop :=
  ∀ n, P14141411915830400909.a n = A289521 (n + 1)

end A289521

/-! ## A289521.P7111156531081088889

`A003462(n+1)+3`
-/

namespace A289521.P7111156531081088889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + 3

end

end A289521.P7111156531081088889

namespace A289521

/-- `A003462(n+1)+3` -/
def P7111156531081088889.Spec : Prop :=
  ∀ n, P7111156531081088889.a n = A289521 (n + 1)

end A289521

/-!
# A289522: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=0} ((1 + x^(2*j+1))/(1 - x^(2*j+1)))^k.

The programs for A289522, there is no canonical definition to state claims against.
-/

/-! ## A289522.P16142317401969523445

`A266213(n)^A261139(n)!`
-/

namespace A289522.P16142317401969523445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n ^ Nat.factorial (A261139 n).toNat

end

end A289522.P16142317401969523445

/-! ## A289522.P6484678626897022384

`A266213(n)+A010893(A152842(n))`
-/

namespace A289522.P6484678626897022384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n + A010893 ((A152842 n).toNat + 13)

end

end A289522.P6484678626897022384

/-! ## A289522.P9643414735596747060

`A266213(n)^A016031(A306209(n))`
-/

namespace A289522.P9643414735596747060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266213 n : ℚ) ^ (A016031 (A306209 n).toNat : ℤ)

end

end A289522.P9643414735596747060

/-! ## A289522.P5506705186703194992

`A341584(A289537(n))`
-/

namespace A289522.P5506705186703194992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341584 (A289537 n).toNat

end

end A289522.P5506705186703194992

/-!
# A289524: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A289524, there is no canonical definition to state claims against.
-/

/-! ## A289524.P13555584564114245749

`A007088(A289526(n))`
-/

namespace A289524.P13555584564114245749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289526 n).toNat

end

end A289524.P13555584564114245749

/-! ## A289524.P14154638164473326111

`A305989(A289525(n))`
-/

namespace A289524.P14154638164473326111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289525 n).toNat

end

end A289524.P14154638164473326111

/-! ## A289524.P7677314948588034993

`A185544(2*A289526(n))`
-/

namespace A289524.P7677314948588034993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289526 n).toNat

end

end A289524.P7677314948588034993

/-! ## A289524.P7497960493067245716

`A185544(lcm(2, A289526(n)))`
-/

namespace A289524.P7497960493067245716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289526 n))

end

end A289524.P7497960493067245716

/-! ## A289524.P15445304844203349888

`A185544(A289526(n)+A289526(n))`
-/

namespace A289524.P15445304844203349888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289526 n + A289526 n).toNat

end

end A289524.P15445304844203349888

/-!
# A289525: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A289525, there is no canonical definition to state claims against.
-/

/-! ## A289525.P13039910764802325111

`∑[A046523(A000244(n))-A291759(n+1)]`
-/

namespace A289525.P13039910764802325111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000244 n).toNat - A291759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289525.P13039910764802325111

/-! ## A289525.P12196555889975745706

`xor(A037800(A033646(n)), A289764(n))`
-/

namespace A289525.P12196555889975745706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037800 (A033646 n).toNat) (A289764 n)

end

end A289525.P12196555889975745706

/-! ## A289525.P11331215795639283536

`xor(A037800(A033647(n)), A289764(n))`
-/

namespace A289525.P11331215795639283536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037800 (A033647 n).toNat) (A289764 n)

end

end A289525.P11331215795639283536

/-!
# A289526: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 581", based on the 5-celled von Neumann neighborhood.

The programs for A289526, there is no canonical definition to state claims against.
-/

/-! ## A289526.P9714176015705185773

`A325401(A289525(n))`
-/

namespace A289526.P9714176015705185773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289525 n).toNat

end

end A289526.P9714176015705185773

/-! ## A289526.P16525850559047238264

`A030101(A289525(floor(acot(n)+n)))`
-/

namespace A289526.P16525850559047238264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289525 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A289526.P16525850559047238264

/-! ## A289526.P2901139799684403504

`A030101(A289525(round(sqrt(n²+1))))`
-/

namespace A289526.P2901139799684403504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289525 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A289526.P2901139799684403504

/-! ## A289526.P3640846408230226082

`A030101(and(∑[(n+2)*2^n]-1, A289525(n)))`
-/

namespace A289526.P3640846408230226082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (A289525 n)).toNat

end

end A289526.P3640846408230226082

/-! ## A289526.P13735387737067148846

`A030101(A289525(n)+A000007(n))`
-/

namespace A289526.P13735387737067148846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289525 n + A000007 n).toNat

end

end A289526.P13735387737067148846

/-!
# A289527: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A289527, there is no canonical definition to state claims against.
-/

/-! ## A289527.P5418133399165003322

`A288394(n)+A289964(n)-A288300(n)`
-/

namespace A289527.P5418133399165003322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288394 n + (A289964 n - A288300 n)

end

end A289527.P5418133399165003322

/-! ## A289527.P17322831067620729249

`A007088(A289529(n))`
-/

namespace A289527.P17322831067620729249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289529 n).toNat

end

end A289527.P17322831067620729249

/-! ## A289527.P10279668446832216670

`A007088(A288303(n)+A289530(n)-A288302(n))`
-/

namespace A289527.P10279668446832216670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288303 n + (A289530 n - A288302 n)).toNat

end

end A289527.P10279668446832216670

/-! ## A289527.P3269411207172627637

`A007088(A288303(n)-(A288302(n)-A289530(n)))`
-/

namespace A289527.P3269411207172627637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288303 n - (A288302 n - A289530 n)).toNat

end

end A289527.P3269411207172627637

/-! ## A289527.P12507667607057774422

`A185544(2*A289529(n))`
-/

namespace A289527.P12507667607057774422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289529 n).toNat

end

end A289527.P12507667607057774422

/-!
# A289528: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A289528, there is no canonical definition to state claims against.
-/

/-! ## A289528.P481096408535307754

`A288300(n)+A289527(n)-A288301(n)`
-/

namespace A289528.P481096408535307754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288300 n + (A289527 n - A288301 n)

end

end A289528.P481096408535307754

/-! ## A289528.P3088830825149240099

`A007088(A289530(n))`
-/

namespace A289528.P3088830825149240099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289530 n).toNat

end

end A289528.P3088830825149240099

/-! ## A289528.P1401313145667714912

`A007088(or(1, A126646(n)-A288303(n)))`
-/

namespace A289528.P1401313145667714912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A288303 n)).toNat

end

end A289528.P1401313145667714912

/-! ## A289528.P15922793553178639414

`A007088(A288302(n)+A289529(n)-A288303(n))`
-/

namespace A289528.P15922793553178639414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288302 n + (A289529 n - A288303 n)).toNat

end

end A289528.P15922793553178639414

/-! ## A289528.P5223551240340891151

`A007088(A288302(n)-(A288303(n)-A289529(n)))`
-/

namespace A289528.P5223551240340891151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288302 n - (A288303 n - A289529 n)).toNat

end

end A289528.P5223551240340891151

/-!
# A289529: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A289529, there is no canonical definition to state claims against.
-/

/-! ## A289529.P5129694763350593892

`xor(record[A324713(n+1)], A288302(n))`
-/

namespace A289529.P5129694763350593892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288302 n)

end

end A289529.P5129694763350593892

/-! ## A289529.P4911645574190464198

`A288303(n)+A289530(n)-A288302(n)`
-/

namespace A289529.P4911645574190464198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288303 n + (A289530 n - A288302 n)

end

end A289529.P4911645574190464198

/-! ## A289529.P11617683339793612330

`A126646(n)-and(A000225(n), A288302(n))`
-/

namespace A289529.P11617683339793612330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.land (A000225 n) (A288302 n)

end

end A289529.P11617683339793612330

/-! ## A289529.P8001967067824862823

`or(A000051(n), A000225(n))-A288302(n)`
-/

namespace A289529.P8001967067824862823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A000225 n) - A288302 n

end

end A289529.P8001967067824862823

/-! ## A289529.P17150625022084909265

`A127330(A000124(n))-A288302(n)`
-/

namespace A289529.P17150625022084909265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A288302 n

end

end A289529.P17150625022084909265

/-!
# A289530: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 585", based on the 5-celled von Neumann neighborhood.

The programs for A289530, there is no canonical definition to state claims against.
-/

/-! ## A289530.P15400231972676287072

`or(1, A126646(n)-A288303(n))`
-/

namespace A289530.P15400231972676287072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A288303 n)

end

end A289530.P15400231972676287072

/-! ## A289530.P7132278468018465183

`A288302(n)+A289529(n)-A288303(n)`
-/

namespace A289530.P7132278468018465183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288302 n + (A289529 n - A288303 n)

end

end A289530.P7132278468018465183

/-! ## A289530.P10561477402625732098

`or(A000051(n), A000225(n))-A288303(n)`
-/

namespace A289530.P10561477402625732098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000051 n) (A000225 n) - A288303 n

end

end A289530.P10561477402625732098

/-! ## A289530.P17263482428175314635

`A127330(A000124(n))-A288303(n)`
-/

namespace A289530.P17263482428175314635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A288303 n

end

end A289530.P17263482428175314635

/-! ## A289530.P8192288417949867873

`A126646(n)-A288303(n)%A289527(n)`
-/

namespace A289530.P8192288417949867873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288303 n) (A289527 n)

end

end A289530.P8192288417949867873

/-!
# A289531: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A289531, there is no canonical definition to state claims against.
-/

/-! ## A289531.P16842212247010892330

`A007088(A289533(n))`
-/

namespace A289531.P16842212247010892330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289533 n).toNat

end

end A289531.P16842212247010892330

/-! ## A289531.P3400857970013162308

`A305989(A289534(n))`
-/

namespace A289531.P3400857970013162308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289534 n).toNat

end

end A289531.P3400857970013162308

/-! ## A289531.P14928305967940516903

`A185544(2*A289533(n))`
-/

namespace A289531.P14928305967940516903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289533 n).toNat

end

end A289531.P14928305967940516903

/-! ## A289531.P9145207432844284474

`A185544(lcm(2, A289533(n)))`
-/

namespace A289531.P9145207432844284474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289533 n))

end

end A289531.P9145207432844284474

/-! ## A289531.P9528290752259174954

`or(A289465(n), A293881(A000045(n)))`
-/

namespace A289531.P9528290752259174954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289465 n) (A293881 (A000045 n).toNat)

end

end A289531.P9528290752259174954

/-!
# A289532: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A289532, there is no canonical definition to state claims against.
-/

/-! ## A289532.P15058272967763643034

`A007088(A289534(n))`
-/

namespace A289532.P15058272967763643034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289534 n).toNat

end

end A289532.P15058272967763643034

/-! ## A289532.P6073336245447930459

`A305989(A289533(n))`
-/

namespace A289532.P6073336245447930459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289533 n).toNat

end

end A289532.P6073336245447930459

/-! ## A289532.P16040799678386353443

`A185544(2*A289534(n))`
-/

namespace A289532.P16040799678386353443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289534 n).toNat

end

end A289532.P16040799678386353443

/-! ## A289532.P11034130869716874691

`A185544(lcm(2, A289534(n)))`
-/

namespace A289532.P11034130869716874691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289534 n))

end

end A289532.P11034130869716874691

/-! ## A289532.P4494982106974477747

`A185544(A289534(n)+A289534(n))`
-/

namespace A289532.P4494982106974477747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289534 n + A289534 n).toNat

end

end A289532.P4494982106974477747

/-!
# A289533: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A289533, there is no canonical definition to state claims against.
-/

/-! ## A289533.P5683113153875782374

`A030101(A289534(n))`
-/

namespace A289533.P5683113153875782374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A289534 n).toNat

end

end A289533.P5683113153875782374

/-! ## A289533.P2175328449335147872

`A056539(or(1, A289534(n)))`
-/

namespace A289533.P2175328449335147872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (Int.lor 1 (A289534 n)).toNat

end

end A289533.P2175328449335147872

/-! ## A289533.P8086677393174981876

`A057889(or(1, A289534(n)))`
-/

namespace A289533.P8086677393174981876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.lor 1 (A289534 n)).toNat

end

end A289533.P8086677393174981876

/-! ## A289533.P1480710748956744593

`A056539(A289534(n)+char[14])`
-/

namespace A289533.P1480710748956744593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A289534 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A289533.P1480710748956744593

/-! ## A289533.P7370489442909861311

`A057889(A289534(n)+char[14])`
-/

namespace A289533.P7370489442909861311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289534 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A289533.P7370489442909861311

/-!
# A289534: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 587", based on the 5-celled von Neumann neighborhood.

The programs for A289534, there is no canonical definition to state claims against.
-/

/-! ## A289534.P15881948142487375277

`A057889(A289533(n))`
-/

namespace A289534.P15881948142487375277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289533 n).toNat

end

end A289534.P15881948142487375277

/-! ## A289534.P876324058311452969

`A325401(or(1, A289533(n)))`
-/

namespace A289534.P876324058311452969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A289533 n)).toNat

end

end A289534.P876324058311452969

/-! ## A289534.P4117682627069024053

`A325401(lcm((-1)^∑{e}[n+1, #], A289533(n)))`
-/

namespace A289534.P4117682627069024053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A289533 n))

end

end A289534.P4117682627069024053

/-! ## A289534.P17324013191440319662

`A325401(A289533(n)%(floor((sqrt(3)+2)^n)+1))`
-/

namespace A289534.P17324013191440319662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.tmod (A289533 n) (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1)).toNat

end

end A289534.P17324013191440319662

/-! ## A289534.P8955489305890023648

`A325401((n+1)/∏{p}[n+1, gcd((n+1)*(n+2), #²)]*A289533(n))`
-/

namespace A289534.P8955489305890023648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2) : ℕ) : ℚ) * (A289533 n : ℚ))).toNat

end

end A289534.P8955489305890023648

/-!
# A289536: Numbers k such that (4*10^k - 91)/3 is prime.

The programs for A289536, there is no canonical definition to state claims against.
-/

/-! ## A289536.P11071966168112880020

`A128644(A128648(n+1))+A060482(n+1)`
-/

namespace A289536.P11071966168112880020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128644 (A128648 (n + 1)).toNat + A060482 (n + 1)

end

end A289536.P11071966168112880020

/-!
# A289537: Triangle read by rows: T(n,k) is the number of k-dimensional subspaces of an n-dimensional vector space over F_2 that do not contain a given nonzero vector, n>=0, 0<=k<=n.

The programs for A289537, there is no canonical definition to state claims against.
-/

/-! ## A289537.P13845584117799628437

`and(A048266(A022166(n)), A130328(n))`
-/

namespace A289537.P13845584117799628437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048266 (A022166 n).toNat) (A130328 n)

end

end A289537.P13845584117799628437

/-! ## A289537.P2311643401354407495

`and(A048266(A046802(n)), A130328(n))`
-/

namespace A289537.P2311643401354407495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048266 (A046802 n).toNat) (A130328 n)

end

end A289537.P2311643401354407495

/-! ## A289537.P6515311198833216978

`A156552(A037126(n+1)^A071919(n))`
-/

namespace A289537.P6515311198833216978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A071919 n : ℤ))).toNat

end

end A289537.P6515311198833216978

/-! ## A289537.P10130389685901347415

`and(-A059268(n), A176791(A114176(n)+1))`
-/

namespace A289537.P10130389685901347415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A059268 n) (A176791 (A114176 n + 1).toNat)

end

end A289537.P10130389685901347415

/-! ## A289537.P2700323611880958413

`and(-A059268(n), A259361(4*A118185(n)))`
-/

namespace A289537.P2700323611880958413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A059268 n) (A259361 (4 * A118185 n).toNat)

end

end A289537.P2700323611880958413

/-!
# A289539: Number of ways to choose a subspace U of GF(2)^n and then choose a subspace of U.

The programs for A289539, there is no canonical definition to state claims against.
-/

/-! ## A289539.P17274092975409023411

`A382223(A167614(n+2))`
-/

namespace A289539.P17274092975409023411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382223 (A167614 (n + 2)).toNat

end

end A289539.P17274092975409023411

/-! ## A289539.P2078757541320914362

`A382223(A141214(n)+6)`
-/

namespace A289539.P2078757541320914362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382223 (A141214 n + 6).toNat

end

end A289539.P2078757541320914362

/-!
# A289541: Number of subspaces of GF(2)^n with even dimension.

The programs for A289541, there is no canonical definition to state claims against.
-/

/-! ## A289541.P1779640268728372340

`A327927(n)+A002264(A076325(n+1))`
-/

namespace A289541.P1779640268728372340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327927 n + A002264 (A076325 (n + 1)).toNat

end

end A289541.P1779640268728372340

/-! ## A289541.P11115165693203316061

`A179474(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A289541.P11115165693203316061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A179474 (a (n - 1)).toNat

end

end A289541.P11115165693203316061

/-!
# A289542: Number of ordered pairs of nonzero vectors over the subspaces of GF(2)^n.

The programs for A289542, there is no canonical definition to state claims against.
-/

/-! ## A289542.P12493735508336380660

`A218602(∑[A256506(n)])`
-/

namespace A289542.P12493735508336380660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289542.P12493735508336380660

/-!
# A289543: Number of direct sum decompositions of GF(2)^n that do not contain any subspaces of dimension 1.

The programs for A289543, there is no canonical definition to state claims against.
-/

/-! ## A289543.P1067638499219789831

`A287206(∑[n])`
-/

namespace A289543.P1067638499219789831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287206 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289543.P1067638499219789831

/-! ## A289543.P13753867646444529605

`and(-3, A287206(A000217(n)))`
-/

namespace A289543.P13753867646444529605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A287206 (A000217 n).toNat)

end

end A289543.P13753867646444529605

/-! ## A289543.P10206984008161614121

`C(A287206(C(n+1, 2)), A287170(n+1))`
-/

namespace A289543.P10206984008161614121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287206 (Nat.choose (n + 1) 2)).toNat (A287170 (n + 1)).toNat

end

end A289543.P10206984008161614121

/-! ## A289543.P16627536904068846305

`and(A198693(3*n+1), A287206(C(n+1, 2)))`
-/

namespace A289543.P16627536904068846305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198693 (3 * n + 1)) (A287206 (Nat.choose (n + 1) 2))

end

end A289543.P16627536904068846305

/-! ## A289543.P3082037258996027127

`A287170(2*n+3)*A287206((n²+n)*tan(acot(2)))`
-/

namespace A289543.P3082037258996027127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (2 * n + 3) * A287206 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ)))).toNat

end

end A289543.P3082037258996027127

/-!
# A289545: Number of flags in an n-dimensional vector space over GF(2).

The programs for A289545, there is no canonical definition to state claims against.
-/

/-! ## A289545.P14914358037751643411

`A381426(∑[n+3])`
-/

namespace A289545.P14914358037751643411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381426 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A289545.P14914358037751643411

/-! ## A289545.P13915137414962442370

`ceil(A293844(n)/4)`
-/

namespace A289545.P13915137414962442370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293844 n : ℚ) / 4⌉

end

end A289545.P13915137414962442370

/-! ## A289545.P16211201180782846351

`floor(A291168(n)+A293844(n)/4)`
-/

namespace A289545.P16211201180782846351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A291168 n : ℚ) + (A293844 n : ℚ) / 4⌋

end

end A289545.P16211201180782846351

/-! ## A289545.P340169863097742272

`floor(A239700(n+1)+A293844(n)/4)`
-/

namespace A289545.P340169863097742272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239700 (n + 1) : ℚ) + (A293844 n : ℚ) / 4⌋

end

end A289545.P340169863097742272

/-! ## A289545.P4183215149983153288

`floor(A293844(n)/4-A008683(A084503(n)))`
-/

namespace A289545.P4183215149983153288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293844 n : ℚ) / 4 - (A008683 (A084503 n).toNat : ℚ)⌋

end

end A289545.P4183215149983153288

/-!
# A289546: Triangle read by rows. T(n,k) is the number of flags in an n dimensional vector space over GF(2) that have length exactly k, n >= 0, 0 <= k <= n.

The programs for A289546, there is no canonical definition to state claims against.
-/

/-! ## A289546.P18405307131393041922

`A089861(A270882(n))`
-/

namespace A289546.P18405307131393041922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089861 (A270882 n).toNat

end

end A289546.P18405307131393041922

/-! ## A289546.P17036898206289682518

`A339970(A226874(n)^6)`
-/

namespace A289546.P17036898206289682518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339970 (A226874 n ^ 6).toNat

end

end A289546.P17036898206289682518

/-! ## A289546.P7623255340554185400

`A339970(A257783(n)^6)`
-/

namespace A289546.P7623255340554185400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339970 (A257783 n ^ 6).toNat

end

end A289546.P7623255340554185400

/-! ## A289546.P13569507088308772562

`A161210(floor(sqrt(A323128(n))))`
-/

namespace A289546.P13569507088308772562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161210 (Int.sqrt (A323128 n)).toNat

end

end A289546.P13569507088308772562

/-! ## A289546.P2823577003717610465

`A161210(round(sqrt(A323128(n))))`
-/

namespace A289546.P2823577003717610465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161210 (SequenceMachineLib.roundAway (Real.sqrt (A323128 n : ℝ))).toNat

end

end A289546.P2823577003717610465

/-!
# A289548: The lesser of two semiprime brothers.

The programs for A289548, there is no canonical definition to state claims against.
-/

/-! ## A289548.P2091629416873572122

`A115654(A134703(2*(n+2)))`
-/

namespace A289548.P2091629416873572122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115654 (A134703 (2 * (n + 2))).toNat

end

end A289548.P2091629416873572122

/-!
# A289549: 

The programs for A289549, there is no canonical definition to state claims against.
-/

/-! ## A289549.P15979215293491150708

`A085158(A279646(n+1))-3`
-/

namespace A289549.P15979215293491150708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A279646 (n + 1)).toNat - 3

end

end A289549.P15979215293491150708

/-!
# A289550: Primes of the form k!6-4, where k!6 is the sextuple factorial number (A085158).

The programs for A289550, there is no canonical definition to state claims against.
-/

/-! ## A289550.P5006656696614682269

`p?[A085158(n)-4]`
-/

namespace A289550.P5006656696614682269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289550.P5006656696614682269

/-! ## A289550.P11505477043900941453

`A085158(A289547(n+1))-4`
-/

namespace A289550.P11505477043900941453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A289547 (n + 1)).toNat - 4

end

end A289550.P11505477043900941453

/-! ## A289550.P6519670221570217009

`p?[A129116(A028310(n)+A000217(n+4))-4]`
-/

namespace A289550.P6519670221570217009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A028310 n + A000217 (n + 4)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289550.P6519670221570217009

/-!
# A289553: Numbers that are not the product of two distinct noncomposite numbers (A008578).

The programs for A289553, the canonical program `A289553.P10222352224202675943` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289553 has offset 1).

The definition of A289553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289553.P9168214186093111646

`eq[0, A353471(n+1)]+1`
-/

namespace A289553.P9168214186093111646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289553.P9168214186093111646

namespace A289553

/-- `eq[0, A353471(n+1)]+1` -/
def P9168214186093111646.Spec : Prop :=
  ∀ n, (P9168214186093111646.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P3418695891600266488

`comp[A167171(n+1)-1]+1`
-/

namespace A289553.P3418695891600266488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A289553.P3418695891600266488

namespace A289553

/-- `comp[A167171(n+1)-1]+1` -/
def P3418695891600266488.Spec : Prop :=
  ∀ n, (P3418695891600266488.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P10222352224202675943

`∪[(n+1)², A033942(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A289553

/-- `∪[(n+1)², A033942(n+1)]` -/
def P10222352224202675943.Spec : Prop :=
  ∀ n, (P10222352224202675943.a n : ℤ) = A289553 (n + 1)

theorem P10222352224202675943.correct : P10222352224202675943.Spec := by
  intro n
  simp only [A289553, Nat.add_sub_cancel]

end A289553

/-! ## A289553.P16061014954561587656

`∪[(n+1)², A111087(n+1)]`
-/

namespace A289553.P16061014954561587656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P16061014954561587656

namespace A289553

/-- `∪[(n+1)², A111087(n+1)]` -/
def P16061014954561587656.Spec : Prop :=
  ∀ n, (P16061014954561587656.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P6675862030065816341

`∪[A111087(n+1), A034023(n)]`
-/

namespace A289553.P6675862030065816341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P6675862030065816341

namespace A289553

/-- `∪[A111087(n+1), A034023(n)]` -/
def P6675862030065816341.Spec : Prop :=
  ∀ n, (P6675862030065816341.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P8188372399236831277

`∪[A111087(n+1), A034038(n)]`
-/

namespace A289553.P8188372399236831277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P8188372399236831277

namespace A289553

/-- `∪[A111087(n+1), A034038(n)]` -/
def P8188372399236831277.Spec : Prop :=
  ∀ n, (P8188372399236831277.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P11807896013154971894

`∪[A001597(n+1), A007624(n+1)]`
-/

namespace A289553.P11807896013154971894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P11807896013154971894

namespace A289553

/-- `∪[A001597(n+1), A007624(n+1)]` -/
def P11807896013154971894.Spec : Prop :=
  ∀ n, (P11807896013154971894.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P14488247683339007622

`∪[A001694(n+1), A007624(n+1)]`
-/

namespace A289553.P14488247683339007622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P14488247683339007622

namespace A289553

/-- `∪[A001694(n+1), A007624(n+1)]` -/
def P14488247683339007622.Spec : Prop :=
  ∀ n, (P14488247683339007622.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P15896161210469149299

`filter[A246716(n+1), A005171(#)]`
-/

namespace A289553.P15896161210469149299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A289553.P15896161210469149299

namespace A289553

/-- `filter[A246716(n+1), A005171(#)]` -/
def P15896161210469149299.Spec : Prop :=
  ∀ n, P15896161210469149299.a n = A289553 (n + 1)

end A289553

/-! ## A289553.P11442964862131803745

`∩[A018252(n+1), A246716(n+1)]`
-/

namespace A289553.P11442964862131803745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P11442964862131803745

namespace A289553

/-- `∩[A018252(n+1), A246716(n+1)]` -/
def P11442964862131803745.Spec : Prop :=
  ∀ n, (P11442964862131803745.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P16492191043793042929

`∩[A141468(n+1), A246716(n+1)]`
-/

namespace A289553.P16492191043793042929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289553.P16492191043793042929

namespace A289553

/-- `∩[A141468(n+1), A246716(n+1)]` -/
def P16492191043793042929.Spec : Prop :=
  ∀ n, (P16492191043793042929.a n : ℤ) = A289553 (n + 1)

end A289553

/-! ## A289553.P3227530135833245061

`lt[A230594(n+1), 2]+1`
-/

namespace A289553.P3227530135833245061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230594 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289553.P3227530135833245061

namespace A289553

/-- `lt[A230594(n+1), 2]+1` -/
def P3227530135833245061.Spec : Prop :=
  ∀ n, (P3227530135833245061.a n : ℤ) = A289553 (n + 1)

end A289553

/-!
# A289554: Numbers that are the product of two distinct composite numbers (A002808).

The programs for A289554, the canonical program `A289554.P7471265002348983110` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289554 has offset 1).

The definition of A289554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289554.P7471265002348983110

`∪[A046304(n+1), A307342(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A289554

/-- `∪[A046304(n+1), A307342(n+1)]` -/
def P7471265002348983110.Spec : Prop :=
  ∀ n, (P7471265002348983110.a n : ℤ) = A289554 (n + 1)

theorem P7471265002348983110.correct : P7471265002348983110.Spec := by
  intro n
  simp only [A289554, Nat.add_sub_cancel]

end A289554

/-! ## A289554.P9990091651653842054

`lt[13, A074206(n)]`
-/

namespace A289554.P9990091651653842054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289554.P9990091651653842054

namespace A289554

/-- `lt[13, A074206(n)]` -/
def P9990091651653842054.Spec : Prop :=
  ∀ n, (P9990091651653842054.a n : ℤ) = A289554 (n + 1)

end A289554

/-! ## A289554.P13418856582640050998

`lt[2, A339890(n+1)]+1`
-/

namespace A289554.P13418856582640050998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289554.P13418856582640050998

namespace A289554

/-- `lt[2, A339890(n+1)]+1` -/
def P13418856582640050998.Spec : Prop :=
  ∀ n, (P13418856582640050998.a n : ℤ) = A289554 (n + 1)

end A289554

/-! ## A289554.P2892928614522900987

`∩[A033987(n+1), A088383(n+1)]`
-/

namespace A289554.P2892928614522900987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289554.P2892928614522900987

namespace A289554

/-- `∩[A033987(n+1), A088383(n+1)]` -/
def P2892928614522900987.Spec : Prop :=
  ∀ n, (P2892928614522900987.a n : ℤ) = A289554 (n + 1)

end A289554

/-! ## A289554.P15451715224185992759

`lt[7, A160086(n)]`
-/

namespace A289554.P15451715224185992759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289554.P15451715224185992759

namespace A289554

/-- `lt[7, A160086(n)]` -/
def P15451715224185992759.Spec : Prop :=
  ∀ n, (P15451715224185992759.a n : ℤ) = A289554 (n + 1)

end A289554

/-! ## A289554.P472056976900430193

`lt[19, A104725(n)]`
-/

namespace A289554.P472056976900430193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A289554.P472056976900430193

namespace A289554

/-- `lt[19, A104725(n)]` -/
def P472056976900430193.Spec : Prop :=
  ∀ n, (P472056976900430193.a n : ℤ) = A289554 (n + 1)

end A289554

/-! ## A289554.P2142224114490280035

`lt[13, A002033(n)]+1`
-/

namespace A289554.P2142224114490280035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289554.P2142224114490280035

namespace A289554

/-- `lt[13, A002033(n)]+1` -/
def P2142224114490280035.Spec : Prop :=
  ∀ n, (P2142224114490280035.a n : ℤ) = A289554 (n + 1)

end A289554

/-! ## A289554.P4133045579853966187

`lt[1, A050372(n+1)]+1`
-/

namespace A289554.P4133045579853966187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289554.P4133045579853966187

namespace A289554

/-- `lt[1, A050372(n+1)]+1` -/
def P4133045579853966187.Spec : Prop :=
  ∀ n, (P4133045579853966187.a n : ℤ) = A289554 (n + 1)

end A289554

/-! ## A289554.P8722385318229623568

`lt[1, A122179(n+1)]+1`
-/

namespace A289554.P8722385318229623568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289554.P8722385318229623568

namespace A289554

/-- `lt[1, A122179(n+1)]+1` -/
def P8722385318229623568.Spec : Prop :=
  ∀ n, (P8722385318229623568.a n : ℤ) = A289554 (n + 1)

end A289554

/-! ## A289554.P6445782344142784354

`lt[2, A306345(n+1)]+1`
-/

namespace A289554.P6445782344142784354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A289554.P6445782344142784354

namespace A289554

/-- `lt[2, A306345(n+1)]+1` -/
def P6445782344142784354.Spec : Prop :=
  ∀ n, (P6445782344142784354.a n : ℤ) = A289554 (n + 1)

end A289554

/-!
# A289555: Numbers that are not the product of two distinct composite numbers (A002808).

The programs for A289555, the canonical program `A289555.P9214579124908911506` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289555 has offset 1).

The definition of A289555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6428 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289555.P7453097520435360332

`lt[A380218(n), 5]+1`
-/

namespace A289555.P7453097520435360332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289555.P7453097520435360332

namespace A289555

/-- `lt[A380218(n), 5]+1` -/
def P7453097520435360332.Spec : Prop :=
  ∀ n, (P7453097520435360332.a n : ℤ) = A289555 (n + 1)

end A289555

/-! ## A289555.P1676347084879765909

`lt[1, C(14, A074206(n))]`
-/

namespace A289555.P1676347084879765909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 14 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A289555.P1676347084879765909

namespace A289555

/-- `lt[1, C(14, A074206(n))]` -/
def P1676347084879765909.Spec : Prop :=
  ∀ n, (P1676347084879765909.a n : ℤ) = A289555 (n + 1)

end A289555

/-! ## A289555.P9867468574405141951

`lt[A002033(n), 14]+1`
-/

namespace A289555.P9867468574405141951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289555.P9867468574405141951

namespace A289555

/-- `lt[A002033(n), 14]+1` -/
def P9867468574405141951.Spec : Prop :=
  ∀ n, (P9867468574405141951.a n : ℤ) = A289555 (n + 1)

end A289555

/-! ## A289555.P7222189733237233808

`lt[A050372(n+1), 2]+1`
-/

namespace A289555.P7222189733237233808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289555.P7222189733237233808

namespace A289555

/-- `lt[A050372(n+1), 2]+1` -/
def P7222189733237233808.Spec : Prop :=
  ∀ n, (P7222189733237233808.a n : ℤ) = A289555 (n + 1)

end A289555

/-! ## A289555.P9214579124908911506

`lt[A122179(n+1), 2]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A289555

/-- `lt[A122179(n+1), 2]+1` -/
def P9214579124908911506.Spec : Prop :=
  ∀ n, (P9214579124908911506.a n : ℤ) = A289555 (n + 1)

theorem P9214579124908911506.correct : P9214579124908911506.Spec := by
  intro n
  simp only [A289555, Nat.add_sub_cancel]

end A289555

/-! ## A289555.P11952508325952899807

`lt[(A160085(n)/25)², n]`
-/

namespace A289555.P11952508325952899807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A160085 n : ℚ) / 25) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A289555.P11952508325952899807

namespace A289555

/-- `lt[(A160085(n)/25)², n]` -/
def P11952508325952899807.Spec : Prop :=
  ∀ n, (P11952508325952899807.a n : ℤ) = A289555 (n + 1)

end A289555

/-! ## A289555.P825498122207156947

`lt[A324326(n+1), 2]+1`
-/

namespace A289555.P825498122207156947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324326 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A289555.P825498122207156947

namespace A289555

/-- `lt[A324326(n+1), 2]+1` -/
def P825498122207156947.Spec : Prop :=
  ∀ n, (P825498122207156947.a n : ℤ) = A289555 (n + 1)

end A289555

/-!
# A289556: Primes p such that both 5*p - 4 and 4*p - 5 are prime.

The programs for A289556, there is no canonical definition to state claims against.
-/

/-! ## A289556.P4363152959317363026

`∩[A136051(n+1), A156300(n+1)]`
-/

namespace A289556.P4363152959317363026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289556.P4363152959317363026

/-! ## A289556.P14676201993218606524

`∩[A136051(n+1), A156287(n+1)]`
-/

namespace A289556.P14676201993218606524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289556.P14676201993218606524

/-! ## A289556.P5964674376354501679

`∩[A005099(n+1)+1, A136051(n+1)]`
-/

namespace A289556.P5964674376354501679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289556.P5964674376354501679

/-! ## A289556.P14054042611148579226

`∩[A095278(n+1)+2, A136051(n+1)]`
-/

namespace A289556.P14054042611148579226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289556.P14054042611148579226

/-! ## A289556.P1146159227482567396

`p?[A341615(n+1)-A271344(2*n+1)]`
-/

namespace A289556.P1146159227482567396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341615 (n + 1) - A271344 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A289556.P1146159227482567396

/-!
# A289558: Numbers with two distinct prime factors not divisible by a square larger than 4.

The programs for A289558, the canonical program `A289558.P3835344173252596639` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289558 has offset 1).

The definition of A289558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289558.P2846162305986240834

`eq[3, A345266(2*(n+2))]+2`
-/

namespace A289558.P2846162305986240834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345266 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A289558.P2846162305986240834

namespace A289558

/-- `eq[3, A345266(2*(n+2))]+2` -/
def P2846162305986240834.Spec : Prop :=
  ∀ n, (P2846162305986240834.a n : ℤ) = A289558 (n + 1)

end A289558

/-! ## A289558.P13767342034563823972

`∪[A006881(n+1), A100368(n+1)]`
-/

namespace A289558.P13767342034563823972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A289558.P13767342034563823972

namespace A289558

/-- `∪[A006881(n+1), A100368(n+1)]` -/
def P13767342034563823972.Spec : Prop :=
  ∀ n, (P13767342034563823972.a n : ℤ) = A289558 (n + 1)

end A289558

/-! ## A289558.P3835344173252596639

`∪[A046388(n+1), A100368(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A289558

/-- `∪[A046388(n+1), A100368(n+1)]` -/
def P3835344173252596639.Spec : Prop :=
  ∀ n, (P3835344173252596639.a n : ℤ) = A289558 (n + 1)

theorem P3835344173252596639.correct : P3835344173252596639.Spec := by
  intro n
  simp only [A289558, Nat.add_sub_cancel]

end A289558

/-! ## A289558.P5632282161046498286

`filter[A084227(n+1), A353627(#)]`
-/

namespace A289558.P5632282161046498286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A289558.P5632282161046498286

namespace A289558

/-- `filter[A084227(n+1), A353627(#)]` -/
def P5632282161046498286.Spec : Prop :=
  ∀ n, P5632282161046498286.a n = A289558 (n + 1)

end A289558

/-! ## A289558.P3695460960452489872

`filter[A007774(n+1), A353627(#)]`
-/

namespace A289558.P3695460960452489872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A289558.P3695460960452489872

namespace A289558

/-- `filter[A007774(n+1), A353627(#)]` -/
def P3695460960452489872.Spec : Prop :=
  ∀ n, P3695460960452489872.a n = A289558 (n + 1)

end A289558

/-! ## A289558.P2124354647129150219

`filter[A267114(n+2), A353627(#)]`
-/

namespace A289558.P2124354647129150219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A289558.P2124354647129150219

namespace A289558

/-- `filter[A267114(n+2), A353627(#)]` -/
def P2124354647129150219.Spec : Prop :=
  ∀ n, P2124354647129150219.a n = A289558 (n + 1)

end A289558

/-! ## A289558.P13237391973783425941

`eq[4, A349355(n+1)]+1`
-/

namespace A289558.P13237391973783425941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289558.P13237391973783425941

namespace A289558

/-- `eq[4, A349355(n+1)]+1` -/
def P13237391973783425941.Spec : Prop :=
  ∀ n, (P13237391973783425941.a n : ℤ) = A289558 (n + 1)

end A289558

/-! ## A289558.P6297247477673579648

`eq[A040001(n), A318451(n+1)]+1`
-/

namespace A289558.P6297247477673579648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A289558.P6297247477673579648

namespace A289558

/-- `eq[A040001(n), A318451(n+1)]+1` -/
def P6297247477673579648.Spec : Prop :=
  ∀ n, (P6297247477673579648.a n : ℤ) = A289558 (n + 1)

end A289558

/-! ## A289558.P14111638231556218047

`∩[A007774(n+1), A122132(n+1)]`
-/

namespace A289558.P14111638231556218047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289558.P14111638231556218047

namespace A289558

/-- `∩[A007774(n+1), A122132(n+1)]` -/
def P14111638231556218047.Spec : Prop :=
  ∀ n, (P14111638231556218047.a n : ℤ) = A289558 (n + 1)

end A289558

/-! ## A289558.P4831067048541859437

`∩[A084227(n+1), A122132(n+1)]`
-/

namespace A289558.P4831067048541859437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289558.P4831067048541859437

namespace A289558

/-- `∩[A084227(n+1), A122132(n+1)]` -/
def P4831067048541859437.Spec : Prop :=
  ∀ n, (P4831067048541859437.a n : ℤ) = A289558 (n + 1)

end A289558

/-! ## A289558.P8142055215737805426

`A181569(eq[A040001(n), A318451(n+1)])`
-/

namespace A289558.P8142055215737805426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A289558.P8142055215737805426

namespace A289558

/-- `A181569(eq[A040001(n), A318451(n+1)])` -/
def P8142055215737805426.Spec : Prop :=
  ∀ n, P8142055215737805426.a n = A289558 (n + 1)

end A289558

/-! ## A289558.P16780381695066894130

`filter[A122132(n+1), A215480(#)]`
-/

namespace A289558.P16780381695066894130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A289558.P16780381695066894130

namespace A289558

/-- `filter[A122132(n+1), A215480(#)]` -/
def P16780381695066894130.Spec : Prop :=
  ∀ n, P16780381695066894130.a n = A289558 (n + 1)

end A289558

/-! ## A289558.P5097858625155890165

`eq[A000034(n+1), A318451(n+1)]+1`
-/

namespace A289558.P5097858625155890165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A289558.P5097858625155890165

namespace A289558

/-- `eq[A000034(n+1), A318451(n+1)]+1` -/
def P5097858625155890165.Spec : Prop :=
  ∀ n, (P5097858625155890165.a n : ℤ) = A289558 (n + 1)

end A289558

/-! ## A289558.P10133957543046988528

`eq[A000034(n), A318451(A008574(n))]`
-/

namespace A289558.P10133957543046988528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A289558.P10133957543046988528

namespace A289558

/-- `eq[A000034(n), A318451(A008574(n))]` -/
def P10133957543046988528.Spec : Prop :=
  ∀ n, (P10133957543046988528.a n : ℤ) = A289558 (n + 1)

end A289558

/-! ## A289558.P11588001022215581347

`eq[4, A349355(A233583(n+1))]`
-/

namespace A289558.P11588001022215581347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349355 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A289558.P11588001022215581347

namespace A289558

/-- `eq[4, A349355(A233583(n+1))]` -/
def P11588001022215581347.Spec : Prop :=
  ∀ n, (P11588001022215581347.a n : ℤ) = A289558 (n + 1)

end A289558

/-!
# A289572: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A289572, there is no canonical definition to state claims against.
-/

/-! ## A289572.P17313917524409453809

`A007088(A289574(n))`
-/

namespace A289572.P17313917524409453809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289574 n).toNat

end

end A289572.P17313917524409453809

/-! ## A289572.P11956848643110364780

`A185544(2*A289574(n))`
-/

namespace A289572.P11956848643110364780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289574 n).toNat

end

end A289572.P11956848643110364780

/-! ## A289572.P7578366531039537856

`A185544(A289574(n)+A289574(n))`
-/

namespace A289572.P7578366531039537856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A289574 n + A289574 n).toNat

end

end A289572.P7578366531039537856

/-! ## A289572.P12508805316933583936

`A289405(n)+A000035(A002807(n))`
-/

namespace A289572.P12508805316933583936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289405 n + A000035 (A002807 n).toNat

end

end A289572.P12508805316933583936

/-! ## A289572.P2552925700955682640

`A289405(n)+A178112(A285019(n))`
-/

namespace A289572.P2552925700955682640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289405 n + A178112 (A285019 n).toNat

end

end A289572.P2552925700955682640

/-!
# A289573: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A289573, there is no canonical definition to state claims against.
-/

/-! ## A289573.P11998050476795378791

`A007088(A289575(n))`
-/

namespace A289573.P11998050476795378791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289575 n).toNat

end

end A289573.P11998050476795378791

/-! ## A289573.P8250146324441060951

`A305989(A289574(n)/A184318(n+1))`
-/

namespace A289573.P8250146324441060951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289574 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289573.P8250146324441060951

/-! ## A289573.P9089446771310000189

`A305989(A289574(n)/A319907(n+2))`
-/

namespace A289573.P9089446771310000189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A289574 n : ℚ) / (A319907 (n + 2) : ℚ))).toNat

end

end A289573.P9089446771310000189

/-! ## A289573.P8694510547843582692

`A305989(A289574(n))`
-/

namespace A289573.P8694510547843582692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289574 n).toNat

end

end A289573.P8694510547843582692

/-! ## A289573.P3011922086261296204

`A185544(2*A289575(n))`
-/

namespace A289573.P3011922086261296204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289575 n).toNat

end

end A289573.P3011922086261296204

/-!
# A289574: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A289574, there is no canonical definition to state claims against.
-/

/-! ## A289574.P18329858842184798016

`A122746(n)+A000035(A002807(n))`
-/

namespace A289574.P18329858842184798016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n + A000035 (A002807 n).toNat

end

end A289574.P18329858842184798016

/-! ## A289574.P3765608111175477308

`A122746(n)+A010051(A003319(n))`
-/

namespace A289574.P3765608111175477308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n + A010051 (A003319 n).toNat

end

end A289574.P3765608111175477308

/-! ## A289574.P16843217861973341953

`A178112(A285019(n))+A122746(n)`
-/

namespace A289574.P16843217861973341953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (A285019 n).toNat + A122746 n

end

end A289574.P16843217861973341953

/-! ## A289574.P12393422370603368857

`A333382(A289575(n))+A122746(n)`
-/

namespace A289574.P12393422370603368857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A289575 n).toNat + A122746 n

end

end A289574.P12393422370603368857

/-! ## A289574.P16883521120357506013

`A327974(A327998(n))+A122746(n)`
-/

namespace A289574.P16883521120357506013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327974 (A327998 n).toNat + A122746 n

end

end A289574.P16883521120357506013

/-!
# A289575: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 589", based on the 5-celled von Neumann neighborhood.

The programs for A289575, there is no canonical definition to state claims against.
-/

/-! ## A289575.P6627980981445650355

`A325401(A289574(n)/A184318(n+1))`
-/

namespace A289575.P6627980981445650355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289574 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289575.P6627980981445650355

/-! ## A289575.P16441719889218230093

`A325401(A289574(n)/A319907(n+1))`
-/

namespace A289575.P16441719889218230093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A289574 n : ℚ) / (A319907 (n + 1) : ℚ))).toNat

end

end A289575.P16441719889218230093

/-! ## A289575.P3372183106416734540

`A325401(A289574(n))`
-/

namespace A289575.P3372183106416734540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289574 n).toNat

end

end A289575.P3372183106416734540

/-! ## A289575.P136887133311013843

`A030101(A289574(n)/A184318(n+1))`
-/

namespace A289575.P136887133311013843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289574 n : ℚ) / (A184318 (n + 1) : ℚ))).toNat

end

end A289575.P136887133311013843

/-! ## A289575.P3221934630352694211

`A030101(A289574(n)/A319907(n+2))`
-/

namespace A289575.P3221934630352694211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A289574 n : ℚ) / (A319907 (n + 2) : ℚ))).toNat

end

end A289575.P3221934630352694211

/-!
# A289576: Number of cyclically 5-connected simple cubic graphs on 2n vertices.

The programs for A289576, there is no canonical definition to state claims against.
-/

/-! ## A289576.P17778621810624660668

`A338867(comp[5*or(1, n+1)])+n²`
-/

namespace A289576.P17778621810624660668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lor 1 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338867 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (n ^ 2 : ℤ)

end

end A289576.P17778621810624660668

/-!
# A289577: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A289577, there is no canonical definition to state claims against.
-/

/-! ## A289577.P17062291377391578467

`A000042(n+1)*A054977(n)-A288494(n)`
-/

namespace A289577.P17062291377391578467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A054977 n - A288494 n

end

end A289577.P17062291377391578467

/-! ## A289577.P10857883102053830828

`A000042(n+1)*A054977(n)-A007088(A288496(n))`
-/

namespace A289577.P10857883102053830828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A054977 n - A007088 (A288496 n).toNat

end

end A289577.P10857883102053830828

/-! ## A289577.P17824601122592153340

`A007088(A289579(n))`
-/

namespace A289577.P17824601122592153340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289579 n).toNat

end

end A289577.P17824601122592153340

/-! ## A289577.P7280304165680972050

`A007088(A095121(n)+1-A288496(n))`
-/

namespace A289577.P7280304165680972050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288496 n)).toNat

end

end A289577.P7280304165680972050

/-! ## A289577.P7817149696543564433

`A007088(1-(A288496(n)-A095121(n)))`
-/

namespace A289577.P7817149696543564433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288496 n - A095121 n)).toNat

end

end A289577.P7817149696543564433

/-!
# A289578: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A289578, there is no canonical definition to state claims against.
-/

/-! ## A289578.P6762217613676469579

`A288494(n)+A289577(n)-A288495(n)`
-/

namespace A289578.P6762217613676469579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288494 n + (A289577 n - A288495 n)

end

end A289578.P6762217613676469579

/-! ## A289578.P13963860661561270862

`A000042(n+1)*A054977(n)-A288495(n)`
-/

namespace A289578.P13963860661561270862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A054977 n - A288495 n

end

end A289578.P13963860661561270862

/-! ## A289578.P2322354228819050216

`A007088(A289580(n))`
-/

namespace A289578.P2322354228819050216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289580 n).toNat

end

end A289578.P2322354228819050216

/-! ## A289578.P18093738409104191958

`A007088(A095121(n)+1-A288497(n))`
-/

namespace A289578.P18093738409104191958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288497 n)).toNat

end

end A289578.P18093738409104191958

/-! ## A289578.P1278086740410565040

`A007088(1-(A288497(n)-A095121(n)))`
-/

namespace A289578.P1278086740410565040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288497 n - A095121 n)).toNat

end

end A289578.P1278086740410565040

/-!
# A289579: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A289579, there is no canonical definition to state claims against.
-/

/-! ## A289579.P11365923785274879056

`A095121(n)+1-A288496(n)`
-/

namespace A289579.P11365923785274879056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288496 n)

end

end A289579.P11365923785274879056

/-! ## A289579.P10942745291521948712

`xor(record[A324821(n+1)], A288496(n))`
-/

namespace A289579.P10942745291521948712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288496 n)

end

end A289579.P10942745291521948712

/-! ## A289579.P16300372062917755075

`xor(A288496(n), A324821(A008578(n+1)))`
-/

namespace A289579.P16300372062917755075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288496 n) (A324821 (A008578 (n + 1)).toNat)

end

end A289579.P16300372062917755075

/-! ## A289579.P17376161123221414826

`A288497(n)+A289580(n)-A288496(n)`
-/

namespace A289579.P17376161123221414826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288497 n + (A289580 n - A288496 n)

end

end A289579.P17376161123221414826

/-! ## A289579.P11047430621028927129

`A127330(A000124(n))-A288496(n)`
-/

namespace A289579.P11047430621028927129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A288496 n

end

end A289579.P11047430621028927129

/-!
# A289580: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 593", based on the 5-celled von Neumann neighborhood.

The programs for A289580, there is no canonical definition to state claims against.
-/

/-! ## A289580.P8322672403845126975

`A095121(n)+1-A288497(n)`
-/

namespace A289580.P8322672403845126975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288497 n)

end

end A289580.P8322672403845126975

/-! ## A289580.P13656683780138595353

`xor(A288497(n), A324821(A008578(n+1)))`
-/

namespace A289580.P13656683780138595353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288497 n) (A324821 (A008578 (n + 1)).toNat)

end

end A289580.P13656683780138595353

/-! ## A289580.P17776203026560261509

`A288496(n)+A289579(n)-A288497(n)`
-/

namespace A289580.P17776203026560261509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288496 n + (A289579 n - A288497 n)

end

end A289580.P17776203026560261509

/-! ## A289580.P9861518449066060049

`Δ[A151821(n+1)]-(A288497(n)+1)`
-/

namespace A289580.P9861518449066060049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A288497 n + 1)

end

end A289580.P9861518449066060049

/-! ## A289580.P12844278994485222496

`A127330(A000124(n))-A288497(n)`
-/

namespace A289580.P12844278994485222496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A288497 n

end

end A289580.P12844278994485222496

/-!
# A289581: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A289581, there is no canonical definition to state claims against.
-/

/-! ## A289581.P2144428243418396791

`A007088(A289583(n))`
-/

namespace A289581.P2144428243418396791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289583 n).toNat

end

end A289581.P2144428243418396791

/-! ## A289581.P3499311817818038911

`A305989(A289584(n))`
-/

namespace A289581.P3499311817818038911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289584 n).toNat

end

end A289581.P3499311817818038911

/-! ## A289581.P3766423172255878597

`A185544(2*A289583(n))`
-/

namespace A289581.P3766423172255878597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289583 n).toNat

end

end A289581.P3766423172255878597

/-! ## A289581.P7311386058425939663

`A185544(lcm(2, A289583(n)))`
-/

namespace A289581.P7311386058425939663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289583 n))

end

end A289581.P7311386058425939663

/-!
# A289582: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A289582, there is no canonical definition to state claims against.
-/

/-! ## A289582.P15414808933492673263

`A007088(A289584(n))`
-/

namespace A289582.P15414808933492673263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289584 n).toNat

end

end A289582.P15414808933492673263

/-! ## A289582.P4967596474766043515

`A305989(A289583(n))`
-/

namespace A289582.P4967596474766043515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A289583 n).toNat

end

end A289582.P4967596474766043515

/-! ## A289582.P10086784050374147131

`A185544(2*A289584(n))`
-/

namespace A289582.P10086784050374147131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289584 n).toNat

end

end A289582.P10086784050374147131

/-! ## A289582.P10481444507946597781

`A185544(lcm(2, A289584(n)))`
-/

namespace A289582.P10481444507946597781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A289584 n))

end

end A289582.P10481444507946597781

/-! ## A289582.P14342000256762837701

`A305989(or(A158117(n), A288975(n)))`
-/

namespace A289582.P14342000256762837701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor (A158117 n) (A288975 n)).toNat

end

end A289582.P14342000256762837701

/-!
# A289583: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A289583, there is no canonical definition to state claims against.
-/

/-! ## A289583.P12824960193376657707

`A057889(A289584(n))`
-/

namespace A289583.P12824960193376657707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289584 n).toNat

end

end A289583.P12824960193376657707

/-! ## A289583.P15232020317361020387

`A057889(A289882(n))-A099306(A099307(n+1))`
-/

namespace A289583.P15232020317361020387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289882 n).toNat - A099306 (A099307 (n + 1)).toNat

end

end A289583.P15232020317361020387

/-! ## A289583.P7463672995282606584

`A030101(2*A289584(n))`
-/

namespace A289583.P7463672995282606584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A289584 n).toNat

end

end A289583.P7463672995282606584

/-! ## A289583.P2822017078896646518

`A281589(2*A289584(n))`
-/

namespace A289583.P2822017078896646518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A289584 n).toNat

end

end A289583.P2822017078896646518

/-! ## A289583.P5653832222870571255

`A325401(2*A289584(n))`
-/

namespace A289583.P5653832222870571255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A289584 n).toNat

end

end A289583.P5653832222870571255

/-!
# A289584: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 595", based on the 5-celled von Neumann neighborhood.

The programs for A289584, there is no canonical definition to state claims against.
-/

/-! ## A289584.P17380765773505109361

`A057889(A289583(n))`
-/

namespace A289584.P17380765773505109361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A289583 n).toNat

end

end A289584.P17380765773505109361

/-! ## A289584.P17007182196049086733

`A325401(or(1, A289583(n)))`
-/

namespace A289584.P17007182196049086733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A289583 n)).toNat

end

end A289584.P17007182196049086733

/-! ## A289584.P12612335860790367898

`A325401(A289583(n)+A000007(n))`
-/

namespace A289584.P12612335860790367898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289583 n + A000007 n).toNat

end

end A289584.P12612335860790367898

/-! ## A289584.P15560859740132386919

`A325401(A289583(n)+A025443(n))`
-/

namespace A289584.P15560859740132386919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289583 n + A025443 n).toNat

end

end A289584.P15560859740132386919

/-! ## A289584.P16655112446995758589

`A325401(A289583(n)+A185255(n))`
-/

namespace A289584.P16655112446995758589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A289583 n + A185255 n).toNat

end

end A289584.P16655112446995758589

/-!
# A289585: Quotients as they appear as k increases when tau(k) divides phi(k).

The programs for A289585, the canonical program `A289585.P5960087080967793466` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289585 has offset 1).

The definition of A289585 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A020491, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289585.P5960087080967793466

`A000010(A020491(n+1))/A000005(A020491(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A289585

/-- `A000010(A020491(n+1))/A000005(A020491(n+1))` -/
def P5960087080967793466.Spec : Prop :=
  ∀ n, P5960087080967793466.a n = (A289585 (n + 1) : ℚ)

end A289585

/-! ## A289585.P8684556519118671503

`A279287(A020491(n+1))`
-/

namespace A289585.P8684556519118671503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279287 (A020491 (n + 1)).toNat

end

end A289585.P8684556519118671503

namespace A289585

/-- `A279287(A020491(n+1))` -/
def P8684556519118671503.Spec : Prop :=
  ∀ n, P8684556519118671503.a n = A289585 (n + 1)

end A289585

/-! ## A289585.P4804415813120893772

`A279287(eq[1, A279288(n+1)]+1)`
-/

namespace A289585.P4804415813120893772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279287 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A289585.P4804415813120893772

namespace A289585

/-- `A279287(eq[1, A279288(n+1)]+1)` -/
def P4804415813120893772.Spec : Prop :=
  ∀ n, P4804415813120893772.a n = A289585 (n + 1)

end A289585

/-! ## A289585.P559281838398155019

`A279287(record[(n+1)/A279288(n+1)])`
-/

namespace A289585.P559281838398155019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A279288 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279287 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A289585.P559281838398155019

namespace A289585

/-- `A279287(record[(n+1)/A279288(n+1)])` -/
def P559281838398155019.Spec : Prop :=
  ∀ n, P559281838398155019.a n = A289585 (n + 1)

end A289585

/-!
# A289586: Numbers k whose smallest multiple that is a Fibonacci number is Fibonacci(k).

The programs for A289586, the canonical program `A289586.P18278495137004132385` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289586 has offset 1).

The definition of A289586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289586.P12205230912019150907

`ogf((1+5x+7x^2)/(1-5x^2))`
-/

namespace A289586.P12205230912019150907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 7] [1, 0, -5] n

end

end A289586.P12205230912019150907

namespace A289586

/-- `ogf((1+5x+7x^2)/(1-5x^2))` -/
def P12205230912019150907.Spec : Prop :=
  ∀ n, P12205230912019150907.a n = A289586 (n + 1)

end A289586

/-! ## A289586.P18278495137004132385

`5*a(n-2)` with `a(0)=1, a(1)=5, a(2)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A289586

/-- `5*a(n-2)` -/
def P18278495137004132385.Spec : Prop :=
  ∀ n, (P18278495137004132385.a n : ℤ) = A289586 (n + 1)

theorem P18278495137004132385.correct : P18278495137004132385.Spec := by
  intro n
  simp only [A289586, Nat.add_sub_cancel]

end A289586

/-! ## A289586.P6688297280530407254

`a(n-2)+a(n-2)/(1/2)²` with `a(0)=1, a(1)=5, a(2)=12`
-/

namespace A289586.P6688297280530407254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5, 12] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A289586.P6688297280530407254

namespace A289586

/-- `a(n-2)+a(n-2)/(1/2)²` -/
def P6688297280530407254.Spec : Prop :=
  ∀ n, P6688297280530407254.a n = (A289586 (n + 1) : ℚ)

end A289586

/-! ## A289586.P15002753837824990476

`∩[A105953(n+1), A108201(n+1)]`
-/

namespace A289586.P15002753837824990476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A289586.P15002753837824990476

namespace A289586

/-- `∩[A105953(n+1), A108201(n+1)]` -/
def P15002753837824990476.Spec : Prop :=
  ∀ n, (P15002753837824990476.a n : ℤ) = A289586 (n + 1)

end A289586

/-! ## A289586.P4797557430615317282

`record[A127739(A133819(n+1))*A191702(n+1)]`
-/

namespace A289586.P4797557430615317282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A133819 (n + 1)).toNat * A191702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A289586.P4797557430615317282

namespace A289586

/-- `record[A127739(A133819(n+1))*A191702(n+1)]` -/
def P4797557430615317282.Spec : Prop :=
  ∀ n, P4797557430615317282.a n = A289586 (n + 1)

end A289586

/-!
# A289587: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 174) or the same sequence for the mesh pattern (12, 234).

The programs for A289587, there is no canonical definition to state claims against.
-/

/-! ## A289587.P12532170172276884623

`A363462(A152046(n))`
-/

namespace A289587.P12532170172276884623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363462 (A152046 n).toNat

end

end A289587.P12532170172276884623

/-! ## A289587.P4986527713585228843

`A268273(A060775(n!))`
-/

namespace A289587.P4986527713585228843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268273 (A060775 (Nat.factorial n)).toNat

end

end A289587.P4986527713585228843

/-! ## A289587.P11485190689078600669

`A006856(A152046(n)+1)`
-/

namespace A289587.P11485190689078600669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006856 (A152046 n + 1).toNat

end

end A289587.P11485190689078600669

/-! ## A289587.P4430788534450115124

`A267597(2*A000212(n))`
-/

namespace A289587.P4430788534450115124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267597 (2 * A000212 n).toNat

end

end A289587.P4430788534450115124

/-!
# A289588: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 117) or the same sequence for the mesh patterns (12, 213), (12, 342), (12, 348).

The programs for A289588, there is no canonical definition to state claims against.
-/

/-! ## A289588.P6826138151609560808

`A110656(A057786(n+1)+3)`
-/

namespace A289588.P6826138151609560808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A057786 (n + 1) + 3).toNat

end

end A289588.P6826138151609560808

/-! ## A289588.P1609892068576331933

`A260317(A001384(n))`
-/

namespace A289588.P1609892068576331933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A001384 n).toNat

end

end A289588.P1609892068576331933

/-! ## A289588.P1865966168723386134

`A260317(A036622(n))`
-/

namespace A289588.P1865966168723386134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A036622 n).toNat

end

end A289588.P1865966168723386134

/-! ## A289588.P17166672321590779135

`A241953(A298415(n))`
-/

namespace A289588.P17166672321590779135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241953 (A298415 n).toNat

end

end A289588.P17166672321590779135

/-!
# A289589: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 165) or the same sequence for the mesh patterns (12, 167), (12, 225), (12, 233), (12, 270), (12, 302), (12, 330), (12, 458).

The programs for A289589, the canonical program `A289589.P10535227749720856808` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289589 has offset 0).

The definition of A289589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135336, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A289589.P10535227749720856808

`A000108(n)-A135336(n)+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A289589

/-- `A000108(n)-A135336(n)+1` -/
def P10535227749720856808.Spec : Prop :=
  ∀ n, P10535227749720856808.a n = A289589 n

theorem P10535227749720856808.correct : P10535227749720856808.Spec := by
  intro n
  simp only [A289589]

end A289589

/-! ## A289589.P2986373631983708106

`(A289448(n)+1)/2`
-/

namespace A289589.P2986373631983708106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289448 n + 1 : ℚ) / 2

end

end A289589.P2986373631983708106

namespace A289589

/-- `(A289448(n)+1)/2` -/
def P2986373631983708106.Spec : Prop :=
  ∀ n, P2986373631983708106.a n = (A289589 n : ℚ)

theorem P2986373631983708106.correct : P2986373631983708106.Spec := by
  intro n
  simp only [A289589, Nat.add_sub_cancel, A289589.P2986373631983708106.a, A289589.P10535227749720856808.a, A000108, A000108.P17551949696095299361.a, A135336, A135336.P8279202122990715746.f1, A135336.P8279202122990715746.a, A289448, A289448.P5757188125060123569.a, A000957, A000957.P17024256012114130201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A289589

/-! ## A289589.P1351590825571155672

`A000108(n)-∑[A000957(n+1)]+1`
-/

namespace A289589.P1351590825571155672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A289589.P1351590825571155672

namespace A289589

/-- `A000108(n)-∑[A000957(n+1)]+1` -/
def P1351590825571155672.Spec : Prop :=
  ∀ n, P1351590825571155672.a n = A289589 n

end A289589

/-! ## A289589.P11610394047016637646

`A193215(n+1)+A000108(n)-A014137(n)`
-/

namespace A289589.P11610394047016637646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193215 (n + 1) + (A000108 n - A014137 n)

end

end A289589.P11610394047016637646

namespace A289589

/-- `A193215(n+1)+A000108(n)-A014137(n)` -/
def P11610394047016637646.Spec : Prop :=
  ∀ n, P11610394047016637646.a n = A289589 n

end A289589

/-! ## A289589.P13552350989333300344

`A026641(n+1)+A000108(n)-A079309(n+1)`
-/

namespace A289589.P13552350989333300344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 (n + 1) + (A000108 n - A079309 (n + 1))

end

end A289589.P13552350989333300344

namespace A289589

/-- `A026641(n+1)+A000108(n)-A079309(n+1)` -/
def P13552350989333300344.Spec : Prop :=
  ∀ n, P13552350989333300344.a n = A289589 n

end A289589

/-! ## A289589.P14734821979483808082

`A120305(n+1)+A000108(n)-A306409(n+1)`
-/

namespace A289589.P14734821979483808082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120305 (n + 1) + (A000108 n - A306409 (n + 1))

end

end A289589.P14734821979483808082

namespace A289589

/-- `A120305(n+1)+A000108(n)-A306409(n+1)` -/
def P14734821979483808082.Spec : Prop :=
  ∀ n, P14734821979483808082.a n = A289589 n

end A289589

/-! ## A289589.P1432386764517908217

`∑[A167769(∑[2*n]+1)]`
-/

namespace A289589.P1432386764517908217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167769 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289589.P1432386764517908217

namespace A289589

/-- `∑[A167769(∑[2*n]+1)]` -/
def P1432386764517908217.Spec : Prop :=
  ∀ n, P1432386764517908217.a n = A289589 n

end A289589

/-!
# A289590: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 179) or the same sequence for the mesh patterns (12, 185), (12, 314), (12, 410).

The programs for A289590, there is no canonical definition to state claims against.
-/

/-! ## A289590.P8423473754838770241

`A289595(n)+A289598(n)-A289601(n)`
-/

namespace A289590.P8423473754838770241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289595 n + A289598 n - A289601 n

end

end A289590.P8423473754838770241

/-! ## A289590.P15112022343996158834

`A162226(A148339(n))`
-/

namespace A289590.P15112022343996158834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A148339 n).toNat

end

end A289590.P15112022343996158834

/-! ## A289590.P12080785074559052166

`A162226(A148340(n))`
-/

namespace A289590.P12080785074559052166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A148340 n).toNat

end

end A289590.P12080785074559052166

/-! ## A289590.P14091370210785814310

`A162226(A148341(n))`
-/

namespace A289590.P14091370210785814310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A148341 n).toNat

end

end A289590.P14091370210785814310

/-!
# A289591: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 171) or the same sequence for the mesh pattern (12, 426).

The programs for A289591, there is no canonical definition to state claims against.
-/

/-! ## A289591.P3765214413597638502

`A195174(A133494(n)+A114515(n))`
-/

namespace A289591.P3765214413597638502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A133494 n + A114515 n).toNat

end

end A289591.P3765214413597638502

/-! ## A289591.P11026951755713314815

`A114627(A289207(n))%A095613(n)`
-/

namespace A289591.P11026951755713314815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114627 (A289207 n).toNat) (A095613 n)

end

end A289591.P11026951755713314815

/-! ## A289591.P3049826397862332285

`A328451(A071879(n))`
-/

namespace A289591.P3049826397862332285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328451 (A071879 n).toNat

end

end A289591.P3049826397862332285

/-! ## A289591.P11334131814984141206

`A265370(A288708(n!))`
-/

namespace A289591.P11334131814984141206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A288708 (Nat.factorial n)).toNat

end

end A289591.P11334131814984141206

/-!
# A289592: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 187) or the same sequence for the mesh pattern (12, 442).

The programs for A289592, there is no canonical definition to state claims against.
-/

/-! ## A289592.P16479860868554709578

`A088004(A279566(n)+A091255(3*n+2))`
-/

namespace A289592.P16479860868554709578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A279566 n + A091255 (3 * n + 2)).toNat

end

end A289592.P16479860868554709578

/-! ## A289592.P8661443495523033366

`A265370(A056576(n!))`
-/

namespace A289592.P8661443495523033366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A056576 (Nat.factorial n)).toNat

end

end A289592.P8661443495523033366

/-! ## A289592.P361134170335451127

`A265370(A172272(n!))`
-/

namespace A289592.P361134170335451127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A172272 (Nat.factorial n)).toNat

end

end A289592.P361134170335451127

/-! ## A289592.P10269216169701483604

`A054404(A333107(n)+3)`
-/

namespace A289592.P10269216169701483604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A333107 n + 3).toNat

end

end A289592.P10269216169701483604

/-!
# A289593: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 175) or the same sequence for the mesh patterns (12, 235), (12, 430), (12, 490).

The programs for A289593, there is no canonical definition to state claims against.
-/

/-! ## A289593.P10462680152413926378

`A103221(∑[record[A156906(n)]]-1)`
-/

namespace A289593.P10462680152413926378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A289593.P10462680152413926378

/-! ## A289593.P14969847150853882119

`A103221(∑[record[A156906(n+4)]])`
-/

namespace A289593.P14969847150853882119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156906 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A289593.P14969847150853882119

/-! ## A289593.P6359212926184675079

`A157271(A360233(n))`
-/

namespace A289593.P6359212926184675079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A360233 n).toNat

end

end A289593.P6359212926184675079

/-! ## A289593.P11326212455057044901

`A054404(A344500(n)+2)`
-/

namespace A289593.P11326212455057044901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A344500 n + 2).toNat

end

end A289593.P11326212455057044901

/-!
# A289594: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 267) or the same sequence for the mesh pattern (12, 417).

The programs for A289594, there is no canonical definition to state claims against.
-/

/-! ## A289594.P5907333682711636661

`A289596(n)+A289597(n)-A289598(n)`
-/

namespace A289594.P5907333682711636661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289596 n + A289597 n - A289598 n

end

end A289594.P5907333682711636661

/-! ## A289594.P17685356815373735185

`A008647(A001353(n)-n²)`
-/

namespace A289594.P17685356815373735185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A001353 n - (n ^ 2 : ℤ)).toNat

end

end A289594.P17685356815373735185

/-! ## A289594.P4390561421499871853

`A008679(A001353(n)-n²)`
-/

namespace A289594.P4390561421499871853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A001353 n - (n ^ 2 : ℤ)).toNat

end

end A289594.P4390561421499871853

/-! ## A289594.P12268893236628503580

`A081753(A001353(n)-n²)`
-/

namespace A289594.P12268893236628503580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A001353 n - (n ^ 2 : ℤ)).toNat

end

end A289594.P12268893236628503580

/-!
# A289595: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 189) or the same sequence for the mesh patterns (12, 243), (12, 378), (12, 414).

The programs for A289595, there is no canonical definition to state claims against.
-/

/-! ## A289595.P4627722974493645676

`A289590(n)-A289598(n)+A289601(n)`
-/

namespace A289595.P4627722974493645676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289590 n - A289598 n + A289601 n

end

end A289595.P4627722974493645676

/-! ## A289595.P1606857614300896143

`A000006(A084784(n)-A122056(n))`
-/

namespace A289595.P1606857614300896143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A084784 n - A122056 n).toNat

end

end A289595.P1606857614300896143

/-!
# A289596: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 299) or the same sequence for the mesh patterns (12, 395), (12, 419), (12, 425).

The programs for A289596, there is no canonical definition to state claims against.
-/

/-! ## A289596.P6307966462989458459

`A289594(n)+A289598(n)-A289597(n)`
-/

namespace A289596.P6307966462989458459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289594 n + A289598 n - A289597 n

end

end A289596.P6307966462989458459

/-! ## A289596.P8199853117138813716

`A147534(A289597(n))`
-/

namespace A289596.P8199853117138813716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (A289597 n).toNat

end

end A289596.P8199853117138813716

/-! ## A289596.P6518724698611024035

`A289597(n)-A010059(A076508(n+1))`
-/

namespace A289596.P6518724698611024035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289597 n - A010059 (A076508 (n + 1)).toNat

end

end A289596.P6518724698611024035

/-!
# A289597: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 271) or the same sequence for the mesh patterns (12, 303), (12, 331), (12, 421), (12, 423), (12, 459), (12, 481), (12, 489).

The programs for A289597, the canonical program `A289597.P14791546879681151293` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289597 has offset 0).

The definition of A289597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289597.P14791546879681151293

`Δ[A192480(n)]-A166444(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289597

/-- `Δ[A192480(n)]-A166444(n)` -/
def P14791546879681151293.Spec : Prop :=
  ∀ n, P14791546879681151293.a n = A289597 n

theorem P14791546879681151293.correct : P14791546879681151293.Spec := by
  intro n
  simp only [A289597]

end A289597

/-! ## A289597.P4529364597205840121

`A289594(n)+A289598(n)-A289596(n)`
-/

namespace A289597.P4529364597205840121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289594 n + (A289598 n - A289596 n)

end

end A289597.P4529364597205840121

namespace A289597

/-- `A289594(n)+A289598(n)-A289596(n)` -/
def P4529364597205840121.Spec : Prop :=
  ∀ n, P4529364597205840121.a n = A289597 n

end A289597

/-! ## A289597.P2155300325312452373

`A248635(A221586(n))`
-/

namespace A289597.P2155300325312452373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248635 (A221586 n).toNat

end

end A289597.P2155300325312452373

namespace A289597

/-- `A248635(A221586(n))` -/
def P2155300325312452373.Spec : Prop :=
  ∀ n, P2155300325312452373.a n = A289597 n

end A289597

/-!
# A289598: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 363) or the same sequence for the mesh patterns (12, 399), (12, 429), (12, 483).

The programs for A289598, the canonical program `A289598.P8514294268036489134` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A289598 has offset 0).

The definition of A289598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A289598.P7536108321686631812

`A289601(n)+A289590(n)-A289595(n)`
-/

namespace A289598.P7536108321686631812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289601 n + A289590 n - A289595 n

end

end A289598.P7536108321686631812

namespace A289598

/-- `A289601(n)+A289590(n)-A289595(n)` -/
def P7536108321686631812.Spec : Prop :=
  ∀ n, P7536108321686631812.a n = A289598 n

end A289598

/-! ## A289598.P18194414318803958101

`Δ[(4-6/n)*a(n-1)]-n+2` with `a(0)=2, a(1)=1`
-/

namespace A289598.P18194414318803958101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℚ) + 2

end

end A289598.P18194414318803958101

namespace A289598

/-- `Δ[(4-6/n)*a(n-1)]-n+2` -/
def P18194414318803958101.Spec : Prop :=
  ∀ n, P18194414318803958101.a n = (A289598 n : ℚ)

end A289598

/-! ## A289598.P8514294268036489134

`Δ[record[A097331(n)+n]]-n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A289598

/-- `Δ[record[A097331(n)+n]]-n` -/
def P8514294268036489134.Spec : Prop :=
  ∀ n, P8514294268036489134.a n = A289598 n

theorem P8514294268036489134.correct : P8514294268036489134.Spec := by
  intro n
  simp only [A289598]

end A289598

/-! ## A289598.P4839812544115236586

`A289596(n)+A289597(n)-A289594(n)`
-/

namespace A289598.P4839812544115236586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289596 n + (A289597 n - A289594 n)

end

end A289598.P4839812544115236586

namespace A289598

/-- `A289596(n)+A289597(n)-A289594(n)` -/
def P4839812544115236586.Spec : Prop :=
  ∀ n, P4839812544115236586.a n = A289598 n

end A289598

/-! ## A289598.P9193392787900658874

`A289600(n+1)+A000108(n)-A289652(n+1)`
-/

namespace A289598.P9193392787900658874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289600 (n + 1) + (A000108 n - A289652 (n + 1))

end

end A289598.P9193392787900658874

namespace A289598

/-- `A289600(n+1)+A000108(n)-A289652(n+1)` -/
def P9193392787900658874.Spec : Prop :=
  ∀ n, P9193392787900658874.a n = A289598 n

end A289598

/-! ## A289598.P17875585187915811334

`A122919(C(n, 2))-floor(n-atan(n))`
-/

namespace A289598.P17875585187915811334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122919 (Nat.choose n 2) - ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A289598.P17875585187915811334

namespace A289598

/-- `A122919(C(n, 2))-floor(n-atan(n))` -/
def P17875585187915811334.Spec : Prop :=
  ∀ n, P17875585187915811334.a n = A289598 n

end A289598

/-!
# A289599: a(n) is the number of permutations of length n that avoid the pattern 321 and the mesh pattern (12, 245) or the same sequence for the mesh pattern (12, 350).

The programs for A289599, there is no canonical definition to state claims against.
-/

/-! ## A289599.P3289288604944216363

`A000213(lt[n*gcd(5, n%2), 12])`
-/

namespace A289599.P3289288604944216363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 5 (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A289599.P3289288604944216363

/-! ## A289599.P5651215813703328133

`A000213(lt[Δ[n*ceil(n/2)], 7])`
-/

namespace A289599.P5651215813703328133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A289599.P5651215813703328133

/-! ## A289599.P3095998783849819880

`A000213(A252464(n!))`
-/

namespace A289599.P3095998783849819880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (A252464 (Nat.factorial n)).toNat

end

end A289599.P3095998783849819880

/-! ## A289599.P1355729841794950250

`A000213(A324861(n!))`
-/

namespace A289599.P1355729841794950250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (A324861 (Nat.factorial n)).toNat

end

end A289599.P1355729841794950250

