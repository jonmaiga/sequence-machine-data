import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A372302: Numbers k for which the Zeckendorf representation A014417(k) ends with "1001".

The programs for A372302, the canonical program `A372302.P1592687612405792873` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372302 has offset 1).

The definition of A372302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372302.P1592687612405792873

`A035338(n)+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A372302

/-- `A035338(n)+1` -/
def P1592687612405792873.Spec : Prop :=
  ∀ n, P1592687612405792873.a n = A372302 (n + 1)

theorem P1592687612405792873.correct : P1592687612405792873.Spec := by
  intro n
  simp only [A372302, Nat.add_sub_cancel]

end A372302

/-! ## A372302.P14677177631051583210

`A134863(n+1)-1`
-/

namespace A372302.P14677177631051583210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (n + 1) - 1

end

end A372302.P14677177631051583210

namespace A372302

/-- `A134863(n+1)-1` -/
def P14677177631051583210.Spec : Prop :=
  ∀ n, P14677177631051583210.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P8920627941626807037

`a(n-1)+8+5*A005614(n-1)` with `a(0)=6`
-/

namespace A372302.P8920627941626807037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 8 + 5 * A005614 (n - 1)

end

end A372302.P8920627941626807037

namespace A372302

/-- `a(n-1)+8+5*A005614(n-1)` -/
def P8920627941626807037.Spec : Prop :=
  ∀ n, P8920627941626807037.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P17787447135674409081

`∑[xor(9, Δ[floor(ϕ*n)]²)]-2`
-/

namespace A372302.P17787447135674409081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 ((f2 (n + 1) - f2 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A372302.P17787447135674409081

namespace A372302

/-- `∑[xor(9, Δ[floor(ϕ*n)]²)]-2` -/
def P17787447135674409081.Spec : Prop :=
  ∀ n, P17787447135674409081.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P16743749563231906516

`A101870(n+1)-7`
-/

namespace A372302.P16743749563231906516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (n + 1) - 7

end

end A372302.P16743749563231906516

namespace A372302

/-- `A101870(n+1)-7` -/
def P16743749563231906516.Spec : Prop :=
  ∀ n, P16743749563231906516.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P10839878052091268909

`A035337(n)+A003623(n+1)`
-/

namespace A372302.P10839878052091268909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + A003623 (n + 1)

end

end A372302.P10839878052091268909

namespace A372302

/-- `A035337(n)+A003623(n+1)` -/
def P10839878052091268909.Spec : Prop :=
  ∀ n, P10839878052091268909.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P4806534785235543249

`A035339(n)-A134861(n+1)`
-/

namespace A372302.P4806534785235543249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035339 n - A134861 (n + 1)

end

end A372302.P4806534785235543249

namespace A372302

/-- `A035339(n)-A134861(n+1)` -/
def P4806534785235543249.Spec : Prop :=
  ∀ n, P4806534785235543249.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P15492989185385037277

`A075319(n+1)+A001950(n+1)`
-/

namespace A372302.P15492989185385037277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075319 (n + 1) + A001950 (n + 1)

end

end A372302.P15492989185385037277

namespace A372302

/-- `A075319(n+1)+A001950(n+1)` -/
def P15492989185385037277.Spec : Prop :=
  ∀ n, P15492989185385037277.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P4535250198555746323

`A134860(n+1)+A035336(n+1)`
-/

namespace A372302.P4535250198555746323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1) + A035336 (n + 1)

end

end A372302.P4535250198555746323

namespace A372302

/-- `A134860(n+1)+A035336(n+1)` -/
def P4535250198555746323.Spec : Prop :=
  ∀ n, P4535250198555746323.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P13916487991293561196

`A188471(n+2)-7`
-/

namespace A372302.P13916487991293561196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188471 (n + 2) - 7

end

end A372302.P13916487991293561196

namespace A372302

/-- `A188471(n+2)-7` -/
def P13916487991293561196.Spec : Prop :=
  ∀ n, P13916487991293561196.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P17743115910193044514

`A003249(A003247(n+1))-2`
-/

namespace A372302.P17743115910193044514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (A003247 (n + 1)).toNat - 2

end

end A372302.P17743115910193044514

namespace A372302

/-- `A003249(A003247(n+1))-2` -/
def P17743115910193044514.Spec : Prop :=
  ∀ n, P17743115910193044514.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P16131115794907350870

`A134859(A001950(n+1))`
-/

namespace A372302.P16131115794907350870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A001950 (n + 1)).toNat

end

end A372302.P16131115794907350870

namespace A372302

/-- `A134859(A001950(n+1))` -/
def P16131115794907350870.Spec : Prop :=
  ∀ n, P16131115794907350870.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P6591682919067185580

`A134859(A003622(n+1)+1)`
-/

namespace A372302.P6591682919067185580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A003622 (n + 1) + 1).toNat

end

end A372302.P6591682919067185580

namespace A372302

/-- `A134859(A003622(n+1)+1)` -/
def P6591682919067185580.Spec : Prop :=
  ∀ n, P6591682919067185580.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P2604787870196075756

`A188012(A026351(n+1))-2`
-/

namespace A372302.P2604787870196075756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (A026351 (n + 1)).toNat - 2

end

end A372302.P2604787870196075756

namespace A372302

/-- `A188012(A026351(n+1))-2` -/
def P2604787870196075756.Spec : Prop :=
  ∀ n, P2604787870196075756.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P11395076851332932405

`A188293(2*(n+1))-2`
-/

namespace A372302.P11395076851332932405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188293 (2 * (n + 1)) - 2

end

end A372302.P11395076851332932405

namespace A372302

/-- `A188293(2*(n+1))-2` -/
def P11395076851332932405.Spec : Prop :=
  ∀ n, P11395076851332932405.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P8301681527979717802

`A003622(A003623(n+1))`
-/

namespace A372302.P8301681527979717802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003623 (n + 1)).toNat

end

end A372302.P8301681527979717802

namespace A372302

/-- `A003622(A003623(n+1))` -/
def P8301681527979717802.Spec : Prop :=
  ∀ n, P8301681527979717802.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P8185714297015344833

`A003622(A035336(n+1)+1)`
-/

namespace A372302.P8185714297015344833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A035336 (n + 1) + 1).toNat

end

end A372302.P8185714297015344833

namespace A372302

/-- `A003622(A035336(n+1)+1)` -/
def P8185714297015344833.Spec : Prop :=
  ∀ n, P8185714297015344833.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P3188813192191659027

`A003622(A089910(n+1)-1)`
-/

namespace A372302.P3188813192191659027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A089910 (n + 1) - 1).toNat

end

end A372302.P3188813192191659027

namespace A372302

/-- `A003622(A089910(n+1)-1)` -/
def P3188813192191659027.Spec : Prop :=
  ∀ n, P3188813192191659027.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P8330228819849676765

`A003622(A187952(2*(n+1)))`
-/

namespace A372302.P8330228819849676765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A187952 (2 * (n + 1))).toNat

end

end A372302.P8330228819849676765

namespace A372302

/-- `A003622(A187952(2*(n+1)))` -/
def P8330228819849676765.Spec : Prop :=
  ∀ n, P8330228819849676765.a n = A372302 (n + 1)

end A372302

/-! ## A372302.P4483261961088971373

`A047924(A003622(n+1))`
-/

namespace A372302.P4483261961088971373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 (A003622 (n + 1)).toNat

end

end A372302.P4483261961088971373

namespace A372302

/-- `A047924(A003622(n+1))` -/
def P4483261961088971373.Spec : Prop :=
  ∀ n, P4483261961088971373.a n = A372302 (n + 1)

end A372302

/-!
# A372304: Binomial transform of the Gray code sequence.

The programs for A372304, there is no canonical definition to state claims against.
-/

/-! ## A372304.P11106873800406887616

`A106515(n)-A115722(A065048(n))`
-/

namespace A372304.P11106873800406887616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106515 n - A115722 (A065048 n).toNat

end

end A372304.P11106873800406887616

/-! ## A372304.P5464320960955754254

`A106515(n)-A369363(A000288(n))`
-/

namespace A372304.P5464320960955754254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106515 n - A369363 (A000288 n).toNat

end

end A372304.P5464320960955754254

/-! ## A372304.P10146015493177016097

`A106515(n)-A036036(A335643(n))`
-/

namespace A372304.P10146015493177016097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106515 n - A036036 (A335643 n).toNat

end

end A372304.P10146015493177016097

/-!
# A372305: a(n) = Product_{k=2..n-1} MultiplicativeOrder(k,n) where gcd(k,n)=1.

The programs for A372305, there is no canonical definition to state claims against.
-/

/-! ## A372305.P10897939482018646301

`and(A000217(A323865(n)), A366252(n))`
-/

namespace A372305.P10897939482018646301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A323865 n).toNat) (A366252 n)

end

end A372305.P10897939482018646301

/-! ## A372305.P15971718690311044959

`and(A056916(A000010(n+1)), A366252(n))`
-/

namespace A372305.P15971718690311044959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056916 (A000010 (n + 1)).toNat) (A366252 n)

end

end A372305.P15971718690311044959

/-! ## A372305.P15272616064429560519

`A056916(A000010(n+1)%A128028(n+1))`
-/

namespace A372305.P15272616064429560519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056916 (Int.tmod (A000010 (n + 1)) (A128028 (n + 1))).toNat

end

end A372305.P15272616064429560519

/-!
# A372306: Cardinality of the largest subset of {1,...,n} such that no three distinct elements of this subset multiply to a square.

The programs for A372306, there is no canonical definition to state claims against.
-/

/-! ## A372306.P13213214984569553038

`A373178(n+1)-A103675(n)`
-/

namespace A372306.P13213214984569553038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373178 (n + 1) - A103675 n

end

end A372306.P13213214984569553038

/-! ## A372306.P7789394443270499279

`A373178(n+1)-A122841(A058984(n))`
-/

namespace A372306.P7789394443270499279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373178 (n + 1) - A122841 (A058984 n).toNat

end

end A372306.P7789394443270499279

/-! ## A372306.P8775525693000161772

`∑[∑{e}[A200062(n+1)-A136625(n), #]!%2]`
-/

namespace A372306.P8775525693000161772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200062 (n + 1) - A136625 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372306.P8775525693000161772

/-! ## A372306.P6085811599192659524

`∑[∑{e}[A200062(n+1)-A287170(n+1), #]!%2]`
-/

namespace A372306.P6085811599192659524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200062 (n + 1) - A287170 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372306.P6085811599192659524

/-! ## A372306.P11190654629774919714

`A373178(n+1)-A070202(A157212(n))`
-/

namespace A372306.P11190654629774919714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373178 (n + 1) - A070202 (A157212 n).toNat

end

end A372306.P11190654629774919714

/-!
# A372307: Square array read by antidiagonals: T(n,k) is the number of derangements of a multiset comprising n repeats of a k-element set.

The programs for A372307, there is no canonical definition to state claims against.
-/

/-! ## A372307.P13964210188327531494

`A005579(A273712(n+1))`
-/

namespace A372307.P13964210188327531494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (A273712 (n + 1)).toNat

end

end A372307.P13964210188327531494

/-! ## A372307.P12247544000882591737

`A319189(A242464(n))-A048571(n)`
-/

namespace A372307.P12247544000882591737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319189 (A242464 n).toNat - A048571 n

end

end A372307.P12247544000882591737

/-! ## A372307.P16722646567548236070

`A122204(n+1)^A054581(A007318(n))`
-/

namespace A372307.P16722646567548236070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122204 (n + 1) : ℚ) ^ (A054581 (A007318 n).toNat : ℤ)

end

end A372307.P16722646567548236070

/-! ## A372307.P4259079034900810699

`A005811(A347618(n+1)^A048996(n))`
-/

namespace A372307.P4259079034900810699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A347618 (n + 1) : ℚ) ^ (A048996 n : ℤ))).toNat

end

end A372307.P4259079034900810699

/-! ## A372307.P14127716392486687900

`A290353(n+1)^A156919(A030103(n))`
-/

namespace A372307.P14127716392486687900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290353 (n + 1) : ℚ) ^ (A156919 (A030103 n).toNat : ℤ)

end

end A372307.P14127716392486687900

/-!
# A372308: Composite numbers k such that the digits of k are in nonincreasing order while the digits of the concatenation of k's ascending order prime factors, with repetition, are in nondecreasing order.

The programs for A372308, there is no canonical definition to state claims against.
-/

/-! ## A372308.P13774231767965998788

`A212372(n+2)+A133010(A062434(n+1))`
-/

namespace A372308.P13774231767965998788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212372 (n + 2) + A133010 (A062434 (n + 1)).toNat

