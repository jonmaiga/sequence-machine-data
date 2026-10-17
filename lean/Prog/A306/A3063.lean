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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A306300: Discriminant D of real quadratic number field Q(sqrt(D)) associated with fundamental discriminant d = A003658(n).

The programs for A306300, the canonical program `A306300.P9618896820551810349` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306300 has offset 1).

The definition of A306300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306300.P13125878749927857730

`A007913(A003658(n+1))`
-/

namespace A306300.P13125878749927857730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003658 (n + 1)).toNat

end

end A306300.P13125878749927857730

namespace A306300

/-- `A007913(A003658(n+1))` -/
def P13125878749927857730.Spec : Prop :=
  ∀ n, P13125878749927857730.a n = A306300 (n + 1)

end A306300

/-! ## A306300.P9618896820551810349

`A083346(A003658(n+1)%A017224(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A306300

/-- `A083346(A003658(n+1)%A017224(n))` -/
def P9618896820551810349.Spec : Prop :=
  ∀ n, P9618896820551810349.a n = A306300 (n + 1)

theorem P9618896820551810349.correct : P9618896820551810349.Spec := by
  intro n
  simp only [A306300, Nat.add_sub_cancel]

end A306300

/-! ## A306300.P655030334157754400

`A106609(2*A003658(n+1))`
-/

namespace A306300.P655030334157754400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A003658 (n + 1)).toNat

end

end A306300.P655030334157754400

namespace A306300

/-- `A106609(2*A003658(n+1))` -/
def P655030334157754400.Spec : Prop :=
  ∀ n, P655030334157754400.a n = A306300 (n + 1)

end A306300

/-! ## A306300.P5262787904720245064

`A051724(3*A003658(n+1))`
-/

namespace A306300.P5262787904720245064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * A003658 (n + 1)).toNat

end

end A306300.P5262787904720245064

namespace A306300

/-- `A051724(3*A003658(n+1))` -/
def P5262787904720245064.Spec : Prop :=
  ∀ n, P5262787904720245064.a n = A306300 (n + 1)

end A306300

/-! ## A306300.P11660643977508556739

`A002265(lcm(4, A003658(n+1)))`
-/

namespace A306300.P11660643977508556739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 4 (A003658 (n + 1)))

end

end A306300.P11660643977508556739

namespace A306300

/-- `A002265(lcm(4, A003658(n+1)))` -/
def P11660643977508556739.Spec : Prop :=
  ∀ n, P11660643977508556739.a n = A306300 (n + 1)

end A306300

/-!
# A306301: Numbers k such that k^2 reversed is a prime and k^2+(k^2 reversed) is a prime.

The programs for A306301, there is no canonical definition to state claims against.
-/

/-! ## A306301.P11015971763860191875

`∩[A059007(n+1), A177948(n+1)]`
-/

namespace A306301.P11015971763860191875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306301.P11015971763860191875

/-!
# A306302: Number of regions into which a figure made up of a row of n adjacent congruent rectangles is divided upon drawing diagonals of all possible rectangles (a(0)=0 by convention).

The programs for A306302, there is no canonical definition to state claims against.
-/

/-! ## A306302.P1491652029058451651

`n+A115005(n+1)`
-/

namespace A306302.P1491652029058451651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A115005 (n + 1)

end

end A306302.P1491652029058451651

/-! ## A306302.P3660470471747965955

`2*n+A290131(n+1)`
-/

namespace A306302.P3660470471747965955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A290131 (n + 1)

end

end A306302.P3660470471747965955

/-! ## A306302.P15740392162129097976

`A141255(n+1)/2+n`
-/

namespace A306302.P15740392162129097976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141255 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A306302.P15740392162129097976

/-! ## A306302.P1166126913721721079

`floor(A114043(n+1)/2+n)`
-/

namespace A306302.P1166126913721721079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114043 (n + 1) : ℚ) / 2 + (n : ℚ)⌋

end

end A306302.P1166126913721721079

/-! ## A306302.P15674357278899386615

`n²+A344993(n)/2+n`
-/

namespace A306302.P15674357278899386615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A344993 n : ℚ) / 2 + (n : ℚ)

end

end A306302.P15674357278899386615

/-! ## A306302.P9107409908333214314

`(A114146(n+1)-2)/4+n`
-/

namespace A306302.P9107409908333214314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114146 (n + 1) - 2 : ℚ) / 4 + (n : ℚ)

end

end A306302.P9107409908333214314

/-! ## A306302.P10786359460879352087

`A290131(n+1)+A005843(n)`
-/

namespace A306302.P10786359460879352087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 1) + A005843 n

end

end A306302.P10786359460879352087

/-! ## A306302.P2289597449016579939

`(A344993(n)+A046092(n))/2`
-/

namespace A306302.P2289597449016579939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344993 n + A046092 n : ℚ) / 2

end

end A306302.P2289597449016579939

/-! ## A306302.P14619163783045116142

`2*(A332612(n+1)+A002378(n))`
-/

namespace A306302.P14619163783045116142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A332612 (n + 1) + A002378 n)

end

end A306302.P14619163783045116142

/-! ## A306302.P14662878536419231946

`A344993(n)-2*A332612(n+1)`
-/

namespace A306302.P14662878536419231946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344993 n - 2 * A332612 (n + 1)

end

end A306302.P14662878536419231946

/-! ## A306302.P2138824955815699862

`(A344993(n)+A001105(n))/2+n`
-/

namespace A306302.P2138824955815699862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344993 n + A001105 n : ℚ) / 2 + (n : ℚ)

end

end A306302.P2138824955815699862

/-! ## A306302.P13928976131418632661

`A114043(n+1)-(A290131(n+1)+1)`
-/

namespace A306302.P13928976131418632661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1) - (A290131 (n + 1) + 1)

end

end A306302.P13928976131418632661

/-! ## A306302.P7384879395586948080

`A331771(n+1)/4+n`
-/

namespace A306302.P7384879395586948080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331771 (n + 1) : ℚ) / 4 + (n : ℚ)

end

end A306302.P7384879395586948080

/-! ## A306302.P12937738281318965365

`2*(A331754(n+1)+n)`
-/

namespace A306302.P12937738281318965365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A331754 (n + 1) + (n : ℤ))

end

end A306302.P12937738281318965365

/-! ## A306302.P16227027186453882897

`2*A331756(n)`
-/

namespace A306302.P16227027186453882897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331756 n

end

end A306302.P16227027186453882897

/-! ## A306302.P18235920027493814225

`A331754(n+1)+A331756(n)+n`
-/

namespace A306302.P18235920027493814225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331754 (n + 1) + (A331756 n + (n : ℤ))

end

end A306302.P18235920027493814225

/-! ## A306302.P15037148173760507082

`2*(A355902(n)-n)`
-/

namespace A306302.P15037148173760507082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A355902 n - (n : ℤ))

end

end A306302.P15037148173760507082

/-! ## A306302.P14093244015475330733

`A355902(n)+A331754(n+1)`
-/

namespace A306302.P14093244015475330733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355902 n + A331754 (n + 1)

end

end A306302.P14093244015475330733

/-! ## A306302.P14144801231208996815

`A355902(n)+A290131(n+1)/2`
-/

namespace A306302.P14144801231208996815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355902 n : ℚ) + (A290131 (n + 1) : ℚ) / 2

end

end A306302.P14144801231208996815

/-! ## A306302.P14396692423941798580

`A290132(n+1)-(A159065(n+1)+1)`
-/

namespace A306302.P14396692423941798580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290132 (n + 1) - (A159065 (n + 1) + 1)

end

end A306302.P14396692423941798580

/-!
# A306306: Number of binary words of length n such that in every prefix and in every suffix the difference between the number of 1's and the number of 0's is in the interval [-2,3].

The programs for A306306, there is no canonical definition to state claims against.
-/

/-! ## A306306.P15498200528672430183

`A345918(A018151(n))`
-/

namespace A306306.P15498200528672430183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (A018151 n).toNat

end

end A306306.P15498200528672430183

/-! ## A306306.P2213876644134785832

`A375928(A181600(n)+n)`
-/

namespace A306306.P2213876644134785832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375928 (A181600 n + (n : ℤ)).toNat

end

end A306306.P2213876644134785832

/-! ## A306306.P10939160966519360751

`A324935(A332578(n)+n)`
-/

namespace A306306.P10939160966519360751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (A332578 n + (n : ℤ)).toNat

end

end A306306.P10939160966519360751

/-! ## A306306.P998246813581248665

`∑[A177151(record[A287216(n)])]`
-/

namespace A306306.P998246813581248665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306306.P998246813581248665

/-! ## A306306.P3326071247051712753

`A003056(record[A058842(n+1)+1])`
-/

namespace A306306.P3326071247051712753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058842 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306306.P3326071247051712753

/-!
# A306307: Numbers that are divisible by the number of their nontrivial divisors.

The programs for A306307, there is no canonical definition to state claims against.
-/

/-! ## A306307.P6404867449783297079

`eq[n+1, lcm(n+1, A070824(n+1))]+1`
-/

namespace A306307.P6404867449783297079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A070824 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306307.P6404867449783297079

/-! ## A306307.P4122548960975893142

`lt[A112447(n), A270890(n+1)]+1`
-/

namespace A306307.P4122548960975893142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A306307.P4122548960975893142

/-! ## A306307.P5497459786075684032

`A020725(lt[A112447(n), A270890(n+1)])`
-/

namespace A306307.P5497459786075684032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306307.P5497459786075684032

/-! ## A306307.P8429769825915089656

`A065475(lt[A112447(n), A270890(n+1)])`
-/

namespace A306307.P8429769825915089656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306307.P8429769825915089656

/-!
# A306309: The "zeroless Pascal triangle" read by rows.

The programs for A306309, there is no canonical definition to state claims against.
-/

/-! ## A306309.P16739376249897663259

`A107602(A123264(n+1))`
-/

namespace A306309.P16739376249897663259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107602 (A123264 (n + 1)).toNat

end

end A306309.P16739376249897663259

/-! ## A306309.P12105454549782767924

`A001222(2^A004086(A123264(n+1)))`
-/

namespace A306309.P12105454549782767924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004086 (A123264 (n + 1)).toNat : ℤ))).toNat

end

end A306309.P12105454549782767924

/-! ## A306309.P18097533153715184355

`A001222(2^A004185(A123264(n+1)))`
-/

namespace A306309.P18097533153715184355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004185 (A123264 (n + 1)).toNat : ℤ))).toNat

end

end A306309.P18097533153715184355

/-! ## A306309.P93457211902750898

`∑{d}[2^A004086(A123264(n+1)), A001221(#)]`
-/

namespace A306309.P93457211902750898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004086 (A123264 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A306309.P93457211902750898

/-! ## A306309.P8001231149346821453

`A004086(A123264(n+1)%A155176(n+1))`
-/

namespace A306309.P8001231149346821453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.tmod (A123264 (n + 1)) (A155176 (n + 1))).toNat

end

end A306309.P8001231149346821453

/-!
# A306310: Odd numbers k > 1 such that 2^((k-1)/2) == -(2/k) = -A091337(k) (mod k), where (2/k) is the Jacobi (or Kronecker) symbol.

The programs for A306310, there is no canonical definition to state claims against.
-/

/-! ## A306310.P164039967849962620

`filter[A001567(2*n+1), A353483(#)]`
-/

namespace A306310.P164039967849962620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353483 (f1 j).toNat = 1) n)

end

end A306310.P164039967849962620

/-!
# A306312: Number of terms of the set of divisors of n that are not the product of any other two distinct divisors.

The programs for A306312, there is no canonical definition to state claims against.
-/

/-! ## A306312.P2115495490359704846

`∑{e}[n+1, ceil(atan(#))]+1`
-/

namespace A306312.P2115495490359704846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (Nat.factorization (f1 n) p : ℝ)⌉ + 1

end

end A306312.P2115495490359704846

/-! ## A306312.P3378296919517084206

`∑{e}[n+1, gcd(2, #!)]+1`
-/

namespace A306312.P3378296919517084206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd 2 (Nat.factorial (Nat.factorization (f1 n) p)) + 1

end

end A306312.P3378296919517084206

/-! ## A306312.P908901317164847867

`∑{e}[n+1, ceil(root(#, 3))]+1`
-/

namespace A306312.P908901317164847867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℝ) ^ (1 / (3 : ℝ))⌉ + 1

end

end A306312.P908901317164847867

/-! ## A306312.P18238643655101710214

`ceil(∑{e}[n+1, #^(ϕ/#)])+1`
-/

namespace A306312.P18238643655101710214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (Real.goldenRatio / (Nat.factorization (f1 n) p : ℝ))⌉ + 1

end

end A306312.P18238643655101710214

/-! ## A306312.P10354386768422498966

`∑{e}[2*∏{p}[n+1, gcd(n+1, #²)], #]`
-/

namespace A306312.P10354386768422498966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A306312.P10354386768422498966

/-! ## A306312.P11319985345099425552

`A238949(n+1)+1`
-/

namespace A306312.P11319985345099425552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) + 1

end

end A306312.P11319985345099425552

/-! ## A306312.P16828948361825808712

`A110475(11*(n+1))+1`
-/

namespace A306312.P16828948361825808712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (11 * (n + 1)) + 1

end

end A306312.P16828948361825808712

/-! ## A306312.P9976967598541981977

`A000005(∏{e}[n+1, dr(3^#)])`
-/

namespace A306312.P9976967598541981977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.digitalRoot (3 ^ Nat.factorization (f1 n) p : ℤ))

end

end A306312.P9976967598541981977

/-! ## A306312.P13561795161782557143

`A073093(A007948(n+1))`
-/

namespace A306312.P13561795161782557143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A007948 (n + 1)).toNat

end

end A306312.P13561795161782557143

/-! ## A306312.P969930101690203880

`A073093(A101113(n+1))`
-/

namespace A306312.P969930101690203880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A101113 (n + 1)).toNat

end

end A306312.P969930101690203880

/-!
# A306314: Number of length-n binary words w such that ww is rich.

The programs for A306314, there is no canonical definition to state claims against.
-/

/-! ## A306314.P10292066410935930135

`A007055(∑[(n*val(∏{p}[n, #], 11))!])`
-/

namespace A306314.P10292066410935930135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n * SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306314.P10292066410935930135

/-! ## A306314.P9483165903502742257

`A007055(A104029(∑[n]))`
-/

namespace A306314.P9483165903502742257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 (A104029 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A306314.P9483165903502742257

/-! ## A306314.P183511674297849619

`A007055(A140182(∑[n]))`
-/

namespace A306314.P183511674297849619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 (A140182 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A306314.P183511674297849619

/-! ## A306314.P7717698873072579458

`A007055(A062399(n)+1)`
-/

namespace A306314.P7717698873072579458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 (A062399 n + 1).toNat

end

end A306314.P7717698873072579458

/-! ## A306314.P8654757283309262789

`A007055(A077741(n+1))`
-/

namespace A306314.P8654757283309262789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 (A077741 (n + 1)).toNat

end

end A306314.P8654757283309262789

/-!
# A306315: Number of binary words of length n such that the difference between the number of 1's and the number of 0's is in the interval [-2,3] for every prefix and in the interval [-3,2] for every suffix.

The programs for A306315, there is no canonical definition to state claims against.
-/

/-! ## A306315.P17469083287364083081

`A056504(n)+A052146(A178778(n))`
-/

namespace A306315.P17469083287364083081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 n + A052146 (A178778 n).toNat

end

end A306315.P17469083287364083081

/-! ## A306315.P14980905489316330612

`∑[A160755(A086442(n+1))]`
-/

namespace A306315.P14980905489316330612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A086442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306315.P14980905489316330612

/-! ## A306315.P16660389482057549046

`A342191(∑[A342190(2^floor(n/2))])`
-/

namespace A306315.P16660389482057549046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342190 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306315.P16660389482057549046

/-!
# A306316: Number of length-n binary words such that every conjugate (cyclic shift) is rich.

The programs for A306316, there is no canonical definition to state claims against.
-/

/-! ## A306316.P5719587455595927647

`A079845(n+2)%∑[(2*n+3)²]`
-/

namespace A306316.P5719587455595927647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079845 (n + 2)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A306316.P5719587455595927647

/-! ## A306316.P8941417915100039189

`A061392(A010915(n))`
-/

namespace A306316.P8941417915100039189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A010915 n).toNat

end

end A306316.P8941417915100039189

/-! ## A306316.P1904507266736183628

`Δ[A244230(A007689(n))]`
-/

namespace A306316.P1904507266736183628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A007689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306316.P1904507266736183628

/-! ## A306316.P9393618100808660800

`A061392(A084776(n+1))`
-/

namespace A306316.P9393618100808660800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A084776 (n + 1)).toNat

