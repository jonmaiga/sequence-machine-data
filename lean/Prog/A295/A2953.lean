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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A295300: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = [A003557(n), A046523(n), A048250(n)].

The programs for A295300, there is no canonical definition to state claims against.
-/

/-! ## A295300.P17247340189257599009

`A323372(1+n)+A000038(A000132(n))`
-/

namespace A295300.P17247340189257599009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (1 + n) + A000038 (A000132 n).toNat

end

end A295300.P17247340189257599009

/-! ## A295300.P14010822579498167529

`A323372(n+1)+A000007(A104878(n))`
-/

namespace A295300.P14010822579498167529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (n + 1) + A000007 (A104878 n).toNat

end

end A295300.P14010822579498167529

/-! ## A295300.P4447825295894611307

`A157928(A090288(n))*A323372(n+1)`
-/

namespace A295300.P4447825295894611307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A090288 n).toNat * A323372 (n + 1)

end

end A295300.P4447825295894611307

/-! ## A295300.P1453615306413808066

`gcd(A000038(A089863(n)), A323372(n+1))`
-/

namespace A295300.P1453615306413808066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A089863 n).toNat) (A323372 (n + 1))

end

end A295300.P1453615306413808066

/-! ## A295300.P10175350803238254572

`A323372(n+1)+A000007(A164930(n+1))`
-/

namespace A295300.P10175350803238254572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (n + 1) + A000007 (A164930 (n + 1)).toNat

end

end A295300.P10175350803238254572

/-! ## A295300.P6649251356286869189

`A323372(n+1)+A000038(A319149(n+1))`
-/

namespace A295300.P6649251356286869189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (n + 1) + A000038 (A319149 (n + 1)).toNat

end

end A295300.P6649251356286869189

/-! ## A295300.P2359744395803659782

`A323372(n+1)+A000007(A323380(n+1))`
-/

namespace A295300.P2359744395803659782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (n + 1) + A000007 (A323380 (n + 1)).toNat

end

end A295300.P2359744395803659782

/-! ## A295300.P4505004551732856445

`A323372(n+1)+A000122(A341210(n+1))`
-/

namespace A295300.P4505004551732856445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (n + 1) + A000122 (A341210 (n + 1)).toNat

end

end A295300.P4505004551732856445

/-! ## A295300.P5255338467076309395

`A349906(A182312(n+1))+A323372(n+1)`
-/

namespace A295300.P5255338467076309395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (A182312 (n + 1)).toNat + A323372 (n + 1)

end

end A295300.P5255338467076309395

/-! ## A295300.P13428971405959793804

`A323372(n+1)+A000038(n)*A089863(n)`
-/

namespace A295300.P13428971405959793804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (n + 1) + A000038 n * A089863 n

end

end A295300.P13428971405959793804

/-!
# A295301: a(n) = n - phi(sigma(n)), where phi = A000010 and sigma = A000203.

The programs for A295301, the canonical program `A295301.P15354737003195505250` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295301 has offset 1).

The definition of A295301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A000010(A000203(n+1))` (program `A295301.P15354737003195505250`, by `A295301.P15354737003195505250.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295301.P7286222127240886749

`n+1-A062401(n+1)`
-/

namespace A295301.P7286222127240886749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062401 (n + 1)

end

end A295301.P7286222127240886749

namespace A295301

/-- `n+1-A062401(n+1)` -/
def P7286222127240886749.Spec : Prop :=
  ∀ n, P7286222127240886749.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P15354737003195505250

`n+1-A000010(A000203(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295301

/-- `n+1-A000010(A000203(n+1))` -/
def P15354737003195505250.Spec : Prop :=
  ∀ n, P15354737003195505250.a n = A295301 (n + 1)

theorem P15354737003195505250.correct : P15354737003195505250.Spec := by
  intro n
  simp only [A295301, Nat.add_sub_cancel]

end A295301

/-! ## A295301.P6205145483613986620

`1-A062401(n+1)+n`
-/

namespace A295301.P6205145483613986620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062401 (n + 1) + (n : ℤ)

end

end A295301.P6205145483613986620

namespace A295301

/-- `1-A062401(n+1)+n` -/
def P6205145483613986620.Spec : Prop :=
  ∀ n, P6205145483613986620.a n = A295301 (n + 1)

theorem P6205145483613986620.correct : P6205145483613986620.Spec := by
  intro n
  simp only [A295301, Nat.add_sub_cancel, A295301.P6205145483613986620.a, A295301.P15354737003195505250.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062401, A062401.P5330272924956157075.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295301

/-! ## A295301.P3298955516023609565

`1-A000010(∑{d}[n+1, #])+n`
-/

namespace A295301.P3298955516023609565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (∑ d ∈ Nat.divisors (f1 n), d) + (n : ℤ)

end

end A295301.P3298955516023609565

namespace A295301

/-- `1-A000010(∑{d}[n+1, #])+n` -/
def P3298955516023609565.Spec : Prop :=
  ∀ n, P3298955516023609565.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P14779945342678910223

`n+1-∑{d}[n+1, A353647(#)]`
-/

namespace A295301.P14779945342678910223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A353647 d

end

end A295301.P14779945342678910223

namespace A295301

/-- `n+1-∑{d}[n+1, A353647(#)]` -/
def P14779945342678910223.Spec : Prop :=
  ∀ n, P14779945342678910223.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P5327417544611292219

`n+1-A000010(Δ[A160664(n)])`
-/

namespace A295301.P5327417544611292219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (f1 (n + 1) - f1 n).toNat

end

end A295301.P5327417544611292219

namespace A295301

/-- `n+1-A000010(Δ[A160664(n)])` -/
def P5327417544611292219.Spec : Prop :=
  ∀ n, P5327417544611292219.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P4973468863120209058

`A051953(n+1)-A353636(n+1)`
-/

namespace A295301.P4973468863120209058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A353636 (n + 1)

end

end A295301.P4973468863120209058

namespace A295301

/-- `A051953(n+1)-A353636(n+1)` -/
def P4973468863120209058.Spec : Prop :=
  ∀ n, P4973468863120209058.a n = A295301 (n + 1)

theorem P4973468863120209058.correct : P4973468863120209058.Spec := by
  intro n
  simp only [A295301, Nat.add_sub_cancel, A295301.P4973468863120209058.a, A295301.P15354737003195505250.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A353636, A353636.P9241397115263292708.a, A003557, A003557.P6364735403900941810.a, A062401, A062401.P5330272924956157075.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295301

/-! ## A295301.P721455044240355853

`n+1-A000010(abs(Δ[A330725(n)]))`
-/

namespace A295301.P721455044240355853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 |f1 (n + 1) - f1 n|.toNat

end

end A295301.P721455044240355853

namespace A295301

/-- `n+1-A000010(abs(Δ[A330725(n)]))` -/
def P721455044240355853.Spec : Prop :=
  ∀ n, P721455044240355853.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P12309527094958822632

`n+1-A000010(A039653(n+1)+1)`
-/

namespace A295301.P12309527094958822632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (A039653 (n + 1) + 1).toNat

end

end A295301.P12309527094958822632

namespace A295301

/-- `n+1-A000010(A039653(n+1)+1)` -/
def P12309527094958822632.Spec : Prop :=
  ∀ n, P12309527094958822632.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P10346308741459345671

`n+1-A000010(A245092(2*n+1))`
-/

namespace A295301.P10346308741459345671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (A245092 (2 * n + 1)).toNat

end

end A295301.P10346308741459345671

namespace A295301

/-- `n+1-A000010(A245092(2*n+1))` -/
def P10346308741459345671.Spec : Prop :=
  ∀ n, P10346308741459345671.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P13547785956869016460

`n-(A353636(n+1)+A109606(n+1))`
-/

namespace A295301.P13547785956869016460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A353636 (n + 1) + A109606 (n + 1))

end

end A295301.P13547785956869016460

namespace A295301

/-- `n-(A353636(n+1)+A109606(n+1))` -/
def P13547785956869016460.Spec : Prop :=
  ∀ n, P13547785956869016460.a n = A295301 (n + 1)

theorem P13547785956869016460.correct : P13547785956869016460.Spec := by
  intro n
  simp only [A295301, Nat.add_sub_cancel, A295301.P13547785956869016460.a, A295301.P15354737003195505250.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A109606, A109606.P2415810041766612210.a, A353636, A353636.P9241397115263292708.a, A003557, A003557.P6364735403900941810.a, A062401, A062401.P5330272924956157075.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295301

/-! ## A295301.P16442815646570404078

`n+1-A000010(A155085(n+1)-(n+1))`
-/

namespace A295301.P16442815646570404078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A295301.P16442815646570404078

namespace A295301

/-- `n+1-A000010(A155085(n+1)-(n+1))` -/
def P16442815646570404078.Spec : Prop :=
  ∀ n, P16442815646570404078.a n = A295301 (n + 1)

theorem P16442815646570404078.correct : P16442815646570404078.Spec := by
  intro n
  simp only [A295301, Nat.add_sub_cancel, A295301.P16442815646570404078.a, A295301.P15354737003195505250.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295301

/-! ## A295301.P7017097796199730363

`n+1-A000010(A064987(n+1)/(n+1))`
-/

namespace A295301.P7017097796199730363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A295301.P7017097796199730363

namespace A295301

/-- `n+1-A000010(A064987(n+1)/(n+1))` -/
def P7017097796199730363.Spec : Prop :=
  ∀ n, P7017097796199730363.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P5040397361125579689

`1-(A000010(A000203(2*n-(n-1)))-n)`
-/

namespace A295301.P5040397361125579689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000010 (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat - (n : ℤ))

end

end A295301.P5040397361125579689

namespace A295301

/-- `1-(A000010(A000203(2*n-(n-1)))-n)` -/
def P5040397361125579689.Spec : Prop :=
  ∀ n, P5040397361125579689.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P10681034023170665242

`A000010(n+1)-(A353636(n+1)+A083254(n+1))`
-/

namespace A295301.P10681034023170665242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A353636 (n + 1) + A083254 (n + 1))

end

end A295301.P10681034023170665242

namespace A295301

/-- `A000010(n+1)-(A353636(n+1)+A083254(n+1))` -/
def P10681034023170665242.Spec : Prop :=
  ∀ n, P10681034023170665242.a n = A295301 (n + 1)

theorem P10681034023170665242.correct : P10681034023170665242.Spec := by
  intro n
  simp only [A295301, Nat.add_sub_cancel, A295301.P10681034023170665242.a, A295301.P15354737003195505250.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A083254, A083254.P7544960031424623367.a, A353636, A353636.P9241397115263292708.a, A003557, A003557.P6364735403900941810.a, A062401, A062401.P5330272924956157075.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295301

/-! ## A295301.P14702038049763401311

`A345891(n+1)-(A353636(n+1)+A002618(n+1))`
-/

namespace A295301.P14702038049763401311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345891 (n + 1) - (A353636 (n + 1) + A002618 (n + 1))

end

end A295301.P14702038049763401311

namespace A295301

/-- `A345891(n+1)-(A353636(n+1)+A002618(n+1))` -/
def P14702038049763401311.Spec : Prop :=
  ∀ n, P14702038049763401311.a n = A295301 (n + 1)

theorem P14702038049763401311.correct : P14702038049763401311.Spec := by
  intro n
  simp only [A295301, Nat.add_sub_cancel, A295301.P14702038049763401311.a, A295301.P15354737003195505250.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002618, A002618.P8397693677428532773.a, A345891, A345891.P1680838059371173555.a, A353636, A353636.P9241397115263292708.a, A003557, A003557.P6364735403900941810.a, A062401, A062401.P5330272924956157075.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295301

/-! ## A295301.P886175944356276259

`(A295311(n+1)-A295312(n+1))*A295310(n+1)`
-/

namespace A295301.P886175944356276259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295311 (n + 1) - A295312 (n + 1)) * A295310 (n + 1)

end

end A295301.P886175944356276259

namespace A295301

/-- `(A295311(n+1)-A295312(n+1))*A295310(n+1)` -/
def P886175944356276259.Spec : Prop :=
  ∀ n, P886175944356276259.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P18104081442378138249

`n+1-A000010(A262610(2*n+1))`
-/

namespace A295301.P18104081442378138249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (A262610 (2 * n + 1)).toNat

end

end A295301.P18104081442378138249

namespace A295301

/-- `n+1-A000010(A262610(2*n+1))` -/
def P18104081442378138249.Spec : Prop :=
  ∀ n, P18104081442378138249.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P1454928729238234909

`n-A109606(∑{d}[n+1, #])`
-/

namespace A295301.P1454928729238234909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109606 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A295301.P1454928729238234909

namespace A295301

/-- `n-A109606(∑{d}[n+1, #])` -/
def P1454928729238234909.Spec : Prop :=
  ∀ n, P1454928729238234909.a n = A295301 (n + 1)

end A295301

/-! ## A295301.P12418053238659352393

`A051953(∑{d}[n+1, #])-(∑{d}[n+1, #]-(n+1))`
-/

namespace A295301.P12418053238659352393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (∑ d ∈ Nat.divisors (f1 n), d) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A295301.P12418053238659352393

namespace A295301

/-- `A051953(∑{d}[n+1, #])-(∑{d}[n+1, #]-(n+1))` -/
def P12418053238659352393.Spec : Prop :=
  ∀ n, P12418053238659352393.a n = A295301 (n + 1)

end A295301

/-!
# A295302: a(n) = sigma(phi(n)) - n, where phi = A000010 and sigma = A000203.

The programs for A295302, the canonical program `A295302.P2815971940510698898` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295302 has offset 1).

The definition of A295302 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A000010(n+1))-(n+1)` (program `A295302.P2815971940510698898`, by `A295302.P2815971940510698898.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295302.P4842979664690152672

`A062402(n+1)-(n+1)`
-/

namespace A295302.P4842979664690152672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - (n + 1 : ℤ)

end

end A295302.P4842979664690152672

namespace A295302

/-- `A062402(n+1)-(n+1)` -/
def P4842979664690152672.Spec : Prop :=
  ∀ n, P4842979664690152672.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P2815971940510698898

`A000203(A000010(n+1))-(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295302

/-- `A000203(A000010(n+1))-(n+1)` -/
def P2815971940510698898.Spec : Prop :=
  ∀ n, P2815971940510698898.a n = A295302 (n + 1)

theorem P2815971940510698898.correct : P2815971940510698898.Spec := by
  intro n
  simp only [A295302, Nat.add_sub_cancel]

end A295302

/-! ## A295302.P8581243770950547891

`∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]-(n+1)`
-/

namespace A295302.P8581243770950547891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A295302.P8581243770950547891

namespace A295302

/-- `∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #]-(n+1)` -/
def P8581243770950547891.Spec : Prop :=
  ∀ n, P8581243770950547891.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P14534035142388293390

`∑{d}[Δ[A002088(n)], #]-(n+1)`
-/

namespace A295302.P14534035142388293390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A295302.P14534035142388293390

namespace A295302

/-- `∑{d}[Δ[A002088(n)], #]-(n+1)` -/
def P14534035142388293390.Spec : Prop :=
  ∀ n, P14534035142388293390.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P2525916755711320259

`∑{d}[Δ[A005728(n)], #]-(n+1)`
-/

namespace A295302.P2525916755711320259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A295302.P2525916755711320259

namespace A295302

/-- `∑{d}[Δ[A005728(n)], #]-(n+1)` -/
def P2525916755711320259.Spec : Prop :=
  ∀ n, P2525916755711320259.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P9299686687735732643

`(A340461(n+1)-(n+1))/2`
-/

namespace A295302.P9299686687735732643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340461 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A295302.P9299686687735732643

namespace A295302

/-- `(A340461(n+1)-(n+1))/2` -/
def P9299686687735732643.Spec : Prop :=
  ∀ n, P9299686687735732643.a n = (A295302 (n + 1) : ℚ)

theorem P9299686687735732643.correct : P9299686687735732643.Spec := by
  intro n
  simp only [A295302, Nat.add_sub_cancel, A295302.P9299686687735732643.a, A295302.P2815971940510698898.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A340461, A340461.P4637614112348525884.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295302

/-! ## A295302.P16512861103314436117

`∑{d}[A000010(n+1), #]-(n+1)`
-/

namespace A295302.P16512861103314436117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A295302.P16512861103314436117

namespace A295302

/-- `∑{d}[A000010(n+1), #]-(n+1)` -/
def P16512861103314436117.Spec : Prop :=
  ∀ n, P16512861103314436117.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P17794606678716997263

`A039653(Δ[A005728(n)])-n`
-/

namespace A295302.P17794606678716997263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A295302.P17794606678716997263

namespace A295302

/-- `A039653(Δ[A005728(n)])-n` -/
def P17794606678716997263.Spec : Prop :=
  ∀ n, P17794606678716997263.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P5337844777852201959

`A039653(A000010(n+1))-n`
-/

namespace A295302.P5337844777852201959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A000010 (n + 1)).toNat - (n : ℤ)

end

end A295302.P5337844777852201959

namespace A295302

/-- `A039653(A000010(n+1))-n` -/
def P5337844777852201959.Spec : Prop :=
  ∀ n, P5337844777852201959.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P16287618102966309448

`A039653(A349137(Δ[n²]))-n`
-/

namespace A295302.P16287618102966309448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - (n : ℤ)

end

end A295302.P16287618102966309448

namespace A295302

/-- `A039653(A349137(Δ[n²]))-n` -/
def P16287618102966309448.Spec : Prop :=
  ∀ n, P16287618102966309448.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P17438721035186760888

`A039653(A109606(n+1)+1)-n`
-/

namespace A295302.P17438721035186760888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A109606 (n + 1) + 1).toNat - (n : ℤ)

end

end A295302.P17438721035186760888

namespace A295302

/-- `A039653(A109606(n+1)+1)-n` -/
def P17438721035186760888.Spec : Prop :=
  ∀ n, P17438721035186760888.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P8749211067097921675

`A039653(A039649(n+1)-1)-n`
-/

namespace A295302.P8749211067097921675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A039649 (n + 1) - 1).toNat - (n : ℤ)

end

end A295302.P8749211067097921675

namespace A295302

/-- `A039653(A039649(n+1)-1)-n` -/
def P8749211067097921675.Spec : Prop :=
  ∀ n, P8749211067097921675.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P2779434056915494242

`A000203(A109606(n+1)+1)-(n+1)`
-/

namespace A295302.P2779434056915494242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A109606 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A295302.P2779434056915494242

namespace A295302

/-- `A000203(A109606(n+1)+1)-(n+1)` -/
def P2779434056915494242.Spec : Prop :=
  ∀ n, P2779434056915494242.a n = A295302 (n + 1)

theorem P2779434056915494242.correct : P2779434056915494242.Spec := by
  intro n
  simp only [A295302, Nat.add_sub_cancel, A295302.P2779434056915494242.a, A295302.P2815971940510698898.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295302

/-! ## A295302.P8204686831945679172

`A000203(A039649(n+1)-1)-(n+1)`
-/

namespace A295302.P8204686831945679172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A039649 (n + 1) - 1).toNat - (n + 1 : ℤ)

end

end A295302.P8204686831945679172

namespace A295302

/-- `A000203(A039649(n+1)-1)-(n+1)` -/
def P8204686831945679172.Spec : Prop :=
  ∀ n, P8204686831945679172.a n = A295302 (n + 1)

theorem P8204686831945679172.correct : P8204686831945679172.Spec := by
  intro n
  simp only [A295302, Nat.add_sub_cancel, A295302.P8204686831945679172.a, A295302.P2815971940510698898.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295302

/-! ## A295302.P11472977492573493765

`A088580(A039649(n+1)-1)-(n+2)`
-/

namespace A295302.P11472977492573493765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A039649 (n + 1) - 1).toNat - (n + 2 : ℤ)

end

end A295302.P11472977492573493765

namespace A295302

/-- `A088580(A039649(n+1)-1)-(n+2)` -/
def P11472977492573493765.Spec : Prop :=
  ∀ n, P11472977492573493765.a n = A295302 (n + 1)

theorem P11472977492573493765.correct : P11472977492573493765.Spec := by
  intro n
  simp only [A295302, Nat.add_sub_cancel, A295302.P11472977492573493765.a, A295302.P2815971940510698898.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A039649, A039649.P16717312505280968063.a, A088580, A088580.P3089093194242277422.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295302

/-! ## A295302.P15611335500316948687

`A000203(A000010(2*n-(n-1)))-1-n`
-/

namespace A295302.P15611335500316948687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat - 1 - (n : ℤ)

end

end A295302.P15611335500316948687

namespace A295302

/-- `A000203(A000010(2*n-(n-1)))-1-n` -/
def P15611335500316948687.Spec : Prop :=
  ∀ n, P15611335500316948687.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P1287706324591273583

`A001065(A000010(n+1))-A051953(n+1)`
-/

namespace A295302.P1287706324591273583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000010 (n + 1)).toNat - A051953 (n + 1)

end

end A295302.P1287706324591273583

namespace A295302

/-- `A001065(A000010(n+1))-A051953(n+1)` -/
def P1287706324591273583.Spec : Prop :=
  ∀ n, P1287706324591273583.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P7130622114143120811

`A083254(n+1)-A033879(A000010(n+1))`
-/

namespace A295302.P7130622114143120811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) - A033879 (A000010 (n + 1)).toNat

end

end A295302.P7130622114143120811

namespace A295302

/-- `A083254(n+1)-A033879(A000010(n+1))` -/
def P7130622114143120811.Spec : Prop :=
  ∀ n, P7130622114143120811.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P10598847943038523779

`A000203(A046073(n+1)*A060594(n+1))-(n+1)`
-/

namespace A295302.P10598847943038523779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A046073 (n + 1) * A060594 (n + 1)).toNat - (n + 1 : ℤ)

end

end A295302.P10598847943038523779

namespace A295302

/-- `A000203(A046073(n+1)*A060594(n+1))-(n+1)` -/
def P10598847943038523779.Spec : Prop :=
  ∀ n, P10598847943038523779.a n = A295302 (n + 1)

end A295302

/-! ## A295302.P1450681543136508955

`A001065(A000010(n+1))+A001065(n+1)-A051612(n+1)`
-/

namespace A295302.P1450681543136508955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000010 (n + 1)).toNat + (A001065 (n + 1) - A051612 (n + 1))

end

end A295302.P1450681543136508955

namespace A295302

/-- `A001065(A000010(n+1))+A001065(n+1)-A051612(n+1)` -/
def P1450681543136508955.Spec : Prop :=
  ∀ n, P1450681543136508955.a n = A295302 (n + 1)

end A295302

/-!
# A295303: a(n) = +1 if n > phi(sigma(n)), -1 if n < phi(sigma(n)), and 0 if n = phi(sigma(n)), where phi = A000010 and sigma = A000203.

The programs for A295303, the canonical program `A295303.P8470606991534144988` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295303 has offset 1).

The definition of A295303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295303.P8470606991534144988

`round(sin(atan(A295301(n+1))))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295303

/-- `round(sin(atan(A295301(n+1))))` -/
def P8470606991534144988.Spec : Prop :=
  ∀ n, P8470606991534144988.a n = A295303 (n + 1)

theorem P8470606991534144988.correct : P8470606991534144988.Spec := by
  intro n
  simp only [A295303, Nat.add_sub_cancel]

end A295303

/-! ## A295303.P6371687538648036168

`A295309(n+1)-A295308(n+1)`
-/

namespace A295303.P6371687538648036168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295309 (n + 1) - A295308 (n + 1)

end

end A295303.P6371687538648036168

namespace A295303

/-- `A295309(n+1)-A295308(n+1)` -/
def P6371687538648036168.Spec : Prop :=
  ∀ n, P6371687538648036168.a n = A295303 (n + 1)

end A295303

/-! ## A295303.P6134176335440617781

`round(n/(A062401(n+1)+n))-A295308(n+1)`
-/

namespace A295303.P6134176335440617781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A062401 (n + 1) + (n : ℤ) : ℚ)) - A295308 (n + 1)

end

end A295303.P6134176335440617781

namespace A295303

/-- `round(n/(A062401(n+1)+n))-A295308(n+1)` -/
def P6134176335440617781.Spec : Prop :=
  ∀ n, P6134176335440617781.a n = A295303 (n + 1)

end A295303

/-! ## A295303.P13515321377420677184

`A295309(n+1)-C((n+1)%A000010(∑{d}[n+1, #]), n+1)`
-/

namespace A295303.P13515321377420677184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295309 (n + 1) - (Nat.choose (Int.tmod (n + 1 : ℤ) (A000010 (∑ d ∈ Nat.divisors (f1 n), d))).toNat (n + 1) : ℤ)

end

end A295303.P13515321377420677184

namespace A295303

/-- `A295309(n+1)-C((n+1)%A000010(∑{d}[n+1, #]), n+1)` -/
def P13515321377420677184.Spec : Prop :=
  ∀ n, P13515321377420677184.a n = A295303 (n + 1)

end A295303

/-! ## A295303.P7012596721358885063

`ceil(A295301(n+1)/A160664(n)-A295308(n+1))`
-/

namespace A295303.P7012596721358885063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A160664 n : ℚ) - (A295308 (n + 1) : ℚ)⌉

end

end A295303.P7012596721358885063

namespace A295303

/-- `ceil(A295301(n+1)/A160664(n)-A295308(n+1))` -/
def P7012596721358885063.Spec : Prop :=
  ∀ n, P7012596721358885063.a n = A295303 (n + 1)

end A295303

/-! ## A295303.P1338360733084026494

`ceil(A295301(n+1)/A002618(n+1)-A295308(n+1))`
-/

namespace A295303.P1338360733084026494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ) - (A295308 (n + 1) : ℚ)⌉

end

end A295303.P1338360733084026494

namespace A295303

/-- `ceil(A295301(n+1)/A002618(n+1)-A295308(n+1))` -/
def P1338360733084026494.Spec : Prop :=
  ∀ n, P1338360733084026494.a n = A295303 (n + 1)

end A295303

/-! ## A295303.P7608655084159897912

`ceil(A295301(n+1)/A074400(n+1)-A295308(n+1))`
-/

namespace A295303.P7608655084159897912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A074400 (n + 1) : ℚ) - (A295308 (n + 1) : ℚ)⌉

