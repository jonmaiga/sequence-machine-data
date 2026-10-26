import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A397014: Decimal expansion of 1 - e^(-1/e).

The programs for A397014, there is no canonical definition to state claims against.
-/

/-! ## A397014.P5442163877861772140

`9-A072364(n)`
-/

namespace A397014.P5442163877861772140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A072364 n

end

end A397014.P5442163877861772140

/-!
# A397023: Number of free polynars with n cells that are not the 2 X enlargement of a free n-omino.

The programs for A397023, there is no canonical definition to state claims against.
-/

/-! ## A397023.P2291220485542920229

`A390620(n+1)-A000105(n+1)`
-/

namespace A397023.P2291220485542920229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390620 (n + 1) - A000105 (n + 1)

end

end A397023.P2291220485542920229

/-!
# A397024: a(n) is the sum of gcd(k,n) over all numbers k obtained by changing any subset of the 1-bits of n to 0-bits in its binary representation.

The programs for A397024, there is no canonical definition to state claims against.
-/

/-! ## A397024.P6292325675327005886

`A006257(n)+A002487(A091270(n))`
-/

namespace A397024.P6292325675327005886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + A002487 (A091270 n).toNat

end

end A397024.P6292325675327005886

/-! ## A397024.P4348908371888003363

`A197354(A003945(n))-A062383(n)`
-/

namespace A397024.P4348908371888003363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (A003945 n).toNat - A062383 n

end

end A397024.P4348908371888003363

/-! ## A397024.P2125257463160656199

`A375126(A008458(n)-A035327(2*n))`
-/

namespace A397024.P2125257463160656199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375126 (A008458 n - A035327 (2 * n)).toNat

end

end A397024.P2125257463160656199

/-!
# A397033: Primes p such that Mordell's equation y^2 = x^3 + p^3 has at least 1 integral solutions with y > 0.

The programs for A397033, there is no canonical definition to state claims against.
-/

/-! ## A397033.P8874836779557170131

`p?[A356720(n+1)]`
-/

namespace A397033.P8874836779557170131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A397033.P8874836779557170131

/-! ## A397033.P14024791684049069226

`∩[A356720(n+1), A042988(n)]`
-/

namespace A397033.P14024791684049069226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397033.P14024791684049069226

/-! ## A397033.P7277762076269435595

`∩[A356720(n+1), A060191(n)]`
-/

namespace A397033.P7277762076269435595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397033.P7277762076269435595

/-!
# A397034: a(n) = floor(A(n)), where A(n) is the area enclosed between the line y = x and the curve y = exp(x*log(n+1)/n) - 1 for 0 <= x <= n (the constant log(n+1)/n makes the curve pass through (n,n)).

The programs for A397034, the canonical program `A397034.P13546972561645627627` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397034 has offset 1).

The definition of A397034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397034.P13546972561645627627

