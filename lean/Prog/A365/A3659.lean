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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A365900: Highly composite numbers k that remain highly composite when recursively divided by squarefree kernel.

The programs for A365900, there is no canonical definition to state claims against.
-/

/-! ## A365900.P10271158057500335147

`filter[A387560(n+1), A322586(#)]`
-/

namespace A365900.P10271158057500335147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A365900.P10271158057500335147

/-! ## A365900.P17110149671694936196

`record[A139770(record[A366439(n+1)])]`
-/

namespace A365900.P17110149671694936196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366439 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365900.P17110149671694936196

/-! ## A365900.P7430256083547386422

`record[gcd(5*n*(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4), A123258(n+1))]`
-/

namespace A365900.P7430256083547386422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * ((n : ℤ) * (((5 * n : ℤ) - 1) * (((5 * n : ℤ) - 2) * (((5 * n : ℤ) - 3) * ((5 * n : ℤ) - 4)))))) (A123258 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365900.P7430256083547386422

/-! ## A365900.P2470342086565145977

`record[A123258(A193671(n+1))]`
-/

namespace A365900.P2470342086565145977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A193671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A365900.P2470342086565145977

/-! ## A365900.P17636509573723632986

`A002182(lt[A350016(n), A237711(n)])`
-/

namespace A365900.P17636509573723632986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A365900.P17636509573723632986

/-!
# A365902: Irregular triangle of highly composite numbers h(n) = A002182(n) arranged first according to rad(h(n))/h(n) then by rad(h(n)), where rad(n) = A007947(n).

The programs for A365902, there is no canonical definition to state claims against.
-/

/-! ## A365902.P4309430485552872671

`∏{e}[2^n*n!, A224964(#)]`
-/

namespace A365902.P4309430485552872671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A224964 (Nat.factorization (f1 n) p)

end

end A365902.P4309430485552872671

/-! ## A365902.P1860872328135031707

`filter[A351500(n+1), A168182(#)]`
-/

namespace A365902.P1860872328135031707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A365902.P1860872328135031707

/-! ## A365902.P9396565328594538475

`filter[A351500(n+1), A336477(#)]`
-/

namespace A365902.P9396565328594538475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A365902.P9396565328594538475

/-! ## A365902.P13923153521132593272

`filter[A351500(n+1), A340375(#)]`
-/

namespace A365902.P13923153521132593272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A365902.P13923153521132593272

/-!
# A365903: Number of partitions of [n] whose block minima sum to k, where k is chosen so as to maximize this number.

The programs for A365903, there is no canonical definition to state claims against.
-/

/-! ## A365903.P15837567567129167072

`A264749(A001004(n+1))`
-/

namespace A365903.P15837567567129167072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A001004 (n + 1)).toNat

end

end A365903.P15837567567129167072

/-!
# A365904: Triangle read by rows T(n,k) = n^2 - binomial(k+1,2), n>=1, k<n.

The programs for A365904, the canonical program `A365904.P6336361738146058348` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365904 has offset 1).

The definition of A365904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)²-C(col(n)+1, 2)` (program `A365904.P6336361738146058348`, by `A365904.P6336361738146058348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A365904.P6336361738146058348

`(row(n)+1)²-C(col(n)+1, 2)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365904

/-- `(row(n)+1)²-C(col(n)+1, 2)` -/
def P6336361738146058348.Spec : Prop :=
  ∀ n, P6336361738146058348.a n = A365904 (n + 1)

theorem P6336361738146058348.correct : P6336361738146058348.Spec := by
  intro n
  simp only [A365904, Nat.add_sub_cancel]

end A365904

/-! ## A365904.P15664838975522092327

`(row(n)+1)²-∑{#}[col(n), #]`
-/

namespace A365904.P15664838975522092327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) ^ 2 : ℤ) - ((∑ k ∈ Finset.range (f1 n + 1), k : ℕ) : ℤ)

end

end A365904.P15664838975522092327

namespace A365904

/-- `(row(n)+1)²-∑{#}[col(n), #]` -/
def P15664838975522092327.Spec : Prop :=
  ∀ n, P15664838975522092327.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P11519210832917427851

`(row(n)+1)²-col(n)*(col(n)+1)/2`
-/

namespace A365904.P11519210832917427851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) ^ 2 : ℚ) - (SequenceMachineLib.triCol n * (SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A365904.P11519210832917427851

namespace A365904

/-- `(row(n)+1)²-col(n)*(col(n)+1)/2` -/
def P11519210832917427851.Spec : Prop :=
  ∀ n, P11519210832917427851.a n = (A365904 (n + 1) : ℚ)

theorem P11519210832917427851.correct : P11519210832917427851.Spec := by
  intro n
  simp only [A365904, Nat.add_sub_cancel, A365904.P11519210832917427851.a, A365904.P6336361738146058348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A365904

/-! ## A365904.P16176238730578625898

`(row(n)+1)²-A000217(col(n))`
-/

namespace A365904.P16176238730578625898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) ^ 2 : ℤ) - A000217 (SequenceMachineLib.triCol n)

end

end A365904.P16176238730578625898

namespace A365904

/-- `(row(n)+1)²-A000217(col(n))` -/
def P16176238730578625898.Spec : Prop :=
  ∀ n, P16176238730578625898.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P11970627133866236320

`A057944(n)+A049777(n+1)`
-/

namespace A365904.P11970627133866236320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A049777 (n + 1)

end

end A365904.P11970627133866236320

namespace A365904

/-- `A057944(n)+A049777(n+1)` -/
def P11970627133866236320.Spec : Prop :=
  ∀ n, P11970627133866236320.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P2671067583678248140

`A127739(n+1)+A049780(n)`
-/

namespace A365904.P2671067583678248140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + A049780 n

end

end A365904.P2671067583678248140

namespace A365904

/-- `A127739(n+1)+A049780(n)` -/
def P2671067583678248140.Spec : Prop :=
  ∀ n, P2671067583678248140.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P10471728144596615281

`A131783(n+1)+A083920(n)`
-/

namespace A365904.P10471728144596615281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) + A083920 n

end

end A365904.P10471728144596615281

namespace A365904

/-- `A131783(n+1)+A083920(n)` -/
def P10471728144596615281.Spec : Prop :=
  ∀ n, P10471728144596615281.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P17613053526380248437

`A093995(n+1)-A112367(n)`
-/

namespace A365904.P17613053526380248437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A112367 n

end

end A365904.P17613053526380248437

namespace A365904

/-- `A093995(n+1)-A112367(n)` -/
def P17613053526380248437.Spec : Prop :=
  ∀ n, P17613053526380248437.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P10910836806168730754

`A002024(n+1)²-A112367(n)`
-/

namespace A365904.P10910836806168730754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - A112367 n

end

end A365904.P10910836806168730754

namespace A365904

/-- `A002024(n+1)²-A112367(n)` -/
def P10910836806168730754.Spec : Prop :=
  ∀ n, P10910836806168730754.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P3925598792078292000

`A095831(n+1)+A070543(n+1)`
-/

namespace A365904.P3925598792078292000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + A070543 (n + 1)

end

end A365904.P3925598792078292000

namespace A365904

/-- `A095831(n+1)+A070543(n+1)` -/
def P3925598792078292000.Spec : Prop :=
  ∀ n, P3925598792078292000.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P18128812147007256162

`A141419(n+1)+A095834(n+1)`
-/

namespace A365904.P18128812147007256162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + A095834 (n + 1)

end

end A365904.P18128812147007256162

namespace A365904

/-- `A141419(n+1)+A095834(n+1)` -/
def P18128812147007256162.Spec : Prop :=
  ∀ n, P18128812147007256162.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P13135815789118803376

`A141418(n+1)+A128140(n+1)`
-/

namespace A365904.P13135815789118803376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + A128140 (n + 1)

end

end A365904.P13135815789118803376

namespace A365904

/-- `A141418(n+1)+A128140(n+1)` -/
def P13135815789118803376.Spec : Prop :=
  ∀ n, P13135815789118803376.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P16551076174205410161

`A217575(n+1)-A134464(n+1)`
-/

namespace A365904.P16551076174205410161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - A134464 (n + 1)

end

end A365904.P16551076174205410161

namespace A365904

/-- `A217575(n+1)-A134464(n+1)` -/
def P16551076174205410161.Spec : Prop :=
  ∀ n, P16551076174205410161.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P12635063071741803343

`A004736(n+1)+A049780(n)+n`
-/

namespace A365904.P12635063071741803343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A049780 n + (n : ℤ))

end

end A365904.P12635063071741803343

namespace A365904

/-- `A004736(n+1)+A049780(n)+n` -/
def P12635063071741803343.Spec : Prop :=
  ∀ n, P12635063071741803343.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P16958616352274331171

`A049777(n+1)+n-A002262(n)`
-/

namespace A365904.P16958616352274331171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + ((n : ℤ) - A002262 n)

end

end A365904.P16958616352274331171

namespace A365904

/-- `A049777(n+1)+n-A002262(n)` -/
def P16958616352274331171.Spec : Prop :=
  ∀ n, P16958616352274331171.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P18076247036600298575

`A064801(n+1)+A049780(n)-n`
-/

namespace A365904.P18076247036600298575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) + (A049780 n - (n : ℤ))

end

end A365904.P18076247036600298575

namespace A365904

/-- `A064801(n+1)+A049780(n)-n` -/
def P18076247036600298575.Spec : Prop :=
  ∀ n, P18076247036600298575.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P13215863971314408808

`A038722(n+1)+n-A112367(n)`
-/

namespace A365904.P13215863971314408808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + ((n : ℤ) - A112367 n)

end

end A365904.P13215863971314408808

namespace A365904

/-- `A038722(n+1)+n-A112367(n)` -/
def P13215863971314408808.Spec : Prop :=
  ∀ n, P13215863971314408808.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P12446096461439984283

`A002024(n+1)²-A000217(A002262(n))`
-/

namespace A365904.P12446096461439984283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 - A000217 (A002262 n).toNat

end

end A365904.P12446096461439984283

namespace A365904

/-- `A002024(n+1)²-A000217(A002262(n))` -/
def P12446096461439984283.Spec : Prop :=
  ∀ n, P12446096461439984283.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P3761670440202596712

`A127739(n+1)+A057944(n)-A112367(n)`
-/

namespace A365904.P3761670440202596712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (A057944 n - A112367 n)

end

end A365904.P3761670440202596712

namespace A365904

/-- `A127739(n+1)+A057944(n)-A112367(n)` -/
def P3761670440202596712.Spec : Prop :=
  ∀ n, P3761670440202596712.a n = A365904 (n + 1)

end A365904

/-! ## A365904.P2869175875636921562

`A004202(n+1)-A000217(abs(A140756(n+1)))`
-/

namespace A365904.P2869175875636921562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - A000217 |A140756 (n + 1)|.toNat

end

end A365904.P2869175875636921562

namespace A365904

/-- `A004202(n+1)-A000217(abs(A140756(n+1)))` -/
def P2869175875636921562.Spec : Prop :=
  ∀ n, P2869175875636921562.a n = A365904 (n + 1)

end A365904

/-!
# A365905: "2-peloton numbers": Numbers that appear at least twice in A365904.

The programs for A365905, the canonical program `A365905.P3279008836788023306` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365905 has offset 1).

The definition of A365905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365905.P3279008836788023306