end

end A295303.P7608655084159897912

namespace A295303

/-- `ceil(A295301(n+1)/A074400(n+1)-A295308(n+1))` -/
def P7608655084159897912.Spec : Prop :=
  ∀ n, P7608655084159897912.a n = A295303 (n + 1)

end A295303

/-! ## A295303.P2708386658805799063

`A295306(A295309(n+1)+A295312(n+1)²)`
-/

namespace A295303.P2708386658805799063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A295309 (n + 1) + A295312 (n + 1) ^ 2).toNat

end

end A295303.P2708386658805799063

namespace A295303

/-- `A295306(A295309(n+1)+A295312(n+1)²)` -/
def P2708386658805799063.Spec : Prop :=
  ∀ n, P2708386658805799063.a n = A295303 (n + 1)

end A295303

/-!
# A295304: a(n) = +1 if sigma(phi(n)) > n, -1 if sigma(phi(n)) < n, and 0 if sigma(phi(n)) = n, where phi = A000010 and sigma = A000203.

The programs for A295304, the canonical program `A295304.P8804302237955418523` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295304 has offset 1).

The definition of A295304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295304.P8804302237955418523

`round(sin(atan(A295302(n+1))))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295304

/-- `round(sin(atan(A295302(n+1))))` -/
def P8804302237955418523.Spec : Prop :=
  ∀ n, P8804302237955418523.a n = A295304 (n + 1)

theorem P8804302237955418523.correct : P8804302237955418523.Spec := by
  intro n
  simp only [A295304, Nat.add_sub_cancel]

end A295304

/-! ## A295304.P12359827345096598981

`round(atan(atan(A062402(n+1)-(n+1))))`
-/

namespace A295304.P12359827345096598981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A062402 (n + 1) - (n + 1 : ℤ) : ℝ)))

end

end A295304.P12359827345096598981

namespace A295304

/-- `round(atan(atan(A062402(n+1)-(n+1))))` -/
def P12359827345096598981.Spec : Prop :=
  ∀ n, P12359827345096598981.a n = A295304 (n + 1)

end A295304

/-! ## A295304.P11697718130492162411

`∑{d}[A295302(n+1), A000010(#)/A295302(n+1)]`
-/

namespace A295304.P11697718130492162411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d : ℚ) / (A295302 (n + 1) : ℚ)

end

end A295304.P11697718130492162411

namespace A295304

/-- `∑{d}[A295302(n+1), A000010(#)/A295302(n+1)]` -/
def P11697718130492162411.Spec : Prop :=
  ∀ n, P11697718130492162411.a n = (A295304 (n + 1) : ℚ)

end A295304

/-! ## A295304.P460523394948610288

`A295302(n+1)/A028310(abs(A295302(n+1)))`
-/

namespace A295304.P460523394948610288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295302 (n + 1) : ℚ) / (A028310 |A295302 (n + 1)|.toNat : ℚ)

end

end A295304.P460523394948610288

namespace A295304

/-- `A295302(n+1)/A028310(abs(A295302(n+1)))` -/
def P460523394948610288.Spec : Prop :=
  ∀ n, P460523394948610288.a n = (A295304 (n + 1) : ℚ)

end A295304

/-! ## A295304.P75026732810034556

`round(tanh(A295302(n+1)))`
-/

namespace A295304.P75026732810034556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (A295302 (n + 1) : ℝ))

end

end A295304.P75026732810034556

namespace A295304

/-- `round(tanh(A295302(n+1)))` -/
def P75026732810034556.Spec : Prop :=
  ∀ n, P75026732810034556.a n = A295304 (n + 1)

end A295304

/-!
# A295305: a(n) = tau(sigma(n)) - tau(n), where tau is the number of divisors (A000005) and sigma is the sum of divisors of n (A000203).

The programs for A295305, the canonical program `A295305.P11930418778669556276` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295305 has offset 1).

The definition of A295305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(A000203(n+1))-A000005(n+1)` (program `A295305.P11930418778669556276`, by `A295305.P11930418778669556276.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295305.P10315158761538190629

`A062068(n+1)-A000005(n+1)`
-/

namespace A295305.P10315158761538190629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A000005 (n + 1)

end

end A295305.P10315158761538190629

namespace A295305

/-- `A062068(n+1)-A000005(n+1)` -/
def P10315158761538190629.Spec : Prop :=
  ∀ n, P10315158761538190629.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P11930418778669556276

`A000005(A000203(n+1))-A000005(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295305

/-- `A000005(A000203(n+1))-A000005(n+1)` -/
def P11930418778669556276.Spec : Prop :=
  ∀ n, P11930418778669556276.a n = A295305 (n + 1)

theorem P11930418778669556276.correct : P11930418778669556276.Spec := by
  intro n
  simp only [A295305, Nat.add_sub_cancel]

end A295305

/-! ## A295305.P2057298915371469874

`∏{e}[∑{d}[n+1, #], #+1]-∑{d}[n+1, gcd(n, #)]`
-/

namespace A295305.P2057298915371469874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), Nat.gcd n d : ℕ) : ℤ)

end

end A295305.P2057298915371469874

namespace A295305

/-- `∏{e}[∑{d}[n+1, #], #+1]-∑{d}[n+1, gcd(n, #)]` -/
def P2057298915371469874.Spec : Prop :=
  ∀ n, P2057298915371469874.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P5163782132522438437

`∏{e}[∑{d}[n+1, #], #+1]-A000005(n+1)`
-/

namespace A295305.P5163782132522438437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A000005 (n + 1)

end

end A295305.P5163782132522438437

namespace A295305

/-- `∏{e}[∑{d}[n+1, #], #+1]-A000005(n+1)` -/
def P5163782132522438437.Spec : Prop :=
  ∀ n, P5163782132522438437.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P1972189643345946310

`A000005(∑{d}[n+1, #])-∑{d}[n+1, gcd(n, #)]`
-/

namespace A295305.P1972189643345946310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d) - ((∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d : ℕ) : ℤ)

end

end A295305.P1972189643345946310

namespace A295305

/-- `A000005(∑{d}[n+1, #])-∑{d}[n+1, gcd(n, #)]` -/
def P1972189643345946310.Spec : Prop :=
  ∀ n, P1972189643345946310.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P11348363243195767169

`∏{e}[∑{d}[n+1, #], #+1]-abs(A329484(n+1))`
-/

namespace A295305.P11348363243195767169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - |A329484 (n + 1)|

end

end A295305.P11348363243195767169

namespace A295305

/-- `∏{e}[∑{d}[n+1, #], #+1]-abs(A329484(n+1))` -/
def P11348363243195767169.Spec : Prop :=
  ∀ n, P11348363243195767169.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P42909002689658459

`A062068(n+1)-Δ[A054519(n)]`
-/

namespace A295305.P42909002689658459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295305.P42909002689658459

namespace A295305

/-- `A062068(n+1)-Δ[A054519(n)]` -/
def P42909002689658459.Spec : Prop :=
  ∀ n, P42909002689658459.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P16594016760730217057

`A000005(∑{d}[n+1, #])-Δ[A006218(n)]`
-/

namespace A295305.P16594016760730217057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d) - (f2 (n + 1) - f2 n)

end

end A295305.P16594016760730217057

namespace A295305

/-- `A000005(∑{d}[n+1, #])-Δ[A006218(n)]` -/
def P16594016760730217057.Spec : Prop :=
  ∀ n, P16594016760730217057.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P1654845623502915186

`A062068(n+1)+1-A334954(n+1)`
-/

namespace A295305.P1654845623502915186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) + (1 - A334954 (n + 1))

end

end A295305.P1654845623502915186

namespace A295305

/-- `A062068(n+1)+1-A334954(n+1)` -/
def P1654845623502915186.Spec : Prop :=
  ∀ n, P1654845623502915186.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P14394938303619704655

`A000005(∑{d}[n+1, #])-A000005(n+1)`
-/

namespace A295305.P14394938303619704655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d) - A000005 (n + 1)

end

end A295305.P14394938303619704655

namespace A295305

/-- `A000005(∑{d}[n+1, #])-A000005(n+1)` -/
def P14394938303619704655.Spec : Prop :=
  ∀ n, P14394938303619704655.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P13447448785244533962

`A000005(Δ[A160664(n)])-A000005(n+1)`
-/

namespace A295305.P13447448785244533962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - A000005 (n + 1)

end

end A295305.P13447448785244533962

namespace A295305

/-- `A000005(Δ[A160664(n)])-A000005(n+1)` -/
def P13447448785244533962.Spec : Prop :=
  ∀ n, P13447448785244533962.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P11261413089613489278

`A000005(A276528(n+1))-A000005(n+1)`
-/

namespace A295305.P11261413089613489278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276528 (n + 1)).toNat - A000005 (n + 1)

end

end A295305.P11261413089613489278

namespace A295305

/-- `A000005(A276528(n+1))-A000005(n+1)` -/
def P11261413089613489278.Spec : Prop :=
  ∀ n, P11261413089613489278.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P8972851449559844169

`A020725(A062068(n+1))-A334954(n+1)`
-/

namespace A295305.P8972851449559844169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A062068 (n + 1)).toNat - A334954 (n + 1)

end

end A295305.P8972851449559844169

namespace A295305

/-- `A020725(A062068(n+1))-A334954(n+1)` -/
def P8972851449559844169.Spec : Prop :=
  ∀ n, P8972851449559844169.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P11936054018802834725

`A000005(abs(A143348(n+1)))-A000005(n+1)`
-/

namespace A295305.P11936054018802834725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A143348 (n + 1)|.toNat - A000005 (n + 1)

end

end A295305.P11936054018802834725

namespace A295305

/-- `A000005(abs(A143348(n+1)))-A000005(n+1)` -/
def P11936054018802834725.Spec : Prop :=
  ∀ n, P11936054018802834725.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P7391208549520026914

`A000005(sqrt(A072861(n+1)))-A000005(n+1)`
-/

namespace A295305.P7391208549520026914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat - A000005 (n + 1)

end

end A295305.P7391208549520026914

namespace A295305

/-- `A000005(sqrt(A072861(n+1)))-A000005(n+1)` -/
def P7391208549520026914.Spec : Prop :=
  ∀ n, P7391208549520026914.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P6703738583306232288

`A000005(∑[A340793(n+1)])-A000005(n+1)`
-/

namespace A295305.P6703738583306232288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000005 (n + 1)

end

end A295305.P6703738583306232288

namespace A295305

/-- `A000005(∑[A340793(n+1)])-A000005(n+1)` -/
def P6703738583306232288.Spec : Prop :=
  ∀ n, P6703738583306232288.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P5012655898491580318

`A000005(A039653(n+1)+1)-A000005(n+1)`
-/

namespace A295305.P5012655898491580318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039653 (n + 1) + 1).toNat - A000005 (n + 1)

end

end A295305.P5012655898491580318

namespace A295305

/-- `A000005(A039653(n+1)+1)-A000005(n+1)` -/
def P5012655898491580318.Spec : Prop :=
  ∀ n, P5012655898491580318.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P9564708650278582444

`A000005(A088580(n+1)-1)-A000005(n+1)`
-/

namespace A295305.P9564708650278582444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A088580 (n + 1) - 1).toNat - A000005 (n + 1)

end

end A295305.P9564708650278582444

namespace A295305

/-- `A000005(A088580(n+1)-1)-A000005(n+1)` -/
def P9564708650278582444.Spec : Prop :=
  ∀ n, P9564708650278582444.a n = A295305 (n + 1)

theorem P9564708650278582444.correct : P9564708650278582444.Spec := by
  intro n
  simp only [A295305, Nat.add_sub_cancel, A295305.P9564708650278582444.a, A295305.P11930418778669556276.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295305

/-! ## A295305.P8994187197416948308

`A000005(A074400(n+1)/2)-A000005(n+1)`
-/

namespace A295305.P8994187197416948308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat - A000005 (n + 1)

end

end A295305.P8994187197416948308

namespace A295305

/-- `A000005(A074400(n+1)/2)-A000005(n+1)` -/
def P8994187197416948308.Spec : Prop :=
  ∀ n, P8994187197416948308.a n = A295305 (n + 1)

end A295305

/-! ## A295305.P2330397150983516097

`A000005(A001065(n+1)+1+n)-A000005(n+1)`
-/

namespace A295305.P2330397150983516097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001065 (n + 1) + 1 + (n : ℤ)).toNat - A000005 (n + 1)

end

end A295305.P2330397150983516097

namespace A295305

/-- `A000005(A001065(n+1)+1+n)-A000005(n+1)` -/
def P2330397150983516097.Spec : Prop :=
  ∀ n, P2330397150983516097.a n = A295305 (n + 1)

theorem P2330397150983516097.correct : P2330397150983516097.Spec := by
  intro n
  simp only [A295305, Nat.add_sub_cancel, A295305.P2330397150983516097.a, A295305.P11930418778669556276.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295305

/-!
# A295306: a(n) = +1 if tau(sigma(n)) > tau(n), -1 if n < tau(sigma(n)) < tau(n), and 0 if tau(sigma(n)) = tau(n), where tau = A000005 and sigma = A000203.

The programs for A295306, the canonical program `A295306.P345186050737543050` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295306 has offset 1).

The definition of A295306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295306.P345186050737543050

`round(tanh(A295305(n+1)))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295306

/-- `round(tanh(A295305(n+1)))` -/
def P345186050737543050.Spec : Prop :=
  ∀ n, P345186050737543050.a n = A295306 (n + 1)

theorem P345186050737543050.correct : P345186050737543050.Spec := by
  intro n
  simp only [A295306, Nat.add_sub_cancel]

end A295306

/-! ## A295306.P12443688708132987033

`A295305(n+1)/gcd(A295305(n+1), A340014(n+1))`
-/

namespace A295306.P12443688708132987033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295305 (n + 1) : ℚ) / (Int.gcd (A295305 (n + 1)) (A340014 (n + 1)) : ℚ)

end

end A295306.P12443688708132987033

namespace A295306

/-- `A295305(n+1)/gcd(A295305(n+1), A340014(n+1))` -/
def P12443688708132987033.Spec : Prop :=
  ∀ n, P12443688708132987033.a n = (A295306 (n + 1) : ℚ)

end A295306

/-! ## A295306.P11839325893615753182

`A295308(A008634(n))+A295303(n+1)`
-/

namespace A295306.P11839325893615753182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295308 (A008634 n).toNat + A295303 (n + 1)

end

end A295306.P11839325893615753182

namespace A295306

/-- `A295308(A008634(n))+A295303(n+1)` -/
def P11839325893615753182.Spec : Prop :=
  ∀ n, P11839325893615753182.a n = A295306 (n + 1)

end A295306

/-! ## A295306.P1512473622988007698

`A295303((n+1)^A317933(n+1))`
-/

namespace A295306.P1512473622988007698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A317933 (n + 1) : ℤ))).toNat

end

end A295306.P1512473622988007698

namespace A295306

/-- `A295303((n+1)^A317933(n+1))` -/
def P1512473622988007698.Spec : Prop :=
  ∀ n, P1512473622988007698.a n = A295306 (n + 1)

end A295306

/-! ## A295306.P3749877359346479496

`A295303((n+1)^A100861(∑{e}[n+1, #]))`
-/

namespace A295306.P3749877359346479496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A100861 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ))).toNat

end

end A295306.P3749877359346479496

namespace A295306

/-- `A295303((n+1)^A100861(∑{e}[n+1, #]))` -/
def P3749877359346479496.Spec : Prop :=
  ∀ n, P3749877359346479496.a n = A295306 (n + 1)

end A295306

/-!
# A295307: Numbers k such that k > phi(sigma(k)), where phi = A000010 and sigma = A000203.

The programs for A295307, the canonical program `A295307.P10274143985494883344` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295307 has offset 1).

The definition of A295307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295307.P10274143985494883344

`eq[1, A295303(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295307

/-- `eq[1, A295303(n+1)]+1` -/
def P10274143985494883344.Spec : Prop :=
  ∀ n, (P10274143985494883344.a n : ℤ) = A295307 (n + 1)

theorem P10274143985494883344.correct : P10274143985494883344.Spec := by
  intro n
  simp only [A295307, Nat.add_sub_cancel]

end A295307

/-! ## A295307.P11422053620555282486

`eq[1, A295309(n+1)]+1`
-/

namespace A295307.P11422053620555282486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295307.P11422053620555282486

namespace A295307

/-- `eq[1, A295309(n+1)]+1` -/
def P11422053620555282486.Spec : Prop :=
  ∀ n, (P11422053620555282486.a n : ℤ) = A295307 (n + 1)

end A295307

/-! ## A295307.P5695605860817803683

`filter[A344180(n), A295309(#)]`
-/

namespace A295307.P5695605860817803683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P5695605860817803683

namespace A295307

/-- `filter[A344180(n), A295309(#)]` -/
def P5695605860817803683.Spec : Prop :=
  ∀ n, P5695605860817803683.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P13515637469228237843

`lt[A000010(A000203(n+1)), n+1]+1`
-/

namespace A295307.P13515637469228237843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A295307.P13515637469228237843

namespace A295307

/-- `lt[A000010(A000203(n+1)), n+1]+1` -/
def P13515637469228237843.Spec : Prop :=
  ∀ n, (P13515637469228237843.a n : ℤ) = A295307 (n + 1)

end A295307

/-! ## A295307.P5044297802314877189

`lt[A295297(n+1), A295301(n+1)]+1`
-/

namespace A295307.P5044297802314877189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A295307.P5044297802314877189

namespace A295307

/-- `lt[A295297(n+1), A295301(n+1)]+1` -/
def P5044297802314877189.Spec : Prop :=
  ∀ n, (P5044297802314877189.a n : ℤ) = A295307 (n + 1)

end A295307

/-! ## A295307.P7510902711363142035

`lt[A295312(n+1), A295311(n+1)]+1`
-/

namespace A295307.P7510902711363142035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A295307.P7510902711363142035

namespace A295307

/-- `lt[A295312(n+1), A295311(n+1)]+1` -/
def P7510902711363142035.Spec : Prop :=
  ∀ n, (P7510902711363142035.a n : ℤ) = A295307 (n + 1)

end A295307

/-! ## A295307.P17911272544166742542

`filter[A163162(n+1), A295309(#)]`
-/

namespace A295307.P17911272544166742542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P17911272544166742542

namespace A295307

/-- `filter[A163162(n+1), A295309(#)]` -/
def P17911272544166742542.Spec : Prop :=
  ∀ n, P17911272544166742542.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P7964892406284811901

`A020725(lt[A295312(n+1), A295311(n+1)])`
-/

namespace A295307.P7964892406284811901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A295307.P7964892406284811901

namespace A295307

/-- `A020725(lt[A295312(n+1), A295311(n+1)])` -/
def P7964892406284811901.Spec : Prop :=
  ∀ n, P7964892406284811901.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P12914212852693720411

`lt[A062401(n+1), n+1]+1`
-/

namespace A295307.P12914212852693720411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A295307.P12914212852693720411

namespace A295307

/-- `lt[A062401(n+1), n+1]+1` -/
def P12914212852693720411.Spec : Prop :=
  ∀ n, (P12914212852693720411.a n : ℤ) = A295307 (n + 1)

end A295307

/-! ## A295307.P15714306877463804103

`eq[1, A295309(A028310(n))]`
-/

namespace A295307.P15714306877463804103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295309 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295307.P15714306877463804103

namespace A295307

/-- `eq[1, A295309(A028310(n))]` -/
def P15714306877463804103.Spec : Prop :=
  ∀ n, (P15714306877463804103.a n : ℤ) = A295307 (n + 1)

end A295307

/-! ## A295307.P9353156219069918335

`filter[A092942(n+1), A295309(#)]`
-/

namespace A295307.P9353156219069918335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P9353156219069918335

namespace A295307

/-- `filter[A092942(n+1), A295309(#)]` -/
def P9353156219069918335.Spec : Prop :=
  ∀ n, P9353156219069918335.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P18353573685108962865

`filter[A152271(n), A295309(#)]`
-/

namespace A295307.P18353573685108962865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P18353573685108962865

namespace A295307

/-- `filter[A152271(n), A295309(#)]` -/
def P18353573685108962865.Spec : Prop :=
  ∀ n, P18353573685108962865.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P10411567030588877111

`filter[A158416(n), A295309(#)]`
-/

namespace A295307.P10411567030588877111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P10411567030588877111

namespace A295307

/-- `filter[A158416(n), A295309(#)]` -/
def P10411567030588877111.Spec : Prop :=
  ∀ n, P10411567030588877111.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P6320304874653591789

`lt[A323068(3*n+5), A295301(n+1)]+1`
-/

namespace A295307.P6320304874653591789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323068 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A295307.P6320304874653591789

namespace A295307

/-- `lt[A323068(3*n+5), A295301(n+1)]+1` -/
def P6320304874653591789.Spec : Prop :=
  ∀ n, (P6320304874653591789.a n : ℤ) = A295307 (n + 1)

end A295307

/-! ## A295307.P13481157200450931748

`filter[A100727(n), A295309(#)]`
-/

namespace A295307.P13481157200450931748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P13481157200450931748

namespace A295307

/-- `filter[A100727(n), A295309(#)]` -/
def P13481157200450931748.Spec : Prop :=
  ∀ n, P13481157200450931748.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P11239042883218642585

`filter[A144112(2*n+1), A295309(#)]`
-/

namespace A295307.P11239042883218642585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144112 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P11239042883218642585

namespace A295307

/-- `filter[A144112(2*n+1), A295309(#)]` -/
def P11239042883218642585.Spec : Prop :=
  ∀ n, P11239042883218642585.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P17522481389994399538

`filter[A131033(n+1), A295309(#)]`
-/

namespace A295307.P17522481389994399538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P17522481389994399538

namespace A295307

/-- `filter[A131033(n+1), A295309(#)]` -/
def P17522481389994399538.Spec : Prop :=
  ∀ n, P17522481389994399538.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P16087890198125869021

`filter[A130296(n+1), A295309(#)]`
-/

namespace A295307.P16087890198125869021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P16087890198125869021

namespace A295307

/-- `filter[A130296(n+1), A295309(#)]` -/
def P16087890198125869021.Spec : Prop :=
  ∀ n, P16087890198125869021.a n = A295307 (n + 1)

end A295307

/-! ## A295307.P11834407372281161555

`filter[A051340(n), A295309(#)]`
-/

namespace A295307.P11834407372281161555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A295307.P11834407372281161555

namespace A295307

/-- `filter[A051340(n), A295309(#)]` -/
def P11834407372281161555.Spec : Prop :=
  ∀ n, P11834407372281161555.a n = A295307 (n + 1)

end A295307

/-!
# A295308: Characteristic function for A066694: a(n) = 1 if n < phi(sigma(n)), 0 otherwise.

The programs for A295308, the canonical program `A295308.P2202808230107505075` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295308 has offset 1).

The definition of A295308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295308.P11526417188592594055

`char[A066694(n+1)-1]`
-/

namespace A295308.P11526417188592594055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066694 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295308.P11526417188592594055

namespace A295308

/-- `char[A066694(n+1)-1]` -/
def P11526417188592594055.Spec : Prop :=
  ∀ n, (P11526417188592594055.a n : ℤ) = A295308 (n + 1)

end A295308

/-! ## A295308.P2202808230107505075

`dr(and(10, A295303(n+1)))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295308

/-- `dr(and(10, A295303(n+1)))` -/
def P2202808230107505075.Spec : Prop :=
  ∀ n, (P2202808230107505075.a n : ℤ) = A295308 (n + 1)

theorem P2202808230107505075.correct : P2202808230107505075.Spec := by
  intro n
  simp only [A295308, Nat.add_sub_cancel]

end A295308

/-! ## A295308.P15254516841653650280

`char[lt[A295301(n+1), 0]]`
-/

namespace A295308.P15254516841653650280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A295308.P15254516841653650280

namespace A295308

/-- `char[lt[A295301(n+1), 0]]` -/
def P15254516841653650280.Spec : Prop :=
  ∀ n, (P15254516841653650280.a n : ℤ) = A295308 (n + 1)

end A295308

/-! ## A295308.P17856188249063917222

`char[lt[n+1, A062401(n+1)]]`
-/

namespace A295308.P17856188249063917222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A295308.P17856188249063917222

namespace A295308

/-- `char[lt[n+1, A062401(n+1)]]` -/
def P17856188249063917222.Spec : Prop :=
  ∀ n, (P17856188249063917222.a n : ℤ) = A295308 (n + 1)

end A295308

/-! ## A295308.P15678906522687767693

`C((n+1)%A000010(∑{d}[n+1, #]), n+1)`
-/

namespace A295308.P15678906522687767693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (n + 1 : ℤ) (A000010 (∑ d ∈ Nat.divisors (f1 n), d))).toNat (n + 1)

end

end A295308.P15678906522687767693

namespace A295308

/-- `C((n+1)%A000010(∑{d}[n+1, #]), n+1)` -/
def P15678906522687767693.Spec : Prop :=
  ∀ n, (P15678906522687767693.a n : ℤ) = A295308 (n + 1)

end A295308

/-! ## A295308.P5005216329494182196

`A295309(n+1)-A295303(n+1)`
-/

namespace A295308.P5005216329494182196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295309 (n + 1) - A295303 (n + 1)

end

end A295308.P5005216329494182196

namespace A295308

/-- `A295309(n+1)-A295303(n+1)` -/
def P5005216329494182196.Spec : Prop :=
  ∀ n, P5005216329494182196.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P3880262610325202038

`char[lt[A295303(n+1), A295297(n+1)]]`
-/

namespace A295308.P3880262610325202038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A295308.P3880262610325202038

namespace A295308

/-- `char[lt[A295303(n+1), A295297(n+1)]]` -/
def P3880262610325202038.Spec : Prop :=
  ∀ n, (P3880262610325202038.a n : ℤ) = A295308 (n + 1)

end A295308

/-! ## A295308.P302232980159342233

`ceil(A295301(n+1)/(n-A160664(n)))`
-/

namespace A295308.P302232980159342233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / ((n : ℤ) - A160664 n : ℚ)⌉

end

end A295308.P302232980159342233

namespace A295308

/-- `ceil(A295301(n+1)/(n-A160664(n)))` -/
def P302232980159342233.Spec : Prop :=
  ∀ n, P302232980159342233.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P13075989862201089987

`A295303(n-n*A295303(n+1)+1)`
-/

namespace A295308.P13075989862201089987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 ((n : ℤ) - (n : ℤ) * A295303 (n + 1) + 1).toNat

end

end A295308.P13075989862201089987

namespace A295308

/-- `A295303(n-n*A295303(n+1)+1)` -/
def P13075989862201089987.Spec : Prop :=
  ∀ n, P13075989862201089987.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P7037571670334333162

`ceil(A295301(n+1)/(1-A074400(n+1)))`
-/

namespace A295308.P7037571670334333162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (1 - A074400 (n + 1) : ℚ)⌉

end

end A295308.P7037571670334333162

namespace A295308

/-- `ceil(A295301(n+1)/(1-A074400(n+1)))` -/
def P7037571670334333162.Spec : Prop :=
  ∀ n, P7037571670334333162.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P8923738604470413965

`ceil(A295301(n+1)/(n-A002618(n+1)))`
-/

namespace A295308.P8923738604470413965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / ((n : ℤ) - A002618 (n + 1) : ℚ)⌉

end

end A295308.P8923738604470413965

namespace A295308

/-- `ceil(A295301(n+1)/(n-A002618(n+1)))` -/
def P8923738604470413965.Spec : Prop :=
  ∀ n, P8923738604470413965.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P6022345776012522841

`ceil(A295303(n+1)/(n-A319301(n+1)))`
-/

namespace A295308.P6022345776012522841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295303 (n + 1) : ℚ) / ((n : ℤ) - A319301 (n + 1) : ℚ)⌉

end

end A295308.P6022345776012522841

namespace A295308

/-- `ceil(A295303(n+1)/(n-A319301(n+1)))` -/
def P6022345776012522841.Spec : Prop :=
  ∀ n, P6022345776012522841.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P15556947668304298727

`A222832(floor(A295303(n+1)+ratio[n+1])+1)`
-/

namespace A295308.P15556947668304298727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222832 (⌊(A295303 (n + 1) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ + 1).toNat

end

end A295308.P15556947668304298727

namespace A295308

/-- `A222832(floor(A295303(n+1)+ratio[n+1])+1)` -/
def P15556947668304298727.Spec : Prop :=
  ∀ n, P15556947668304298727.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P7367227812896602643

`ceil(A295303(n+1)/A003558(n)-A295303(n+1))`
-/

namespace A295308.P7367227812896602643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295303 (n + 1) : ℚ) / (A003558 n : ℚ) - (A295303 (n + 1) : ℚ)⌉

end

end A295308.P7367227812896602643

namespace A295308

/-- `ceil(A295303(n+1)/A003558(n)-A295303(n+1))` -/
def P7367227812896602643.Spec : Prop :=
  ∀ n, P7367227812896602643.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P2630581813254656292

`ceil(A295303(n+1)/(A295303(n+1)-A349338(n+1)))`
-/

namespace A295308.P2630581813254656292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295303 (n + 1) : ℚ) / (A295303 (n + 1) - A349338 (n + 1) : ℚ)⌉

end

end A295308.P2630581813254656292

namespace A295308

/-- `ceil(A295303(n+1)/(A295303(n+1)-A349338(n+1)))` -/
def P2630581813254656292.Spec : Prop :=
  ∀ n, P2630581813254656292.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P6713553476970872359

`A010054(n+1+A295303(n+1)+A004736(n+1))`
-/

namespace A295308.P6713553476970872359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((n + 1 : ℤ) + (A295303 (n + 1) + A004736 (n + 1))).toNat

end

end A295308.P6713553476970872359

namespace A295308

/-- `A010054(n+1+A295303(n+1)+A004736(n+1))` -/
def P6713553476970872359.Spec : Prop :=
  ∀ n, P6713553476970872359.a n = A295308 (n + 1)

end A295308

/-! ## A295308.P13300182139710275709

`(A295309(n+1)+A295306(A295312(n+1)²))²`
-/

namespace A295308.P13300182139710275709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295309 (n + 1) + A295306 (A295312 (n + 1) ^ 2).toNat) ^ 2

