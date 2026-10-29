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
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A088101: Group the natural numbers with at least two members in each group such that the n-th group sum is a multiple of n. (1,2), (3,4,5), (6,7,8), (9,10,11,12,13,14,15), (16,17,18,19), (20,21,22,23,24,25,26,27,28), (29,30,31,32,33,34), ... Sequence contains the n-th group sum divided by n.

The programs for A088101, there is no canonical definition to state claims against.
-/

/-! ## A088101.P13288645695241413988

`A088099(n+1)/(n+1)`
-/

namespace A088101.P13288645695241413988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088099 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088101.P13288645695241413988

/-!
# A088105: a(n) = smallest n-digit prime beginning with prime(n)- smallest n-digit number beginning with prime(n).

The programs for A088105, there is no canonical definition to state claims against.
-/

/-! ## A088105.P7473365393452058344

`A088104(n+1)%A000351(A117707(n))`
-/

namespace A088105.P7473365393452058344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088104 (n + 1)) (A000351 (A117707 n).toNat)

end

end A088105.P7473365393452058344

/-!
# A088107: Smallest prime == 1 (mod (least common multiple of next n numbers)).

The programs for A088107, there is no canonical definition to state claims against.
-/

/-! ## A088107.P16154757033750100185

`p?[A126098(A312357(n))+1]`
-/

namespace A088107.P16154757033750100185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (A312357 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088107.P16154757033750100185

/-!
# A088108: a(1)=1, a(n) = least odd triangular number which is a proper multiple of a(n-1).

The programs for A088108, there is no canonical definition to state claims against.
-/

/-! ## A088108.P8149928960411580217

`∏[A307746(∑[A326358(n)])]`
-/

namespace A088108.P8149928960411580217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307746 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A088108.P8149928960411580217

/-! ## A088108.P4578360366028743842

`∏[A092131(A093462(n+1)+1)]`
-/

namespace A088108.P4578360366028743842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (A093462 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A088108.P4578360366028743842

/-!
# A088109: a(1)=1, a(n)= least odd triangular number which is a proper multiple of a(n-1) with a multiplier different from the ones used earlier.

The programs for A088109, there is no canonical definition to state claims against.
-/

/-! ## A088109.P15043520700070962834

`A000265(∏[p?[A123716(n)+1]])`
-/

namespace A088109.P15043520700070962834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123716 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088109.P15043520700070962834

/-! ## A088109.P9327841565709919899

`∏[A137795(A342139(n))+2*n]`
-/

namespace A088109.P9327841565709919899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137795 (A342139 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A088109.P9327841565709919899

/-!
# A088111: Number of ways associated with A088959.

The programs for A088111, there is no canonical definition to state claims against.
-/

/-! ## A088111.P17414859657188296618

`record[A273943(n)/A144870(n+1)]`
-/

namespace A088111.P17414859657188296618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273943 n : ℚ) / (A144870 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088111.P17414859657188296618

/-! ## A088111.P18175629916152952081

`record[n%A287573(A065331(2*n+1))]`
-/

namespace A088111.P18175629916152952081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A287573 (A065331 (2 * n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088111.P18175629916152952081

/-! ## A088111.P6607357052899433837

`lt[A061579(n), A285658(A065331(2*n+1))]`
-/

namespace A088111.P6607357052899433837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285658 (A065331 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A088111.P6607357052899433837

/-! ## A088111.P8700936404326853299

`A110658(A365620(n+1))`
-/

namespace A088111.P8700936404326853299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A365620 (n + 1)).toNat

end

end A088111.P8700936404326853299

/-! ## A088111.P6367385637936392266

`record[A046079(A088902(n+1))]`
-/

namespace A088111.P6367385637936392266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A088902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088111.P6367385637936392266

/-!
# A088112: Perfect powers whose digit reversal is prime.

The programs for A088112, there is no canonical definition to state claims against.
-/

/-! ## A088112.P7753935818497209214

`∩[A001597(n+1), A115686(n+1)]`
-/

namespace A088112.P7753935818497209214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088112.P7753935818497209214

/-! ## A088112.P233703980009636223

`∩[A001597(n+1), A076055(n+1)]`
-/

namespace A088112.P233703980009636223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088112.P233703980009636223

/-! ## A088112.P4875641906358716268

`∩[A001597(n+1), A095179(n+1)]`
-/

namespace A088112.P4875641906358716268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088112.P4875641906358716268

/-! ## A088112.P16124438677881198723

`∩[A076055(n+1), A396856(n+1)]`
-/

namespace A088112.P16124438677881198723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088112.P16124438677881198723

/-! ## A088112.P5429153500405720302

`∩[A115686(n+1), A396856(n+1)]`
-/

namespace A088112.P5429153500405720302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088112.P5429153500405720302

/-!
# A088113: a(n) = digit reversal of (11^n) divided by 11.

The programs for A088113, there is no canonical definition to state claims against.
-/

/-! ## A088113.P2665668773925484132

`∑[A049345(A318977(n))]`
-/

namespace A088113.P2665668773925484132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A318977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088113.P2665668773925484132

/-!
# A088115: a(n) = largest prime using least number of possible digits with a digit sum n, or 0 if no such number exists. E.g., if n > 9 and there are no two-digit primes with a given digit sum n then three-digit numbers are explored and so on.

The programs for A088115, there is no canonical definition to state claims against.
-/

/-! ## A088115.P3174604111346751628

`A093712(n+1)*A093719(A093725(n+3))`
-/

namespace A088115.P3174604111346751628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093712 (n + 1) * A093719 (A093725 (n + 3)).toNat

end

end A088115.P3174604111346751628

/-!
# A088116: Let n = abc..., where a, b, c, are digits of n. a(n) = a*bc...+b*ac...+c*ab...+..., i.e., a(n) = sum, over all the digits, of the product (number obtained by deleting a digit multiplied by the deleted digit).

The programs for A088116, the canonical program `A088116.P1923574354677651035` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088116 has offset 0).

The definition of A088116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088116.P1923574354677651035

`A171765(n)+A118759(A054899(n)*A217657(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A088116

/-- `A171765(n)+A118759(A054899(n)*A217657(n))` -/
def P1923574354677651035.Spec : Prop :=
  ∀ n, P1923574354677651035.a n = A088116 n

theorem P1923574354677651035.correct : P1923574354677651035.Spec := by
  intro n
  simp only [A088116]

end A088116

/-!
# A088117: Let the decimal expansion of n be abcd...; then a(n) = (a*bcd... + b*acd... + c*abd... + d*abc... + ...) + (ab*cd... + bc*ad... + cd*ab... + ...) + ... . That is, a(n) = sum over all the digit strings of the product (number obtained by deleting a digit string) * (deleted digit string).

The programs for A088117, the canonical program `A088117.P85729162113141528` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088117 has offset 0).

The definition of A088117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088117.P85729162113141528

`A118759(A054899(n)*A217657(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A088117

/-- `A118759(A054899(n)*A217657(n))` -/
def P85729162113141528.Spec : Prop :=
  ∀ n, P85729162113141528.a n = A088117 n

theorem P85729162113141528.correct : P85729162113141528.Spec := by
  intro n
  simp only [A088117]

end A088117

/-! ## A088117.P2332411766639284015

`A347470(A035930(n)+n-A007954(n))`
-/

namespace A088117.P2332411766639284015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (A035930 n + ((n : ℤ) - A007954 n)).toNat

end

end A088117.P2332411766639284015

namespace A088117

/-- `A347470(A035930(n)+n-A007954(n))` -/
def P2332411766639284015.Spec : Prop :=
  ∀ n, P2332411766639284015.a n = A088117 n

end A088117

/-! ## A088117.P7774350105293654458

`A347470(n-(A007954(n)-A035930(n)))`
-/

namespace A088117.P7774350105293654458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 ((n : ℤ) - (A007954 n - A035930 n)).toNat

end

end A088117.P7774350105293654458

namespace A088117

/-- `A347470(n-(A007954(n)-A035930(n)))` -/
def P7774350105293654458.Spec : Prop :=
  ∀ n, P7774350105293654458.a n = A088117 n

end A088117

/-!
# A088119: Sequence of primes p(n) such that 2*p(n)+3, 2*p(n+1)+3, 2*p(n+2)+3 are consecutive primes, where p(i) denotes the i-th prime.

The programs for A088119, there is no canonical definition to state claims against.
-/

/-! ## A088119.P14386182994235935223

`A000040(A088066(n+1))`
-/

namespace A088119.P14386182994235935223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A088066 (n + 1)).toNat

end

end A088119.P14386182994235935223

/-! ## A088119.P13524046503948054232

`(A089450(n+1)-3)/2`
-/

namespace A088119.P13524046503948054232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089450 (n + 1) - 3 : ℚ) / 2

end

end A088119.P13524046503948054232

/-! ## A088119.P6875173142997994444

`A001748(∩[A089526(n+1)-1, A089526(n+1)])/3`
-/

namespace A088119.P6875173142997994444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089526 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089526 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 3

end

end A088119.P6875173142997994444

/-! ## A088119.P14568286305990627794

`A008578(A088066(n+1)+1)`
-/

namespace A088119.P14568286305990627794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A088066 (n + 1) + 1).toNat

end

end A088119.P14568286305990627794

/-!
# A088120: Smallest prime obtained as a product of n terms of an arithmetic progression + the common difference.

The programs for A088120, there is no canonical definition to state claims against.
-/

/-! ## A088120.P16769215318222322858

`record[A006530(record[n*a(n-2)]+2)]` with `a(0)=2, a(1)=1`
-/

namespace A088120.P16769215318222322858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088120.P16769215318222322858

/-!
# A088121: Smallest prime obtained as a sum of n terms of a geometric progression + the common ratio, or 0 if no such terms exists. Smallest prime of the form (a +ar +ar^2 + ar^3 +... ) + r.

The programs for A088121, there is no canonical definition to state claims against.
-/

/-! ## A088121.P11968508009473042310

`A378450(A246956(n+1))+2`
-/

namespace A088121.P11968508009473042310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378450 (A246956 (n + 1)).toNat + 2

end

end A088121.P11968508009473042310

/-! ## A088121.P8517270461140082503

`A054716(A060867(n+1))+2`
-/

namespace A088121.P8517270461140082503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A060867 (n + 1)).toNat + 2

end

end A088121.P8517270461140082503

/-!
# A088126: Let f(n, x) = x+3x^2+6x^3+...+(n(n+1)/2)x^n; then a(n) = least x such that f(n, x) is a triangular number, or 0 if no such x exists.

The programs for A088126, there is no canonical definition to state claims against.
-/

/-! ## A088126.P9171152634382389325

`ceil(A087702(n+1)/A177059(n))`
-/

namespace A088126.P9171152634382389325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087702 (n + 1) : ℚ) / (A177059 n : ℚ)⌉

end

end A088126.P9171152634382389325

/-! ## A088126.P9294898166584762312

`round(sqrt(A087702(n+1)/A056106(n)))`
-/

namespace A088126.P9294898166584762312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A087702 (n + 1) : ℚ) / (A056106 n : ℚ) : ℝ))

end

end A088126.P9294898166584762312

/-! ## A088126.P5756960174477741463

`ceil(A087702(n+1)/A227304(n+1))`
-/

namespace A088126.P5756960174477741463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087702 (n + 1) : ℚ) / (A227304 (n + 1) : ℚ)⌉

end

end A088126.P5756960174477741463

/-! ## A088126.P7983972303048550409

`ceil(A087702(n+1)/A000330(n+4))`
-/

namespace A088126.P7983972303048550409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087702 (n + 1) : ℚ) / (A000330 (n + 4) : ℚ)⌉

end

end A088126.P7983972303048550409

/-! ## A088126.P16178163506237511963

`ceil(A087702(n+1)/A053127(n+5))`
-/

namespace A088126.P16178163506237511963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087702 (n + 1) : ℚ) / (A053127 (n + 5) : ℚ)⌉

end

end A088126.P16178163506237511963

/-! ## A088126.P6201807453954048398

`ceil(A087702(n+1)/A000582(n+10))`
-/

namespace A088126.P6201807453954048398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087702 (n + 1) : ℚ) / (A000582 (n + 10) : ℚ)⌉

end

end A088126.P6201807453954048398

/-! ## A088126.P11186175147783704699

`ceil(A087702(n+1)/A000292(2*(n+2)))`
-/

namespace A088126.P11186175147783704699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087702 (n + 1) : ℚ) / (A000292 (2 * (n + 2)) : ℚ)⌉

end

end A088126.P11186175147783704699

/-!
# A088127: E.g.f. exp(-x)*cosh(x)/(1-x)^2.

The programs for A088127, there is no canonical definition to state claims against.
-/

/-! ## A088127.P10591023692691988494

`A062282(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A088127.P10591023692691988494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062282 n + (n : ℤ) * a (n - 1)

end

end A088127.P10591023692691988494

/-! ## A088127.P182426640941453094

`A062282(n+1)+A000023(n)`
-/

namespace A088127.P182426640941453094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062282 (n + 1) + A000023 n

end

end A088127.P182426640941453094

/-! ## A088127.P7930865566020278996

`A062282(n+1)+A062282(n)-A063083(n)`
-/

namespace A088127.P7930865566020278996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062282 (n + 1) + (A062282 n - A063083 n)

end

end A088127.P7930865566020278996

/-! ## A088127.P4905575013783333226

`2*(n-1)*a(n-1)-(n-4)*(n-1)*a(n-2)-2*(n-2)*(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A088127.P4905575013783333226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * (((n : ℤ) - 1) * a (n - 1)) - ((n : ℤ) - 4) * (((n : ℤ) - 1) * a (n - 2)) - 2 * (((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 3)))

end

end A088127.P4905575013783333226

/-! ## A088127.P16152119454897844197

`(n+1)!-A037256(n)`
-/

namespace A088127.P16152119454897844197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A037256 n

end

end A088127.P16152119454897844197

/-! ## A088127.P13134838015561827792

`record[A047920(n)]-A037256(n)`
-/

namespace A088127.P13134838015561827792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A037256 n

end

end A088127.P13134838015561827792

/-! ## A088127.P11676298230689104548

`record[A094587(n)]-A037256(n)`
-/

namespace A088127.P11676298230689104548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A037256 n

end

end A088127.P11676298230689104548

/-! ## A088127.P8455201969429210736

`record[A098361(n)]-A037256(n)`
-/

namespace A088127.P8455201969429210736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A037256 n

end

end A088127.P8455201969429210736

/-!
# A088128: Expansion of e.g.f.: cosh(x)/(1-x)^2.

The programs for A088128, the canonical program `A088128.P15707768119371230605` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088128 has offset 0).

The definition of A088128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088128.P15707768119371230605

`∑{#}[floor(n/2), C(n, 2*#)*(n-2*#+1)!]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088128

/-- `∑{#}[floor(n/2), C(n, 2*#)*(n-2*#+1)!]` -/
def P15707768119371230605.Spec : Prop :=
  ∀ n, (P15707768119371230605.a n : ℤ) = A088128 n

theorem P15707768119371230605.correct : P15707768119371230605.Spec := by
  intro n
  simp only [A088128]

end A088128

/-! ## A088128.P13877661385129753774

`A001339(n)-A088129(n)`
-/

namespace A088128.P13877661385129753774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n - A088129 n

end

end A088128.P13877661385129753774

namespace A088128

/-- `A001339(n)-A088129(n)` -/
def P13877661385129753774.Spec : Prop :=
  ∀ n, P13877661385129753774.a n = A088128 n

end A088128

/-! ## A088128.P6927790922079191315

`Δ[A000522(n)]-A088129(n)`
-/

namespace A088128.P6927790922079191315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088129 n

end

end A088128.P6927790922079191315

namespace A088128

/-- `Δ[A000522(n)]-A088129(n)` -/
def P6927790922079191315.Spec : Prop :=
  ∀ n, P6927790922079191315.a n = A088128 n

end A088128

/-! ## A088128.P2607086647043050582

`Δ[A073591(n)]-A088129(n)`
-/

namespace A088128.P2607086647043050582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088129 n

end

end A088128.P2607086647043050582

namespace A088128

/-- `Δ[A073591(n)]-A088129(n)` -/
def P2607086647043050582.Spec : Prop :=
  ∀ n, P2607086647043050582.a n = A088128 n

end A088128

/-! ## A088128.P2005536453416391837

`A000166(n+1)+Δ[A186763(n)]`
-/

namespace A088128.P2005536453416391837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (f1 (n + 1) - f1 n)

end

end A088128.P2005536453416391837

namespace A088128

/-- `A000166(n+1)+Δ[A186763(n)]` -/
def P2005536453416391837.Spec : Prop :=
  ∀ n, P2005536453416391837.a n = A088128 n

end A088128

/-! ## A088128.P6412883711038446042

`A000166(n+1)+A186763(n+1)-A186763(n)`
-/

namespace A088128.P6412883711038446042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A186763 (n + 1) - A186763 n)

end

end A088128.P6412883711038446042

namespace A088128

/-- `A000166(n+1)+A186763(n+1)-A186763(n)` -/
def P6412883711038446042.Spec : Prop :=
  ∀ n, P6412883711038446042.a n = A088128 n

end A088128

/-! ## A088128.P5440512453972657731

`A000522(n+1)-(A186763(n+1)+A186763(n))`
-/

namespace A088128.P5440512453972657731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1) - (A186763 (n + 1) + A186763 n)

end

end A088128.P5440512453972657731

namespace A088128

/-- `A000522(n+1)-(A186763(n+1)+A186763(n))` -/
def P5440512453972657731.Spec : Prop :=
  ∀ n, P5440512453972657731.a n = A088128 n

end A088128

/-!
# A088129: Expansion of e.g.f. sinh(x)/(1-x)^2.

The programs for A088129, the canonical program `A088129.P3805154452499076045` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088129 has offset 0).

The definition of A088129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088129.P3805154452499076045

