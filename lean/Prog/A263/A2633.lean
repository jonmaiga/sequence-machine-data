import SequenceMachineLib
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

/-!
# A263300: Number of (n+3)X(2+3) 0..1 arrays with each row divisible by 13 and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263300, there is no canonical definition to state claims against.
-/

/-! ## A263300.P6539551301250910289

`A263303(∑[n+2])`
-/

namespace A263300.P6539551301250910289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263300.P6539551301250910289

/-! ## A263300.P11036389774588171029

`lcm(2, A263303(A000096(n+1)))`
-/

namespace A263300.P11036389774588171029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263303 (A000096 (n + 1)).toNat)

end

end A263300.P11036389774588171029

/-! ## A263300.P16670286452262021801

`record[A010054(n+3)*A263303(n+2)]`
-/

namespace A263300.P16670286452262021801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A263303 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263300.P16670286452262021801

/-! ## A263300.P4329398729672992556

`A263303(A000096(n+1))%A082949(n+1)`
-/

namespace A263300.P4329398729672992556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263303 (A000096 (n + 1)).toNat) (A082949 (n + 1))

end

end A263300.P4329398729672992556

/-!
# A263301: Number of (n+3)X(3+3) 0..1 arrays with each row divisible by 13 and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263301, there is no canonical definition to state claims against.
-/

/-! ## A263301.P11858337304887408174

`A263303(∑[n+3]+1)`
-/

namespace A263301.P11858337304887408174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263301.P11858337304887408174

/-!
# A263302: Number of (n+3)X(4+3) 0..1 arrays with each row divisible by 13 and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263302, there is no canonical definition to state claims against.
-/

/-! ## A263302.P9799284928875675358

`A263303(A141214(n+1))`
-/

namespace A263302.P9799284928875675358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (A141214 (n + 1)).toNat

end

end A263302.P9799284928875675358

/-! ## A263302.P8077123356922540792

`A263303(A055998(n+2))`
-/

namespace A263302.P8077123356922540792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (A055998 (n + 2)).toNat

end

end A263302.P8077123356922540792

/-!
# A263303: T(n,k)=Number of (n+3)X(k+3) 0..1 arrays with each row divisible by 13 and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263303, there is no canonical definition to state claims against.
-/

/-! ## A263303.P14179740058282736624

`A001768(2*n+3)*A056239(A353700(n+2))`
-/

namespace A263303.P14179740058282736624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001768 (2 * n + 3) * A056239 (A353700 (n + 2)).toNat

end

end A263303.P14179740058282736624

/-!
# A263304: Number of (1+3)X(n+3) 0..1 arrays with each row divisible by 13 and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263304, there is no canonical definition to state claims against.
-/

/-! ## A263304.P12886951289956086339

`A263303(∑[n]+1)`
-/

namespace A263304.P12886951289956086339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263304.P12886951289956086339

/-! ## A263304.P35888191938215546

`lcm(2, A263303(A000124(n)))`
-/

namespace A263304.P35888191938215546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263303 (A000124 n).toNat)

end

end A263304.P35888191938215546

/-! ## A263304.P3108442168151596122

`record[A263303(∑[A057979(n)])]`
-/

namespace A263304.P3108442168151596122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263304.P3108442168151596122

/-! ## A263304.P8245107469099750319

`record[A263303(A114091(n+1))]`
-/

namespace A263304.P8245107469099750319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263304.P8245107469099750319

/-! ## A263304.P1397783369218941621

`record[A263303(A286235(n+1))]`
-/

namespace A263304.P1397783369218941621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263304.P1397783369218941621

/-!
# A263305: Number of (2+3) X (n+3) 0..1 arrays with each row divisible by 13 and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263305, there is no canonical definition to state claims against.
-/

/-! ## A263305.P4897493444040627840

`A263303(∑[n+1]+2)`
-/

namespace A263305.P4897493444040627840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263305.P4897493444040627840

/-! ## A263305.P3969606390976812130

`record[A263303(A072233(n)+n)]`
-/

namespace A263305.P3969606390976812130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (A072233 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263305.P3969606390976812130

/-! ## A263305.P7893790199603206875

`record[A263303(record[A194919(n+1)])]`
-/

namespace A263305.P7893790199603206875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263305.P7893790199603206875

/-! ## A263305.P1910714790610799730

`record[and(A174888(n+1), A263303(n+1))]`
-/

namespace A263305.P1910714790610799730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174888 (n + 1)) (A263303 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263305.P1910714790610799730

/-!
# A263306: Number of (3+3)X(n+3) 0..1 arrays with each row divisible by 13 and column not divisible by 13, read as a binary number with top and left being the most significant bits.

The programs for A263306, there is no canonical definition to state claims against.
-/

/-! ## A263306.P3119058761285704772

`A263303(∑[n+2]+4)`
-/

namespace A263306.P3119058761285704772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263306.P3119058761285704772

/-! ## A263306.P7918211806013284724

`lcm(2, A263303(A167614(n+1)))`
-/

namespace A263306.P7918211806013284724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263303 (A167614 (n + 1)).toNat)

end

end A263306.P7918211806013284724

/-! ## A263306.P14891599948025050323

`A263303(A167614(n+1))+A011731(n)`
-/

namespace A263306.P14891599948025050323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263303 (A167614 (n + 1)).toNat + A011731 n

end

end A263306.P14891599948025050323

/-!
# A263307: Numbers without consecutive repeated digits in base 2 and in base 3.

The programs for A263307, there is no canonical definition to state claims against.
-/

/-! ## A263307.P3060758615117320809

`record[floor(∑[2^n/3])^(ceil(n/5)²%2)]`
-/

namespace A263307.P3060758615117320809
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ : ℚ) ^ (Int.tmod (⌈(n : ℚ) / 5⌉ ^ 2) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263307.P3060758615117320809

/-! ## A263307.P6391591852464566973

`A280148(lt[sqrt(∑{digits}[n, #!]), 10])`
-/

namespace A263307.P6391591852464566973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280148 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n)

end

end A263307.P6391591852464566973

/-! ## A263307.P490987227525664455

`A000975(∑[6^val(n+1, 6)])`
-/

namespace A263307.P490987227525664455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.valuation (n + 1) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263307.P490987227525664455

/-!
# A263309: Numbers k such that p=6k+1 and q=6k+1 are primes.

The programs for A263309, the canonical program `A263309.P14419132455627372225` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263309 has offset 1).

The definition of A263309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263309.P14419132455627372225