end

end A372308.P13774231767965998788

/-! ## A372308.P12840551811344437365

`A212372(A077741(n+1)+1)`
-/

namespace A372308.P12840551811344437365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212372 (A077741 (n + 1) + 1).toNat

end

end A372308.P12840551811344437365

/-! ## A372308.P7771536037804462487

`A212372(A077741(n+2))`
-/

namespace A372308.P7771536037804462487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212372 (A077741 (n + 2)).toNat

end

end A372308.P7771536037804462487

/-! ## A372308.P8669299402590193901

`lt[A109938(A303939(n)), A177894(n)]`
-/

namespace A372308.P8669299402590193901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109938 (A303939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372308.P8669299402590193901

/-! ## A372308.P7417191944449152187

`A212372(A178787(A056525(A056525(n+1))))`
-/

namespace A372308.P7417191944449152187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212372 (A178787 (A056525 (A056525 (n + 1)).toNat).toNat).toNat

end

end A372308.P7417191944449152187

/-!
# A372310: Number of permutations of length n avoiding the pattern 1324 and with 1 appearing before n.

The programs for A372310, there is no canonical definition to state claims against.
-/

/-! ## A372310.P10732381268423626113

`A323467(A053617(n+2))`
-/

namespace A372310.P10732381268423626113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (A053617 (n + 2)).toNat

end

end A372310.P10732381268423626113

/-!
# A372311: Triangle read by rows: T(n, k) = n^k * Sum_{j=0..n} binomial(n - j, n - k) * Eulerian1(n, j).

The programs for A372311, the canonical program `A372311.P1590214679197910568` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372311 has offset 0).

The definition of A372311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372311.P1590214679197910568

`A028246(n+1)*A079901(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A372311

/-- `A028246(n+1)*A079901(n)` -/
def P1590214679197910568.Spec : Prop :=
  ∀ n, P1590214679197910568.a n = A372311 n

theorem P1590214679197910568.correct : P1590214679197910568.Spec := by
  intro n
  simp only [A372311]

end A372311

/-! ## A372311.P964258215469397039

`A008277(n+1)*A153188(n)`
-/

namespace A372311.P964258215469397039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A153188 n

end

end A372311.P964258215469397039

namespace A372311

/-- `A008277(n+1)*A153188(n)` -/
def P964258215469397039.Spec : Prop :=
  ∀ n, P964258215469397039.a n = A372311 n

end A372311

/-! ## A372311.P9370856765026096499

`abs(Δ[A278075(n)])*A079901(n)`
-/

namespace A372311.P9370856765026096499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * A079901 n

end

end A372311.P9370856765026096499

namespace A372311

/-- `abs(Δ[A278075(n)])*A079901(n)` -/
def P9370856765026096499.Spec : Prop :=
  ∀ n, P9370856765026096499.a n = A372311 n

end A372311

/-! ## A372311.P9405876907158629905

`A019538(n+1)/A002260(n+1)*A079901(n)`
-/

namespace A372311.P9405876907158629905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A079901 n : ℚ)

end

end A372311.P9405876907158629905

namespace A372311

/-- `A019538(n+1)/A002260(n+1)*A079901(n)` -/
def P9405876907158629905.Spec : Prop :=
  ∀ n, P9405876907158629905.a n = (A372311 n : ℚ)

end A372311

/-!
# A372312: Row sums of A372311.

The programs for A372312, there is no canonical definition to state claims against.
-/

/-! ## A372312.P13140930147221562933

`(n+1)*A321189(n)`
-/

namespace A372312.P13140930147221562933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A321189 n

end

end A372312.P13140930147221562933

/-! ## A372312.P8842643443119210124

`lcm(A000027(n+1), A321189(n))`
-/

namespace A372312.P8842643443119210124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A321189 n)

end

end A372312.P8842643443119210124

/-! ## A372312.P2439692354550623398

`ceil(A094420(n)/A233583(n+1))*A059953(2*n+1)`
-/

namespace A372312.P2439692354550623398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094420 n : ℚ) / (A233583 (n + 1) : ℚ)⌉ * A059953 (2 * n + 1)

end

end A372312.P2439692354550623398

/-! ## A372312.P12901100939389503852

`A321189(n)*A349371(A000079(n))`
-/

namespace A372312.P12901100939389503852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321189 n * A349371 (A000079 n).toNat

end

end A372312.P12901100939389503852

/-!
# A372315: Expansion of e.g.f. exp( x - LambertW(-2*x)/2 ).

The programs for A372315, there is no canonical definition to state claims against.
-/

/-! ## A372315.P7219731005114077391

`A058267(A050291(n²))`
-/

namespace A372315.P7219731005114077391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058267 (A050291 (n ^ 2)).toNat

end

end A372315.P7219731005114077391

/-!
# A372316: Expansion of e.g.f. exp( x - LambertW(-3*x)/3 ).

The programs for A372316, there is no canonical definition to state claims against.
-/

/-! ## A372316.P6712789795232468172

`A030173(A007820(n))+n`
-/

namespace A372316.P6712789795232468172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030173 (A007820 n).toNat + (n : ℤ)

end

end A372316.P6712789795232468172

/-!
# A372319: Products of prime triples (p, p+2, p+6) where p = A022004(n).

The programs for A372319, the canonical program `A372319.P6165790239700502449` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372319 has offset 1).

The definition of A372319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372319.P6165790239700502449

`A022004(n+1)*A073648(n+1)*A098412(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A372319

/-- `A022004(n+1)*A073648(n+1)*A098412(n+1)` -/
def P6165790239700502449.Spec : Prop :=
  ∀ n, P6165790239700502449.a n = A372319 (n + 1)

theorem P6165790239700502449.correct : P6165790239700502449.Spec := by
  intro n
  simp only [A372319, Nat.add_sub_cancel]

end A372319

/-! ## A372319.P12786818220386269636

`A022004(n+1)*A030661(A022004(n+1))`
-/

namespace A372319.P12786818220386269636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) * A030661 (A022004 (n + 1)).toNat

end

end A372319.P12786818220386269636

namespace A372319

/-- `A022004(n+1)*A030661(A022004(n+1))` -/
def P12786818220386269636.Spec : Prop :=
  ∀ n, P12786818220386269636.a n = A372319 (n + 1)

end A372319

/-! ## A372319.P8071459441380716254

`A129648(A163635(n+1))`
-/

namespace A372319.P8071459441380716254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129648 (A163635 (n + 1)).toNat

end

end A372319.P8071459441380716254

namespace A372319

/-- `A129648(A163635(n+1))` -/
def P8071459441380716254.Spec : Prop :=
  ∀ n, P8071459441380716254.a n = A372319 (n + 1)

end A372319

/-!
# A372320: Expansion of e.g.f. -exp( x + LambertW(-2*x)/2 ).

The programs for A372320, there is no canonical definition to state claims against.
-/

/-! ## A372320.P6262175189882874744

`∑[A331965(A199675(n))]-2`
-/

namespace A372320.P6262175189882874744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331965 (A199675 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A372320.P6262175189882874744

/-!
# A372321: Expansion of e.g.f. -exp( x + LambertW(-3*x)/3 ).

The programs for A372321, there is no canonical definition to state claims against.
-/

/-! ## A372321.P10725262538816092846

`A356862(A382086(n))+n-3`
-/

namespace A372321.P10725262538816092846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (A382086 n).toNat + ((n : ℤ) - 3)

end

end A372321.P10725262538816092846

/-!
# A372322: a(n) = A010846(A372111(n)).

The programs for A372322, there is no canonical definition to state claims against.
-/

/-! ## A372322.P16458383635042867681

`A010846(A372111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372322.P16458383635042867681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A372111 (n + 1)).toNat

end

end A372322.P16458383635042867681

/-!
# A372324: Expansion of e.g.f. arcsin(x)^2/(2*(1 - x)).

The programs for A372324, there is no canonical definition to state claims against.
-/

/-! ## A372324.P7415200396086176233

`A103221(round((n+1)*A295103(n+1)/2))`
-/

namespace A372324.P7415200396086176233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((A295103 (n + 1) : ℚ) / 2))).toNat

end

end A372324.P7415200396086176233

/-! ## A372324.P16414500792453953109

`A002265(A383145(n)+A005164(n))`
-/

namespace A372324.P16414500792453953109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A383145 n + A005164 n).toNat

end

end A372324.P16414500792453953109

/-! ## A372324.P2158722824877407493

`A018825(A112934(n))-A112934(n)`
-/

namespace A372324.P2158722824877407493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (A112934 n).toNat - A112934 n

end

end A372324.P2158722824877407493

/-!
# A372325: Numbers whose binary expansion has an even number of 1's among positions listed in this sequence.

The programs for A372325, the canonical program `A372325.P7067846438842674381` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372325 has offset 1).

The definition of A372325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372325.P7067846438842674381

`eq[1, A000035(A116549(n))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A372325

/-- `eq[1, A000035(A116549(n))]` -/
def P7067846438842674381.Spec : Prop :=
  ∀ n, (P7067846438842674381.a n : ℤ) = A372325 (n + 1)

theorem P7067846438842674381.correct : P7067846438842674381.Spec := by
  intro n
  simp only [A372325, Nat.add_sub_cancel]

end A372325

/-! ## A372325.P3868834265592792017

`record[n*A059841(A116549(n)+1)]`
-/

namespace A372325.P3868834265592792017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059841 (A116549 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372325.P3868834265592792017

namespace A372325

/-- `record[n*A059841(A116549(n)+1)]` -/
def P3868834265592792017.Spec : Prop :=
  ∀ n, P3868834265592792017.a n = A372325 (n + 1)

end A372325

/-! ## A372325.P11095210444348653214

`record[n*A347871(lcm(7, A116549(n)))]`
-/

namespace A372325.P11095210444348653214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A347871 (Int.lcm 7 (A116549 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372325.P11095210444348653214

namespace A372325

/-- `record[n*A347871(lcm(7, A116549(n)))]` -/
def P11095210444348653214.Spec : Prop :=
  ∀ n, P11095210444348653214.a n = A372325 (n + 1)

end A372325

/-! ## A372325.P13261681903995870487

`lt[A116498(A116549(n)), A000035(n)]`
-/

namespace A372325.P13261681903995870487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116498 (A116549 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372325.P13261681903995870487

namespace A372325

/-- `lt[A116498(A116549(n)), A000035(n)]` -/
def P13261681903995870487.Spec : Prop :=
  ∀ n, (P13261681903995870487.a n : ℤ) = A372325 (n + 1)

end A372325

/-! ## A372325.P11130784511045628536

`lt[A116498(A116549(n)), A010815(n)]`
-/

namespace A372325.P11130784511045628536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116498 (A116549 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372325.P11130784511045628536

namespace A372325

/-- `lt[A116498(A116549(n)), A010815(n)]` -/
def P11130784511045628536.Spec : Prop :=
  ∀ n, (P11130784511045628536.a n : ℤ) = A372325 (n + 1)

end A372325

/-! ## A372325.P7210963720880686679

`eq[1, A116510(n)²]`
-/

namespace A372325.P7210963720880686679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116510 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372325.P7210963720880686679

namespace A372325

/-- `eq[1, A116510(n)²]` -/
def P7210963720880686679.Spec : Prop :=
  ∀ n, (P7210963720880686679.a n : ℤ) = A372325 (n + 1)

end A372325

/-! ## A372325.P4261012721891866582

`Δ[n²]-A104104(Δ[n²])`
-/

namespace A372325.P4261012721891866582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A104104 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A372325.P4261012721891866582

namespace A372325

/-- `Δ[n²]-A104104(Δ[n²])` -/
def P4261012721891866582.Spec : Prop :=
  ∀ n, P4261012721891866582.a n = A372325 (n + 1)

end A372325

/-! ## A372325.P6611197512393486662

`lt[0, A104104(n+1)]`
-/

namespace A372325.P6611197512393486662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A372325.P6611197512393486662

namespace A372325

/-- `lt[0, A104104(n+1)]` -/
def P6611197512393486662.Spec : Prop :=
  ∀ n, (P6611197512393486662.a n : ℤ) = A372325 (n + 1)

end A372325

/-! ## A372325.P13648310471596831041

`A104104(2*(n+1))+2*n`
-/

namespace A372325.P13648310471596831041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104104 (2 * (n + 1)) + (2 * n : ℤ)

end

end A372325.P13648310471596831041

namespace A372325

/-- `A104104(2*(n+1))+2*n` -/
def P13648310471596831041.Spec : Prop :=
  ∀ n, P13648310471596831041.a n = A372325 (n + 1)

end A372325

/-! ## A372325.P1950430352690585287

`eq[A104104(n+1), A361338(n)]`
-/

namespace A372325.P1950430352690585287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372325.P1950430352690585287

namespace A372325

/-- `eq[A104104(n+1), A361338(n)]` -/
def P1950430352690585287.Spec : Prop :=
  ∀ n, (P1950430352690585287.a n : ℤ) = A372325 (n + 1)

end A372325

/-!
# A372328: a(n) is the smallest number k such that k*n is a number whose number of divisors is a power of 2 (A036537).

The programs for A372328, there is no canonical definition to state claims against.
-/

/-! ## A372328.P10888442711447535773

`A372329(n+1)/(n+1)`
-/

namespace A372328.P10888442711447535773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372329 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A372328.P10888442711447535773

/-! ## A372328.P17761019404365162764

`A102631(A353897(n+1))/(n+1)`
-/

namespace A372328.P17761019404365162764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (A353897 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A372328.P17761019404365162764

/-! ## A372328.P13677815380823000096

`A353897(n+1)²/A064549(n+1)`
-/

namespace A372328.P13677815380823000096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353897 (n + 1) ^ 2 : ℚ) / (A064549 (n + 1) : ℚ)

end

end A372328.P13677815380823000096

/-! ## A372328.P10600309039380504337

`A365297((n+1)*A365297(A372329(n+1)))`
-/

namespace A372328.P10600309039380504337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 ((n + 1 : ℤ) * A365297 (A372329 (n + 1)).toNat).toNat

end

end A372328.P10600309039380504337

/-! ## A372328.P16659588074512643445

`A372379((n+1)²/∏{p}[n+1, #])/(n+1)`
-/

namespace A372328.P16659588074512643445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372379 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ) / (n + 1 : ℚ)

end

end A372328.P16659588074512643445

/-! ## A372328.P11330990983197252664

`A372379(A102631(n+1))/(n+1)`
-/

namespace A372328.P11330990983197252664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372379 (A102631 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A372328.P11330990983197252664

/-! ## A372328.P9031470826828494881

`A372379((n+1)²)/(n+1)`
-/

namespace A372328.P9031470826828494881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372379 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A372328.P9031470826828494881

/-!
# A372329: a(n) is the smallest multiple of n whose number of divisors is a power of 2 (A036537).

The programs for A372329, there is no canonical definition to state claims against.
-/

/-! ## A372329.P13236283797127994861

`(n+1)*A372328(n+1)`
-/

namespace A372329.P13236283797127994861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A372328 (n + 1)

end

end A372329.P13236283797127994861

/-! ## A372329.P3776588594912644057

`A102631(A353897(n+1))`
-/

namespace A372329.P3776588594912644057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A353897 (n + 1)).toNat

end

end A372329.P3776588594912644057

/-! ## A372329.P8925730112897932036

`A353897(n+1)²/A007947(n+1)`
-/

namespace A372329.P8925730112897932036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353897 (n + 1) ^ 2 : ℚ) / (A007947 (n + 1) : ℚ)

end

end A372329.P8925730112897932036

/-! ## A372329.P8585660922762684296

`A336551(A353897(n+1)²)+1`
-/

namespace A372329.P8585660922762684296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A353897 (n + 1) ^ 2).toNat + 1

end

end A372329.P8585660922762684296

/-! ## A372329.P7986848555087290488

`A372379(∏{p}[n+1, #^val(n+1, #²)]²*A372379(n+1))`
-/

namespace A372329.P7986848555087290488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 ((((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) * A372379 (n + 1)).toNat

end

end A372329.P7986848555087290488

/-! ## A372329.P6028095991669836550

`A372379((n+1)²/∏{p}[n+1, #])`
-/

namespace A372329.P6028095991669836550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A372329.P6028095991669836550

/-! ## A372329.P5571002671025946322

`A372379(A102631(n+1))`
-/

namespace A372329.P5571002671025946322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A102631 (n + 1)).toNat

end

end A372329.P5571002671025946322

/-! ## A372329.P14101603391348929617

`A372379(A342768(n+1))`
-/

namespace A372329.P14101603391348929617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A342768 (n + 1)).toNat

end

end A372329.P14101603391348929617

/-! ## A372329.P6585955529924968302

`A372379(A140651(n+1))`
-/

namespace A372329.P6585955529924968302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A140651 (n + 1)).toNat

end

end A372329.P6585955529924968302

/-! ## A372329.P6223493770038540710

`A372379(A170826(n+1))`
-/

namespace A372329.P6223493770038540710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A170826 (n + 1)).toNat

end

end A372329.P6223493770038540710

/-! ## A372329.P15194048277216176775

`A372379(A326578(n+1))`
-/

namespace A372329.P15194048277216176775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A326578 (n + 1)).toNat

end

end A372329.P15194048277216176775

/-! ## A372329.P17034391967965856296

`A372379(A103390(n+2))`
-/

namespace A372329.P17034391967965856296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A103390 (n + 2)).toNat

