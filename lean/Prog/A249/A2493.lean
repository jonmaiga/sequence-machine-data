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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
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
# A249303: Triangular array: row n gives the coefficients of the polynomial p(n,x) defined in Comments.

The programs for A249303, the canonical program `A249303.P140894087376217444` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249303 has offset 0).

The definition of A249303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249303.P17297703722928940851

`A238988(∑[A275437(n)])`
-/

namespace A249303.P17297703722928940851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238988 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249303.P17297703722928940851

namespace A249303

/-- `A238988(∑[A275437(n)])` -/
def P17297703722928940851.Spec : Prop :=
  ∀ n, P17297703722928940851.a n = A249303 n

end A249303

/-! ## A249303.P140894087376217444

`A101950(A091018(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A249303

/-- `A101950(A091018(n+1))` -/
def P140894087376217444.Spec : Prop :=
  ∀ n, P140894087376217444.a n = A249303 n

theorem P140894087376217444.correct : P140894087376217444.Spec := by
  intro n
  simp only [A249303]

end A249303

/-! ## A249303.P11586408031956509817

`A238988(∑[gcd(2, A000005(n+1))])`
-/

namespace A249303.P11586408031956509817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238988 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249303.P11586408031956509817

namespace A249303

/-- `A238988(∑[gcd(2, A000005(n+1))])` -/
def P11586408031956509817.Spec : Prop :=
  ∀ n, P11586408031956509817.a n = A249303 n

end A249303

/-! ## A249303.P8487807308241562442

`A238988(A028391(n+1)+n+1)`
-/

namespace A249303.P8487807308241562442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238988 (A028391 (n + 1) + (n + 1 : ℤ)).toNat

end

end A249303.P8487807308241562442

namespace A249303

/-- `A238988(A028391(n+1)+n+1)` -/
def P8487807308241562442.Spec : Prop :=
  ∀ n, P8487807308241562442.a n = A249303 n

end A249303

/-! ## A249303.P14177157148086418373

`A238988(eq[A029635(n), A293600(n+1)])`
-/

namespace A249303.P14177157148086418373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238988 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A249303.P14177157148086418373

namespace A249303

/-- `A238988(eq[A029635(n), A293600(n+1)])` -/
def P14177157148086418373.Spec : Prop :=
  ∀ n, P14177157148086418373.a n = A249303 n

end A249303

/-!
# A249304: Number of zeros in row n of triangle A249133.

The programs for A249304, the canonical program `A249304.P12237902609778404011` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249304 has offset 0).

The definition of A249304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249304.P589852639470684372

`Δ[n²]-A105321(n)`
-/

namespace A249304.P589852639470684372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A105321 n

end

end A249304.P589852639470684372

namespace A249304

/-- `Δ[n²]-A105321(n)` -/
def P589852639470684372.Spec : Prop :=
  ∀ n, P589852639470684372.a n = A249304 n

theorem P589852639470684372.correct : P589852639470684372.Spec := by
  intro n
  simp only [A249304, Nat.add_sub_cancel, A249304.P589852639470684372.f1, A249304.P589852639470684372.a, A249304.P12237902609778404011.a, A001316, A001316.P6850078358198232129.a, A105321, A105321.P8001804258587492463.f1, A105321.P8001804258587492463.a, A267582, A267582.P17996107973821825514.a, A000120, A000120.P2816527436160941581.a, A048967, A048967.P3595347913858362397.a, A005187, A005187.P3874015513960485494.a, A219843, A219843.P18379057056590791838.a, A000225, A000225.P6535533121115206393.a, A001317, A001317.P8261653114070389448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249304

/-! ## A249304.P2032063966265367097

`Δ[n²-A173522(n)]`
-/

namespace A249304.P2032063966265367097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249304.P2032063966265367097

namespace A249304

/-- `Δ[n²-A173522(n)]` -/
def P2032063966265367097.Spec : Prop :=
  ∀ n, P2032063966265367097.a n = A249304 n

end A249304

/-! ## A249304.P12292968728146144594

`n+1-A105321(n%(n+1))+n`
-/

namespace A249304.P12292968728146144594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A105321 (n % (n + 1)) + (n : ℤ)

end

end A249304.P12292968728146144594

namespace A249304

/-- `n+1-A105321(n%(n+1))+n` -/
def P12292968728146144594.Spec : Prop :=
  ∀ n, P12292968728146144594.a n = A249304 n

end A249304

/-! ## A249304.P12237902609778404011

`A267582(n)-A001316(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A249304

/-- `A267582(n)-A001316(n)` -/
def P12237902609778404011.Spec : Prop :=
  ∀ n, P12237902609778404011.a n = A249304 n

theorem P12237902609778404011.correct : P12237902609778404011.Spec := by
  intro n
  simp only [A249304]

end A249304

/-! ## A249304.P7806509170129723027

`A005408(n)-Δ[A173522(n)]`
-/

namespace A249304.P7806509170129723027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (f1 (n + 1) - f1 n)

end

end A249304.P7806509170129723027

namespace A249304

/-- `A005408(n)-Δ[A173522(n)]` -/
def P7806509170129723027.Spec : Prop :=
  ∀ n, P7806509170129723027.a n = A249304 n

end A249304

/-! ## A249304.P10754462124871195932

`A005843(n)+1-A105321(n)`
-/

namespace A249304.P10754462124871195932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A105321 n)

end

end A249304.P10754462124871195932

namespace A249304

/-- `A005843(n)+1-A105321(n)` -/
def P10754462124871195932.Spec : Prop :=
  ∀ n, P10754462124871195932.a n = A249304 n

theorem P10754462124871195932.correct : P10754462124871195932.Spec := by
  intro n
  simp only [A249304, Nat.add_sub_cancel, A249304.P10754462124871195932.a, A249304.P12237902609778404011.a, A001316, A001316.P6850078358198232129.a, A005843, A005843.P3167286115683555970.a, A105321, A105321.P8001804258587492463.f1, A105321.P8001804258587492463.a, A267582, A267582.P17996107973821825514.a, A000120, A000120.P2816527436160941581.a, A048967, A048967.P3595347913858362397.a, A005187, A005187.P3874015513960485494.a, A219843, A219843.P18379057056590791838.a, A000225, A000225.P6535533121115206393.a, A001317, A001317.P8261653114070389448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249304

/-! ## A249304.P10702032043060875110

`A034856(n+1)-(A105321(n)+∑[n])`
-/

namespace A249304.P10702032043060875110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - (A105321 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A249304.P10702032043060875110

namespace A249304

/-- `A034856(n+1)-(A105321(n)+∑[n])` -/
def P10702032043060875110.Spec : Prop :=
  ∀ n, P10702032043060875110.a n = A249304 n

end A249304

/-! ## A249304.P13267826181106841833

`A048967(A004273(n)-n)+A048967(n)`
-/

namespace A249304.P13267826181106841833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A004273 n - (n : ℤ)).toNat + A048967 n

end

end A249304.P13267826181106841833

namespace A249304

/-- `A048967(A004273(n)-n)+A048967(n)` -/
def P13267826181106841833.Spec : Prop :=
  ∀ n, P13267826181106841833.a n = A249304 n

end A249304

/-! ## A249304.P9610751486023631557

`A000290(n+1)-(A105321(n)+A000290(n))`
-/

namespace A249304.P9610751486023631557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A105321 n + A000290 n)

end

end A249304.P9610751486023631557

namespace A249304

/-- `A000290(n+1)-(A105321(n)+A000290(n))` -/
def P9610751486023631557.Spec : Prop :=
  ∀ n, P9610751486023631557.a n = A249304 n

theorem P9610751486023631557.correct : P9610751486023631557.Spec := by
  intro n
  simp only [A249304, Nat.add_sub_cancel, A249304.P9610751486023631557.a, A249304.P12237902609778404011.a, A000290, A000290.P12206242496348924484.a, A001316, A001316.P6850078358198232129.a, A105321, A105321.P8001804258587492463.f1, A105321.P8001804258587492463.a, A267582, A267582.P17996107973821825514.a, A000120, A000120.P2816527436160941581.a, A048967, A048967.P3595347913858362397.a, A005187, A005187.P3874015513960485494.a, A219843, A219843.P18379057056590791838.a, A000225, A000225.P6535533121115206393.a, A001317, A001317.P8261653114070389448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249304

/-! ## A249304.P960948124768762375

`A261366(n)+n+1-A000265(A001316(n)+1)`
-/

namespace A249304.P960948124768762375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 n + ((n + 1 : ℤ) - A000265 (A001316 n + 1).toNat)

end

end A249304.P960948124768762375

namespace A249304

/-- `A261366(n)+n+1-A000265(A001316(n)+1)` -/
def P960948124768762375.Spec : Prop :=
  ∀ n, P960948124768762375.a n = A249304 n

end A249304

/-! ## A249304.P10269999053491738872

`Δ[n²-A151566(A004273(n))]`
-/

namespace A249304.P10269999053491738872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A151566 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249304.P10269999053491738872

namespace A249304

/-- `Δ[n²-A151566(A004273(n))]` -/
def P10269999053491738872.Spec : Prop :=
  ∀ n, P10269999053491738872.a n = A249304 n

end A249304

/-! ## A249304.P3905939151941410491

`A026741(2*n+1)-Δ[A173522(n)]`
-/

namespace A249304.P3905939151941410491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A249304.P3905939151941410491

namespace A249304

/-- `A026741(2*n+1)-Δ[A173522(n)]` -/
def P3905939151941410491.Spec : Prop :=
  ∀ n, P3905939151941410491.a n = A249304 n

end A249304

/-! ## A249304.P14740000320299445822

`2*n+1-A072406(2*n)`
-/

namespace A249304.P14740000320299445822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A072406 (2 * n)

end

end A249304.P14740000320299445822

namespace A249304

/-- `2*n+1-A072406(2*n)` -/
def P14740000320299445822.Spec : Prop :=
  ∀ n, P14740000320299445822.a n = A249304 n

end A249304

/-! ## A249304.P17703764757091688737

`Δ[A001489(A173522(n))+A001489(n)²]`
-/

namespace A249304.P17703764757091688737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A173522 n).toNat + A001489 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249304.P17703764757091688737

namespace A249304

/-- `Δ[A001489(A173522(n))+A001489(n)²]` -/
def P17703764757091688737.Spec : Prop :=
  ∀ n, P17703764757091688737.a n = A249304 n

end A249304

/-!
# A249306: Denominators A027642(n) of Bernoulli numbers except for a(4*k+5)=2 instead of 1.

The programs for A249306, there is no canonical definition to state claims against.
-/

/-! ## A249306.P980343122332785616

`A141056(n%or(3, n))`
-/

namespace A249306.P980343122332785616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (n % Nat.lor 3 n)

end

end A249306.P980343122332785616

/-! ## A249306.P12163429190308649263

`A141056(n)-char[or(3, n)]`
-/

namespace A249306.P12163429190308649263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A249306.P12163429190308649263

/-! ## A249306.P8346754206702946279

`lcm(and(2, -n)!, A027642(n))`
-/

namespace A249306.P8346754206702946279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat : ℤ) (A027642 n)

end

end A249306.P8346754206702946279

/-! ## A249306.P10518764088265094163

`lcm(and(3, n+1)!, A176289(n))`
-/

namespace A249306.P10518764088265094163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (Nat.land 3 (n + 1)) : ℤ) (A176289 n)

end

end A249306.P10518764088265094163

/-! ## A249306.P39764204773410305

`A141056(C(n, n^val(n+1, 2)))`
-/

namespace A249306.P39764204773410305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (Nat.choose n (n ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A249306.P39764204773410305

/-! ## A249306.P6474692395259634263

`A027642(gcd(n, Δ[round((3/8-n)²)]))`
-/

namespace A249306.P6474692395259634263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 8 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n))

end

end A249306.P6474692395259634263

/-! ## A249306.P5630116394134060662

`gcd(n-lcm(2, n)/2-floor(n/2), A164020(n))`
-/

namespace A249306.P5630116394134060662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2 - (⌊(n : ℚ) / 2⌋ : ℚ))) (A164020 n)

end

end A249306.P5630116394134060662

/-! ## A249306.P2433674903844810380

`A051717(A003815(n))`
-/

namespace A249306.P2433674903844810380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A003815 n).toNat

end

end A249306.P2433674903844810380

/-! ## A249306.P14744565992917425408

`A027642(A338824(n+2))`
-/

namespace A249306.P14744565992917425408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A338824 (n + 2)).toNat

end

end A249306.P14744565992917425408

/-! ## A249306.P13237899159545405682

`A141056(n)/A177704(n)`
-/

namespace A249306.P13237899159545405682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (A177704 n : ℚ)

end

end A249306.P13237899159545405682

/-!
# A249307: Triangle read by rows: A249095(n,k) * 2^k, k = 0 .. 2*n+1.

The programs for A249307, the canonical program `A249307.P11332962648986991517` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249307 has offset 0).

The definition of A249307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249307.P11332962648986991517

`A000079(n-floor(sqrt(n))²)*A249095(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A249307

/-- `A000079(n-floor(sqrt(n))²)*A249095(n)` -/
def P11332962648986991517.Spec : Prop :=
  ∀ n, P11332962648986991517.a n = A249307 n

theorem P11332962648986991517.correct : P11332962648986991517.Spec := by
  intro n
  simp only [A249307]

end A249307

/-! ## A249307.P3739132076651096233

`A007318(((n+1)²%A122800(n+1))%(n+1))*A000079(A053186(n))`
-/

namespace A249307.P3739132076651096233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (Int.tmod ((n + 1) ^ 2 : ℤ) (A122800 (n + 1))) (n + 1 : ℤ)).toNat * A000079 (A053186 n).toNat

end

end A249307.P3739132076651096233

namespace A249307

/-- `A007318(((n+1)²%A122800(n+1))%(n+1))*A000079(A053186(n))` -/
def P3739132076651096233.Spec : Prop :=
  ∀ n, P3739132076651096233.a n = A249307 n

end A249307

/-! ## A249307.P5420685696175368770

`A059268(A161983(n))*A249095(n)`
-/

namespace A249307.P5420685696175368770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A161983 n).toNat * A249095 n

end

end A249307.P5420685696175368770

namespace A249307

/-- `A059268(A161983(n))*A249095(n)` -/
def P5420685696175368770.Spec : Prop :=
  ∀ n, P5420685696175368770.a n = A249307 n

end A249307

/-! ## A249307.P5414421720103383889

`A000079(A053186(n))*A119963(A316670(n+1))`
-/

namespace A249307.P5414421720103383889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053186 n).toNat * A119963 (A316670 (n + 1)).toNat

end

end A249307.P5414421720103383889

namespace A249307

/-- `A000079(A053186(n))*A119963(A316670(n+1))` -/
def P5414421720103383889.Spec : Prop :=
  ∀ n, P5414421720103383889.a n = A249307 n

end A249307

/-! ## A249307.P9126890960745509093

`A059268(A161983(n))*A119963(A316670(n+1))`
-/

namespace A249307.P9126890960745509093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A161983 n).toNat * A119963 (A316670 (n + 1)).toNat

end

end A249307.P9126890960745509093

namespace A249307

/-- `A059268(A161983(n))*A119963(A316670(n+1))` -/
def P9126890960745509093.Spec : Prop :=
  ∀ n, P9126890960745509093.a n = A249307 n

end A249307

/-! ## A249307.P7617095546472671929

`A000079(A053186(n))*A119963(A316965(n)+1)`
-/

namespace A249307.P7617095546472671929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053186 n).toNat * A119963 (A316965 n + 1).toNat

end

end A249307.P7617095546472671929

namespace A249307

/-- `A000079(A053186(n))*A119963(A316965(n)+1)` -/
def P7617095546472671929.Spec : Prop :=
  ∀ n, P7617095546472671929.a n = A249307 n

end A249307

/-! ## A249307.P13221797541492547106

`A000079(A053186(n))*A007318(A117384(n+1)-1)`
-/

namespace A249307.P13221797541492547106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053186 n).toNat * A007318 (A117384 (n + 1) - 1).toNat

end

end A249307.P13221797541492547106

namespace A249307

/-- `A000079(A053186(n))*A007318(A117384(n+1)-1)` -/
def P13221797541492547106.Spec : Prop :=
  ∀ n, P13221797541492547106.a n = A249307 n

end A249307

/-!
# A249308: Central terms of triangle A249307.

The programs for A249308, the canonical program `A249308.P11744014540350760347` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249308 has offset 0).

The definition of A249308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249308.P11744014540350760347

`2^n*A128014(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249308

/-- `2^n*A128014(n)` -/
def P11744014540350760347.Spec : Prop :=
  ∀ n, P11744014540350760347.a n = A249308 n

theorem P11744014540350760347.correct : P11744014540350760347.Spec := by
  intro n
  simp only [A249308]

end A249308

/-! ## A249308.P14862638914381052147

`2^n*A001405(and(n, -2))`
-/

namespace A249308.P14862638914381052147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001405 (Int.land (n : ℤ) (-2)).toNat

end

end A249308.P14862638914381052147

namespace A249308

/-- `2^n*A001405(and(n, -2))` -/
def P14862638914381052147.Spec : Prop :=
  ∀ n, P14862638914381052147.a n = A249308 n

end A249308

/-! ## A249308.P1210040576260617151

`2^n*A000984(floor(n/2))`
-/

namespace A249308.P1210040576260617151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000984 ⌊(n : ℚ) / 2⌋.toNat

end

end A249308.P1210040576260617151

namespace A249308

/-- `2^n*A000984(floor(n/2))` -/
def P1210040576260617151.Spec : Prop :=
  ∀ n, P1210040576260617151.a n = A249308 n

end A249308

/-! ## A249308.P9431483153003419539

`4^floor(n/2)*A063886(n)`
-/

namespace A249308.P9431483153003419539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A063886 n : ℚ)

end

end A249308.P9431483153003419539

namespace A249308

/-- `4^floor(n/2)*A063886(n)` -/
def P9431483153003419539.Spec : Prop :=
  ∀ n, P9431483153003419539.a n = (A249308 n : ℚ)

end A249308

/-! ## A249308.P11027781803308631064

`A063886(n)*A213173(n)`
-/

namespace A249308.P11027781803308631064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n * A213173 n

end

end A249308.P11027781803308631064

namespace A249308

/-- `A063886(n)*A213173(n)` -/
def P11027781803308631064.Spec : Prop :=
  ∀ n, P11027781803308631064.a n = A249308 n

end A249308

/-! ## A249308.P3518996956517718193

`A304940(n)/A000034(n)`
-/

namespace A249308.P3518996956517718193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304940 n : ℚ) / (A000034 n : ℚ)

end

end A249308.P3518996956517718193

namespace A249308

/-- `A304940(n)/A000034(n)` -/
def P3518996956517718193.Spec : Prop :=
  ∀ n, P3518996956517718193.a n = (A249308 n : ℚ)

end A249308

/-! ## A249308.P15676722339349084001

`A000079(n)*A001405(A052928(n))`
-/

namespace A249308.P15676722339349084001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001405 (A052928 n).toNat

end

end A249308.P15676722339349084001

namespace A249308

/-- `A000079(n)*A001405(A052928(n))` -/
def P15676722339349084001.Spec : Prop :=
  ∀ n, P15676722339349084001.a n = A249308 n

end A249308

/-! ## A249308.P5117540688841568730

`A000079(n)*A210736(A109613(n))`
-/

namespace A249308.P5117540688841568730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A210736 (A109613 n).toNat

end

end A249308.P5117540688841568730

namespace A249308

/-- `A000079(n)*A210736(A109613(n))` -/
def P5117540688841568730.Spec : Prop :=
  ∀ n, P5117540688841568730.a n = A249308 n

end A249308

/-! ## A249308.P8323400950379439477

`A000079(n)*A001405(2*A004526(n))`
-/

namespace A249308.P8323400950379439477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001405 (2 * A004526 n).toNat

end

end A249308.P8323400950379439477

namespace A249308

/-- `A000079(n)*A001405(2*A004526(n))` -/
def P8323400950379439477.Spec : Prop :=
  ∀ n, P8323400950379439477.a n = A249308 n

end A249308

/-! ## A249308.P13570948852887020559

`A001405(A052928(n))*A045674(2*n+1)`
-/

namespace A249308.P13570948852887020559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A052928 n).toNat * A045674 (2 * n + 1)

end

end A249308.P13570948852887020559

namespace A249308