end

end A306316.P9393618100808660800

/-!
# A306317: Prime numbers generated by the formula a(n) = round(2^(d^n)), where d is the real constant 1.30076870414817691055252567828266106688423996320151467218595488...

The programs for A306317, there is no canonical definition to state claims against.
-/

/-! ## A306317.P8046619336525656580

`p?[∑[A087468(A326592(n))]]`
-/

namespace A306317.P8046619336525656580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087468 (A326592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306317.P8046619336525656580

/-! ## A306317.P370423856862895075

`p?[∑[A082938(A032742(n+1))]]`
-/

namespace A306317.P370423856862895075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082938 (A032742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306317.P370423856862895075

/-! ## A306317.P17218178850647550021

`p?[∑[A048804(A264622(n+1))]]`
-/

namespace A306317.P17218178850647550021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 (A264622 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306317.P17218178850647550021

/-! ## A306317.P4358213013863452063

`p?[∑[A193592(A318848(n+1))]]`
-/

namespace A306317.P4358213013863452063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A318848 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306317.P4358213013863452063

/-!
# A306318: Number of square twice-partitions of n.

The programs for A306318, there is no canonical definition to state claims against.
-/

/-! ## A306318.P15469814794842094189

`A276502(A241828(n))+A237113(n)`
-/

namespace A306318.P15469814794842094189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (A241828 n).toNat + A237113 n

end

end A306318.P15469814794842094189

/-! ## A306318.P16124695273682452291

`A237113(n)+A006928(A364586(n+1))`
-/

namespace A306318.P16124695273682452291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237113 n + A006928 (A364586 (n + 1)).toNat

end

end A306318.P16124695273682452291

/-! ## A306318.P8777417646838727021

`A273190(A000011(n)*A005232(n))`
-/

namespace A306318.P8777417646838727021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A000011 n * A005232 n).toNat

end

end A306318.P8777417646838727021

/-!
# A306319: Number of length-rectangular twice-partitions of n.

The programs for A306319, there is no canonical definition to state claims against.
-/

/-! ## A306319.P3113163965387978146

`A319066(n)+A086015(A020707(n))`
-/

namespace A306319.P3113163965387978146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n + A086015 (A020707 n).toNat

end

end A306319.P3113163965387978146

/-! ## A306319.P11100480382254043743

`A319066(n)+A086015(A011782(n+3))`
-/

namespace A306319.P11100480382254043743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n + A086015 (A011782 (n + 3)).toNat

end

end A306319.P11100480382254043743

/-! ## A306319.P11373358496653144716

`A319066(n)+A011709(A000111(n))`
-/

namespace A306319.P11373358496653144716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n + A011709 (A000111 n).toNat

end

end A306319.P11373358496653144716

/-! ## A306319.P568946732872708494

`A319066(n)+A025469(A000116(n))`
-/

namespace A306319.P568946732872708494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n + A025469 (A000116 n).toNat

end

end A306319.P568946732872708494

/-! ## A306319.P1165628116694139529

`A319066(n)+A055641(A000108(n))`
-/

namespace A306319.P1165628116694139529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n + A055641 (A000108 n).toNat

end

end A306319.P1165628116694139529

/-!
# A306322: Number of n X n integer matrices (m_{i,j}) such that m_{1,1}=0, m_{n,n}=2, and all rows, columns, and falling diagonals are (weakly) monotonic without jumps of 2.

The programs for A306322, there is no canonical definition to state claims against.
-/

/-! ## A306322.P3025308513027724880

`A037228(a(n-1)²)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=25`
-/

namespace A306322.P3025308513027724880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 25] fun n a =>
  A037228 (a (n - 1) ^ 2).toNat

end

end A306322.P3025308513027724880

/-!
# A306323: Break up the Kolakoski sequence A000002 into pieces by inserting a space between every pair of equal terms; sequence gives lengths of successive pieces.

The programs for A306323, the canonical program `A306323.P12186467086008578801` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306323 has offset 1).

The definition of A306323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306323.P15382224487677367262

`Δ[comp[A054353(n+1)]]`
-/

namespace A306323.P15382224487677367262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A306323.P15382224487677367262

namespace A306323

/-- `Δ[comp[A054353(n+1)]]` -/
def P15382224487677367262.Spec : Prop :=
  ∀ n, P15382224487677367262.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P7157081612295704856

`Δ[comp[A216345(n+2)-1]]`
-/

namespace A306323.P7157081612295704856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A306323.P7157081612295704856

namespace A306323

/-- `Δ[comp[A216345(n+2)-1]]` -/
def P7157081612295704856.Spec : Prop :=
  ∀ n, P7157081612295704856.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P134121937058647514

`Δ[comp[A156728(n+1)+n]]`
-/

namespace A306323.P134121937058647514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A306323.P134121937058647514

namespace A306323

/-- `Δ[comp[A156728(n+1)+n]]` -/
def P134121937058647514.Spec : Prop :=
  ∀ n, P134121937058647514.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P1936024010287997003

`abs(Δ[A078649(abs(1-n)+1)])`
-/

namespace A306323.P1936024010287997003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A306323.P1936024010287997003

namespace A306323

/-- `abs(Δ[A078649(abs(1-n)+1)])` -/
def P1936024010287997003.Spec : Prop :=
  ∀ n, P1936024010287997003.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P9004252189157784798

`Δ[comp[A078880(n)+a(n-1)]]` with `a(0)=1`
-/

namespace A306323.P9004252189157784798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A078880 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A306323.P9004252189157784798

namespace A306323

/-- `Δ[comp[A078880(n)+a(n-1)]]` -/
def P9004252189157784798.Spec : Prop :=
  ∀ n, P9004252189157784798.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P4432513224384811156

`abs(Δ[A013948(abs(1-n)+1)])+1`
-/

namespace A306323.P4432513224384811156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A306323.P4432513224384811156

namespace A306323

/-- `abs(Δ[A013948(abs(1-n)+1)])+1` -/
def P4432513224384811156.Spec : Prop :=
  ∀ n, P4432513224384811156.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P6364556171765028605

`Δ[A078649(gcd(n, n*a(n-1)))]` with `a(0)=0`
-/

namespace A306323.P6364556171765028605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A078649 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306323.P6364556171765028605

namespace A306323

/-- `Δ[A078649(gcd(n, n*a(n-1)))]` -/
def P6364556171765028605.Spec : Prop :=
  ∀ n, P6364556171765028605.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P1519856104580868387

`Δ[A078649(a(C(n, n+2))+n)]` with `a(0)=0`
-/

namespace A306323.P1519856104580868387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A078649 (f1 (Nat.choose n (n + 2)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306323.P1519856104580868387

namespace A306323

/-- `Δ[A078649(a(C(n, n+2))+n)]` -/
def P1519856104580868387.Spec : Prop :=
  ∀ n, P1519856104580868387.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P13300495570609785837

`Δ[A078649(a(floor(1/(n+1)))+n)]` with `a(0)=0`
-/

namespace A306323.P13300495570609785837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A078649 (f1 ⌊1 / (n + 1 : ℚ)⌋.toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306323.P13300495570609785837

namespace A306323

/-- `Δ[A078649(a(floor(1/(n+1)))+n)]` -/
def P13300495570609785837.Spec : Prop :=
  ∀ n, P13300495570609785837.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P12159473345838583494

`Δ[A078649(round(sqrt(n²+1)))%(12*n+1)]`
-/

namespace A306323.P12159473345838583494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078649 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (12 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306323.P12159473345838583494

namespace A306323

/-- `Δ[A078649(round(sqrt(n²+1)))%(12*n+1)]` -/
def P12159473345838583494.Spec : Prop :=
  ∀ n, P12159473345838583494.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P12186467086008578801

`A074286(Δ[record[A074288(n+1)]])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A306323

/-- `A074286(Δ[record[A074288(n+1)]])` -/
def P12186467086008578801.Spec : Prop :=
  ∀ n, P12186467086008578801.a n = A306323 (n + 1)

theorem P12186467086008578801.correct : P12186467086008578801.Spec := by
  intro n
  simp only [A306323, Nat.add_sub_cancel]

end A306323

/-! ## A306323.P8696390482510930412

`Δ[A028310(comp[A216345(n+1)])]`
-/

namespace A306323.P8696390482510930412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306323.P8696390482510930412

namespace A306323

/-- `Δ[A028310(comp[A216345(n+1)])]` -/
def P8696390482510930412.Spec : Prop :=
  ∀ n, P8696390482510930412.a n = A306323 (n + 1)

end A306323

/-! ## A306323.P7491129564755349384

`dr(Δ[A078649(A000038(n)+n)])`
-/

namespace A306323.P7491129564755349384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A306323.P7491129564755349384

namespace A306323

/-- `dr(Δ[A078649(A000038(n)+n)])` -/
def P7491129564755349384.Spec : Prop :=
  ∀ n, (P7491129564755349384.a n : ℤ) = A306323 (n + 1)

end A306323

/-!
# A306325: Expansion of e.g.f. log(1 + exp(x)*x*(1 + 7*x + 6*x^2 + x^3)).

The programs for A306325, there is no canonical definition to state claims against.
-/

/-! ## A306325.P5314210922324569692

`A308484(∑[n+3]+n+3)`
-/

namespace A306325.P5314210922324569692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308484 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A306325.P5314210922324569692

/-!
# A306326: The q-analogs T(q; n,k) of the rascal-triangle, here q = 2.

The programs for A306326, there is no canonical definition to state claims against.
-/

/-! ## A306326.P15455408801115424363

`2-A176224(n)`
-/

namespace A306326.P15455408801115424363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176224 n

end

end A306326.P15455408801115424363

/-! ## A306326.P8778013056615055365

`∏[char[∑[n+1]]+1]+1-A131816(n)`
-/

namespace A306326.P8778013056615055365
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A131816 n

end

end A306326.P8778013056615055365

/-! ## A306326.P9878873181776492643

`A073139(A099627(n))+1`
-/

namespace A306326.P9878873181776492643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073139 (A099627 n).toNat + 1

end

end A306326.P9878873181776492643

/-! ## A306326.P723127519870656181

`A048967(A173787(n))+1`
-/

namespace A306326.P723127519870656181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A173787 n).toNat + 1

end

end A306326.P723127519870656181

/-! ## A306326.P13951039126459287423

`A261366(A173787(n)+1)`
-/

namespace A306326.P13951039126459287423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 (A173787 n + 1).toNat

end

end A306326.P13951039126459287423

/-! ## A306326.P9464718388439449812

`A014681(abs(A176224(n))+1)`
-/

namespace A306326.P9464718388439449812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (|A176224 n| + 1).toNat

end

end A306326.P9464718388439449812

/-! ## A306326.P8897445708036671149

`A137688(n)+1-A131816(n)`
-/

namespace A306326.P8897445708036671149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + (1 - A131816 n)

end

end A306326.P8897445708036671149

/-! ## A306326.P7666958456216386138

`A137688(n)-A350770(n+1)`
-/

namespace A306326.P7666958456216386138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A350770 (n + 1)

end

end A306326.P7666958456216386138

/-! ## A306326.P14644188113801715247

`A089633(n)+2-A099627(n)`
-/

namespace A306326.P14644188113801715247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n + (2 - A099627 n)

end

end A306326.P14644188113801715247

/-! ## A306326.P3749746621054517562

`A173787(n)+2-A130321(n)`
-/

namespace A306326.P3749746621054517562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + (2 - A130321 n)

end

end A306326.P3749746621054517562

/-!
# A306327: Expansion of Product_{k>=1} 1/(1 - mu(k)*x^k), where mu() is the Möbius function (A008683).

The programs for A306327, there is no canonical definition to state claims against.
-/

/-! ## A306327.P18256190578797390724

`A187097(floor((n/2)²)*A048380(n+2))`
-/

namespace A306327.P18256190578797390724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187097 (⌊((n : ℚ) / 2) ^ 2⌋ * A048380 (n + 2)).toNat

end

end A306327.P18256190578797390724

/-! ## A306327.P15279495839873655198

`A190227(n+1)-A316569(A180673(n))`
-/

namespace A306327.P15279495839873655198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190227 (n + 1) - A316569 (A180673 n).toNat

end

end A306327.P15279495839873655198

/-! ## A306327.P6685662175176532689

`A010892(n)*A192174(A317106(n+1))`
-/

namespace A306327.P6685662175176532689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A192174 (A317106 (n + 1)).toNat

end

end A306327.P6685662175176532689

/-!
# A306328: If n = Product (p_j^k_j) then a(n) = Sum (p_j)^Product (k_j).

The programs for A306328, the canonical program `A306328.P7079305387791710767` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306328 has offset 1).

The definition of A306328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306328.P7079305387791710767

`A008472(n+1)^A005361(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A306328

/-- `A008472(n+1)^A005361(n+1)` -/
def P7079305387791710767.Spec : Prop :=
  ∀ n, P7079305387791710767.a n = (A306328 (n + 1) : ℚ)

end A306328

/-! ## A306328.P1674269317308309901

`∑{p}[n+1, #]^∏{e}[n+1, #]`
-/

namespace A306328.P1674269317308309901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A306328.P1674269317308309901

namespace A306328

/-- `∑{p}[n+1, #]^∏{e}[n+1, #]` -/
def P1674269317308309901.Spec : Prop :=
  ∀ n, (P1674269317308309901.a n : ℤ) = A306328 (n + 1)

end A306328

/-! ## A306328.P12510070902989341147

`∑{p}[n+1, #]^exp(∑{e}[n+1, log(#)])`
-/

namespace A306328.P12510070902989341147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ (Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (Nat.factorization (f2 n) p : ℝ)))

end

end A306328.P12510070902989341147

namespace A306328

/-- `∑{p}[n+1, #]^exp(∑{e}[n+1, log(#)])` -/
def P12510070902989341147.Spec : Prop :=
  ∀ n, P12510070902989341147.a n = (A306328 (n + 1) : ℝ)

end A306328

/-! ## A306328.P16512888370343677226

`∑{p}[n+1, #]^2^∑{e}[n+1, log2(#)]`
-/

namespace A306328.P16512888370343677226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (Nat.factorization (f2 n) p : ℝ)))

end

end A306328.P16512888370343677226

namespace A306328

/-- `∑{p}[n+1, #]^2^∑{e}[n+1, log2(#)]` -/
def P16512888370343677226.Spec : Prop :=
  ∀ n, P16512888370343677226.a n = (A306328 (n + 1) : ℝ)

end A306328

/-! ## A306328.P13216615611627161241

`∑{p}[n+1, #]^∏{p}[n+1, val(n+1, #)]`
-/

namespace A306328.P13216615611627161241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n + 1) p)

end

end A306328.P13216615611627161241

namespace A306328

/-- `∑{p}[n+1, #]^∏{p}[n+1, val(n+1, #)]` -/
def P13216615611627161241.Spec : Prop :=
  ∀ n, (P13216615611627161241.a n : ℤ) = A306328 (n + 1)

end A306328

/-! ## A306328.P9114772427115613680

`Δ[A024924(n)]^∏{e}[n+1, #]`
-/

namespace A306328.P9114772427115613680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A306328.P9114772427115613680

namespace A306328

/-- `Δ[A024924(n)]^∏{e}[n+1, #]` -/
def P9114772427115613680.Spec : Prop :=
  ∀ n, P9114772427115613680.a n = A306328 (n + 1)

end A306328

/-! ## A306328.P12252189795805957625

`∑{p}[n+1, #]^A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A306328.P12252189795805957625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℤ)

end

end A306328.P12252189795805957625

namespace A306328

/-- `∑{p}[n+1, #]^A000005((n+1)/∏{p}[n+1, #])` -/
def P12252189795805957625.Spec : Prop :=
  ∀ n, P12252189795805957625.a n = (A306328 (n + 1) : ℚ)

end A306328

/-! ## A306328.P13909698606271305412

`∑{p}[n+1, #]^A000005(A003557(n+1))`
-/

namespace A306328.P13909698606271305412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A000005 (A003557 (n + 1)).toNat : ℤ)

end

end A306328.P13909698606271305412

namespace A306328

/-- `∑{p}[n+1, #]^A000005(A003557(n+1))` -/
def P13909698606271305412.Spec : Prop :=
  ∀ n, P13909698606271305412.a n = (A306328 (n + 1) : ℚ)

end A306328

/-!
# A306329: If n = Product (p_j^k_j) then a(n) = Product (p_j)^Sum (k_j).