end

end A372329.P17034391967965856296

/-! ## A372329.P3447141897298178747

`A372379((n+1)²)`
-/

namespace A372329.P3447141897298178747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 ((n + 1) ^ 2)

end

end A372329.P3447141897298178747

/-! ## A372329.P16421636036225181499

`A003557(A353897((n+1)²))`
-/

namespace A372329.P16421636036225181499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A353897 ((n + 1) ^ 2)).toNat

end

end A372329.P16421636036225181499

/-! ## A372329.P18160269303118482182

`A011262(A366905(n+1)²)`
-/

namespace A372329.P18160269303118482182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A366905 (n + 1) ^ 2).toNat

end

end A372329.P18160269303118482182

/-! ## A372329.P10519916195784066149

`A350390(A366905(n+1)²)`
-/

namespace A372329.P10519916195784066149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (A366905 (n + 1) ^ 2).toNat

end

end A372329.P10519916195784066149

/-! ## A372329.P9697269385448400072

`A372328(A353897(n+1)²)`
-/

namespace A372329.P9697269385448400072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372328 (A353897 (n + 1) ^ 2).toNat

end

end A372329.P9697269385448400072

/-!
# A372330: The number of divisors of the smallest multiple of n whose number of divisors is a power of 2 (A036537).

The programs for A372330, the canonical program `A372330.P18180619389445412267` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372330 has offset 1).

The definition of A372330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372330.P5290664887693503360

`A000005(A372329(n+1))`
-/

namespace A372330.P5290664887693503360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A372329 (n + 1)).toNat

end

end A372330.P5290664887693503360

namespace A372330

/-- `A000005(A372329(n+1))` -/
def P5290664887693503360.Spec : Prop :=
  ∀ n, P5290664887693503360.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P15133464481640185518

`2^A372502(n+1)`
-/

namespace A372330.P15133464481640185518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A372502 (n + 1) : ℤ)

end

end A372330.P15133464481640185518

namespace A372330

/-- `2^A372502(n+1)` -/
def P15133464481640185518.Spec : Prop :=
  ∀ n, P15133464481640185518.a n = (A372330 (n + 1) : ℚ)

end A372330

/-! ## A372330.P10523575081700692760

`∑{d}[n+1, A372504(#)]`
-/

namespace A372330.P10523575081700692760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372504 d

end

end A372330.P10523575081700692760

namespace A372330

/-- `∑{d}[n+1, A372504(#)]` -/
def P10523575081700692760.Spec : Prop :=
  ∀ n, P10523575081700692760.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P18180619389445412267

`∏{e}[n+1, A062383(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A372330

/-- `∏{e}[n+1, A062383(#)]` -/
def P18180619389445412267.Spec : Prop :=
  ∀ n, P18180619389445412267.a n = A372330 (n + 1)

theorem P18180619389445412267.correct : P18180619389445412267.Spec := by
  intro n
  simp only [A372330, Nat.add_sub_cancel]

end A372330

/-! ## A372330.P2244918794797688211

`A037445(n+1)*A372331(n+1)`
-/

namespace A372330.P2244918794797688211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) * A372331 (n + 1)

end

end A372330.P2244918794797688211

namespace A372330

/-- `A037445(n+1)*A372331(n+1)` -/
def P2244918794797688211.Spec : Prop :=
  ∀ n, P2244918794797688211.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P15435957351777413305

`A037445(n+1)*A037445(A372328(n+1))`
-/

namespace A372330.P15435957351777413305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) * A037445 (A372328 (n + 1)).toNat

end

end A372330.P15435957351777413305

namespace A372330

/-- `A037445(n+1)*A037445(A372328(n+1))` -/
def P15435957351777413305.Spec : Prop :=
  ∀ n, P15435957351777413305.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P6134441845040042699

`A037445((n+1)*A372328(n+1))`
-/

namespace A372330.P6134441845040042699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 ((n + 1 : ℤ) * A372328 (n + 1)).toNat

end

end A372330.P6134441845040042699

namespace A372330

/-- `A037445((n+1)*A372328(n+1))` -/
def P6134441845040042699.Spec : Prop :=
  ∀ n, P6134441845040042699.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P8678304631677438485

`A037445(A372329(2*n+1-n))`
-/

namespace A372330.P8678304631677438485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A372329 (2 * n + 1 - n)).toNat

end

end A372330.P8678304631677438485

namespace A372330

/-- `A037445(A372329(2*n+1-n))` -/
def P8678304631677438485.Spec : Prop :=
  ∀ n, P8678304631677438485.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P581447245115611580

`A286324(A102631(A353897(n+1)))`
-/

namespace A372330.P581447245115611580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A102631 (A353897 (n + 1)).toNat).toNat

end

end A372330.P581447245115611580

namespace A372330

/-- `A286324(A102631(A353897(n+1)))` -/
def P581447245115611580.Spec : Prop :=
  ∀ n, P581447245115611580.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P1758081633106301975

`A286324(A372379(A102631(n+1)))`
-/

namespace A372330.P1758081633106301975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A372379 (A102631 (n + 1)).toNat).toNat

end

end A372330.P1758081633106301975

namespace A372330

/-- `A286324(A372379(A102631(n+1)))` -/
def P1758081633106301975.Spec : Prop :=
  ∀ n, P1758081633106301975.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P8073431555080258548

`A063511(A076078(n+1))`
-/

namespace A372330.P8073431555080258548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063511 (A076078 (n + 1)).toNat

end

end A372330.P8073431555080258548

namespace A372330

/-- `A063511(A076078(n+1))` -/
def P8073431555080258548.Spec : Prop :=
  ∀ n, P8073431555080258548.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P2208943694816592461

`A063511(A100577(n+1))`
-/

namespace A372330.P2208943694816592461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063511 (A100577 (n + 1)).toNat

end

end A372330.P2208943694816592461

namespace A372330

/-- `A063511(A100577(n+1))` -/
def P2208943694816592461.Spec : Prop :=
  ∀ n, P2208943694816592461.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P17325965164547070025

`A063511(A100587(n+1))`
-/

namespace A372330.P17325965164547070025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063511 (A100587 (n + 1)).toNat

end

end A372330.P17325965164547070025

namespace A372330

/-- `A063511(A100587(n+1))` -/
def P17325965164547070025.Spec : Prop :=
  ∀ n, P17325965164547070025.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P4237605254068838915

`A372381((n+1)²)`
-/

namespace A372330.P4237605254068838915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372381 ((n + 1) ^ 2)

end

end A372330.P4237605254068838915

namespace A372330

/-- `A372381((n+1)²)` -/
def P4237605254068838915.Spec : Prop :=
  ∀ n, P4237605254068838915.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P13217752096402571801

`2^A366073((n+1)²)`
-/

namespace A372330.P13217752096402571801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366073 ((n + 1) ^ 2) : ℤ)

end

end A372330.P13217752096402571801

namespace A372330

/-- `2^A366073((n+1)²)` -/
def P13217752096402571801.Spec : Prop :=
  ∀ n, P13217752096402571801.a n = (A372330 (n + 1) : ℚ)

end A372330

/-! ## A372330.P6091938856280775228

`A000005(A372379((n+1)²))`
-/

namespace A372330.P6091938856280775228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A372379 ((n + 1) ^ 2)).toNat

end

end A372330.P6091938856280775228

namespace A372330

/-- `A000005(A372379((n+1)²))` -/
def P6091938856280775228.Spec : Prop :=
  ∀ n, P6091938856280775228.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P2006982318040640344

`A286324(A353897((n+1)²))`
-/

namespace A372330.P2006982318040640344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A353897 ((n + 1) ^ 2)).toNat

end

end A372330.P2006982318040640344

namespace A372330

/-- `A286324(A353897((n+1)²))` -/
def P2006982318040640344.Spec : Prop :=
  ∀ n, P2006982318040640344.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P6343605530728699430