/-- `A001405(A052928(n))*A045674(2*n+1)` -/
def P13570948852887020559.Spec : Prop :=
  ∀ n, P13570948852887020559.a n = A249308 n

end A249308

/-! ## A249308.P17359194618141427418

`A045674(2*n+1)*A210736(A109613(n))`
-/

namespace A249308.P17359194618141427418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (2 * n + 1) * A210736 (A109613 n).toNat

end

end A249308.P17359194618141427418

namespace A249308

/-- `A045674(2*n+1)*A210736(A109613(n))` -/
def P17359194618141427418.Spec : Prop :=
  ∀ n, P17359194618141427418.a n = A249308 n

end A249308

/-! ## A249308.P18400709019613886386

`(A045676(n)+A045674(n))*A011782(n+1)`
-/

namespace A249308.P18400709019613886386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045676 n + A045674 n) * A011782 (n + 1)

end

end A249308.P18400709019613886386

namespace A249308

/-- `(A045676(n)+A045674(n))*A011782(n+1)` -/
def P18400709019613886386.Spec : Prop :=
  ∀ n, P18400709019613886386.a n = A249308 n

end A249308

/-! ## A249308.P6203324659354244846

`A253665(n)/A093178(n)`
-/

namespace A249308.P6203324659354244846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253665 n : ℚ) / (A093178 n : ℚ)

end

end A249308.P6203324659354244846

namespace A249308

/-- `A253665(n)/A093178(n)` -/
def P6203324659354244846.Spec : Prop :=
  ∀ n, P6203324659354244846.a n = (A249308 n : ℚ)

end A249308

/-! ## A249308.P5493234467433954639

`gcd(A253665(n), A304940(n))`
-/

namespace A249308.P5493234467433954639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253665 n) (A304940 n)

end

end A249308.P5493234467433954639

namespace A249308

/-- `gcd(A253665(n), A304940(n))` -/
def P5493234467433954639.Spec : Prop :=
  ∀ n, (P5493234467433954639.a n : ℤ) = A249308 n

end A249308

/-! ## A249308.P4233583058264645213

`A128014(n)/A128018(n)*A138340(n)`
-/

namespace A249308.P4233583058264645213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n : ℚ) / (A128018 n : ℚ) * (A138340 n : ℚ)

end

end A249308.P4233583058264645213

namespace A249308

/-- `A128014(n)/A128018(n)*A138340(n)` -/
def P4233583058264645213.Spec : Prop :=
  ∀ n, P4233583058264645213.a n = (A249308 n : ℚ)

end A249308

/-! ## A249308.P16263475825575985563

`A128014(n)/A138230(n+1)*A138340(n)`
-/

namespace A249308.P16263475825575985563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n : ℚ) / (A138230 (n + 1) : ℚ) * (A138340 n : ℚ)

end

end A249308.P16263475825575985563

namespace A249308

/-- `A128014(n)/A138230(n+1)*A138340(n)` -/
def P16263475825575985563.Spec : Prop :=
  ∀ n, P16263475825575985563.a n = (A249308 n : ℚ)

end A249308

/-! ## A249308.P4724770449569709866

`A249307(∑[2*n])`
-/

namespace A249308.P4724770449569709866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249308.P4724770449569709866

namespace A249308

/-- `A249307(∑[2*n])` -/
def P4724770449569709866.Spec : Prop :=
  ∀ n, P4724770449569709866.a n = A249308 n

end A249308

/-! ## A249308.P16204876211210410045

`A045674(2*n+1)*A249095(A002378(n))`
-/

namespace A249308.P16204876211210410045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (2 * n + 1) * A249095 (A002378 n).toNat

end

end A249308.P16204876211210410045

namespace A249308

/-- `A045674(2*n+1)*A249095(A002378(n))` -/
def P16204876211210410045.Spec : Prop :=
  ∀ n, P16204876211210410045.a n = A249308 n

end A249308

/-!
# A249309: First row of spectral array W(Pi/2).

The programs for A249309, there is no canonical definition to state claims against.
-/

/-! ## A249309.P1464293159438226164

`A000194(A080882(n))`
-/

namespace A249309.P1464293159438226164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A080882 n).toNat

end

end A249309.P1464293159438226164

/-! ## A249309.P9301278005820091887

`A003059(A080882(n)-n)`
-/

namespace A249309.P9301278005820091887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A080882 n - (n : ℤ)).toNat

end

end A249309.P9301278005820091887

/-! ## A249309.P15884743550443444472

`A000196(A080882(n)+A080880(n))`
-/

namespace A249309.P15884743550443444472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A080882 n + A080880 n).toNat

end

end A249309.P15884743550443444472

/-! ## A249309.P1005153703468773557

`A000196(A080889(n)+A080882(n))`
-/

namespace A249309.P1005153703468773557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A080889 n + A080882 n).toNat

end

end A249309.P1005153703468773557

/-! ## A249309.P11116637545263768208

`A003059(xor(A003415(n), A080882(n)))`
-/

namespace A249309.P11116637545263768208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (Int.xor (A003415 n) (A080882 n)).toNat

end

end A249309.P11116637545263768208

/-!
# A249310: Expansion of x*(1+7*x-6*x^3)/(1-8*x^2+6*x^4).

The programs for A249310, the canonical program `A249310.P13364959908401429159` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249310 has offset 1).

The definition of A249310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+7x-6x^3)/(1-8x^2+6x^4))` (program `A249310.P13364959908401429159`, by `A249310.P13364959908401429159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249310.P13364959908401429159

`ogf((1+7x-6x^3)/(1-8x^2+6x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249310

/-- `ogf((1+7x-6x^3)/(1-8x^2+6x^4))` -/
def P13364959908401429159.Spec : Prop :=
  ∀ n, P13364959908401429159.a n = A249310 (n + 1)

theorem P13364959908401429159.correct : P13364959908401429159.Spec := by
  intro n
  simp only [A249310, Nat.add_sub_cancel]

end A249310

/-! ## A249310.P1398101675667847965

`∪[A190978(n+1), Δ[A190978(n)]]`
-/

namespace A249310.P1398101675667847965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249310.P1398101675667847965

namespace A249310

/-- `∪[A190978(n+1), Δ[A190978(n)]]` -/
def P1398101675667847965.Spec : Prop :=
  ∀ n, (P1398101675667847965.a n : ℤ) = A249310 (n + 1)

end A249310

/-! ## A249310.P10273267036473408603

`A028901(A249312(n+1))`
-/

namespace A249310.P10273267036473408603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A249312 (n + 1)).toNat

end

end A249310.P10273267036473408603

namespace A249310

/-- `A028901(A249312(n+1))` -/
def P10273267036473408603.Spec : Prop :=
  ∀ n, P10273267036473408603.a n = A249310 (n + 1)

end A249310

/-!
# A249311: Expansion of x*(1+9*x-8*x^3)/(1-10*x^2+8*x^4).

The programs for A249311, the canonical program `A249311.P6893627875753282423` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249311 has offset 1).

The definition of A249311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+9x-8x^3)/(1-10x^2+8x^4))` (program `A249311.P6893627875753282423`, by `A249311.P6893627875753282423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249311.P6893627875753282423

`ogf((1+9x-8x^3)/(1-10x^2+8x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249311

/-- `ogf((1+9x-8x^3)/(1-10x^2+8x^4))` -/
def P6893627875753282423.Spec : Prop :=
  ∀ n, P6893627875753282423.a n = A249311 (n + 1)

theorem P6893627875753282423.correct : P6893627875753282423.Spec := by
  intro n
  simp only [A249311, Nat.add_sub_cancel]

end A249311

/-! ## A249311.P16437388116820410257

`∪[A190990(n+1), Δ[A190990(n)]]`
-/

namespace A249311.P16437388116820410257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190990 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249311.P16437388116820410257

namespace A249311

/-- `∪[A190990(n+1), Δ[A190990(n)]]` -/
def P16437388116820410257.Spec : Prop :=
  ∀ n, (P16437388116820410257.a n : ℤ) = A249311 (n + 1)

end A249311

/-! ## A249311.P11118838405335084473

`A037475(A249310(n+1))`
-/

namespace A249311.P11118838405335084473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A249310 (n + 1)).toNat

end

end A249311.P11118838405335084473

namespace A249311

/-- `A037475(A249310(n+1))` -/
def P11118838405335084473.Spec : Prop :=
  ∀ n, P11118838405335084473.a n = A249311 (n + 1)

end A249311

/-!
# A249312: Expansion of x*(1+11*x-10*x^3)/(1-12*x^2+10*x^4).

The programs for A249312, the canonical program `A249312.P12684972144702627575` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249312 has offset 1).

The definition of A249312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+11x-10x^3)/(1-12x^2+10x^4))` (program `A249312.P12684972144702627575`, by `A249312.P12684972144702627575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249312.P12684972144702627575

`ogf((1+11x-10x^3)/(1-12x^2+10x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249312

/-- `ogf((1+11x-10x^3)/(1-12x^2+10x^4))` -/
def P12684972144702627575.Spec : Prop :=
  ∀ n, P12684972144702627575.a n = A249312 (n + 1)

theorem P12684972144702627575.correct : P12684972144702627575.Spec := by
  intro n
  simp only [A249312, Nat.add_sub_cancel]

end A249312

/-! ## A249312.P6783699729774457067

`12*a(n-2)-10*a(n-4)` with `a(0)=1, a(1)=11, a(2)=12, a(3)=122`
-/

namespace A249312.P6783699729774457067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 12, 122] fun n a =>
  12 * a (n - 2) - 10 * a (n - 4)

end

end A249312.P6783699729774457067

namespace A249312

/-- `12*a(n-2)-10*a(n-4)` -/
def P6783699729774457067.Spec : Prop :=
  ∀ n, P6783699729774457067.a n = A249312 (n + 1)

end A249312

/-!
# A249313: Expansion of x*(1+13*x-12*x^3)/(1-14*x^2+12*x^4).

The programs for A249313, the canonical program `A249313.P11238686015312169716` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249313 has offset 1).

The definition of A249313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+13x-12x^3)/(1-14x^2+12x^4))` (program `A249313.P11238686015312169716`, by `A249313.P11238686015312169716.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249313.P11238686015312169716

`ogf((1+13x-12x^3)/(1-14x^2+12x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249313

/-- `ogf((1+13x-12x^3)/(1-14x^2+12x^4))` -/
def P11238686015312169716.Spec : Prop :=
  ∀ n, P11238686015312169716.a n = A249313 (n + 1)

theorem P11238686015312169716.correct : P11238686015312169716.Spec := by
  intro n
  simp only [A249313, Nat.add_sub_cancel]

end A249313

/-!
# A249314: Number of length n+6 0..3 arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249314, there is no canonical definition to state claims against.
-/

/-! ## A249314.P17965497331580177315

`A249319(∑[n+3]+1)`
-/

namespace A249314.P17965497331580177315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249314.P17965497331580177315

/-! ## A249314.P12641977281305619163

`and(-2, A249319(A034856(n+2)))`
-/

namespace A249314.P12641977281305619163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A249319 (A034856 (n + 2)).toNat)

end

end A249314.P12641977281305619163

/-! ## A249314.P9110913680519512322

`lcm(2, A249319(A000096(n+2)-1))`
-/

namespace A249314.P9110913680519512322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249319 (A000096 (n + 2) - 1).toNat)

end

end A249314.P9110913680519512322

/-! ## A249314.P13514914029506716276

`A249319(A034856(n+2))+A011737(n)`
-/

namespace A249314.P13514914029506716276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A034856 (n + 2)).toNat + A011737 n

end

end A249314.P13514914029506716276

/-! ## A249314.P13887457857945690096

`and(1, A000045(n))!*A249319(A034856(n+2))`
-/

namespace A249314.P13887457857945690096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A249319 (A034856 (n + 2)).toNat

end

end A249314.P13887457857945690096

/-!
# A249315: Number of length n+6 0..4 arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249315, there is no canonical definition to state claims against.
-/

/-! ## A249315.P2486329640099117336

`A249319(A141214(n+1))`
-/

namespace A249315.P2486329640099117336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A141214 (n + 1)).toNat

end

end A249315.P2486329640099117336

/-! ## A249315.P14974412025447101268

`A249319(A027379(n+2))`
-/

namespace A249315.P14974412025447101268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A027379 (n + 2)).toNat

end

end A249315.P14974412025447101268

/-! ## A249315.P1821926436628675032

`A249319(A055998(n+2))`
-/

namespace A249315.P1821926436628675032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A055998 (n + 2)).toNat

end

end A249315.P1821926436628675032

/-! ## A249315.P10115129256781556273

`A249319(A056000(n)+7)`
-/

namespace A249315.P10115129256781556273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A056000 n + 7).toNat

end

end A249315.P10115129256781556273

/-! ## A249315.P7658742305932346840

`A249319(A052905(n+1)+2)`
-/

namespace A249315.P7658742305932346840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A052905 (n + 1) + 2).toNat

end

end A249315.P7658742305932346840

/-!
# A249316: Number of length n+6 0..5 arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249316, there is no canonical definition to state claims against.
-/

/-! ## A249316.P684627461416987994

`A249319(Δ[A264443(n)])`
-/

namespace A249316.P684627461416987994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (f1 (n + 1) - f1 n).toNat

end

end A249316.P684627461416987994

/-! ## A249316.P4936780961222137488

`A249319(A046691(n+3))`
-/

namespace A249316.P4936780961222137488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A046691 (n + 3)).toNat

end

end A249316.P4936780961222137488

/-! ## A249316.P4718759280138784812

`A249319(eq[2, A092921(n)])`
-/

namespace A249316.P4718759280138784812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249316.P4718759280138784812

/-! ## A249316.P10805214928512910336

`A249319(Δ[A023545(n+1)])`
-/

namespace A249316.P10805214928512910336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (f1 (n + 1) - f1 n).toNat

end

end A249316.P10805214928512910336

/-! ## A249316.P12404653554819202535

`A249319(A000217(n+5)-4)`
-/

namespace A249316.P12404653554819202535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A000217 (n + 5) - 4).toNat

end

end A249316.P12404653554819202535

/-!
# A249317: Number of length n+6 0..6 arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249317, there is no canonical definition to state claims against.
-/

/-! ## A249317.P14293950298244997314

`A249319(A052905(n+3))`
-/

namespace A249317.P14293950298244997314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A052905 (n + 3)).toNat

end

end A249317.P14293950298244997314

/-! ## A249317.P6885661201104870410

`A249319(eq[3, A219347(n)])`
-/

namespace A249317.P6885661201104870410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249317.P6885661201104870410

/-! ## A249317.P17473208527889554520

`A249319(eq[5, A193592(n)])`
-/

namespace A249317.P17473208527889554520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249317.P17473208527889554520

/-! ## A249317.P16790504477985135247

`A249319(eq[8, A185782(n+1)])`
-/

namespace A249317.P16790504477985135247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249317.P16790504477985135247

/-! ## A249317.P17546316703749509068

`A249319(Δ[Δ[A006504(n+1)]])`
-/

namespace A249317.P17546316703749509068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (f1 (n + 1) - f1 n).toNat

end

end A249317.P17546316703749509068

/-!
# A249318: Number of length n+6 0..7 arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249318, there is no canonical definition to state claims against.
-/

/-! ## A249318.P1640666158808748930

`A249319(eq[4, A219347(n)])`
-/

namespace A249318.P1640666158808748930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249318.P1640666158808748930

/-! ## A249318.P17979807119601220685

`A249319(eq[6, A193592(n)])`
-/

namespace A249318.P17979807119601220685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249318.P17979807119601220685

/-! ## A249318.P5832940803764337127

`A249319(A000217(n+7)-6)`
-/

namespace A249318.P5832940803764337127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A000217 (n + 7) - 6).toNat

end

end A249318.P5832940803764337127

/-! ## A249318.P16545405968590863747

`A249319(eq[4, A092921(n+1)])`
-/

namespace A249318.P16545405968590863747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249318.P16545405968590863747

/-! ## A249318.P5484778228024882853

`A249319(eq[7, A200370(n+1)])`
-/

namespace A249318.P5484778228024882853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249318.P5484778228024882853

/-!
# A249320: Number of length 1+6 0..n arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249320, there is no canonical definition to state claims against.
-/

/-! ## A249320.P6448708589218820288

`(n+2)^7-A249360(n+1)`
-/

namespace A249320.P6448708589218820288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249360 (n + 1)

end

end A249320.P6448708589218820288

/-! ## A249320.P18112738199203180641

`A249319(∑[n]+1)`
-/

namespace A249320.P18112738199203180641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249320.P18112738199203180641

/-! ## A249320.P3414983475911892663

`lcm(2, A249319(A000124(n)))`
-/

namespace A249320.P3414983475911892663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249319 (A000124 n).toNat)

end

end A249320.P3414983475911892663

/-! ## A249320.P14345717384837918981

`record[gcd(A002262(n), A249319(n+1))]`
-/

namespace A249320.P14345717384837918981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A249319 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249320.P14345717384837918981

/-! ## A249320.P9635986916051478234

`A014963(20*(n+1))*A249319(A000124(n))`
-/

namespace A249320.P9635986916051478234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A249319 (A000124 n).toNat

end

end A249320.P9635986916051478234

/-!
# A249321: Number of length 2+6 0..n arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249321, there is no canonical definition to state claims against.
-/

/-! ## A249321.P14470094699472997909

`A249319(∑[n+1]+2)`
-/

namespace A249321.P14470094699472997909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249321.P14470094699472997909

/-! ## A249321.P3541321153840929780

`A249319(A133263(n+1))+A025469(n)`
-/

namespace A249321.P3541321153840929780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A133263 (n + 1)).toNat + A025469 n

end

end A249321.P3541321153840929780

/-!
# A249322: Number of length 3+6 0..n arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249322, there is no canonical definition to state claims against.
-/

/-! ## A249322.P10216517484325007995

`A249319(∑[n+2]+4)`
-/

namespace A249322.P10216517484325007995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249322.P10216517484325007995

/-! ## A249322.P3465962119062367347

`lcm(2, A249319(A167614(n+1)))`
-/

namespace A249322.P3465962119062367347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249319 (A167614 (n + 1)).toNat)

end

end A249322.P3465962119062367347

/-! ## A249322.P7261609081644675669

`A249319(A167614(n+1))+A025444(n)`
-/

namespace A249322.P7261609081644675669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A167614 (n + 1)).toNat + A025444 n

end

end A249322.P7261609081644675669

/-! ## A249322.P12016760368970732986

`A249319(A167614(n+1))+A137579(n)`
-/

namespace A249322.P12016760368970732986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A167614 (n + 1)).toNat + A137579 n

end

end A249322.P12016760368970732986

/-! ## A249322.P11476920970016664179

`A014902(n)*A249319(A167614(n+1))`
-/

namespace A249322.P11476920970016664179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A249319 (A167614 (n + 1)).toNat

end

end A249322.P11476920970016664179

/-!
# A249323: Number of length 4+6 0..n arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249323, there is no canonical definition to state claims against.
-/

/-! ## A249323.P14770001323573428555

`A249319(∑[n+3]+7)`
-/

namespace A249323.P14770001323573428555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249323.P14770001323573428555

/-! ## A249323.P15394287426071281323

`lcm(2, A249319(A167614(n+2)+1))`
-/

namespace A249323.P15394287426071281323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A249319 (A167614 (n + 2) + 1).toNat)

end

end A249323.P15394287426071281323

/-! ## A249323.P5584070163865943390

`A249319(A027379(n+1)+7)+char[16]`
-/

namespace A249323.P5584070163865943390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A027379 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A249323.P5584070163865943390

/-! ## A249323.P9321407453239888579

`A007318(C(n, 2))*A249319(A000217(n+3)+4)`
-/

namespace A249323.P9321407453239888579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A249319 (A000217 (n + 3) + 4).toNat

end

end A249323.P9321407453239888579

/-! ## A249323.P16263996937272872736

`A000041(C(2, n+2))*A249319(A000217(n+3)+4)`
-/

namespace A249323.P16263996937272872736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A249319 (A000217 (n + 3) + 4).toNat

end

end A249323.P16263996937272872736

/-!
# A249324: Number of length 5+6 0..n arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249324, there is no canonical definition to state claims against.
-/

/-! ## A249324.P6867047923004406412

`A249319(C(n+5, 2)+5)`
-/

namespace A249324.P6867047923004406412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (Nat.choose (n + 5) 2 + 5)

end