`lt[2, abs(A161516(n))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A365905

/-- `lt[2, abs(A161516(n))]` -/
def P3279008836788023306.Spec : Prop :=
  ∀ n, (P3279008836788023306.a n : ℤ) = A365905 (n + 1)

theorem P3279008836788023306.correct : P3279008836788023306.Spec := by
  intro n
  simp only [A365905, Nat.add_sub_cancel]

end A365905

/-! ## A365905.P5745700155186531973

`lt[13, A161516(n+1)²]+1`
-/

namespace A365905.P5745700155186531973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161516 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A365905.P5745700155186531973

namespace A365905

/-- `lt[13, A161516(n+1)²]+1` -/
def P5745700155186531973.Spec : Prop :=
  ∀ n, (P5745700155186531973.a n : ℤ) = A365905 (n + 1)

end A365905

/-! ## A365905.P15318424992939883830

`eq[2, A161516(abs(A161516(n)))]`
-/

namespace A365905.P15318424992939883830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161516 |A161516 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A365905.P15318424992939883830

namespace A365905

/-- `eq[2, A161516(abs(A161516(n)))]` -/
def P15318424992939883830.Spec : Prop :=
  ∀ n, (P15318424992939883830.a n : ℤ) = A365905 (n + 1)

end A365905

/-!
# A365907: Smallest nonnegative integer that is not the sum of fewer than n signed Lucas numbers.

The programs for A365907, the canonical program `A365907.P11629397997815418526` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365907 has offset 0).

The definition of A365907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365907.P11629397997815418526

`ogf((x-6x^3-x^4)/(1-5x+3x^2+x^3))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365907

/-- `ogf((x-6x^3-x^4)/(1-5x+3x^2+x^3))` -/
def P11629397997815418526.Spec : Prop :=
  ∀ n, P11629397997815418526.a n = A365907 n

theorem P11629397997815418526.correct : P11629397997815418526.Spec := by
  intro n
  simp only [A365907]

end A365907

/-! ## A365907.P13464955136751658209

`∑[A085856(A003945(n+1)²)]`
-/

namespace A365907.P13464955136751658209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 (A003945 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365907.P13464955136751658209

namespace A365907

/-- `∑[A085856(A003945(n+1)²)]` -/
def P13464955136751658209.Spec : Prop :=
  ∀ n, P13464955136751658209.a n = A365907 n

end A365907

/-!
# A365909: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(5*k+2) / (5*k+2)! ).

The programs for A365909, there is no canonical definition to state claims against.
-/

/-! ## A365909.P11379117444351245966

`A365979(n)^A239608(A000164(n))`
-/

namespace A365909.P11379117444351245966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365979 n : ℚ) ^ (A239608 (A000164 n).toNat : ℤ)

end

end A365909.P11379117444351245966

/-! ## A365909.P5018624123204392666

`A368028(A000009(2*(n+2))-A255123(n))`
-/

namespace A365909.P5018624123204392666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368028 (A000009 (2 * (n + 2)) - A255123 n).toNat

end

end A365909.P5018624123204392666

/-! ## A365909.P77253493834262070

`A365979(n)^A327334(A051953(3*n+5))`
-/

namespace A365909.P77253493834262070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365979 n : ℚ) ^ (A327334 (A051953 (3 * n + 5)).toNat : ℤ)

end

end A365909.P77253493834262070

/-! ## A365909.P6720758737196962301

`C(A090932(n), A090932(A010846(3*n+5)))`
-/

namespace A365909.P6720758737196962301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A090932 n).toNat (A090932 (A010846 (3 * n + 5)).toNat).toNat

end

end A365909.P6720758737196962301

/-!
# A365911: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(4*k+3) / (4*k+3)! ).

The programs for A365911, there is no canonical definition to state claims against.
-/

/-! ## A365911.P15094998131335324806

`A365912(C(A023052(n+1), A276921(2*(n+2))))`
-/

namespace A365911.P15094998131335324806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365912 (Nat.choose (A023052 (n + 1)).toNat (A276921 (2 * (n + 2))).toNat)

end

end A365911.P15094998131335324806

/-!
# A365912: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(5*k+3) / (5*k+3)! ).

The programs for A365912, there is no canonical definition to state claims against.
-/

/-! ## A365912.P12977213006530018090

`A365911(A282377(n+1)+A169885(n))`
-/

namespace A365912.P12977213006530018090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365911 (A282377 (n + 1) + A169885 n).toNat

end

end A365912.P12977213006530018090

/-!
# A365913: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(3*k+4) / (3*k+4)! ).

The programs for A365913, there is no canonical definition to state claims against.
-/

/-! ## A365913.P12423745105276147833

`A112828(A365894(n))`
-/

namespace A365913.P12423745105276147833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 (A365894 n).toNat

end

end A365913.P12423745105276147833

/-! ## A365913.P13271484291502371286

`A073203(A000011(n))*A365894(n)`
-/

namespace A365913.P13271484291502371286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073203 (A000011 n).toNat * A365894 n

end

end A365913.P13271484291502371286

/-! ## A365913.P5894522313255279768

`A365894(n)*A384877(A365925(n))`
-/

namespace A365913.P5894522313255279768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365894 n * A384877 (A365925 n).toNat

end

end A365913.P5894522313255279768

/-! ## A365913.P11628906527645656436

`A026741(A365894(n)*A400111(2*n+3))`
-/

namespace A365913.P11628906527645656436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A365894 n * A400111 (2 * n + 3)).toNat

end

end A365913.P11628906527645656436

/-! ## A365913.P3990969157608606784

`A344178(A157469(n+1))`
-/

namespace A365913.P3990969157608606784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344178 (A157469 (n + 1)).toNat

end

end A365913.P3990969157608606784

/-!
# A365914: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(5*k+4) / (5*k+4)! ).

The programs for A365914, there is no canonical definition to state claims against.
-/

/-! ## A365914.P2259164152383576356

`C(∏{digits}[n, gcd(#, #!²)], A334968(10*n))`
-/

namespace A365914.P2259164152383576356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod (A334968 (10 * n)).toNat

end

end A365914.P2259164152383576356

/-! ## A365914.P15691203857769770734

`C(and(n, -n), A047053(a(n-1)+1))` with `a(0)=1`
-/

namespace A365914.P15691203857769770734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (Int.land (n : ℤ) (-(n : ℤ))).toNat (A047053 (a (n - 1) + 1)).toNat

end

end A365914.P15691203857769770734

/-! ## A365914.P10182754511485594039

`A076837(A121875(n+1))`
-/

namespace A365914.P10182754511485594039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076837 (A121875 (n + 1)).toNat

end

end A365914.P10182754511485594039

/-! ## A365914.P5709280918417788233

`A129718(A079375(n+1))`
-/

namespace A365914.P5709280918417788233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129718 (A079375 (n + 1)).toNat

end

end A365914.P5709280918417788233

/-! ## A365914.P15066372584083877543

`A339070(A056819(n+1))`
-/

namespace A365914.P15066372584083877543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339070 (A056819 (n + 1)).toNat

end

end A365914.P15066372584083877543

/-!
# A365915: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(2*k+5) / (2*k+5)! ).

The programs for A365915, there is no canonical definition to state claims against.
-/

/-! ## A365915.P7177445030996492412

`A022998(A365896(n))`
-/

namespace A365915.P7177445030996492412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A365896 n).toNat

end

end A365915.P7177445030996492412

/-! ## A365915.P4779888875486687466

`A294647(A286203(n))*A365896(n)`
-/

namespace A365915.P4779888875486687466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294647 (A286203 n).toNat * A365896 n

end

end A365915.P4779888875486687466

/-! ## A365915.P10834508075138116286

`A365917(A055649(n-A055668(n)))`
-/

namespace A365915.P10834508075138116286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365917 (A055649 ((n : ℤ) - A055668 n).toNat).toNat

end

end A365915.P10834508075138116286

/-! ## A365915.P18121654056941922102

`A245790(n)-A102677(A170941(n))`
-/

namespace A365915.P18121654056941922102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245790 n - A102677 (A170941 n).toNat

end

end A365915.P18121654056941922102

/-! ## A365915.P13870279637442338861

`A294647(A026566(n))*A365896(n)`
-/

namespace A365915.P13870279637442338861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294647 (A026566 n).toNat * A365896 n

end

end A365915.P13870279637442338861

/-!
# A365916: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(3*k+5) / (3*k+5)! ).

The programs for A365916, there is no canonical definition to state claims against.
-/

/-! ## A365916.P3664421827900129960

`A112828(A365897(n))`
-/

namespace A365916.P3664421827900129960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112828 (A365897 n).toNat

end

end A365916.P3664421827900129960

/-! ## A365916.P9661366807391941055

`A047242(A365897(n)+1)`
-/

namespace A365916.P9661366807391941055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A365897 n + 1).toNat

end

end A365916.P9661366807391941055

/-! ## A365916.P5562073223632321714

`A266491(A365897(n)+A178798(n))`
-/

namespace A365916.P5562073223632321714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A365897 n + A178798 n).toNat

end

end A365916.P5562073223632321714

/-! ## A365916.P12509488436659821086

`A000034(A006145(n+5))*A365897(n)`
-/

namespace A365916.P12509488436659821086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A006145 (n + 5)).toNat * A365897 n

end

end A365916.P12509488436659821086

/-! ## A365916.P1429245335325475154

`A055396(A294736(n+1))*A365897(n)`
-/

namespace A365916.P1429245335325475154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A294736 (n + 1)).toNat * A365897 n

end

end A365916.P1429245335325475154

/-!
# A365917: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(4*k+5) / (4*k+5)! ).

The programs for A365917, there is no canonical definition to state claims against.
-/

/-! ## A365917.P3608278790001894528

`A022998(A365898(n))`
-/

namespace A365917.P3608278790001894528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A365898 n).toNat

end

end A365917.P3608278790001894528

/-! ## A365917.P324867956700061373

`A266491(A365898(n)+A178798(n))`
-/

namespace A365917.P324867956700061373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A365898 n + A178798 n).toNat

end

end A365917.P324867956700061373

/-! ## A365917.P5932676030813032119

`A014709(A365896(n))*A365898(n)`
-/

namespace A365917.P5932676030813032119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A365896 n).toNat * A365898 n

end

end A365917.P5932676030813032119

/-! ## A365917.P15316076512396127952

`A266491(A227655(n)*A365898(n))`
-/

namespace A365917.P15316076512396127952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A227655 n * A365898 n).toNat

end

end A365917.P15316076512396127952

/-! ## A365917.P11409713534895306608

`A266491(A365898(n)/A227655(n))`
-/

namespace A365917.P11409713534895306608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (SequenceMachineLib.roundAway ((A365898 n : ℚ) / (A227655 n : ℚ))).toNat

end

end A365917.P11409713534895306608

/-!
# A365918: Number of distinct non-subset-sums of integer partitions of n.

The programs for A365918, there is no canonical definition to state claims against.
-/

/-! ## A365918.P12382719500908373111

`(n+2)*A000041(n+1)-A304792(n+1)`
-/

namespace A365918.P12382719500908373111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000041 (n + 1) - A304792 (n + 1)

end

end A365918.P12382719500908373111

/-! ## A365918.P17836390892096569418

`A066186(n+1)-A276024(n+1)`
-/

namespace A365918.P17836390892096569418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A276024 (n + 1)

end

end A365918.P17836390892096569418

/-! ## A365918.P6699518866776047733

`∑[A138879(n+1)]-A276024(n+1)`
-/

namespace A365918.P6699518866776047733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276024 (n + 1)

end

end A365918.P6699518866776047733

/-! ## A365918.P8506998916864655

`A066186(A000027(n+1))%A276024(n+1)`
-/

namespace A365918.P8506998916864655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066186 (A000027 (n + 1)).toNat) (A276024 (n + 1))

end

end A365918.P8506998916864655

/-!
# A365920: Greatest non-subset-sum of the prime indices of n, or 0 if there is none.

The programs for A365920, there is no canonical definition to state claims against.
-/

/-! ## A365920.P3354647729895827509