`A159634(A159634(A046951((n+1)²)))`
-/

namespace A372330.P6343605530728699430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (A159634 (A046951 ((n + 1) ^ 2)).toNat).toNat

end

end A372330.P6343605530728699430

namespace A372330

/-- `A159634(A159634(A046951((n+1)²)))` -/
def P6343605530728699430.Spec : Prop :=
  ∀ n, P6343605530728699430.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P2428712008043580737

`A286324(A005179(A286324((n+1)²)))`
-/

namespace A372330.P2428712008043580737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A005179 (A286324 ((n + 1) ^ 2)).toNat).toNat

end

end A372330.P2428712008043580737

namespace A372330

/-- `A286324(A005179(A286324((n+1)²)))` -/
def P2428712008043580737.Spec : Prop :=
  ∀ n, P2428712008043580737.a n = A372330 (n + 1)

end A372330

/-! ## A372330.P1827969152642475663

`A286324(A372379(A350390((n+1)²)))`
-/

namespace A372330.P1827969152642475663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A372379 (A350390 ((n + 1) ^ 2)).toNat).toNat

end

end A372330.P1827969152642475663

namespace A372330

/-- `A286324(A372379(A350390((n+1)²)))` -/
def P1827969152642475663.Spec : Prop :=
  ∀ n, P1827969152642475663.a n = A372330 (n + 1)

end A372330

/-!
# A372331: The number of infinitary divisors of the smallest number k such that k*n is a number whose number of divisors is a power of 2 (A036537).

The programs for A372331, the canonical program `A372331.P6557326080855113142` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372331 has offset 1).

The definition of A372331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372331.P4772841037592176563

`A037445(A372328(n+1))`
-/

namespace A372331.P4772841037592176563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A372328 (n + 1)).toNat

end

end A372331.P4772841037592176563

namespace A372331

/-- `A037445(A372328(n+1))` -/
def P4772841037592176563.Spec : Prop :=
  ∀ n, P4772841037592176563.a n = A372331 (n + 1)

end A372331

/-! ## A372331.P685776242901509157

`2^A372332(n+1)`
-/

namespace A372331.P685776242901509157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A372332 (n + 1) : ℤ)

end

end A372331.P685776242901509157

namespace A372331

/-- `2^A372332(n+1)` -/
def P685776242901509157.Spec : Prop :=
  ∀ n, P685776242901509157.a n = (A372331 (n + 1) : ℚ)

end A372331

/-! ## A372331.P6557326080855113142