end A249324.P6867047923004406412

/-! ## A249324.P16104320272564030404

`A249319(A167499(n+3))`
-/

namespace A249324.P16104320272564030404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A167499 (n + 3)).toNat

end

end A249324.P16104320272564030404

/-! ## A249324.P14172246968491142906

`A249319(A155212(n)+13)`
-/

namespace A249324.P14172246968491142906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A155212 n + 13).toNat

end

end A249324.P14172246968491142906

/-! ## A249324.P9170753362601106935

`A249319(A056000(n)+15)`
-/

namespace A249324.P9170753362601106935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A056000 n + 15).toNat

end

end A249324.P9170753362601106935

/-! ## A249324.P16550499701137015818

`A249319(eq[7, A066657(n)])`
-/

namespace A249324.P16550499701137015818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249324.P16550499701137015818

/-!
# A249325: Number of length 6+6 0..n arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249325, there is no canonical definition to state claims against.
-/

/-! ## A249325.P14434769555716705204

`A249319(A056115(n)+21)`
-/

namespace A249325.P14434769555716705204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A056115 n + 21).toNat

end

end A249325.P14434769555716705204

/-! ## A249325.P3675415954917904425

`A249319(Δ[A264443(n)]+10)`
-/

namespace A249325.P3675415954917904425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (f1 (n + 1) - f1 n + 10).toNat

end

end A249325.P3675415954917904425

/-! ## A249325.P6802283250568883637

`A249319(A167499(n+4)+1)`
-/

namespace A249325.P6802283250568883637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A167499 (n + 4) + 1).toNat

end

end A249325.P6802283250568883637

/-! ## A249325.P15779687483506429717

`A249319(A167614(n+4)+3)`
-/

namespace A249325.P15779687483506429717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A167614 (n + 4) + 3).toNat

end

end A249325.P15779687483506429717

/-! ## A249325.P2392340810146534196

`A249319(A340266(n+4)+4)`
-/

namespace A249325.P2392340810146534196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A340266 (n + 4) + 4).toNat

end

end A249325.P2392340810146534196

/-!
# A249326: Number of length 7+6 0..n arrays with no seven consecutive terms having six times any element equal to the sum of the remaining six.

The programs for A249326, there is no canonical definition to state claims against.
-/

/-! ## A249326.P17789688630436960421

`A249319(A056119(n)+28)`
-/

namespace A249326.P17789688630436960421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A056119 n + 28).toNat

end

end A249326.P17789688630436960421

/-! ## A249326.P15759709795105185553

`A249319(eq[11, A066657(n)])`
-/

namespace A249326.P15759709795105185553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249326.P15759709795105185553

/-! ## A249326.P6375456064222741168

`A249319(A167614(n+5)+4)`
-/

namespace A249326.P6375456064222741168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A167614 (n + 5) + 4).toNat

end

end A249326.P6375456064222741168

/-! ## A249326.P4845662832526390094

`A249319(A000124(n+6)+6)`
-/

namespace A249326.P4845662832526390094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A000124 (n + 6) + 6).toNat

end

end A249326.P4845662832526390094

/-! ## A249326.P14747232595451817497

`A249319(A238531(n+7)+5)`
-/

namespace A249326.P14747232595451817497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249319 (A238531 (n + 7) + 5).toNat

end

end A249326.P14747232595451817497

/-!
# A249327: Rectangular array T(n,k) = f(n)*k^2, where f = A005117 (squarefree numbers); n, k >= 1; read by antidiagonals.

The programs for A249327, there is no canonical definition to state claims against.
-/

/-! ## A249327.P14833881117916967277

`A005117(A002260(n+1))*A055461(n+1)`
-/

namespace A249327.P14833881117916967277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A002260 (n + 1)).toNat * A055461 (n + 1)

end

end A249327.P14833881117916967277

/-! ## A249327.P14207330035360022002

`A005117(A002262(n)+1)*A055461(n+1)`
-/

namespace A249327.P14207330035360022002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A002262 n + 1).toNat * A055461 (n + 1)

end

end A249327.P14207330035360022002

/-! ## A249327.P3786826926341507340

`A005117(abs(A140756(n+1)))*A055461(n+1)`
-/

namespace A249327.P3786826926341507340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 |A140756 (n + 1)|.toNat * A055461 (n + 1)

end

end A249327.P3786826926341507340

/-! ## A249327.P5889028520465294884

`A004736(n+1)²*A077377(A002260(n+1))`
-/

namespace A249327.P5889028520465294884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * A077377 (A002260 (n + 1)).toNat

end

end A249327.P5889028520465294884

/-! ## A249327.P3114166053939711401

`A005117(log2(A059268(n))+1)*A055461(n+1)`
-/

namespace A249327.P3114166053939711401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat * A055461 (n + 1)

end

end A249327.P3114166053939711401

/-! ## A249327.P17319697952293592331

`A005117(val(A130328(n), 2)+1)*A055461(n+1)`
-/

namespace A249327.P17319697952293592331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.valuation (A130328 n).toNat 2 + 1) * A055461 (n + 1)

end

end A249327.P17319697952293592331

/-! ## A249327.P850023846273951255

`A005117(val(A175840(n), 2)+1)*A055461(n+1)`
-/

namespace A249327.P850023846273951255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.valuation (A175840 n).toNat 2 + 1) * A055461 (n + 1)

end

end A249327.P850023846273951255

/-!
# A249329: First row of spectral array W(log(Pi)).

The programs for A249329, there is no canonical definition to state claims against.
-/

/-! ## A249329.P16443188903043778849

`A041023(n+1)-A178798(A041023(n))`
-/

namespace A249329.P16443188903043778849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (n + 1) - A178798 (A041023 n).toNat

end

end A249329.P16443188903043778849

/-!
# A249330: Primes which do not divide any repunit number R(p) = (10^p - 1)/9 with p prime.

The programs for A249330, there is no canonical definition to state claims against.
-/

/-! ## A249330.P7275424741440151320

`p?[eq[A104768(n), A319581(n+1)]]`
-/

namespace A249330.P7275424741440151320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104768 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319581 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A249330.P7275424741440151320

/-! ## A249330.P16273685023528622672

`p?[∑[A001511(A120906(n))]]`
-/

namespace A249330.P16273685023528622672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A120906 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249330.P16273685023528622672

/-! ## A249330.P18071640912772283465

`p?[A001651(A247973(2*n+1))]`
-/

namespace A249330.P18071640912772283465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A247973 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249330.P18071640912772283465

/-! ## A249330.P3267060177616922563

`p?[A329975(n+1)-A001950(n+5)]`
-/

namespace A249330.P3267060177616922563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329975 (n + 1) - A001950 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249330.P3267060177616922563

/-! ## A249330.P1022747545080149534

`A000040(lt[A336814(n+2), A336814(3*n+2)])`
-/

namespace A249330.P1022747545080149534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336814 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336814 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249330.P1022747545080149534

/-!
# A249331: Numbers missing in A249299 = list {b(n)} of numbers such that Sum_{k=1..b(n)} b(k) is not in the list.

The programs for A249331, there is no canonical definition to state claims against.
-/

/-! ## A249331.P17014546485908132362

`comp[A249299(n+1)]`
-/

namespace A249331.P17014546485908132362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A249331.P17014546485908132362

/-!
# A249332: a(n) = Sum_{k=0..2*n} binomial(2*n, k)^4.

The programs for A249332, there is no canonical definition to state claims against.
-/

/-! ## A249332.P2588292892083879343

`A005260(2*n)`
-/

namespace A249332.P2588292892083879343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 (2 * n)

end

end A249332.P2588292892083879343

/-! ## A249332.P16445132385627700634

`record[A005260(n)/(-1)^n]`
-/

namespace A249332.P16445132385627700634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005260 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249332.P16445132385627700634

/-! ## A249332.P1142948098039832848

`(2*n+1)*A178824(2*n)`
-/

namespace A249332.P1142948098039832848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A178824 (2 * n)

end

end A249332.P1142948098039832848

/-! ## A249332.P16019199333299912223

`record[A005260((n+1)/2^val(n+1, 2)-1)]`
-/

namespace A249332.P16019199333299912223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249332.P16019199333299912223

/-! ## A249332.P5561189590174528600

`record[A005260(A083220(n))]`
-/

namespace A249332.P5561189590174528600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249332.P5561189590174528600

/-!
# A249333: Number of regions formed by extending the sides of a regular n-gon.

The programs for A249333, the canonical program `A249333.P5432692050548668862` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249333 has offset 3).

The definition of A249333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249333.P5432692050548668862

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=9, a(2)=16, a(3)=19, a(4)=29`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249333

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5432692050548668862.Spec : Prop :=
  ∀ n, P5432692050548668862.a n = A249333 (n + 3)

theorem P5432692050548668862.correct : P5432692050548668862.Spec := by
  intro n
  simp only [A249333, Nat.add_sub_cancel]

end A249333

/-! ## A249333.P11599480678373574849

`(floor(n/2)+2)*(n+3)+1`
-/

namespace A249333.P11599480678373574849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 2) * (n + 3 : ℤ) + 1

end

end A249333.P11599480678373574849

namespace A249333

/-- `(floor(n/2)+2)*(n+3)+1` -/
def P11599480678373574849.Spec : Prop :=
  ∀ n, P11599480678373574849.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P11225620933616504989

`floor(A167614(n+1)+lcm(2, xor(1, n))/2)`
-/

namespace A249333.P11225620933616504989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167614 (n + 1) : ℚ) + (Nat.lcm 2 (Nat.xor 1 n) : ℚ) / 2⌋

end

end A249333.P11225620933616504989

namespace A249333

/-- `floor(A167614(n+1)+lcm(2, xor(1, n))/2)` -/
def P11225620933616504989.Spec : Prop :=
  ∀ n, P11225620933616504989.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P8642745671962764713

`Δ[A055831(n+4)-A213479(n)]`
-/

namespace A249333.P8642745671962764713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4) - A213479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249333.P8642745671962764713

namespace A249333

/-- `Δ[A055831(n+4)-A213479(n)]` -/
def P8642745671962764713.Spec : Prop :=
  ∀ n, P8642745671962764713.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P13722974419104196983

`Δ[A049778(n+2)+n]`
-/

namespace A249333.P13722974419104196983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249333.P13722974419104196983

namespace A249333

/-- `Δ[A049778(n+2)+n]` -/
def P13722974419104196983.Spec : Prop :=
  ∀ n, P13722974419104196983.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P6489624378379441583

`A075855(n+4)`
-/

namespace A249333.P6489624378379441583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075855 (n + 4)

end

end A249333.P6489624378379441583

namespace A249333

/-- `A075855(n+4)` -/
def P6489624378379441583.Spec : Prop :=
  ∀ n, P6489624378379441583.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P7728161589222330312

`A000027(A105638(n+5)+2)`
-/

namespace A249333.P7728161589222330312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A105638 (n + 5) + 2).toNat

end

end A249333.P7728161589222330312

namespace A249333

/-- `A000027(A105638(n+5)+2)` -/
def P7728161589222330312.Spec : Prop :=
  ∀ n, P7728161589222330312.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P8446208136901620194

`A000027(A079326(n+4)-A004526(n))`
-/

namespace A249333.P8446208136901620194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A079326 (n + 4) - A004526 n).toNat

end

end A249333.P8446208136901620194

namespace A249333

/-- `A000027(A079326(n+4)-A004526(n))` -/
def P8446208136901620194.Spec : Prop :=
  ∀ n, P8446208136901620194.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P18298686422139248724

`A007607(A087811(n+2)+1)`
-/

namespace A249333.P18298686422139248724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (A087811 (n + 2) + 1).toNat

end

end A249333.P18298686422139248724

namespace A249333

/-- `A007607(A087811(n+2)+1)` -/
def P18298686422139248724.Spec : Prop :=
  ∀ n, P18298686422139248724.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P1814225633962646349

`A007607(A002620(n+3)+1)`
-/

namespace A249333.P1814225633962646349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (A002620 (n + 3) + 1).toNat

end

end A249333.P1814225633962646349

namespace A249333

/-- `A007607(A002620(n+3)+1)` -/
def P1814225633962646349.Spec : Prop :=
  ∀ n, P1814225633962646349.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P1980411040465298188

`A278818(A079326(n+3))`
-/

namespace A249333.P1980411040465298188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 (A079326 (n + 3)).toNat

end

end A249333.P1980411040465298188

namespace A249333

/-- `A278818(A079326(n+3))` -/
def P1980411040465298188.Spec : Prop :=
  ∀ n, P1980411040465298188.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P14668591084367057195

`A116942(A074148(n+3)-n)`
-/

namespace A249333.P14668591084367057195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116942 (A074148 (n + 3) - (n : ℤ)).toNat

end

end A249333.P14668591084367057195

namespace A249333

/-- `A116942(A074148(n+3)-n)` -/
def P14668591084367057195.Spec : Prop :=
  ∀ n, P14668591084367057195.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P8107961558427885309

`A028310(A174239(n)+A167614(n+1))`
-/

namespace A249333.P8107961558427885309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A174239 n + A167614 (n + 1)).toNat

end

end A249333.P8107961558427885309

namespace A249333

/-- `A028310(A174239(n)+A167614(n+1))` -/
def P8107961558427885309.Spec : Prop :=
  ∀ n, P8107961558427885309.a n = A249333 (n + 3)

end A249333

/-! ## A249333.P11184315818969229345

`A199855(∑[n+3]+5)`
-/

namespace A249333.P11184315818969229345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199855 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A249333.P11184315818969229345

namespace A249333

/-- `A199855(∑[n+3]+5)` -/
def P11184315818969229345.Spec : Prop :=
  ∀ n, P11184315818969229345.a n = A249333 (n + 3)

end A249333

/-!
# A249334: Numbers for which the digital sum contains the same distinct digits as the digital product.

The programs for A249334, there is no canonical definition to state claims against.
-/

/-! ## A249334.P17036825486030559818

`eq[A106612(n), A381491(n+1)]`
-/

namespace A249334.P17036825486030559818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249334.P17036825486030559818

/-! ## A249334.P9237597642435588267

`filter[A330027(2*n+1), A136522(#)]`
-/

namespace A249334.P9237597642435588267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330027 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A249334.P9237597642435588267

/-! ## A249334.P8342476089875328911

`filter[A330027(2*n+1), A202022(#)]`
-/

namespace A249334.P8342476089875328911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330027 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A249334.P8342476089875328911

/-! ## A249334.P8049113180168139448

`∩[A099165(n+1), A108194(n+1)]`
-/

namespace A249334.P8049113180168139448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249334.P8049113180168139448

/-! ## A249334.P6390017751401718123

`∩[A108194(n+1), A239480(n+1)]`
-/

namespace A249334.P6390017751401718123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249334.P6390017751401718123

/-!
# A249336: a(1) = 1; for n>1, a(n) = number of values k in range 1 .. n-1 such that {sum of prime indices in the prime factorization of a(k)} = {sum of prime indices in the prime factorization of a(n-1)}, both counted with multiplicity.

The programs for A249336, there is no canonical definition to state claims against.
-/

/-! ## A249336.P1232607631834922063

`A060502(or(2, A288260(n)))`
-/

namespace A249336.P1232607631834922063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (Int.lor 2 (A288260 n)).toNat

end

end A249336.P1232607631834922063

/-! ## A249336.P1830398857215531963

`A102382((n+1)*A204217(n+1))`
-/

namespace A249336.P1830398857215531963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 ((n + 1 : ℤ) * A204217 (n + 1)).toNat

end

end A249336.P1830398857215531963

/-! ## A249336.P15940310713091197476

`A001222(or(A007999(n), A008011(n+2)))`
-/

namespace A249336.P15940310713091197476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A007999 n) (A008011 (n + 2))).toNat

end

end A249336.P15940310713091197476

/-! ## A249336.P5258121988829182548

`A266070(n+3)+A124769(A391683(n+1))`
-/

namespace A249336.P5258121988829182548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (n + 3) + A124769 (A391683 (n + 1)).toNat

end

end A249336.P5258121988829182548

/-! ## A249336.P15054193638441753939

`A001222(A196545(n+1)+A038040(n+4))`
-/

namespace A249336.P15054193638441753939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A196545 (n + 1) + A038040 (n + 4)).toNat

end

end A249336.P15054193638441753939

/-!
# A249337: a(1) = 1, a(2) = 2; for n>2, a(n) = number of values k in range 1 .. n-1 such that {sum of prime indices in the prime factorization of a(k)} = {sum of prime indices in the prime factorization of a(n-1)}, both counted with multiplicity.

The programs for A249337, there is no canonical definition to state claims against.
-/

/-! ## A249337.P15905456762203258125

`A036037(or(A025586(n+1), A268448(2*n+1)))`
-/

namespace A249337.P15905456762203258125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (Int.lor (A025586 (n + 1)) (A268448 (2 * n + 1))).toNat

end

end A249337.P15905456762203258125

/-! ## A249337.P8798782715138317644

`A085342(lt[A162660(n+4), A325799(3*(n+1))])`
-/

namespace A249337.P8798782715138317644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162660 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325799 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085342 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249337.P8798782715138317644

/-! ## A249337.P13741988428222563533

`A275853(A138364(n)+A005177(n))`
-/

namespace A249337.P13741988428222563533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275853 (A138364 n + A005177 n).toNat

end

end A249337.P13741988428222563533

/-! ## A249337.P2676895204360833720

`A256071(xor(A002623(n), A256069(n)))`
-/

namespace A249337.P2676895204360833720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256071 (Int.xor (A002623 n) (A256069 n)).toNat

end

end A249337.P2676895204360833720

/-! ## A249337.P1970384967311235686

`A124767(A034868(n)*A225391(n+3))`
-/

namespace A249337.P1970384967311235686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A034868 n * A225391 (n + 3)).toNat

end

end A249337.P1970384967311235686

/-!
# A249338: Sum of prime indices in the prime factorization of A249336(n), counted with multiplicity: a(n) = A056239(A249336(n)).

The programs for A249338, there is no canonical definition to state claims against.
-/

/-! ## A249338.P5057894157184881561

`A056239(A249336(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249338.P5057894157184881561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A249336 (n + 1)).toNat

end

end A249338.P5057894157184881561

/-! ## A249338.P3732409446426164373

`∑{d}[A249336(n+1), A297109(#)]`
-/

namespace A249338.P3732409446426164373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297109 d

end

end A249338.P3732409446426164373

/-! ## A249338.P2756293776000146076

`∑{d}[A249336(n+1), A000720(A014963(#))]`
-/

namespace A249338.P2756293776000146076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 (A014963 d).toNat

end

end A249338.P2756293776000146076

/-! ## A249338.P802814949163754532

`A249072(A249342(A249336(n+1))+2)`
-/

namespace A249338.P802814949163754532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (A249342 (A249336 (n + 1)).toNat + 2).toNat

end

end A249338.P802814949163754532

/-! ## A249338.P15562091918394722402

`A302039(A249336(n+1)%A251885(n+1))`
-/

namespace A249338.P15562091918394722402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (Int.tmod (A249336 (n + 1)) (A251885 (n + 1))).toNat

end

end A249338.P15562091918394722402

/-!
# A249339: Positions of ones in A249336; positions of zeros in A249338.

The programs for A249339, there is no canonical definition to state claims against.
-/

/-! ## A249339.P886111766081520997

`lt[A249338(n+1), 1]+1`
-/

namespace A249339.P886111766081520997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A249339.P886111766081520997

/-! ## A249339.P5410070312317057555

`lt[A249336(n+1), 2]+1`
-/

namespace A249339.P5410070312317057555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249336 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A249339.P5410070312317057555

/-! ## A249339.P2660376121400224728

`eq[A000007(n), A249338(A000007(n)+n)]`
-/

namespace A249339.P2660376121400224728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249339.P2660376121400224728

/-! ## A249339.P13659560465566851800

`eq[A000038(n), A249338(A000038(n)+n)]`
-/

namespace A249339.P13659560465566851800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249339.P13659560465566851800

/-! ## A249339.P12332152245181831600

`A249340(n)+a(A000038(n))` with `a(0)=1`
-/

namespace A249339.P12332152245181831600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249340 n + a (A000038 n).toNat

end

end A249339.P12332152245181831600

/-! ## A249339.P3552089978589104485

`A249340(n)+a(A025444(n))` with `a(0)=1`
-/

namespace A249339.P3552089978589104485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249340 n + a (A025444 n).toNat

end

end A249339.P3552089978589104485

/-! ## A249339.P3643031974688783223

`∏{e}[A006530(n+1), A249340(n)+#]`
-/

namespace A249339.P3643031974688783223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A249340 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A249339.P3643031974688783223

/-! ## A249339.P3927720313479000726

`∏{e}[A020639(n+1), A249340(n)+#]`
-/

namespace A249339.P3927720313479000726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A249340 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A249339.P3927720313479000726

/-! ## A249339.P4595436910598848089

`∏{e}[A123365(n+1), A249340(n)+#]`
-/

namespace A249339.P4595436910598848089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A249340 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A249339.P4595436910598848089

/-! ## A249339.P15781298902537497146

`∏{e}[record[C(A014963(n+1), n)], A249340(n)+#]`
-/

namespace A249339.P15781298902537497146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A249340 n + (Nat.factorization (f1 n) p : ℤ))

end

end A249339.P15781298902537497146

/-!
# A249340: Position of the first occurrence of n-th noncomposite number, A008578(n), in A249336; positions of records in A249338.

The programs for A249340, there is no canonical definition to state claims against.
-/

/-! ## A249340.P17680121956354054624

`A249339(n+2)-1`
-/

namespace A249340.P17680121956354054624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249339 (n + 2) - 1

end

end A249340.P17680121956354054624

/-! ## A249340.P8585684612023730814

`∑[abs(Δ[A249339(n+1)])]`
-/

namespace A249340.P8585684612023730814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249340.P8585684612023730814

/-! ## A249340.P14904814087929115025

`lt[A249338(n+2), 1]+1`
-/

namespace A249340.P14904814087929115025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A249340.P14904814087929115025

/-! ## A249340.P15391101640005059108

`lt[A249336(n+2), 2]+1`
-/

namespace A249340.P15391101640005059108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249336 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A249340.P15391101640005059108

/-! ## A249340.P3497381361362527985

`A023443(A249339(n+2))`
-/

namespace A249340.P3497381361362527985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A249339 (n + 2)).toNat