`∑{#}[floor((n-1)/2), C(n, 2*#+1)*(n-2*#)!]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088129

/-- `∑{#}[floor((n-1)/2), C(n, 2*#+1)*(n-2*#)!]` -/
def P3805154452499076045.Spec : Prop :=
  ∀ n, (P3805154452499076045.a n : ℤ) = A088129 n

theorem P3805154452499076045.correct : P3805154452499076045.Spec := by
  intro n
  simp only [A088129]

end A088129

/-! ## A088129.P7585669716378196631

`A001339(n)-A088128(n)`
-/

namespace A088129.P7585669716378196631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n - A088128 n

end

end A088129.P7585669716378196631

namespace A088129

/-- `A001339(n)-A088128(n)` -/
def P7585669716378196631.Spec : Prop :=
  ∀ n, P7585669716378196631.a n = A088129 n

end A088129

/-! ## A088129.P921910613371312944

`A186763(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A088129.P921910613371312944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A186763 n + (n : ℤ) * a (n - 1)

end

end A088129.P921910613371312944

namespace A088129

/-- `A186763(n)+n*a(n-1)` -/
def P921910613371312944.Spec : Prop :=
  ∀ n, P921910613371312944.a n = A088129 n

end A088129

/-! ## A088129.P2850003421318470592

`A088128(n)-A000255(n)`
-/

namespace A088129.P2850003421318470592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088128 n - A000255 n

end

end A088129.P2850003421318470592

namespace A088129

/-- `A088128(n)-A000255(n)` -/
def P2850003421318470592.Spec : Prop :=
  ∀ n, P2850003421318470592.a n = A088129 n

end A088129

/-! ## A088129.P598127606613511898

`Δ[A000522(n)]-A088128(n)`
-/

namespace A088129.P598127606613511898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088128 n

end

end A088129.P598127606613511898

namespace A088129

/-- `Δ[A000522(n)]-A088128(n)` -/
def P598127606613511898.Spec : Prop :=
  ∀ n, P598127606613511898.a n = A088129 n

end A088129

/-! ## A088129.P3632692909864747807

`Δ[A073591(n)]-A088128(n)`
-/

namespace A088129.P3632692909864747807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088128 n

end

end A088129.P3632692909864747807

namespace A088129

/-- `Δ[A073591(n)]-A088128(n)` -/
def P3632692909864747807.Spec : Prop :=
  ∀ n, P3632692909864747807.a n = A088129 n

end A088129

/-! ## A088129.P11852169685920763057

`Δ[A186763(n)]-A000166(n)`
-/

namespace A088129.P11852169685920763057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000166 n

end

end A088129.P11852169685920763057

namespace A088129

/-- `Δ[A186763(n)]-A000166(n)` -/
def P11852169685920763057.Spec : Prop :=
  ∀ n, P11852169685920763057.a n = A088129 n

end A088129

/-! ## A088129.P1104768832406343001

`A186763(n+1)-(A186763(n)+A000166(n))`
-/

namespace A088129.P1104768832406343001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186763 (n + 1) - (A186763 n + A000166 n)

end

end A088129.P1104768832406343001

namespace A088129

/-- `A186763(n+1)-(A186763(n)+A000166(n))` -/
def P1104768832406343001.Spec : Prop :=
  ∀ n, P1104768832406343001.a n = A088129 n

end A088129

/-!
# A088131: a(n) equals the square of the n-th partial sum added to twice the n-th partial sum of the squares, divided by a(n-1), for all n>=1, with a(0)=1, a(1)=1.

The programs for A088131, the canonical program `A088131.P6722724817246475510` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088131 has offset 0).

The definition of A088131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088131.P779876776074430865

`ogf((1-3x+4x^2-2x^3)/(1-4x+x^3))`
-/

namespace A088131.P779876776074430865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4, -2] [1, -4, 0, 1] n

end

end A088131.P779876776074430865

namespace A088131

/-- `ogf((1-3x+4x^2-2x^3)/(1-4x+x^3))` -/
def P779876776074430865.Spec : Prop :=
  ∀ n, P779876776074430865.a n = A088131 n

end A088131

/-! ## A088131.P6722724817246475510

`4*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=8, a(3)=29`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088131

/-- `4*a(n-1)-a(n-3)` -/
def P6722724817246475510.Spec : Prop :=
  ∀ n, P6722724817246475510.a n = A088131 n

theorem P6722724817246475510.correct : P6722724817246475510.Spec := by
  intro n
  simp only [A088131]

end A088131

/-!
# A088132: a(n) equals the square of the n-th partial sum added to twice the n-th partial sum of the squares, divided by a(n-1), for all n>1, with a(0)=1, a(1)=3.

The programs for A088132, the canonical program `A088132.P1082978061580237241` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088132 has offset 0).

The definition of A088132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088132.P12403922747307724487

`ogf((1-x)/(1-4x+x^3))`
-/

namespace A088132.P12403922747307724487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, 0, 1] n

end

end A088132.P12403922747307724487

namespace A088132

/-- `ogf((1-x)/(1-4x+x^3))` -/
def P12403922747307724487.Spec : Prop :=
  ∀ n, P12403922747307724487.a n = A088132 n

end A088132

/-! ## A088132.P1082978061580237241

`4*a(n-1)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088132

/-- `4*a(n-1)-a(n-3)` -/
def P1082978061580237241.Spec : Prop :=
  ∀ n, P1082978061580237241.a n = A088132 n

theorem P1082978061580237241.correct : P1082978061580237241.Spec := by
  intro n
  simp only [A088132]

end A088132

/-! ## A088132.P3374317593495035040

`A287428(A133263(n))`
-/

namespace A088132.P3374317593495035040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287428 (A133263 n).toNat

end

end A088132.P3374317593495035040

namespace A088132

/-- `A287428(A133263(n))` -/
def P3374317593495035040.Spec : Prop :=
  ∀ n, P3374317593495035040.a n = A088132 n

end A088132

/-! ## A088132.P11685239501564133122

`A287428(A238531(n+1))`
-/

namespace A088132.P11685239501564133122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287428 (A238531 (n + 1)).toNat

end

end A088132.P11685239501564133122

namespace A088132

/-- `A287428(A238531(n+1))` -/
def P11685239501564133122.Spec : Prop :=
  ∀ n, P11685239501564133122.a n = A088132 n

end A088132

/-! ## A088132.P11793497740183935822

`A287428(∑[A000196(A014206(n))])`
-/

namespace A088132.P11793497740183935822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A014206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088132.P11793497740183935822

namespace A088132

/-- `A287428(∑[A000196(A014206(n))])` -/
def P11793497740183935822.Spec : Prop :=
  ∀ n, P11793497740183935822.a n = A088132 n

end A088132

/-!
# A088133: Sum of first and last digits of n. Different from A115299.

The programs for A088133, the canonical program `A088133.P7364122066664671483` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088133 has offset 0).

The definition of A088133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A088133.P7364122066664671483

`A000030(n)+A010879(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088133

/-- `A000030(n)+A010879(n)` -/
def P7364122066664671483.Spec : Prop :=
  ∀ n, P7364122066664671483.a n = A088133 n

theorem P7364122066664671483.correct : P7364122066664671483.Spec := by
  intro n
  simp only [A088133]

end A088133

/-! ## A088133.P6899185725316377712

`A010879(n)+val(A061509(n), 2)`
-/

namespace A088133.P6899185725316377712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + (SequenceMachineLib.valuation (A061509 n).toNat 2 : ℤ)

end

end A088133.P6899185725316377712

namespace A088133

/-- `A010879(n)+val(A061509(n), 2)` -/
def P6899185725316377712.Spec : Prop :=
  ∀ n, P6899185725316377712.a n = A088133 n

end A088133

/-! ## A088133.P4508339646172103520

`A010879(n)+A032762(n)%10`
-/

namespace A088133.P4508339646172103520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + Int.tmod (A032762 n) 10

end

end A088133.P4508339646172103520

namespace A088133

/-- `A010879(n)+A032762(n)%10` -/
def P4508339646172103520.Spec : Prop :=
  ∀ n, P4508339646172103520.a n = A088133 n

end A088133

/-! ## A088133.P15616197975575187771

`A010879(n)+A056142(n)%10`
-/

namespace A088133.P15616197975575187771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + Int.tmod (A056142 n) 10

end

end A088133.P15616197975575187771

namespace A088133

/-- `A010879(n)+A056142(n)%10` -/
def P15616197975575187771.Spec : Prop :=
  ∀ n, P15616197975575187771.a n = A088133 n

end A088133

/-! ## A088133.P10166657799641977388

`A010879(n)+A082216(n)%10`
-/

namespace A088133.P10166657799641977388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + Int.tmod (A082216 n) 10

end

end A088133.P10166657799641977388

namespace A088133

/-- `A010879(n)+A082216(n)%10` -/
def P10166657799641977388.Spec : Prop :=
  ∀ n, P10166657799641977388.a n = A088133 n

end A088133

/-! ## A088133.P1677180729921999656

`A010879(n)+A182324(n)-n`
-/

namespace A088133.P1677180729921999656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + (A182324 n - (n : ℤ))

end

end A088133.P1677180729921999656

namespace A088133

/-- `A010879(n)+A182324(n)-n` -/
def P1677180729921999656.Spec : Prop :=
  ∀ n, P1677180729921999656.a n = A088133 n

theorem P1677180729921999656.correct : P1677180729921999656.Spec := by
  intro n
  simp only [A088133, Nat.add_sub_cancel, A088133.P1677180729921999656.a, A088133.P7364122066664671483.a, A000030, A000030.P4990867543733972260.a, A010879, A010879.P10561743211919002802.a, A182324, A182324.P68523715600839783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088133

/-! ## A088133.P16176073006648138292

`A010879(n)+dr(n-A217657(n))`
-/

namespace A088133.P16176073006648138292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + (SequenceMachineLib.digitalRoot ((n : ℤ) - A217657 n) : ℤ)

end

end A088133.P16176073006648138292

namespace A088133

/-- `A010879(n)+dr(n-A217657(n))` -/
def P16176073006648138292.Spec : Prop :=
  ∀ n, P16176073006648138292.a n = A088133 n

end A088133

/-! ## A088133.P7215384835398923631

`A010879(A004086(n))+A010879(n)`
-/

namespace A088133.P7215384835398923631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 n).toNat + A010879 n

end

end A088133.P7215384835398923631

namespace A088133

/-- `A010879(A004086(n))+A010879(n)` -/
def P7215384835398923631.Spec : Prop :=
  ∀ n, P7215384835398923631.a n = A088133 n

end A088133

/-! ## A088133.P3934599804817658822

`A010879(n)+A010879(A032762(n))`
-/

namespace A088133.P3934599804817658822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + A010879 (A032762 n).toNat

end

end A088133.P3934599804817658822

namespace A088133

/-- `A010879(n)+A010879(A032762(n))` -/
def P3934599804817658822.Spec : Prop :=
  ∀ n, P3934599804817658822.a n = A088133 n

end A088133

/-! ## A088133.P14731829761478403391

`A010879(n)+A007376(A229186(n))`
-/

namespace A088133.P14731829761478403391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + A007376 (A229186 n).toNat

end

end A088133.P14731829761478403391

namespace A088133

/-- `A010879(n)+A007376(A229186(n))` -/
def P14731829761478403391.Spec : Prop :=
  ∀ n, P14731829761478403391.a n = A088133 n

end A088133

/-! ## A088133.P12715210806180549247

`A061762(A051022(n))`
-/

namespace A088133.P12715210806180549247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A051022 n).toNat

end

end A088133.P12715210806180549247

namespace A088133

/-- `A061762(A051022(n))` -/
def P12715210806180549247.Spec : Prop :=
  ∀ n, P12715210806180549247.a n = A088133 n

end A088133

/-!
# A088134: Numbers n such that sum of first and last digits is prime.

The programs for A088134, there is no canonical definition to state claims against.
-/

/-! ## A088134.P11900909124073896749

`eq[1, ∑{e}[A088133(n), #]]`
-/

namespace A088134.P11900909124073896749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088134.P11900909124073896749

/-! ## A088134.P7809672148947847066

`eq[1, A003415(A088133(n))]`
-/

namespace A088134.P7809672148947847066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A088133 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088134.P7809672148947847066

/-! ## A088134.P14419826747786130664

`eq[1, A105700(A010879(n)+A182324(n)-n)]`
-/

namespace A088134.P14419826747786130664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A010879 n + (A182324 n - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088134.P14419826747786130664

/-! ## A088134.P17773064694343384792

`A028834(n+4)%A329170(n+1)`
-/

namespace A088134.P17773064694343384792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028834 (n + 4)) (A329170 (n + 1))

end

end A088134.P17773064694343384792

/-!
# A088135: Sum of first and last digits of n-th prime.

The programs for A088135, the canonical program `A088135.P872632457780307146` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088135 has offset 1).

The definition of A088135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088135.P8921758030494271452

`A088133(A137589(n+1))`
-/

namespace A088135.P8921758030494271452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A137589 (n + 1)).toNat

end

end A088135.P8921758030494271452

namespace A088135

/-- `A088133(A137589(n+1))` -/
def P8921758030494271452.Spec : Prop :=
  ∀ n, P8921758030494271452.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P872632457780307146

`A007652(n+1)+A077648(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088135

/-- `A007652(n+1)+A077648(n+1)` -/
def P872632457780307146.Spec : Prop :=
  ∀ n, P872632457780307146.a n = A088135 (n + 1)

theorem P872632457780307146.correct : P872632457780307146.Spec := by
  intro n
  simp only [A088135, Nat.add_sub_cancel]

end A088135

/-! ## A088135.P1218500649549363093

`A077648(n+1)+A000040(n+1)%10`
-/

namespace A088135.P1218500649549363093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077648 (n + 1) + Int.tmod (A000040 (n + 1)) 10

end

end A088135.P1218500649549363093

namespace A088135

/-- `A077648(n+1)+A000040(n+1)%10` -/
def P1218500649549363093.Spec : Prop :=
  ∀ n, P1218500649549363093.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P3782979338968123383

`A032759(n+1)%10+5-A277097(n+1)`
-/

namespace A088135.P3782979338968123383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032759 (n + 1)) 10 + (5 - A277097 (n + 1))

end

end A088135.P3782979338968123383

namespace A088135

/-- `A032759(n+1)%10+5-A277097(n+1)` -/
def P3782979338968123383.Spec : Prop :=
  ∀ n, P3782979338968123383.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P7905138822843173310

`A077648(n+1)+A000030(A166499(n+1))`
-/

namespace A088135.P7905138822843173310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077648 (n + 1) + A000030 (A166499 (n + 1)).toNat

end

end A088135.P7905138822843173310

namespace A088135

/-- `A077648(n+1)+A000030(A166499(n+1))` -/
def P7905138822843173310.Spec : Prop :=
  ∀ n, P7905138822843173310.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P8208593528330550886

`A067087(n+1)%A040020(n)+5-A277097(n+1)`
-/

namespace A088135.P8208593528330550886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067087 (n + 1)) (A040020 n) + (5 - A277097 (n + 1))

end

end A088135.P8208593528330550886

namespace A088135

/-- `A067087(n+1)%A040020(n)+5-A277097(n+1)` -/
def P8208593528330550886.Spec : Prop :=
  ∀ n, P8208593528330550886.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P17051419457374785530

`A228355(A068670(n))+A032759(n+1)%10`
-/

namespace A088135.P17051419457374785530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228355 (A068670 n).toNat + Int.tmod (A032759 (n + 1)) 10

end

end A088135.P17051419457374785530

namespace A088135

/-- `A228355(A068670(n))+A032759(n+1)%10` -/
def P17051419457374785530.Spec : Prop :=
  ∀ n, P17051419457374785530.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P5813084342697956508

`A228355(A068670(n))+A067087(n+1)%A040020(n)`
-/

namespace A088135.P5813084342697956508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228355 (A068670 n).toNat + Int.tmod (A067087 (n + 1)) (A040020 n)

end

end A088135.P5813084342697956508

namespace A088135

/-- `A228355(A068670(n))+A067087(n+1)%A040020(n)` -/
def P5813084342697956508.Spec : Prop :=
  ∀ n, P5813084342697956508.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P660798511382332338

`A010879(A032759(n+1))+5-A277097(n+1)`
-/

namespace A088135.P660798511382332338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032759 (n + 1)).toNat + (5 - A277097 (n + 1))

end

end A088135.P660798511382332338

namespace A088135

/-- `A010879(A032759(n+1))+5-A277097(n+1)` -/
def P660798511382332338.Spec : Prop :=
  ∀ n, P660798511382332338.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P15265405043505491892

`A010879(A032759(n+1))+(A052147(n+1)-2)%10`
-/

namespace A088135.P15265405043505491892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032759 (n + 1)).toNat + Int.tmod (A052147 (n + 1) - 2) 10

end

end A088135.P15265405043505491892

namespace A088135

/-- `A010879(A032759(n+1))+(A052147(n+1)-2)%10` -/
def P15265405043505491892.Spec : Prop :=
  ∀ n, P15265405043505491892.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P10770829293534790356

`A088133(A000040(n+1))`
-/

namespace A088135.P10770829293534790356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A000040 (n + 1)).toNat

end

end A088135.P10770829293534790356

namespace A088135

/-- `A088133(A000040(n+1))` -/
def P10770829293534790356.Spec : Prop :=
  ∀ n, P10770829293534790356.a n = A088135 (n + 1)

theorem P10770829293534790356.correct : P10770829293534790356.Spec := by
  intro n
  simp only [A088135, Nat.add_sub_cancel, A088135.P10770829293534790356.a, A088135.P872632457780307146.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007652, A007652.P8278837090424156821.a, A077648, A077648.P9186107893677974913.a, A088133, A088133.P7364122066664671483.a, A000030, A000030.P4990867543733972260.a, A010879, A010879.P10561743211919002802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088135

/-! ## A088135.P2339530321763191765

`A088133(A004087(n+1))`
-/

namespace A088135.P2339530321763191765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A004087 (n + 1)).toNat

end

end A088135.P2339530321763191765

namespace A088135

/-- `A088133(A004087(n+1))` -/
def P2339530321763191765.Spec : Prop :=
  ∀ n, P2339530321763191765.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P4102180243406255047

`A088133(A008578(n+2))`
-/

namespace A088135.P4102180243406255047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A008578 (n + 2)).toNat

end

end A088135.P4102180243406255047

namespace A088135

/-- `A088133(A008578(n+2))` -/
def P4102180243406255047.Spec : Prop :=
  ∀ n, P4102180243406255047.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P2983582994294639457

`A088133(A182986(n+2))`
-/

namespace A088135.P2983582994294639457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (A182986 (n + 2)).toNat

end

end A088135.P2983582994294639457

namespace A088135

/-- `A088133(A182986(n+2))` -/
def P2983582994294639457.Spec : Prop :=
  ∀ n, P2983582994294639457.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P4042664926989118594

`A088133(eq[1, A003415(n)])`
-/

namespace A088135.P4042664926989118594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088135.P4042664926989118594

namespace A088135

/-- `A088133(eq[1, A003415(n)])` -/
def P4042664926989118594.Spec : Prop :=
  ∀ n, P4042664926989118594.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P5708272891083437648

`A007953(A073729(Δ[A007504(n)]))`
-/

namespace A088135.P5708272891083437648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A073729 (f1 (n + 1) - f1 n).toNat).toNat

end

end A088135.P5708272891083437648

namespace A088135

/-- `A007953(A073729(Δ[A007504(n)]))` -/
def P5708272891083437648.Spec : Prop :=
  ∀ n, P5708272891083437648.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P1488343456611756876

`A007953(A073729(p?[A014681(n)]))`
-/

namespace A088135.P1488343456611756876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A073729 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A088135.P1488343456611756876

namespace A088135

/-- `A007953(A073729(p?[A014681(n)]))` -/
def P1488343456611756876.Spec : Prop :=
  ∀ n, P1488343456611756876.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P5952200504180097806

`A065881(A004087(n+1))+A007652(n+1)`
-/

namespace A088135.P5952200504180097806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A004087 (n + 1)).toNat + A007652 (n + 1)

end

end A088135.P5952200504180097806

namespace A088135

/-- `A065881(A004087(n+1))+A007652(n+1)` -/
def P5952200504180097806.Spec : Prop :=
  ∀ n, P5952200504180097806.a n = A088135 (n + 1)

end A088135

/-! ## A088135.P14519447982924356087

`∑{digits}[A138840(n+1), #]`
-/

namespace A088135.P14519447982924356087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A088135.P14519447982924356087

namespace A088135

/-- `∑{digits}[A138840(n+1), #]` -/
def P14519447982924356087.Spec : Prop :=
  ∀ n, (P14519447982924356087.a n : ℤ) = A088135 (n + 1)

end A088135

/-! ## A088135.P3198641544576729068

`A007953(A138840(n+1))`
-/

namespace A088135.P3198641544576729068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A138840 (n + 1)).toNat

end

end A088135.P3198641544576729068

namespace A088135

/-- `A007953(A138840(n+1))` -/
def P3198641544576729068.Spec : Prop :=
  ∀ n, P3198641544576729068.a n = A088135 (n + 1)

end A088135

/-!
# A088136: Primes such that sum of first and last digits is prime.

The programs for A088136, there is no canonical definition to state claims against.
-/

/-! ## A088136.P18241746040941655804

`A367793(n+5)%(A167842(n+1)+2)`
-/

namespace A088136.P18241746040941655804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367793 (n + 5)) (A167842 (n + 1) + 2)

end

end A088136.P18241746040941655804

/-! ## A088136.P17760679017565828612

`p?[A088134(n+1)]`
-/

namespace A088136.P17760679017565828612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088136.P17760679017565828612

/-! ## A088136.P3702774177257048431

`record[p?[A088134(A052938(n))]]`
-/

namespace A088136.P3702774177257048431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088136.P3702774177257048431

/-! ## A088136.P8681412094265099912

`p?[record[A088134(A106466(n))]]`
-/

namespace A088136.P8681412094265099912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088136.P8681412094265099912

/-! ## A088136.P16962112288108080045

`record[A006530(A088134(n+2))]`
-/

namespace A088136.P16962112288108080045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088134 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088136.P16962112288108080045

/-!
# A088137: Generalized Gaussian Fibonacci integers.

The programs for A088137, the canonical program `A088137.P4612197678669384820` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088137 has offset 0).

The definition of A088137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088137.P15960549284140528209

`ogf(x/(1-2x+3x^2))`
-/

namespace A088137.P15960549284140528209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 3] n

end

end A088137.P15960549284140528209

namespace A088137

/-- `ogf(x/(1-2x+3x^2))` -/
def P15960549284140528209.Spec : Prop :=
  ∀ n, P15960549284140528209.a n = A088137 n

end A088137

/-! ## A088137.P4612197678669384820

`2*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088137

/-- `2*a(n-1)-3*a(n-2)` -/
def P4612197678669384820.Spec : Prop :=
  ∀ n, P4612197678669384820.a n = A088137 n

theorem P4612197678669384820.correct : P4612197678669384820.Spec := by
  intro n
  simp only [A088137]

end A088137

/-! ## A088137.P14977917863575932273

`∑{#}[floor(n/2), C(n, 2*#+1)*(-2)^#]`
-/

namespace A088137.P14977917863575932273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (2 * k + 1) : ℤ) * (-2) ^ k

end

end A088137.P14977917863575932273

namespace A088137

/-- `∑{#}[floor(n/2), C(n, 2*#+1)*(-2)^#]` -/
def P14977917863575932273.Spec : Prop :=
  ∀ n, P14977917863575932273.a n = A088137 n

end A088137

/-! ## A088137.P8781661261308806447

`a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A088137.P8781661261308806447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) - 6 * a (n - 3)

end

end A088137.P8781661261308806447

namespace A088137

/-- `a(n-2)-6*a(n-3)` -/
def P8781661261308806447.Spec : Prop :=
  ∀ n, P8781661261308806447.a n = A088137 n

end A088137

/-! ## A088137.P6080632059841922070

`(a(n-1)-a(n-2))/(1-1/2)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A088137.P6080632059841922070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (1 : ℚ) / 2) - a (n - 2)

end

end A088137.P6080632059841922070

namespace A088137

/-- `(a(n-1)-a(n-2))/(1-1/2)-a(n-2)` -/
def P6080632059841922070.Spec : Prop :=
  ∀ n, P6080632059841922070.a n = (A088137 n : ℚ)

end A088137