`A070804(n+1)%A002845(A189074(2*n+1))`
-/

namespace A365920.P3354647729895827509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070804 (n + 1)) (A002845 (A189074 (2 * n + 1)).toNat)

end

end A365920.P3354647729895827509

/-! ## A365920.P4899189760861762109

`A003963(n+1)-A071625(A094768(n+5))`
-/

namespace A365920.P4899189760861762109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A071625 (A094768 (n + 5)).toNat

end

end A365920.P4899189760861762109

/-! ## A365920.P16983846118796280270

`A047983(∏{p}[n+1, #*val(n+1, #)]^((n+1)/∏{p}[n+1, #]))`
-/

namespace A365920.P16983846118796280270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A365920.P16983846118796280270

/-! ## A365920.P1366345638082017792

`A003963(n+1)-A175023(A147655(n))`
-/

namespace A365920.P1366345638082017792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A175023 (A147655 n).toNat

end

end A365920.P1366345638082017792

/-! ## A365920.P11852187635634479807

`A003963(n+1)-A124768(A113413(2*(n+1)))`
-/

namespace A365920.P11852187635634479807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A124768 (A113413 (2 * (n + 1))).toNat

end

end A365920.P11852187635634479807

/-!
# A365921: Triangle read by rows where T(n,k) is the number of integer partitions y of n such that k is the greatest member of {0..n} that is not the sum of any nonempty submultiset of y.

The programs for A365921, there is no canonical definition to state claims against.
-/

/-! ## A365921.P5923141996113832959

`A227752(A001993(n+1))`
-/

namespace A365921.P5923141996113832959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227752 (A001993 (n + 1)).toNat

end

end A365921.P5923141996113832959

/-! ## A365921.P2906842175614201494

`A365923(n)+A128834(A078559(n+1))`
-/

namespace A365921.P2906842175614201494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365923 n + A128834 (A078559 (n + 1)).toNat

end

end A365921.P2906842175614201494

/-! ## A365921.P16388808455881825182

`A355741(A365046(n)+A173815(n+4))`
-/

namespace A365921.P16388808455881825182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A365046 n + A173815 (n + 4)).toNat

end

end A365921.P16388808455881825182

/-! ## A365921.P12748825960823980588

`A255318(A000045(n)*A004709(n+4))`
-/

namespace A365921.P12748825960823980588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255318 (A000045 n * A004709 (n + 4)).toNat

end

end A365921.P12748825960823980588

/-! ## A365921.P6207591505127116437

`A035220(A160135(n+1)+A158116(n+2))`
-/

namespace A365921.P6207591505127116437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035220 (A160135 (n + 1) + A158116 (n + 2)).toNat

end

end A365921.P6207591505127116437

/-!
# A365922: Number of non-subset-sums of strict integer partitions of n.

The programs for A365922, there is no canonical definition to state claims against.
-/

/-! ## A365922.P13081431722101782055

`A328085(n+2)-A328060(A077610(n+1))`
-/

namespace A365922.P13081431722101782055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328085 (n + 2) - A328060 (A077610 (n + 1)).toNat

end

end A365922.P13081431722101782055

/-! ## A365922.P5010086384895493933

`A340224(A294696(n+1))`
-/

namespace A365922.P5010086384895493933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340224 (A294696 (n + 1)).toNat

end

end A365922.P5010086384895493933

/-! ## A365922.P1191975379498462660

`A280278(n)-A023531(A079242(n))`
-/

namespace A365922.P1191975379498462660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280278 n - A023531 (A079242 n).toNat

end

end A365922.P1191975379498462660

/-! ## A365922.P13831006548591794432

`A026824(3*n+4)+A001222(A000142(n))`
-/

namespace A365922.P13831006548591794432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 (3 * n + 4) + A001222 (A000142 n).toNat

end

end A365922.P13831006548591794432

/-! ## A365922.P5043840514427594190

`A320787(n+2)-A054522(A288343(3*n+2))`
-/

namespace A365922.P5043840514427594190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320787 (n + 2) - A054522 (A288343 (3 * n + 2)).toNat

end

end A365922.P5043840514427594190

/-!
# A365923: Triangle read by rows where T(n,k) is the number of integer partitions of n with exactly k distinct non-subset-sums.

The programs for A365923, there is no canonical definition to state claims against.
-/

/-! ## A365923.P14474609526494151466

`and(A121877(n+1), A326031(A373951(n)))`
-/

namespace A365923.P14474609526494151466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121877 (n + 1)) (A326031 (A373951 n).toNat)

end

end A365923.P14474609526494151466

/-! ## A365923.P3473154117170334666

`C(A365921(n), A365921(A264945(n+1)))`
-/

namespace A365923.P3473154117170334666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A365921 n).toNat (A365921 (A264945 (n + 1)).toNat).toNat

end

end A365923.P3473154117170334666

/-! ## A365923.P8361564877400609786

`A002865(A309229(n+1)%A134830(3*(n+1)))`
-/

namespace A365923.P8361564877400609786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (Int.tmod (A309229 (n + 1)) (A134830 (3 * (n + 1)))).toNat

end

end A365923.P8361564877400609786

/-! ## A365923.P15540929134515129261

`C(A327662(A210650(3*n+2)), A127573(n+1))`
-/

namespace A365923.P15540929134515129261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327662 (A210650 (3 * n + 2)).toNat).toNat (A127573 (n + 1)).toNat

end

end A365923.P15540929134515129261

/-! ## A365923.P8669089216209968048

`A308151(A207636(n+1))`
-/

namespace A365923.P8669089216209968048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308151 (A207636 (n + 1)).toNat

end

end A365923.P8669089216209968048

/-!
# A365924: Number of incomplete integer partitions of n, meaning not every number from 0 to n is the sum of some submultiset.

The programs for A365924, there is no canonical definition to state claims against.
-/

/-! ## A365924.P2817423440198202583

`A000041(n)-A126796(n)`
-/

namespace A365924.P2817423440198202583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A126796 n

end

end A365924.P2817423440198202583

/-! ## A365924.P4098389168575597006

`∑[A002865(n)]-A126796(n)`
-/

namespace A365924.P4098389168575597006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A126796 n

end

end A365924.P4098389168575597006

/-! ## A365924.P2484985361243234906

`1+A000065(n)-A126796(n)`
-/

namespace A365924.P2484985361243234906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 n - A126796 n

end

end A365924.P2484985361243234906

/-! ## A365924.P17683268305296870448

`A018783(n)+A000837(n)-A126796(n)`
-/

namespace A365924.P17683268305296870448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n - A126796 n

end

end A365924.P17683268305296870448

/-! ## A365924.P932620947586446377

`A003106(n)+A039900(n)-A126796(n)`
-/

namespace A365924.P932620947586446377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A039900 n - A126796 n)

end

end A365924.P932620947586446377

/-! ## A365924.P2372386219566284311

`A047967(n)+A000009(n)-A126796(n)`
-/

namespace A365924.P2372386219566284311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n - A126796 n

end

end A365924.P2372386219566284311

/-! ## A365924.P16931167631511981366

`A035363(2*n)-A126796(n)`
-/

namespace A365924.P16931167631511981366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A126796 n

end

end A365924.P16931167631511981366

/-! ## A365924.P8869846731558508561

`A114099(9*n)-A126796(n)`
-/

namespace A365924.P8869846731558508561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (9 * n) - A126796 n

end

end A365924.P8869846731558508561

/-! ## A365924.P14117956380920903701

`A325831(n)+A325834(n)-A126796(n)`
-/

namespace A365924.P14117956380920903701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325831 n + (A325834 n - A126796 n)

end

end A365924.P14117956380920903701

/-! ## A365924.P958066417504508715

`A239830(A000217(n))-A126796(n)`
-/

namespace A365924.P958066417504508715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000217 n).toNat - A126796 n

end

end A365924.P958066417504508715

/-!
# A365925: Number of subset-sums of strict integer partitions of n.

The programs for A365925, there is no canonical definition to state claims against.
-/

/-! ## A365925.P15176256661463167995

`A032302(n)-A072785(A201204(n))`
-/

namespace A365925.P15176256661463167995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032302 n - A072785 (A201204 n).toNat

end

end A365925.P15176256661463167995

/-! ## A365925.P1832692617408285050

`A032302(n)-A341753(A046212(n+2))`
-/

namespace A365925.P1832692617408285050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032302 n - A341753 (A046212 (n + 2)).toNat

end

end A365925.P1832692617408285050

/-!
# A365928: Smallest prime factor of f(n) = 10^(2*n) + (10^n - 1)/9.

The programs for A365928, there is no canonical definition to state claims against.
-/

/-! ## A365928.P1739088530821229959

`A077805(A099393(n+1))`
-/

namespace A365928.P1739088530821229959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A099393 (n + 1)).toNat

end

end A365928.P1739088530821229959

/-!
# A365929: Number of intersections formed within a triangle by placing n points "in general position" on each of the three sides and connecting each point to each of the points on the other two sides using straight lines.

The programs for A365929, the canonical program `A365929.P8375393727298446788` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365929 has offset 0).

The definition of A365929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365929.P14688031875855204154