The programs for A306329, the canonical program `A306329.P16545173333812765328` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306329 has offset 1).

The definition of A306329 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306329.P16545173333812765328

`A007947(n+1)^A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A306329

/-- `A007947(n+1)^A001222(n+1)` -/
def P16545173333812765328.Spec : Prop :=
  ∀ n, P16545173333812765328.a n = (A306329 (n + 1) : ℚ)

end A306329

/-! ## A306329.P2569275283826944745

`∏{p}[n+1, #]^∑{e}[n+1, #]`
-/

namespace A306329.P2569275283826944745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A306329.P2569275283826944745

namespace A306329

/-- `∏{p}[n+1, #]^∑{e}[n+1, #]` -/
def P2569275283826944745.Spec : Prop :=
  ∀ n, (P2569275283826944745.a n : ℤ) = A306329 (n + 1)

end A306329

/-! ## A306329.P18443422931617406358

`∏{p}[n+1, #]^val(A165835(n+1), 2)`
-/

namespace A306329.P18443422931617406358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) ^ SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2

end

end A306329.P18443422931617406358

namespace A306329

/-- `∏{p}[n+1, #]^val(A165835(n+1), 2)` -/
def P18443422931617406358.Spec : Prop :=
  ∀ n, (P18443422931617406358.a n : ℤ) = A306329 (n + 1)

end A306329

/-! ## A306329.P16890736050192621250

`∏{p}[n+1, #]^val(A329600(n+1), 2)`
-/

namespace A306329.P16890736050192621250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) ^ SequenceMachineLib.valuation (A329600 (n + 1)).toNat 2

end

end A306329.P16890736050192621250

namespace A306329

/-- `∏{p}[n+1, #]^val(A329600(n+1), 2)` -/
def P16890736050192621250.Spec : Prop :=
  ∀ n, (P16890736050192621250.a n : ℤ) = A306329 (n + 1)

end A306329

/-! ## A306329.P7714929002553868090

`A007947(n+1)^Δ[A022559(n)]`
-/

namespace A306329.P7714929002553868090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A306329.P7714929002553868090

namespace A306329

/-- `A007947(n+1)^Δ[A022559(n)]` -/
def P7714929002553868090.Spec : Prop :=
  ∀ n, P7714929002553868090.a n = (A306329 (n + 1) : ℚ)

end A306329

/-! ## A306329.P11495386899907199600

`sqrt(A078615(n+1))^A001222(n+1)`
-/

namespace A306329.P11495386899907199600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ) ^ (A001222 (n + 1) : ℤ)

end

end A306329.P11495386899907199600

namespace A306329

/-- `sqrt(A078615(n+1))^A001222(n+1)` -/
def P11495386899907199600.Spec : Prop :=
  ∀ n, P11495386899907199600.a n = (A306329 (n + 1) : ℝ)

end A306329

/-! ## A306329.P231090172552761274

`A007947(n+1)^log2(A061142(n+1))`
-/

namespace A306329.P231090172552761274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℝ) ^ (Real.logb 2 (A061142 (n + 1) : ℝ))

end

end A306329.P231090172552761274

namespace A306329

/-- `A007947(n+1)^log2(A061142(n+1))` -/
def P231090172552761274.Spec : Prop :=
  ∀ n, P231090172552761274.a n = (A306329 (n + 1) : ℝ)

end A306329

/-! ## A306329.P684398682427214837

`A007947(n+1)^(A255201(n+1)/2)`
-/

namespace A306329.P684398682427214837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℝ) ^ ((A255201 (n + 1) : ℚ) / 2 : ℝ)

end

end A306329.P684398682427214837

namespace A306329

/-- `A007947(n+1)^(A255201(n+1)/2)` -/
def P684398682427214837.Spec : Prop :=
  ∀ n, P684398682427214837.a n = (A306329 (n + 1) : ℝ)

end A306329

/-! ## A306329.P895842322496364837

`A007947(n+1)^val(A165835(n+1), 2)`
-/

namespace A306329.P895842322496364837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2

end

end A306329.P895842322496364837

namespace A306329

/-- `A007947(n+1)^val(A165835(n+1), 2)` -/
def P895842322496364837.Spec : Prop :=
  ∀ n, P895842322496364837.a n = A306329 (n + 1)

end A306329

/-! ## A306329.P720156856092254772

`(A073353(n+1)-(n+1))^A001222(n+1)`
-/

namespace A306329.P720156856092254772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073353 (n + 1) - (n + 1 : ℤ) : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A306329.P720156856092254772

namespace A306329

/-- `(A073353(n+1)-(n+1))^A001222(n+1)` -/
def P720156856092254772.Spec : Prop :=
  ∀ n, P720156856092254772.a n = (A306329 (n + 1) : ℚ)

end A306329

/-! ## A306329.P4124709598097927087

`A015052(A015052(n+1))^A001222(n+1)`
-/

namespace A306329.P4124709598097927087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015052 (A015052 (n + 1)).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A306329.P4124709598097927087

namespace A306329

/-- `A015052(A015052(n+1))^A001222(n+1)` -/
def P4124709598097927087.Spec : Prop :=
  ∀ n, P4124709598097927087.a n = (A306329 (n + 1) : ℚ)

end A306329

/-! ## A306329.P1575716991646617820

`A015053(A015053(n+1))^A001222(n+1)`
-/

namespace A306329.P1575716991646617820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015053 (A015053 (n + 1)).toNat : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A306329.P1575716991646617820

namespace A306329

/-- `A015053(A015053(n+1))^A001222(n+1)` -/
def P1575716991646617820.Spec : Prop :=
  ∀ n, P1575716991646617820.a n = (A306329 (n + 1) : ℚ)

end A306329

/-! ## A306329.P17086506363014302450

`A007947(n+1)^A302242(A000040(n+1))`
-/

namespace A306329.P17086506363014302450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A302242 (A000040 (n + 1)).toNat : ℤ)

end

end A306329.P17086506363014302450

namespace A306329

/-- `A007947(n+1)^A302242(A000040(n+1))` -/
def P17086506363014302450.Spec : Prop :=
  ∀ n, P17086506363014302450.a n = (A306329 (n + 1) : ℚ)

end A306329

/-!
# A306330: Squarefree n with >= 3 factors that admit idempotent factorizations n = p*q.

The programs for A306330, there is no canonical definition to state claims against.
-/

/-! ## A306330.P16892018882007196900

`A336568(lt[A157142(n), A063853(n+6)])`
-/

namespace A306330.P16892018882007196900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063853 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336568 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306330.P16892018882007196900

/-! ## A306330.P16027312014412100644

`A007304(A045671(A187829(n+1)))`
-/

namespace A306330.P16027312014412100644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (A045671 (A187829 (n + 1)).toNat).toNat

end

end A306330.P16027312014412100644

/-! ## A306330.P10361210494846782375

`A007304(comp[and(n, A321963(n))])`
-/

namespace A306330.P10361210494846782375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A321963 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A306330.P10361210494846782375

/-! ## A306330.P16037695947723079320

`A007304(comp[16-A143408(2*(n+2))])`
-/

namespace A306330.P16037695947723079320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 - A143408 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A306330.P16037695947723079320

/-! ## A306330.P9814430388030108472

`A007304(eq[A014625(n), A185044(n)])`
-/

namespace A306330.P9814430388030108472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A306330.P9814430388030108472

/-!
# A306331: Numbers congruent to 6 or 31 mod 38.

The programs for A306331, the canonical program `A306331.P11925336895906383198` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306331 has offset 1).

The definition of A306331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306331.P11925336895906383198

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=6, a(1)=31, a(2)=44`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A306331

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P11925336895906383198.Spec : Prop :=
  ∀ n, P11925336895906383198.a n = A306331 (n + 1)

theorem P11925336895906383198.correct : P11925336895906383198.Spec := by
  intro n
  simp only [A306331, Nat.add_sub_cancel]

end A306331

/-! ## A306331.P6704096869787094248

`a(n-2)+38` with `a(0)=6, a(1)=31`
-/

namespace A306331.P6704096869787094248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 31] fun n a =>
  a (n - 2) + 38

end

end A306331.P6704096869787094248

namespace A306331

/-- `a(n-2)+38` -/
def P6704096869787094248.Spec : Prop :=
  ∀ n, (P6704096869787094248.a n : ℤ) = A306331 (n + 1)

end A306331

/-! ## A306331.P14456875337117772527

`∑[floor(a(n-2))]` with `a(0)=6, a(1)=25, a(2)=13`

`floor` is left out, it is the identity on integers.
-/

namespace A306331.P14456875337117772527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 25, 13] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306331.P14456875337117772527

namespace A306331

/-- `∑[floor(a(n-2))]` -/
def P14456875337117772527.Spec : Prop :=
  ∀ n, (P14456875337117772527.a n : ℤ) = A306331 (n + 1)

end A306331

/-! ## A306331.P3708541686473876300

`∑[38-a(n-1)]` with `a(0)=6, a(1)=25`
-/

namespace A306331.P3708541686473876300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 25] fun n f1 =>
  38 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306331.P3708541686473876300

namespace A306331

/-- `∑[38-a(n-1)]` -/
def P3708541686473876300.Spec : Prop :=
  ∀ n, P3708541686473876300.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P15209778662968490614

`record[lcm(3, 4*n+2)]+n`
-/

namespace A306331.P15209778662968490614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A306331.P15209778662968490614

namespace A306331

/-- `record[lcm(3, 4*n+2)]+n` -/
def P15209778662968490614.Spec : Prop :=
  ∀ n, (P15209778662968490614.a n : ℤ) = A306331 (n + 1)

end A306331

/-! ## A306331.P12331452509528073023

`3*or(2, 6*n+2)+n`
-/

namespace A306331.P12331452509528073023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 2 (6 * n + 2) + n

end

end A306331.P12331452509528073023

namespace A306331

/-- `3*or(2, 6*n+2)+n` -/
def P12331452509528073023.Spec : Prop :=
  ∀ n, (P12331452509528073023.a n : ℤ) = A306331 (n + 1)

end A306331

/-! ## A306331.P10688443487802647512

`2*A306771(n+1)+n`
-/

namespace A306331.P10688443487802647512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306771 (n + 1) + (n : ℤ)

end

end A306331.P10688443487802647512

namespace A306331

/-- `2*A306771(n+1)+n` -/
def P10688443487802647512.Spec : Prop :=
  ∀ n, P10688443487802647512.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P15266269610155413382

`3*A091999(n+1)+n`
-/

namespace A306331.P15266269610155413382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A091999 (n + 1) + (n : ℤ)

end

end A306331.P15266269610155413382

namespace A306331

/-- `3*A091999(n+1)+n` -/
def P15266269610155413382.Spec : Prop :=
  ∀ n, P15266269610155413382.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P3187129039637091479

`A155097(n+1)+A004526(n)`
-/

namespace A306331.P3187129039637091479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155097 (n + 1) + A004526 n

end

end A306331.P3187129039637091479

namespace A306331

/-- `A155097(n+1)+A004526(n)` -/
def P3187129039637091479.Spec : Prop :=
  ∀ n, P3187129039637091479.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P559188696956133488

`A169610(n+1)+A008619(n)`
-/

namespace A306331.P559188696956133488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169610 (n + 1) + A008619 n

end

end A306331.P559188696956133488

namespace A306331

/-- `A169610(n+1)+A008619(n)` -/
def P559188696956133488.Spec : Prop :=
  ∀ n, P559188696956133488.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P15759306589079998172

`A322489(n+1)+A017209(n)`
-/

namespace A306331.P15759306589079998172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322489 (n + 1) + A017209 n

end

end A306331.P15759306589079998172

namespace A306331

/-- `A322489(n+1)+A017209(n)` -/
def P15759306589079998172.Spec : Prop :=
  ∀ n, P15759306589079998172.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P2126731842103059449

`A171141(n+1)-A007494(n)`
-/

namespace A306331.P2126731842103059449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) - A007494 n

end

end A306331.P2126731842103059449

namespace A306331

/-- `A171141(n+1)-A007494(n)` -/
def P2126731842103059449.Spec : Prop :=
  ∀ n, P2126731842103059449.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P10159625601294674922

`A084967(n+1)+A047452(n+1)`
-/

namespace A306331.P10159625601294674922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084967 (n + 1) + A047452 (n + 1)

end

end A306331.P10159625601294674922

namespace A306331

/-- `A084967(n+1)+A047452(n+1)` -/
def P10159625601294674922.Spec : Prop :=
  ∀ n, P10159625601294674922.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P3666503997452969427

`A169600(n+1)+A047276(n+1)`
-/

namespace A306331.P3666503997452969427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169600 (n + 1) + A047276 (n + 1)

end

end A306331.P3666503997452969427

namespace A306331

/-- `A169600(n+1)+A047276(n+1)` -/
def P3666503997452969427.Spec : Prop :=
  ∀ n, P3666503997452969427.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P11193921094478495200

`A306285(n+1)+A091999(n+1)`
-/

namespace A306331.P11193921094478495200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + A091999 (n + 1)

end

end A306331.P11193921094478495200

namespace A306331

/-- `A306285(n+1)+A091999(n+1)` -/
def P11193921094478495200.Spec : Prop :=
  ∀ n, P11193921094478495200.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P12815099814708692503

`A306277(n+1)+A231002(n+1)`
-/

namespace A306331.P12815099814708692503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1) + A231002 (n + 1)

end

end A306331.P12815099814708692503

namespace A306331

/-- `A306277(n+1)+A231002(n+1)` -/
def P12815099814708692503.Spec : Prop :=
  ∀ n, P12815099814708692503.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P1636295684886203391

`A306278(n+1)+A259755(n+1)`
-/

namespace A306331.P1636295684886203391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306278 (n + 1) + A259755 (n + 1)

end

end A306331.P1636295684886203391

namespace A306331

/-- `A306278(n+1)+A259755(n+1)` -/
def P1636295684886203391.Spec : Prop :=
  ∀ n, P1636295684886203391.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P14611903205989305223

`A047524(n+1)+A084967(n+1)-1`
-/

namespace A306331.P14611903205989305223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1) + (A084967 (n + 1) - 1)

end

end A306331.P14611903205989305223

namespace A306331

/-- `A047524(n+1)+A084967(n+1)-1` -/
def P14611903205989305223.Spec : Prop :=
  ∀ n, P14611903205989305223.a n = A306331 (n + 1)

end A306331

/-! ## A306331.P6916200917080890679

`A306285(n+1)+2*A007310(n+1)`
-/

namespace A306331.P6916200917080890679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1) + 2 * A007310 (n + 1)

end

end A306331.P6916200917080890679

namespace A306331

/-- `A306285(n+1)+2*A007310(n+1)` -/
def P6916200917080890679.Spec : Prop :=
  ∀ n, P6916200917080890679.a n = A306331 (n + 1)

end A306331

/-!
# A306332: Records in A181159.

The programs for A306332, there is no canonical definition to state claims against.
-/

/-! ## A306332.P15865744678684767791

`record[A181159(n+1)]`
-/

namespace A306332.P15865744678684767791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306332.P15865744678684767791

/-! ## A306332.P579638222133176048

`A181159(A181160(n+1))`
-/

namespace A306332.P579638222133176048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181159 (A181160 (n + 1)).toNat

end

end A306332.P579638222133176048

/-! ## A306332.P7471483343102330594

`record[A181159(A291769(n))]%A220485(n)`
-/

namespace A306332.P7471483343102330594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181159 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A220485 n)

end

end A306332.P7471483343102330594

/-!
# A306333: Last term in each generation of A306211.

The programs for A306333, there is no canonical definition to state claims against.
-/

/-! ## A306333.P3761792370075146471

`A306211(A306215(n+1)%A202100(n+1))`
-/

namespace A306333.P3761792370075146471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (Int.tmod (A306215 (n + 1)) (A202100 (n + 1))).toNat

end

end A306333.P3761792370075146471

/-! ## A306333.P5032970089758675228

`A306211(∪[A306215(n+1), A306222(n+3)²])`
-/

namespace A306333.P5032970089758675228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306222 (n + 3) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A306333.P5032970089758675228

/-! ## A306333.P13602401338756318721

`A306211(gcd(1-a(n-1), A306215(n+1)))` with `a(0)=1`
-/

namespace A306333.P13602401338756318721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A306211 (Int.gcd (1 - a (n - 1)) (A306215 (n + 1)))

end

end A306333.P13602401338756318721

/-! ## A306333.P678557833186407525

`A306211(gcd(A010894(n), A306215(n+1)))`
-/

namespace A306333.P678557833186407525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (Int.gcd (A010894 (n + 21)) (A306215 (n + 1)))

end

end A306333.P678557833186407525

/-! ## A306333.P2116194750709954751

`A306211(∑[A323475(n)])`
-/

namespace A306333.P2116194750709954751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306333.P2116194750709954751

/-!
# A306334: a(n) is the number of different linear hydrocarbon molecules with n carbon atoms.

The programs for A306334, there is no canonical definition to state claims against.
-/

/-! ## A306334.P14769102750848098941

`A001462(3*n+1)*A002024(A058122(n))`
-/

namespace A306334.P14769102750848098941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (3 * n + 1) * A002024 (A058122 n).toNat

end

end A306334.P14769102750848098941

/-!
# A306335: Expansion of e.g.f. BesselI(0,2*log(1 + x)) + BesselI(1,2*log(1 + x)).

The programs for A306335, there is no canonical definition to state claims against.
-/

/-! ## A306335.P15005493704681325247

`A124768(A001844(n))-A009574(n)`
-/

namespace A306335.P15005493704681325247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A001844 n).toNat - A009574 n

end

end A306335.P15005493704681325247

/-!
# A306336: Expansion of e.g.f. sec(log(1 + x)) + tan(log(1 + x)).

The programs for A306336, there is no canonical definition to state claims against.
-/

/-! ## A306336.P4307189154835832332

`A009007(n)+A003708(n)`
-/

namespace A306336.P4307189154835832332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009007 n + A003708 n

end

end A306336.P4307189154835832332

/-!
# A306338: Carmichael numbers k such that phi(k) divides (k-1)*lambda(k).

The programs for A306338, there is no canonical definition to state claims against.
-/

/-! ## A306338.P4737621243560646146

`∩[A173703(n+1), A373734(n+1)]`
-/

namespace A306338.P4737621243560646146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306338.P4737621243560646146

/-! ## A306338.P14836193390633892881

`filter[A173703(n+1), A324290(#)]`
-/

namespace A306338.P14836193390633892881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A306338.P14836193390633892881

/-! ## A306338.P2954911411149190366

`∩[A173703(n+1), A287934(n+1)]`
-/

namespace A306338.P2954911411149190366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306338.P2954911411149190366

/-! ## A306338.P18089586827069176735

`A007947(∩[A002997(n+1), A173703(n+1)])`
-/

namespace A306338.P18089586827069176735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173703 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A306338.P18089586827069176735

/-!
# A306342: a(n) is the smallest divisor > 1 of prime(n)# = A002110(n) that is congruent to 1 modulo prime(n+1), or 0 if no such divisor exists.

The programs for A306342, there is no canonical definition to state claims against.
-/

/-! ## A306342.P13699569785635313431

`3*A081166(n²)`
-/

namespace A306342.P13699569785635313431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A081166 (n ^ 2)

end

end A306342.P13699569785635313431

/-!
# A306344: The q-analogs T(q; n,k) of the rascal-triangle, here q = 3.

The programs for A306344, there is no canonical definition to state claims against.
-/

/-! ## A306344.P14744511885305958746

`(5-A176225(n))/4`
-/

namespace A306344.P14744511885305958746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - A176225 n : ℚ) / 4

end

end A306344.P14744511885305958746

/-! ## A306344.P17085571783018079588

`ceil(A176794(n)/2^(comp[∑[n]]-n))`
-/

namespace A306344.P17085571783018079588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176794 n : ℚ) / (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)⌉