/-! ## A088137.P12799896086922703423

`a(n-1)-(a(n-2)+a(n-2)+a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A088137.P12799896086922703423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (a (n - 2) + (a (n - 2) + (a (n - 2) - a (n - 1))))

end

end A088137.P12799896086922703423

namespace A088137

/-- `a(n-1)-(a(n-2)+a(n-2)+a(n-2)-a(n-1))` -/
def P12799896086922703423.Spec : Prop :=
  ∀ n, P12799896086922703423.a n = A088137 n

theorem P12799896086922703423.correct : P12799896086922703423.Spec := by
  intro n
  simp only [A088137, Nat.add_sub_cancel, A088137.P12799896086922703423.a, A088137.P4612197678669384820.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A088137

/-! ## A088137.P13019549503413481290

`a(n-1)-(a(n-2)-(a(n-1)-a(n-2)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A088137.P13019549503413481290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 2)))

end

end A088137.P13019549503413481290

namespace A088137

/-- `a(n-1)-(a(n-2)-(a(n-1)-a(n-2)-a(n-2)))` -/
def P13019549503413481290.Spec : Prop :=
  ∀ n, P13019549503413481290.a n = A088137 n

theorem P13019549503413481290.correct : P13019549503413481290.Spec := by
  intro n
  simp only [A088137, Nat.add_sub_cancel, A088137.P13019549503413481290.a, A088137.P4612197678669384820.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A088137

/-! ## A088137.P5357418951022382796

`∑[A087455(n)]-A087455(n)`
-/

namespace A088137.P5357418951022382796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087455 n

end

end A088137.P5357418951022382796

namespace A088137

/-- `∑[A087455(n)]-A087455(n)` -/
def P5357418951022382796.Spec : Prop :=
  ∀ n, P5357418951022382796.a n = A088137 n

end A088137

/-! ## A088137.P3056047590060425220

`A025170(n)/A087455(n+1)-A087455(n)`
-/

namespace A088137.P3056047590060425220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025170 n : ℚ) / (A087455 (n + 1) : ℚ) - (A087455 n : ℚ)

end

end A088137.P3056047590060425220

namespace A088137

/-- `A025170(n)/A087455(n+1)-A087455(n)` -/
def P3056047590060425220.Spec : Prop :=
  ∀ n, P3056047590060425220.a n = (A088137 n : ℚ)

end A088137

/-!
# A088138: Generalized Gaussian Fibonacci integers.

The programs for A088138, the canonical program `A088138.P597977756697287052` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088138 has offset 0).

The definition of A088138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088138.P3190848824460966978

`ogf(x/(1-2x+4x^2))`
-/

namespace A088138.P3190848824460966978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 4] n

end

end A088138.P3190848824460966978

namespace A088138

/-- `ogf(x/(1-2x+4x^2))` -/
def P3190848824460966978.Spec : Prop :=
  ∀ n, P3190848824460966978.a n = A088138 n

end A088138

/-! ## A088138.P597977756697287052

`2*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088138

/-- `2*a(n-1)-4*a(n-2)` -/
def P597977756697287052.Spec : Prop :=
  ∀ n, P597977756697287052.a n = A088138 n

theorem P597977756697287052.correct : P597977756697287052.Spec := by
  intro n
  simp only [A088138]

end A088138

/-! ## A088138.P12438110826833206796

`∑{#}[floor(n/2), C(n, 2*#+1)*(-3)^#]`
-/

namespace A088138.P12438110826833206796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose n (2 * k + 1) : ℤ) * (-3) ^ k

end

end A088138.P12438110826833206796

namespace A088138

/-- `∑{#}[floor(n/2), C(n, 2*#+1)*(-3)^#]` -/
def P12438110826833206796.Spec : Prop :=
  ∀ n, P12438110826833206796.a n = A088138 n

end A088138

/-! ## A088138.P5299856480397218501

`-(8*a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A088138.P5299856480397218501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  -(8 * a (n - 3))

end

end A088138.P5299856480397218501

namespace A088138

/-- `-(8*a(n-3))` -/
def P5299856480397218501.Spec : Prop :=
  ∀ n, P5299856480397218501.a n = A088138 n

end A088138

/-! ## A088138.P6507453325154889938

`a(n-3)-9*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A088138.P6507453325154889938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) - 9 * a (n - 3)

end

end A088138.P6507453325154889938

namespace A088138

/-- `a(n-3)-9*a(n-3)` -/
def P6507453325154889938.Spec : Prop :=
  ∀ n, P6507453325154889938.a n = A088138 n

end A088138

/-! ## A088138.P9379148979623070008

`2^(n-1)*A128834(n)`
-/

namespace A088138.P9379148979623070008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A128834 n : ℚ)

end

end A088138.P9379148979623070008

namespace A088138

/-- `2^(n-1)*A128834(n)` -/
def P9379148979623070008.Spec : Prop :=
  ∀ n, P9379148979623070008.a n = (A088138 n : ℚ)

end A088138

/-! ## A088138.P14405406100383404127

`2^(n-1)*A163810(n+3)`
-/

namespace A088138.P14405406100383404127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A163810 (n + 3) : ℚ)

end

end A088138.P14405406100383404127

namespace A088138

/-- `2^(n-1)*A163810(n+3)` -/
def P14405406100383404127.Spec : Prop :=
  ∀ n, P14405406100383404127.a n = (A088138 n : ℚ)

end A088138

/-! ## A088138.P3610461754111480333

`A102283(n)*A123344(n)`
-/

namespace A088138.P3610461754111480333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A123344 n

end

end A088138.P3610461754111480333

namespace A088138

/-- `A102283(n)*A123344(n)` -/
def P3610461754111480333.Spec : Prop :=
  ∀ n, P3610461754111480333.a n = A088138 n

end A088138

/-! ## A088138.P7432417180295174637

`A128834(n)*A131577(n)`
-/

namespace A088138.P7432417180295174637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A131577 n

end

end A088138.P7432417180295174637

namespace A088138

/-- `A128834(n)*A131577(n)` -/
def P7432417180295174637.Spec : Prop :=
  ∀ n, P7432417180295174637.a n = A088138 n

end A088138

/-! ## A088138.P3944195921393241594

`A131577(n)*A163806(n)`
-/

namespace A088138.P3944195921393241594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A163806 n

end

end A088138.P3944195921393241594

namespace A088138

/-- `A131577(n)*A163806(n)` -/
def P3944195921393241594.Spec : Prop :=
  ∀ n, P3944195921393241594.a n = A088138 n

end A088138

/-! ## A088138.P7596738518130005546

`A010892(n+2)*A157823(n)`
-/

namespace A088138.P7596738518130005546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 2) * A157823 n

end

end A088138.P7596738518130005546

namespace A088138

/-- `A010892(n+2)*A157823(n)` -/
def P7596738518130005546.Spec : Prop :=
  ∀ n, P7596738518130005546.a n = A088138 n

end A088138

/-! ## A088138.P3253383229255655221

`A010892(n+5)*A011782(n)`
-/

namespace A088138.P3253383229255655221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 5) * A011782 n

end

end A088138.P3253383229255655221

namespace A088138

/-- `A010892(n+5)*A011782(n)` -/
def P3253383229255655221.Spec : Prop :=
  ∀ n, P3253383229255655221.a n = A088138 n

end A088138

/-! ## A088138.P3273973793325559203

`A010892(n+5)*A131577(n)`
-/

namespace A088138.P3273973793325559203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 5) * A131577 n

end

end A088138.P3273973793325559203

namespace A088138

/-- `A010892(n+5)*A131577(n)` -/
def P3273973793325559203.Spec : Prop :=
  ∀ n, P3273973793325559203.a n = A088138 n

end A088138

/-! ## A088138.P5630197564328242527

`(∑[A010892(n)]-1)*A011782(n)`
-/

namespace A088138.P5630197564328242527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A011782 n

end

end A088138.P5630197564328242527

namespace A088138

/-- `(∑[A010892(n)]-1)*A011782(n)` -/
def P5630197564328242527.Spec : Prop :=
  ∀ n, P5630197564328242527.a n = A088138 n

end A088138

/-! ## A088138.P7917887367913550264

`(A001082(n+2)%3-1)*A011782(n)`
-/

namespace A088138.P7917887367913550264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A001082 (n + 2)) 3 - 1) * A011782 n

end

end A088138.P7917887367913550264

namespace A088138

/-- `(A001082(n+2)%3-1)*A011782(n)` -/
def P7917887367913550264.Spec : Prop :=
  ∀ n, P7917887367913550264.a n = A088138 n

end A088138

/-! ## A088138.P8793364796351358869

`A011782(n)*A128834(n)*A128834(n)²`
-/

namespace A088138.P8793364796351358869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A128834 n * A128834 n ^ 2

end

end A088138.P8793364796351358869

namespace A088138

/-- `A011782(n)*A128834(n)*A128834(n)²` -/
def P8793364796351358869.Spec : Prop :=
  ∀ n, P8793364796351358869.a n = A088138 n

end A088138

/-! ## A088138.P14760021737373843443

`A138230(n)-A120580(n)`
-/

namespace A088138.P14760021737373843443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138230 n - A120580 n

end

end A088138.P14760021737373843443

namespace A088138

/-- `A138230(n)-A120580(n)` -/
def P14760021737373843443.Spec : Prop :=
  ∀ n, P14760021737373843443.a n = A088138 n

end A088138

/-! ## A088138.P3102480960426621856

`A102283(n)*A138230(n)`
-/

namespace A088138.P3102480960426621856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A138230 n

end

end A088138.P3102480960426621856

namespace A088138

/-- `A102283(n)*A138230(n)` -/
def P3102480960426621856.Spec : Prop :=
  ∀ n, P3102480960426621856.a n = A088138 n

end A088138

/-! ## A088138.P6022421176846209477

`A049347(n+2)*A138230(n)`
-/

namespace A088138.P6022421176846209477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 2) * A138230 n

end

end A088138.P6022421176846209477

namespace A088138

/-- `A049347(n+2)*A138230(n)` -/
def P6022421176846209477.Spec : Prop :=
  ∀ n, P6022421176846209477.a n = A088138 n

end A088138

/-! ## A088138.P13205466884835880579

`A128834(2*n)*A138230(n)`
-/

namespace A088138.P13205466884835880579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (2 * n) * A138230 n

end

end A088138.P13205466884835880579

namespace A088138

/-- `A128834(2*n)*A138230(n)` -/
def P13205466884835880579.Spec : Prop :=
  ∀ n, P13205466884835880579.a n = A088138 n

end A088138

/-!
# A088139: a(n) = 2*a(n-1) - 6*a(n-2), a(0)=0, a(1)=1.

The programs for A088139, the canonical program `A088139.P17614481107487505667` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088139 has offset 0).

The definition of A088139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-6*a(n-2)` (program `A088139.P17614481107487505667`, by `A088139.P17614481107487505667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A088139.P9050414973794085728

`ogf(x/(1-2x+6x^2))`
-/

namespace A088139.P9050414973794085728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 6] n

end

end A088139.P9050414973794085728

namespace A088139

/-- `ogf(x/(1-2x+6x^2))` -/
def P9050414973794085728.Spec : Prop :=
  ∀ n, P9050414973794085728.a n = A088139 n

end A088139

/-! ## A088139.P17614481107487505667

`2*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088139

/-- `2*a(n-1)-6*a(n-2)` -/
def P17614481107487505667.Spec : Prop :=
  ∀ n, P17614481107487505667.a n = A088139 n

theorem P17614481107487505667.correct : P17614481107487505667.Spec := by
  intro n
  simp only [A088139]

end A088139

/-! ## A088139.P5508227427882727909

`2*(a(n-1)-3*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A088139.P5508227427882727909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) - 3 * a (n - 2))

end

end A088139.P5508227427882727909

namespace A088139

/-- `2*(a(n-1)-3*a(n-2))` -/
def P5508227427882727909.Spec : Prop :=
  ∀ n, P5508227427882727909.a n = A088139 n

theorem P5508227427882727909.correct : P5508227427882727909.Spec := by
  intro n
  simp only [A088139, Nat.add_sub_cancel, A088139.P5508227427882727909.a, A088139.P17614481107487505667.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A088139

/-! ## A088139.P15511207317512685647

`∑[A138229(n)]-A138229(n)`
-/

namespace A088139.P15511207317512685647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A138229 n

end

end A088139.P15511207317512685647

namespace A088139

/-- `∑[A138229(n)]-A138229(n)` -/
def P15511207317512685647.Spec : Prop :=
  ∀ n, P15511207317512685647.a n = A088139 n

end A088139

/-! ## A088139.P18131220835342724991

`A057427(n)*A349442(A025192(n))`
-/

namespace A088139.P18131220835342724991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A349442 (A025192 n).toNat

end

end A088139.P18131220835342724991

namespace A088139

/-- `A057427(n)*A349442(A025192(n))` -/
def P18131220835342724991.Spec : Prop :=
  ∀ n, P18131220835342724991.a n = A088139 n

end A088139

/-!
# A088141: a(n) = the largest k such that, if k samples are taken from a group of n items, with replacement, a duplication is unlikely (p<1/2).

The programs for A088141, there is no canonical definition to state claims against.
-/

/-! ## A088141.P8915174725902962066

`A033810(n+1)-1`
-/

namespace A088141.P8915174725902962066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (n + 1) - 1

end

end A088141.P8915174725902962066

/-! ## A088141.P4761065392817128116

`∑[char[A308699(n)-1]]`
-/

namespace A088141.P4761065392817128116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088141.P4761065392817128116

/-! ## A088141.P5775302945887300104

`A023443(A033810(n+1))`
-/

namespace A088141.P5775302945887300104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033810 (n + 1)).toNat

end

end A088141.P5775302945887300104

/-! ## A088141.P16977579966990128731

`A003991(C(A033810(n+1), 2))`
-/

namespace A088141.P16977579966990128731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (Nat.choose (A033810 (n + 1)).toNat 2)

end

end A088141.P16977579966990128731

/-! ## A088141.P10424826857052460709

`A152570(Δ[or(1, n)])+A033810(n+1)`
-/

namespace A088141.P10424826857052460709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A033810 (n + 1)

end

end A088141.P10424826857052460709

/-! ## A088141.P435427403020781914

`A033810(n+1)+A001478(n+1)+n`
-/

namespace A088141.P435427403020781914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (n + 1) + A001478 (n + 1) + (n : ℤ)

end

end A088141.P435427403020781914

/-! ## A088141.P2904643973638850441

`A033999(A028234(n+1))+A033810(n+1)`
-/

namespace A088141.P2904643973638850441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A028234 (n + 1)).toNat + A033810 (n + 1)

end

end A088141.P2904643973638850441

/-! ## A088141.P12939218172757528687

`A140106(A033810(n+1)+A033810(n+3))`
-/

namespace A088141.P12939218172757528687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A033810 (n + 1) + A033810 (n + 3)).toNat

end

end A088141.P12939218172757528687

/-! ## A088141.P18060448841075697343

`A121934(n+1)%A033810(n+1)`
-/

namespace A088141.P18060448841075697343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A033810 (n + 1))

end

end A088141.P18060448841075697343

/-! ## A088141.P14429689255897587125

`A030494(n+1)%A033810(n+1)`
-/

namespace A088141.P14429689255897587125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A033810 (n + 1))

end

end A088141.P14429689255897587125

/-! ## A088141.P5370609203742899993

`A072828(n+1)%A033810(n+1)`
-/

namespace A088141.P5370609203742899993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A033810 (n + 1))

end

end A088141.P5370609203742899993

/-!
# A088142: Number of partitions of n-set with 2 block sizes.

The programs for A088142, there is no canonical definition to state claims against.
-/

/-! ## A088142.P13826078232831036719

`A208437(A006463(n+3)+2)`
-/

namespace A088142.P13826078232831036719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208437 (A006463 (n + 3) + 2).toNat

end

end A088142.P13826078232831036719

/-! ## A088142.P15611584102601483803

`record[A208437(n+4)/A131632(n+3)]`
-/

namespace A088142.P15611584102601483803
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208437 (n + 4) : ℚ) / (A131632 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088142.P15611584102601483803

/-!
# A088143: Find the shortest prefix of Pi-3 = .141592653589793238462643383279502.. which is divisible by n and divide by n.

The programs for A088143, there is no canonical definition to state claims against.
-/

/-! ## A088143.P5841745585165597120

`A378625(n+1)/(n+1)`
-/

namespace A088143.P5841745585165597120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378625 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A088143.P5841745585165597120

/-!
# A088144: Sum of primitive roots of n-th prime.

The programs for A088144, there is no canonical definition to state claims against.
-/

/-! ## A088144.P551932031996654333

`A121380(Δ[A007504(n)])`
-/

namespace A088144.P551932031996654333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (f1 (n + 1) - f1 n).toNat

end

end A088144.P551932031996654333

/-! ## A088144.P7301860023247060479

`A121380(A000040(n+1))`
-/

namespace A088144.P7301860023247060479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (A000040 (n + 1)).toNat

end

end A088144.P7301860023247060479

/-! ## A088144.P16156753852915777130

`A121380(A008578(n+2))`
-/

namespace A088144.P16156753852915777130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (A008578 (n + 2)).toNat

end

end A088144.P16156753852915777130

/-! ## A088144.P15141843650591609574

`A121380(A182986(n+2))`
-/

namespace A088144.P15141843650591609574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (A182986 (n + 2)).toNat

end

end A088144.P15141843650591609574

/-! ## A088144.P12266010222069204226

`A121380(record[A006530(n+2)])`
-/

namespace A088144.P12266010222069204226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088144.P12266010222069204226

/-! ## A088144.P14765080195013372512

`A121380(record[A014963(n+2)])`
-/

namespace A088144.P14765080195013372512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088144.P14765080195013372512

/-! ## A088144.P11599523483474877180

`A121380(record[A020639(n+2)])`
-/

namespace A088144.P11599523483474877180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088144.P11599523483474877180

/-! ## A088144.P15523889123055684333

`A121380(A006093(n+1)+1)`
-/

namespace A088144.P15523889123055684333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (A006093 (n + 1) + 1).toNat

end

end A088144.P15523889123055684333

/-! ## A088144.P5096062261435959920

`A121380(A008864(n+1)-1)`
-/

namespace A088144.P5096062261435959920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (A008864 (n + 1) - 1).toNat

end

end A088144.P5096062261435959920

/-! ## A088144.P6011714858784737789

`A121380(record[A000010(n+1)+1])`
-/

namespace A088144.P6011714858784737789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121380 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088144.P6011714858784737789

/-!
# A088145: Let p = prime(n); then a(n) = (Sum(primitive roots of p) - moebius(p-1))/p.

The programs for A088145, there is no canonical definition to state claims against.
-/

/-! ## A088145.P16724244936869747483

`round(A088144(n+1)/(p?[abs(2*n-3)]+1))`
-/

namespace A088145.P16724244936869747483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088144 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ))

end

end A088145.P16724244936869747483

/-! ## A088145.P2214753689957811892

`floor(A088144(n+1)/A039915(n+1))`
-/

namespace A088145.P2214753689957811892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088144 (n + 1) : ℚ) / (A039915 (n + 1) : ℚ)⌋

end

end A088145.P2214753689957811892

/-! ## A088145.P2167187649404652064

`round(A088144(n+1)/A008864(n+1))`
-/

namespace A088145.P2167187649404652064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088144 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ))

end

end A088145.P2167187649404652064

/-! ## A088145.P3828743282481063338

`round(A088144(n+1)/A014193(n+1))`
-/

namespace A088145.P3828743282481063338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088144 (n + 1) : ℚ) / (A014193 (n + 1) : ℚ))

end

end A088145.P3828743282481063338

/-! ## A088145.P14721994917043115638

`round((A088144(n+1)-1)/A006093(n+1))`
-/

namespace A088145.P14721994917043115638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088144 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ))

end

end A088145.P14721994917043115638

/-! ## A088145.P2657803816522676002

`floor(A121380(A000040(n+1))/A039915(n+1))`
-/

namespace A088145.P2657803816522676002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121380 (A000040 (n + 1)).toNat : ℚ) / (A039915 (n + 1) : ℚ)⌋

end

end A088145.P2657803816522676002

/-! ## A088145.P6149456808565720035

`round(A121380(A000040(n+1))/A008864(n+1))`
-/

namespace A088145.P6149456808565720035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A121380 (A000040 (n + 1)).toNat : ℚ) / (A008864 (n + 1) : ℚ))

end

end A088145.P6149456808565720035

/-! ## A088145.P10396852626075608700

`round(A121380(A000040(n+1))/A014193(n+1))`
-/

namespace A088145.P10396852626075608700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A121380 (A000040 (n + 1)).toNat : ℚ) / (A014193 (n + 1) : ℚ))

end

end A088145.P10396852626075608700

/-! ## A088145.P4840883638497178247

`(A088144(n+1)-A089451(n+1))/A000040(n+1)`
-/

namespace A088145.P4840883638497178247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088144 (n + 1) - A089451 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A088145.P4840883638497178247

/-! ## A088145.P19914956962568015

`(A088144(n+1)-A089451(n+1))%record[A000010(n+1)]`
-/