`ogf((15x^2+33x^3+6x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A365929.P14688031875855204154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 15, 33, 6] [1, -5, 10, -10, 5, -1] n

end

end A365929.P14688031875855204154

namespace A365929

/-- `ogf((15x^2+33x^3+6x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14688031875855204154.Spec : Prop :=
  ∀ n, P14688031875855204154.a n = A365929 n

end A365929

/-! ## A365929.P17689400090655558439

`3/4*n²*(n-1)*(3*n-1)`
-/

namespace A365929.P17689400090655558439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (n ^ 2 : ℚ) * ((n : ℤ) - 1 : ℚ) * ((3 * n : ℤ) - 1 : ℚ)

end

end A365929.P17689400090655558439

namespace A365929

/-- `3/4*n²*(n-1)*(3*n-1)` -/
def P17689400090655558439.Spec : Prop :=
  ∀ n, P17689400090655558439.a n = (A365929 n : ℚ)

theorem P17689400090655558439.correct : P17689400090655558439.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A365929, Nat.add_sub_cancel, A365929.P17689400090655558439.a, A365929.P8375393727298446788.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A365929, Nat.add_sub_cancel, A365929.P17689400090655558439.a, A365929.P8375393727298446788.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A365929

/-! ## A365929.P8375393727298446788

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=15, a(3)=108, a(4)=396`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365929

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8375393727298446788.Spec : Prop :=
  ∀ n, P8375393727298446788.a n = A365929 n

theorem P8375393727298446788.correct : P8375393727298446788.Spec := by
  intro n
  simp only [A365929]

end A365929

/-! ## A365929.P790004050497268267

`C(n, 2)*C(3*n, 2)`
-/

namespace A365929.P790004050497268267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 * Nat.choose (3 * n) 2

end

end A365929.P790004050497268267

namespace A365929

/-- `C(n, 2)*C(3*n, 2)` -/
def P790004050497268267.Spec : Prop :=
  ∀ n, (P790004050497268267.a n : ℤ) = A365929 n

end A365929

/-! ## A365929.P5483293419626691708

`A367015(n)-(3*n²+1)`
-/

namespace A365929.P5483293419626691708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367015 n - (3 * n ^ 2 + 1 : ℤ)

end

end A365929.P5483293419626691708

namespace A365929

/-- `A367015(n)-(3*n²+1)` -/
def P5483293419626691708.Spec : Prop :=
  ∀ n, P5483293419626691708.a n = A365929 n

end A365929

/-! ## A365929.P1686216645171365760

`n*A062741(n)*(n-1)/2`
-/

namespace A365929.P1686216645171365760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A062741 n * ((n : ℤ) - 1) : ℚ) / 2

end

end A365929.P1686216645171365760

namespace A365929

/-- `n*A062741(n)*(n-1)/2` -/
def P1686216645171365760.Spec : Prop :=
  ∀ n, P1686216645171365760.a n = (A365929 n : ℚ)

end A365929

/-! ## A365929.P15505737899700467168

`A000326(n)+A000326(n)*A143208(n+1)`
-/

namespace A365929.P15505737899700467168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + A000326 n * A143208 (n + 1)

end

end A365929.P15505737899700467168

namespace A365929

/-- `A000326(n)+A000326(n)*A143208(n+1)` -/
def P15505737899700467168.Spec : Prop :=
  ∀ n, P15505737899700467168.a n = A365929 n

end A365929

/-! ## A365929.P9576069531190170977

`A080855(n)*A152947(n+1)-A145995(n+1)`
-/

namespace A365929.P9576069531190170977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n * A152947 (n + 1) - A145995 (n + 1)

end

end A365929.P9576069531190170977

namespace A365929

/-- `A080855(n)*A152947(n+1)-A145995(n+1)` -/
def P9576069531190170977.Spec : Prop :=
  ∀ n, P9576069531190170977.a n = A365929 n

end A365929

/-! ## A365929.P6449925839355501578

`∑{#}[n-1, #*(#+n)*(2*n+#)]`
-/

namespace A365929.P6449925839355501578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k * (k + n) * (2 * n + k)

end

end A365929.P6449925839355501578

namespace A365929

/-- `∑{#}[n-1, #*(#+n)*(2*n+#)]` -/
def P6449925839355501578.Spec : Prop :=
  ∀ n, (P6449925839355501578.a n : ℤ) = A365929 n

end A365929

/-!
# A365930: a(n) = number of pairs {x,y} with (x,y > 1) such that x^y (= terms of A072103) has bit length n.

The programs for A365930, the canonical program `A365930.P13094939819875884742` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365930 has offset 1).

The definition of A365930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365930.P13094939819875884742

`∑{#}[n-1, ceil(2^((n+1)/(#+2)))-ceil(2^(n/(#+2)))]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365930

/-- `∑{#}[n-1, ceil(2^((n+1)/(#+2)))-ceil(2^(n/(#+2)))]` -/
def P13094939819875884742.Spec : Prop :=
  ∀ n, P13094939819875884742.a n = A365930 (n + 1)

theorem P13094939819875884742.correct : P13094939819875884742.Spec := by
  intro n
  simp only [A365930, Nat.add_sub_cancel]

end A365930

/-! ## A365930.P3269321604796008177

`A365931(n+1)-A365931(A028310(n))`
-/

namespace A365930.P3269321604796008177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365931 (n + 1) - A365931 (A028310 n).toNat

end

end A365930.P3269321604796008177

namespace A365930

/-- `A365931(n+1)-A365931(A028310(n))` -/
def P3269321604796008177.Spec : Prop :=
  ∀ n, P3269321604796008177.a n = A365930 (n + 1)

end A365930

/-!
# A365931: a(n) = number of pairs {x,y} with (x,y > 1) such that x^y (= terms of A072103) has bit length <= n.

The programs for A365931, the canonical program `A365931.P5449813720282949311` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365931 has offset 1).

The definition of A365931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365931.P5449813720282949311

`∑{#}[n-1, ceil(2^((n+1)/(#+2)))-2]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365931

/-- `∑{#}[n-1, ceil(2^((n+1)/(#+2)))-2]` -/
def P5449813720282949311.Spec : Prop :=
  ∀ n, P5449813720282949311.a n = A365931 (n + 1)

theorem P5449813720282949311.correct : P5449813720282949311.Spec := by
  intro n
  simp only [A365931, Nat.add_sub_cancel]

end A365931

/-! ## A365931.P262896597063156646

`∑[A365930(n+1)]`
-/

namespace A365931.P262896597063156646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365931.P262896597063156646

namespace A365931

/-- `∑[A365930(n+1)]` -/
def P262896597063156646.Spec : Prop :=
  ∀ n, P262896597063156646.a n = A365931 (n + 1)

end A365931

/-! ## A365931.P18318543878904140382

`A089361(∑[2^n])`
-/

namespace A365931.P18318543878904140382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365931.P18318543878904140382

namespace A365931

/-- `A089361(∑[2^n])` -/
def P18318543878904140382.Spec : Prop :=
  ∀ n, P18318543878904140382.a n = A365931 (n + 1)

end A365931

/-! ## A365931.P16000858301858932656

`A089361(A290519(n))*A160923(n+1)`
-/

namespace A365931.P16000858301858932656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (A290519 n).toNat * A160923 (n + 1)

end

end A365931.P16000858301858932656

namespace A365931

/-- `A089361(A290519(n))*A160923(n+1)` -/
def P16000858301858932656.Spec : Prop :=
  ∀ n, P16000858301858932656.a n = A365931 (n + 1)

end A365931

/-! ## A365931.P4075533054937054787

`A183063(2*n+5)+A089361(A289268(n))`
-/

namespace A365931.P4075533054937054787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * n + 5) + A089361 (A289268 n).toNat

end

end A365931.P4075533054937054787

namespace A365931

/-- `A183063(2*n+5)+A089361(A289268(n))` -/
def P4075533054937054787.Spec : Prop :=
  ∀ n, P4075533054937054787.a n = A365931 (n + 1)

end A365931

/-!
# A365932: a(n) = the number of cubes (of integers > 0) that have bit length n.

The programs for A365932, there is no canonical definition to state claims against.
-/

/-! ## A365932.P17832447230871913887

`Δ[ceil(2^(n/3))]`
-/

namespace A365932.P17832447230871913887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A365932.P17832447230871913887

/-! ## A365932.P1324438231554444919

`abs(Δ[A017981(n)])`
-/

namespace A365932.P1324438231554444919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A365932.P1324438231554444919

/-! ## A365932.P16801326988285517924

`Δ[ceil(root(2, 3)^n)]%A198783(n+1)`
-/

namespace A365932.P16801326988285517924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℝ) ^ (1 / (3 : ℝ))) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A198783 (n + 1))

end

end A365932.P16801326988285517924

/-! ## A365932.P4289805425873405815

`Δ[A017981(n)]*A060576(n)`
-/

namespace A365932.P4289805425873405815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060576 n

end

end A365932.P4289805425873405815

/-! ## A365932.P4265830195913827953

`Δ[A017981(n)]%A000032(n)`
-/

namespace A365932.P4265830195913827953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 n)

end

end A365932.P4265830195913827953

/-! ## A365932.P8902681446016806289

`lcm(Δ[A017981(n)], A033999(n))`
-/

namespace A365932.P8902681446016806289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033999 n)

end

end A365932.P8902681446016806289

/-! ## A365932.P9903398107305690474

`A017981(n+1)-A017981(n)`
-/

namespace A365932.P9903398107305690474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (n + 1) - A017981 n

end

end A365932.P9903398107305690474

/-!
# A365934: Number of 4-cycles in the n-Sierpinski carpet graph.

The programs for A365934, the canonical program `A365934.P2374680173121349327` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365934 has offset 1).

The definition of A365934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365934.P9031816922011568404

`ogf(16x/(1-12x+35x^2-24x^3))`
-/

namespace A365934.P9031816922011568404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16] [1, -12, 35, -24] n

end

end A365934.P9031816922011568404

namespace A365934

/-- `ogf(16x/(1-12x+35x^2-24x^3))` -/
def P9031816922011568404.Spec : Prop :=
  ∀ n, P9031816922011568404.a n = A365934 (n + 1)

end A365934

/-! ## A365934.P2374680173121349327