end

end A295308.P13300182139710275709

namespace A295308

/-- `(A295309(n+1)+A295306(A295312(n+1)²))²` -/
def P13300182139710275709.Spec : Prop :=
  ∀ n, P13300182139710275709.a n = A295308 (n + 1)

end A295308

/-!
# A295309: Characteristic function for A295307: a(n) = 1 if n > phi(sigma(n)), 0 otherwise.

The programs for A295309, the canonical program `A295309.P8495486040454173549` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295309 has offset 1).

The definition of A295309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295309.P1985286784067636375

`ceil(atan(A295303(n+1)))`
-/

namespace A295309.P1985286784067636375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A295303 (n + 1) : ℝ)⌉

end

end A295309.P1985286784067636375

namespace A295309

/-- `ceil(atan(A295303(n+1)))` -/
def P1985286784067636375.Spec : Prop :=
  ∀ n, P1985286784067636375.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P3985835323156734072

`char[A295307(1+n)-1]`
-/

namespace A295309.P3985835323156734072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295307 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295309.P3985835323156734072

namespace A295309

/-- `char[A295307(1+n)-1]` -/
def P3985835323156734072.Spec : Prop :=
  ∀ n, (P3985835323156734072.a n : ℤ) = A295309 (n + 1)

end A295309

/-! ## A295309.P17175091652788883952

`char[lt[0, A295301(n+1)]]`
-/

namespace A295309.P17175091652788883952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A295309.P17175091652788883952

namespace A295309

/-- `char[lt[0, A295301(n+1)]]` -/
def P17175091652788883952.Spec : Prop :=
  ∀ n, (P17175091652788883952.a n : ℤ) = A295309 (n + 1)

end A295309

/-! ## A295309.P12704127647569440647

`ceil(A295303(n+1)/A003558(n))`
-/

namespace A295309.P12704127647569440647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295303 (n + 1) : ℚ) / (A003558 n : ℚ)⌉

end

end A295309.P12704127647569440647

namespace A295309

/-- `ceil(A295303(n+1)/A003558(n))` -/
def P12704127647569440647.Spec : Prop :=
  ∀ n, P12704127647569440647.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P8495486040454173549

`ceil(A295301(n+1)/A160664(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295309

/-- `ceil(A295301(n+1)/A160664(n))` -/
def P8495486040454173549.Spec : Prop :=
  ∀ n, P8495486040454173549.a n = A295309 (n + 1)

theorem P8495486040454173549.correct : P8495486040454173549.Spec := by
  intro n
  simp only [A295309, Nat.add_sub_cancel]

end A295309

/-! ## A295309.P1645378478581199531

`A295308(n+1)+A295303(n+1)`
-/

namespace A295309.P1645378478581199531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295308 (n + 1) + A295303 (n + 1)

end

end A295309.P1645378478581199531

namespace A295309

/-- `A295308(n+1)+A295303(n+1)` -/
def P1645378478581199531.Spec : Prop :=
  ∀ n, P1645378478581199531.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P15424937527083297446

`ceil(A295301(n+1)/A002618(n+1))`
-/

namespace A295309.P15424937527083297446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)⌉

end

end A295309.P15424937527083297446

namespace A295309

/-- `ceil(A295301(n+1)/A002618(n+1))` -/
def P15424937527083297446.Spec : Prop :=
  ∀ n, P15424937527083297446.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P7893060098182328765

`ceil(A295301(n+1)/A074400(n+1))`
-/

namespace A295309.P7893060098182328765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295301 (n + 1) : ℚ) / (A074400 (n + 1) : ℚ)⌉

end

end A295309.P7893060098182328765

namespace A295309

/-- `ceil(A295301(n+1)/A074400(n+1))` -/
def P7893060098182328765.Spec : Prop :=
  ∀ n, P7893060098182328765.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P17545374850301431178

`ceil(A295303(n+1)/A319301(n+1))`
-/

namespace A295309.P17545374850301431178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295303 (n + 1) : ℚ) / (A319301 (n + 1) : ℚ)⌉

end

end A295309.P17545374850301431178

namespace A295309

/-- `ceil(A295303(n+1)/A319301(n+1))` -/
def P17545374850301431178.Spec : Prop :=
  ∀ n, P17545374850301431178.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P5986743021718056572

`ceil(A295303(n+1)/A349338(n+1))`
-/

namespace A295309.P5986743021718056572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295303 (n + 1) : ℚ) / (A349338 (n + 1) : ℚ)⌉

end

end A295309.P5986743021718056572

namespace A295309

/-- `ceil(A295303(n+1)/A349338(n+1))` -/
def P5986743021718056572.Spec : Prop :=
  ∀ n, P5986743021718056572.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P13380660736276733518

`A295303(floor(n^A295303(n+1))+1)`
-/

namespace A295309.P13380660736276733518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (⌊(n : ℚ) ^ (A295303 (n + 1) : ℤ)⌋ + 1).toNat

end

end A295309.P13380660736276733518

namespace A295309

/-- `A295303(floor(n^A295303(n+1))+1)` -/
def P13380660736276733518.Spec : Prop :=
  ∀ n, P13380660736276733518.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P2587792623016357806

`char[lt[A000010(A000203(n+1)), n+1]]`
-/

namespace A295309.P2587792623016357806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A295309.P2587792623016357806

namespace A295309

/-- `char[lt[A000010(A000203(n+1)), n+1]]` -/
def P2587792623016357806.Spec : Prop :=
  ∀ n, (P2587792623016357806.a n : ℤ) = A295309 (n + 1)

end A295309

/-! ## A295309.P5475368072936262777

`char[lt[A295297(n+1), 2*A295303(n+1)]]`
-/

namespace A295309.P5475368072936262777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295297 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295303 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A295309.P5475368072936262777

namespace A295309

/-- `char[lt[A295297(n+1), 2*A295303(n+1)]]` -/
def P5475368072936262777.Spec : Prop :=
  ∀ n, (P5475368072936262777.a n : ℤ) = A295309 (n + 1)

end A295309

/-! ## A295309.P3559929241874857198

`A010051(and(2*n+1, A295303(n+1))+1)`
-/

namespace A295309.P3559929241874857198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.land (2 * n + 1 : ℤ) (A295303 (n + 1)) + 1).toNat

end

end A295309.P3559929241874857198

namespace A295309

/-- `A010051(and(2*n+1, A295303(n+1))+1)` -/
def P3559929241874857198.Spec : Prop :=
  ∀ n, P3559929241874857198.a n = A295309 (n + 1)

end A295309

/-! ## A295309.P2183803955458521892

`char[lt[A062401(n+1), n+1]]`
-/

namespace A295309.P2183803955458521892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A295309.P2183803955458521892

namespace A295309

/-- `char[lt[A062401(n+1), n+1]]` -/
def P2183803955458521892.Spec : Prop :=
  ∀ n, (P2183803955458521892.a n : ℤ) = A295309 (n + 1)

end A295309

/-! ## A295309.P5327251104911831027

`A054911(C(n, C(A062401(n+1), n)))`
-/

namespace A295309.P5327251104911831027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 (Nat.choose n (Nat.choose (A062401 (n + 1)).toNat n))

end

end A295309.P5327251104911831027

namespace A295309

/-- `A054911(C(n, C(A062401(n+1), n)))` -/
def P5327251104911831027.Spec : Prop :=
  ∀ n, P5327251104911831027.a n = A295309 (n + 1)

end A295309

/-!
# A295310: a(n) = gcd(n, A062401(n)), where A062401(n) = phi(sigma(n)).

The programs for A295310, the canonical program `A295310.P15878343265230964827` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295310 has offset 1).

The definition of A295310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A062401(n+1))` (program `A295310.P15878343265230964827`, by `A295310.P15878343265230964827.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295310.P15878343265230964827

`gcd(n+1, A062401(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295310

/-- `gcd(n+1, A062401(n+1))` -/
def P15878343265230964827.Spec : Prop :=
  ∀ n, (P15878343265230964827.a n : ℤ) = A295310 (n + 1)

theorem P15878343265230964827.correct : P15878343265230964827.Spec := by
  intro n
  simp only [A295310, Nat.add_sub_cancel]

end A295310

/-! ## A295310.P10560560163551710240

`(n+1)/A295311(n+1)`
-/

namespace A295310.P10560560163551710240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295311 (n + 1) : ℚ)

end

end A295310.P10560560163551710240

namespace A295310

/-- `(n+1)/A295311(n+1)` -/
def P10560560163551710240.Spec : Prop :=
  ∀ n, P10560560163551710240.a n = (A295310 (n + 1) : ℚ)

end A295310

/-! ## A295310.P5359654136192154314

`A062401(n+1)/A295312(n+1)`
-/

namespace A295310.P5359654136192154314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295312 (n + 1) : ℚ)

end

end A295310.P5359654136192154314

namespace A295310

/-- `A062401(n+1)/A295312(n+1)` -/
def P5359654136192154314.Spec : Prop :=
  ∀ n, P5359654136192154314.a n = (A295310 (n + 1) : ℚ)

end A295310

/-! ## A295310.P14660383633070597932

`gcd(A000027(n+1), A295301(n+1))`
-/

namespace A295310.P14660383633070597932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A295301 (n + 1))

end

end A295310.P14660383633070597932

namespace A295310

/-- `gcd(A000027(n+1), A295301(n+1))` -/
def P14660383633070597932.Spec : Prop :=
  ∀ n, (P14660383633070597932.a n : ℤ) = A295310 (n + 1)

end A295310

/-! ## A295310.P866570038286729904

`gcd(xor(n, -1), A000010(A000203(n+1)))`
-/

namespace A295310.P866570038286729904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A000010 (A000203 (n + 1)).toNat)

end

end A295310.P866570038286729904

namespace A295310

/-- `gcd(xor(n, -1), A000010(A000203(n+1)))` -/
def P866570038286729904.Spec : Prop :=
  ∀ n, (P866570038286729904.a n : ℤ) = A295310 (n + 1)

end A295310

/-! ## A295310.P2142300167564857392

`A000010(A000203(n+1))/A295312(n+1)`
-/

namespace A295310.P2142300167564857392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A295312 (n + 1) : ℚ)

end

end A295310.P2142300167564857392

namespace A295310

/-- `A000010(A000203(n+1))/A295312(n+1)` -/
def P2142300167564857392.Spec : Prop :=
  ∀ n, P2142300167564857392.a n = (A295310 (n + 1) : ℚ)

end A295310

/-! ## A295310.P9524923180553722486

`A295313(n+1)/A295312(n+1)*A295315(n+1)`
-/

namespace A295310.P9524923180553722486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295313 (n + 1) : ℚ) / (A295312 (n + 1) : ℚ) * (A295315 (n + 1) : ℚ)

end

end A295310.P9524923180553722486

namespace A295310

/-- `A295313(n+1)/A295312(n+1)*A295315(n+1)` -/
def P9524923180553722486.Spec : Prop :=
  ∀ n, P9524923180553722486.a n = (A295310 (n + 1) : ℚ)

end A295310

/-! ## A295310.P8445080354291908559

`gcd(A000010(A039653(n+1)+1), A242112(2*n))`
-/

namespace A295310.P8445080354291908559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A039653 (n + 1) + 1).toNat) (A242112 (2 * n))

end

end A295310.P8445080354291908559

namespace A295310

/-- `gcd(A000010(A039653(n+1)+1), A242112(2*n))` -/
def P8445080354291908559.Spec : Prop :=
  ∀ n, (P8445080354291908559.a n : ℤ) = A295310 (n + 1)

end A295310

/-! ## A295310.P4686317174267044346

`gcd(A000010(A245092(2*n+1)), A160413(2*(n+1)))`
-/

namespace A295310.P4686317174267044346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A245092 (2 * n + 1)).toNat) (A160413 (2 * (n + 1)))

end

end A295310.P4686317174267044346

namespace A295310

/-- `gcd(A000010(A245092(2*n+1)), A160413(2*(n+1)))` -/
def P4686317174267044346.Spec : Prop :=
  ∀ n, (P4686317174267044346.a n : ℤ) = A295310 (n + 1)

end A295310

/-!
# A295311: a(n) = n / A295310(n) = n / gcd(n, phi(sigma(n))).

The programs for A295311, the canonical program `A295311.P16426649915299872850` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295311 has offset 1).

The definition of A295311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295311.P16426649915299872850

`(n+1)/A295310(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295311

/-- `(n+1)/A295310(n+1)` -/
def P16426649915299872850.Spec : Prop :=
  ∀ n, P16426649915299872850.a n = (A295311 (n + 1) : ℚ)

end A295311

/-! ## A295311.P10556013097928122030

`(n+1)/gcd(n+1, A000010(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295311.P10556013097928122030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (A000203 (n + 1)).toNat) : ℚ)

end

end A295311.P10556013097928122030

namespace A295311

/-- `(n+1)/gcd(n+1, A000010(A000203(n+1)))` -/
def P10556013097928122030.Spec : Prop :=
  ∀ n, P10556013097928122030.a n = (A295311 (n + 1) : ℚ)

end A295311

/-! ## A295311.P4696105483585036007

`(n+1)/gcd(n+1, A062401(n+1))`
-/

namespace A295311.P4696105483585036007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A062401 (n + 1)) : ℚ)

end

end A295311.P4696105483585036007

namespace A295311

/-- `(n+1)/gcd(n+1, A062401(n+1))` -/
def P4696105483585036007.Spec : Prop :=
  ∀ n, P4696105483585036007.a n = (A295311 (n + 1) : ℚ)

end A295311

/-! ## A295311.P14650402168653577641

`(n+1)/A062401(n+1)*A295312(n+1)`
-/

namespace A295311.P14650402168653577641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062401 (n + 1) : ℚ) * (A295312 (n + 1) : ℚ)

end

end A295311.P14650402168653577641

namespace A295311

/-- `(n+1)/A062401(n+1)*A295312(n+1)` -/
def P14650402168653577641.Spec : Prop :=
  ∀ n, P14650402168653577641.a n = (A295311 (n + 1) : ℚ)

end A295311

/-! ## A295311.P684765906356675560

`A000027(n+1)/gcd(A000027(n+1), A295301(n+1))`
-/

namespace A295311.P684765906356675560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A295301 (n + 1)) : ℚ)

end

end A295311.P684765906356675560

namespace A295311

/-- `A000027(n+1)/gcd(A000027(n+1), A295301(n+1))` -/
def P684765906356675560.Spec : Prop :=
  ∀ n, P684765906356675560.a n = (A295311 (n + 1) : ℚ)

end A295311

/-! ## A295311.P18118052402085601437

`lcm(A000027(n+1), A062401(n+1))/A062401(n+1)`
-/

namespace A295311.P18118052402085601437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A062401 (n + 1)) : ℚ) / (A062401 (n + 1) : ℚ)

end

end A295311.P18118052402085601437

namespace A295311

/-- `lcm(A000027(n+1), A062401(n+1))/A062401(n+1)` -/
def P18118052402085601437.Spec : Prop :=
  ∀ n, P18118052402085601437.a n = (A295311 (n + 1) : ℚ)

end A295311

/-! ## A295311.P10875177073112270560

`A126988(A295310(n+1)+A000217(n))`
-/

namespace A295311.P10875177073112270560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A295310 (n + 1) + A000217 n).toNat

end

end A295311.P10875177073112270560

namespace A295311

/-- `A126988(A295310(n+1)+A000217(n))` -/
def P10875177073112270560.Spec : Prop :=
  ∀ n, P10875177073112270560.a n = A295311 (n + 1)

end A295311

/-!
# A295312: a(n) = A062401(n) / A295310(n) = phi(sigma(n)) / gcd(n, phi(sigma(n))).

The programs for A295312, the canonical program `A295312.P2048515004002335457` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295312 has offset 1).

The definition of A295312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295312.P2048515004002335457

`A062401(n+1)/A295310(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295312

/-- `A062401(n+1)/A295310(n+1)` -/
def P2048515004002335457.Spec : Prop :=
  ∀ n, P2048515004002335457.a n = (A295312 (n + 1) : ℚ)

end A295312

/-! ## A295312.P11168718382164679550

`A000010(A000203(n+1))/gcd(n+1, A000010(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295312.P11168718382164679550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (A000203 (n + 1)).toNat) : ℚ)

end

end A295312.P11168718382164679550

namespace A295312

/-- `A000010(A000203(n+1))/gcd(n+1, A000010(A000203(n+1)))` -/
def P11168718382164679550.Spec : Prop :=
  ∀ n, P11168718382164679550.a n = (A295312 (n + 1) : ℚ)

end A295312

/-! ## A295312.P13993366820497752638

`A000010(A000203(n+1))/A295310(n+1)`
-/

namespace A295312.P13993366820497752638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295312.P13993366820497752638

namespace A295312

/-- `A000010(A000203(n+1))/A295310(n+1)` -/
def P13993366820497752638.Spec : Prop :=
  ∀ n, P13993366820497752638.a n = (A295312 (n + 1) : ℚ)

end A295312

/-! ## A295312.P159629346381192715

`A295311(n+1)-A295301(n+1)/A295310(n+1)`
-/

namespace A295312.P159629346381192715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295311 (n + 1) : ℚ) - (A295301 (n + 1) : ℚ) / (A295310 (n + 1) : ℚ)

end

end A295312.P159629346381192715

namespace A295312

/-- `A295311(n+1)-A295301(n+1)/A295310(n+1)` -/
def P159629346381192715.Spec : Prop :=
  ∀ n, P159629346381192715.a n = (A295312 (n + 1) : ℚ)

end A295312

/-! ## A295312.P127946091692342696

`A295313(n+1)/A295310(n+1)*A295315(n+1)`
-/

namespace A295312.P127946091692342696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295313 (n + 1) : ℚ) / (A295310 (n + 1) : ℚ) * (A295315 (n + 1) : ℚ)

end

end A295312.P127946091692342696

namespace A295312

/-- `A295313(n+1)/A295310(n+1)*A295315(n+1)` -/
def P127946091692342696.Spec : Prop :=
  ∀ n, P127946091692342696.a n = (A295312 (n + 1) : ℚ)

end A295312

/-! ## A295312.P2933549029572963877

`A000010(A000203(n+1))/gcd(n+1, A062401(n+1))`
-/

namespace A295312.P2933549029572963877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (Int.gcd (n + 1 : ℤ) (A062401 (n + 1)) : ℚ)

end

end A295312.P2933549029572963877

namespace A295312

/-- `A000010(A000203(n+1))/gcd(n+1, A062401(n+1))` -/
def P2933549029572963877.Spec : Prop :=
  ∀ n, P2933549029572963877.a n = (A295312 (n + 1) : ℚ)

end A295312

/-!
# A295313: a(n) = gcd(sigma(n), phi(sigma(n))).

The programs for A295313, the canonical program `A295313.P9853845397252640583` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295313 has offset 1).

The definition of A295313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A000010(A000203(n+1)))` (program `A295313.P9853845397252640583`, by `A295313.P9853845397252640583.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295313.P9853845397252640583