end

end A249340.P3497381361362527985

/-! ## A249340.P6721931050777389427

`eq[A000007(n), A249338(n+1)]`
-/

namespace A249340.P6721931050777389427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249340.P6721931050777389427

/-! ## A249340.P6560602851778207831

`eq[A000038(n), A249338(n+1)]`
-/

namespace A249340.P6560602851778207831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249340.P6560602851778207831

/-! ## A249340.P3649468835075229313

`eq[A014189(n), A249338(n+1)]`
-/

namespace A249340.P3649468835075229313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249340.P3649468835075229313

/-! ## A249340.P3061103934477525625

`eq[A054977(n), A249336(n+1)]`
-/

namespace A249340.P3061103934477525625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249340.P3061103934477525625

/-! ## A249340.P1637320769153158532

`eq[A057427(n), A249336(n+1)]`
-/

namespace A249340.P1637320769153158532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249340.P1637320769153158532

/-!
# A249341: Positions of ones in A249337; positions of zeros in A249072.

The programs for A249341, there is no canonical definition to state claims against.
-/

/-! ## A249341.P15877834521327153552

`eq[1, A249337(n+1)]+1`
-/

namespace A249341.P15877834521327153552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249341.P15877834521327153552

/-! ## A249341.P14001188850719152296

`lt[A249072(n+1), 1]+1`
-/

namespace A249341.P14001188850719152296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A249341.P14001188850719152296

/-! ## A249341.P2132322968455433681

`eq[A249072(A256434(n)+n), A256434(n)]`
-/

namespace A249341.P2132322968455433681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (A256434 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249341.P2132322968455433681

/-! ## A249341.P719100858695387276

`eq[A012245(n+1), A249072(A012245(n+1)+n)]`
-/

namespace A249341.P719100858695387276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (A012245 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249341.P719100858695387276

/-! ## A249341.P3734481482723876435

`ceil(A249342(n+1)+n/63)`
-/

namespace A249341.P3734481482723876435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249342 (n + 1) : ℚ) + (n : ℚ) / 63⌉

end

end A249341.P3734481482723876435

/-! ## A249341.P3803648008514536965

`A065475(A249342(n+1))`
-/

namespace A249341.P3803648008514536965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A249342 (n + 1)).toNat

end

end A249341.P3803648008514536965

/-! ## A249341.P3612126883235338192

`A181440(A249342(n+1)+1)`
-/

namespace A249341.P3612126883235338192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A249342 (n + 1) + 1).toNat

end

end A249341.P3612126883235338192

/-! ## A249341.P16927286585429599615

`A249342(n+1)+A057427(n)`
-/

namespace A249341.P16927286585429599615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249342 (n + 1) + A057427 n

end

end A249341.P16927286585429599615

/-! ## A249341.P10060591962164037028

`A249342(n+1)+A178334(n)`
-/

namespace A249341.P10060591962164037028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249342 (n + 1) + A178334 n

end

end A249341.P10060591962164037028

/-! ## A249341.P4012065908939522837

`A249342(n+1)+A178489(n)`
-/

namespace A249341.P4012065908939522837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249342 (n + 1) + A178489 n

end

end A249341.P4012065908939522837

/-!
# A249342: Position of the first occurrence of n-th noncomposite number, A008578(n), in A249337; positions of records in A249072.

The programs for A249342, there is no canonical definition to state claims against.
-/

/-! ## A249342.P11211562184611144697

`floor(A249341(n+1)-abs(sin(n)))`
-/

namespace A249342.P11211562184611144697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249341 (n + 1) : ℝ) - |Real.sin (n : ℝ)|⌋

end

end A249342.P11211562184611144697

/-! ## A249342.P13077195011859470748

`A153151(A249341(n+1))`
-/

namespace A249342.P13077195011859470748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A249341 (n + 1)).toNat

end

end A249342.P13077195011859470748

/-! ## A249342.P3207303954035434621

`A028310(A249341(n+1)-1)`
-/

namespace A249342.P3207303954035434621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A249341 (n + 1) - 1).toNat

end

end A249342.P3207303954035434621

/-! ## A249342.P963823248993228426

`A249341(n+1)+A057428(n)`
-/

namespace A249342.P963823248993228426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249341 (n + 1) + A057428 n

end

end A249342.P963823248993228426

/-! ## A249342.P351384665100196286

`A249341(n+1)-A057427(n)`
-/

namespace A249342.P351384665100196286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249341 (n + 1) - A057427 n

end

end A249342.P351384665100196286

/-! ## A249342.P4487795572527501168

`A249341(n+1)-A178334(n)`
-/

namespace A249342.P4487795572527501168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249341 (n + 1) - A178334 n

end

end A249342.P4487795572527501168

/-! ## A249342.P12148270412983812235

`A249341(n+1)-A178489(n)`
-/

namespace A249342.P12148270412983812235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249341 (n + 1) - A178489 n

end

end A249342.P12148270412983812235

/-! ## A249342.P14586694808427765009

`eq[A141044(n), A249337(n+1)]`
-/

namespace A249342.P14586694808427765009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249342.P14586694808427765009

/-! ## A249342.P13659898294579453699

`eq[A249072(n+1), A253903(n)]`
-/

namespace A249342.P13659898294579453699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249342.P13659898294579453699

/-! ## A249342.P5278676353299053244

`eq[A249072(n+1), A256434(n)]`
-/

namespace A249342.P5278676353299053244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A249342.P5278676353299053244

/-!
# A249343: The exponent of the highest power of 3 dividing the product of the elements on the n-th row of Pascal's triangle (A001142(n)).

The programs for A249343, the canonical program `A249343.P11021096354197649042` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249343 has offset 0).

The definition of A249343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249343.P11021096354197649042

`(n+1)*A004128(n)-∑[A346502(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249343

/-- `(n+1)*A004128(n)-∑[A346502(n)]` -/
def P11021096354197649042.Spec : Prop :=
  ∀ n, P11021096354197649042.a n = A249343 n

theorem P11021096354197649042.correct : P11021096354197649042.Spec := by
  intro n
  simp only [A249343]

end A249343

/-! ## A249343.P7165942299732258523

`(n+1)*A054861(n)-∑[A344853(n)]`
-/

namespace A249343.P7165942299732258523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054861 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249343.P7165942299732258523

namespace A249343

/-- `(n+1)*A054861(n)-∑[A344853(n)]` -/
def P7165942299732258523.Spec : Prop :=
  ∀ n, P7165942299732258523.a n = A249343 n

end A249343

/-! ## A249343.P5249796589525635589

`val(A001142(n), 3)`
-/

namespace A249343.P5249796589525635589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001142 n).toNat 3

end

end A249343.P5249796589525635589

namespace A249343

/-- `val(A001142(n), 3)` -/
def P5249796589525635589.Spec : Prop :=
  ∀ n, (P5249796589525635589.a n : ℤ) = A249343 n

end A249343

/-!
# A249344: A(n,k) = exponent of the largest power of n-th prime which divides k, square array read by antidiagonals.

The programs for A249344, the canonical program `A249344.P4247081362820381957` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249344 has offset 1).

The definition of A249344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249344.P4247081362820381957

`val(row(n)-col(n)+1, A000040(col(n)+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249344

/-- `val(row(n)-col(n)+1, A000040(col(n)+1))` -/
def P4247081362820381957.Spec : Prop :=
  ∀ n, (P4247081362820381957.a n : ℤ) = A249344 (n + 1)

theorem P4247081362820381957.correct : P4247081362820381957.Spec := by
  intro n
  simp only [A249344, Nat.add_sub_cancel]

end A249344

/-! ## A249344.P17454216115531176948

`∑{e}[A396348(n+1), #]`
-/

namespace A249344.P17454216115531176948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A249344.P17454216115531176948

namespace A249344

/-- `∑{e}[A396348(n+1), #]` -/
def P17454216115531176948.Spec : Prop :=
  ∀ n, (P17454216115531176948.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P15879885053865936736

`A060175(∑[char[∑[n]]]²-n)`
-/

namespace A249344.P15879885053865936736
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060175 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A249344.P15879885053865936736

namespace A249344

/-- `A060175(∑[char[∑[n]]]²-n)` -/
def P15879885053865936736.Spec : Prop :=
  ∀ n, P15879885053865936736.a n = A249344 (n + 1)

end A249344

/-! ## A249344.P11868382361423934156

`val(C(comp[∑[n]]-n, 2)-n, A037126(n+1))`
-/

namespace A249344.P11868382361423934156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A037126 (n + 1)).toNat

end

end A249344.P11868382361423934156

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A037126(n+1))` -/
def P11868382361423934156.Spec : Prop :=
  ∀ n, (P11868382361423934156.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P18170434401678539673

`val(C(comp[∑[n]]-n, 2)-n, A000040(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A249344.P18170434401678539673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat).toNat

end

end A249344.P18170434401678539673

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A000040(1-C(∑[char[∑[n]]], 2)+n))` -/
def P18170434401678539673.Spec : Prop :=
  ∀ n, (P18170434401678539673.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P12107088585168845347

`val(C(comp[∑[n]]-n, 2)-n, A000040(1-(C(∑[char[∑[n]]], 2)-n)))`
-/

namespace A249344.P12107088585168845347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A000040 (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) - (n : ℤ))).toNat).toNat

end

end A249344.P12107088585168845347

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A000040(1-(C(∑[char[∑[n]]], 2)-n)))` -/
def P12107088585168845347.Spec : Prop :=
  ∀ n, (P12107088585168845347.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P3364404107660471836

`A001222(A396348(n+1))`
-/

namespace A249344.P3364404107660471836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A396348 (n + 1)).toNat

end

end A249344.P3364404107660471836

namespace A249344

/-- `A001222(A396348(n+1))` -/
def P3364404107660471836.Spec : Prop :=
  ∀ n, P3364404107660471836.a n = A249344 (n + 1)

end A249344

/-! ## A249344.P15222801440580805703

`val(A004736(n+1), A037126(n+1))`
-/

namespace A249344.P15222801440580805703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004736 (n + 1)).toNat (A037126 (n + 1)).toNat

end

end A249344.P15222801440580805703

namespace A249344

/-- `val(A004736(n+1), A037126(n+1))` -/
def P15222801440580805703.Spec : Prop :=
  ∀ n, (P15222801440580805703.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P3331337509400605579

`val(C(comp[∑[n]]-n, 2)-n, A000040(A128227(n)))`
-/

namespace A249344.P3331337509400605579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A000040 (A128227 n).toNat).toNat

end

end A249344.P3331337509400605579

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A000040(A128227(n)))` -/
def P3331337509400605579.Spec : Prop :=
  ∀ n, (P3331337509400605579.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P7011364029338936415

`val(C(comp[∑[n]]-n, 2)-n, A000040(A002260(n+1)))`
-/

namespace A249344.P7011364029338936415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A000040 (A002260 (n + 1)).toNat).toNat

end

end A249344.P7011364029338936415

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A000040(A002260(n+1)))` -/
def P7011364029338936415.Spec : Prop :=
  ∀ n, (P7011364029338936415.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P1589904550217832281

`val(A059897(n+1), A000040(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A249344.P1589904550217832281
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059897 (n + 1)).toNat (A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat).toNat

end

end A249344.P1589904550217832281

namespace A249344

/-- `val(A059897(n+1), A000040(1-C(∑[char[∑[n]]], 2)+n))` -/
def P1589904550217832281.Spec : Prop :=
  ∀ n, (P1589904550217832281.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P10603349859279235792

`val(C(comp[∑[n]]-n, 2)-n, A000040(sqrt(A133819(n+1))))`
-/

namespace A249344.P10603349859279235792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A000040 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat).toNat

end

end A249344.P10603349859279235792

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A000040(sqrt(A133819(n+1))))` -/
def P10603349859279235792.Spec : Prop :=
  ∀ n, (P10603349859279235792.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P2263976614934592450

`val(C(comp[∑[n]]-n, 2)-n, A000040(sqrt(A143844(n))+1))`
-/

namespace A249344.P2263976614934592450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A000040 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ) + 1)).toNat).toNat

end

end A249344.P2263976614934592450

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A000040(sqrt(A143844(n))+1))` -/
def P2263976614934592450.Spec : Prop :=
  ∀ n, (P2263976614934592450.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P1234468965655012994

`val(C(comp[∑[n]]-n, 2)-n, A000040(log2(A059268(n))+1))`
-/

namespace A249344.P1234468965655012994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A000040 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat).toNat

end

end A249344.P1234468965655012994

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A000040(log2(A059268(n))+1))` -/
def P1234468965655012994.Spec : Prop :=
  ∀ n, (P1234468965655012994.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P5113822306825413049

`val(sqrt(A055461(n+1)), A000040(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A249344.P5113822306825413049
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat (A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat).toNat

end

end A249344.P5113822306825413049

namespace A249344

/-- `val(sqrt(A055461(n+1)), A000040(1-C(∑[char[∑[n]]], 2)+n))` -/
def P5113822306825413049.Spec : Prop :=
  ∀ n, (P5113822306825413049.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P14402594365028873181

`val(log2(A130321(n))+1, A000040(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A249344.P14402594365028873181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 1)).toNat (A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat).toNat

end

end A249344.P14402594365028873181

namespace A249344

/-- `val(log2(A130321(n))+1, A000040(1-C(∑[char[∑[n]]], 2)+n))` -/
def P14402594365028873181.Spec : Prop :=
  ∀ n, (P14402594365028873181.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P11537645692559388373

`val(1-∑[A167407(n)], A000040(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A249344.P11537645692559388373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat (A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ)).toNat).toNat

end

end A249344.P11537645692559388373

namespace A249344

/-- `val(1-∑[A167407(n)], A000040(1-C(∑[char[∑[n]]], 2)+n))` -/
def P11537645692559388373.Spec : Prop :=
  ∀ n, (P11537645692559388373.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P15676689538057747067

`val(1-∑[A167407(n)], A000040(1-(C(∑[char[∑[n]]], 2)-n)))`
-/

namespace A249344.P15676689538057747067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat (A000040 (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) - (n : ℤ))).toNat).toNat

end

end A249344.P15676689538057747067

namespace A249344

/-- `val(1-∑[A167407(n)], A000040(1-(C(∑[char[∑[n]]], 2)-n)))` -/
def P15676689538057747067.Spec : Prop :=
  ∀ n, (P15676689538057747067.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P1709903778442076949

`val(A004736(n+1), A000040(A002260(n+1)))`
-/

namespace A249344.P1709903778442076949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004736 (n + 1)).toNat (A000040 (A002260 (n + 1)).toNat).toNat

end

end A249344.P1709903778442076949

namespace A249344

/-- `val(A004736(n+1), A000040(A002260(n+1)))` -/
def P1709903778442076949.Spec : Prop :=
  ∀ n, (P1709903778442076949.a n : ℤ) = A249344 (n + 1)

end A249344

/-! ## A249344.P11170327591564401380

`val(C(comp[∑[n]]-n, 2)-n, A000040(A349520(2*n+1)))`
-/

namespace A249344.P11170327591564401380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat (A000040 (A349520 (2 * n + 1)).toNat).toNat

end

end A249344.P11170327591564401380

namespace A249344

/-- `val(C(comp[∑[n]]-n, 2)-n, A000040(A349520(2*n+1)))` -/
def P11170327591564401380.Spec : Prop :=
  ∀ n, (P11170327591564401380.a n : ℤ) = A249344 (n + 1)

end A249344

/-!
# A249345: The exponent of the highest power of 5 dividing the product of the elements on the n-th row of Pascal's triangle.

The programs for A249345, the canonical program `A249345.P5584176250624842080` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249345 has offset 0).

The definition of A249345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249345.P5584176250624842080

`A246839(n)-∑[A027868(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A249345

/-- `A246839(n)-∑[A027868(n)]` -/
def P5584176250624842080.Spec : Prop :=
  ∀ n, P5584176250624842080.a n = A249345 n

theorem P5584176250624842080.correct : P5584176250624842080.Spec := by
  intro n
  simp only [A249345]

end A249345

/-! ## A249345.P2499109528598643482

`A246839(n)+∑[n-A191610(n+1)]`
-/

namespace A249345.P2499109528598643482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A191610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P2499109528598643482

namespace A249345

/-- `A246839(n)+∑[n-A191610(n+1)]` -/
def P2499109528598643482.Spec : Prop :=
  ∀ n, P2499109528598643482.a n = A249345 n

end A249345

/-! ## A249345.P14253336993435459558

`A246839(n)-∑[(n-A053824(n))/4]`
-/

namespace A249345.P14253336993435459558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053824 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246839 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P14253336993435459558

namespace A249345

/-- `A246839(n)-∑[(n-A053824(n))/4]` -/
def P14253336993435459558.Spec : Prop :=
  ∀ n, P14253336993435459558.a n = (A249345 n : ℚ)

theorem P14253336993435459558.correct : P14253336993435459558.Spec := by
  intro n
  simp only [A249345, Nat.add_sub_cancel, A249345.P14253336993435459558.f1, A249345.P14253336993435459558.a, A249345.P5584176250624842080.f1, A249345.P5584176250624842080.a, A027868, A027868.P16736331187050993761.a, A053824, A053824.P3010568683746929224.a, A246839, A246839.P11173813437660088004.a, A246817, A246817.P943938610923920722.f1, A246817.P943938610923920722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249345

/-! ## A249345.P2396567970558412342

`A246839(n)-∑[comp[A000966(n+1)]-n]`
-/

namespace A249345.P2396567970558412342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P2396567970558412342

namespace A249345

/-- `A246839(n)-∑[comp[A000966(n+1)]-n]` -/
def P2396567970558412342.Spec : Prop :=
  ∀ n, P2396567970558412342.a n = A249345 n

end A249345

/-! ## A249345.P10361008494815289902

`A246839(n)-∑[(n+1-A173525(n+1))/4]`
-/

namespace A249345.P10361008494815289902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A173525 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246839 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P10361008494815289902

namespace A249345

/-- `A246839(n)-∑[(n+1-A173525(n+1))/4]` -/
def P10361008494815289902.Spec : Prop :=
  ∀ n, P10361008494815289902.a n = (A249345 n : ℚ)

theorem P10361008494815289902.correct : P10361008494815289902.Spec := by
  intro n
  simp only [A249345, Nat.add_sub_cancel, A249345.P10361008494815289902.f1, A249345.P10361008494815289902.a, A249345.P5584176250624842080.f1, A249345.P5584176250624842080.a, A027868, A027868.P16736331187050993761.a, A173525, A173525.P12961577271591045237.a, A246839, A246839.P11173813437660088004.a, A053824, A053824.P3010568683746929224.a, A246817, A246817.P943938610923920722.f1, A246817.P943938610923920722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249345

/-! ## A249345.P10689144094779514388

`A246839(n)+∑[A008906(n)-A034886(n)]`
-/

namespace A249345.P10689144094779514388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 n - A034886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P10689144094779514388

namespace A249345

/-- `A246839(n)+∑[A008906(n)-A034886(n)]` -/
def P10689144094779514388.Spec : Prop :=
  ∀ n, P10689144094779514388.a n = A249345 n

end A249345

/-! ## A249345.P15529298498340563229

`A246839(n)+∑[A137581(n)-A027869(n)]`
-/

namespace A249345.P15529298498340563229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137581 n - A027869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249345.P15529298498340563229

namespace A249345

/-- `A246839(n)+∑[A137581(n)-A027869(n)]` -/
def P15529298498340563229.Spec : Prop :=
  ∀ n, P15529298498340563229.a n = A249345 n

end A249345

/-! ## A249345.P3139804527687960032

`A246839(n)-∑[val(A243757(n), 5)]`
-/

namespace A249345.P3139804527687960032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243757 n).toNat 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A249345.P3139804527687960032

namespace A249345

/-- `A246839(n)-∑[val(A243757(n), 5)]` -/
def P3139804527687960032.Spec : Prop :=
  ∀ n, P3139804527687960032.a n = A249345 n

end A249345

/-!
# A249346: The exponent of the highest power of 6 dividing the product of the elements on the n-th row of Pascal's triangle.

The programs for A249346, there is no canonical definition to state claims against.
-/

/-! ## A249346.P17639904654473655188

`val(A001142(n), 6)`
-/

namespace A249346.P17639904654473655188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001142 n).toNat 6

end

end A249346.P17639904654473655188

/-!
# A249347: The exponent of the highest power of 7 dividing the product of the elements on the n-th row of Pascal's triangle.

The programs for A249347, there is no canonical definition to state claims against.
-/

/-! ## A249347.P2026493231032599761

`A233583(A173644(3*(n+1)))%(n+2)`
-/

namespace A249347.P2026493231032599761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A173644 (3 * (n + 1))).toNat) (n + 2 : ℤ)

end

end A249347.P2026493231032599761

/-!
# A249348: a(n) = (A001147(n+1)^2-1)/8, where A001147(n+1) = 3*5*...*(2n+1).

The programs for A249348, the canonical program `A249348.P13311049649691406593` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249348 has offset 0).

The definition of A249348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249348.P13311049649691406593

`(A001147(n+1)²-1)/8`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249348

/-- `(A001147(n+1)²-1)/8` -/
def P13311049649691406593.Spec : Prop :=
  ∀ n, P13311049649691406593.a n = (A249348 n : ℚ)

end A249348

/-! ## A249348.P4355896818361235589

`(A006882(2*n+1)²-1)/8`
-/

namespace A249348.P4355896818361235589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (2 * n + 1) ^ 2 - 1 : ℚ) / 8

