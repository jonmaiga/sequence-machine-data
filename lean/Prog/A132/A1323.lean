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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A132300: Number of distinct Markov type classes of order 5 possible in binary strings of length n.

The programs for A132300, there is no canonical definition to state claims against.
-/

/-! ## A132300.P303814679048330165

`record[abs(xor(1, n-2))]^A287384(2*n+3)+30*2^n+1`
-/

namespace A132300.P303814679048330165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A287384 (2 * n + 3) : ℤ) + (30 * 2 ^ n + 1 : ℚ)

end

end A132300.P303814679048330165

/-!
# A132301: Expansion of f(-x, -x^5) * f(-x)^2 / f(-x^6)^3 in powers of x where f(, ) and f() are Ramanujan theta functions.

The programs for A132301, there is no canonical definition to state claims against.
-/

/-! ## A132301.P1603305173658472865

`A010684(n)*A062244(n)`
-/

namespace A132301.P1603305173658472865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A062244 n

end

end A132301.P1603305173658472865

/-! ## A132301.P12482315413765749132

`A033999(n)*A263526(n)`
-/

namespace A132301.P12482315413765749132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A263526 n

end

end A132301.P12482315413765749132

/-! ## A132301.P7412341453423726990

`(2-A033999(n))*A062244(n)`
-/

namespace A132301.P7412341453423726990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A062244 n

end

end A132301.P7412341453423726990

/-! ## A132301.P5081016186482514326

`2*A062244(n)-A062242(n)`
-/

namespace A132301.P5081016186482514326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062244 n - A062242 n

end

end A132301.P5081016186482514326

/-! ## A132301.P1526216594356908425

`(2-A010684(n))*A263526(n)`
-/

namespace A132301.P1526216594356908425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A263526 n

end

end A132301.P1526216594356908425

/-! ## A132301.P12162665632189365012

`A062242(n)+A062244(n)-A263526(n)`
-/

namespace A132301.P12162665632189365012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 n + (A062244 n - A263526 n)

end

end A132301.P12162665632189365012

/-! ## A132301.P4985239526981958239

`A062242(n)/A132180(n)*A141094(n)`
-/

namespace A132301.P4985239526981958239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062242 n : ℚ) / (A132180 n : ℚ) * (A141094 n : ℚ)

end

end A132301.P4985239526981958239

/-! ## A132301.P10304880982741235085

`A001511(A020639(n+1)+2)*A062244(n)`
-/

namespace A132301.P10304880982741235085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A020639 (n + 1) + 2).toNat * A062244 n

end

end A132301.P10304880982741235085

/-! ## A132301.P3453345920262382412

`A261325(n)/A261446(n)*A263526(n)`
-/

namespace A132301.P3453345920262382412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261325 n : ℚ) / (A261446 n : ℚ) * (A263526 n : ℚ)

end

end A132301.P3453345920262382412

/-! ## A132301.P9804901173642151623

`A001511(n²+3)*A062244(n)`
-/

namespace A132301.P9804901173642151623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 3) * A062244 n

end

end A132301.P9804901173642151623

/-!
# A132302: Expansion of f(-x, -x^5) * f(-x^6) / f(-x)^2 in powers of x where f(, ) and f() are Ramanujan theta functions.

The programs for A132302, there is no canonical definition to state claims against.
-/

/-! ## A132302.P14714724257837574295

`A124243(2*n+1)`
-/

namespace A132302.P14714724257837574295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124243 (2 * n + 1)

end

end A132302.P14714724257837574295

/-! ## A132302.P706820426336413265

`A132180(2*n+1)`
-/

namespace A132302.P706820426336413265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132180 (2 * n + 1)

end

end A132302.P706820426336413265

/-! ## A132302.P6404144437070144289

`A132975(2*n+1)`
-/

namespace A132302.P6404144437070144289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (2 * n + 1)

end

end A132302.P6404144437070144289

/-! ## A132302.P16070058539696141318

`A213267(2*n+1)`
-/

namespace A132302.P16070058539696141318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213267 (2 * n + 1)

end

end A132302.P16070058539696141318

/-! ## A132302.P9410507572797792983

`abs(A254346(n))`
-/

namespace A132302.P9410507572797792983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254346 n|

end

end A132302.P9410507572797792983

/-! ## A132302.P12560085076094853791

`abs(record[A124243(n+2)])`
-/

namespace A132302.P12560085076094853791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124243 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A132302.P12560085076094853791

/-! ## A132302.P17102943847254794031

`A132972(Δ[n²])/3`
-/

namespace A132302.P17102943847254794031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A132302.P17102943847254794031

/-! ## A132302.P17767686960758736452

`abs(A145977(2*n+1))`
-/

namespace A132302.P17767686960758736452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145977 (2 * n + 1)|

end

end A132302.P17767686960758736452

/-! ## A132302.P16746070819809266687

`A033999(n)*A254346(n)`
-/

namespace A132302.P16746070819809266687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A254346 n

end

end A132302.P16746070819809266687

/-! ## A132302.P14047812312530943534

`gcd(A000038(n), A254346(n))`
-/

namespace A132302.P14047812312530943534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A254346 n)

end

end A132302.P14047812312530943534

/-! ## A132302.P2601581186276397217

`lcm(A020985(n), A254346(n))`
-/

namespace A132302.P2601581186276397217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A254346 n)

end

end A132302.P2601581186276397217

/-! ## A132302.P7587354934425402095

`A000007(n+1)-A145977(2*n+1)`
-/

namespace A132302.P7587354934425402095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A145977 (2 * n + 1)

end

end A132302.P7587354934425402095

/-! ## A132302.P10925582753393039032

`A000038(n+1)-A145977(2*n+1)`
-/

namespace A132302.P10925582753393039032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A145977 (2 * n + 1)

end

end A132302.P10925582753393039032

/-! ## A132302.P7120357797847029372

`lcm(A008836(n+2), A145977(2*n+1))`
-/

namespace A132302.P7120357797847029372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 2)) (A145977 (2 * n + 1))

end

end A132302.P7120357797847029372

/-! ## A132302.P7172938426331136473

`1-(A145977(2*n+1)+A033999(2*n))`
-/

namespace A132302.P7172938426331136473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A145977 (2 * n + 1) + A033999 (2 * n))

end

end A132302.P7172938426331136473

/-! ## A132302.P6323785455289997522

`(2-A122553(n+1))*A145977(2*n+1)`
-/

namespace A132302.P6323785455289997522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A122553 (n + 1)) * A145977 (2 * n + 1)

end

end A132302.P6323785455289997522

/-! ## A132302.P16938968811011189848

`A033999(2*n+1)*A145977(2*n+1)`
-/

namespace A132302.P16938968811011189848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A145977 (2 * n + 1)

end

end A132302.P16938968811011189848

/-! ## A132302.P3414069243504676510

`2*A145977(2*n+1)-A141094(2*n+1)`
-/

namespace A132302.P3414069243504676510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145977 (2 * n + 1) - A141094 (2 * n + 1)

end

end A132302.P3414069243504676510

/-! ## A132302.P8794740513469931831

`A141094(2*n+1)/(A033999(2*n+1)-2)`
-/

namespace A132302.P8794740513469931831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141094 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 2 : ℚ)

end

end A132302.P8794740513469931831

/-! ## A132302.P9313293988813372533

`A254372(8*n+4)`
-/

namespace A132302.P9313293988813372533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254372 (8 * n + 4)

end

end A132302.P9313293988813372533

/-!
# A132306: a(n) = Sum_{k=0..2n-1} C(2n-1,k)*trinomial(n,k) for n>0 with a(0)=1.

The programs for A132306, there is no canonical definition to state claims against.
-/

/-! ## A132306.P8666263577611393116

`A223092(2*n²)`
-/

namespace A132306.P8666263577611393116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223092 (2 * n ^ 2)

end

end A132306.P8666263577611393116

/-! ## A132306.P11433348102194093289

`A163771(A046092(n))/A036453(n+1)`
-/

namespace A132306.P11433348102194093289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163771 (A046092 n).toNat : ℚ) / (A036453 (n + 1) : ℚ)

end

end A132306.P11433348102194093289

/-! ## A132306.P8579699591822443360

`A163771(∑[4*n])/A020639(A132269(n))`
-/

namespace A132306.P8579699591822443360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163771 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A020639 (A132269 n).toNat : ℚ)

end

end A132306.P8579699591822443360

/-! ## A132306.P3968810821867348458

`A163771(∑[4*n])/A000032(A151838(n))`
-/

namespace A132306.P3968810821867348458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163771 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000032 (A151838 n).toNat : ℚ)

end

end A132306.P3968810821867348458

/-!
# A132307: 2*A007318^(2) - A000012.

The programs for A132307, the canonical program `A132307.P4680186652670153265` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132307 has offset 0).

The definition of A132307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132307.P4680186652670153265

`2*A038207(n)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A132307

/-- `2*A038207(n)-1` -/
def P4680186652670153265.Spec : Prop :=
  ∀ n, P4680186652670153265.a n = A132307 n

theorem P4680186652670153265.correct : P4680186652670153265.Spec := by
  intro n
  simp only [A132307]

end A132307

/-! ## A132307.P15498152420248001452

`abs(2*A065109(n))-1`
-/

namespace A132307.P15498152420248001452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A065109 n| - 1

end

end A132307.P15498152420248001452

namespace A132307

/-- `abs(2*A065109(n))-1` -/
def P15498152420248001452.Spec : Prop :=
  ∀ n, P15498152420248001452.a n = A132307 n

end A132307

/-! ## A132307.P1180754092163269311

`or(1, A210204(n+1)-1)`
-/

namespace A132307.P1180754092163269311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210204 (n + 1) - 1)

end

end A132307.P1180754092163269311

namespace A132307

/-- `or(1, A210204(n+1)-1)` -/
def P1180754092163269311.Spec : Prop :=
  ∀ n, P1180754092163269311.a n = A132307 n

end A132307

/-! ## A132307.P6783752057472564837

`2^(C(comp[∑[n]]-n, 2)-n)*A007318(n)-1`
-/

namespace A132307.P6783752057472564837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) * (A007318 n : ℚ) - 1

end

end A132307.P6783752057472564837

namespace A132307

/-- `2^(C(comp[∑[n]]-n, 2)-n)*A007318(n)-1` -/
def P6783752057472564837.Spec : Prop :=
  ∀ n, P6783752057472564837.a n = (A132307 n : ℚ)

end A132307

/-! ## A132307.P15979047172089635009

`A004273(A038207(n))`
-/

namespace A132307.P15979047172089635009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A038207 n).toNat

end

end A132307.P15979047172089635009

namespace A132307

/-- `A004273(A038207(n))` -/
def P15979047172089635009.Spec : Prop :=
  ∀ n, P15979047172089635009.a n = A132307 n

end A132307

/-! ## A132307.P12864419925973346764

`A004273(abs(A065109(n)))`
-/

namespace A132307.P12864419925973346764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 |A065109 n|.toNat

end

end A132307.P12864419925973346764

namespace A132307

/-- `A004273(abs(A065109(n)))` -/
def P12864419925973346764.Spec : Prop :=
  ∀ n, P12864419925973346764.a n = A132307 n

end A132307

/-! ## A132307.P16286060198438096728

`A005408(A038207(n)-1)`
-/

namespace A132307.P16286060198438096728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A038207 n - 1).toNat

end

end A132307.P16286060198438096728

namespace A132307

/-- `A005408(A038207(n)-1)` -/
def P16286060198438096728.Spec : Prop :=
  ∀ n, P16286060198438096728.a n = A132307 n

end A132307

/-! ## A132307.P17591346242172109200

`A005843(abs(A065109(n)))-1`
-/

namespace A132307.P17591346242172109200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |A065109 n|.toNat - 1

end

end A132307.P17591346242172109200

namespace A132307

/-- `A005843(abs(A065109(n)))-1` -/
def P17591346242172109200.Spec : Prop :=
  ∀ n, P17591346242172109200.a n = A132307 n

end A132307

/-! ## A132307.P14192348194161232755

`A005843(A038207(n)-1)+1`
-/

namespace A132307.P14192348194161232755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A038207 n - 1).toNat + 1

end

end A132307.P14192348194161232755

namespace A132307

/-- `A005843(A038207(n)-1)+1` -/
def P14192348194161232755.Spec : Prop :=
  ∀ n, P14192348194161232755.a n = A132307 n

end A132307

/-!
# A132308: a(n) = 2*3^n - n - 1.

The programs for A132308, the canonical program `A132308.P10110844445117448834` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132308 has offset 0).

The definition of A132308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-n-1` (program `A132308.P10110844445117448834`, by `A132308.P10110844445117448834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132308.P10110844445117448834

`2*3^n-n-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132308

/-- `2*3^n-n-1` -/
def P10110844445117448834.Spec : Prop :=
  ∀ n, P10110844445117448834.a n = A132308 n

theorem P10110844445117448834.correct : P10110844445117448834.Spec := by
  intro n
  simp only [A132308]

end A132308

/-! ## A132308.P15598295056108904836

`∑[ogf((1-x+2x^2)/(1-4x+3x^2))]`
-/

namespace A132308.P15598295056108904836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132308.P15598295056108904836

namespace A132308

/-- `∑[ogf((1-x+2x^2)/(1-4x+3x^2))]` -/
def P15598295056108904836.Spec : Prop :=
  ∀ n, P15598295056108904836.a n = A132308 n

end A132308

/-! ## A132308.P445521757976785701

`ogf((1-x+2x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A132308.P445521757976785701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -5, 7, -3] n

end

end A132308.P445521757976785701

namespace A132308

/-- `ogf((1-x+2x^2)/(1-5x+7x^2-3x^3))` -/
def P445521757976785701.Spec : Prop :=
  ∀ n, P445521757976785701.a n = A132308 n

end A132308

/-! ## A132308.P16761015343030539419

`∑[or(2, 3*a(n-1))]` with `a(0)=1`
-/

namespace A132308.P16761015343030539419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor 2 (3 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132308.P16761015343030539419

namespace A132308

/-- `∑[or(2, 3*a(n-1))]` -/
def P16761015343030539419.Spec : Prop :=
  ∀ n, (P16761015343030539419.a n : ℤ) = A132308 n

end A132308

/-! ## A132308.P17808486376981121754

`abs(lcm(2, 3^n)-(n+1))`
-/

namespace A132308.P17808486376981121754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 2 (3 ^ n) : ℤ) - (n + 1 : ℤ)|

end

end A132308.P17808486376981121754

namespace A132308

/-- `abs(lcm(2, 3^n)-(n+1))` -/
def P17808486376981121754.Spec : Prop :=
  ∀ n, P17808486376981121754.a n = A132308 n

end A132308

/-! ## A132308.P15194765336344770044

`∑[3*a(n-1)+2]` with `a(0)=1, a(1)=3`
-/

namespace A132308.P15194765336344770044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132308.P15194765336344770044

namespace A132308

/-- `∑[3*a(n-1)+2]` -/
def P15194765336344770044.Spec : Prop :=
  ∀ n, (P15194765336344770044.a n : ℤ) = A132308 n

end A132308

/-! ## A132308.P5929289309551636198

`∑[xor(2, 3*a(n-1))]` with `a(0)=1, a(1)=3`
-/

namespace A132308.P5929289309551636198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  Nat.xor 2 (3 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132308.P5929289309551636198

namespace A132308

/-- `∑[xor(2, 3*a(n-1))]` -/
def P5929289309551636198.Spec : Prop :=
  ∀ n, (P5929289309551636198.a n : ℤ) = A132308 n

end A132308

/-! ## A132308.P9695962912996011149

`∑[∑[3*a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A132308.P9695962912996011149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132308.P9695962912996011149

namespace A132308

/-- `∑[∑[3*a(n-1)]]` -/
def P9695962912996011149.Spec : Prop :=
  ∀ n, (P9695962912996011149.a n : ℤ) = A132308 n

end A132308

/-! ## A132308.P4087515257407743007

`record[3*a(n-2)+n-1]` with `a(0)=1, a(1)=0`
-/

namespace A132308.P4087515257407743007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * f1 (n - 2) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132308.P4087515257407743007

namespace A132308

/-- `record[3*a(n-2)+n-1]` -/
def P4087515257407743007.Spec : Prop :=
  ∀ n, P4087515257407743007.a n = A132308 n

end A132308

/-! ## A132308.P9912925460553955118

`floor(2*n+3*a(n-1)-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132308.P9912925460553955118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) + (3 * a (n - 1) - 1)

end

end A132308.P9912925460553955118

namespace A132308

/-- `floor(2*n+3*a(n-1)-1)` -/
def P9912925460553955118.Spec : Prop :=
  ∀ n, P9912925460553955118.a n = A132308 n

theorem P9912925460553955118.correct : P9912925460553955118.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132308, Nat.add_sub_cancel, A132308.P9912925460553955118.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132308, Nat.add_sub_cancel, A132308.P9912925460553955118.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132308

/-! ## A132308.P7943852182276782132

`floor(2*n-(1-3*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132308.P7943852182276782132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - (1 - 3 * a (n - 1))

end

end A132308.P7943852182276782132

namespace A132308

/-- `floor(2*n-(1-3*a(n-1)))` -/
def P7943852182276782132.Spec : Prop :=
  ∀ n, P7943852182276782132.a n = A132308 n

theorem P7943852182276782132.correct : P7943852182276782132.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132308, Nat.add_sub_cancel, A132308.P7943852182276782132.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132308, Nat.add_sub_cancel, A132308.P7943852182276782132.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132308

/-! ## A132308.P7953337677584597682

`3*(a(n-1)-(n+1)/3+n)` with `a(0)=1`
-/

namespace A132308.P7953337677584597682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) - (n + 1 : ℚ) / 3 + (n : ℚ))

end

end A132308.P7953337677584597682

namespace A132308

/-- `3*(a(n-1)-(n+1)/3+n)` -/
def P7953337677584597682.Spec : Prop :=
  ∀ n, P7953337677584597682.a n = (A132308 n : ℚ)

theorem P7953337677584597682.correct : P7953337677584597682.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132308, Nat.add_sub_cancel, A132308.P7953337677584597682.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132308, Nat.add_sub_cancel, A132308.P7953337677584597682.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132308

/-! ## A132308.P1354603929075861744

`2*(n-((1-a(n-1))/2-a(n-1)))` with `a(0)=1`
-/

namespace A132308.P1354603929075861744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℚ) - ((1 - a (n - 1)) / 2 - a (n - 1)))

end

end A132308.P1354603929075861744

namespace A132308

/-- `2*(n-((1-a(n-1))/2-a(n-1)))` -/
def P1354603929075861744.Spec : Prop :=
  ∀ n, P1354603929075861744.a n = (A132308 n : ℚ)

theorem P1354603929075861744.correct : P1354603929075861744.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132308, Nat.add_sub_cancel, A132308.P1354603929075861744.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132308, Nat.add_sub_cancel, A132308.P1354603929075861744.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132308

/-! ## A132308.P794292571860334501

`∑[a(n-1)+a(n-1)+a(n-1)+2]` with `a(0)=1, a(1)=3`
-/

namespace A132308.P794292571860334501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132308.P794292571860334501

namespace A132308

/-- `∑[a(n-1)+a(n-1)+a(n-1)+2]` -/
def P794292571860334501.Spec : Prop :=
  ∀ n, (P794292571860334501.a n : ℤ) = A132308 n

end A132308

/-! ## A132308.P17847177338642098051

`floor(n-1+a(n-1)+a(n-1)+a(n-1)+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132308.P17847177338642098051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (a (n - 1) + (a (n - 1) + (n : ℤ))))

end

end A132308.P17847177338642098051

namespace A132308

/-- `floor(n-1+a(n-1)+a(n-1)+a(n-1)+n)` -/
def P17847177338642098051.Spec : Prop :=
  ∀ n, P17847177338642098051.a n = A132308 n

theorem P17847177338642098051.correct : P17847177338642098051.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132308, Nat.add_sub_cancel, A132308.P17847177338642098051.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132308, Nat.add_sub_cancel, A132308.P17847177338642098051.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132308

/-! ## A132308.P11975470883835630828

`floor(n-(1-a(n-1)-a(n-1)-a(n-1)-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132308.P11975470883835630828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1) - a (n - 1) - (n : ℤ))

end

end A132308.P11975470883835630828

namespace A132308

/-- `floor(n-(1-a(n-1)-a(n-1)-a(n-1)-n))` -/
def P11975470883835630828.Spec : Prop :=
  ∀ n, P11975470883835630828.a n = A132308 n

theorem P11975470883835630828.correct : P11975470883835630828.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A132308, Nat.add_sub_cancel, A132308.P11975470883835630828.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A132308, Nat.add_sub_cancel, A132308.P11975470883835630828.a, A132308.P10110844445117448834.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132308

/-! ## A132308.P3516287570975932523

`∑[A358027(2*n)]`
-/

namespace A132308.P3516287570975932523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358027 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132308.P3516287570975932523

namespace A132308

/-- `∑[A358027(2*n)]` -/
def P3516287570975932523.Spec : Prop :=
  ∀ n, P3516287570975932523.a n = A132308 n

end A132308

/-! ## A132308.P16786136338311962979

`Δ[A061982(n)+n]`
-/

namespace A132308.P16786136338311962979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061982 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132308.P16786136338311962979

namespace A132308

/-- `Δ[A061982(n)+n]` -/
def P16786136338311962979.Spec : Prop :=
  ∀ n, P16786136338311962979.a n = A132308 n

theorem P16786136338311962979.correct : P16786136338311962979.Spec := by
  intro n
  simp only [A132308, Nat.add_sub_cancel, A132308.P16786136338311962979.f1, A132308.P16786136338311962979.a, A132308.P10110844445117448834.a, A061982, A061982.P13631117991356415151.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132308

/-! ## A132308.P15746021721655385635

`Δ[A182453(n)-n]`
-/

namespace A132308.P15746021721655385635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182453 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132308.P15746021721655385635

namespace A132308

/-- `Δ[A182453(n)-n]` -/
def P15746021721655385635.Spec : Prop :=
  ∀ n, P15746021721655385635.a n = A132308 n

theorem P15746021721655385635.correct : P15746021721655385635.Spec := by
  intro n
  simp only [A132308, Nat.add_sub_cancel, A132308.P15746021721655385635.f1, A132308.P15746021721655385635.a, A132308.P10110844445117448834.a, A182453, A182453.P3853730721618291432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132308

/-! ## A132308.P3987418273064077333

`Δ[A061983(n)+n²]`
-/

namespace A132308.P3987418273064077333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061983 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132308.P3987418273064077333

namespace A132308

/-- `Δ[A061983(n)+n²]` -/
def P3987418273064077333.Spec : Prop :=
  ∀ n, P3987418273064077333.a n = A132308 n

end A132308

/-!
# A132309: A007318^(-1) * A132307.

The programs for A132309, there is no canonical definition to state claims against.
-/

/-! ## A132309.P17484631122391596483

`(A132476(n)+A007318(n))/2`
-/

namespace A132309.P17484631122391596483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132476 n + A007318 n : ℚ) / 2

end

end A132309.P17484631122391596483

/-! ## A132309.P6987805225026469371

`2*A132476(n)-A132478(n)`
-/

namespace A132309.P6987805225026469371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132476 n - A132478 n

end

end A132309.P6987805225026469371

/-! ## A132309.P13555406062796336248

`(A132478(n)+A028326(n))/3`
-/

namespace A132309.P13555406062796336248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132478 n + A028326 n : ℚ) / 3

end

end A132309.P13555406062796336248

/-! ## A132309.P10457854991157435100

`A001281(A132476(n)+A007318(n))`
-/

namespace A132309.P10457854991157435100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A132476 n + A007318 n).toNat

end

end A132309.P10457854991157435100

/-! ## A132309.P13895999736928668239

`A004525(A132476(n)+A007318(n))`
-/

namespace A132309.P13895999736928668239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A132476 n + A007318 n).toNat

end

end A132309.P13895999736928668239

/-! ## A132309.P12430025247871912200

`A004526(A132476(n)+A007318(n))`
-/

namespace A132309.P12430025247871912200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A132476 n + A007318 n).toNat

end

end A132309.P12430025247871912200

/-! ## A132309.P12242972135646192484

`A331803(A132476(n)+A007318(n))`
-/

namespace A132309.P12242972135646192484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331803 (A132476 n + A007318 n).toNat

end

end A132309.P12242972135646192484

/-! ## A132309.P5273827164625976274

`A028242(A007318(n)+A132476(n)+1)`
-/

namespace A132309.P5273827164625976274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A007318 n + (A132476 n + 1)).toNat

end

end A132309.P5273827164625976274

/-! ## A132309.P8868149662734943614

`A000463(A007318(n)+A132476(n)-1)`
-/

namespace A132309.P8868149662734943614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A007318 n + (A132476 n - 1)).toNat

end

end A132309.P8868149662734943614

/-! ## A132309.P6874717497557493430

`A001057(A007318(n)+A132476(n)-1)`
-/

namespace A132309.P6874717497557493430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A007318 n + (A132476 n - 1)).toNat

end

end A132309.P6874717497557493430

/-!
# A132310: a(n) = 3^n*Sum_{ k=0..n } binomial(2*k,k)/3^k.

The programs for A132310, the canonical program `A132310.P15225947479458849798` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132310 has offset 0).

The definition of A132310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132310.P15225947479458849798