`floor(p?[floor(A142102(n+1)/6)]/6)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A263309

/-- `floor(p?[floor(A142102(n+1)/6)]/6)` -/
def P14419132455627372225.Spec : Prop :=
  ∀ n, P14419132455627372225.a n = A263309 (n + 1)

theorem P14419132455627372225.correct : P14419132455627372225.Spec := by
  intro n
  simp only [A263309, Nat.add_sub_cancel]

end A263309

/-! ## A263309.P9013880752257793859

`floor(p?[floor(A061241(n+1)/6)]/6)`
-/

namespace A263309.P9013880752257793859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061241 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A263309.P9013880752257793859

namespace A263309

/-- `floor(p?[floor(A061241(n+1)/6)]/6)` -/
def P9013880752257793859.Spec : Prop :=
  ∀ n, P9013880752257793859.a n = A263309 (n + 1)

end A263309

/-! ## A263309.P8630146687805086695

`floor(p?[A001651(A024910(n+1))]/6)`
-/

namespace A263309.P8630146687805086695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A024910 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A263309.P8630146687805086695

namespace A263309

/-- `floor(p?[A001651(A024910(n+1))]/6)` -/
def P8630146687805086695.Spec : Prop :=
  ∀ n, P8630146687805086695.a n = A263309 (n + 1)

end A263309

/-! ## A263309.P3860988348882968975

`round(p?[A001651(A024910(n+2))]/6)`
-/

namespace A263309.P3860988348882968975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A024910 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6)

end

end A263309.P3860988348882968975

namespace A263309

/-- `round(p?[A001651(A024910(n+2))]/6)` -/
def P3860988348882968975.Spec : Prop :=
  ∀ n, P3860988348882968975.a n = A263309 (n + 1)

end A263309

/-! ## A263309.P4902867791642317108

`A008615(p?[floor(A061241(n+1)/6)])`
-/

namespace A263309.P4902867791642317108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061241 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A263309.P4902867791642317108

namespace A263309

/-- `A008615(p?[floor(A061241(n+1)/6)])` -/
def P4902867791642317108.Spec : Prop :=
  ∀ n, P4902867791642317108.a n = A263309 (n + 1)

end A263309

/-! ## A263309.P18306268832011863339

`A008615(p?[floor(A142102(n+1)/6)])`
-/

namespace A263309.P18306268832011863339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142102 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A263309.P18306268832011863339

namespace A263309

/-- `A008615(p?[floor(A142102(n+1)/6)])` -/
def P18306268832011863339.Spec : Prop :=
  ∀ n, P18306268832011863339.a n = A263309 (n + 1)

end A263309

/-! ## A263309.P12293210111216218245

`floor(record[A014963(A260518(3*(n+1)))]/6)`
-/

namespace A263309.P12293210111216218245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A260518 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6⌋

end

end A263309.P12293210111216218245

namespace A263309

/-- `floor(record[A014963(A260518(3*(n+1)))]/6)` -/
def P12293210111216218245.Spec : Prop :=
  ∀ n, P12293210111216218245.a n = A263309 (n + 1)

end A263309

/-! ## A263309.P14754336406381377226

`floor(A173230(n+1)/6)`
-/

namespace A263309.P14754336406381377226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173230 (n + 1) : ℚ) / 6⌋

end

end A263309.P14754336406381377226

namespace A263309

/-- `floor(A173230(n+1)/6)` -/
def P14754336406381377226.Spec : Prop :=
  ∀ n, P14754336406381377226.a n = A263309 (n + 1)

end A263309

/-! ## A263309.P9236086151155464306

`A008612(A173230(n+1))`
-/

namespace A263309.P9236086151155464306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A173230 (n + 1)).toNat

end

end A263309.P9236086151155464306

namespace A263309

/-- `A008612(A173230(n+1))` -/
def P9236086151155464306.Spec : Prop :=
  ∀ n, P9236086151155464306.a n = A263309 (n + 1)

end A263309

/-!
# A263310: Numbers n such that p=6*n+1, q=6*p+1 and r=6*q+1 are primes.

The programs for A263310, there is no canonical definition to state claims against.
-/

/-! ## A263310.P4445233633367071683

`A008615(∩[A002476(n+1), A023256(n+1)])`
-/

namespace A263310.P4445233633367071683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023256 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A263310.P4445233633367071683

/-! ## A263310.P13838818110711782125

`A008615(∩[A002476(n+1), A263309(n+1)])`
-/

namespace A263310.P13838818110711782125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A263310.P13838818110711782125

/-! ## A263310.P227540806019317219

`A008615(∩[A007645(n+1), A263309(n+1)])`
-/

namespace A263310.P227540806019317219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A263310.P227540806019317219

/-! ## A263310.P1482873704604304877

`A103221(∩[A002476(n+1), A263309(n+1)])`
-/

namespace A263310.P1482873704604304877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A263310.P1482873704604304877

/-! ## A263310.P3005782413725358169

`A103221(∩[A007645(n+1), A263309(n+1)])`
-/

namespace A263310.P3005782413725358169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A263310.P3005782413725358169

/-!
# A263311: Numbers m such that each of p=6*m+1, q=6*p+1, r=6*q+1 and s=6*r+1 is prime.

The programs for A263311, there is no canonical definition to state claims against.
-/

/-! ## A263311.P7432562771761330226

`floor(A210686(n+1)/6)`
-/

namespace A263311.P7432562771761330226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210686 (n + 1) : ℚ) / 6⌋

end

end A263311.P7432562771761330226

/-! ## A263311.P15410482669368433918

`round(A159075(n+2)+A210686(n+1)/6)`
-/

namespace A263311.P15410482669368433918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A159075 (n + 2) : ℚ) + (A210686 (n + 1) : ℚ) / 6)

end

end A263311.P15410482669368433918

/-! ## A263311.P489687842636936001

`round(A210686(n+1)/6)%A157803(n+1)`
-/

namespace A263311.P489687842636936001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A210686 (n + 1) : ℚ) / 6)) (A157803 (n + 1))

end

end A263311.P489687842636936001

/-! ## A263311.P3733503329176713374

`A007318(and(2, -n)!)*round(A210686(n+1)/6)`
-/

namespace A263311.P3733503329176713374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat) * SequenceMachineLib.roundAway ((A210686 (n + 1) : ℚ) / 6)

end

end A263311.P3733503329176713374

/-! ## A263311.P9767519078794477616

`round(A210686(n+1)/6)*A001222(A038879(n+1))`
-/

namespace A263311.P9767519078794477616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210686 (n + 1) : ℚ) / 6) * A001222 (A038879 (n + 1)).toNat

end

end A263311.P9767519078794477616

/-! ## A263311.P9588661658090312355

`round(A210686(n+1)/6)*A001222(A117837(n+1))`
-/

namespace A263311.P9588661658090312355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210686 (n + 1) : ℚ) / 6) * A001222 (A117837 (n + 1)).toNat

end

end A263311.P9588661658090312355

/-! ## A263311.P1498619352578709322

`round(A210686(n+1)/6)*A100051(A117825(n+1))`
-/

namespace A263311.P1498619352578709322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210686 (n + 1) : ℚ) / 6) * A100051 (A117825 (n + 1)).toNat

end

end A263311.P1498619352578709322

/-! ## A263311.P14030320136008025407

`round(A210686(n+1)/6)*A001222(A117838(n+1))`
-/

namespace A263311.P14030320136008025407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210686 (n + 1) : ℚ) / 6) * A001222 (A117838 (n + 1)).toNat

end

end A263311.P14030320136008025407

/-! ## A263311.P342648327771638029

`A000027(round(A210686(n+1)/6))`
-/

namespace A263311.P342648327771638029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A210686 (n + 1) : ℚ) / 6)).toNat

end

end A263311.P342648327771638029

/-! ## A263311.P8773812572153639109

`round(A210686(n+1)/6)*A014963(A081445(n+1))`
-/

namespace A263311.P8773812572153639109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A210686 (n + 1) : ℚ) / 6) * A014963 (A081445 (n + 1)).toNat

end

end A263311.P8773812572153639109

/-! ## A263311.P11359902263744487031

`round(A000038(A257083(n))+A210686(n+1)/6)`
-/

namespace A263311.P11359902263744487031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000038 (A257083 n).toNat : ℚ) + (A210686 (n + 1) : ℚ) / 6)

end

end A263311.P11359902263744487031

/-!
# A263312: Records in A263455.

The programs for A263312, there is no canonical definition to state claims against.
-/

/-! ## A263312.P8115334077222392323

`A073669(A263926(n+1))/A263926(n+1)`
-/

namespace A263312.P8115334077222392323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073669 (A263926 (n + 1)).toNat : ℚ) / (A263926 (n + 1) : ℚ)

end

end A263312.P8115334077222392323

/-! ## A263312.P6869537869160605531

`record[A263455(n+1)]`
-/

namespace A263312.P6869537869160605531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263312.P6869537869160605531

/-! ## A263312.P10733135496907670482

`A263455(A263926(n+1))`
-/

namespace A263312.P10733135496907670482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263455 (A263926 (n + 1)).toNat

end

end A263312.P10733135496907670482

/-!
# A263313: Permutation of the nonnegative integers: [4k+3, 4k, 4k+1, 4k+2, ...].

The programs for A263313, the canonical program `A263313.P843543559793595808` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263313 has offset 0).

The definition of A263313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263313.P2322120924608717218

`n+(-1)^n+2*cos(n*π/2)`
-/

namespace A263313.P2322120924608717218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + (-1) ^ n : ℝ) + 2 * Real.cos ((n : ℝ) * Real.pi / 2)

end

end A263313.P2322120924608717218

namespace A263313

/-- `n+(-1)^n+2*cos(n*π/2)` -/
def P2322120924608717218.Spec : Prop :=
  ∀ n, P2322120924608717218.a n = (A263313 n : ℝ)

end A263313

/-! ## A263313.P843543559793595808

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=0, a(2)=1, a(3)=2, a(4)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263313

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P843543559793595808.Spec : Prop :=
  ∀ n, P843543559793595808.a n = A263313 n

theorem P843543559793595808.correct : P843543559793595808.Spec := by
  intro n
  simp only [A263313]

end A263313

/-! ## A263313.P4292735687579736195

`n+1-2*(-1)^((n+1)*(n+2)*(n+3)/2)`
-/

namespace A263313.P4292735687579736195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - 2 * (-1 : ℝ) ^ (((n + 1) * (n + 2) * (n + 3) : ℚ) / 2 : ℝ)

end

end A263313.P4292735687579736195

namespace A263313

/-- `n+1-2*(-1)^((n+1)*(n+2)*(n+3)/2)` -/
def P4292735687579736195.Spec : Prop :=
  ∀ n, P4292735687579736195.a n = (A263313 n : ℝ)

end A263313

/-! ## A263313.P16216109386071779080

`xor(n, gcd(3, n%2))`
-/

namespace A263313.P16216109386071779080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.gcd 3 (n % 2))

end

end A263313.P16216109386071779080

namespace A263313

/-- `xor(n, gcd(3, n%2))` -/
def P16216109386071779080.Spec : Prop :=
  ∀ n, (P16216109386071779080.a n : ℤ) = A263313 n

end A263313

/-! ## A263313.P11890103873000563685

`xor(gcd(2, n), or(1, n))`
-/

namespace A263313.P11890103873000563685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.gcd 2 n) (Nat.lor 1 n)

end

end A263313.P11890103873000563685

namespace A263313

/-- `xor(gcd(2, n), or(1, n))` -/
def P11890103873000563685.Spec : Prop :=
  ∀ n, (P11890103873000563685.a n : ℤ) = A263313 n

end A263313

/-! ## A263313.P9709097979003725933

`xor(n, (-1)^n+2)`
-/

namespace A263313.P9709097979003725933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n + 2)

end

end A263313.P9709097979003725933

namespace A263313

/-- `xor(n, (-1)^n+2)` -/
def P9709097979003725933.Spec : Prop :=
  ∀ n, P9709097979003725933.a n = A263313 n

end A263313

/-! ## A263313.P5667167757737602342

`(n-1)*ratio[or(3, n-1)]`
-/

namespace A263313.P5667167757737602342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A263313.P5667167757737602342

namespace A263313

/-- `(n-1)*ratio[or(3, n-1)]` -/
def P5667167757737602342.Spec : Prop :=
  ∀ n, P5667167757737602342.a n = (A263313 n : ℚ)

end A263313

/-! ## A263313.P8977044512561041234

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=-3, a(2)=1, a(3)=1, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A263313.P8977044512561041234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -3, 1, 1, 5] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263313.P8977044512561041234

namespace A263313

/-- `∑[floor(a(n-4))]` -/
def P8977044512561041234.Spec : Prop :=
  ∀ n, P8977044512561041234.a n = A263313 n

end A263313

/-! ## A263313.P14369034332696473022

`A159966(xor(1, n))`
-/

namespace A263313.P14369034332696473022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (Nat.xor 1 n)

end

end A263313.P14369034332696473022

namespace A263313

/-- `A159966(xor(1, n))` -/
def P14369034332696473022.Spec : Prop :=
  ∀ n, P14369034332696473022.a n = A263313 n

end A263313

/-! ## A263313.P12964312179211552108

`A159966(A004442(n))`
-/

namespace A263313.P12964312179211552108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A004442 n).toNat

end

end A263313.P12964312179211552108

namespace A263313

/-- `A159966(A004442(n))` -/
def P12964312179211552108.Spec : Prop :=
  ∀ n, P12964312179211552108.a n = A263313 n

end A263313

/-! ## A263313.P11623084957322850556

`A004444(A159966(n))`
-/

namespace A263313.P11623084957322850556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (A159966 n).toNat

end

end A263313.P11623084957322850556

namespace A263313

/-- `A004444(A159966(n))` -/
def P11623084957322850556.Spec : Prop :=
  ∀ n, P11623084957322850556.a n = A263313 n

end A263313

/-! ## A263313.P15059537406356311549

`A263426(A004444(n))`
-/

namespace A263313.P15059537406356311549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A004444 n).toNat

end

end A263313.P15059537406356311549

namespace A263313

/-- `A263426(A004444(n))` -/
def P15059537406356311549.Spec : Prop :=
  ∀ n, P15059537406356311549.a n = A263313 n

end A263313

/-! ## A263313.P6433878759071152340

`A004442(A263426(n))`
-/

namespace A263313.P6433878759071152340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A263426 n).toNat

end

end A263313.P6433878759071152340

namespace A263313

/-- `A004442(A263426(n))` -/
def P6433878759071152340.Spec : Prop :=
  ∀ n, P6433878759071152340.a n = A263313 n

end A263313

/-! ## A263313.P6406921055529155509

`A004442(A092486(n)-1)`
-/

namespace A263313.P6406921055529155509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A092486 n - 1).toNat

end

end A263313.P6406921055529155509

namespace A263313

/-- `A004442(A092486(n)-1)` -/
def P6406921055529155509.Spec : Prop :=
  ∀ n, P6406921055529155509.a n = A263313 n

end A263313

/-! ## A263313.P1708576391431618442

`A263426(A132429(n)+n)`
-/

namespace A263313.P1708576391431618442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A132429 n + (n : ℤ)).toNat

end

end A263313.P1708576391431618442

namespace A263313

/-- `A263426(A132429(n)+n)` -/
def P1708576391431618442.Spec : Prop :=
  ∀ n, P1708576391431618442.a n = A263313 n

end A263313

/-! ## A263313.P14675324494588045992

`A159966(n+1-A010873(2*n))`
-/

namespace A263313.P14675324494588045992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 ((n + 1 : ℤ) - A010873 (2 * n)).toNat

end

end A263313.P14675324494588045992

namespace A263313

/-- `A159966(n+1-A010873(2*n))` -/
def P14675324494588045992.Spec : Prop :=
  ∀ n, P14675324494588045992.a n = A263313 n

end A263313

/-! ## A263313.P13808499363179772052

`A004442(A263449(n+1)-2)`
-/

namespace A263313.P13808499363179772052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A263449 (n + 1) - 2).toNat

end

end A263313.P13808499363179772052

namespace A263313

/-- `A004442(A263449(n+1)-2)` -/
def P13808499363179772052.Spec : Prop :=
  ∀ n, P13808499363179772052.a n = A263313 n

end A263313

/-! ## A263313.P14516117802426904892

`A004442(n-A176742(n+2))`
-/

namespace A263313.P14516117802426904892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n : ℤ) - A176742 (n + 2)).toNat

end

end A263313.P14516117802426904892

namespace A263313

/-- `A004442(n-A176742(n+2))` -/
def P14516117802426904892.Spec : Prop :=
  ∀ n, P14516117802426904892.a n = A263313 n

end A263313

/-! ## A263313.P11519643924677765314

`A106450(A043547(n+1))`
-/

namespace A263313.P11519643924677765314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106450 (A043547 (n + 1)).toNat

end

end A263313.P11519643924677765314

namespace A263313

/-- `A106450(A043547(n+1))` -/
def P11519643924677765314.Spec : Prop :=
  ∀ n, P11519643924677765314.a n = A263313 n

end A263313

/-! ## A263313.P398956094346083516

`A159966(A263426(2*n)/2)`
-/

namespace A263313.P398956094346083516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (SequenceMachineLib.roundAway ((A263426 (2 * n) : ℚ) / 2)).toNat

end

end A263313.P398956094346083516

namespace A263313

/-- `A159966(A263426(2*n)/2)` -/
def P398956094346083516.Spec : Prop :=
  ∀ n, P398956094346083516.a n = A263313 n

end A263313

/-!
# A263314: Numbers m whose decimal representation includes at least one digit that divides every digit of m.

The programs for A263314, there is no canonical definition to state claims against.
-/

/-! ## A263314.P13568136399119153901

`A267086(n+2)%p?[7*n²+1]`
-/

namespace A263314.P13568136399119153901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267086 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A263314.P13568136399119153901

/-! ## A263314.P17254483894606135557

`A267086(n+2)%∑[A354586(n+3)]`
-/

namespace A263314.P17254483894606135557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354586 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267086 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263314.P17254483894606135557

/-! ## A263314.P5900151130202354792

`A267086(n+2)+A025443(A195829(n+1))`
-/

namespace A263314.P5900151130202354792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267086 (n + 2) + A025443 (A195829 (n + 1)).toNat

end

end A263314.P5900151130202354792

/-! ## A263314.P531744752505061031

`A168181(A067313(n+1))*A267086(n+2)`
-/

namespace A263314.P531744752505061031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 (A067313 (n + 1)).toNat * A267086 (n + 2)

end

end A263314.P531744752505061031

/-! ## A263314.P4501124906096065337

`A057427(A372665(n+1))*A267086(n+2)`
-/

namespace A263314.P4501124906096065337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A372665 (n + 1)).toNat * A267086 (n + 2)

end

end A263314.P4501124906096065337

/-! ## A263314.P11606925566166258522

`lcm(A033999(A111808(n+1)), A267086(n+2))`
-/

namespace A263314.P11606925566166258522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A111808 (n + 1)).toNat) (A267086 (n + 2))

end

end A263314.P11606925566166258522

/-! ## A263314.P15406363153180058476

`A267086(n+2)%A226112(A304442(n))`
-/

namespace A263314.P15406363153180058476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267086 (n + 2)) (A226112 (A304442 n).toNat)

end

end A263314.P15406363153180058476

/-! ## A263314.P14409047633932827902

`A323894(A007635(n+1))+A267086(n+2)`
-/

namespace A263314.P14409047633932827902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323894 (A007635 (n + 1)).toNat + A267086 (n + 2)

end

end A263314.P14409047633932827902

/-! ## A263314.P17051475082934377084

`A323894(A007641(n+1))+A267086(n+2)`
-/

namespace A263314.P17051475082934377084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323894 (A007641 (n + 1)).toNat + A267086 (n + 2)

end

end A263314.P17051475082934377084

/-!
# A263315: Numbers whose decimal representation contains at least two digits such that no digit is divisible by any other digit.

The programs for A263315, there is no canonical definition to state claims against.
-/

/-! ## A263315.P565233489430004347

`A033676(comp[A267086(n+1)]²)`
-/

namespace A263315.P565233489430004347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267086 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A263315.P565233489430004347

/-! ## A263315.P2468895521680697404

`A137735(comp[A267086(n+1)]²)`
-/

namespace A263315.P2468895521680697404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267086 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A263315.P2468895521680697404

/-! ## A263315.P3264379169602581197

`lt[A054055(A047842(n)), A214950(n)]`
-/

namespace A263315.P3264379169602581197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A047842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263315.P3264379169602581197

/-! ## A263315.P7606330278208194884

`lt[A054055(A102439(n)), A214950(n)]`
-/

namespace A263315.P7606330278208194884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A102439 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263315.P7606330278208194884

/-! ## A263315.P9464144417911897461

`lt[A116960(A119999(n)), A347323(n)]`
-/

namespace A263315.P9464144417911897461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116960 (A119999 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263315.P9464144417911897461

/-!
# A263316: Number of lattice paths from (0,0) to (n,n) which do not go above the diagonal x=y using steps (1,k), (k,1) with k>=2.

The programs for A263316, there is no canonical definition to state claims against.
-/

/-! ## A263316.P5188876396267994860

`A127389(n)-a(n-1)` with `a(0)=1`
-/

namespace A263316.P5188876396267994860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127389 n - a (n - 1)

end

end A263316.P5188876396267994860

/-! ## A263316.P8205026794073188582

`A152173(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A263316.P8205026794073188582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152173 (n + 1) - a (n - 1)

end

end A263316.P8205026794073188582

/-! ## A263316.P282275707224453440

`A051889(xor(A145062(n), A265529(n)))`
-/

namespace A263316.P282275707224453440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.xor (A145062 n) (A265529 n)).toNat

end

end A263316.P282275707224453440

/-! ## A263316.P14153685328516677916

`A168201(A000701(3*n)*A004525(n))`
-/

namespace A263316.P14153685328516677916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A000701 (3 * n) * A004525 n).toNat

end

end A263316.P14153685328516677916

/-! ## A263316.P5135286101732107720

