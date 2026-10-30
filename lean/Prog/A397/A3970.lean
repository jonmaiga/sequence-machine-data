import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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

/-!
# A397012: Numbers that are a sum of three triangular numbers whose indices are in arithmetic progression; i.e., numbers of the form 3*T(k) + d^2, where T(k) = k*(k+1)/2 and k, d are integers.

The programs for A397012, the canonical program `A397012.P13393912576675427376` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397012 has offset 1).

The definition of A397012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397012.P13393912576675427376

`lt[0, A257920(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A397012

/-- `lt[0, A257920(n)]` -/
def P13393912576675427376.Spec : Prop :=
  ∀ n, (P13393912576675427376.a n : ℤ) = A397012 (n + 1)

theorem P13393912576675427376.correct : P13393912576675427376.Spec := by
  intro n
  simp only [A397012, Nat.add_sub_cancel]

end A397012

/-! ## A397012.P1846960814396879998

`lt[1, A000079(A260308(3*n+1))]`
-/

namespace A397012.P1846960814396879998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A260308 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A397012.P1846960814396879998

namespace A397012

/-- `lt[1, A000079(A260308(3*n+1))]` -/
def P1846960814396879998.Spec : Prop :=
  ∀ n, (P1846960814396879998.a n : ℤ) = A397012 (n + 1)

end A397012

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

/-! ## A397033.P769872023830211665

`filter[A356720(n+1), A010051(#)]`
-/

namespace A397033.P769872023830211665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A397033.P769872023830211665

/-! ## A397033.P17627350827374180223

`filter[A356720(n+2), A080339(#)]`
-/

namespace A397033.P17627350827374180223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A397033.P17627350827374180223

/-!
# A397034: a(n) = floor(A(n)), where A(n) is the area enclosed between the line y = x and the curve y = exp(x*log(n+1)/n) - 1 for 0 <= x <= n (the constant log(n+1)/n makes the curve pass through (n,n)).

The programs for A397034, the canonical program `A397034.P13546972561645627627` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397034 has offset 1).

The definition of A397034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397034.P13546972561645627627

`floor((n+1)²/2-(n+1)²/log(n+2)+n+1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397034

/-- `floor((n+1)²/2-(n+1)²/log(n+2)+n+1)` -/
def P13546972561645627627.Spec : Prop :=
  ∀ n, P13546972561645627627.a n = A397034 (n + 1)

theorem P13546972561645627627.correct : P13546972561645627627.Spec := by
  intro n
  simp only [A397034, Nat.add_sub_cancel]

end A397034

/-! ## A397034.P1534357969685870069

`∑[∑[A051341(A289486(n))]]`
-/

namespace A397034.P1534357969685870069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051341 (A289486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397034.P1534357969685870069

namespace A397034

/-- `∑[∑[A051341(A289486(n))]]` -/
def P1534357969685870069.Spec : Prop :=
  ∀ n, P1534357969685870069.a n = A397034 (n + 1)

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

/-! ## A397034.P2090215359161670131

`∑[∑[A010059(A248096(n))]]`
-/

namespace A397034.P2090215359161670131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A248096 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397034.P2090215359161670131

namespace A397034

/-- `∑[∑[A010059(A248096(n))]]` -/
def P2090215359161670131.Spec : Prop :=
  ∀ n, P2090215359161670131.a n = A397034 (n + 1)

end A397034

/-! ## A397034.P9821992285655089444

`A071986(A361248(n+3))+A011848(n)`
-/

namespace A397034.P9821992285655089444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (A361248 (n + 3)).toNat + A011848 n

end

end A397034.P9821992285655089444

namespace A397034

/-- `A071986(A361248(n+3))+A011848(n)` -/
def P9821992285655089444.Spec : Prop :=
  ∀ n, P9821992285655089444.a n = A397034 (n + 1)

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
# A397036: The number of transitive relations T on an n-element set such that T has a transitive subset of every cardinality k in {0,1,...,|T|}.

The programs for A397036, there is no canonical definition to state claims against.
-/

/-! ## A397036.P16957391843763708166

`xor(A047009(n), A101921(A123312(n)))`
-/

namespace A397036.P16957391843763708166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047009 n) (A101921 (A123312 n).toNat)

end

end A397036.P16957391843763708166

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
# A397040: Convolution of A000005 and A026007.

The programs for A397040, there is no canonical definition to state claims against.
-/

/-! ## A397040.P14953898164782984026

`A003056(A000041(n)*A103446(n))`
-/

namespace A397040.P14953898164782984026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000041 n * A103446 n).toNat

end

end A397040.P14953898164782984026

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

/-! ## A397041.P4987966992089340386

`A018020(n)-A010882(A339040(n+2))`
-/

namespace A397041.P4987966992089340386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n - A010882 (A339040 (n + 2)).toNat

end

end A397041.P4987966992089340386

/-!
# A397043: Convolution of A000005 and A023871.

The programs for A397043, there is no canonical definition to state claims against.
-/

/-! ## A397043.P15873698670825675786

`∑[A322832(Δ[A118393(n)])]`
-/

namespace A397043.P15873698670825675786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118393 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397043.P15873698670825675786

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

/-! ## A397045.P10017338305744904758

`A067086(A027383(3*n+2)-A000918(n))`
-/

namespace A397045.P10017338305744904758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A027383 (3 * n + 2) - A000918 n).toNat

end

end A397045.P10017338305744904758

/-!
# A397048: Triangle T(n, k) read by rows: T(n, k) = (Sum_{i=0..k} (-1)^i * binomial(k, i) * (n+i)^n) * (-1)^k / k! for 0 <= k <= n.

The programs for A397048, the canonical program `A397048.P14017377840809456728` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397048 has offset 0).

The definition of A397048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397048.P14017377840809456728

`T(n-1,k-1)+(row(n)+2*col(n))*T(n-1,k)+(row(n)+col(n))*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A397049.P1122892728211342566

`A067251(A305550(n)+A003415(n))`
-/

namespace A397049.P1122892728211342566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A305550 n + A003415 n).toNat