`A000984(n)+3*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132310

/-- `A000984(n)+3*a(n-1)` -/
def P15225947479458849798.Spec : Prop :=
  ∀ n, P15225947479458849798.a n = A132310 n

theorem P15225947479458849798.correct : P15225947479458849798.Spec := by
  intro n
  simp only [A132310]

end A132310

/-! ## A132310.P6381500067553580173

`3*a(n-1)+(n+1)*A000108(n)` with `a(0)=1`
-/

namespace A132310.P6381500067553580173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (n + 1 : ℤ) * A000108 n

end

end A132310.P6381500067553580173

namespace A132310

/-- `3*a(n-1)+(n+1)*A000108(n)` -/
def P6381500067553580173.Spec : Prop :=
  ∀ n, P6381500067553580173.a n = A132310 n

end A132310

/-! ## A132310.P14162680706601493743

`a(n-1)+2*(A088218(n)+a(n-1))` with `a(0)=1`
-/

namespace A132310.P14162680706601493743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * (A088218 n + a (n - 1))

end

end A132310.P14162680706601493743

namespace A132310

/-- `a(n-1)+2*(A088218(n)+a(n-1))` -/
def P14162680706601493743.Spec : Prop :=
  ∀ n, P14162680706601493743.a n = A132310 n

end A132310

/-! ## A132310.P13283454611699924645

`A000984(n+1)-A137720(n+1)`
-/

namespace A132310.P13283454611699924645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - A137720 (n + 1)

end

end A132310.P13283454611699924645

namespace A132310

/-- `A000984(n+1)-A137720(n+1)` -/
def P13283454611699924645.Spec : Prop :=
  ∀ n, P13283454611699924645.a n = A132310 n

end A132310

/-! ## A132310.P8360026778115086948

`A063886(2*(n+1))-A137720(n+1)`
-/

namespace A132310.P8360026778115086948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * (n + 1)) - A137720 (n + 1)

end

end A132310.P8360026778115086948

namespace A132310

/-- `A063886(2*(n+1))-A137720(n+1)` -/
def P8360026778115086948.Spec : Prop :=
  ∀ n, P8360026778115086948.a n = A132310 n

end A132310

/-! ## A132310.P17661726989504756360

`A056040(2*n)+3*a(n-1)` with `a(0)=1`
-/

namespace A132310.P17661726989504756360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056040 (2 * n) + 3 * a (n - 1)

end

end A132310.P17661726989504756360

namespace A132310

/-- `A056040(2*n)+3*a(n-1)` -/
def P17661726989504756360.Spec : Prop :=
  ∀ n, P17661726989504756360.a n = A132310 n

end A132310

/-! ## A132310.P2348128610760110167

`A092392(A000217(n))+3*a(n-1)` with `a(0)=1`
-/

namespace A132310.P2348128610760110167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092392 (A000217 n).toNat + 3 * a (n - 1)

end

end A132310.P2348128610760110167

namespace A132310

/-- `A092392(A000217(n))+3*a(n-1)` -/
def P2348128610760110167.Spec : Prop :=
  ∀ n, P2348128610760110167.a n = A132310 n

end A132310

/-! ## A132310.P844051906883286190

`A054335(∑[n])+3*a(n-1)` with `a(0)=1`
-/

namespace A132310.P844051906883286190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054335 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 * a (n - 1)

end

end A132310.P844051906883286190

namespace A132310

/-- `A054335(∑[n])+3*a(n-1)` -/
def P844051906883286190.Spec : Prop :=
  ∀ n, P844051906883286190.a n = A132310 n

end A132310

/-! ## A132310.P12465035720842140097

`C(2*n, n)+3*a(n-1)` with `a(0)=1`
-/

namespace A132310.P12465035720842140097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) n + 3 * a (n - 1)

end

end A132310.P12465035720842140097

namespace A132310

/-- `C(2*n, n)+3*a(n-1)` -/
def P12465035720842140097.Spec : Prop :=
  ∀ n, (P12465035720842140097.a n : ℤ) = A132310 n

end A132310

/-!
# A132311: Triangle read by rows: T(n,k) is the number of partitions of binomial(n,k) into parts of the first n rows of Pascal's triangle, 0<=k<=n.

The programs for A132311, there is no canonical definition to state claims against.
-/

/-! ## A132311.P16056731051499676965

`A126209(A168288(n))%A001844(A167808(n))`
-/

namespace A132311.P16056731051499676965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126209 (A168288 n).toNat) (A001844 (A167808 n).toNat)

end

end A132311.P16056731051499676965

/-!
# A132314: a(n) = n*2^floor((n+1)/2).

The programs for A132314, the canonical program `A132314.P2744517062766010455` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132314 has offset 0).

The definition of A132314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132314.P9221946328393654919

`n*2^floor((n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132314.P9221946328393654919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

end

end A132314.P9221946328393654919

namespace A132314

/-- `n*2^floor((n+1)/2)` -/
def P9221946328393654919.Spec : Prop :=
  ∀ n, P9221946328393654919.a n = (A132314 n : ℚ)

end A132314

/-! ## A132314.P2744517062766010455

`4*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=12`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132314

/-- `4*a(n-2)-4*a(n-4)` -/
def P2744517062766010455.Spec : Prop :=
  ∀ n, P2744517062766010455.a n = A132314 n

theorem P2744517062766010455.correct : P2744517062766010455.Spec := by
  intro n
  simp only [A132314]

end A132314

/-! ## A132314.P1152654426532805772

`n/∏[gcd(2, n)/2]`
-/

namespace A132314.P1152654426532805772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A132314.P1152654426532805772

namespace A132314

/-- `n/∏[gcd(2, n)/2]` -/
def P1152654426532805772.Spec : Prop :=
  ∀ n, P1152654426532805772.a n = (A132314 n : ℚ)

end A132314

/-! ## A132314.P8370123494821472880

`n/∏[(n+2)/lcm(2, n+2)]`
-/

namespace A132314.P8370123494821472880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Nat.lcm 2 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A132314.P8370123494821472880

namespace A132314

/-- `n/∏[(n+2)/lcm(2, n+2)]` -/
def P8370123494821472880.Spec : Prop :=
  ∀ n, P8370123494821472880.a n = (A132314 n : ℚ)

end A132314

/-! ## A132314.P5597603001694448433

`n/2^∑[floor(a(n-2))]` with `a(0)=0, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A132314.P5597603001694448433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A132314.P5597603001694448433

namespace A132314

/-- `n/2^∑[floor(a(n-2))]` -/
def P5597603001694448433.Spec : Prop :=
  ∀ n, P5597603001694448433.a n = (A132314 n : ℚ)

end A132314

/-! ## A132314.P11119416394319214263

`floor(n*∑[2*a(n-2)])` with `a(0)=1, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A132314.P11119416394319214263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132314.P11119416394319214263

namespace A132314

/-- `floor(n*∑[2*a(n-2)])` -/
def P11119416394319214263.Spec : Prop :=
  ∀ n, (P11119416394319214263.a n : ℤ) = A132314 n

end A132314

/-! ## A132314.P9348421048743535678

`n*∑[2*a(n-2)]+n` with `a(0)=0, a(1)=1`
-/

namespace A132314.P9348421048743535678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A132314.P9348421048743535678

namespace A132314

/-- `n*∑[2*a(n-2)]+n` -/
def P9348421048743535678.Spec : Prop :=
  ∀ n, (P9348421048743535678.a n : ℤ) = A132314 n

end A132314

/-! ## A132314.P5476179535017547579

`n/2^∑[a(n-1)²-1]` with `a(0)=0`
-/

namespace A132314.P5476179535017547579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) ^ 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A132314.P5476179535017547579

namespace A132314

/-- `n/2^∑[a(n-1)²-1]` -/
def P5476179535017547579.Spec : Prop :=
  ∀ n, P5476179535017547579.a n = (A132314 n : ℚ)

end A132314

/-! ## A132314.P761743496170753647

`n/2^∑[a(n-2)^3]` with `a(0)=0, a(1)=-1`
-/

namespace A132314.P761743496170753647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 2) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A132314.P761743496170753647

namespace A132314

/-- `n/2^∑[a(n-2)^3]` -/
def P761743496170753647.Spec : Prop :=
  ∀ n, P761743496170753647.a n = (A132314 n : ℚ)

end A132314

/-! ## A132314.P12938747643485234660

`n-n*∑[2*a(n-2)]` with `a(0)=0, a(1)=-1`
-/

namespace A132314.P12938747643485234660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132314.P12938747643485234660

namespace A132314

/-- `n-n*∑[2*a(n-2)]` -/
def P12938747643485234660.Spec : Prop :=
  ∀ n, P12938747643485234660.a n = A132314 n

end A132314

/-! ## A132314.P11805670542072580585

`lcm(n, 2*(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=2`
-/

namespace A132314.P11805670542072580585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Int.lcm (n : ℤ) (2 * ((a (n - 1) : ℤ) - (a (n - 2) : ℤ)))

end

end A132314.P11805670542072580585

namespace A132314

/-- `lcm(n, 2*(a(n-1)-a(n-2)))` -/
def P11805670542072580585.Spec : Prop :=
  ∀ n, (P11805670542072580585.a n : ℤ) = A132314 n

end A132314

/-! ## A132314.P8033381345194218303

`abs(n*A152166(n))`
-/

namespace A132314.P8033381345194218303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A152166 n|

end

end A132314.P8033381345194218303

namespace A132314

/-- `abs(n*A152166(n))` -/
def P8033381345194218303.Spec : Prop :=
  ∀ n, P8033381345194218303.a n = A132314 n

end A132314

/-! ## A132314.P8908441399475099368

`abs(n*Δ[A052552(n)])`
-/

namespace A132314.P8908441399475099368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A132314.P8908441399475099368

namespace A132314

/-- `abs(n*Δ[A052552(n)])` -/
def P8908441399475099368.Spec : Prop :=
  ∀ n, P8908441399475099368.a n = A132314 n

end A132314

/-! ## A132314.P14015516234578062381

`abs(n*A320770(n+1))`
-/

namespace A132314.P14015516234578062381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A320770 (n + 1)|

end

end A132314.P14015516234578062381

namespace A132314

/-- `abs(n*A320770(n+1))` -/
def P14015516234578062381.Spec : Prop :=
  ∀ n, P14015516234578062381.a n = A132314 n

end A132314

/-! ## A132314.P18165809164272409833

`abs(n*A117575(n+2))`
-/

namespace A132314.P18165809164272409833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A117575 (n + 2)|

end

end A132314.P18165809164272409833

namespace A132314

/-- `abs(n*A117575(n+2))` -/
def P18165809164272409833.Spec : Prop :=
  ∀ n, P18165809164272409833.a n = A132314 n

end A132314

/-! ## A132314.P6196207057628738246

`abs(2*n*A117575(n))`
-/

namespace A132314.P6196207057628738246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) * A117575 n)|

end

end A132314.P6196207057628738246

namespace A132314

/-- `abs(2*n*A117575(n))` -/
def P6196207057628738246.Spec : Prop :=
  ∀ n, P6196207057628738246.a n = A132314 n

end A132314

/-! ## A132314.P16316255836632665470

`record[(n-3)*A158780(n)]`
-/

namespace A132314.P16316255836632665470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A158780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132314.P16316255836632665470

namespace A132314

/-- `record[(n-3)*A158780(n)]` -/
def P16316255836632665470.Spec : Prop :=
  ∀ n, P16316255836632665470.a n = A132314 n

end A132314

/-! ## A132314.P13581790160628987126

`abs(n*Δ[A131575(n+1)])`
-/

namespace A132314.P13581790160628987126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A132314.P13581790160628987126

namespace A132314

/-- `abs(n*Δ[A131575(n+1)])` -/
def P13581790160628987126.Spec : Prop :=
  ∀ n, P13581790160628987126.a n = A132314 n

end A132314

/-! ## A132314.P14863346019390113631

`A093968(n)+A093968(n)`
-/

namespace A132314.P14863346019390113631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 n + A093968 n

end

end A132314.P14863346019390113631

namespace A132314

/-- `A093968(n)+A093968(n)` -/
def P14863346019390113631.Spec : Prop :=
  ∀ n, P14863346019390113631.a n = A132314 n

end A132314

/-! ## A132314.P17062363954453918294

`lcm(A060546(n), A132344(n))`
-/

namespace A132314.P17062363954453918294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060546 n) (A132344 n)

end

end A132314.P17062363954453918294

namespace A132314

/-- `lcm(A060546(n), A132344(n))` -/
def P17062363954453918294.Spec : Prop :=
  ∀ n, (P17062363954453918294.a n : ℤ) = A132314 n

end A132314

/-!
# A132315: Sum of the non-fourth powers less than or equal to n.

The programs for A132315, there is no canonical definition to state claims against.
-/

/-! ## A132315.P11525453161636614677

`∑[(n+1)*(1-char[15])]-1`
-/

namespace A132315.P11525453161636614677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A132315.P11525453161636614677

/-! ## A132315.P15922331148218382458

`∑[(n+1)%(∑[∑[n-5]]+4)]`
-/

namespace A132315.P15922331148218382458
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132315.P15922331148218382458

/-! ## A132315.P14422873062551752862

`∑[(n+1)*char[comp[(n*(n+5)+1)*C(n, 2)]]]`
-/

namespace A132315.P14422873062551752862
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) + 1) * Nat.choose n 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132315.P14422873062551752862

/-! ## A132315.P6015646636912918964

`∑[(n+1)*Δ[A139179(n)]]`
-/

namespace A132315.P6015646636912918964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132315.P6015646636912918964

/-! ## A132315.P18135130626864067598

`∑[(n+1)*A023532((n+3)²)]`
-/

namespace A132315.P18135130626864067598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023532 ((n + 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132315.P18135130626864067598

/-! ## A132315.P5272327422388619183

`∑[(n+1)*A014963(∑[n]+8)%2]`
-/

namespace A132315.P5272327422388619183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A014963 (∑ j ∈ Finset.range (n + 1), f2 j + 8)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132315.P5272327422388619183

/-! ## A132315.P10328144955846516269

`∑[(1-char[15])*(1-(A000007(n)-n))]`
-/

namespace A132315.P10328144955846516269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * (1 - (A000007 n - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132315.P10328144955846516269

/-! ## A132315.P17415517668174960802

`∑[A008683(A159766(n))²*(n+1)]`
-/

namespace A132315.P17415517668174960802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A159766 n).toNat ^ 2 * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132315.P17415517668174960802

/-! ## A132315.P14951164942535273638

`∑[A008612(A175542(A008458(n)))]`
-/

namespace A132315.P14951164942535273638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A175542 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132315.P14951164942535273638

/-!
# A132316: a(n) = [x^n] Product_{i=0..n} (1 + x^(2^i) )^(2^(n-i)).

The programs for A132316, there is no canonical definition to state claims against.
-/

/-! ## A132316.P3486607432580007931

`A215781(∏[∑[A030238(n)]])`
-/

namespace A132316.P3486607432580007931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132316.P3486607432580007931

/-!
# A132317: a(n) = [x^(2^n)] Product_{i=0..n} (1 + x^(2^i) )^(2^(n-i)); equals column 1 of triangle A132318.

The programs for A132317, there is no canonical definition to state claims against.
-/

/-! ## A132317.P15999602464418398770

`record[ratio[A132318(n)]]`
-/

namespace A132317.P15999602464418398770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132318 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132317.P15999602464418398770

/-! ## A132317.P3921601256948654854

`A132318(∑[n+1]+1)`
-/

namespace A132317.P3921601256948654854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A132317.P3921601256948654854

/-!
# A132318: Triangle, read by rows, where T(n,k) = [x^(k*2^(n-1))] Product_{i=0..n-1} (1 + x^(2^i))^(2^(n-i-1)) for n>0 with T(0,0)=1.

The programs for A132318, there is no canonical definition to state claims against.
-/

/-! ## A132318.P12369754737342296459

`A114226(A290448(n))`
-/

namespace A132318.P12369754737342296459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114226 (A290448 n).toNat

end

end A132318.P12369754737342296459

/-! ## A132318.P3085977304569548047

`A330995(A128592(n))`
-/

namespace A132318.P3085977304569548047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330995 (A128592 n).toNat

end

end A132318.P3085977304569548047

/-! ## A132318.P7981725722943242941

`A308811(A220602(n+1))`
-/

namespace A132318.P7981725722943242941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308811 (A220602 (n + 1)).toNat

end

end A132318.P7981725722943242941

/-! ## A132318.P1624396623314235273

`A382761(A329228(n+1))`
-/

namespace A132318.P1624396623314235273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382761 (A329228 (n + 1)).toNat

end

end A132318.P1624396623314235273

/-! ## A132318.P11799937131777038455

`A132317(A099597(n)-1)`
-/

namespace A132318.P11799937131777038455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132317 (A099597 n - 1).toNat

end

end A132318.P11799937131777038455

/-!
# A132326: Decimal expansion of Product_{k>=1} (1+1/10^k).

The programs for A132326, there is no canonical definition to state claims against.
-/

/-! ## A132326.P12828677779678725436

`A266749(n)%A266743(A053644(4*(n+1)))`
-/

namespace A132326.P12828677779678725436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266749 n) (A266743 (A053644 (4 * (n + 1))).toNat)

end

end A132326.P12828677779678725436

/-!
# A132327: a(n) = Product{k>=0} (1 + floor(n/3^k)).

The programs for A132327, the canonical program `A132327.P12790839243752155113` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132327 has offset 0).

The definition of A132327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132327.P12790839243752155113

`(1+n)*a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132327

/-- `(1+n)*a(floor(n/3))` -/
def P12790839243752155113.Spec : Prop :=
  ∀ n, (P12790839243752155113.a n : ℤ) = A132327 n

theorem P12790839243752155113.correct : P12790839243752155113.Spec := by
  intro n
  simp only [A132327]

end A132327

/-! ## A132327.P15717949928973368289

`A132328(3*n)`
-/

namespace A132327.P15717949928973368289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132328 (3 * n)

end

end A132327.P15717949928973368289

namespace A132327

/-- `A132328(3*n)` -/
def P15717949928973368289.Spec : Prop :=
  ∀ n, P15717949928973368289.a n = A132327 n

end A132327

/-! ## A132327.P12953589851782449424

`a(val(2^n, 8))*(n+1)` with `a(0)=1`
-/

namespace A132327.P12953589851782449424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.valuation (2 ^ n) 8) * (n + 1)

end

end A132327.P12953589851782449424

namespace A132327

/-- `a(val(2^n, 8))*(n+1)` -/
def P12953589851782449424.Spec : Prop :=
  ∀ n, (P12953589851782449424.a n : ℤ) = A132327 n

end A132327

/-! ## A132327.P14079062153477398246

`a(floor(n/3))*comp[55*n]` with `a(0)=1`
-/

namespace A132327.P14079062153477398246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A132327.P14079062153477398246

namespace A132327

/-- `a(floor(n/3))*comp[55*n]` -/
def P14079062153477398246.Spec : Prop :=
  ∀ n, (P14079062153477398246.a n : ℤ) = A132327 n

end A132327

/-! ## A132327.P5080806387731597186

`record[n*a(ceil(n/3))]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A132327.P5080806387731597186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 3] fun n f1 =>
  n * f1 ⌈(n : ℚ) / 3⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132327.P5080806387731597186

namespace A132327

/-- `record[n*a(ceil(n/3))]` -/
def P5080806387731597186.Spec : Prop :=
  ∀ n, (P5080806387731597186.a n : ℤ) = A132327 n

end A132327

/-! ## A132327.P9264563690808888144

`(n+1)/a(floor(n/3))^(-1)` with `a(0)=1`
-/

namespace A132327.P9264563690808888144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / a ⌊(n : ℚ) / 3⌋.toNat ^ (-1 : ℤ)

end

end A132327.P9264563690808888144

namespace A132327

/-- `(n+1)/a(floor(n/3))^(-1)` -/
def P9264563690808888144.Spec : Prop :=
  ∀ n, P9264563690808888144.a n = (A132327 n : ℚ)

end A132327

/-! ## A132327.P14599076077708643230

`floor((Δ[n²]-n)*a(floor(n/3)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132327.P14599076077708643230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) * a ⌊(n : ℚ) / 3⌋.toNat

end

end A132327.P14599076077708643230

namespace A132327

/-- `floor((Δ[n²]-n)*a(floor(n/3)))` -/
def P14599076077708643230.Spec : Prop :=
  ∀ n, P14599076077708643230.a n = A132327 n

end A132327

/-! ## A132327.P5090391533150117250

`abs((n+1)*a(∑[char[3*n]]-1))` with `a(0)=1`
-/

namespace A132327.P5090391533150117250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A132327.P5090391533150117250

namespace A132327

/-- `abs((n+1)*a(∑[char[3*n]]-1))` -/
def P5090391533150117250.Spec : Prop :=
  ∀ n, (P5090391533150117250.a n : ℤ) = A132327 n

end A132327

/-! ## A132327.P11186520107955932298

`ceil((n+1)*a(∑[char[3*n]]-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A132327.P11186520107955932298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A132327.P11186520107955932298

namespace A132327

/-- `ceil((n+1)*a(∑[char[3*n]]-1))` -/
def P11186520107955932298.Spec : Prop :=
  ∀ n, (P11186520107955932298.a n : ℤ) = A132327 n

end A132327

/-!
# A132328: a(n) = Product_{k>0} (1+floor(n/3^k)).

The programs for A132328, the canonical program `A132328.P1012946206421040912` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132328 has offset 0).

The definition of A132328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132328.P1012946206421040912

`(1+floor(n/3))*a(floor(n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132328

/-- `(1+floor(n/3))*a(floor(n/3))` -/
def P1012946206421040912.Spec : Prop :=
  ∀ n, P1012946206421040912.a n = A132328 n

theorem P1012946206421040912.correct : P1012946206421040912.Spec := by
  intro n
  simp only [A132328]

end A132328

/-! ## A132328.P3598945379019481456

`A132327(floor(n/3))`
-/

namespace A132328.P3598945379019481456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132327 ⌊(n : ℚ) / 3⌋.toNat

end

end A132328.P3598945379019481456

namespace A132328

/-- `A132327(floor(n/3))` -/
def P3598945379019481456.Spec : Prop :=
  ∀ n, P3598945379019481456.a n = A132328 n

end A132328

/-! ## A132328.P3979426068639354926

`A132327(n)/(1+n)`
-/

namespace A132328.P3979426068639354926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132327 n : ℚ) / (1 + n : ℚ)

end

end A132328.P3979426068639354926

namespace A132328

/-- `A132327(n)/(1+n)` -/
def P3979426068639354926.Spec : Prop :=
  ∀ n, P3979426068639354926.a n = (A132328 n : ℚ)

end A132328

/-! ## A132328.P8405215717793192744

`a(A002264(n))*A008620(n)` with `a(0)=1`
-/

namespace A132328.P8405215717793192744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A002264 n).toNat * A008620 n

end

end A132328.P8405215717793192744

namespace A132328

/-- `a(A002264(n))*A008620(n)` -/
def P8405215717793192744.Spec : Prop :=
  ∀ n, P8405215717793192744.a n = A132328 n

end A132328

/-! ## A132328.P9563121572826891228

`a(A004526(A004396(n)))*A008620(n)` with `a(0)=1`
-/

namespace A132328.P9563121572826891228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 (A004396 n).toNat).toNat * A008620 n

end

end A132328.P9563121572826891228

namespace A132328

/-- `a(A004526(A004396(n)))*A008620(n)` -/
def P9563121572826891228.Spec : Prop :=
  ∀ n, P9563121572826891228.a n = A132328 n

end A132328

/-! ## A132328.P14898418377436835264

`a(A004526(A004523(n)))*A008620(n)` with `a(0)=1`
-/

namespace A132328.P14898418377436835264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 (A004523 n).toNat).toNat * A008620 n

end

end A132328.P14898418377436835264

namespace A132328

/-- `a(A004526(A004523(n)))*A008620(n)` -/
def P14898418377436835264.Spec : Prop :=
  ∀ n, P14898418377436835264.a n = A132328 n

end A132328

/-! ## A132328.P11733920566161164867

`a(A002264(n))*Δ[A001840(n)]` with `a(0)=1`
-/

namespace A132328.P11733920566161164867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A002264 n).toNat * (f1 (n + 1) - f1 n)

end

end A132328.P11733920566161164867

namespace A132328

/-- `a(A002264(n))*Δ[A001840(n)]` -/
def P11733920566161164867.Spec : Prop :=
  ∀ n, P11733920566161164867.a n = A132328 n

end A132328

/-! ## A132328.P3365181433892389291

`A008620(n)*A132327(A343609(n))`
-/

namespace A132328.P3365181433892389291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A132327 (A343609 n).toNat

end

end A132328.P3365181433892389291

namespace A132328

/-- `A008620(n)*A132327(A343609(n))` -/
def P3365181433892389291.Spec : Prop :=
  ∀ n, P3365181433892389291.a n = A132328 n

end A132328

/-!
# A132329: Numbers that cannot be expressed as the difference of the squares of primes.

The programs for A132329, there is no canonical definition to state claims against.
-/

/-! ## A132329.P12306034824350554287

`comp[Δ[p?[A002487(n)]²]]`
-/

namespace A132329.P12306034824350554287
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P12306034824350554287

/-! ## A132329.P13543385448146620854

`comp[Δ[p?[A038569(n)]²]]`
-/

namespace A132329.P13543385448146620854
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P13543385448146620854

/-! ## A132329.P17414013658440229454

`comp[Δ[p?[A079680(n)]²]]`
-/

namespace A132329.P17414013658440229454
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P17414013658440229454

/-! ## A132329.P12607787669066091333

`comp[Δ[p?[A079684(n)]²]]`
-/

namespace A132329.P12607787669066091333
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P12607787669066091333

/-! ## A132329.P17026448368640845266

`comp[Δ[p?[A083653(n)]²]]`
-/

namespace A132329.P17026448368640845266
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P17026448368640845266

/-! ## A132329.P789452972874075223

`comp[Δ[p?[A282318(n)]²]]`
-/

namespace A132329.P789452972874075223
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P789452972874075223

/-! ## A132329.P16920519538574655034

`comp[Δ[A000040(A111633(n))²]]`
-/

namespace A132329.P16920519538574655034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111633 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P16920519538574655034

/-! ## A132329.P11400236871406112649

`comp[Δ[A006530(A137235(n))²]]`
-/

namespace A132329.P11400236871406112649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A137235 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P11400236871406112649

/-! ## A132329.P3357720855454488050

`comp[Δ[A000040(A300666(n))²]]`
-/

namespace A132329.P3357720855454488050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A300666 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P3357720855454488050

/-! ## A132329.P5944978965654742674

`comp[A006530(n+1)²-A020639(n+1)²]`
-/

namespace A132329.P5944978965654742674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2 - A020639 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A132329.P5944978965654742674

/-!
# A132332: G.f.: A(x) = A_1 where A_1 = 1/[1 - x*(A_2)^2], A_2 = 1/[1 - x^2*(A_3)^2], A_3 = 1/[1 - x^3*(A_4)^2], ... A_n = 1/[1 - x^n*(A_{n+1})^2] for n>=1.

The programs for A132332, there is no canonical definition to state claims against.
-/

/-! ## A132332.P9829880445948416424

`A328369(or(1, A078010(n)))`
-/

namespace A132332.P9829880445948416424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (Int.lor 1 (A078010 n)).toNat

end

end A132332.P9829880445948416424

/-! ## A132332.P13191442438951674518

`A329133(A003242(n))+A115981(n)`
-/

namespace A132332.P13191442438951674518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329133 (A003242 n).toNat + A115981 n

end

end A132332.P13191442438951674518

/-! ## A132332.P11054097469555007057

`A257639(A149393(n))+A185016(n)`
-/

namespace A132332.P11054097469555007057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A149393 n).toNat + A185016 n

end

end A132332.P11054097469555007057

/-! ## A132332.P17728753469418302197

`A324759(A362609(n)+A119268(n))`
-/

namespace A132332.P17728753469418302197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324759 (A362609 n + A119268 n).toNat

end

end A132332.P17728753469418302197

/-!
# A132333: G.f.: A(x) = (A_1)^2 where A_1 = 1/[1 - x*(A_2)^2], A_2 = 1/[1 - x^2*(A_3)^2], A_3 = 1/[1 - x^3*(A_4)^2], ... A_n = 1/[1 - x^n*(A_{n+1})^2] for n>=1.

The programs for A132333, there is no canonical definition to state claims against.
-/

/-! ## A132333.P13636685144272763372

`A309223(∑[A127218(n+1)])`
-/

namespace A132333.P13636685144272763372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132333.P13636685144272763372

/-! ## A132333.P10833685889823154008

`A242634(n)+A000006(A149407(n))`
-/

namespace A132333.P10833685889823154008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242634 n + A000006 (A149407 n).toNat

end

end A132333.P10833685889823154008

/-! ## A132333.P16349878440670839436

`A002487(or(A000265(n+1), A000898(n)))`
-/

namespace A132333.P16349878440670839436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lor (A000265 (n + 1)) (A000898 n)).toNat

end

end A132333.P16349878440670839436

/-!
# A132335: G.f.: A(x) = (A_1)^3 where A_1 = 1/[1 - x*(A_2)^3], A_2 = 1/[1 - x^2*(A_3)^3], A_3 = 1/[1 - x^3*(A_4)^3], ... A_n = 1/[1 - x^n*(A_{n+1})^3] for n>=1.

The programs for A132335, there is no canonical definition to state claims against.
-/

/-! ## A132335.P15370711912098215656

`∑[∑[A373994(A007476(n))]]`
-/

namespace A132335.P15370711912098215656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373994 (A007476 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132335.P15370711912098215656

/-! ## A132335.P12999498985183073867

`A303590(a(n-1))+6` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A132335.P12999498985183073867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A303590 (a (n - 1)).toNat + 6

end

end A132335.P12999498985183073867

/-!
# A132336: Sum of the integers from 1 to n, excluding perfect fifth powers.

The programs for A132336, the canonical program `A132336.P476842048346136768` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132336 has offset 1).

The definition of A132336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132336.P17995025608889630291

`∑[(n+1)%A018871(n+1)]`
-/

namespace A132336.P17995025608889630291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A018871 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132336.P17995025608889630291

namespace A132336

/-- `∑[(n+1)%A018871(n+1)]` -/
def P17995025608889630291.Spec : Prop :=
  ∀ n, P17995025608889630291.a n = A132336 (n + 1)

end A132336

/-! ## A132336.P476842048346136768

`∑[(n+1)*(1-char[A258807(n+1)])]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132336

/-- `∑[(n+1)*(1-char[A258807(n+1)])]` -/
def P476842048346136768.Spec : Prop :=
  ∀ n, P476842048346136768.a n = A132336 (n + 1)

theorem P476842048346136768.correct : P476842048346136768.Spec := by
  intro n
  simp only [A132336, Nat.add_sub_cancel]

end A132336

/-! ## A132336.P4513068912454190413

`∑[(n+1)*A043545(∏{e}[n+1, A108334(#+1)])]`
-/

namespace A132336.P4513068912454190413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A043545 (∏ p ∈ Nat.primeFactors (f2 n), A108334 (Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132336.P4513068912454190413

namespace A132336

/-- `∑[(n+1)*A043545(∏{e}[n+1, A108334(#+1)])]` -/
def P4513068912454190413.Spec : Prop :=
  ∀ n, P4513068912454190413.a n = A132336 (n + 1)

end A132336

/-! ## A132336.P17332271327630628710

`∑[(n+1)*A043545(∑[n]+15)]`
-/

namespace A132336.P17332271327630628710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A043545 (∑ j ∈ Finset.range (n + 1), f2 j + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132336.P17332271327630628710

namespace A132336

/-- `∑[(n+1)*A043545(∑[n]+15)]` -/
def P17332271327630628710.Spec : Prop :=
  ∀ n, P17332271327630628710.a n = A132336 (n + 1)

end A132336

/-! ## A132336.P15666971775249399161

`∑[A003056(A055998(n)%A112819(n+1))]`
-/

namespace A132336.P15666971775249399161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A055998 n) (A112819 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132336.P15666971775249399161

namespace A132336

/-- `∑[A003056(A055998(n)%A112819(n+1))]` -/
def P15666971775249399161.Spec : Prop :=
  ∀ n, P15666971775249399161.a n = A132336 (n + 1)

end A132336

/-!
# A132337: Sum of the integers from 1 to n, excluding the perfect sixth powers.

The programs for A132337, the canonical program `A132337.P8651020091429480329` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132337 has offset 1).

The definition of A132337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132337.P16128210665213005471

`∑[(n+1)*A200976(∏{e}[n+1, A284825(#)])]`
-/

namespace A132337.P16128210665213005471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A200976 (∏ p ∈ Nat.primeFactors (f2 n), A284825 (Nat.factorization (f2 n) p + 31)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P16128210665213005471

namespace A132337

/-- `∑[(n+1)*A200976(∏{e}[n+1, A284825(#)])]` -/
def P16128210665213005471.Spec : Prop :=
  ∀ n, P16128210665213005471.a n = A132337 (n + 1)

end A132337

/-! ## A132337.P8651020091429480329

`∑[(n+1)*(A135660(n+1)-A135661(n+1))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132337

/-- `∑[(n+1)*(A135660(n+1)-A135661(n+1))]` -/
def P8651020091429480329.Spec : Prop :=
  ∀ n, P8651020091429480329.a n = A132337 (n + 1)

theorem P8651020091429480329.correct : P8651020091429480329.Spec := by
  intro n
  simp only [A132337, Nat.add_sub_cancel]

end A132337

/-! ## A132337.P794772143452880918

`∑[(n+1)*A084400(A121266(n))%2]`
-/

namespace A132337.P794772143452880918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A084400 (A121266 (n + 10)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P794772143452880918

namespace A132337

/-- `∑[(n+1)*A084400(A121266(n))%2]` -/
def P794772143452880918.Spec : Prop :=
  ∀ n, P794772143452880918.a n = A132337 (n + 1)

end A132337

/-! ## A132337.P15720804263695749967

`∑[(n+1)*A043545(A132336(n+1))]`
-/

namespace A132337.P15720804263695749967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A043545 (A132336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P15720804263695749967

namespace A132337

/-- `∑[(n+1)*A043545(A132336(n+1))]` -/
def P15720804263695749967.Spec : Prop :=
  ∀ n, P15720804263695749967.a n = A132337 (n + 1)

end A132337

/-! ## A132337.P6605048828211797631

`∑[(n+1)*A267866(∑[A188568(n+3)])]`
-/

namespace A132337.P6605048828211797631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188568 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267866 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P6605048828211797631

namespace A132337

/-- `∑[(n+1)*A267866(∑[A188568(n+3)])]` -/
def P6605048828211797631.Spec : Prop :=
  ∀ n, P6605048828211797631.a n = A132337 (n + 1)

end A132337

/-! ## A132337.P6988642000601262849

`∑[and(n+1, A186753(A122698(n+1))+n)]`
-/

namespace A132337.P6988642000601262849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A186753 (A122698 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P6988642000601262849

namespace A132337

/-- `∑[and(n+1, A186753(A122698(n+1))+n)]` -/
def P6988642000601262849.Spec : Prop :=
  ∀ n, P6988642000601262849.a n = A132337 (n + 1)

end A132337

/-! ## A132337.P14482341350445946568

`∑[(n+1)*A085736(A048298(n+1)+1)%2]`
-/

namespace A132337.P14482341350445946568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A085736 (A048298 (n + 1) + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P14482341350445946568

namespace A132337

/-- `∑[(n+1)*A085736(A048298(n+1)+1)%2]` -/
def P14482341350445946568.Spec : Prop :=
  ∀ n, P14482341350445946568.a n = A132337 (n + 1)

end A132337

/-! ## A132337.P8873787179903605390

`∑[(n+1)*A244925(A033719(n²+n)+1)]`
-/

namespace A132337.P8873787179903605390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A244925 (A033719 (n ^ 2 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132337.P8873787179903605390

namespace A132337

/-- `∑[(n+1)*A244925(A033719(n²+n)+1)]` -/
def P8873787179903605390.Spec : Prop :=
  ∀ n, P8873787179903605390.a n = A132337 (n + 1)

end A132337

/-!
# A132338: Decimal expansion of 1 - 1/phi.

The programs for A132338, there is no canonical definition to state claims against.
-/

/-! ## A132338.P6786047078121487135

`A079585(n+1)`
-/

namespace A132338.P6786047078121487135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1 + 1)

end

end A132338.P6786047078121487135

/-! ## A132338.P17250067569527893244

`9-A094214(n)`
-/

namespace A132338.P17250067569527893244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A094214 n

end

end A132338.P17250067569527893244

/-! ## A132338.P14712920167456529240

`9-A001622(n+1)`
-/

namespace A132338.P14712920167456529240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001622 (n + 1 + 1)

end

end A132338.P14712920167456529240

/-! ## A132338.P14282093880509088180

`A094874(n+1)`
-/

namespace A132338.P14282093880509088180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094874 (n + 1 + 1)

end

end A132338.P14282093880509088180

/-! ## A132338.P2441129868973986286

`A109866(n+2)`
-/

namespace A132338.P2441129868973986286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 2)

end

end A132338.P2441129868973986286

/-! ## A132338.P10062955386743230078

`9-Δ[A093083(n)]`
-/

namespace A132338.P10062955386743230078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A132338.P10062955386743230078

/-! ## A132338.P3253524528766045338

`9-A104457(n+1)`
-/

namespace A132338.P3253524528766045338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A104457 (n + 1 + 1)

end

end A132338.P3253524528766045338

/-! ## A132338.P2607271097880238190

`9-A296184(n+1)`
-/

namespace A132338.P2607271097880238190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A296184 (n + 1 + 1)

end

end A132338.P2607271097880238190

/-! ## A132338.P1931950677748617385

`a(n-1)-A095943(n+1)` with `a(0)=3`
-/

namespace A132338.P1931950677748617385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - A095943 (n + 1)

end

end A132338.P1931950677748617385

/-!
# A132340: a(n+1) = if {a(k):1<=k<=n} is a permutation of [1:n] then 2*a(n) else a(n)-1.

The programs for A132340, the canonical program `A132340.P16481803046900762293` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132340 has offset 1).

The definition of A132340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132340.P16481803046900762293

`A284120(A258746(n+2))-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132340

/-- `A284120(A258746(n+2))-1` -/
def P16481803046900762293.Spec : Prop :=
  ∀ n, P16481803046900762293.a n = A132340 (n + 1)

theorem P16481803046900762293.correct : P16481803046900762293.Spec := by
  intro n
  simp only [A132340, Nat.add_sub_cancel]

end A132340

/-! ## A132340.P12604459438297949655

`A117120(n+2)-1`
-/

namespace A132340.P12604459438297949655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117120 (n + 2) - 1

end

end A132340.P12604459438297949655

namespace A132340

/-- `A117120(n+2)-1` -/
def P12604459438297949655.Spec : Prop :=
  ∀ n, P12604459438297949655.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P9685666695172416450

`A063946(A054429(n+2))-1`
-/

namespace A132340.P9685666695172416450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A054429 (n + 2)).toNat - 1

end

end A132340.P9685666695172416450

namespace A132340

/-- `A063946(A054429(n+2))-1` -/
def P9685666695172416450.Spec : Prop :=
  ∀ n, P9685666695172416450.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P16170726700117291936

`A180201(A233279(n+2))-1`
-/

namespace A132340.P16170726700117291936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A233279 (n + 2)).toNat - 1

end

end A132340.P16170726700117291936

namespace A132340

/-- `A180201(A233279(n+2))-1` -/
def P16170726700117291936.Spec : Prop :=
  ∀ n, P16170726700117291936.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P8821195267879366907

`A023443(A117120(n+2))`
-/

namespace A132340.P8821195267879366907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A117120 (n + 2)).toNat

end

end A132340.P8821195267879366907

namespace A132340

/-- `A023443(A117120(n+2))` -/
def P8821195267879366907.Spec : Prop :=
  ∀ n, P8821195267879366907.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P10590742794914860013

`A233280(A180200(n+2))-1`
-/

namespace A132340.P10590742794914860013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A180200 (n + 2)).toNat - 1