end

end A306344.P17085571783018079588

/-! ## A306344.P833629683521682157

`A103391(abs(A176225(n)))`
-/

namespace A306344.P833629683521682157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 |A176225 n|.toNat

end

end A306344.P833629683521682157

/-! ## A306344.P18312835523869550047

`A007913(5-A176225(n))`
-/

namespace A306344.P18312835523869550047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (5 - A176225 n).toNat

end

end A306344.P18312835523869550047

/-! ## A306344.P18194281859109176346

`A065883(5-A176225(n))`
-/

namespace A306344.P18194281859109176346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (5 - A176225 n).toNat

end

end A306344.P18194281859109176346

/-!
# A306345: Absolute difference between the number of prime divisors and the number of composite divisors of n.

The programs for A306345, the canonical program `A306345.P6612547379326574336` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306345 has offset 1).

The definition of A306345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A055212, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306345.P6612547379326574336

`abs(A001221(n+1)-A055212(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A306345

/-- `abs(A001221(n+1)-A055212(n+1))` -/
def P6612547379326574336.Spec : Prop :=
  ∀ n, P6612547379326574336.a n = A306345 (n + 1)

theorem P6612547379326574336.correct : P6612547379326574336.Spec := by
  intro n
  simp only [A306345, Nat.add_sub_cancel]

end A306345

/-! ## A306345.P7500832295884178118

`abs(2*A001221(n+1)-A000005(n+1)+1)`
-/

namespace A306345.P7500832295884178118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A001221 (n + 1) - A000005 (n + 1) + 1|

end

end A306345.P7500832295884178118

namespace A306345

/-- `abs(2*A001221(n+1)-A000005(n+1)+1)` -/
def P7500832295884178118.Spec : Prop :=
  ∀ n, P7500832295884178118.a n = A306345 (n + 1)

end A306345

/-! ## A306345.P7079879809520018240

`abs(A033273(n+1)-A083399(n+1))`
-/

namespace A306345.P7079879809520018240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033273 (n + 1) - A083399 (n + 1)|

end

end A306345.P7079879809520018240

namespace A306345

/-- `abs(A033273(n+1)-A083399(n+1))` -/
def P7079879809520018240.Spec : Prop :=
  ∀ n, P7079879809520018240.a n = A306345 (n + 1)

end A306345

/-! ## A306345.P5857911097268268310

`abs(A001221(n+1)+1-A033273(n+1))`
-/

namespace A306345.P5857911097268268310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001221 (n + 1) + (1 - A033273 (n + 1))|

end

end A306345.P5857911097268268310

namespace A306345

/-- `abs(A001221(n+1)+1-A033273(n+1))` -/
def P5857911097268268310.Spec : Prop :=
  ∀ n, P5857911097268268310.a n = A306345 (n + 1)

end A306345

/-! ## A306345.P2098052456618230033

`abs(A000005(n+1)-A048691(A034444(n+1)))`
-/

namespace A306345.P2098052456618230033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (n + 1) - A048691 (A034444 (n + 1)).toNat|

end

end A306345.P2098052456618230033

namespace A306345

/-- `abs(A000005(n+1)-A048691(A034444(n+1)))` -/
def P2098052456618230033.Spec : Prop :=
  ∀ n, P2098052456618230033.a n = A306345 (n + 1)

end A306345

/-! ## A306345.P3380058119487511201

`abs(A000005(n+1)-A000005(A034444(n+1)²))`
-/

namespace A306345.P3380058119487511201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (n + 1) - A000005 (A034444 (n + 1) ^ 2).toNat|

end

end A306345.P3380058119487511201

namespace A306345

/-- `abs(A000005(n+1)-A000005(A034444(n+1)²))` -/
def P3380058119487511201.Spec : Prop :=
  ∀ n, P3380058119487511201.a n = A306345 (n + 1)

end A306345

/-!
# A306346: Start with the sequence S(1) = [0], and for n >= 1 define S(n+1) to equal the concatenation of S(n) with the RUNS transform of S(n) when read in reverse order. This sequence is the limit of that process as n goes to infinity.

The programs for A306346, there is no canonical definition to state claims against.
-/

/-! ## A306346.P2118153483913485703

`and(A004273(n), A144437(A184641(n+6)))`
-/

namespace A306346.P2118153483913485703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 n) (A144437 (A184641 (n + 6)).toNat)

end

end A306346.P2118153483913485703

/-! ## A306346.P9547202283204469270

`and(3, record[A106617(n)]^A120397(n+1))`
-/

namespace A306346.P9547202283204469270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A120397 (n + 1) : ℤ)))

end

end A306346.P9547202283204469270

/-! ## A306346.P5067992680741585264

`A004273(n)%A010694(A120397(n+1))`
-/

namespace A306346.P5067992680741585264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 n) (A010694 (A120397 (n + 1)).toNat)

end

end A306346.P5067992680741585264

/-!
# A306347: Expansion of e.g.f. exp((sin(x) + sinh(x))/2).

The programs for A306347, there is no canonical definition to state claims against.
-/

/-! ## A306347.P17268570159657424112

`A351969(n)-A045698(A275266(n+1))`
-/

namespace A306347.P17268570159657424112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351969 n - A045698 (A275266 (n + 1)).toNat

end

end A306347.P17268570159657424112

/-! ## A306347.P12170270323037491139

`A351969(n)-A185238(A274846(n+1))`
-/

namespace A306347.P12170270323037491139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351969 n - A185238 (A274846 (n + 1)).toNat

end

end A306347.P12170270323037491139

/-! ## A306347.P2259086548800325466

`A351969(n)^A368206(n)!`
-/

namespace A306347.P2259086548800325466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351969 n ^ Nat.factorial (A368206 n).toNat

end

end A306347.P2259086548800325466

/-! ## A306347.P9547512436900116390

`A351969(n)%A119082(n+1)`
-/

namespace A306347.P9547512436900116390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351969 n) (A119082 (n + 1))

end

end A306347.P9547512436900116390

/-! ## A306347.P15372278135073870147

`A351969(n)+A096123(n+4)%(n+1)`
-/

namespace A306347.P15372278135073870147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351969 n + Int.tmod (A096123 (n + 4)) (n + 1 : ℤ)

end

end A306347.P15372278135073870147

/-!
# A306353: Number of composites among the first n composite numbers whose least prime factor p is that of the n-th composite number.

The programs for A306353, there is no canonical definition to state claims against.
-/

/-! ## A306353.P18019074367487198091

`A377734(A002808(n+1))`
-/

namespace A306353.P18019074367487198091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (A002808 (n + 1)).toNat

end

end A306353.P18019074367487198091

/-! ## A306353.P5417228159233413285

`A377734(A018252(n+2))`
-/

namespace A306353.P5417228159233413285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (A018252 (n + 2)).toNat

end

end A306353.P5417228159233413285

/-! ## A306353.P13995459067587611967

`A078898(Δ[A053767(n)])-1`
-/

namespace A306353.P13995459067587611967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f1 (n + 1) - f1 n).toNat - 1

end

end A306353.P13995459067587611967

/-! ## A306353.P4603581249172241454

`A078898(A065090(n+3))-1`
-/

namespace A306353.P4603581249172241454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A065090 (n + 3)).toNat - 1

end

end A306353.P4603581249172241454

/-! ## A306353.P5345714599845077170

`A078898(lt[0, A082023(n)])-1`
-/

namespace A306353.P5345714599845077170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A306353.P5345714599845077170

/-! ## A306353.P4949989668694287807

`A078898(lt[1, A032741(n)])-1`
-/

namespace A306353.P4949989668694287807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A306353.P4949989668694287807

/-! ## A306353.P5586956119461627357

`A078898(lt[1, A072491(n)])-1`
-/

namespace A306353.P5586956119461627357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A306353.P5586956119461627357

/-! ## A306353.P5353195999835795226

`A078898(lt[1, A078898(n)])-1`
-/

namespace A306353.P5353195999835795226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A306353.P5353195999835795226

/-! ## A306353.P13202340264969516654

`A078898(comp[C(A006530(n+1), n)])-1`
-/

namespace A306353.P13202340264969516654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A306353.P13202340264969516654

/-! ## A306353.P10956009336283392887

`A078898(comp[C(A014963(n+1), n)])-1`
-/

namespace A306353.P10956009336283392887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A306353.P10956009336283392887

/-! ## A306353.P12834410043549514987

`A078898(comp[C(A020639(n+1), n)])-1`
-/

namespace A306353.P12834410043549514987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A306353.P12834410043549514987

/-! ## A306353.P8110982706350597671

`A078898(A002808(n+1))-A078898(A006530(n+1))`
-/

namespace A306353.P8110982706350597671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A002808 (n + 1)).toNat - A078898 (A006530 (n + 1)).toNat

end

end A306353.P8110982706350597671

/-!
# A306354: a(n) = gcd(n, A101337(n)).

The programs for A306354, the canonical program `A306354.P11672414115379192429` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306354 has offset 1).

The definition of A306354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306354.P11672414115379192429

`gcd(n+1, A101337(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A306354

/-- `gcd(n+1, A101337(n+1))` -/
def P11672414115379192429.Spec : Prop :=
  ∀ n, (P11672414115379192429.a n : ℤ) = A306354 (n + 1)

theorem P11672414115379192429.correct : P11672414115379192429.Spec := by
  intro n
  simp only [A306354, Nat.add_sub_cancel]

end A306354

/-! ## A306354.P11951886134364038165

`gcd(A101337(n+1), A131738(n))`
-/

namespace A306354.P11951886134364038165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101337 (n + 1)) (A131738 n)

end

end A306354.P11951886134364038165

namespace A306354

/-- `gcd(A101337(n+1), A131738(n))` -/
def P11951886134364038165.Spec : Prop :=
  ∀ n, (P11951886134364038165.a n : ℤ) = A306354 (n + 1)

end A306354

/-! ## A306354.P10882758539386106790

`gcd(A349194(n+1), A365762(n+1))`
-/

namespace A306354.P10882758539386106790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A349194 (n + 1)) (A365762 (n + 1))

end

end A306354.P10882758539386106790

namespace A306354

/-- `gcd(A349194(n+1), A365762(n+1))` -/
def P10882758539386106790.Spec : Prop :=
  ∀ n, (P10882758539386106790.a n : ℤ) = A306354 (n + 1)

end A306354

/-!
# A306355: Numbers k such that the period of 1/k, or 0 if 1/k terminates, is strictly greater than the period of the decimal expansion of 1/m for all m < k.

The programs for A306355, there is no canonical definition to state claims against.
-/

/-! ## A306355.P7052858076751145982

`A049283(record[A054710(or(1, n))])`
-/

namespace A306355.P7052858076751145982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306355.P7052858076751145982

/-! ## A306355.P2104856266162836310

`record[A049283(record[A054710(n+1)])]`
-/

namespace A306355.P2104856266162836310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306355.P2104856266162836310

/-! ## A306355.P3931841352140771095

`A049283(record[A054710(xor(1, 2*n))])`
-/

namespace A306355.P3931841352140771095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (Nat.xor 1 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306355.P3931841352140771095

/-! ## A306355.P4010125270904334726

`A049283(record[A112765(n+1)+A007732(n+1)])`
-/

namespace A306355.P4010125270904334726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1) + A007732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306355.P4010125270904334726

/-! ## A306355.P9453956987561752259

`record[or(1, A307070(n+1))]`
-/

namespace A306355.P9453956987561752259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A307070 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306355.P9453956987561752259

/-!
# A306356: Number of defective (binary) heaps on n elements with floor(n/2) defects.

The programs for A306356, there is no canonical definition to state claims against.
-/

/-! ## A306356.P14324832770027086100

`A306343(A000982(n))`
-/

namespace A306356.P14324832770027086100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A000982 n).toNat

end

end A306356.P14324832770027086100

/-! ## A306356.P13093259025938603486

`A306343(A104563(n))`
-/

namespace A306356.P13093259025938603486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A104563 n).toNat

end

end A306356.P13093259025938603486

/-! ## A306356.P10991635297907103726

`A306343(A328005(n))`
-/

namespace A306356.P10991635297907103726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A328005 n).toNat

end

end A306356.P10991635297907103726

/-! ## A306356.P16207178709995103287

`A306343(A004525(n²))`
-/

namespace A306356.P16207178709995103287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A004525 (n ^ 2)).toNat

end

end A306356.P16207178709995103287

/-! ## A306356.P9512027953997152112

`A306343(A008619(n²))`
-/

namespace A306356.P9512027953997152112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A008619 (n ^ 2)).toNat

end

end A306356.P9512027953997152112

/-! ## A306356.P16278485189520280245

`A306343(A099392(n+1))`
-/

namespace A306356.P16278485189520280245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A099392 (n + 1)).toNat

end

end A306356.P16278485189520280245

/-! ## A306356.P17349797927408747258

`A306343(A004526(n²+1))`
-/

namespace A306356.P17349797927408747258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A004526 (n ^ 2 + 1)).toNat

end

end A306356.P17349797927408747258

/-! ## A306356.P11745278389317800126

`A306343(A000217(n)-A004526(n))`
-/

namespace A306356.P11745278389317800126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A000217 n - A004526 n).toNat

end

end A306356.P11745278389317800126

/-! ## A306356.P10525835720072053600

`A306343(A103221(A016789(n²)))`
-/