end

end A397049.P1122892728211342566

/-! ## A397049.P16024425087379537622

`A319396(A377064(n))+A119022(n)`
-/

namespace A397049.P16024425087379537622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319396 (A377064 n).toNat + A119022 n

end

end A397049.P16024425087379537622

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
# A397054: Consider the Hilbert curve with its cells numbered starting at 0. Two players take turns and place knights at the smallest unoccupied cell not attacked by an existing knight of the other player. Sequence lists unoccupied cells.

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

/-! ## A397059.P3220698190692376929

`A368312(A323290(n))+A181819(n+1)`
-/

namespace A397059.P3220698190692376929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368312 (A323290 n).toNat + A181819 (n + 1)

end

end A397059.P3220698190692376929

/-!
# A397061: Self-convolution of A305082.

The programs for A397061, there is no canonical definition to state claims against.
-/

/-! ## A397061.P16121771237862153768

`∑{#}[n, A305082(#)*A305082(n-#)]`
-/

namespace A397061.P16121771237862153768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A305082 k * A305082 (n - k)

end

end A397061.P16121771237862153768

/-! ## A397061.P6487858548756021069

`A002415(n)-A325268(A000272(n))`
-/

namespace A397061.P6487858548756021069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - A325268 (A000272 n).toNat

end

end A397061.P6487858548756021069

/-! ## A397061.P7659900152845113880

`A002415(n)-A343222(A261005(n))`
-/

namespace A397061.P7659900152845113880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - A343222 (A261005 n).toNat

end

end A397061.P7659900152845113880

/-!
# A397062: Self-convolution of A305102.

The programs for A397062, there is no canonical definition to state claims against.
-/

/-! ## A397062.P2293729801283763531