end

end A132340.P10590742794914860013

namespace A132340

/-- `A233280(A180200(n+2))-1` -/
def P10590742794914860013.Spec : Prop :=
  ∀ n, P10590742794914860013.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P7136535362887677995

`floor(A060030(2*(n+1))/2)`
-/

namespace A132340.P7136535362887677995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060030 (2 * (n + 1)) : ℚ) / 2⌋

end

end A132340.P7136535362887677995

namespace A132340

/-- `floor(A060030(2*(n+1))/2)` -/
def P7136535362887677995.Spec : Prop :=
  ∀ n, P7136535362887677995.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P9509987982537185217

`A327883(2*n+3)`
-/

namespace A132340.P9509987982537185217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327883 (2 * n + 3)

end

end A132340.P9509987982537185217

namespace A132340

/-- `A327883(2*n+3)` -/
def P9509987982537185217.Spec : Prop :=
  ∀ n, P9509987982537185217.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P1415660784199858946

`A003188(A154435(n+2))-1`
-/

namespace A132340.P1415660784199858946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A154435 (n + 2)).toNat - 1

end

end A132340.P1415660784199858946

namespace A132340

/-- `A003188(A154435(n+2))-1` -/
def P1415660784199858946.Spec : Prop :=
  ∀ n, P1415660784199858946.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P1084171013936061053

`A154436(A006068(n+2))-1`
-/

namespace A132340.P1084171013936061053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A006068 (n + 2)).toNat - 1

end

end A132340.P1084171013936061053

namespace A132340

/-- `A154436(A006068(n+2))-1` -/
def P1084171013936061053.Spec : Prop :=
  ∀ n, P1084171013936061053.a n = A132340 (n + 1)

end A132340

/-! ## A132340.P14964092824353905764

`A135529(A032925(n+1))`
-/

namespace A132340.P14964092824353905764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135529 (A032925 (n + 1)).toNat

end

end A132340.P14964092824353905764

namespace A132340

/-- `A135529(A032925(n+1))` -/
def P14964092824353905764.Spec : Prop :=
  ∀ n, P14964092824353905764.a n = A132340 (n + 1)

end A132340

/-!
# A132341: Main diagonal of A132339.

The programs for A132341, there is no canonical definition to state claims against.
-/

/-! ## A132341.P2085791884504030899

`record[A068875(n)*A097331(n)]`
-/

namespace A132341.P2085791884504030899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132341.P2085791884504030899

/-! ## A132341.P18040857436407887948

`A002420(2*n)*A115140(n)`
-/

namespace A132341.P18040857436407887948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (2 * n) * A115140 n

end

end A132341.P18040857436407887948

/-! ## A132341.P14926277911085494926

`A002420(n)*A115141(2*n)`
-/

namespace A132341.P14926277911085494926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A115141 (2 * n)

end

end A132341.P14926277911085494926

/-! ## A132341.P6945937161336004162

`A089408(2*n)*A120588(2*n)`
-/

namespace A132341.P6945937161336004162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n) * A120588 (2 * n)

end

end A132341.P6945937161336004162

/-! ## A132341.P14636807627306610953

`A000108(comp[2*(n+1)])*A089408(2*n)`
-/

namespace A132341.P14636807627306610953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A089408 (2 * n)

end

end A132341.P14636807627306610953

/-! ## A132341.P12543578975143675291

`A068875(A004273(n))*A120588(n)`
-/

namespace A132341.P12543578975143675291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (A004273 n).toNat * A120588 n

end

end A132341.P12543578975143675291

/-! ## A132341.P9474045765310344434

`record[A120588(n)*A280193(n)]*A120588(n)`
-/

namespace A132341.P9474045765310344434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A120588 n

end

end A132341.P9474045765310344434

/-! ## A132341.P7523006168846818624

`A089408(A004273(2*n))*A089408(2*n)`
-/

namespace A132341.P7523006168846818624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A004273 (2 * n)).toNat * A089408 (2 * n)

end

end A132341.P7523006168846818624

/-!
# A132342: a(n) = (a(n-1)*a(n-4)) - (a(n-2)*a(n-3)), with a(1)=a(2)=a(3)=a(4)=1.

The programs for A132342, the canonical program `A132342.P8018226231095763792` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132342 has offset 1).

The definition of A132342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-4)-a(n-2)*a(n-3)` (program `A132342.P8018226231095763792`, by `A132342.P8018226231095763792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132342.P8018226231095763792

`a(n-1)*a(n-4)-a(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132342

/-- `a(n-1)*a(n-4)-a(n-2)*a(n-3)` -/
def P8018226231095763792.Spec : Prop :=
  ∀ n, P8018226231095763792.a n = A132342 (n + 1)

theorem P8018226231095763792.correct : P8018226231095763792.Spec := by
  intro n
  simp only [A132342, Nat.add_sub_cancel]

end A132342

/-!
# A132343: Output of Knuth's "man or boy" test for varying k.

The programs for A132343, the canonical program `A132343.P465737940036006072` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132343 has offset 0).

The definition of A132343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132343.P465737940036006072

`a(n-5)-6*a(n-4)+11*a(n-3)-10*a(n-2)+5*a(n-1)` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=-1, a(8)=-10, a(9)=-30`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132343

/-- `a(n-5)-6*a(n-4)+11*a(n-3)-10*a(n-2)+5*a(n-1)` -/
def P465737940036006072.Spec : Prop :=
  ∀ n, P465737940036006072.a n = A132343 n

theorem P465737940036006072.correct : P465737940036006072.Spec := by
  intro n
  simp only [A132343]

end A132343

/-!
# A132344: a(n) = n*2^(floor(n/2)).

The programs for A132344, the canonical program `A132344.P10172922267131574178` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132344 has offset 0).

The definition of A132344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132344.P10172922267131574178

`n*2^floor(n/2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132344

/-- `n*2^floor(n/2)` -/
def P10172922267131574178.Spec : Prop :=
  ∀ n, P10172922267131574178.a n = (A132344 n : ℚ)

end A132344

/-! ## A132344.P14825449456160717518

`floor(n*∑[2*a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132344.P14825449456160717518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132344.P14825449456160717518

namespace A132344

/-- `floor(n*∑[2*a(n-2)])` -/
def P14825449456160717518.Spec : Prop :=
  ∀ n, (P14825449456160717518.a n : ℤ) = A132344 n

end A132344

/-! ## A132344.P15705447557616516575

`abs(n*A320770(n))`
-/

namespace A132344.P15705447557616516575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A320770 n|

end

end A132344.P15705447557616516575

namespace A132344

/-- `abs(n*A320770(n))` -/
def P15705447557616516575.Spec : Prop :=
  ∀ n, P15705447557616516575.a n = A132344 n

end A132344

/-! ## A132344.P4065285677167024988

`abs(n*Δ[A131575(n)])`
-/

namespace A132344.P4065285677167024988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A132344.P4065285677167024988

namespace A132344

/-- `abs(n*Δ[A131575(n)])` -/
def P4065285677167024988.Spec : Prop :=
  ∀ n, P4065285677167024988.a n = A132344 n

end A132344

/-! ## A132344.P3645397007889114573

`abs(n*A117575(n+1))`
-/

namespace A132344.P3645397007889114573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A117575 (n + 1)|

end

end A132344.P3645397007889114573

namespace A132344

/-- `abs(n*A117575(n+1))` -/
def P3645397007889114573.Spec : Prop :=
  ∀ n, P3645397007889114573.a n = A132344 n

end A132344

/-! ## A132344.P2252342987994911053

`abs(n*Δ[Δ[A016116(n)]])`
-/

namespace A132344.P2252342987994911053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A132344.P2252342987994911053

namespace A132344

/-- `abs(n*Δ[Δ[A016116(n)]])` -/
def P2252342987994911053.Spec : Prop :=
  ∀ n, P2252342987994911053.a n = A132344 n

end A132344

/-! ## A132344.P3618709492071150104

`n/2^A168050(n+1)`
-/

namespace A132344.P3618709492071150104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (A168050 (n + 1) : ℤ)

end

end A132344.P3618709492071150104

namespace A132344

/-- `n/2^A168050(n+1)` -/
def P3618709492071150104.Spec : Prop :=
  ∀ n, P3618709492071150104.a n = (A132344 n : ℚ)

end A132344

/-! ## A132344.P8191963953958663796

`A093968(n+1)-A016116(n)`
-/

namespace A132344.P8191963953958663796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (n + 1) - A016116 n

end

end A132344.P8191963953958663796

namespace A132344

/-- `A093968(n+1)-A016116(n)` -/
def P8191963953958663796.Spec : Prop :=
  ∀ n, P8191963953958663796.a n = A132344 n

end A132344

/-! ## A132344.P11960983630110840657

`A093968(n+1)+A093968(n)-A171647(n+1)`
-/

namespace A132344.P11960983630110840657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (n + 1) + (A093968 n - A171647 (n + 1))

end

end A132344.P11960983630110840657

namespace A132344

/-- `A093968(n+1)+A093968(n)-A171647(n+1)` -/
def P11960983630110840657.Spec : Prop :=
  ∀ n, P11960983630110840657.a n = A132344 n

end A132344

/-! ## A132344.P486355711825140775

`A171647(n+2)-(A016116(n+1)+A016116(n))`
-/

namespace A132344.P486355711825140775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171647 (n + 2) - (A016116 (n + 1) + A016116 n)

end

end A132344.P486355711825140775

namespace A132344

/-- `A171647(n+2)-(A016116(n+1)+A016116(n))` -/
def P486355711825140775.Spec : Prop :=
  ∀ n, P486355711825140775.a n = A132344 n

end A132344

/-! ## A132344.P5855872424436554889

`A187272(n)-A093968(n)`
-/

namespace A132344.P5855872424436554889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187272 n - A093968 n

end

end A132344.P5855872424436554889

namespace A132344

/-- `A187272(n)-A093968(n)` -/
def P5855872424436554889.Spec : Prop :=
  ∀ n, P5855872424436554889.a n = A132344 n

end A132344

/-! ## A132344.P4805336088019366660

`A132314(n)/A000034(n)`
-/

namespace A132344.P4805336088019366660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132314 n : ℚ) / (A000034 n : ℚ)

end

end A132344.P4805336088019366660

namespace A132344

/-- `A132314(n)/A000034(n)` -/
def P4805336088019366660.Spec : Prop :=
  ∀ n, P4805336088019366660.a n = (A132344 n : ℚ)

end A132344

/-! ## A132344.P13680409530808419521

`gcd(A132314(n), A316386(n))`
-/

namespace A132344.P13680409530808419521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132314 n) (A316386 n)

end

end A132344.P13680409530808419521

namespace A132344

/-- `gcd(A132314(n), A316386(n))` -/
def P13680409530808419521.Spec : Prop :=
  ∀ n, (P13680409530808419521.a n : ℤ) = A132344 n

end A132344

/-! ## A132344.P17716809925712632063

`∪[A058922(n+1), A014480(n)]`
-/

namespace A132344.P17716809925712632063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014480 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132344.P17716809925712632063

namespace A132344

/-- `∪[A058922(n+1), A014480(n)]` -/
def P17716809925712632063.Spec : Prop :=
  ∀ n, (P17716809925712632063.a n : ℤ) = A132344 n

end A132344

/-! ## A132344.P12871313393387538708

`n*∏[gcd(2, n)]/2`
-/

namespace A132344.P12871313393387538708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A132344.P12871313393387538708

namespace A132344

/-- `n*∏[gcd(2, n)]/2` -/
def P12871313393387538708.Spec : Prop :=
  ∀ n, P12871313393387538708.a n = (A132344 n : ℚ)

end A132344

/-! ## A132344.P3268471765809822054

`ogf((x+4x^2+2x^3)/(1-4x^2+4x^4))`
-/

namespace A132344.P3268471765809822054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 2] [1, 0, -4, 0, 4] n

end

end A132344.P3268471765809822054

namespace A132344

/-- `ogf((x+4x^2+2x^3)/(1-4x^2+4x^4))` -/
def P3268471765809822054.Spec : Prop :=
  ∀ n, P3268471765809822054.a n = A132344 n

end A132344

/-! ## A132344.P6812179612739166086

`4*n*gcd(a(n-1), a(n-2))/2` with `a(0)=0, a(1)=1`
-/

namespace A132344.P6812179612739166086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 * (n * Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2)))) : ℚ) / 2

end

end A132344.P6812179612739166086

namespace A132344

/-- `4*n*gcd(a(n-1), a(n-2))/2` -/
def P6812179612739166086.Spec : Prop :=
  ∀ n, P6812179612739166086.a n = (A132344 n : ℚ)

end A132344

/-! ## A132344.P4837155298165410387

`n*A060546(n+1)/2`
-/

namespace A132344.P4837155298165410387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A060546 (n + 1) : ℚ) / 2

end

end A132344.P4837155298165410387

namespace A132344

/-- `n*A060546(n+1)/2` -/
def P4837155298165410387.Spec : Prop :=
  ∀ n, P4837155298165410387.a n = (A132344 n : ℚ)

end A132344

/-! ## A132344.P7364948568971829939

`gcd(2*n*a(n-1), 2*n*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A132344.P7364948568971829939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd (2 * n * a (n - 1)) (2 * n * a (n - 2))

end

end A132344.P7364948568971829939

namespace A132344

/-- `gcd(2*n*a(n-1), 2*n*a(n-2))` -/
def P7364948568971829939.Spec : Prop :=
  ∀ n, (P7364948568971829939.a n : ℤ) = A132344 n

end A132344

/-! ## A132344.P10335645325740592248

`A118442(n)/A117575(n)`
-/

namespace A132344.P10335645325740592248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118442 n : ℚ) / (A117575 n : ℚ)

end

end A132344.P10335645325740592248

namespace A132344

/-- `A118442(n)/A117575(n)` -/
def P10335645325740592248.Spec : Prop :=
  ∀ n, P10335645325740592248.a n = (A132344 n : ℚ)

end A132344

/-!
# A132345: Number of increasing three-term geometric sequences from the integers {1,2,...,n}.

The programs for A132345, the canonical program `A132345.P9558372219206818084` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132345 has offset 1).

The definition of A132345 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120486, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A132345.P8361065844243530928

`A132189(n+1)/2`
-/

namespace A132345.P8361065844243530928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132189 (n + 1) : ℚ) / 2

end

end A132345.P8361065844243530928

namespace A132345

/-- `A132189(n+1)/2` -/
def P8361065844243530928.Spec : Prop :=
  ∀ n, P8361065844243530928.a n = (A132345 (n + 1) : ℚ)

theorem P8361065844243530928.correct : P8361065844243530928.Spec := by
  intro n
  simp only [A132345, Nat.add_sub_cancel, A132345.P8361065844243530928.a, A132345.P9558372219206818084.a, A120486, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132189, A132189.P8063069834652726525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132345

/-! ## A132345.P9558372219206818084

`A120486(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132345

/-- `A120486(n+1)-(n+1)` -/
def P9558372219206818084.Spec : Prop :=
  ∀ n, P9558372219206818084.a n = A132345 (n + 1)

theorem P9558372219206818084.correct : P9558372219206818084.Spec := by
  intro n
  simp only [A132345, Nat.add_sub_cancel]

end A132345

/-! ## A132345.P1533839278077394108

`(A132188(n+1)-(n+1))/2`
-/

namespace A132345.P1533839278077394108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132188 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A132345.P1533839278077394108

namespace A132345

/-- `(A132188(n+1)-(n+1))/2` -/
def P1533839278077394108.Spec : Prop :=
  ∀ n, P1533839278077394108.a n = (A132345 (n + 1) : ℚ)

theorem P1533839278077394108.correct : P1533839278077394108.Spec := by
  intro n
  simp only [A132345, Nat.add_sub_cancel, A132345.P1533839278077394108.a, A132345.P9558372219206818084.a, A120486, A120486.P15640467166856276779.f2, A120486.P15640467166856276779.f1, A120486.P15640467166856276779.a, A132188, A132188.P7469144520474104274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132345

/-! ## A132345.P799747676969839075

`∑[∏{p}[n+1, #^val(n+1, #²)]-1]`
-/

namespace A132345.P799747676969839075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P799747676969839075

namespace A132345

/-- `∑[∏{p}[n+1, #^val(n+1, #²)]-1]` -/
def P799747676969839075.Spec : Prop :=
  ∀ n, P799747676969839075.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P13596190969008359727

`∑[A057918(n+1)]`
-/

namespace A132345.P13596190969008359727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P13596190969008359727

namespace A132345

/-- `∑[A057918(n+1)]` -/
def P13596190969008359727.Spec : Prop :=
  ∀ n, P13596190969008359727.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P9742633866296655209

`∑[A000188(n+1)-1]`
-/

namespace A132345.P9742633866296655209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P9742633866296655209

namespace A132345

/-- `∑[A000188(n+1)-1]` -/
def P9742633866296655209.Spec : Prop :=
  ∀ n, P9742633866296655209.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P12080306041637616334

`∑[sqrt(A008833(n+1))-1]`
-/

namespace A132345.P12080306041637616334
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P12080306041637616334

namespace A132345

/-- `∑[sqrt(A008833(n+1))-1]` -/
def P12080306041637616334.Spec : Prop :=
  ∀ n, P12080306041637616334.a n = (A132345 (n + 1) : ℝ)

end A132345

/-! ## A132345.P15504739045838880524

`∑[A337101(2*(n+1))-1]`
-/

namespace A132345.P15504739045838880524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P15504739045838880524

namespace A132345

/-- `∑[A337101(2*(n+1))-1]` -/
def P15504739045838880524.Spec : Prop :=
  ∀ n, P15504739045838880524.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P9804087451037694744

`A002620(n)-A362935(n+1)`
-/

namespace A132345.P9804087451037694744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A362935 (n + 1)

end

end A132345.P9804087451037694744

namespace A132345

/-- `A002620(n)-A362935(n+1)` -/
def P9804087451037694744.Spec : Prop :=
  ∀ n, P9804087451037694744.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P7861796298979293430

`∑[A019554(A003557(n+1))-1]`
-/

namespace A132345.P7861796298979293430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P7861796298979293430

namespace A132345

/-- `∑[A019554(A003557(n+1))-1]` -/
def P7861796298979293430.Spec : Prop :=
  ∀ n, P7861796298979293430.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P1693742890477078147

`A072391(n+1)-A182082(n+1)`
-/

namespace A132345.P1693742890477078147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072391 (n + 1) - A182082 (n + 1)

end

end A132345.P1693742890477078147

namespace A132345

/-- `A072391(n+1)-A182082(n+1)` -/
def P1693742890477078147.Spec : Prop :=
  ∀ n, P1693742890477078147.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P4764466996180635460

`(A007590(n)-A362934(n+1))/2`
-/

namespace A132345.P4764466996180635460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 n - A362934 (n + 1) : ℚ) / 2

end

end A132345.P4764466996180635460

namespace A132345

/-- `(A007590(n)-A362934(n+1))/2` -/
def P4764466996180635460.Spec : Prop :=
  ∀ n, P4764466996180635460.a n = (A132345 (n + 1) : ℚ)

end A132345

/-! ## A132345.P10774315422300765774

`A132188(n+1)%A120486(n+1)`
-/

namespace A132345.P10774315422300765774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132188 (n + 1)) (A120486 (n + 1))