`gcd(A000203(n+1), A000010(A000203(n+1)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295313

/-- `gcd(A000203(n+1), A000010(A000203(n+1)))` -/
def P9853845397252640583.Spec : Prop :=
  ∀ n, (P9853845397252640583.a n : ℤ) = A295313 (n + 1)

theorem P9853845397252640583.correct : P9853845397252640583.Spec := by
  intro n
  simp only [A295313, Nat.add_sub_cancel]

end A295313

/-! ## A295313.P4164146466195802631

`A009195(A000203(n+1))`
-/

namespace A295313.P4164146466195802631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A000203 (n + 1)).toNat

end

end A295313.P4164146466195802631

namespace A295313

/-- `A009195(A000203(n+1))` -/
def P4164146466195802631.Spec : Prop :=
  ∀ n, P4164146466195802631.a n = A295313 (n + 1)

end A295313

/-! ## A295313.P3902102749756301218

`gcd(∑{d}[n+1, #], A062401(n+1))`
-/

namespace A295313.P3902102749756301218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A062401 (n + 1))

end

end A295313.P3902102749756301218

namespace A295313

/-- `gcd(∑{d}[n+1, #], A062401(n+1))` -/
def P3902102749756301218.Spec : Prop :=
  ∀ n, (P3902102749756301218.a n : ℤ) = A295313 (n + 1)

end A295313

/-! ## A295313.P13743453555670310028

`gcd((-1)^n*∑{d}[n+1, #], A000010(∑{d}[n+1, #]))`
-/

namespace A295313.P13743453555670310028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((-1) ^ n * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) (A000010 (∑ d ∈ Nat.divisors (f2 n), d))

end

end A295313.P13743453555670310028

namespace A295313

/-- `gcd((-1)^n*∑{d}[n+1, #], A000010(∑{d}[n+1, #]))` -/
def P13743453555670310028.Spec : Prop :=
  ∀ n, (P13743453555670310028.a n : ℤ) = A295313 (n + 1)

end A295313

/-! ## A295313.P3345051685277304335

`A000203(n+1)/A295314(n+1)`
-/

namespace A295313.P3345051685277304335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A295314 (n + 1) : ℚ)

end

end A295313.P3345051685277304335

namespace A295313

/-- `A000203(n+1)/A295314(n+1)` -/
def P3345051685277304335.Spec : Prop :=
  ∀ n, P3345051685277304335.a n = (A295313 (n + 1) : ℚ)

end A295313

/-! ## A295313.P17945750096611027302

`A062401(n+1)/A295315(n+1)`
-/

namespace A295313.P17945750096611027302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A295315 (n + 1) : ℚ)

end

end A295313.P17945750096611027302

namespace A295313

/-- `A062401(n+1)/A295315(n+1)` -/
def P17945750096611027302.Spec : Prop :=
  ∀ n, P17945750096611027302.a n = (A295313 (n + 1) : ℚ)

end A295313

/-! ## A295313.P6095427375644682238

`gcd(A000203(n+1), A062401(n+1))`
-/

namespace A295313.P6095427375644682238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A062401 (n + 1))

end

end A295313.P6095427375644682238

namespace A295313

/-- `gcd(A000203(n+1), A062401(n+1))` -/
def P6095427375644682238.Spec : Prop :=
  ∀ n, (P6095427375644682238.a n : ℤ) = A295313 (n + 1)

end A295313

/-! ## A295313.P11856462072557593477

`A000010(A000203(n+1))/A295315(n+1)`
-/

namespace A295313.P11856462072557593477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A295315 (n + 1) : ℚ)

end

end A295313.P11856462072557593477

namespace A295313

/-- `A000010(A000203(n+1))/A295315(n+1)` -/
def P11856462072557593477.Spec : Prop :=
  ∀ n, P11856462072557593477.a n = (A295313 (n + 1) : ℚ)

end A295313

/-! ## A295313.P13701814008417133035

`gcd(A000010(A245092(2*n+1)), A245092(2*n+1))`
-/

namespace A295313.P13701814008417133035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A245092 (2 * n + 1)).toNat) (A245092 (2 * n + 1))

end

end A295313.P13701814008417133035

namespace A295313

/-- `gcd(A000010(A245092(2*n+1)), A245092(2*n+1))` -/
def P13701814008417133035.Spec : Prop :=
  ∀ n, (P13701814008417133035.a n : ℤ) = A295313 (n + 1)

end A295313

/-! ## A295313.P12546665349529649239

`A295310(n+1)*A295312(n+1)/A295315(n+1)`
-/

namespace A295313.P12546665349529649239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295310 (n + 1) * A295312 (n + 1) : ℚ) / (A295315 (n + 1) : ℚ)

end

end A295313.P12546665349529649239

namespace A295313

/-- `A295310(n+1)*A295312(n+1)/A295315(n+1)` -/
def P12546665349529649239.Spec : Prop :=
  ∀ n, P12546665349529649239.a n = (A295313 (n + 1) : ℚ)

end A295313

/-! ## A295313.P432381490925727400

`A353643(n+1)/A295315(n+1)*A353646(n+1)`
-/

namespace A295313.P432381490925727400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353643 (n + 1) : ℚ) / (A295315 (n + 1) : ℚ) * (A353646 (n + 1) : ℚ)

end

end A295313.P432381490925727400

namespace A295313

/-- `A353643(n+1)/A295315(n+1)*A353646(n+1)` -/
def P432381490925727400.Spec : Prop :=
  ∀ n, P432381490925727400.a n = (A295313 (n + 1) : ℚ)

end A295313

/-! ## A295313.P10288693068157449070

`gcd(A001065(n+1)+n+1, A000010(A001065(n+1)+n+1))`
-/

namespace A295313.P10288693068157449070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (n + 1) + (n + 1 : ℤ)) (A000010 (A001065 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A295313.P10288693068157449070

namespace A295313

/-- `gcd(A001065(n+1)+n+1, A000010(A001065(n+1)+n+1))` -/
def P10288693068157449070.Spec : Prop :=
  ∀ n, (P10288693068157449070.a n : ℤ) = A295313 (n + 1)

theorem P10288693068157449070.correct : P10288693068157449070.Spec := by
  intro n
  simp only [A295313, Nat.add_sub_cancel, A295313.P10288693068157449070.a, A295313.P9853845397252640583.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295313

/-! ## A295313.P18255085571251228138

`gcd(A155085(n+1)-(n+1), A000010(A155085(n+1)-(n+1)))`
-/

namespace A295313.P18255085571251228138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155085 (n + 1) - (n + 1 : ℤ)) (A000010 (A155085 (n + 1) - (n + 1 : ℤ)).toNat)

end

end A295313.P18255085571251228138

namespace A295313

/-- `gcd(A155085(n+1)-(n+1), A000010(A155085(n+1)-(n+1)))` -/
def P18255085571251228138.Spec : Prop :=
  ∀ n, (P18255085571251228138.a n : ℤ) = A295313 (n + 1)

theorem P18255085571251228138.correct : P18255085571251228138.Spec := by
  intro n
  simp only [A295313, Nat.add_sub_cancel, A295313.P18255085571251228138.a, A295313.P9853845397252640583.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295313

/-! ## A295313.P12932727213040147004

`∑{d}[n+1, #]/A109395(∑{d}[n+1, #])`
-/

namespace A295313.P12932727213040147004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A109395 (∑ d ∈ Nat.divisors (f2 n), d) : ℚ)

end

end A295313.P12932727213040147004

namespace A295313

/-- `∑{d}[n+1, #]/A109395(∑{d}[n+1, #])` -/
def P12932727213040147004.Spec : Prop :=
  ∀ n, P12932727213040147004.a n = (A295313 (n + 1) : ℚ)

end A295313

/-! ## A295313.P9136688184797612105

`A009195(∑{d}[n+1, #])`
-/

namespace A295313.P9136688184797612105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A295313.P9136688184797612105

namespace A295313

/-- `A009195(∑{d}[n+1, #])` -/
def P9136688184797612105.Spec : Prop :=
  ∀ n, P9136688184797612105.a n = A295313 (n + 1)

end A295313

/-! ## A295313.P17613497239197429800

`A009195(A039653(n+1)+1)`
-/

namespace A295313.P17613497239197429800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A039653 (n + 1) + 1).toNat

end

end A295313.P17613497239197429800

namespace A295313

/-- `A009195(A039653(n+1)+1)` -/
def P17613497239197429800.Spec : Prop :=
  ∀ n, P17613497239197429800.a n = A295313 (n + 1)

end A295313

/-! ## A295313.P2645958321002636225

`A009195(A001065(n+1)+1+n)`
-/

namespace A295313.P2645958321002636225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A295313.P2645958321002636225

namespace A295313

/-- `A009195(A001065(n+1)+1+n)` -/
def P2645958321002636225.Spec : Prop :=
  ∀ n, P2645958321002636225.a n = A295313 (n + 1)

end A295313

/-! ## A295313.P13374204754259650759

`A009195(2*(n+1)-A033879(n+1))`
-/

namespace A295313.P13374204754259650759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A295313.P13374204754259650759

namespace A295313

/-- `A009195(2*(n+1)-A033879(n+1))` -/
def P13374204754259650759.Spec : Prop :=
  ∀ n, P13374204754259650759.a n = A295313 (n + 1)

end A295313

/-! ## A295313.P7989256953393624108

`A009195(A000217(n+1)-A024816(n+1))`
-/

namespace A295313.P7989256953393624108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A000217 (n + 1) - A024816 (n + 1)).toNat

end

end A295313.P7989256953393624108

namespace A295313

/-- `A009195(A000217(n+1)-A024816(n+1))` -/
def P7989256953393624108.Spec : Prop :=
  ∀ n, P7989256953393624108.a n = A295313 (n + 1)

end A295313

/-! ## A295313.P15036677517246286691

`A009195(A000027(n+1)+A000027(n+1)-A033879(n+1))`
-/

namespace A295313.P15036677517246286691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A000027 (n + 1) + (A000027 (n + 1) - A033879 (n + 1))).toNat

end

end A295313.P15036677517246286691

namespace A295313

/-- `A009195(A000027(n+1)+A000027(n+1)-A033879(n+1))` -/
def P15036677517246286691.Spec : Prop :=
  ∀ n, P15036677517246286691.a n = A295313 (n + 1)

end A295313

/-!
# A295314: a(n) = sigma(n) / gcd(sigma(n), phi(sigma(n))).

The programs for A295314, the canonical program `A295314.P2490447409591246023` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295314 has offset 1).

The definition of A295314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295314.P2490447409591246023

`A000203(n+1)/A295313(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295314

/-- `A000203(n+1)/A295313(n+1)` -/
def P2490447409591246023.Spec : Prop :=
  ∀ n, P2490447409591246023.a n = (A295314 (n + 1) : ℚ)

end A295314

/-! ## A295314.P8060805995021609225

`A000203(n+1)/gcd(A000203(n+1), A000010(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295314.P8060805995021609225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A000010 (A000203 (n + 1)).toNat) : ℚ)

end

end A295314.P8060805995021609225

namespace A295314

/-- `A000203(n+1)/gcd(A000203(n+1), A000010(A000203(n+1)))` -/
def P8060805995021609225.Spec : Prop :=
  ∀ n, P8060805995021609225.a n = (A295314 (n + 1) : ℚ)

end A295314

/-! ## A295314.P8690027910071435185

`A109395(A000203(n+1))`
-/

namespace A295314.P8690027910071435185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A000203 (n + 1)).toNat

end

end A295314.P8690027910071435185

namespace A295314

/-- `A109395(A000203(n+1))` -/
def P8690027910071435185.Spec : Prop :=
  ∀ n, P8690027910071435185.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P15878496286887328268

`A000203(n+1)/A062401(n+1)*A295315(n+1)`
-/

namespace A295314.P15878496286887328268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A062401 (n + 1) : ℚ) * (A295315 (n + 1) : ℚ)

end

end A295314.P15878496286887328268

namespace A295314

/-- `A000203(n+1)/A062401(n+1)*A295315(n+1)` -/
def P15878496286887328268.Spec : Prop :=
  ∀ n, P15878496286887328268.a n = (A295314 (n + 1) : ℚ)

end A295314

/-! ## A295314.P5255910822819585097

`A109395(A057020(n+1))`
-/

namespace A295314.P5255910822819585097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A057020 (n + 1)).toNat

end

end A295314.P5255910822819585097

namespace A295314

/-- `A109395(A057020(n+1))` -/
def P5255910822819585097.Spec : Prop :=
  ∀ n, P5255910822819585097.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P7190996549434892906

`A109395(A080398(n+1))`
-/

namespace A295314.P7190996549434892906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A080398 (n + 1)).toNat

end

end A295314.P7190996549434892906

namespace A295314

/-- `A109395(A080398(n+1))` -/
def P7190996549434892906.Spec : Prop :=
  ∀ n, P7190996549434892906.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P16201567915351394938

`A109395(A353783(n+1))`
-/

namespace A295314.P16201567915351394938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A353783 (n + 1)).toNat

end

end A295314.P16201567915351394938

namespace A295314

/-- `A109395(A353783(n+1))` -/
def P16201567915351394938.Spec : Prop :=
  ∀ n, P16201567915351394938.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P9822728460930423272

`A109395(∑{d}[n+1, #])`
-/

namespace A295314.P9822728460930423272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A295314.P9822728460930423272

namespace A295314

/-- `A109395(∑{d}[n+1, #])` -/
def P9822728460930423272.Spec : Prop :=
  ∀ n, P9822728460930423272.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P1717082926450631607

`A109395(A175433(n+1))`
-/

namespace A295314.P1717082926450631607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A175433 (n + 1)).toNat

end

end A295314.P1717082926450631607

namespace A295314

/-- `A109395(A175433(n+1))` -/
def P1717082926450631607.Spec : Prop :=
  ∀ n, P1717082926450631607.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P3979030577400754232

`A109395(sqrt(A072861(n+1)))`
-/

namespace A295314.P3979030577400754232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A295314.P3979030577400754232

namespace A295314

/-- `A109395(sqrt(A072861(n+1)))` -/
def P3979030577400754232.Spec : Prop :=
  ∀ n, P3979030577400754232.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P11706155708215753498

`A109395(A001065(n+1)+1+n)`
-/

namespace A295314.P11706155708215753498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A295314.P11706155708215753498

namespace A295314

/-- `A109395(A001065(n+1)+1+n)` -/
def P11706155708215753498.Spec : Prop :=
  ∀ n, P11706155708215753498.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P8862930853069025240

`A109395(A009242(n+1)/A017666(n+1))`
-/

namespace A295314.P8862930853069025240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (SequenceMachineLib.roundAway ((A009242 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ))).toNat

end

end A295314.P8862930853069025240

namespace A295314

/-- `A109395(A009242(n+1)/A017666(n+1))` -/
def P8862930853069025240.Spec : Prop :=
  ∀ n, P8862930853069025240.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P14298206120699491153

`A295126(∏{p}[∑{d}[n+1, #], #])`
-/

namespace A295314.P14298206120699491153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A295314.P14298206120699491153

namespace A295314

/-- `A295126(∏{p}[∑{d}[n+1, #], #])` -/
def P14298206120699491153.Spec : Prop :=
  ∀ n, P14298206120699491153.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P16081033750508522054

`A109395(A394790(n+1))`
-/

namespace A295314.P16081033750508522054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A394790 (n + 1)).toNat

end

end A295314.P16081033750508522054

namespace A295314

/-- `A109395(A394790(n+1))` -/
def P16081033750508522054.Spec : Prop :=
  ∀ n, P16081033750508522054.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P9141898055225981112

`A109395(A309153(n+1))`
-/

namespace A295314.P9141898055225981112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A309153 (n + 1)).toNat

end

end A295314.P9141898055225981112

namespace A295314

/-- `A109395(A309153(n+1))` -/
def P9141898055225981112.Spec : Prop :=
  ∀ n, P9141898055225981112.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P11126919218674533772

`A109395(A009278(n+1))`
-/

namespace A295314.P11126919218674533772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A009278 (n + 1)).toNat

end

end A295314.P11126919218674533772

namespace A295314

/-- `A109395(A009278(n+1))` -/
def P11126919218674533772.Spec : Prop :=
  ∀ n, P11126919218674533772.a n = A295314 (n + 1)

end A295314

/-! ## A295314.P585933779726124287

`A109395(A064840(n+1))`
-/

namespace A295314.P585933779726124287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A064840 (n + 1)).toNat

end

end A295314.P585933779726124287

namespace A295314

/-- `A109395(A064840(n+1))` -/
def P585933779726124287.Spec : Prop :=
  ∀ n, P585933779726124287.a n = A295314 (n + 1)

end A295314

/-!
# A295315: a(n) = phi(sigma(n)) / gcd(sigma(n), phi(sigma(n))).

The programs for A295315, the canonical program `A295315.P724021200967414565` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295315 has offset 1).

The definition of A295315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295315.P724021200967414565

`A062401(n+1)/A295313(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295315

/-- `A062401(n+1)/A295313(n+1)` -/
def P724021200967414565.Spec : Prop :=
  ∀ n, P724021200967414565.a n = (A295315 (n + 1) : ℚ)

end A295315

/-! ## A295315.P9045511058865467440

`A000010(A000203(n+1))/gcd(A000203(n+1), A000010(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295315.P9045511058865467440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (Int.gcd (A000203 (n + 1)) (A000010 (A000203 (n + 1)).toNat) : ℚ)

end

end A295315.P9045511058865467440

namespace A295315

/-- `A000010(A000203(n+1))/gcd(A000203(n+1), A000010(A000203(n+1)))` -/
def P9045511058865467440.Spec : Prop :=
  ∀ n, P9045511058865467440.a n = (A295315 (n + 1) : ℚ)

end A295315

/-! ## A295315.P3129295462482934298

`A076512(A000203(n+1))`
-/

namespace A295315.P3129295462482934298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A000203 (n + 1)).toNat

end

end A295315.P3129295462482934298

namespace A295315

/-- `A076512(A000203(n+1))` -/
def P3129295462482934298.Spec : Prop :=
  ∀ n, P3129295462482934298.a n = A295315 (n + 1)

end A295315

/-! ## A295315.P1238383103036659456

`A062401(n+1)/A009195(A000203(n+1))`
-/

namespace A295315.P1238383103036659456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A009195 (A000203 (n + 1)).toNat : ℚ)

end

end A295315.P1238383103036659456

namespace A295315

/-- `A062401(n+1)/A009195(A000203(n+1))` -/
def P1238383103036659456.Spec : Prop :=
  ∀ n, P1238383103036659456.a n = (A295315 (n + 1) : ℚ)

end A295315

/-! ## A295315.P12385756001267491987

`A000010(A000203(n+1))/A295313(n+1)`
-/

namespace A295315.P12385756001267491987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A295313 (n + 1) : ℚ)

end

end A295315.P12385756001267491987

namespace A295315

/-- `A000010(A000203(n+1))/A295313(n+1)` -/
def P12385756001267491987.Spec : Prop :=
  ∀ n, P12385756001267491987.a n = (A295315 (n + 1) : ℚ)

end A295315

/-! ## A295315.P361155554557899513

`A295310(n+1)*A295312(n+1)/A295313(n+1)`
-/

namespace A295315.P361155554557899513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295310 (n + 1) * A295312 (n + 1) : ℚ) / (A295313 (n + 1) : ℚ)

end

end A295315.P361155554557899513

namespace A295315

/-- `A295310(n+1)*A295312(n+1)/A295313(n+1)` -/
def P361155554557899513.Spec : Prop :=
  ∀ n, P361155554557899513.a n = (A295315 (n + 1) : ℚ)

end A295315

/-! ## A295315.P17304374060582293024

`A076512(A080398(n+1))`
-/

namespace A295315.P17304374060582293024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A080398 (n + 1)).toNat

end

end A295315.P17304374060582293024

namespace A295315

/-- `A076512(A080398(n+1))` -/
def P17304374060582293024.Spec : Prop :=
  ∀ n, P17304374060582293024.a n = A295315 (n + 1)

end A295315

/-! ## A295315.P4732483395970068149

`A076512(A353783(n+1))`
-/

namespace A295315.P4732483395970068149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A353783 (n + 1)).toNat

end

end A295315.P4732483395970068149

namespace A295315

/-- `A076512(A353783(n+1))` -/
def P4732483395970068149.Spec : Prop :=
  ∀ n, P4732483395970068149.a n = A295315 (n + 1)

end A295315

/-! ## A295315.P8141769361071360299

`A076512(∑{d}[n+1, #])`
-/

namespace A295315.P8141769361071360299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A295315.P8141769361071360299

namespace A295315

/-- `A076512(∑{d}[n+1, #])` -/
def P8141769361071360299.Spec : Prop :=
  ∀ n, P8141769361071360299.a n = A295315 (n + 1)

end A295315

/-! ## A295315.P6322090843911774274

`A076512(A175433(n+1))`
-/

namespace A295315.P6322090843911774274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A175433 (n + 1)).toNat

end

end A295315.P6322090843911774274

namespace A295315

/-- `A076512(A175433(n+1))` -/
def P6322090843911774274.Spec : Prop :=
  ∀ n, P6322090843911774274.a n = A295315 (n + 1)

end A295315

/-! ## A295315.P17749012198167312729

`A076512(sqrt(A072861(n+1)))`
-/

namespace A295315.P17749012198167312729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A295315.P17749012198167312729

namespace A295315

/-- `A076512(sqrt(A072861(n+1)))` -/
def P17749012198167312729.Spec : Prop :=
  ∀ n, P17749012198167312729.a n = A295315 (n + 1)

end A295315

/-! ## A295315.P10552213839441827657

`A076512(A001065(n+1)+1+n)`
-/

namespace A295315.P10552213839441827657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A295315.P10552213839441827657

namespace A295315

/-- `A076512(A001065(n+1)+1+n)` -/
def P10552213839441827657.Spec : Prop :=
  ∀ n, P10552213839441827657.a n = A295315 (n + 1)

end A295315

/-! ## A295315.P9321005089479747759

`A076512(A295313(n+1)*A295314(n+1))`
-/

namespace A295315.P9321005089479747759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (A295313 (n + 1) * A295314 (n + 1)).toNat

end

end A295315.P9321005089479747759

namespace A295315

/-- `A076512(A295313(n+1)*A295314(n+1))` -/
def P9321005089479747759.Spec : Prop :=
  ∀ n, P9321005089479747759.a n = A295315 (n + 1)

end A295315

/-! ## A295315.P524352711971245894

`A076512(A009242(n+1)/A017666(n+1))`
-/

namespace A295315.P524352711971245894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076512 (SequenceMachineLib.roundAway ((A009242 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ))).toNat

end

end A295315.P524352711971245894

namespace A295315

/-- `A076512(A009242(n+1)/A017666(n+1))` -/
def P524352711971245894.Spec : Prop :=
  ∀ n, P524352711971245894.a n = A295315 (n + 1)

end A295315

/-!
# A295316: a(n) = 1 if there are no even exponents in the prime factorization of n, 0 otherwise.

The programs for A295316, the canonical program `A295316.P1217032388411146580` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295316 has offset 1).

The definition of A295316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295316.P1217032388411146580

`A005361(n+1)%2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295316

/-- `A005361(n+1)%2` -/
def P1217032388411146580.Spec : Prop :=
  ∀ n, P1217032388411146580.a n = A295316 (n + 1)

theorem P1217032388411146580.correct : P1217032388411146580.Spec := by
  intro n
  simp only [A295316, Nat.add_sub_cancel]

end A295316

/-! ## A295316.P9191085273587628678

`A000035(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A295316.P9191085273587628678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000035 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A295316.P9191085273587628678

namespace A295316

/-- `A000035(A067029(n+1))*a(A028234(n+1)-1)` -/
def P9191085273587628678.Spec : Prop :=
  ∀ n, P9191085273587628678.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P7290909989399451262

`A355825(A268385(n+1))`
-/

namespace A295316.P7290909989399451262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (A268385 (n + 1)).toNat

end

end A295316.P7290909989399451262

namespace A295316

/-- `A355825(A268385(n+1))` -/
def P7290909989399451262.Spec : Prop :=
  ∀ n, P7290909989399451262.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P11042602238284567284

`∏{e}[1+n, #]%2`
-/

namespace A295316.P11042602238284567284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2

end

end A295316.P11042602238284567284

namespace A295316

/-- `∏{e}[1+n, #]%2` -/
def P11042602238284567284.Spec : Prop :=
  ∀ n, (P11042602238284567284.a n : ℤ) = A295316 (n + 1)

end A295316

/-! ## A295316.P16135224250604609447

`and(1, ∏{e}[1+n, #])`
-/

namespace A295316.P16135224250604609447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A295316.P16135224250604609447

namespace A295316

/-- `and(1, ∏{e}[1+n, #])` -/
def P16135224250604609447.Spec : Prop :=
  ∀ n, (P16135224250604609447.a n : ℤ) = A295316 (n + 1)

end A295316

/-! ## A295316.P1916261756108990689

`2-gcd(2, ∏{e}[n+1, #])`
-/

namespace A295316.P1916261756108990689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)

end