`8/35*(5+2^(1+3*(n+1))-7*3^(n+1))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365934

/-- `8/35*(5+2^(1+3*(n+1))-7*3^(n+1))` -/
def P2374680173121349327.Spec : Prop :=
  ∀ n, P2374680173121349327.a n = (A365934 (n + 1) : ℚ)

end A365934

/-! ## A365934.P17673205540608078796

`8*a(n-1)+8*3^n-8` with `a(0)=0`
-/

namespace A365934.P17673205540608078796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  8 * a (n - 1) + (8 * 3 ^ n : ℤ) - 8

end

end A365934.P17673205540608078796

namespace A365934

/-- `8*a(n-1)+8*3^n-8` -/
def P17673205540608078796.Spec : Prop :=
  ∀ n, P17673205540608078796.a n = A365934 (n + 1)

end A365934

/-! ## A365934.P562150501485723126

`∑[3*a(n-1)]+8*a(n-1)` with `a(0)=0, a(1)=16`
-/

namespace A365934.P562150501485723126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A365934.P562150501485723126

namespace A365934

/-- `∑[3*a(n-1)]+8*a(n-1)` -/
def P562150501485723126.Spec : Prop :=
  ∀ n, (P562150501485723126.a n : ℤ) = A365934 (n + 1)

end A365934

/-! ## A365934.P591601539893922178

`A293143(n+1)-A381517(n+1)`
-/

namespace A365934.P591601539893922178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293143 (n + 1) - A381517 (n + 1)

end

end A365934.P591601539893922178

namespace A365934

/-- `A293143(n+1)-A381517(n+1)` -/
def P591601539893922178.Spec : Prop :=
  ∀ n, P591601539893922178.a n = A365934 (n + 1)

end A365934

/-! ## A365934.P4309584438467337451

`A271939(n+1)%∑[A000079(3*n+2)]`
-/

namespace A365934.P4309584438467337451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271939 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A365934.P4309584438467337451

namespace A365934

/-- `A271939(n+1)%∑[A000079(3*n+2)]` -/
def P4309584438467337451.Spec : Prop :=
  ∀ n, P4309584438467337451.a n = A365934 (n + 1)

end A365934

/-!
# A365935: Final digit (in decimal system) of n^(n+1) = A007778(n).

The programs for A365935, there is no canonical definition to state claims against.
-/

/-! ## A365935.P2451108311948901991

`A365936(n+10)`
-/

namespace A365935.P2451108311948901991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365936 (n + 10)

end

end A365935.P2451108311948901991

/-! ## A365935.P11100024670860161404

`((n%10)^(n+1))%10`
-/

namespace A365935.P11100024670860161404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 10) ^ (n + 1) % 10

end

end A365935.P11100024670860161404

/-!
# A365936: Final digit (in decimal system) of n^(n-1) = A000169(n).

The programs for A365936, there is no canonical definition to state claims against.
-/

/-! ## A365936.P73304355242516023

`A365935(n+11)`
-/

namespace A365936.P73304355242516023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365935 (n + 11)

end

end A365936.P73304355242516023

/-! ## A365936.P896153653156548423

`(((n+1)%10)^n)%10`
-/

namespace A365936.P896153653156548423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 10) ^ n % 10

end

end A365936.P896153653156548423

/-!
# A365938: Form the "Gilbreath Transform" array for the Euler phi function (A000010); sequence gives the third column, divided by 2.

The programs for A365938, there is no canonical definition to state claims against.
-/

/-! ## A365938.P4219864572025553052

`A189209(A137521(n+1))`
-/

namespace A365938.P4219864572025553052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189209 (A137521 (n + 1)).toNat

end

end A365938.P4219864572025553052

/-! ## A365938.P7853186890272579701

`A373157(A376712(n)+A371735(3*n))`
-/

namespace A365938.P7853186890272579701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373157 (A376712 n + A371735 (3 * n)).toNat

end

end A365938.P7853186890272579701

/-! ## A365938.P1614082332845657089

`C(A000120(n), A379461(A276937(n+1)))`
-/

namespace A365938.P1614082332845657089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A379461 (A276937 (n + 1)).toNat).toNat

end

end A365938.P1614082332845657089

/-! ## A365938.P4462304901656468188

`abs(A074290(A301009(3*(n+1))))`
-/

namespace A365938.P4462304901656468188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074290 (A301009 (3 * (n + 1))).toNat|

end

end A365938.P4462304901656468188

/-! ## A365938.P2924505176056754778

`A374646(A238592(2*(n+3))+3)`
-/

namespace A365938.P2924505176056754778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374646 (A238592 (2 * (n + 3)) + 3).toNat

end

end A365938.P2924505176056754778

/-!
# A365939: Gilbreath transform of semiprimes (A001358).

The programs for A365939, there is no canonical definition to state claims against.
-/

/-! ## A365939.P689899726165114853

`A131749(∑[n]+1)`
-/

namespace A365939.P689899726165114853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A365939.P689899726165114853

/-! ## A365939.P12450068959997236802

`A131749(A000124(n))+floor(((-1)^n+2)/ϕ^3)`
-/

namespace A365939.P12450068959997236802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (A000124 n).toNat + ⌊((-1) ^ n + 2 : ℝ) / Real.goldenRatio ^ 3⌋

end

end A365939.P12450068959997236802

/-! ## A365939.P10930747963452178265

`A352663((-1)^n+2)+A131749(A000124(n))`
-/

namespace A365939.P10930747963452178265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352663 ((-1) ^ n + 2).toNat + A131749 (A000124 n).toNat

end

end A365939.P10930747963452178265

/-! ## A365939.P6169154261340271361

`A052942((-1)^n+2)*A131749(A000124(n))`
-/

namespace A365939.P6169154261340271361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052942 ((-1) ^ n + 2).toNat * A131749 (A000124 n).toNat

end

end A365939.P6169154261340271361

/-! ## A365939.P14014879417432061693

`A131749(A000124(n))*A240064((-1)^n+2)`
-/

namespace A365939.P14014879417432061693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (A000124 n).toNat * A240064 ((-1) ^ n + 2).toNat

end

end A365939.P14014879417432061693

/-! ## A365939.P15258822032504918127

`A131749(A000124(n))*A321298((-1)^n+2)`
-/

namespace A365939.P15258822032504918127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (A000124 n).toNat * A321298 ((-1) ^ n + 2).toNat

end

end A365939.P15258822032504918127

/-! ## A365939.P138604100821761827

`A131749(A000124(n))*A375136(A037155(n+3))`
-/

namespace A365939.P138604100821761827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (A000124 n).toNat * A375136 (A037155 (n + 3)).toNat

end

end A365939.P138604100821761827

/-! ## A365939.P14389929097945518450

`A131749(A000124(n))^A001222(A005352(n+1))`
-/

namespace A365939.P14389929097945518450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131749 (A000124 n).toNat : ℚ) ^ (A001222 (A005352 (n + 1)).toNat : ℤ)

end

end A365939.P14389929097945518450

/-!
# A365940: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of cluster density function for site percolation on an n X n 2D triangular lattice with periodic boundary conditions.

The programs for A365940, there is no canonical definition to state claims against.
-/

/-! ## A365940.P16792575586346426449

`A089866(A365941(n+1))`
-/

namespace A365940.P16792575586346426449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089866 (A365941 (n + 1)).toNat

end

end A365940.P16792575586346426449

/-!
# A365941: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of cluster density function for site percolation on an n X n 2D square lattice with periodic boundary conditions.

The programs for A365941, there is no canonical definition to state claims against.
-/

/-! ## A365941.P3179621895984470008

`A089865(A365940(n+1))`
-/

namespace A365941.P3179621895984470008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089865 (A365940 (n + 1)).toNat

end

end A365941.P3179621895984470008

/-! ## A365941.P9243447882858452161

`A113220(A365946(n+1))`
-/

namespace A365941.P9243447882858452161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (A365946 (n + 1)).toNat

end

end A365941.P9243447882858452161

/-! ## A365941.P14184326534150339130

`A275935(n)+A089866(A365946(n+1))`
-/

namespace A365941.P14184326534150339130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275935 n + A089866 (A365946 (n + 1)).toNat

end

end A365941.P14184326534150339130

/-! ## A365941.P3252651279826392240

`A365946(n+1)-A137579(A365956(n+1))`
-/

namespace A365941.P3252651279826392240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365946 (n + 1) - A137579 (A365956 (n + 1)).toNat

end

end A365941.P3252651279826392240

/-!
# A365942: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of cluster density function for site percolation on an n X n 2D nnsquare lattice with periodic boundary conditions.

The programs for A365942, there is no canonical definition to state claims against.
-/

/-! ## A365942.P1380025298254614748

`A365947(A032581(n+1))`
-/

namespace A365942.P1380025298254614748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365947 (A032581 (n + 1)).toNat

end

end A365942.P1380025298254614748

/-! ## A365942.P1411734466239176966

`A126012(A365940(n+1))`
-/

namespace A365942.P1411734466239176966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 (A365940 (n + 1)).toNat

end

end A365942.P1411734466239176966

/-! ## A365942.P8916933718397913081

`A126012(A365947(n+1))`
-/

namespace A365942.P8916933718397913081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 (A365947 (n + 1)).toNat

end

end A365942.P8916933718397913081

/-!
# A365943: Irregular triangle read by rows: T(N,k) (0 <= k <= 4*N^2) are coefficients of cluster density function for site percolation on a 2*N X 2*N 2D union jack lattice with periodic boundary conditions.

The programs for A365943, there is no canonical definition to state claims against.
-/

/-! ## A365943.P18159644708959582318

`A365940(A216556(2*n+3)-A216556(n))`
-/

namespace A365943.P18159644708959582318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365940 (A216556 (2 * n + 3) - A216556 n).toNat

end

end A365943.P18159644708959582318

/-!
# A365945: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of cluster density function for site percolation on an n X n 2D triangular lattice with open boundary conditions.

The programs for A365945, there is no canonical definition to state claims against.
-/

/-! ## A365945.P4014457833110648163

`A342383(A365947(n+1))`
-/

namespace A365945.P4014457833110648163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A365947 (n + 1)).toNat

end

end A365945.P4014457833110648163

/-! ## A365945.P5195111990903478612

`A354581(A365940(n+1))`
-/

namespace A365945.P5195111990903478612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A365940 (n + 1)).toNat

end

end A365945.P5195111990903478612

/-! ## A365945.P2010360670594967248

`A365940(n+1)+A321857(A044932(n+1)^A087074(n+1))`
-/

namespace A365945.P2010360670594967248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365940 (n + 1) + A321857 (SequenceMachineLib.roundAway ((A044932 (n + 1) : ℚ) ^ (A087074 (n + 1) : ℤ))).toNat

end

end A365945.P2010360670594967248

/-!
# A365946: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of cluster density function for site percolation on an n X n 2D square lattice with open boundary conditions.

The programs for A365946, there is no canonical definition to state claims against.
-/

/-! ## A365946.P1090530681937052842

`A089856(A365947(n+1))`
-/

namespace A365946.P1090530681937052842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A365947 (n + 1)).toNat

end

end A365946.P1090530681937052842

/-! ## A365946.P16367376075297385034

`A113218(A365941(n+1))`
-/

namespace A365946.P16367376075297385034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A365941 (n + 1)).toNat

end

end A365946.P16367376075297385034

/-! ## A365946.P14425494781486309207

`A365941(n+1)+A137579(A365956(n+1))`
-/

namespace A365946.P14425494781486309207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365941 (n + 1) + A137579 (A365956 (n + 1)).toNat

end

end A365946.P14425494781486309207

/-! ## A365946.P13752385548478932898

`A137579(3*n)+A113220(A365941(n+1))`
-/

namespace A365946.P13752385548478932898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (3 * n) + A113220 (A365941 (n + 1)).toNat

end

end A365946.P13752385548478932898

/-! ## A365946.P5638701938279636224

`A137579(A365956(n+1))+A089865(A365940(n+1))`
-/

namespace A365946.P5638701938279636224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A365956 (n + 1)).toNat + A089865 (A365940 (n + 1)).toNat

end

end A365946.P5638701938279636224

/-!
# A365947: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of cluster density function for site percolation on an n X n 2D nnsquare lattice with open boundary conditions.

The programs for A365947, there is no canonical definition to state claims against.
-/

/-! ## A365947.P3125328631779693948

`A089856(A365946(n+1))`
-/

namespace A365947.P3125328631779693948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A365946 (n + 1)).toNat

end

end A365947.P3125328631779693948

/-! ## A365947.P2841562914697814230

`A089866(A365946(n+1))-A275935(n)`
-/

namespace A365947.P2841562914697814230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089866 (A365946 (n + 1)).toNat - A275935 n

end

end A365947.P2841562914697814230

/-!
# A365949: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of exact wrapping probability for site percolation on an n X n 2D square lattice with periodic boundary conditions. This is for the probability that it wraps in both dimensions.

The programs for A365949, there is no canonical definition to state claims against.
-/

/-! ## A365949.P4218470530459022468

`2*A366463(n+1)-A365954(n+1)`
-/

namespace A365949.P4218470530459022468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366463 (n + 1) - A365954 (n + 1)

end

end A365949.P4218470530459022468

/-!
# A365951: Irregular triangle read by rows: T(N,k) (0 <= k <= 4*N^2) are coefficients of exact wrapping probability for site percolation on a 2*N X 2*N 2D union jack lattice with periodic boundary conditions. This is for the probability that it wraps in both dimensions.

The programs for A365951, there is no canonical definition to state claims against.
-/

/-! ## A365951.P15818799461782331025

`A365957(n+1)-A397518(A002426(n))`
-/

namespace A365951.P15818799461782331025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365957 (n + 1) - A397518 (A002426 n).toNat

end

end A365951.P15818799461782331025

/-! ## A365951.P2326587813093062074

`A365957(n+1)/A251092(A022138(n))`
-/

namespace A365951.P2326587813093062074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365957 (n + 1) : ℚ) / (A251092 (A022138 n).toNat : ℚ)

end

end A365951.P2326587813093062074

/-! ## A365951.P14961790040635804402

`A365957(n+1)/A195825(A084376(n))`
-/

namespace A365951.P14961790040635804402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365957 (n + 1) : ℚ) / (A195825 (A084376 n).toNat : ℚ)

end

end A365951.P14961790040635804402

/-! ## A365951.P18294408535307589898

`A365957(n+1)/A254046(A212915(n))`
-/

namespace A365951.P18294408535307589898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365957 (n + 1) : ℚ) / (A254046 (A212915 n).toNat : ℚ)

end

end A365951.P18294408535307589898

/-! ## A365951.P1999079928226055763

`A365957(n+1)/A014963(A226243(n+1))`
-/

namespace A365951.P1999079928226055763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365957 (n + 1) : ℚ) / (A014963 (A226243 (n + 1)).toNat : ℚ)

end

end A365951.P1999079928226055763

/-!
# A365954: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of exact wrapping probability for site percolation on an n X n 2D square lattice with periodic boundary conditions. This is for the probability that it wraps in either dimension.

The programs for A365954, there is no canonical definition to state claims against.
-/

/-! ## A365954.P12613403659445414399

`2*A366463(n+1)-A365949(n+1)`
-/

namespace A365954.P12613403659445414399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366463 (n + 1) - A365949 (n + 1)

end

end A365954.P12613403659445414399

/-! ## A365954.P4058800754952754100

`A126012(A260043(n+1))`
-/

namespace A365954.P4058800754952754100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 (A260043 (n + 1)).toNat

end

end A365954.P4058800754952754100

/-! ## A365954.P15416503997567395712

`A055874(A209656(n))*A366463(n+1)`
-/

namespace A365954.P15416503997567395712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A209656 n).toNat * A366463 (n + 1)

end

end A365954.P15416503997567395712

/-!
# A365955: Irregular triangle read by rows: T(n,k) (0 <= k <= n^2) are coefficients of exact wrapping probability for site percolation on an n X n 2D nnsquare lattice with periodic boundary conditions. This is for the probability that it wraps in either dimension.

The programs for A365955, there is no canonical definition to state claims against.
-/

/-! ## A365955.P12418874809730368854

`2*A366464(n+1)-A365950(n+1)`
-/

namespace A365955.P12418874809730368854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366464 (n + 1) - A365950 (n + 1)

end

end A365955.P12418874809730368854

/-! ## A365955.P568865677396083077

`A368831(n+1)%A323061(A039830(n))`
-/

namespace A365955.P568865677396083077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368831 (n + 1)) (A323061 (A039830 n).toNat)

end

end A365955.P568865677396083077

/-! ## A365955.P6427518472731875134

`A368831(n+1)%A298120(3*n+2)`
-/

namespace A365955.P6427518472731875134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368831 (n + 1)) (A298120 (3 * n + 2))

end

end A365955.P6427518472731875134

/-! ## A365955.P10543440095304890982

`A051340(A134605(2*n+5))*A368831(n+1)`
-/

namespace A365955.P10543440095304890982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A134605 (2 * n + 5)).toNat * A368831 (n + 1)

end

end A365955.P10543440095304890982

/-! ## A365955.P12856424037160853909

`lcm(A303838(A122259(2*n+1)), A368831(n+1))`
-/

namespace A365955.P12856424037160853909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A303838 (A122259 (2 * n + 1)).toNat) (A368831 (n + 1))

end

end A365955.P12856424037160853909

/-!
# A365957: Irregular triangle read by rows: T(N,k) (0 <= k <= 4*N^2) are coefficients of exact wrapping probability for site percolation on a 2*N X 2*N 2D hexagonal lattice with periodic boundary conditions. This is for the probability that it wraps in either dimension.

The programs for A365957, there is no canonical definition to state claims against.
-/

/-! ## A365957.P2861266878036503309

`A014963(A003418(n))*A365951(n+1)`
-/

namespace A365957.P2861266878036503309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003418 n).toNat * A365951 (n + 1)

end

end A365957.P2861266878036503309

/-! ## A365957.P11362643388408268236

`A051340(A212915(n))*A365951(n+1)`
-/

namespace A365957.P11362643388408268236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A212915 n).toNat * A365951 (n + 1)

end

end A365957.P11362643388408268236

/-! ## A365957.P12933111989053136364

`A251092(A022138(n))*A365951(n+1)`
-/

namespace A365957.P12933111989053136364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251092 (A022138 n).toNat * A365951 (n + 1)

end

end A365957.P12933111989053136364

/-! ## A365957.P12154583347731316172

`A014963(A226243(n+1))*A365951(n+1)`
-/

namespace A365957.P12154583347731316172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A226243 (n + 1)).toNat * A365951 (n + 1)

end

end A365957.P12154583347731316172

/-!
# A365958: Least k such that 8*n*k+1 is a prime.

The programs for A365958, there is no canonical definition to state claims against.
-/

/-! ## A365958.P15376263509879291387

`ceil(A070852(n+1)/(8*n+9))`
-/

namespace A365958.P15376263509879291387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070852 (n + 1) : ℚ) / (8 * n + 9 : ℚ)⌉

end

end A365958.P15376263509879291387

/-! ## A365958.P15537196581590109195

`A037039(2*(n+1))`
-/

namespace A365958.P15537196581590109195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037039 (2 * (n + 1))

end

end A365958.P15537196581590109195

/-! ## A365958.P2579896865967948444

`floor(A070852(n+1)/A008586(2*(n+1)))`
-/

namespace A365958.P2579896865967948444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070852 (n + 1) : ℚ) / (A008586 (2 * (n + 1)) : ℚ)⌋

end

end A365958.P2579896865967948444

/-! ## A365958.P16332626875351862301

`A016014(4*(n+1))`
-/

namespace A365958.P16332626875351862301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (4 * (n + 1))

end

end A365958.P16332626875351862301

/-! ## A365958.P6770291866056776079

`A034693(8*(n+1))`
-/

namespace A365958.P6770291866056776079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (8 * (n + 1))

end

end A365958.P6770291866056776079

/-! ## A365958.P14141734876621334924

`floor(A034694(8*(n+1))/A008586(2*(n+1)))`
-/

namespace A365958.P14141734876621334924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034694 (8 * (n + 1)) : ℚ) / (A008586 (2 * (n + 1)) : ℚ)⌋

end

end A365958.P14141734876621334924

/-!
# A365961: Number of (0,1)-matrices with sum of entries equal to n and no zero rows or columns, with weakly decreasing row sums.

The programs for A365961, there is no canonical definition to state claims against.
-/

/-! ## A365961.P11487972609182422430

`A026479(or(1, floor(A109155(n)/2)))`
-/

namespace A365961.P11487972609182422430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026479 (Int.lor 1 ⌊(A109155 n : ℚ) / 2⌋).toNat

end

end A365961.P11487972609182422430

/-! ## A365961.P6386729716424720092

`A003602(A120595(n)+A056939(n))`
-/

namespace A365961.P6386729716424720092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A120595 n + A056939 n).toNat

end

end A365961.P6386729716424720092

/-!
# A365964: a(n) is n times the minimum moment of inertia of an n-celled polyomino about an axis through the center of mass perpendicular to the plane of the polyomino, with a unit point mass in the center of each of the cells.

The programs for A365964, there is no canonical definition to state claims against.
-/

/-! ## A365964.P4173973509480383200

`A246655(A007187(n+2))-A246655(n+1)`
-/

namespace A365964.P4173973509480383200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (A007187 (n + 2)).toNat - A246655 (n + 1)

end

end A365964.P4173973509480383200

/-!
# A365965: Numbers k such that A139315(k) = 0 but k is not in A138511.

The programs for A365965, there is no canonical definition to state claims against.
-/

/-! ## A365965.P130161685608263152

`∩[A007624(n+1), A337709(n+1)]`
-/

namespace A365965.P130161685608263152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365965.P130161685608263152

/-! ## A365965.P15982051688795636663

`∩[A033942(n+1), A337709(n+1)]`
-/

namespace A365965.P15982051688795636663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365965.P15982051688795636663

/-! ## A365965.P9997723669875294923

`∩[A058080(n+1), A337709(n+1)]`
-/

namespace A365965.P9997723669875294923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365965.P9997723669875294923

/-! ## A365965.P14980967438593087146

`∩[A066423(n+1), A337709(n+1)]`
-/

namespace A365965.P14980967438593087146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365965.P14980967438593087146

/-! ## A365965.P13786088880412720297

`∩[A119911(n+1), A337709(n+1)]`
-/

namespace A365965.P13786088880412720297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365965.P13786088880412720297

/-!
# A365967: a(2*n) = A030186(n), a(2*n+1) = A033505(n).

The programs for A365967, the canonical program `A365967.P7090874062961927176` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365967 has offset 0).

The definition of A365967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365967.P5101854602708654748

`ogf((1+x-x^2)/(1-3x^2-x^4+x^6))`
-/

namespace A365967.P5101854602708654748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -3, 0, -1, 0, 1] n

end

end A365967.P5101854602708654748

namespace A365967

/-- `ogf((1+x-x^2)/(1-3x^2-x^4+x^6))` -/
def P5101854602708654748.Spec : Prop :=
  ∀ n, P5101854602708654748.a n = A365967 n

end A365967

/-! ## A365967.P7090874062961927176

`3*a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=7, a(5)=10`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365967

/-- `3*a(n-2)+a(n-4)-a(n-6)` -/
def P7090874062961927176.Spec : Prop :=
  ∀ n, P7090874062961927176.a n = A365967 n

theorem P7090874062961927176.correct : P7090874062961927176.Spec := by
  intro n
  simp only [A365967]

end A365967

/-! ## A365967.P15370035544756050703

`A353742(A377067(n))+A047161(n+1)`
-/

namespace A365967.P15370035544756050703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (A377067 n).toNat + A047161 (n + 1)

end

end A365967.P15370035544756050703

namespace A365967

/-- `A353742(A377067(n))+A047161(n+1)` -/
def P15370035544756050703.Spec : Prop :=
  ∀ n, P15370035544756050703.a n = A365967 n

end A365967

/-! ## A365967.P18083671642321129029

`A095861(A004643(n))+1`
-/

namespace A365967.P18083671642321129029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A004643 n).toNat + 1

end

end A365967.P18083671642321129029

namespace A365967

/-- `A095861(A004643(n))+1` -/
def P18083671642321129029.Spec : Prop :=
  ∀ n, P18083671642321129029.a n = A365967 n

end A365967

/-! ## A365967.P4252857810196992332

`A085736(A318406(n+1))`
-/

namespace A365967.P4252857810196992332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A318406 (n + 1)).toNat

end

end A365967.P4252857810196992332

namespace A365967

/-- `A085736(A318406(n+1))` -/
def P4252857810196992332.Spec : Prop :=
  ∀ n, P4252857810196992332.a n = A365967 n

end A365967

/-!
# A365968: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). An infinite binary tree with root node 0 in row n = 0. Each node then has left child (2*j) - k - 1 and right child (2*j) - k + 1, where j and k are the values of the parent and grandparent nodes respectively.

The programs for A365968, the canonical program `A365968.P14045950726560360185` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365968 has offset 0).

The definition of A365968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A365968.P6752050230132654710

`A393336(n+1)+A083652(n)-A083652(n+1)`
-/

namespace A365968.P6752050230132654710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 (n + 1) + (A083652 n - A083652 (n + 1))

end

end A365968.P6752050230132654710

namespace A365968

/-- `A393336(n+1)+A083652(n)-A083652(n+1)` -/
def P6752050230132654710.Spec : Prop :=
  ∀ n, P6752050230132654710.a n = A365968 n

end A365968

/-! ## A365968.P12719688007042493114

`A393336(n+1)-A070939(n+1)`
-/

namespace A365968.P12719688007042493114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 (n + 1) - A070939 (n + 1)

end

end A365968.P12719688007042493114

namespace A365968

/-- `A393336(n+1)-A070939(n+1)` -/
def P12719688007042493114.Spec : Prop :=
  ∀ n, P12719688007042493114.a n = A365968 n

end A365968

/-! ## A365968.P14045950726560360185

`A124757(n+1)-A359400(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A365968

/-- `A124757(n+1)-A359400(n+1)` -/
def P14045950726560360185.Spec : Prop :=
  ∀ n, P14045950726560360185.a n = A365968 n

theorem P14045950726560360185.correct : P14045950726560360185.Spec := by
  intro n
  simp only [A365968]

end A365968

/-! ## A365968.P10128067690994284363

`A393336(n+1)-A029837(n+2)`
-/

namespace A365968.P10128067690994284363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 (n + 1) - A029837 (n + 2)

end

end A365968.P10128067690994284363

namespace A365968

/-- `A393336(n+1)-A029837(n+2)` -/
def P10128067690994284363.Spec : Prop :=
  ∀ n, P10128067690994284363.a n = A365968 n

end A365968

/-! ## A365968.P876965625248533553

`A029931(n+1)-A029931(A054429(n+1))`
-/

namespace A365968.P876965625248533553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (n + 1) - A029931 (A054429 (n + 1)).toNat

end

end A365968.P876965625248533553

namespace A365968

/-- `A029931(n+1)-A029931(A054429(n+1))` -/
def P876965625248533553.Spec : Prop :=
  ∀ n, P876965625248533553.a n = A365968 n

end A365968

/-! ## A365968.P5512529313240241686

`A309983(2*(n+1))-A070939(n+1)`
-/

namespace A365968.P5512529313240241686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309983 (2 * (n + 1)) - A070939 (n + 1)

end

end A365968.P5512529313240241686

namespace A365968

/-- `A309983(2*(n+1))-A070939(n+1)` -/
def P5512529313240241686.Spec : Prop :=
  ∀ n, P5512529313240241686.a n = A365968 n

end A365968

/-! ## A365968.P15511600700132368004

`A309983(2*(n+1))-A000523(2*(n+1))`
-/

namespace A365968.P15511600700132368004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309983 (2 * (n + 1)) - A000523 (2 * (n + 1))

end

end A365968.P15511600700132368004

namespace A365968

/-- `A309983(2*(n+1))-A000523(2*(n+1))` -/
def P15511600700132368004.Spec : Prop :=
  ∀ n, P15511600700132368004.a n = A365968 n

end A365968

/-! ## A365968.P8084228716826671555

`A393336(n+1)-A214936(n+1)/A214936(n)`
-/

namespace A365968.P8084228716826671555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393336 (n + 1) : ℚ) - (A214936 (n + 1) : ℚ) / (A214936 n : ℚ)