namespace A306356.P10525835720072053600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A103221 (A016789 (n ^ 2)).toNat).toNat

end

end A306356.P10525835720072053600

/-!
# A306357: Number of nonempty subsets of {1, ..., n} containing no three cyclically successive elements.

The programs for A306357, the canonical program `A306357.P16467767130063391388` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306357 has offset 0).

The definition of A306357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306357.P16467767130063391388

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=20, a(6)=38`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A306357

/-- `2*a(n-1)-a(n-4)` -/
def P16467767130063391388.Spec : Prop :=
  ∀ n, P16467767130063391388.a n = A306357 n

theorem P16467767130063391388.correct : P16467767130063391388.Spec := by
  intro n
  simp only [A306357]

end A306357

/-! ## A306357.P11624308560026530810

`and(-A046698(n), A001644(n))`
-/

namespace A306357.P11624308560026530810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A046698 n) (A001644 n)

end

end A306357.P11624308560026530810

namespace A306357

/-- `and(-A046698(n), A001644(n))` -/
def P11624308560026530810.Spec : Prop :=
  ∀ n, P11624308560026530810.a n = A306357 n

end A306357

/-! ## A306357.P9134612637774078598

`A001644(A028310(n))-A179184(n)`
-/

namespace A306357.P9134612637774078598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (A028310 n).toNat - A179184 n

end

end A306357.P9134612637774078598

namespace A306357

/-- `A001644(A028310(n))-A179184(n)` -/
def P9134612637774078598.Spec : Prop :=
  ∀ n, P9134612637774078598.a n = A306357 n

end A306357

/-! ## A306357.P12924139223359958938

`A001644(A028310(n))-A267537(n+1)`
-/

namespace A306357.P12924139223359958938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (A028310 n).toNat - A267537 (n + 1)

end

end A306357.P12924139223359958938

namespace A306357

/-- `A001644(A028310(n))-A267537(n+1)` -/
def P12924139223359958938.Spec : Prop :=
  ∀ n, P12924139223359958938.a n = A306357 n

end A306357

/-! ## A306357.P13070846708782228393

`A057428(A110659(n))+A001644(A028310(n))`
-/

namespace A306357.P13070846708782228393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A110659 n).toNat + A001644 (A028310 n).toNat

end

end A306357.P13070846708782228393

namespace A306357

/-- `A057428(A110659(n))+A001644(A028310(n))` -/
def P13070846708782228393.Spec : Prop :=
  ∀ n, P13070846708782228393.a n = A306357 n

end A306357

/-! ## A306357.P14460004830304661782

`and(2^n-A000032(C(2, n)), A001644(n))`
-/

namespace A306357.P14460004830304661782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - A000032 (Nat.choose 2 n)) (A001644 n)

end

end A306357.P14460004830304661782

namespace A306357

/-- `and(2^n-A000032(C(2, n)), A001644(n))` -/
def P14460004830304661782.Spec : Prop :=
  ∀ n, P14460004830304661782.a n = A306357 n

end A306357

/-!
# A306358: Odd numbers which are the sum of two squares in two or more different ways.

The programs for A306358, there is no canonical definition to state claims against.
-/

/-! ## A306358.P11370701497816548309

`lt[4, -A134014(n)]`
-/

namespace A306358.P11370701497816548309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A134014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306358.P11370701497816548309

/-! ## A306358.P8088221278735833335

`lt[2, A290081(2*n)]`
-/

namespace A306358.P8088221278735833335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306358.P8088221278735833335

/-! ## A306358.P12664114500973767181

`4*A118139(n+1)+1`
-/

namespace A306358.P12664114500973767181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A118139 (n + 1) + 1

end

end A306358.P12664114500973767181

/-! ## A306358.P11134651055489255412

`∩[2*n+1, A118882(n+1)]`
-/

namespace A306358.P11134651055489255412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306358.P11134651055489255412

/-! ## A306358.P2403145148474560176

`lt[4, A342154(gcd(n, xor(3, n+1)))]`
-/

namespace A306358.P2403145148474560176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342154 (Nat.gcd n (Nat.xor 3 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306358.P2403145148474560176

/-! ## A306358.P16632416121335768182

`lt[3, A342154(n*and(1, n)^n)]`
-/

namespace A306358.P16632416121335768182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342154 (n * Nat.land 1 n ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306358.P16632416121335768182

/-! ## A306358.P863514777575595509

`lt[3, A342154(n^and(1, n)^n)]`
-/

namespace A306358.P863514777575595509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342154 (n ^ Nat.land 1 n ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306358.P863514777575595509

/-! ## A306358.P14457784039192181701

`lt[10*(C(n, a(n-1))+1), A004018(n)]` with `a(0)=9`
-/

namespace A306358.P14457784039192181701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  10 * (Nat.choose n (f1 (n - 1)) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306358.P14457784039192181701

/-! ## A306358.P13995983283334955577

`A004766(A118139(n+1))`
-/

namespace A306358.P13995983283334955577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A118139 (n + 1)).toNat

end

end A306358.P13995983283334955577

/-! ## A306358.P15596286178028302461

`lt[1, A000161(A093178(n))]`
-/

namespace A306358.P15596286178028302461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306358.P15596286178028302461

/-!
# A306359: a(n) is the seed as given in A063048 such that the Lychrel number in A023108(n) joins the trajectory of this seed; 0 if A023108(n) is a seed.

The programs for A306359, there is no canonical definition to state claims against.
-/

/-! ## A306359.P3552004321342361548

`98*A010673(A112068(n+1))`
-/

namespace A306359.P3552004321342361548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 * A010673 (A112068 (n + 1)).toNat

end

end A306359.P3552004321342361548

/-! ## A306359.P11454579210611586214

`lcm(196, A013596(A308689(n+1)))`
-/

namespace A306359.P11454579210611586214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 196 (A013596 (A308689 (n + 1)).toNat)

end

end A306359.P11454579210611586214

/-!
# A306360: Numbers k such that A101337(k)/k is an integer.

The programs for A306360, there is no canonical definition to state claims against.
-/

/-! ## A306360.P10769071296916626468

`record[A306354(A306354(n+1))]`
-/

namespace A306360.P10769071296916626468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306354 (A306354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306360.P10769071296916626468

/-! ## A306360.P8486340043811940141

`record[C(gcd(11*(n+1), A101337(n+1)), n)]`
-/

namespace A306360.P8486340043811940141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (11 * (n + 1) : ℤ) (A101337 (n + 1))) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306360.P8486340043811940141

/-! ## A306360.P17229419808398428498

`A334601(lt[n, A076310(n)])`
-/

namespace A306360.P17229419808398428498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306360.P17229419808398428498

/-! ## A306360.P1003403190827334285

`A334601(∑[A236378(n)+1])`
-/

namespace A306360.P1003403190827334285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306360.P1003403190827334285

/-! ## A306360.P9899005779008841497

`A334601(∑[abs(A334561(n+4))])`
-/

namespace A306360.P9899005779008841497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A334561 (n + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306360.P9899005779008841497

/-!
# A306361: Numbers k divisible by A101337(k) (narcissistic function).

The programs for A306361, there is no canonical definition to state claims against.
-/

/-! ## A306361.P318830838078492661

`record[A274206(∑[A025153(n)])]`
-/

namespace A306361.P318830838078492661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306361.P318830838078492661

/-! ## A306361.P14351030574875482977

`eq[A035931(n), A326454(ceil(n/2))]`
-/

namespace A306361.P14351030574875482977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326454 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306361.P14351030574875482977

/-! ## A306361.P7649077614052103316

`∩[A032571(n+1), A361232(n+1)]`
-/

namespace A306361.P7649077614052103316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306361.P7649077614052103316

/-! ## A306361.P5138983385249478925

`∩[A066566(n+1)+1, A202272(n+1)]`
-/

namespace A306361.P5138983385249478925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066566 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306361.P5138983385249478925

/-! ## A306361.P11776093707026982619

`∩[A202272(n+2), A278328(n+2)-1]`
-/

namespace A306361.P11776093707026982619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278328 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306361.P11776093707026982619

/-!
# A306362: Prime numbers in A317298.

The programs for A306362, the canonical program `A306362.P3888915348821360645` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306362 has offset 1).

The definition of A306362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306362.P3888915348821360645

`p?[or(n%2, C(n, 2))]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A306362

/-- `p?[or(n%2, C(n, 2))]` -/
def P3888915348821360645.Spec : Prop :=
  ∀ n, (P3888915348821360645.a n : ℤ) = A306362 (n + 1)

theorem P3888915348821360645.correct : P3888915348821360645.Spec := by
  intro n
  simp only [A306362, Nat.add_sub_cancel]

end A306362

/-! ## A306362.P9842472193860183047

`p?[or(C(n, 2), and(1, n))]`
-/

namespace A306362.P9842472193860183047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose n 2) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306362.P9842472193860183047

namespace A306362

/-- `p?[or(C(n, 2), and(1, n))]` -/
def P9842472193860183047.Spec : Prop :=
  ∀ n, (P9842472193860183047.a n : ℤ) = A306362 (n + 1)

end A306362

/-! ## A306362.P1730095360090008816

`p?[or(∑[n], char[2*n])]`
-/

namespace A306362.P1730095360090008816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f2 j) (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306362.P1730095360090008816

namespace A306362

/-- `p?[or(∑[n], char[2*n])]` -/
def P1730095360090008816.Spec : Prop :=
  ∀ n, (P1730095360090008816.a n : ℤ) = A306362 (n + 1)

end A306362

/-! ## A306362.P807725862763909716

`p?[C(and(n, -2), 2)+n]`
-/

namespace A306362.P807725862763909716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-2)).toNat 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306362.P807725862763909716

namespace A306362

/-- `p?[C(and(n, -2), 2)+n]` -/
def P807725862763909716.Spec : Prop :=
  ∀ n, (P807725862763909716.a n : ℤ) = A306362 (n + 1)

end A306362

/-! ## A306362.P10351145533639164631

`p?[or(1, n)+2*n²]`
-/

namespace A306362.P10351145533639164631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306362.P10351145533639164631

namespace A306362

/-- `p?[or(1, n)+2*n²]` -/
def P10351145533639164631.Spec : Prop :=
  ∀ n, (P10351145533639164631.a n : ℤ) = A306362 (n + 1)

end A306362

/-! ## A306362.P12349512134409492105

`p?[n²-(a(n-1)+2)]` with `a(0)=1`
-/

namespace A306362.P12349512134409492105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n ^ 2 : ℤ) - (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P12349512134409492105

namespace A306362

/-- `p?[n²-(a(n-1)+2)]` -/
def P12349512134409492105.Spec : Prop :=
  ∀ n, P12349512134409492105.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P17753973979052190794

`p?[n²-2-a(n-1)]` with `a(0)=1`
-/

namespace A306362.P17753973979052190794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n ^ 2 : ℤ) - 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P17753973979052190794

namespace A306362

/-- `p?[n²-2-a(n-1)]` -/
def P17753973979052190794.Spec : Prop :=
  ∀ n, P17753973979052190794.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P14351035458964362238

`p?[A131179(n)]`
-/

namespace A306362.P14351035458964362238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P14351035458964362238

namespace A306362

/-- `p?[A131179(n)]` -/
def P14351035458964362238.Spec : Prop :=
  ∀ n, P14351035458964362238.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P16346179868206300106

`p?[A316966(n)]`
-/

namespace A306362.P16346179868206300106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P16346179868206300106

namespace A306362

/-- `p?[A316966(n)]` -/
def P16346179868206300106.Spec : Prop :=
  ∀ n, P16346179868206300106.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P13827007897544267822

`p?[A317298(n)]`
-/

namespace A306362.P13827007897544267822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P13827007897544267822

namespace A306362

/-- `p?[A317298(n)]` -/
def P13827007897544267822.Spec : Prop :=
  ∀ n, P13827007897544267822.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P6395681305965195745

`p?[∑[A266303(n)]]`
-/

namespace A306362.P6395681305965195745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P6395681305965195745

namespace A306362

/-- `p?[∑[A266303(n)]]` -/
def P6395681305965195745.Spec : Prop :=
  ∀ n, P6395681305965195745.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P4276998572992368350

`p?[∑[A267354(n)]]`
-/

namespace A306362.P4276998572992368350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P4276998572992368350

namespace A306362

/-- `p?[∑[A267354(n)]]` -/
def P4276998572992368350.Spec : Prop :=
  ∀ n, P4276998572992368350.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P11033271094598345451

`p?[A139592(n)+1]`
-/

namespace A306362.P11033271094598345451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139592 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P11033271094598345451

namespace A306362

/-- `p?[A139592(n)+1]` -/
def P11033271094598345451.Spec : Prop :=
  ∀ n, P11033271094598345451.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P9383236352941919746

`p?[∑[A193829(n+2)]]`
-/

namespace A306362.P9383236352941919746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193829 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P9383236352941919746

namespace A306362

/-- `p?[∑[A193829(n+2)]]` -/
def P9383236352941919746.Spec : Prop :=
  ∀ n, P9383236352941919746.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P16053166113092181473

`p?[Δ[A304487(n+1)]]`
-/

namespace A306362.P16053166113092181473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304487 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P16053166113092181473

namespace A306362

/-- `p?[Δ[A304487(n+1)]]` -/
def P16053166113092181473.Spec : Prop :=
  ∀ n, P16053166113092181473.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P13176517904959681975

`p?[Δ[A079825(n+2)]]`
-/

namespace A306362.P13176517904959681975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079825 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P13176517904959681975

namespace A306362

/-- `p?[Δ[A079825(n+2)]]` -/
def P13176517904959681975.Spec : Prop :=
  ∀ n, P13176517904959681975.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P9866344638304168559

`p?[A213041(n)+n²]`
-/

namespace A306362.P9866344638304168559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P9866344638304168559

namespace A306362

/-- `p?[A213041(n)+n²]` -/
def P9866344638304168559.Spec : Prop :=
  ∀ n, P9866344638304168559.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P11052457239354937375

`p?[∑[A080412(n)]-n]`
-/

namespace A306362.P11052457239354937375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P11052457239354937375

namespace A306362

/-- `p?[∑[A080412(n)]-n]` -/
def P11052457239354937375.Spec : Prop :=
  ∀ n, P11052457239354937375.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P10392425105681817214

`p?[A215098(2*n)+1]`
-/

namespace A306362.P10392425105681817214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215098 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P10392425105681817214

namespace A306362

/-- `p?[A215098(2*n)+1]` -/
def P10392425105681817214.Spec : Prop :=
  ∀ n, P10392425105681817214.a n = A306362 (n + 1)

end A306362

/-! ## A306362.P14702469228076234260

`p?[A266252(2*n+1)]`
-/

namespace A306362.P14702469228076234260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266252 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306362.P14702469228076234260

namespace A306362

/-- `p?[A266252(2*n+1)]` -/
def P14702469228076234260.Spec : Prop :=
  ∀ n, P14702469228076234260.a n = A306362 (n + 1)

end A306362

/-!
# A306363: For n > 1 having omega(n) = k and canonical prime factorization n = d_1*d_2*...*d_k, a(n) = Sum_{i=1..k} (d_i*a(n/d_i) + (n/d_i)); a(1)=0.

The programs for A306363, there is no canonical definition to state claims against.
-/

/-! ## A306363.P6252172671211769855

`A066504(n+1)*A335521(A292586(n+1))`
-/

namespace A306363.P6252172671211769855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) * A335521 (A292586 (n + 1)).toNat

end

end A306363.P6252172671211769855

/-! ## A306363.P17828938323845134650

`A028236(n+1)%(n+1)²*A335521(A292586(n+1))`
-/

namespace A306363.P17828938323845134650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028236 (n + 1)) ((n + 1) ^ 2 : ℤ) * A335521 (A292586 (n + 1)).toNat

end

end A306363.P17828938323845134650

/-! ## A306363.P9077631447917309038

`(A028236(n+1)-A000007(n))*A335521(A292586(n+1))`
-/

namespace A306363.P9077631447917309038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028236 (n + 1) - A000007 n) * A335521 (A292586 (n + 1)).toNat

end

end A306363.P9077631447917309038

/-! ## A306363.P9219632877775380077

`A066504(n+1)*A259936(A304404(n+1))`
-/

namespace A306363.P9219632877775380077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) * A259936 (A304404 (n + 1)).toNat

end

end A306363.P9219632877775380077

/-! ## A306363.P10693683454660075382

`A066504(n+1)*A259936(A129202(n))`
-/

namespace A306363.P10693683454660075382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) * A259936 (A129202 n).toNat

end

end A306363.P10693683454660075382

/-! ## A306363.P14742735459520854729