end

end A132345.P10774315422300765774

namespace A132345

/-- `A132188(n+1)%A120486(n+1)` -/
def P10774315422300765774.Spec : Prop :=
  ∀ n, P10774315422300765774.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P13833758914057957187

`∑[A117811(2*(n+1))-1]`
-/

namespace A132345.P13833758914057957187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P13833758914057957187

namespace A132345

/-- `∑[A117811(2*(n+1))-1]` -/
def P13833758914057957187.Spec : Prop :=
  ∀ n, P13833758914057957187.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P5147011352920788666

`A001281(A132189(n+1))`
-/

namespace A132345.P5147011352920788666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A132189 (n + 1)).toNat

end

end A132345.P5147011352920788666

namespace A132345

/-- `A001281(A132189(n+1))` -/
def P5147011352920788666.Spec : Prop :=
  ∀ n, P5147011352920788666.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P1355249597277880981

`∑[A070139(4*(n+1))]`
-/

namespace A132345.P1355249597277880981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P1355249597277880981

namespace A132345

/-- `∑[A070139(4*(n+1))]` -/
def P1355249597277880981.Spec : Prop :=
  ∀ n, P1355249597277880981.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P6448395223337996164

`∑[A309395(2*(n+1))]`
-/

namespace A132345.P6448395223337996164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P6448395223337996164

namespace A132345

/-- `∑[A309395(2*(n+1))]` -/
def P6448395223337996164.Spec : Prop :=
  ∀ n, P6448395223337996164.a n = A132345 (n + 1)

end A132345

/-! ## A132345.P124636104973606900

`∑[A053164((n+1)²)-1]`
-/

namespace A132345.P124636104973606900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 ((n + 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132345.P124636104973606900

namespace A132345

/-- `∑[A053164((n+1)²)-1]` -/
def P124636104973606900.Spec : Prop :=
  ∀ n, P124636104973606900.a n = A132345 (n + 1)

end A132345

/-!
# A132347: Concatenation of first n members of the Padovan sequence A000931.

The programs for A132347, there is no canonical definition to state claims against.
-/

/-! ## A132347.P8011831873755524020

`xor(A002620(A309861(n)), A102397(n))`
-/

namespace A132347.P8011831873755524020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002620 (A309861 n).toNat) (A102397 n)

end

end A132347.P8011831873755524020

/-! ## A132347.P1591384202889502558

`or(A000931(n)^∑[10^n+1], A102397(n))`
-/

namespace A132347.P1591384202889502558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000931 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (A102397 n)

end

end A132347.P1591384202889502558

/-! ## A132347.P1291772839245944719

`A102397(n)+A011745(A008989(n))`
-/

namespace A132347.P1291772839245944719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102397 n + A011745 (A008989 n).toNat

end

end A132347.P1291772839245944719

/-! ## A132347.P12218815694869950743

`A367512(A000984(n))+A102397(n)`
-/

namespace A132347.P12218815694869950743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367512 (A000984 n).toNat + A102397 n

end

end A132347.P12218815694869950743

/-!
# A132348: Lengths of the 3x+1 trajectories associated with the record values in A006884.

The programs for A132348, there is no canonical definition to state claims against.
-/

/-! ## A132348.P652960070659768416

`A006577(A006884(n+1))`
-/

namespace A132348.P652960070659768416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A006884 (n + 1)).toNat

end

end A132348.P652960070659768416

/-! ## A132348.P14954071897964867260

`A008908(abs(A006884(n+1)-n)+n)-1`
-/

namespace A132348.P14954071897964867260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (|A006884 (n + 1) - (n : ℤ)| + (n : ℤ)).toNat - 1

end

end A132348.P14954071897964867260

/-! ## A132348.P13462659959185781262

`A139399(A006884(n+1))+A130130(n)`
-/

namespace A132348.P13462659959185781262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A006884 (n + 1)).toNat + A130130 n

end

end A132348.P13462659959185781262

/-! ## A132348.P7412799789657780246

`A008908(A006884(n+1))-A007318(C(2, n))`
-/

namespace A132348.P7412799789657780246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A006884 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A132348.P7412799789657780246

/-! ## A132348.P7059200164544847178

`A008908(A006884(n+1))-A007318(∑[n+1])`
-/

namespace A132348.P7059200164544847178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A006884 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132348.P7059200164544847178

/-!
# A132349: If n is a k-th power with k >= 2 then a(n) = k, otherwise a(n) = 0.

The programs for A132349, the canonical program `A132349.P7980671611498676239` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132349 has offset 1).

The definition of A132349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132349.P7980671611498676239

`A052409(n+1)*A075802(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A132349

/-- `A052409(n+1)*A075802(n+1)` -/
def P7980671611498676239.Spec : Prop :=
  ∀ n, P7980671611498676239.a n = A132349 (n + 1)

theorem P7980671611498676239.correct : P7980671611498676239.Spec := by
  intro n
  simp only [A132349, Nat.add_sub_cancel]

end A132349

/-! ## A132349.P4478308050501244470

`A052409(n+1)%A295924(n+1)`
-/

namespace A132349.P4478308050501244470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (n + 1)) (A295924 (n + 1))

end

end A132349.P4478308050501244470

namespace A132349

/-- `A052409(n+1)%A295924(n+1)` -/
def P4478308050501244470.Spec : Prop :=
  ∀ n, P4478308050501244470.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P6692144510278970603

`A253641(n+1)%A253641(n+1)²`
-/

namespace A132349.P6692144510278970603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253641 (n + 1)) (A253641 (n + 1) ^ 2)

end

end A132349.P6692144510278970603

namespace A132349

/-- `A253641(n+1)%A253641(n+1)²` -/
def P6692144510278970603.Spec : Prop :=
  ∀ n, P6692144510278970603.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P14275719214544524979

`(1-A132350(n+1))*A052409(n+1)`
-/

namespace A132349.P14275719214544524979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A132350 (n + 1)) * A052409 (n + 1)

end

end A132349.P14275719214544524979

namespace A132349

/-- `(1-A132350(n+1))*A052409(n+1)` -/
def P14275719214544524979.Spec : Prop :=
  ∀ n, P14275719214544524979.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P15257659827424167977

`A052409(n+1)*A052409(A294338(n+1))`
-/

namespace A132349.P15257659827424167977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A052409 (A294338 (n + 1)).toNat

end

end A132349.P15257659827424167977

namespace A132349

/-- `A052409(n+1)*A052409(A294338(n+1))` -/
def P15257659827424167977.Spec : Prop :=
  ∀ n, P15257659827424167977.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P14536846184785519704

`A052409(n+1)*A052409(A316789(n+1))`
-/

namespace A132349.P14536846184785519704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A052409 (A316789 (n + 1)).toNat

end

end A132349.P14536846184785519704

namespace A132349

/-- `A052409(n+1)*A052409(A316789(n+1))` -/
def P14536846184785519704.Spec : Prop :=
  ∀ n, P14536846184785519704.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P10994401119780389837

`A052409(n+1)*A327500(A327502(n+1))`
-/

namespace A132349.P10994401119780389837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A327500 (A327502 (n + 1)).toNat

end

end A132349.P10994401119780389837

namespace A132349

/-- `A052409(n+1)*A327500(A327502(n+1))` -/
def P10994401119780389837.Spec : Prop :=
  ∀ n, P10994401119780389837.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P11388379083792833765

`A052409(n+1)*A249442(A052409(n+1)²)`
-/

namespace A132349.P11388379083792833765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A249442 (A052409 (n + 1) ^ 2).toNat

end

end A132349.P11388379083792833765

namespace A132349

/-- `A052409(n+1)*A249442(A052409(n+1)²)` -/
def P11388379083792833765.Spec : Prop :=
  ∀ n, P11388379083792833765.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P9690704956159667118

`A157928(A253641(n+1)²)*A253641(n+1)`
-/

namespace A132349.P9690704956159667118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A253641 (n + 1) ^ 2).toNat * A253641 (n + 1)

end

end A132349.P9690704956159667118

namespace A132349

/-- `A157928(A253641(n+1)²)*A253641(n+1)` -/
def P9690704956159667118.Spec : Prop :=
  ∀ n, P9690704956159667118.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P12460809266835881057

`A249442(A253641(n+1)²)*A253641(n+1)`
-/

namespace A132349.P12460809266835881057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A253641 (n + 1) ^ 2).toNat * A253641 (n + 1)

end

end A132349.P12460809266835881057

namespace A132349

/-- `A249442(A253641(n+1)²)*A253641(n+1)` -/
def P12460809266835881057.Spec : Prop :=
  ∀ n, P12460809266835881057.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P18085425274048920385

`A253641(n+1)*A267870(A253641(n+1)²)`
-/

namespace A132349.P18085425274048920385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1) * A267870 (A253641 (n + 1) ^ 2).toNat

end

end A132349.P18085425274048920385

namespace A132349

/-- `A253641(n+1)*A267870(A253641(n+1)²)` -/
def P18085425274048920385.Spec : Prop :=
  ∀ n, P18085425274048920385.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P14249335401780932507

`A052409(n+1)*A052409(∏{p}[A052409(n+1), #])`
-/

namespace A132349.P14249335401780932507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A052409 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A132349.P14249335401780932507

namespace A132349

/-- `A052409(n+1)*A052409(∏{p}[A052409(n+1), #])` -/
def P14249335401780932507.Spec : Prop :=
  ∀ n, P14249335401780932507.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P4229229885582278031

`A052409(n+1)+A072292(n+1)-A076411(n+1)`
-/

namespace A132349.P4229229885582278031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) + (A072292 (n + 1) - A076411 (n + 1))

end

end A132349.P4229229885582278031

namespace A132349

/-- `A052409(n+1)+A072292(n+1)-A076411(n+1)` -/
def P4229229885582278031.Spec : Prop :=
  ∀ n, P4229229885582278031.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P2099157122225871753

`(A069623(n+1)-A076411(n+1))*A052409(n+1)`
-/

namespace A132349.P2099157122225871753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069623 (n + 1) - A076411 (n + 1)) * A052409 (n + 1)

end

end A132349.P2099157122225871753

namespace A132349

/-- `(A069623(n+1)-A076411(n+1))*A052409(n+1)` -/
def P2099157122225871753.Spec : Prop :=
  ∀ n, P2099157122225871753.a n = A132349 (n + 1)

theorem P2099157122225871753.correct : P2099157122225871753.Spec := by
  intro n
  simp only [A132349, Nat.add_sub_cancel, A132349.P2099157122225871753.a, A132349.P7980671611498676239.a, A052409, A052409.P7338948793466901153.a, A069623, A069623.P16188465153472375596.a, A075802, A075802.P15418155707765850726.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, A006530, A006530.P13372528560459906635.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132349

/-! ## A132349.P2299558157283865806

`A052409(n+1)*A057427(A052409(n+1)-A057427(n))`
-/

namespace A132349.P2299558157283865806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) * A057427 (A052409 (n + 1) - A057427 n).toNat

end

end A132349.P2299558157283865806

namespace A132349

/-- `A052409(n+1)*A057427(A052409(n+1)-A057427(n))` -/
def P2299558157283865806.Spec : Prop :=
  ∀ n, P2299558157283865806.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P14943138776519604637

`A052409(n+1)+A075802(n+1)-A057427(n+1)`
-/

namespace A132349.P14943138776519604637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1) + (A075802 (n + 1) - A057427 (n + 1))

end

end A132349.P14943138776519604637

namespace A132349

/-- `A052409(n+1)+A075802(n+1)-A057427(n+1)` -/
def P14943138776519604637.Spec : Prop :=
  ∀ n, P14943138776519604637.a n = A132349 (n + 1)

end A132349

/-! ## A132349.P6552800122823402297

`(A076411(n+2)-A076411(n+1))*A052409(n+1)`
-/

namespace A132349.P6552800122823402297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076411 (n + 2) - A076411 (n + 1)) * A052409 (n + 1)

end

end A132349.P6552800122823402297

namespace A132349

/-- `(A076411(n+2)-A076411(n+1))*A052409(n+1)` -/
def P6552800122823402297.Spec : Prop :=
  ∀ n, P6552800122823402297.a n = A132349 (n + 1)

theorem P6552800122823402297.correct : P6552800122823402297.Spec := by
  intro n
  simp only [A132349, Nat.add_sub_cancel, A132349.P6552800122823402297.a, A132349.P7980671611498676239.a, A052409, A052409.P7338948793466901153.a, A075802, A075802.P15418155707765850726.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A069623, A069623.P16188465153472375596.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, A006530, A006530.P13372528560459906635.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132349

/-!
# A132350: If n > 1 is a k-th power with k >= 2 then a(n) = 0, otherwise a(n) = 1.

The programs for A132350, the canonical program `A132350.P6308238298466199020` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132350 has offset 1).

The definition of A132350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132350.P10237925364872001089

`A316782(n+1)%2`
-/

namespace A132350.P10237925364872001089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316782 (n + 1)) 2

end

end A132350.P10237925364872001089

namespace A132350

/-- `A316782(n+1)%2` -/
def P10237925364872001089.Spec : Prop :=
  ∀ n, P10237925364872001089.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P17010495049013437957

`A316789(n+1)%2`
-/

namespace A132350.P17010495049013437957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316789 (n + 1)) 2

end

end A132350.P17010495049013437957

namespace A132350

/-- `A316789(n+1)%2` -/
def P17010495049013437957.Spec : Prop :=
  ∀ n, P17010495049013437957.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P7366302216518509231

`floor(sqrt(A175083(n+1)))`
-/

namespace A132350.P7366302216518509231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A175083 (n + 1))

end

end A132350.P7366302216518509231

namespace A132350

/-- `floor(sqrt(A175083(n+1)))` -/
def P7366302216518509231.Spec : Prop :=
  ∀ n, P7366302216518509231.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P6308238298466199020

`∑{d}[n+1, A304362(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A132350

/-- `∑{d}[n+1, A304362(#)]` -/
def P6308238298466199020.Spec : Prop :=
  ∀ n, P6308238298466199020.a n = A132350 (n + 1)

theorem P6308238298466199020.correct : P6308238298466199020.Spec := by
  intro n
  simp only [A132350, Nat.add_sub_cancel]

end A132350

/-! ## A132350.P17240658359584291635

`char[comp[A045542(n+1)]]`
-/

namespace A132350.P17240658359584291635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A132350.P17240658359584291635

namespace A132350

/-- `char[comp[A045542(n+1)]]` -/
def P17240658359584291635.Spec : Prop :=
  ∀ n, (P17240658359584291635.a n : ℤ) = A132350 (n + 1)

end A132350

/-! ## A132350.P8985113728026317169

`round(acot(A175069(n+1)))`
-/

namespace A132350.P8985113728026317169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A175069 (n + 1) : ℝ))

end

end A132350.P8985113728026317169

namespace A132350

/-- `round(acot(A175069(n+1)))` -/
def P8985113728026317169.Spec : Prop :=
  ∀ n, P8985113728026317169.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P2397780481476218951

`C(2, A132349(n+1)²)`
-/

namespace A132350.P2397780481476218951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A132349 (n + 1) ^ 2).toNat

end

end A132350.P2397780481476218951

namespace A132350

/-- `C(2, A132349(n+1)²)` -/
def P2397780481476218951.Spec : Prop :=
  ∀ n, (P2397780481476218951.a n : ℤ) = A132350 (n + 1)

end A132350

/-! ## A132350.P3913709318952451922

`floor(1/A089723(n+1))`
-/

namespace A132350.P3913709318952451922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A089723 (n + 1) : ℚ)⌋

end

end A132350.P3913709318952451922

namespace A132350

/-- `floor(1/A089723(n+1))` -/
def P3913709318952451922.Spec : Prop :=
  ∀ n, P3913709318952451922.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P12003918574779664309

`floor(1/A253641(n+1))`
-/

namespace A132350.P12003918574779664309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A253641 (n + 1) : ℚ)⌋

end

end A132350.P12003918574779664309

namespace A132350

/-- `floor(1/A253641(n+1))` -/
def P12003918574779664309.Spec : Prop :=
  ∀ n, P12003918574779664309.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P4562640624871626410

`floor(1/A294336(n+1))`
-/

namespace A132350.P4562640624871626410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A294336 (n + 1) : ℚ)⌋

end

end A132350.P4562640624871626410

namespace A132350

/-- `floor(1/A294336(n+1))` -/
def P4562640624871626410.Spec : Prop :=
  ∀ n, P4562640624871626410.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P10822441822879326949

`floor(1/A294338(n+1))`
-/

namespace A132350.P10822441822879326949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A294338 (n + 1) : ℚ)⌋

end

end A132350.P10822441822879326949

namespace A132350

/-- `floor(1/A294338(n+1))` -/
def P10822441822879326949.Spec : Prop :=
  ∀ n, P10822441822879326949.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P18243400702225590369

`floor(1/A295920(n+1))`
-/

namespace A132350.P18243400702225590369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A295920 (n + 1) : ℚ)⌋

end

end A132350.P18243400702225590369

namespace A132350

/-- `floor(1/A295920(n+1))` -/
def P18243400702225590369.Spec : Prop :=
  ∀ n, P18243400702225590369.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P16476245220442059033

`floor(1/A295924(n+1))`
-/

namespace A132350.P16476245220442059033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A295924 (n + 1) : ℚ)⌋

end

end A132350.P16476245220442059033

namespace A132350

/-- `floor(1/A295924(n+1))` -/
def P16476245220442059033.Spec : Prop :=
  ∀ n, P16476245220442059033.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P10874748613779620303

`floor(1/A295931(n+1))`
-/

namespace A132350.P10874748613779620303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A295931 (n + 1) : ℚ)⌋

end

end A132350.P10874748613779620303

namespace A132350

/-- `floor(1/A295931(n+1))` -/
def P10874748613779620303.Spec : Prop :=
  ∀ n, P10874748613779620303.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P8942765953415342901

`floor(1/A316790(n+1))`
-/

namespace A132350.P8942765953415342901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A316790 (n + 1) : ℚ)⌋

end

end A132350.P8942765953415342901

namespace A132350

/-- `floor(1/A316790(n+1))` -/
def P8942765953415342901.Spec : Prop :=
  ∀ n, P8942765953415342901.a n = A132350 (n + 1)

end A132350

/-! ## A132350.P13707335220311149951

`char[A052410(n+1)-1]`
-/

namespace A132350.P13707335220311149951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A132350.P13707335220311149951

namespace A132350

/-- `char[A052410(n+1)-1]` -/
def P13707335220311149951.Spec : Prop :=
  ∀ n, (P13707335220311149951.a n : ℤ) = A132350 (n + 1)

end A132350

/-! ## A132350.P10195205669193851455

`char[A175070(n+1)+n]`
-/

namespace A132350.P10195205669193851455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A132350.P10195205669193851455

namespace A132350

/-- `char[A175070(n+1)+n]` -/
def P10195205669193851455.Spec : Prop :=
  ∀ n, (P10195205669193851455.a n : ℤ) = A132350 (n + 1)

end A132350

/-! ## A132350.P13396096070720476118

`C(2, A327502(n+1)+1)`
-/

namespace A132350.P13396096070720476118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A327502 (n + 1) + 1).toNat

end

end A132350.P13396096070720476118

namespace A132350

/-- `C(2, A327502(n+1)+1)` -/
def P13396096070720476118.Spec : Prop :=
  ∀ n, (P13396096070720476118.a n : ℤ) = A132350 (n + 1)

end A132350

/-! ## A132350.P10607625883775797949

`C(2, 2*A052409(n+1))`
-/

namespace A132350.P10607625883775797949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A052409 (n + 1)).toNat

end

end A132350.P10607625883775797949

namespace A132350

/-- `C(2, 2*A052409(n+1))` -/
def P10607625883775797949.Spec : Prop :=
  ∀ n, (P10607625883775797949.a n : ℤ) = A132350 (n + 1)

end A132350

/-! ## A132350.P3857747325977059803

`(1-A075802(n+1))^n`
-/

namespace A132350.P3857747325977059803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A075802 (n + 1)) ^ n

end

end A132350.P3857747325977059803

namespace A132350

/-- `(1-A075802(n+1))^n` -/
def P3857747325977059803.Spec : Prop :=
  ∀ n, P3857747325977059803.a n = A132350 (n + 1)

end A132350

/-!
# A132351: Partial sums of A132350.

The programs for A132351, the canonical program `A132351.P15635442049154509357` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132351 has offset 1).

The definition of A132351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132351.P16878139815735056032

`∑[A132350(n+1)]`
-/

namespace A132351.P16878139815735056032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P16878139815735056032

namespace A132351

/-- `∑[A132350(n+1)]` -/
def P16878139815735056032.Spec : Prop :=
  ∀ n, P16878139815735056032.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P11604254115309757998

`∑[A316782(n+1)%2]`
-/

namespace A132351.P11604254115309757998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316782 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P11604254115309757998

namespace A132351

/-- `∑[A316782(n+1)%2]` -/
def P11604254115309757998.Spec : Prop :=
  ∀ n, P11604254115309757998.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P8776681367527078493

`∑[A316789(n+1)%2]`
-/

namespace A132351.P8776681367527078493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316789 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P8776681367527078493

namespace A132351

/-- `∑[A316789(n+1)%2]` -/
def P8776681367527078493.Spec : Prop :=
  ∀ n, P8776681367527078493.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P6293452058115784292

`∑[floor(sqrt(A175083(n+1)))]`
-/

namespace A132351.P6293452058115784292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A175083 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P6293452058115784292

namespace A132351

/-- `∑[floor(sqrt(A175083(n+1)))]` -/
def P6293452058115784292.Spec : Prop :=
  ∀ n, P6293452058115784292.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P15635442049154509357

`1-A072292(n+1)+n`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A132351

/-- `1-A072292(n+1)+n` -/
def P15635442049154509357.Spec : Prop :=
  ∀ n, P15635442049154509357.a n = A132351 (n + 1)

theorem P15635442049154509357.correct : P15635442049154509357.Spec := by
  intro n
  simp only [A132351, Nat.add_sub_cancel]

end A132351

/-! ## A132351.P9614972566792163930

`2-A069623(n+1)+n`
-/

namespace A132351.P9614972566792163930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A069623 (n + 1) + (n : ℤ)

end

end A132351.P9614972566792163930

namespace A132351

/-- `2-A069623(n+1)+n` -/
def P9614972566792163930.Spec : Prop :=
  ∀ n, P9614972566792163930.a n = A132351 (n + 1)