end

end A365968.P8084228716826671555

namespace A365968

/-- `A393336(n+1)-A214936(n+1)/A214936(n)` -/
def P8084228716826671555.Spec : Prop :=
  ∀ n, P8084228716826671555.a n = (A365968 n : ℚ)

end A365968

/-!
# A365969: Expansion of e.g.f. exp( Sum_{k>=0} x^(5*k+1) / (5*k+1) ).

The programs for A365969, the canonical program `A365969.P5597125861766553713` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365969 has offset 0).

The definition of A365969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365969.P5597125861766553713

`a(n-1)+120*C(n-1, 5)*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365969

/-- `a(n-1)+120*C(n-1, 5)*a(n-5)` -/
def P5597125861766553713.Spec : Prop :=
  ∀ n, (P5597125861766553713.a n : ℤ) = A365969 n

theorem P5597125861766553713.correct : P5597125861766553713.Spec := by
  intro n
  simp only [A365969]

end A365969

/-!
# A365972: Expansion of e.g.f. exp( Sum_{k>=0} x^(5*k+2) / (5*k+2) ).

The programs for A365972, there is no canonical definition to state claims against.
-/

/-! ## A365972.P11159315384701627540

`lcm(A092926(3*n+5), A305150(A000142(n)))`
-/

namespace A365972.P11159315384701627540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092926 (3 * n + 5)) (A305150 (A000142 n).toNat)

end

end A365972.P11159315384701627540

/-!
# A365973: Expansion of e.g.f. exp( Sum_{k>=0} x^(4*k+3) / (4*k+3) ).

The programs for A365973, there is no canonical definition to state claims against.
-/

/-! ## A365973.P2162574706071665474

`A326779(n)/A040001(n^5)`
-/

namespace A365973.P2162574706071665474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326779 n : ℚ) / (A040001 (n ^ 5) : ℚ)

end

end A365973.P2162574706071665474

/-! ## A365973.P7433099817764954011

`char[A301345(3*n+5)]*A130915(n)`
-/

namespace A365973.P7433099817764954011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301345 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A130915 n

end

end A365973.P7433099817764954011

/-! ## A365973.P15974145482609056146

`A347928(A165032(n)+A000032(n))`
-/

namespace A365973.P15974145482609056146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347928 (A165032 n + A000032 n).toNat

end

end A365973.P15974145482609056146

/-! ## A365973.P6505385134888837515

`A085369(A000984(n))*A130915(n)`
-/

namespace A365973.P6505385134888837515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085369 (A000984 n).toNat * A130915 n

end

end A365973.P6505385134888837515

/-!
# A365974: Expansion of e.g.f. exp( Sum_{k>=0} x^(5*k+3) / (5*k+3) ).

The programs for A365974, there is no canonical definition to state claims against.
-/

/-! ## A365974.P17616598264902667396

`A365982(n)/A000002(A018212(n))`
-/

namespace A365974.P17616598264902667396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365982 n : ℚ) / (A000002 (A018212 n).toNat : ℚ)

end

end A365974.P17616598264902667396

/-! ## A365974.P16198581416417923068

`A365982(n)/A000002(A026641(n))`
-/

namespace A365974.P16198581416417923068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365982 n : ℚ) / (A000002 (A026641 n).toNat : ℚ)

end

end A365974.P16198581416417923068

/-! ## A365974.P11423429624686560240

`A365982(n)/A069288(A320567(n))`
-/

namespace A365974.P11423429624686560240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365982 n : ℚ) / (A069288 (A320567 n).toNat : ℚ)

end

end A365974.P11423429624686560240

/-! ## A365974.P6818495816267074383

`A110654(A365982(n))*A324888(n+1)`
-/

namespace A365974.P6818495816267074383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A365982 n).toNat * A324888 (n + 1)

end

end A365974.P6818495816267074383

/-! ## A365974.P9427100586417828805

`A365982(n)/A006513(A000341(n+1))`
-/

namespace A365974.P9427100586417828805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365982 n : ℚ) / (A006513 (A000341 (n + 1)).toNat : ℚ)

end

end A365974.P9427100586417828805

/-!
# A365975: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(3*k+1) / (3*k+1) ).

The programs for A365975, there is no canonical definition to state claims against.
-/

/-! ## A365975.P12436247850160876134

`A057723(∏[A219651(n+2)])`
-/

namespace A365975.P12436247850160876134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365975.P12436247850160876134

/-!
# A365977: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(5*k+1) / (5*k+1) ).

The programs for A365977, there is no canonical definition to state claims against.
-/

/-! ## A365977.P18067050967542782803

`∏[A076834(n+5)%2+n]`
-/

namespace A365977.P18067050967542782803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076834 (n + 5)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365977.P18067050967542782803

/-! ## A365977.P463554519229839249

`∏[A070939(A319765(n))]`
-/

namespace A365977.P463554519229839249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A319765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365977.P463554519229839249

/-! ## A365977.P12090396450189493467

`∏[∑[A230632(A002605(n))]]`
-/

namespace A365977.P12090396450189493467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230632 (A002605 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365977.P12090396450189493467

/-! ## A365977.P8748630995541897766

`∏[A057427(A319759(n))+n]`
-/

namespace A365977.P8748630995541897766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A319759 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365977.P8748630995541897766

/-! ## A365977.P17483667460734950834

`∏[A325134(∏[A000523(n+2)])]`
-/

namespace A365977.P17483667460734950834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A365977.P17483667460734950834

/-!
# A365978: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(3*k+2) / (3*k+2) ).

The programs for A365978, there is no canonical definition to state claims against.
-/

/-! ## A365978.P3823630469039645406

`A326860(n)/A020639(A154638(n))`
-/

namespace A365978.P3823630469039645406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326860 n : ℚ) / (A020639 (A154638 n).toNat : ℚ)

end

end A365978.P3823630469039645406

/-! ## A365978.P9791031720506495351

`A000002(A027864(n+1))*A326755(n)`
-/

namespace A365978.P9791031720506495351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A027864 (n + 1)).toNat * A326755 n

end

end A365978.P9791031720506495351

/-! ## A365978.P6995115020560785605

`A193073(A001170(n+1))*A326755(n)`
-/

namespace A365978.P6995115020560785605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (A001170 (n + 1)).toNat * A326755 n

end

end A365978.P6995115020560785605

/-! ## A365978.P13260343850749474060

`A326860(n)/A000005(A104358(n+2))`
-/

namespace A365978.P13260343850749474060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326860 n : ℚ) / (A000005 (A104358 (n + 2)).toNat : ℚ)

end

end A365978.P13260343850749474060

/-!
# A365980: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(2*k+3) / (2*k+3) ).

The programs for A365980, there is no canonical definition to state claims against.
-/

/-! ## A365980.P15260977372847608873

`A007949(A059466(n+1))*A130915(n)`
-/

namespace A365980.P15260977372847608873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A059466 (n + 1)).toNat * A130915 n

end

end A365980.P15260977372847608873

/-! ## A365980.P10450196181548373596

`A130915(n)*A326194(A069871(n+2))`
-/

namespace A365980.P10450196181548373596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130915 n * A326194 (A069871 (n + 2)).toNat

end

end A365980.P10450196181548373596

/-! ## A365980.P13015056368422952436

`A066099(A001764(n))*A130915(n)`
-/

namespace A365980.P13015056368422952436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A001764 n).toNat * A130915 n

end

end A365980.P13015056368422952436

/-! ## A365980.P6216806307322053104

`A000931(n)*A346089(A000142(n))`
-/

namespace A365980.P6216806307322053104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n * A346089 (A000142 n).toNat

end

end A365980.P6216806307322053104

/-!
# A365981: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(4*k+3) / (4*k+3) ).

The programs for A365981, there is no canonical definition to state claims against.
-/

/-! ## A365981.P5297423820985064234

`A043290(A000105(n))*A326779(n)`
-/

namespace A365981.P5297423820985064234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A000105 n).toNat * A326779 n

end

end A365981.P5297423820985064234

/-! ## A365981.P8120052460099025660

`A144790(A070193(2*(n+1))+1)*A326779(n)`
-/

namespace A365981.P8120052460099025660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (A070193 (2 * (n + 1)) + 1).toNat * A326779 n

end

end A365981.P8120052460099025660

/-!
# A365982: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(5*k+3) / (5*k+3) ).

The programs for A365982, there is no canonical definition to state claims against.
-/

/-! ## A365982.P14994959085654880740

`A000002(A007097(n))*A365974(n)`
-/

namespace A365982.P14994959085654880740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A007097 n).toNat * A365974 n

end

end A365982.P14994959085654880740

/-! ## A365982.P8455346288179234663

`A038565(A175163(n))*A365974(n)`
-/

namespace A365982.P8455346288179234663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038565 (A175163 n).toNat * A365974 n

end

end A365982.P8455346288179234663

/-! ## A365982.P17114149506318356144

`A245554(A088218(n))*A365974(n)`
-/

namespace A365982.P17114149506318356144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245554 (A088218 n).toNat * A365974 n

end

end A365982.P17114149506318356144

/-! ## A365982.P10904919812625613057

`A306682(A061129(n))*A365974(n)`
-/

namespace A365982.P10904919812625613057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (A061129 n).toNat * A365974 n

end

end A365982.P10904919812625613057

/-! ## A365982.P942303031194743298

`A060594(A317014(n))*A365974(n)`
-/

namespace A365982.P942303031194743298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A317014 n).toNat * A365974 n

end

end A365982.P942303031194743298

/-!
# A365983: Even numbers k such that k^2 - 1 is a powerful number.

The programs for A365983, there is no canonical definition to state claims against.
-/

/-! ## A365983.P2833600093831651460

`A076445(1+n)+1`
-/

namespace A365983.P2833600093831651460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076445 (1 + n) + 1

end

end A365983.P2833600093831651460

/-!
# A365987: Multiply each term by 3 and erase the rightmost digit of the result: this leaves the sequence unchanged.

The programs for A365987, the canonical program `A365987.P16959935998559297680` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A365987 has offset 1).

The definition of A365987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A365987.P16959935998559297680

`ceil(a(n-1)/3*10)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A365987