end A295316.P1916261756108990689

namespace A295316

/-- `2-gcd(2, ∏{e}[n+1, #])` -/
def P1916261756108990689.Spec : Prop :=
  ∀ n, P1916261756108990689.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P17354742407357760721

`∏{e}[n+1, val(#²+1, 2)]`
-/

namespace A295316.P17354742407357760721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p ^ 2 + 1) 2

end

end A295316.P17354742407357760721

namespace A295316

/-- `∏{e}[n+1, val(#²+1, 2)]` -/
def P17354742407357760721.Spec : Prop :=
  ∀ n, (P17354742407357760721.a n : ℤ) = A295316 (n + 1)

end A295316

/-! ## A295316.P2313875584334611231

`or(-2, ∏{e}[n+1, #])+2`
-/

namespace A295316.P2313875584334611231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-2) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + 2

end

end A295316.P2313875584334611231

namespace A295316

/-- `or(-2, ∏{e}[n+1, #])+2` -/
def P2313875584334611231.Spec : Prop :=
  ∀ n, P2313875584334611231.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P16859706692791209630

`∏{e}[2*n-(n-1), and(1, #)]`
-/

namespace A295316.P16859706692791209630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.land 1 (Nat.factorization (f1 n).natAbs p)

end

end A295316.P16859706692791209630

namespace A295316

/-- `∏{e}[2*n-(n-1), and(1, #)]` -/
def P16859706692791209630.Spec : Prop :=
  ∀ n, (P16859706692791209630.a n : ℤ) = A295316 (n + 1)

end A295316

/-! ## A295316.P12780950768643042940

`∏{p}[n+1, val(n+1, #)%2]`
-/

namespace A295316.P12780950768643042940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p % 2

end

end A295316.P12780950768643042940

namespace A295316

/-- `∏{p}[n+1, val(n+1, #)%2]` -/
def P12780950768643042940.Spec : Prop :=
  ∀ n, (P12780950768643042940.a n : ℤ) = A295316 (n + 1)

end A295316

/-! ## A295316.P1365317484967329045

`and(1, ∏{p}[n+1, val(n+1, #)^#])`
-/

namespace A295316.P1365317484967329045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p ^ p)

end

end A295316.P1365317484967329045

namespace A295316

/-- `and(1, ∏{p}[n+1, val(n+1, #)^#])` -/
def P1365317484967329045.Spec : Prop :=
  ∀ n, (P1365317484967329045.a n : ℤ) = A295316 (n + 1)

end A295316

/-! ## A295316.P17594035801988168767

`A008477(n+1)%2`
-/

namespace A295316.P17594035801988168767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008477 (n + 1)) 2

end

end A295316.P17594035801988168767

namespace A295316

/-- `A008477(n+1)%2` -/
def P17594035801988168767.Spec : Prop :=
  ∀ n, P17594035801988168767.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P17354965836413476316

`A056624(n+1)%2`
-/

namespace A295316.P17354965836413476316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056624 (n + 1)) 2

end

end A295316.P17354965836413476316

namespace A295316

/-- `A056624(n+1)%2` -/
def P17354965836413476316.Spec : Prop :=
  ∀ n, P17354965836413476316.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P8847226134182660785

`A072411(n+1)%2`
-/

namespace A295316.P8847226134182660785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072411 (n + 1)) 2

end

end A295316.P8847226134182660785

namespace A295316

/-- `A072411(n+1)%2` -/
def P8847226134182660785.Spec : Prop :=
  ∀ n, P8847226134182660785.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P3938934388140569083

`A112622(n+1)%2`
-/

namespace A295316.P3938934388140569083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112622 (n + 1)) 2

end

end A295316.P3938934388140569083

namespace A295316

/-- `A112622(n+1)%2` -/
def P3938934388140569083.Spec : Prop :=
  ∀ n, P3938934388140569083.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P13692100869542368316

`A226602(n+1)%2`
-/

namespace A295316.P13692100869542368316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226602 (n + 1)) 2

end

end A295316.P13692100869542368316

namespace A295316

/-- `A226602(n+1)%2` -/
def P13692100869542368316.Spec : Prop :=
  ∀ n, P13692100869542368316.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P9670818309521554080

`A290107(n+1)%2`
-/

namespace A295316.P9670818309521554080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290107 (n + 1)) 2

end

end A295316.P9670818309521554080

namespace A295316

/-- `A290107(n+1)%2` -/
def P9670818309521554080.Spec : Prop :=
  ∀ n, P9670818309521554080.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P16430996861193640958

`A343443(n+1)%2`
-/

namespace A295316.P16430996861193640958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343443 (n + 1)) 2

end

end A295316.P16430996861193640958

namespace A295316

/-- `A343443(n+1)%2` -/
def P16430996861193640958.Spec : Prop :=
  ∀ n, P16430996861193640958.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P6844434166989015194

`A358223(n+1)%2`
-/

namespace A295316.P6844434166989015194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358223 (n + 1)) 2

end

end A295316.P6844434166989015194

namespace A295316

/-- `A358223(n+1)%2` -/
def P6844434166989015194.Spec : Prop :=
  ∀ n, P6844434166989015194.a n = A295316 (n + 1)

end A295316

/-! ## A295316.P16557153091484222518

`A360158(n+1)%2`
-/

namespace A295316.P16557153091484222518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360158 (n + 1)) 2

end

end A295316.P16557153091484222518

namespace A295316

/-- `A360158(n+1)%2` -/
def P16557153091484222518.Spec : Prop :=
  ∀ n, P16557153091484222518.a n = A295316 (n + 1)

end A295316

/-!
# A295317: Sum of the products of the smaller and larger parts of the partitions of n into two distinct parts with the smaller part odd.

The programs for A295317, the canonical program `A295317.P9569981381580071021` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295317 has offset 1).

The definition of A295317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295317.P6325219227481621024

`ogf((2x^2+x^3+x^4+x^5+7x^6+x^7+x^8+x^9+x^10)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))`
-/

namespace A295317.P6325219227481621024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 1, 1, 1, 7, 1, 1, 1, 1] [1, -1, 0, 0, -3, 3, 0, 0, 3, -3, 0, 0, -1, 1] n

end

end A295317.P6325219227481621024

namespace A295317

/-- `ogf((2x^2+x^3+x^4+x^5+7x^6+x^7+x^8+x^9+x^10)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))` -/
def P6325219227481621024.Spec : Prop :=
  ∀ n, P6325219227481621024.a n = A295317 (n + 1)

end A295317

/-! ## A295317.P1236734453388828821

`∑[A001057(n)²]-A295292(n+1)`
-/

namespace A295317.P1236734453388828821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295292 (n + 1)

end

end A295317.P1236734453388828821

namespace A295317

/-- `∑[A001057(n)²]-A295292(n+1)` -/
def P1236734453388828821.Spec : Prop :=
  ∀ n, P1236734453388828821.a n = A295317 (n + 1)

end A295317

/-! ## A295317.P18289851050984179625

`A295286(n+1)-A195938(n+1)²`
-/

namespace A295317.P18289851050984179625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 1) - A195938 (n + 1) ^ 2

end

end A295317.P18289851050984179625

namespace A295317

/-- `A295286(n+1)-A195938(n+1)²` -/
def P18289851050984179625.Spec : Prop :=
  ∀ n, P18289851050984179625.a n = A295317 (n + 1)

end A295317

/-! ## A295317.P3906429474246190113

`A295293(n+1)+A123596(n)-A002620(n)`
-/

namespace A295317.P3906429474246190113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1) + (A123596 n - A002620 n)

end

end A295317.P3906429474246190113

namespace A295317

/-- `A295293(n+1)+A123596(n)-A002620(n)` -/
def P3906429474246190113.Spec : Prop :=
  ∀ n, P3906429474246190113.a n = A295317 (n + 1)

end A295317

/-! ## A295317.P10705570526839359710

`A295293(n+1)+A295320(n+1)-A295287(n+1)`
-/

namespace A295317.P10705570526839359710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1) + (A295320 (n + 1) - A295287 (n + 1))

end

end A295317.P10705570526839359710

namespace A295317

/-- `A295293(n+1)+A295320(n+1)-A295287(n+1)` -/
def P10705570526839359710.Spec : Prop :=
  ∀ n, P10705570526839359710.a n = A295317 (n + 1)

end A295317

/-! ## A295317.P9569981381580071021

`A295287(n+2)-A296160(n+2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A295317

/-- `A295287(n+2)-A296160(n+2)` -/
def P9569981381580071021.Spec : Prop :=
  ∀ n, P9569981381580071021.a n = A295317 (n + 1)

theorem P9569981381580071021.correct : P9569981381580071021.Spec := by
  intro n
  simp only [A295317, Nat.add_sub_cancel]

end A295317

/-! ## A295317.P4652733137817831839

`A295293(n+1)-A130519(Δ[A110660(n)])`
-/

namespace A295317.P4652733137817831839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1) - A130519 (f1 (n + 1) - f1 n).toNat

end

end A295317.P4652733137817831839

namespace A295317

/-- `A295293(n+1)-A130519(Δ[A110660(n)])` -/
def P4652733137817831839.Spec : Prop :=
  ∀ n, P4652733137817831839.a n = A295317 (n + 1)

end A295317

/-! ## A295317.P14042951984326899681

`Δ[(n+1)/2*∑[A295643(n+1)]]`
-/

namespace A295317.P14042951984326899681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295643 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295317.P14042951984326899681

namespace A295317

/-- `Δ[(n+1)/2*∑[A295643(n+1)]]` -/
def P14042951984326899681.Spec : Prop :=
  ∀ n, P14042951984326899681.a n = (A295317 (n + 1) : ℚ)

end A295317

/-! ## A295317.P10932912375587326720

`∑[A295643(2*(n+1))]-A295292(n+1)`
-/

namespace A295317.P10932912375587326720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295643 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295292 (n + 1)

end

end A295317.P10932912375587326720

namespace A295317

/-- `∑[A295643(2*(n+1))]-A295292(n+1)` -/
def P10932912375587326720.Spec : Prop :=
  ∀ n, P10932912375587326720.a n = A295317 (n + 1)

end A295317

/-!
# A295318: Sum of the products of the smaller and larger parts of the partitions of n into two distinct parts with the smaller part even.

The programs for A295318, the canonical program `A295318.P11884600890367549118` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295318 has offset 1).

The definition of A295318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295318.P18314775254589596986

`ogf((6x^4+2x^5+2x^6+2x^7+4x^8)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))`
-/

namespace A295318.P18314775254589596986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 6, 2, 2, 2, 4] [1, -1, 0, 0, -3, 3, 0, 0, 3, -3, 0, 0, -1, 1] n

end

end A295318.P18314775254589596986

namespace A295318

/-- `ogf((6x^4+2x^5+2x^6+2x^7+4x^8)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))` -/
def P18314775254589596986.Spec : Prop :=
  ∀ n, P18314775254589596986.a n = A295318 (n + 1)

end A295318

/-! ## A295318.P1086166272757528174

`∑[A110660(n)]-A295293(n+1)`
-/

namespace A295318.P1086166272757528174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295293 (n + 1)

end

end A295318.P1086166272757528174

namespace A295318

/-- `∑[A110660(n)]-A295293(n+1)` -/
def P1086166272757528174.Spec : Prop :=
  ∀ n, P1086166272757528174.a n = A295318 (n + 1)

theorem P1086166272757528174.correct : P1086166272757528174.Spec := by
  intro n
  simp only [A295318, Nat.add_sub_cancel, A295318.P1086166272757528174.f1, A295318.P1086166272757528174.a, A295318.P11884600890367549118.f1, A295318.P11884600890367549118.a, A038714, A038714.P12896136081027992850.a, A110660, A110660.P9226895399142348914.a, A295287, A295287.P15776343000814745150.f2, A295287.P15776343000814745150.f1, A295287.P15776343000814745150.a, A295293, A295293.P9244574736305665220.f1, A295293.P9244574736305665220.a, A008621, A008621.P16254263843810723736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295318

/-! ## A295318.P17520711726064579288

`A295292(n+1)-A000217(∑[A001057(n)])`
-/

namespace A295318.P17520711726064579288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (n + 1) - A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295318.P17520711726064579288

namespace A295318

/-- `A295292(n+1)-A000217(∑[A001057(n)])` -/
def P17520711726064579288.Spec : Prop :=
  ∀ n, P17520711726064579288.a n = A295318 (n + 1)

end A295318

/-! ## A295318.P9321028990989356579

`∑[A002620(A109613(n))]-A295293(n+1)`
-/

namespace A295318.P9321028990989356579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295293 (n + 1)

end

end A295318.P9321028990989356579

namespace A295318

/-- `∑[A002620(A109613(n))]-A295293(n+1)` -/
def P9321028990989356579.Spec : Prop :=
  ∀ n, P9321028990989356579.a n = A295318 (n + 1)

end A295318

/-! ## A295318.P15787733420781649015

`A295292(n+1)+A295321(n+1)-A295286(n+1)`
-/

namespace A295318.P15787733420781649015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (n + 1) + (A295321 (n + 1) - A295286 (n + 1))

end

end A295318.P15787733420781649015

namespace A295318

/-- `A295292(n+1)+A295321(n+1)-A295286(n+1)` -/
def P15787733420781649015.Spec : Prop :=
  ∀ n, P15787733420781649015.a n = A295318 (n + 1)

end A295318

/-! ## A295318.P3660330353827086882

`A295287(n+1)+A295321(n+1)-A295293(n+1)`
-/

namespace A295318.P3660330353827086882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (n + 1) + (A295321 (n + 1) - A295293 (n + 1))

end

end A295318.P3660330353827086882

namespace A295318

/-- `A295287(n+1)+A295321(n+1)-A295293(n+1)` -/
def P3660330353827086882.Spec : Prop :=
  ∀ n, P3660330353827086882.a n = A295318 (n + 1)

theorem P3660330353827086882.correct : P3660330353827086882.Spec := by
  intro n
  simp only [A295318, Nat.add_sub_cancel, A295318.P3660330353827086882.a, A295318.P11884600890367549118.f1, A295318.P11884600890367549118.a, A038714, A038714.P12896136081027992850.a, A295287, A295287.P15776343000814745150.f2, A295287.P15776343000814745150.f1, A295287.P15776343000814745150.a, A295293, A295293.P9244574736305665220.f1, A295293.P9244574736305665220.a, A295321, A295321.P1307019648991377142.f1, A295321.P1307019648991377142.a, A008621, A008621.P16254263843810723736.a, A110660, A110660.P9226895399142348914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295318

/-! ## A295318.P4154554403518808909

`A295320(n+1)+A295321(n+1)-A295317(n+1)`
-/

namespace A295318.P4154554403518808909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (n + 1) + (A295321 (n + 1) - A295317 (n + 1))

end

end A295318.P4154554403518808909

namespace A295318

/-- `A295320(n+1)+A295321(n+1)-A295317(n+1)` -/
def P4154554403518808909.Spec : Prop :=
  ∀ n, P4154554403518808909.a n = A295318 (n + 1)

end A295318

/-! ## A295318.P18109415041193041497

`A295286(n+2)-A296161(n+2)`
-/

namespace A295318.P18109415041193041497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 2) - A296161 (n + 2)

end

end A295318.P18109415041193041497

namespace A295318

/-- `A295286(n+2)-A296161(n+2)` -/
def P18109415041193041497.Spec : Prop :=
  ∀ n, P18109415041193041497.a n = A295318 (n + 1)

end A295318

/-! ## A295318.P11884600890367549118

`A295287(n+1)-Δ[A038714(n)]²`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A295318

/-- `A295287(n+1)-Δ[A038714(n)]²` -/
def P11884600890367549118.Spec : Prop :=
  ∀ n, P11884600890367549118.a n = A295318 (n + 1)

theorem P11884600890367549118.correct : P11884600890367549118.Spec := by
  intro n
  simp only [A295318, Nat.add_sub_cancel]

end A295318

/-!
# A295319: a(n) is the sum of all n-digit palindromes.

The programs for A295319, there is no canonical definition to state claims against.
-/

/-! ## A295319.P7193390092714984605

`45*A003953(A032766(n))`
-/

namespace A295319.P7193390092714984605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A003953 (A032766 n).toNat

end

end A295319.P7193390092714984605

/-!
# A295320: Sum of the products of the smaller and larger parts of the partitions of n into two distinct parts with the larger part odd.

The programs for A295320, the canonical program `A295320.P11428348463924246204` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295320 has offset 1).

The definition of A295320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295320.P11428348463924246204

`∑{#}[floor(n/2)-1, (#+1)*(n+1-(#+1))*(n+1-(#+1))%2]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295320

/-- `∑{#}[floor(n/2)-1, (#+1)*(n+1-(#+1))*(n+1-(#+1))%2]` -/
def P11428348463924246204.Spec : Prop :=
  ∀ n, P11428348463924246204.a n = A295320 (n + 1)

theorem P11428348463924246204.correct : P11428348463924246204.Spec := by
  intro n
  simp only [A295320, Nat.add_sub_cancel]

end A295320

/-! ## A295320.P13934215687088395036

`ogf((3x^3+3x^4-x^5+5x^6+3x^7+3x^8-x^9+x^10)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))`
-/

namespace A295320.P13934215687088395036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 3, 3, -1, 5, 3, 3, -1, 1] [1, -1, 0, 0, -3, 3, 0, 0, 3, -3, 0, 0, -1, 1] n

end

end A295320.P13934215687088395036

namespace A295320

/-- `ogf((3x^3+3x^4-x^5+5x^6+3x^7+3x^8-x^9+x^10)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))` -/
def P13934215687088395036.Spec : Prop :=
  ∀ n, P13934215687088395036.a n = A295320 (n + 1)

end A295320

/-! ## A295320.P11198501020171467629

`∑[A001057(n)²]-A295286(n+1)`
-/

namespace A295320.P11198501020171467629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295286 (n + 1)

end

end A295320.P11198501020171467629

namespace A295320

/-- `∑[A001057(n)²]-A295286(n+1)` -/
def P11198501020171467629.Spec : Prop :=
  ∀ n, P11198501020171467629.a n = A295320 (n + 1)

theorem P11198501020171467629.correct : P11198501020171467629.Spec := by
  intro n
  simp only [A295320, Nat.add_sub_cancel, A295320.P11198501020171467629.f1, A295320.P11198501020171467629.a, A295320.P11428348463924246204.f1, A295320.P11428348463924246204.a, A001057, A001057.P5698194758103254717.a, A295286, A295286.P12563632415591055737.f1, A295286.P12563632415591055737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295320

/-! ## A295320.P15018460049265624831

`∑[A110654(n)²]-A295286(n+1)`
-/

namespace A295320.P15018460049265624831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295286 (n + 1)

end

end A295320.P15018460049265624831

namespace A295320

/-- `∑[A110654(n)²]-A295286(n+1)` -/
def P15018460049265624831.Spec : Prop :=
  ∀ n, P15018460049265624831.a n = A295320 (n + 1)

end A295320

/-! ## A295320.P2409977992126180392

`A295287(n+1)+A123596(n)-A002620(n)`
-/

namespace A295320.P2409977992126180392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (n + 1) + (A123596 n - A002620 n)

end

end A295320.P2409977992126180392

namespace A295320

/-- `A295287(n+1)+A123596(n)-A002620(n)` -/
def P2409977992126180392.Spec : Prop :=
  ∀ n, P2409977992126180392.a n = A295320 (n + 1)

end A295320

/-! ## A295320.P3298346535423246152

`A295287(n+1)-A245288(n*A000035(n))`
-/

namespace A295320.P3298346535423246152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (n + 1) - A245288 ((n : ℤ) * A000035 n).toNat

end

end A295320.P3298346535423246152

namespace A295320

/-- `A295287(n+1)-A245288(n*A000035(n))` -/
def P3298346535423246152.Spec : Prop :=
  ∀ n, P3298346535423246152.a n = A295320 (n + 1)

end A295320

/-! ## A295320.P3394238265212611654

`A295287(n+1)-A130519(Δ[A110660(n)])`
-/

namespace A295320.P3394238265212611654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (n + 1) - A130519 (f1 (n + 1) - f1 n).toNat

end

end A295320.P3394238265212611654

namespace A295320

/-- `A295287(n+1)-A130519(Δ[A110660(n)])` -/
def P3394238265212611654.Spec : Prop :=
  ∀ n, P3394238265212611654.a n = A295320 (n + 1)

end A295320

/-!
# A295321: Sum of the products of the smaller and larger parts of the partitions of n into two distinct parts with the larger part even.

The programs for A295321, the canonical program `A295321.P1307019648991377142` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295321 has offset 1).

The definition of A295321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295321.P1665674765806587825

`ogf((2x^2-2x^3+4x^4+4x^5+4x^6+2x^8+2x^9)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))`
-/

namespace A295321.P1665674765806587825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -2, 4, 4, 4, 0, 2, 2] [1, -1, 0, 0, -3, 3, 0, 0, 3, -3, 0, 0, -1, 1] n

end

end A295321.P1665674765806587825

namespace A295321

/-- `ogf((2x^2-2x^3+4x^4+4x^5+4x^6+2x^8+2x^9)/(1-x-3x^4+3x^5+3x^8-3x^9-x^12+x^13))` -/
def P1665674765806587825.Spec : Prop :=
  ∀ n, P1665674765806587825.a n = A295321 (n + 1)

end A295321

/-! ## A295321.P1307019648991377142