namespace A088145.P19914956962568015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088144 (n + 1) - A089451 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A088145.P19914956962568015

/-!
# A088146: n-th prime rotated one binary place to the right.

The programs for A088146, there is no canonical definition to state claims against.
-/

/-! ## A088146.P5851657338415724464

`A088162(n+1)+A088147(n+1)`
-/

namespace A088146.P5851657338415724464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088162 (n + 1) + A088147 (n + 1)

end

end A088146.P5851657338415724464

/-! ## A088146.P9021121811279244820

`A038572(A000040(n+1))`
-/

namespace A088146.P9021121811279244820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A000040 (n + 1)).toNat

end

end A088146.P9021121811279244820

/-! ## A088146.P17580224362074525979

`A038572(A006005(n+1))`
-/

namespace A088146.P17580224362074525979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A006005 (n + 1)).toNat

end

end A088146.P17580224362074525979

/-! ## A088146.P6211178532625092985

`A038572(A008578(n+2))`
-/

namespace A088146.P6211178532625092985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A008578 (n + 2)).toNat

end

end A088146.P6211178532625092985

/-! ## A088146.P7720856976627555389

`A038572(A075643(n+2))`
-/

namespace A088146.P7720856976627555389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A075643 (n + 2)).toNat

end

end A088146.P7720856976627555389

/-! ## A088146.P8283442931179923037

`A038572(A182986(n+2))`
-/

namespace A088146.P8283442931179923037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A182986 (n + 2)).toNat

end

end A088146.P8283442931179923037

/-! ## A088146.P5078882047359725751

`record[A038572(A006530(n+1))]`
-/

namespace A088146.P5078882047359725751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088146.P5078882047359725751

/-! ## A088146.P337556995266534226

`record[A038572(A020639(n+1))]`
-/

namespace A088146.P337556995266534226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088146.P337556995266534226

/-! ## A088146.P10350721729330039056

`A102781(n+1)+A003817(A102781(n+1))+1`
-/

namespace A088146.P10350721729330039056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + (A003817 (A102781 (n + 1)).toNat + 1)

end

end A088146.P10350721729330039056

/-! ## A088146.P14451657487608422550

`record[A038572(A014963(n+1))]`
-/

namespace A088146.P14451657487608422550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088146.P14451657487608422550

/-! ## A088146.P7397195666356839267

`A038572(p?[n-A038572(n)])`
-/

namespace A088146.P7397195666356839267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088146.P7397195666356839267

/-! ## A088146.P4351501469845965968

`A080542(record[A006530(2*n+1)])`
-/

namespace A088146.P4351501469845965968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088146.P4351501469845965968

/-! ## A088146.P7099298810047320379

`A080542(record[A014963(2*n+1)])`
-/

namespace A088146.P7099298810047320379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088146.P7099298810047320379

/-! ## A088146.P15424064150195331174

`A080542(record[A020639(2*n+1)])`
-/

namespace A088146.P15424064150195331174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088146.P15424064150195331174

/-! ## A088146.P6291268933509312475

`A139706(record[A006530(2*n+1)])`
-/

namespace A088146.P6291268933509312475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139706 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088146.P6291268933509312475

/-! ## A088146.P7382609349521124806

`record[A080542(n+1)*A080545(n+1)]`
-/

namespace A088146.P7382609349521124806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (n + 1) * A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088146.P7382609349521124806

/-! ## A088146.P16628706297555570543

`record[record[A038572(n+1)]/A032742(2*n+1)]`
-/

namespace A088146.P16628706297555570543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A032742 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088146.P16628706297555570543

/-! ## A088146.P4229831977895660623

`record[A038572(2*n+1)/A038572(A046523(2*n+1))]`
-/

namespace A088146.P4229831977895660623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038572 (2 * n + 1) : ℚ) / (A038572 (A046523 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088146.P4229831977895660623

/-! ## A088146.P10203138977925569652

`A059893(A098957(n+1))`
-/

namespace A088146.P10203138977925569652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A098957 (n + 1)).toNat

end

end A088146.P10203138977925569652

/-! ## A088146.P10040528261158781857

`A281553(A338524(n+1))`
-/

namespace A088146.P10040528261158781857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281553 (A338524 (n + 1)).toNat

end

end A088146.P10040528261158781857

/-!
# A088147: n-th prime rotated one binary place to the left.

The programs for A088147, the canonical program `A088147.P372442780696729559` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088147 has offset 1).

The definition of A088147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088147.P372442780696729559

`2*A091931(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088147

/-- `2*A091931(n+1)+1` -/
def P372442780696729559.Spec : Prop :=
  ∀ n, P372442780696729559.a n = A088147 (n + 1)

theorem P372442780696729559.correct : P372442780696729559.Spec := by
  intro n
  simp only [A088147, Nat.add_sub_cancel]

end A088147

/-! ## A088147.P5513727212011980852

`A088146(n+1)-A088162(n+1)`
-/

namespace A088147.P5513727212011980852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088146 (n + 1) - A088162 (n + 1)

end

end A088147.P5513727212011980852

namespace A088147

/-- `A088146(n+1)-A088162(n+1)` -/
def P5513727212011980852.Spec : Prop :=
  ∀ n, P5513727212011980852.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P13637211756096263407

`A006257(Δ[A007504(n)])`
-/

namespace A088147.P13637211756096263407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (f1 (n + 1) - f1 n).toNat

end

end A088147.P13637211756096263407

namespace A088147

/-- `A006257(Δ[A007504(n)])` -/
def P13637211756096263407.Spec : Prop :=
  ∀ n, P13637211756096263407.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P8266069824970395638

`A006257(A000040(n+1))`
-/

namespace A088147.P8266069824970395638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A000040 (n + 1)).toNat

end

end A088147.P8266069824970395638

namespace A088147

/-- `A006257(A000040(n+1))` -/
def P8266069824970395638.Spec : Prop :=
  ∀ n, P8266069824970395638.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P8295683397656198811

`A006257(A006005(n+1))`
-/

namespace A088147.P8295683397656198811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A006005 (n + 1)).toNat

end

end A088147.P8295683397656198811

namespace A088147

/-- `A006257(A006005(n+1))` -/
def P8295683397656198811.Spec : Prop :=
  ∀ n, P8295683397656198811.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P5881397460411384584

`A006257(A008578(n+2))`
-/

namespace A088147.P5881397460411384584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A008578 (n + 2)).toNat

end

end A088147.P5881397460411384584

namespace A088147

/-- `A006257(A008578(n+2))` -/
def P5881397460411384584.Spec : Prop :=
  ∀ n, P5881397460411384584.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P13032660038185954527

`A006257(record[A006530(n+2)])`
-/

namespace A088147.P13032660038185954527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088147.P13032660038185954527

namespace A088147

/-- `A006257(record[A006530(n+2)])` -/
def P13032660038185954527.Spec : Prop :=
  ∀ n, P13032660038185954527.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P2976153384228184177

`A006257(record[A020639(n+2)])`
-/

namespace A088147.P2976153384228184177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088147.P2976153384228184177

namespace A088147

/-- `A006257(record[A020639(n+2)])` -/
def P2976153384228184177.Spec : Prop :=
  ∀ n, P2976153384228184177.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P13519367519303887198

`A006257(record[A000010(n+1)+1])`
-/

namespace A088147.P13519367519303887198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088147.P13519367519303887198

namespace A088147

/-- `A006257(record[A000010(n+1)+1])` -/
def P13519367519303887198.Spec : Prop :=
  ∀ n, P13519367519303887198.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P16246158917298979509

`A006257(2*A102781(n+1)+1)`
-/

namespace A088147.P16246158917298979509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * A102781 (n + 1) + 1).toNat

end

end A088147.P16246158917298979509

namespace A088147

/-- `A006257(2*A102781(n+1)+1)` -/
def P16246158917298979509.Spec : Prop :=
  ∀ n, P16246158917298979509.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P13636958802028352160

`A006257(A102781(n+1)+A102781(n+1)+1)`
-/

namespace A088147.P13636958802028352160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A102781 (n + 1) + (A102781 (n + 1) + 1)).toNat

end

end A088147.P13636958802028352160

namespace A088147

/-- `A006257(A102781(n+1)+A102781(n+1)+1)` -/
def P13636958802028352160.Spec : Prop :=
  ∀ n, P13636958802028352160.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P3049756794589422522

`A006257(A006257(A088146(n+1)))`
-/

namespace A088147.P3049756794589422522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A006257 (A088146 (n + 1)).toNat).toNat

end

end A088147.P3049756794589422522

namespace A088147

/-- `A006257(A006257(A088146(n+1)))` -/
def P3049756794589422522.Spec : Prop :=
  ∀ n, P3049756794589422522.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P8453161939724310548

`A006257(eq[1, A001222(n+1)]+1)`
-/

namespace A088147.P8453161939724310548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A088147.P8453161939724310548

namespace A088147

/-- `A006257(eq[1, A001222(n+1)]+1)` -/
def P8453161939724310548.Spec : Prop :=
  ∀ n, P8453161939724310548.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P8082335147833961956

`A006257(A075643(n+2))`
-/

namespace A088147.P8082335147833961956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A075643 (n + 2)).toNat

end

end A088147.P8082335147833961956

namespace A088147

/-- `A006257(A075643(n+2))` -/
def P8082335147833961956.Spec : Prop :=
  ∀ n, P8082335147833961956.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P10007549083120337440

`A006257(record[p?[A006257(n)+2]])`
-/

namespace A088147.P10007549083120337440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088147.P10007549083120337440

namespace A088147

/-- `A006257(record[p?[A006257(n)+2]])` -/
def P10007549083120337440.Spec : Prop :=
  ∀ n, P10007549083120337440.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P4055608850246301214

`A006257(p?[A004273(n)+2])`
-/

namespace A088147.P4055608850246301214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088147.P4055608850246301214

namespace A088147

/-- `A006257(p?[A004273(n)+2])` -/
def P4055608850246301214.Spec : Prop :=
  ∀ n, P4055608850246301214.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P7555285277325832970

`A006257(eq[1, ∑{e}[n, #]])`
-/

namespace A088147.P7555285277325832970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A088147.P7555285277325832970

namespace A088147

/-- `A006257(eq[1, ∑{e}[n, #]])` -/
def P7555285277325832970.Spec : Prop :=
  ∀ n, P7555285277325832970.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P10742275689357678897

`A006257(eq[0, A007920(n)])`
-/

namespace A088147.P10742275689357678897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088147.P10742275689357678897

namespace A088147

/-- `A006257(eq[0, A007920(n)])` -/
def P10742275689357678897.Spec : Prop :=
  ∀ n, P10742275689357678897.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P8055815507973050148

`A006257(eq[1, A003415(n)])`
-/

namespace A088147.P8055815507973050148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088147.P8055815507973050148

namespace A088147

/-- `A006257(eq[1, A003415(n)])` -/
def P8055815507973050148.Spec : Prop :=
  ∀ n, P8055815507973050148.a n = A088147 (n + 1)

end A088147

/-! ## A088147.P17494853302148283920

`A006257(eq[1, A032741(n)])`
-/

namespace A088147.P17494853302148283920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A088147.P17494853302148283920

namespace A088147

/-- `A006257(eq[1, A032741(n)])` -/
def P17494853302148283920.Spec : Prop :=
  ∀ n, P17494853302148283920.a n = A088147 (n + 1)

end A088147

/-!
# A088148: Least number which when rotated through all its binary places produces n primes, not counting any repeats.

The programs for A088148, there is no canonical definition to state claims against.
-/

/-! ## A088148.P14232724201952965728

`A088149(n+1)-A070138(A289779(n))`
-/

namespace A088148.P14232724201952965728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088149 (n + 1) - A070138 (A289779 n).toNat

end

end A088148.P14232724201952965728

/-!
# A088149: Smallest prime which when rotated through all its binary places produces n primes, not counting any repeats.

The programs for A088149, there is no canonical definition to state claims against.
-/

/-! ## A088149.P5325039363084737892

`A006530(A119440(n)+A093138(n))`
-/

namespace A088149.P5325039363084737892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119440 n + A093138 n).toNat

end

end A088149.P5325039363084737892

/-!
# A088150: Value of n-th digit (counting from the right) in binary representation of n^n.

The programs for A088150, there is no canonical definition to state claims against.
-/

/-! ## A088150.P9530717051181196843

`floor((n/2)^n)%2`
-/

namespace A088150.P9530717051181196843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n : ℚ) / 2) ^ n⌋ 2

end

end A088150.P9530717051181196843

/-! ## A088150.P7283396661377544679

`and(1, floor((n/2)^n))`
-/

namespace A088150.P7283396661377544679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊((n : ℚ) / 2) ^ n⌋

end

end A088150.P7283396661377544679

/-! ## A088150.P8134187716962438399

`abs(ceil((n/2)^n-n%2)%2)`
-/

namespace A088150.P8134187716962438399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ⌈((n : ℚ) / 2) ^ n - ((n % 2 : ℕ) : ℚ)⌉ 2|

end

end A088150.P8134187716962438399

/-! ## A088150.P3661302433877394368

`(ceil((n/2)^n-and(1, n))%2)²`
-/

namespace A088150.P3661302433877394368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈((n : ℚ) / 2) ^ n - (Nat.land 1 n : ℚ)⌉ 2 ^ 2

end

end A088150.P3661302433877394368

/-! ## A088150.P10118412863022906154

`and(1, ceil((n/2)^n-and(1, n)))²`
-/

namespace A088150.P10118412863022906154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈((n : ℚ) / 2) ^ n - (Nat.land 1 n : ℚ)⌉ ^ 2

end

end A088150.P10118412863022906154

/-! ## A088150.P12053257779234642009

`sqrt(and(1, ceil((n/2)^n-and(1, n))))`
-/

namespace A088150.P12053257779234642009
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land 1 ⌈((n : ℚ) / 2) ^ n - (Nat.land 1 n : ℚ)⌉ : ℝ)

end

end A088150.P12053257779234642009

/-! ## A088150.P1662684651418059758

`(A233203(n)%2)²`
-/

namespace A088150.P1662684651418059758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233203 n) 2 ^ 2

end

end A088150.P1662684651418059758

/-! ## A088150.P12550018473310054066

`and(A000079(n), A000312(n))/A000079(n)`
-/

namespace A088150.P12550018473310054066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A000079 n) (A000312 n) : ℚ) / (A000079 n : ℚ)

end

end A088150.P12550018473310054066

/-!
# A088151: Value of n-th digit in ternary representation of n^n.

The programs for A088151, there is no canonical definition to state claims against.
-/

/-! ## A088151.P16808008797297154153

`floor((n/3)^n)%3`
-/

namespace A088151.P16808008797297154153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n : ℚ) / 3) ^ n⌋ 3

end

end A088151.P16808008797297154153

/-! ## A088151.P13594337260380128383

`dr(A233397(n)%3)`
-/

namespace A088151.P13594337260380128383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A233397 n) 3)

end

end A088151.P13594337260380128383

/-! ## A088151.P105290863387238133

`abs(((A000312(n)-A233398(n))/3^n)%3)`
-/

namespace A088151.P105290863387238133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway ((A000312 n - A233398 n : ℚ) / (3 ^ n : ℚ))) 3|

end

end A088151.P105290863387238133

/-! ## A088151.P14322997436864125519

`and(A000700(A368400(n+1)), A238787(3*n+1))`
-/

namespace A088151.P14322997436864125519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000700 (A368400 (n + 1)).toNat) (A238787 (3 * n + 1))

end

end A088151.P14322997436864125519

/-! ## A088151.P9827644128639521643

`A257992(A028387(A043097(n+1)))`
-/

namespace A088151.P9827644128639521643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A028387 (A043097 (n + 1)).toNat).toNat

end

end A088151.P9827644128639521643

/-!
# A088152: Value of n-th digit in octal representation of n^n.

The programs for A088152, there is no canonical definition to state claims against.
-/

/-! ## A088152.P6087559943482755123

`floor((n/8)^n)%8`
-/

namespace A088152.P6087559943482755123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n : ℚ) / 8) ^ n⌋ 8

end

end A088152.P6087559943482755123

/-! ## A088152.P5677791086378436580

`and(7, floor((n/8)^n))`
-/

namespace A088152.P5677791086378436580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 ⌊((n : ℚ) / 8) ^ n⌋

end

end A088152.P5677791086378436580

/-!
# A088153: a(n) is the value of the n-th digit in the decimal representation of n^n.

The programs for A088153, the canonical program `A088153.P13592796388252523434` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088153 has offset 0).

The definition of A088153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088153.P13592796388252523434