/-- `ceil(a(n-1)/3*10)` -/
def P16959935998559297680.Spec : Prop :=
  ∀ n, P16959935998559297680.a n = A365987 (n + 1)

theorem P16959935998559297680.correct : P16959935998559297680.Spec := by
  intro n
  simp only [A365987, Nat.add_sub_cancel]

end A365987

/-! ## A365987.P4317519200997472041

`floor((a(n-1)+2)/3)+3*a(n-1)` with `a(0)=1`
-/

namespace A365987.P4317519200997472041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 2 : ℚ) / 3⌋ + 3 * a (n - 1)

end

end A365987.P4317519200997472041

namespace A365987

/-- `floor((a(n-1)+2)/3)+3*a(n-1)` -/
def P4317519200997472041.Spec : Prop :=
  ∀ n, P4317519200997472041.a n = A365987 (n + 1)

end A365987

/-! ## A365987.P17176034826775080896

`ceil(10*a(n-1)/3)` with `a(0)=1`
-/

namespace A365987.P17176034826775080896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(10 * a (n - 1) : ℚ) / 3⌉

end

end A365987.P17176034826775080896

namespace A365987

/-- `ceil(10*a(n-1)/3)` -/
def P17176034826775080896.Spec : Prop :=
  ∀ n, P17176034826775080896.a n = A365987 (n + 1)