theorem P9614972566792163930.correct : P9614972566792163930.Spec := by
  intro n
  simp only [A132351, Nat.add_sub_cancel, A132351.P9614972566792163930.a, A132351.P15635442049154509357.a, A069623, A069623.P16188465153472375596.a, A072292, A072292.P7243147247323871744.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132351

/-! ## A132351.P7848028056027544727

`∑[C(2, A132349(n+1)²)]`
-/

namespace A132351.P7848028056027544727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A132349 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P7848028056027544727

namespace A132351

/-- `∑[C(2, A132349(n+1)²)]` -/
def P7848028056027544727.Spec : Prop :=
  ∀ n, (P7848028056027544727.a n : ℤ) = A132351 (n + 1)

end A132351

/-! ## A132351.P8367187876888830790

`∑[1-char[A045542(n+1)]]`
-/

namespace A132351.P8367187876888830790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P8367187876888830790

namespace A132351

/-- `∑[1-char[A045542(n+1)]]` -/
def P8367187876888830790.Spec : Prop :=
  ∀ n, P8367187876888830790.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P6608377568208296094

`∑[char[A052410(n+1)-1]]`
-/

namespace A132351.P6608377568208296094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P6608377568208296094

namespace A132351

/-- `∑[char[A052410(n+1)-1]]` -/
def P6608377568208296094.Spec : Prop :=
  ∀ n, (P6608377568208296094.a n : ℤ) = A132351 (n + 1)

end A132351

/-! ## A132351.P16318117718656958738

`∑[A000035(A316789(n+1))]`
-/

namespace A132351.P16318117718656958738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316789 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P16318117718656958738

namespace A132351

/-- `∑[A000035(A316789(n+1))]` -/
def P16318117718656958738.Spec : Prop :=
  ∀ n, P16318117718656958738.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P5479336839270051466

`∑[1-A001221(A327502(n+1))]`
-/

namespace A132351.P5479336839270051466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001221 (A327502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P5479336839270051466

namespace A132351

/-- `∑[1-A001221(A327502(n+1))]` -/
def P5479336839270051466.Spec : Prop :=
  ∀ n, P5479336839270051466.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P11351681198073569985

`∑[1-A052409(A294338(n+1))]`
-/

namespace A132351.P11351681198073569985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A052409 (A294338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P11351681198073569985

namespace A132351

/-- `∑[1-A052409(A294338(n+1))]` -/
def P11351681198073569985.Spec : Prop :=
  ∀ n, P11351681198073569985.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P2148539148927828429

`n+1-A076411(A081676(n+1))`
-/

namespace A132351.P2148539148927828429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A076411 (A081676 (n + 1)).toNat

end

end A132351.P2148539148927828429

namespace A132351

/-- `n+1-A076411(A081676(n+1))` -/
def P2148539148927828429.Spec : Prop :=
  ∀ n, P2148539148927828429.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P17005425002691455234

`n+2-A076411(n+2)`
-/

namespace A132351.P17005425002691455234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A076411 (n + 2)

end

end A132351.P17005425002691455234

namespace A132351

/-- `n+2-A076411(n+2)` -/
def P17005425002691455234.Spec : Prop :=
  ∀ n, P17005425002691455234.a n = A132351 (n + 1)

theorem P17005425002691455234.correct : P17005425002691455234.Spec := by
  intro n
  simp only [A132351, Nat.add_sub_cancel, A132351.P17005425002691455234.a, A132351.P15635442049154509357.a, A072292, A072292.P7243147247323871744.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A069623, A069623.P16188465153472375596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132351

/-! ## A132351.P7232805390561701264

`abs(A076411(n+2)+A001478(n+2))`
-/

namespace A132351.P7232805390561701264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076411 (n + 2) + A001478 (n + 2)|

end

end A132351.P7232805390561701264

namespace A132351

/-- `abs(A076411(n+2)+A001478(n+2))` -/
def P7232805390561701264.Spec : Prop :=
  ∀ n, P7232805390561701264.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P2942541165551468125

`A132352(n+2)-(A132352(n+1)+A132350(n+2))`
-/

namespace A132351.P2942541165551468125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132352 (n + 2) - (A132352 (n + 1) + A132350 (n + 2))

end

end A132351.P2942541165551468125

namespace A132351

/-- `A132352(n+2)-(A132352(n+1)+A132350(n+2))` -/
def P2942541165551468125.Spec : Prop :=
  ∀ n, P2942541165551468125.a n = A132351 (n + 1)

end A132351

/-! ## A132351.P9424943883255239936

`∑[floor(atan(A023048(n+1)))]`
-/

namespace A132351.P9424943883255239936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A023048 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132351.P9424943883255239936

namespace A132351

/-- `∑[floor(atan(A023048(n+1)))]` -/
def P9424943883255239936.Spec : Prop :=
  ∀ n, P9424943883255239936.a n = A132351 (n + 1)

end A132351

/-!
# A132352: Partial sums of A132351.

The programs for A132352, the canonical program `A132352.P352406761875659028` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132352 has offset 1).

The definition of A132352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132352.P352406761875659028

`∑[A132351(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A132352

/-- `∑[A132351(n+1)]` -/
def P352406761875659028.Spec : Prop :=
  ∀ n, P352406761875659028.a n = A132352 (n + 1)

theorem P352406761875659028.correct : P352406761875659028.Spec := by
  intro n
  simp only [A132352, Nat.add_sub_cancel]

end A132352

/-! ## A132352.P13305773923559585181

`∑[∑[A132350(n+1)]]`
-/

namespace A132352.P13305773923559585181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P13305773923559585181

namespace A132352

/-- `∑[∑[A132350(n+1)]]` -/
def P13305773923559585181.Spec : Prop :=
  ∀ n, P13305773923559585181.a n = A132352 (n + 1)

end A132352

/-! ## A132352.P9594673208591535722

`∑[∑[A316782(n+1)%2]]`
-/

namespace A132352.P9594673208591535722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316782 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P9594673208591535722

namespace A132352

/-- `∑[∑[A316782(n+1)%2]]` -/
def P9594673208591535722.Spec : Prop :=
  ∀ n, P9594673208591535722.a n = A132352 (n + 1)

end A132352

/-! ## A132352.P9759595343136162951

`∑[∑[A316789(n+1)%2]]`
-/

namespace A132352.P9759595343136162951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316789 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P9759595343136162951

namespace A132352

/-- `∑[∑[A316789(n+1)%2]]` -/
def P9759595343136162951.Spec : Prop :=
  ∀ n, P9759595343136162951.a n = A132352 (n + 1)

end A132352

/-! ## A132352.P2838134808479968870

`∑[n+1-A072292(n+1)]`
-/

namespace A132352.P2838134808479968870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A072292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P2838134808479968870

namespace A132352

/-- `∑[n+1-A072292(n+1)]` -/
def P2838134808479968870.Spec : Prop :=
  ∀ n, P2838134808479968870.a n = A132352 (n + 1)

theorem P2838134808479968870.correct : P2838134808479968870.Spec := by
  intro n
  simp only [A132352, Nat.add_sub_cancel, A132352.P2838134808479968870.f1, A132352.P2838134808479968870.a, A132352.P352406761875659028.f1, A132352.P352406761875659028.a, A072292, A072292.P7243147247323871744.a, A132351, A132351.P15635442049154509357.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132352

/-! ## A132352.P10896596283606940484

`∑[∑[A000035(A316789(n+1))]]`
-/

namespace A132352.P10896596283606940484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316789 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P10896596283606940484

namespace A132352

/-- `∑[∑[A000035(A316789(n+1))]]` -/
def P10896596283606940484.Spec : Prop :=
  ∀ n, P10896596283606940484.a n = A132352 (n + 1)

end A132352

/-! ## A132352.P6480623682914373779

`∑[∑[abs(A304653(n+1))]]`
-/

namespace A132352.P6480623682914373779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A304653 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132352.P6480623682914373779

namespace A132352

/-- `∑[∑[abs(A304653(n+1))]]` -/
def P6480623682914373779.Spec : Prop :=
  ∀ n, P6480623682914373779.a n = A132352 (n + 1)

end A132352

/-!
# A132353: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), starting with 1, 2, 6, 20.

The programs for A132353, the canonical program `A132353.P9921199756433844319` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132353 has offset 0).

The definition of A132353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A132353.P9921199756433844319`, by `A132353.P9921199756433844319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132353.P9921199756433844319

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132353

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P9921199756433844319.Spec : Prop :=
  ∀ n, P9921199756433844319.a n = A132353 n

theorem P9921199756433844319.correct : P9921199756433844319.Spec := by
  intro n
  simp only [A132353]

end A132353

/-! ## A132353.P7166325415419391102

`ogf((1-x+3x^3)/(1-3x+x^3-3x^4))`
-/

namespace A132353.P7166325415419391102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 3] [1, -3, 0, 1, -3] n

end

end A132353.P7166325415419391102

namespace A132353

/-- `ogf((1-x+3x^3)/(1-3x+x^3-3x^4))` -/
def P7166325415419391102.Spec : Prop :=
  ∀ n, P7166325415419391102.a n = A132353 n

end A132353

/-! ## A132353.P11541711845668170490

`A135266(n)+1`
-/

namespace A132353.P11541711845668170490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135266 n + 1

end

end A132353.P11541711845668170490

namespace A132353

/-- `A135266(n)+1` -/
def P11541711845668170490.Spec : Prop :=
  ∀ n, P11541711845668170490.a n = A132353 n

theorem P11541711845668170490.correct : P11541711845668170490.Spec := by
  intro n
  simp only [A132353, Nat.add_sub_cancel, A132353.P11541711845668170490.a, A132353.P9921199756433844319.a, A135266, A135266.P14515893951908388375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132353

/-! ## A132353.P7909331202590277944

`A132357(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A132353.P7909331202590277944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132357 (n - 1) + a (n - 1)

end

end A132353.P7909331202590277944

namespace A132353

/-- `A132357(n-1)+a(n-1)` -/
def P7909331202590277944.Spec : Prop :=
  ∀ n, P7909331202590277944.a n = A132353 n

end A132353

/-! ## A132353.P11815532248525629091

`Δ[A039300(n)+(floor(n/3)+1)%2]`
-/

namespace A132353.P11815532248525629091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 n + Int.tmod (⌊(n : ℚ) / 3⌋ + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132353.P11815532248525629091

namespace A132353

/-- `Δ[A039300(n)+(floor(n/3)+1)%2]` -/
def P11815532248525629091.Spec : Prop :=
  ∀ n, P11815532248525629091.a n = A132353 n

end A132353

/-! ## A132353.P16006842766068109758

`xor(abs(∑[(-3)^n]), (A293066(n)+1)%2)`
-/

namespace A132353.P16006842766068109758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |∑ j ∈ Finset.range (n + 1), f1 j| (Int.tmod (A293066 n + 1) 2)

end

end A132353.P16006842766068109758

namespace A132353

/-- `xor(abs(∑[(-3)^n]), (A293066(n)+1)%2)` -/
def P16006842766068109758.Spec : Prop :=
  ∀ n, P16006842766068109758.a n = A132353 n

end A132353

/-! ## A132353.P3811347559574369180

`A163810(n+1)+xor(3*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A132353.P3811347559574369180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163810 (n + 1) + Int.xor (3 * a (n - 1)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132353.P3811347559574369180

namespace A132353

/-- `A163810(n+1)+xor(3*a(n-1), char[3*n])` -/
def P3811347559574369180.Spec : Prop :=
  ∀ n, P3811347559574369180.a n = A132353 n

end A132353

/-! ## A132353.P2200926057348706590

`A130781(n)+A094705(n)`
-/

namespace A132353.P2200926057348706590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + A094705 n

end

end A132353.P2200926057348706590

namespace A132353

/-- `A130781(n)+A094705(n)` -/
def P2200926057348706590.Spec : Prop :=
  ∀ n, P2200926057348706590.a n = A132353 n

end A132353

/-! ## A132353.P1562627289523321978

`A132868(n)-A128834(n)`
-/

namespace A132353.P1562627289523321978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n - A128834 n

end

end A132353.P1562627289523321978

namespace A132353

/-- `A132868(n)-A128834(n)` -/
def P1562627289523321978.Spec : Prop :=
  ∀ n, P1562627289523321978.a n = A132353 n

end A132353

/-! ## A132353.P2664608163534346101

`A133448(n)-A132868(n)`
-/

namespace A132353.P2664608163534346101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133448 n - A132868 n

end

end A132353.P2664608163534346101

namespace A132353

/-- `A133448(n)-A132868(n)` -/
def P2664608163534346101.Spec : Prop :=
  ∀ n, P2664608163534346101.a n = A132353 n

end A132353

/-! ## A132353.P9376661182178105540

`xor(A011655(n), A132868(n))`
-/

namespace A132353.P9376661182178105540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011655 n) (A132868 n)

end

end A132353.P9376661182178105540

namespace A132353

/-- `xor(A011655(n), A132868(n))` -/
def P9376661182178105540.Spec : Prop :=
  ∀ n, P9376661182178105540.a n = A132353 n

end A132353

/-! ## A132353.P14159331878453948404

`A132868(n)+A010892(n+2)`
-/

namespace A132353.P14159331878453948404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n + A010892 (n + 2)

end

end A132353.P14159331878453948404

namespace A132353

/-- `A132868(n)+A010892(n+2)` -/
def P14159331878453948404.Spec : Prop :=
  ∀ n, P14159331878453948404.a n = A132353 n

end A132353

/-! ## A132353.P2381282162379014931

`A132868(n)+1-A164965(n)`
-/

namespace A132353.P2381282162379014931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n + (1 - A164965 n)

end

end A132353.P2381282162379014931

namespace A132353

/-- `A132868(n)+1-A164965(n)` -/
def P2381282162379014931.Spec : Prop :=
  ∀ n, P2381282162379014931.a n = A132353 n

end A132353

/-! ## A132353.P9737949893561296240

`A132868(n)-(∑[A010892(n)]-1)`
-/

namespace A132353.P9737949893561296240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132868 n - (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A132353.P9737949893561296240

namespace A132353

/-- `A132868(n)-(∑[A010892(n)]-1)` -/
def P9737949893561296240.Spec : Prop :=
  ∀ n, P9737949893561296240.a n = A132353 n

end A132353

/-! ## A132353.P7174978514586176169

`xor(Δ[A008620(n)], A015518(n+1))`
-/

namespace A132353.P7174978514586176169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A015518 (n + 1))

end

end A132353.P7174978514586176169

namespace A132353

/-- `xor(Δ[A008620(n)], A015518(n+1))` -/
def P7174978514586176169.Spec : Prop :=
  ∀ n, P7174978514586176169.a n = A132353 n

end A132353

/-! ## A132353.P7510636403416515329

`A080926(n)+1-A131531(n+1)`
-/

namespace A132353.P7510636403416515329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 n + (1 - A131531 (n + 1))

end

end A132353.P7510636403416515329

namespace A132353

/-- `A080926(n)+1-A131531(n+1)` -/
def P7510636403416515329.Spec : Prop :=
  ∀ n, P7510636403416515329.a n = A132353 n

end A132353

/-! ## A132353.P13583101104574824832

`A047926(n)+1-A194272(n+1)`
-/

namespace A132353.P13583101104574824832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n + (1 - A194272 (n + 1))

end

end A132353.P13583101104574824832

namespace A132353

/-- `A047926(n)+1-A194272(n+1)` -/
def P13583101104574824832.Spec : Prop :=
  ∀ n, P13583101104574824832.a n = A132353 n

end A132353

/-! ## A132353.P12130151694769758820

`A093379(n+2)-A024495(n+2)`
-/

namespace A132353.P12130151694769758820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093379 (n + 2) - A024495 (n + 2)

end

end A132353.P12130151694769758820

namespace A132353

/-- `A093379(n+2)-A024495(n+2)` -/
def P12130151694769758820.Spec : Prop :=
  ∀ n, P12130151694769758820.a n = A132353 n

end A132353

/-! ## A132353.P4260201873358155264

`A139782(n+1)-A133405(n+3)`
-/

namespace A132353.P4260201873358155264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139782 (n + 1) - A133405 (n + 3)

end

end A132353.P4260201873358155264

namespace A132353

/-- `A139782(n+1)-A133405(n+3)` -/
def P4260201873358155264.Spec : Prop :=
  ∀ n, P4260201873358155264.a n = A132353 n

end A132353

/-! ## A132353.P7677351891091058686

`(A133453(n)-A131531(n+1))/2`
-/

namespace A132353.P7677351891091058686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133453 n - A131531 (n + 1) : ℚ) / 2

end

end A132353.P7677351891091058686

namespace A132353

/-- `(A133453(n)-A131531(n+1))/2` -/
def P7677351891091058686.Spec : Prop :=
  ∀ n, P7677351891091058686.a n = (A132353 n : ℚ)

end A132353

/-!
# A132354: Integers m such that 7*m + 1 is a square.

The programs for A132354, the canonical program `A132354.P6528261924812598339` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132354 has offset 0).

The definition of A132354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132354.P6528261924812598339

`n²+n+3*ceil(n/2)²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132354

/-- `n²+n+3*ceil(n/2)²` -/
def P6528261924812598339.Spec : Prop :=
  ∀ n, P6528261924812598339.a n = A132354 n

theorem P6528261924812598339.correct : P6528261924812598339.Spec := by
  intro n
  simp only [A132354]

end A132354

/-! ## A132354.P16735051164465503588

`(A047336(n+1)²-1)/7`
-/

namespace A132354.P16735051164465503588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047336 (n + 1) ^ 2 - 1 : ℚ) / 7

end

end A132354.P16735051164465503588

namespace A132354

/-- `(A047336(n+1)²-1)/7` -/
def P16735051164465503588.Spec : Prop :=
  ∀ n, P16735051164465503588.a n = (A132354 n : ℚ)

end A132354

/-! ## A132354.P16850533382308444777

`∑[lcm(2, 3*n)-n]`
-/

namespace A132354.P16850533382308444777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P16850533382308444777

namespace A132354

/-- `∑[lcm(2, 3*n)-n]` -/
def P16850533382308444777.Spec : Prop :=
  ∀ n, P16850533382308444777.a n = A132354 n

end A132354

/-! ## A132354.P5844485386580131254

`∑[n*(6-gcd(2, n)²)]`
-/

namespace A132354.P5844485386580131254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (6 - (Nat.gcd 2 n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P5844485386580131254

namespace A132354

/-- `∑[n*(6-gcd(2, n)²)]` -/
def P5844485386580131254.Spec : Prop :=
  ∀ n, P5844485386580131254.a n = A132354 n

end A132354

/-! ## A132354.P12724677871511138153

`∑[n*(3*n%2+2)]`
-/

namespace A132354.P12724677871511138153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * (n % 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P12724677871511138153

namespace A132354

/-- `∑[n*(3*n%2+2)]` -/
def P12724677871511138153.Spec : Prop :=
  ∀ n, (P12724677871511138153.a n : ℤ) = A132354 n

end A132354

/-! ## A132354.P15764011144811248981

`∑[n*∑[-a(n-1)]]` with `a(0)=2, a(1)=3`
-/

namespace A132354.P15764011144811248981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P15764011144811248981

namespace A132354

/-- `∑[n*∑[-a(n-1)]]` -/
def P15764011144811248981.Spec : Prop :=
  ∀ n, P15764011144811248981.a n = A132354 n

end A132354

/-! ## A132354.P5991995985316428081

`∑[n*∑[floor(a(n-2))]]` with `a(0)=2, a(1)=3, a(2)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A132354.P5991995985316428081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, -3] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P5991995985316428081

namespace A132354

/-- `∑[n*∑[floor(a(n-2))]]` -/
def P5991995985316428081.Spec : Prop :=
  ∀ n, P5991995985316428081.a n = A132354 n

end A132354

/-! ## A132354.P4512889161769408236

`∑[n*A010695(n)]`
-/

namespace A132354.P4512889161769408236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P4512889161769408236

namespace A132354

/-- `∑[n*A010695(n)]` -/
def P4512889161769408236.Spec : Prop :=
  ∀ n, P4512889161769408236.a n = A132354 n

end A132354

/-! ## A132354.P16430437035556110541

`∑[n*dr(A040093(n))]`
-/

namespace A132354.P16430437035556110541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (A040093 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P16430437035556110541

namespace A132354

/-- `∑[n*dr(A040093(n))]` -/
def P16430437035556110541.Spec : Prop :=
  ∀ n, (P16430437035556110541.a n : ℤ) = A132354 n

end A132354

/-! ## A132354.P672713572735888855

`∑[n*(A010685(n)+1)]`
-/

namespace A132354.P672713572735888855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010685 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P672713572735888855

namespace A132354

/-- `∑[n*(A010685(n)+1)]` -/
def P672713572735888855.Spec : Prop :=
  ∀ n, P672713572735888855.a n = A132354 n

end A132354

/-! ## A132354.P11308125340909021909

`∑[n*(A010674(n)+2)]`
-/

namespace A132354.P11308125340909021909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010674 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P11308125340909021909

namespace A132354

/-- `∑[n*(A010674(n)+2)]` -/
def P11308125340909021909.Spec : Prop :=
  ∀ n, P11308125340909021909.a n = A132354 n

end A132354

/-! ## A132354.P7393229444928088904

`∑[n*(A010704(n)-1)]`
-/

namespace A132354.P7393229444928088904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010704 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P7393229444928088904

namespace A132354

/-- `∑[n*(A010704(n)-1)]` -/
def P7393229444928088904.Spec : Prop :=
  ∀ n, P7393229444928088904.a n = A132354 n

end A132354

/-! ## A132354.P2551814273831679920

`∑[2*A064680(n)+n]`
-/

namespace A132354.P2551814273831679920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064680 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P2551814273831679920

namespace A132354

/-- `∑[2*A064680(n)+n]` -/
def P2551814273831679920.Spec : Prop :=
  ∀ n, P2551814273831679920.a n = A132354 n

end A132354

/-! ## A132354.P10134729725149310721

`∑[n*(A010712(n)-2)]`
-/

namespace A132354.P10134729725149310721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010712 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P10134729725149310721

namespace A132354

/-- `∑[n*(A010712(n)-2)]` -/
def P10134729725149310721.Spec : Prop :=
  ∀ n, P10134729725149310721.a n = A132354 n

end A132354

/-! ## A132354.P3422249872025007974

`∑[2*A165351(n)-n]`
-/

namespace A132354.P3422249872025007974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165351 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P3422249872025007974

namespace A132354

/-- `∑[2*A165351(n)-n]` -/
def P3422249872025007974.Spec : Prop :=
  ∀ n, P3422249872025007974.a n = A132354 n

end A132354

/-! ## A132354.P73358976757497224

`∑[n/2*A010715(n)]`
-/

namespace A132354.P73358976757497224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A010715 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P73358976757497224

namespace A132354

/-- `∑[n/2*A010715(n)]` -/
def P73358976757497224.Spec : Prop :=
  ∀ n, P73358976757497224.a n = (A132354 n : ℚ)

end A132354

/-! ## A132354.P1611049296013772039

`∑[A347365(n)+lcm(2, n)]`
-/

namespace A132354.P1611049296013772039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 n + (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132354.P1611049296013772039

namespace A132354

/-- `∑[A347365(n)+lcm(2, n)]` -/
def P1611049296013772039.Spec : Prop :=
  ∀ n, P1611049296013772039.a n = A132354 n

end A132354

/-! ## A132354.P9512638735115121172

`A047385(n+1)*A110654(n)`
-/

namespace A132354.P9512638735115121172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1) * A110654 n

end

end A132354.P9512638735115121172

namespace A132354

/-- `A047385(n+1)*A110654(n)` -/
def P9512638735115121172.Spec : Prop :=
  ∀ n, P9512638735115121172.a n = A132354 n

end A132354

/-! ## A132354.P17099823970539407571

`A069125(n+1)%A119617(n+1)`
-/

namespace A132354.P17099823970539407571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069125 (n + 1)) (A119617 (n + 1))

end

end A132354.P17099823970539407571

namespace A132354

/-- `A069125(n+1)%A119617(n+1)` -/
def P17099823970539407571.Spec : Prop :=
  ∀ n, P17099823970539407571.a n = A132354 n

end A132354

/-! ## A132354.P2537988837172887522

`A321383(n+1)%A060544(n+1)`
-/

namespace A132354.P2537988837172887522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321383 (n + 1)) (A060544 (n + 1))

end

end A132354.P2537988837172887522

namespace A132354

/-- `A321383(n+1)%A060544(n+1)` -/
def P2537988837172887522.Spec : Prop :=
  ∀ n, P2537988837172887522.a n = A132354 n

end A132354

/-!
# A132355: Numbers of the form 9*h^2 + 2*h, for h an integer.

The programs for A132355, the canonical program `A132355.P5603441896971379921` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132355 has offset 1).

The definition of A132355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132355.P5603441896971379921

`n²+n+5*ceil(n/2)²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132355

/-- `n²+n+5*ceil(n/2)²` -/
def P5603441896971379921.Spec : Prop :=
  ∀ n, P5603441896971379921.a n = A132355 (n + 1)

theorem P5603441896971379921.correct : P5603441896971379921.Spec := by
  intro n
  simp only [A132355, Nat.add_sub_cancel]

end A132355

/-! ## A132355.P2427656441991089928

`∑[n*(5*n%2+2)]`
-/

namespace A132355.P2427656441991089928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 * (n % 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P2427656441991089928

namespace A132355

/-- `∑[n*(5*n%2+2)]` -/
def P2427656441991089928.Spec : Prop :=
  ∀ n, (P2427656441991089928.a n : ℤ) = A132355 (n + 1)

end A132355

/-! ## A132355.P11959668000373886255

`∑[n*(10/gcd(2, n)-3)]`
-/

namespace A132355.P11959668000373886255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (10 / (Nat.gcd 2 n : ℚ) - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P11959668000373886255

namespace A132355

/-- `∑[n*(10/gcd(2, n)-3)]` -/
def P11959668000373886255.Spec : Prop :=
  ∀ n, P11959668000373886255.a n = (A132355 (n + 1) : ℚ)

end A132355

/-! ## A132355.P10413223730908360520

`∑[n*((and(1, n)+2)²-2)]`
-/

namespace A132355.P10413223730908360520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((Nat.land 1 n + 2) ^ 2 : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P10413223730908360520

namespace A132355

/-- `∑[n*((and(1, n)+2)²-2)]` -/
def P10413223730908360520.Spec : Prop :=
  ∀ n, P10413223730908360520.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P17930492535414356793

`∑[n*∑[-a(n-1)]]` with `a(0)=2, a(1)=5`
-/

namespace A132355.P17930492535414356793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P17930492535414356793

namespace A132355

/-- `∑[n*∑[-a(n-1)]]` -/
def P17930492535414356793.Spec : Prop :=
  ∀ n, P17930492535414356793.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P17631445753709170755

`∑[n*A010697(n)]`
-/

namespace A132355.P17631445753709170755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P17631445753709170755

namespace A132355

/-- `∑[n*A010697(n)]` -/
def P17631445753709170755.Spec : Prop :=
  ∀ n, P17631445753709170755.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P12278600089859647896

`∑[n*(A010687(n)+1)]`
-/

namespace A132355.P12278600089859647896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010687 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P12278600089859647896

namespace A132355

/-- `∑[n*(A010687(n)+1)]` -/
def P12278600089859647896.Spec : Prop :=
  ∀ n, P12278600089859647896.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P1332280348585310578

`∑[n*(A010676(n)+2)]`
-/

namespace A132355.P1332280348585310578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010676 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P1332280348585310578

namespace A132355

/-- `∑[n*(A010676(n)+2)]` -/
def P1332280348585310578.Spec : Prop :=
  ∀ n, P1332280348585310578.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P12152904324878533382

`∑[n*(A010706(n)-1)]`
-/

namespace A132355.P12152904324878533382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010706 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P12152904324878533382

namespace A132355

/-- `∑[n*(A010706(n)-1)]` -/
def P12152904324878533382.Spec : Prop :=
  ∀ n, P12152904324878533382.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P8658875640644845268

`∑[lcm(2, A347365(n))+n]`
-/

namespace A132355.P8658875640644845268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A347365 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P8658875640644845268

namespace A132355

/-- `∑[lcm(2, A347365(n))+n]` -/
def P8658875640644845268.Spec : Prop :=
  ∀ n, (P8658875640644845268.a n : ℤ) = A132355 (n + 1)

end A132355

/-! ## A132355.P3132366829844730193

`∑[n*and(7, A280193(n))]`
-/

namespace A132355.P3132366829844730193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 7 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P3132366829844730193

namespace A132355

/-- `∑[n*and(7, A280193(n))]` -/
def P3132366829844730193.Spec : Prop :=
  ∀ n, P3132366829844730193.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P13507824872652860995

`∑[n*A000040(gcd(n+1, n-1)²)]`
-/

namespace A132355.P13507824872652860995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P13507824872652860995

namespace A132355

/-- `∑[n*A000040(gcd(n+1, n-1)²)]` -/
def P13507824872652860995.Spec : Prop :=
  ∀ n, P13507824872652860995.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P9350486517111471103

`∑[n*A000040(gcd((n+1)², (n+3)²))]`
-/

namespace A132355.P9350486517111471103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (Nat.gcd ((n + 1) ^ 2) ((n + 3) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132355.P9350486517111471103

namespace A132355

/-- `∑[n*A000040(gcd((n+1)², (n+3)²))]` -/
def P9350486517111471103.Spec : Prop :=
  ∀ n, P9350486517111471103.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P4260157560224417113

`∪[A013656(n), A147296(n)]`
-/

namespace A132355.P4260157560224417113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132355.P4260157560224417113

namespace A132355

/-- `∪[A013656(n), A147296(n)]` -/
def P4260157560224417113.Spec : Prop :=
  ∀ n, (P4260157560224417113.a n : ℤ) = A132355 (n + 1)

end A132355

/-! ## A132355.P763128750984545305

`(A016873(n)-A004526(n))*A004526(n+1)`
-/

namespace A132355.P763128750984545305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016873 n - A004526 n) * A004526 (n + 1)

end

end A132355.P763128750984545305

namespace A132355

/-- `(A016873(n)-A004526(n))*A004526(n+1)` -/
def P763128750984545305.Spec : Prop :=
  ∀ n, P763128750984545305.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P15552140395021613440

`(A016825(n)+A004526(n+1))*A004526(n+1)`
-/

namespace A132355.P15552140395021613440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016825 n + A004526 (n + 1)) * A004526 (n + 1)

end

end A132355.P15552140395021613440

namespace A132355

/-- `(A016825(n)+A004526(n+1))*A004526(n+1)` -/
def P15552140395021613440.Spec : Prop :=
  ∀ n, P15552140395021613440.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P7306653097726313240

`A056838(A056020(n+1))`
-/

namespace A132355.P7306653097726313240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056838 (A056020 (n + 1)).toNat

end

end A132355.P7306653097726313240

namespace A132355

/-- `A056838(A056020(n+1))` -/
def P7306653097726313240.Spec : Prop :=
  ∀ n, P7306653097726313240.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P15249824542842210519

`A008802(A146509(n+2))`
-/

namespace A132355.P15249824542842210519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008802 (A146509 (n + 2)).toNat

end

end A132355.P15249824542842210519

namespace A132355

/-- `A008802(A146509(n+2))` -/
def P15249824542842210519.Spec : Prop :=
  ∀ n, P15249824542842210519.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P15330038750735691446

`A169603(A007590(n+1))`
-/

namespace A132355.P15330038750735691446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169603 (A007590 (n + 1)).toNat

end

end A132355.P15330038750735691446

namespace A132355

/-- `A169603(A007590(n+1))` -/
def P15330038750735691446.Spec : Prop :=
  ∀ n, P15330038750735691446.a n = A132355 (n + 1)

end A132355

/-! ## A132355.P1015537978719309413

`A169603(A080476(n+1))`
-/

namespace A132355.P1015537978719309413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169603 (A080476 (n + 1)).toNat

end

end A132355.P1015537978719309413

namespace A132355

/-- `A169603(A080476(n+1))` -/
def P1015537978719309413.Spec : Prop :=
  ∀ n, P1015537978719309413.a n = A132355 (n + 1)

end A132355

/-!
# A132356: a(2*k) = k*(10*k+2), a(2*k+1) = 10*k^2 + 18*k + 8, with k >= 0.

The programs for A132356, the canonical program `A132356.P9429587295094569261` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132356 has offset 0).

The definition of A132356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132356.P9429587295094569261

`n²+n+6*ceil(n/2)²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132356

/-- `n²+n+6*ceil(n/2)²` -/
def P9429587295094569261.Spec : Prop :=
  ∀ n, P9429587295094569261.a n = A132356 n

theorem P9429587295094569261.correct : P9429587295094569261.Spec := by
  intro n
  simp only [A132356]

end A132356

/-! ## A132356.P5543178966092995987

`2*A219190(n+1)`
-/

namespace A132356.P5543178966092995987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219190 (n + 1)

end

end A132356.P5543178966092995987

namespace A132356

/-- `2*A219190(n+1)` -/
def P5543178966092995987.Spec : Prop :=
  ∀ n, P5543178966092995987.a n = A132356 n

end A132356

/-! ## A132356.P14725176135631261199

`(A090771(n+1)²-1)/10`
-/

namespace A132356.P14725176135631261199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 1) ^ 2 - 1 : ℚ) / 10

end

end A132356.P14725176135631261199

namespace A132356

/-- `(A090771(n+1)²-1)/10` -/
def P14725176135631261199.Spec : Prop :=
  ∀ n, P14725176135631261199.a n = (A132356 n : ℚ)

end A132356

/-! ## A132356.P15332183997531604647

`∑[8*n/gcd(2, n)²]`
-/

namespace A132356.P15332183997531604647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P15332183997531604647

namespace A132356

/-- `∑[8*n/gcd(2, n)²]` -/
def P15332183997531604647.Spec : Prop :=
  ∀ n, P15332183997531604647.a n = (A132356 n : ℚ)

end A132356

/-! ## A132356.P10928734097183579776

`∑[2*n*4^(n%2)]`
-/

namespace A132356.P10928734097183579776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * 4 ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P10928734097183579776

namespace A132356

/-- `∑[2*n*4^(n%2)]` -/
def P10928734097183579776.Spec : Prop :=
  ∀ n, (P10928734097183579776.a n : ℤ) = A132356 n

end A132356

/-! ## A132356.P112106597839900696

`2*∑[n*4^and(1, n)]`
-/

namespace A132356.P112106597839900696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132356.P112106597839900696

namespace A132356

/-- `2*∑[n*4^and(1, n)]` -/
def P112106597839900696.Spec : Prop :=
  ∀ n, (P112106597839900696.a n : ℤ) = A132356 n

end A132356

/-! ## A132356.P10770984548812913609

`∑[2*n*gcd(4, (1-n)²)]`
-/

namespace A132356.P10770984548812913609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.gcd 4 ((1 - (n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P10770984548812913609

namespace A132356

/-- `∑[2*n*gcd(4, (1-n)²)]` -/
def P10770984548812913609.Spec : Prop :=
  ∀ n, (P10770984548812913609.a n : ℤ) = A132356 n

end A132356

/-! ## A132356.P692504624793889131

`∑[2*n*(and(1, n)+1)²]`
-/

namespace A132356.P692504624793889131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (Nat.land 1 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P692504624793889131

namespace A132356

/-- `∑[2*n*(and(1, n)+1)²]` -/
def P692504624793889131.Spec : Prop :=
  ∀ n, (P692504624793889131.a n : ℤ) = A132356 n

end A132356

/-! ## A132356.P9934339639802163429

`∑[2*n*C(2, and(1, n))²]`
-/

namespace A132356.P9934339639802163429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose 2 (Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P9934339639802163429

namespace A132356

/-- `∑[2*n*C(2, and(1, n))²]` -/
def P9934339639802163429.Spec : Prop :=
  ∀ n, (P9934339639802163429.a n : ℤ) = A132356 n

end A132356

/-! ## A132356.P7554778467758122521

`∑[2*n*or(n+1, -2)²]`
-/

namespace A132356.P7554778467758122521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * Int.lor (n + 1 : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P7554778467758122521

namespace A132356

/-- `∑[2*n*or(n+1, -2)²]` -/
def P7554778467758122521.Spec : Prop :=
  ∀ n, P7554778467758122521.a n = A132356 n

end A132356

/-! ## A132356.P1349376403540065480

`∑[2*n*(2*and(1, n))!²]`
-/

namespace A132356.P1349376403540065480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.factorial (2 * Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P1349376403540065480

namespace A132356

/-- `∑[2*n*(2*and(1, n))!²]` -/
def P1349376403540065480.Spec : Prop :=
  ∀ n, (P1349376403540065480.a n : ℤ) = A132356 n

end A132356

/-! ## A132356.P4560743998093036604

`∑[2*n*(2-and(1, n-1))²]`
-/

namespace A132356.P4560743998093036604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (2 - Int.land 1 ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P4560743998093036604

namespace A132356

/-- `∑[2*n*(2-and(1, n-1))²]` -/
def P4560743998093036604.Spec : Prop :=
  ∀ n, P4560743998093036604.a n = A132356 n

end A132356

/-! ## A132356.P2302402448883775217

`∑[2*n*Δ[n-a(n-1)]²]` with `a(0)=1`
-/

namespace A132356.P2302402448883775217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P2302402448883775217

namespace A132356

/-- `∑[2*n*Δ[n-a(n-1)]²]` -/
def P2302402448883775217.Spec : Prop :=
  ∀ n, P2302402448883775217.a n = A132356 n

end A132356

/-! ## A132356.P3044503721204614541

`4*∑[ogf((2x+x^2+2x^3)/(1-2x^2+x^4))]`
-/

namespace A132356.P3044503721204614541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132356.P3044503721204614541

namespace A132356

/-- `4*∑[ogf((2x+x^2+2x^3)/(1-2x^2+x^4))]` -/
def P3044503721204614541.Spec : Prop :=
  ∀ n, P3044503721204614541.a n = A132356 n

end A132356

/-! ## A132356.P3436996796808386386

`∑[2*n*(lcm(2, n+2)/(n+2))²]`
-/

namespace A132356.P3436996796808386386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((Nat.lcm 2 (n + 2) : ℚ) / (n + 2 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P3436996796808386386

namespace A132356

/-- `∑[2*n*(lcm(2, n+2)/(n+2))²]` -/
def P3436996796808386386.Spec : Prop :=
  ∀ n, P3436996796808386386.a n = (A132356 n : ℚ)

end A132356

/-! ## A132356.P2288284153290855937

`∑[4*A064680(n)]`
-/

namespace A132356.P2288284153290855937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P2288284153290855937

namespace A132356

/-- `∑[4*A064680(n)]` -/
def P2288284153290855937.Spec : Prop :=
  ∀ n, P2288284153290855937.a n = A132356 n

end A132356

/-! ## A132356.P5334440039650580548

`∑[n*A010698(n)]`
-/

namespace A132356.P5334440039650580548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P5334440039650580548

namespace A132356

/-- `∑[n*A010698(n)]` -/
def P5334440039650580548.Spec : Prop :=
  ∀ n, P5334440039650580548.a n = A132356 n

end A132356

/-! ## A132356.P8479240350550775210

`4*A057569(n+1)`
-/

namespace A132356.P8479240350550775210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A057569 (n + 1)

end

end A132356.P8479240350550775210

namespace A132356

/-- `4*A057569(n+1)` -/
def P8479240350550775210.Spec : Prop :=
  ∀ n, P8479240350550775210.a n = A132356 n

end A132356

/-! ## A132356.P9950434877873061712

`∑[n*A040015(n+1)]`
-/

namespace A132356.P9950434877873061712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132356.P9950434877873061712

namespace A132356

/-- `∑[n*A040015(n+1)]` -/
def P9950434877873061712.Spec : Prop :=
  ∀ n, P9950434877873061712.a n = A132356 n

end A132356

/-! ## A132356.P15096614494979764020

`A063225(n+1)*A110654(n)`
-/

namespace A132356.P15096614494979764020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (n + 1) * A110654 n

end

end A132356.P15096614494979764020

namespace A132356

/-- `A063225(n+1)*A110654(n)` -/
def P15096614494979764020.Spec : Prop :=
  ∀ n, P15096614494979764020.a n = A132356 n

end A132356

/-!
# A132357: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), with initial values 1,4,14,41.

The programs for A132357, the canonical program `A132357.P7570591492076313208` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132357 has offset 0).

The definition of A132357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A132357.P7570591492076313208`, by `A132357.P7570591492076313208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132357.P7570591492076313208

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=41`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132357

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P7570591492076313208.Spec : Prop :=
  ∀ n, P7570591492076313208.a n = A132357 n

theorem P7570591492076313208.correct : P7570591492076313208.Spec := by
  intro n
  simp only [A132357]

end A132357

/-! ## A132357.P4338210525779677293

`1/2*3^(n+1)+1/6*(-1)^n-2/3*cos(π*n/3)`
-/

namespace A132357.P4338210525779677293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 * (3 ^ (n + 1) : ℚ) + (1 : ℚ) / 6 * ((-1) ^ n : ℚ) : ℝ) - ((2 : ℚ) / 3 : ℝ) * Real.cos (Real.pi * (n : ℝ) / 3)

end

end A132357.P4338210525779677293

namespace A132357

/-- `1/2*3^(n+1)+1/6*(-1)^n-2/3*cos(π*n/3)` -/
def P4338210525779677293.Spec : Prop :=
  ∀ n, P4338210525779677293.a n = (A132357 n : ℝ)

end A132357

/-! ## A132357.P13337872024104848212

`ogf((1+x+2x^2)/(1-3x+x^3-3x^4))`
-/

namespace A132357.P13337872024104848212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -3, 0, 1, -3] n

end

end A132357.P13337872024104848212

namespace A132357

/-- `ogf((1+x+2x^2)/(1-3x+x^3-3x^4))` -/
def P13337872024104848212.Spec : Prop :=
  ∀ n, P13337872024104848212.a n = A132357 n

end A132357

/-! ## A132357.P3407361633378797620

`∑[A131531(n+1)+3^n]`
-/

namespace A132357.P3407361633378797620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132357.P3407361633378797620

namespace A132357

/-- `∑[A131531(n+1)+3^n]` -/
def P3407361633378797620.Spec : Prop :=
  ∀ n, P3407361633378797620.a n = A132357 n

end A132357

/-! ## A132357.P3438223030637786691

`A088911(n+4)+∑[3^n]`
-/

namespace A132357.P3438223030637786691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (n + 4) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A132357.P3438223030637786691

namespace A132357

/-- `A088911(n+4)+∑[3^n]` -/
def P3438223030637786691.Spec : Prop :=
  ∀ n, P3438223030637786691.a n = A132357 n

end A132357

/-! ## A132357.P2958732935134781500

`A131714(n)+A120471(n)`
-/

namespace A132357.P2958732935134781500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131714 n + A120471 n

end

end A132357.P2958732935134781500

namespace A132357

/-- `A131714(n)+A120471(n)` -/
def P2958732935134781500.Spec : Prop :=
  ∀ n, P2958732935134781500.a n = A132357 n

end A132357

/-! ## A132357.P11064765144960008189

`A164907(n)-A092220(n)`
-/

namespace A132357.P11064765144960008189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 n - A092220 n

end

end A132357.P11064765144960008189

namespace A132357

/-- `A164907(n)-A092220(n)` -/
def P11064765144960008189.Spec : Prop :=
  ∀ n, P11064765144960008189.a n = A132357 n

end A132357

/-! ## A132357.P13672400616897576506

`xor(A133448(n), A176040(n))`
-/

namespace A132357.P13672400616897576506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133448 n) (A176040 n)

end

end A132357.P13672400616897576506

namespace A132357

/-- `xor(A133448(n), A176040(n))` -/
def P13672400616897576506.Spec : Prop :=
  ∀ n, P13672400616897576506.a n = A132357 n

end A132357

/-! ## A132357.P13092182462932639248

`A133453(n)-A128834(n+2)`
-/

namespace A132357.P13092182462932639248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133453 n - A128834 (n + 2)

end

end A132357.P13092182462932639248

namespace A132357

/-- `A133453(n)-A128834(n+2)` -/
def P13092182462932639248.Spec : Prop :=
  ∀ n, P13092182462932639248.a n = A132357 n

end A132357

/-! ## A132357.P7229921024842693173

`A115098(n+1)-A135265(n+4)`
-/

namespace A132357.P7229921024842693173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (n + 1) - A135265 (n + 4)

end

end A132357.P7229921024842693173

namespace A132357

/-- `A115098(n+1)-A135265(n+4)` -/
def P7229921024842693173.Spec : Prop :=
  ∀ n, P7229921024842693173.a n = A132357 n

end A132357

/-! ## A132357.P14874020530663372160

`A003462(n+1)+and(1, A002264(n+1))`
-/

namespace A132357.P14874020530663372160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + Int.land 1 (A002264 (n + 1))

end

end A132357.P14874020530663372160

namespace A132357

/-- `A003462(n+1)+and(1, A002264(n+1))` -/
def P14874020530663372160.Spec : Prop :=
  ∀ n, P14874020530663372160.a n = A132357 n

end A132357

/-! ## A132357.P17819509379382187608

`A003462(n+1)+A000035(A002264(n+1))`
-/

namespace A132357.P17819509379382187608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) + A000035 (A002264 (n + 1)).toNat

end

end A132357.P17819509379382187608

namespace A132357

/-- `A003462(n+1)+A000035(A002264(n+1))` -/
def P17819509379382187608.Spec : Prop :=
  ∀ n, P17819509379382187608.a n = A132357 n

end A132357

/-! ## A132357.P6066245362936802698

`A132353(n)+A132868(n)-A130151(n+1)`
-/

namespace A132357.P6066245362936802698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n + (A132868 n - A130151 (n + 1))

end

end A132357.P6066245362936802698

namespace A132357

/-- `A132353(n)+A132868(n)-A130151(n+1)` -/
def P6066245362936802698.Spec : Prop :=
  ∀ n, P6066245362936802698.a n = A132357 n

end A132357

/-! ## A132357.P18363030478327828850

`Δ[A132353(n)]`
-/

namespace A132357.P18363030478327828850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132357.P18363030478327828850

namespace A132357

/-- `Δ[A132353(n)]` -/
def P18363030478327828850.Spec : Prop :=
  ∀ n, P18363030478327828850.a n = A132357 n

end A132357

/-! ## A132357.P10547447018415933972

`Δ[A135266(n)]`
-/

namespace A132357.P10547447018415933972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132357.P10547447018415933972

namespace A132357

/-- `Δ[A135266(n)]` -/
def P10547447018415933972.Spec : Prop :=
  ∀ n, P10547447018415933972.a n = A132357 n

end A132357

/-! ## A132357.P15892926759717999543

`A135263(n)/2`
-/

namespace A132357.P15892926759717999543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135263 n : ℚ) / 2

end

end A132357.P15892926759717999543

namespace A132357

/-- `A135263(n)/2` -/
def P15892926759717999543.Spec : Prop :=
  ∀ n, P15892926759717999543.a n = (A132357 n : ℚ)

theorem P15892926759717999543.correct : P15892926759717999543.Spec := by
  intro n
  simp only [A132357, Nat.add_sub_cancel, A132357.P15892926759717999543.a, A132357.P7570591492076313208.a, A135263, A135263.P12713593680314051727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132357

/-! ## A132357.P13809706161423316523

`A135264(n)/3`
-/

namespace A132357.P13809706161423316523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135264 n : ℚ) / 3

end

end A132357.P13809706161423316523

namespace A132357

/-- `A135264(n)/3` -/
def P13809706161423316523.Spec : Prop :=
  ∀ n, P13809706161423316523.a n = (A132357 n : ℚ)

theorem P13809706161423316523.correct : P13809706161423316523.Spec := by
  intro n
  simp only [A132357, Nat.add_sub_cancel, A132357.P13809706161423316523.a, A132357.P7570591492076313208.a, A135264, A135264.P2171394345503189444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132357

/-! ## A132357.P10931507263794039603

`A135264(n)-A135263(n)`
-/

namespace A132357.P10931507263794039603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135264 n - A135263 n

end

end A132357.P10931507263794039603

namespace A132357

/-- `A135264(n)-A135263(n)` -/
def P10931507263794039603.Spec : Prop :=
  ∀ n, P10931507263794039603.a n = A132357 n

theorem P10931507263794039603.correct : P10931507263794039603.Spec := by
  intro n
  simp only [A132357, Nat.add_sub_cancel, A132357.P10931507263794039603.a, A132357.P7570591492076313208.a, A135263, A135263.P12713593680314051727.a, A135264, A135264.P2171394345503189444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A132357

/-! ## A132357.P13561525894423482

`A132353(n+1)-A132353(n)`
-/

namespace A132357.P13561525894423482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132353 (n + 1) - A132353 n

end

end A132357.P13561525894423482

namespace A132357

/-- `A132353(n+1)-A132353(n)` -/
def P13561525894423482.Spec : Prop :=
  ∀ n, P13561525894423482.a n = A132357 n

end A132357

/-! ## A132357.P819370861932577908

`A135266(n+1)-A135266(n)`
-/

namespace A132357.P819370861932577908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135266 (n + 1) - A135266 n

end

end A132357.P819370861932577908

namespace A132357

/-- `A135266(n+1)-A135266(n)` -/
def P819370861932577908.Spec : Prop :=
  ∀ n, P819370861932577908.a n = A132357 n

end A132357

/-!
# A132358: a(n) = greatest prime <= 2^(2^n).

The programs for A132358, there is no canonical definition to state claims against.
-/

/-! ## A132358.P9176805819637442557

`A014234(2^n)`
-/

namespace A132358.P9176805819637442557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (2 ^ n)

end

end A132358.P9176805819637442557

/-! ## A132358.P9789799355265905468

`A133225(∑[2^n])`
-/

namespace A132358.P9789799355265905468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132358.P9789799355265905468

/-! ## A132358.P9668641993794570204

`record[A014234(A243087(val(n+1, 2)+1))]`
-/

namespace A132358.P9668641993794570204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (A243087 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132358.P9668641993794570204

/-! ## A132358.P3757237596378486704

`A193581(n)+A014234(A000079(n))`
-/

namespace A132358.P3757237596378486704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n + A014234 (A000079 n).toNat

end

end A132358.P3757237596378486704

/-!
# A132359: Numbers divisible by the square of their last decimal digit.

The programs for A132359, the canonical program `A132359.P12708232628398117809` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132359 has offset 1).

The definition of A132359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132359.P12708232628398117809

`eq[lcm(n, A010879(n)²), A028310(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132359

/-- `eq[lcm(n, A010879(n)²), A028310(n)]` -/
def P12708232628398117809.Spec : Prop :=
  ∀ n, (P12708232628398117809.a n : ℤ) = A132359 (n + 1)

theorem P12708232628398117809.correct : P12708232628398117809.Spec := by
  intro n
  simp only [A132359, Nat.add_sub_cancel]

end A132359

/-!
# A132360: Partial sum of irregular primes A000928.

The programs for A132360, there is no canonical definition to state claims against.
-/

/-! ## A132360.P8354818091314656264

`∑[A000928(n+1)]`
-/

namespace A132360.P8354818091314656264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132360.P8354818091314656264

/-! ## A132360.P16905746655213190906

`∑[p?[A000928(-xor(n, -1))]]`
-/

namespace A132360.P16905746655213190906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (-Int.xor (n : ℤ) (-1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132360.P16905746655213190906

/-! ## A132360.P16450263209441570815

`∑[p?[A000928(comp[2*n]-n)]]`
-/

namespace A132360.P16450263209441570815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132360.P16450263209441570815

/-! ## A132360.P14956143258452235056

`∑[xor(1, A000928(Δ[n²]-n)-1)]`
-/

namespace A132360.P14956143258452235056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000928 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132360.P14956143258452235056

/-! ## A132360.P10835917016981248784

`∑[∪[A060974(n+1), A073276(n+1)]]`
-/

namespace A132360.P10835917016981248784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060974 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073276 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132360.P10835917016981248784

/-! ## A132360.P1399135277029595795

`∑[A090798(∑[A091887(n+1)])]`
-/

namespace A132360.P1399135277029595795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132360.P1399135277029595795

/-! ## A132360.P18388227070057671473

`∑[record[A000928(A101504(n))]]`
-/

namespace A132360.P18388227070057671473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132360.P18388227070057671473

/-!
# A132364: Expansion of 1/(1-x^2*c(x)), c(x) the g.f. of A000108.

The programs for A132364, the canonical program `A132364.P17104137420631363421` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132364 has offset 0).

The definition of A132364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132364.P17104137420631363421

`Δ[∑[A000108(n)]-A030238(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A132364

/-- `Δ[∑[A000108(n)]-A030238(n)]` -/
def P17104137420631363421.Spec : Prop :=
  ∀ n, P17104137420631363421.a n = A132364 n

theorem P17104137420631363421.correct : P17104137420631363421.Spec := by
  intro n
  simp only [A132364]

end A132364

/-! ## A132364.P1460178145401061101

`A000108(n+1)-Δ[A030238(n)]`
-/

namespace A132364.P1460178145401061101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - (f1 (n + 1) - f1 n)

end

end A132364.P1460178145401061101

namespace A132364

/-- `A000108(n+1)-Δ[A030238(n)]` -/
def P1460178145401061101.Spec : Prop :=
  ∀ n, P1460178145401061101.a n = A132364 n

end A132364

/-! ## A132364.P5471527922916036894

`A000108(n+1)+A030238(n)-A030238(n+1)`
-/

namespace A132364.P5471527922916036894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A030238 n - A030238 (n + 1))

end

end A132364.P5471527922916036894

namespace A132364

/-- `A000108(n+1)+A030238(n)-A030238(n+1)` -/
def P5471527922916036894.Spec : Prop :=
  ∀ n, P5471527922916036894.a n = A132364 n

end A132364

/-! ## A132364.P11004314542038986396

`record[A033184(n+1)]-Δ[A030238(n)]`
-/

namespace A132364.P11004314542038986396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A132364.P11004314542038986396

namespace A132364

/-- `record[A033184(n+1)]-Δ[A030238(n)]` -/
def P11004314542038986396.Spec : Prop :=
  ∀ n, P11004314542038986396.a n = A132364 n

end A132364

/-! ## A132364.P12327785376055945603

`record[A099039(n)]-Δ[A030238(n)]`
-/

namespace A132364.P12327785376055945603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A132364.P12327785376055945603

namespace A132364

/-- `record[A099039(n)]-Δ[A030238(n)]` -/
def P12327785376055945603.Spec : Prop :=
  ∀ n, P12327785376055945603.a n = A132364 n

end A132364

/-! ## A132364.P10998978840507626590

`record[A106566(n)]-Δ[A030238(n)]`
-/

namespace A132364.P10998978840507626590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A132364.P10998978840507626590

namespace A132364

/-- `record[A106566(n)]-Δ[A030238(n)]` -/
def P10998978840507626590.Spec : Prop :=
  ∀ n, P10998978840507626590.a n = A132364 n

end A132364

/-!
# A132366: Partial sum of centered tetrahedral numbers A005894.

The programs for A132366, the canonical program `A132366.P7609112223921373864` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132366 has offset 0).

The definition of A132366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132366.P3571327705083850753

`(n²+2*n+6)*(n+1)²/6`
-/

namespace A132366.P3571327705083850753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 2 * n + 6) * (n + 1) ^ 2 : ℚ) / 6

end

end A132366.P3571327705083850753

namespace A132366

/-- `(n²+2*n+6)*(n+1)²/6` -/
def P3571327705083850753.Spec : Prop :=
  ∀ n, P3571327705083850753.a n = (A132366 n : ℚ)

end A132366

/-! ## A132366.P7609112223921373864

`A006007(n)+A006007(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132366

/-- `A006007(n)+A006007(n+1)` -/
def P7609112223921373864.Spec : Prop :=
  ∀ n, P7609112223921373864.a n = A132366 n

theorem P7609112223921373864.correct : P7609112223921373864.Spec := by
  intro n
  simp only [A132366]

end A132366

/-! ## A132366.P17192020192348793522

`A002415(n)+A002415(n+2)`
-/

namespace A132366.P17192020192348793522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + A002415 (n + 2)

end

end A132366.P17192020192348793522

namespace A132366

/-- `A002415(n)+A002415(n+2)` -/
def P17192020192348793522.Spec : Prop :=
  ∀ n, P17192020192348793522.a n = A132366 n

end A132366

/-! ## A132366.P18334908420045349741

`∑[∑[ceil(2/acot(n)²)]]`
-/

namespace A132366.P18334908420045349741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P18334908420045349741

namespace A132366

/-- `∑[∑[ceil(2/acot(n)²)]]` -/
def P18334908420045349741.Spec : Prop :=
  ∀ n, P18334908420045349741.a n = A132366 n

end A132366

/-! ## A132366.P3621651664318854633

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A132366.P3621651664318854633
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P3621651664318854633

namespace A132366

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P3621651664318854633.Spec : Prop :=
  ∀ n, (P3621651664318854633.a n : ℤ) = A132366 n

end A132366

/-! ## A132366.P3826424092120187381

`C(n+4, 4)+C(∑[n]+1, 2)`
-/

namespace A132366.P3826424092120187381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A132366.P3826424092120187381

namespace A132366

/-- `C(n+4, 4)+C(∑[n]+1, 2)` -/
def P3826424092120187381.Spec : Prop :=
  ∀ n, (P3826424092120187381.a n : ℤ) = A132366 n

end A132366

/-! ## A132366.P13618398771132071408

`record[(C(n, 3)+n-1)*(n-1)]`
-/

namespace A132366.P13618398771132071408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 3 : ℤ) + ((n : ℤ) - 1)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132366.P13618398771132071408

namespace A132366

/-- `record[(C(n, 3)+n-1)*(n-1)]` -/
def P13618398771132071408.Spec : Prop :=
  ∀ n, P13618398771132071408.a n = A132366 n

end A132366

/-! ## A132366.P1520870908306661442

`(n+1)²+(n+1)*C(n+2, 3)`
-/

namespace A132366.P1520870908306661442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (n + 1) * Nat.choose (n + 2) 3

end

end A132366.P1520870908306661442

namespace A132366

/-- `(n+1)²+(n+1)*C(n+2, 3)` -/
def P1520870908306661442.Spec : Prop :=
  ∀ n, (P1520870908306661442.a n : ℤ) = A132366 n

end A132366

/-! ## A132366.P4901238723537204862

`∑[A005894(n)]`
-/

namespace A132366.P4901238723537204862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P4901238723537204862

namespace A132366

/-- `∑[A005894(n)]` -/
def P4901238723537204862.Spec : Prop :=
  ∀ n, P4901238723537204862.a n = A132366 n

end A132366

/-! ## A132366.P17287093740546053832

`∑[∑[A005893(n)]]`
-/

namespace A132366.P17287093740546053832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P17287093740546053832

namespace A132366

/-- `∑[∑[A005893(n)]]` -/
def P17287093740546053832.Spec : Prop :=
  ∀ n, P17287093740546053832.a n = A132366 n

end A132366

/-! ## A132366.P5516295782127960629

`∑[∑[∑[A113127(n)]]]`
-/

namespace A132366.P5516295782127960629
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P5516295782127960629

namespace A132366

/-- `∑[∑[∑[A113127(n)]]]` -/
def P5516295782127960629.Spec : Prop :=
  ∀ n, P5516295782127960629.a n = A132366 n

end A132366

/-! ## A132366.P15758275321313194399

`∑[∑[A058331(n)]+n]`
-/

namespace A132366.P15758275321313194399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P15758275321313194399

namespace A132366

/-- `∑[∑[A058331(n)]+n]` -/
def P15758275321313194399.Spec : Prop :=
  ∀ n, P15758275321313194399.a n = A132366 n

end A132366

/-! ## A132366.P1206240152502140517

`∑[A159938(n+2)-1]`
-/

namespace A132366.P1206240152502140517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159938 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P1206240152502140517

namespace A132366

/-- `∑[A159938(n+2)-1]` -/
def P1206240152502140517.Spec : Prop :=
  ∀ n, P1206240152502140517.a n = A132366 n

end A132366

/-! ## A132366.P12772923427914146054

`(n+1)*∑[A000124(n)]`
-/

namespace A132366.P12772923427914146054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132366.P12772923427914146054

namespace A132366

/-- `(n+1)*∑[A000124(n)]` -/
def P12772923427914146054.Spec : Prop :=
  ∀ n, P12772923427914146054.a n = A132366 n

end A132366

/-! ## A132366.P6074328100437098955

`∑[A188475(n)+2*n]`
-/

namespace A132366.P6074328100437098955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P6074328100437098955

namespace A132366

/-- `∑[A188475(n)+2*n]` -/
def P6074328100437098955.Spec : Prop :=
  ∀ n, P6074328100437098955.a n = A132366 n

end A132366

/-! ## A132366.P10138788014881082986

`∑[A100504(n)/2+n]`
-/

namespace A132366.P10138788014881082986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100504 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P10138788014881082986

namespace A132366

/-- `∑[A100504(n)/2+n]` -/
def P10138788014881082986.Spec : Prop :=
  ∀ n, P10138788014881082986.a n = (A132366 n : ℚ)

end A132366

/-! ## A132366.P1272496376205702786

`∑[∑[A010000(n)+n²]]`
-/

namespace A132366.P1272496376205702786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P1272496376205702786

namespace A132366

/-- `∑[∑[A010000(n)+n²]]` -/
def P1272496376205702786.Spec : Prop :=
  ∀ n, P1272496376205702786.a n = A132366 n

end A132366

/-! ## A132366.P8287262427236581666

`∑[∑[A001844(n)]-n²]`
-/

namespace A132366.P8287262427236581666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P8287262427236581666

namespace A132366

/-- `∑[∑[A001844(n)]-n²]` -/
def P8287262427236581666.Spec : Prop :=
  ∀ n, P8287262427236581666.a n = A132366 n

end A132366

/-! ## A132366.P1620295752699758891

`∑[∑[A005918(n)-n²]]`
-/

namespace A132366.P1620295752699758891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P1620295752699758891

namespace A132366

/-- `∑[∑[A005918(n)-n²]]` -/
def P1620295752699758891.Spec : Prop :=
  ∀ n, P1620295752699758891.a n = A132366 n

end A132366

/-! ## A132366.P16443557578116931009

`∑[A006331(n)+Δ[n²]]`
-/

namespace A132366.P16443557578116931009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132366.P16443557578116931009

namespace A132366

/-- `∑[A006331(n)+Δ[n²]]` -/
def P16443557578116931009.Spec : Prop :=
  ∀ n, P16443557578116931009.a n = A132366 n

end A132366

/-!
# A132367: Period 6: repeat [1, 1, 2, -1, -1, -2].

The programs for A132367, the canonical program `A132367.P2133631913192817587` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132367 has offset 0).

The definition of A132367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132367.P2133631913192817587

`-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132367

/-- `-a(n-3)` -/
def P2133631913192817587.Spec : Prop :=
  ∀ n, P2133631913192817587.a n = A132367 n

theorem P2133631913192817587.correct : P2133631913192817587.Spec := by
  intro n
  simp only [A132367]

end A132367

/-!
# A132368: a(0), ..., a(7) are 0,1,2,3,6,4,5,7; for n >= 8, a(n) = a(n-8) + 8.

The programs for A132368, the canonical program `A132368.P5512625149725984198` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132368 has offset 0).

The definition of A132368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-8)+8` (program `A132368.P5512625149725984198`, by `A132368.P5512625149725984198.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A132368.P5512625149725984198

`a(n-8)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=4, a(6)=5, a(7)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132368

/-- `a(n-8)+8` -/
def P5512625149725984198.Spec : Prop :=
  ∀ n, (P5512625149725984198.a n : ℤ) = A132368 n

theorem P5512625149725984198.correct : P5512625149725984198.Spec := by
  intro n
  simp only [A132368]

end A132368

/-! ## A132368.P6697362390183499605

`xor(n, xor(A090280(3*n+2), A090284(3*n+2)))`
-/

namespace A132368.P6697362390183499605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (A090280 (3 * n + 2)) (A090284 (3 * n + 2)))

end

end A132368.P6697362390183499605

namespace A132368

/-- `xor(n, xor(A090280(3*n+2), A090284(3*n+2)))` -/
def P6697362390183499605.Spec : Prop :=
  ∀ n, P6697362390183499605.a n = A132368 n

end A132368

/-!
# A132369: a(n) = PrimePi(n)!.

The programs for A132369, the canonical program `A132369.P6756458142558903462` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132369 has offset 1).

The definition of A132369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A132369.P9728874227113988240

`∑[char[p?[xor(1, n)]-1]]!`
-/

namespace A132369.P9728874227113988240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132369.P9728874227113988240

namespace A132369

/-- `∑[char[p?[xor(1, n)]-1]]!` -/
def P9728874227113988240.Spec : Prop :=
  ∀ n, (P9728874227113988240.a n : ℤ) = A132369 (n + 1)

end A132369

/-! ## A132369.P944219535781629608

`∑[char[eq[1, ∑{e}[n+1, #]]]]!`
-/

namespace A132369.P944219535781629608
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132369.P944219535781629608

namespace A132369

/-- `∑[char[eq[1, ∑{e}[n+1, #]]]]!` -/
def P944219535781629608.Spec : Prop :=
  ∀ n, (P944219535781629608.a n : ℤ) = A132369 (n + 1)

end A132369

/-! ## A132369.P16220017997366248883

`∑[char[lt[n, ∑{p}[n+1, #]]]]!`
-/

namespace A132369.P16220017997366248883
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132369.P16220017997366248883

namespace A132369

/-- `∑[char[lt[n, ∑{p}[n+1, #]]]]!` -/
def P16220017997366248883.Spec : Prop :=
  ∀ n, (P16220017997366248883.a n : ℤ) = A132369 (n + 1)

end A132369

/-! ## A132369.P6756458142558903462

`∑[C(C(2, ∑{e}[n+1, #]), 2)]!`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132369

/-- `∑[C(C(2, ∑{e}[n+1, #]), 2)]!` -/
def P6756458142558903462.Spec : Prop :=
  ∀ n, (P6756458142558903462.a n : ℤ) = A132369 (n + 1)

theorem P6756458142558903462.correct : P6756458142558903462.Spec := by
  intro n
  simp only [A132369, Nat.add_sub_cancel]

end A132369

/-! ## A132369.P16312618997701507312

`A000720(n+1)!`
-/

namespace A132369.P16312618997701507312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000720 (n + 1)).toNat

end

end A132369.P16312618997701507312

namespace A132369

/-- `A000720(n+1)!` -/
def P16312618997701507312.Spec : Prop :=
  ∀ n, (P16312618997701507312.a n : ℤ) = A132369 (n + 1)

end A132369

/-! ## A132369.P5765889649393123325

`A230980(n+1)!`
-/

namespace A132369.P5765889649393123325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230980 (n + 1)).toNat

end

end A132369.P5765889649393123325

namespace A132369

/-- `A230980(n+1)!` -/
def P5765889649393123325.Spec : Prop :=
  ∀ n, (P5765889649393123325.a n : ℤ) = A132369 (n + 1)

end A132369

/-! ## A132369.P15162579600705053295

`log2(A048656(n+1))!`
-/

namespace A132369.P15162579600705053295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A048656 (n + 1) : ℝ))).toNat

end

end A132369.P15162579600705053295

namespace A132369

/-- `log2(A048656(n+1))!` -/
def P15162579600705053295.Spec : Prop :=
  ∀ n, (P15162579600705053295.a n : ℤ) = A132369 (n + 1)

end A132369

/-! ## A132369.P9232222512336051696

`∑[A010051(n+1)]!`
-/

namespace A132369.P9232222512336051696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132369.P9232222512336051696

namespace A132369

/-- `∑[A010051(n+1)]!` -/
def P9232222512336051696.Spec : Prop :=
  ∀ n, (P9232222512336051696.a n : ℤ) = A132369 (n + 1)

end A132369

/-! ## A132369.P12959138314244081751

`∑[A080545(n+1)]!`
-/

namespace A132369.P12959138314244081751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A132369.P12959138314244081751

namespace A132369

/-- `∑[A080545(n+1)]!` -/
def P12959138314244081751.Spec : Prop :=
  ∀ n, (P12959138314244081751.a n : ℤ) = A132369 (n + 1)

end A132369

/-! ## A132369.P14533007462372735208

`A124795(A066169(n+1))`
-/

namespace A132369.P14533007462372735208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A066169 (n + 1)).toNat