`A028236(n+1)*A057427(n)*A259936(A129202(n))`
-/

namespace A306363.P14742735459520854729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (n + 1) * A057427 n * A259936 (A129202 n).toNat

end

end A306363.P14742735459520854729

/-! ## A306363.P10470595849317771305

`(A028236(n+1)-A010051(2*(n+1)))*A259936(A129202(n))`
-/

namespace A306363.P10470595849317771305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028236 (n + 1) - A010051 (2 * (n + 1))) * A259936 (A129202 n).toNat

end

end A306363.P10470595849317771305

/-! ## A306363.P18331420407051296383

`A066504(n+1)*A259936(A064549(n+1))`
-/

namespace A306363.P18331420407051296383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) * A259936 (A064549 (n + 1)).toNat

end

end A306363.P18331420407051296383

/-! ## A306363.P17318315361471746878

`A066504(n+1)*A259936(A078615(n+1))`
-/

namespace A306363.P17318315361471746878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) * A259936 (A078615 (n + 1)).toNat

end

end A306363.P17318315361471746878

/-!
# A306366: For any sequence s of positive integers without infinitely many consecutive equal terms, let T(s) be the sequence obtained by replacing each run, say of k consecutive t's, with a run of t consecutive k's; this sequence corresponds to T(K) (where K denotes the Kolakoski sequence A000002).

The programs for A306366, there is no canonical definition to state claims against.
-/

/-! ## A306366.P16756822596761309953

`A000002(∑[char[∑[n%3]]])`
-/

namespace A306366.P16756822596761309953
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306366.P16756822596761309953

/-! ## A306366.P10521644572033001022

`A000002(∑[(n+1)²%3])`
-/

namespace A306366.P10521644572033001022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306366.P10521644572033001022

/-! ## A306366.P47475021902323851

`A000002(∑[round(cos(-n%3))])`
-/

namespace A306366.P47475021902323851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Int.tmod (-(n : ℤ)) 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306366.P47475021902323851

/-! ## A306366.P7424601993129316344

`A000002(ceil(2*(n+1)/3))`
-/

namespace A306366.P7424601993129316344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 ⌈2 * ((n + 1 : ℚ) / 3)⌉.toNat

end

end A306366.P7424601993129316344

/-! ## A306366.P16487452959691705426

`gcd(2, A160051(round(2*n/3)))`
-/

namespace A306366.P16487452959691705426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A160051 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat)

end

end A306366.P16487452959691705426

/-! ## A306366.P16964236394792680199

`A000002(round(2*n/3)+1)!`
-/

namespace A306366.P16964236394792680199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1).toNat).toNat

end

end A306366.P16964236394792680199

/-! ## A306366.P8756956450449950799

`dr(A000002(floor(Δ[n²]/3)+1))`
-/

namespace A306366.P8756956450449950799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000002 (⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3⌋ + 1).toNat)

end

end A306366.P8756956450449950799

/-! ## A306366.P1593046851841103049

`2-A078650(round(2*n/3)+1)`
-/

namespace A306366.P1593046851841103049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A078650 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1).toNat

end

end A306366.P1593046851841103049

/-! ## A306366.P2903974435824794475

`A123594(round(2*n/3)+3)+1`
-/

namespace A306366.P2903974435824794475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 3).toNat + 1

end

end A306366.P2903974435824794475

/-! ## A306366.P6860703352533979238

`3-A049705(round(2*n/3)+1)`
-/

namespace A306366.P6860703352533979238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1).toNat

end

end A306366.P6860703352533979238

/-!
# A306367: a(n) = numerator of (n^2 + 2)/(n + 2).

The programs for A306367, the canonical program `A306367.P17064461308233091152` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306367 has offset 0).

The definition of A306367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306367.P2345081993879109188

`lcm(n+2, n²+2)/(n+2)`
-/

namespace A306367.P2345081993879109188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n ^ 2 + 2) : ℚ) / (n + 2 : ℚ)

end

end A306367.P2345081993879109188

namespace A306367

/-- `lcm(n+2, n²+2)/(n+2)` -/
def P2345081993879109188.Spec : Prop :=
  ∀ n, P2345081993879109188.a n = (A306367 n : ℚ)

end A306367

/-! ## A306367.P7820273221000501543

`(n²+2)/gcd(n+2, 3*n)`
-/

namespace A306367.P7820273221000501543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 2 : ℚ) / (Nat.gcd (n + 2) (3 * n) : ℚ)

end

end A306367.P7820273221000501543

namespace A306367

/-- `(n²+2)/gcd(n+2, 3*n)` -/
def P7820273221000501543.Spec : Prop :=
  ∀ n, P7820273221000501543.a n = (A306367 n : ℚ)

end A306367

/-! ## A306367.P1073817024225956128

`gcd(n²+2, A129995(n))`
-/

namespace A306367.P1073817024225956128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + 2 : ℤ) (A129995 n)

end

end A306367.P1073817024225956128

namespace A306367

/-- `gcd(n²+2, A129995(n))` -/
def P1073817024225956128.Spec : Prop :=
  ∀ n, (P1073817024225956128.a n : ℤ) = A306367 n

end A306367

/-! ## A306367.P17064461308233091152

`gcd(A054602(n), A131509(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A306367

/-- `gcd(A054602(n), A131509(n))` -/
def P17064461308233091152.Spec : Prop :=
  ∀ n, (P17064461308233091152.a n : ℤ) = A306367 n

theorem P17064461308233091152.correct : P17064461308233091152.Spec := by
  intro n
  simp only [A306367]

end A306367

/-! ## A306367.P13741119065245383521

`gcd(1-A071246(n), A059100(n))`
-/

namespace A306367.P13741119065245383521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A071246 n) (A059100 n)

end

end A306367.P13741119065245383521

namespace A306367

/-- `gcd(1-A071246(n), A059100(n))` -/
def P13741119065245383521.Spec : Prop :=
  ∀ n, (P13741119065245383521.a n : ℤ) = A306367 n

end A306367

/-! ## A306367.P16619198211003390263

`gcd(A129995(n)+A010000(n), A010000(n))`
-/

namespace A306367.P16619198211003390263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129995 n + A010000 n) (A010000 n)

end

end A306367.P16619198211003390263

namespace A306367

/-- `gcd(A129995(n)+A010000(n), A010000(n))` -/
def P16619198211003390263.Spec : Prop :=
  ∀ n, (P16619198211003390263.a n : ℤ) = A306367 n

end A306367

/-! ## A306367.P11065097735659760553

`gcd(A160842(n)+A131509(n), A160842(n))`
-/

namespace A306367.P11065097735659760553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160842 n + A131509 n) (A160842 n)

end

end A306367.P11065097735659760553

namespace A306367

/-- `gcd(A160842(n)+A131509(n), A160842(n))` -/
def P11065097735659760553.Spec : Prop :=
  ∀ n, (P11065097735659760553.a n : ℤ) = A306367 n

end A306367

/-! ## A306367.P10128098543302804890

`gcd(A000217(A002522(n)), A071239(n))`
-/

namespace A306367.P10128098543302804890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A002522 n).toNat) (A071239 n)

end

end A306367.P10128098543302804890

namespace A306367

/-- `gcd(A000217(A002522(n)), A071239(n))` -/
def P10128098543302804890.Spec : Prop :=
  ∀ n, (P10128098543302804890.a n : ℤ) = A306367 n

end A306367

/-! ## A306367.P7632668099269849452

`A329494(n)/A000108(n+1)*A344191(n)`
-/

namespace A306367.P7632668099269849452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329494 n : ℚ) / (A000108 (n + 1) : ℚ) * (A344191 n : ℚ)

end

end A306367.P7632668099269849452

namespace A306367

/-- `A329494(n)/A000108(n+1)*A344191(n)` -/
def P7632668099269849452.Spec : Prop :=
  ∀ n, P7632668099269849452.a n = (A306367 n : ℚ)

end A306367

/-! ## A306367.P5638906800275955985

`A060789(n+2)/A000108(n)*A344191(n)`
-/

namespace A306367.P5638906800275955985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060789 (n + 2) : ℚ) / (A000108 n : ℚ) * (A344191 n : ℚ)

end

end A306367.P5638906800275955985

namespace A306367

/-- `A060789(n+2)/A000108(n)*A344191(n)` -/
def P5638906800275955985.Spec : Prop :=
  ∀ n, P5638906800275955985.a n = (A306367 n : ℚ)

end A306367

/-!
# A306368: a(n) = numerator of (n + 3)*(n + 4)/((n + 1)*(n + 2)).

The programs for A306368, the canonical program `A306368.P12557486735041717040` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306368 has offset 0).

The definition of A306368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306368.P12557486735041717040

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=6, a(1)=10, a(2)=5, a(3)=21, a(4)=28, a(5)=12, a(6)=45, a(7)=55, a(8)=22`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A306368

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P12557486735041717040.Spec : Prop :=
  ∀ n, P12557486735041717040.a n = A306368 n

theorem P12557486735041717040.correct : P12557486735041717040.Spec := by
  intro n
  simp only [A306368]

end A306368

/-! ## A306368.P6765523265881858235

`(∑[n+3]+3)/gcd(3, n+1)`
-/

namespace A306368.P6765523265881858235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℚ) / (Nat.gcd 3 (n + 1) : ℚ)

end

end A306368.P6765523265881858235

namespace A306368

/-- `(∑[n+3]+3)/gcd(3, n+1)` -/
def P6765523265881858235.Spec : Prop :=
  ∀ n, P6765523265881858235.a n = (A306368 n : ℚ)

end A306368

/-! ## A306368.P2375946711739832539

`A005564(n+3)/A203648(n+1)`
-/

namespace A306368.P2375946711739832539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005564 (n + 3) : ℚ) / (A203648 (n + 1) : ℚ)

end

end A306368.P2375946711739832539

namespace A306368

/-- `A005564(n+3)/A203648(n+1)` -/
def P2375946711739832539.Spec : Prop :=
  ∀ n, P2375946711739832539.a n = (A306368 n : ℚ)

end A306368

/-! ## A306368.P3322697249463548095

`A000217(n+3)/A109007(A007947(n+1))`
-/

namespace A306368.P3322697249463548095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 3) : ℚ) / (A109007 (A007947 (n + 1)).toNat : ℚ)

end

end A306368.P3322697249463548095

namespace A306368

/-- `A000217(n+3)/A109007(A007947(n+1))` -/
def P3322697249463548095.Spec : Prop :=
  ∀ n, P3322697249463548095.a n = (A306368 n : ℚ)

end A306368

/-! ## A306368.P17670643236936436473

`gcd(3, n)*A027626(n+1)`
-/

namespace A306368.P17670643236936436473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℤ) * A027626 (n + 1)

end

end A306368.P17670643236936436473

namespace A306368

/-- `gcd(3, n)*A027626(n+1)` -/
def P17670643236936436473.Spec : Prop :=
  ∀ n, P17670643236936436473.a n = A306368 n

end A306368

/-! ## A306368.P13958636683281278366

`A027626(n+1)*A109007(n)`
-/

namespace A306368.P13958636683281278366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027626 (n + 1) * A109007 n

end

end A306368.P13958636683281278366

namespace A306368

/-- `A027626(n+1)*A109007(n)` -/
def P13958636683281278366.Spec : Prop :=
  ∀ n, P13958636683281278366.a n = A306368 n

end A306368

/-! ## A306368.P10580475971285763231

`A000217(n+3)/A109007(n+1)`
-/

namespace A306368.P10580475971285763231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 3) : ℚ) / (A109007 (n + 1) : ℚ)

end

end A306368.P10580475971285763231

namespace A306368

/-- `A000217(n+3)/A109007(n+1)` -/
def P10580475971285763231.Spec : Prop :=
  ∀ n, P10580475971285763231.a n = (A306368 n : ℚ)

end A306368

/-! ## A306368.P7629576790422539989

`gcd(Δ[A034263(n+1)], A000217(n+3))`
-/

namespace A306368.P7629576790422539989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000217 (n + 3))

end

end A306368.P7629576790422539989

namespace A306368

/-- `gcd(Δ[A034263(n+1)], A000217(n+3))` -/
def P7629576790422539989.Spec : Prop :=
  ∀ n, (P7629576790422539989.a n : ℤ) = A306368 n

end A306368

/-! ## A306368.P16655602945091490579

`A194767(n+2)/2`
-/

namespace A306368.P16655602945091490579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194767 (n + 2) : ℚ) / 2

end

end A306368.P16655602945091490579

namespace A306368

/-- `A194767(n+2)/2` -/
def P16655602945091490579.Spec : Prop :=
  ∀ n, P16655602945091490579.a n = (A306368 n : ℚ)

end A306368

/-! ## A306368.P15273227717428394456

`(n+3)/2*A145064(n+2)`
-/

namespace A306368.P15273227717428394456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A145064 (n + 2) : ℚ)

end

end A306368.P15273227717428394456

namespace A306368

/-- `(n+3)/2*A145064(n+2)` -/
def P15273227717428394456.Spec : Prop :=
  ∀ n, P15273227717428394456.a n = (A306368 n : ℚ)

end A306368

/-! ## A306368.P13342360367589863472

`A109007(n)*A234041(n+2)`
-/

namespace A306368.P13342360367589863472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 n * A234041 (n + 2)

end

end A306368.P13342360367589863472

namespace A306368

/-- `A109007(n)*A234041(n+2)` -/
def P13342360367589863472.Spec : Prop :=
  ∀ n, P13342360367589863472.a n = A306368 n

end A306368

/-! ## A306368.P4948609307795913000

`A026741(n+3)*A060789(n+4)`
-/

namespace A306368.P4948609307795913000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 3) * A060789 (n + 4)

end

end A306368.P4948609307795913000

namespace A306368

/-- `A026741(n+3)*A060789(n+4)` -/
def P4948609307795913000.Spec : Prop :=
  ∀ n, P4948609307795913000.a n = A306368 n

end A306368

/-! ## A306368.P9420380382189434392

`A000217(n+3)/A144437(A000217(n+2))`
-/

namespace A306368.P9420380382189434392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 3) : ℚ) / (A144437 (A000217 (n + 2)).toNat : ℚ)

end

end A306368.P9420380382189434392

namespace A306368

/-- `A000217(n+3)/A144437(A000217(n+2))` -/
def P9420380382189434392.Spec : Prop :=
  ∀ n, P9420380382189434392.a n = (A306368 n : ℚ)

end A306368

/-! ## A306368.P8911699465957133107

`(A167614(n+2)-3)/A144437(A167614(n+1))`
-/

namespace A306368.P8911699465957133107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167614 (n + 2) - 3 : ℚ) / (A144437 (A167614 (n + 1)).toNat : ℚ)

end

end A306368.P8911699465957133107

namespace A306368

/-- `(A167614(n+2)-3)/A144437(A167614(n+1))` -/
def P8911699465957133107.Spec : Prop :=
  ∀ n, P8911699465957133107.a n = (A306368 n : ℚ)

end A306368

/-! ## A306368.P7346171544099315303

`A000217(n+3)/A169609(A005563(n))`
-/

namespace A306368.P7346171544099315303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 3) : ℚ) / (A169609 (A005563 n).toNat : ℚ)

end

end A306368.P7346171544099315303

namespace A306368

/-- `A000217(n+3)/A169609(A005563(n))` -/
def P7346171544099315303.Spec : Prop :=
  ∀ n, P7346171544099315303.a n = (A306368 n : ℚ)

end A306368

/-!
# A306369: a(n) = A000010(n) + A069359(n).

The programs for A306369, the canonical program `A306369.P8843425213670804087` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306369 has offset 1).

The definition of A306369 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A069359, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306369.P8843425213670804087

`A000010(n+1)+A069359(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A306369

/-- `A000010(n+1)+A069359(n+1)` -/
def P8843425213670804087.Spec : Prop :=
  ∀ n, P8843425213670804087.a n = A306369 (n + 1)

theorem P8843425213670804087.correct : P8843425213670804087.Spec := by
  intro n
  simp only [A306369, Nat.add_sub_cancel]

end A306369

/-! ## A306369.P13754574954580480914

`∑{p}[n+1, ceil(n/#)]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A306369.P13754574954580480914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ : ℤ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A306369.P13754574954580480914

namespace A306369

/-- `∑{p}[n+1, ceil(n/#)]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P13754574954580480914.Spec : Prop :=
  ∀ n, P13754574954580480914.a n = (A306369 (n + 1) : ℚ)

end A306369

/-! ## A306369.P12312727340404042764

`∑{p}[n+1, (n+1)/#]+(ϕ²-ϕ)*A000010(2*n-(n-1))`
-/

namespace A306369.P12312727340404042764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ) : ℚ) : ℝ) + (Real.goldenRatio ^ 2 - Real.goldenRatio) * (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ)