theorem P17176034826775080896.correct : P17176034826775080896.Spec := by
  intro n
  simp only [A365987, Nat.add_sub_cancel, A365987.P17176034826775080896.a, A365987.P16959935998559297680.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A365987

/-! ## A365987.P9005362499211305239

`floor((10*a(n-1)+2)/3)` with `a(0)=1`
-/

namespace A365987.P9005362499211305239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(10 * a (n - 1) + 2 : ℚ) / 3⌋

end

end A365987.P9005362499211305239

namespace A365987

/-- `floor((10*a(n-1)+2)/3)` -/
def P9005362499211305239.Spec : Prop :=
  ∀ n, P9005362499211305239.a n = A365987 (n + 1)

end A365987

/-! ## A365987.P11822932595273612422

`round((10*a(n-1)+1)/3)` with `a(0)=1`
-/

namespace A365987.P11822932595273612422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((10 * a (n - 1) + 1 : ℚ) / 3)

end

end A365987.P11822932595273612422

namespace A365987

/-- `round((10*a(n-1)+1)/3)` -/
def P11822932595273612422.Spec : Prop :=
  ∀ n, P11822932595273612422.a n = A365987 (n + 1)

end A365987

/-! ## A365987.P4233258038692224336

`4*a(n-1)-floor(2/3*a(n-1))` with `a(0)=1`
-/

namespace A365987.P4233258038692224336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - ⌊(2 : ℚ) / 3 * (a (n - 1) : ℚ)⌋

end

end A365987.P4233258038692224336

namespace A365987

/-- `4*a(n-1)-floor(2/3*a(n-1))` -/
def P4233258038692224336.Spec : Prop :=
  ∀ n, P4233258038692224336.a n = A365987 (n + 1)

end A365987

/-! ## A365987.P9010274871886370413

`∑[A245428(n+1)/10]`
-/

namespace A365987.P9010274871886370413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245428 (n + 1) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A365987.P9010274871886370413

namespace A365987

/-- `∑[A245428(n+1)/10]` -/
def P9010274871886370413.Spec : Prop :=
  ∀ n, P9010274871886370413.a n = (A365987 (n + 1) : ℚ)

end A365987

/-!
# A365988: Number of n X n binary arrays with a path of adjacent 1's from top row to bottom row.

The programs for A365988, there is no canonical definition to state claims against.
-/

/-! ## A365988.P14431871878260230739

`A359576(∑[4*n]+1)`
-/

namespace A365988.P14431871878260230739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359576 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A365988.P14431871878260230739

/-!
# A365989: Expansion of e.g.f. exp( Sum_{k>=0} x^(5*k+4) / (5*k+4) ).

The programs for A365989, there is no canonical definition to state claims against.
-/

/-! ## A365989.P2620274073785082324

`A365990(n)/A000002(A018029(n))`
-/

namespace A365989.P2620274073785082324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365990 n : ℚ) / (A000002 (A018029 n).toNat : ℚ)

end

end A365989.P2620274073785082324

/-! ## A365989.P1226827333199428809

`A365990(n)/A184319(A286718(n))`
-/

namespace A365989.P1226827333199428809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365990 n : ℚ) / (A184319 (A286718 n).toNat : ℚ)

end

end A365989.P1226827333199428809

/-! ## A365989.P9931839514927124623

`A365990(n)/A000002(A225546(n+1))`
-/

namespace A365989.P9931839514927124623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365990 n : ℚ) / (A000002 (A225546 (n + 1)).toNat : ℚ)

end

end A365989.P9931839514927124623

/-! ## A365989.P5879962148983721400

`A046523(A000110(n))*A090677(n)`
-/

namespace A365989.P5879962148983721400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000110 n).toNat * A090677 n

end

end A365989.P5879962148983721400

/-! ## A365989.P17665034303614486782

`A046523(A000110(n))*A121262(n)`
-/

namespace A365989.P17665034303614486782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A000110 n).toNat * A121262 n

end

end A365989.P17665034303614486782

/-!
# A365990: Expansion of e.g.f. 1 / ( 1 - Sum_{k>=0} x^(5*k+4) / (5*k+4) ).

The programs for A365990, there is no canonical definition to state claims against.
-/

/-! ## A365990.P11672314243563648423

`A000002(A018029(n))*A365989(n)`
-/

namespace A365990.P11672314243563648423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A018029 n).toNat * A365989 n

end

end A365990.P11672314243563648423

/-! ## A365990.P2365568492268286645

`A187783(n)*A365989(A029966(n+1))`
-/

namespace A365990.P2365568492268286645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 n * A365989 (A029966 (n + 1)).toNat

end

end A365990.P2365568492268286645

/-! ## A365990.P14630171732921837578

`A000002(A225546(n+1))*A365989(n)`
-/

namespace A365990.P14630171732921837578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A225546 (n + 1)).toNat * A365989 n

end

end A365990.P14630171732921837578

/-! ## A365990.P17139650563340545216

`A365989(n)*A372917(A051342(n+1))`
-/

namespace A365990.P17139650563340545216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365989 n * A372917 (A051342 (n + 1)).toNat

end

end A365990.P17139650563340545216

/-! ## A365990.P9924282430283111038

`A365989(n)*A365995(A259862(n+1))`
-/

namespace A365990.P9924282430283111038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365989 n * A365995 (A259862 (n + 1)).toNat

end

end A365990.P9924282430283111038

/-!
# A365992: Square array read by ascending antidiagonals: T(n,k) is the parity of the k-th iterate of the 5x+1 function started at n, with n >= 1 and k >= 0.

The programs for A365992, there is no canonical definition to state claims against.
-/

/-! ## A365992.P4595960134428521130

`A365991(n+1)%2`
-/

namespace A365992.P4595960134428521130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365991 (n + 1)) 2

end

end A365992.P4595960134428521130

/-! ## A365992.P2732942840445430367

`and(A060576(n), A365991(n+1))`
-/

namespace A365992.P2732942840445430367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A365991 (n + 1))

end

end A365992.P2732942840445430367

/-! ## A365992.P13230772850166764371

`and(A158388(n), A365991(n+1))`
-/

namespace A365992.P13230772850166764371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A365991 (n + 1))

end

end A365992.P13230772850166764371

/-! ## A365992.P7607506113432641445

`and(1, A239609(n)*A365991(n+1))`
-/

namespace A365992.P7607506113432641445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A239609 n * A365991 (n + 1))

end

end A365992.P7607506113432641445

/-! ## A365992.P7560032133700116340

`and(1, A243134(n)*A365991(n+1))`
-/

namespace A365992.P7560032133700116340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A243134 n * A365991 (n + 1))

end

end A365992.P7560032133700116340

/-! ## A365992.P16896479341997386406

`and(A176410(n), A365991(n+1))`
-/

namespace A365992.P16896479341997386406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176410 n) (A365991 (n + 1))

end

end A365992.P16896479341997386406

/-! ## A365992.P13788990102794998176

`and(A176794(n), A365991(n+1))`
-/

namespace A365992.P13788990102794998176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A365991 (n + 1))

end

end A365992.P13788990102794998176

/-! ## A365992.P2235124401401083001

`and(A048578(n), A365991(n+1))`
-/

namespace A365992.P2235124401401083001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A365991 (n + 1))

end

end A365992.P2235124401401083001

/-! ## A365992.P9032896886643852521

`and(A020737(n), A365991(n+1))`
-/

namespace A365992.P9032896886643852521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A365991 (n + 1))

end

end A365992.P9032896886643852521

/-! ## A365992.P4983145191600022803

`and(A276918(n), A365991(n+1))`
-/

namespace A365992.P4983145191600022803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276918 n) (A365991 (n + 1))

end

end A365992.P4983145191600022803

/-! ## A365992.P17969061570959902061

`and(A195744(n), A365991(n+1))`
-/

namespace A365992.P17969061570959902061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A365991 (n + 1))

end

end A365992.P17969061570959902061

/-! ## A365992.P4659281880890296747

`and(A122041(n+1), A365991(n+1))`
-/

namespace A365992.P4659281880890296747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A365991 (n + 1))

end

end A365992.P4659281880890296747

/-! ## A365992.P4344334379600829145

`and(A196657(n), A365991(n+1))`
-/

namespace A365992.P4344334379600829145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A365991 (n + 1))

end

end A365992.P4344334379600829145

/-! ## A365992.P15723386256205041145

`and(A132750(n), A365991(n+1))`
-/

namespace A365992.P15723386256205041145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132750 n) (A365991 (n + 1))

end

end A365992.P15723386256205041145

/-! ## A365992.P13849885721432493149

`and(A048474(n), A365991(n+1))`
-/

namespace A365992.P13849885721432493149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048474 n) (A365991 (n + 1))

end

end A365992.P13849885721432493149

/-! ## A365992.P685061971925001458

`and(A080267(n+1), A365991(n+1))`
-/

namespace A365992.P685061971925001458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080267 (n + 1)) (A365991 (n + 1))

end

end A365992.P685061971925001458

/-! ## A365992.P10307283833652922444

`and(A048478(n), A365991(n+1))`
-/

namespace A365992.P10307283833652922444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048478 n) (A365991 (n + 1))

end

end A365992.P10307283833652922444

/-! ## A365992.P17135218587509794407

`and(A051900(n), A365991(n+1))`
-/

namespace A365992.P17135218587509794407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051900 n) (A365991 (n + 1))

end

end A365992.P17135218587509794407

/-! ## A365992.P10901717911574523603

`and(A048479(n), A365991(n+1))`
-/

namespace A365992.P10901717911574523603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A365991 (n + 1))

end

end A365992.P10901717911574523603

/-! ## A365992.P6291764386712050624

`and(A134854(n+1), A365991(n+1))`
-/

namespace A365992.P6291764386712050624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134854 (n + 1)) (A365991 (n + 1))

end

end A365992.P6291764386712050624

/-!
# A365995: Number of free polyominoids with n cells, allowing flat corner-connections and right-angled edge-connections.

The programs for A365995, there is no canonical definition to state claims against.
-/

/-! ## A365995.P4298138767148162512

`A357082(∑[A396916(n)])`
-/

namespace A365995.P4298138767148162512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357082 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365995.P4298138767148162512

/-!
# A365997: Number of free polyominoids with n cells, allowing flat corner-connections and any edge-connections.

The programs for A365997, there is no canonical definition to state claims against.
-/

/-! ## A365997.P13501909538213400143

`A005100(∑[∑[A349364(n)]])`
-/

namespace A365997.P13501909538213400143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A365997.P13501909538213400143

/-!
# A365999: Number of free polyominoids with n cells, allowing right-angled corner-connections.

The programs for A365999, there is no canonical definition to state claims against.
-/

/-! ## A365999.P7195241388662708501

`A161182(floor(sqrt(A111826(n))))`
-/

namespace A365999.P7195241388662708501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (Int.sqrt (A111826 n)).toNat

end

end A365999.P7195241388662708501