`floor((n+1)²/2-(n+1)²/log(n+2)+n+1)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A397034

/-- `floor((n+1)²/2-(n+1)²/log(n+2)+n+1)` -/
def P13546972561645627627.Spec : Prop :=
  ∀ n, P13546972561645627627.a n = A397034 (n + 1)

theorem P13546972561645627627.correct : P13546972561645627627.Spec := by
  intro n
  simp only [A397034, Nat.add_sub_cancel]

end A397034

/-! ## A397034.P13445299757883077734

`∑[∑[A005090(A016754(3*n+1))]]`
-/

namespace A397034.P13445299757883077734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A016754 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397034.P13445299757883077734

namespace A397034

/-- `∑[∑[A005090(A016754(3*n+1))]]` -/
def P13445299757883077734.Spec : Prop :=
  ∀ n, P13445299757883077734.a n = A397034 (n + 1)

end A397034

/-! ## A397034.P16243574548572678846

`A004526(lt[A342472(n+1), A374683(n)])`
-/

namespace A397034.P16243574548572678846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397034.P16243574548572678846

namespace A397034

/-- `A004526(lt[A342472(n+1), A374683(n)])` -/
def P16243574548572678846.Spec : Prop :=
  ∀ n, P16243574548572678846.a n = A397034 (n + 1)

end A397034

/-! ## A397034.P11186908757983150811

`A004526(lt[A342472(n+1), A374757(n)])`
-/

namespace A397034.P11186908757983150811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A397034.P11186908757983150811

namespace A397034

/-- `A004526(lt[A342472(n+1), A374757(n)])` -/
def P11186908757983150811.Spec : Prop :=
  ∀ n, P11186908757983150811.a n = A397034 (n + 1)

end A397034

/-! ## A397034.P3021160790721984273

`A090532(A183947(n+1))`
-/

namespace A397034.P3021160790721984273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A183947 (n + 1)).toNat

end

end A397034.P3021160790721984273

namespace A397034

/-- `A090532(A183947(n+1))` -/
def P3021160790721984273.Spec : Prop :=
  ∀ n, P3021160790721984273.a n = A397034 (n + 1)

end A397034

/-!
# A397035: G.f. A(x) satisfies A(x) = 1 + x * A(x^2/(1 - x)^2) / (1 - x)^4.

The programs for A397035, there is no canonical definition to state claims against.
-/

/-! ## A397035.P15420123188920868116

`A182015(n)-A341258(A182000(n))`
-/

namespace A397035.P15420123188920868116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182015 n - A341258 (A182000 n).toNat

end

end A397035.P15420123188920868116

/-! ## A397035.P15498642790720728073

`A175045(A265940(n+1))+A000293(n)`
-/

namespace A397035.P15498642790720728073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175045 (A265940 (n + 1)).toNat + A000293 n

end

end A397035.P15498642790720728073

/-! ## A397035.P3433534631864431606

`A359780(n+3)+A055086(A004148(2*n+1))`
-/

namespace A397035.P3433534631864431606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (n + 3) + A055086 (A004148 (2 * n + 1)).toNat

end

end A397035.P3433534631864431606

/-!
# A397037: Number of transitive relations T on an n-element set such that, for some k with 0 < k < |T|, T has no transitive subset with exactly k ordered pairs.

The programs for A397037, there is no canonical definition to state claims against.
-/

/-! ## A397037.P7234833193013247982

`A006905(n)-A397036(n)`
-/

namespace A397037.P7234833193013247982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A397036 n

end

end A397037.P7234833193013247982

/-! ## A397037.P9004001099268060843

`A107680(C(2*n, n+3))`
-/

namespace A397037.P9004001099268060843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107680 (Nat.choose (2 * n) (n + 3))

end

end A397037.P9004001099268060843

/-!
# A397038: Sum of the quotients floor(k/n) over the distinct entries k of the n X n multiplication table.

The programs for A397038, there is no canonical definition to state claims against.
-/

/-! ## A397038.P3784217698967626555

`A157966(A084684(n+1))`
-/

namespace A397038.P3784217698967626555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A084684 (n + 1)).toNat

end

end A397038.P3784217698967626555

/-!
# A397039: Convolution of A000005 and A000219.

The programs for A397039, there is no canonical definition to state claims against.
-/

/-! ## A397039.P14790180699084945425

`∑[A345913(∑[A026530(n)])]`
-/

namespace A397039.P14790180699084945425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397039.P14790180699084945425

/-!
# A397041: Convolution of A000005 and A156616.

The programs for A397041, there is no canonical definition to state claims against.
-/

/-! ## A397041.P9195535949938679718

`A018019(n)-A333252(A000079(n))`
-/

namespace A397041.P9195535949938679718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018019 n - A333252 (A000079 n).toNat

end

end A397041.P9195535949938679718

/-!
# A397045: Number of distinct values in the interval [n,n+1) that can be represented as a sum of square roots of positive integers.

The programs for A397045, there is no canonical definition to state claims against.
-/

/-! ## A397045.P10651676442968254770

`A307136(A027650(n))+A024816(n+1)`
-/

namespace A397045.P10651676442968254770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 (A027650 n).toNat + A024816 (n + 1)

end

end A397045.P10651676442968254770

/-! ## A397045.P15606738812974714514

`A143901(A084152(n+3))+A002865(3*n+4)`
-/

namespace A397045.P15606738812974714514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143901 (A084152 (n + 3)).toNat + A002865 (3 * n + 4)

end

end A397045.P15606738812974714514

/-!
# A397048: Triangle T(n, k) read by rows: T(n, k) = (Sum_{i=0..k} (-1)^i * binomial(k, i) * (n+i)^n) * (-1)^k / k! for 0 <= k <= n.

The programs for A397048, the canonical program `A397048.P14017377840809456728` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397048 has offset 0).

The definition of A397048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397048.P14017377840809456728

`T(n-1,k-1)+(row(n)+2*col(n))*T(n-1,k)+(row(n)+col(n))*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A397048