`A331914(2*a(n-1)-a(n-4)+1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A263316.P5135286101732107720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1] fun n a =>
  A331914 (2 * a (n - 1) - a (n - 4) + 1).toNat

end

end A263316.P5135286101732107720

/-!
# A263317: Least prime p > n such that the numbers sigma(k^2)/k^2 (k = 1,...,n) are pairwise incongruent modulo p, where sigma(m) is the sum of the divisors of m.

The programs for A263317, there is no canonical definition to state claims against.
-/

/-! ## A263317.P18419679039835936780

`p?[A130346(n)-A089863(n)]`
-/

namespace A263317.P18419679039835936780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130346 n - A089863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263317.P18419679039835936780

/-! ## A263317.P2319042968162978068

`p?[n-A089863(A131145(n))]`
-/

namespace A263317.P2319042968162978068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089863 (A131145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263317.P2319042968162978068

/-! ## A263317.P3536953269371577388

`p?[n-A089863(A131146(n))]`
-/

namespace A263317.P3536953269371577388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089863 (A131146 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A263317.P3536953269371577388

/-!
# A263318: Number of aperiodic necklaces (Lyndon words) with 9 black beads and n white beads.

The programs for A263318, there is no canonical definition to state claims against.
-/

/-! ## A263318.P7651463931697623127

`A147618(n+3)/3`
-/

namespace A263318.P7651463931697623127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147618 (n + 3) : ℚ) / 3

end

end A263318.P7651463931697623127

/-! ## A263318.P10577648326575964367

`record[A147618(A273943(n))/3]`
-/

namespace A263318.P10577648326575964367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147618 (A273943 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263318.P10577648326575964367

/-! ## A263318.P3957987003853482346

`record[A147618(A028242(n))/3]`
-/

namespace A263318.P3957987003853482346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147618 (A028242 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263318.P3957987003853482346

/-! ## A263318.P9072504702789405931

`3^A008683(A057673(n))*A147618(n+3)`
-/

namespace A263318.P9072504702789405931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A057673 n).toNat : ℤ) * (A147618 (n + 3) : ℚ)

end

end A263318.P9072504702789405931

/-! ## A263318.P2513373795906157984

`3^A008683(A088254(n+1))*A147618(n+3)`
-/

namespace A263318.P2513373795906157984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008683 (A088254 (n + 1)).toNat : ℤ) * (A147618 (n + 3) : ℚ)

end

end A263318.P2513373795906157984

/-! ## A263318.P13131591456107405860

`A051168(A056000(n+6))`
-/

namespace A263318.P13131591456107405860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A056000 (n + 6)).toNat

end

end A263318.P13131591456107405860

/-! ## A263318.P5550976078938272153

`A051168(A000217(n+10)-10)`
-/

namespace A263318.P5550976078938272153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (A000217 (n + 10) - 10).toNat

end

end A263318.P5550976078938272153

/-!
# A263319: a(n) = pi(n^2)*phi(n)/2, where pi(x) denotes the number of primes not exceeding x, and phi(.) is Euler's totient function given by A000010.

The programs for A263319, the canonical program `A263319.P16862253577896793387` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263319 has offset 1).

The definition of A263319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263319.P16862253577896793387

`A000720((n+1)²)*A000010(n+1)/2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A263319

/-- `A000720((n+1)²)*A000010(n+1)/2` -/
def P16862253577896793387.Spec : Prop :=
  ∀ n, P16862253577896793387.a n = (A263319 (n + 1) : ℚ)

end A263319

/-! ## A263319.P7357514041196246030

`A000010(n+1)/2*∑[A014085(n)]`
-/

namespace A263319.P7357514041196246030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A263319.P7357514041196246030

namespace A263319

/-- `A000010(n+1)/2*∑[A014085(n)]` -/
def P7357514041196246030.Spec : Prop :=
  ∀ n, P7357514041196246030.a n = (A263319 (n + 1) : ℚ)

end A263319

/-! ## A263319.P5988333839828913528

`A038107(n+1)/2*Δ[A002088(n)]`
-/

namespace A263319.P5988333839828913528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038107 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A263319.P5988333839828913528

namespace A263319

/-- `A038107(n+1)/2*Δ[A002088(n)]` -/
def P5988333839828913528.Spec : Prop :=
  ∀ n, P5988333839828913528.a n = (A263319 (n + 1) : ℚ)

end A263319

/-! ## A263319.P12787237450984493902

`A038107(n+1)/2*Δ[A005728(n)]`
-/

namespace A263319.P12787237450984493902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038107 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A263319.P12787237450984493902

namespace A263319

/-- `A038107(n+1)/2*Δ[A005728(n)]` -/
def P12787237450984493902.Spec : Prop :=
  ∀ n, P12787237450984493902.a n = (A263319 (n + 1) : ℚ)

end A263319

/-! ## A263319.P14957922687002696132

`A000010(n+1)/2*A038107(n+1)`
-/

namespace A263319.P14957922687002696132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 2 * (A038107 (n + 1) : ℚ)

end

end A263319.P14957922687002696132

namespace A263319

/-- `A000010(n+1)/2*A038107(n+1)` -/
def P14957922687002696132.Spec : Prop :=
  ∀ n, P14957922687002696132.a n = (A263319 (n + 1) : ℚ)

end A263319

/-! ## A263319.P14670759043479843875

`A000720((n+1)²)/2*Δ[A002088(n)]`
-/

namespace A263319.P14670759043479843875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 ((n + 1) ^ 2) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A263319.P14670759043479843875

namespace A263319

/-- `A000720((n+1)²)/2*Δ[A002088(n)]` -/
def P14670759043479843875.Spec : Prop :=
  ∀ n, P14670759043479843875.a n = (A263319 (n + 1) : ℚ)

end A263319

/-! ## A263319.P11408908916377958528

`A038107(n+1)/2*A054523(A000124(n))`
-/

namespace A263319.P11408908916377958528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038107 (n + 1) : ℚ) / 2 * (A054523 (A000124 n).toNat : ℚ)

end

end A263319.P11408908916377958528

namespace A263319

/-- `A038107(n+1)/2*A054523(A000124(n))` -/
def P11408908916377958528.Spec : Prop :=
  ∀ n, P11408908916377958528.a n = (A263319 (n + 1) : ℚ)

end A263319

/-! ## A263319.P5954179992816718967

`A000010(n+1)/2*A230980(A005563(n))`
-/

namespace A263319.P5954179992816718967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 2 * (A230980 (A005563 n).toNat : ℚ)

end

end A263319.P5954179992816718967

namespace A263319

/-- `A000010(n+1)/2*A230980(A005563(n))` -/
def P5954179992816718967.Spec : Prop :=
  ∀ n, P5954179992816718967.a n = (A263319 (n + 1) : ℚ)

end A263319

/-!
# A263323: The greater of maximal exponent and maximal prime index in the prime factorization of n.

The programs for A263323, the canonical program `A263323.P10911484002693778116` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263323 has offset 1).

The definition of A263323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263323.P10911484002693778116

`A061395(lcm(A060819(n+1), A329601(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A263323

/-- `A061395(lcm(A060819(n+1), A329601(n+1)))` -/
def P10911484002693778116.Spec : Prop :=
  ∀ n, P10911484002693778116.a n = A263323 (n + 1)

theorem P10911484002693778116.correct : P10911484002693778116.Spec := by
  intro n
  simp only [A263323, Nat.add_sub_cancel]

end A263323

/-! ## A263323.P2850633007686867837

`A061395(A000265(n+1)*A181819(n+1))`
-/

namespace A263323.P2850633007686867837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000265 (n + 1) * A181819 (n + 1)).toNat

end

end A263323.P2850633007686867837

namespace A263323

/-- `A061395(A000265(n+1)*A181819(n+1))` -/
def P2850633007686867837.Spec : Prop :=
  ∀ n, P2850633007686867837.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P15001146532807930778

`A061395(lcm(A000265(n+1), A181819(n+1)))`
-/

namespace A263323.P15001146532807930778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A000265 (n + 1)) (A181819 (n + 1)))

end

end A263323.P15001146532807930778

namespace A263323

/-- `A061395(lcm(A000265(n+1), A181819(n+1)))` -/
def P15001146532807930778.Spec : Prop :=
  ∀ n, P15001146532807930778.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P4989571555992343156

`A061395(A060819(n+1)*A329601(n+1))`
-/

namespace A263323.P4989571555992343156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A060819 (n + 1) * A329601 (n + 1)).toNat

end

end A263323.P4989571555992343156

namespace A263323

/-- `A061395(A060819(n+1)*A329601(n+1))` -/
def P4989571555992343156.Spec : Prop :=
  ∀ n, P4989571555992343156.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P15240978999497355211

`A061395(A007947(n+1)*A181819(n+1))`
-/

namespace A263323.P15240978999497355211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A007947 (n + 1) * A181819 (n + 1)).toNat

end

end A263323.P15240978999497355211

namespace A263323

/-- `A061395(A007947(n+1)*A181819(n+1))` -/
def P15240978999497355211.Spec : Prop :=
  ∀ n, P15240978999497355211.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P1252632515661323554

`A061395(A053166(n+1)*A181819(n+1))`
-/

namespace A263323.P1252632515661323554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A053166 (n + 1) * A181819 (n + 1)).toNat

end

end A263323.P1252632515661323554

namespace A263323

/-- `A061395(A053166(n+1)*A181819(n+1))` -/
def P1252632515661323554.Spec : Prop :=
  ∀ n, P1252632515661323554.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P6352702165783361732

`A061395((A076618(n+1)-1)*A181819(n+1))`
-/

namespace A263323.P6352702165783361732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((A076618 (n + 1) - 1) * A181819 (n + 1)).toNat

end

end A263323.P6352702165783361732

namespace A263323

/-- `A061395((A076618(n+1)-1)*A181819(n+1))` -/
def P6352702165783361732.Spec : Prop :=
  ∀ n, P6352702165783361732.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P881081959503162153

`A061395(A052410(n+1)*A181819(n+1))`
-/

namespace A263323.P881081959503162153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A052410 (n + 1) * A181819 (n + 1)).toNat

end

end A263323.P881081959503162153

namespace A263323

/-- `A061395(A052410(n+1)*A181819(n+1))` -/
def P881081959503162153.Spec : Prop :=
  ∀ n, P881081959503162153.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P9564209868585409260

`A061395((n+1)*A181819(n+1))`
-/

namespace A263323.P9564209868585409260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A181819 (n + 1)).toNat

end

end A263323.P9564209868585409260

namespace A263323

/-- `A061395((n+1)*A181819(n+1))` -/
def P9564209868585409260.Spec : Prop :=
  ∀ n, P9564209868585409260.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P3401157569866810192

`A061395((n+1)*A329601(n+1))`
-/

namespace A263323.P3401157569866810192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * A329601 (n + 1)).toNat

end

end A263323.P3401157569866810192

namespace A263323

/-- `A061395((n+1)*A329601(n+1))` -/
def P3401157569866810192.Spec : Prop :=
  ∀ n, P3401157569866810192.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P8896238554107391965

`A061395(lcm(n+1, A181819(n+1)))`
-/

namespace A263323.P8896238554107391965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (n + 1 : ℤ) (A181819 (n + 1)))

end

end A263323.P8896238554107391965

namespace A263323

/-- `A061395(lcm(n+1, A181819(n+1)))` -/
def P8896238554107391965.Spec : Prop :=
  ∀ n, P8896238554107391965.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P10838594891387143355

`A061395((n+1)*∏{e}[n+1, A000040(#)])`
-/

namespace A263323.P10838594891387143355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p))).toNat

end

end A263323.P10838594891387143355

namespace A263323

/-- `A061395((n+1)*∏{e}[n+1, A000040(#)])` -/
def P10838594891387143355.Spec : Prop :=
  ∀ n, P10838594891387143355.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P10502899270833136465

`A000720(A006530((n+1)*A181819(n+1)))`
-/

namespace A263323.P10502899270833136465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 ((n + 1 : ℤ) * A181819 (n + 1)).toNat).toNat

end

end A263323.P10502899270833136465

namespace A263323

/-- `A000720(A006530((n+1)*A181819(n+1)))` -/
def P10502899270833136465.Spec : Prop :=
  ∀ n, P10502899270833136465.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P16225306290495755049

`A263297(A304180(n+1))`
-/

namespace A263323.P16225306290495755049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A304180 (n + 1)).toNat

end

end A263323.P16225306290495755049

namespace A263323

/-- `A263297(A304180(n+1))` -/
def P16225306290495755049.Spec : Prop :=
  ∀ n, P16225306290495755049.a n = A263323 (n + 1)

end A263323

/-! ## A263323.P12683462836374923936

`val(A181821((n+1)*A181819(n+1)), 2)`
-/

namespace A263323.P12683462836374923936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181821 ((n + 1 : ℤ) * A181819 (n + 1)).toNat).toNat 2

end

end A263323.P12683462836374923936

namespace A263323

/-- `val(A181821((n+1)*A181819(n+1)), 2)` -/
def P12683462836374923936.Spec : Prop :=
  ∀ n, (P12683462836374923936.a n : ℤ) = A263323 (n + 1)

end A263323

/-!
# A263324: Triangle read by rows: T(n,k) is the number of unlabeled simple graphs with n vertices and Grundy number k, 0 <= k < n.

The programs for A263324, there is no canonical definition to state claims against.
-/

/-! ## A263324.P5977400321508140914

`A366580(A384364(n))`
-/

namespace A263324.P5977400321508140914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366580 (A384364 n).toNat

end

end A263324.P5977400321508140914

/-! ## A263324.P10017747509184586607

`A117119(A139382(n+1))`
-/

namespace A263324.P10017747509184586607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117119 (A139382 (n + 1)).toNat

end

end A263324.P10017747509184586607

/-! ## A263324.P11882723916676885130

`A117707(A080416(n)+A055807(n))`
-/

namespace A263324.P11882723916676885130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A080416 n + A055807 n).toNat

end

end A263324.P11882723916676885130

/-! ## A263324.P2460433131731349978

`A117707(or(A055807(n), A080416(n)))`
-/

namespace A263324.P2460433131731349978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.lor (A055807 n) (A080416 n)).toNat

end

end A263324.P2460433131731349978

/-! ## A263324.P1073622662062753258

`A238957(A355350(n)%A324753(3*(n+1)))`
-/

namespace A263324.P1073622662062753258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238957 (Int.tmod (A355350 n) (A324753 (3 * (n + 1)))).toNat

end