`∑[A110660(n)]-A295287(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A295321

/-- `∑[A110660(n)]-A295287(n+1)` -/
def P1307019648991377142.Spec : Prop :=
  ∀ n, P1307019648991377142.a n = A295321 (n + 1)

theorem P1307019648991377142.correct : P1307019648991377142.Spec := by
  intro n
  simp only [A295321, Nat.add_sub_cancel]

end A295321

/-! ## A295321.P11106317307585422119

`A295286(n+1)-A000217(∑[A001057(n)])`
-/

namespace A295321.P11106317307585422119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 1) - A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295321.P11106317307585422119

namespace A295321

/-- `A295286(n+1)-A000217(∑[A001057(n)])` -/
def P11106317307585422119.Spec : Prop :=
  ∀ n, P11106317307585422119.a n = A295321 (n + 1)

end A295321

/-! ## A295321.P17508329918795789245

`A295286(n+1)-A000035(n)*A008805(n)`
-/

namespace A295321.P17508329918795789245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 1) - A000035 n * A008805 n

end

end A295321.P17508329918795789245

namespace A295321

/-- `A295286(n+1)-A000035(n)*A008805(n)` -/
def P17508329918795789245.Spec : Prop :=
  ∀ n, P17508329918795789245.a n = A295321 (n + 1)

end A295321

/-! ## A295321.P8937339686457016799

`A023855(n+1)+A295286(n+1)-A002623(n)`
-/

namespace A295321.P8937339686457016799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 1) + (A295286 (n + 1) - A002623 n)

end

end A295321.P8937339686457016799

namespace A295321

/-- `A023855(n+1)+A295286(n+1)-A002623(n)` -/
def P8937339686457016799.Spec : Prop :=
  ∀ n, P8937339686457016799.a n = A295321 (n + 1)

end A295321

/-! ## A295321.P13166239921308086110

`A049778(n+1)-(A295287(n+1)+A002623(n))`
-/

namespace A295321.P13166239921308086110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) - (A295287 (n + 1) + A002623 n)

end

end A295321.P13166239921308086110

namespace A295321

/-- `A049778(n+1)-(A295287(n+1)+A002623(n))` -/
def P13166239921308086110.Spec : Prop :=
  ∀ n, P13166239921308086110.a n = A295321 (n + 1)

end A295321

/-! ## A295321.P3389566810485465318

`A295286(n+1)+A295320(n+3)-A295287(n+3)`
-/

namespace A295321.P3389566810485465318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 1) + (A295320 (n + 3) - A295287 (n + 3))

end

end A295321.P3389566810485465318

namespace A295321

/-- `A295286(n+1)+A295320(n+3)-A295287(n+3)` -/
def P3389566810485465318.Spec : Prop :=
  ∀ n, P3389566810485465318.a n = A295321 (n + 1)

end A295321

/-! ## A295321.P15887151906309852750

`A133610(∑[A063196(n+1)])-A295287(n+1)`
-/

namespace A295321.P15887151906309852750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A295287 (n + 1)

end

end A295321.P15887151906309852750

namespace A295321

/-- `A133610(∑[A063196(n+1)])-A295287(n+1)` -/
def P15887151906309852750.Spec : Prop :=
  ∀ n, P15887151906309852750.a n = A295321 (n + 1)

end A295321

/-!
# A295322: Numbers k such that (17*10^k - 377)/9 is prime.

The programs for A295322, there is no canonical definition to state claims against.
-/

/-! ## A295322.P12031082018419731023

`A352159(n+1)+A108852(A114106(n))`
-/

namespace A295322.P12031082018419731023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352159 (n + 1) + A108852 (A114106 n).toNat

end

end A295322.P12031082018419731023

/-!
# A295323: Numbers k such that 2*10^k - 51 is prime.

The programs for A295323, there is no canonical definition to state claims against.
-/

/-! ## A295323.P9756213813406824850

`A086073(A325255(n+1))+A085256(n+1)`
-/

namespace A295323.P9756213813406824850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086073 (A325255 (n + 1)).toNat + A085256 (n + 1)

end

end A295323.P9756213813406824850

/-!
# A295332: Denominators of the continued fraction convergents to sqrt(13)/2 = A295330.

The programs for A295332, there is no canonical definition to state claims against.
-/

/-! ## A295332.P10349210482659385705

`(5*A041088(n+3))%A041089(n+3)`
-/

namespace A295332.P10349210482659385705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A041088 (n + 3)) (A041089 (n + 3))

end

end A295332.P10349210482659385705

/-!
# A295333: Numerators of continued fraction convergents to sqrt(10)/2 = sqrt(5/2) = A020797 + 1.

The programs for A295333, the canonical program `A295333.P7928447597953373783` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295333 has offset 0).

The definition of A295333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295333.P7928447597953373783

`6*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8, a(4)=11, a(5)=19`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295333

/-- `6*a(n-3)+a(n-6)` -/
def P7928447597953373783.Spec : Prop :=
  ∀ n, (P7928447597953373783.a n : ℤ) = A295333 n

theorem P7928447597953373783.correct : P7928447597953373783.Spec := by
  intro n
  simp only [A295333]

end A295333

/-! ## A295333.P8351754149851804928

`A116559(A047236(n+2))`
-/

namespace A295333.P8351754149851804928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A047236 (n + 2)).toNat

end

end A295333.P8351754149851804928

namespace A295333

/-- `A116559(A047236(n+2))` -/
def P8351754149851804928.Spec : Prop :=
  ∀ n, P8351754149851804928.a n = A295333 n

end A295333

/-! ## A295333.P8722112475099590058

`A116559(A047245(n+2))`
-/

namespace A295333.P8722112475099590058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A047245 (n + 2)).toNat

end

end A295333.P8722112475099590058

namespace A295333

/-- `A116559(A047245(n+2))` -/
def P8722112475099590058.Spec : Prop :=
  ∀ n, P8722112475099590058.a n = A295333 n

end A295333

/-! ## A295333.P4013403358775267944

`A179238(n+2)-A295334(n)`
-/

namespace A295333.P4013403358775267944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179238 (n + 2) - A295334 n

end

end A295333.P4013403358775267944

namespace A295333

/-- `A179238(n+2)-A295334(n)` -/
def P4013403358775267944.Spec : Prop :=
  ∀ n, P4013403358775267944.a n = A295333 n

end A295333

/-! ## A295333.P6569639783714324452

`A116559(A319451(n+1)-A005408(n))`
-/

namespace A295333.P6569639783714324452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A319451 (n + 1) - A005408 n).toNat

end

end A295333.P6569639783714324452

namespace A295333

/-- `A116559(A319451(n+1)-A005408(n))` -/
def P6569639783714324452.Spec : Prop :=
  ∀ n, P6569639783714324452.a n = A295333 n

end A295333

/-! ## A295333.P3601799725551274503

`A116559(A319451(n+1)-A004442(2*n))`
-/

namespace A295333.P3601799725551274503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (A319451 (n + 1) - A004442 (2 * n)).toNat

end

end A295333.P3601799725551274503

namespace A295333

/-- `A116559(A319451(n+1)-A004442(2*n))` -/
def P3601799725551274503.Spec : Prop :=
  ∀ n, P3601799725551274503.a n = A295333 n

end A295333

/-! ## A295333.P6729479595528023236

`record[A116559(n+2)%A116559(n+3)]`
-/

namespace A295333.P6729479595528023236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116559 (n + 2)) (A116559 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295333.P6729479595528023236

namespace A295333

/-- `record[A116559(n+2)%A116559(n+3)]` -/
def P6729479595528023236.Spec : Prop :=
  ∀ n, P6729479595528023236.a n = A295333 n

end A295333

/-!
# A295334: Denominators of continued fraction convergents to sqrt(10)/2 = sqrt(5/2) = A020797 + 1.

The programs for A295334, the canonical program `A295334.P10404344522491724983` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295334 has offset 0).

The definition of A295334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295334.P10404344522491724983

`6*a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=7, a(5)=12`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295334

/-- `6*a(n-3)+a(n-6)` -/
def P10404344522491724983.Spec : Prop :=
  ∀ n, (P10404344522491724983.a n : ℤ) = A295334 n

theorem P10404344522491724983.correct : P10404344522491724983.Spec := by
  intro n
  simp only [A295334]

end A295334

/-! ## A295334.P17252002398447591198

`a(n-2)-(n²%3-2)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A295334.P17252002398447591198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (((n ^ 2 % 3 : ℕ) : ℤ) - 2) * a (n - 1)

end

end A295334.P17252002398447591198

namespace A295334

/-- `a(n-2)-(n²%3-2)*a(n-1)` -/
def P17252002398447591198.Spec : Prop :=
  ∀ n, P17252002398447591198.a n = A295334 n

end A295334

/-! ## A295334.P3804391349487778513

`A179238(n+2)-A295333(n)`
-/

namespace A295334.P3804391349487778513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179238 (n + 2) - A295333 n

end

end A295334.P3804391349487778513

namespace A295334

/-- `A179238(n+2)-A295333(n)` -/
def P3804391349487778513.Spec : Prop :=
  ∀ n, P3804391349487778513.a n = A295334 n

end A295334

/-! ## A295334.P7023123519440379190

`A022998(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A295334.P7023123519440379190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A022998 (a (n - 1)).toNat + a (n - 2)

end

end A295334.P7023123519440379190

namespace A295334

/-- `A022998(a(n-1))+a(n-2)` -/
def P7023123519440379190.Spec : Prop :=
  ∀ n, P7023123519440379190.a n = A295334 n

end A295334

/-!
# A295335: a(n) = least k >= 0 such that n OR k is prime (where OR denotes the bitwise OR operator).

The programs for A295335, there is no canonical definition to state claims against.
-/

/-! ## A295335.P8478657435553574894

`A295609(n)-n`
-/

namespace A295335.P8478657435553574894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 n - (n : ℤ)

end

end A295335.P8478657435553574894

/-! ## A295335.P17904234364443407621

`xor(n, A295609(xor(1, xor(1, n))))`
-/

namespace A295335.P17904234364443407621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A295609 (Nat.xor 1 (Nat.xor 1 n)))

end

end A295335.P17904234364443407621

/-! ## A295335.P2083664386977650688

`and(A001478(1+n), A295609(n))`
-/

namespace A295335.P2083664386977650688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001478 (1 + n)) (A295609 n)

end

end A295335.P2083664386977650688

/-! ## A295335.P6116478068651294454

`A004442(xor(A004442(n), A295609(n)))`
-/

namespace A295335.P6116478068651294454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor (A004442 n) (A295609 n)).toNat

end

end A295335.P6116478068651294454

/-! ## A295335.P10850373994949309839

`xor(A014681(A014681(n)), A295609(n))`
-/

namespace A295335.P10850373994949309839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014681 (A014681 n).toNat) (A295609 n)

end

end A295335.P10850373994949309839

/-! ## A295335.P6038395805391907457

`xor(A061579(A061579(n)), A295609(n))`
-/

namespace A295335.P6038395805391907457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061579 (A061579 n).toNat) (A295609 n)

end

end A295335.P6038395805391907457

/-! ## A295335.P12353868497745836357

`and(-A054429(A054429(n+1)), A295609(n))`
-/

namespace A295335.P12353868497745836357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A054429 (A054429 (n + 1)).toNat) (A295609 n)

end

end A295335.P12353868497745836357

/-! ## A295335.P1598673098018348765

`xor(A057163(A057163(n)), A295609(n))`
-/

namespace A295335.P1598673098018348765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057163 (A057163 n).toNat) (A295609 n)

end

end A295335.P1598673098018348765

/-! ## A295335.P9911916190608172446

`and(A095768(n+1), A295609(n))`
-/

namespace A295335.P9911916190608172446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095768 (n + 1)) (A295609 n)

end

end A295335.P9911916190608172446

/-! ## A295335.P2144652052639889799

`xor(A003056(A000217(n)), A295609(n))`
-/

namespace A295335.P2144652052639889799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003056 (A000217 n).toNat) (A295609 n)

end

end A295335.P2144652052639889799

/-! ## A295335.P3385797756776194818

`xor(A000196(A000290(n)), A295609(n))`
-/

namespace A295335.P3385797756776194818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000196 (A000290 n).toNat) (A295609 n)

end

end A295335.P3385797756776194818

/-!
# A295336: Numerators of the convergents to sqrt(14)/2 = A294969.

The programs for A295336, the canonical program `A295336.P15889697906651063616` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295336 has offset 0).

The definition of A295336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295336.P15889697906651063616

`30*a(n-4)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=13, a(3)=15, a(4)=43, a(5)=58, a(6)=391, a(7)=449`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295336

/-- `30*a(n-4)-a(n-8)` -/
def P15889697906651063616.Spec : Prop :=
  ∀ n, P15889697906651063616.a n = A295336 n

theorem P15889697906651063616.correct : P15889697906651063616.Spec := by
  intro n
  simp only [A295336]

end A295336

/-! ## A295336.P10443649054773637996

`ogf((1+2x+13x^2+15x^3+13x^4-2x^5+x^6-x^7)/(1-30x^4+x^8))`
-/

namespace A295336.P10443649054773637996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 13, 15, 13, -2, 1, -1] [1, 0, 0, 0, -30, 0, 0, 0, 1] n

end

end A295336.P10443649054773637996

namespace A295336

/-- `ogf((1+2x+13x^2+15x^3+13x^4-2x^5+x^6-x^7)/(1-30x^4+x^8))` -/
def P10443649054773637996.Spec : Prop :=
  ∀ n, P10443649054773637996.a n = A295336 n

end A295336

/-!
# A295337: Denominators of the convergents to sqrt(14)/2 = A294969.

The programs for A295337, the canonical program `A295337.P1952045544295321698` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295337 has offset 0).

The definition of A295337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295337.P1952045544295321698

`30*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=8, a(4)=23, a(5)=31, a(6)=209, a(7)=240`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295337

/-- `30*a(n-4)-a(n-8)` -/
def P1952045544295321698.Spec : Prop :=
  ∀ n, P1952045544295321698.a n = A295337 n

theorem P1952045544295321698.correct : P1952045544295321698.Spec := by
  intro n
  simp only [A295337]

end A295337

/-! ## A295337.P13377142505481946537

`ogf((1+x+7x^2+8x^3-7x^4+x^5-x^6)/(1-30x^4+x^8))`
-/

namespace A295337.P13377142505481946537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 7, 8, -7, 1, -1] [1, 0, 0, 0, -30, 0, 0, 0, 1] n

end

end A295337.P13377142505481946537

namespace A295337

/-- `ogf((1+x+7x^2+8x^3-7x^4+x^5-x^6)/(1-30x^4+x^8))` -/
def P13377142505481946537.Spec : Prop :=
  ∀ n, P13377142505481946537.a n = A295337 n

end A295337

/-!
# A295338: Number of points of the outer discrete Theodorus spiral on sheet S_n, n >= 1. First differences of A072895.

The programs for A295338, there is no canonical definition to state claims against.
-/

/-! ## A295338.P10537309923128991590

`Δ[A072895(n+1)]-A172164(n+2)`
-/

namespace A295338.P10537309923128991590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172164 (n + 2)

end

end A295338.P10537309923128991590

/-! ## A295338.P4742927373611348456

`A072895(n+2)-(A172164(n+2)+A072895(n+1))`
-/

namespace A295338.P4742927373611348456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072895 (n + 2) - (A172164 (n + 2) + A072895 (n + 1))

end

end A295338.P4742927373611348456

/-! ## A295338.P1044430020908676817

`Δ[A137515(n+1)]-A172164(n+2)`
-/

namespace A295338.P1044430020908676817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172164 (n + 2)

end

end A295338.P1044430020908676817

/-! ## A295338.P451035461993952651

`A137515(n+2)-(A172164(n+2)+A137515(n+1))`
-/

namespace A295338.P451035461993952651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137515 (n + 2) - (A172164 (n + 2) + A137515 (n + 1))

end

end A295338.P451035461993952651

/-! ## A295338.P8631818873305559036

`floor(A296179(n+1)+acot(n)²)`
-/

namespace A295338.P8631818873305559036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A296179 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A295338.P8631818873305559036

/-!
# A295339: Least k for the inner Theodorus spiral to complete n revolutions.

The programs for A295339, there is no canonical definition to state claims against.
-/

/-! ## A295339.P2169343531569946093

`∑[A296179(n+1)]`
-/

namespace A295339.P2169343531569946093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295339.P2169343531569946093

/-! ## A295339.P7299560002053393191

`A137515(n+1)-1`
-/

namespace A295339.P7299560002053393191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137515 (n + 1) - 1

end

end A295339.P7299560002053393191

/-! ## A295339.P343090442929565139

`A072895(n+1)-2`
-/

namespace A295339.P343090442929565139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072895 (n + 1) - 2

end

end A295339.P343090442929565139

/-! ## A295339.P9111966121157746625

`∑[A295338(n+1)]-2`
-/

namespace A295339.P9111966121157746625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A295339.P9111966121157746625

/-! ## A295339.P12414693157261617939

`∑[record[A296179(A065648(n))]]`
-/

namespace A295339.P12414693157261617939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296179 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295339.P12414693157261617939

/-!
# A295340: Numbers congruent to 11 or 13 mod 15.

The programs for A295340, the canonical program `A295340.P11707946559317924224` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295340 has offset 1).

The definition of A295340 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A295340.anchor (n : ℕ) (hn : 1 ≤ n) : A295340 n = (Nat.nth (fun k => k % 15 ∈ ({11, 13} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A295.A295340`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295340.P8194478380711780322

`ogf((11+2x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A295340.P8194478380711780322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 2, 2] [1, -1, -1, 1] n

end

end A295340.P8194478380711780322

namespace A295340

/-- `ogf((11+2x+2x^2)/(1-x-x^2+x^3))` -/
def P8194478380711780322.Spec : Prop :=
  ∀ n, P8194478380711780322.a n = A295340 (n + 1)

end A295340

/-! ## A295340.P11707946559317924224

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=11, a(1)=13, a(2)=26`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295340

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P11707946559317924224.Spec : Prop :=
  ∀ n, P11707946559317924224.a n = A295340 (n + 1)

theorem P11707946559317924224.correct : P11707946559317924224.Spec := by
  intro n
  simp only [A295340, Nat.add_sub_cancel]

end A295340

/-! ## A295340.P12404800894410663520

`11*ceil(1/2*(n+1))+2*(n+1)-2`
-/

namespace A295340.P12404800894410663520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌈(1 : ℚ) / 2 * (n + 1 : ℚ)⌉ + (2 * (n + 1) : ℤ) - 2

end

end A295340.P12404800894410663520

namespace A295340

/-- `11*ceil(1/2*(n+1))+2*(n+1)-2` -/
def P12404800894410663520.Spec : Prop :=
  ∀ n, P12404800894410663520.a n = A295340 (n + 1)

end A295340

/-! ## A295340.P14957200090896485830

`a(n-2)+15` with `a(0)=11, a(1)=13`
-/

namespace A295340.P14957200090896485830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11, 13] fun n a =>
  a (n - 2) + 15

end

end A295340.P14957200090896485830

namespace A295340

/-- `a(n-2)+15` -/
def P14957200090896485830.Spec : Prop :=
  ∀ n, (P14957200090896485830.a n : ℤ) = A295340 (n + 1)

end A295340

/-! ## A295340.P4644683946867354169

`∑[15-a(n-1)]` with `a(0)=11, a(1)=2`
-/

namespace A295340.P4644683946867354169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11, 2] fun n f1 =>
  15 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295340.P4644683946867354169

namespace A295340

/-- `∑[15-a(n-1)]` -/
def P4644683946867354169.Spec : Prop :=
  ∀ n, P4644683946867354169.a n = A295340 (n + 1)

end A295340

/-! ## A295340.P1044202516581745320

`A047219(A047264(n+2))`
-/

namespace A295340.P1044202516581745320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (A047264 (n + 2)).toNat

end

end A295340.P1044202516581745320

namespace A295340

/-- `A047219(A047264(n+2))` -/
def P1044202516581745320.Spec : Prop :=
  ∀ n, P1044202516581745320.a n = A295340 (n + 1)

end A295340

/-! ## A295340.P3923136244068574385

`A047220(A274406(n+2))`
-/

namespace A295340.P3923136244068574385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (A274406 (n + 2)).toNat

end

end A295340.P3923136244068574385

namespace A295340

/-- `A047220(A274406(n+2))` -/
def P3923136244068574385.Spec : Prop :=
  ∀ n, P3923136244068574385.a n = A295340 (n + 1)

end A295340

/-! ## A295340.P10889935822212555798

`A023445(A175887(n+2))`
-/

namespace A295340.P10889935822212555798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A175887 (n + 2)).toNat

end

end A295340.P10889935822212555798

namespace A295340

/-- `A023445(A175887(n+2))` -/
def P10889935822212555798.Spec : Prop :=
  ∀ n, P10889935822212555798.a n = A295340 (n + 1)

end A295340

/-! ## A295340.P837074861772917360

`eq[A040592(n), A269328(n+1)]`
-/

namespace A295340.P837074861772917360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295340.P837074861772917360

namespace A295340

/-- `eq[A040592(n), A269328(n+1)]` -/
def P837074861772917360.Spec : Prop :=
  ∀ n, (P837074861772917360.a n : ℤ) = A295340 (n + 1)

end A295340

/-! ## A295340.P17385487455277116522

`A037915(A067844(n+1))`
-/

namespace A295340.P17385487455277116522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A067844 (n + 1)).toNat

end

end A295340.P17385487455277116522

namespace A295340

/-- `A037915(A067844(n+1))` -/
def P17385487455277116522.Spec : Prop :=
  ∀ n, P17385487455277116522.a n = A295340 (n + 1)

end A295340

/-!
# A295341: The number of partitions of n in which at least one part is a multiple of 3.

The programs for A295341, there is no canonical definition to state claims against.
-/

/-! ## A295341.P1106402414232988645

`A000041(n)-A000726(n)`
-/

namespace A295341.P1106402414232988645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000726 n

end

end A295341.P1106402414232988645

/-! ## A295341.P6577788556642575872

`∑[A002865(n)]-A000726(n)`
-/

namespace A295341.P6577788556642575872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000726 n

end

end A295341.P6577788556642575872

/-! ## A295341.P1187928711003190550

`1+A000065(n)-A000726(n)`
-/

namespace A295341.P1187928711003190550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 n - A000726 n

end

end A295341.P1187928711003190550

/-! ## A295341.P10623941350076739317

`A133041(n)-(A000726(n)+n)`
-/

namespace A295341.P10623941350076739317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A000726 n + (n : ℤ))

end

end A295341.P10623941350076739317

/-! ## A295341.P15304724636279687539

`∑[A085811(n+3)]-A000726(n)`
-/

namespace A295341.P15304724636279687539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000726 n

end

end A295341.P15304724636279687539

/-! ## A295341.P9161333567445435288

`∑[A232697(n)]-(A000726(n)+n)`
-/

namespace A295341.P9161333567445435288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000726 n + (n : ℤ))

end

end A295341.P9161333567445435288

/-! ## A295341.P4953153067923582066

`A000009(n)+A047967(n)-A000726(n)`
-/

namespace A295341.P4953153067923582066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A000726 n)

end

end A295341.P4953153067923582066

/-! ## A295341.P12224403364713278890

`A027187(n)+A027193(n)-A000726(n)`
-/

namespace A295341.P12224403364713278890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A000726 n)

end

end A295341.P12224403364713278890

/-! ## A295341.P2398936071552126353

`A239259(n)+A239263(n)-A000726(n)`
-/

namespace A295341.P2398936071552126353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239259 n + (A239263 n - A000726 n)

end

end A295341.P2398936071552126353

/-! ## A295341.P7906351878935910798

`A139582(n)/2-A000726(n)`
-/

namespace A295341.P7906351878935910798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A000726 n : ℚ)

end

end A295341.P7906351878935910798

/-! ## A295341.P14222658759364602876

`A000041(n)-A035385(2*n)`
-/

namespace A295341.P14222658759364602876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A035385 (2 * n)

end

end A295341.P14222658759364602876

/-! ## A295341.P6699500937148070707

`A035363(2*n)-A000726(n)`
-/

namespace A295341.P6699500937148070707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A000726 n

end

end A295341.P6699500937148070707

/-! ## A295341.P9636326288718900975

`A119620(2*n)-A000726(n)`
-/

namespace A295341.P9636326288718900975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A000726 n

end

end A295341.P9636326288718900975

/-! ## A295341.P15879014510282368919

`A304991(n)/A000009(n)-A000726(n)`
-/

namespace A295341.P15879014510282368919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304991 n : ℚ) / (A000009 n : ℚ) - (A000726 n : ℚ)

end

end A295341.P15879014510282368919

/-! ## A295341.P14131263693528183920

`sqrt(A001255(n))-A000726(n)`
-/

namespace A295341.P14131263693528183920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A000726 n : ℝ)

end

end A295341.P14131263693528183920

/-! ## A295341.P12312197087466768547

`A143229(n)/A000070(n)-A000726(n)`
-/

namespace A295341.P12312197087466768547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143229 n : ℚ) / (A000070 n : ℚ) - (A000726 n : ℚ)

end

end A295341.P12312197087466768547

/-! ## A295341.P4532468646047312947

`A171979(n)+A240302(n)-A000726(n)`
-/

namespace A295341.P4532468646047312947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171979 n + (A240302 n - A000726 n)

end

end A295341.P4532468646047312947

/-! ## A295341.P1035772898953522466

`A238394(n)+A238395(n)-A000726(n)`
-/

namespace A295341.P1035772898953522466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238394 n + (A238395 n - A000726 n)

end

end A295341.P1035772898953522466

/-! ## A295341.P9648954332763585241

`A332280(n)+A332281(n)-A000726(n)`
-/

namespace A295341.P9648954332763585241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A000726 n)

end

end A295341.P9648954332763585241

/-! ## A295341.P12168745630828114248

`A001935(n)+A295342(n)-A000726(n)`
-/

namespace A295341.P12168745630828114248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n + (A295342 n - A000726 n)

end

end A295341.P12168745630828114248

/-!
# A295342: The number of partitions of n in which at least one part is a multiple of 4.

The programs for A295342, there is no canonical definition to state claims against.
-/

/-! ## A295342.P12939341059895927980

`A000041(n)-A001935(n)`
-/

namespace A295342.P12939341059895927980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A001935 n

end

end A295342.P12939341059895927980

/-! ## A295342.P460502890871916588

`A000041(n)-abs(A083365(n))`
-/

namespace A295342.P460502890871916588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - |A083365 n|

end

end A295342.P460502890871916588

/-! ## A295342.P5554320991048249706

`sqrt(A001255(n))-A001935(n)`
-/

namespace A295342.P5554320991048249706
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A001935 n : ℝ)

end

end A295342.P5554320991048249706

/-! ## A295342.P12753080526950312091

`∑[A002865(n)]-A001935(n)`
-/

namespace A295342.P12753080526950312091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001935 n

end

end A295342.P12753080526950312091

/-! ## A295342.P9188298654164134875

`A000041(n)-∑[A117275(n)]`
-/

namespace A295342.P9188298654164134875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295342.P9188298654164134875

/-! ## A295342.P13280008955438793128

`A035363(2*n)-A001935(n)`
-/

namespace A295342.P13280008955438793128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A001935 n

end

end A295342.P13280008955438793128

/-! ## A295342.P10817797040423306518

`A000041(n)-Δ[A014605(n+3)]`
-/

namespace A295342.P10817797040423306518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014605 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (f1 (n + 1) - f1 n)

end

end A295342.P10817797040423306518

/-! ## A295342.P5256357710298897727

`A000009(n)+A047967(n)-A001935(n)`
-/

namespace A295342.P5256357710298897727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A001935 n)

end

end A295342.P5256357710298897727

/-! ## A295342.P13999973521367893797

`A000726(n)+A295341(n)-A001935(n)`
-/

namespace A295342.P13999973521367893797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A001935 n)

end

end A295342.P13999973521367893797

/-! ## A295342.P1837248522844315318

`A000041(n)-(A339407(n)+A339406(n))`
-/

namespace A295342.P1837248522844315318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A339407 n + A339406 n)

end

end A295342.P1837248522844315318

/-!
# A295343: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(-Sum_{j=1..k} x^j/j!).

The programs for A295343, there is no canonical definition to state claims against.
-/

/-! ## A295343.P16332502736977774086

`A294254(n)%A337265(A000463(n+1))`
-/

namespace A295343.P16332502736977774086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294254 n) (A337265 (A000463 (n + 1)).toNat)

end

end A295343.P16332502736977774086

/-! ## A295343.P219171499525084699

`A128834(A293386(n)^4)`
-/

namespace A295343.P219171499525084699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A293386 n ^ 4).toNat

end

end A295343.P219171499525084699

/-! ## A295343.P1782159213811737165

`-A226158(A293386(n)²)`
-/