end

end A132369.P14533007462372735208

namespace A132369

/-- `A124795(A066169(n+1))` -/
def P14533007462372735208.Spec : Prop :=
  ∀ n, P14533007462372735208.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P15859496641241046065

`A124795(A151800(n+1))`
-/

namespace A132369.P15859496641241046065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A151800 (n + 1)).toNat

end

end A132369.P15859496641241046065

namespace A132369

/-- `A124795(A151800(n+1))` -/
def P15859496641241046065.Spec : Prop :=
  ∀ n, P15859496641241046065.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P11930200150922425006

`A214080(A256956(n+1))`
-/

namespace A132369.P11930200150922425006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A256956 (n + 1)).toNat

end

end A132369.P11930200150922425006

namespace A132369

/-- `A214080(A256956(n+1))` -/
def P11930200150922425006.Spec : Prop :=
  ∀ n, P11930200150922425006.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P8459008596784991530

`A124795(A159477(n+2))`
-/

namespace A132369.P8459008596784991530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A159477 (n + 2)).toNat

end

end A132369.P8459008596784991530

namespace A132369

/-- `A124795(A159477(n+2))` -/
def P8459008596784991530.Spec : Prop :=
  ∀ n, P8459008596784991530.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P12978295856823003124

`A321898(A136548(n+2))`
-/