`∏{e}[n+1, A080100(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A372331

/-- `∏{e}[n+1, A080100(#)]` -/
def P6557326080855113142.Spec : Prop :=
  ∀ n, P6557326080855113142.a n = A372331 (n + 1)

theorem P6557326080855113142.correct : P6557326080855113142.Spec := by
  intro n
  simp only [A372331, Nat.add_sub_cancel]

end A372331

/-! ## A372331.P689151132897701430

`A037445(A372329(n+1)/(n+1))`
-/

namespace A372331.P689151132897701430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (SequenceMachineLib.roundAway ((A372329 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A372331.P689151132897701430

namespace A372331

/-- `A037445(A372329(n+1)/(n+1))` -/
def P689151132897701430.Spec : Prop :=
  ∀ n, P689151132897701430.a n = A372331 (n + 1)

end A372331

/-! ## A372331.P5680396103039828838

`A372330(n+1)/A037445(n+1)`
-/

namespace A372331.P5680396103039828838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372330 (n + 1) : ℚ) / (A037445 (n + 1) : ℚ)

end

end A372331.P5680396103039828838

namespace A372331

/-- `A372330(n+1)/A037445(n+1)` -/
def P5680396103039828838.Spec : Prop :=
  ∀ n, P5680396103039828838.a n = (A372331 (n + 1) : ℚ)

end A372331

/-! ## A372331.P2586106210470370367

`A286324(A372379(A102631(n+1))/(n+1))`
-/

namespace A372331.P2586106210470370367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (SequenceMachineLib.roundAway ((A372379 (A102631 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))).toNat

end

end A372331.P2586106210470370367

namespace A372331

/-- `A286324(A372379(A102631(n+1))/(n+1))` -/
def P2586106210470370367.Spec : Prop :=
  ∀ n, P2586106210470370367.a n = A372331 (n + 1)

end A372331

/-! ## A372331.P13474588582490328525

`A372380(A036539(A193349(n+1)))`
-/

namespace A372331.P13474588582490328525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A036539 (A193349 (n + 1)).toNat).toNat

end

end A372331.P13474588582490328525

namespace A372331

/-- `A372380(A036539(A193349(n+1)))` -/
def P13474588582490328525.Spec : Prop :=
  ∀ n, P13474588582490328525.a n = A372331 (n + 1)

end A372331

/-! ## A372331.P17323456786380657234

`A286324(A372379((n+1)²)/(n+1))`
-/

namespace A372331.P17323456786380657234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (SequenceMachineLib.roundAway ((A372379 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A372331.P17323456786380657234

namespace A372331

/-- `A286324(A372379((n+1)²)/(n+1))` -/
def P17323456786380657234.Spec : Prop :=
  ∀ n, P17323456786380657234.a n = A372331 (n + 1)

end A372331

/-! ## A372331.P18171409204255914203

`A366902(A366905((n+1)*A367514(n+1)))`
-/

namespace A372331.P18171409204255914203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366902 (A366905 ((n + 1 : ℤ) * A367514 (n + 1)).toNat).toNat

end

end A372331.P18171409204255914203

namespace A372331

/-- `A366902(A366905((n+1)*A367514(n+1)))` -/
def P18171409204255914203.Spec : Prop :=
  ∀ n, P18171409204255914203.a n = A372331 (n + 1)

end A372331

/-!
# A372332: The number of "Fermi-Dirac primes" (A050376) that are noninfinitary divisors of n.

The programs for A372332, the canonical program `A372332.P7189402295266121524` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372332 has offset 1).

The definition of A372332 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372331, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372332.P7189402295266121524

`log2(A372331(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A372332

/-- `log2(A372331(n+1))` -/
def P7189402295266121524.Spec : Prop :=
  ∀ n, P7189402295266121524.a n = (A372332 (n + 1) : ℝ)

end A372332

/-! ## A372332.P2585634273913968710

`∑{e}[n+1, A023416(#)]`
-/

namespace A372332.P2585634273913968710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A023416 (Nat.factorization (f1 n) p)

end

end A372332.P2585634273913968710

namespace A372332

/-- `∑{e}[n+1, A023416(#)]` -/
def P2585634273913968710.Spec : Prop :=
  ∀ n, P2585634273913968710.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P1384870020238613944

`A002487(A372331(n+1)-1)`
-/

namespace A372332.P1384870020238613944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A372331 (n + 1) - 1).toNat

end

end A372332.P1384870020238613944

namespace A372332

/-- `A002487(A372331(n+1)-1)` -/
def P1384870020238613944.Spec : Prop :=
  ∀ n, P1384870020238613944.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P3768597838771440654

`A087808(A372331(n+1)-1)`
-/

namespace A372332.P3768597838771440654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A372331 (n + 1) - 1).toNat

end

end A372332.P3768597838771440654

namespace A372332

/-- `A087808(A372331(n+1)-1)` -/
def P3768597838771440654.Spec : Prop :=
  ∀ n, P3768597838771440654.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P14350311652527700243

`A372502(n+1)-A064547(n+1)`
-/

namespace A372332.P14350311652527700243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372502 (n + 1) - A064547 (n + 1)

end

end A372332.P14350311652527700243

namespace A372332

/-- `A372502(n+1)-A064547(n+1)` -/
def P14350311652527700243.Spec : Prop :=
  ∀ n, P14350311652527700243.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P13544432321949207782

`A064547(A372329(n+1)/(n+1))`
-/

namespace A372332.P13544432321949207782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (SequenceMachineLib.roundAway ((A372329 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A372332.P13544432321949207782

namespace A372332

/-- `A064547(A372329(n+1)/(n+1))` -/
def P13544432321949207782.Spec : Prop :=
  ∀ n, P13544432321949207782.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P4788463627378227545

`A067029(A372331(2*n+1-n))`
-/

namespace A372332.P4788463627378227545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A372331 (2 * n + 1 - n)).toNat

end

end A372332.P4788463627378227545

namespace A372332

/-- `A067029(A372331(2*n+1-n))` -/
def P4788463627378227545.Spec : Prop :=
  ∀ n, P4788463627378227545.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P1642459568164740229

`A023416(A037445(A372328(n+1)))`
-/

namespace A372332.P1642459568164740229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A037445 (A372328 (n + 1)).toNat).toNat

end

end A372332.P1642459568164740229

namespace A372332

/-- `A023416(A037445(A372328(n+1)))` -/
def P1642459568164740229.Spec : Prop :=
  ∀ n, P1642459568164740229.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P10364756976365341615

`A064547(A372329(n+1))-A064547(n+1)`
-/

namespace A372332.P10364756976365341615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A372329 (n + 1)).toNat - A064547 (n + 1)

end

end A372332.P10364756976365341615

namespace A372332

/-- `A064547(A372329(n+1))-A064547(n+1)` -/
def P10364756976365341615.Spec : Prop :=
  ∀ n, P10364756976365341615.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P7849390124031595867

`A382290(A372329(n+1))-A382290(n+1)`
-/

namespace A372332.P7849390124031595867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (A372329 (n + 1)).toNat - A382290 (n + 1)

end

end A372332.P7849390124031595867

namespace A372332

/-- `A382290(A372329(n+1))-A382290(n+1)` -/
def P7849390124031595867.Spec : Prop :=
  ∀ n, P7849390124031595867.a n = A372332 (n + 1)

end A372332

/-! ## A372332.P3996182320734708896

`A384422(A047994(A321167((n+1)²)))`
-/

namespace A372332.P3996182320734708896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384422 (A047994 (A321167 ((n + 1) ^ 2)).toNat).toNat

end

end A372332.P3996182320734708896

namespace A372332

/-- `A384422(A047994(A321167((n+1)²)))` -/
def P3996182320734708896.Spec : Prop :=
  ∀ n, P3996182320734708896.a n = A372332 (n + 1)

end A372332

/-!
# A372333: Expansion of e.g.f. -exp(x) * LambertW(-2*x)/2.

The programs for A372333, there is no canonical definition to state claims against.
-/

/-! ## A372333.P8652172843269084971

`n*A130091(A305207(n))`
-/

namespace A372333.P8652172843269084971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130091 (A305207 n).toNat

end

end A372333.P8652172843269084971

/-!
# A372334: Expansion of e.g.f. -exp(x) * LambertW(-3*x)/3.

The programs for A372334, there is no canonical definition to state claims against.
-/

/-! ## A372334.P6341249090109492048

`A002479(∑[A295552(n)])`
-/

namespace A372334.P6341249090109492048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372334.P6341249090109492048

/-!
# A372342: Number of noncrossing partitions of [n] that contain exactly one singleton.

The programs for A372342, the canonical program `A372342.P17129522414760120080` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372342 has offset 0).

The definition of A372342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372342.P17129522414760120080

`2*(n-2)*a(n-1)/(n-1)+3*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A372342

/-- `2*(n-2)*a(n-1)/(n-1)+3*a(n-2)` -/
def P17129522414760120080.Spec : Prop :=
  ∀ n, P17129522414760120080.a n = (A372342 n : ℚ)

end A372342

/-! ## A372342.P3725516737627031001

`abs(n*A099323(n))`
-/

namespace A372342.P3725516737627031001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A099323 n|

end

end A372342.P3725516737627031001

namespace A372342

/-- `abs(n*A099323(n))` -/
def P3725516737627031001.Spec : Prop :=
  ∀ n, P3725516737627031001.a n = A372342 n

end A372342

/-! ## A372342.P7720561208378553059

`abs(n*A174297(n+1))`
-/

namespace A372342.P7720561208378553059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A174297 (n + 1)|

end

end A372342.P7720561208378553059

namespace A372342

/-- `abs(n*A174297(n+1))` -/
def P7720561208378553059.Spec : Prop :=
  ∀ n, P7720561208378553059.a n = A372342 n

end A372342

/-! ## A372342.P12153479400101550475

`A309303(n)+A194589(n)`
-/

namespace A372342.P12153479400101550475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309303 n + A194589 n

end

end A372342.P12153479400101550475

namespace A372342

/-- `A309303(n)+A194589(n)` -/
def P12153479400101550475.Spec : Prop :=
  ∀ n, P12153479400101550475.a n = A372342 n

end A372342

/-! ## A372342.P1933932488376008334

`A099323(n)*A181983(n)`
-/

namespace A372342.P1933932488376008334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n * A181983 n

end

end A372342.P1933932488376008334

namespace A372342

/-- `A099323(n)*A181983(n)` -/
def P1933932488376008334.Spec : Prop :=
  ∀ n, P1933932488376008334.a n = A372342 n

end A372342

/-! ## A372342.P3944524302146781962

`n*gcd(A000038(n), A099323(n))`
-/

namespace A372342.P3944524302146781962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A000038 n) (A099323 n)

end

end A372342.P3944524302146781962

namespace A372342

/-- `n*gcd(A000038(n), A099323(n))` -/
def P3944524302146781962.Spec : Prop :=
  ∀ n, (P3944524302146781962.a n : ℤ) = A372342 n

end A372342

/-! ## A372342.P11812310750683939082

`n*lcm(A020985(n), A099323(n))`
-/

namespace A372342.P11812310750683939082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (A020985 n) (A099323 n)

end

end A372342.P11812310750683939082

namespace A372342

/-- `n*lcm(A020985(n), A099323(n))` -/
def P11812310750683939082.Spec : Prop :=
  ∀ n, (P11812310750683939082.a n : ℤ) = A372342 n

end A372342

/-! ## A372342.P2001320946159915894

`A194589(n+1)+A005043(n)-A246437(n)`
-/

namespace A372342.P2001320946159915894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194589 (n + 1) + (A005043 n - A246437 n)

end

end A372342.P2001320946159915894

namespace A372342

/-- `A194589(n+1)+A005043(n)-A246437(n)` -/
def P2001320946159915894.Spec : Prop :=
  ∀ n, P2001320946159915894.a n = A372342 n

end A372342

/-! ## A372342.P10300560509300919048

`A163865(n)-A391990(n)`
-/

namespace A372342.P10300560509300919048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 n - A391990 n

end

end A372342.P10300560509300919048

namespace A372342

/-- `A163865(n)-A391990(n)` -/
def P10300560509300919048.Spec : Prop :=
  ∀ n, P10300560509300919048.a n = A372342 n

end A372342

/-! ## A372342.P14248205577374754760

`n*A091867(A161680(n))`
-/

namespace A372342.P14248205577374754760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091867 (A161680 n).toNat

end

end A372342.P14248205577374754760

namespace A372342

/-- `n*A091867(A161680(n))` -/
def P14248205577374754760.Spec : Prop :=
  ∀ n, P14248205577374754760.a n = A372342 n

end A372342

/-! ## A372342.P15445980183369838592

`A091867(∑[n]+1)`
-/

namespace A372342.P15445980183369838592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A372342.P15445980183369838592

namespace A372342

/-- `A091867(∑[n]+1)` -/
def P15445980183369838592.Spec : Prop :=
  ∀ n, P15445980183369838592.a n = A372342 n

end A372342

/-!
# A372344: Square array A(n, k), n, k >= 0, read by upwards antidiagonals; for any n, k >= 0 with respective binary expansions Sum_{i >= 0} b_i * 2^i and Sum_{i >= 0} c_i * 2^i, A(n, k) = Sum_{i >= 0} (b_{i+1} * c_i - b_i * c_{i+1}) * 3^i.

The programs for A372344, there is no canonical definition to state claims against.
-/

/-! ## A372344.P1935222947636470251

`A056594(A283691(n+1)+A142142(n+1))`
-/

namespace A372344.P1935222947636470251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A283691 (n + 1) + A142142 (n + 1)).toNat

end

end A372344.P1935222947636470251

/-! ## A372344.P11175556869398624899

`A046675(A350910(n+1))^A004812(n+2)`
-/

namespace A372344.P11175556869398624899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046675 (A350910 (n + 1)).toNat : ℚ) ^ (A004812 (n + 2) : ℤ)

end

end A372344.P11175556869398624899

/-! ## A372344.P1978699502330569723

`A046675(A350910(n+1))^A297644(3*n+5)`
-/

namespace A372344.P1978699502330569723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046675 (A350910 (n + 1)).toNat : ℚ) ^ (A297644 (3 * n + 5) : ℤ)

end

end A372344.P1978699502330569723

/-! ## A372344.P4767792187193951643

`A244895(A110654(3*n+2)*A281080(n+1))`
-/

namespace A372344.P4767792187193951643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A110654 (3 * n + 2) * A281080 (n + 1)).toNat

end

end A372344.P4767792187193951643

/-! ## A372344.P11829402510152269893

`A008284(n+1)-A333632(A218396(n))`
-/

namespace A372344.P11829402510152269893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A333632 (A218396 n).toNat

end

end A372344.P11829402510152269893

/-!
# A372345: Square array A(n, k), n, k >= 0, read by upwards antidiagonals; for any n, k >= 0 with respective binary expansions Sum_{i >= 0} b_i * 2^i and Sum_{i >= 0} c_i * 2^i, A(n, k) = Sum_{i >= 0} (b_{i+1} * c_i + b_i * c_{i+1}) * 3^i.

The programs for A372345, there is no canonical definition to state claims against.
-/

/-! ## A372345.P1678582800223210718

`A073779(4*A350910(n+1))`
-/

namespace A372345.P1678582800223210718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073779 (4 * A350910 (n + 1)).toNat

end

end A372345.P1678582800223210718

/-! ## A372345.P10882585194052950621

`A269245(A282481(n+1))`
-/

namespace A372345.P10882585194052950621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269245 (A282481 (n + 1)).toNat

end

end A372345.P10882585194052950621

/-! ## A372345.P3781160071588407227

`A067255(A128433(n))`
-/

namespace A372345.P3781160071588407227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (A128433 n).toNat

end

end A372345.P3781160071588407227

/-! ## A372345.P9130581907090132759

`A376933(n+1)%A176298(n)`
-/

namespace A372345.P9130581907090132759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376933 (n + 1)) (A176298 n)

end

end A372345.P9130581907090132759

/-! ## A372345.P5567655620145737924

`A133924(A169623(n)%A327098(2*n+5))`
-/

namespace A372345.P5567655620145737924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133924 (Int.tmod (A169623 n) (A327098 (2 * n + 5))).toNat

end

end A372345.P5567655620145737924

/-!
# A372346: a(n) = Sum_{j=0..n} p(n - j, j) where p(n, x) = Sum_{k=0..n} k! * Stirling2(n, k) * x^k. Row sums of A344499.

The programs for A372346, there is no canonical definition to state claims against.
-/

/-! ## A372346.P15785839660494358153

`ceil(A028855(n+2)/26)`
-/

namespace A372346.P15785839660494358153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028855 (n + 2) : ℚ) / 26⌉

end

end A372346.P15785839660494358153

/-! ## A372346.P10724801267957393016

`A277741(n*(2*n-1)+1)`
-/

namespace A372346.P10724801267957393016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277741 ((n : ℤ) * ((2 * n : ℤ) - 1) + 1).toNat

end

end A372346.P10724801267957393016

/-!
# A372347: a(n) = Sum_{j=0..n} p(n - j, j) where p(n, x) = Sum_{k=0..n} k! * Stirling1(n, k) * x^k.

The programs for A372347, there is no canonical definition to state claims against.
-/

/-! ## A372347.P14405980584982186710

`A367221(A047866(n))+A275972(n)`
-/

namespace A372347.P14405980584982186710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (A047866 n).toNat + A275972 n

end

end A372347.P14405980584982186710

/-! ## A372347.P10205173790984700986

`A091226(A287257(n)+A091241(n+1))`
-/

namespace A372347.P10205173790984700986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A287257 n + A091241 (n + 1)).toNat

end

end A372347.P10205173790984700986

/-! ## A372347.P4010816453371725818

`A008615(A185629(n)+A000203(n+2))`
-/

namespace A372347.P4010816453371725818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A185629 n + A000203 (n + 2)).toNat

end

end A372347.P4010816453371725818

/-!
# A372348: a(n) = Sum_{j=0..n} p(n - j, j) where p(n, x) = Sum_{k=0..n} k! * Lah(n, k) * x^k where Lah = A271703.

The programs for A372348, there is no canonical definition to state claims against.
-/

/-! ## A372348.P9030866868128465690

`A386651(n*a(n-1))` with `a(0)=1`
-/

namespace A372348.P9030866868128465690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A386651 ((n : ℤ) * a (n - 1)).toNat

end

end A372348.P9030866868128465690

/-! ## A372348.P14858799677203666268

`A260734(A277540(n))`
-/

namespace A372348.P14858799677203666268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A277540 n).toNat

end

end A372348.P14858799677203666268

/-!
# A372349: a(n) = Sum_{j=0..n} p(n - j, j) where p(n, x) = Sum_{k=0..n} k! * abs(Stirling1(n, k)) * x^k.

The programs for A372349, there is no canonical definition to state claims against.
-/

/-! ## A372349.P7727575536060328504

`A037458(A211196(n+1)+1)`
-/

namespace A372349.P7727575536060328504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A211196 (n + 1) + 1).toNat

end

end A372349.P7727575536060328504

/-! ## A372349.P163787902659195686

`A330055(2*n+3)+A087062(A357146(n))`
-/

namespace A372349.P163787902659195686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330055 (2 * n + 3) + A087062 (A357146 n).toNat

end

end A372349.P163787902659195686

/-!
# A372351: Odd bisection of A371094.

The programs for A372351, there is no canonical definition to state claims against.
-/

/-! ## A372351.P2198274344657230270

`A371094(2*(n+1)-1)`
-/

namespace A372351.P2198274344657230270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (2 * (n + 1) - 1)

end

end A372351.P2198274344657230270

/-! ## A372351.P9932621049927197431

`A372289(A016957(n))`
-/

namespace A372351.P9932621049927197431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372289 (A016957 n).toNat

end

end A372351.P9932621049927197431

/-! ## A372351.P1468343801169247214

`A372289(A008588(n)+4)`
-/

namespace A372351.P1468343801169247214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372289 (A008588 n + 4).toNat

end

end A372351.P1468343801169247214

/-! ## A372351.P14957657579980333407

`A000265(A371094(2*n+1))`
-/

namespace A372351.P14957657579980333407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A371094 (2 * n + 1)).toNat

end

end A372351.P14957657579980333407

/-! ## A372351.P17120548659958702277

`filter[A371094(2*n+1), A351077(#)]`
-/

namespace A372351.P17120548659958702277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351077 (f1 j).toNat = 1) n)

end

end A372351.P17120548659958702277

/-!
# A372353: Array read by upward antidiagonals: A(n, k) = A372352(A372282(n, k)), n,k >= 1.

The programs for A372353, there is no canonical definition to state claims against.
-/

/-! ## A372353.P10107233428744995191

`A372359(n+1)%A293441(n)²`
-/

namespace A372353.P10107233428744995191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372359 (n + 1)) (A293441 n ^ 2)

end

end A372353.P10107233428744995191

/-! ## A372353.P9718927752762447456

`A372359(n+1)+A008683(∑[72*n+16])`
-/

namespace A372353.P9718927752762447456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372359 (n + 1) + A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372353.P9718927752762447456

/-! ## A372353.P15761278320519028638

`A372359(n+1)/A115582(A349000(n))`
-/

namespace A372353.P15761278320519028638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372359 (n + 1) : ℚ) / (A115582 (A349000 n).toNat : ℚ)

end

end A372353.P15761278320519028638

/-! ## A372353.P15260387796173984205

`A372359(n+1)+A000007(A072381(n+1))`
-/

namespace A372353.P15260387796173984205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372359 (n + 1) + A000007 (A072381 (n + 1)).toNat

end

end A372353.P15260387796173984205

/-! ## A372353.P1886268182337158107

`A003415(A152451(n+4))*A372359(n+1)`
-/

namespace A372353.P1886268182337158107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A152451 (n + 4)).toNat * A372359 (n + 1)

end

end A372353.P1886268182337158107

/-! ## A372353.P9651181635131110976

`lcm(A100047(A303646(n+1)), A372359(n+1))`
-/

namespace A372353.P9651181635131110976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100047 (A303646 (n + 1)).toNat) (A372359 (n + 1))

end

end A372353.P9651181635131110976

/-! ## A372353.P11348620712236170666

`C(A372359(n+1), A181936(A210501(n+1)))`
-/

namespace A372353.P11348620712236170666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A372359 (n + 1)).toNat (A181936 (A210501 (n + 1)).toNat).toNat

end

end A372353.P11348620712236170666

/-! ## A372353.P13227487404150558867

`A372359(n+1)+A000007(A272595(n+1))`
-/