namespace A295343.P1782159213811737165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226158 (A293386 n ^ 2).toNat

end

end A295343.P1782159213811737165

/-! ## A295343.P16661875579811484064

`A128834(A293386(n)²²)`
-/

namespace A295343.P16661875579811484064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 ((A293386 n ^ 2) ^ 2).toNat

end

end A295343.P16661875579811484064

/-! ## A295343.P4302358931050612654

`A302233(lcm(n, A335570(n)))`
-/

namespace A295343.P4302358931050612654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302233 (Int.lcm (n : ℤ) (A335570 n))

end

end A295343.P4302358931050612654

/-!
# A295344: Maximum number of lattice points inside and on a circle of radius n.

The programs for A295344, there is no canonical definition to state claims against.
-/

/-! ## A295344.P15571419087872135035

`A123690(2*n)`
-/

namespace A295344.P15571419087872135035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123690 (2 * n)

end

end A295344.P15571419087872135035

/-! ## A295344.P17804286057512560386

`record[A123690(n+1)/gcd(2, n)]`
-/

namespace A295344.P17804286057512560386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123690 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295344.P17804286057512560386

/-! ## A295344.P11439554321802716657

`record[A123690(n)/A000034(n)]`
-/

namespace A295344.P11439554321802716657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123690 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295344.P11439554321802716657

/-! ## A295344.P16506598529396436428

`record[A123690(n+1)-A147607(n)]`
-/

namespace A295344.P16506598529396436428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123690 (n + 1) - A147607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295344.P16506598529396436428

/-! ## A295344.P18148438522862034065

`record[A123690(n+1)/A052552(n)]`
-/

namespace A295344.P18148438522862034065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123690 (n + 1) : ℚ) / (A052552 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295344.P18148438522862034065

/-! ## A295344.P13453585067401216495

`record[gcd(A027656(n), A123690(n+1))]`
-/

namespace A295344.P13453585067401216495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n) (A123690 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295344.P13453585067401216495

/-!
# A295345: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 3 1's.

The programs for A295345, there is no canonical definition to state claims against.
-/

/-! ## A295345.P17723752420674035332

`A295352(∑[4*n]+1)`
-/

namespace A295345.P17723752420674035332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295345.P17723752420674035332

/-! ## A295345.P15822877007318741740

`record[A295352(A330613(n+1))]`
-/

namespace A295345.P15822877007318741740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295345.P15822877007318741740

/-! ## A295345.P9731003030103646701

`record[A003982(n)*A295352(n+1)]`
-/

namespace A295345.P9731003030103646701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295345.P9731003030103646701

/-! ## A295345.P735376410524783004

`record[gcd(A114327(n), A295352(n+1))]`
-/

namespace A295345.P735376410524783004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A295352 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295345.P735376410524783004

/-! ## A295345.P8122271507374514372

`A189006(n)*A295352(A001844(n))`
-/

namespace A295345.P8122271507374514372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 n * A295352 (A001844 n).toNat

end

end A295345.P8122271507374514372

/-!
# A295346: Number of n X 2 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 3 1s.

The programs for A295346, the canonical program `A295346.P2398073997834409643` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295346 has offset 1).

The definition of A295346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295346.P3451076391715514053

`ogf((3-4x-3x^2-5x^3+x^5)/(1-4x+3x^2+4x^4+x^5-x^6))`
-/

namespace A295346.P3451076391715514053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, -3, -5, 0, 1] [1, -4, 3, 0, 4, 1, -1] n

end

end A295346.P3451076391715514053

namespace A295346

/-- `ogf((3-4x-3x^2-5x^3+x^5)/(1-4x+3x^2+4x^4+x^5-x^6))` -/
def P3451076391715514053.Spec : Prop :=
  ∀ n, P3451076391715514053.a n = A295346 (n + 1)

end A295346

/-! ## A295346.P2398073997834409643

`4*a(n-1)-3*a(n-2)-4*a(n-4)-a(n-5)+a(n-6)` with `a(0)=3, a(1)=8, a(2)=20, a(3)=51, a(4)=132, a(5)=341`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295346

/-- `4*a(n-1)-3*a(n-2)-4*a(n-4)-a(n-5)+a(n-6)` -/
def P2398073997834409643.Spec : Prop :=
  ∀ n, P2398073997834409643.a n = A295346 (n + 1)

theorem P2398073997834409643.correct : P2398073997834409643.Spec := by
  intro n
  simp only [A295346, Nat.add_sub_cancel]

end A295346

/-! ## A295346.P10375157487373235195

`A295606(∑[n+1]+2)`
-/

namespace A295346.P10375157487373235195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295346.P10375157487373235195

namespace A295346

/-- `A295606(∑[n+1]+2)` -/
def P10375157487373235195.Spec : Prop :=
  ∀ n, P10375157487373235195.a n = A295346 (n + 1)

end A295346

/-! ## A295346.P3772609972769712119

`A295352(∑[n+1]+2)`
-/

namespace A295346.P3772609972769712119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295346.P3772609972769712119

namespace A295346

/-- `A295352(∑[n+1]+2)` -/
def P3772609972769712119.Spec : Prop :=
  ∀ n, P3772609972769712119.a n = A295346 (n + 1)

end A295346

/-! ## A295346.P1540559140309499274

`A295352(A000096(n)+3)+A034539(n+1)`
-/

namespace A295346.P1540559140309499274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A000096 n + 3).toNat + A034539 (n + 1)

end

end A295346.P1540559140309499274

namespace A295346

/-- `A295352(A000096(n)+3)+A034539(n+1)` -/
def P1540559140309499274.Spec : Prop :=
  ∀ n, P1540559140309499274.a n = A295346 (n + 1)

end A295346

/-!
# A295347: Number of nX3 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 3 1s.

The programs for A295347, there is no canonical definition to state claims against.
-/

/-! ## A295347.P4677941736055539840

`A295352(∑[n+2]+4)`
-/

namespace A295347.P4677941736055539840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295347.P4677941736055539840

/-! ## A295347.P3617697873372841121

`A295352(A167614(n+1))+A185284(n)`
-/

namespace A295347.P3617697873372841121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A167614 (n + 1)).toNat + A185284 n

end

end A295347.P3617697873372841121

/-! ## A295347.P11800588357865610097

`lcm(A033999(n), A295352(A167614(n+1)))`
-/

namespace A295347.P11800588357865610097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295352 (A167614 (n + 1)).toNat)

end

end A295347.P11800588357865610097

/-! ## A295347.P5978425680256656988

`or(A000007(n), A295352(A167614(n+1)))`
-/

namespace A295347.P5978425680256656988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295352 (A167614 (n + 1)).toNat)

end

end A295347.P5978425680256656988

/-! ## A295347.P7340630867838718393

`A214956(n+1)*A295352(A167614(n+1))`
-/

namespace A295347.P7340630867838718393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214956 (n + 1) * A295352 (A167614 (n + 1)).toNat

end

end A295347.P7340630867838718393

/-!
# A295348: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 3 1s.

The programs for A295348, there is no canonical definition to state claims against.
-/

/-! ## A295348.P8592122751156354468

`A295352(A145018(n+4))`
-/

namespace A295348.P8592122751156354468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A145018 (n + 4)).toNat

end

end A295348.P8592122751156354468

/-! ## A295348.P5887190626064838716

`A295352(A141214(n)+7)`
-/

namespace A295348.P5887190626064838716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A141214 n + 7).toNat

end

end A295348.P5887190626064838716

/-! ## A295348.P6288185878447855329

`A295352(A052905(n)+9)`
-/

namespace A295348.P6288185878447855329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A052905 n + 9).toNat

end

end A295348.P6288185878447855329

/-! ## A295348.P13287798624596779914

`A295352(A055999(n)+10)`
-/

namespace A295348.P13287798624596779914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A055999 n + 10).toNat

end

end A295348.P13287798624596779914

/-! ## A295348.P7546765708165560064

`A295352(A167614(n+2)+1)`
-/

namespace A295348.P7546765708165560064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A167614 (n + 2) + 1).toNat

end

end A295348.P7546765708165560064

/-!
# A295349: Number of n X 5 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 3 1s.

The programs for A295349, there is no canonical definition to state claims against.
-/

/-! ## A295349.P17273646751633163198

`A295352(A167499(n+3))`
-/

namespace A295349.P17273646751633163198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A167499 (n + 3)).toNat

end

end A295349.P17273646751633163198

/-! ## A295349.P8125103358135545727

`A295352(A155212(n)+13)`
-/

namespace A295349.P8125103358135545727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A155212 n + 13).toNat

end

end A295349.P8125103358135545727

/-! ## A295349.P17042345499640981870

`A295352(A034856(n+3)+7)`
-/

namespace A295349.P17042345499640981870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A034856 (n + 3) + 7).toNat

end

end A295349.P17042345499640981870

/-! ## A295349.P2420988505409088204

`A295352(A167614(n+1)+2*n+9)`
-/

namespace A295349.P2420988505409088204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A167614 (n + 1) + (2 * n + 9 : ℤ)).toNat

end

end A295349.P2420988505409088204

/-! ## A295349.P12301575527189803478

`A295352(Δ[A264443(n)])`
-/

namespace A295349.P12301575527189803478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (f1 (n + 1) - f1 n).toNat

end

end A295349.P12301575527189803478

/-!
# A295350: Number of n X 6 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 3 1's.

The programs for A295350, there is no canonical definition to state claims against.
-/

/-! ## A295350.P15938116210942198847

`A295352(A046691(n+3)+10)`
-/

namespace A295350.P15938116210942198847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A046691 (n + 3) + 10).toNat

end

end A295350.P15938116210942198847

/-! ## A295350.P15094968137828620403

`A295352(A374007(n+1))`
-/

namespace A295350.P15094968137828620403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A374007 (n + 1)).toNat

end

end A295350.P15094968137828620403

/-! ## A295350.P16127582759548335402

`A295352(A052905(n+3))`
-/

namespace A295350.P16127582759548335402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A052905 (n + 3)).toNat

end

end A295350.P16127582759548335402

/-! ## A295350.P13197672312029828024

`A295352(A056119(n)+16)`
-/

namespace A295350.P13197672312029828024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A056119 n + 16).toNat

end

end A295350.P13197672312029828024

/-! ## A295350.P8577667320689567199

`A295352(eq[5, A193592(n)])`
-/

namespace A295350.P8577667320689567199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295350.P8577667320689567199

/-!
# A295351: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 3 1s.

The programs for A295351, there is no canonical definition to state claims against.
-/

/-! ## A295351.P17200460134367497854

`A295352(A167614(n+5)+4)`
-/

namespace A295351.P17200460134367497854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A167614 (n + 5) + 4).toNat

end

end A295351.P17200460134367497854

/-! ## A295351.P10846163938367955000

`A295352(A161680(n+7)+7)`
-/

namespace A295351.P10846163938367955000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A161680 (n + 7) + 7).toNat

end

end A295351.P10846163938367955000

/-! ## A295351.P6519509237491264238

`A295352(A374008(n+1))`
-/

namespace A295351.P6519509237491264238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A374008 (n + 1)).toNat

end

end A295351.P6519509237491264238

/-! ## A295351.P15038087768756305245

`A295352(A055999(n+4))`
-/

namespace A295351.P15038087768756305245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (A055999 (n + 4)).toNat

end

end A295351.P15038087768756305245

/-! ## A295351.P13309730467132366353

`A295352(eq[6, A193592(n)])`
-/

namespace A295351.P13309730467132366353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295351.P13309730467132366353

/-!
# A295352: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 3 1s.

The programs for A295352, there is no canonical definition to state claims against.
-/

/-! ## A295352.P7024158827142941314

`A295606(n+1)-A094263(abs(A141588(n)))`
-/

namespace A295352.P7024158827142941314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (n + 1) - A094263 |A141588 n|.toNat

end

end A295352.P7024158827142941314

/-! ## A295352.P17100075941829044981

`A218829(A174116(n))+A130696(A295051(n+1)+1)`
-/

namespace A295352.P17100075941829044981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218829 (A174116 n).toNat + A130696 (A295051 (n + 1) + 1).toNat

end

end A295352.P17100075941829044981

/-! ## A295352.P17906358622773882711

`A259094(A295606(n+1))+A123068(A295379(n+1))`
-/

namespace A295352.P17906358622773882711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A295606 (n + 1)).toNat + A123068 (A295379 (n + 1)).toNat

end

end A295352.P17906358622773882711

/-! ## A295352.P10365216847200179821

`A295606(A084192(∑[n]))`
-/

namespace A295352.P10365216847200179821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A295352.P10365216847200179821

/-! ## A295352.P3628670030116314714

`A089867(A295606(n+1))`
-/

namespace A295352.P3628670030116314714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A295606 (n + 1)).toNat

end

end A295352.P3628670030116314714

/-!
# A295360: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) - 3*b(n-3), where a(0) = 1, a(1) = 3, a(2) = 5, b(0) = 2, b(1) = 4, b(2) = 6, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295360, there is no canonical definition to state claims against.
-/

/-! ## A295360.P2642581669682494867

`filter[A232896(n+1), A103583(#)]`
-/

namespace A295360.P2642581669682494867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A295360.P2642581669682494867

/-! ## A295360.P5601548438491124486

`∩[A156246(n+1), A232896(n+1)]`
-/

namespace A295360.P5601548438491124486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295360.P5601548438491124486

/-! ## A295360.P7791022306931201143

`A232896(comp[∑[4*n]]%A299188(n+2))`
-/

namespace A295360.P7791022306931201143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A299188 (n + 2))).toNat

end

end A295360.P7791022306931201143

/-!
# A295362: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) - b(n-2) - b(n-3), where a(0) = 1, a(1) = 3, a(2) = 5, b(0) = 2, b(1) = 4, b(2) = 6, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295362, there is no canonical definition to state claims against.
-/

/-! ## A295362.P4143343725152504397

`A353241(A001788(n))+A000045(n)`
-/

namespace A295362.P4143343725152504397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353241 (A001788 n).toNat + A000045 n

end

end A295362.P4143343725152504397

/-! ## A295362.P15875642079302395652

`A083089(n+1)-A268173(A176502(n+1))`
-/

namespace A295362.P15875642079302395652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083089 (n + 1) - A268173 (A176502 (n + 1)).toNat

end

end A295362.P15875642079302395652

/-! ## A295362.P14619709205426702677

`A340792(A330910(n+1))`
-/

namespace A295362.P14619709205426702677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340792 (A330910 (n + 1)).toNat

end

end A295362.P14619709205426702677

/-! ## A295362.P3199785120014060264

`∑[A005811(∑[A229224(n)])]`
-/

namespace A295362.P3199785120014060264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229224 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295362.P3199785120014060264

/-! ## A295362.P5296238724458200780

`∑[A005811(∑[A343668(n)])]`
-/

namespace A295362.P5296238724458200780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295362.P5296238724458200780

/-!
# A295363: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)*b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295363, there is no canonical definition to state claims against.
-/

/-! ## A295363.P8388795542563847854

`A034888(2*n*A145807(3*n+1)+1)`
-/

namespace A295363.P8388795542563847854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 ((2 * n : ℤ) * A145807 (3 * n + 1) + 1).toNat

end

end A295363.P8388795542563847854

/-! ## A295363.P11749909576635085600

`A292551(2*n+1)+A245230(A000325(n))`
-/

namespace A295363.P11749909576635085600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292551 (2 * n + 1) + A245230 (A000325 n).toNat

end

end A295363.P11749909576635085600

/-!
# A295366: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) - b(n-3), where a(0) = 1, a(1) = 2, a[2] = 3, b(0) = 4, b(1) = 5, b(2) = 6, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295366, there is no canonical definition to state claims against.
-/

/-! ## A295366.P2643026484269347411

`A025480(A295365(n)+A032555(n+1))`
-/

namespace A295366.P2643026484269347411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A295365 n + A032555 (n + 1)).toNat

end

end A295366.P2643026484269347411

/-! ## A295366.P12587536879597774770

`A065033(A295365(n)+A032555(n+1))`
-/

namespace A295366.P12587536879597774770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A295365 n + A032555 (n + 1)).toNat

end

end A295366.P12587536879597774770

/-! ## A295366.P1772704138854992323

`A065033(A295365(n)+A087051(n+1))`
-/

namespace A295366.P1772704138854992323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A295365 n + A087051 (n + 1)).toNat

end

end A295366.P1772704138854992323

/-!
# A295367: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)*b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295367, there is no canonical definition to state claims against.
-/

/-! ## A295367.P13976950531185342741

`A000045(A032555(n+1))+A296296(n)-2`
-/

namespace A295367.P13976950531185342741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A032555 (n + 1)).toNat + (A296296 n - 2)

end

end A295367.P13976950531185342741

/-! ## A295367.P11341619306063671742

`or(A001285(n), A217605(A374933(2*n+3)))`
-/

namespace A295367.P11341619306063671742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001285 n) (A217605 (A374933 (2 * n + 3)).toNat)

end

end A295367.P11341619306063671742

/-!
# A295369: Number of squarefree primitive abundant numbers (A071395) with n prime factors.

The programs for A295369, there is no canonical definition to state claims against.
-/

/-! ## A295369.P723693212567427583

`A298957(((1-n)²+n)²)`
-/

namespace A295369.P723693212567427583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (((1 - (n : ℤ)) ^ 2 + (n : ℤ)) ^ 2).toNat

end

end A295369.P723693212567427583

/-!
# A295370: Number of permutations of [n] avoiding three consecutive terms in arithmetic progression.

The programs for A295370, there is no canonical definition to state claims against.
-/

/-! ## A295370.P4270498278016274516

`n!-A333631(n)`
-/

namespace A295370.P4270498278016274516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A333631 n

end

end A295370.P4270498278016274516

/-! ## A295370.P5693672235628284217

`A000142(n)-A333631(n)`
-/

namespace A295370.P5693672235628284217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A333631 n

end

end A295370.P5693672235628284217

/-! ## A295370.P8245644446703491960

`Δ[A003422(n)]-A333631(n)`
-/

namespace A295370.P8245644446703491960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A333631 n

end

end A295370.P8245644446703491960

/-! ## A295370.P9094041264705238341

`A295390(A022856(n+2))`
-/

namespace A295370.P9094041264705238341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295390 (A022856 (n + 2)).toNat

end

end A295370.P9094041264705238341

/-!
# A295371: a(n) = (1/(2n))*Sum_{k=0..n-1} C(n-1, k)*C(n+k, k)*C(2k, k)*(k+2)*(-3)^(n-1-k).

The programs for A295371, the canonical program `A295371.P17545874107208481143` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295371 has offset 1).

The definition of A295371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295371.P17545874107208481143

`(A002426(n+1)²+3*A002426(n)²)/4`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295371

/-- `(A002426(n+1)²+3*A002426(n)²)/4` -/
def P17545874107208481143.Spec : Prop :=
  ∀ n, P17545874107208481143.a n = (A295371 (n + 1) : ℚ)

end A295371

/-! ## A295371.P8193304966236731563

`A168597(n)+Δ[A168597(n)/4]`
-/

namespace A295371.P8193304966236731563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168597 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168597 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A295371.P8193304966236731563

namespace A295371

/-- `A168597(n)+Δ[A168597(n)/4]` -/
def P8193304966236731563.Spec : Prop :=
  ∀ n, P8193304966236731563.a n = (A295371 (n + 1) : ℚ)

end A295371

/-!
# A295372: Number of total dominating sets in the n-hypercube graph.

The programs for A295372, there is no canonical definition to state claims against.
-/

/-! ## A295372.P2909214311673334282

`A284704(n)²`
-/

namespace A295372.P2909214311673334282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284704 n ^ 2

end

end A295372.P2909214311673334282

/-!
# A295373: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 4 1's.

The programs for A295373, there is no canonical definition to state claims against.
-/

/-! ## A295373.P17632099112347504695

`A295379(∑[4*n]+1)`
-/

namespace A295373.P17632099112347504695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295373.P17632099112347504695

/-! ## A295373.P17928649028763280973

`lcm(2, A295379(A001844(n)))`
-/

namespace A295373.P17928649028763280973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A295379 (A001844 n).toNat)

end

end A295373.P17928649028763280973

/-! ## A295373.P9271088326146053193

`record[A295379(A272267(n+1))]`
-/

namespace A295373.P9271088326146053193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295373.P9271088326146053193

/-! ## A295373.P7482213999300734137

`record[gcd(A295379(n+1), A296339(n))]`
-/

namespace A295373.P7482213999300734137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A295379 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295373.P7482213999300734137

/-! ## A295373.P15234958644036465458

`A295379(A001844(n))+A217152(n+1)`
-/

namespace A295373.P15234958644036465458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A001844 n).toNat + A217152 (n + 1)

end

end A295373.P15234958644036465458

/-!
# A295374: Number of n X 3 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 4 1s.

The programs for A295374, the canonical program `A295374.P15173651578123360817` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295374 has offset 1).

The definition of A295374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295374.P15173651578123360817