`floor((n/10)^n)%10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088153

/-- `floor((n/10)^n)%10` -/
def P13592796388252523434.Spec : Prop :=
  ∀ n, P13592796388252523434.a n = A088153 n

theorem P13592796388252523434.correct : P13592796388252523434.Spec := by
  intro n
  simp only [A088153]

end A088153

/-!
# A088157: Value of (n+1)-th digit in sexagesimal representation of n^n.

The programs for A088157, there is no canonical definition to state claims against.
-/

/-! ## A088157.P10588418202256875088

`round(A255773(n+1)/A161717(n))`
-/

namespace A088157.P10588418202256875088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A255773 (n + 1) : ℚ) / (A161717 n : ℚ))

end

end A088157.P10588418202256875088

/-! ## A088157.P14053082388277754331

`floor(A005555(n)²/A287055(n+1))`
-/

namespace A088157.P14053082388277754331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005555 n ^ 2 : ℚ) / (A287055 (n + 1) : ℚ)⌋

end

end A088157.P14053082388277754331

/-! ## A088157.P11549901856633383324

`floor(Δ[A178859(n+1)]/A178863(n+1))`
-/

namespace A088157.P11549901856633383324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A178863 (n + 1) : ℚ)⌋

end

end A088157.P11549901856633383324

/-! ## A088157.P13466279154454521717

`floor(A211685(n+1)/A272183(2*n+3))`
-/

namespace A088157.P13466279154454521717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211685 (n + 1) : ℚ) / (A272183 (2 * n + 3) : ℚ)⌋

end

end A088157.P13466279154454521717

/-! ## A088157.P15377072261165223546

`floor(ratio[A027892(n+2)])-1`
-/

namespace A088157.P15377072261165223546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ - 1

end

end A088157.P15377072261165223546

/-! ## A088157.P3927965442745303410

`C(∑[1-and(2, n)], A055917(n))`
-/

namespace A088157.P3927965442745303410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A055917 n).toNat

end

end A088157.P3927965442745303410

/-! ## A088157.P6901704150377719136

`round(A327150(n)/A234529(n))`
-/

namespace A088157.P6901704150377719136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327150 n : ℚ) / (A234529 n : ℚ))

end

end A088157.P6901704150377719136

/-! ## A088157.P6874512818264209476

`floor(Δ[A005555(n)]/A008486(n))`
-/

namespace A088157.P6874512818264209476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A008486 n : ℚ)⌋

end

end A088157.P6874512818264209476

/-!
# A088159: First row and main diagonal of square table that satisfies T(n+1,k+1) = sum(i=0,n, sum(j=0,k, T(n-i,k-j)*T(i,j) )).

The programs for A088159, there is no canonical definition to state claims against.
-/

/-! ## A088159.P2458944534669081445

`A088158(∑[n])`
-/

namespace A088159.P2458944534669081445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A088159.P2458944534669081445

/-! ## A088159.P7894415422149943245

`A088158(A000217(n))+char[11]`
-/

namespace A088159.P7894415422149943245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088158 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A088159.P7894415422149943245

/-! ## A088159.P7809342252317361420

`A088158((n²+n)/2)+A058348(n+3)`
-/

namespace A088159.P7809342252317361420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088158 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + A058348 (n + 3)

end

end A088159.P7809342252317361420

/-! ## A088159.P2733222911984365871

`A088158(A000217(n))*A333159(n)`
-/

namespace A088159.P2733222911984365871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088158 (A000217 n).toNat * A333159 n

end

end A088159.P2733222911984365871

/-! ## A088159.P10401993319318271938

`A088158(A000217(n))/A370770(n)`
-/

namespace A088159.P10401993319318271938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088158 (A000217 n).toNat : ℚ) / (A370770 n : ℚ)

end

end A088159.P10401993319318271938

/-!
# A088160: Sum of antidiagonals of square table that satisfies T(n+1,k+1) = sum(i=0,n, sum(j=0,k, T(n-i,k-j)*T(i,j) )) such that the top row and diagonal are equal: T(0,k)=T(k,k)=A088159(k).

The programs for A088160, there is no canonical definition to state claims against.
-/

/-! ## A088160.P10465913966177826421

`A003603(A336421(n)+1)`
-/

namespace A088160.P10465913966177826421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A336421 n + 1).toNat

end

end A088160.P10465913966177826421

/-! ## A088160.P686785226534790507

`A060144(A336421(n)+3)`
-/

namespace A088160.P686785226534790507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A336421 n + 3).toNat

end

end A088160.P686785226534790507

/-!
# A088161: n rotated one binary place to the right less n rotated one binary place to the left.

The programs for A088161, the canonical program `A088161.P8986286637870394846` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088161 has offset 0).

The definition of A088161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088161.P8986286637870394846

`A038572(n)-A006257(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A088161

/-- `A038572(n)-A006257(n)` -/
def P8986286637870394846.Spec : Prop :=
  ∀ n, P8986286637870394846.a n = A088161 n

theorem P8986286637870394846.correct : P8986286637870394846.Spec := by
  intro n
  simp only [A088161]

end A088161

/-! ## A088161.P17315918149108711024

`A273105(n)-2*A006257(n)`
-/

namespace A088161.P17315918149108711024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273105 n - 2 * A006257 n

end

end A088161.P17315918149108711024

namespace A088161

/-- `A273105(n)-2*A006257(n)` -/
def P17315918149108711024.Spec : Prop :=
  ∀ n, P17315918149108711024.a n = A088161 n

theorem P17315918149108711024.correct : P17315918149108711024.Spec := by
  intro n
  simp only [A088161, Nat.add_sub_cancel, A088161.P17315918149108711024.a, A088161.P8986286637870394846.a, A006257, A006257.P11499791249913637549.a, A038572, A038572.P6039021529582153667.a, A273105, A273105.P3798720398051730023.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088161

/-! ## A088161.P2620537643260118848

`2*A038572(n)-A273105(n)`
-/

namespace A088161.P2620537643260118848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038572 n - A273105 n

end

end A088161.P2620537643260118848

namespace A088161

/-- `2*A038572(n)-A273105(n)` -/
def P2620537643260118848.Spec : Prop :=
  ∀ n, P2620537643260118848.a n = A088161 n

theorem P2620537643260118848.correct : P2620537643260118848.Spec := by
  intro n
  simp only [A088161, Nat.add_sub_cancel, A088161.P2620537643260118848.a, A088161.P8986286637870394846.a, A006257, A006257.P11499791249913637549.a, A038572, A038572.P6039021529582153667.a, A273105, A273105.P3798720398051730023.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088161

/-! ## A088161.P8738713002334696552

`A038572(n)-xor(n, A038556(n))`
-/

namespace A088161.P8738713002334696552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n - Int.xor (n : ℤ) (A038556 n)

end

end A088161.P8738713002334696552

namespace A088161

/-- `A038572(n)-xor(n, A038556(n))` -/
def P8738713002334696552.Spec : Prop :=
  ∀ n, P8738713002334696552.a n = A088161 n

end A088161

/-! ## A088161.P9113601550608041778

`A080544(2*n+1)-Δ[n²]`
-/

namespace A088161.P9113601550608041778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A088161.P9113601550608041778

namespace A088161

/-- `A080544(2*n+1)-Δ[n²]` -/
def P9113601550608041778.Spec : Prop :=
  ∀ n, P9113601550608041778.a n = A088161 n

end A088161

/-! ## A088161.P780444748351024786

`A038572(n)-A053645(2*n+1)`
-/

namespace A088161.P780444748351024786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n - A053645 (2 * n + 1)

end

end A088161.P780444748351024786

namespace A088161

/-- `A038572(n)-A053645(2*n+1)` -/
def P780444748351024786.Spec : Prop :=
  ∀ n, P780444748351024786.a n = A088161 n

end A088161

/-! ## A088161.P8528000684872299412

`A038572(n)-A266539(2*(n+1))`
-/

namespace A088161.P8528000684872299412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n - A266539 (2 * (n + 1))

end

end A088161.P8528000684872299412

namespace A088161

/-- `A038572(n)-A266539(2*(n+1))` -/
def P8528000684872299412.Spec : Prop :=
  ∀ n, P8528000684872299412.a n = A088161 n

end A088161

/-! ## A088161.P4260562242373180117

`A038572(n)-A246591(2*n)`
-/

namespace A088161.P4260562242373180117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n - A246591 (2 * n)

end

end A088161.P4260562242373180117

namespace A088161

/-- `A038572(n)-A246591(2*n)` -/
def P4260562242373180117.Spec : Prop :=
  ∀ n, P4260562242373180117.a n = A088161 n

end A088161

/-! ## A088161.P7331940266374792354

`A080542(A080542(2*n+1))-(2*n+1)`
-/

namespace A088161.P7331940266374792354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A080542 (2 * n + 1)).toNat - (2 * n + 1 : ℤ)

end

end A088161.P7331940266374792354

namespace A088161

/-- `A080542(A080542(2*n+1))-(2*n+1)` -/
def P7331940266374792354.Spec : Prop :=
  ∀ n, P7331940266374792354.a n = A088161 n

end A088161

/-! ## A088161.P13391770922392778225

`A053645(A080544(2*n+1))-A053645(2*n+1)`
-/

namespace A088161.P13391770922392778225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080544 (2 * n + 1)).toNat - A053645 (2 * n + 1)

end

end A088161.P13391770922392778225

namespace A088161

/-- `A053645(A080544(2*n+1))-A053645(2*n+1)` -/
def P13391770922392778225.Spec : Prop :=
  ∀ n, P13391770922392778225.a n = A088161 n

end A088161

/-!
# A088162: n-th prime rotated one binary place to the right less the n-th prime rotated one binary place to the left.

The programs for A088162, there is no canonical definition to state claims against.
-/

/-! ## A088162.P14539791087963787837

`A088146(n+1)-A088147(n+1)`
-/

namespace A088162.P14539791087963787837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088146 (n + 1) - A088147 (n + 1)

end

end A088162.P14539791087963787837

/-! ## A088162.P5910427911602858811

`3*A035327(A130290(n+1))`
-/

namespace A088162.P5910427911602858811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A035327 (A130290 (n + 1)).toNat

end

end A088162.P5910427911602858811

/-! ## A088162.P8681859960251308254

`3*A035327(floor(A000040(n+1)/2))`
-/

namespace A088162.P8681859960251308254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A035327 ⌊(A000040 (n + 1) : ℚ) / 2⌋.toNat

end

end A088162.P8681859960251308254

/-! ## A088162.P4321383477711761065

`A088161(A000040(n+1))`
-/

namespace A088162.P4321383477711761065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (A000040 (n + 1)).toNat

end

end A088162.P4321383477711761065

/-! ## A088162.P16490061269269182786

`A088161(A006005(n+1))`
-/

namespace A088162.P16490061269269182786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (A006005 (n + 1)).toNat

end

end A088162.P16490061269269182786

/-! ## A088162.P12321507374479816388

`A088161(A171577(n+1))`
-/

namespace A088162.P12321507374479816388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (A171577 (n + 1)).toNat

end

end A088162.P12321507374479816388

/-! ## A088162.P11831325836266239288

`A088161(A008578(n+2))`
-/

namespace A088162.P11831325836266239288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (A008578 (n + 2)).toNat

end

end A088162.P11831325836266239288

/-! ## A088162.P8706637655216087811

`A088161(A075643(n+2))`
-/

namespace A088162.P8706637655216087811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (A075643 (n + 2)).toNat

end

end A088162.P8706637655216087811

/-! ## A088162.P2841335056511823973

`A088161(A171525(n+2))`
-/

namespace A088162.P2841335056511823973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (A171525 (n + 2)).toNat

end

end A088162.P2841335056511823973

/-! ## A088162.P15609020717364436870

`A088161(A182986(n+2))`
-/

namespace A088162.P15609020717364436870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (A182986 (n + 2)).toNat

end

end A088162.P15609020717364436870

/-! ## A088162.P12012461114706035732

`A088161(record[A006530(n+2)])`
-/

namespace A088162.P12012461114706035732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088162.P12012461114706035732

/-! ## A088162.P14927403027365171088

`A088161(record[A014963(n+2)])`
-/

namespace A088162.P14927403027365171088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088162.P14927403027365171088

/-! ## A088162.P12015825344583946701

`A088161(record[A020639(n+2)])`
-/

namespace A088162.P12015825344583946701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088162.P12015825344583946701

/-! ## A088162.P13469611040493113813

`A006368(A035327(p?[A072480(n)]))`
-/

namespace A088162.P13469611040493113813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A035327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A088162.P13469611040493113813

/-! ## A088162.P7433366104662519864

`A168237(A035327(p?[A004442(n)]))`
-/

namespace A088162.P7433366104662519864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 (A035327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A088162.P7433366104662519864

/-! ## A088162.P2578466140621804691

`A032766(A035327(p?[A195159(n)]))`
-/

namespace A088162.P2578466140621804691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A035327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A088162.P2578466140621804691

/-! ## A088162.P16188400766236600508

`A088161(A006257(A088146(n+1)))`
-/

namespace A088162.P16188400766236600508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 (A006257 (A088146 (n + 1)).toNat).toNat

end

end A088162.P16188400766236600508

/-! ## A088162.P12582130599513273732

`A071045(A145382(n+1))`
-/

namespace A088162.P12582130599513273732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A145382 (n + 1)).toNat

end

end A088162.P12582130599513273732

/-! ## A088162.P5594350112317754666

`A071045(A035327(p?[A001057(n)]))`
-/

namespace A088162.P5594350112317754666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A035327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A088162.P5594350112317754666

/-! ## A088162.P16182062696492954245

`A168237(A035327(p?[A057979(n)]))`
-/

namespace A088162.P16182062696492954245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 (A035327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A088162.P16182062696492954245

/-!
# A088163: Numbers for which rotating one binary place to the right less rotating one binary place to the left is equal to zero.

The programs for A088163, the canonical program `A088163.P10907963566702275842` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088163 has offset 0).

The definition of A088163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088163.P17192784704772521549

`ogf((x+2x^2+3x^3+2x^4)/(1-5x^3+4x^6))`
-/

namespace A088163.P17192784704772521549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3, 2] [1, 0, 0, -5, 0, 0, 4] n

end

end A088163.P17192784704772521549

namespace A088163

/-- `ogf((x+2x^2+3x^3+2x^4)/(1-5x^3+4x^6))` -/
def P17192784704772521549.Spec : Prop :=
  ∀ n, P17192784704772521549.a n = A088163 n

end A088163

/-! ## A088163.P10907963566702275842

`5*a(n-3)-4*a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7, a(5)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A088163

/-- `5*a(n-3)-4*a(n-6)` -/
def P10907963566702275842.Spec : Prop :=
  ∀ n, P10907963566702275842.a n = A088163 n

theorem P10907963566702275842.correct : P10907963566702275842.Spec := by
  intro n
  simp only [A088163]

end A088163

/-! ## A088163.P4418804278734071895

`or(4*a(n-3), a(n-3))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7`
-/

namespace A088163.P4418804278734071895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 7] fun n a =>
  Nat.lor (4 * a (n - 3)) (a (n - 3))

end

end A088163.P4418804278734071895

namespace A088163

/-- `or(4*a(n-3), a(n-3))` -/
def P4418804278734071895.Spec : Prop :=
  ∀ n, (P4418804278734071895.a n : ℤ) = A088163 n

end A088163

/-! ## A088163.P3738202871299301737

`∪[A000225(n), A020988(n)]`
-/

namespace A088163.P3738202871299301737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088163.P3738202871299301737

namespace A088163

/-- `∪[A000225(n), A020988(n)]` -/
def P3738202871299301737.Spec : Prop :=
  ∀ n, (P3738202871299301737.a n : ℤ) = A088163 n

end A088163

/-! ## A088163.P14828222273920120282

`∪[A000225(n), A084184(n)]`
-/

namespace A088163.P14828222273920120282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088163.P14828222273920120282

namespace A088163

/-- `∪[A000225(n), A084184(n)]` -/
def P14828222273920120282.Spec : Prop :=
  ∀ n, (P14828222273920120282.a n : ℤ) = A088163 n

end A088163

/-! ## A088163.P11407969282641819722

`∪[A024036(n), A084184(n)]`
-/

namespace A088163.P11407969282641819722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088163.P11407969282641819722

namespace A088163

/-- `∪[A024036(n), A084184(n)]` -/
def P11407969282641819722.Spec : Prop :=
  ∀ n, (P11407969282641819722.a n : ℤ) = A088163 n

end A088163

/-! ## A088163.P2610913785458280321

`∪[A020988(n), A126646(n)]`
-/

namespace A088163.P2610913785458280321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088163.P2610913785458280321

namespace A088163

/-- `∪[A020988(n), A126646(n)]` -/
def P2610913785458280321.Spec : Prop :=
  ∀ n, (P2610913785458280321.a n : ℤ) = A088163 n

end A088163

/-! ## A088163.P5772509083115732315

`∪[A084184(n), A103454(n)]`
-/

namespace A088163.P5772509083115732315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088163.P5772509083115732315

namespace A088163

/-- `∪[A084184(n), A103454(n)]` -/
def P5772509083115732315.Spec : Prop :=
  ∀ n, (P5772509083115732315.a n : ℤ) = A088163 n

end A088163

/-! ## A088163.P10176848544719101924

`∪[A084184(n), A126646(n)]`
-/

namespace A088163.P10176848544719101924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A088163.P10176848544719101924

namespace A088163

/-- `∪[A084184(n), A126646(n)]` -/
def P10176848544719101924.Spec : Prop :=
  ∀ n, (P10176848544719101924.a n : ℤ) = A088163 n

end A088163

/-! ## A088163.P733892531671108201

`floor(∑[4*a(n-3)]/3)` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A088163.P733892531671108201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  4 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A088163.P733892531671108201

namespace A088163

/-- `floor(∑[4*a(n-3)]/3)` -/
def P733892531671108201.Spec : Prop :=
  ∀ n, P733892531671108201.a n = A088163 n

end A088163

/-! ## A088163.P9638183546511439422

`record[A084184(n)%A000079(A008619(n))]`
-/

namespace A088163.P9638183546511439422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084184 n) (A000079 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088163.P9638183546511439422

namespace A088163

/-- `record[A084184(n)%A000079(A008619(n))]` -/
def P9638183546511439422.Spec : Prop :=
  ∀ n, P9638183546511439422.a n = A088163 n

end A088163

/-! ## A088163.P6957618234212546179

`record[A084184(n)%A016116(n)]`
-/

namespace A088163.P6957618234212546179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084184 n) (A016116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088163.P6957618234212546179

namespace A088163

/-- `record[A084184(n)%A016116(n)]` -/
def P6957618234212546179.Spec : Prop :=
  ∀ n, P6957618234212546179.a n = A088163 n

end A088163

/-! ## A088163.P15166905706643363986

`record[A290234(n)%A052955(n)]`
-/

namespace A088163.P15166905706643363986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290234 n) (A052955 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088163.P15166905706643363986

namespace A088163

/-- `record[A290234(n)%A052955(n)]` -/
def P15166905706643363986.Spec : Prop :=
  ∀ n, P15166905706643363986.a n = A088163 n

end A088163

/-! ## A088163.P8099184918491169214

`record[A213243(n+1)%A052551(n)]`
-/

namespace A088163.P8099184918491169214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213243 (n + 1)) (A052551 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088163.P8099184918491169214

namespace A088163

/-- `record[A213243(n+1)%A052551(n)]` -/
def P8099184918491169214.Spec : Prop :=
  ∀ n, P8099184918491169214.a n = A088163 n

end A088163

/-! ## A088163.P486797593587239361

`record[A282123(n)%A016116(n)]`
-/

namespace A088163.P486797593587239361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282123 n) (A016116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088163.P486797593587239361

namespace A088163

/-- `record[A282123(n)%A016116(n)]` -/
def P486797593587239361.Spec : Prop :=
  ∀ n, P486797593587239361.a n = A088163 n

end A088163

/-!
# A088165: NSW primes: NSW numbers that are also prime.

The programs for A088165, there is no canonical definition to state claims against.
-/

/-! ## A088165.P8822058090644334896

`A001333(A005850(n+1))`
-/

namespace A088165.P8822058090644334896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A005850 (n + 1)).toNat

end

end A088165.P8822058090644334896

/-! ## A088165.P3219593768671580822

`A086395(comp[Δ[A086394(3*n+4)]])`
-/

namespace A088165.P3219593768671580822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086394 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086395 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A088165.P3219593768671580822

/-!
# A088166: Smallest integer divisible by Fibonacci(2n) such that the second partial quotient in the continued fraction expansion of a(n)/phi is 2 (phi is the golden ratio), n >= 2.

The programs for A088166, the canonical program `A088166.P5610199691993541226` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088166 has offset 2).

The definition of A088166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A088166.P5610199691993541226

`A000045(2*(n+2))*(A071618(n+2)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088166

/-- `A000045(2*(n+2))*(A071618(n+2)+1)` -/
def P5610199691993541226.Spec : Prop :=
  ∀ n, P5610199691993541226.a n = A088166 (n + 2)

theorem P5610199691993541226.correct : P5610199691993541226.Spec := by
  intro n
  simp only [A088166, Nat.add_sub_cancel]

end A088166

/-! ## A088166.P17723970566808919324

`A000045(2*(n+2))*ceil(A000032(2*(n+2))/2)`
-/

namespace A088166.P17723970566808919324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 2)) * ⌈(A000032 (2 * (n + 2)) : ℚ) / 2⌉

end

end A088166.P17723970566808919324

namespace A088166

/-- `A000045(2*(n+2))*ceil(A000032(2*(n+2))/2)` -/
def P17723970566808919324.Spec : Prop :=
  ∀ n, P17723970566808919324.a n = A088166 (n + 2)

end A088166

/-! ## A088166.P13572598566070584273

`A088305(n+2)*A173495(2*(n+2))`
-/

namespace A088166.P13572598566070584273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 2) * A173495 (2 * (n + 2))

end

end A088166.P13572598566070584273

namespace A088166

/-- `A088305(n+2)*A173495(2*(n+2))` -/
def P13572598566070584273.Spec : Prop :=
  ∀ n, P13572598566070584273.a n = A088166 (n + 2)

end A088166

/-!
# A088167: Number of earlier occurring divisors of n; a(1)=1.

The programs for A088167, there is no canonical definition to state claims against.
-/

/-! ## A088167.P3074977377369234273

`A124524(∑[n]+1)`
-/

namespace A088167.P3074977377369234273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A088167.P3074977377369234273

/-! ## A088167.P74880622702324777

`dr(A124524(A000124(n)))`
-/

namespace A088167.P74880622702324777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A124524 (A000124 n).toNat)

end

end A088167.P74880622702324777

/-! ## A088167.P8759992022880998274

`dr(A124524(∑[A028310(n)]))`
-/

namespace A088167.P8759992022880998274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A124524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A088167.P8759992022880998274

/-! ## A088167.P10456228617975380188

`A185063(n)+A124524(A000124(n))`
-/

namespace A088167.P10456228617975380188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 n + A124524 (A000124 n).toNat

end

end A088167.P10456228617975380188

/-! ## A088167.P14142575970954904471

`A124524(A000124(n))%A000040(n+1)`
-/

namespace A088167.P14142575970954904471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124524 (A000124 n).toNat) (A000040 (n + 1))

end

end A088167.P14142575970954904471

/-!
# A088169: Numbers n such that the set S(n) = {k: k + reverse(k) = n} is not empty and all elements of S(n) have the same number of digits as n.

The programs for A088169, there is no canonical definition to state claims against.
-/

/-! ## A088169.P16130431535408648401

`A033865(∩[A332240(n+1), A067030(n)])`
-/

namespace A088169.P16130431535408648401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A088169.P16130431535408648401

/-! ## A088169.P16457608452275151980

`A332240(A341750(n+1)%A054905(n+1))`
-/

namespace A088169.P16457608452275151980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332240 (Int.tmod (A341750 (n + 1)) (A054905 (n + 1))).toNat

end

end A088169.P16457608452275151980

/-! ## A088169.P3726106216388075905

`A033865(∩[A068062(n+1), A332240(n+1)])`
-/

namespace A088169.P3726106216388075905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332240 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A088169.P3726106216388075905

/-! ## A088169.P7196432209658752139

`A033865(∪[A067035(n+1), A068065(n+1)])`
-/

namespace A088169.P7196432209658752139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068065 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A088169.P7196432209658752139

/-!
# A088170: Numbers n such that the set S(n) = {k: k + reverse(k) = n} is not empty and all elements of S(n) have one digit less than n has.

The programs for A088170, there is no canonical definition to state claims against.
-/

/-! ## A088170.P3451741229182556367

`∩[A261925(n+1), record[A056964(n)]]`
-/

namespace A088170.P3451741229182556367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261925 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088170.P3451741229182556367

/-! ## A088170.P8692016709892283773

`lt[1, A244569(n)^A033665(n)]`
-/

namespace A088170.P8692016709892283773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244569 n : ℚ) ^ (A033665 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A088170.P8692016709892283773

/-! ## A088170.P15485594776679253208

`∩[A120836(n+1), A261925(n+1)]`
-/

namespace A088170.P15485594776679253208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088170.P15485594776679253208

/-!
# A088172: First differences of A019300.

The programs for A088172, the canonical program `A088172.P13913532499432575805` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088172 has offset 1).

The definition of A088172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088172.P13913532499432575805