`∑{#}[n, A305102(#)*A305102(n-#)]`
-/

namespace A397062.P2293729801283763531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A305102 k * A305102 (n - k)

end

end A397062.P2293729801283763531

/-! ## A397062.P8118978198814996490

`A325946(A007463(n))`
-/

namespace A397062.P8118978198814996490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325946 (A007463 n).toNat

end

end A397062.P8118978198814996490

/-!
# A397063: a(n) is the smallest integer exceeding 2*Pi*sqrt(n*(n+1)*(2*n+1)/6).

The programs for A397063, the canonical program `A397063.P4385890334198674114` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397063 has offset 1).

The definition of A397063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397063.P4385890334198674114

`ceil(2*π*sqrt((n+1)*(n+2)*(2*(n+1)+1)/6))`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A397067.P1475282273923466166

`A103824(2*A000043(n+1))`
-/

namespace A397067.P1475282273923466166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103824 (2 * A000043 (n + 1)).toNat

end

end A397067.P1475282273923466166

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

/-! ## A397068.P15645282472222110949

`∏{p}[A397067(n+1), A316524(#)]`
-/

namespace A397068.P15645282472222110949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A316524 p

end

end A397068.P15645282472222110949

/-! ## A397068.P15982639716433540746

`or(A070950(n), A316524(A397067(n+1)))`
-/

namespace A397068.P15982639716433540746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070950 n) (A316524 (A397067 (n + 1)).toNat)

end

end A397068.P15982639716433540746

/-! ## A397068.P5598026348208230710

`A316524(or(A189628(n+1), A397067(n+1)))`
-/

namespace A397068.P5598026348208230710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (Int.lor (A189628 (n + 1)) (A397067 (n + 1))).toNat

end

end A397068.P5598026348208230710

/-! ## A397068.P4783050939748415783

`A316524(A397067(n+1)+A191254(2*n+1))`
-/

namespace A397068.P4783050939748415783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A397067 (n + 1) + A191254 (2 * n + 1)).toNat

end

end A397068.P4783050939748415783

/-! ## A397068.P17455648667357970666

`∑{d}[A397067(n+1), A056239(#)]`
-/

namespace A397068.P17455648667357970666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A397068.P17455648667357970666

/-! ## A397068.P15755439487355096548

`A056239(A397067(n+1)%A305267(n))`
-/

namespace A397068.P15755439487355096548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A397067 (n + 1)) (A305267 n)).toNat

end

end A397068.P15755439487355096548

/-! ## A397068.P17840047756585474901

`A056239(A397067(n+1))%A156721(n+1)`
-/

namespace A397068.P17840047756585474901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A397067 (n + 1)).toNat) (A156721 (n + 1))

end

end A397068.P17840047756585474901

/-!
# A397069: Primes equal to the sum of the k primes beginning with prime(k) for some k.

The programs for A397069, there is no canonical definition to state claims against.
-/

/-! ## A397069.P13719542525471009519

`∑{#}[2*A397068(n+1)-1-A397068(n+1), A000040(#+A397068(n+1))]`
-/

namespace A397069.P13719542525471009519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A397068 (n + 1) - 1 - A397068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000040 ((k : ℤ) + A397068 (n + 1)).toNat

end

end A397069.P13719542525471009519

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

/-!
# A397071: Number of true statements (x op y) = z, where 0 <= x, y, z <= n, op is in {+,-,*,/}.

The programs for A397071, the canonical program `A397071.P3539504569464205153` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397071 has offset 0).

The definition of A397071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397071.P3539504569464205153

`n²+6*n+3+2*A006218(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A397071

/-- `n²+6*n+3+2*A006218(n)` -/
def P3539504569464205153.Spec : Prop :=
  ∀ n, P3539504569464205153.a n = A397071 n

theorem P3539504569464205153.correct : P3539504569464205153.Spec := by
  intro n
  simp only [A397071]

end A397071

/-! ## A397071.P17724312684736793245

`n²+6*n+3+2*∑{#}[n-1, floor(n/(#+1))]`
-/

namespace A397071.P17724312684736793245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 6 * n + 3 : ℤ) + 2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊(n : ℚ) / (k + 1 : ℚ)⌋)