end

end A249348.P4355896818361235589

namespace A249348

/-- `(A006882(2*n+1)²-1)/8` -/
def P4355896818361235589.Spec : Prop :=
  ∀ n, P4355896818361235589.a n = (A249348 n : ℚ)

end A249348

/-! ## A249348.P2237453053334794121

`C(ceil(∏[Δ[n²]]/2), 2)`
-/

namespace A249348.P2237453053334794121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉.toNat 2

end

end A249348.P2237453053334794121

namespace A249348

/-- `C(ceil(∏[Δ[n²]]/2), 2)` -/
def P2237453053334794121.Spec : Prop :=
  ∀ n, (P2237453053334794121.a n : ℤ) = A249348 n

end A249348

/-! ## A249348.P4953106352171437853

`floor(∏[(2*n+1)²]/8)`
-/

namespace A249348.P4953106352171437853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8⌋

end

end A249348.P4953106352171437853

namespace A249348

/-- `floor(∏[(2*n+1)²]/8)` -/
def P4953106352171437853.Spec : Prop :=
  ∀ n, P4953106352171437853.a n = A249348 n

end A249348

/-! ## A249348.P7212846536916759624

`xor(1, ∏[(2*n+1)²])/8`
-/

namespace A249348.P7212846536916759624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 8

end

end A249348.P7212846536916759624

namespace A249348

/-- `xor(1, ∏[(2*n+1)²])/8` -/
def P7212846536916759624.Spec : Prop :=
  ∀ n, P7212846536916759624.a n = (A249348 n : ℚ)

end A249348

/-!
# A249349: (A001147(n+1)-1)/2, equals the index of A249348(n) within the triangular numbers A000217.

The programs for A249349, the canonical program `A249349.P16621676827320448782` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249349 has offset 0).

The definition of A249349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249349.P16621676827320448782

`(A001147(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249349

/-- `(A001147(n+1)-1)/2` -/
def P16621676827320448782.Spec : Prop :=
  ∀ n, P16621676827320448782.a n = (A249349 n : ℚ)

end A249349

/-! ## A249349.P6355314079083795286

`floor(∏[Δ[n²]]/2)`
-/

namespace A249349.P6355314079083795286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A249349.P6355314079083795286

namespace A249349

/-- `floor(∏[Δ[n²]]/2)` -/
def P6355314079083795286.Spec : Prop :=
  ∀ n, P6355314079083795286.a n = A249349 n

end A249349

/-! ## A249349.P20198759923563222

`a(n-1)*Δ[n²]+n` with `a(0)=0`
-/

namespace A249349.P20198759923563222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A249349.P20198759923563222

namespace A249349

/-- `a(n-1)*Δ[n²]+n` -/
def P20198759923563222.Spec : Prop :=
  ∀ n, P20198759923563222.a n = A249349 n

end A249349

/-! ## A249349.P2887528019873924615

`∑[n*abs(∏[or(1, -(2*n))])]`
-/

namespace A249349.P2887528019873924615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |∏ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249349.P2887528019873924615

namespace A249349

/-- `∑[n*abs(∏[or(1, -(2*n))])]` -/
def P2887528019873924615.Spec : Prop :=
  ∀ n, P2887528019873924615.a n = A249349 n

end A249349

/-! ## A249349.P15284402009443645372

`∑[n*abs(∏[xor(1, -(2*n))])]`
-/

namespace A249349.P15284402009443645372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |∏ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249349.P15284402009443645372

namespace A249349

/-- `∑[n*abs(∏[xor(1, -(2*n))])]` -/
def P15284402009443645372.Spec : Prop :=
  ∀ n, P15284402009443645372.a n = A249349 n

end A249349

/-! ## A249349.P10585247642631977426

`(lcm(2, ∏[2*n+1])-2)/4`
-/

namespace A249349.P10585247642631977426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2 : ℚ) / 4

end

end A249349.P10585247642631977426

namespace A249349

/-- `(lcm(2, ∏[2*n+1])-2)/4` -/
def P10585247642631977426.Spec : Prop :=
  ∀ n, P10585247642631977426.a n = (A249349 n : ℚ)

end A249349

/-! ## A249349.P17433294463878638585

`1/2*xor(1, ∏[2*n+1])`
-/

namespace A249349.P17433294463878638585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (Nat.xor 1 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A249349.P17433294463878638585

namespace A249349

/-- `1/2*xor(1, ∏[2*n+1])` -/
def P17433294463878638585.Spec : Prop :=
  ∀ n, P17433294463878638585.a n = (A249349 n : ℚ)

end A249349

/-! ## A249349.P10275472748074235770

`(∏[a(n-1)+2]-1)/2` with `a(0)=1`
-/

namespace A249349.P10275472748074235770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 2

end

end A249349.P10275472748074235770

namespace A249349

/-- `(∏[a(n-1)+2]-1)/2` -/
def P10275472748074235770.Spec : Prop :=
  ∀ n, P10275472748074235770.a n = (A249349 n : ℚ)

end A249349

/-! ## A249349.P15659838688765378447

`∑[n*xor(-2, ∏[2*n-1])]`
-/

namespace A249349.P15659838688765378447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (-2) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249349.P15659838688765378447

namespace A249349

/-- `∑[n*xor(-2, ∏[2*n-1])]` -/
def P15659838688765378447.Spec : Prop :=
  ∀ n, P15659838688765378447.a n = A249349 n

end A249349

/-! ## A249349.P13225909330095153108

`∑[n*abs(∏[a(n-1)-2])]` with `a(0)=1`
-/

namespace A249349.P13225909330095153108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |∏ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249349.P13225909330095153108

namespace A249349

/-- `∑[n*abs(∏[a(n-1)-2])]` -/
def P13225909330095153108.Spec : Prop :=
  ∀ n, P13225909330095153108.a n = A249349 n

end A249349

/-!
# A249350: Prime numbers Q such that the concatenation Q,6,Q is prime.

The programs for A249350, there is no canonical definition to state claims against.
-/

/-! ## A249350.P1707489191949824209

`A200997(A090423(n+1)+A046022(n+1))`
-/

namespace A249350.P1707489191949824209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A090423 (n + 1) + A046022 (n + 1)).toNat

end

end A249350.P1707489191949824209

/-! ## A249350.P10420584798611143140

`A200997(A046022(n+1)+p?[A257318(n+1)])`
-/

namespace A249350.P10420584798611143140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A046022 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249350.P10420584798611143140

/-! ## A249350.P10260582036038041872

`A063905(or(A080335(3*n+4), A247569(2*n+3)))`
-/

namespace A249350.P10260582036038041872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (Int.lor (A080335 (3 * n + 4)) (A247569 (2 * n + 3))).toNat

end

end A249350.P10260582036038041872

/-!
# A249351: Triangle read by rows in which row n lists the widths of the symmetric representation of sigma(n).

The programs for A249351, there is no canonical definition to state claims against.
-/

/-! ## A249351.P18440287711906274392

`ceil(A347367(n+1)/A113581(n))`
-/

namespace A249351.P18440287711906274392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347367 (n + 1) : ℚ) / (A113581 n : ℚ)⌉

end

end A249351.P18440287711906274392

/-! ## A249351.P11491358170719503821

`ceil(A347367(n+1)/A137735(n))`
-/

namespace A249351.P11491358170719503821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347367 (n + 1) : ℚ) / (A137735 n : ℚ)⌉

end

end A249351.P11491358170719503821

/-! ## A249351.P4823778921624473932

`ceil(A347367(n+1)/A003059(n+1))`
-/

namespace A249351.P4823778921624473932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347367 (n + 1) : ℚ) / (A003059 (n + 1) : ℚ)⌉

end

end A249351.P4823778921624473932

/-! ## A249351.P16373292619226285247

`ceil(A347367(n+1)/A076619(n+1))`
-/

namespace A249351.P16373292619226285247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347367 (n + 1) : ℚ) / (A076619 (n + 1) : ℚ)⌉

end

end A249351.P16373292619226285247

/-! ## A249351.P14917757749953995043

`ceil(A347367(n+1)/A184160(n+1))`
-/

namespace A249351.P14917757749953995043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347367 (n + 1) : ℚ) / (A184160 (n + 1) : ℚ)⌉

end

end A249351.P14917757749953995043

/-! ## A249351.P8957362069557349374

`ceil(A347367(n+1)/(2*A006530(n+2)))`
-/

namespace A249351.P8957362069557349374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347367 (n + 1) : ℚ) / (2 * A006530 (n + 2) : ℚ)⌉

end

end A249351.P8957362069557349374

/-! ## A249351.P11613205587154278764

`ceil(A347367(n+1)/A244580(n+1))`
-/

namespace A249351.P11613205587154278764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347367 (n + 1) : ℚ) / (A244580 (n + 1) : ℚ)⌉

end

end A249351.P11613205587154278764

/-! ## A249351.P8798082263217400888

`A281010(comp[A007607(n+1)]+1)`
-/

namespace A249351.P8798082263217400888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A249351.P8798082263217400888

/-! ## A249351.P1552689877870059831

`A281010(gcd(A007606(n+1), A037213(n)))`
-/

namespace A249351.P1552689877870059831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (Int.gcd (A007606 (n + 1)) (A037213 n))

end

end A249351.P1552689877870059831

/-! ## A249351.P8164558159971007039

`A281010(A007606(n+1))`
-/

namespace A249351.P8164558159971007039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (A007606 (n + 1)).toNat

end

end A249351.P8164558159971007039

/-!
# A249352: (A007559(n+1)^2-1)/9, where A007559(n) = 1*4*7*...*(3n-2).

The programs for A249352, there is no canonical definition to state claims against.
-/

/-! ## A249352.P5534849585971893078

`floor(∏[(3*n+1)^3]/9)`
-/

namespace A249352.P5534849585971893078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9⌋

end

end A249352.P5534849585971893078

/-!
# A249353: a(n) = phi(n) + sigma(sigma(n)).

The programs for A249353, the canonical program `A249353.P12630331722951047343` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249353 has offset 1).

The definition of A249353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)+A000203(A000203(n+1))` (program `A249353.P12630331722951047343`, by `A249353.P12630331722951047343.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249353.P10664740351747725873

`A000010(n+1)+A051027(n+1)`
-/

namespace A249353.P10664740351747725873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A051027 (n + 1)

end

end A249353.P10664740351747725873

namespace A249353

/-- `A000010(n+1)+A051027(n+1)` -/
def P10664740351747725873.Spec : Prop :=
  ∀ n, P10664740351747725873.a n = A249353 (n + 1)

end A249353

/-! ## A249353.P12630331722951047343

`A000010(n+1)+A000203(A000203(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A249353

/-- `A000010(n+1)+A000203(A000203(n+1))` -/
def P12630331722951047343.Spec : Prop :=
  ∀ n, P12630331722951047343.a n = A249353 (n + 1)

theorem P12630331722951047343.correct : P12630331722951047343.Spec := by
  intro n
  simp only [A249353, Nat.add_sub_cancel]

end A249353

/-! ## A249353.P10473168607669063067

`A000203(∑{d}[n+1, #])+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A249353.P10473168607669063067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A249353.P10473168607669063067

namespace A249353

/-- `A000203(∑{d}[n+1, #])+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P10473168607669063067.Spec : Prop :=
  ∀ n, P10473168607669063067.a n = (A249353 (n + 1) : ℚ)

end A249353

/-! ## A249353.P634561197492578103

`A000010(n+1)+∑[A111408(n)]`
-/

namespace A249353.P634561197492578103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249353.P634561197492578103

namespace A249353

/-- `A000010(n+1)+∑[A111408(n)]` -/
def P634561197492578103.Spec : Prop :=
  ∀ n, P634561197492578103.a n = A249353 (n + 1)

end A249353

/-! ## A249353.P16460716610253654252

`A051027(n+1)+Δ[A002088(n)]`
-/

namespace A249353.P16460716610253654252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) + (f1 (n + 1) - f1 n)

end

end A249353.P16460716610253654252

namespace A249353

/-- `A051027(n+1)+Δ[A002088(n)]` -/
def P16460716610253654252.Spec : Prop :=
  ∀ n, P16460716610253654252.a n = A249353 (n + 1)

end A249353

/-! ## A249353.P3913294675871219213

`A051027(n+1)+Δ[A005728(n)]`
-/

namespace A249353.P3913294675871219213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) + (f1 (n + 1) - f1 n)

end

end A249353.P3913294675871219213

namespace A249353

/-- `A051027(n+1)+Δ[A005728(n)]` -/
def P3913294675871219213.Spec : Prop :=
  ∀ n, P3913294675871219213.a n = A249353 (n + 1)

end A249353

/-! ## A249353.P14145214485098769193

`A000010(n+1)+∑{d}[A143348(n+1), #]`
-/

namespace A249353.P14145214485098769193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A249353.P14145214485098769193

namespace A249353

/-- `A000010(n+1)+∑{d}[A143348(n+1), #]` -/
def P14145214485098769193.Spec : Prop :=
  ∀ n, P14145214485098769193.a n = A249353 (n + 1)

end A249353

/-! ## A249353.P12198802218600819921

`A000203(A000203(n+1))+Δ[A002088(n)]`
-/

namespace A249353.P12198802218600819921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A249353.P12198802218600819921

namespace A249353

/-- `A000203(A000203(n+1))+Δ[A002088(n)]` -/
def P12198802218600819921.Spec : Prop :=
  ∀ n, P12198802218600819921.a n = A249353 (n + 1)

end A249353

/-! ## A249353.P1345856098705877024

`A000203(A000203(n+1))+Δ[A005728(n)]`
-/

namespace A249353.P1345856098705877024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A249353.P1345856098705877024

namespace A249353

/-- `A000203(A000203(n+1))+Δ[A005728(n)]` -/
def P1345856098705877024.Spec : Prop :=
  ∀ n, P1345856098705877024.a n = A249353 (n + 1)

end A249353

/-! ## A249353.P10992033636853282777

`A000010(n+1)+A000203(Δ[A160664(n)])`
-/

namespace A249353.P10992033636853282777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000203 (f1 (n + 1) - f1 n).toNat

end

end A249353.P10992033636853282777

namespace A249353

/-- `A000010(n+1)+A000203(Δ[A160664(n)])` -/
def P10992033636853282777.Spec : Prop :=
  ∀ n, P10992033636853282777.a n = A249353 (n + 1)

end A249353

/-! ## A249353.P6636122620881271108

`A000203(A000203(n+1))+sqrt(A127473(n+1))`
-/

namespace A249353.P6636122620881271108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (A000203 (n + 1)).toNat : ℝ) + Real.sqrt (A127473 (n + 1) : ℝ)

end

end A249353.P6636122620881271108

namespace A249353

/-- `A000203(A000203(n+1))+sqrt(A127473(n+1))` -/
def P6636122620881271108.Spec : Prop :=
  ∀ n, P6636122620881271108.a n = (A249353 (n + 1) : ℝ)

end A249353

/-! ## A249353.P678225451690638598

`A000203(n+1)+A051027(n+1)-A051612(n+1)`
-/

namespace A249353.P678225451690638598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A051027 (n + 1) - A051612 (n + 1))

end

end A249353.P678225451690638598

namespace A249353

/-- `A000203(n+1)+A051027(n+1)-A051612(n+1)` -/
def P678225451690638598.Spec : Prop :=
  ∀ n, P678225451690638598.a n = A249353 (n + 1)

theorem P678225451690638598.correct : P678225451690638598.Spec := by
  intro n
  simp only [A249353, Nat.add_sub_cancel, A249353.P678225451690638598.a, A249353.P12630331722951047343.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051027, A051027.P5984083100296461897.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249353

/-! ## A249353.P9028034407684449353

`A051027(n+1)+A065387(n+1)-A000203(n+1)`
-/

namespace A249353.P9028034407684449353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) + (A065387 (n + 1) - A000203 (n + 1))

end

end A249353.P9028034407684449353

namespace A249353

/-- `A051027(n+1)+A065387(n+1)-A000203(n+1)` -/
def P9028034407684449353.Spec : Prop :=
  ∀ n, P9028034407684449353.a n = A249353 (n + 1)

theorem P9028034407684449353.correct : P9028034407684449353.Spec := by
  intro n
  simp only [A249353, Nat.add_sub_cancel, A249353.P9028034407684449353.a, A249353.P12630331722951047343.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051027, A051027.P5984083100296461897.a, A065387, A065387.P11284875715279330998.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249353

/-! ## A249353.P12550261625903168471

`A051027(n+1)+A062354(n+1)/A000203(n+1)`
-/

namespace A249353.P12550261625903168471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) + (A062354 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A249353.P12550261625903168471

namespace A249353

/-- `A051027(n+1)+A062354(n+1)/A000203(n+1)` -/
def P12550261625903168471.Spec : Prop :=
  ∀ n, P12550261625903168471.a n = (A249353 (n + 1) : ℚ)

end A249353

/-! ## A249353.P16540526080275005394

`∑{d}[n+1, (n+1)/#*A008683(#)]+A000203(A000203(n+1))`
-/

namespace A249353.P16540526080275005394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) + (A000203 (A000203 (n + 1)).toNat : ℚ)

end

end A249353.P16540526080275005394

namespace A249353

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]+A000203(A000203(n+1))` -/
def P16540526080275005394.Spec : Prop :=
  ∀ n, P16540526080275005394.a n = (A249353 (n + 1) : ℚ)

end A249353

/-! ## A249353.P10278371488952998943

`A000203(A000203(n+1))+log2(A066781(n+1))`
-/

namespace A249353.P10278371488952998943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (A000203 (n + 1)).toNat : ℝ) + Real.logb 2 (A066781 (n + 1) : ℝ)

end

end A249353.P10278371488952998943

namespace A249353

/-- `A000203(A000203(n+1))+log2(A066781(n+1))` -/
def P10278371488952998943.Spec : Prop :=
  ∀ n, P10278371488952998943.a n = (A249353 (n + 1) : ℝ)

end A249353

/-!
# A249354: a(n) = n*(3*n^2 + 3*n + 1).

The programs for A249354, the canonical program `A249354.P14794765986060037338` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249354 has offset 0).

The definition of A249354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n²+3*n+1)` (program `A249354.P14794765986060037338`, by `A249354.P14794765986060037338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A249354.P14794765986060037338

`n*(3*n²+3*n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249354

/-- `n*(3*n²+3*n+1)` -/
def P14794765986060037338.Spec : Prop :=
  ∀ n, (P14794765986060037338.a n : ℤ) = A249354 n

theorem P14794765986060037338.correct : P14794765986060037338.Spec := by
  intro n
  simp only [A249354]

end A249354

/-! ## A249354.P13886968455737654049

`lcm(n, Δ[n^3])`
-/

namespace A249354.P13886968455737654049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A249354.P13886968455737654049

namespace A249354

/-- `lcm(n, Δ[n^3])` -/
def P13886968455737654049.Spec : Prop :=
  ∀ n, (P13886968455737654049.a n : ℤ) = A249354 n

end A249354

/-! ## A249354.P10185369662022482194

`∑[2*C(3*n, 2)]+n`
-/

namespace A249354.P10185369662022482194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (3 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A249354.P10185369662022482194

namespace A249354

/-- `∑[2*C(3*n, 2)]+n` -/
def P10185369662022482194.Spec : Prop :=
  ∀ n, (P10185369662022482194.a n : ℤ) = A249354 n

end A249354

/-! ## A249354.P8310635316074427569

`3*lcm(n+1, n²)+n`
-/

namespace A249354.P8310635316074427569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm (n + 1) (n ^ 2) + n

end

end A249354.P8310635316074427569

namespace A249354

/-- `3*lcm(n+1, n²)+n` -/
def P8310635316074427569.Spec : Prop :=
  ∀ n, (P8310635316074427569.a n : ℤ) = A249354 n

end A249354

/-! ## A249354.P7087462044558959526

`ceil(3/acot(n+1)*n²)`
-/

namespace A249354.P7087462044558959526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (n + 1 : ℝ) * (n ^ 2 : ℝ)⌉

end

end A249354.P7087462044558959526

namespace A249354

/-- `ceil(3/acot(n+1)*n²)` -/
def P7087462044558959526.Spec : Prop :=
  ∀ n, P7087462044558959526.a n = A249354 n

end A249354

/-! ## A249354.P5439541927961111249

`lcm(2*n, Δ[n*n²])/2`
-/

namespace A249354.P5439541927961111249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A249354.P5439541927961111249

namespace A249354

/-- `lcm(2*n, Δ[n*n²])/2` -/
def P5439541927961111249.Spec : Prop :=
  ∀ n, P5439541927961111249.a n = (A249354 n : ℚ)

end A249354

/-! ## A249354.P10228180175606216657

`Δ[n²²-C(n+1, 2)²]`
-/

namespace A249354.P10228180175606216657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249354.P10228180175606216657

namespace A249354

/-- `Δ[n²²-C(n+1, 2)²]` -/
def P10228180175606216657.Spec : Prop :=
  ∀ n, P10228180175606216657.a n = A249354 n

theorem P10228180175606216657.correct : P10228180175606216657.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P10228180175606216657.f1, A249354.P10228180175606216657.a, A249354.P14794765986060037338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P4285824805830013963

`n-n*∑[a(n-1)-6]` with `a(0)=0`
-/

namespace A249354.P4285824805830013963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A249354.P4285824805830013963

namespace A249354

/-- `n-n*∑[a(n-1)-6]` -/
def P4285824805830013963.Spec : Prop :=
  ∀ n, P4285824805830013963.a n = A249354 n

end A249354

/-! ## A249354.P4052523741870612518

`lcm(2*n+1, ∑[2*n])+n^3`
-/

namespace A249354.P4052523741870612518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + n ^ 3

end

end A249354.P4052523741870612518

namespace A249354

/-- `lcm(2*n+1, ∑[2*n])+n^3` -/
def P4052523741870612518.Spec : Prop :=
  ∀ n, (P4052523741870612518.a n : ℤ) = A249354 n

end A249354

/-! ## A249354.P87101201516648511

`A067389(n)+n²`
-/

namespace A249354.P87101201516648511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n + (n ^ 2 : ℤ)

end

end A249354.P87101201516648511

namespace A249354

/-- `A067389(n)+n²` -/
def P87101201516648511.Spec : Prop :=
  ∀ n, P87101201516648511.a n = A249354 n

theorem P87101201516648511.correct : P87101201516648511.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P87101201516648511.a, A249354.P14794765986060037338.a, A067389, A067389.P14097551594125527113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P7586605219392574200

`A027903(n)-n²`
-/

namespace A249354.P7586605219392574200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n - (n ^ 2 : ℤ)

end

end A249354.P7586605219392574200

namespace A249354

/-- `A027903(n)-n²` -/
def P7586605219392574200.Spec : Prop :=
  ∀ n, P7586605219392574200.a n = A249354 n

theorem P7586605219392574200.correct : P7586605219392574200.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P7586605219392574200.a, A249354.P14794765986060037338.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P15549883463596706579

`∑[A152743(n)]+n`
-/

namespace A249354.P15549883463596706579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A249354.P15549883463596706579

namespace A249354

/-- `∑[A152743(n)]+n` -/
def P15549883463596706579.Spec : Prop :=
  ∀ n, P15549883463596706579.a n = A249354 n

end A249354

/-! ## A249354.P6492102010030423832

`A121628(n+1)/3`
-/

namespace A249354.P6492102010030423832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121628 (n + 1) : ℚ) / 3

end

end A249354.P6492102010030423832

namespace A249354

/-- `A121628(n+1)/3` -/
def P6492102010030423832.Spec : Prop :=
  ∀ n, P6492102010030423832.a n = (A249354 n : ℚ)

theorem P6492102010030423832.correct : P6492102010030423832.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P6492102010030423832.a, A249354.P14794765986060037338.a, A121628, A121628.P12785342200933405274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P9742530405757240123

`3*A011379(n)+n`
-/

namespace A249354.P9742530405757240123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A011379 n + (n : ℤ)

end

end A249354.P9742530405757240123

namespace A249354

/-- `3*A011379(n)+n` -/
def P9742530405757240123.Spec : Prop :=
  ∀ n, P9742530405757240123.a n = A249354 n

theorem P9742530405757240123.correct : P9742530405757240123.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P9742530405757240123.a, A249354.P14794765986060037338.a, A011379, A011379.P13170028565952122956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P13511442559019347630

`6*A002411(n)+n`
-/

namespace A249354.P13511442559019347630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002411 n + (n : ℤ)

end

end A249354.P13511442559019347630

namespace A249354

/-- `6*A002411(n)+n` -/
def P13511442559019347630.Spec : Prop :=
  ∀ n, P13511442559019347630.a n = A249354 n

end A249354

/-! ## A249354.P11367179186080169405

`A055112(n)+n^3`
-/

namespace A249354.P11367179186080169405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + (n ^ 3 : ℤ)

end

end A249354.P11367179186080169405

namespace A249354

/-- `A055112(n)+n^3` -/
def P11367179186080169405.Spec : Prop :=
  ∀ n, P11367179186080169405.a n = A249354 n

theorem P11367179186080169405.correct : P11367179186080169405.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P11367179186080169405.a, A249354.P14794765986060037338.a, A055112, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P16064979377725151719

`n*A028896(n)+n`
-/

namespace A249354.P16064979377725151719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028896 n + (n : ℤ)

end

end A249354.P16064979377725151719

namespace A249354

/-- `n*A028896(n)+n` -/
def P16064979377725151719.Spec : Prop :=
  ∀ n, P16064979377725151719.a n = A249354 n

theorem P16064979377725151719.correct : P16064979377725151719.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P16064979377725151719.a, A249354.P14794765986060037338.a, A028896, A028896.P3776891904721443318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P10015167158546295615

`A085540(n)-n²²`
-/

namespace A249354.P10015167158546295615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n - ((n ^ 2) ^ 2 : ℤ)

end

end A249354.P10015167158546295615

namespace A249354

/-- `A085540(n)-n²²` -/
def P10015167158546295615.Spec : Prop :=
  ∀ n, P10015167158546295615.a n = A249354 n

theorem P10015167158546295615.correct : P10015167158546295615.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P10015167158546295615.a, A249354.P14794765986060037338.a, A085540, A085540.P1594090999451982572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P15419281886288904334

`n²+A130884(n)-1`
-/

namespace A249354.P15419281886288904334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A130884 n - 1)

end

end A249354.P15419281886288904334

namespace A249354

/-- `n²+A130884(n)-1` -/
def P15419281886288904334.Spec : Prop :=
  ∀ n, P15419281886288904334.a n = A249354 n

theorem P15419281886288904334.correct : P15419281886288904334.Spec := by
  intro n
  simp only [A249354, Nat.add_sub_cancel, A249354.P15419281886288904334.a, A249354.P14794765986060037338.a, A130884, A130884.P3109233479067967411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A249354

/-! ## A249354.P4232123933193707590

`∑[2*A062741(n)]+n`
-/

namespace A249354.P4232123933193707590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A249354.P4232123933193707590

namespace A249354

/-- `∑[2*A062741(n)]+n` -/
def P4232123933193707590.Spec : Prop :=
  ∀ n, P4232123933193707590.a n = A249354 n

end A249354

/-!
# A249355: Remainder of n!+2 divided by n+2.

The programs for A249355, the canonical program `A249355.P10569354050204752979` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249355 has offset 0).

The definition of A249355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249355.P10569354050204752979

`(n!+2)%(n+2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A249355

/-- `(n!+2)%(n+2)` -/
def P10569354050204752979.Spec : Prop :=
  ∀ n, (P10569354050204752979.a n : ℤ) = A249355 n

theorem P10569354050204752979.correct : P10569354050204752979.Spec := by
  intro n
  simp only [A249355]

end A249355

/-! ## A249355.P15441713476855167026

`A230775(a(n-3)+1)+A010051(n+2)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A249355.P15441713476855167026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A230775 (a (n - 3) + 1).toNat + A010051 (n + 2)

end

end A249355.P15441713476855167026

namespace A249355

/-- `A230775(a(n-3)+1)+A010051(n+2)` -/
def P15441713476855167026.Spec : Prop :=
  ∀ n, P15441713476855167026.a n = A249355 n

end A249355

/-! ## A249355.P3181038764542378941

`(A010000(A000010(n+2))%A059100(n))%4`
-/

namespace A249355.P3181038764542378941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A010000 (A000010 (n + 2)).toNat) (A059100 n)) 4