end A263324.P1073622662062753258

/-!
# A263325: a(n) = sigma(n)*pi(n^2), where sigma(n) is the sum of all (positive) divisors of n, and pi(x) is the number of primes not exceeding x.

The programs for A263325, the canonical program `A263325.P12056924255637413815` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263325 has offset 1).

The definition of A263325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A000720((n+1)²)` (program `A263325.P12056924255637413815`, by `A263325.P12056924255637413815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A263325.P12056924255637413815

`A000203(n+1)*A000720((n+1)²)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A263325

/-- `A000203(n+1)*A000720((n+1)²)` -/
def P12056924255637413815.Spec : Prop :=
  ∀ n, P12056924255637413815.a n = A263325 (n + 1)

theorem P12056924255637413815.correct : P12056924255637413815.Spec := by
  intro n
  simp only [A263325, Nat.add_sub_cancel]

end A263325

/-! ## A263325.P12218551873761289336

`A000203(n+1)*∑[A014085(n)]`
-/

namespace A263325.P12218551873761289336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263325.P12218551873761289336

namespace A263325

/-- `A000203(n+1)*∑[A014085(n)]` -/
def P12218551873761289336.Spec : Prop :=
  ∀ n, P12218551873761289336.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P10100125282139598702

`abs(A143348(n+1))*∑[A014085(n)]`
-/

namespace A263325.P10100125282139598702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263325.P10100125282139598702

namespace A263325

/-- `abs(A143348(n+1))*∑[A014085(n)]` -/
def P10100125282139598702.Spec : Prop :=
  ∀ n, P10100125282139598702.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P15205781711038995235

`∑[A340793(n+1)]*∑[A014085(n)]`
-/

namespace A263325.P15205781711038995235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A263325.P15205781711038995235

namespace A263325

/-- `∑[A340793(n+1)]*∑[A014085(n)]` -/
def P15205781711038995235.Spec : Prop :=
  ∀ n, P15205781711038995235.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P5561331563566020

`(A088580(n+1)-1)*∑[A014085(n)]`
-/

namespace A263325.P5561331563566020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263325.P5561331563566020

namespace A263325

/-- `(A088580(n+1)-1)*∑[A014085(n)]` -/
def P5561331563566020.Spec : Prop :=
  ∀ n, P5561331563566020.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P3208023290531514743

`A272027(n+1)/3*∑[A014085(n)]`
-/

namespace A263325.P3208023290531514743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272027 (n + 1) : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A263325.P3208023290531514743

namespace A263325

/-- `A272027(n+1)/3*∑[A014085(n)]` -/
def P3208023290531514743.Spec : Prop :=
  ∀ n, P3208023290531514743.a n = (A263325 (n + 1) : ℚ)

end A263325

/-! ## A263325.P10201293079204722576

`A274535(n+1)/5*∑[A014085(n)]`
-/

namespace A263325.P10201293079204722576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274535 (n + 1) : ℚ) / 5 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A263325.P10201293079204722576

namespace A263325

/-- `A274535(n+1)/5*∑[A014085(n)]` -/
def P10201293079204722576.Spec : Prop :=
  ∀ n, P10201293079204722576.a n = (A263325 (n + 1) : ℚ)

end A263325

/-! ## A263325.P3601516701686666462

`Δ[A160664(n)]*A038107(n+1)`
-/

namespace A263325.P3601516701686666462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038107 (n + 1)

end

end A263325.P3601516701686666462

namespace A263325

/-- `Δ[A160664(n)]*A038107(n+1)` -/
def P3601516701686666462.Spec : Prop :=
  ∀ n, P3601516701686666462.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P13044041198521476098

`A000203(n+1)*A038107(n+1)`
-/

namespace A263325.P13044041198521476098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A038107 (n + 1)

end

end A263325.P13044041198521476098

namespace A263325

/-- `A000203(n+1)*A038107(n+1)` -/
def P13044041198521476098.Spec : Prop :=
  ∀ n, P13044041198521476098.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P13861103298205923910

`A074400(n+1)/2*A038107(n+1)`
-/

namespace A263325.P13861103298205923910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 * (A038107 (n + 1) : ℚ)

end

end A263325.P13861103298205923910

namespace A263325

/-- `A074400(n+1)/2*A038107(n+1)` -/
def P13861103298205923910.Spec : Prop :=
  ∀ n, P13861103298205923910.a n = (A263325 (n + 1) : ℚ)

end A263325

/-! ## A263325.P6535563879233198385

`A000720((n+1)²)*A008619(A002659(n+1))`
-/

namespace A263325.P6535563879233198385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) * A008619 (A002659 (n + 1)).toNat

end

end A263325.P6535563879233198385

namespace A263325

/-- `A000720((n+1)²)*A008619(A002659(n+1))` -/
def P6535563879233198385.Spec : Prop :=
  ∀ n, P6535563879233198385.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P12780082007988397053

`A000720((n+1)²)*A326041(A003961(n+1))`
-/

namespace A263325.P12780082007988397053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) * A326041 (A003961 (n + 1)).toNat

end

end A263325.P12780082007988397053

namespace A263325

/-- `A000720((n+1)²)*A326041(A003961(n+1))` -/
def P12780082007988397053.Spec : Prop :=
  ∀ n, P12780082007988397053.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P11230974834000863423

`(A039653(n+1)+1)*A000720(∑[A005408(n)])`
-/

namespace A263325.P11230974834000863423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1) * A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263325.P11230974834000863423

namespace A263325

/-- `(A039653(n+1)+1)*A000720(∑[A005408(n)])` -/
def P11230974834000863423.Spec : Prop :=
  ∀ n, P11230974834000863423.a n = A263325 (n + 1)

end A263325

/-! ## A263325.P6504280731861286870

`A000203(n+1)*A063084((n+1)²)`
-/

namespace A263325.P6504280731861286870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A063084 ((n + 1) ^ 2)

end

end A263325.P6504280731861286870

namespace A263325

/-- `A000203(n+1)*A063084((n+1)²)` -/
def P6504280731861286870.Spec : Prop :=
  ∀ n, P6504280731861286870.a n = A263325 (n + 1)

end A263325

/-!
# A263326: Denominator of the rational number Sum_{d|n}1/(d+1).

The programs for A263326, there is no canonical definition to state claims against.
-/

/-! ## A263326.P18360620978466069058

`A116417(2*∑{d}[n+1, 2^(#-1)])`
-/

namespace A263326.P18360620978466069058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (SequenceMachineLib.roundAway (2 * (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)))).toNat

end

end A263326.P18360620978466069058

/-! ## A263326.P12765682240346424367

`A116417(A055895(n+1))`
-/

namespace A263326.P12765682240346424367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A055895 (n + 1)).toNat

end

end A263326.P12765682240346424367

/-! ## A263326.P5022697949512407915

`A116417(∑{d}[A348553(n), A000079(#)])`
-/

namespace A263326.P5022697949512407915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000079 d).toNat

end

end A263326.P5022697949512407915

/-!
# A263327: A permutation of {0, 1, ..., 1023} corresponding to lexicographical ordering A262557 of numbers with decreasing digits A009995.

The programs for A263327, there is no canonical definition to state claims against.
-/

/-! ## A263327.P11696220983335089925

`ceil(2^(n-1))%A093848(ceil(2^(n-2)+n))`
-/

namespace A263327.P11696220983335089925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A093848 ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ)⌉.toNat)

end

end A263327.P11696220983335089925

/-! ## A263327.P2849435178411913085

`floor(2^(n-1))%A196124(A250120(n))`
-/

namespace A263327.P2849435178411913085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A196124 (A250120 n).toNat)

end

end A263327.P2849435178411913085

/-! ## A263327.P8857782463911900436

`A011782(n)%A194440(A250120(n))`
-/

namespace A263327.P8857782463911900436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) (A194440 (A250120 n).toNat)

end

end A263327.P8857782463911900436

/-!
# A263329: Fixed points of permutations A263327 and A263328.

The programs for A263329, there is no canonical definition to state claims against.
-/

/-! ## A263329.P15850328313329882641

`eq[n, A263327(n)]`
-/

namespace A263329.P15850328313329882641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263329.P15850328313329882641

/-! ## A263329.P437244439894154129

`eq[n, A263328(n)]`
-/

namespace A263329.P437244439894154129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263328 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263329.P437244439894154129

/-!
# A263330: Number of (n+2)X(1+2) 0..2 arrays with each row and column divisible by 11, read as a base-3 number with top and left being the most significant digits.

The programs for A263330, there is no canonical definition to state claims against.
-/

/-! ## A263330.P18283395118817006080

`A263333(∑[n]+1)`
-/

namespace A263330.P18283395118817006080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263330.P18283395118817006080

/-! ## A263330.P1329566826481734393

`or(1, A263333(A000124(n)))`
-/

namespace A263330.P1329566826481734393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A263333 (A000124 n).toNat)

end

end A263330.P1329566826481734393

/-! ## A263330.P4023781241398016994

`A263333(A000124(n))-A326529(n)`
-/

namespace A263330.P4023781241398016994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (A000124 n).toNat - A326529 n

end

end A263330.P4023781241398016994

/-! ## A263330.P8214017076719296914

`A263333(A000124(n))*A309864(n)`
-/

namespace A263330.P8214017076719296914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (A000124 n).toNat * A309864 n

end

end A263330.P8214017076719296914

/-! ## A263330.P3364327745930528626

`A263333(A000124(n))%A042870(n)`
-/

namespace A263330.P3364327745930528626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263333 (A000124 n).toNat) (A042870 n)

end

end A263330.P3364327745930528626

/-!
# A263331: Number of (n+2) X (2+2) 0..2 arrays with each row and column divisible by 11, read as a base-3 number with top and left being the most significant digits.

The programs for A263331, there is no canonical definition to state claims against.
-/

/-! ## A263331.P6633832232714470987

`A263333(∑[n+1]+2)`
-/

namespace A263331.P6633832232714470987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263331.P6633832232714470987

/-! ## A263331.P15715906769200906048

`record[A263333(A133263(∑{e}[n, #]))]`
-/

namespace A263331.P15715906769200906048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263331.P15715906769200906048

/-! ## A263331.P14545441693557185509

`record[gcd(A078924(n), A263333(n+1))]`
-/

namespace A263331.P14545441693557185509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078924 n) (A263333 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263331.P14545441693557185509

/-! ## A263331.P15153224203587042402

`record[A263333(A133263(val(n+1, 2)+1))]`
-/

namespace A263331.P15153224203587042402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263331.P15153224203587042402

/-!
# A263332: Number of (n+2)X(3+2) 0..2 arrays with each row and column divisible by 11, read as a base-3 number with top and left being the most significant digits.

The programs for A263332, there is no canonical definition to state claims against.
-/

/-! ## A263332.P3342043354196178868

`A263333(∑[n+2]+4)`
-/

namespace A263332.P3342043354196178868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263332.P3342043354196178868

/-! ## A263332.P7546890144881619707

`record[A263333(n+4)-A263303(n+1)]`
-/

namespace A263332.P7546890144881619707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (n + 4) - A263303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263332.P7546890144881619707

/-! ## A263332.P10109004588244061838

`A263333(A167614(n+1))+A011731(n)`
-/

namespace A263332.P10109004588244061838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263333 (A167614 (n + 1)).toNat + A011731 n

end

end A263332.P10109004588244061838

/-!
# A263333: T(n,k)=Number of (n+2)X(k+2) 0..2 arrays with each row and column divisible by 11, read as a base-3 number with top and left being the most significant digits.

The programs for A263333, there is no canonical definition to state claims against.
-/

/-! ## A263333.P12306001053462142383

`A004396(A223387(n+1)%A095627(n))`
-/

namespace A263333.P12306001053462142383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.tmod (A223387 (n + 1)) (A095627 n)).toNat

end

end A263333.P12306001053462142383

/-! ## A263333.P17782304822777649420

`A191130(A274858(n+1)%A095627(n))`
-/

namespace A263333.P17782304822777649420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191130 (Int.tmod (A274858 (n + 1)) (A095627 n)).toNat

end

end A263333.P17782304822777649420

/-! ## A263333.P11118097228080288608

`A004396(A223387(n+1))%A223390(n+1)`
-/

namespace A263333.P11118097228080288608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 (A223387 (n + 1)).toNat) (A223390 (n + 1))

end

end A263333.P11118097228080288608

/-! ## A263333.P5659214851776514247

`A191130(A274858(n+1))%A223390(n+1)`
-/

namespace A263333.P5659214851776514247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191130 (A274858 (n + 1)).toNat) (A223390 (n + 1))

end

end A263333.P5659214851776514247

/-!
# A263334: Number of (n+2) X (1+2) 0..2 arrays with each row and column divisible by 13, read as a base-3 number with top and left being the most significant digits.

The programs for A263334, the canonical program `A263334.P6384157363388234870` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263334 has offset 1).

The definition of A263334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263334.P4380193891133571981

`ogf((-3+2x+2x^2+3x^3)/(-1+3x+x^3-3x^4))`
-/

namespace A263334.P4380193891133571981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -2, -3] [1, -3, 0, -1, 3] n

end

end A263334.P4380193891133571981

namespace A263334

/-- `ogf((-3+2x+2x^2+3x^3)/(-1+3x+x^3-3x^4))` -/
def P4380193891133571981.Spec : Prop :=
  ∀ n, P4380193891133571981.a n = A263334 (n + 1)

end A263334

/-! ## A263334.P6384157363388234870