`ogf((5+4x-3x^2-5x^3-11x^4+x^5+3x^6-x^7+2x^8+x^9)/(1-3x-4x^2+3x^3-x^4+8x^5+3x^6-5x^7+2x^8-x^9-x^10))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295374

/-- `ogf((5+4x-3x^2-5x^3-11x^4+x^5+3x^6-x^7+2x^8+x^9)/(1-3x-4x^2+3x^3-x^4+8x^5+3x^6-5x^7+2x^8-x^9-x^10))` -/
def P15173651578123360817.Spec : Prop :=
  ∀ n, P15173651578123360817.a n = A295374 (n + 1)

theorem P15173651578123360817.correct : P15173651578123360817.Spec := by
  intro n
  simp only [A295374, Nat.add_sub_cancel]

end A295374

/-! ## A295374.P16169689590418363493

`A295379(∑[n+2]+4)`
-/

namespace A295374.P16169689590418363493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295374.P16169689590418363493

namespace A295374

/-- `A295379(∑[n+2]+4)` -/
def P16169689590418363493.Spec : Prop :=
  ∀ n, P16169689590418363493.a n = A295374 (n + 1)

end A295374

/-! ## A295374.P3588316924344671436

`lcm((-1)^n, A295379(A167614(n+1)))`
-/

namespace A295374.P3588316924344671436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A295379 (A167614 (n + 1)).toNat)

end

end A295374.P3588316924344671436

namespace A295374

/-- `lcm((-1)^n, A295379(A167614(n+1)))` -/
def P3588316924344671436.Spec : Prop :=
  ∀ n, (P3588316924344671436.a n : ℤ) = A295374 (n + 1)

end A295374

/-! ## A295374.P10313113565257955142

`A295379(A167614(n+1))+A025469(n)`
-/

namespace A295374.P10313113565257955142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A167614 (n + 1)).toNat + A025469 n

end

end A295374.P10313113565257955142

namespace A295374

/-- `A295379(A167614(n+1))+A025469(n)` -/
def P10313113565257955142.Spec : Prop :=
  ∀ n, P10313113565257955142.a n = A295374 (n + 1)

end A295374

/-! ## A295374.P7585569597935809074

`A295379(A167614(n+1))+A178798(n)`
-/

namespace A295374.P7585569597935809074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A167614 (n + 1)).toNat + A178798 n

end

end A295374.P7585569597935809074

namespace A295374

/-- `A295379(A167614(n+1))+A178798(n)` -/
def P7585569597935809074.Spec : Prop :=
  ∀ n, P7585569597935809074.a n = A295374 (n + 1)

end A295374

/-!
# A295375: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 4 1s.

The programs for A295375, there is no canonical definition to state claims against.
-/

/-! ## A295375.P14688106530121980073

`A295379(A374004(n+1))`
-/

namespace A295375.P14688106530121980073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A374004 (n + 1)).toNat

end

end A295375.P14688106530121980073

/-! ## A295375.P10410066101774186132

`A295379(A141214(n)+7)`
-/

namespace A295375.P10410066101774186132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A141214 n + 7).toNat

end

end A295375.P10410066101774186132

/-! ## A295375.P6333367312827758402

`A295379(A052905(n)+9)`
-/

namespace A295375.P6333367312827758402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A052905 n + 9).toNat

end

end A295375.P6333367312827758402

/-! ## A295375.P11199045190583271826

`A295379(A055999(n)+10)`
-/

namespace A295375.P11199045190583271826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A055999 n + 10).toNat

end

end A295375.P11199045190583271826

/-! ## A295375.P3437256965401148686

`A295379(A167614(n+2)+1)`
-/

namespace A295375.P3437256965401148686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A167614 (n + 2) + 1).toNat

end

end A295375.P3437256965401148686

/-!
# A295376: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 4 1s.

The programs for A295376, there is no canonical definition to state claims against.
-/

/-! ## A295376.P4100604914323795830

`A295379(A374005(n+1))`
-/

namespace A295376.P4100604914323795830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A374005 (n + 1)).toNat

end

end A295376.P4100604914323795830

/-! ## A295376.P7647977970966794450

`A295379(A167499(n+3))`
-/

namespace A295376.P7647977970966794450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A167499 (n + 3)).toNat

end

end A295376.P7647977970966794450

/-! ## A295376.P5057123202647338901

`A295379(A155212(n)+13)`
-/

namespace A295376.P5057123202647338901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A155212 n + 13).toNat

end

end A295376.P5057123202647338901

/-! ## A295376.P9437422052013744982

`A295379(A167614(n+3)+2)`
-/

namespace A295376.P9437422052013744982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A167614 (n + 3) + 2).toNat

end

end A295376.P9437422052013744982

/-! ## A295376.P13083843663527063250

`A295379(A034856(n+3)+7)`
-/

namespace A295376.P13083843663527063250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A034856 (n + 3) + 7).toNat

end

end A295376.P13083843663527063250

/-!
# A295377: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 4 1s.

The programs for A295377, there is no canonical definition to state claims against.
-/

/-! ## A295377.P16165213017503088413

`A295379(A374007(n+1))`
-/

namespace A295377.P16165213017503088413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A374007 (n + 1)).toNat

end

end A295377.P16165213017503088413

/-! ## A295377.P13003093811794392911

`A295379(eq[7, A131818(n+1)])`
-/

namespace A295377.P13003093811794392911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295377.P13003093811794392911

/-! ## A295377.P8983776530252786254

`A295379(A052905(n+3))`
-/

namespace A295377.P8983776530252786254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A052905 (n + 3)).toNat

end

end A295377.P8983776530252786254

/-! ## A295377.P2613573290316317511

`A295379(A302537(n)+15)`
-/

namespace A295377.P2613573290316317511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A302537 n + 15).toNat

end

end A295377.P2613573290316317511

/-! ## A295377.P3904253938921864548

`A295379(eq[5, A193592(n)])`
-/

namespace A295377.P3904253938921864548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295377.P3904253938921864548

/-!
# A295378: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 4 1s.

The programs for A295378, there is no canonical definition to state claims against.
-/

/-! ## A295378.P10952788756120079187

`A295379(A374008(n+1))`
-/

namespace A295378.P10952788756120079187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A374008 (n + 1)).toNat

end

end A295378.P10952788756120079187

/-! ## A295378.P6797896125738901014

`A295379(A056119(n)+28)`
-/

namespace A295378.P6797896125738901014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A056119 n + 28).toNat

end

end A295378.P6797896125738901014

/-! ## A295378.P15052645917188872670

`A295379(A052905(n+3)+12)`
-/

namespace A295378.P15052645917188872670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A052905 (n + 3) + 12).toNat

end

end A295378.P15052645917188872670

/-! ## A295378.P6746461756550884350

`A295379(eq[8, A131818(n+1)])`
-/

namespace A295378.P6746461756550884350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295378.P6746461756550884350

/-! ## A295378.P8094233674510000251

`A295379(A055999(n+4))`
-/

namespace A295378.P8094233674510000251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (A055999 (n + 4)).toNat

end

end A295378.P8094233674510000251

/-!
# A295379: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2 or 4 1s.

The programs for A295379, there is no canonical definition to state claims against.
-/

/-! ## A295379.P5139173803180647934

`A295051(n+1)+A028930(A174912(n))`
-/

namespace A295379.P5139173803180647934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) + A028930 (A174912 n).toNat

end

end A295379.P5139173803180647934

/-! ## A295379.P1592019916253320510

`A295051(n+1)+A051516(A157630(n))`
-/

namespace A295379.P1592019916253320510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) + A051516 (A157630 n).toNat

end

end A295379.P1592019916253320510

/-! ## A295379.P4954742860285560970

`A295051(n+1)+A185044(A099608(n))`
-/

namespace A295379.P4954742860285560970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) + A185044 (A099608 n).toNat

end

end A295379.P4954742860285560970

/-! ## A295379.P16174387423086956658

`A295051(n+1)+A174875(A157177(n))`
-/

namespace A295379.P16174387423086956658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (n + 1) + A174875 (A157177 n).toNat

end

end A295379.P16174387423086956658

/-!
# A295380: Number of canonical forms for separation coordinates on hyperspheres S_n, ordered by increasing number of independent continuous parameters.

The programs for A295380, there is no canonical definition to state claims against.
-/

/-! ## A295380.P10515048705399833918

`A232206(∑[char[∑[n]]]²+1-n)`
-/

namespace A295380.P10515048705399833918
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232206 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A295380.P10515048705399833918

/-!
# A295382: Expansion of e.g.f. exp(-2*x/(1 - x))/(1 - x).

The programs for A295382, the canonical program `A295382.P7014046287265058361` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295382 has offset 0).

The definition of A295382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295382.P7014046287265058361

`∑{#}[n, (-2)^(n-#)*#!*C(n, #)²]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295382

/-- `∑{#}[n, (-2)^(n-#)*#!*C(n, #)²]` -/
def P7014046287265058361.Spec : Prop :=
  ∀ n, P7014046287265058361.a n = (A295382 n : ℚ)

end A295382

/-! ## A295382.P18323032093321026651

`n!*A160623(n)/A160624(n)`
-/

namespace A295382.P18323032093321026651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A160623 n : ℚ) / (A160624 n : ℚ)

end

end A295382.P18323032093321026651

namespace A295382

/-- `n!*A160623(n)/A160624(n)` -/
def P18323032093321026651.Spec : Prop :=
  ∀ n, P18323032093321026651.a n = (A295382 n : ℚ)

end A295382

/-! ## A295382.P11083223227554134028

`A000142(n)/A160624(n)*A160623(n)`
-/

namespace A295382.P11083223227554134028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160624 n : ℚ) * (A160623 n : ℚ)

end

end A295382.P11083223227554134028

namespace A295382

/-- `A000142(n)/A160624(n)*A160623(n)` -/
def P11083223227554134028.Spec : Prop :=
  ∀ n, P11083223227554134028.a n = (A295382 n : ℚ)

end A295382

/-! ## A295382.P4199021486439834668

`A295381(∑[n+3])`
-/

namespace A295382.P4199021486439834668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295382.P4199021486439834668

namespace A295382

/-- `A295381(∑[n+3])` -/
def P4199021486439834668.Spec : Prop :=
  ∀ n, P4199021486439834668.a n = A295382 n

end A295382

/-! ## A295382.P10174664818879641374

`A295381(A027379(n+1))+A002378(n)%2`
-/

namespace A295382.P10174664818879641374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A027379 (n + 1)).toNat + Int.tmod (A002378 n) 2

end

end A295382.P10174664818879641374

namespace A295382

/-- `A295381(A027379(n+1))+A002378(n)%2` -/
def P10174664818879641374.Spec : Prop :=
  ∀ n, P10174664818879641374.a n = A295382 n

end A295382

/-! ## A295382.P678198117426433255

`A295381(A027379(n+1))+A001489(n)+n`
-/

namespace A295382.P678198117426433255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (A027379 (n + 1)).toNat + (A001489 n + (n : ℤ))

end

end A295382.P678198117426433255

namespace A295382

/-- `A295381(A027379(n+1))+A001489(n)+n` -/
def P678198117426433255.Spec : Prop :=
  ∀ n, P678198117426433255.a n = A295382 n

end A295382

/-!
# A295383: a(n) = (2*n)! * [x^(2*n)] (-x/(1 - x))^n/((1 - x)*n!).

The programs for A295383, the canonical program `A295383.P14852735842697235495` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295383 has offset 0).

The definition of A295383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295383.P14852735842697235495

`(-1)^n*C(2*n, n)²*n!`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295383

/-- `(-1)^n*C(2*n, n)²*n!` -/
def P14852735842697235495.Spec : Prop :=
  ∀ n, P14852735842697235495.a n = A295383 n

theorem P14852735842697235495.correct : P14852735842697235495.Spec := by
  intro n
  simp only [A295383]

end A295383

/-! ## A295383.P3644231320871762909

`∏[2-4*n]/2*C(2*n, n)`
-/

namespace A295383.P3644231320871762909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (4 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * (Nat.choose (2 * n) n : ℚ)

end

end A295383.P3644231320871762909

namespace A295383

/-- `∏[2-4*n]/2*C(2*n, n)` -/
def P3644231320871762909.Spec : Prop :=
  ∀ n, P3644231320871762909.a n = (A295383 n : ℚ)

end A295383

/-! ## A295383.P2603830127272472016

`(2/n-4)*a(n-1)*record[lcm(2, n)]` with `a(0)=1`
-/

namespace A295383.P2603830127272472016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 / (n : ℚ) - 4) * a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A295383.P2603830127272472016

namespace A295383

/-- `(2/n-4)*a(n-1)*record[lcm(2, n)]` -/
def P2603830127272472016.Spec : Prop :=
  ∀ n, P2603830127272472016.a n = (A295383 n : ℚ)

end A295383

/-! ## A295383.P2013006253643621397

`A000984(n)*A097388(n)`
-/

namespace A295383.P2013006253643621397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A097388 n

end

end A295383.P2013006253643621397

namespace A295383

/-- `A000984(n)*A097388(n)` -/
def P2013006253643621397.Spec : Prop :=
  ∀ n, P2013006253643621397.a n = A295383 n

end A295383

/-! ## A295383.P8865479900480941620

`A000984(n)²*A133942(n)`
-/

namespace A295383.P8865479900480941620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2 * A133942 n

end

end A295383.P8865479900480941620

namespace A295383

/-- `A000984(n)²*A133942(n)` -/
def P8865479900480941620.Spec : Prop :=
  ∀ n, P8865479900480941620.a n = A295383 n

theorem P8865479900480941620.correct : P8865479900480941620.Spec := by
  intro n
  simp only [A295383, Nat.add_sub_cancel, A295383.P8865479900480941620.a, A295383.P14852735842697235495.a, A000984, A000984.P7946844122574426130.a, A133942, A133942.P740003747930035981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295383

/-!
# A295384: a(n) = n!*Sum_{k=0..n} (-1)^k*binomial(2*n,n-k)*n^k/k!.

The programs for A295384, there is no canonical definition to state claims against.
-/

/-! ## A295384.P8492419136888327930

`2-A168343(n!)`
-/

namespace A295384.P8492419136888327930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A168343 (Nat.factorial n)

end

end A295384.P8492419136888327930

/-!
# A295385: a(n) = n!*Sum_{k=0..n} binomial(2*n,n-k)*n^k/k!.

The programs for A295385, the canonical program `A295385.P8247038691071261887` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295385 has offset 0).

The definition of A295385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295385.P8247038691071261887

`n!*∑{#}[n, C(2*n, n-#)*n^#/#!]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295385

/-- `n!*∑{#}[n, C(2*n, n-#)*n^#/#!]` -/
def P8247038691071261887.Spec : Prop :=
  ∀ n, P8247038691071261887.a n = (A295385 n : ℚ)

end A295385

/-!
# A295387: Numbers k such that (2*10^k - 197)/3 is prime.

The programs for A295387, there is no canonical definition to state claims against.
-/

/-! ## A295387.P15766751376503144387

`lt[A154958(n), A347285(A225768(n))]`
-/

namespace A295387.P15766751376503144387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347285 (A225768 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295387.P15766751376503144387

/-! ## A295387.P11052276812311791355

`lt[A058055(n+1), A139251(A180136(n+1))]`
-/

namespace A295387.P11052276812311791355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A180136 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295387.P11052276812311791355

/-!
# A295388: a(n) is the least k > n such that n divides k, and n+1 divides k+1, and n+2 divides k+2.

The programs for A295388, the canonical program `A295388.P7445722127772271277` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295388 has offset 1).

The definition of A295388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295388.P7445722127772271277

`ogf((7+14x+35x^2+8x^3+5x^4+2x^5+x^6)/(1-4x^2+6x^4-4x^6+x^8))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295388

/-- `ogf((7+14x+35x^2+8x^3+5x^4+2x^5+x^6)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P7445722127772271277.Spec : Prop :=
  ∀ n, P7445722127772271277.a n = A295388 (n + 1)

theorem P7445722127772271277.correct : P7445722127772271277.Spec := by
  intro n
  simp only [A295388, Nat.add_sub_cancel]

end A295388

/-! ## A295388.P12294769761183839908

`∑[Δ[lcm(n+2, ∑[2*n])]+1]`
-/

namespace A295388.P12294769761183839908
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295388.P12294769761183839908

namespace A295388

/-- `∑[Δ[lcm(n+2, ∑[2*n])]+1]` -/
def P12294769761183839908.Spec : Prop :=
  ∀ n, P12294769761183839908.a n = A295388 (n + 1)

end A295388

/-! ## A295388.P5636375874189602868

`lcm(2, n+3)*∑[n+1]+1+n`
-/

namespace A295388.P5636375874189602868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + n

end

end A295388.P5636375874189602868

namespace A295388

/-- `lcm(2, n+3)*∑[n+1]+1+n` -/
def P5636375874189602868.Spec : Prop :=
  ∀ n, (P5636375874189602868.a n : ℤ) = A295388 (n + 1)

end A295388

/-! ## A295388.P11397348830990596087

`lcm(n+1, 2*C(n+3, 2))+n+1`
-/

namespace A295388.P11397348830990596087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * Nat.choose (n + 3) 2) + (n + 1)

end

end A295388.P11397348830990596087

namespace A295388

/-- `lcm(n+1, 2*C(n+3, 2))+n+1` -/
def P11397348830990596087.Spec : Prop :=
  ∀ n, (P11397348830990596087.a n : ℤ) = A295388 (n + 1)

end A295388

/-! ## A295388.P16135178590308954148

`lcm((n+1)*(n+2), (n+2)*(n+3))+n+1`
-/

namespace A295388.P16135178590308954148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) * (n + 2)) ((n + 2) * (n + 3)) + (n + 1)

end

end A295388.P16135178590308954148

namespace A295388

/-- `lcm((n+1)*(n+2), (n+2)*(n+3))+n+1` -/
def P16135178590308954148.Spec : Prop :=
  ∀ n, (P16135178590308954148.a n : ℤ) = A295388 (n + 1)

end A295388

/-! ## A295388.P56915459278909452

`A033931(n+1)+1+n`
-/

namespace A295388.P56915459278909452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 (n + 1) + 1 + (n : ℤ)

end

end A295388.P56915459278909452

namespace A295388

/-- `A033931(n+1)+1+n` -/
def P56915459278909452.Spec : Prop :=
  ∀ n, P56915459278909452.a n = A295388 (n + 1)

end A295388

/-! ## A295388.P10040624016447224974

`(n+1)*(A045896(n+1)+1)`
-/

namespace A295388.P10040624016447224974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A045896 (n + 1) + 1)

end

end A295388.P10040624016447224974

namespace A295388

/-- `(n+1)*(A045896(n+1)+1)` -/
def P10040624016447224974.Spec : Prop :=
  ∀ n, P10040624016447224974.a n = A295388 (n + 1)

end A295388

/-! ## A295388.P13548162612130525280

`6*A067046(n+1)+1+n`
-/

namespace A295388.P13548162612130525280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A067046 (n + 1) + 1 + (n : ℤ)

end

end A295388.P13548162612130525280

namespace A295388

/-- `6*A067046(n+1)+1+n` -/
def P13548162612130525280.Spec : Prop :=
  ∀ n, P13548162612130525280.a n = A295388 (n + 1)

end A295388

/-! ## A295388.P16860089407157876732

`(n+3)*A168059(n+1)+n+1`
-/

namespace A295388.P16860089407157876732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A168059 (n + 1) + (n + 1 : ℤ)

end

end A295388.P16860089407157876732

namespace A295388

/-- `(n+3)*A168059(n+1)+n+1` -/
def P16860089407157876732.Spec : Prop :=
  ∀ n, P16860089407157876732.a n = A295388 (n + 1)

end A295388

/-! ## A295388.P14060799498375376099

`A192846(n+1)/A010694(n)`
-/

namespace A295388.P14060799498375376099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192846 (n + 1) : ℚ) / (A010694 n : ℚ)

end

end A295388.P14060799498375376099

namespace A295388

/-- `A192846(n+1)/A010694(n)` -/
def P14060799498375376099.Spec : Prop :=
  ∀ n, P14060799498375376099.a n = (A295388 (n + 1) : ℚ)

end A295388

/-! ## A295388.P14197653121926297053

`(n+2)*A066830(n+2)+n+1`
-/

namespace A295388.P14197653121926297053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A066830 (n + 2) + (n + 1 : ℤ)

end

end A295388.P14197653121926297053

namespace A295388

/-- `(n+2)*A066830(n+2)+n+1` -/
def P14197653121926297053.Spec : Prop :=
  ∀ n, P14197653121926297053.a n = A295388 (n + 1)

end A295388

/-! ## A295388.P1540334257490643700

`(A000217(n+2)*A263844(A188375(n+2))+1)*(n+1)`
-/

namespace A295388.P1540334257490643700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 2) * A263844 (A188375 (n + 2)).toNat + 1) * (n + 1 : ℤ)

end

end A295388.P1540334257490643700

namespace A295388

/-- `(A000217(n+2)*A263844(A188375(n+2))+1)*(n+1)` -/
def P1540334257490643700.Spec : Prop :=
  ∀ n, P1540334257490643700.a n = A295388 (n + 1)

end A295388

/-!
# A295389: Numbers whose sum of digits is squarefree.

The programs for A295389, the canonical program `A295389.P4983936103791879668` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295389 has offset 1).

The definition of A295389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6045 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295389.P4983936103791879668

`record[(n+1)/∏{e}[∑{digits}[n+1, #], #]]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295389

/-- `record[(n+1)/∏{e}[∑{digits}[n+1, #], #]]` -/
def P4983936103791879668.Spec : Prop :=
  ∀ n, P4983936103791879668.a n = (A295389 (n + 1) : ℚ)

end A295389

/-! ## A295389.P6233823418829704538

`record[root(n+1, ∏{e}[∑{digits}[n+1, #], #])]`
-/

namespace A295389.P6233823418829704538
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295389.P6233823418829704538

namespace A295389

/-- `record[root(n+1, ∏{e}[∑{digits}[n+1, #], #])]` -/
def P6233823418829704538.Spec : Prop :=
  ∀ n, P6233823418829704538.a n = (A295389 (n + 1) : ℝ)

end A295389

/-! ## A295389.P16054559210311286361

`eq[1, A000188(∑{digits}[n+1, #])]+1`
-/

namespace A295389.P16054559210311286361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295389.P16054559210311286361

namespace A295389

/-- `eq[1, A000188(∑{digits}[n+1, #])]+1` -/
def P16054559210311286361.Spec : Prop :=
  ∀ n, (P16054559210311286361.a n : ℤ) = A295389 (n + 1)

end A295389

/-! ## A295389.P6737619793658408917

`record[(n+1)/∏{e}[A007953(n+1), #]]`
-/

namespace A295389.P6737619793658408917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295389.P6737619793658408917

namespace A295389

/-- `record[(n+1)/∏{e}[A007953(n+1), #]]` -/
def P6737619793658408917.Spec : Prop :=
  ∀ n, P6737619793658408917.a n = (A295389 (n + 1) : ℚ)

end A295389

/-! ## A295389.P18267350224088248039

`record[(n+1)*A008683(∑{digits}[n+1, #])²]`
-/

namespace A295389.P18267350224088248039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295389.P18267350224088248039

namespace A295389

/-- `record[(n+1)*A008683(∑{digits}[n+1, #])²]` -/
def P18267350224088248039.Spec : Prop :=
  ∀ n, P18267350224088248039.a n = A295389 (n + 1)

end A295389

/-! ## A295389.P6550958002075801199

`lt[A058190(Δ[A037123(n)]), 1]+1`
-/

namespace A295389.P6550958002075801199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A295389.P6550958002075801199

namespace A295389

/-- `lt[A058190(Δ[A037123(n)]), 1]+1` -/
def P6550958002075801199.Spec : Prop :=
  ∀ n, (P6550958002075801199.a n : ℤ) = A295389 (n + 1)

end A295389

/-! ## A295389.P15658676045531613134

`eq[∏{p}[A007953(n), #], A007953(n)]`
-/

namespace A295389.P15658676045531613134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295389.P15658676045531613134

namespace A295389

/-- `eq[∏{p}[A007953(n), #], A007953(n)]` -/
def P15658676045531613134.Spec : Prop :=
  ∀ n, (P15658676045531613134.a n : ℤ) = A295389 (n + 1)

end A295389

/-!
# A295391: a(1) = 2; a(n+1) = 1 + (a(n)^2 - a(n))*(1+1/n) for n >= 1.

The programs for A295391, the canonical program `A295391.P18420293463567727950` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295391 has offset 1).

The definition of A295391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295391.P18420293463567727950

`A275611(n+1)/A275611(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295391

/-- `A275611(n+1)/A275611(n)` -/
def P18420293463567727950.Spec : Prop :=
  ∀ n, P18420293463567727950.a n = (A295391 (n + 1) : ℚ)

end A295391

/-! ## A295391.P15804317783008990386

`(a(n-1)+a(n-1)/n)*(a(n-1)-1)+1` with `a(0)=2`
-/

namespace A295391.P15804317783008990386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + a (n - 1) / (n : ℚ)) * (a (n - 1) - 1) + 1

end

end A295391.P15804317783008990386

namespace A295391

/-- `(a(n-1)+a(n-1)/n)*(a(n-1)-1)+1` -/
def P15804317783008990386.Spec : Prop :=
  ∀ n, P15804317783008990386.a n = (A295391 (n + 1) : ℚ)

end A295391

/-! ## A295391.P16835441040547253902

`1-floor(2-a(n-1)/n-a(n-1))*a(n-1)` with `a(0)=2`
-/

namespace A295391.P16835441040547253902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - ⌊2 - (a (n - 1) : ℚ) / (n : ℚ) - (a (n - 1) : ℚ)⌋ * a (n - 1)

end

end A295391.P16835441040547253902

namespace A295391

/-- `1-floor(2-a(n-1)/n-a(n-1))*a(n-1)` -/
def P16835441040547253902.Spec : Prop :=
  ∀ n, P16835441040547253902.a n = A295391 (n + 1)

end A295391

/-!
# A295392: Numbers k such that 5*10^k + 57 is prime.

The programs for A295392, there is no canonical definition to state claims against.
-/

/-! ## A295392.P14510079194977058472

`eq[A008406(n+1), A118438(A246928(n))]`
-/

namespace A295392.P14510079194977058472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118438 (A246928 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295392.P14510079194977058472

/-! ## A295392.P6560675234331721286

`eq[A077267(n), A226787(A122383(2*n+1))]`
-/

namespace A295392.P6560675234331721286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226787 (A122383 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295392.P6560675234331721286

/-! ## A295392.P7205351294318609911

`lt[A352636((A019555(n+1)+n)²), A352636(2*(n+1))]`
-/

namespace A295392.P7205351294318609911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352636 ((A019555 (n + 1) + (n : ℤ)) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352636 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295392.P7205351294318609911

/-!
# A295393: Numbers k such that 5*10^k + 23 is prime.

The programs for A295393, there is no canonical definition to state claims against.
-/

/-! ## A295393.P4574754435233141920

`∑[A009194(A287731(3^n))]`
-/

namespace A295393.P4574754435233141920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A287731 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295393.P4574754435233141920

/-! ## A295393.P14125327732454473698

`eq[A056239(n+1), A353861(A241089(n+4))]`
-/

namespace A295393.P14125327732454473698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353861 (A241089 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295393.P14125327732454473698

/-!
# A295394: Numbers k such that (2*10^k - 179)/3 is prime.

The programs for A295394, there is no canonical definition to state claims against.
-/

/-! ## A295394.P4052728687977358504

`A205122(A000346(n)-n)`
-/

namespace A295394.P4052728687977358504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205122 (A000346 n - (n : ℤ)).toNat

end

end A295394.P4052728687977358504

/-! ## A295394.P18214715227921684110

`A062504(A000939(n+1)+n)`
-/

namespace A295394.P18214715227921684110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062504 (A000939 (n + 1) + (n : ℤ)).toNat

end

end A295394.P18214715227921684110

/-! ## A295394.P4787511343707210091

`A278161(n)+A067539(2^n)`
-/

namespace A295394.P4787511343707210091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278161 n + A067539 (2 ^ n)

end

end A295394.P4787511343707210091

/-!
# A295398: Numbers k such that (305*10^k + 1)/9 is prime.

The programs for A295398, there is no canonical definition to state claims against.
-/

/-! ## A295398.P295851522226902591

`A002260(A250641(n+1)+10*n)+n+1`
-/

namespace A295398.P295851522226902591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A250641 (n + 1) + (10 * n : ℤ)).toNat + (n + 1 : ℤ)

end

end A295398.P295851522226902591

/-! ## A295398.P18002515619225699116

`A238368(A289409(n))+A238364(n+1)`
-/

namespace A295398.P18002515619225699116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238368 (A289409 n).toNat + A238364 (n + 1)

end

end A295398.P18002515619225699116

/-!
# A295399: Numbers k such that (8*10^k - 611)/9 is prime.

The programs for A295399, there is no canonical definition to state claims against.
-/

/-! ## A295399.P11400188892950976126

`A347453(A062921(n+1)+1)+A000726(n)`
-/

namespace A295399.P11400188892950976126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (A062921 (n + 1) + 1).toNat + A000726 n

end

end A295399.P11400188892950976126