end

end A249355.P3181038764542378941

namespace A249355

/-- `(A010000(A000010(n+2))%A059100(n))%4` -/
def P3181038764542378941.Spec : Prop :=
  ∀ n, P3181038764542378941.a n = A249355 n

end A249355

/-! ## A249355.P4909063216825415970

`A000124(n)%(A000217(n+1)-A014683(n+2))`
-/

namespace A249355.P4909063216825415970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) (A000217 (n + 1) - A014683 (n + 2))

end

end A249355.P4909063216825415970

namespace A249355

/-- `A000124(n)%(A000217(n+1)-A014683(n+2))` -/
def P4909063216825415970.Spec : Prop :=
  ∀ n, P4909063216825415970.a n = A249355 n

end A249355

/-! ## A249355.P6514101461752454226

`(A007956(n+2)+2)%A066729(n+2)`
-/

namespace A249355.P6514101461752454226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (n + 2) + 2) (A066729 (n + 2))

end

end A249355.P6514101461752454226

namespace A249355

/-- `(A007956(n+2)+2)%A066729(n+2)` -/
def P6514101461752454226.Spec : Prop :=
  ∀ n, P6514101461752454226.a n = A249355 n

end A249355

/-! ## A249355.P9990079317644396285

`A005096(n)%(n+2)`
-/

namespace A249355.P9990079317644396285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005096 n) (n + 2 : ℤ)

end

end A249355.P9990079317644396285

namespace A249355

/-- `A005096(n)%(n+2)` -/
def P9990079317644396285.Spec : Prop :=
  ∀ n, P9990079317644396285.a n = A249355 n

end A249355

/-! ## A249355.P1572144425483212210

`A066143(n)%(n+2)`
-/

namespace A249355.P1572144425483212210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066143 n) (n + 2 : ℤ)

end

end A249355.P1572144425483212210

namespace A249355

/-- `A066143(n)%(n+2)` -/
def P1572144425483212210.Spec : Prop :=
  ∀ n, P1572144425483212210.a n = A249355 n

end A249355

/-! ## A249355.P18146894379665523615

`(A038507(n)+1)%(n+2)`
-/

namespace A249355.P18146894379665523615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038507 n + 1) (n + 2 : ℤ)

end

end A249355.P18146894379665523615

namespace A249355

/-- `(A038507(n)+1)%(n+2)` -/
def P18146894379665523615.Spec : Prop :=
  ∀ n, P18146894379665523615.a n = A249355 n

end A249355

/-! ## A249355.P16455861216123101162

`(∏[A007318(∑[n]+1)]+2)%(n+2)`
-/

namespace A249355.P16455861216123101162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j + 2) (n + 2 : ℤ)

end

end A249355.P16455861216123101162

namespace A249355

/-- `(∏[A007318(∑[n]+1)]+2)%(n+2)` -/
def P16455861216123101162.Spec : Prop :=
  ∀ n, P16455861216123101162.a n = A249355 n

end A249355

/-!
# A249356: 8*A200975(n)-7 where A200975 are the numbers on the diagonals in Ulam's spiral.

The programs for A249356, the canonical program `A249356.P6798267095439788159` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249356 has offset 1).

The definition of A249356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A249356.P8980820854185232496

`2*(n+1)*(n+3)+(-1)^(n+1)-4*sin(π*(n+1)/2)`
-/

namespace A249356.P8980820854185232496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) * (n + 3) : ℤ) + (-1) ^ (n + 1) : ℝ) - 4 * Real.sin (Real.pi * (n + 1 : ℝ) / 2)

end

end A249356.P8980820854185232496

namespace A249356

/-- `2*(n+1)*(n+3)+(-1)^(n+1)-4*sin(π*(n+1)/2)` -/
def P8980820854185232496.Spec : Prop :=
  ∀ n, P8980820854185232496.a n = (A249356 (n + 1) : ℝ)

end A249356

/-! ## A249356.P6798267095439788159

`8*A200975(n+1)-7`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A249356

/-- `8*A200975(n+1)-7` -/
def P6798267095439788159.Spec : Prop :=
  ∀ n, P6798267095439788159.a n = A249356 (n + 1)

theorem P6798267095439788159.correct : P6798267095439788159.Spec := by
  intro n
  simp only [A249356, Nat.add_sub_cancel]

end A249356

/-! ## A249356.P5497967812181543152

`∑[16*ceil(n/4)]+1`
-/

namespace A249356.P5497967812181543152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * ⌈(n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249356.P5497967812181543152

namespace A249356

/-- `∑[16*ceil(n/4)]+1` -/
def P5497967812181543152.Spec : Prop :=
  ∀ n, P5497967812181543152.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P16965483539379982663

`∑[A008574(4*ceil(n/4))]`
-/

namespace A249356.P16965483539379982663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (4 * ⌈(n : ℚ) / 4⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249356.P16965483539379982663

namespace A249356

/-- `∑[A008574(4*ceil(n/4))]` -/
def P16965483539379982663.Spec : Prop :=
  ∀ n, P16965483539379982663.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P6244921691089458593

`A158057(∑[A110655(n)])`
-/

namespace A249356.P6244921691089458593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249356.P6244921691089458593

namespace A249356

/-- `A158057(∑[A110655(n)])` -/
def P6244921691089458593.Spec : Prop :=
  ∀ n, P6244921691089458593.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P7685958997233623262

`A158057(∑[A002265(n+3)])`
-/

namespace A249356.P7685958997233623262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249356.P7685958997233623262

namespace A249356

/-- `A158057(∑[A002265(n+3)])` -/
def P7685958997233623262.Spec : Prop :=
  ∀ n, P7685958997233623262.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P10634898434534803003

`A158057((A200975(n+1)-1)/2)`
-/

namespace A249356.P10634898434534803003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (SequenceMachineLib.roundAway ((A200975 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A249356.P10634898434534803003

namespace A249356

/-- `A158057((A200975(n+1)-1)/2)` -/
def P10634898434534803003.Spec : Prop :=
  ∀ n, P10634898434534803003.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P3982226246633798848

`A158057(∑[A004526(ceil(n/2)+1)])`
-/

namespace A249356.P3982226246633798848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌈(n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249356.P3982226246633798848

namespace A249356

/-- `A158057(∑[A004526(ceil(n/2)+1)])` -/
def P3982226246633798848.Spec : Prop :=
  ∀ n, P3982226246633798848.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P10289905610518449098

`A158057(A001972(n)-(A002265(n)+1))`
-/

namespace A249356.P10289905610518449098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (A001972 n - (A002265 n + 1)).toNat

end

end A249356.P10289905610518449098

namespace A249356

/-- `A158057(A001972(n)-(A002265(n)+1))` -/
def P10289905610518449098.Spec : Prop :=
  ∀ n, P10289905610518449098.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P10213707390592799420

`A158057(A001972(n)-1-A002265(n))`
-/

namespace A249356.P10213707390592799420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (A001972 n - 1 - A002265 n).toNat

end

end A249356.P10213707390592799420

namespace A249356

/-- `A158057(A001972(n)-1-A002265(n))` -/
def P10213707390592799420.Spec : Prop :=
  ∀ n, P10213707390592799420.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P14147613670651220723

`A158057(A004526(A200975(n+1)))`
-/

namespace A249356.P14147613670651220723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (A004526 (A200975 (n + 1)).toNat).toNat

end

end A249356.P14147613670651220723

namespace A249356

/-- `A158057(A004526(A200975(n+1)))` -/
def P14147613670651220723.Spec : Prop :=
  ∀ n, P14147613670651220723.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P16237726756336649086

`A168390(A194274(n+1))`
-/

namespace A249356.P16237726756336649086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (A194274 (n + 1)).toNat

end

end A249356.P16237726756336649086

namespace A249356

/-- `A168390(A194274(n+1))` -/
def P16237726756336649086.Spec : Prop :=
  ∀ n, P16237726756336649086.a n = A249356 (n + 1)

end A249356

/-! ## A249356.P11260099642183111270

`A158057(A002265(A001972(2*n+1)))`
-/

namespace A249356.P11260099642183111270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (A002265 (A001972 (2 * n + 1)).toNat).toNat

end

end A249356.P11260099642183111270

namespace A249356

/-- `A158057(A002265(A001972(2*n+1)))` -/
def P11260099642183111270.Spec : Prop :=
  ∀ n, P11260099642183111270.a n = A249356 (n + 1)

end A249356

/-!
# A249357: Fibonacci-Zumkeller numbers: a(n)=n if n<=3, otherwise the smallest number >= a(n-2) + a(n-1) having at least one common factor with a(n-2), but none with a(n-1).

The programs for A249357, there is no canonical definition to state claims against.
-/

/-! ## A249357.P4626508980622009086

`A003056(A366095(n+4)-A002312(2*n+1))`
-/

namespace A249357.P4626508980622009086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A366095 (n + 4) - A002312 (2 * n + 1)).toNat

end

end A249357.P4626508980622009086

/-!
# A249358: Number of length n+6 0..7 arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249358, there is no canonical definition to state claims against.
-/

/-! ## A249358.P2600745914578943656

`A249359(A055999(n+4))`
-/

namespace A249358.P2600745914578943656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A055999 (n + 4)).toNat

end

end A249358.P2600745914578943656

/-! ## A249358.P9612617547634568482

`A249359(eq[4, A219347(n)])`
-/

namespace A249358.P9612617547634568482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249358.P9612617547634568482

/-! ## A249358.P13328469338826944974

`A249359(eq[6, A193592(n)])`
-/

namespace A249358.P13328469338826944974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249358.P13328469338826944974

/-! ## A249358.P11068943812098003771

`A249359(A155212(n+3)+2)`
-/

namespace A249358.P11068943812098003771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A155212 (n + 3) + 2).toNat

end

end A249358.P11068943812098003771

/-! ## A249358.P11936004487571706286

`A249359(A046691(n+5)-2)`
-/

namespace A249358.P11936004487571706286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A046691 (n + 5) - 2).toNat

end

end A249358.P11936004487571706286

/-!
# A249359: T(n,k)=Number of length n+6 0..k arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249359, there is no canonical definition to state claims against.
-/

/-! ## A249359.P14581609927407455481

`A249360(A004736(n+1)^A322356(n+1))`
-/

namespace A249359.P14581609927407455481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249360 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A322356 (n + 1) : ℤ))).toNat