`gcd(3, n)+3*(a(n-1)-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A263334

/-- `gcd(3, n)+3*(a(n-1)-1)` -/
def P6384157363388234870.Spec : Prop :=
  ∀ n, P6384157363388234870.a n = A263334 (n + 1)

theorem P6384157363388234870.correct : P6384157363388234870.Spec := by
  intro n
  simp only [A263334, Nat.add_sub_cancel]

end A263334

/-! ## A263334.P11168504910332922088

`2*round(9*∑[3^n/13])+1`
-/

namespace A263334.P11168504910332922088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (9 * (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A263334.P11168504910332922088

namespace A263334

/-- `2*round(9*∑[3^n/13])+1` -/
def P11168504910332922088.Spec : Prop :=
  ∀ n, P11168504910332922088.a n = A263334 (n + 1)

end A263334

/-! ## A263334.P7043720416853608829

`or(1, A077834(n+1))`
-/

namespace A263334.P7043720416853608829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077834 (n + 1))

end

end A263334.P7043720416853608829

namespace A263334

/-- `or(1, A077834(n+1))` -/
def P7043720416853608829.Spec : Prop :=
  ∀ n, P7043720416853608829.a n = A263334 (n + 1)

end A263334

/-! ## A263334.P13578015132520899497

`or(1, A152733(n+3))`
-/

namespace A263334.P13578015132520899497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A152733 (n + 3))

end

end A263334.P13578015132520899497

namespace A263334

/-- `or(1, A152733(n+3))` -/
def P13578015132520899497.Spec : Prop :=
  ∀ n, P13578015132520899497.a n = A263334 (n + 1)

end A263334

/-! ## A263334.P242712012182054

`or(1, Δ[A033139(n+1)])`
-/

namespace A263334.P242712012182054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A263334.P242712012182054

namespace A263334

/-- `or(1, Δ[A033139(n+1)])` -/
def P242712012182054.Spec : Prop :=
  ∀ n, P242712012182054.a n = A263334 (n + 1)

end A263334

/-!
# A263335: Number of (n+2)X(2+2) 0..2 arrays with each row and column divisible by 13, read as a base-3 number with top and left being the most significant digits.

The programs for A263335, there is no canonical definition to state claims against.
-/

/-! ## A263335.P2550525517278755934

`A263337(∑[n+1]+2)`
-/

namespace A263335.P2550525517278755934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263337 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263335.P2550525517278755934

/-! ## A263335.P12889905532891141159

`record[gcd(A025581(n), A263337(n+3))]`
-/

namespace A263335.P12889905532891141159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A263337 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263335.P12889905532891141159

/-! ## A263335.P11087248292320683729

`record[A263337(n+3)-A263288(n+1)]`
-/

namespace A263335.P11087248292320683729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263337 (n + 3) - A263288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263335.P11087248292320683729

/-! ## A263335.P17514367602095346402

`record[A263337(n+3)-A263303(n+1)]`
-/

namespace A263335.P17514367602095346402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263337 (n + 3) - A263303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263335.P17514367602095346402

/-!
# A263336: Number of (n+2)X(3+2) 0..2 arrays with each row and column divisible by 13, read as a base-3 number with top and left being the most significant digits.

The programs for A263336, there is no canonical definition to state claims against.
-/

/-! ## A263336.P2682257387320933652

`A263337(∑[n+2]+4)`
-/

namespace A263336.P2682257387320933652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263337 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263336.P2682257387320933652

/-! ## A263336.P7640660872576963206

`or(1, A263337(A167614(n+1)))`
-/

namespace A263336.P7640660872576963206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A263337 (A167614 (n + 1)).toNat)

end

end A263336.P7640660872576963206

/-! ## A263336.P141211337965722601

`record[gcd(A263303(n+1), A263337(n+4))]`
-/

namespace A263336.P141211337965722601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263303 (n + 1)) (A263337 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263336.P141211337965722601

/-!
# A263337: T(n,k)=Number of (n+2)X(k+2) 0..2 arrays with each row and column divisible by 13, read as a base-3 number with top and left being the most significant digits.

The programs for A263337, there is no canonical definition to state claims against.
-/

/-! ## A263337.P4293193132507400540

`A353298(8^∑[char[∑[n]]])`
-/

namespace A263337.P4293193132507400540
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353298 (8 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A263337.P4293193132507400540

/-! ## A263337.P15227987515992216931

`A286348(2^∑[char[∑[n]]])%88`
-/

namespace A263337.P15227987515992216931
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286348 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))) 88

end

end A263337.P15227987515992216931

/-! ## A263337.P16469250175751897654

`A390448(A098355(n))`
-/

namespace A263337.P16469250175751897654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390448 (A098355 n).toNat

end

end A263337.P16469250175751897654

/-! ## A263337.P16652426424192902206

`A358997(A255622(n+1))`
-/

namespace A263337.P16652426424192902206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358997 (A255622 (n + 1)).toNat

end

end A263337.P16652426424192902206

/-! ## A263337.P17567685658486543857

`A095115(A003120(comp[∑[n]]-n+1))`
-/

namespace A263337.P17567685658486543857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095115 (A003120 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1).toNat).toNat

end

end A263337.P17567685658486543857

/-!
# A263338: Triangle read by rows: T(n,k) is the number of graphs with n vertices and Szeget index k.

The programs for A263338, there is no canonical definition to state claims against.
-/

/-! ## A263338.P2778443335546093904

`A017867(n)^A170965(A053602(n))`
-/

namespace A263338.P2778443335546093904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017867 n : ℚ) ^ (A170965 (A053602 n).toNat : ℤ)

end

end A263338.P2778443335546093904

/-! ## A263338.P12906855995601999214

`A067059(n)-A085982(A048588(n))`
-/

namespace A263338.P12906855995601999214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n - A085982 (A048588 n).toNat

end

end A263338.P12906855995601999214

/-! ## A263338.P9212927248617224150

`A345164(A097368(n+2)*A124428(n))`
-/

namespace A263338.P9212927248617224150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (A097368 (n + 2) * A124428 n).toNat

end

end A263338.P9212927248617224150

/-! ## A263338.P6614584997767988017

`A144074(A089492(n+1)%A008619(n))`
-/

namespace A263338.P6614584997767988017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (Int.tmod (A089492 (n + 1)) (A008619 n)).toNat

end

end A263338.P6614584997767988017

/-! ## A263338.P13782231586047527776

`A144464(A144464(n))-A085982(A048588(n))`
-/

namespace A263338.P13782231586047527776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 (A144464 n).toNat - A085982 (A048588 n).toNat

end

end A263338.P13782231586047527776

/-!
# A263339: Triangle read by rows: T(n,k) is the number of graphs with n vertices and k spanning trees.

The programs for A263339, there is no canonical definition to state claims against.
-/

/-! ## A263339.P15798900941464181435

`A007376(A211991(n+1)+A071032(A156950(n)))`
-/

namespace A263339.P15798900941464181435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A211991 (n + 1) + A071032 (A156950 n).toNat).toNat

end

end A263339.P15798900941464181435

/-! ## A263339.P1613933499016700553

`and(record[A319059(n+1)], A046643(n+1))`
-/

namespace A263339.P1613933499016700553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A046643 (n + 1))

end

end A263339.P1613933499016700553

/-! ## A263339.P12404998336696239903

`A066060(n+1)-A179801(A298805(n))`
-/

namespace A263339.P12404998336696239903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (n + 1) - A179801 (A298805 n).toNat

end

end A263339.P12404998336696239903

/-! ## A263339.P15147334814641543763

`A112624(n+1)-A339933(A307971(n))`
-/

namespace A263339.P15147334814641543763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (n + 1) - A339933 (A307971 n).toNat

end

end A263339.P15147334814641543763

/-! ## A263339.P5771383380907090855

`and(A190511(A038303(n)), A322100(n+1))`
-/

namespace A263339.P5771383380907090855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A190511 (A038303 n).toNat) (A322100 (n + 1))

end

end A263339.P5771383380907090855

/-!
# A263341: Triangle read by rows: T(n,k) is the number of unlabeled simple graphs on n vertices with independence number k.

The programs for A263341, there is no canonical definition to state claims against.
-/

/-! ## A263341.P1590619493526851725

`A287024(∑[char[∑[n]]]²-n)`
-/

namespace A263341.P1590619493526851725
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287024 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A263341.P1590619493526851725

/-! ## A263341.P13487304024502692409

`or(char[1], A287024(A038722(n+1)))`
-/

namespace A263341.P13487304024502692409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A287024 (A038722 (n + 1)).toNat)

end

end A263341.P13487304024502692409

/-! ## A263341.P14158052164324294120

`or(char[1], A287024(A061579(n)+1))`
-/

namespace A263341.P14158052164324294120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A287024 (A061579 n + 1).toNat)

end

end A263341.P14158052164324294120

/-! ## A263341.P11665693532692064386

`Δ[A287024(A038722(n))+a(n-1)]` with `a(0)=0`
-/

namespace A263341.P11665693532692064386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A287024 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263341.P11665693532692064386

/-! ## A263341.P4874610196021729319

`or(char[10^n], A287024(A093995(n+1)-n))`
-/

namespace A263341.P4874610196021729319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A287024 (A093995 (n + 1) - (n : ℤ)).toNat)

end

end A263341.P4874610196021729319

/-! ## A263341.P2287863900870493345

`or(char[10^n], A287024(A002024(n+1)²-n))`
-/

namespace A263341.P2287863900870493345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A287024 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat)

end

end A263341.P2287863900870493345

/-! ## A263341.P17607604348548975466

`A287024(A061579(n)+1)/A000108(C(n, n²))`
-/

namespace A263341.P17607604348548975466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287024 (A061579 n + 1).toNat : ℚ) / (A000108 (Nat.choose n (n ^ 2)) : ℚ)

end

end A263341.P17607604348548975466

/-! ## A263341.P16391063390252534692

`A287024(A038722(n+1))/A007318(C(2, n))^n`
-/

namespace A263341.P16391063390252534692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287024 (A038722 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) ^ n : ℚ)

end

end A263341.P16391063390252534692

/-!
# A263345: Expansion of Product_{k>=1} ((1 + x^k)/(1 + x^(3*k)))^k.

The programs for A263345, there is no canonical definition to state claims against.
-/

/-! ## A263345.P18235912584292937609

`A319111(n)+A083894(A316980(n))`
-/

namespace A263345.P18235912584292937609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319111 n + A083894 (A316980 n).toNat

end

end A263345.P18235912584292937609

/-! ## A263345.P13945420115572020033

`A002024(A038041(n+1)+A006809(n))-(n+1)`
-/

namespace A263345.P13945420115572020033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A038041 (n + 1) + A006809 n).toNat - (n + 1 : ℤ)

end

end A263345.P13945420115572020033

/-! ## A263345.P16370309186612231153

`A322847(A061257(n))`
-/

namespace A263345.P16370309186612231153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (A061257 n).toNat

end

end A263345.P16370309186612231153

/-! ## A263345.P6173754039212977885

`A239086(A034297(n)+A011849(n))`
-/

namespace A263345.P6173754039212977885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A034297 n + A011849 n).toNat

end

end A263345.P6173754039212977885

/-! ## A263345.P3029349412439237557

`A319111(n)+A124760(A000166(n))`
-/

namespace A263345.P3029349412439237557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319111 n + A124760 (A000166 n).toNat

end

end A263345.P3029349412439237557

/-!
# A263346: Expansion of Product_{k>=1} ((1 - x^(3*k))/(1 - x^k))^k.

The programs for A263346, there is no canonical definition to state claims against.
-/

/-! ## A263346.P12063987060092753973

`A003056(A133469(n)-gcd(n, ∑[n]))`
-/

namespace A263346.P12063987060092753973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A133469 n - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A263346.P12063987060092753973

/-! ## A263346.P8374548980811122919

`A003056(A097472(n))-A000120(n)`
-/

namespace A263346.P8374548980811122919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A097472 n).toNat - A000120 n

end

end A263346.P8374548980811122919

/-! ## A263346.P14799279752496200427

`A003056(A063727(n))-A063993(n)`
-/

namespace A263346.P14799279752496200427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A063727 n).toNat - A063993 n

end

end A263346.P14799279752496200427

/-! ## A263346.P15878418583800153122

`A003056(A133469(n)-A010873(n))`
-/

namespace A263346.P15878418583800153122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A133469 n - A010873 n).toNat

end

end A263346.P15878418583800153122

/-! ## A263346.P2186381581255213573

`A238394(3*n)-A096693(A000568(n))`
-/

namespace A263346.P2186381581255213573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238394 (3 * n) - A096693 (A000568 n).toNat

end

end A263346.P2186381581255213573

/-!
# A263348: Expansion of (eta(q^6) * eta(q^10) / (eta(q) * eta(q^15)))^2 in powers of q.

The programs for A263348, there is no canonical definition to state claims against.
-/

/-! ## A263348.P2047415870714094027

`A094023(2*n)`
-/

namespace A263348.P2047415870714094027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094023 (2 * n)

end

end A263348.P2047415870714094027

/-! ## A263348.P3522650369090651561

`A145728(2*n)`
-/

namespace A263348.P3522650369090651561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145728 (2 * n)

end

end A263348.P3522650369090651561

/-! ## A263348.P261971538619866956

`ceil(A103259(2*n)/2)`
-/

namespace A263348.P261971538619866956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103259 (2 * n) : ℚ) / 2⌉

end

end A263348.P261971538619866956

/-! ## A263348.P1084261402712092548

`A123630(A028310(2*n))`
-/

namespace A263348.P1084261402712092548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123630 (A028310 (2 * n)).toNat

end

end A263348.P1084261402712092548

/-! ## A263348.P15733708477107486517

`A123630(A028310(n)+n)`
-/

namespace A263348.P15733708477107486517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123630 (A028310 n + (n : ℤ)).toNat

end

end A263348.P15733708477107486517

/-! ## A263348.P15270866550623117644

`A123630(A000007(n)+2*n)`
-/

namespace A263348.P15270866550623117644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123630 (A000007 n + (2 * n : ℤ)).toNat

end

end A263348.P15270866550623117644

/-! ## A263348.P6016472433350333574

`A123630(A000007(n)+n+n)`
-/

namespace A263348.P6016472433350333574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123630 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A263348.P6016472433350333574

/-! ## A263348.P13940718067637897059

`record[A145728(n)]`
-/

namespace A263348.P13940718067637897059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263348.P13940718067637897059

/-! ## A263348.P8875658208994959607

`A103259(2*n)/A280560(2*n)`
-/

namespace A263348.P8875658208994959607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103259 (2 * n) : ℚ) / (A280560 (2 * n) : ℚ)

end

end A263348.P8875658208994959607

/-! ## A263348.P15247110071936574334

`A145933(4*n)`
-/

namespace A263348.P15247110071936574334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145933 (4 * n)

end

end A263348.P15247110071936574334

/-! ## A263348.P8171863015886611886

`A143752(A028310(4*n))`
-/

namespace A263348.P8171863015886611886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143752 (A028310 (4 * n)).toNat

end

end A263348.P8171863015886611886

/-!
# A263349: a(n) = smallest number > a(n-1) such that a(n-1) + a(n) is a semiprime (A001358), a(1)=1.

The programs for A263349, there is no canonical definition to state claims against.
-/

/-! ## A263349.P8509652220230164032

`∑[A109337(A055615(n+1)²+n)]`
-/

namespace A263349.P8509652220230164032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109337 (A055615 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263349.P8509652220230164032

/-! ## A263349.P1034645425694209551

`A073490(A073415(n+1))+A073355(n+1)`
-/

namespace A263349.P1034645425694209551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A073415 (n + 1)).toNat + A073355 (n + 1)

end

end A263349.P1034645425694209551

/-!
# A263350: Maximum gcd of (p-1)/2 and (q-1)/2 for distinct prime factors p and q of the n-th Carmichael number.

The programs for A263350, there is no canonical definition to state claims against.
-/

/-! ## A263350.P15907132003729427852

`A345440(n)+A039966(A345448(n))`
-/

namespace A263350.P15907132003729427852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 n + A039966 (A345448 n).toNat

end

end A263350.P15907132003729427852

/-! ## A263350.P6665255353726547296

`A048881(A277596(n+1)+A028860(n))`
-/

namespace A263350.P6665255353726547296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A277596 (n + 1) + A028860 n).toNat

end

end A263350.P6665255353726547296

/-! ## A263350.P18313690098075998328

`A345440(n)+A000161(A291445(n+1))`
-/

namespace A263350.P18313690098075998328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345440 n + A000161 (A291445 (n + 1)).toNat

end

end A263350.P18313690098075998328

/-! ## A263350.P5184404454826987760

`A336336(n+1)+A008966(A077784(n+1))`
-/

namespace A263350.P5184404454826987760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (n + 1) + A008966 (A077784 (n + 1)).toNat

end

end A263350.P5184404454826987760

/-! ## A263350.P4200755676540020935

`A238966(A368823(n+1)+A008619(3*n+1))`
-/

namespace A263350.P4200755676540020935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 (A368823 (n + 1) + A008619 (3 * n + 1)).toNat

end

end A263350.P4200755676540020935

/-!
# A263351: Fixed points of A243625: integers n such that A243625(n)=n.

The programs for A263351, there is no canonical definition to state claims against.
-/

/-! ## A263351.P12516475714532767890

`eq[n+1, A243625(n+1)]+1`
-/

namespace A263351.P12516475714532767890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263351.P12516475714532767890

/-! ## A263351.P16798805449130759472

`eq[n, A243625(A028310(n))]`
-/

namespace A263351.P16798805449130759472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243625 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263351.P16798805449130759472

/-! ## A263351.P15661568167667289092

`eq[n, A243625(A000038(n)+n)]`
-/

namespace A263351.P15661568167667289092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243625 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263351.P15661568167667289092

/-! ## A263351.P10401923141226863097

`eq[n, A243625(or(n, A000038(n)))]`
-/

namespace A263351.P10401923141226863097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243625 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263351.P10401923141226863097

/-! ## A263351.P7621632794394622436

`eq[n, A243625(abs(n-A000038(n)))]`
-/

namespace A263351.P7621632794394622436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243625 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263351.P7621632794394622436

/-! ## A263351.P6396523255145054546

`eq[n, A243625(A065033(2*n))]`
-/

namespace A263351.P6396523255145054546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243625 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263351.P6396523255145054546

/-!
# A263352: Expansion of Product_{k>=1} 1/(1 - x^(2*k+3))^k.

The programs for A263352, there is no canonical definition to state claims against.
-/

/-! ## A263352.P13323674329397264056

`A029394(record[A025442(A305188(n+1))])`
-/

namespace A263352.P13323674329397264056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A305188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029394 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263352.P13323674329397264056

/-! ## A263352.P1255798999548444725

`A263395(n)+A115861(A353837(n))`
-/

namespace A263352.P1255798999548444725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263395 n + A115861 (A353837 n).toNat

end

end A263352.P1255798999548444725

/-! ## A263352.P8552884333638751222

`A239241(n)-A014017(A052531(n))`
-/

namespace A263352.P8552884333638751222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 n - A014017 (A052531 n).toNat

end

end A263352.P8552884333638751222

/-! ## A263352.P14167215966836509592

`A239241(n)-A284388(A000079(n))`
-/

namespace A263352.P14167215966836509592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 n - A284388 (A000079 n).toNat

end

end A263352.P14167215966836509592

/-! ## A263352.P6369771704504276479

`A239241(n)-A266070(A092809(n))`
-/

namespace A263352.P6369771704504276479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 n - A266070 (A092809 n).toNat

end

end A263352.P6369771704504276479

/-!
# A263359: Expansion of Product_{k>=1} 1/(1-x^(k+3))^k.

The programs for A263359, there is no canonical definition to state claims against.
-/

/-! ## A263359.P16418228668872760346

`A263659(n)-A280193(A000079(n))`
-/

namespace A263359.P16418228668872760346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263659 n - A280193 (A000079 n).toNat

end

end A263359.P16418228668872760346

/-! ## A263359.P13743504112198668242

`A263659(n)-A280193(A220051(n))`
-/

namespace A263359.P13743504112198668242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263659 n - A280193 (A220051 n).toNat

end

end A263359.P13743504112198668242

/-! ## A263359.P17560649132255284807

`A263659(n)-A280193(A011782(n+1))`
-/

namespace A263359.P17560649132255284807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263659 n - A280193 (A011782 (n + 1)).toNat

end

end A263359.P17560649132255284807

/-!
# A263365: Number of (n+1)X(n+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

The programs for A263365, there is no canonical definition to state claims against.
-/

/-! ## A263365.P4528636343063278901

`A263373(∑[4*n]+1)`
-/

namespace A263365.P4528636343063278901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263365.P4528636343063278901

/-!
# A263366: Number of (n+1) X (1+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

The programs for A263366, the canonical program `A263366.P7366423946879105829` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263366 has offset 1).

The definition of A263366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263366.P7366423946879105829

`A131532(n)+A077947(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A263366

/-- `A131532(n)+A077947(n)` -/
def P7366423946879105829.Spec : Prop :=
  ∀ n, P7366423946879105829.a n = A263366 (n + 1)

theorem P7366423946879105829.correct : P7366423946879105829.Spec := by
  intro n
  simp only [A263366, Nat.add_sub_cancel]

end A263366

/-! ## A263366.P836842559933856755

`A046630(n)-A095130(n)`
-/

namespace A263366.P836842559933856755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 n - A095130 n

end

end A263366.P836842559933856755

namespace A263366

/-- `A046630(n)-A095130(n)` -/
def P836842559933856755.Spec : Prop :=
  ∀ n, P836842559933856755.a n = A263366 (n + 1)

end A263366

/-! ## A263366.P14072045174107646473

`A079978(A008619(n))+A077947(n)`
-/

namespace A263366.P14072045174107646473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A008619 n).toNat + A077947 n