/-- `T(n-1,k-1)+(row(n)+2*col(n))*T(n-1,k)+(row(n)+col(n))*(col(n)+1)*T(n-1,k+1)` -/
def P14017377840809456728.Spec : Prop :=
  ∀ n, (P14017377840809456728.a n : ℤ) = A397048 n

theorem P14017377840809456728.correct : P14017377840809456728.Spec := by
  intro n
  simp only [A397048]

end A397048

/-!
# A397049: Number of sets S of nonempty words with n total letters such that no words in S share letters and the concatenation of all words in S covers an initial interval.

The programs for A397049, there is no canonical definition to state claims against.
-/

/-! ## A397049.P16024425087379537622

`A319396(A377064(n))+A119022(n)`
-/

namespace A397049.P16024425087379537622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 (A377064 n).toNat + A119022 n

end

end A397049.P16024425087379537622

/-! ## A397049.P2419329104991939704

`A156250(A005649(n))-A334028(n)`
-/

namespace A397049.P2419329104991939704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (A005649 n).toNat - A334028 n

end

end A397049.P2419329104991939704

/-!
# A397050: Prime numbers in A397046.

The programs for A397050, there is no canonical definition to state claims against.
-/

/-! ## A397050.P7759775589029049545

`p?[A397046(n+1)]`
-/

namespace A397050.P7759775589029049545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A397050.P7759775589029049545

/-! ## A397050.P4831775003415588697

`filter[A397046(n+1), A010051(#)]`
-/

namespace A397050.P4831775003415588697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A397050.P4831775003415588697

/-! ## A397050.P15584237532648554258

`∩[A000040(n+1), A397046(n+1)]`
-/

namespace A397050.P15584237532648554258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P15584237532648554258

/-! ## A397050.P345702784360412188

`∩[A008578(n+1), A397046(n+1)]`
-/

namespace A397050.P345702784360412188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P345702784360412188

/-! ## A397050.P9286481857476626356

`∩[A033946(n+1), A397046(n+1)]`
-/

namespace A397050.P9286481857476626356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P9286481857476626356

/-! ## A397050.P13903161532018909782

`∩[A046022(n+1), A397046(n+1)]`
-/

namespace A397050.P13903161532018909782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P13903161532018909782

/-! ## A397050.P5728207233848363151

`∩[A046704(n+1), A397046(n+1)]`
-/

namespace A397050.P5728207233848363151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P5728207233848363151

/-! ## A397050.P2297999324894978234

`∩[A051948(n+1), A397046(n+1)]`
-/

namespace A397050.P2297999324894978234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P2297999324894978234

/-! ## A397050.P10784830987332676327

`∩[A062972(n+1), A397046(n+1)]`
-/

namespace A397050.P10784830987332676327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P10784830987332676327

/-! ## A397050.P9976111855438008512