end

end A249359.P14581609927407455481

/-! ## A249359.P7932863082099507156

`A249360(A004736(n+1)%A051419(n+1))`
-/

namespace A249359.P7932863082099507156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249360 (Int.tmod (A004736 (n + 1)) (A051419 (n + 1))).toNat

end

end A249359.P7932863082099507156

/-! ## A249359.P9649233225506785105

`A249360(A004736(n+1))%A156117(n+1)`
-/

namespace A249359.P9649233225506785105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249360 (A004736 (n + 1)).toNat) (A156117 (n + 1))

end

end A249359.P9649233225506785105

/-! ## A249359.P7866324985164946975

`A249360(A004736(n+1))+A000007(A144885(n+1))`
-/

namespace A249359.P7866324985164946975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249360 (A004736 (n + 1)).toNat + A000007 (A144885 (n + 1)).toNat

end

end A249359.P7866324985164946975

/-! ## A249359.P1195570057724687018

`A249360(A004736(n+1))^A003557(A051227(n+1))`
-/

namespace A249359.P1195570057724687018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249360 (A004736 (n + 1)).toNat : ℚ) ^ (A003557 (A051227 (n + 1)).toNat : ℤ)

end

end A249359.P1195570057724687018

/-!
# A249360: Number of length 1+6 0..n arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249360, there is no canonical definition to state claims against.
-/

/-! ## A249360.P2581311837342013991

`(n+2)^7-A249320(n+1)`
-/

namespace A249360.P2581311837342013991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 7 : ℤ) - A249320 (n + 1)

end

end A249360.P2581311837342013991

/-! ## A249360.P11906320949211787490

`A249359(∑[n]+1)`
-/

namespace A249360.P11906320949211787490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A249360.P11906320949211787490

/-! ## A249360.P1865814428771697728

`record[A249359(A106247(n))]`
-/

namespace A249360.P1865814428771697728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249360.P1865814428771697728

/-! ## A249360.P4472703235437480261

`record[A249359(A056534(n+1))]`
-/

namespace A249360.P4472703235437480261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249360.P4472703235437480261

/-! ## A249360.P2009582237985635843

`record[A249359(A246276(n+1))]`
-/

namespace A249360.P2009582237985635843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249360.P2009582237985635843

/-!
# A249361: Number of length 2+6 0..n arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249361, there is no canonical definition to state claims against.
-/

/-! ## A249361.P12115539020308777808

`A249359(∑[n+1]+2)`
-/

namespace A249361.P12115539020308777808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A249361.P12115539020308777808

/-! ## A249361.P10280593745077051652

`record[A249359(A022856(n+1))]`
-/

namespace A249361.P10280593745077051652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249361.P10280593745077051652

/-! ## A249361.P18215680671997420595

`record[A249359(A089071(n+1))]`
-/

namespace A249361.P18215680671997420595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249361.P18215680671997420595

/-! ## A249361.P8228645854084897491

`record[A249359(A008795(n)+2)]`
-/

namespace A249361.P8228645854084897491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249361.P8228645854084897491

/-! ## A249361.P8065837747486810048

`record[A249359(A133263(n)-n)]`
-/

namespace A249361.P8065837747486810048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A133263 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249361.P8065837747486810048

/-!
# A249362: Number of length 3+6 0..n arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249362, there is no canonical definition to state claims against.
-/

/-! ## A249362.P12360188184472721333

`A249359(∑[n+2]+4)`
-/

namespace A249362.P12360188184472721333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A249362.P12360188184472721333

/-! ## A249362.P3130532088184490701

`record[A249359(A016028(n+1))]`
-/

namespace A249362.P3130532088184490701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249362.P3130532088184490701

/-! ## A249362.P4536448105205924363

`record[A249359(A249725(n+1)+2)]`
-/

namespace A249362.P4536448105205924363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A249725 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249362.P4536448105205924363

/-! ## A249362.P14178512102822855979

`or(char[1], A249359(A167614(n+1)))`
-/

namespace A249362.P14178512102822855979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A249359 (A167614 (n + 1)).toNat)

end

end A249362.P14178512102822855979

/-! ## A249362.P4713254030482410837

`record[A249359(A022856(n+2)+n)]`
-/

namespace A249362.P4713254030482410837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A022856 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249362.P4713254030482410837

/-!
# A249363: Number of length 4+6 0..n arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249363, there is no canonical definition to state claims against.
-/

/-! ## A249363.P10895875891348679847

`A249359(∑[n+3]+7)`
-/

namespace A249363.P10895875891348679847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A249363.P10895875891348679847

/-! ## A249363.P77223565226719808

`record[A249359(A077169(n)-n)]`
-/

namespace A249363.P77223565226719808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249363.P77223565226719808

/-!
# A249364: Number of length 5+6 0..n arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249364, there is no canonical definition to state claims against.
-/

/-! ## A249364.P2927182307791312727

`record[A249359(A077169(n))]`
-/

namespace A249364.P2927182307791312727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249364.P2927182307791312727

/-! ## A249364.P11640873184177871466

`A249359(A167499(n+3))`
-/

namespace A249364.P11640873184177871466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A167499 (n + 3)).toNat

end

end A249364.P11640873184177871466

/-! ## A249364.P12467361464145626678

`A249359(A155212(n)+13)`
-/

namespace A249364.P12467361464145626678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A155212 n + 13).toNat

end

end A249364.P12467361464145626678

/-! ## A249364.P7606698758215969753

`A249359(A056000(n)+15)`
-/

namespace A249364.P7606698758215969753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A056000 n + 15).toNat

end

end A249364.P7606698758215969753

/-! ## A249364.P9744699466135929734

`A249359(A167614(n+3)+2)`
-/

namespace A249364.P9744699466135929734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A167614 (n + 3) + 2).toNat

end

end A249364.P9744699466135929734

/-!
# A249365: Number of length 6+6 0..n arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249365, there is no canonical definition to state claims against.
-/

/-! ## A249365.P10785328365652641857

`A249359(∑[n+5]+16)`
-/

namespace A249365.P10785328365652641857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A249365.P10785328365652641857

/-! ## A249365.P6885085490346783672

`or(char[1], A249359(A000217(n+5)+6))`
-/

namespace A249365.P6885085490346783672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A249359 (A000217 (n + 5) + 6).toNat)

end

end A249365.P6885085490346783672

/-! ## A249365.P554326871774475569

`xor(1, xor(1, A249359(A141214(n+2)+9)))`
-/

namespace A249365.P554326871774475569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A249359 (A141214 (n + 2) + 9).toNat))

end

end A249365.P554326871774475569

/-! ## A249365.P8335058068930376874

`A007318(and(2, -n))*A249359(A141214(n+2)+9)`
-/

namespace A249365.P8335058068930376874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A249359 (A141214 (n + 2) + 9).toNat

end

end A249365.P8335058068930376874

/-!
# A249366: Number of length 7+6 0..n arrays with every seven consecutive terms having six times some element equal to the sum of the remaining six.

The programs for A249366, there is no canonical definition to state claims against.
-/

/-! ## A249366.P9928019833972385932

`A249359(A166136(n+5)+1)`
-/

namespace A249366.P9928019833972385932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A166136 (n + 5) + 1).toNat

end

end A249366.P9928019833972385932

/-! ## A249366.P16580411361988097413

`A249359(A000124(n+6)+6)`
-/

namespace A249366.P16580411361988097413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A000124 (n + 6) + 6).toNat

end

end A249366.P16580411361988097413

/-! ## A249366.P5918015816088645933

`A249359(A000096(n+5)+8)`
-/

namespace A249366.P5918015816088645933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A000096 (n + 5) + 8).toNat

end

end A249366.P5918015816088645933

/-! ## A249366.P6939680004386236663

`A249359(A000217(n+6)+7)`
-/

namespace A249366.P6939680004386236663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A000217 (n + 6) + 7).toNat

end

end A249366.P6939680004386236663

/-! ## A249366.P12197392551111009714

`A249359(A027379(n+4)+10)`
-/

namespace A249366.P12197392551111009714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249359 (A027379 (n + 4) + 10).toNat

end

end A249366.P12197392551111009714

/-!
# A249367: Numbers of the form 2n^2 or 3n^2.

The programs for A249367, there is no canonical definition to state claims against.
-/

/-! ## A249367.P3179609192197085959

`∪[2*n², 3*n²]`
-/

namespace A249367.P3179609192197085959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A249367.P3179609192197085959

/-! ## A249367.P1900034536942744834

`A249096(n)+a(floor(acot(n)))` with `a(0)=0`
-/

namespace A249367.P1900034536942744834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A249096 n + a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A249367.P1900034536942744834

/-! ## A249367.P10264469657108809408

`eq[0, A025875(A108563(n))]`
-/