`Δ[A010060(n)]+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A088172

/-- `Δ[A010060(n)]+2*a(n-1)` -/
def P13913532499432575805.Spec : Prop :=
  ∀ n, P13913532499432575805.a n = A088172 (n + 1)

theorem P13913532499432575805.correct : P13913532499432575805.Spec := by
  intro n
  simp only [A088172, Nat.add_sub_cancel]

end A088172

/-! ## A088172.P7951909681916423305

`2*a(n-1)-Δ[-A001285(n)]` with `a(0)=1`
-/

namespace A088172.P7951909681916423305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001285 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A088172.P7951909681916423305

namespace A088172

/-- `2*a(n-1)-Δ[-A001285(n)]` -/
def P7951909681916423305.Spec : Prop :=
  ∀ n, P7951909681916423305.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P3057061474625341833

`A019300(n)+A010060(n+1)`
-/

namespace A088172.P3057061474625341833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019300 n + A010060 (n + 1)

end

end A088172.P3057061474625341833

namespace A088172

/-- `A019300(n)+A010060(n+1)` -/
def P3057061474625341833.Spec : Prop :=
  ∀ n, P3057061474625341833.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P2722367423181039501

`A019300(n)+∑[A029883(n+1)]`
-/

namespace A088172.P2722367423181039501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019300 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088172.P2722367423181039501

namespace A088172

/-- `A019300(n)+∑[A029883(n+1)]` -/
def P2722367423181039501.Spec : Prop :=
  ∀ n, P2722367423181039501.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P11518986497035573720

`A019300(n)+A000035(A000120(n+1))`
-/

namespace A088172.P11518986497035573720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019300 n + A000035 (A000120 (n + 1)).toNat

end

end A088172.P11518986497035573720

namespace A088172

/-- `A019300(n)+A000035(A000120(n+1))` -/
def P11518986497035573720.Spec : Prop :=
  ∀ n, P11518986497035573720.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P6397950455563782352

`Δ[2*a(n-1)-char[xor(n, 2*n)]]` with `a(0)=1`
-/

namespace A088172.P6397950455563782352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088172.P6397950455563782352

namespace A088172

/-- `Δ[2*a(n-1)-char[xor(n, 2*n)]]` -/
def P6397950455563782352.Spec : Prop :=
  ∀ n, P6397950455563782352.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P4327144891675671841

`Δ[A019300(n)]`
-/

namespace A088172.P4327144891675671841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088172.P4327144891675671841

namespace A088172

/-- `Δ[A019300(n)]` -/
def P4327144891675671841.Spec : Prop :=
  ∀ n, P4327144891675671841.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P14759856916763402778

`ceil(A019300(n+1)/2)`
-/

namespace A088172.P14759856916763402778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019300 (n + 1) : ℚ) / 2⌉

end

end A088172.P14759856916763402778

namespace A088172

/-- `ceil(A019300(n+1)/2)` -/
def P14759856916763402778.Spec : Prop :=
  ∀ n, P14759856916763402778.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P8506989526334940901

`Δ[2*a(n-1)-A010059(n)]` with `a(0)=1`
-/

namespace A088172.P8506989526334940901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088172.P8506989526334940901

namespace A088172

/-- `Δ[2*a(n-1)-A010059(n)]` -/
def P8506989526334940901.Spec : Prop :=
  ∀ n, P8506989526334940901.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P13506377491204118447

`A019300(n+1)-A019300(n)`
-/

namespace A088172.P13506377491204118447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019300 (n + 1) - A019300 n

end

end A088172.P13506377491204118447

namespace A088172

/-- `A019300(n+1)-A019300(n)` -/
def P13506377491204118447.Spec : Prop :=
  ∀ n, P13506377491204118447.a n = A088172 (n + 1)

end A088172

/-! ## A088172.P15702056605002611351

`Δ[A126646(n)-A019299(n)]`
-/

namespace A088172.P15702056605002611351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A019299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088172.P15702056605002611351

namespace A088172

/-- `Δ[A126646(n)-A019299(n)]` -/
def P15702056605002611351.Spec : Prop :=
  ∀ n, P15702056605002611351.a n = A088172 (n + 1)

end A088172

/-!
# A088173: Primes whose successive differences are increasing squares.

The programs for A088173, there is no canonical definition to state claims against.
-/

/-! ## A088173.P7161223474700590472

`a(n-1)+A088174(n)²` with `a(0)=2`
-/

namespace A088173.P7161223474700590472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A088174 n ^ 2

end

end A088173.P7161223474700590472

/-! ## A088173.P7128949695740024891

`A084710(A032551(n+2))`
-/

namespace A088173.P7128949695740024891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084710 (A032551 (n + 2)).toNat

end

end A088173.P7128949695740024891

/-!
# A088174: Numbers n such that n^2 appears in A088173.

The programs for A088174, there is no canonical definition to state claims against.
-/

/-! ## A088174.P2737884595783313805

`sqrt(Δ[A088173(n+1)])`
-/

namespace A088174.P2737884595783313805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088173 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ)

end

end A088174.P2737884595783313805

/-! ## A088174.P4933697986491541334

`sqrt(A088173(n+2)-A088173(n+1))`
-/

namespace A088174.P4933697986491541334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088173 (n + 2) - A088173 (n + 1) : ℝ)

end

end A088174.P4933697986491541334

/-! ## A088174.P3745009406221655883

`root(Δ[A088173(n+1)], A020639(2*(n+1)))`
-/

namespace A088174.P3745009406221655883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088173 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A088174.P3745009406221655883

/-! ## A088174.P6268665531012768803

`root(Δ[A088173(n+1)], 2%A223652(n+1))`
-/

namespace A088174.P6268665531012768803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088173 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) ^ (1 / (Int.tmod 2 (A223652 (n + 1)) : ℝ))

end

end A088174.P6268665531012768803

/-!
# A088175: Primes such that the next two primes are a twin prime pair.

The programs for A088175, the canonical program `A088175.P18306801926919079175` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088175 has offset 1).

The definition of A088175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088175.P5349470851244002903

`A001359(n+1)-A084290(n+1)`
-/

namespace A088175.P5349470851244002903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - A084290 (n + 1)

end

end A088175.P5349470851244002903

namespace A088175

/-- `A001359(n+1)-A084290(n+1)` -/
def P5349470851244002903.Spec : Prop :=
  ∀ n, P5349470851244002903.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P18306801926919079175

`A014574(n+1)-(A084290(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A088175

/-- `A014574(n+1)-(A084290(n+1)+1)` -/
def P18306801926919079175.Spec : Prop :=
  ∀ n, P18306801926919079175.a n = A088175 (n + 1)

theorem P18306801926919079175.correct : P18306801926919079175.Spec := by
  intro n
  simp only [A088175, Nat.add_sub_cancel]

end A088175

/-! ## A088175.P11606625969766880834

`A144834(n+1)+1-A084290(n+1)`
-/

namespace A088175.P11606625969766880834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + (1 - A084290 (n + 1))

end

end A088175.P11606625969766880834

namespace A088175

/-- `A144834(n+1)+1-A084290(n+1)` -/
def P11606625969766880834.Spec : Prop :=
  ∀ n, P11606625969766880834.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P5149256607737505682

`A006512(n+1)-(A084290(n+1)+2)`
-/

namespace A088175.P5149256607737505682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - (A084290 (n + 1) + 2)

end

end A088175.P5149256607737505682

namespace A088175

/-- `A006512(n+1)-(A084290(n+1)+2)` -/
def P5149256607737505682.Spec : Prop :=
  ∀ n, P5149256607737505682.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P4026790867882188194

`A108605(n+1)/2-A084290(n+1)`
-/

namespace A088175.P4026790867882188194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108605 (n + 1) : ℚ) / 2 - (A084290 (n + 1) : ℚ)

end

end A088175.P4026790867882188194

namespace A088175

/-- `A108605(n+1)/2-A084290(n+1)` -/
def P4026790867882188194.Spec : Prop :=
  ∀ n, P4026790867882188194.a n = (A088175 (n + 1) : ℚ)

end A088175

/-! ## A088175.P15583631342572777156

`or(1, A111166(n+1))-A084290(n+1)`
-/

namespace A088175.P15583631342572777156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A111166 (n + 1)) - A084290 (n + 1)

end

end A088175.P15583631342572777156

namespace A088175

/-- `or(1, A111166(n+1))-A084290(n+1)` -/
def P15583631342572777156.Spec : Prop :=
  ∀ n, P15583631342572777156.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P11684323048600827473

`floor(sqrt(A037074(n+1))-A084290(n+1))`
-/

namespace A088175.P11684323048600827473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A037074 (n + 1) : ℝ) - (A084290 (n + 1) : ℝ)⌋

end

end A088175.P11684323048600827473

namespace A088175

/-- `floor(sqrt(A037074(n+1))-A084290(n+1))` -/
def P11684323048600827473.Spec : Prop :=
  ∀ n, P11684323048600827473.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P17423982115723661306

`sqrt(A075369(n+1))-1-A084290(n+1)`
-/

namespace A088175.P17423982115723661306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ) - 1 - (A084290 (n + 1) : ℝ)

end

end A088175.P17423982115723661306

namespace A088175

/-- `sqrt(A075369(n+1))-1-A084290(n+1)` -/
def P17423982115723661306.Spec : Prop :=
  ∀ n, P17423982115723661306.a n = (A088175 (n + 1) : ℝ)

end A088175

/-! ## A088175.P12355616996846332483

`2*A040040(n+1)-1-A084290(n+1)`
-/

namespace A088175.P12355616996846332483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) - 1 - A084290 (n + 1)

end

end A088175.P12355616996846332483

namespace A088175

/-- `2*A040040(n+1)-1-A084290(n+1)` -/
def P12355616996846332483.Spec : Prop :=
  ∀ n, P12355616996846332483.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P532517025945852995

`A176810(n+1)/2-2-A084290(n+1)`
-/

namespace A088175.P532517025945852995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176810 (n + 1) : ℚ) / 2 - 2 - (A084290 (n + 1) : ℚ)

end

end A088175.P532517025945852995

namespace A088175

/-- `A176810(n+1)/2-2-A084290(n+1)` -/
def P532517025945852995.Spec : Prop :=
  ∀ n, P532517025945852995.a n = (A088175 (n + 1) : ℚ)

end A088175

/-! ## A088175.P7876494154842151595

`(A111166(n+1)-A084290(n+1))*A054977(n)`
-/

namespace A088175.P7876494154842151595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111166 (n + 1) - A084290 (n + 1)) * A054977 n

end

end A088175.P7876494154842151595

namespace A088175

/-- `(A111166(n+1)-A084290(n+1))*A054977(n)` -/
def P7876494154842151595.Spec : Prop :=
  ∀ n, P7876494154842151595.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P1278096776599613847

`A008578(A029707(n+1))`
-/

namespace A088175.P1278096776599613847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A029707 (n + 1)).toNat

end

end A088175.P1278096776599613847

namespace A088175

/-- `A008578(A029707(n+1))` -/
def P1278096776599613847.Spec : Prop :=
  ∀ n, P1278096776599613847.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P2306096614019740065

`A000040(A155752(n+1))`
-/

namespace A088175.P2306096614019740065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A155752 (n + 1)).toNat

end

end A088175.P2306096614019740065

namespace A088175

/-- `A000040(A155752(n+1))` -/
def P2306096614019740065.Spec : Prop :=
  ∀ n, P2306096614019740065.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P5916171593888829906

`A158611(A107770(n+1))`
-/

namespace A088175.P5916171593888829906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A107770 (n + 1)).toNat

end

end A088175.P5916171593888829906

namespace A088175

/-- `A158611(A107770(n+1))` -/
def P5916171593888829906.Spec : Prop :=
  ∀ n, P5916171593888829906.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P6044413910967022158

`A000040(∑[A242767(n+2)])`
-/

namespace A088175.P6044413910967022158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A088175.P6044413910967022158

namespace A088175

/-- `A000040(∑[A242767(n+2)])` -/
def P6044413910967022158.Spec : Prop :=
  ∀ n, P6044413910967022158.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P17579348531606006193

`A008578(A155752(n+1)+1)`
-/

namespace A088175.P17579348531606006193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A155752 (n + 1) + 1).toNat

end

end A088175.P17579348531606006193

namespace A088175

/-- `A008578(A155752(n+1)+1)` -/
def P17579348531606006193.Spec : Prop :=
  ∀ n, P17579348531606006193.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P9752202474185928009

`A000040(A029707(n+1)-1)`
-/

namespace A088175.P9752202474185928009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029707 (n + 1) - 1).toNat

end

end A088175.P9752202474185928009

namespace A088175

/-- `A000040(A029707(n+1)-1)` -/
def P9752202474185928009.Spec : Prop :=
  ∀ n, P9752202474185928009.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P10626653454633887557

`A161847(A029707(n+1)-1)`
-/

namespace A088175.P10626653454633887557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (A029707 (n + 1) - 1).toNat

end

end A088175.P10626653454633887557

namespace A088175

/-- `A161847(A029707(n+1)-1)` -/
def P10626653454633887557.Spec : Prop :=
  ∀ n, P10626653454633887557.a n = A088175 (n + 1)

end A088175

/-! ## A088175.P13082275284789911251

`A000040(A107770(n+1)-2)`
-/

namespace A088175.P13082275284789911251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107770 (n + 1) - 2).toNat

end

end A088175.P13082275284789911251

namespace A088175

/-- `A000040(A107770(n+1)-2)` -/
def P13082275284789911251.Spec : Prop :=
  ∀ n, P13082275284789911251.a n = A088175 (n + 1)

end A088175

/-!
# A088176: Primes such that the previous two primes are a twin prime pair.

The programs for A088176, the canonical program `A088176.P508922277924974894` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088176 has offset 1).

The definition of A088176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088176.P508922277924974894

`A084291(n+1)+A006512(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A088176

/-- `A084291(n+1)+A006512(n+1)` -/
def P508922277924974894.Spec : Prop :=
  ∀ n, P508922277924974894.a n = A088176 (n + 1)

theorem P508922277924974894.correct : P508922277924974894.Spec := by
  intro n
  simp only [A088176, Nat.add_sub_cancel]

end A088176

/-! ## A088176.P7803672828816612983

`A001359(n+1)+A084291(n+1)+2`
-/

namespace A088176.P7803672828816612983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + (A084291 (n + 1) + 2)

end

end A088176.P7803672828816612983

namespace A088176

/-- `A001359(n+1)+A084291(n+1)+2` -/
def P7803672828816612983.Spec : Prop :=
  ∀ n, P7803672828816612983.a n = A088176 (n + 1)

theorem P7803672828816612983.correct : P7803672828816612983.Spec := by
  intro n
  simp only [A088176, Nat.add_sub_cancel, A088176.P7803672828816612983.a, A088176.P508922277924974894.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A084291, A084291.P5500729874406725872.f1, A084291.P5500729874406725872.f2, A084291.P5500729874406725872.a, A001223, A001223.P5034056745985311719.a, A077800, A077800.P16009445446139691322.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A088176

/-! ## A088176.P1992102074640079216

`A084291(n+1)+A111046(n+1)/4+1`
-/

namespace A088176.P1992102074640079216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084291 (n + 1) : ℚ) + ((A111046 (n + 1) : ℚ) / 4 + 1)

end

end A088176.P1992102074640079216

namespace A088176

/-- `A084291(n+1)+A111046(n+1)/4+1` -/
def P1992102074640079216.Spec : Prop :=
  ∀ n, P1992102074640079216.a n = (A088176 (n + 1) : ℚ)

end A088176

/-! ## A088176.P1387776628425595556

`A084291(n+1)+or(1, A111166(n+1))+2`
-/

namespace A088176.P1387776628425595556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084291 (n + 1) + (Int.lor 1 (A111166 (n + 1)) + 2)

end

end A088176.P1387776628425595556

namespace A088176

/-- `A084291(n+1)+or(1, A111166(n+1))+2` -/
def P1387776628425595556.Spec : Prop :=
  ∀ n, P1387776628425595556.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P5851501970454421375

`A084291(n+1)+ceil(sqrt(A037074(n+1)))+1`
-/

namespace A088176.P5851501970454421375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084291 (n + 1) + (⌈Real.sqrt (A037074 (n + 1) : ℝ)⌉ + 1)

end

end A088176.P5851501970454421375

namespace A088176

/-- `A084291(n+1)+ceil(sqrt(A037074(n+1)))+1` -/
def P5851501970454421375.Spec : Prop :=
  ∀ n, P5851501970454421375.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P883185226687587208

`A006512(n+1)+A001223(A107770(n+1))`
-/

namespace A088176.P883185226687587208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) + A001223 (A107770 (n + 1)).toNat

end

end A088176.P883185226687587208

namespace A088176

/-- `A006512(n+1)+A001223(A107770(n+1))` -/
def P883185226687587208.Spec : Prop :=
  ∀ n, P883185226687587208.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P7121059705128039946

`A004139(A029707(n+1))`
-/

namespace A088176.P7121059705128039946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A029707 (n + 1)).toNat

end

end A088176.P7121059705128039946

namespace A088176

/-- `A004139(A029707(n+1))` -/
def P7121059705128039946.Spec : Prop :=
  ∀ n, P7121059705128039946.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P9170676606324683480

`A045319(A107770(n+1))`
-/

namespace A088176.P9170676606324683480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A107770 (n + 1)).toNat

end

end A088176.P9170676606324683480

namespace A088176

/-- `A045319(A107770(n+1))` -/
def P9170676606324683480.Spec : Prop :=
  ∀ n, P9170676606324683480.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P11939452653282940200

`A065091(A029707(n+1)+1)`
-/

namespace A088176.P11939452653282940200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A029707 (n + 1) + 1).toNat

end

end A088176.P11939452653282940200

namespace A088176

/-- `A065091(A029707(n+1)+1)` -/
def P11939452653282940200.Spec : Prop :=
  ∀ n, P11939452653282940200.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P191653913221304938

`A000040(A107770(n+1)+1)`
-/

namespace A088176.P191653913221304938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107770 (n + 1) + 1).toNat

end

end A088176.P191653913221304938

namespace A088176

/-- `A000040(A107770(n+1)+1)` -/
def P191653913221304938.Spec : Prop :=
  ∀ n, P191653913221304938.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P10931849600326415025

`A255000(A155752(n+1)+1)`
-/

namespace A088176.P10931849600326415025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255000 (A155752 (n + 1) + 1).toNat

end

end A088176.P10931849600326415025

namespace A088176

/-- `A255000(A155752(n+1)+1)` -/
def P10931849600326415025.Spec : Prop :=
  ∀ n, P10931849600326415025.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P11109118887796378255

`A000040(A029707(n+1)+2)`
-/

namespace A088176.P11109118887796378255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029707 (n + 1) + 2).toNat

end

end A088176.P11109118887796378255

namespace A088176

/-- `A000040(A029707(n+1)+2)` -/
def P11109118887796378255.Spec : Prop :=
  ∀ n, P11109118887796378255.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P14564028568712600696

`A161847(A029707(n+1)+2)`
-/

namespace A088176.P14564028568712600696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (A029707 (n + 1) + 2).toNat

end

end A088176.P14564028568712600696

namespace A088176

/-- `A161847(A029707(n+1)+2)` -/
def P14564028568712600696.Spec : Prop :=
  ∀ n, P14564028568712600696.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P6898885147650944357

`A045319(A155752(n+1)+2)`
-/

namespace A088176.P6898885147650944357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A155752 (n + 1) + 2).toNat

end

end A088176.P6898885147650944357

namespace A088176

/-- `A045319(A155752(n+1)+2)` -/
def P6898885147650944357.Spec : Prop :=
  ∀ n, P6898885147650944357.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P14321606017027242258

`A045344(A155752(n+1)+2)`
-/

namespace A088176.P14321606017027242258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A155752 (n + 1) + 2).toNat

end

end A088176.P14321606017027242258

namespace A088176

/-- `A045344(A155752(n+1)+2)` -/
def P14321606017027242258.Spec : Prop :=
  ∀ n, P14321606017027242258.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P15653307180461334124

`A008578(A029707(n+1)+3)`
-/

namespace A088176.P15653307180461334124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A029707 (n + 1) + 3).toNat

end

end A088176.P15653307180461334124

namespace A088176

/-- `A008578(A029707(n+1)+3)` -/
def P15653307180461334124.Spec : Prop :=
  ∀ n, P15653307180461334124.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P17107446502982195459

`A000040(A155752(n+1)+3)`
-/

namespace A088176.P17107446502982195459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A155752 (n + 1) + 3).toNat

end

end A088176.P17107446502982195459

namespace A088176

/-- `A000040(A155752(n+1)+3)` -/
def P17107446502982195459.Spec : Prop :=
  ∀ n, P17107446502982195459.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P13476298133688741907

`A000040(∑[A242767(n+2)]+3)`
-/

namespace A088176.P13476298133688741907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A088176.P13476298133688741907

namespace A088176

/-- `A000040(∑[A242767(n+2)]+3)` -/
def P13476298133688741907.Spec : Prop :=
  ∀ n, P13476298133688741907.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P15192809314758477302

`A006093(A107770(n+1)+1)+1`
-/

namespace A088176.P15192809314758477302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A107770 (n + 1) + 1).toNat + 1

end

end A088176.P15192809314758477302

namespace A088176

/-- `A006093(A107770(n+1)+1)+1` -/
def P15192809314758477302.Spec : Prop :=
  ∀ n, P15192809314758477302.a n = A088176 (n + 1)

end A088176

/-! ## A088176.P749660918838651239

`A006093(A029707(n+1)+2)+1`
-/

namespace A088176.P749660918838651239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A029707 (n + 1) + 2).toNat + 1

end

end A088176.P749660918838651239

namespace A088176

/-- `A006093(A029707(n+1)+2)+1` -/
def P749660918838651239.Spec : Prop :=
  ∀ n, P749660918838651239.a n = A088176 (n + 1)

end A088176

/-!
# A088177: a(1)=1, a(2)=1; for n>2, a(n) is the smallest positive integer such that the products a(i)*a(i+1), i=1..n-1, are all distinct.

The programs for A088177, there is no canonical definition to state claims against.
-/

/-! ## A088177.P6249616951285629966

`A088178(n)/a(n-1)` with `a(0)=1`
-/

namespace A088177.P6249616951285629966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A088178 n : ℚ) / a (n - 1)

end

end A088177.P6249616951285629966

/-! ## A088177.P1754250481203648976

`∑{e}[A187180(n+1)+A084264(n), #]`
-/

namespace A088177.P1754250481203648976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (n + 1) + A084264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A088177.P1754250481203648976

/-! ## A088177.P6701583524680284392

`A001222(A298647(n)+A088975(n))`
-/

namespace A088177.P6701583524680284392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A298647 n + A088975 n).toNat