end

end A397071.P17724312684736793245

namespace A397071

/-- `n²+6*n+3+2*∑{#}[n-1, floor(n/(#+1))]` -/
def P17724312684736793245.Spec : Prop :=
  ∀ n, P17724312684736793245.a n = A397071 n

end A397071

/-! ## A397071.P7922676634784426035

`A350304(2*(n+1))-A064288(A035050(n))`
-/

namespace A397071.P7922676634784426035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350304 (2 * (n + 1)) - A064288 (A035050 n).toNat

end

end A397071.P7922676634784426035

namespace A397071

/-- `A350304(2*(n+1))-A064288(A035050(n))` -/
def P7922676634784426035.Spec : Prop :=
  ∀ n, P7922676634784426035.a n = A397071 n

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

The programs for A397085, the canonical program `A397085.P2550365972256081373` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397085 has offset 0).

The definition of A397085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397085.P5482828361074297946

`Δ[ceil(sqrt(n)+n)%2]`
-/

namespace A397085.P5482828361074297946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (n : ℝ) + (n : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397085.P5482828361074297946

namespace A397085

/-- `Δ[ceil(sqrt(n)+n)%2]` -/
def P5482828361074297946.Spec : Prop :=
  ∀ n, P5482828361074297946.a n = A397085 n

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

/-! ## A397085.P10134223261543762010

`A397086(n)-char[2*(n+1)+round(sqrt(2*(n+1)))]`
-/

namespace A397085.P10134223261543762010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397086 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A397085.P10134223261543762010

namespace A397085

/-- `A397086(n)-char[2*(n+1)+round(sqrt(2*(n+1)))]` -/
def P10134223261543762010.Spec : Prop :=
  ∀ n, P10134223261543762010.a n = A397085 n

end A397085

/-! ## A397085.P2550365972256081373

`A062157(A053186(n))`

The canonical program, it is in `Seq.B001.C014`.
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

/-! ## A397085.P10886093630301514601

`Δ[A068527(n)%2]%2`
-/

namespace A397085.P10886093630301514601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068527 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A397085.P10886093630301514601

namespace A397085

/-- `Δ[A068527(n)%2]%2` -/
def P10886093630301514601.Spec : Prop :=
  ∀ n, P10886093630301514601.a n = A397085 n

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
# A397086: Partial sums of A397085.

The programs for A397086, the canonical program `A397086.P3988663382525735330` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397086 has offset 0).

The definition of A397086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397086.P3988663382525735330