namespace A132369.P12978295856823003124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (A136548 (n + 2)).toNat

end

end A132369.P12978295856823003124

namespace A132369

/-- `A321898(A136548(n+2))` -/
def P12978295856823003124.Spec : Prop :=
  ∀ n, P12978295856823003124.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P9300058642044574597

`A000142(A036234(n+1)-1)`
-/

namespace A132369.P9300058642044574597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A036234 (n + 1) - 1).toNat

end

end A132369.P9300058642044574597

namespace A132369

/-- `A000142(A036234(n+1)-1)` -/
def P9300058642044574597.Spec : Prop :=
  ∀ n, P9300058642044574597.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P16584465702975823308

`A000142(A055679(2*(n+1)))`
-/

namespace A132369.P16584465702975823308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A055679 (2 * (n + 1))).toNat

end

end A132369.P16584465702975823308

namespace A132369

/-- `A000142(A055679(2*(n+1)))` -/
def P16584465702975823308.Spec : Prop :=
  ∀ n, P16584465702975823308.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P15739940146273761954

`A000142(A348841(n+1)+A055460(n+1))`
-/

namespace A132369.P15739940146273761954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A348841 (n + 1) + A055460 (n + 1)).toNat

end

end A132369.P15739940146273761954

namespace A132369

/-- `A000142(A348841(n+1)+A055460(n+1))` -/
def P15739940146273761954.Spec : Prop :=
  ∀ n, P15739940146273761954.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P1704228133589800810

`A000142(A022559(n+1)-A055636(n+1))`
-/

namespace A132369.P1704228133589800810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A022559 (n + 1) - A055636 (n + 1)).toNat

end

end A132369.P1704228133589800810

namespace A132369

/-- `A000142(A022559(n+1)-A055636(n+1))` -/
def P1704228133589800810.Spec : Prop :=
  ∀ n, P1704228133589800810.a n = A132369 (n + 1)

end A132369

/-! ## A132369.P8934970290767985398

`A000142(A113903(n+1)-A022559(n+1))`
-/

namespace A132369.P8934970290767985398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A113903 (n + 1) - A022559 (n + 1)).toNat

end

end A132369.P8934970290767985398

namespace A132369

/-- `A000142(A113903(n+1)-A022559(n+1))` -/
def P8934970290767985398.Spec : Prop :=
  ∀ n, P8934970290767985398.a n = A132369 (n + 1)

end A132369

/-!
# A132371: a(n) = n! - Sum_{j=1..n-1} j!.

The programs for A132371, the canonical program `A132371.P2907420895890266735` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132371 has offset 1).

The definition of A132371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132371.P17874512074712701113

`(n+1)!-A003422(n+1)+1`
-/

namespace A132371.P17874512074712701113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A003422 (n + 1) + 1

end

end A132371.P17874512074712701113

namespace A132371

/-- `(n+1)!-A003422(n+1)+1` -/
def P17874512074712701113.Spec : Prop :=
  ∀ n, P17874512074712701113.a n = A132371 (n + 1)

end A132371

/-! ## A132371.P2907420895890266735

`A000142(n+1)-A007489(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132371

/-- `A000142(n+1)-A007489(n)` -/
def P2907420895890266735.Spec : Prop :=
  ∀ n, P2907420895890266735.a n = A132371 (n + 1)

theorem P2907420895890266735.correct : P2907420895890266735.Spec := by
  intro n
  simp only [A132371, Nat.add_sub_cancel]

end A132371

/-! ## A132371.P18246356473686233547

`∑[abs((1-n)*n!)]`
-/

namespace A132371.P18246356473686233547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) * (Nat.factorial n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132371.P18246356473686233547

namespace A132371

/-- `∑[abs((1-n)*n!)]` -/
def P18246356473686233547.Spec : Prop :=
  ∀ n, P18246356473686233547.a n = A132371 (n + 1)

end A132371

/-! ## A132371.P5125556783616113364

`∑[abs(n!-Δ[n!])]`
-/

namespace A132371.P5125556783616113364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132371.P5125556783616113364

namespace A132371

/-- `∑[abs(n!-Δ[n!])]` -/
def P5125556783616113364.Spec : Prop :=
  ∀ n, P5125556783616113364.a n = A132371 (n + 1)

end A132371

/-! ## A132371.P7130594963112791520

`∑[(n-1)*n!]+2`
-/

namespace A132371.P7130594963112791520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A132371.P7130594963112791520

namespace A132371

/-- `∑[(n-1)*n!]+2` -/
def P7130594963112791520.Spec : Prop :=
  ∀ n, P7130594963112791520.a n = A132371 (n + 1)

end A132371

/-! ## A132371.P11152533272893290065

`∑[Δ[n!]-n!]+2`
-/

namespace A132371.P11152533272893290065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A132371.P11152533272893290065

namespace A132371

/-- `∑[Δ[n!]-n!]+2` -/
def P11152533272893290065.Spec : Prop :=
  ∀ n, P11152533272893290065.a n = A132371 (n + 1)

end A132371

/-! ## A132371.P10870347782947675953

`2-∑[-((n-1)*n!)]`
-/

namespace A132371.P10870347782947675953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * (Nat.factorial n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132371.P10870347782947675953

namespace A132371

/-- `2-∑[-((n-1)*n!)]` -/
def P10870347782947675953.Spec : Prop :=
  ∀ n, P10870347782947675953.a n = A132371 (n + 1)

end A132371

/-! ## A132371.P6171202409029182315

`(n+1)!+1-∑[n!]`
-/

namespace A132371.P6171202409029182315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A132371.P6171202409029182315

namespace A132371

/-- `(n+1)!+1-∑[n!]` -/
def P6171202409029182315.Spec : Prop :=
  ∀ n, P6171202409029182315.a n = A132371 (n + 1)

end A132371

/-! ## A132371.P18324288707993673114

`∑[lcm((n-1)*n!, n!)]`
-/

namespace A132371.P18324288707993673114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 1) * (Nat.factorial n : ℤ)) (Nat.factorial n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132371.P18324288707993673114

namespace A132371

/-- `∑[lcm((n-1)*n!, n!)]` -/
def P18324288707993673114.Spec : Prop :=
  ∀ n, (P18324288707993673114.a n : ℤ) = A132371 (n + 1)

end A132371

/-! ## A132371.P3614743986661038228

`a(n-1)+(n-1)*n!` with `a(0)=1`
-/

namespace A132371.P3614743986661038228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * (Nat.factorial n : ℤ)

end

end A132371.P3614743986661038228

namespace A132371

/-- `a(n-1)+(n-1)*n!` -/
def P3614743986661038228.Spec : Prop :=
  ∀ n, P3614743986661038228.a n = A132371 (n + 1)

end A132371

/-!
# A132372: T(n, k) counts Schroeder n-paths whose ascent starting at the initial vertex has length k. Triangle T(n,k), read by rows.

The programs for A132372, there is no canonical definition to state claims against.
-/

/-! ## A132372.P5079108891255370633

`A033878(A061579(n))`
-/

namespace A132372.P5079108891255370633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A061579 n).toNat

end

end A132372.P5079108891255370633

/-! ## A132372.P1186646861999700382

`A033878(A114327(n)+n)`
-/

namespace A132372.P1186646861999700382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A114327 n + (n : ℤ)).toNat

end

end A132372.P1186646861999700382

/-! ## A132372.P16690638102663050313

`A033878(A038722(n+1)-1)`
-/

namespace A132372.P16690638102663050313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A038722 (n + 1) - 1).toNat

end

end A132372.P16690638102663050313

/-! ## A132372.P9109218384635631621

`A122538(n+1)+A122538(n)`
-/

namespace A132372.P9109218384635631621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (n + 1) + A122538 n

end

end A132372.P9109218384635631621

/-! ## A132372.P12752884327818369049

`A033878(A093995(n+1)-(n+1))`
-/

namespace A132372.P12752884327818369049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A132372.P12752884327818369049

/-! ## A132372.P16323026228524224374

`A033878(A002024(n+1)²-(n+1))`
-/

namespace A132372.P16323026228524224374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A132372.P16323026228524224374

/-! ## A132372.P14904796557938166320

`A033878(A002378(n)%A014132(n+1))`
-/

namespace A132372.P14904796557938166320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A132372.P14904796557938166320

/-! ## A132372.P2908130670619982121

`A033878(A038722(n+2))`
-/

namespace A132372.P2908130670619982121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 (A038722 (n + 2)).toNat

end

end A132372.P2908130670619982121

/-! ## A132372.P9852770363014432747

`abs(A103136(n))`
-/

namespace A132372.P9852770363014432747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103136 n|

end

end A132372.P9852770363014432747

/-! ## A132372.P3095145594330520649

`A097807(n)*A103136(n)`
-/

namespace A132372.P3095145594330520649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A103136 n

end

end A132372.P3095145594330520649

/-! ## A132372.P10531906584784060140

`gcd(A000038(n), A103136(n))`
-/

namespace A132372.P10531906584784060140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A103136 n)

end

end A132372.P10531906584784060140

/-! ## A132372.P14175663967347016691

`lcm(A020985(n), A103136(n))`
-/

namespace A132372.P14175663967347016691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A103136 n)

end

end A132372.P14175663967347016691

/-!
# A132373: Expansion of c(6*x^2)/(1-x*c(6*x^2)), where c(x) is the g.f. of A000108.

The programs for A132373, there is no canonical definition to state claims against.
-/

/-! ## A132373.P14085949288947061573

`A013600(A354783(n+1)+A001206(n))`
-/

namespace A132373.P14085949288947061573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013600 (A354783 (n + 1) + A001206 n).toNat

end

end A132373.P14085949288947061573

/-!
# A132374: Expansion of c(7*x^2)/(1 - x*c(7*x^2)), where c(x) is the g.f. of A000108.

The programs for A132374, there is no canonical definition to state claims against.
-/

/-! ## A132374.P13962585835110804045

`A133280(or(1, lt[A379248(n+1), 7]²))`
-/

namespace A132374.P13962585835110804045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379248 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2))

end

end A132374.P13962585835110804045

/-! ## A132374.P505261839466937943

`A133280(or(1, lt[A064413(n+2), 8]²))`
-/

namespace A132374.P505261839466937943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2))

end

end A132374.P505261839466937943

/-!
# A132375: Expansion of c(8*x^2)/(1 - x*c(8*x^2)), where c(x) is the g.f. of A000108.

The programs for A132375, there is no canonical definition to state claims against.
-/

/-! ## A132375.P5060650441773675697

`A015092(n)%A096865(A025231(n+1))`
-/

namespace A132375.P5060650441773675697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015092 n) (A096865 (A025231 (n + 1)).toNat)

end

end A132375.P5060650441773675697

/-! ## A132375.P9661312613590690758

`A248183(A128386(n)+A121725(n))`
-/

namespace A132375.P9661312613590690758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A128386 n + A121725 n).toNat

end

end A132375.P9661312613590690758

/-!
# A132376: Algorithmic drum function based on two bar 16 notes per bar: Funk drum : Based on Andy Newark "In Time" from Sly Stone's "Fresh" 1973.

The programs for A132376, there is no canonical definition to state claims against.
-/

/-! ## A132376.P10245699399782341226

`A071907(A254474(2*(n+2)))+A000002(3*n+4)`
-/

namespace A132376.P10245699399782341226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071907 (A254474 (2 * (n + 2))).toNat + A000002 (3 * n + 4)

end

end A132376.P10245699399782341226

/-!
# A132377: a(n) = PrimePi(n)^n.

The programs for A132377, the canonical program `A132377.P12114512545845087021` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132377 has offset 1).

The definition of A132377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132377.P12114512545845087021

`A000720(n+1)^(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A132377

/-- `A000720(n+1)^(n+1)` -/
def P12114512545845087021.Spec : Prop :=
  ∀ n, P12114512545845087021.a n = A132377 (n + 1)

theorem P12114512545845087021.correct : P12114512545845087021.Spec := by
  intro n
  simp only [A132377, Nat.add_sub_cancel]

end A132377

/-! ## A132377.P14058223585667370126

`∑[char[p?[∏{p}[n, #]]-1]]^(n+1)`
-/

namespace A132377.P14058223585667370126
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A132377.P14058223585667370126

namespace A132377

/-- `∑[char[p?[∏{p}[n, #]]-1]]^(n+1)` -/
def P14058223585667370126.Spec : Prop :=
  ∀ n, (P14058223585667370126.a n : ℤ) = A132377 (n + 1)

end A132377

/-! ## A132377.P13686066255857453232

`∑[∑{p}[n+1, val(#, n+1)]]^(n+1)`
-/

namespace A132377.P13686066255857453232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A132377.P13686066255857453232

namespace A132377

/-- `∑[∑{p}[n+1, val(#, n+1)]]^(n+1)` -/
def P13686066255857453232.Spec : Prop :=
  ∀ n, (P13686066255857453232.a n : ℤ) = A132377 (n + 1)

end A132377

/-! ## A132377.P13749599788894740947

`∑[∑{p}[n+1, C(#, n+1)]]^(n+1)`
-/

namespace A132377.P13749599788894740947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A132377.P13749599788894740947

namespace A132377

/-- `∑[∑{p}[n+1, C(#, n+1)]]^(n+1)` -/
def P13749599788894740947.Spec : Prop :=
  ∀ n, (P13749599788894740947.a n : ℤ) = A132377 (n + 1)

end A132377

/-! ## A132377.P7832467454154569157

`A230980(n+1)^(n+1)`
-/

namespace A132377.P7832467454154569157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) ^ (n + 1)

end

end A132377.P7832467454154569157

namespace A132377

/-- `A230980(n+1)^(n+1)` -/
def P7832467454154569157.Spec : Prop :=
  ∀ n, P7832467454154569157.a n = A132377 (n + 1)

end A132377

/-! ## A132377.P14165992666259623170

`A056811((n+1)²)^(n+1)`
-/

namespace A132377.P14165992666259623170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 ((n + 1) ^ 2) ^ (n + 1)

end

end A132377.P14165992666259623170

namespace A132377

/-- `A056811((n+1)²)^(n+1)` -/
def P14165992666259623170.Spec : Prop :=
  ∀ n, P14165992666259623170.a n = A132377 (n + 1)

end A132377

/-! ## A132377.P15160969114399874431

`∑[A010051(n+1)]^(n+1)`
-/

namespace A132377.P15160969114399874431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A132377.P15160969114399874431

namespace A132377

/-- `∑[A010051(n+1)]^(n+1)` -/
def P15160969114399874431.Spec : Prop :=
  ∀ n, P15160969114399874431.a n = A132377 (n + 1)

end A132377

/-! ## A132377.P17436237713098473041

`(A036234(n+1)-1)^(n+1)`
-/

namespace A132377.P17436237713098473041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036234 (n + 1) - 1) ^ (n + 1)

end

end A132377.P17436237713098473041

namespace A132377

/-- `(A036234(n+1)-1)^(n+1)` -/
def P17436237713098473041.Spec : Prop :=
  ∀ n, P17436237713098473041.a n = A132377 (n + 1)

theorem P17436237713098473041.correct : P17436237713098473041.Spec := by
  intro n
  simp only [A132377, Nat.add_sub_cancel, A132377.P17436237713098473041.a, A132377.P12114512545845087021.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A132377

/-! ## A132377.P3701939754584014972

`A055679(2*(n+1))^(n+1)`
-/

namespace A132377.P3701939754584014972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * (n + 1)) ^ (n + 1)

end

end A132377.P3701939754584014972

namespace A132377

/-- `A055679(2*(n+1))^(n+1)` -/
def P3701939754584014972.Spec : Prop :=
  ∀ n, P3701939754584014972.a n = A132377 (n + 1)

end A132377

/-! ## A132377.P14776211506163165014

`A056172(2*(n+1))^(n+1)`
-/

namespace A132377.P14776211506163165014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) ^ (n + 1)

end

end A132377.P14776211506163165014

namespace A132377

/-- `A056172(2*(n+1))^(n+1)` -/
def P14776211506163165014.Spec : Prop :=
  ∀ n, P14776211506163165014.a n = A132377 (n + 1)

end A132377

/-!
# A132378: Smallest integer that starts with n and is divisible by every nonzero digit of n.

The programs for A132378, there is no canonical definition to state claims against.
-/

/-! ## A132378.P10814041457888819443

`∑[A174444(A258259(n)!)]`
-/

namespace A132378.P10814041457888819443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174444 (Nat.factorial (A258259 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132378.P10814041457888819443

/-! ## A132378.P5848605063207900145

`∩[A004874(n+1)+1, A338883(n+1)]`
-/

namespace A132378.P5848605063207900145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132378.P5848605063207900145

/-! ## A132378.P2995198319794554001

`record[A345165(A308062(3*n+4))!+n]`
-/

namespace A132378.P2995198319794554001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A345165 (A308062 (3 * n + 4)).toNat).toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132378.P2995198319794554001

/-! ## A132378.P13451322682001282882

`C(16, A185284(3*n))+n`
-/

namespace A132378.P13451322682001282882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 16 (A185284 (3 * n)).toNat + n

end

end A132378.P13451322682001282882

/-! ## A132378.P12859626289990229028

`(A191646(n)!-1)!+n`
-/

namespace A132378.P12859626289990229028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.factorial (A191646 n).toNat : ℤ) - 1).toNat + n

end

end A132378.P12859626289990229028

/-!
# A132380: Period 8: repeat [0, 0, 1, 1, 0, 0, -1, -1].

The programs for A132380, the canonical program `A132380.P1477398200090713472` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132380 has offset 0).

The definition of A132380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132380.P1477398200090713472