end

end A088177.P6701583524680284392

/-! ## A088177.P8252086329823267855

`A001222(A298647(n)+A127824(n))`
-/

namespace A088177.P8252086329823267855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A298647 n + A127824 n).toNat

end

end A088177.P8252086329823267855

/-! ## A088177.P15084486497226203277

`A001222(A187180(n+1)+A084264(n))`
-/

namespace A088177.P15084486497226203277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A187180 (n + 1) + A084264 n).toNat

end

end A088177.P15084486497226203277

/-!
# A088178: Sequence of distinct products b(n)*b(n+1), n=1,2,3,..., of the terms b(n) of A088177.

The programs for A088178, there is no canonical definition to state claims against.
-/

/-! ## A088178.P2423126392430799961

`A088177(n+1)*A088177(n+2)`
-/

namespace A088178.P2423126392430799961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (n + 1) * A088177 (n + 2)

end

end A088178.P2423126392430799961

/-! ## A088178.P12888826026448877655

`A075075(n+1)%A296187(2*(n+2))`
-/

namespace A088178.P12888826026448877655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075075 (n + 1)) (A296187 (2 * (n + 2)))

end

end A088178.P12888826026448877655

/-! ## A088178.P11615253255478539585

`A075075(n+1)+A000007(A033842(n))`
-/

namespace A088178.P11615253255478539585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075075 (n + 1) + A000007 (A033842 n).toNat

end

end A088178.P11615253255478539585

/-! ## A088178.P4097301311178416450

`A075075(n+1)+A000007(A225701(n))`
-/

namespace A088178.P4097301311178416450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075075 (n + 1) + A000007 (A225701 n).toNat

end

end A088178.P4097301311178416450

/-! ## A088178.P7634570389625496564

`A165878(A165878(n))+A075075(n+1)`
-/

namespace A088178.P7634570389625496564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165878 (A165878 n).toNat + A075075 (n + 1)

end

end A088178.P7634570389625496564

/-!
# A088179: Primes p such that mu(p-1) = 1; that is, p-1 is squarefree and has an even number of prime factors, where mu is the Moebius function.

The programs for A088179, there is no canonical definition to state claims against.
-/

/-! ## A088179.P1558645776156618259

`∩[A039787(n+1), A075431(n+1)]`
-/

namespace A088179.P1558645776156618259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P1558645776156618259

/-! ## A088179.P8786008124224712655

`∩[A045326(n+1), A075431(n+1)]`
-/

namespace A088179.P8786008124224712655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P8786008124224712655

/-! ## A088179.P5301242230502434675

`∩[A049196(n+1), A075431(n+1)]`
-/

namespace A088179.P5301242230502434675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P5301242230502434675

/-! ## A088179.P12353709076661187781

`∩[A049149(n+1), A075431(n+1)]`
-/

namespace A088179.P12353709076661187781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P12353709076661187781

/-! ## A088179.P14313143720923791538

`∩[A069579(n+1), A075431(n+1)]`
-/

namespace A088179.P14313143720923791538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P14313143720923791538

/-! ## A088179.P17073896987651212701

`∩[A075431(n+1), A097987(n+1)]`
-/

namespace A088179.P17073896987651212701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P17073896987651212701

/-! ## A088179.P8841021155393196124

`∩[A075431(n+1), A226384(n+1)]`
-/

namespace A088179.P8841021155393196124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P8841021155393196124

/-! ## A088179.P12691509476241646883

`p?[A179876(n+1)]`
-/

namespace A088179.P12691509476241646883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088179.P12691509476241646883

/-! ## A088179.P9200234034016463111

`p?[A179875(n+1)+1]`
-/

namespace A088179.P9200234034016463111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179875 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088179.P9200234034016463111

/-! ## A088179.P1721244962004252851

`∩[A009087(n+1), A179876(n+1)]`
-/

namespace A088179.P1721244962004252851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P1721244962004252851

/-! ## A088179.P14835568407889914575

`∩[A039786(n+1), A179876(n+1)]`
-/

namespace A088179.P14835568407889914575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P14835568407889914575

/-! ## A088179.P4241106466894267294

`∩[A039787(n+1), A179876(n+1)]`
-/

namespace A088179.P4241106466894267294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P4241106466894267294

/-! ## A088179.P7132821388302594799

`∩[A040116(n+1), A179876(n+1)]`
-/

namespace A088179.P7132821388302594799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P7132821388302594799

/-! ## A088179.P12327338022695213203

`∩[A042987(n+1), A179876(n+1)]`
-/

namespace A088179.P12327338022695213203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P12327338022695213203

/-! ## A088179.P8184733977776442144

`∩[A045323(n+1), A179876(n+1)]`
-/

namespace A088179.P8184733977776442144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P8184733977776442144

/-! ## A088179.P8785431863551173607

`∩[A045326(n+1), A179876(n+1)]`
-/

namespace A088179.P8785431863551173607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P8785431863551173607

/-! ## A088179.P97924220588342569

`∩[A049149(n+1), A179876(n+1)]`
-/

namespace A088179.P97924220588342569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P97924220588342569

/-! ## A088179.P251470359281294646

`∩[A049196(n+1), A179876(n+1)]`
-/

namespace A088179.P251470359281294646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P251470359281294646

/-! ## A088179.P17934057315849759989

`∩[A069579(n+1), A179876(n+1)]`
-/

namespace A088179.P17934057315849759989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P17934057315849759989

/-! ## A088179.P16333645454201269236

`∩[A075430(n+1), A179876(n+1)]`
-/

namespace A088179.P16333645454201269236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088179.P16333645454201269236

/-!
# A088180: a(n) is the number of numbers m < 10^n for which there is at least one k such that k + reverse(k) = m.

The programs for A088180, the canonical program `A088180.P14455721628092378663` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088180 has offset 0).

The definition of A088180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088180.P14455721628092378663

`A190481(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A088180

/-- `A190481(n)+a(n-1)` -/
def P14455721628092378663.Spec : Prop :=
  ∀ n, P14455721628092378663.a n = A088180 n

theorem P14455721628092378663.correct : P14455721628092378663.Spec := by
  intro n
  simp only [A088180]

end A088180

/-! ## A088180.P9296909831831569496

`∑[A190481(ceil(acot(n))+n-1)]-3`
-/

namespace A088180.P9296909831831569496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190481 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A088180.P9296909831831569496

namespace A088180

/-- `∑[A190481(ceil(acot(n))+n-1)]-3` -/
def P9296909831831569496.Spec : Prop :=
  ∀ n, P9296909831831569496.a n = A088180 n

end A088180

/-! ## A088180.P130136535579026083

`∑[A190481(A028310(n))]-3`
-/

namespace A088180.P130136535579026083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190481 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A088180.P130136535579026083

namespace A088180

/-- `∑[A190481(A028310(n))]-3` -/
def P130136535579026083.Spec : Prop :=
  ∀ n, P130136535579026083.a n = A088180 n

end A088180

/-! ## A088180.P11145533287239169325

`∑[A190481(n+1)]+1-A190481(n+1)`
-/

namespace A088180.P11145533287239169325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A190481 (n + 1))

end

end A088180.P11145533287239169325

namespace A088180

/-- `∑[A190481(n+1)]+1-A190481(n+1)` -/
def P11145533287239169325.Spec : Prop :=
  ∀ n, P11145533287239169325.a n = A088180 n

end A088180

/-!
# A088181: Expansion of e.g.f.: 1/(1-sinh(x)-x).

The programs for A088181, there is no canonical definition to state claims against.
-/

/-! ## A088181.P6753063886428972291

`A004525(A000557(n)+A000165(n))`
-/

namespace A088181.P6753063886428972291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000557 n + A000165 n).toNat

end

end A088181.P6753063886428972291

/-! ## A088181.P10164036291410508133

`A004526(A000557(n)+A000165(n))`
-/

namespace A088181.P10164036291410508133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000557 n + A000165 n).toNat

end

end A088181.P10164036291410508133

/-!
# A088182: E.g.f.: 1/(1-sinh(x)-x-x^2/2).

The programs for A088182, there is no canonical definition to state claims against.
-/

/-! ## A088182.P14380965837372214904

`A113662(n+1)-A025428(A113662(n+1))`
-/

namespace A088182.P14380965837372214904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113662 (n + 1) - A025428 (A113662 (n + 1)).toNat

end

end A088182.P14380965837372214904

/-!
# A088183: Number of ways to write n as a sum of two coprime semiprimes.

The programs for A088183, there is no canonical definition to state claims against.
-/

/-! ## A088183.P424386250019465285

`A072931(Δ[A141213(n)]*A166333(n))`
-/

namespace A088183.P424386250019465285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 ((f1 (n + 1) - f1 n) * A166333 n).toNat

end

end A088183.P424386250019465285

/-! ## A088183.P2490353133079198088

`A072931(A166333(n)%A309034(n+1))`
-/

namespace A088183.P2490353133079198088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (Int.tmod (A166333 n) (A309034 (n + 1))).toNat

end

end A088183.P2490353133079198088

/-! ## A088183.P17605341979570963095

`A072931(A166333(n))%A000124(A000041(n))`
-/

namespace A088183.P17605341979570963095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072931 (A166333 n).toNat) (A000124 (A000041 n).toNat)

end

end A088183.P17605341979570963095

/-! ## A088183.P4875516973857985815

`A072931(A166333(n))*A089026(A100824(2*n))`
-/

namespace A088183.P4875516973857985815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A166333 n).toNat * A089026 (A100824 (2 * n)).toNat

end

end A088183.P4875516973857985815

/-! ## A088183.P1278735141297761265

`A102679(A144845(n))`
-/

namespace A088183.P1278735141297761265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A144845 n).toNat

end

end A088183.P1278735141297761265

/-!
# A088184: Numbers that can be written as sum of two coprime semiprimes.

The programs for A088184, there is no canonical definition to state claims against.
-/

/-! ## A088184.P17745734541875304703

`eq[2, sqrt(a(A088183(n)))]` with `a(0)=16`
-/

namespace A088184.P17745734541875304703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [16] fun n f2 =>
  Real.sqrt (f2 (A088183 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A088184.P17745734541875304703

/-! ## A088184.P4326342715063058043

`comp[A088185(n+1)-1]+1`
-/

namespace A088184.P4326342715063058043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088185 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A088184.P4326342715063058043

/-! ## A088184.P11171889562746600207

`comp[lt[A088183(n+1), 1]]+1`
-/

namespace A088184.P11171889562746600207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A088184.P11171889562746600207

/-! ## A088184.P17646533305736991864

`eq[2, A000034(a(A088183(n)))]` with `a(0)=0`
-/

namespace A088184.P17646533305736991864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000034 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088184.P17646533305736991864

/-! ## A088184.P4742414813907605702

`eq[2, A000079(a(A088183(n)))]` with `a(0)=0`
-/

namespace A088184.P4742414813907605702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000079 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088184.P4742414813907605702

/-! ## A088184.P4243794567299676946

`eq[3, A000032(a(A088183(n)))]` with `a(0)=0`
-/

namespace A088184.P4243794567299676946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088184.P4243794567299676946

/-! ## A088184.P6883190409463887790

`eq[2, A000038(a(A088183(n)))]` with `a(0)=1`
-/

namespace A088184.P6883190409463887790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000038 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088184.P6883190409463887790

/-! ## A088184.P9605229434965953284

`eq[3, A000040(a(A088183(n)))]` with `a(0)=1`
-/

namespace A088184.P9605229434965953284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088184.P9605229434965953284

/-! ## A088184.P13582181131309461386

`eq[2, A000045(a(A088183(n)))]` with `a(0)=4`
-/

namespace A088184.P13582181131309461386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088184.P13582181131309461386

/-! ## A088184.P16781134323032265337

`eq[2, A000010(a(A088183(n)))]` with `a(0)=5`
-/

namespace A088184.P16781134323032265337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000010 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088184.P16781134323032265337

/-!
# A088185: Numbers which are not the sum of two coprime semiprimes.

The programs for A088185, there is no canonical definition to state claims against.
-/

/-! ## A088185.P15841212188307707159

`eq[4, a(A088183(n))²]` with `a(0)=2`
-/

namespace A088185.P15841212188307707159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A088183 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A088185.P15841212188307707159

/-! ## A088185.P4839728039776870543

`eq[0, A088183(n+1)]+1`
-/

namespace A088185.P4839728039776870543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A088185.P4839728039776870543

/-! ## A088185.P17755583003923933049

`lt[A088183(abs(1-n)+2), 1]+1`
-/

namespace A088185.P17755583003923933049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (|1 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088185.P17755583003923933049

/-! ## A088185.P10214287938100473150

`eq[1, A033568(a(A088183(n)))]` with `a(0)=0`
-/

namespace A088185.P10214287938100473150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A033568 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088185.P10214287938100473150

/-! ## A088185.P12344224328531339673

`eq[1, A261998(a(A088183(n)))]` with `a(0)=0`
-/

namespace A088185.P12344224328531339673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A261998 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088185.P12344224328531339673

/-! ## A088185.P8716322695279084786

`eq[2, A000032(a(A088183(n)))]` with `a(0)=0`
-/

namespace A088185.P8716322695279084786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088185.P8716322695279084786

/-! ## A088185.P13392506711436848946

`eq[2, A000037(a(A088183(n)))]` with `a(0)=1`
-/

namespace A088185.P13392506711436848946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000037 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088185.P13392506711436848946

/-! ## A088185.P7708595828057298873

`eq[2, A000040(a(A088183(n)))]` with `a(0)=1`
-/

namespace A088185.P7708595828057298873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088185.P7708595828057298873

/-! ## A088185.P11308808554212510911

`eq[2, A000043(a(A088183(n)))]` with `a(0)=1`
-/

namespace A088185.P11308808554212510911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000043 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088185.P11308808554212510911

/-! ## A088185.P6553908206841709082

`eq[2, A000079(a(A088183(n)))]` with `a(0)=1`
-/

namespace A088185.P6553908206841709082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000079 (f2 (A088183 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A088185.P6553908206841709082

/-!
# A088186: Sums of twin primes and their indices.

The programs for A088186, the canonical program `A088186.P11333614658990135480` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088186 has offset 0).

The definition of A088186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088186.P11333614658990135480

`A054735(n+1)+A005408(A029707(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A088186

/-- `A054735(n+1)+A005408(A029707(n+1))` -/
def P11333614658990135480.Spec : Prop :=
  ∀ n, P11333614658990135480.a n = A088186 n

theorem P11333614658990135480.correct : P11333614658990135480.Spec := by
  intro n
  simp only [A088186]

end A088186

/-! ## A088186.P3565962443988806524

`2*A064427(A014574(n+1))+1`
-/

namespace A088186.P3565962443988806524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064427 (A014574 (n + 1)).toNat + 1

end

end A088186.P3565962443988806524

namespace A088186

/-- `2*A064427(A014574(n+1))+1` -/
def P3565962443988806524.Spec : Prop :=
  ∀ n, P3565962443988806524.a n = A088186 n

end A088186

/-! ## A088186.P10045929146050550911

`2*A064427(A006512(1+n))-1`
-/

namespace A088186.P10045929146050550911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064427 (A006512 (1 + n)).toNat - 1

end

end A088186.P10045929146050550911

namespace A088186

/-- `2*A064427(A006512(1+n))-1` -/
def P10045929146050550911.Spec : Prop :=
  ∀ n, P10045929146050550911.a n = A088186 n

end A088186

/-! ## A088186.P2083467728881128511

`A004273(A029707(n+1)+A006512(n+1))`
-/

namespace A088186.P2083467728881128511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A029707 (n + 1) + A006512 (n + 1)).toNat

end

end A088186.P2083467728881128511

namespace A088186

/-- `A004273(A029707(n+1)+A006512(n+1))` -/
def P2083467728881128511.Spec : Prop :=
  ∀ n, P2083467728881128511.a n = A088186 n

end A088186

/-! ## A088186.P17867273077599019054

`A005408(A029707(n+1)+A014574(n+1))`
-/

namespace A088186.P17867273077599019054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A029707 (n + 1) + A014574 (n + 1)).toNat

end

end A088186.P17867273077599019054

namespace A088186

/-- `A005408(A029707(n+1)+A014574(n+1))` -/
def P17867273077599019054.Spec : Prop :=
  ∀ n, P17867273077599019054.a n = A088186 n

end A088186

/-!
# A088187: Primes that are a sum of twin primes and their indices.

The programs for A088187, the canonical program `A088187.P6253673112261701668` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A088187 has offset 1).

The definition of A088187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A088187.P6253673112261701668

`p?[A088186(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A088187

/-- `p?[A088186(n)]` -/
def P6253673112261701668.Spec : Prop :=
  ∀ n, P6253673112261701668.a n = A088187 (n + 1)

theorem P6253673112261701668.correct : P6253673112261701668.Spec := by
  intro n
  simp only [A088187, Nat.add_sub_cancel]

end A088187

/-! ## A088187.P12683332395329893997

`∩[A015919(n+1), A088186(n)]`
-/

namespace A088187.P12683332395329893997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P12683332395329893997

namespace A088187

/-- `∩[A015919(n+1), A088186(n)]` -/
def P12683332395329893997.Spec : Prop :=
  ∀ n, (P12683332395329893997.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P12596008854963641793

`∩[A000040(n+1), A088186(n)]`
-/

namespace A088187.P12596008854963641793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P12596008854963641793

namespace A088187

/-- `∩[A000040(n+1), A088186(n)]` -/
def P12596008854963641793.Spec : Prop :=
  ∀ n, (P12596008854963641793.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P1247381335929990713

`∩[A004139(n+1), A088186(n)]`
-/

namespace A088187.P1247381335929990713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P1247381335929990713

namespace A088187

/-- `∩[A004139(n+1), A088186(n)]` -/
def P1247381335929990713.Spec : Prop :=
  ∀ n, (P1247381335929990713.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P8959508024298324121

`∩[A006005(n+1), A088186(n)]`
-/

namespace A088187.P8959508024298324121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P8959508024298324121

namespace A088187

/-- `∩[A006005(n+1), A088186(n)]` -/
def P8959508024298324121.Spec : Prop :=
  ∀ n, (P8959508024298324121.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P9637466436257324845

`∩[A008578(n+1), A088186(n)]`
-/

namespace A088187.P9637466436257324845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P9637466436257324845

namespace A088187

/-- `∩[A008578(n+1), A088186(n)]` -/
def P9637466436257324845.Spec : Prop :=
  ∀ n, (P9637466436257324845.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P17218595375903428196

`∩[A033946(n+1), A088186(n)]`
-/

namespace A088187.P17218595375903428196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P17218595375903428196

namespace A088187

/-- `∩[A033946(n+1), A088186(n)]` -/
def P17218595375903428196.Spec : Prop :=
  ∀ n, (P17218595375903428196.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P13176859503761449743

`∩[A045319(n+1), A088186(n)]`
-/

namespace A088187.P13176859503761449743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P13176859503761449743

namespace A088187

/-- `∩[A045319(n+1), A088186(n)]` -/
def P13176859503761449743.Spec : Prop :=
  ∀ n, (P13176859503761449743.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P1048613201511908176

`∩[A045344(n+1), A088186(n)]`
-/

namespace A088187.P1048613201511908176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P1048613201511908176

namespace A088187

/-- `∩[A045344(n+1), A088186(n)]` -/
def P1048613201511908176.Spec : Prop :=
  ∀ n, (P1048613201511908176.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P4136767461472465816

`∩[A046022(n+1), A088186(n)]`
-/

namespace A088187.P4136767461472465816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P4136767461472465816

namespace A088187

/-- `∩[A046022(n+1), A088186(n)]` -/
def P4136767461472465816.Spec : Prop :=
  ∀ n, (P4136767461472465816.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P7995714096791289384

`∩[A000430(n+1), A088186(n)]`
-/

namespace A088187.P7995714096791289384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088187.P7995714096791289384

namespace A088187

/-- `∩[A000430(n+1), A088186(n)]` -/
def P7995714096791289384.Spec : Prop :=
  ∀ n, (P7995714096791289384.a n : ℤ) = A088187 (n + 1)

end A088187

/-! ## A088187.P16797524089048563739

`filter[A088186(n), A010051(#)]`
-/

namespace A088187.P16797524089048563739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A088187.P16797524089048563739

namespace A088187

/-- `filter[A088186(n), A010051(#)]` -/
def P16797524089048563739.Spec : Prop :=
  ∀ n, P16797524089048563739.a n = A088187 (n + 1)

end A088187

/-! ## A088187.P13874434492881819035

`filter[A088186(n), A365716(#)]`
-/

namespace A088187.P13874434492881819035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A088187.P13874434492881819035

namespace A088187

/-- `filter[A088186(n), A365716(#)]` -/
def P13874434492881819035.Spec : Prop :=
  ∀ n, P13874434492881819035.a n = A088187 (n + 1)

end A088187

/-! ## A088187.P16091280591350641814

`filter[A088186(n), A379969(#)]`
-/

namespace A088187.P16091280591350641814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A088187.P16091280591350641814

namespace A088187

/-- `filter[A088186(n), A379969(#)]` -/
def P16091280591350641814.Spec : Prop :=
  ∀ n, P16091280591350641814.a n = A088187 (n + 1)

end A088187

/-! ## A088187.P11011349660525213238

`filter[A088186(n), A380467(#)]`
-/

namespace A088187.P11011349660525213238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A088187.P11011349660525213238

namespace A088187

/-- `filter[A088186(n), A380467(#)]` -/
def P11011349660525213238.Spec : Prop :=
  ∀ n, P11011349660525213238.a n = A088187 (n + 1)

end A088187

/-!
# A088189: Expansion of e.g.f.: 1/(1-sinh(x)-x-x^2).

The programs for A088189, there is no canonical definition to state claims against.
-/

/-! ## A088189.P15789146799024494884

`A076502(2*(n+1)^n)`
-/

namespace A088189.P15789146799024494884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076502 (2 * (n + 1) ^ n)

end

end A088189.P15789146799024494884

/-!
# A088190: Largest quadratic residue modulo prime(n).

The programs for A088190, there is no canonical definition to state claims against.
-/

/-! ## A088190.P3849614765171644973

`p?[ceil(2/acot(n))]-A088192(n+1)`
-/

namespace A088190.P3849614765171644973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A088192 (n + 1)

end

end A088190.P3849614765171644973

/-! ## A088190.P10900809504830685521

`A000040(n+1)-A088192(n+1)`
-/

namespace A088190.P10900809504830685521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A088192 (n + 1)

end

end A088190.P10900809504830685521

/-! ## A088190.P4327240657631840903

`A047210(p?[xor(1, n)])`
-/

namespace A088190.P4327240657631840903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088190.P4327240657631840903

/-! ## A088190.P15195838950547159388

`A047210(Δ[A007504(n)])`
-/

namespace A088190.P15195838950547159388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (f1 (n + 1) - f1 n).toNat

end

end A088190.P15195838950547159388

/-! ## A088190.P2448433786747403268

`A047210(A000040(n+1))`
-/

namespace A088190.P2448433786747403268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A000040 (n + 1)).toNat

end

end A088190.P2448433786747403268

/-! ## A088190.P7837276157997212065

`A047210(A008578(n+2))`
-/

namespace A088190.P7837276157997212065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A008578 (n + 2)).toNat