end

end A263366.P14072045174107646473

namespace A263366

/-- `A079978(A008619(n))+A077947(n)` -/
def P14072045174107646473.Spec : Prop :=
  ∀ n, P14072045174107646473.a n = A263366 (n + 1)

end A263366

/-! ## A263366.P9594225279665379638

`A077947(n)+A072627(A267458(n))`
-/

namespace A263366.P9594225279665379638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n + A072627 (A267458 n).toNat

end

end A263366.P9594225279665379638

namespace A263366

/-- `A077947(n)+A072627(A267458(n))` -/
def P9594225279665379638.Spec : Prop :=
  ∀ n, P9594225279665379638.a n = A263366 (n + 1)

end A263366

/-! ## A263366.P5047822618751417166

`A077947(n)+val(A195904(n+1), 16)`
-/

namespace A263366.P5047822618751417166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 n + (SequenceMachineLib.valuation (A195904 (n + 1)).toNat 16 : ℤ)

end

end A263366.P5047822618751417166

namespace A263366

/-- `A077947(n)+val(A195904(n+1), 16)` -/
def P5047822618751417166.Spec : Prop :=
  ∀ n, P5047822618751417166.a n = A263366 (n + 1)

end A263366

/-! ## A263366.P7752042297691569763

`ceil(A143100(n+3)/7)`
-/

namespace A263366.P7752042297691569763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143100 (n + 3) : ℚ) / 7⌉

end

end A263366.P7752042297691569763

namespace A263366

/-- `ceil(A143100(n+3)/7)` -/
def P7752042297691569763.Spec : Prop :=
  ∀ n, P7752042297691569763.a n = A263366 (n + 1)

end A263366

/-!
# A263367: Number of (n+1)X(2+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

The programs for A263367, there is no canonical definition to state claims against.
-/

/-! ## A263367.P10824724016671601411

`A263373(∑[n+1]+2)`
-/

namespace A263367.P10824724016671601411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263367.P10824724016671601411

/-! ## A263367.P10536791056531251131

`record[A010054(n)*A263373(n+2)]`
-/

namespace A263367.P10536791056531251131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263373 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263367.P10536791056531251131

/-! ## A263367.P14654246414115996460

`record[gcd(A098825(n), A263373(n+1))]`
-/

namespace A263367.P14654246414115996460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A263373 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263367.P14654246414115996460

/-! ## A263367.P1527059274944149115

`record[gcd(A263373(n+2), A357368(n))]`
-/

namespace A263367.P1527059274944149115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263373 (n + 2)) (A357368 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263367.P1527059274944149115

/-! ## A263367.P15090452604954673687

`record[gcd(A055290(n+2), A263373(n+3))]`
-/

namespace A263367.P15090452604954673687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055290 (n + 2)) (A263373 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263367.P15090452604954673687

/-!
# A263368: Number of (n+1)X(3+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

The programs for A263368, there is no canonical definition to state claims against.
-/

/-! ## A263368.P10433196349556043013

`A263373(∑[n+2]+4)`
-/

namespace A263368.P10433196349556043013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263368.P10433196349556043013

/-! ## A263368.P15619978155185392355

`A263373(A167614(n+1))+A025443(n)`
-/

namespace A263368.P15619978155185392355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A167614 (n + 1)).toNat + A025443 n

end

end A263368.P15619978155185392355

/-! ## A263368.P13758497585051077681

`A263373(A167614(n+1))+A185203(n)`
-/

namespace A263368.P13758497585051077681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A167614 (n + 1)).toNat + A185203 n

end

end A263368.P13758497585051077681

/-! ## A263368.P8887935481113727496

`A263373(A167614(n+1))+A185255(n)`
-/

namespace A263368.P8887935481113727496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A167614 (n + 1)).toNat + A185255 n

end

end A263368.P8887935481113727496

/-! ## A263368.P9642759534440775867

`A053501(n)*A263373(A167614(n+1))`
-/

namespace A263368.P9642759534440775867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n * A263373 (A167614 (n + 1)).toNat

end

end A263368.P9642759534440775867

/-!
# A263369: Number of (n+1)X(4+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

The programs for A263369, there is no canonical definition to state claims against.
-/

/-! ## A263369.P16210491465588112510

`A263373(∑[n+3]+7)`
-/

namespace A263369.P16210491465588112510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A263369.P16210491465588112510

/-!
# A263370: Number of (n+1)X(5+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

The programs for A263370, there is no canonical definition to state claims against.
-/

/-! ## A263370.P14584148212437499451

`A263373(A374005(n+1))`
-/

namespace A263370.P14584148212437499451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A374005 (n + 1)).toNat

end

end A263370.P14584148212437499451

/-! ## A263370.P7316698856572169780

`A263373(A167499(n+3))`
-/

namespace A263370.P7316698856572169780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A167499 (n + 3)).toNat

end

end A263370.P7316698856572169780

/-! ## A263370.P1055979245725386208

`A263373(A155212(n)+13)`
-/

namespace A263370.P1055979245725386208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A155212 n + 13).toNat

end

end A263370.P1055979245725386208

/-! ## A263370.P1640292308076797472

`A263373(A056000(n)+15)`
-/

namespace A263370.P1640292308076797472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A056000 n + 15).toNat

end

end A263370.P1640292308076797472

/-! ## A263370.P5369327203591071800

`A263373(eq[7, A066657(n)])`
-/

namespace A263370.P5369327203591071800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263370.P5369327203591071800

/-!
# A263371: Number of (n+1)X(6+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

The programs for A263371, there is no canonical definition to state claims against.
-/

/-! ## A263371.P10098225134113381361

`A263373(A374007(n+1))`
-/

namespace A263371.P10098225134113381361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A374007 (n + 1)).toNat

end

end A263371.P10098225134113381361

/-! ## A263371.P148938539585745201

`A263373(A166136(n+4))`
-/

namespace A263371.P148938539585745201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A166136 (n + 4)).toNat

end

end A263371.P148938539585745201

/-! ## A263371.P17206028110847678134

`A263373(A000217(n+5)+6)`
-/

namespace A263371.P17206028110847678134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A000217 (n + 5) + 6).toNat

end

end A263371.P17206028110847678134

/-! ## A263371.P8831162254353434455

`A263373(A056000(n+1)+16)`
-/

namespace A263371.P8831162254353434455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A056000 (n + 1) + 16).toNat

end

end A263371.P8831162254353434455

/-!
# A263372: Number of (n+1)X(7+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

The programs for A263372, there is no canonical definition to state claims against.
-/

/-! ## A263372.P18108758576507276610

`A263373(A374008(n+1))`
-/

namespace A263372.P18108758576507276610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263373 (A374008 (n + 1)).toNat

end

end A263372.P18108758576507276610

/-!
# A263374: Number of (n+1)X(n+1) 0..4 arrays with each row and column divisible by 9, read as a base-5 number with top and left being the most significant digits.

The programs for A263374, there is no canonical definition to state claims against.
-/

/-! ## A263374.P14459944181834266030

`A263382((n+1)²+n²)`
-/

namespace A263374.P14459944181834266030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 ((n + 1) ^ 2 + n ^ 2)

end

end A263374.P14459944181834266030

/-!
# A263375: Number of (n+1) X (1+1) 0..4 arrays with each row and column divisible by 9, read as a base-5 number with top and left being the most significant digits.

The programs for A263375, there is no canonical definition to state claims against.
-/

/-! ## A263375.P4105036207507126689

`A263382(∑[n]+1)`
-/

namespace A263375.P4105036207507126689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263375.P4105036207507126689

/-! ## A263375.P5283835116130273883

`record[A010054(n)*A263382(n+1)]`
-/

namespace A263375.P5283835116130273883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263375.P5283835116130273883