namespace A249367.P10264469657108809408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (A108563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249367.P10264469657108809408

/-! ## A249367.P15884548801196628526

`lt[A071321(A004277(n))², 2]`
-/

namespace A249367.P15884548801196628526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (A004277 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A249367.P15884548801196628526

/-! ## A249367.P14436806615134804252

`eq[1, A084101(A108563(n)+2)]`
-/

namespace A249367.P14436806615134804252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 (A108563 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249367.P14436806615134804252

/-! ## A249367.P551826537889712852

`∩[A002480(n+1), A083854(n)]`
-/

namespace A249367.P551826537889712852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249367.P551826537889712852

/-! ## A249367.P10348365279756263554

`∩[A028955(n+1), A083854(n)]`
-/

namespace A249367.P10348365279756263554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249367.P10348365279756263554

/-! ## A249367.P7862723635512437456

`∩[A029718(n+1), A083854(n)]`
-/

namespace A249367.P7862723635512437456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249367.P7862723635512437456

/-! ## A249367.P9845118267332212896

`∩[A242655(n+1), A083854(n)]`
-/

namespace A249367.P9845118267332212896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249367.P9845118267332212896

/-! ## A249367.P16020838845343460019

`∩[A243192(n+1), A083854(n)]`
-/

namespace A249367.P16020838845343460019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249367.P16020838845343460019

/-!
# A249370: Numbers p*m^2, where p is an odd prime and m >= 1, arranged in increasing order.

The programs for A249370, there is no canonical definition to state claims against.
-/

/-! ## A249370.P11605461237254409241

`eq[1, A358770(n+1)]+1`
-/

namespace A249370.P11605461237254409241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A249370.P11605461237254409241

/-! ## A249370.P8955703769280857974

`lt[0, A358770(A008574(n))]`
-/

namespace A249370.P8955703769280857974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249370.P8955703769280857974

/-! ## A249370.P12696202799688963495

`lt[0, A358770(A028310(n))]`
-/

namespace A249370.P12696202799688963495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249370.P12696202799688963495

/-! ## A249370.P9630089660498410868

`record[A214682(A229125(n+2))]`
-/

namespace A249370.P9630089660498410868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (A229125 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249370.P9630089660498410868

/-! ## A249370.P12037966692325700218

`A020725(lt[0, A358770(n+1)])`
-/

namespace A249370.P12037966692325700218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A249370.P12037966692325700218

/-! ## A249370.P1566642783532471159

`A020725(eq[1, A358770(n+1)])`
-/

namespace A249370.P1566642783532471159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249370.P1566642783532471159

/-! ## A249370.P7385661455170101954

`lt[0, A358770(A233583(n+1))]`
-/

namespace A249370.P7385661455170101954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358770 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A249370.P7385661455170101954

/-! ## A249370.P14844579456409379409

`filter[A229125(n+1), A035263(#)]`
-/

namespace A249370.P14844579456409379409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A249370.P14844579456409379409

/-! ## A249370.P11759954943167532367

`filter[A003159(n+1), A358769(#)]`
-/

namespace A249370.P11759954943167532367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A249370.P11759954943167532367

/-!
# A249371: Expansion of q^3 * f(q) * f(-q^4) * f(q^15) * f(-q^60) * chi(-q^3) * chi(-q^5) in powers of q where chi(), f() are Ramanujan theta functions.

The programs for A249371, there is no canonical definition to state claims against.
-/

/-! ## A249371.P3371098180546634646

`-A286129(A020739(n))`
-/

namespace A249371.P3371098180546634646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A286129 (A020739 n).toNat

end

end A249371.P3371098180546634646

/-! ## A249371.P1448277234730919981

`-A286129(Δ[A082111(n)])`
-/

namespace A249371.P1448277234730919981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A286129 (f1 (n + 1) - f1 n).toNat

end

end A249371.P1448277234730919981

/-! ## A249371.P17764036092993241403

`A193356(2*(n+2))-A286129(Δ[A082111(n)])`
-/

namespace A249371.P17764036092993241403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (2 * (n + 2)) - A286129 (f1 (n + 1) - f1 n).toNat

end

end A249371.P17764036092993241403

/-! ## A249371.P10179854675526242767

`A286128(6*(n+3))`
-/

namespace A249371.P10179854675526242767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286128 (6 * (n + 3))

end

end A249371.P10179854675526242767

/-! ## A249371.P12988402665018730000

`-A286137(A317315(n+3))`
-/

namespace A249371.P12988402665018730000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A286137 (A317315 (n + 3)).toNat

end

end A249371.P12988402665018730000

/-! ## A249371.P3967748357463585565

`A286129(30*(n+3))`
-/

namespace A249371.P3967748357463585565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286129 (30 * (n + 3))

end

end A249371.P3967748357463585565

/-!
# A249372: Numbers k such that A156257(k) != A074292(k).

The programs for A249372, the canonical program `A249372.P11330790995747515268` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A249372 has offset 1).

The definition of A249372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A249372.P11330790995747515268

`eq[1, A248805(n+1)²]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A249372

/-- `eq[1, A248805(n+1)²]+1` -/
def P11330790995747515268.Spec : Prop :=
  ∀ n, (P11330790995747515268.a n : ℤ) = A249372 (n + 1)

theorem P11330790995747515268.correct : P11330790995747515268.Spec := by
  intro n
  simp only [A249372, Nat.add_sub_cancel]

end A249372

/-! ## A249372.P3865485884775390392

`lt[2, A248805(n+2)²+2]+2`
-/

namespace A249372.P3865485884775390392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (n + 2) ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A249372.P3865485884775390392

namespace A249372

/-- `lt[2, A248805(n+2)²+2]+2` -/
def P3865485884775390392.Spec : Prop :=
  ∀ n, (P3865485884775390392.a n : ℤ) = A249372 (n + 1)

end A249372

/-! ## A249372.P16664148902903463480

`eq[1, A248805(n-a(a(n-1))%2)²]` with `a(0)=0`
-/

namespace A249372.P16664148902903463480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A248805 ((n : ℤ) - Int.tmod (f2 (f2 (n - 1)).toNat) 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249372.P16664148902903463480

namespace A249372

/-- `eq[1, A248805(n-a(a(n-1))%2)²]` -/
def P16664148902903463480.Spec : Prop :=
  ∀ n, (P16664148902903463480.a n : ℤ) = A249372 (n + 1)

end A249372

/-! ## A249372.P2898812554452376879

`eq[1, A248805(A028310(n))²]`
-/

namespace A249372.P2898812554452376879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249372.P2898812554452376879

namespace A249372

/-- `eq[1, A248805(A028310(n))²]` -/
def P2898812554452376879.Spec : Prop :=
  ∀ n, (P2898812554452376879.a n : ℤ) = A249372 (n + 1)

end A249372

/-! ## A249372.P17594308659940545948

`A065475(eq[1, A248805(n+1)²])`
-/

namespace A249372.P17594308659940545948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249372.P17594308659940545948

namespace A249372

/-- `A065475(eq[1, A248805(n+1)²])` -/
def P17594308659940545948.Spec : Prop :=
  ∀ n, P17594308659940545948.a n = A249372 (n + 1)

end A249372

/-! ## A249372.P16250642817296136961

`eq[1, A248805(A123108(2*n))²]`
-/

namespace A249372.P16250642817296136961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A123108 (2 * n)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249372.P16250642817296136961

namespace A249372

/-- `eq[1, A248805(A123108(2*n))²]` -/
def P16250642817296136961.Spec : Prop :=
  ∀ n, (P16250642817296136961.a n : ℤ) = A249372 (n + 1)

end A249372

/-! ## A249372.P255144028982319657

`eq[1, A248805(A000007(n)+n)²]`
-/

namespace A249372.P255144028982319657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A000007 n + (n : ℤ)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249372.P255144028982319657

namespace A249372

/-- `eq[1, A248805(A000007(n)+n)²]` -/
def P255144028982319657.Spec : Prop :=
  ∀ n, (P255144028982319657.a n : ℤ) = A249372 (n + 1)

end A249372

/-! ## A249372.P17807584843056468255

`eq[1, A248805(A000038(n)+n)²]`
-/

namespace A249372.P17807584843056468255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A000038 n + (n : ℤ)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249372.P17807584843056468255

namespace A249372

/-- `eq[1, A248805(A000038(n)+n)²]` -/
def P17807584843056468255.Spec : Prop :=
  ∀ n, (P17807584843056468255.a n : ℤ) = A249372 (n + 1)

end A249372

/-! ## A249372.P11143551831739071925

`eq[1, A248805(A233583(n+1))²]`
-/

namespace A249372.P11143551831739071925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A233583 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A249372.P11143551831739071925

namespace A249372

/-- `eq[1, A248805(A233583(n+1))²]` -/
def P11143551831739071925.Spec : Prop :=
  ∀ n, (P11143551831739071925.a n : ℤ) = A249372 (n + 1)

end A249372

/-!
# A249373: Prime numbers Q such that the concatenation Q,d,Q is prime for at least one d in the set {1, 2, 3, 4, 5, 6, 7, 8, 9}.

The programs for A249373, there is no canonical definition to state claims against.
-/

/-! ## A249373.P16997629689661700934

`A065091(lt[A376682(2*(n+1)), and(2*n, -n)])`
-/

namespace A249373.P16997629689661700934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249373.P16997629689661700934

/-! ## A249373.P14351180437526383190

`A000040(lt[A376682(2*n), A060747(n)])`
-/

namespace A249373.P14351180437526383190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376682 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249373.P14351180437526383190

/-! ## A249373.P11930829919528697431

`A000040(lt[A128010(2*(n+1)), A276767(n+2)])`
-/

namespace A249373.P11930829919528697431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128010 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249373.P11930829919528697431

/-! ## A249373.P13689592301413465357

`A000040(∑[A165031(A256290(n+1))])`
-/

namespace A249373.P13689592301413465357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165031 (A256290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A249373.P13689592301413465357

/-! ## A249373.P17356586603591362357

`p?[A003056(A189469(n+1)+A000124(n))]`
-/

namespace A249373.P17356586603591362357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A189469 (n + 1) + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249373.P17356586603591362357

/-!
# A249374: Prime numbers Q such that the concatenation Q,1,Q is prime.

The programs for A249374, there is no canonical definition to state claims against.
-/

/-! ## A249374.P3325435363042492219

`p?[A103967(n+1)]`
-/

namespace A249374.P3325435363042492219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249374.P3325435363042492219

/-! ## A249374.P4479566452795963946

`∩[A045410(n+1), A103967(n+1)]`
-/

namespace A249374.P4479566452795963946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P4479566452795963946

/-! ## A249374.P8930210936387825674

`∩[A045309(n+1), A103967(n+1)]`
-/

namespace A249374.P8930210936387825674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P8930210936387825674

/-! ## A249374.P4438841715168055930

`∩[A049596(n+1), A103967(n+1)]`
-/

namespace A249374.P4438841715168055930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P4438841715168055930

/-! ## A249374.P1343811205576658507

`∩[A103967(n+1), A249373(n+1)]`
-/

namespace A249374.P1343811205576658507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P1343811205576658507

/-! ## A249374.P7987934853358792471

`∩[A103967(n+1), A380468(n+1)]`
-/

namespace A249374.P7987934853358792471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P7987934853358792471

/-! ## A249374.P8688895962968620773

`∩[A040044(n+1), A103967(n+1)]`
-/

namespace A249374.P8688895962968620773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P8688895962968620773

/-! ## A249374.P3617398816075328500

`∩[A040046(n+1), A103967(n+1)]`
-/

namespace A249374.P3617398816075328500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P3617398816075328500

/-! ## A249374.P12042565773461392104

`∩[A040060(n+1), A103967(n+1)]`
-/

namespace A249374.P12042565773461392104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P12042565773461392104

/-! ## A249374.P925175366890212024

`∩[A040083(n+1), A103967(n+1)]`
-/

namespace A249374.P925175366890212024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P925175366890212024

/-! ## A249374.P15112305300339513222

`∩[A040087(n+1), A103967(n+1)]`
-/

namespace A249374.P15112305300339513222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P15112305300339513222

/-! ## A249374.P15993350271131629655

`∩[A040095(n+1), A103967(n+1)]`
-/

namespace A249374.P15993350271131629655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P15993350271131629655

/-! ## A249374.P6200305423741176857

`∩[A040028(n+1), A103967(n+1)]`
-/

namespace A249374.P6200305423741176857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P6200305423741176857

/-! ## A249374.P16855125215752493837

`∩[A040036(n+1), A103967(n+1)]`
-/

namespace A249374.P16855125215752493837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P16855125215752493837

/-! ## A249374.P2366088258369147654

`∩[A040049(n+1), A103967(n+1)]`
-/

namespace A249374.P2366088258369147654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P2366088258369147654

/-! ## A249374.P1513764917373363807

`∩[A040054(n+1), A103967(n+1)]`
-/

namespace A249374.P1513764917373363807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P1513764917373363807

/-! ## A249374.P9369860666264013040

`∩[A040062(n+1), A103967(n+1)]`
-/

namespace A249374.P9369860666264013040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P9369860666264013040

/-! ## A249374.P9745075066710713420

`∩[A040078(n+1), A103967(n+1)]`
-/

namespace A249374.P9745075066710713420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P9745075066710713420

/-! ## A249374.P17576755506212362388

`∩[A040085(n+1), A103967(n+1)]`
-/

namespace A249374.P17576755506212362388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P17576755506212362388

/-! ## A249374.P15744755381485368528

`∩[A040089(n+1), A103967(n+1)]`
-/

namespace A249374.P15744755381485368528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A249374.P15744755381485368528

/-!
# A249375: Prime numbers Q such that the concatenation Q,2,Q is prime.

The programs for A249375, there is no canonical definition to state claims against.
-/

/-! ## A249375.P2280365404384092504

`A045344(eq[2, A181608(n+1)])`
-/

namespace A249375.P2280365404384092504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249375.P2280365404384092504

/-! ## A249375.P137597724513598575

`A065091(eq[2, A181608(n+1)])`
-/

namespace A249375.P137597724513598575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249375.P137597724513598575

/-! ## A249375.P5162644960705268274

`A000040(eq[2, A181608(n+1)]+1)`
-/

namespace A249375.P5162644960705268274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249375.P5162644960705268274

/-! ## A249375.P4790626925765027004

`A006005(eq[2, A181608(n+1)]+1)`
-/

namespace A249375.P4790626925765027004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249375.P4790626925765027004

/-! ## A249375.P17630685116475742347

`A008578(eq[2, A181608(n+1)]+2)`
-/

namespace A249375.P17630685116475742347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A249375.P17630685116475742347

/-!
# A249376: Prime numbers Q such that the concatenation Q,3,Q is prime.

The programs for A249376, there is no canonical definition to state claims against.
-/

/-! ## A249376.P15326737453387050007

`p?[A070915(A113220(2*(n+2)))]`
-/

namespace A249376.P15326737453387050007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (A113220 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249376.P15326737453387050007

/-! ## A249376.P6506914163774247130

`p?[∑[A050873(A347372(n+2))]]`
-/

namespace A249376.P6506914163774247130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A347372 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249376.P6506914163774247130

/-! ## A249376.P7721646356285750409

`p?[xor(A055022(n), A215417(n+1))]`
-/

namespace A249376.P7721646356285750409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055022 n) (A215417 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249376.P7721646356285750409

/-!
# A249377: Prime numbers Q such that the concatenation Q,4,Q is prime.

The programs for A249377, there is no canonical definition to state claims against.
-/

/-! ## A249377.P11816608222129094162

`A051615(eq[A003983(n+1), A098236(n+1)])`
-/

namespace A249377.P11816608222129094162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051615 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A249377.P11816608222129094162

/-! ## A249377.P17865057620042366002

`A352442(A003325(n+1)+3)`
-/

namespace A249377.P17865057620042366002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (A003325 (n + 1) + 3).toNat

end

end A249377.P17865057620042366002

/-! ## A249377.P7843833181128903874

`A206770(3*A279097(n+1))`
-/

namespace A249377.P7843833181128903874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206770 (3 * A279097 (n + 1)).toNat

end

end A249377.P7843833181128903874

/-!
# A249378: Prime numbers Q such that the concatenation Q,5,Q is prime.

The programs for A249378, there is no canonical definition to state claims against.
-/

/-! ## A249378.P7043490619308487370

`p?[(n-2)*A229216(n+1)]`
-/

namespace A249378.P7043490619308487370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A229216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249378.P7043490619308487370

/-! ## A249378.P6938956684823040420

`p?[eq[gcd(6, n+1), A317994(n+1)]]`
-/

namespace A249378.P6938956684823040420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317994 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A249378.P6938956684823040420

/-! ## A249378.P10811495373325561213

`p?[A308505(A244579(n+1))]`
-/

namespace A249378.P10811495373325561213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308505 (A244579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249378.P10811495373325561213

/-! ## A249378.P6119810859163871019

`p?[A308505(A319801(n+1))]`
-/

namespace A249378.P6119810859163871019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308505 (A319801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249378.P6119810859163871019

/-!
# A249379: Prime numbers Q such that the concatenation Q,7,Q is prime.

The programs for A249379, there is no canonical definition to state claims against.
-/

/-! ## A249379.P17132365968674978136

`p?[∑[A000005(A091185(n+1))]-4]`
-/

namespace A249379.P17132365968674978136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A091185 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249379.P17132365968674978136

/-! ## A249379.P3855944325405291415

`p?[A101100(2*n+1)+A101085(n+2)]`
-/

namespace A249379.P3855944325405291415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101100 (2 * n + 1) + A101085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249379.P3855944325405291415

/-!
# A249380: Prime numbers Q such that the concatenation Q,8,Q is prime.

The programs for A249380, there is no canonical definition to state claims against.
-/

/-! ## A249380.P356341559115498143

`A215801(A072780(n+1)+A050052(n+1))`
-/

namespace A249380.P356341559115498143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215801 (A072780 (n + 1) + A050052 (n + 1)).toNat

end

end A249380.P356341559115498143

/-! ## A249380.P4621126918438740659

`A271981(A000069(n+1)%A003287(2*(n+2)))`
-/

namespace A249380.P4621126918438740659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271981 (Int.tmod (A000069 (n + 1)) (A003287 (2 * (n + 2)))).toNat

end

end A249380.P4621126918438740659

/-!
# A249381: Prime numbers Q such that the concatenation Q,9,Q is prime.

The programs for A249381, there is no canonical definition to state claims against.
-/

/-! ## A249381.P1780468648822983333

`A249373(lt[A080335(n), A295785(2*n+5)])`
-/

namespace A249381.P1780468648822983333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295785 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249373 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249381.P1780468648822983333

/-! ## A249381.P16952945921091049996

`A249373(lt[A008748(2*(n+2)), A295785(2*n+5)])`
-/

namespace A249381.P16952945921091049996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295785 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249373 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249381.P16952945921091049996

/-! ## A249381.P1601846714266698741

`A000040(lt[A333620(n+1), A295785(2*n+1)])`
-/

namespace A249381.P1601846714266698741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295785 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249381.P1601846714266698741

/-! ## A249381.P16982762942763369252

`A000040(lt[A134678(n+2), A295785(2*n+1)])`
-/

namespace A249381.P16982762942763369252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134678 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295785 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A249381.P16982762942763369252

/-! ## A249381.P15204010390470409444

`p?[A183544(2*n+1)+6]`
-/

namespace A249381.P15204010390470409444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183544 (2 * n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A249381.P15204010390470409444

/-!
# A249382: Smallest odd prime Q such that Q*2^prime(n)-1 is also a prime number.

The programs for A249382, there is no canonical definition to state claims against.
-/

/-! ## A249382.P12891840367166633104

`A126715(A000040(n+1))`
-/

namespace A249382.P12891840367166633104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A000040 (n + 1)).toNat

end

end A249382.P12891840367166633104

/-! ## A249382.P14776370449592747137

`A126715(A006005(n+1))`
-/

namespace A249382.P14776370449592747137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A006005 (n + 1)).toNat

end

end A249382.P14776370449592747137

/-! ## A249382.P4699029941201163231

`A126715(A171577(n+1))`
-/

namespace A249382.P4699029941201163231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A171577 (n + 1)).toNat

end

end A249382.P4699029941201163231

/-! ## A249382.P12764582701686187131

`A126715(A008578(n+2))`
-/

namespace A249382.P12764582701686187131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A008578 (n + 2)).toNat

end

end A249382.P12764582701686187131

/-! ## A249382.P18312356642408814541

`A126715(A075643(n+2))`
-/

namespace A249382.P18312356642408814541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A075643 (n + 2)).toNat

end

end A249382.P18312356642408814541

/-! ## A249382.P3571388981386280815

`A126715(A171525(n+2))`
-/

namespace A249382.P3571388981386280815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A171525 (n + 2)).toNat

end

end A249382.P3571388981386280815

/-! ## A249382.P15435063141729838306

`A126715(A175787(n+2))`
-/

namespace A249382.P15435063141729838306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A175787 (n + 2)).toNat

end

end A249382.P15435063141729838306

/-! ## A249382.P10671385650826178413

`A126715(A182986(n+2))`
-/

namespace A249382.P10671385650826178413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A182986 (n + 2)).toNat

end

end A249382.P10671385650826178413

/-! ## A249382.P2053382923001803573

`A126715(eq[3, A226602(n)])`
-/

namespace A249382.P2053382923001803573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A249382.P2053382923001803573

/-! ## A249382.P8447487919766371775

`A126715(record[A006530(n+2)])`
-/

namespace A249382.P8447487919766371775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249382.P8447487919766371775

/-! ## A249382.P6208892278220886662

`A126715(record[A014963(n+2)])`
-/

namespace A249382.P6208892278220886662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249382.P6208892278220886662

/-! ## A249382.P5891521465069255446

`A126715(record[A020639(n+2)])`
-/

namespace A249382.P5891521465069255446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A249382.P5891521465069255446

/-! ## A249382.P9391221295923734411

`A126715(A006093(n+1)+1)`
-/

namespace A249382.P9391221295923734411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A006093 (n + 1) + 1).toNat

end

end A249382.P9391221295923734411

/-! ## A249382.P1050548273204645640

`A126715(eq[2, A303809(n+1)]+1)`
-/

namespace A249382.P1050548273204645640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249382.P1050548273204645640

/-! ## A249382.P13010608746211618298

`A126715(eq[n+2, A000203(n+1)]+1)`
-/

namespace A249382.P13010608746211618298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A249382.P13010608746211618298

/-!
# A249383: Smallest odd prime number Q such that Q*2^P(n)-1 is also prime, where P(n) is the Mersenne prime exponent A000043(n).

The programs for A249383, there is no canonical definition to state claims against.
-/

/-! ## A249383.P1046958887237644996

`A249382(A016027(n+1))`
-/

namespace A249383.P1046958887237644996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249382 (A016027 (n + 1)).toNat

end

end A249383.P1046958887237644996

/-! ## A249383.P13585773955825435268

`A126715(A000043(n+1))`
-/

namespace A249383.P13585773955825435268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A000043 (n + 1)).toNat

end

end A249383.P13585773955825435268

/-! ## A249383.P4279946167413169991

`A126715(A190213(n+2))`
-/

namespace A249383.P4279946167413169991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (A190213 (n + 2)).toNat

end

end A249383.P4279946167413169991

/-! ## A249383.P679498350886166104

`A126715(p?[A072226(n+1)])`
-/

namespace A249383.P679498350886166104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249383.P679498350886166104

/-! ## A249383.P12662418097302595746

`A126715(p?[A161508(n+1)])`
-/

namespace A249383.P12662418097302595746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249383.P12662418097302595746

/-!
# A249384: Smallest odd prime number Q such that Q*2^P(n)+1 is also prime, where P(n) is the Mersenne prime exponent A000043(n).

The programs for A249384, there is no canonical definition to state claims against.
-/

/-! ## A249384.P9412392174148635636

`A134855(A000043(n+1))`
-/

namespace A249384.P9412392174148635636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134855 (A000043 (n + 1)).toNat

end

end A249384.P9412392174148635636

/-! ## A249384.P14062450705227124939

`A134855(p?[A072226(n+1)])`
-/

namespace A249384.P14062450705227124939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134855 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249384.P14062450705227124939

/-! ## A249384.P11148203924712868171

`A134855(p?[A161508(n+1)])`
-/

namespace A249384.P11148203924712868171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134855 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249384.P11148203924712868171

/-! ## A249384.P15821498908387930602

`A134855(p?[A270427(n+1)])`
-/

namespace A249384.P15821498908387930602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134855 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249384.P15821498908387930602

/-! ## A249384.P8398286135983381235

`A134855(p?[A285929(n+1)])`
-/

namespace A249384.P8398286135983381235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134855 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A249384.P8398286135983381235

/-!
# A249390: The number of down-up permutations of [n] where adjacent elements differ by at least 3.

The programs for A249390, there is no canonical definition to state claims against.
-/

/-! ## A249390.P14152913667137004623

`A351592(A102113(n)+9)`
-/

namespace A249390.P14152913667137004623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351592 (A102113 n + 9).toNat

end

end A249390.P14152913667137004623

/-! ## A249390.P7205580829279053009

`A292370(A124382(n)+19)`
-/

namespace A249390.P7205580829279053009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A124382 n + 19).toNat

end

end A249390.P7205580829279053009

/-! ## A249390.P3612358793409175496

`A268830(C(A000930(n), n))`
-/

namespace A249390.P3612358793409175496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (Nat.choose (A000930 n).toNat n)

end

end A249390.P3612358793409175496

/-! ## A249390.P9212257067851881927

`A179821(C(A321729(n), n))`
-/

namespace A249390.P9212257067851881927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 (Nat.choose (A321729 n).toNat n)

end

end A249390.P9212257067851881927

/-! ## A249390.P12755830616625775509

`and(A089007(n+1), A127291(A127697(n)))`
-/

namespace A249390.P12755830616625775509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089007 (n + 1)) (A127291 (A127697 n).toNat)

end

end A249390.P12755830616625775509

/-!
# A249391: The number of down-up permutations of [n] where adjacent elements differ by at least 4.

The programs for A249391, there is no canonical definition to state claims against.
-/

/-! ## A249391.P10281273183069499860

`A099423(C(A240178(n), A085576(n+1)))`
-/

namespace A249391.P10281273183069499860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (Nat.choose (A240178 n).toNat (A085576 (n + 1)).toNat)

end

end A249391.P10281273183069499860

/-!
# A249392: The number of down-up permutations of [n] where adjacent elements differ by at least 5.

The programs for A249392, there is no canonical definition to state claims against.
-/

/-! ## A249392.P14685622958127730671

`A212255(C(n, (n%10)²))`
-/

namespace A249392.P14685622958127730671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212255 (Nat.choose n ((n % 10) ^ 2))

end

end A249392.P14685622958127730671

/-! ## A249392.P15203590424294036182

`A194271(C(n, C(∑{digits}[n, #²], 2)))`
-/

namespace A249392.P15203590424294036182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194271 (Nat.choose n (Nat.choose ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum 2))

end

end A249392.P15203590424294036182

/-! ## A249392.P591318190182582155

`(∑{digits}[n, #]²-∑{digits}[n, #²])^A261982(∑{digits}[n², #])`
-/

namespace A249392.P591318190182582155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) : ℚ) ^ (A261982 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℤ)

end

end A249392.P591318190182582155

/-! ## A249392.P3402192449552874632

`(floor((n/10)^n)%10)^A032741((n^4+n²)/2)`
-/

namespace A249392.P3402192449552874632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ⌊((n : ℚ) / 10) ^ n⌋ 10 : ℚ) ^ (A032741 (SequenceMachineLib.roundAway ((n ^ 4 + n ^ 2 : ℚ) / 2)).toNat : ℤ)

end

end A249392.P3402192449552874632

/-! ## A249392.P7240676068568925421

`A116856(A038898(n+1))`
-/

namespace A249392.P7240676068568925421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116856 (A038898 (n + 1)).toNat

end

end A249392.P7240676068568925421

/-!
# A249393: The number of down-up permutations of [n] where adjacent elements differ by at least 6.

The programs for A249393, there is no canonical definition to state claims against.
-/

/-! ## A249393.P17496856238615347973

`and(A321945(n+1)², A000032(A321945(n+1)))`
-/

namespace A249393.P17496856238615347973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321945 (n + 1) ^ 2) (A000032 (A321945 (n + 1)).toNat)

end

end A249393.P17496856238615347973

/-! ## A249393.P13499460292659366898

`A083896(2^n)^floor(n/2)`
-/

namespace A249393.P13499460292659366898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083896 (2 ^ n) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A249393.P13499460292659366898

/-! ## A249393.P8738781308400559190

`A102681(2^n-1)^floor(n/2)`
-/

namespace A249393.P8738781308400559190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102681 (2 ^ n - 1) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A249393.P8738781308400559190

/-! ## A249393.P13850939481627504684

`(n%11*floor(n/11))^A346700(2^n)`
-/

namespace A249393.P13850939481627504684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n % 11 : ℕ) : ℤ) * ⌊(n : ℚ) / 11⌋ : ℚ) ^ (A346700 (2 ^ n) : ℤ)

end

end A249393.P13850939481627504684

/-! ## A249393.P15801119551003305735

`∑{e}[A283001(n)^n+1, #]^floor(n/2)`
-/

namespace A249393.P15801119551003305735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 n ^ n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A249393.P15801119551003305735

/-!
# A249394: Numbers k such that the k-th ménage number is prime.

The programs for A249394, there is no canonical definition to state claims against.
-/

/-! ## A249394.P11009039897689367120

`A283807(n+2)+A054247(A000010(n+1))`
-/

namespace A249394.P11009039897689367120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283807 (n + 2) + A054247 (A000010 (n + 1)).toNat

end

end A249394.P11009039897689367120

/-!
# A249395: Number of generalized cycle-up-down permutations of [n].

The programs for A249395, there is no canonical definition to state claims against.
-/

/-! ## A249395.P7919957216944564543

`A195177(5*A212884(n))`
-/

namespace A249395.P7919957216944564543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (5 * A212884 n).toNat

end

end A249395.P7919957216944564543

/-! ## A249395.P5864659441417516322

`A248610(A213094(n)+n)`
-/

namespace A249395.P5864659441417516322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A213094 n + (n : ℤ)).toNat

end

end A249395.P5864659441417516322

/-! ## A249395.P862123241040494232

`A124156(ceil(sqrt(A000407(n))))`
-/

namespace A249395.P862123241040494232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 ⌈Real.sqrt (A000407 n : ℝ)⌉.toNat

end

end A249395.P862123241040494232

/-!
# A249398: Start with a(1) = 1; then a(n) = smallest number > a(n-1) such that a(n) divides concat(a(n-1),a(n)).

The programs for A249398, there is no canonical definition to state claims against.
-/

/-! ## A249398.P11092094463479626230

`lt[A209978(n), A234748(n)]`
-/

namespace A249398.P11092094463479626230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A249398.P11092094463479626230

/-! ## A249398.P3952305777846209543

`record[gcd(A133075(n+1), A133075(n+5))]`
-/

namespace A249398.P3952305777846209543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133075 (n + 1)) (A133075 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A249398.P3952305777846209543