namespace A372353.P13227487404150558867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372359 (n + 1) + A000007 (A272595 (n + 1)).toNat

end

end A372353.P13227487404150558867

/-!
# A372355: Array read by upward antidiagonals: A(n,k) = A372285(1+n, k)-A372285(n, k), n,k >= 1.

The programs for A372355, there is no canonical definition to state claims against.
-/

/-! ## A372355.P1140943078766994112

`A372356(n+1)+A000122(A353719(3*n+1))`
-/

namespace A372355.P1140943078766994112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372356 (n + 1) + A000122 (A353719 (3 * n + 1)).toNat

end

end A372355.P1140943078766994112

/-! ## A372355.P9266972400429311644

`xor(A185118(A100315(n+1)), A372285(n+1))`
-/

namespace A372355.P9266972400429311644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185118 (A100315 (n + 1)).toNat) (A372285 (n + 1))

end

end A372355.P9266972400429311644

/-! ## A372355.P9881538238169866922

`xor(A173584(A007318(3*n)), A372285(n+1))`
-/

namespace A372355.P9881538238169866922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A173584 (A007318 (3 * n)).toNat) (A372285 (n + 1))

end

end A372355.P9881538238169866922

/-! ## A372355.P13943622417611743146

`xor(A212793(A000108(n)), A372285(n+1))`
-/

namespace A372355.P13943622417611743146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A212793 (A000108 n).toNat) (A372285 (n + 1))

end

end A372355.P13943622417611743146

/-! ## A372355.P12741185592967254024

`A372356(n+1)+A036580(A172132(n+1))`
-/

namespace A372355.P12741185592967254024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372356 (n + 1) + A036580 (A172132 (n + 1)).toNat

end

end A372355.P12741185592967254024

/-!
# A372356: Array read by upward antidiagonals: A(n, k) = A372354(1+n,k)-A372354(n,k), n,k >= 1.

The programs for A372356, there is no canonical definition to state claims against.
-/

/-! ## A372356.P18425236917700628976

`A372354(comp[∑[n]])-A372354(n+1)`
-/

namespace A372356.P18425236917700628976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372354 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A372354 (n + 1)

end

end A372356.P18425236917700628976

/-! ## A372356.P10453509467749181234

`A372355(n+1)-A372360(A372398(3*n+1))`
-/

namespace A372356.P10453509467749181234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372355 (n + 1) - A372360 (A372398 (3 * n + 1)).toNat

end

end A372356.P10453509467749181234

/-!
# A372358: a(n) = n XOR A086893(1+A000523(n)), where XOR is a bitwise-XOR, A003987.

The programs for A372358, the canonical program `A372358.P2222053546592064582` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372358 has offset 1).

The definition of A372358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372358.P2222053546592064582

`xor(n+1, A086893(1+A000523(n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A372358

/-- `xor(n+1, A086893(1+A000523(n+1)))` -/
def P2222053546592064582.Spec : Prop :=
  ∀ n, P2222053546592064582.a n = A372358 (n + 1)

theorem P2222053546592064582.correct : P2222053546592064582.Spec := by
  intro n
  simp only [A372358, Nat.add_sub_cancel]

end A372358

/-! ## A372358.P15486915417021650046

`A035327(A258996(n+1))`
-/

namespace A372358.P15486915417021650046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A258996 (n + 1)).toNat

end

end A372358.P15486915417021650046

namespace A372358

/-- `A035327(A258996(n+1))` -/
def P15486915417021650046.Spec : Prop :=
  ∀ n, P15486915417021650046.a n = A372358 (n + 1)

end A372358

/-! ## A372358.P9807263440352392630

`A053645(A332769(n+1))`
-/

namespace A372358.P9807263440352392630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A332769 (n + 1)).toNat

end

end A372358.P9807263440352392630

namespace A372358

/-- `A053645(A332769(n+1))` -/
def P9807263440352392630.Spec : Prop :=
  ∀ n, P9807263440352392630.a n = A372358 (n + 1)

end A372358

/-! ## A372358.P14845495280384607300

`A053645(A258996(2*(n+1))/2)`
-/

namespace A372358.P14845495280384607300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.roundAway ((A258996 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A372358.P14845495280384607300

namespace A372358

/-- `A053645(A258996(2*(n+1))/2)` -/
def P14845495280384607300.Spec : Prop :=
  ∀ n, P14845495280384607300.a n = A372358 (n + 1)

end A372358

/-! ## A372358.P6063849346922670562

`and(A092323(n+1), A332769(n+1))`
-/

namespace A372358.P6063849346922670562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092323 (n + 1)) (A332769 (n + 1))

end

end A372358.P6063849346922670562

namespace A372358

/-- `and(A092323(n+1), A332769(n+1))` -/
def P6063849346922670562.Spec : Prop :=
  ∀ n, P6063849346922670562.a n = A372358 (n + 1)

end A372358

/-! ## A372358.P2565539436223436969

`A164089(2*A332769(n+1))`
-/

namespace A372358.P2565539436223436969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (2 * A332769 (n + 1)).toNat

end

end A372358.P2565539436223436969

namespace A372358

/-- `A164089(2*A332769(n+1))` -/
def P2565539436223436969.Spec : Prop :=
  ∀ n, P2565539436223436969.a n = A372358 (n + 1)

end A372358

/-! ## A372358.P15177225807119456283

`and(A070198(n), A332769(n+1))`
-/

namespace A372358.P15177225807119456283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070198 n) (A332769 (n + 1))

end

end A372358.P15177225807119456283

namespace A372358

/-- `and(A070198(n), A332769(n+1))` -/
def P15177225807119456283.Spec : Prop :=
  ∀ n, P15177225807119456283.a n = A372358 (n + 1)

end A372358

/-!
# A372360: Array read by upward antidiagonals: A(n, k) = A000120(A372361(n, k)), n,k >= 1; Binary weights of terms of arrays A372359 and A372361.

The programs for A372360, there is no canonical definition to state claims against.
-/

/-! ## A372360.P1277699880227769369

`A000120(A372361(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372360.P1277699880227769369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A372361 (n + 1)).toNat

end

end A372360.P1277699880227769369

/-! ## A372360.P15884770556241032086

`A000120(A372358(A372283(n+1)))`
-/

namespace A372360.P15884770556241032086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A372358 (A372283 (n + 1)).toNat).toNat

end

end A372360.P15884770556241032086

/-! ## A372360.P4960693773242830290

`A000120(A372359(n+1))`
-/

namespace A372360.P4960693773242830290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A372359 (n + 1)).toNat

end

end A372360.P4960693773242830290

/-! ## A372360.P17599473933958680380

`A333632(2*A372361(n+1))`
-/

namespace A372360.P17599473933958680380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (2 * A372361 (n + 1)).toNat

end

end A372360.P17599473933958680380

/-! ## A372360.P9319814580526344745

`∑{p}[A372361(n+1), A233867(#)]`
-/

namespace A372360.P9319814580526344745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233867 p

end

end A372360.P9319814580526344745

/-! ## A372360.P6338555983088776541

`A351014(A372359(n+1)%A054429(3*n+1))`
-/

namespace A372360.P6338555983088776541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.tmod (A372359 (n + 1)) (A054429 (3 * n + 1))).toNat

end

end A372360.P6338555983088776541

/-! ## A372360.P697501223007577422

`A302790(2^A372361(n+1))`
-/

namespace A372360.P697501223007577422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302790 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A372361 (n + 1) : ℤ))).toNat

end

end A372360.P697501223007577422

/-! ## A372360.P10074702106986603059

`A333627(A372361(n+1)^2)`
-/

namespace A372360.P10074702106986603059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A372361 (n + 1) ^ 2).toNat

end

end A372360.P10074702106986603059

/-! ## A372360.P16736567964878120875

`A375123(lcm(7, A372361(n+1)))`
-/

namespace A372360.P16736567964878120875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375123 (Int.lcm 7 (A372361 (n + 1)))

end

end A372360.P16736567964878120875

/-! ## A372360.P15699035885678304955

`A001221(A372361(n+1)^A372361(n+1))`
-/

namespace A372360.P15699035885678304955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A372361 (n + 1) : ℚ) ^ (A372361 (n + 1) : ℤ))).toNat

end

end A372360.P15699035885678304955

/-!
# A372361: Array read by upward antidiagonals: A(n, k) = A372358(A372283(n, k)), n,k >= 1.

The programs for A372361, there is no canonical definition to state claims against.
-/

/-! ## A372361.P10370088636302246769