/-! ## A263375.P2593472388973904518

`record[root(A263382(n+1), A074909(n))]`
-/

namespace A263375.P2593472388973904518
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263382 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263375.P2593472388973904518

/-! ## A263375.P556194511182259150

`record[root(A263382(n+1), A152842(n))]`
-/

namespace A263375.P556194511182259150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263382 (n + 1) : ℝ) ^ (1 / (A152842 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263375.P556194511182259150

/-! ## A263375.P14909384759236225561

`record[gcd(A145153(n), A263382(n+1))]`
-/

namespace A263375.P14909384759236225561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145153 n) (A263382 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263375.P14909384759236225561

/-!
# A263376: Number of (n+1)X(2+1) 0..4 arrays with each row and column divisible by 9, read as a base-5 number with top and left being the most significant digits.

The programs for A263376, there is no canonical definition to state claims against.
-/

/-! ## A263376.P10931968494974180109

`A263382(∑[n+1]+2)`
-/

namespace A263376.P10931968494974180109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263376.P10931968494974180109

/-! ## A263376.P8364064407349126068

`record[A010054(n)*A263382(n+2)]`
-/

namespace A263376.P8364064407349126068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263376.P8364064407349126068

/-! ## A263376.P9150545059763995951

`record[root(A263382(n+2), A074909(n))]`
-/

namespace A263376.P9150545059763995951
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263382 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263376.P9150545059763995951

/-! ## A263376.P18012982476233883851

`record[root(A263382(n+2), A152842(n))]`
-/

namespace A263376.P18012982476233883851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263382 (n + 2) : ℝ) ^ (1 / (A152842 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263376.P18012982476233883851

/-! ## A263376.P7646847428222109903

`record[gcd(A145153(n), A263382(n+2))]`
-/

namespace A263376.P7646847428222109903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145153 n) (A263382 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263376.P7646847428222109903

/-!
# A263377: Number of (n+1)X(3+1) 0..4 arrays with each row and column divisible by 9, read as a base-5 number with top and left being the most significant digits.

The programs for A263377, there is no canonical definition to state claims against.
-/

/-! ## A263377.P14495928381537334227

`A263382(∑[n+2]+4)`
-/

namespace A263377.P14495928381537334227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263377.P14495928381537334227

/-! ## A263377.P6890333770642183192

`A015046(n)*A263382(A167614(n+1))`
-/

namespace A263377.P6890333770642183192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015046 n * A263382 (A167614 (n + 1)).toNat

end

end A263377.P6890333770642183192

/-! ## A263377.P10714606503078068623

`A257463(n)*A263382(A167614(n+1))`
-/

namespace A263377.P10714606503078068623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257463 n * A263382 (A167614 (n + 1)).toNat

end

end A263377.P10714606503078068623

/-! ## A263377.P5443921214200170513

`lcm(A033999(n), A263382(A167614(n+1)))`
-/

namespace A263377.P5443921214200170513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A263382 (A167614 (n + 1)).toNat)

end

end A263377.P5443921214200170513

/-! ## A263377.P2677281391716826852

`A263382(A167614(n+1))+A035322(n+1)`
-/

namespace A263377.P2677281391716826852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (A167614 (n + 1)).toNat + A035322 (n + 1)

end

end A263377.P2677281391716826852

/-!
# A263378: Number of (n+1)X(4+1) 0..4 arrays with each row and column divisible by 9, read as a base-5 number with top and left being the most significant digits.

The programs for A263378, there is no canonical definition to state claims against.
-/

/-! ## A263378.P5635899835488253363

`A263382(A167614(n+2)+1)`
-/

namespace A263378.P5635899835488253363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (A167614 (n + 2) + 1).toNat

end

end A263378.P5635899835488253363

/-!
# A263379: Number of (n+1)X(5+1) 0..4 arrays with each row and column divisible by 9, read as a base-5 number with top and left being the most significant digits.

The programs for A263379, there is no canonical definition to state claims against.
-/

/-! ## A263379.P15820449250244894730

`A263382(A374005(n+1))`
-/

namespace A263379.P15820449250244894730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (A374005 (n + 1)).toNat

end

end A263379.P15820449250244894730

/-! ## A263379.P5448759762262551282

`A263382(A000124(n+5)-(n+1))`
-/

namespace A263379.P5448759762262551282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A263379.P5448759762262551282

/-! ## A263379.P11310513772755053670

`A263382(eq[8, A141020(n)])`
-/

namespace A263379.P11310513772755053670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263379.P11310513772755053670

/-!
# A263381: 

The programs for A263381, there is no canonical definition to state claims against.
-/

/-! ## A263381.P2803120976244169787

`A263382(A000217(n+7)-n)`
-/

namespace A263381.P2803120976244169787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263382 (A000217 (n + 7) - (n : ℤ)).toNat

end

end A263381.P2803120976244169787

/-!
# A263383: Lengths of cycles of permutation A263327.

The programs for A263383, there is no canonical definition to state claims against.
-/

/-! ## A263383.P4982764596258218467

`A103691(A280930(floor(n^(5/4))+2))`
-/

namespace A263383.P4982764596258218467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103691 (A280930 (⌊(n : ℝ) ^ ((5 : ℚ) / 4 : ℝ)⌋ + 2).toNat).toNat

end

end A263383.P4982764596258218467

/-! ## A263383.P2760420224283532078

`A323433(A287761(n+1)%A088195(n+1))`
-/

namespace A263383.P2760420224283532078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323433 (Int.tmod (A287761 (n + 1)) (A088195 (n + 1))).toNat

end

end A263383.P2760420224283532078

/-! ## A263383.P4263429733398504445

`A078898(A007318(3*(n+1))^A103977(n+1))`
-/

namespace A263383.P4263429733398504445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.roundAway ((A007318 (3 * (n + 1)) : ℚ) ^ (A103977 (n + 1) : ℤ))).toNat

end

end A263383.P4263429733398504445

/-!
# A263384: Fourth column of the matrix of polynomial coefficients of the rational approximation to Mill's ratio.

The programs for A263384, there is no canonical definition to state claims against.
-/

/-! ## A263384.P13539140640836070164

`A230698(A167614(2*(n+1)))`
-/

namespace A263384.P13539140640836070164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A167614 (2 * (n + 1))).toNat

end

end A263384.P13539140640836070164

/-! ## A263384.P4994419555260499211

`A230698(A000217(2*n+3)+3)`
-/

namespace A263384.P4994419555260499211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A000217 (2 * n + 3) + 3).toNat

end

end A263384.P4994419555260499211

/-! ## A263384.P13813358592506554263

`A180048(A100037(n+2))`
-/

namespace A263384.P13813358592506554263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180048 (A100037 (n + 2)).toNat

end

end A263384.P13813358592506554263

/-! ## A263384.P15119339995913771922

`record[A180048(∑[A233583(n+1)])]`
-/

namespace A263384.P15119339995913771922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180048 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263384.P15119339995913771922

/-! ## A263384.P6605939196791765434

`record[A180048(eq[4, A112544(n+1)])]`
-/

namespace A263384.P6605939196791765434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180048 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263384.P6605939196791765434

/-!
# A263385: Number of (n+1)X(1+1) arrays of permutations of 0..n*1-1 with each element moved a city block distance of exactly 2.

The programs for A263385, the canonical program `A263385.P7923351982636310389` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263385 has offset 1).

The definition of A263385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263385.P7923351982636310389