end

end A088190.P7837276157997212065

/-! ## A088190.P4056593005101712204

`A047210(A175787(n+2))`
-/

namespace A088190.P4056593005101712204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A175787 (n + 2)).toNat

end

end A088190.P4056593005101712204

/-! ## A088190.P10768060867973533785

`A047210(A182986(n+2))`
-/

namespace A088190.P10768060867973533785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A182986 (n + 2)).toNat

end

end A088190.P10768060867973533785

/-! ## A088190.P7359064970647875818

`A047210(record[A000010(n+1)+1])`
-/

namespace A088190.P7359064970647875818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A088190.P7359064970647875818

/-! ## A088190.P9862264775058739376

`A088191(n)+a(n-1)` with `a(0)=1`
-/

namespace A088190.P9862264775058739376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088191 n + a (n - 1)

end

end A088190.P9862264775058739376

/-! ## A088190.P12455898387050327286

`A063987(A005521(n))`
-/

namespace A088190.P12455898387050327286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063987 (A005521 n).toNat

end

end A088190.P12455898387050327286

/-!
# A088191: First differences of A088190.

The programs for A088191, there is no canonical definition to state claims against.
-/

/-! ## A088191.P6687483045307836678

`Δ[A088190(n+1)]`
-/

namespace A088191.P6687483045307836678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088191.P6687483045307836678

/-! ## A088191.P250271956235451100

`Δ[A063987(A005521(n))]`
-/

namespace A088191.P250271956235451100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063987 (A005521 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088191.P250271956235451100

/-! ## A088191.P5662157558698195837

`Δ[A047210(Δ[A007504(n)])]`
-/

namespace A088191.P5662157558698195837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088191.P5662157558698195837

/-! ## A088191.P1990636622167888342

`Δ[A047210(A000040(n+1))]`
-/

namespace A088191.P1990636622167888342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088191.P1990636622167888342

/-! ## A088191.P16892958193305801875

`Δ[A047210(A008578(n+2))]`
-/

namespace A088191.P16892958193305801875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088191.P16892958193305801875

/-! ## A088191.P349353717636689731

`Δ[A047210(A324050(n+2))]`
-/

namespace A088191.P349353717636689731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (A324050 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088191.P349353717636689731

/-! ## A088191.P2803082124901886111

`A088190(n+2)-A088190(n+1)`
-/

namespace A088191.P2803082124901886111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (n + 2) - A088190 (n + 1)

end

end A088191.P2803082124901886111

/-! ## A088191.P2603055783150681073

`Δ[A047210(record[A000010(n+1)+1])]`
-/

namespace A088191.P2603055783150681073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047210 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088191.P2603055783150681073

/-! ## A088191.P8814909736676112008

`Δ[A000040(n+1)-A088192(n+1)]`
-/

namespace A088191.P8814909736676112008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A088192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088191.P8814909736676112008

/-!
# A088192: Distance between prime(n) and the largest quadratic residue modulo prime(n).

The programs for A088192, there is no canonical definition to state claims against.
-/

/-! ## A088192.P16697922496180181789

`Δ[A007504(n)]-A088190(n+1)`
-/

namespace A088192.P16697922496180181789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088190 (n + 1)

end

end A088192.P16697922496180181789

/-! ## A088192.P5612100468486281199

`A000040(n+1)-A088190(n+1)`
-/

namespace A088192.P5612100468486281199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A088190 (n + 1)

end

end A088192.P5612100468486281199

/-! ## A088192.P7775672258087844155

`gcd(A034953(n+1)%2, A053760(n+1))`
-/

namespace A088192.P7775672258087844155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A034953 (n + 1)) 2) (A053760 (n + 1))

end

end A088192.P7775672258087844155

/-! ## A088192.P9112618164233731897

`A053760(n+1)^A000045(A001222(A218459(n+1)))`
-/

namespace A088192.P9112618164233731897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) ^ (A000045 (A001222 (A218459 (n + 1)).toNat).toNat : ℤ)

end

end A088192.P9112618164233731897

/-! ## A088192.P16418738238199605714

`p?[A256450(n)]-A088190(n+1)`
-/

namespace A088192.P16418738238199605714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A088190 (n + 1)

end

end A088192.P16418738238199605714

/-! ## A088192.P775951458841094541

`p?[A014681(n)]-A088190(n+1)`
-/

namespace A088192.P775951458841094541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A088190 (n + 1)

end

end A088192.P775951458841094541

/-! ## A088192.P8612108690750053480

`A000040(n+1)-A047210(Δ[A007504(n)])`
-/

namespace A088192.P8612108690750053480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A047210 (f1 (n + 1) - f1 n).toNat

end

end A088192.P8612108690750053480

/-! ## A088192.P14371640244385763704

`A008578(n+2)-A047210(A008578(n+2))`
-/

namespace A088192.P14371640244385763704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A047210 (A008578 (n + 2)).toNat

end

end A088192.P14371640244385763704

/-! ## A088192.P11531504980784273489

`A182986(n+2)-A047210(A182986(n+2))`
-/

namespace A088192.P11531504980784273489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A047210 (A182986 (n + 2)).toNat

end

end A088192.P11531504980784273489

/-! ## A088192.P7418359715583264726

`A053760(n+1)^and(1, A220861(n+1))`
-/

namespace A088192.P7418359715583264726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) ^ (Int.land 1 (A220861 (n + 1)) : ℤ)

end

end A088192.P7418359715583264726

/-! ## A088192.P7424410111910109912

`p?[A006370(n)]-A088190(n+1)`
-/

namespace A088192.P7424410111910109912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A088190 (n + 1)

end

end A088192.P7424410111910109912

/-! ## A088192.P6111673651629121233

`p?[A057979(n)]-A088190(n+1)`
-/

namespace A088192.P6111673651629121233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A088190 (n + 1)

end

end A088192.P6111673651629121233

/-! ## A088192.P14354047760007986584

`gcd(A218459(n+1)!, A053760(n+1))`
-/

namespace A088192.P14354047760007986584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A218459 (n + 1)).toNat : ℤ) (A053760 (n + 1))

end

end A088192.P14354047760007986584

/-! ## A088192.P5582255109295425968

`abs(A220862(n+1)%A000230(n))`
-/

namespace A088192.P5582255109295425968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A220862 (n + 1)) (A000230 n)|

end

end A088192.P5582255109295425968

/-! ## A088192.P11640732925729470693

`gcd(abs(A220862(n+1)), A000038(n))`
-/

namespace A088192.P11640732925729470693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A220862 (n + 1)| (A000038 n)

end

end A088192.P11640732925729470693

/-! ## A088192.P47009333129928996

`gcd(-A220862(n+1), A000122(n))`
-/

namespace A088192.P47009333129928996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A220862 (n + 1)) (A000122 n)

end

end A088192.P47009333129928996

/-! ## A088192.P465721701113898550

`abs(A220862(n+1))%A220861(n+2)`
-/

namespace A088192.P465721701113898550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A220862 (n + 1)| (A220861 (n + 2))

end

end A088192.P465721701113898550

/-! ## A088192.P12709958692177703060

`A006530(-A220862(n+1)%(n+2))`
-/

namespace A088192.P12709958692177703060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (-A220862 (n + 1)) (n + 2 : ℤ)).toNat

end

end A088192.P12709958692177703060

/-! ## A088192.P2281226497013539168

`A000118(n)%(A220862(n+1)+A000118(n))`
-/

namespace A088192.P2281226497013539168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000118 n) (A220862 (n + 1) + A000118 n)

end

end A088192.P2281226497013539168

/-!
# A088193: Prime numbers where the sequence of largest quadratic residues modulo the primes (A088190) is non-monotonic.

The programs for A088193, there is no canonical definition to state claims against.
-/

/-! ## A088193.P3984604206712686892

`A091383(n+1)`
-/

namespace A088193.P3984604206712686892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091383 (n + 1)

end

end A088193.P3984604206712686892

/-! ## A088193.P2244521520472487265

`A093893(A284903(n+1)+n²)`
-/

namespace A088193.P2244521520472487265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (A284903 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A088193.P2244521520472487265

/-! ## A088193.P9363655781067504504

`p?[or(A111166(n+1), A220398(n+1))]`
-/

namespace A088193.P9363655781067504504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111166 (n + 1)) (A220398 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A088193.P9363655781067504504

/-!
# A088195: Distance (A088192) of primes from the largest quadratic residues modulo the primes (A088190), where the latter is non-monotonic.

The programs for A088195, there is no canonical definition to state claims against.
-/

/-! ## A088195.P3488719055860940229

`or(1, A020649(A088193(n+1)))`
-/

namespace A088195.P3488719055860940229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020649 (A088193 (n + 1)).toNat)

end

end A088195.P3488719055860940229

/-! ## A088195.P8401898495111705023

`A227196(or(4, A088193(n+1)))`
-/

namespace A088195.P8401898495111705023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (Int.lor 4 (A088193 (n + 1))).toNat

end

end A088195.P8401898495111705023

/-! ## A088195.P1998814612088809045

`A006530(3*A020649(A088193(n+1)))`
-/

namespace A088195.P1998814612088809045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * A020649 (A088193 (n + 1)).toNat).toNat

end

end A088195.P1998814612088809045

/-! ## A088195.P15326927501568732990

`A006530(lcm(6, A020649(A088193(n+1))))`
-/

namespace A088195.P15326927501568732990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 6 (A020649 (A088193 (n + 1)).toNat))

end

end A088195.P15326927501568732990

/-! ## A088195.P5666487148142402132

`A166926(3*n)+A020649(A088193(n+1))`
-/

namespace A088195.P5666487148142402132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 (3 * n) + A020649 (A088193 (n + 1)).toNat

end

end A088195.P5666487148142402132

/-! ## A088195.P3099129013057143146

`A001221(a(n-1))*A020649(A088193(n+1))` with `a(0)=3`
-/

namespace A088195.P3099129013057143146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001221 (a (n - 1)).toNat * A020649 (A088193 (n + 1)).toNat

end

end A088195.P3099129013057143146

/-!
# A088196: Largest number that is not a quadratic residue modulo prime(n).

The programs for A088196, there is no canonical definition to state claims against.
-/

/-! ## A088196.P13540933976071193535

`A088197(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A088196.P13540933976071193535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088197 (n + 1) + a (n - 1)

end

end A088196.P13540933976071193535

/-! ## A088196.P16823708287173747925

`p?[2*n+1]-A088198(n+2)`
-/

namespace A088196.P16823708287173747925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A088198 (n + 2)

end

end A088196.P16823708287173747925

/-! ## A088196.P9062658724724954542

`A065091(n+1)-A088198(n+2)`
-/

namespace A088196.P9062658724724954542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A088198 (n + 2)

end

end A088196.P9062658724724954542

/-! ## A088196.P14034853995187294657

`A000040(n+2)-A088198(n+2)`
-/

namespace A088196.P14034853995187294657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A088198 (n + 2)

end

end A088196.P14034853995187294657

/-! ## A088196.P13276108905477042962

`A334819(p?[Δ[n²]])`
-/

namespace A088196.P13276108905477042962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A088196.P13276108905477042962

/-! ## A088196.P15724729770275093973

`p?[2*n+1]-A354974(p?[2*n+1])`
-/

namespace A088196.P15724729770275093973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A354974 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A088196.P15724729770275093973

/-! ## A088196.P6767264853842252477

`A334819(A065091(n+1))`
-/

namespace A088196.P6767264853842252477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (A065091 (n + 1)).toNat

end

end A088196.P6767264853842252477

/-! ## A088196.P6568008422857295155

`A334819(A000040(n+2))`
-/

namespace A088196.P6568008422857295155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (A000040 (n + 2)).toNat

end

end A088196.P6568008422857295155

/-! ## A088196.P7101576229182149063

`A334819(A006005(n+2))`
-/

namespace A088196.P7101576229182149063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (A006005 (n + 2)).toNat

end

end A088196.P7101576229182149063

/-! ## A088196.P3515240815317354917

`A063988(A005521(n+1))`
-/

namespace A088196.P3515240815317354917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063988 (A005521 (n + 1)).toNat

end

end A088196.P3515240815317354917

/-!
# A088197: First differences of A088196.

The programs for A088197, there is no canonical definition to state claims against.
-/

/-! ## A088197.P9739797925334695818

`Δ[A088196(n+2)]`
-/

namespace A088197.P9739797925334695818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088196 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P9739797925334695818

/-! ## A088197.P7722202587094310681

`A088196(n+3)-A088196(n+2)`
-/

namespace A088197.P7722202587094310681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088196 (n + 3) - A088196 (n + 2)

end

end A088197.P7722202587094310681

/-! ## A088197.P13073716686521046754

`Δ[A048974(n+1)-A088198(n+2)]`
-/

namespace A088197.P13073716686521046754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - A088198 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P13073716686521046754

/-! ## A088197.P1859705002749488465

`Δ[A000040(n+2)-A088198(n+2)]`
-/

namespace A088197.P1859705002749488465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A088198 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P1859705002749488465

/-! ## A088197.P15470591832885939188

`Δ[A334819(p?[2*n+1])]`
-/

namespace A088197.P15470591832885939188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P15470591832885939188

/-! ## A088197.P13002970916320568671

`Δ[A334819(A065091(n+1))]`
-/

namespace A088197.P13002970916320568671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P13002970916320568671

/-! ## A088197.P1663363192791411105

`Δ[A334819(A000040(n+2))]`
-/

namespace A088197.P1663363192791411105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P1663363192791411105

/-! ## A088197.P1632157131804832830

`Δ[A334819(A006005(n+2))]`
-/

namespace A088197.P1632157131804832830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (A006005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P1632157131804832830

/-! ## A088197.P11094557283124074762

`Δ[A334819(A008578(n+3))]`
-/

namespace A088197.P11094557283124074762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (A008578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P11094557283124074762

/-! ## A088197.P17575915429959541126

`Δ[A334819(sqrt(A001248(n+2)))]`
-/

namespace A088197.P17575915429959541126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 2) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P17575915429959541126

/-! ## A088197.P9332386500818550133

`Δ[A334819(or(1, A045344(n+1)))]`
-/

namespace A088197.P9332386500818550133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334819 (Int.lor 1 (A045344 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A088197.P9332386500818550133

/-!
# A088198: Distance LQnR(p_n) (A088196) from p_n.

The programs for A088198, there is no canonical definition to state claims against.
-/

/-! ## A088198.P14719904887604840824

`A000040(n+2)-A088196(n+2)`
-/

namespace A088198.P14719904887604840824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A088196 (n + 2)

end

end A088198.P14719904887604840824

/-! ## A088198.P3183238458440860168

`A065091(n+1)-A088196(n+2)`
-/

namespace A088198.P3183238458440860168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A088196 (n + 2)

end

end A088198.P3183238458440860168

/-! ## A088198.P18113541069023221523

`A140475(n+1)%A088196(n+2)`
-/

namespace A088198.P18113541069023221523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140475 (n + 1)) (A088196 (n + 2))

end

end A088198.P18113541069023221523

/-! ## A088198.P13526872407697452688

`A053760(n+2)/A088192(n+2)`
-/

namespace A088198.P13526872407697452688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 2) : ℚ) / (A088192 (n + 2) : ℚ)

end

end A088198.P13526872407697452688

/-! ## A088198.P2638640517708967270

`A091382(n+2)/A088192(n+2)`
-/

namespace A088198.P2638640517708967270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091382 (n + 2) : ℚ) / (A088192 (n + 2) : ℚ)

end

end A088198.P2638640517708967270

/-! ## A088198.P4019365476560471829

`A354974(p?[2*n+1])`
-/

namespace A088198.P4019365476560471829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A088198.P4019365476560471829

/-! ## A088198.P18426876472854090372

`p?[2*n+1]-A334819(p?[2*n+1])`
-/

namespace A088198.P18426876472854090372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A334819 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A088198.P18426876472854090372

/-! ## A088198.P15683465665752318876

`A354974(A065091(n+1))`
-/

namespace A088198.P15683465665752318876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (A065091 (n + 1)).toNat

end

end A088198.P15683465665752318876

/-! ## A088198.P13272066853081120306

`A354974(A000040(n+2))`
-/

namespace A088198.P13272066853081120306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (A000040 (n + 2)).toNat

end

end A088198.P13272066853081120306

/-! ## A088198.P2990112295550665304

`A354974(A006005(n+2))`
-/

namespace A088198.P2990112295550665304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (A006005 (n + 2)).toNat

end

end A088198.P2990112295550665304

/-! ## A088198.P62694517998772897

`A354974(A073582(n+2))`
-/

namespace A088198.P62694517998772897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (A073582 (n + 2)).toNat

end

end A088198.P62694517998772897

/-! ## A088198.P15179289723700355836

`A354974(A100484(n+2))`
-/

namespace A088198.P15179289723700355836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (A100484 (n + 2)).toNat

end

end A088198.P15179289723700355836

/-! ## A088198.P15594375379816002827

`A354974(A072900(n+2))`
-/

namespace A088198.P15594375379816002827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (A072900 (n + 2)).toNat

end

end A088198.P15594375379816002827

/-! ## A088198.P9060087649987209471

`A354974(A383578(n+2))`
-/

namespace A088198.P9060087649987209471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354974 (A383578 (n + 2)).toNat

end

end A088198.P9060087649987209471

/-!
# A088199: Primes where the difference sequence (A088197) of LQnR(p_n) (A088196) is <= 0.

The programs for A088199, there is no canonical definition to state claims against.
-/

/-! ## A088199.P13882510115858846113

`p?[A261246(n+1)+2]^Δ[A056142(n)]`
-/

namespace A088199.P13882510115858846113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261246 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A088199.P13882510115858846113

/-! ## A088199.P3256089790789294514

`∩[A006512(n+1), A016813(A187797(n+1))]`
-/

namespace A088199.P3256089790789294514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A187797 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A088199.P3256089790789294514