end

end A306369.P12312727340404042764

namespace A306369

/-- `∑{p}[n+1, (n+1)/#]+(ϕ²-ϕ)*A000010(2*n-(n-1))` -/
def P12312727340404042764.Spec : Prop :=
  ∀ n, P12312727340404042764.a n = (A306369 (n + 1) : ℝ)

end A306369

/-! ## A306369.P12389248725749041981

`A069359(n+1)+Δ[A005728(n)]`
-/

namespace A306369.P12389248725749041981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + (f1 (n + 1) - f1 n)

end

end A306369.P12389248725749041981

namespace A306369

/-- `A069359(n+1)+Δ[A005728(n)]` -/
def P12389248725749041981.Spec : Prop :=
  ∀ n, P12389248725749041981.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P205732232192601065

`A230593(n+1)-A051953(n+1)`
-/

namespace A306369.P205732232192601065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230593 (n + 1) - A051953 (n + 1)

end

end A306369.P205732232192601065

namespace A306369

/-- `A230593(n+1)-A051953(n+1)` -/
def P205732232192601065.Spec : Prop :=
  ∀ n, P205732232192601065.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P6413160613664954368

`A348203(n+1)-A057860(n+1)`
-/

namespace A306369.P6413160613664954368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348203 (n + 1) - A057860 (n + 1)

end

end A306369.P6413160613664954368

namespace A306369

/-- `A348203(n+1)-A057860(n+1)` -/
def P6413160613664954368.Spec : Prop :=
  ∀ n, P6413160613664954368.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P7634817308165484537

`A000010(n+1)+A230593(n+1)-(n+1)`
-/

namespace A306369.P7634817308165484537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A230593 (n + 1) - (n + 1 : ℤ))

end

end A306369.P7634817308165484537

namespace A306369

/-- `A000010(n+1)+A230593(n+1)-(n+1)` -/
def P7634817308165484537.Spec : Prop :=
  ∀ n, P7634817308165484537.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P7071655481616904547

`A000010(n+1)+(n+1)*∑{p}[n+1, #^A008683(#)]`
-/

namespace A306369.P7071655481616904547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) + (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A008683 p : ℤ))

end

end A306369.P7071655481616904547

namespace A306369

/-- `A000010(n+1)+(n+1)*∑{p}[n+1, #^A008683(#)]` -/
def P7071655481616904547.Spec : Prop :=
  ∀ n, P7071655481616904547.a n = (A306369 (n + 1) : ℚ)

end A306369

/-! ## A306369.P8450272238405647412

`A001615(n+1)+A069359(n+1)-A292786(n+1)`
-/

namespace A306369.P8450272238405647412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + (A069359 (n + 1) - A292786 (n + 1))

end

end A306369.P8450272238405647412

namespace A306369

/-- `A001615(n+1)+A069359(n+1)-A292786(n+1)` -/
def P8450272238405647412.Spec : Prop :=
  ∀ n, P8450272238405647412.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P2161538438363542747

`A069359(n+1)+A349338(n+1)-A117494(n+1)`
-/

namespace A306369.P2161538438363542747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + (A349338 (n + 1) - A117494 (n + 1))

end

end A306369.P2161538438363542747

namespace A306369

/-- `A069359(n+1)+A349338(n+1)-A117494(n+1)` -/
def P2161538438363542747.Spec : Prop :=
  ∀ n, P2161538438363542747.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P12231765691909399192

`A069359(n+1)+A291784(n+1)-A318320(n+1)`
-/

namespace A306369.P12231765691909399192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + (A291784 (n + 1) - A318320 (n + 1))

end

end A306369.P12231765691909399192

namespace A306369

/-- `A069359(n+1)+A291784(n+1)-A318320(n+1)` -/
def P12231765691909399192.Spec : Prop :=
  ∀ n, P12231765691909399192.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P2594442078886812177

`∑{d}[n+1, A000010(#)*A001221((n+1)/#)]+A000010(n+1)`
-/

namespace A306369.P2594442078886812177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + A000010 (n + 1)

end

end A306369.P2594442078886812177

namespace A306369

/-- `∑{d}[n+1, A000010(#)*A001221((n+1)/#)]+A000010(n+1)` -/
def P2594442078886812177.Spec : Prop :=
  ∀ n, P2594442078886812177.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P5200164236424241973

`A000010(n+1)+Δ[A322068(n)]`
-/

namespace A306369.P5200164236424241973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (f1 (n + 1) - f1 n)

end

end A306369.P5200164236424241973

namespace A306369

/-- `A000010(n+1)+Δ[A322068(n)]` -/
def P5200164236424241973.Spec : Prop :=
  ∀ n, P5200164236424241973.a n = A306369 (n + 1)

end A306369

/-! ## A306369.P6934962049101213132

`∑{d}[n+1, A000010(#)*A087802((n+1)/#)]`
-/

namespace A306369.P6934962049101213132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A087802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306369.P6934962049101213132

namespace A306369

/-- `∑{d}[n+1, A000010(#)*A087802((n+1)/#)]` -/
def P6934962049101213132.Spec : Prop :=
  ∀ n, P6934962049101213132.a n = A306369 (n + 1)

end A306369

/-!
# A306370: Primes p such that none of p+6, p+12, p+18, p+30 is prime.

The programs for A306370, there is no canonical definition to state claims against.
-/

/-! ## A306370.P2977909737254154056

`∩[A140560(n+1), A233318(n+1)]`
-/

namespace A306370.P2977909737254154056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306370.P2977909737254154056

/-!
# A306371: Number of primitive roots of prime A103521(n).

The programs for A306371, there is no canonical definition to state claims against.
-/

/-! ## A306371.P15204848813292369660

`A010554(A103521(n+1))`
-/

namespace A306371.P15204848813292369660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A103521 (n + 1)).toNat

end

end A306371.P15204848813292369660

/-! ## A306371.P2169765205761554390

`A046144(p?[A103521(n+1)])`
-/

namespace A306371.P2169765205761554390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A306371.P2169765205761554390

/-! ## A306371.P10461842151144053929

`A000010(A103521(n+1)-1)`
-/

namespace A306371.P10461842151144053929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A103521 (n + 1) - 1).toNat

end

end A306371.P10461842151144053929

/-! ## A306371.P4820656340695330579

`A046144(or(1, A103521(n+1)))`
-/

namespace A306371.P4820656340695330579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (Int.lor 1 (A103521 (n + 1))).toNat

end

end A306371.P4820656340695330579

/-! ## A306371.P4021648656170354240

`A000010(xor(1, A103521(n+1)))`
-/

namespace A306371.P4021648656170354240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.xor 1 (A103521 (n + 1))).toNat

end

end A306371.P4021648656170354240

/-!
# A306372: Number of n X n integer matrices (m_{i,j}) such that m_{1,1}=1, m_{n,n}=n, and all rows and columns are (weakly) monotonic without jumps larger than 1.

The programs for A306372, there is no canonical definition to state claims against.
-/

/-! ## A306372.P8269577894059665762

`A323849(∑[2*n]+1)`
-/

namespace A306372.P8269577894059665762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306372.P8269577894059665762

/-! ## A306372.P8527425282557383781

`record[A323849(A033638(n))]`
-/

namespace A306372.P8527425282557383781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323849 (A033638 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306372.P8527425282557383781

/-! ## A306372.P3376868080835773977

`record[A323849(∑[A065033(n)])]`
-/

namespace A306372.P3376868080835773977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323849 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306372.P3376868080835773977

/-! ## A306372.P4678516272229786374

`record[A323849(∑[A226122(n)])]`
-/

namespace A306372.P4678516272229786374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323849 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306372.P4678516272229786374

/-! ## A306372.P5684226147198581442

`record[A323849(n+1)/A029644(n)]`
-/

namespace A306372.P5684226147198581442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323849 (n + 1) : ℚ) / (A029644 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306372.P5684226147198581442

/-!
# A306373: Integers m such that the sum of the first k divisors is equal to 2*m for some k less than the number of divisors of m.

The programs for A306373, there is no canonical definition to state claims against.
-/

/-! ## A306373.P16685425225891741105

`filter[A216793(n+2), A356163(#)]`
-/

namespace A306373.P16685425225891741105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A306373.P16685425225891741105

/-!
# A306376: Sum of the 2 X 2 minors in the n X n Pascal matrix.

The programs for A306376, the canonical program `A306376.P6321835150904260098` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306376 has offset 0).

The definition of A306376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306376.P12799036137861385309

`∑[(4-2/n)*a(n-1)]-2^n` with `a(0)=1, a(1)=1`
-/

namespace A306376.P12799036137861385309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℚ)

end

end A306376.P12799036137861385309

namespace A306376

/-- `∑[(4-2/n)*a(n-1)]-2^n` -/
def P12799036137861385309.Spec : Prop :=
  ∀ n, P12799036137861385309.a n = (A306376 n : ℚ)

end A306376

/-! ## A306376.P10132783391742507930

`A024718(n)-2^n`
-/

namespace A306376.P10132783391742507930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n - (2 ^ n : ℤ)

end

end A306376.P10132783391742507930

namespace A306376

/-- `A024718(n)-2^n` -/
def P10132783391742507930.Spec : Prop :=
  ∀ n, P10132783391742507930.a n = A306376 n

end A306376

/-! ## A306376.P1220053739646292653

`∑[A088218(n)]-2^n`
-/

namespace A306376.P1220053739646292653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A306376.P1220053739646292653

namespace A306376

/-- `∑[A088218(n)]-2^n` -/
def P1220053739646292653.Spec : Prop :=
  ∀ n, P1220053739646292653.a n = A306376 n

end A306376

/-! ## A306376.P6321835150904260098