`1/2*(1-(-1)^floor(n/2))*(-1)^floor(n/4)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132380

/-- `1/2*(1-(-1)^floor(n/2))*(-1)^floor(n/4)` -/
def P1477398200090713472.Spec : Prop :=
  ∀ n, P1477398200090713472.a n = (A132380 n : ℚ)

end A132380

/-!
# A132381: Number of partitions of n with exactly one prime number.

The programs for A132381, there is no canonical definition to state claims against.
-/

/-! ## A132381.P16411689219803034740

`record[A274517(n)%A325710(n)]`
-/

namespace A132381.P16411689219803034740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274517 n) (A325710 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132381.P16411689219803034740

/-! ## A132381.P6736776728076318831

`record[A274517(n+1)%A274498(n)]`
-/

namespace A132381.P6736776728076318831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274517 (n + 1)) (A274498 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A132381.P6736776728076318831

/-! ## A132381.P12247505846310117950

`A003106(2*n+3)-A259024(A259026(n+1))`
-/

namespace A132381.P12247505846310117950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (2 * n + 3) - A259024 (A259026 (n + 1)).toNat

end

end A132381.P12247505846310117950

/-!
# A132382: Lower triangular array T(n,k) generator for group of arrays related to A001147 and A102625.

The programs for A132382, there is no canonical definition to state claims against.
-/

/-! ## A132382.P4796046590001606579

`(and(2, comp[∑[n]]+n)-1)*A113278(n)`
-/

namespace A132382.P4796046590001606579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A113278 n

end

end A132382.P4796046590001606579

/-! ## A132382.P9377397450389319091

`A097807(n)*A113278(n)`
-/

namespace A132382.P9377397450389319091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A113278 n

end

end A132382.P9377397450389319091

/-! ## A132382.P10463604220291726621

`A113278(char[1]+n)/A097807(n)`
-/

namespace A132382.P10463604220291726621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113278 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / (A097807 n : ℚ)

end

end A132382.P10463604220291726621

/-! ## A132382.P2017486894470550529

`A113278(round(sqrt(n²+1)))/A097807(n)%2`
-/

namespace A132382.P2017486894470550529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113278 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / (Int.tmod (A097807 n) 2 : ℚ)

end

end A132382.P2017486894470550529

/-! ## A132382.P7012701623450396272

`A015351(A025581(n))*A113278(n)`
-/

namespace A132382.P7012701623450396272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015351 (A025581 n).toNat * A113278 n

end

end A132382.P7012701623450396272

/-! ## A132382.P6941293099493322079

`A015351(A067731(n))*A113278(n)`
-/

namespace A132382.P6941293099493322079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015351 (A067731 n).toNat * A113278 n

end

end A132382.P6941293099493322079

/-! ## A132382.P3169925942741917396

`A033999(A051162(n))*A113278(n)`
-/

namespace A132382.P3169925942741917396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A113278 n

end

end A132382.P3169925942741917396

/-! ## A132382.P8400627628980830786

`A009531(A099375(n))*A113278(n)`
-/

namespace A132382.P8400627628980830786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A113278 n

end

end A132382.P8400627628980830786

/-!
# A132383: 4^n written 4^n times.

The programs for A132383, there is no canonical definition to state claims against.
-/

/-! ## A132383.P3385839790722186442

`4^∑[char[∑[4^n]]]`
-/

namespace A132383.P3385839790722186442
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A132383.P3385839790722186442

/-! ## A132383.P7581428075154047052

`4*a(floor(n/log(55)))` with `a(0)=1`
-/

namespace A132383.P7581428075154047052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a ⌊(n : ℝ) / Real.log (55 : ℝ)⌋.toNat

end

end A132383.P7581428075154047052

/-! ## A132383.P2479240064503680817

`floor(4*a(floor((n-1)/4)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A132383.P2479240064503680817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a ⌊((n : ℤ) - 1 : ℚ) / 4⌋.toNat

end

end A132383.P2479240064503680817

/-! ## A132383.P14768062389439599713

`and(n+43, 5*a(n-1))` with `a(0)=1`
-/

namespace A132383.P14768062389439599713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land (n + 43) (5 * a (n - 1))

end

end A132383.P14768062389439599713

/-! ## A132383.P11846998015393367393

`2*2*a(ceil(n/4)-1)` with `a(0)=1`
-/

namespace A132383.P11846998015393367393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * a (⌈(n : ℚ) / 4⌉ - 1).toNat)

end

end A132383.P11846998015393367393

/-! ## A132383.P11828715684374342360

`∏[char[C(2*n+3, n)]+1]²`
-/

namespace A132383.P11828715684374342360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A132383.P11828715684374342360

/-! ## A132383.P6616270314524328143

`a(floor((n-1)/4))/(1/2)²` with `a(0)=1`
-/

namespace A132383.P6616270314524328143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 4⌋.toNat / ((1 : ℚ) / 2) ^ 2

end

end A132383.P6616270314524328143

/-! ## A132383.P17449034416824236654

`lcm(gcd(2*n+1+n, (n+3)²), a(n-1))` with `a(0)=1`
-/

namespace A132383.P17449034416824236654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (Nat.gcd (2 * n + 1 + n) ((n + 3) ^ 2)) (a (n - 1))

end

end A132383.P17449034416824236654

/-! ## A132383.P7985964680645454311

`A056450(floor(log2(comp[3*n])))`
-/

namespace A132383.P7985964680645454311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 (Nat.log 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A132383.P7985964680645454311

/-! ## A132383.P16845047129620203498

`(A164632(2*(n+1))/2)²`
-/

namespace A132383.P16845047129620203498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A164632 (2 * (n + 1)) : ℚ) / 2) ^ 2

end

end A132383.P16845047129620203498

/-!
# A132384: a(n) = Sum_{ k <= n, k is not an i-th power with i >= 2} k.

The programs for A132384, there is no canonical definition to state claims against.
-/

/-! ## A132384.P13850008333808726375

`∑[(n+1)%lcm(1-(4/2+n), ∏{p}[n+1, #²])]+1`
-/

namespace A132384.P13850008333808726375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Int.lcm (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A132384.P13850008333808726375

/-! ## A132384.P6154951031263988688

`∑[C(A052410(n+1), n)]`
-/

namespace A132384.P6154951031263988688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052410 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132384.P6154951031263988688

/-! ## A132384.P15174891497589002797

`∑[C(A175781(n+1), n)]`
-/

namespace A132384.P15174891497589002797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175781 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132384.P15174891497589002797

/-! ## A132384.P8232973807200958869

`∑[C(A304491(n+1), n)]`
-/

namespace A132384.P8232973807200958869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A304491 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132384.P8232973807200958869

/-! ## A132384.P4714309462682712064

`∑[C(A304776(n+1), n)]`
-/

namespace A132384.P4714309462682712064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A304776 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132384.P4714309462682712064

/-! ## A132384.P230034577843715820

`∑[C(A327501(n+1), n)]`
-/

namespace A132384.P230034577843715820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327501 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132384.P230034577843715820

/-! ## A132384.P8206780942918172856

`∑[(n+1)*A132350(n+1)]`
-/

namespace A132384.P8206780942918172856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A132350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132384.P8206780942918172856

/-! ## A132384.P8473070579974651160

`∑[(n+1)%A110233(n+1)]`
-/

namespace A132384.P8473070579974651160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A110233 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132384.P8473070579974651160

/-! ## A132384.P16498313320702555028

`∑[lcm(n+1, A304653(n+1))]`
-/

namespace A132384.P16498313320702555028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A304653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A132384.P16498313320702555028

/-! ## A132384.P4487351061692187046

`∑[gcd(n+2, ∏{e}[n+1, A001222(#)])]-n`
-/

namespace A132384.P4487351061692187046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (∏ p ∈ Nat.primeFactors (f2 n), A001222 (Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A132384.P4487351061692187046

/-!
# A132387: a(n) = n with each digit d of n replaced by d mod 4.

The programs for A132387, there is no canonical definition to state claims against.
-/

/-! ## A132387.P9807280856811643575

`n-4*A106747(A106747(n))`
-/

namespace A132387.P9807280856811643575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 * A106747 (A106747 n).toNat

end

end A132387.P9807280856811643575

/-! ## A132387.P15315746032674609834

`n-A008586(A106747(A106747(n)))`
-/

namespace A132387.P15315746032674609834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008586 (A106747 (A106747 n).toNat).toNat

end

end A132387.P15315746032674609834

/-! ## A132387.P10630368872053840740

`A103181(n)+2*A103181(A106747(n))`
-/

namespace A132387.P10630368872053840740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 n + 2 * A103181 (A106747 n).toNat

end

end A132387.P10630368872053840740

/-! ## A132387.P7659156028320831424

`-(A001489(n)+4*A106747(A106747(n)))`
-/

namespace A132387.P7659156028320831424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n + 4 * A106747 (A106747 n).toNat)

end

end A132387.P7659156028320831424

/-! ## A132387.P15739527944542767339

`n+1-A000005(A008835(A054842(n)))`
-/

namespace A132387.P15739527944542767339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (A008835 (A054842 n).toNat).toNat

end

end A132387.P15739527944542767339

/-!
# A132388: Same as A007488, but with the numbers arranged so that their reversals are in increasing order.

The programs for A132388, there is no canonical definition to state claims against.
-/

/-! ## A132388.P5541803050671943741

`A002942(∩[A059007(n+1), A067251(n+1)])`
-/

namespace A132388.P5541803050671943741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A132388.P5541803050671943741

/-! ## A132388.P16161661944023634699

`A002942(∩[A059007(n+1), A342851(n+1)])`
-/

namespace A132388.P16161661944023634699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A132388.P16161661944023634699

/-! ## A132388.P716939772092812373

`p?[A112401(n+1)]`
-/

namespace A132388.P716939772092812373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132388.P716939772092812373

/-! ## A132388.P2346005383228072987

`p?[A002942(A067251(n+1))]`
-/

namespace A132388.P2346005383228072987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A067251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132388.P2346005383228072987

/-! ## A132388.P2381475396249444463

`p?[A002942(A342851(n+2))]`
-/

namespace A132388.P2381475396249444463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A342851 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132388.P2381475396249444463

/-!
# A132390: Number of binary pattern classes in the (2,n)-rectangular grid; two patterns are in same class if one of them can be obtained by reflection or rotation of the other one.

The programs for A132390, the canonical program `A132390.P4984515777132222704` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132390 has offset 1).

The definition of A132390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132390.P4984515777132222704

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=3, a(1)=6, a(2)=24, a(3)=76, a(4)=288`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132390

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P4984515777132222704.Spec : Prop :=
  ∀ n, P4984515777132222704.a n = A132390 (n + 1)

theorem P4984515777132222704.correct : P4984515777132222704.Spec := by
  intro n
  simp only [A132390, Nat.add_sub_cancel]

end A132390

/-! ## A132390.P11729745666696530298

`A225826(n+1)-char[1]`
-/

namespace A132390.P11729745666696530298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225826 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132390.P11729745666696530298

namespace A132390

/-- `A225826(n+1)-char[1]` -/
def P11729745666696530298.Spec : Prop :=
  ∀ n, P11729745666696530298.a n = A132390 (n + 1)

end A132390

/-! ## A132390.P8661522417633074190

`and(-A000005(n+1), A225826(n+1))`
-/

namespace A132390.P8661522417633074190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000005 (n + 1)) (A225826 (n + 1))

end

end A132390.P8661522417633074190

namespace A132390

/-- `and(-A000005(n+1), A225826(n+1))` -/
def P8661522417633074190.Spec : Prop :=
  ∀ n, P8661522417633074190.a n = A132390 (n + 1)

end A132390

/-! ## A132390.P9972160414625286573

`and(1-A000027(n+2), A225826(n+1))`
-/

namespace A132390.P9972160414625286573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A000027 (n + 2)) (A225826 (n + 1))

end

end A132390.P9972160414625286573

namespace A132390

/-- `and(1-A000027(n+2), A225826(n+1))` -/
def P9972160414625286573.Spec : Prop :=
  ∀ n, P9972160414625286573.a n = A132390 (n + 1)

end A132390

/-! ## A132390.P6973637465808051512

`and(1-A004526(n+5), A225826(n+1))`
-/

namespace A132390.P6973637465808051512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A004526 (n + 5)) (A225826 (n + 1))

end

end A132390.P6973637465808051512

namespace A132390

/-- `and(1-A004526(n+5), A225826(n+1))` -/
def P6973637465808051512.Spec : Prop :=
  ∀ n, P6973637465808051512.a n = A132390 (n + 1)

end A132390

/-! ## A132390.P17210477767206947499

`and(1-A000005(2*(n+1)), A225826(n+1))`
-/

namespace A132390.P17210477767206947499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A000005 (2 * (n + 1))) (A225826 (n + 1))

end

end A132390.P17210477767206947499

namespace A132390

/-- `and(1-A000005(2*(n+1)), A225826(n+1))` -/
def P17210477767206947499.Spec : Prop :=
  ∀ n, P17210477767206947499.a n = A132390 (n + 1)

end A132390

/-! ## A132390.P15029157822567865092

`and(A218876(n+1)-(n+1), A225826(n+1))`
-/

namespace A132390.P15029157822567865092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218876 (n + 1) - (n + 1 : ℤ)) (A225826 (n + 1))

end

end A132390.P15029157822567865092

namespace A132390

/-- `and(A218876(n+1)-(n+1), A225826(n+1))` -/
def P15029157822567865092.Spec : Prop :=
  ∀ n, P15029157822567865092.a n = A132390 (n + 1)

end A132390

/-!
# A132391: Numbers whose square starts with 4 identical digits.

The programs for A132391, there is no canonical definition to state claims against.
-/

/-! ## A132391.P17334543971497334583

`∪[A119866(n+1), A346940(n+1)]`
-/

namespace A132391.P17334543971497334583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132391.P17334543971497334583

/-! ## A132391.P17428222130440728393

`A346940(n+1)-A212619(n²+5)`
-/

namespace A132391.P17428222130440728393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346940 (n + 1) - A212619 (n ^ 2 + 5)

end

end A132391.P17428222130440728393

/-! ## A132391.P17748944002530564589

`A346940(n+1)-A185284(A119993(n+1))`
-/

namespace A132391.P17748944002530564589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346940 (n + 1) - A185284 (A119993 (n + 1)).toNat

end

end A132391.P17748944002530564589

/-! ## A132391.P5466104019148778076

`A346940(n+1)-A052409(A276144(n+1))`
-/

namespace A132391.P5466104019148778076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346940 (n + 1) - A052409 (A276144 (n + 1)).toNat

end

end A132391.P5466104019148778076

/-! ## A132391.P9071090400275443035

`A000026(A346940(n+1))`
-/

namespace A132391.P9071090400275443035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A346940 (n + 1)).toNat

end

end A132391.P9071090400275443035

/-!
# A132393: Triangle of unsigned Stirling numbers of the first kind (see A048994), read by rows, T(n,k) for 0 <= k <= n.

The programs for A132393, there is no canonical definition to state claims against.
-/

/-! ## A132393.P17410647672221001552

`abs(A048994(n))`
-/

namespace A132393.P17410647672221001552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 n|

end

end A132393.P17410647672221001552

/-! ## A132393.P11070077271171093955

`A048994(n)*A097807(n)`
-/

namespace A132393.P11070077271171093955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n * A097807 n

end

end A132393.P11070077271171093955

/-! ## A132393.P1533350016029108294

`gcd(A000038(n), A048994(n))`
-/

namespace A132393.P1533350016029108294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A048994 n)

end

end A132393.P1533350016029108294

/-! ## A132393.P5722929465842060464

`lcm(A020985(n), A048994(n))`
-/

namespace A132393.P5722929465842060464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A048994 n)

end

end A132393.P5722929465842060464

/-! ## A132393.P12692639248218968647

`abs(A054654(n)-A154843(n))`
-/

namespace A132393.P12692639248218968647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 n - A154843 n|

end

end A132393.P12692639248218968647

/-! ## A132393.P3693052361760894621

`A002260(n+1)/A140756(n+1)*A048994(n)`
-/

namespace A132393.P3693052361760894621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ) * (A048994 n : ℚ)

end

end A132393.P3693052361760894621

/-! ## A132393.P10373298953100866738

`abs(A054654(A061579(n)))`
-/

namespace A132393.P10373298953100866738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A061579 n).toNat|

end

end A132393.P10373298953100866738

/-! ## A132393.P10753126626015186483

`abs(A054654(A038722(n+1)-1))`
-/

namespace A132393.P10753126626015186483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A038722 (n + 1) - 1).toNat|

end

end A132393.P10753126626015186483

/-! ## A132393.P5237094505447813284

`abs(A054654(A038722(n+2)))`
-/

namespace A132393.P5237094505447813284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A038722 (n + 2)).toNat|

end

end A132393.P5237094505447813284

/-! ## A132393.P5580233115553046567

`A180013(n+1)/A002024(n+1)`
-/

namespace A132393.P5580233115553046567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180013 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A132393.P5580233115553046567

/-! ## A132393.P5268591757709764120

`A008275(n+1)/A130534(n)*A048994(n)`
-/

namespace A132393.P5268591757709764120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A130534 n : ℚ) * (A048994 n : ℚ)

end

end A132393.P5268591757709764120

/-! ## A132393.P573633597593773573

`A225479(n)/A233543(n)`
-/

namespace A132393.P573633597593773573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225479 n : ℚ) / (A233543 n : ℚ)

end

end A132393.P573633597593773573

/-! ## A132393.P13994883153920191881

`A355007(n)/A079901(n)`
-/

namespace A132393.P13994883153920191881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355007 n : ℚ) / (A079901 n : ℚ)

end

end A132393.P13994883153920191881

/-! ## A132393.P9388254324747489395

`gcd(A180013(n+1), A355007(n))`
-/

namespace A132393.P9388254324747489395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180013 (n + 1)) (A355007 n)

end

end A132393.P9388254324747489395

/-! ## A132393.P9709432134413064449

`A187558(n)/A130534(n)`
-/

namespace A132393.P9709432134413064449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187558 n : ℚ) / (A130534 n : ℚ)

end

end A132393.P9709432134413064449

/-!
# A132394: Left-truncatable primes in the order generated (with no zero digits).

The programs for A132394, there is no canonical definition to state claims against.
-/

/-! ## A132394.P756010670203007485

`p?[A076641(A195098(n+1))+1]`
-/

namespace A132394.P756010670203007485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 (A195098 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132394.P756010670203007485

/-! ## A132394.P3850844329068039871

`p?[A076641(n)+A057427(A107062(n))]`
-/

namespace A132394.P3850844329068039871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 n + A057427 (A107062 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132394.P3850844329068039871

/-! ## A132394.P17532658293492601114

`p?[A231848(n+1)-2]`
-/

namespace A132394.P17532658293492601114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231848 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A132394.P17532658293492601114

/-! ## A132394.P15875839936733599865

`∩[A024785(n+1), A034294(n+1)]`
-/

namespace A132394.P15875839936733599865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132394.P15875839936733599865

/-! ## A132394.P3727768881754107521

`∩[A033664(n+1), A034294(n+1)]`
-/

namespace A132394.P3727768881754107521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132394.P3727768881754107521

/-!
# A132395: a(n) = (11^(n+2) + 12^(2*n+1))/133.

The programs for A132395, the canonical program `A132395.P2993895881917100198` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132395 has offset 0).

The definition of A132395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132395.P2993895881917100198

`(11^(n+2)+12^(2*n+1))/133`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132395

/-- `(11^(n+2)+12^(2*n+1))/133` -/
def P2993895881917100198.Spec : Prop :=
  ∀ n, P2993895881917100198.a n = (A132395 n : ℚ)

end A132395

/-!
# A132397: Second trisection of A024494.

The programs for A132397, the canonical program `A132397.P11387017981598604836` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A132397 has offset 0).

The definition of A132397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A132397.P11387017981598604836

`7*a(n-1)+8*a(n-2)` with `a(0)=2, a(1)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A132397

/-- `7*a(n-1)+8*a(n-2)` -/
def P11387017981598604836.Spec : Prop :=
  ∀ n, (P11387017981598604836.a n : ℤ) = A132397 n

theorem P11387017981598604836.correct : P11387017981598604836.Spec := by
  intro n
  simp only [A132397]

end A132397

/-! ## A132397.P1221360823123326807

`2*((-1)^n+2^(1+3*n))/3`
-/

namespace A132397.P1221360823123326807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((-1) ^ n + (2 ^ (1 + 3 * n) : ℤ)) : ℚ) / 3

end

end A132397.P1221360823123326807

namespace A132397

/-- `2*((-1)^n+2^(1+3*n))/3` -/
def P1221360823123326807.Spec : Prop :=
  ∀ n, P1221360823123326807.a n = (A132397 n : ℚ)

theorem P1221360823123326807.correct : P1221360823123326807.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A132397, Nat.add_sub_cancel, A132397.P1221360823123326807.a, A132397.P11387017981598604836.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A132397, Nat.add_sub_cancel, A132397.P1221360823123326807.a, A132397.P11387017981598604836.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A132397

/-! ## A132397.P2189671280747805719

`2*A082311(n)`
-/

namespace A132397.P2189671280747805719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082311 n

end

end A132397.P2189671280747805719

namespace A132397

/-- `2*A082311(n)` -/
def P2189671280747805719.Spec : Prop :=
  ∀ n, P2189671280747805719.a n = A132397 n

end A132397

/-! ## A132397.P5136486615651072747

`A078008(3*n+2)`
-/

namespace A132397.P5136486615651072747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (3 * n + 2)

end

end A132397.P5136486615651072747

namespace A132397

/-- `A078008(3*n+2)` -/
def P5136486615651072747.Spec : Prop :=
  ∀ n, P5136486615651072747.a n = A132397 n

end A132397

/-! ## A132397.P4353364244614392724

`ogf((-2+4x)/(-1+7x+8x^2))`
-/

namespace A132397.P4353364244614392724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -7, -8] n

end

end A132397.P4353364244614392724

namespace A132397

/-- `ogf((-2+4x)/(-1+7x+8x^2))` -/
def P4353364244614392724.Spec : Prop :=
  ∀ n, P4353364244614392724.a n = A132397 n

end A132397

/-! ## A132397.P12580094428702712254

`8*a(n-1)+6*(-1)^n` with `a(0)=2`
-/

namespace A132397.P12580094428702712254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) + 6 * (-1) ^ n

end

end A132397.P12580094428702712254

namespace A132397

/-- `8*a(n-1)+6*(-1)^n` -/
def P12580094428702712254.Spec : Prop :=
  ∀ n, P12580094428702712254.a n = A132397 n

end A132397

/-! ## A132397.P7380542233285549179

`A014113(3*n+1)`
-/

namespace A132397.P7380542233285549179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (3 * n + 1)

end

end A132397.P7380542233285549179

namespace A132397

/-- `A014113(3*n+1)` -/
def P7380542233285549179.Spec : Prop :=
  ∀ n, P7380542233285549179.a n = A132397 n

end A132397

/-! ## A132397.P16025665527068163098

`A087628(3*n+1)`
-/

namespace A132397.P16025665527068163098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087628 (3 * n + 1)

end

end A132397.P16025665527068163098

namespace A132397

/-- `A087628(3*n+1)` -/
def P16025665527068163098.Spec : Prop :=
  ∀ n, P16025665527068163098.a n = A132397 n

end A132397

/-! ## A132397.P2402955192933749816

`A097074(3*n)+1`
-/

namespace A132397.P2402955192933749816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097074 (3 * n) + 1

end

end A132397.P2402955192933749816

namespace A132397

/-- `A097074(3*n)+1` -/
def P2402955192933749816.Spec : Prop :=
  ∀ n, P2402955192933749816.a n = A132397 n

end A132397

/-! ## A132397.P3710756453013399828

`A024494(3*n+2)`
-/

namespace A132397.P3710756453013399828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (3 * n + 2)

end

end A132397.P3710756453013399828

namespace A132397

/-- `A024494(3*n+2)` -/
def P3710756453013399828.Spec : Prop :=
  ∀ n, P3710756453013399828.a n = A132397 n

end A132397

/-! ## A132397.P863181931134417458

`A081374(3*n+2)`
-/

namespace A132397.P863181931134417458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081374 (3 * n + 2)

end

end A132397.P863181931134417458

namespace A132397

/-- `A081374(3*n+2)` -/
def P863181931134417458.Spec : Prop :=
  ∀ n, P863181931134417458.a n = A132397 n

end A132397

/-! ## A132397.P14080374850871593467

`A087464(3*n+2)`
-/

namespace A132397.P14080374850871593467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087464 (3 * n + 2)

end

end A132397.P14080374850871593467

namespace A132397

/-- `A087464(3*n+2)` -/
def P14080374850871593467.Spec : Prop :=
  ∀ n, P14080374850871593467.a n = A132397 n

end A132397

/-! ## A132397.P8746528119037328547

`A130707(3*n+2)`
-/

namespace A132397.P8746528119037328547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 (3 * n + 2)

end

end A132397.P8746528119037328547

namespace A132397

/-- `A130707(3*n+2)` -/
def P8746528119037328547.Spec : Prop :=
  ∀ n, P8746528119037328547.a n = A132397 n

end A132397

/-! ## A132397.P4658535188151290493

`A131708(3*n+2)`
-/

namespace A132397.P4658535188151290493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (3 * n + 2)

end

end A132397.P4658535188151290493

namespace A132397

/-- `A131708(3*n+2)` -/
def P4658535188151290493.Spec : Prop :=
  ∀ n, P4658535188151290493.a n = A132397 n

end A132397

/-! ## A132397.P5583669913673434317

`A242563(3*n+2)`
-/

namespace A132397.P5583669913673434317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 (3 * n + 2)

end

end A132397.P5583669913673434317

namespace A132397

/-- `A242563(3*n+2)` -/
def P5583669913673434317.Spec : Prop :=
  ∀ n, P5583669913673434317.a n = A132397 n

end A132397

/-! ## A132397.P5447196123154551850

`2*A141355(2*n)`
-/

namespace A132397.P5447196123154551850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141355 (2 * n)

end

end A132397.P5447196123154551850

namespace A132397

/-- `2*A141355(2*n)` -/
def P5447196123154551850.Spec : Prop :=
  ∀ n, P5447196123154551850.a n = A132397 n

end A132397

/-! ## A132397.P1760723668332317421

`2*A130781(3*n)`
-/

namespace A132397.P1760723668332317421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130781 (3 * n)

end

end A132397.P1760723668332317421

namespace A132397

/-- `2*A130781(3*n)` -/
def P1760723668332317421.Spec : Prop :=
  ∀ n, P1760723668332317421.a n = A132397 n

end A132397

/-! ## A132397.P735556350033405894

`A230096(6*n+3)`
-/

namespace A132397.P735556350033405894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 (6 * n + 3)

end

end A132397.P735556350033405894

namespace A132397

/-- `A230096(6*n+3)` -/
def P735556350033405894.Spec : Prop :=
  ∀ n, P735556350033405894.a n = A132397 n

end A132397

/-! ## A132397.P2886090405603298335

`A378105(3*(n+1))-2`
-/

namespace A132397.P2886090405603298335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378105 (3 * (n + 1)) - 2

end

end A132397.P2886090405603298335

namespace A132397

/-- `A378105(3*(n+1))-2` -/
def P2886090405603298335.Spec : Prop :=
  ∀ n, P2886090405603298335.a n = A132397 n

end A132397

/-! ## A132397.P9055904303184933231

`A042950(3*n)-a(n-1)` with `a(0)=2`
-/

namespace A132397.P9055904303184933231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A042950 (3 * n) - a (n - 1)

end

end A132397.P9055904303184933231

namespace A132397

/-- `A042950(3*n)-a(n-1)` -/
def P9055904303184933231.Spec : Prop :=
  ∀ n, P9055904303184933231.a n = A132397 n

end A132397

/-!
# A132398: Numbers n such that 11*n^2 + 1 is prime.

The programs for A132398, there is no canonical definition to state claims against.
-/

/-! ## A132398.P10515357012069665656

`6*A134921(n+1)`
-/

namespace A132398.P10515357012069665656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A134921 (n + 1)

end

end A132398.P10515357012069665656

/-! ## A132398.P3240763375767256567

`A008458(A134921(n+1))`
-/

namespace A132398.P3240763375767256567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A134921 (n + 1)).toNat

end

end A132398.P3240763375767256567

/-! ## A132398.P17112164426669315771

`A008588(A134921(n+1)%(∑[n+1]+2))`
-/

namespace A132398.P17112164426669315771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.tmod (A134921 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)).toNat

end

end A132398.P17112164426669315771

/-! ## A132398.P2014455103155985703

`A008588(A134921(A000027(n+1)))`
-/

namespace A132398.P2014455103155985703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A134921 (A000027 (n + 1)).toNat).toNat

end

end A132398.P2014455103155985703

/-! ## A132398.P7259836558594293185

`lcm(A008588(A134921(n+1)), A130784(n))`
-/

namespace A132398.P7259836558594293185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008588 (A134921 (n + 1)).toNat) (A130784 n)

end

end A132398.P7259836558594293185

/-! ## A132398.P18241748029308176768

`or(A000038(n), A008588(A134921(n+1)))`
-/

namespace A132398.P18241748029308176768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A008588 (A134921 (n + 1)).toNat)

end

end A132398.P18241748029308176768

/-! ## A132398.P4733882719710489884

`A008588(A134921(n+1))%A252407(n+1)`
-/

namespace A132398.P4733882719710489884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008588 (A134921 (n + 1)).toNat) (A252407 (n + 1))

end

end A132398.P4733882719710489884

/-!
# A132399: Number of ordered ways of writing n = i + j, where i is 0 or a prime and j is a triangular number (A000217) >= 0.

The programs for A132399, there is no canonical definition to state claims against.
-/

/-! ## A132399.P7360078338873995711

`A224362(n)+char[∑[n]]`
-/

namespace A132399.P7360078338873995711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224362 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A132399.P7360078338873995711

/-! ## A132399.P13120336163453216356

`A035214(n)+A224362(n)-1`
-/

namespace A132399.P13120336163453216356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (A224362 n - 1)

end

end A132399.P13120336163453216356

/-! ## A132399.P15631955254266346467

`∑{e}[A131990(A000203(3*n+2)), #]`
-/

namespace A132399.P15631955254266346467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131990 (A000203 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A132399.P15631955254266346467

/-! ## A132399.P6129565227317454376

`gcd(6, A179388(A266285(n)))`
-/

namespace A132399.P6129565227317454376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A179388 (A266285 n).toNat)

end

end A132399.P6129565227317454376

/-! ## A132399.P9436863835737935336

`A010882((A001787(n+1)-A038505(n+2))%A130781(n))`
-/

namespace A132399.P9436863835737935336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (Int.tmod (A001787 (n + 1) - A038505 (n + 2)) (A130781 n)).toNat

end

end A132399.P9436863835737935336