`A372358(A372283(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372361.P10370088636302246769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372358 (A372283 (n + 1)).toNat

end

end A372361.P10370088636302246769

/-!
# A372362: a(n) is the 2-adic valuation of 1 + 3*{the n-th iterate of 27 with Reduced Collatz-function R}.

The programs for A372362, there is no canonical definition to state claims against.
-/

/-! ## A372362.P13680712141190482996

`A371093(A372443(n))`
-/

namespace A372362.P13680712141190482996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371093 (A372443 n).toNat

end

end A372362.P13680712141190482996

/-! ## A372362.P10858865033849461299

`A136480(3*A372443(n))`
-/

namespace A372362.P10858865033849461299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (3 * A372443 n).toNat

end

end A372362.P10858865033849461299

/-! ## A372362.P14950263885047280342

`A372447(n)+A372448(n)-A372449(n)`
-/

namespace A372362.P14950263885047280342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372447 n + (A372448 n - A372449 n)

end

end A372362.P14950263885047280342

/-! ## A372362.P15034863175680017521

`A001222(gcd(A029744(2*(n+1)), A372446(n)))`
-/

namespace A372362.P15034863175680017521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A029744 (2 * (n + 1))) (A372446 n))

end

end A372362.P15034863175680017521

/-! ## A372362.P10747572626681758531

`A372437(A372446(n)%A372455(n+2))`
-/

namespace A372362.P10747572626681758531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372437 (Int.tmod (A372446 n) (A372455 (n + 2))).toNat

end

end A372362.P10747572626681758531

/-!
# A372368: a(1) = 1. Thereafter, if A007947(a(n-1)) is a term in A002110, a(n) is the smallest prime not already in the sequence. Otherwise a(n) is the smallest novel multiple of p, the greatest prime < g = gpf(a(n-1)).

The programs for A372368, there is no canonical definition to state claims against.
-/

/-! ## A372368.P17938712043275713796

`A376865(n+1)%(A324695(2*n+1)+1)`
-/

namespace A372368.P17938712043275713796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376865 (n + 1)) (A324695 (2 * n + 1) + 1)

end

end A372368.P17938712043275713796

/-! ## A372368.P13924424059457730372

`A376865(n+1)+A000007(A284921(n+1))`
-/

namespace A372368.P13924424059457730372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376865 (n + 1) + A000007 (A284921 (n + 1)).toNat

end

end A372368.P13924424059457730372

/-! ## A372368.P6803926324277443300

`A376865(n+1)+A335520(A020757(n+1))`
-/

namespace A372368.P6803926324277443300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376865 (n + 1) + A335520 (A020757 (n + 1)).toNat

end

end A372368.P6803926324277443300

/-! ## A372368.P6359354085642548105

`A376865(n+1)+A010051(A232515(n+3))`
-/

namespace A372368.P6359354085642548105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376865 (n + 1) + A010051 (A232515 (n + 3)).toNat

end

end A372368.P6359354085642548105

/-! ## A372368.P5312479758784663217

`and(A359085(n+1), A376865(n+1))`
-/

namespace A372368.P5312479758784663217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359085 (n + 1)) (A376865 (n + 1))

end

end A372368.P5312479758784663217

/-!
# A372369: Coefficient of x^n in the expansion of ( (1+x+x^2)^3 / (1+x) )^n.

The programs for A372369, there is no canonical definition to state claims against.
-/

/-! ## A372369.P17999636536340320818

`A359489(n)-A304081(A162650(n))`
-/

namespace A372369.P17999636536340320818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359489 n - A304081 (A162650 n).toNat

end

end A372369.P17999636536340320818

/-!
# A372370: Coefficient of x^n in the expansion of ( (1+x+x^2)^2 / (1+x) )^n.

The programs for A372370, there is no canonical definition to state claims against.
-/

/-! ## A372370.P8019240427234255041

`A158793(∑[4*n])`
-/

namespace A372370.P8019240427234255041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158793 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372370.P8019240427234255041

/-! ## A372370.P6395420785283659962

`A124279(A062728(n))`
-/

namespace A372370.P6395420785283659962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A062728 n).toNat

end

end A372370.P6395420785283659962

/-! ## A372370.P1752145945939835392

`A124445(A062725(n))`
-/

namespace A372370.P1752145945939835392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 (A062725 n).toNat

end

end A372370.P1752145945939835392

/-! ## A372370.P13403233129457111982

`A124279(A062725(n)+n)`
-/

namespace A372370.P13403233129457111982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124279 (A062725 n + (n : ℤ)).toNat

end

end A372370.P13403233129457111982

/-! ## A372370.P1216709685097670904

`A124445(A062728(n)-n)`
-/

namespace A372370.P1216709685097670904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 (A062728 n - (n : ℤ)).toNat

end

end A372370.P1216709685097670904

/-!
# A372371: Coefficient of x^n in the expansion of ( (1+x+x^3)^2 / (1+x) )^n.

The programs for A372371, there is no canonical definition to state claims against.
-/

/-! ## A372371.P12233903796201938899

`A113246(A084214(n))`
-/

namespace A372371.P12233903796201938899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113246 (A084214 n).toNat

end

end A372371.P12233903796201938899

/-! ## A372371.P8724654184380098864

`A331425(A056364(n))`
-/

namespace A372371.P8724654184380098864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (A056364 n).toNat

end

end A372371.P8724654184380098864

/-! ## A372371.P7205041354395205093

`A331425(A071879(n))`
-/

namespace A372371.P7205041354395205093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (A071879 n).toNat

end

end A372371.P7205041354395205093

/-!
# A372372: Coefficient of x^n in the expansion of ( (1+x+x^3)^3 / (1+x) )^n.

The programs for A372372, there is no canonical definition to state claims against.
-/

/-! ## A372372.P6190600220281953133

`A060715(A090012(n+1))-A282132(n+1)`
-/

namespace A372372.P6190600220281953133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A090012 (n + 1)).toNat - A282132 (n + 1)

end

end A372372.P6190600220281953133

/-!
# A372374: Coefficient of x^n in the expansion of (1+x+x^3)^(3*n).

The programs for A372374, there is no canonical definition to state claims against.
-/

/-! ## A372374.P13556813672442637733

`A038717(A022284(n))`
-/

namespace A372374.P13556813672442637733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038717 (A022284 n).toNat

end

end A372374.P13556813672442637733

/-! ## A372374.P9650074470271260552

`A286180(C(A139276(n), A367419(n+1)))`
-/

namespace A372374.P9650074470271260552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (Nat.choose (A139276 n).toNat (A367419 (n + 1)).toNat)

end

end A372374.P9650074470271260552

/-!
# A372375: Expansion of (1/x) * Series_Reversion( x * (1+x) / (1+x+x^3)^2 ).

The programs for A372375, there is no canonical definition to state claims against.
-/

/-! ## A372375.P1760397664883805838

`A189302(A007476(n))`
-/

namespace A372375.P1760397664883805838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (A007476 n).toNat

end

end A372375.P1760397664883805838

/-!
# A372376: Expansion of (1/x) * Series_Reversion( x * (1+x) / (1+x+x^3)^3 ).

The programs for A372376, there is no canonical definition to state claims against.
-/

/-! ## A372376.P14786019643297699137

`A306904(A151105(n))`
-/

namespace A372376.P14786019643297699137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306904 (A151105 n).toNat

end

end A372376.P14786019643297699137

/-! ## A372376.P11416905777488053204

`A305962(2*n+1)+A246277(A006139(n))`
-/

namespace A372376.P11416905777488053204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 (2 * n + 1) + A246277 (A006139 n).toNat

end

end A372376.P11416905777488053204

/-! ## A372376.P7189942348196734535

`or(A008619(A006139(n)), A336836(3*n+2))`
-/

namespace A372376.P7189942348196734535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 (A006139 n).toNat) (A336836 (3 * n + 2))

end

end A372376.P7189942348196734535

/-!
# A372378: Expansion of (1/x) * Series_Reversion( x / (1+x+x^3)^3 ).

The programs for A372378, there is no canonical definition to state claims against.
-/

/-! ## A372378.P16123594590804503106

`A036997(A002893(n))+A006077(n)`
-/

namespace A372378.P16123594590804503106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (A002893 n).toNat + A006077 n

end

end A372378.P16123594590804503106

/-! ## A372378.P8734698366705928887

`or(A174869(A369616(n)), A369616(n))`
-/

namespace A372378.P8734698366705928887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174869 (A369616 n).toNat) (A369616 n)

end

end A372378.P8734698366705928887

/-!
# A372379: The largest divisor of n whose number of divisors is a power of 2.

The programs for A372379, there is no canonical definition to state claims against.
-/

/-! ## A372379.P6894171895790305174

`A372329(A019554(n+1))`
-/

namespace A372379.P6894171895790305174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372329 (A019554 (n + 1)).toNat

end

end A372379.P6894171895790305174

/-! ## A372379.P12555929962237716616

`A331738(A053143(n+1))`
-/

namespace A372379.P12555929962237716616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (A053143 (n + 1)).toNat

end

end A372379.P12555929962237716616

/-! ## A372379.P12340916069965769592

`A331738(A064549(n+1))*A331738(n+1)`
-/

namespace A372379.P12340916069965769592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (A064549 (n + 1)).toNat * A331738 (n + 1)

end

end A372379.P12340916069965769592

/-! ## A372379.P1777826738773319898

`A331738(A137933(n+1)/(A008836(n+1)*A358272(n+1)))`
-/

namespace A372379.P1777826738773319898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (SequenceMachineLib.roundAway ((A137933 (n + 1) : ℚ) / (A008836 (n + 1) * A358272 (n + 1) : ℚ))).toNat

end

end A372379.P1777826738773319898

/-! ## A372379.P16607132936587191321

`A356191(A053166((n+1)²))`
-/

namespace A372379.P16607132936587191321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (A053166 ((n + 1) ^ 2)).toNat

end

end A372379.P16607132936587191321

/-! ## A372379.P11621364623258484863

`A102631(A019555(A019554(n+1)²))`
-/

namespace A372379.P11621364623258484863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A019555 (A019554 (n + 1) ^ 2).toNat).toNat

end

end A372379.P11621364623258484863

/-! ## A372379.P1416332840049116912

`A019554(A159253(A019554(n+1)²))`
-/

namespace A372379.P1416332840049116912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A159253 (A019554 (n + 1) ^ 2).toNat).toNat

end

end A372379.P1416332840049116912

/-! ## A372379.P2589299722374732757

`A372329(A019555((n+1)*A019555(n+1)))`
-/

namespace A372379.P2589299722374732757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372329 (A019555 ((n + 1 : ℤ) * A019555 (n + 1)).toNat).toNat

end

end A372379.P2589299722374732757

/-! ## A372379.P6033276198350098301

`A356191(A356191(A053166((n+1)*(n+1))))`
-/

namespace A372379.P6033276198350098301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (A356191 (A053166 ((n + 1) * (n + 1))).toNat).toNat

end

end A372379.P6033276198350098301

/-!
# A372380: The number of divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A372380, the canonical program `A372380.P16009025847209616017` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372380 has offset 1).

The definition of A372380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372380.P1399385396783804805

`∑{d}[n+1, A359473(#)]`
-/

namespace A372380.P1399385396783804805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359473 d

end

end A372380.P1399385396783804805

namespace A372380

/-- `∑{d}[n+1, A359473(#)]` -/
def P1399385396783804805.Spec : Prop :=
  ∀ n, P1399385396783804805.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P16009025847209616017

`∏{e}[n+1, A070939(#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A372380

/-- `∏{e}[n+1, A070939(#+1)]` -/
def P16009025847209616017.Spec : Prop :=
  ∀ n, P16009025847209616017.a n = A372380 (n + 1)

theorem P16009025847209616017.correct : P16009025847209616017.Spec := by
  intro n
  simp only [A372380, Nat.add_sub_cancel]

end A372380

/-! ## A372380.P16823896081487994780

`∏{e}[n+1, A113473(#+1)]`
-/

namespace A372380.P16823896081487994780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A113473 (Nat.factorization (f1 n) p + 1)

end

end A372380.P16823896081487994780

namespace A372380

/-- `∏{e}[n+1, A113473(#+1)]` -/
def P16823896081487994780.Spec : Prop :=
  ∀ n, P16823896081487994780.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P13877993986925526345

`∏{e}[(n+1)/∏{p}[n+1, #^val(n+1, #²)], A070941(#)]`
-/

namespace A372380.P13877993986925526345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A070941 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A372380.P13877993986925526345

namespace A372380

/-- `∏{e}[(n+1)/∏{p}[n+1, #^val(n+1, #²)], A070941(#)]` -/
def P13877993986925526345.Spec : Prop :=
  ∀ n, P13877993986925526345.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P11493112674254010962

`∏{e}[(n+1)², A134021(#)]`
-/

namespace A372380.P11493112674254010962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A134021 (Nat.factorization (f1 n) p)

end

end A372380.P11493112674254010962

namespace A372380

/-- `∏{e}[(n+1)², A134021(#)]` -/
def P11493112674254010962.Spec : Prop :=
  ∀ n, P11493112674254010962.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P14545352044689706712

`A380922(n+1)%A187702(A005361(n+1))`
-/

namespace A372380.P14545352044689706712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380922 (n + 1)) (A187702 (A005361 (n + 1)).toNat)

end

end A372380.P14545352044689706712

namespace A372380

/-- `A380922(n+1)%A187702(A005361(n+1))` -/
def P14545352044689706712.Spec : Prop :=
  ∀ n, P14545352044689706712.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P16552745110826101432

`and(A380922(n+1), A381707(n+1))`
-/

namespace A372380.P16552745110826101432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A380922 (n + 1)) (A381707 (n + 1))

end

end A372380.P16552745110826101432

namespace A372380

/-- `and(A380922(n+1), A381707(n+1))` -/
def P16552745110826101432.Spec : Prop :=
  ∀ n, P16552745110826101432.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P15026625244353359271

`and(A086827(n+1), A380922(n+1))`
-/

namespace A372380.P15026625244353359271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A380922 (n + 1))

end

end A372380.P15026625244353359271

namespace A372380

/-- `and(A086827(n+1), A380922(n+1))` -/
def P15026625244353359271.Spec : Prop :=
  ∀ n, P15026625244353359271.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P4682169375235857440

`gcd(A094941(n), A380922(n+1))`
-/

namespace A372380.P4682169375235857440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094941 n) (A380922 (n + 1))

end

end A372380.P4682169375235857440

namespace A372380

/-- `gcd(A094941(n), A380922(n+1))` -/
def P4682169375235857440.Spec : Prop :=
  ∀ n, (P4682169375235857440.a n : ℤ) = A372380 (n + 1)

end A372380

/-! ## A372380.P1196826295293751060

`A365488(∏{p}[n+1, gcd(n+1, #^3)]*∏{p}[n+1, #])`
-/

namespace A372380.P1196826295293751060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 3)) * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A372380.P1196826295293751060

namespace A372380

/-- `A365488(∏{p}[n+1, gcd(n+1, #^3)]*∏{p}[n+1, #])` -/
def P1196826295293751060.Spec : Prop :=
  ∀ n, P1196826295293751060.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P319186064488249555

`A061389(A053143(n+1))`
-/

namespace A372380.P319186064488249555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A053143 (n + 1)).toNat

end

end A372380.P319186064488249555

namespace A372380

/-- `A061389(A053143(n+1))` -/
def P319186064488249555.Spec : Prop :=
  ∀ n, P319186064488249555.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P13977195893340247966

`A061389(A390694(n+1))`
-/

namespace A372380.P13977195893340247966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A390694 (n + 1)).toNat

end

end A372380.P13977195893340247966

namespace A372380

/-- `A061389(A390694(n+1))` -/
def P13977195893340247966.Spec : Prop :=
  ∀ n, P13977195893340247966.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P17529750911459339488

`A383292(A197863(n+1))`
-/

namespace A372380.P17529750911459339488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383292 (A197863 (n + 1)).toNat

end

end A372380.P17529750911459339488

namespace A372380

/-- `A383292(A197863(n+1))` -/
def P17529750911459339488.Spec : Prop :=
  ∀ n, P17529750911459339488.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P10731488202587107273

`A365488(A019554(n+1)²)`
-/

namespace A372380.P10731488202587107273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A019554 (n + 1) ^ 2).toNat

end

end A372380.P10731488202587107273

namespace A372380

/-- `A365488(A019554(n+1)²)` -/
def P10731488202587107273.Spec : Prop :=
  ∀ n, P10731488202587107273.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P8395578828717748834

`A380922(A372379(n+1)²)`
-/

namespace A372380.P8395578828717748834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380922 (A372379 (n + 1) ^ 2).toNat

end

end A372380.P8395578828717748834

namespace A372380