`(n-floor(sqrt(n))²)%2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397086

/-- `(n-floor(sqrt(n))²)%2` -/
def P3988663382525735330.Spec : Prop :=
  ∀ n, P3988663382525735330.a n = A397086 n

theorem P3988663382525735330.correct : P3988663382525735330.Spec := by
  intro n
  simp only [A397086]

end A397086

/-! ## A397086.P16722409915026368497

`char[n+comp[∑[n]]]`
-/

namespace A397086.P16722409915026368497
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A397086.P16722409915026368497

namespace A397086

/-- `char[n+comp[∑[n]]]` -/
def P16722409915026368497.Spec : Prop :=
  ∀ n, (P16722409915026368497.a n : ℤ) = A397086 n

end A397086

/-! ## A397086.P1499470935879619874

`and(1, n+floor(sqrt(n)))`
-/

namespace A397086.P1499470935879619874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + Nat.sqrt n)

end

end A397086.P1499470935879619874

namespace A397086

/-- `and(1, n+floor(sqrt(n)))` -/
def P1499470935879619874.Spec : Prop :=
  ∀ n, (P1499470935879619874.a n : ℤ) = A397086 n

end A397086

/-! ## A397086.P15441007174094719895

`log2(gcd(2, comp[∑[2*n]]))`
-/

namespace A397086.P15441007174094719895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A397086.P15441007174094719895

namespace A397086

/-- `log2(gcd(2, comp[∑[2*n]]))` -/
def P15441007174094719895.Spec : Prop :=
  ∀ n, P15441007174094719895.a n = (A397086 n : ℝ)

end A397086

/-! ## A397086.P6809908276068174763

`abs((n-floor(sqrt(n)))%2)`
-/

namespace A397086.P6809908276068174763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((n : ℤ) - (Nat.sqrt n : ℤ)) 2|

end

end A397086.P6809908276068174763

namespace A397086

/-- `abs((n-floor(sqrt(n)))%2)` -/
def P6809908276068174763.Spec : Prop :=
  ∀ n, P6809908276068174763.a n = A397086 n

end A397086

/-! ## A397086.P3721123767361062742

`1-comp[n²+n]%2`
-/

namespace A397086.P3721123767361062742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)

end

end A397086.P3721123767361062742

namespace A397086

/-- `1-comp[n²+n]%2` -/
def P3721123767361062742.Spec : Prop :=
  ∀ n, P3721123767361062742.a n = A397086 n

end A397086

/-! ## A397086.P8543188883583536197

`(comp[(n+1)²+n]%2)²`
-/

namespace A397086.P8543188883583536197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) ^ 2

end

end A397086.P8543188883583536197

namespace A397086

/-- `(comp[(n+1)²+n]%2)²` -/
def P8543188883583536197.Spec : Prop :=
  ∀ n, (P8543188883583536197.a n : ℤ) = A397086 n

end A397086

/-! ## A397086.P7391698305386705009

`and(1, comp[(n+1)²+n])²`
-/

namespace A397086.P7391698305386705009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A397086.P7391698305386705009

namespace A397086

/-- `and(1, comp[(n+1)²+n])²` -/
def P7391698305386705009.Spec : Prop :=
  ∀ n, (P7391698305386705009.a n : ℤ) = A397086 n

end A397086

/-! ## A397086.P13883328403186074441

`1-(char[n²]+a(n-1))` with `a(0)=0`
-/

namespace A397086.P13883328403186074441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + a (n - 1))

end

end A397086.P13883328403186074441

namespace A397086

/-- `1-(char[n²]+a(n-1))` -/
def P13883328403186074441.Spec : Prop :=
  ∀ n, P13883328403186074441.a n = A397086 n

end A397086

/-! ## A397086.P7528795776729582740

`∑[A397085(n)]`
-/

namespace A397086.P7528795776729582740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397086.P7528795776729582740

namespace A397086

/-- `∑[A397085(n)]` -/
def P7528795776729582740.Spec : Prop :=
  ∀ n, P7528795776729582740.a n = A397086 n

end A397086

/-! ## A397086.P5195860052875746886

`1-A071028(n)`
-/

namespace A397086.P5195860052875746886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071028 n

end

end A397086.P5195860052875746886

namespace A397086

/-- `1-A071028(n)` -/
def P5195860052875746886.Spec : Prop :=
  ∀ n, P5195860052875746886.a n = A397086 n

end A397086

/-! ## A397086.P14229648293608036955

`A000035(A028391(n))`
-/

namespace A397086.P14229648293608036955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028391 n).toNat

end

end A397086.P14229648293608036955

namespace A397086

/-- `A000035(A028391(n))` -/
def P14229648293608036955.Spec : Prop :=
  ∀ n, P14229648293608036955.a n = A397086 n

end A397086

/-! ## A397086.P5979802189387391361

`A000035(A053186(n))`
-/

namespace A397086.P5979802189387391361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A053186 n).toNat

end

end A397086.P5979802189387391361

namespace A397086

/-- `A000035(A053186(n))` -/
def P5979802189387391361.Spec : Prop :=
  ∀ n, P5979802189387391361.a n = A397086 n

end A397086

/-! ## A397086.P14828936755610769752

`A000035(A075997(n))`
-/

namespace A397086.P14828936755610769752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A075997 n).toNat

end

end A397086.P14828936755610769752

namespace A397086

/-- `A000035(A075997(n))` -/
def P14828936755610769752.Spec : Prop :=
  ∀ n, P14828936755610769752.a n = A397086 n

end A397086

/-! ## A397086.P9471136643665922933

`A059841(A080883(n))`
-/

namespace A397086.P9471136643665922933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A080883 n).toNat

end

end A397086.P9471136643665922933

namespace A397086

/-- `A059841(A080883(n))` -/
def P9471136643665922933.Spec : Prop :=
  ∀ n, P9471136643665922933.a n = A397086 n

end A397086

/-! ## A397086.P9439251981559249276

`A000035(A173517(n))`
-/

namespace A397086.P9439251981559249276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A173517 n).toNat

end

end A397086.P9439251981559249276

namespace A397086

/-- `A000035(A173517(n))` -/
def P9439251981559249276.Spec : Prop :=
  ∀ n, P9439251981559249276.a n = A397086 n

end A397086

/-! ## A397086.P14725081472012449426

`A000035(n-A000196(n))`
-/

namespace A397086.P14725081472012449426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A000196 n).toNat

end

end A397086.P14725081472012449426

namespace A397086

/-- `A000035(n-A000196(n))` -/
def P14725081472012449426.Spec : Prop :=
  ∀ n, P14725081472012449426.a n = A397086 n

end A397086

/-! ## A397086.P8317202558666489392

`A000035(n-A059851(n))`
-/

namespace A397086.P8317202558666489392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A059851 n).toNat

end

end A397086.P8317202558666489392

namespace A397086

/-- `A000035(n-A059851(n))` -/
def P8317202558666489392.Spec : Prop :=
  ∀ n, P8317202558666489392.a n = A397086 n

end A397086

/-! ## A397086.P4484795848854907825

`A071028(A079896(A071797(n+1)))`
-/

namespace A397086.P4484795848854907825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A079896 (A071797 (n + 1)).toNat).toNat

end

end A397086.P4484795848854907825

namespace A397086

/-- `A071028(A079896(A071797(n+1)))` -/
def P4484795848854907825.Spec : Prop :=
  ∀ n, P4484795848854907825.a n = A397086 n

end A397086

/-! ## A397086.P3316257473789810660

`A384688(A002620(A053186(n+1)))`
-/

namespace A397086.P3316257473789810660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384688 (A002620 (A053186 (n + 1)).toNat).toNat

end

end A397086.P3316257473789810660

namespace A397086

/-- `A384688(A002620(A053186(n+1)))` -/
def P3316257473789810660.Spec : Prop :=
  ∀ n, P3316257473789810660.a n = A397086 n

end A397086

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
# A397095: a(n) is the smallest prime dividing exactly n numbers of the form k! + 1 (k > 0).

The programs for A397095, there is no canonical definition to state claims against.
-/

/-! ## A397095.P3972090402237420310

`A091578(A134353(n))`
-/

namespace A397095.P3972090402237420310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091578 (A134353 n).toNat

end

end A397095.P3972090402237420310

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

/-! ## A397098.P3588165179438392209

`A399946(A316623(n))+A341856(n)`
-/

namespace A397098.P3588165179438392209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399946 (A316623 n).toNat + A341856 n

end

end A397098.P3588165179438392209

/-! ## A397098.P1969735942375959250

`and(A069489(A198723(n+1)), A269939(n))`
-/

namespace A397098.P1969735942375959250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069489 (A198723 (n + 1)).toNat) (A269939 n)

end

end A397098.P1969735942375959250