`record[A033305(n)²]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A263385

/-- `record[A033305(n)²]` -/
def P7923351982636310389.Spec : Prop :=
  ∀ n, P7923351982636310389.a n = A263385 (n + 1)

theorem P7923351982636310389.correct : P7923351982636310389.Spec := by
  intro n
  simp only [A263385, Nat.add_sub_cancel]

end A263385

/-! ## A263385.P14587614227951836847

`A033305(n+2)²`
-/

namespace A263385.P14587614227951836847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 2) ^ 2

end

end A263385.P14587614227951836847

namespace A263385

/-- `A033305(n+2)²` -/
def P14587614227951836847.Spec : Prop :=
  ∀ n, P14587614227951836847.a n = A263385 (n + 1)

end A263385

/-! ## A263385.P14234708730110240147

`A033305(2*(n+1)-n)^2`
-/

namespace A263385.P14234708730110240147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (2 * (n + 1) - n) ^ 2

end

end A263385.P14234708730110240147

namespace A263385

/-- `A033305(2*(n+1)-n)^2` -/
def P14234708730110240147.Spec : Prop :=
  ∀ n, P14234708730110240147.a n = A263385 (n + 1)

end A263385

/-! ## A263385.P272552199594607455

`(A321048(n+2)+log2(gcd(2, n)))²`
-/

namespace A263385.P272552199594607455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A321048 (n + 2) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)) ^ 2

end

end A263385.P272552199594607455

namespace A263385

/-- `(A321048(n+2)+log2(gcd(2, n)))²` -/
def P272552199594607455.Spec : Prop :=
  ∀ n, P272552199594607455.a n = (A263385 (n + 1) : ℝ)

end A263385

/-! ## A263385.P7595869531543384258

`(A321048(n+2)+A059841(n))²`
-/

namespace A263385.P7595869531543384258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321048 (n + 2) + A059841 n) ^ 2

end

end A263385.P7595869531543384258

namespace A263385

/-- `(A321048(n+2)+A059841(n))²` -/
def P7595869531543384258.Spec : Prop :=
  ∀ n, P7595869531543384258.a n = A263385 (n + 1)

end A263385

/-! ## A263385.P3453769633136290445

`record[A033305(n)]*A033305(n+2)`
-/

namespace A263385.P3453769633136290445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033305 (n + 2)

end

end A263385.P3453769633136290445

namespace A263385

/-- `record[A033305(n)]*A033305(n+2)` -/
def P3453769633136290445.Spec : Prop :=
  ∀ n, P3453769633136290445.a n = A263385 (n + 1)

end A263385

/-! ## A263385.P14931488912560998746

`(A321048(n+2)+char[A005843(n)])²`
-/

namespace A263385.P14931488912560998746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321048 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A263385.P14931488912560998746

namespace A263385

/-- `(A321048(n+2)+char[A005843(n)])²` -/
def P14931488912560998746.Spec : Prop :=
  ∀ n, P14931488912560998746.a n = A263385 (n + 1)

end A263385

/-! ## A263385.P7389543487721856261

`(A321048(n+2)+A000035(n+1))²`
-/

namespace A263385.P7389543487721856261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321048 (n + 2) + A000035 (n + 1)) ^ 2

end

end A263385.P7389543487721856261

namespace A263385

/-- `(A321048(n+2)+A000035(n+1))²` -/
def P7389543487721856261.Spec : Prop :=
  ∀ n, P7389543487721856261.a n = A263385 (n + 1)

end A263385

/-! ## A263385.P8414800978673361865

`record[A033305(n)^A000005(A007918(n))]`
-/

namespace A263385.P8414800978673361865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033305 n : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263385.P8414800978673361865

namespace A263385

/-- `record[A033305(n)^A000005(A007918(n))]` -/
def P8414800978673361865.Spec : Prop :=
  ∀ n, P8414800978673361865.a n = (A263385 (n + 1) : ℚ)

end A263385

/-! ## A263385.P5662528749884625079

`(A321048(n+2)+A106544(A001511(n+1)))²`
-/

namespace A263385.P5662528749884625079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321048 (n + 2) + A106544 (A001511 (n + 1)).toNat) ^ 2

end

end A263385.P5662528749884625079

namespace A263385

/-- `(A321048(n+2)+A106544(A001511(n+1)))²` -/
def P5662528749884625079.Spec : Prop :=
  ∀ n, P5662528749884625079.a n = A263385 (n + 1)

end A263385

/-!
# A263386: Number of (n+1)X(2+1) arrays of permutations of 0..n*2-1 with each element moved a city block distance of exactly 2.

The programs for A263386, there is no canonical definition to state claims against.
-/

/-! ## A263386.P2554615538424968573

`A263389(∑[n+1]+2)`
-/

namespace A263386.P2554615538424968573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263389 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263386.P2554615538424968573

/-! ## A263386.P10812716085331083597

`record[gcd(A079904(n), A263389(n+2))]`
-/

namespace A263386.P10812716085331083597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079904 n) (A263389 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263386.P10812716085331083597

/-! ## A263386.P3357823246715189597

`record[A263389(Δ[A003453(n+5)])]`
-/

namespace A263386.P3357823246715189597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263389 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263386.P3357823246715189597

/-!
# A263387: Number of (n+1)X(3+1) arrays of permutations of 0..n*3-1 with each element moved a city block distance of exactly 2.

The programs for A263387, there is no canonical definition to state claims against.
-/

/-! ## A263387.P12037709270433578025

`A263389(∑[n+2]+4)`
-/

namespace A263387.P12037709270433578025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263389 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263387.P12037709270433578025

/-! ## A263387.P12103725062251234788

`record[A263389(A167614(val(n+1, 2)+1))]`
-/

namespace A263387.P12103725062251234788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263389 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263387.P12103725062251234788

/-! ## A263387.P5813633222506659034

`A263389(A167614(n+1))+floor(n/10)`
-/

namespace A263387.P5813633222506659034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263389 (A167614 (n + 1)).toNat + ⌊(n : ℚ) / 10⌋

end

end A263387.P5813633222506659034

/-!
# A263388: Number of (n+1)X(4+1) arrays of permutations of 0..n*4-1 with each element moved a city block distance of exactly 2.

The programs for A263388, there is no canonical definition to state claims against.
-/

/-! ## A263388.P6905917313538373950

`A263389(A020752(n+1))`
-/

namespace A263388.P6905917313538373950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263389 (A020752 (n + 1)).toNat

end

end A263388.P6905917313538373950

/-! ## A263388.P1093059855856872959

`A263389(A374004(n+1))`
-/

namespace A263388.P1093059855856872959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263389 (A374004 (n + 1)).toNat

end

end A263388.P1093059855856872959

/-!
# A263389: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..n*k-1 with each element moved a city block distance of exactly 2.

The programs for A263389, there is no canonical definition to state claims against.
-/

/-! ## A263389.P16800646359213804205

`A005722(A197079(n+1)^A109540(n))`
-/

namespace A263389.P16800646359213804205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (SequenceMachineLib.roundAway ((A197079 (n + 1) : ℚ) ^ (A109540 n : ℤ))).toNat

end

end A263389.P16800646359213804205

/-! ## A263389.P7446199782304736335

`A005722(A208340(n+1)^A109540(n))`
-/

namespace A263389.P7446199782304736335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (SequenceMachineLib.roundAway ((A208340 (n + 1) : ℚ) ^ (A109540 n : ℤ))).toNat

end

end A263389.P7446199782304736335

/-! ## A263389.P18029691589771680326

`A005722(A197079(n+1)^A147182(n+1))`
-/

namespace A263389.P18029691589771680326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (SequenceMachineLib.roundAway ((A197079 (n + 1) : ℚ) ^ (A147182 (n + 1) : ℤ))).toNat

end

end A263389.P18029691589771680326

/-! ## A263389.P16787092220173602650

`A005722(A208340(n+1)^A147182(n+1))`
-/

namespace A263389.P16787092220173602650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (SequenceMachineLib.roundAway ((A208340 (n + 1) : ℚ) ^ (A147182 (n + 1) : ℤ))).toNat

end

end A263389.P16787092220173602650

/-!
# A263390: a(3n) = n, otherwise a(n) = a(floor(2n/3)).

The programs for A263390, there is no canonical definition to state claims against.
-/

/-! ## A263390.P13103430860566360273

`A163491(n+1)-1`
-/

namespace A263390.P13103430860566360273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (n + 1) - 1

end

end A263390.P13103430860566360273

/-! ## A263390.P6759014589287756590

`A023443(A163491(n+1))`
-/

namespace A263390.P6759014589287756590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A163491 (n + 1)).toNat

end

end A263390.P6759014589287756590

/-! ## A263390.P1935602446160973977

`A289207(A163491(n+1)+1)`
-/

namespace A263390.P1935602446160973977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A163491 (n + 1) + 1).toNat

end

end A263390.P1935602446160973977

/-! ## A263390.P16642546007969534987

`A065423(2*A163491(n+1))`
-/

namespace A263390.P16642546007969534987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A163491 (n + 1)).toNat

end

end A263390.P16642546007969534987

/-! ## A263390.P3311031484471553227

`(A163491(n+1)+n)%A000027(n+1)`
-/

namespace A263390.P3311031484471553227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163491 (n + 1) + (n : ℤ)) (A000027 (n + 1))

end

end A263390.P3311031484471553227

/-! ## A263390.P8544019529409427931

`(A163491(n+1)+A057428(n))%A005728(n)`
-/

namespace A263390.P8544019529409427931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163491 (n + 1) + A057428 n) (A005728 n)

end

end A263390.P8544019529409427931

/-! ## A263390.P3588985992931739208

`A001489(n+1)+A163491(n+1)+n`
-/

namespace A263390.P3588985992931739208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A163491 (n + 1) + (n : ℤ))

end

end A263390.P3588985992931739208

/-! ## A263390.P17002214455221760011

`abs(A163491(n+1)+A008683(A157996(n+1)))`
-/

namespace A263390.P17002214455221760011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163491 (n + 1) + A008683 (A157996 (n + 1)).toNat|

end

end A263390.P17002214455221760011

/-! ## A263390.P3587067535149921064

`A059169(4*A163491(n+1))`
-/

namespace A263390.P3587067535149921064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A163491 (n + 1)).toNat

end

end A263390.P3587067535149921064

/-! ## A263390.P2506524237879953113

`(A163491(A007494(n+1))+n)%(n+1)`
-/

namespace A263390.P2506524237879953113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163491 (A007494 (n + 1)).toNat + (n : ℤ)) (n + 1 : ℤ)

end

end A263390.P2506524237879953113

/-! ## A263390.P13611434305851459493

`(A163491(n+1)+n+1)%A340716(A095116(n+1))`
-/

namespace A263390.P13611434305851459493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163491 (n + 1) + (n + 1 : ℤ)) (A340716 (A095116 (n + 1)).toNat)

end

end A263390.P13611434305851459493

/-! ## A263390.P7466087325375628917

`(A163491(n+1)+A061419(n+1))%A061418(n+1)`
-/

namespace A263390.P7466087325375628917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163491 (n + 1) + A061419 (n + 1)) (A061418 (n + 1))

end

end A263390.P7466087325375628917

/-! ## A263390.P11794130072797467592

`A057918(A163491(n+1)²)`
-/

namespace A263390.P11794130072797467592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A163491 (n + 1) ^ 2).toNat

end

end A263390.P11794130072797467592

/-! ## A263390.P17290303656404310379

`A259361(A163491(n+1)²)`
-/

namespace A263390.P17290303656404310379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A163491 (n + 1) ^ 2).toNat

end

end A263390.P17290303656404310379

/-! ## A263390.P13542706463283265154

`A083800(n+1)%A163491(n+1)`
-/

namespace A263390.P13542706463283265154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A163491 (n + 1))

end

end A263390.P13542706463283265154

/-! ## A263390.P9430650511161882891

`A070198(n)%A163491(n+1)`
-/

namespace A263390.P9430650511161882891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A163491 (n + 1))

end

end A263390.P9430650511161882891

/-! ## A263390.P6876174049281635750

`A079782(n+1)%A163491(n+1)`
-/

namespace A263390.P6876174049281635750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A163491 (n + 1))

end

end A263390.P6876174049281635750

/-! ## A263390.P5222548054667064400

`A083685(n+1)%A163491(n+1)`
-/

namespace A263390.P5222548054667064400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A163491 (n + 1))

end

end A263390.P5222548054667064400

/-! ## A263390.P2696000246691340922

`A121934(n+1)%A163491(n+1)`
-/

namespace A263390.P2696000246691340922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A163491 (n + 1))

end

end A263390.P2696000246691340922

/-! ## A263390.P2871480354493951952

`A057918(2*A163491(n+1)*A163491(n+1))`
-/

namespace A263390.P2871480354493951952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (2 * A163491 (n + 1) * A163491 (n + 1)).toNat

end

end A263390.P2871480354493951952

/-!
# A263393: Smallest Fibonacci number containing Fibonacci(n) as a proper substring in decimal notation.

The programs for A263393, there is no canonical definition to state claims against.
-/

/-! ## A263393.P16429271323800051608

`A000045(A263400(n))`
-/

namespace A263393.P16429271323800051608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A263400 n).toNat

end

end A263393.P16429271323800051608

/-! ## A263393.P2482667323574036202

`A212804(A263400(n)+1)`
-/

namespace A263393.P2482667323574036202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A263400 n + 1).toNat

end

end A263393.P2482667323574036202

/-! ## A263393.P13324618232043457511

`A053602(2*A263400(n))`
-/

namespace A263393.P13324618232043457511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A263400 n).toNat

end

end A263393.P13324618232043457511

/-! ## A263393.P5586635634801246587

`A103609(2*A263400(n))`
-/

namespace A263393.P5586635634801246587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A263400 n).toNat

end

end A263393.P5586635634801246587

/-! ## A263393.P5108776044867648323

`A103609(A263400(n)+A263400(n)+1)`
-/

namespace A263393.P5108776044867648323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A263400 n + (A263400 n + 1)).toNat

end

end A263393.P5108776044867648323

/-!
# A263394: a(n) = Product_{i=1..n} (3^i - 2^i).

The programs for A263394, there is no canonical definition to state claims against.
-/

/-! ## A263394.P4678481075475360365

`∏[3^(n+1)-2^(n+1)]`
-/

namespace A263394.P4678481075475360365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A263394.P4678481075475360365

/-! ## A263394.P2155920208351969755

`(3^(n+1)-2^(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A263394.P2155920208351969755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)) * a (n - 1)

end

end A263394.P2155920208351969755

/-! ## A263394.P7996293420927908398

`or(1, ∏[∑[A027649(n)]])`
-/

namespace A263394.P7996293420927908398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A263394.P7996293420927908398

/-! ## A263394.P8980019761585060421

`or(1, ∏[A001047(n+1)])`
-/

namespace A263394.P8980019761585060421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A263394.P8980019761585060421

/-! ## A263394.P15085842927489360462

`abs(∏[Δ[A000392(n+2)]])`
-/

namespace A263394.P15085842927489360462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A263394.P15085842927489360462

/-!
# A263395: Expansion of Product_{k>=1} 1/(1 - x^(2*k+5))^k.

The programs for A263395, there is no canonical definition to state claims against.
-/

/-! ## A263395.P16870929333165087222

`A008721(n)%(A081604(∏[∏{e}[2*n, #]])+1)`
-/

namespace A263395.P16870929333165087222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008721 n) (A081604 (∏ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A263395.P16870929333165087222

/-! ## A263395.P3520154823484936736

`A341777(A298026(n)+5)`
-/

namespace A263395.P3520154823484936736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341777 (A298026 n + 5).toNat

end

end A263395.P3520154823484936736

/-! ## A263395.P1379926507349385681

`A181935(A176868(n))-A057427(n)`
-/

namespace A263395.P1379926507349385681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A176868 n).toNat - A057427 n

end

end A263395.P1379926507349385681

/-! ## A263395.P16895206728191197342

`A008735(A106609(n)^A278657(n))`
-/

namespace A263395.P16895206728191197342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008735 (SequenceMachineLib.roundAway ((A106609 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A263395.P16895206728191197342

/-! ## A263395.P16652089120686464770

`A181935(A176868(n))-char[A007318(n)]`
-/

namespace A263395.P16652089120686464770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A176868 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A263395.P16652089120686464770

/-!
# A263396: Expansion of Product_{k>=1} 1/(1 - x^(2*k+7))^k.

The programs for A263396, there is no canonical definition to state claims against.
-/

/-! ## A263396.P4990546180995435160

`floor(A000124(n)/A254474(A077805(n+1)))`
-/

namespace A263396.P4990546180995435160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000124 n : ℚ) / (A254474 (A077805 (n + 1)).toNat : ℚ)⌋

end

end A263396.P4990546180995435160

/-! ## A263396.P3237117862249488

`A008722(n)-A027656(n)%A061954(n+1)`
-/

namespace A263396.P3237117862249488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008722 n - Int.tmod (A027656 n) (A061954 (n + 1))

end

end A263396.P3237117862249488

/-! ## A263396.P5920909510102126822

`A263397(n+2)+A063524(A028909(n))`
-/

namespace A263396.P5920909510102126822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263397 (n + 2) + A063524 (A028909 n).toNat

end

end A263396.P5920909510102126822

/-! ## A263396.P17976073701729045008

`A263360(A378359(n+1)%A145041(n+1))`
-/

namespace A263396.P17976073701729045008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263360 (Int.tmod (A378359 (n + 1)) (A145041 (n + 1))).toNat

end

end A263396.P17976073701729045008

/-! ## A263396.P10482489094999268412

`A263397(lt[A263401(n), A263409(2*(n+1))])`
-/

namespace A263396.P10482489094999268412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263409 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263397 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A263396.P10482489094999268412

/-!
# A263397: Expansion of Product_{k>=1} 1/(1 - x^(2*k+9))^k.

The programs for A263397, there is no canonical definition to state claims against.
-/

/-! ## A263397.P13416726214680153063

`A010894(A007294(n))+A008723(A106617(n))`
-/

namespace A263397.P13416726214680153063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A007294 n).toNat + 21) + A008723 (A106617 n).toNat

end

end A263397.P13416726214680153063

/-! ## A263397.P5194151658018167058

`A010894(2*n+1)+A008723(A106617(n))`
-/

namespace A263397.P5194151658018167058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (2 * n + 1 + 21) + A008723 (A106617 n).toNat

end

end A263397.P5194151658018167058

/-! ## A263397.P7687482789763305982

`A374758(A326596((a(n-1)-1+n)%n))` with `a(0)=1`
-/

namespace A263397.P7687482789763305982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A374758 (A326596 (Int.tmod (a (n - 1) - 1 + (n : ℤ)) (n : ℤ)).toNat).toNat

end

end A263397.P7687482789763305982

/-! ## A263397.P6141095748331663689

`A263361(∑{e}[A107732(n+3), #])`
-/

namespace A263397.P6141095748331663689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107732 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263361 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A263397.P6141095748331663689

/-! ## A263397.P7702802597472802751

`A005171(n+1)*A341024(A261223(n+1))`
-/

namespace A263397.P7702802597472802751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A341024 ((A261223 (n + 1)).toNat + 84)

end

end A263397.P7702802597472802751

/-!
# A263398: Expansion of phi(-x^2)^6 * psi(x^6) / f(x)^2 in powers of x where phi(), psi(), f() are Ramanujan theta functions.

The programs for A263398, there is no canonical definition to state claims against.
-/

/-! ## A263398.P3316504792719185633

`A245643(3*n+2)/8`
-/

namespace A263398.P3316504792719185633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245643 (3 * n + 2) : ℚ) / 8

end

end A263398.P3316504792719185633

/-!
# A263399: Number of ordered pairs (k, m) with 0 < m < n and |k| < prime(m)^2 such that (k+prime(m+1)^2)/(k+prime(m)^2) = (k+prime(n+1)^2)/(k+prime(n)^2).

The programs for A263399, there is no canonical definition to state claims against.
-/

/-! ## A263399.P43000768907762137

`A282516(lt[A208510(3*n+2), A091803(3*n+2)])`
-/

namespace A263399.P43000768907762137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091803 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282516 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A263399.P43000768907762137

/-! ## A263399.P8783422870123931363

`A374741(n*A284826(n+1))`
-/

namespace A263399.P8783422870123931363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 ((n : ℤ) * A284826 (n + 1)).toNat

end

end A263399.P8783422870123931363

/-! ## A263399.P1090848260170963730

`A004275(A350452(n))%(n+1)`
-/

namespace A263399.P1090848260170963730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (A350452 n).toNat) (n + 1 : ℤ)

end

end A263399.P1090848260170963730

/-! ## A263399.P17658172025094784137

`n%floor(sqrt(n+1))*A048793(A214906(3*n+4))`
-/

namespace A263399.P17658172025094784137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % Nat.sqrt (n + 1) : ℕ) : ℤ) * A048793 (A214906 (3 * n + 4)).toNat

end

end A263399.P17658172025094784137

/-! ## A263399.P16650806260245980711

`A007494(n)%A265691(A059608(n+1))`
-/

namespace A263399.P16650806260245980711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007494 n) (A265691 (A059608 (n + 1)).toNat)

end

end A263399.P16650806260245980711