`∩[A067126(n+1), A397046(n+1)]`
-/

namespace A397050.P9976111855438008512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P9976111855438008512

/-! ## A397050.P15120352900626919974

`∩[A072227(n+1), A397046(n+1)]`
-/

namespace A397050.P15120352900626919974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P15120352900626919974

/-! ## A397050.P10660747638056535944

`∩[A106118(n+1), A397046(n+1)]`
-/

namespace A397050.P10660747638056535944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P10660747638056535944

/-! ## A397050.P2253497679194948094

`∩[A106843(n+1), A397046(n+1)]`
-/

namespace A397050.P2253497679194948094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P2253497679194948094

/-! ## A397050.P17705540019492762208

`∩[A116974(n+1), A397046(n+1)]`
-/

namespace A397050.P17705540019492762208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P17705540019492762208

/-! ## A397050.P6640205702995543553

`∩[A156756(n+1), A397046(n+1)]`
-/

namespace A397050.P6640205702995543553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P6640205702995543553

/-! ## A397050.P396893267622214148

`∩[A158611(n+1), A397046(n+1)]`
-/

namespace A397050.P396893267622214148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P396893267622214148

/-! ## A397050.P6493457549050555945

`filter[A397046(n+1), A080339(#)]`
-/

namespace A397050.P6493457549050555945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A397050.P6493457549050555945

/-! ## A397050.P15726192521459982984

`∩[A005180(n+1), A397046(n+1)]`
-/

namespace A397050.P15726192521459982984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397050.P15726192521459982984

/-!
# A397054: Consider the Hilbert curve with its cells numbered starting at 0. Two players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of the other player. Sequence lists unoccupied cels.

The programs for A397054, there is no canonical definition to state claims against.
-/

/-! ## A397054.P16726827018958123493

`eq[0, A397055(n)]`
-/

namespace A397054.P16726827018958123493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A397054.P16726827018958123493

/-! ## A397054.P16395436151007922407

`lt[A397055(n), log2(A164359(n))]`
-/

namespace A397054.P16395436151007922407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397055 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A164359 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A397054.P16395436151007922407

/-! ## A397054.P3818485753093956872

`lt[A397055(n), A000005(n+1)]`
-/

namespace A397054.P3818485753093956872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397054.P3818485753093956872

/-! ## A397054.P753340000665317758

`lt[A397055(n), A000720(n+1)]`
-/

namespace A397054.P753340000665317758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397054.P753340000665317758

/-! ## A397054.P1830201053929111780

`lt[A397055(n), A001221(n+1)]`
-/

namespace A397054.P1830201053929111780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397054.P1830201053929111780

/-! ## A397054.P6588175107984541739

`lt[A397055(n), A056172(n+1)]`
-/

namespace A397054.P6588175107984541739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397054.P6588175107984541739

/-! ## A397054.P323524606311210863

`lt[A397055(n), A348841(n+1)]`
-/

namespace A397054.P323524606311210863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397054.P323524606311210863

/-!
# A397057: Convolution of A000203 and A156616.

The programs for A397057, there is no canonical definition to state claims against.
-/

/-! ## A397057.P7939299430187524853

`A174131(A159929(n+1))`
-/

namespace A397057.P7939299430187524853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174131 (A159929 (n + 1)).toNat

end

end A397057.P7939299430187524853

/-! ## A397057.P2604893957804875263

`eq[A143998(n+1), A264992(n)]`
-/

namespace A397057.P2604893957804875263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397057.P2604893957804875263

/-!
# A397059: Number of free polyplets (king-move connected sets of n cells on the square grid, adjacent if they share an edge or a corner) whose king-adjacency graph is a tree.

The programs for A397059, there is no canonical definition to state claims against.
-/

/-! ## A397059.P9121052142210462935

`A132226(A027221(n))`
-/

namespace A397059.P9121052142210462935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132226 (A027221 n).toNat