/-- `A380922(A372379(n+1)²)` -/
def P8395578828717748834.Spec : Prop :=
  ∀ n, P8395578828717748834.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P9336482361927128470

`A392451(A372379(n+1)²)`
-/

namespace A372380.P9336482361927128470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392451 (A372379 (n + 1) ^ 2).toNat

end

end A372380.P9336482361927128470

namespace A372380

/-- `A392451(A372379(n+1)²)` -/
def P9336482361927128470.Spec : Prop :=
  ∀ n, P9336482361927128470.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P12828596997224522575

`A365488(A053166((n+1)²)²)`
-/

namespace A372380.P12828596997224522575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A053166 ((n + 1) ^ 2) ^ 2).toNat

end

end A372380.P12828596997224522575

namespace A372380

/-- `A365488(A053166((n+1)²)²)` -/
def P12828596997224522575.Spec : Prop :=
  ∀ n, P12828596997224522575.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P8783938148294537752

`A000005(A019555(A019554(n+1)²))`
-/

namespace A372380.P8783938148294537752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019555 (A019554 (n + 1) ^ 2).toNat).toNat

end

end A372380.P8783938148294537752

namespace A372380

/-- `A000005(A019555(A019554(n+1)²))` -/
def P8783938148294537752.Spec : Prop :=
  ∀ n, P8783938148294537752.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P3625149609776172788

`A353898(A372379(A372379(n+1)²))`
-/

namespace A372380.P3625149609776172788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 (A372379 (A372379 (n + 1) ^ 2).toNat).toNat

end

end A372380.P3625149609776172788

namespace A372380

/-- `A353898(A372379(A372379(n+1)²))` -/
def P3625149609776172788.Spec : Prop :=
  ∀ n, P3625149609776172788.a n = A372380 (n + 1)

end A372380

/-! ## A372380.P4241433629098761563

`A365488(A019554(n+1)*A019554(n+1))`
-/

namespace A372380.P4241433629098761563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A019554 (n + 1) * A019554 (n + 1)).toNat

end

end A372380.P4241433629098761563

namespace A372380

/-- `A365488(A019554(n+1)*A019554(n+1))` -/
def P4241433629098761563.Spec : Prop :=
  ∀ n, P4241433629098761563.a n = A372380 (n + 1)

end A372380

/-!
# A372381: The number of divisors of the largest divisor of n whose number of divisors is a power of 2.

The programs for A372381, the canonical program `A372381.P12777939245543083101` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372381 has offset 1).

The definition of A372381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372381.P13615600941217018830

`A000005(A372379(n+1))`
-/

namespace A372381.P13615600941217018830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A372379 (n + 1)).toNat

end

end A372381.P13615600941217018830

namespace A372381

/-- `A000005(A372379(n+1))` -/
def P13615600941217018830.Spec : Prop :=
  ∀ n, P13615600941217018830.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P12777939245543083101

`∏{e}[n+1, A053644(#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A372381

/-- `∏{e}[n+1, A053644(#+1)]` -/
def P12777939245543083101.Spec : Prop :=
  ∀ n, P12777939245543083101.a n = A372381 (n + 1)

theorem P12777939245543083101.correct : P12777939245543083101.Spec := by
  intro n
  simp only [A372381, Nat.add_sub_cancel]

end A372381

/-! ## A372381.P8396808601979421468

`A000079(val(A253139(n+1), 2))`
-/

namespace A372381.P8396808601979421468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A253139 (n + 1)).toNat 2)

end

end A372381.P8396808601979421468

namespace A372381

/-- `A000079(val(A253139(n+1), 2))` -/
def P8396808601979421468.Spec : Prop :=
  ∀ n, P8396808601979421468.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P8514862121850316587

`A037445(A372379(2*n+1-n))`
-/

namespace A372381.P8514862121850316587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A372379 (2 * n + 1 - n)).toNat

end

end A372381.P8514862121850316587

namespace A372381

/-- `A037445(A372379(2*n+1-n))` -/
def P8514862121850316587.Spec : Prop :=
  ∀ n, P8514862121850316587.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P17359635736935609375

`gcd(A000079(n), A253139(n+1))`
-/

namespace A372381.P17359635736935609375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A253139 (n + 1))

end

end A372381.P17359635736935609375

namespace A372381

/-- `gcd(A000079(n), A253139(n+1))` -/
def P17359635736935609375.Spec : Prop :=
  ∀ n, (P17359635736935609375.a n : ℤ) = A372381 (n + 1)

end A372381

/-! ## A372381.P7864418312147056382

`gcd(A005015(n), A265392(n+1))`
-/

namespace A372381.P7864418312147056382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005015 n) (A265392 (n + 1))

end

end A372381.P7864418312147056382

namespace A372381

/-- `gcd(A005015(n), A265392(n+1))` -/
def P7864418312147056382.Spec : Prop :=
  ∀ n, (P7864418312147056382.a n : ℤ) = A372381 (n + 1)

end A372381

/-! ## A372381.P10992893128268067399

`gcd(A265392(n+1)+A067068(n+1), A067068(n+1))`
-/

namespace A372381.P10992893128268067399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265392 (n + 1) + A067068 (n + 1)) (A067068 (n + 1))

end

end A372381.P10992893128268067399

namespace A372381

/-- `gcd(A265392(n+1)+A067068(n+1), A067068(n+1))` -/
def P10992893128268067399.Spec : Prop :=
  ∀ n, (P10992893128268067399.a n : ℤ) = A372381 (n + 1)

end A372381

/-! ## A372381.P14898017436678243451

`gcd(A265392(n+1)+A162562(n), A162562(n))`
-/

namespace A372381.P14898017436678243451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265392 (n + 1) + A162562 n) (A162562 n)

end

end A372381.P14898017436678243451

namespace A372381

/-- `gcd(A265392(n+1)+A162562(n), A162562(n))` -/
def P14898017436678243451.Spec : Prop :=
  ∀ n, (P14898017436678243451.a n : ℤ) = A372381 (n + 1)

end A372381

/-! ## A372381.P17130788343714164032

`A049419(A350390(n+1)²)`
-/

namespace A372381.P17130788343714164032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A350390 (n + 1) ^ 2).toNat

end

end A372381.P17130788343714164032

namespace A372381

/-- `A049419(A350390(n+1)²)` -/
def P17130788343714164032.Spec : Prop :=
  ∀ n, P17130788343714164032.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P8092243776371167600

`A037445(A372379(n+1)²)`
-/

namespace A372381.P8092243776371167600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A372379 (n + 1) ^ 2).toNat

end

end A372381.P8092243776371167600

namespace A372381

/-- `A037445(A372379(n+1)²)` -/
def P8092243776371167600.Spec : Prop :=
  ∀ n, P8092243776371167600.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P4901270980569455253

`A278908(A365683(n+1)²)`
-/

namespace A372381.P4901270980569455253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A365683 (n + 1) ^ 2).toNat

end

end A372381.P4901270980569455253

namespace A372381

/-- `A278908(A365683(n+1)²)` -/
def P4901270980569455253.Spec : Prop :=
  ∀ n, P4901270980569455253.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P4369306006970573067

`A322483(A372379(n+1)²)`
-/

namespace A372381.P4369306006970573067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A372379 (n + 1) ^ 2).toNat

end

end A372381.P4369306006970573067

namespace A372381

/-- `A322483(A372379(n+1)²)` -/
def P4369306006970573067.Spec : Prop :=
  ∀ n, P4369306006970573067.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P15930711957953661292

`A278908((n+1)*A338782(n+1))`
-/

namespace A372381.P15930711957953661292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 ((n + 1 : ℤ) * A338782 (n + 1)).toNat

end

end A372381.P15930711957953661292

namespace A372381

/-- `A278908((n+1)*A338782(n+1))` -/
def P15930711957953661292.Spec : Prop :=
  ∀ n, P15930711957953661292.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P4223288706900012247

`A358260((n+1)*A338782(n+1))`
-/

namespace A372381.P4223288706900012247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358260 ((n + 1 : ℤ) * A338782 (n + 1)).toNat

end

end A372381.P4223288706900012247

namespace A372381

/-- `A358260((n+1)*A338782(n+1))` -/
def P4223288706900012247.Spec : Prop :=
  ∀ n, P4223288706900012247.a n = A372381 (n + 1)

end A372381

/-! ## A372381.P10868055513760412683

`A000005(A356191(A053166((n+1)²)))`
-/

namespace A372381.P10868055513760412683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356191 (A053166 ((n + 1) ^ 2)).toNat).toNat

end

end A372381.P10868055513760412683

namespace A372381

/-- `A000005(A356191(A053166((n+1)²)))` -/
def P10868055513760412683.Spec : Prop :=
  ∀ n, P10868055513760412683.a n = A372381 (n + 1)

end A372381

/-!
# A372382: Coefficient of x^n in the expansion of ( (1+x+x^2)^4 / (1+x)^3 )^n.

The programs for A372382, there is no canonical definition to state claims against.
-/

/-! ## A372382.P9174341234841768441

`A158793(A139277(n))`
-/

namespace A372382.P9174341234841768441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158793 (A139277 n).toNat

end

end A372382.P9174341234841768441

/-! ## A372382.P15169097263010027592

`A158793(n*A004770(n+1))`
-/

namespace A372382.P15169097263010027592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158793 ((n : ℤ) * A004770 (n + 1)).toNat

end

end A372382.P15169097263010027592

/-!
# A372383: Expansion of (1/x) * Series_Reversion( x * (1+x)^3 / (1+x+x^2)^4 ).

The programs for A372383, there is no canonical definition to state claims against.
-/

/-! ## A372383.P1168962685743793299

`A355530(A005388(n))-A028262(n)`
-/

namespace A372383.P1168962685743793299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355530 (A005388 n).toNat - A028262 n

end

end A372383.P1168962685743793299

/-! ## A372383.P13269576308433979073

`A111083(C(A000108(n), A205497(n)))`
-/

namespace A372383.P13269576308433979073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111083 (Nat.choose (A000108 n).toNat (A205497 n).toNat)

end

end A372383.P13269576308433979073

/-!
# A372395: Total number of acyclic orientations in all complete multipartite graphs K_lambda, where lambda ranges over all partitions of n.

The programs for A372395, there is no canonical definition to state claims against.
-/

/-! ## A372395.P493208092164289686

`A342497(A014314(n))`
-/

namespace A372395.P493208092164289686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A014314 n).toNat

end

end A372395.P493208092164289686

/-! ## A372395.P10434149878666135775

`A230198(11*A005315(n))`
-/

namespace A372395.P10434149878666135775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230198 (11 * A005315 n).toNat

end

end A372395.P10434149878666135775

/-!
# A372397: Numbers occurring exactly twice in Hofstadter G/H-like sequence H_4 (A005375).

The programs for A372397, the canonical program `A372397.P7539782668515379309` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372397 has offset 1).

The definition of A372397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372397.P10419881492250840888

`A194081(A194081(A194081(n+1)))`
-/

namespace A372397.P10419881492250840888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 (A194081 (A194081 (n + 1)).toNat).toNat

end

end A372397.P10419881492250840888

namespace A372397

/-- `A194081(A194081(A194081(n+1)))` -/
def P10419881492250840888.Spec : Prop :=
  ∀ n, P10419881492250840888.a n = A372397 (n + 1)

end A372397

/-! ## A372397.P7539782668515379309

`∩[A005375(2*n+1), A005375(2*n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A372397

/-- `∩[A005375(2*n+1), A005375(2*n)]` -/
def P7539782668515379309.Spec : Prop :=
  ∀ n, (P7539782668515379309.a n : ℤ) = A372397 (n + 1)

theorem P7539782668515379309.correct : P7539782668515379309.Spec := by
  intro n
  simp only [A372397, Nat.add_sub_cancel]

end A372397

/-! ## A372397.P6246044105852582356

`lt[A048718(n)%8, 1]+1`
-/

namespace A372397.P6246044105852582356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048718 n) 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A372397.P6246044105852582356

namespace A372397

/-- `lt[A048718(n)%8, 1]+1` -/
def P6246044105852582356.Spec : Prop :=
  ∀ n, (P6246044105852582356.a n : ℤ) = A372397 (n + 1)

end A372397

/-! ## A372397.P2756464270955825680

`lt[A138297(n+1), 2]+1`
-/

namespace A372397.P2756464270955825680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138297 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A372397.P2756464270955825680

namespace A372397

/-- `lt[A138297(n+1), 2]+1` -/
def P2756464270955825680.Spec : Prop :=
  ∀ n, (P2756464270955825680.a n : ℤ) = A372397 (n + 1)

end A372397