`A108958(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A306376

/-- `A108958(n)+a(n-1)` -/
def P6321835150904260098.Spec : Prop :=
  ∀ n, P6321835150904260098.a n = A306376 n

theorem P6321835150904260098.correct : P6321835150904260098.Spec := by
  intro n
  simp only [A306376]

end A306376

/-! ## A306376.P4027529640413469547

`∑[A045676(2*n+1)/2]`
-/

namespace A306376.P4027529640413469547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045676 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306376.P4027529640413469547

namespace A306376

/-- `∑[A045676(2*n+1)/2]` -/
def P4027529640413469547.Spec : Prop :=
  ∀ n, P4027529640413469547.a n = (A306376 n : ℚ)

end A306376

/-! ## A306376.P4233178401168791598

`∑[A000984(n)-2^n]/2`
-/

namespace A306376.P4233178401168791598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (2 ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A306376.P4233178401168791598

namespace A306376

/-- `∑[A000984(n)-2^n]/2` -/
def P4233178401168791598.Spec : Prop :=
  ∀ n, P4233178401168791598.a n = (A306376 n : ℚ)

end A306376

/-! ## A306376.P5038417667959275065

`abs(A000079(n)-A024718(n))`
-/

namespace A306376.P5038417667959275065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A024718 n|

end

end A306376.P5038417667959275065

namespace A306376

/-- `abs(A000079(n)-A024718(n))` -/
def P5038417667959275065.Spec : Prop :=
  ∀ n, P5038417667959275065.a n = A306376 n

end A306376

/-! ## A306376.P13119729467847406735

`∑[A005317(n)-A000079(n)]`
-/

namespace A306376.P13119729467847406735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306376.P13119729467847406735

namespace A306376

/-- `∑[A005317(n)-A000079(n)]` -/
def P13119729467847406735.Spec : Prop :=
  ∀ n, P13119729467847406735.a n = A306376 n

end A306376

/-! ## A306376.P11271115815933588068

`∑[A000984(n)-A005317(n)]`
-/

namespace A306376.P11271115815933588068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A005317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306376.P11271115815933588068

namespace A306376

/-- `∑[A000984(n)-A005317(n)]` -/
def P11271115815933588068.Spec : Prop :=
  ∀ n, P11271115815933588068.a n = A306376 n

end A306376

/-! ## A306376.P13537614743711864543

`∑[A088218(n)-A011782(n)]`
-/

namespace A306376.P13537614743711864543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306376.P13537614743711864543

namespace A306376

/-- `∑[A088218(n)-A011782(n)]` -/
def P13537614743711864543.Spec : Prop :=
  ∀ n, P13537614743711864543.a n = A306376 n

end A306376

/-! ## A306376.P10049645849473414812

`∑[A005317(n)]-A126646(n)`
-/

namespace A306376.P10049645849473414812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A126646 n

end

end A306376.P10049645849473414812

namespace A306376

/-- `∑[A005317(n)]-A126646(n)` -/
def P10049645849473414812.Spec : Prop :=
  ∀ n, P10049645849473414812.a n = A306376 n

end A306376

/-! ## A306376.P13797666077042234277

`A086905(2*n)-A000079(n)`
-/

namespace A306376.P13797666077042234277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 (2 * n) - A000079 n

end

end A306376.P13797666077042234277

namespace A306376

/-- `A086905(2*n)-A000079(n)` -/
def P13797666077042234277.Spec : Prop :=
  ∀ n, P13797666077042234277.a n = A306376 n

end A306376

/-! ## A306376.P1434209738711176483

`A124642(2*n)-A000079(n)`
-/

namespace A306376.P1434209738711176483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 (2 * n) - A000079 n

end

end A306376.P1434209738711176483

namespace A306376

/-- `A124642(2*n)-A000079(n)` -/
def P1434209738711176483.Spec : Prop :=
  ∀ n, P1434209738711176483.a n = A306376 n

end A306376

/-! ## A306376.P15976083319119794748

`A174783(2*n)-A000225(n)`
-/

namespace A306376.P15976083319119794748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174783 (2 * n) - A000225 n

end

end A306376.P15976083319119794748

namespace A306376

/-- `A174783(2*n)-A000225(n)` -/
def P15976083319119794748.Spec : Prop :=
  ∀ n, P15976083319119794748.a n = A306376 n

end A306376

/-! ## A306376.P2336811508954167889

`A191790(2*n)-A000225(n)`
-/

namespace A306376.P2336811508954167889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (2 * n) - A000225 n

end

end A306376.P2336811508954167889

namespace A306376

/-- `A191790(2*n)-A000225(n)` -/
def P2336811508954167889.Spec : Prop :=
  ∀ n, P2336811508954167889.a n = A306376 n

end A306376

/-! ## A306376.P9863413745966872894

`(A006134(n)-A126646(n))/2`
-/

namespace A306376.P9863413745966872894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006134 n - A126646 n : ℚ) / 2

end

end A306376.P9863413745966872894

namespace A306376

/-- `(A006134(n)-A126646(n))/2` -/
def P9863413745966872894.Spec : Prop :=
  ∀ n, P9863413745966872894.a n = (A306376 n : ℚ)

end A306376

/-! ## A306376.P8102632352874822250

`∑[A088218(n)-∑[A034008(n)]]`
-/

namespace A306376.P8102632352874822250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306376.P8102632352874822250

namespace A306376

/-- `∑[A088218(n)-∑[A034008(n)]]` -/
def P8102632352874822250.Spec : Prop :=
  ∀ n, P8102632352874822250.a n = A306376 n

end A306376

/-! ## A306376.P14605878848079660927

`∑[(A000984(n)-A000079(n))/2]`
-/

namespace A306376.P14605878848079660927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n - A000079 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306376.P14605878848079660927

namespace A306376

/-- `∑[(A000984(n)-A000079(n))/2]` -/
def P14605878848079660927.Spec : Prop :=
  ∀ n, P14605878848079660927.a n = (A306376 n : ℚ)

end A306376

/-! ## A306376.P6342006168602890853

`(∑[A000984(n)]-A126646(n))/2`
-/

namespace A306376.P6342006168602890853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A126646 n : ℤ) : ℚ) / 2

end

end A306376.P6342006168602890853

namespace A306376

/-- `(∑[A000984(n)]-A126646(n))/2` -/
def P6342006168602890853.Spec : Prop :=
  ∀ n, P6342006168602890853.a n = (A306376 n : ℚ)

end A306376

/-! ## A306376.P9177241502590415717

`∑[A210736(2*n)-A166444(n+1)]`
-/

namespace A306376.P9177241502590415717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) - A166444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306376.P9177241502590415717

namespace A306376

/-- `∑[A210736(2*n)-A166444(n+1)]` -/
def P9177241502590415717.Spec : Prop :=
  ∀ n, P9177241502590415717.a n = A306376 n

end A306376

/-!
# A306377: a(n) = n^(n+1) - Sum_{k=1..n-1} k^(k+1).

The programs for A306377, there is no canonical definition to state claims against.
-/

/-! ## A306377.P10383568070401345548

`(n+1)^(n+2)-∑[n^(n+1)]`
-/

namespace A306377.P10383568070401345548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A306377.P10383568070401345548

/-! ## A306377.P4559402679605847092

`∑[Δ[A007778(n)]-A007778(n)]`
-/

namespace A306377.P4559402679605847092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A007778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306377.P4559402679605847092

/-! ## A306377.P15620720228462007189

`∑[A084363(n+1)-A007778(n)]`
-/

namespace A306377.P15620720228462007189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084363 (n + 1) - A007778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306377.P15620720228462007189

/-! ## A306377.P13739088947548969026

`∑[Δ[A065440(n+1)]-A065440(n+1)]`
-/

namespace A306377.P13739088947548969026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A065440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306377.P13739088947548969026

/-! ## A306377.P14444659815925726680

`∑[A007778(n+1)-A007778(n)-A007778(n)]`
-/

namespace A306377.P14444659815925726680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (n + 1) - A007778 n - A007778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306377.P14444659815925726680

/-!
# A306379: Dirichlet convolution of psi(n) with itself.

The programs for A306379, the canonical program `A306379.P13856813588637983137` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306379 has offset 1).

The definition of A306379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306379.P4490148837414823742

`∑{d}[n+1, A001615(#)*A001615((n+1)/#)]`
-/

namespace A306379.P4490148837414823742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P4490148837414823742

namespace A306379

/-- `∑{d}[n+1, A001615(#)*A001615((n+1)/#)]` -/
def P4490148837414823742.Spec : Prop :=
  ∀ n, P4490148837414823742.a n = A306379 (n + 1)

end A306379

/-! ## A306379.P13856813588637983137

`∑{d}[n+1, A060648(#)*A063659((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A306379

/-- `∑{d}[n+1, A060648(#)*A063659((n+1)/#)]` -/
def P13856813588637983137.Spec : Prop :=
  ∀ n, P13856813588637983137.a n = A306379 (n + 1)

theorem P13856813588637983137.correct : P13856813588637983137.Spec := by
  intro n
  simp only [A306379, Nat.add_sub_cancel]

end A306379

/-! ## A306379.P16291800182815832698

`∑{d}[n+1, A060724(#)*A130107((n+1)/#)]`
-/

namespace A306379.P16291800182815832698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P16291800182815832698

namespace A306379

/-- `∑{d}[n+1, A060724(#)*A130107((n+1)/#)]` -/
def P16291800182815832698.Spec : Prop :=
  ∀ n, P16291800182815832698.a n = A306379 (n + 1)

end A306379

/-! ## A306379.P6763833644645028081

`∑{d}[n+1, A008966(#)*A327251((n+1)/#)]`
-/

namespace A306379.P6763833644645028081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P6763833644645028081

namespace A306379

/-- `∑{d}[n+1, A008966(#)*A327251((n+1)/#)]` -/
def P6763833644645028081.Spec : Prop :=
  ∀ n, P6763833644645028081.a n = A306379 (n + 1)

end A306379

/-! ## A306379.P5354823094740945050

`∑{d}[n+1, A029935(#)*A322328((n+1)/#)]`
-/

namespace A306379.P5354823094740945050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A322328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P5354823094740945050

namespace A306379

/-- `∑{d}[n+1, A029935(#)*A322328((n+1)/#)]` -/
def P5354823094740945050.Spec : Prop :=
  ∀ n, P5354823094740945050.a n = A306379 (n + 1)

end A306379

/-! ## A306379.P10491441002042874367

`∑{d}[n+1, A034444(#)*A322577((n+1)/#)]`
-/

namespace A306379.P10491441002042874367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P10491441002042874367

namespace A306379

/-- `∑{d}[n+1, A034444(#)*A322577((n+1)/#)]` -/
def P10491441002042874367.Spec : Prop :=
  ∀ n, P10491441002042874367.a n = A306379 (n + 1)

end A306379

/-! ## A306379.P7795547718718743609

`∑{d}[n+1, A000010(#)*A390317((n+1)/#)]`
-/

namespace A306379.P7795547718718743609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A390317 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P7795547718718743609

namespace A306379

/-- `∑{d}[n+1, A000010(#)*A390317((n+1)/#)]` -/
def P7795547718718743609.Spec : Prop :=
  ∀ n, P7795547718718743609.a n = A306379 (n + 1)

end A306379

/-! ## A306379.P13607179324894958080

`∑{d}[n+1, A143275(#)*A370297((n+1)/#)]`
-/

namespace A306379.P13607179324894958080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143275 d * A370297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P13607179324894958080

namespace A306379

/-- `∑{d}[n+1, A143275(#)*A370297((n+1)/#)]` -/
def P13607179324894958080.Spec : Prop :=
  ∀ n, P13607179324894958080.a n = A306379 (n + 1)

end A306379

/-! ## A306379.P16966184534339633687

`∑{d}[n+1, A271102(#)*A365649((n+1)/#)]`
-/

namespace A306379.P16966184534339633687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P16966184534339633687

namespace A306379

/-- `∑{d}[n+1, A271102(#)*A365649((n+1)/#)]` -/
def P16966184534339633687.Spec : Prop :=
  ∀ n, P16966184534339633687.a n = A306379 (n + 1)

end A306379

/-! ## A306379.P11745872366611316852

`∑{d}[n+1, A328729(#)*A360430((n+1)/#)]`
-/

namespace A306379.P11745872366611316852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A360430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306379.P11745872366611316852

namespace A306379

/-- `∑{d}[n+1, A328729(#)*A360430((n+1)/#)]` -/
def P11745872366611316852.Spec : Prop :=
  ∀ n, P11745872366611316852.a n = A306379 (n + 1)

end A306379

/-!
# A306380: Squares of the form 5*k^2 + 5.

The programs for A306380, there is no canonical definition to state claims against.
-/

/-! ## A306380.P17395903726778183183

`(5*A007805(n))²`
-/

namespace A306380.P17395903726778183183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A007805 n) ^ 2

end

end A306380.P17395903726778183183

/-! ## A306380.P13560241222950376341

`5*A115032(2*n)`
-/

namespace A306380.P13560241222950376341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A115032 (2 * n)

end

end A306380.P13560241222950376341

/-! ## A306380.P5760817495244550880

`Δ[5*A049660(n)]²`
-/

namespace A306380.P5760817495244550880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A306380.P5760817495244550880

/-! ## A306380.P8633869084140384897

`(A132584(n)+A115032(n))²`
-/

namespace A306380.P8633869084140384897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132584 n + A115032 n) ^ 2

end

end A306380.P8633869084140384897

/-! ## A306380.P7996054364866288495

`(A246642(n)+A157093(n))²`
-/

namespace A306380.P7996054364866288495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246642 n + A157093 n) ^ 2

end

end A306380.P7996054364866288495

/-!
# A306383: Number of ways to write n as x*(2x+1) + y*(2y+1) + z*(2z+1), where x,y,z are nonnegative integers with x <= y <= z.

The programs for A306383, there is no canonical definition to state claims against.
-/

/-! ## A306383.P11239778605833230910

`A003849(and(A000045(n+4), A057201(n+4)))`
-/

namespace A306383.P11239778605833230910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.land (A000045 (n + 4)) (A057201 (n + 4))).toNat

end

end A306383.P11239778605833230910

/-! ## A306383.P13037186724064534825

`A321090(2^A029931(n+2))`
-/

namespace A306383.P13037186724064534825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A029931 (n + 2) : ℤ))).toNat

end

end A306383.P13037186724064534825

/-! ## A306383.P15347021807235510062

`A321091(A059867(2*(n+2)))-1`
-/

namespace A306383.P15347021807235510062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 (A059867 (2 * (n + 2))).toNat - 1

end

end A306383.P15347021807235510062

/-! ## A306383.P14884790592564667348

`A164057(lt[A264032(3*n), A264052(n)])`
-/

namespace A306383.P14884790592564667348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264032 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306383.P14884790592564667348

/-! ## A306383.P12355105709512619852

`A108598(3*n+5)%A144095(A202335(3*n+4))`
-/

namespace A306383.P12355105709512619852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108598 (3 * n + 5)) (A144095 (A202335 (3 * n + 4)).toNat)

end

end A306383.P12355105709512619852

/-!
# A306385: a(n) is the maximum number of distinct distances possible between points in a hyperrectangular grid the sum of whose dimensions is n.

The programs for A306385, there is no canonical definition to state claims against.
-/

/-! ## A306385.P3208344298673964130

`A016389(A022166(n))+∑[A029093(n)]`
-/

namespace A306385.P3208344298673964130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306385.P3208344298673964130

/-! ## A306385.P18136878242223124897

`∑[A029093(n)]-A014707(A022171(n))`
-/

namespace A306385.P18136878242223124897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014707 (A022171 n).toNat

end

end A306385.P18136878242223124897

/-! ## A306385.P587896846060304956

`∑[A029093(n)]-A055641(A022112(n))`
-/

namespace A306385.P587896846060304956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055641 (A022112 n).toNat

end

end A306385.P587896846060304956

/-! ## A306385.P11226960969319724889

`∑[A029093(n)]-A058348(A131235(n))`
-/

namespace A306385.P11226960969319724889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A058348 (A131235 n).toNat

end

end A306385.P11226960969319724889

/-! ## A306385.P9701588886165335308

`floor(A000196(∑[A365311(2*(n+2))+1])/2)`
-/

namespace A306385.P9701588886165335308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365311 (2 * (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A306385.P9701588886165335308

/-!
# A306388: a(n) is a decimal number k having a length n binary expansion which encodes, from left to right at digit j, the coprimality (0) or non-coprimality (1) of j to n, for 1 < j <= n, except for the first digit, which is always 1.

The programs for A306388, there is no canonical definition to state claims against.
-/

/-! ## A306388.P13524496597968994857

`or(A074854(n+1), A337323(A100185(n+5)))`
-/

namespace A306388.P13524496597968994857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074854 (n + 1)) (A337323 (A100185 (n + 5)).toNat)

end

end A306388.P13524496597968994857

/-!
# A306389: Partial sums of (k-th digit of decimal expansion of Pi multiplied by (-1)^k).

The programs for A306389, there is no canonical definition to state claims against.
-/

/-! ## A306389.P12970213760512674962

`-A069159(n+1)`
-/

namespace A306389.P12970213760512674962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A069159 (n + 1)

end

end A306389.P12970213760512674962

/-! ## A306389.P3453671442057518321

`∑[-(-1)^n*A000796(n)]`
-/

namespace A306389.P3453671442057518321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A000796 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306389.P3453671442057518321

/-! ## A306389.P2163549248704958035

`-∑[Δ[A059582(n)]*cos(π*n)]`
-/

namespace A306389.P2163549248704958035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℝ) * Real.cos (Real.pi * (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306389.P2163549248704958035

/-! ## A306389.P16818304845915875923

`-∑[(9-A030644(n))/(-1)^n]`
-/

namespace A306389.P16818304845915875923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306389.P16818304845915875923

/-! ## A306389.P8516048765400347806

`∑[(-1)^(n+1)*A110766(2*n+1)]`
-/

namespace A306389.P8516048765400347806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A110766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306389.P8516048765400347806

/-! ## A306389.P18028179758128063394

`A264668(n)-A069159(n+1)`
-/

namespace A306389.P18028179758128063394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n - A069159 (n + 1)

end

end A306389.P18028179758128063394

/-! ## A306389.P13866008043982414103

`∑[-A000796(n)*A033999(n)]`
-/

namespace A306389.P13866008043982414103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000796 (n + 1) * A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306389.P13866008043982414103

/-! ## A306389.P5722048032916787862

`A112802(n+1)-A069159(n+1)`
-/

namespace A306389.P5722048032916787862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112802 (n + 1) - A069159 (n + 1)

end

end A306389.P5722048032916787862

/-! ## A306389.P15878332407961186881

`(A000796(n)-A123152(n+1))*A069159(n+1)`
-/

namespace A306389.P15878332407961186881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) - A123152 (n + 1)) * A069159 (n + 1)

end

end A306389.P15878332407961186881

/-!
# A306390: Size of one subtree in the unlabeled binary rooted tree shape of size n whose leaf-labeled trees have the largest number of coalescence sequences.

The programs for A306390, there is no canonical definition to state claims against.
-/

/-! ## A306390.P3580139065032475913

`2^ceil(log2(n/3+1))`
-/

namespace A306390.P3580139065032475913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 ((n : ℚ) / 3 + 1 : ℝ)⌉ : ℤ)

end

end A306390.P3580139065032475913

/-! ## A306390.P3371652465837240559

`2*a(floor(cosh(log(n)))-1)` with `a(0)=1`
-/

namespace A306390.P3371652465837240559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (⌊Real.cosh (Real.log (n : ℝ))⌋ - 1).toNat

end

end A306390.P3371652465837240559

/-! ## A306390.P15682237575190374525

`2*a(floor(n/2)-1)` with `a(0)=1, a(1)=2`
-/

namespace A306390.P15682237575190374525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A306390.P15682237575190374525

/-! ## A306390.P7700068499152484547

`∏[round(cosh(char[3*2^n-2]))]`
-/

namespace A306390.P7700068499152484547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306390.P7700068499152484547

/-! ## A306390.P18414920649063419817

`2*abs(a(∑[(n-1)%2]))` with `a(0)=1, a(1)=2`
-/

namespace A306390.P18414920649063419817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306390.P18414920649063419817

/-! ## A306390.P4690145220294450397

`∏[char[2*(a(n-1)+1)]+1]` with `a(0)=1`
-/

namespace A306390.P4690145220294450397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * (f2 (n - 1) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306390.P4690145220294450397

/-! ## A306390.P4053797336053675607

`and(-a(n-1), ∑[(n+1)²%3])` with `a(0)=1`
-/

namespace A306390.P4053797336053675607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (-a (n - 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A306390.P4053797336053675607

/-! ## A306390.P1887581957655970213

`and(3*a(n-1), ∑[(n²+n)%3])` with `a(0)=1`
-/

namespace A306390.P1887581957655970213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) % 3

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (3 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306390.P1887581957655970213

/-! ## A306390.P907316663685471986

`Δ[record[A080261(n)]]`
-/

namespace A306390.P907316663685471986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080261 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306390.P907316663685471986

/-! ## A306390.P3457952041322898668

`Δ[A082662(n+1)]`
-/

namespace A306390.P3457952041322898668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306390.P3457952041322898668

/-!
# A306392: a(n) = 2^n with 1's and 2's swapped.

The programs for A306392, there is no canonical definition to state claims against.
-/

/-! ## A306392.P7093902774284730064

`A035043(A000079(n))`
-/

namespace A306392.P7093902774284730064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A000079 n).toNat

end

end A306392.P7093902774284730064

/-! ## A306392.P930834946786681683

`A035043(2^n)`
-/

namespace A306392.P930834946786681683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (2 ^ n)

end

end A306392.P930834946786681683

/-!
# A306395: Primes g such that 8*g + 2*p is a primorial for some twin prime p.

The programs for A306395, there is no canonical definition to state claims against.
-/

/-! ## A306395.P1935291691715407914

`A120628(lt[A120617(n), A120649(3*n)])`
-/

namespace A306395.P1935291691715407914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120649 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120628 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306395.P1935291691715407914

/-!
# A306396: Consider the numbers in A024796, numbers expressible in more than one way as i^2 + j^2 + k^2, where 1 <= i <= j <= k; sequence number of ways these numbers can be expressed.

The programs for A306396, there is no canonical definition to state claims against.
-/

/-! ## A306396.P4789729221112187478

`A025427(A024796(n+1))`
-/

namespace A306396.P4789729221112187478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A024796 (n + 1)).toNat

end

end A306396.P4789729221112187478

/-! ## A306396.P1089008101329421661

`A025427(lt[1, A025427(n)])`
-/

namespace A306396.P1089008101329421661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306396.P1089008101329421661

/-! ## A306396.P11299899876969706631

`A025427(eq[2, 2%(A025427(n)+1)])`
-/

namespace A306396.P11299899876969706631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A025427 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306396.P11299899876969706631

/-! ## A306396.P17372115270615956943

`p?[A185315(A025427(n)!)]`
-/

namespace A306396.P17372115270615956943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185315 (Nat.factorial (A025427 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306396.P17372115270615956943

/-! ## A306396.P6457756075529268714

`p?[A001222(29^A025427(n))]`
-/

namespace A306396.P6457756075529268714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((29 : ℚ) ^ (A025427 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306396.P6457756075529268714