end

end A397059.P9121052142210462935

/-! ## A397059.P1437929871346439019

`xor(A182850(n+1), A351578(A385759(n)))`
-/

namespace A397059.P1437929871346439019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A182850 (n + 1)) (A351578 (A385759 n).toNat)

end

end A397059.P1437929871346439019

/-!
# A397062: Self-convolution of A305102.

The programs for A397062, there is no canonical definition to state claims against.
-/

/-! ## A397062.P8118978198814996490

`A325946(A007463(n))`
-/

namespace A397062.P8118978198814996490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325946 (A007463 n).toNat

end

end A397062.P8118978198814996490

/-! ## A397062.P14335874575352464983

`∑[∑[A328594(A072850(n))]]`
-/

namespace A397062.P14335874575352464983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (A072850 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397062.P14335874575352464983

/-!
# A397063: a(n) is the smallest integer exceeding 2*Pi*sqrt(n*(n+1)*(2*n+1)/6).

The programs for A397063, the canonical program `A397063.P4385890334198674114` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397063 has offset 1).

The definition of A397063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397063.P4385890334198674114

`ceil(2*π*sqrt((n+1)*(n+2)*(2*(n+1)+1)/6))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A397063

/-- `ceil(2*π*sqrt((n+1)*(n+2)*(2*(n+1)+1)/6))` -/
def P4385890334198674114.Spec : Prop :=
  ∀ n, P4385890334198674114.a n = A397063 (n + 1)

theorem P4385890334198674114.correct : P4385890334198674114.Spec := by
  intro n
  simp only [A397063, Nat.add_sub_cancel]

end A397063

/-! ## A397063.P15368979494530838395

`A121855(∑[(2*(n+1))²])`
-/

namespace A397063.P15368979494530838395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397063.P15368979494530838395

namespace A397063

/-- `A121855(∑[(2*(n+1))²])` -/
def P15368979494530838395.Spec : Prop :=
  ∀ n, P15368979494530838395.a n = A397063 (n + 1)

end A397063

/-! ## A397063.P9592099952394511962

`A188429(A095265(n+2))`
-/

namespace A397063.P9592099952394511962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (A095265 (n + 2)).toNat

end

end A397063.P9592099952394511962

namespace A397063

/-- `A188429(A095265(n+2))` -/
def P9592099952394511962.Spec : Prop :=
  ∀ n, P9592099952394511962.a n = A397063 (n + 1)

end A397063

/-!
# A397064: G.f. A(x) satisfies (1-2*x)*A(x) + A(x^3) = x.

The programs for A397064, there is no canonical definition to state claims against.
-/

/-! ## A397064.P3165227333387017029

`A065365(A397274(n+1))`
-/

namespace A397064.P3165227333387017029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065365 (A397274 (n + 1)).toNat

end

end A397064.P3165227333387017029

/-!
# A397067: Primes prime(k) such that the sum of the k primes beginning with prime(k) is prime.

The programs for A397067, there is no canonical definition to state claims against.
-/

/-! ## A397067.P6262857301643095043

`A000040(A397068(n+1))`
-/

namespace A397067.P6262857301643095043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397068 (n + 1)).toNat

end

end A397067.P6262857301643095043

/-! ## A397067.P3239068274654515470

`A103824(A061645(n+1))`
-/

namespace A397067.P3239068274654515470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103824 (A061645 (n + 1)).toNat

end

end A397067.P3239068274654515470

/-! ## A397067.P6019684247517624915

`A100725(A000043(n+1)-A010894(n))`
-/

namespace A397067.P6019684247517624915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (A000043 (n + 1) - A010894 (n + 21)).toNat

end

end A397067.P6019684247517624915

/-!
# A397068: Numbers k such that the sum of the k primes beginning with prime(k) is prime.

The programs for A397068, there is no canonical definition to state claims against.
-/

/-! ## A397068.P15081789521611896809

`A000720(A397067(n+1))`
-/

namespace A397068.P15081789521611896809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A397067 (n + 1)).toNat

end

end A397068.P15081789521611896809

/-! ## A397068.P7362398327994658914

`A180101(A078325(n+1))`
-/

namespace A397068.P7362398327994658914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A078325 (n + 1)).toNat

end

end A397068.P7362398327994658914

/-! ## A397068.P1876078131816766212

`A134338(A215799(n+1))`
-/

namespace A397068.P1876078131816766212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134338 (A215799 (n + 1)).toNat

end

end A397068.P1876078131816766212

/-! ## A397068.P9208454241478703609

`A134338(A385934(n+1))`
-/

namespace A397068.P9208454241478703609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134338 (A385934 (n + 1)).toNat

end

end A397068.P9208454241478703609

/-!
# A397069: Primes equal to the sum of the k primes beginning with prime(k) for some k.

The programs for A397069, there is no canonical definition to state claims against.
-/

/-! ## A397069.P8458798844632068714

`A161463(A397068(n+1))`
-/

namespace A397069.P8458798844632068714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161463 (A397068 (n + 1)).toNat

end

end A397069.P8458798844632068714

/-! ## A397069.P3286286856920454067

`p?[A161463(n+1)]`
-/

namespace A397069.P3286286856920454067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A397069.P3286286856920454067

/-! ## A397069.P3434835110982905047

`p?[A097505(∑[n+1])]`
-/

namespace A397069.P3434835110982905047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097505 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A397069.P3434835110982905047

/-! ## A397069.P15387535599320096760

`filter[A161463(n+1), A010051(#)]`
-/

namespace A397069.P15387535599320096760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A397069.P15387535599320096760

/-! ## A397069.P5035261000085319068

`filter[A161463(n+1), A302777(#)]`
-/

namespace A397069.P5035261000085319068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A397069.P5035261000085319068

/-!
# A397071: Number of true statements (x op y) = z, where 0 <= x, y, z <= n, op is in {+,-,*,/}.

The programs for A397071, the canonical program `A397071.P3539504569464205153` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397071 has offset 0).

The definition of A397071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397071.P3539504569464205153

`n²+6*n+3+2*A006218(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A397071

/-- `n²+6*n+3+2*A006218(n)` -/
def P3539504569464205153.Spec : Prop :=
  ∀ n, P3539504569464205153.a n = A397071 n

theorem P3539504569464205153.correct : P3539504569464205153.Spec := by
  intro n
  simp only [A397071]

end A397071

/-!
# A397077: Expansion of g.f. (Sum_{j>=1} x^j/(1-x^j))^2 * Product_{k>=1} (1+x^k)/(1-x^k).

The programs for A397077, there is no canonical definition to state claims against.
-/

/-! ## A397077.P3722876299823785920

`A392684(A027129(n))`
-/

namespace A397077.P3722876299823785920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392684 (A027129 n).toNat

end

end A397077.P3722876299823785920

/-! ## A397077.P18395995836035174377

`A328593(A192415(n+1))`
-/

namespace A397077.P18395995836035174377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328593 (A192415 (n + 1)).toNat

end

end A397077.P18395995836035174377

/-!
# A397079: Expansion of g.f. (Sum_{j>=1} x^j/(1-x^j))^2 * Product_{k>=1} 1/(1-x^k).

The programs for A397079, there is no canonical definition to state claims against.
-/

/-! ## A397079.P1571464627526475058

`A296010(n)-A066186(n)`
-/

namespace A397079.P1571464627526475058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - A066186 n

end

end A397079.P1571464627526475058

/-!
# A397085: a(n) = (-1)^(n-floor(sqrt(n))^2-1) if n is not a perfect square and 0 otherwise.

The programs for A397085, the canonical program `A397085.P2550365972256081373` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397085 has offset 0).

The definition of A397085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397085.P2550365972256081373

`A062157(A053186(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A397085

/-- `A062157(A053186(n))` -/
def P2550365972256081373.Spec : Prop :=
  ∀ n, P2550365972256081373.a n = A397085 n

theorem P2550365972256081373.correct : P2550365972256081373.Spec := by
  intro n
  simp only [A397085]

end A397085

/-! ## A397085.P14872683114435921146

`A062157(A173517(n))`
-/

namespace A397085.P14872683114435921146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A173517 n).toNat

end

end A397085.P14872683114435921146

namespace A397085

/-- `A062157(A173517(n))` -/
def P14872683114435921146.Spec : Prop :=
  ∀ n, P14872683114435921146.a n = A397085 n

end A397085

/-! ## A397085.P9594638981491757288

`Δ[char[∑[char[∑[n]]+2]]]`
-/

namespace A397085.P9594638981491757288
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A397085.P9594638981491757288

namespace A397085

/-- `Δ[char[∑[char[∑[n]]+2]]]` -/
def P9594638981491757288.Spec : Prop :=
  ∀ n, P9594638981491757288.a n = A397085 n

end A397085

/-! ## A397085.P12590751899765830328

`A028310(A088226(n+1))-A088226(n+3)`
-/

namespace A397085.P12590751899765830328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A088226 (n + 1)).toNat - A088226 (n + 3)

end

end A397085.P12590751899765830328

namespace A397085

/-- `A028310(A088226(n+1))-A088226(n+3)` -/
def P12590751899765830328.Spec : Prop :=
  ∀ n, P12590751899765830328.a n = A397085 n

end A397085

/-! ## A397085.P17310465909760812226

`A101455(A277383(n+1))`
-/

namespace A397085.P17310465909760812226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A277383 (n + 1)).toNat

end

end A397085.P17310465909760812226

namespace A397085

/-- `A101455(A277383(n+1))` -/
def P17310465909760812226.Spec : Prop :=
  ∀ n, P17310465909760812226.a n = A397085 n

end A397085

/-!
# A397093: Nonnegative numbers with palindromic canonical snowball representation.

The programs for A397093, there is no canonical definition to state claims against.
-/

/-! ## A397093.P13525533084447928941

`eq[A381490(n), A385646(n+1)]`
-/

namespace A397093.P13525533084447928941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381490 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385646 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397093.P13525533084447928941

/-!
# A397094: Numerators of coefficients in expansion of Product_{k>=1} (1+x^k)^(k/2).

The programs for A397094, there is no canonical definition to state claims against.
-/

/-! ## A397094.P10694100619126735731

`A352017(A080874(n))`
-/

namespace A397094.P10694100619126735731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352017 (A080874 n).toNat

end

end A397094.P10694100619126735731

/-!
# A397098: Triangle read by rows: T(n,k) is the number of sets S of nonempty words with n total letters such that no two words in S share letters and the concatenation of all words in S covers [k].

The programs for A397098, there is no canonical definition to state claims against.
-/

/-! ## A397098.P4668304432603880632

`and(A004614(A196993(n+1)), A135313(n))`
-/

namespace A397098.P4668304432603880632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004614 (A196993 (n + 1)).toNat) (A135313 n)

end

end A397098.P4668304432603880632

/-! ## A397098.P10949484538129764540

`A174231(A304334(n))`
-/

namespace A397098.P10949484538129764540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A304334 n).toNat

end

end A397098.P10949484538129764540

/-! ## A397098.P6278311833042756940

`A249618(A270882(n))`
-/

namespace A397098.P6278311833042756940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249618 (A270882 n).toNat

end

end A397098.P6278311833042756940

/-! ## A397098.P1969735942375959250

`and(A069489(A198723(n+1)), A269939(n))`
-/

namespace A397098.P1969735942375959250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069489 (A198723 (n + 1)).toNat) (A269939 n)

end

end A397098.P1969735942375959250

