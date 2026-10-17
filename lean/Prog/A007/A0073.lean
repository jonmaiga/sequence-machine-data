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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A007300: a(1)=2, a(2)=5; for n >= 3, a(n) is smallest number which is uniquely of the form a(j) + a(k) with 1 <= j < k < n.

The programs for A007300, there is no canonical definition to state claims against.
-/

/-! ## A007300.P17982374250842515769

`A135737(∑[n+1]+2)`
-/

namespace A007300.P17982374250842515769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135737 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A007300.P17982374250842515769

/-!
# A007301: From expansion of exp(sin x).

The programs for A007301, there is no canonical definition to state claims against.
-/

/-! ## A007301.P13664758057885645181

`A002017(2*n)`
-/

namespace A007301.P13664758057885645181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 (2 * n)

end

end A007301.P13664758057885645181

/-! ## A007301.P12738043136988605465

`A009206(2*n+1)/(2*n+1)`
-/

namespace A007301.P12738043136988605465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009206 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A007301.P12738043136988605465

/-! ## A007301.P1856017764941361916

`or(1, A002017(A004277(n)))`
-/

namespace A007301.P1856017764941361916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002017 (A004277 n).toNat)

end

end A007301.P1856017764941361916

/-! ## A007301.P2465729471714378531

`or(1, A002017(A005843(n)))`
-/

namespace A007301.P2465729471714378531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002017 (A005843 n).toNat)

end

end A007301.P2465729471714378531

/-! ## A007301.P2766472395704844262

`A009057(n)/A009001(2*n+1)`
-/

namespace A007301.P2766472395704844262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009057 n : ℚ) / (A009001 (2 * n + 1) : ℚ)

end

end A007301.P2766472395704844262

/-!
# A007302: Optimal cost function between two processors at distance n.

The programs for A007302, the canonical program `A007302.P7515534801561219706` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007302 has offset 0).

The definition of A007302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007302.P10657317242952639384

`log2(A380122(n))`
-/

namespace A007302.P10657317242952639384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A380122 n : ℝ)

end

end A007302.P10657317242952639384

namespace A007302

/-- `log2(A380122(n))` -/
def P10657317242952639384.Spec : Prop :=
  ∀ n, P10657317242952639384.a n = (A007302 n : ℝ)

end A007302

/-! ## A007302.P7097975615575788110

`a(A053646(n))+1` with `a(0)=0`
-/

namespace A007302.P7097975615575788110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A053646 n).toNat + 1

end

end A007302.P7097975615575788110

namespace A007302

/-- `a(A053646(n))+1` -/
def P7097975615575788110.Spec : Prop :=
  ∀ n, (P7097975615575788110.a n : ℤ) = A007302 n

end A007302

/-! ## A007302.P7515534801561219706

`A069010(A184617(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007302

/-- `A069010(A184617(n))` -/
def P7515534801561219706.Spec : Prop :=
  ∀ n, P7515534801561219706.a n = A007302 n

theorem P7515534801561219706.correct : P7515534801561219706.Spec := by
  intro n
  simp only [A007302]

end A007302

/-! ## A007302.P3740745238992622576

`A000120(A380122(n)-1)`
-/

namespace A007302.P3740745238992622576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A380122 n - 1).toNat

end

end A007302.P3740745238992622576

namespace A007302

/-- `A000120(A380122(n)-1)` -/
def P3740745238992622576.Spec : Prop :=
  ∀ n, P3740745238992622576.a n = A007302 n

end A007302

/-! ## A007302.P11369961670585870472

`A020944(2*A380122(n))`
-/

namespace A007302.P11369961670585870472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (2 * A380122 n).toNat

end

end A007302.P11369961670585870472

namespace A007302

/-- `A020944(2*A380122(n))` -/
def P11369961670585870472.Spec : Prop :=
  ∀ n, P11369961670585870472.a n = A007302 n

end A007302

/-! ## A007302.P7366756967544015928

`A069010(A178729(n)/2)`
-/

namespace A007302.P7366756967544015928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((A178729 n : ℚ) / 2)).toNat

end

end A007302.P7366756967544015928

namespace A007302

/-- `A069010(A178729(n)/2)` -/
def P7366756967544015928.Spec : Prop :=
  ∀ n, P7366756967544015928.a n = A007302 n

end A007302

/-! ## A007302.P15569229988086223247

`A280737(n+1)+A101660(n)`
-/

namespace A007302.P15569229988086223247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (n + 1) + A101660 n

end

end A007302.P15569229988086223247

namespace A007302

/-- `A280737(n+1)+A101660(n)` -/
def P15569229988086223247.Spec : Prop :=
  ∀ n, P15569229988086223247.a n = A007302 n

end A007302

/-! ## A007302.P14962492926502114383

`A000120(n)-A014081(A318921(n))`
-/

namespace A007302.P14962492926502114383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A014081 (A318921 n).toNat

end

end A007302.P14962492926502114383

namespace A007302

/-- `A000120(n)-A014081(A318921(n))` -/
def P14962492926502114383.Spec : Prop :=
  ∀ n, P14962492926502114383.a n = A007302 n

end A007302

/-! ## A007302.P2171604659515832609

`A000120(A184615(n))+A000120(A184616(n))`
-/

namespace A007302.P2171604659515832609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184615 n).toNat + A000120 (A184616 n).toNat

end

end A007302.P2171604659515832609

namespace A007302

/-- `A000120(A184615(n))+A000120(A184616(n))` -/
def P2171604659515832609.Spec : Prop :=
  ∀ n, P2171604659515832609.a n = A007302 n

end A007302

/-! ## A007302.P2663472551101532459

`A069010(A178729(n))`
-/

namespace A007302.P2663472551101532459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A178729 n).toNat

end

end A007302.P2663472551101532459

namespace A007302

/-- `A069010(A178729(n))` -/
def P2663472551101532459.Spec : Prop :=
  ∀ n, P2663472551101532459.a n = A007302 n

end A007302

/-! ## A007302.P717613028843148151

`A329320(A005351(n))`
-/

namespace A007302.P717613028843148151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A005351 n).toNat

end

end A007302.P717613028843148151

namespace A007302

/-- `A329320(A005351(n))` -/
def P717613028843148151.Spec : Prop :=
  ∀ n, P717613028843148151.a n = A007302 n

end A007302

/-! ## A007302.P14801101878904664040

`A000120(A178729(n)/2)`
-/

namespace A007302.P14801101878904664040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A178729 n : ℚ) / 2)).toNat

end

end A007302.P14801101878904664040

namespace A007302

/-- `A000120(A178729(n)/2)` -/
def P14801101878904664040.Spec : Prop :=
  ∀ n, P14801101878904664040.a n = A007302 n

end A007302

/-! ## A007302.P3344273373990741177

`A000120(2*A184616(n)+n)`
-/

namespace A007302.P3344273373990741177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A184616 n + (n : ℤ)).toNat

end

end A007302.P3344273373990741177

namespace A007302

/-- `A000120(2*A184616(n)+n)` -/
def P3344273373990741177.Spec : Prop :=
  ∀ n, P3344273373990741177.a n = A007302 n

end A007302

/-! ## A007302.P17099130118273966813

`A000120(2*A184615(n)-n)`
-/

namespace A007302.P17099130118273966813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * A184615 n - (n : ℤ)).toNat

end

end A007302.P17099130118273966813

namespace A007302

/-- `A000120(2*A184615(n)-n)` -/
def P17099130118273966813.Spec : Prop :=
  ∀ n, P17099130118273966813.a n = A007302 n

end A007302

/-! ## A007302.P2017716739452538899

`A000120(2*n-A213526(n))`
-/

namespace A007302.P2017716739452538899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((2 * n : ℤ) - A213526 n).toNat

end

end A007302.P2017716739452538899

namespace A007302

/-- `A000120(2*n-A213526(n))` -/
def P2017716739452538899.Spec : Prop :=
  ∀ n, P2017716739452538899.a n = A007302 n

end A007302

/-! ## A007302.P2234030298658924225

`A000120(n-A213526(n)+n)`
-/

namespace A007302.P2234030298658924225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A213526 n + (n : ℤ)).toNat

end

end A007302.P2234030298658924225

namespace A007302

/-- `A000120(n-A213526(n)+n)` -/
def P2234030298658924225.Spec : Prop :=
  ∀ n, P2234030298658924225.a n = A007302 n

end A007302

/-! ## A007302.P13700353347234931800

`A000120(n-(A213526(n)-n))`
-/

namespace A007302.P13700353347234931800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - (A213526 n - (n : ℤ))).toNat

end

end A007302.P13700353347234931800

namespace A007302

/-- `A000120(n-(A213526(n)-n))` -/
def P13700353347234931800.Spec : Prop :=
  ∀ n, P13700353347234931800.a n = A007302 n

end A007302

/-! ## A007302.P11242411358981708362

`A000120(and(n, A178729(n))+n)`
-/

namespace A007302.P11242411358981708362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A178729 n) + (n : ℤ)).toNat

end

end A007302.P11242411358981708362

namespace A007302

/-- `A000120(and(n, A178729(n))+n)` -/
def P11242411358981708362.Spec : Prop :=
  ∀ n, P11242411358981708362.a n = A007302 n

end A007302

/-! ## A007302.P4561055463373551431

`A000120(A184616(n)+A184615(n))`
-/

namespace A007302.P4561055463373551431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184616 n + A184615 n).toNat

end

end A007302.P4561055463373551431

namespace A007302

/-- `A000120(A184616(n)+A184615(n))` -/
def P4561055463373551431.Spec : Prop :=
  ∀ n, P4561055463373551431.a n = A007302 n

end A007302

/-! ## A007302.P4891052534994437893

`A000120(A184616(n)+A184616(n)+n)`
-/

namespace A007302.P4891052534994437893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184616 n + (A184616 n + (n : ℤ))).toNat

end

end A007302.P4891052534994437893

namespace A007302

/-- `A000120(A184616(n)+A184616(n)+n)` -/
def P4891052534994437893.Spec : Prop :=
  ∀ n, P4891052534994437893.a n = A007302 n

end A007302

/-!
# A007304: Sphenic numbers: products of 3 distinct primes.

The programs for A007304, the canonical program `A007304.P8931890627172899564` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007304 has offset 1).

The definition of A007304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007304.P971293483393473122

`sqrt(A162143(n+1))`
-/

namespace A007304.P971293483393473122
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A162143 (n + 1) : ℝ)

end

end A007304.P971293483393473122

namespace A007304

/-- `sqrt(A162143(n+1))` -/
def P971293483393473122.Spec : Prop :=
  ∀ n, P971293483393473122.a n = (A007304 (n + 1) : ℝ)

end A007304

/-! ## A007304.P3185495370379013286

`root(A162144(n+1), 3)`
-/

namespace A007304.P3185495370379013286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A162144 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A007304.P3185495370379013286

namespace A007304

/-- `root(A162144(n+1), 3)` -/
def P3185495370379013286.Spec : Prop :=
  ∀ n, P3185495370379013286.a n = (A007304 (n + 1) : ℝ)

end A007304

/-! ## A007304.P18120465262884355327

`A162144(n+1)/A162143(n+1)`
-/

namespace A007304.P18120465262884355327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162144 (n + 1) : ℚ) / (A162143 (n + 1) : ℚ)

end

end A007304.P18120465262884355327

namespace A007304

/-- `A162144(n+1)/A162143(n+1)` -/
def P18120465262884355327.Spec : Prop :=
  ∀ n, P18120465262884355327.a n = (A007304 (n + 1) : ℚ)

end A007304

/-! ## A007304.P9345230799065149683

`A096917(n+1)*A096918(n+1)*A096919(n+1)`
-/

namespace A007304.P9345230799065149683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096917 (n + 1) * A096918 (n + 1) * A096919 (n + 1)

end

end A007304.P9345230799065149683

namespace A007304

/-- `A096917(n+1)*A096918(n+1)*A096919(n+1)` -/
def P9345230799065149683.Spec : Prop :=
  ∀ n, P9345230799065149683.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P9576101460275193547

`root(A162143(n+1), dr(A056899(n+4)))`
-/

namespace A007304.P9576101460275193547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A162143 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A056899 (n + 4)) : ℝ))

end

end A007304.P9576101460275193547

namespace A007304

/-- `root(A162143(n+1), dr(A056899(n+4)))` -/
def P9576101460275193547.Spec : Prop :=
  ∀ n, P9576101460275193547.a n = (A007304 (n + 1) : ℝ)

end A007304

/-! ## A007304.P3180144527198372095

`filter[A345382(n+1), A008966(#)]`
-/

namespace A007304.P3180144527198372095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A007304.P3180144527198372095

namespace A007304

/-- `filter[A345382(n+1), A008966(#)]` -/
def P3180144527198372095.Spec : Prop :=
  ∀ n, P3180144527198372095.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P6063461673079471023

`filter[A345382(n+1), A252233(#)]`
-/

namespace A007304.P6063461673079471023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A007304.P6063461673079471023

namespace A007304

/-- `filter[A345382(n+1), A252233(#)]` -/
def P6063461673079471023.Spec : Prop :=
  ∀ n, P6063461673079471023.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P2030832344092087737

`filter[A345382(n+1), A323154(#)]`
-/

namespace A007304.P2030832344092087737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A007304.P2030832344092087737

namespace A007304

/-- `filter[A345382(n+1), A323154(#)]` -/
def P2030832344092087737.Spec : Prop :=
  ∀ n, P2030832344092087737.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P8038890838688617139

`filter[A345382(n+1), A340369(#)]`
-/

namespace A007304.P8038890838688617139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A007304.P8038890838688617139

namespace A007304

/-- `filter[A345382(n+1), A340369(#)]` -/
def P8038890838688617139.Spec : Prop :=
  ∀ n, P8038890838688617139.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P6414565859899941099

`filter[A345382(n+1), A353627(#)]`
-/

namespace A007304.P6414565859899941099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A007304.P6414565859899941099

namespace A007304

/-- `filter[A345382(n+1), A353627(#)]` -/
def P6414565859899941099.Spec : Prop :=
  ∀ n, P6414565859899941099.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P15118766056560448139

`filter[A345382(n+1), A354819(#)]`
-/

namespace A007304.P15118766056560448139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A007304.P15118766056560448139

namespace A007304

/-- `filter[A345382(n+1), A354819(#)]` -/
def P15118766056560448139.Spec : Prop :=
  ∀ n, P15118766056560448139.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P3226602412298977568

`filter[A345382(n+1), A354926(#)]`
-/

namespace A007304.P3226602412298977568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A007304.P3226602412298977568

namespace A007304

/-- `filter[A345382(n+1), A354926(#)]` -/
def P3226602412298977568.Spec : Prop :=
  ∀ n, P3226602412298977568.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P14305412828977330044

`filter[A345382(n+1), A359158(#)]`
-/

namespace A007304.P14305412828977330044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A007304.P14305412828977330044

namespace A007304

/-- `filter[A345382(n+1), A359158(#)]` -/
def P14305412828977330044.Spec : Prop :=
  ∀ n, P14305412828977330044.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P6613216214239826080

`filter[A345382(n+1), A359471(#)]`
-/

namespace A007304.P6613216214239826080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A007304.P6613216214239826080

namespace A007304

/-- `filter[A345382(n+1), A359471(#)]` -/
def P6613216214239826080.Spec : Prop :=
  ∀ n, P6613216214239826080.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P10345725280462013930

`filter[A345382(n+1), A359834(#)]`
-/

namespace A007304.P10345725280462013930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A007304.P10345725280462013930

namespace A007304

/-- `filter[A345382(n+1), A359834(#)]` -/
def P10345725280462013930.Spec : Prop :=
  ∀ n, P10345725280462013930.a n = A007304 (n + 1)

end A007304

/-! ## A007304.P8931890627172899564

`eq[1, A354926(n+2)]+2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A007304

/-- `eq[1, A354926(n+2)]+2` -/
def P8931890627172899564.Spec : Prop :=
  ∀ n, (P8931890627172899564.a n : ℤ) = A007304 (n + 1)

theorem P8931890627172899564.correct : P8931890627172899564.Spec := by
  intro n
  simp only [A007304, Nat.add_sub_cancel]

end A007304

/-! ## A007304.P10518730479868261419

`eq[10, A077462(n)]`
-/

namespace A007304.P10518730479868261419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007304.P10518730479868261419

namespace A007304

/-- `eq[10, A077462(n)]` -/
def P10518730479868261419.Spec : Prop :=
  ∀ n, (P10518730479868261419.a n : ℤ) = A007304 (n + 1)

end A007304

/-! ## A007304.P12007971311330586273

`lt[A000005(n+1), A001221(n+1)²]+1`
-/

namespace A007304.P12007971311330586273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A007304.P12007971311330586273

namespace A007304

/-- `lt[A000005(n+1), A001221(n+1)²]+1` -/
def P12007971311330586273.Spec : Prop :=
  ∀ n, (P12007971311330586273.a n : ℤ) = A007304 (n + 1)

end A007304

/-! ## A007304.P1580384973472093971

`eq[A000005(A000005(n+1)), A281116(n+1)]+1`
-/

namespace A007304.P1580384973472093971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A007304.P1580384973472093971

namespace A007304

/-- `eq[A000005(A000005(n+1)), A281116(n+1)]+1` -/
def P1580384973472093971.Spec : Prop :=
  ∀ n, (P1580384973472093971.a n : ℤ) = A007304 (n + 1)

end A007304

/-! ## A007304.P6139272774718325014

`filter[A225228(n+1), A008966(#)]`
-/

namespace A007304.P6139272774718325014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A007304.P6139272774718325014

namespace A007304

/-- `filter[A225228(n+1), A008966(#)]` -/
def P6139272774718325014.Spec : Prop :=
  ∀ n, P6139272774718325014.a n = A007304 (n + 1)

end A007304

/-!
# A007305: Numerators of Farey (or Stern-Brocot) tree fractions.

The programs for A007305, the canonical program `A007305.P14904390197358887400` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007305 has offset 0).

The definition of A007305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007305.P15583824314793604298

`A049448(n)-A007306(n)`
-/

namespace A007305.P15583824314793604298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n - A007306 n

end

end A007305.P15583824314793604298

namespace A007305

/-- `A049448(n)-A007306(n)` -/
def P15583824314793604298.Spec : Prop :=
  ∀ n, P15583824314793604298.a n = A007305 n

end A007305

/-! ## A007305.P3689358685188309495

`A049465(n)-A049448(n)`
-/

namespace A007305.P3689358685188309495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049465 n - A049448 n

end

end A007305.P3689358685188309495

namespace A007305

/-- `A049465(n)-A049448(n)` -/
def P3689358685188309495.Spec : Prop :=
  ∀ n, P3689358685188309495.a n = A007305 n

end A007305

/-! ## A007305.P5547187683172855213

`A049466(n)-A049465(n)`
-/

namespace A007305.P5547187683172855213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049466 n - A049465 n

end

end A007305.P5547187683172855213

namespace A007305

/-- `A049466(n)-A049465(n)` -/
def P5547187683172855213.Spec : Prop :=
  ∀ n, P5547187683172855213.a n = A007305 n

end A007305

/-! ## A007305.P8522473328879428999

`A049467(n)-A049466(n)`
-/

namespace A007305.P8522473328879428999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049467 n - A049466 n

end

end A007305.P8522473328879428999

namespace A007305

/-- `A049467(n)-A049466(n)` -/
def P8522473328879428999.Spec : Prop :=
  ∀ n, P8522473328879428999.a n = A007305 n

end A007305

/-! ## A007305.P14824893108863067982

`A049449(n)/A007306(n)`
-/

namespace A007305.P14824893108863067982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049449 n : ℚ) / (A007306 n : ℚ)

end

end A007305.P14824893108863067982

namespace A007305

/-- `A049449(n)/A007306(n)` -/
def P14824893108863067982.Spec : Prop :=
  ∀ n, P14824893108863067982.a n = (A007305 n : ℚ)

end A007305

/-! ## A007305.P17424445831597741516

`A049468(n)-2*A007306(n)`
-/

namespace A007305.P17424445831597741516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049468 n - 2 * A007306 n

end

end A007305.P17424445831597741516

namespace A007305

/-- `A049468(n)-2*A007306(n)` -/
def P17424445831597741516.Spec : Prop :=
  ∀ n, P17424445831597741516.a n = A007305 n

end A007305

/-! ## A007305.P1641918775904420172

`2*A049448(n)-A049468(n)`
-/

namespace A007305.P1641918775904420172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049448 n - A049468 n

end

end A007305.P1641918775904420172

namespace A007305

/-- `2*A049448(n)-A049468(n)` -/
def P1641918775904420172.Spec : Prop :=
  ∀ n, P1641918775904420172.a n = A007305 n

end A007305

/-! ## A007305.P2095005778786087045

`(A049465(n)-A007306(n))/2`
-/

namespace A007305.P2095005778786087045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049465 n - A007306 n : ℚ) / 2

end

end A007305.P2095005778786087045

namespace A007305

/-- `(A049465(n)-A007306(n))/2` -/
def P2095005778786087045.Spec : Prop :=
  ∀ n, P2095005778786087045.a n = (A007305 n : ℚ)

end A007305

/-! ## A007305.P14836315632369255438

`(A049466(n)-A049448(n))/2`
-/

namespace A007305.P14836315632369255438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049466 n - A049448 n : ℚ) / 2

end

end A007305.P14836315632369255438

namespace A007305

/-- `(A049466(n)-A049448(n))/2` -/
def P14836315632369255438.Spec : Prop :=
  ∀ n, P14836315632369255438.a n = (A007305 n : ℚ)

end A007305

/-! ## A007305.P3807387678960120754

`gcd(A049449(n), A119272(n+1))`
-/

namespace A007305.P3807387678960120754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049449 n) (A119272 (n + 1))

end

end A007305.P3807387678960120754

namespace A007305

/-- `gcd(A049449(n), A119272(n+1))` -/
def P3807387678960120754.Spec : Prop :=
  ∀ n, (P3807387678960120754.a n : ℤ) = A007305 n

end A007305

/-! ## A007305.P2714249043070757991

`A001281(A049466(n)-A049448(n))`
-/

namespace A007305.P2714249043070757991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049466 n - A049448 n).toNat

end

end A007305.P2714249043070757991

namespace A007305

/-- `A001281(A049466(n)-A049448(n))` -/
def P2714249043070757991.Spec : Prop :=
  ∀ n, P2714249043070757991.a n = A007305 n

end A007305

/-! ## A007305.P14018984873645211493

`A004526(A049466(n)-A049448(n))`
-/

namespace A007305.P14018984873645211493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049466 n - A049448 n).toNat

end

end A007305.P14018984873645211493

namespace A007305

/-- `A004526(A049466(n)-A049448(n))` -/
def P14018984873645211493.Spec : Prop :=
  ∀ n, P14018984873645211493.a n = A007305 n

end A007305

/-! ## A007305.P4816746520875300869

`A025480(A049466(n)-A049448(n))`
-/

namespace A007305.P4816746520875300869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A049466 n - A049448 n).toNat

end

end A007305.P4816746520875300869

namespace A007305

/-- `A025480(A049466(n)-A049448(n))` -/
def P4816746520875300869.Spec : Prop :=
  ∀ n, P4816746520875300869.a n = A007305 n

end A007305

/-! ## A007305.P10705638318841855096

`A078898(A049465(n)-A007306(n))`
-/

namespace A007305.P10705638318841855096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A049465 n - A007306 n).toNat

end

end A007305.P10705638318841855096

namespace A007305

/-- `A078898(A049465(n)-A007306(n))` -/
def P10705638318841855096.Spec : Prop :=
  ∀ n, P10705638318841855096.a n = A007305 n

end A007305

/-! ## A007305.P5563121775684687706

`A007306(n)+A049465(n)-A049468(n)`
-/

namespace A007305.P5563121775684687706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n + (A049465 n - A049468 n)

end

end A007305.P5563121775684687706

namespace A007305

/-- `A007306(n)+A049465(n)-A049468(n)` -/
def P5563121775684687706.Spec : Prop :=
  ∀ n, P5563121775684687706.a n = A007305 n

end A007305

/-! ## A007305.P12134446896808020638

`A078898(A049465(n)-∑{d}[2*n-1, A317839(#)])`
-/

namespace A007305.P12134446896808020638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A049465 n - ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d).toNat

end

end A007305.P12134446896808020638

namespace A007305

/-- `A078898(A049465(n)-∑{d}[2*n-1, A317839(#)])` -/
def P12134446896808020638.Spec : Prop :=
  ∀ n, P12134446896808020638.a n = A007305 n

end A007305

/-! ## A007305.P14904390197358887400

`A007306(A004761(n+1)+1)-A007306(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A007305

/-- `A007306(A004761(n+1)+1)-A007306(n)` -/
def P14904390197358887400.Spec : Prop :=
  ∀ n, P14904390197358887400.a n = A007305 n

theorem P14904390197358887400.correct : P14904390197358887400.Spec := by
  intro n
  simp only [A007305]

end A007305

/-! ## A007305.P3324023338030404875

`A057431(2*n)`
-/

namespace A007305.P3324023338030404875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n)

end

end A007305.P3324023338030404875

namespace A007305

/-- `A057431(2*n)` -/
def P3324023338030404875.Spec : Prop :=
  ∀ n, P3324023338030404875.a n = A007305 n

end A007305

/-! ## A007305.P14302096730662982849

`A057431(n+n)%A017413(n)`
-/

namespace A007305.P14302096730662982849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057431 (n + n)) (A017413 n)

end

end A007305.P14302096730662982849

namespace A007305

/-- `A057431(n+n)%A017413(n)` -/
def P14302096730662982849.Spec : Prop :=
  ∀ n, P14302096730662982849.a n = A007305 n

end A007305

/-! ## A007305.P10659077918495663736

`A049448(n)-A002487(A004280(n+1))`
-/

namespace A007305.P10659077918495663736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n - A002487 (A004280 (n + 1)).toNat

end

end A007305.P10659077918495663736

namespace A007305

/-- `A049448(n)-A002487(A004280(n+1))` -/
def P10659077918495663736.Spec : Prop :=
  ∀ n, P10659077918495663736.a n = A007305 n

end A007305

/-!
# A007306: Denominators of Farey tree fractions (i.e., the Stern-Brocot subtree in the range [0,1]).

The programs for A007306, the canonical program `A007306.P17183682227013142410` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007306 has offset 0).

The definition of A007306 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A007306.P17183682227013142410

`a(A003602(n-1))+a(A003602(n))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A007306

/-- `a(A003602(n-1))+a(A003602(n))` -/
def P17183682227013142410.Spec : Prop :=
  ∀ n, (P17183682227013142410.a n : ℤ) = A007306 n

theorem P17183682227013142410.correct : P17183682227013142410.Spec := by
  intro n
  simp only [A007306]

end A007306

/-! ## A007306.P536298299333561762

`a(n-1)+A002487(n-1)-2*A288002(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A007306.P536298299333561762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A002487 (n - 1) - 2 * A288002 (n - 1)

end

end A007306.P536298299333561762

namespace A007306

/-- `a(n-1)+A002487(n-1)-2*A288002(n-1)` -/
def P536298299333561762.Spec : Prop :=
  ∀ n, P536298299333561762.a n = A007306 n

end A007306

/-! ## A007306.P4237487441186400644

`1-A309256(n)+n`
-/

namespace A007306.P4237487441186400644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A309256 n + (n : ℤ)

end

end A007306.P4237487441186400644

namespace A007306

/-- `1-A309256(n)+n` -/
def P4237487441186400644.Spec : Prop :=
  ∀ n, P4237487441186400644.a n = A007306 n

end A007306

/-! ## A007306.P17083697094768917561

`A049448(n)-A007305(n)`
-/

namespace A007306.P17083697094768917561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 n - A007305 n

end

end A007306.P17083697094768917561

namespace A007306

/-- `A049448(n)-A007305(n)` -/
def P17083697094768917561.Spec : Prop :=
  ∀ n, P17083697094768917561.a n = A007306 n

end A007306

/-! ## A007306.P9169580948254024357

`A049468(n)-A049448(n)`
-/

namespace A007306.P9169580948254024357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049468 n - A049448 n

end

end A007306.P9169580948254024357

namespace A007306

/-- `A049468(n)-A049448(n)` -/
def P9169580948254024357.Spec : Prop :=
  ∀ n, P9169580948254024357.a n = A007306 n

end A007306

/-! ## A007306.P11650327625448673545

`A049465(n)-2*A007305(n)`
-/

namespace A007306.P11650327625448673545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049465 n - 2 * A007305 n

end

end A007306.P11650327625448673545

namespace A007306

/-- `A049465(n)-2*A007305(n)` -/
def P11650327625448673545.Spec : Prop :=
  ∀ n, P11650327625448673545.a n = A007306 n

end A007306

/-! ## A007306.P1810351081622511924

`2*A049448(n)-A049465(n)`
-/

namespace A007306.P1810351081622511924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049448 n - A049465 n

end

end A007306.P1810351081622511924

namespace A007306

/-- `2*A049448(n)-A049465(n)` -/
def P1810351081622511924.Spec : Prop :=
  ∀ n, P1810351081622511924.a n = A007306 n

end A007306

/-! ## A007306.P14783842025034015847

`(A049468(n)-A007305(n))/2`
-/

namespace A007306.P14783842025034015847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049468 n - A007305 n : ℚ) / 2

end

end A007306.P14783842025034015847

namespace A007306

/-- `(A049468(n)-A007305(n))/2` -/
def P14783842025034015847.Spec : Prop :=
  ∀ n, P14783842025034015847.a n = (A007306 n : ℚ)

end A007306

/-! ## A007306.P7927910269822275274

`A002487(abs(1-n))+A002487(n)`
-/

namespace A007306.P7927910269822275274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 |1 - (n : ℤ)|.toNat + A002487 n

end

end A007306.P7927910269822275274

namespace A007306

/-- `A002487(abs(1-n))+A002487(n)` -/
def P7927910269822275274.Spec : Prop :=
  ∀ n, P7927910269822275274.a n = A007306 n

end A007306

/-! ## A007306.P9877995616123523257

`A049465(n)-A005843(A007305(n))`
-/

namespace A007306.P9877995616123523257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049465 n - A005843 (A007305 n).toNat

end

end A007306.P9877995616123523257

namespace A007306

/-- `A049465(n)-A005843(A007305(n))` -/
def P9877995616123523257.Spec : Prop :=
  ∀ n, P9877995616123523257.a n = A007306 n

end A007306

/-! ## A007306.P2813107994200344321

`A004277(A049448(n))-A049465(n)`
-/

namespace A007306.P2813107994200344321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049448 n).toNat - A049465 n

end

end A007306.P2813107994200344321

namespace A007306

/-- `A004277(A049448(n))-A049465(n)` -/
def P2813107994200344321.Spec : Prop :=
  ∀ n, P2813107994200344321.a n = A007306 n

end A007306

/-! ## A007306.P11090805346366189670

`A007305(n)+A049468(n)-A049465(n)`
-/

namespace A007306.P11090805346366189670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n + (A049468 n - A049465 n)

end

end A007306.P11090805346366189670

namespace A007306

/-- `A007305(n)+A049468(n)-A049465(n)` -/
def P11090805346366189670.Spec : Prop :=
  ∀ n, P11090805346366189670.a n = A007306 n

end A007306

/-! ## A007306.P8087932609111671958

`A002487(abs(1-2*n))`
-/

namespace A007306.P8087932609111671958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 |1 - (2 * n : ℤ)|.toNat

end

end A007306.P8087932609111671958

namespace A007306

/-- `A002487(abs(1-2*n))` -/
def P8087932609111671958.Spec : Prop :=
  ∀ n, P8087932609111671958.a n = A007306 n

end A007306

/-! ## A007306.P8823147239128134830

`A057432(A004273(n))`
-/

namespace A007306.P8823147239128134830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (A004273 n).toNat

end

end A007306.P8823147239128134830

namespace A007306

/-- `A057432(A004273(n))` -/
def P8823147239128134830.Spec : Prop :=
  ∀ n, P8823147239128134830.a n = A007306 n

end A007306

/-! ## A007306.P11088742384357079656

`A114214(A004275(n))`
-/

namespace A007306.P11088742384357079656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A004275 n).toNat

end

end A007306.P11088742384357079656

namespace A007306

/-- `A114214(A004275(n))` -/
def P11088742384357079656.Spec : Prop :=
  ∀ n, P11088742384357079656.a n = A007306 n

end A007306

/-! ## A007306.P14136775253015899780

`A114214(A092535(n))`
-/

namespace A007306.P14136775253015899780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A092535 n).toNat

end

end A007306.P14136775253015899780

namespace A007306

/-- `A114214(A092535(n))` -/
def P14136775253015899780.Spec : Prop :=
  ∀ n, P14136775253015899780.a n = A007306 n

end A007306

/-! ## A007306.P5389595018868696023

`A114214(A163985(n))`
-/

namespace A007306.P5389595018868696023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A163985 n).toNat

end

end A007306.P5389595018868696023

namespace A007306

/-- `A114214(A163985(n))` -/
def P5389595018868696023.Spec : Prop :=
  ∀ n, P5389595018868696023.a n = A007306 n

end A007306

/-! ## A007306.P5450512573302405428

`A114214(A058992(n+1))`
-/

namespace A007306.P5450512573302405428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A058992 (n + 1)).toNat

end

end A007306.P5450512573302405428

namespace A007306

/-- `A114214(A058992(n+1))` -/
def P5450512573302405428.Spec : Prop :=
  ∀ n, P5450512573302405428.a n = A007306 n

end A007306

/-! ## A007306.P11168646355997253192

`A057432(A008486(n)-(n+1))`
-/

namespace A007306.P11168646355997253192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (A008486 n - (n + 1 : ℤ)).toNat

end

end A007306.P11168646355997253192

namespace A007306

/-- `A057432(A008486(n)-(n+1))` -/
def P11168646355997253192.Spec : Prop :=
  ∀ n, P11168646355997253192.a n = A007306 n

end A007306

/-! ## A007306.P14445447004759749006

`A057432(A008486(n)-1-n)`
-/

namespace A007306.P14445447004759749006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (A008486 n - 1 - (n : ℤ)).toNat

end

end A007306.P14445447004759749006

namespace A007306

/-- `A057432(A008486(n)-1-n)` -/
def P14445447004759749006.Spec : Prop :=
  ∀ n, P14445447004759749006.a n = A007306 n

end A007306

/-!
# A007307: a(n) = a(n-2) + a(n-3), with a(0) = 0, a(1) = 1, a(2) = 2.

The programs for A007307, the canonical program `A007307.P1862521173156794449` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007307 has offset 0).

The definition of A007307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A007307.P1862521173156794449`, by `A007307.P1862521173156794449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007307.P1862521173156794449

`a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007307

/-- `a(n-2)+a(n-3)` -/
def P1862521173156794449.Spec : Prop :=
  ∀ n, (P1862521173156794449.a n : ℤ) = A007307 n

theorem P1862521173156794449.correct : P1862521173156794449.Spec := by
  intro n
  simp only [A007307]

end A007307

/-! ## A007307.P11098032735676297048

`(A000931(n+1)+A001608(n+1))/2`
-/

namespace A007307.P11098032735676297048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000931 (n + 1) + A001608 (n + 1) : ℚ) / 2

end

end A007307.P11098032735676297048

namespace A007307

/-- `(A000931(n+1)+A001608(n+1))/2` -/
def P11098032735676297048.Spec : Prop :=
  ∀ n, P11098032735676297048.a n = (A007307 n : ℚ)

end A007307

/-! ## A007307.P5493491231247713974

`a(n-2)-floor(-a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A007307.P5493491231247713974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A007307.P5493491231247713974

namespace A007307

/-- `a(n-2)-floor(-a(n-3))` -/
def P5493491231247713974.Spec : Prop :=
  ∀ n, P5493491231247713974.a n = A007307 n

end A007307

/-! ## A007307.P14170861368919776760

`a(n-2)-ceil(-a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A007307.P14170861368919776760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A007307.P14170861368919776760

namespace A007307

/-- `a(n-2)-ceil(-a(n-3))` -/
def P14170861368919776760.Spec : Prop :=
  ∀ n, P14170861368919776760.a n = A007307 n

end A007307

/-! ## A007307.P13876332280360884369

`a(n-2)-round(-a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A007307.P13876332280360884369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A007307.P13876332280360884369

namespace A007307

/-- `a(n-2)-round(-a(n-3))` -/
def P13876332280360884369.Spec : Prop :=
  ∀ n, P13876332280360884369.a n = A007307 n

end A007307

/-! ## A007307.P3817854694710184375

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A007307.P3817854694710184375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 1] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A007307.P3817854694710184375

namespace A007307

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P3817854694710184375.Spec : Prop :=
  ∀ n, P3817854694710184375.a n = A007307 n

end A007307

/-! ## A007307.P17233861940986019476

`abs(A109248(n+4))`
-/

namespace A007307.P17233861940986019476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109248 (n + 4)|

end

end A007307.P17233861940986019476

namespace A007307

/-- `abs(A109248(n+4))` -/
def P17233861940986019476.Spec : Prop :=
  ∀ n, P17233861940986019476.a n = A007307 n

end A007307

/-! ## A007307.P1365127309889423309

`A133034(n)+∑[A000931(n)]`
-/

namespace A007307.P1365127309889423309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007307.P1365127309889423309

namespace A007307

/-- `A133034(n)+∑[A000931(n)]` -/
def P1365127309889423309.Spec : Prop :=
  ∀ n, P1365127309889423309.a n = A007307 n

end A007307

/-! ## A007307.P11346388545963678548

`A134816(n+1)+A133034(n)`
-/

namespace A007307.P11346388545963678548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + A133034 n

end

end A007307.P11346388545963678548

namespace A007307

/-- `A134816(n+1)+A133034(n)` -/
def P11346388545963678548.Spec : Prop :=
  ∀ n, P11346388545963678548.a n = A007307 n

end A007307

/-! ## A007307.P12481244069631867741

`A182097(n+2)+A133034(n)`
-/

namespace A007307.P12481244069631867741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2) + A133034 n

end

end A007307.P12481244069631867741

namespace A007307

/-- `A182097(n+2)+A133034(n)` -/
def P12481244069631867741.Spec : Prop :=
  ∀ n, P12481244069631867741.a n = A007307 n

end A007307

/-! ## A007307.P5033671225336057995

`A134816(n+2)-A000931(n)`
-/

namespace A007307.P5033671225336057995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) - A000931 n

end

end A007307.P5033671225336057995

namespace A007307

/-- `A134816(n+2)-A000931(n)` -/
def P5033671225336057995.Spec : Prop :=
  ∀ n, P5033671225336057995.a n = A007307 n

end A007307

/-! ## A007307.P4961380572233335426

`A276276(n+2)-A078027(n)`
-/

namespace A007307.P4961380572233335426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276276 (n + 2) - A078027 n

end

end A007307.P4961380572233335426

namespace A007307

/-- `A276276(n+2)-A078027(n)` -/
def P4961380572233335426.Spec : Prop :=
  ∀ n, P4961380572233335426.a n = A007307 n

end A007307

/-! ## A007307.P10670254159518905433

`A182097(n+3)-A000931(n)`
-/

namespace A007307.P10670254159518905433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 3) - A000931 n

end

end A007307.P10670254159518905433

namespace A007307

/-- `A182097(n+3)-A000931(n)` -/
def P10670254159518905433.Spec : Prop :=
  ∀ n, P10670254159518905433.a n = A007307 n

end A007307

/-! ## A007307.P10101636267474876856

`A000931(n+6)-A000931(n)`
-/

namespace A007307.P10101636267474876856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 6) - A000931 n

end

end A007307.P10101636267474876856

namespace A007307

/-- `A000931(n+6)-A000931(n)` -/
def P10101636267474876856.Spec : Prop :=
  ∀ n, P10101636267474876856.a n = A007307 n

end A007307

/-! ## A007307.P10209030737194603888

`A133034(n)+A133034(n+9)`
-/

namespace A007307.P10209030737194603888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 n + A133034 (n + 9)

end

end A007307.P10209030737194603888

namespace A007307

/-- `A133034(n)+A133034(n+9)` -/
def P10209030737194603888.Spec : Prop :=
  ∀ n, P10209030737194603888.a n = A007307 n

end A007307

/-! ## A007307.P15337531005680687090

`A291289(n+1)+A000931(n+2)`
-/

namespace A007307.P15337531005680687090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 (n + 1) + A000931 (n + 2)

end

end A007307.P15337531005680687090

namespace A007307

/-- `A291289(n+1)+A000931(n+2)` -/
def P15337531005680687090.Spec : Prop :=
  ∀ n, P15337531005680687090.a n = A007307 n

end A007307

/-! ## A007307.P18121587931838567811

`A182097(n+1)+A078027(n+3)`
-/

namespace A007307.P18121587931838567811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 1) + A078027 (n + 3)

end

end A007307.P18121587931838567811

namespace A007307

/-- `A182097(n+1)+A078027(n+3)` -/
def P18121587931838567811.Spec : Prop :=
  ∀ n, P18121587931838567811.a n = A007307 n

end A007307

/-! ## A007307.P14734713016402398561

`A134816(n+2)-A078027(n+2)`
-/

namespace A007307.P14734713016402398561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) - A078027 (n + 2)

end

end A007307.P14734713016402398561

namespace A007307

/-- `A134816(n+2)-A078027(n+2)` -/
def P14734713016402398561.Spec : Prop :=
  ∀ n, P14734713016402398561.a n = A007307 n

end A007307

/-! ## A007307.P14714228624401507031

`A134816(n+2)-Δ[A052954(n+1)]`
-/

namespace A007307.P14714228624401507031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) - (f1 (n + 1) - f1 n)

end

end A007307.P14714228624401507031

namespace A007307

/-- `A134816(n+2)-Δ[A052954(n+1)]` -/
def P14714228624401507031.Spec : Prop :=
  ∀ n, P14714228624401507031.a n = A007307 n

end A007307

/-!
# A007309: a(n) = a(n-2) + a(n-3), with a(0) = 0, a(1) = 1, a(2) = 4.

The programs for A007309, the canonical program `A007309.P17505891321939490130` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007309 has offset 0).

The definition of A007309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A007309.P17505891321939490130`, by `A007309.P17505891321939490130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A007309.P17505891321939490130

`a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007309

/-- `a(n-2)+a(n-3)` -/
def P17505891321939490130.Spec : Prop :=
  ∀ n, (P17505891321939490130.a n : ℤ) = A007309 n

theorem P17505891321939490130.correct : P17505891321939490130.Spec := by
  intro n
  simp only [A007309]

end A007309

/-! ## A007309.P8047709337789677775

`a(n-2)-floor(-a(n-3))` with `a(0)=0, a(1)=1, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A007309.P8047709337789677775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A007309.P8047709337789677775

namespace A007309

/-- `a(n-2)-floor(-a(n-3))` -/
def P8047709337789677775.Spec : Prop :=
  ∀ n, P8047709337789677775.a n = A007309 n

end A007309

/-! ## A007309.P4934027797085785779

`a(n-2)-ceil(-a(n-3))` with `a(0)=0, a(1)=1, a(2)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A007309.P4934027797085785779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A007309.P4934027797085785779

namespace A007309

/-- `a(n-2)-ceil(-a(n-3))` -/
def P4934027797085785779.Spec : Prop :=
  ∀ n, P4934027797085785779.a n = A007309 n

end A007309

/-! ## A007309.P14449121014591568815

`abs(Δ[a(n-2)-a(n-3)])` with `a(0)=3, a(1)=3, a(2)=4`
-/

namespace A007309.P14449121014591568815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 4] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A007309.P14449121014591568815

namespace A007309

/-- `abs(Δ[a(n-2)-a(n-3)])` -/
def P14449121014591568815.Spec : Prop :=
  ∀ n, P14449121014591568815.a n = A007309 n

end A007309

/-! ## A007309.P153404792360890856

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=4, a(3)=1`
-/

namespace A007309.P153404792360890856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 1] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A007309.P153404792360890856

namespace A007309

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P153404792360890856.Spec : Prop :=
  ∀ n, P153404792360890856.a n = A007309 n

end A007309

/-! ## A007309.P5853018197639613033

`A141038(n+1)+A133034(n)`
-/

namespace A007309.P5853018197639613033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (n + 1) + A133034 n

end

end A007309.P5853018197639613033

namespace A007309

/-- `A141038(n+1)+A133034(n)` -/
def P5853018197639613033.Spec : Prop :=
  ∀ n, P5853018197639613033.a n = A007309 n

end A007309

/-! ## A007309.P12800273767335313827

`A000931(n+1)+A007307(n)+A000931(n+1)`
-/

namespace A007309.P12800273767335313827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A007307 n + A000931 (n + 1))

end

end A007309.P12800273767335313827

namespace A007309

/-- `A000931(n+1)+A007307(n)+A000931(n+1)` -/
def P12800273767335313827.Spec : Prop :=
  ∀ n, P12800273767335313827.a n = A007309 n

end A007309

/-! ## A007309.P4258118914775691674

`A000931(n+1)+A141038(n+1)-A000931(n)`
-/

namespace A007309.P4258118914775691674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A141038 (n + 1) - A000931 n)

end

end A007309.P4258118914775691674

namespace A007309

/-- `A000931(n+1)+A141038(n+1)-A000931(n)` -/
def P4258118914775691674.Spec : Prop :=
  ∀ n, P4258118914775691674.a n = A007309 n

end A007309

/-! ## A007309.P7499021914724985611

`A000931(n+1)+A134816(n+2)+A133034(n)`
-/

namespace A007309.P7499021914724985611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A134816 (n + 2) + A133034 n)

end

end A007309.P7499021914724985611

namespace A007309

/-- `A000931(n+1)+A134816(n+2)+A133034(n)` -/
def P7499021914724985611.Spec : Prop :=
  ∀ n, P7499021914724985611.a n = A007309 n

end A007309

/-! ## A007309.P17884723975270168125

`A000931(n+1)+A276276(n+2)+A078027(n+1)`
-/

namespace A007309.P17884723975270168125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 1) + (A276276 (n + 2) + A078027 (n + 1))

end

end A007309.P17884723975270168125

namespace A007309

/-- `A000931(n+1)+A276276(n+2)+A078027(n+1)` -/
def P17884723975270168125.Spec : Prop :=
  ∀ n, P17884723975270168125.a n = A007309 n

end A007309

/-! ## A007309.P817526883016464552

`A007307(n+1)+A276276(n+2)-A276276(n+1)`
-/

namespace A007309.P817526883016464552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (n + 1) + (A276276 (n + 2) - A276276 (n + 1))

end

end A007309.P817526883016464552

namespace A007309

/-- `A007307(n+1)+A276276(n+2)-A276276(n+1)` -/
def P817526883016464552.Spec : Prop :=
  ∀ n, P817526883016464552.a n = A007309 n

end A007309

/-! ## A007309.P6675693111036051233

`A084338(n+1)-Δ[A007307(n)]`
-/

namespace A007309.P6675693111036051233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007309.P6675693111036051233

namespace A007309

/-- `A084338(n+1)-Δ[A007307(n)]` -/
def P6675693111036051233.Spec : Prop :=
  ∀ n, P6675693111036051233.a n = A007309 n

end A007309

/-! ## A007309.P7244160402736922867

`A001608(n+1)-A133034(n+1)`
-/

namespace A007309.P7244160402736922867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 1) - A133034 (n + 1)

end

end A007309.P7244160402736922867

namespace A007309

/-- `A001608(n+1)-A133034(n+1)` -/
def P7244160402736922867.Spec : Prop :=
  ∀ n, P7244160402736922867.a n = A007309 n

end A007309

/-! ## A007309.P8902135833085495589

`A276477(n+1)-2*A000931(n)`
-/

namespace A007309.P8902135833085495589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276477 (n + 1) - 2 * A000931 n

end

end A007309.P8902135833085495589

namespace A007309

/-- `A276477(n+1)-2*A000931(n)` -/
def P8902135833085495589.Spec : Prop :=
  ∀ n, P8902135833085495589.a n = A007309 n

end A007309

/-! ## A007309.P13777722924667396198

`A001608(n+1)+A078027(n)-A000931(n)`
-/

namespace A007309.P13777722924667396198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 1) + (A078027 n - A000931 n)

end

end A007309.P13777722924667396198

namespace A007309

/-- `A001608(n+1)+A078027(n)-A000931(n)` -/
def P13777722924667396198.Spec : Prop :=
  ∀ n, P13777722924667396198.a n = A007309 n

end A007309

/-! ## A007309.P5234326098158523099

`A084338(n+1)+A007307(n)-A007307(n+1)`
-/

namespace A007309.P5234326098158523099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) + (A007307 n - A007307 (n + 1))

end

end A007309.P5234326098158523099

namespace A007309

/-- `A084338(n+1)+A007307(n)-A007307(n+1)` -/
def P5234326098158523099.Spec : Prop :=
  ∀ n, P5234326098158523099.a n = A007309 n

end A007309

/-! ## A007309.P14745199030730854888

`A078027(n+1)+A276275(n+2)-A000931(n)`
-/

namespace A007309.P14745199030730854888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1) + (A276275 (n + 2) - A000931 n)

end

end A007309.P14745199030730854888

namespace A007309

/-- `A078027(n+1)+A276275(n+2)-A000931(n)` -/
def P14745199030730854888.Spec : Prop :=
  ∀ n, P14745199030730854888.a n = A007309 n

end A007309

/-! ## A007309.P12286759782406754098

`A084338(n+1)+A134816(n+1)-A276275(n+1)`
-/

namespace A007309.P12286759782406754098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1) + (A134816 (n + 1) - A276275 (n + 1))

end

end A007309.P12286759782406754098

namespace A007309

/-- `A084338(n+1)+A134816(n+1)-A276275(n+1)` -/
def P12286759782406754098.Spec : Prop :=
  ∀ n, P12286759782406754098.a n = A007309 n

end A007309

/-! ## A007309.P11399968096365520508

`A164001(n+2)-A276275(n+1)`
-/

namespace A007309.P11399968096365520508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 2) - A276275 (n + 1)

end

end A007309.P11399968096365520508

namespace A007309

/-- `A164001(n+2)-A276275(n+1)` -/
def P11399968096365520508.Spec : Prop :=
  ∀ n, P11399968096365520508.a n = A007309 n

end A007309

/-!
# A007310: Numbers congruent to 1 or 5 mod 6.

The programs for A007310, the canonical program `A007310.P9946423629536973135` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007310 has offset 1).

The definition of A007310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007310.P9946423629536973135

`a(n-2)+6` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007310

/-- `a(n-2)+6` -/
def P9946423629536973135.Spec : Prop :=
  ∀ n, (P9946423629536973135.a n : ℤ) = A007310 (n + 1)

theorem P9946423629536973135.correct : P9946423629536973135.Spec := by
  intro n
  simp only [A007310, Nat.add_sub_cancel]

end A007310

/-! ## A007310.P6908935633782632713

`6*n-a(n-1)` with `a(0)=1`
-/

namespace A007310.P6908935633782632713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n : ℤ) - a (n - 1)

end

end A007310.P6908935633782632713

namespace A007310

/-- `6*n-a(n-1)` -/
def P6908935633782632713.Spec : Prop :=
  ∀ n, P6908935633782632713.a n = A007310 (n + 1)

end A007310

/-! ## A007310.P15995189386699949456

`(6*A062717(n+1)+1)^(1/2)`
-/

namespace A007310.P15995189386699949456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 * A062717 (n + 1) + 1 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A007310.P15995189386699949456

namespace A007310

/-- `(6*A062717(n+1)+1)^(1/2)` -/
def P15995189386699949456.Spec : Prop :=
  ∀ n, P15995189386699949456.a n = (A007310 (n + 1) : ℝ)

end A007310

/-! ## A007310.P8268514877386162601

`A047238(n+2)-1`
-/

namespace A007310.P8268514877386162601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 2) - 1

end

end A007310.P8268514877386162601

namespace A007310

/-- `A047238(n+2)-1` -/
def P8268514877386162601.Spec : Prop :=
  ∀ n, P8268514877386162601.a n = A007310 (n + 1)

end A007310

/-! ## A007310.P8844896430465018077

`or(1, 3*n+1)`
-/

namespace A007310.P8844896430465018077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

end

end A007310.P8844896430465018077

namespace A007310

/-- `or(1, 3*n+1)` -/
def P8844896430465018077.Spec : Prop :=
  ∀ n, (P8844896430465018077.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P18251193599620878972

`lt[3*n, lcm(6, n)]`
-/

namespace A007310.P18251193599620878972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007310.P18251193599620878972

namespace A007310

/-- `lt[3*n, lcm(6, n)]` -/
def P18251193599620878972.Spec : Prop :=
  ∀ n, (P18251193599620878972.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P14933811766493852483

`2-or(1, -3*n)`
-/

namespace A007310.P14933811766493852483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 1 (-(3 * n : ℤ))

end

end A007310.P14933811766493852483

namespace A007310

/-- `2-or(1, -3*n)` -/
def P14933811766493852483.Spec : Prop :=
  ∀ n, P14933811766493852483.a n = A007310 (n + 1)

end A007310

/-! ## A007310.P13245629088472580072

`∑[4/gcd(2, n)]-1`
-/

namespace A007310.P13245629088472580072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007310.P13245629088472580072

namespace A007310

/-- `∑[4/gcd(2, n)]-1` -/
def P13245629088472580072.Spec : Prop :=
  ∀ n, P13245629088472580072.a n = (A007310 (n + 1) : ℚ)

end A007310

/-! ## A007310.P7048112775113023736

`∑[3^(n%2)]+n`
-/

namespace A007310.P7048112775113023736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A007310.P7048112775113023736

namespace A007310

/-- `∑[3^(n%2)]+n` -/
def P7048112775113023736.Spec : Prop :=
  ∀ n, (P7048112775113023736.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P15604411641885719846

`∑[3^and(1, n)]+n`
-/

namespace A007310.P15604411641885719846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A007310.P15604411641885719846

namespace A007310

/-- `∑[3^and(1, n)]+n` -/
def P15604411641885719846.Spec : Prop :=
  ∀ n, (P15604411641885719846.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P14175768867756883688

`comp[lcm(4, 2*n)-n]`
-/

namespace A007310.P14175768867756883688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (2 * n) : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A007310.P14175768867756883688

namespace A007310

/-- `comp[lcm(4, 2*n)-n]` -/
def P14175768867756883688.Spec : Prop :=
  ∀ n, (P14175768867756883688.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P1596190342337033345

`∑[C(3, and(1, n))]+n`
-/

namespace A007310.P1596190342337033345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A007310.P1596190342337033345

namespace A007310

/-- `∑[C(3, and(1, n))]+n` -/
def P1596190342337033345.Spec : Prop :=
  ∀ n, (P1596190342337033345.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P7336122366526550557

`Δ[floor(3/2*n²)]`
-/

namespace A007310.P7336122366526550557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007310.P7336122366526550557

namespace A007310

/-- `Δ[floor(3/2*n²)]` -/
def P7336122366526550557.Spec : Prop :=
  ∀ n, P7336122366526550557.a n = A007310 (n + 1)

end A007310

/-! ## A007310.P11184209825678579282

`comp[n*3^and(1, n)]`
-/

namespace A007310.P11184209825678579282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007310.P11184209825678579282

namespace A007310

/-- `comp[n*3^and(1, n)]` -/
def P11184209825678579282.Spec : Prop :=
  ∀ n, (P11184209825678579282.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P5192934418981042604

`comp[∪[2*n, 3*n]]`
-/

namespace A007310.P5192934418981042604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A007310.P5192934418981042604

namespace A007310

/-- `comp[∪[2*n, 3*n]]` -/
def P5192934418981042604.Spec : Prop :=
  ∀ n, (P5192934418981042604.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P364361974895055016

`∑[and(3, Δ[n²])]+n`
-/

namespace A007310.P364361974895055016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007310.P364361974895055016

namespace A007310

/-- `∑[and(3, Δ[n²])]+n` -/
def P364361974895055016.Spec : Prop :=
  ∀ n, P364361974895055016.a n = A007310 (n + 1)

end A007310

/-! ## A007310.P8678505350212926469

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A007310.P8678505350212926469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007310.P8678505350212926469

namespace A007310

/-- `∑[abs(a(n-2))]` -/
def P8678505350212926469.Spec : Prop :=
  ∀ n, (P8678505350212926469.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P6645395534111868098

`∑[6-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A007310.P6645395534111868098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007310.P6645395534111868098

namespace A007310

/-- `∑[6-a(n-1)]` -/
def P6645395534111868098.Spec : Prop :=
  ∀ n, P6645395534111868098.a n = A007310 (n + 1)

end A007310

/-! ## A007310.P18343164938482732633

`and(1, n)+3*n+1`
-/

namespace A007310.P18343164938482732633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (3 * n + 1)

end

end A007310.P18343164938482732633

namespace A007310

/-- `and(1, n)+3*n+1` -/
def P18343164938482732633.Spec : Prop :=
  ∀ n, (P18343164938482732633.a n : ℤ) = A007310 (n + 1)

end A007310

/-! ## A007310.P13248341057551684772

`or(1, n+1)+n+n`
-/

namespace A007310.P13248341057551684772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + n + n

end

end A007310.P13248341057551684772

namespace A007310

/-- `or(1, n+1)+n+n` -/
def P13248341057551684772.Spec : Prop :=
  ∀ n, (P13248341057551684772.a n : ℤ) = A007310 (n + 1)

end A007310

/-!
# A007312: Reversion of g.f. (with constant term omitted) for partition numbers.

The programs for A007312, there is no canonical definition to state claims against.
-/

/-! ## A007312.P9530325937505384606

`A007296(n+1)-A162781(A007299(n))`
-/

namespace A007312.P9530325937505384606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007296 (n + 1) - A162781 (A007299 n).toNat

end

end A007312.P9530325937505384606

/-! ## A007312.P5936428726924734489

`A007296(n+1)-A185214(A014381(n))`
-/

namespace A007312.P5936428726924734489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007296 (n + 1) - A185214 (A014381 n).toNat

end

end A007312.P5936428726924734489

/-! ## A007312.P5461541688294283320

`A007296(n+1)-A202034(A276175(n))`
-/

namespace A007312.P5461541688294283320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007296 (n + 1) - A202034 (A276175 n).toNat

end

end A007312.P5461541688294283320

/-!
# A007313: Reversion of g.f. for Euler (secant) numbers A000364.

The programs for A007313, there is no canonical definition to state claims against.
-/

/-! ## A007313.P2920431431245693813

`A165026(n+1)-A256990(A224323(n))`
-/

namespace A007313.P2920431431245693813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165026 (n + 1) - A256990 (A224323 n).toNat

end

end A007313.P2920431431245693813

/-!
# A007317: Binomial transform of Catalan numbers.

The programs for A007317, the canonical program `A007317.P12762232467409535098` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007317 has offset 1).

The definition of A007317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007317.P12762232467409535098

`∑[A002212(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007317

/-- `∑[A002212(n)]` -/
def P12762232467409535098.Spec : Prop :=
  ∀ n, P12762232467409535098.a n = A007317 (n + 1)

theorem P12762232467409535098.correct : P12762232467409535098.Spec := by
  intro n
  simp only [A007317, Nat.add_sub_cancel]

end A007317

/-! ## A007317.P4650076717065155377

`A181768(n+1)`
-/

namespace A007317.P4650076717065155377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1)

end

end A007317.P4650076717065155377

namespace A007317

/-- `A181768(n+1)` -/
def P4650076717065155377.Spec : Prop :=
  ∀ n, P4650076717065155377.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P9456961119227153249

`A055879(Δ[n²])`
-/

namespace A007317.P9456961119227153249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007317.P9456961119227153249

namespace A007317

/-- `A055879(Δ[n²])` -/
def P9456961119227153249.Spec : Prop :=
  ∀ n, P9456961119227153249.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P14912867122560748677

`∑[∑[∑[A277969(n)]]]`
-/

namespace A007317.P14912867122560748677
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007317.P14912867122560748677

namespace A007317

/-- `∑[∑[∑[A277969(n)]]]` -/
def P14912867122560748677.Spec : Prop :=
  ∀ n, P14912867122560748677.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P11063600353601542502

`∑[A025238(n+1)]-2`
-/

namespace A007317.P11063600353601542502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A007317.P11063600353601542502

namespace A007317

/-- `∑[A025238(n+1)]-2` -/
def P11063600353601542502.Spec : Prop :=
  ∀ n, P11063600353601542502.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P4954825370272612443

`A039658(2*n+1)/2+1`
-/

namespace A007317.P4954825370272612443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039658 (2 * n + 1) : ℚ) / 2 + 1

end

end A007317.P4954825370272612443

namespace A007317

/-- `A039658(2*n+1)/2+1` -/
def P4954825370272612443.Spec : Prop :=
  ∀ n, P4954825370272612443.a n = (A007317 (n + 1) : ℚ)

end A007317

/-! ## A007317.P8845405364419147517

`(A342570(2*n+1)+1)/2`
-/

namespace A007317.P8845405364419147517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342570 (2 * n + 1) + 1 : ℚ) / 2

end

end A007317.P8845405364419147517

namespace A007317

/-- `(A342570(2*n+1)+1)/2` -/
def P8845405364419147517.Spec : Prop :=
  ∀ n, P8845405364419147517.a n = (A007317 (n + 1) : ℚ)

end A007317

/-! ## A007317.P12031425406305795567

`A002215(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A007317.P12031425406305795567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002215 (2 * n) + a (n - 1)

end

end A007317.P12031425406305795567

namespace A007317

/-- `A002215(2*n)+a(n-1)` -/
def P12031425406305795567.Spec : Prop :=
  ∀ n, P12031425406305795567.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P4234901717547330904

`a(n-1)+A039919(n)+a(n-1)` with `a(0)=1`
-/

namespace A007317.P4234901717547330904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A039919 n + a (n - 1))

end

end A007317.P4234901717547330904

namespace A007317

/-- `a(n-1)+A039919(n)+a(n-1)` -/
def P4234901717547330904.Spec : Prop :=
  ∀ n, P4234901717547330904.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P13137091981442067683

`record[A181768(A008611(n))]`
-/

namespace A007317.P13137091981442067683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007317.P13137091981442067683

namespace A007317

/-- `record[A181768(A008611(n))]` -/
def P13137091981442067683.Spec : Prop :=
  ∀ n, P13137091981442067683.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P16419134034809902712

`record[A181768(A008612(n))]`
-/

namespace A007317.P16419134034809902712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007317.P16419134034809902712

namespace A007317

/-- `record[A181768(A008612(n))]` -/
def P16419134034809902712.Spec : Prop :=
  ∀ n, P16419134034809902712.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P17415103817098279781

`record[A181768(A008615(n))]`
-/

namespace A007317.P17415103817098279781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007317.P17415103817098279781

namespace A007317

/-- `record[A181768(A008615(n))]` -/
def P17415103817098279781.Spec : Prop :=
  ∀ n, P17415103817098279781.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P15788744843218964736

`record[A181768(A008624(n))]`
-/

namespace A007317.P15788744843218964736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007317.P15788744843218964736

namespace A007317

/-- `record[A181768(A008624(n))]` -/
def P15788744843218964736.Spec : Prop :=
  ∀ n, P15788744843218964736.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P228719960098239554

`record[A181768(A028242(n))]`
-/

namespace A007317.P228719960098239554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007317.P228719960098239554

namespace A007317

/-- `record[A181768(A028242(n))]` -/
def P228719960098239554.Spec : Prop :=
  ∀ n, P228719960098239554.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P15387303818155463033

`record[A181768(A057979(n))]`
-/

namespace A007317.P15387303818155463033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007317.P15387303818155463033

namespace A007317

/-- `record[A181768(A057979(n))]` -/
def P15387303818155463033.Spec : Prop :=
  ∀ n, P15387303818155463033.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P2407183921423654204

`A129167(n)+A033321(n)`
-/

namespace A007317.P2407183921423654204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 n + A033321 n

end

end A007317.P2407183921423654204

namespace A007317

/-- `A129167(n)+A033321(n)` -/
def P2407183921423654204.Spec : Prop :=
  ∀ n, P2407183921423654204.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P3522954138701612418

`A278301(n)+A000245(n)`
-/

namespace A007317.P3522954138701612418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278301 n + A000245 n

end

end A007317.P3522954138701612418

namespace A007317

/-- `A278301(n)+A000245(n)` -/
def P3522954138701612418.Spec : Prop :=
  ∀ n, P3522954138701612418.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P2900333600897546033

`2*A102318(n)-A005043(n)`
-/

namespace A007317.P2900333600897546033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102318 n - A005043 n

end

end A007317.P2900333600897546033

namespace A007317

/-- `2*A102318(n)-A005043(n)` -/
def P2900333600897546033.Spec : Prop :=
  ∀ n, P2900333600897546033.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P14009578665348059843

`∑[A045868(n)]-A039919(n+1)`
-/

namespace A007317.P14009578665348059843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A039919 (n + 1)

end

end A007317.P14009578665348059843

namespace A007317

/-- `∑[A045868(n)]-A039919(n+1)` -/
def P14009578665348059843.Spec : Prop :=
  ∀ n, P14009578665348059843.a n = A007317 (n + 1)

end A007317

/-! ## A007317.P17591509943497696433

`A002212(n+1)-A039919(n+1)`
-/

namespace A007317.P17591509943497696433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - A039919 (n + 1)

end

end A007317.P17591509943497696433

namespace A007317

/-- `A002212(n+1)-A039919(n+1)` -/
def P17591509943497696433.Spec : Prop :=
  ∀ n, P17591509943497696433.a n = A007317 (n + 1)

end A007317

/-!
# A007318: Pascal's triangle read by rows: C(n,k) = binomial(n,k) = n!/(k!*(n-k)!), 0 <= k <= n.

The programs for A007318, the canonical program `A007318.P302227728145965961` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007318 has offset 0).

The definition of A007318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007318.P2952255842386139394

`abs(A108086(n))`
-/

namespace A007318.P2952255842386139394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n|

end

end A007318.P2952255842386139394

namespace A007318

/-- `abs(A108086(n))` -/
def P2952255842386139394.Spec : Prop :=
  ∀ n, P2952255842386139394.a n = A007318 n

end A007318

/-! ## A007318.P16976647770457234111

`abs(A117440(n))`
-/

namespace A007318.P16976647770457234111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n|

end

end A007318.P16976647770457234111

namespace A007318

/-- `abs(A117440(n))` -/
def P16976647770457234111.Spec : Prop :=
  ∀ n, P16976647770457234111.a n = A007318 n

end A007318

/-! ## A007318.P15674328502792020420

`abs(A130595(n))`
-/

namespace A007318.P15674328502792020420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n|

end

end A007318.P15674328502792020420

namespace A007318

/-- `abs(A130595(n))` -/
def P15674328502792020420.Spec : Prop :=
  ∀ n, P15674328502792020420.a n = A007318 n

end A007318

/-! ## A007318.P491081851855356126

`sqrt(A008459(n))`
-/

namespace A007318.P491081851855356126
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ)

end

end A007318.P491081851855356126

namespace A007318

/-- `sqrt(A008459(n))` -/
def P491081851855356126.Spec : Prop :=
  ∀ n, P491081851855356126.a n = (A007318 n : ℝ)

end A007318

/-! ## A007318.P8554259271761449638

`Δ[A102363(n)]`
-/

namespace A007318.P8554259271761449638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007318.P8554259271761449638

namespace A007318

/-- `Δ[A102363(n)]` -/
def P8554259271761449638.Spec : Prop :=
  ∀ n, P8554259271761449638.a n = A007318 n

end A007318

/-! ## A007318.P3005668548911558329

`A014473(n)+1`
-/

namespace A007318.P3005668548911558329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

end

end A007318.P3005668548911558329

namespace A007318

/-- `A014473(n)+1` -/
def P3005668548911558329.Spec : Prop :=
  ∀ n, P3005668548911558329.a n = A007318 n

end A007318

/-! ## A007318.P3655952224671620938

`A028326(n)/2`
-/

namespace A007318.P3655952224671620938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

end

end A007318.P3655952224671620938

namespace A007318

/-- `A028326(n)/2` -/
def P3655952224671620938.Spec : Prop :=
  ∀ n, P3655952224671620938.a n = (A007318 n : ℚ)

end A007318

/-! ## A007318.P75865359731187426

`abs(A154926(n+1))`
-/

namespace A007318.P75865359731187426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A154926 (n + 1)|

end

end A007318.P75865359731187426

namespace A007318

/-- `abs(A154926(n+1))` -/
def P75865359731187426.Spec : Prop :=
  ∀ n, P75865359731187426.a n = A007318 n

end A007318

/-! ## A007318.P17896698351649173938

`abs(2-A173740(n))`
-/

namespace A007318.P17896698351649173938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173740 n|

end

end A007318.P17896698351649173938

namespace A007318

/-- `abs(2-A173740(n))` -/
def P17896698351649173938.Spec : Prop :=
  ∀ n, P17896698351649173938.a n = A007318 n

end A007318

/-! ## A007318.P8760366334592107122

`ceil(A109128(n)/2)`
-/

namespace A007318.P8760366334592107122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉

end

end A007318.P8760366334592107122

namespace A007318

/-- `ceil(A109128(n)/2)` -/
def P8760366334592107122.Spec : Prop :=
  ∀ n, P8760366334592107122.a n = A007318 n

end A007318

/-! ## A007318.P15683302688994395107

`ceil(A124927(n)/2)`
-/

namespace A007318.P15683302688994395107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 n : ℚ) / 2⌉

end

end A007318.P15683302688994395107

namespace A007318

/-- `ceil(A124927(n)/2)` -/
def P15683302688994395107.Spec : Prop :=
  ∀ n, P15683302688994395107.a n = A007318 n

end A007318

/-! ## A007318.P7663651331754510061

`ceil(A129994(n)/2)`
-/

namespace A007318.P7663651331754510061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129994 n : ℚ) / 2⌉

end

end A007318.P7663651331754510061

namespace A007318

/-- `ceil(A129994(n)/2)` -/
def P7663651331754510061.Spec : Prop :=
  ∀ n, P7663651331754510061.a n = A007318 n

end A007318

/-! ## A007318.P9377198391566659465

`ceil(A131108(n)/2)`
-/

namespace A007318.P9377198391566659465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131108 n : ℚ) / 2⌉

end

end A007318.P9377198391566659465

namespace A007318

/-- `ceil(A131108(n)/2)` -/
def P9377198391566659465.Spec : Prop :=
  ∀ n, P9377198391566659465.a n = A007318 n

end A007318

/-! ## A007318.P4586380563126481927

`ceil(A134058(n)/2)`
-/

namespace A007318.P4586380563126481927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134058 n : ℚ) / 2⌉

end

end A007318.P4586380563126481927

namespace A007318

/-- `ceil(A134058(n)/2)` -/
def P4586380563126481927.Spec : Prop :=
  ∀ n, P4586380563126481927.a n = A007318 n

end A007318

/-! ## A007318.P16654341880085108677

`(A131060(n)+2)/3`
-/

namespace A007318.P16654341880085108677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131060 n + 2 : ℚ) / 3

end

end A007318.P16654341880085108677

namespace A007318

/-- `(A131060(n)+2)/3` -/
def P16654341880085108677.Spec : Prop :=
  ∀ n, P16654341880085108677.a n = (A007318 n : ℚ)

end A007318

/-! ## A007318.P7458720526592815662

`(A131061(n)+3)/4`
-/

namespace A007318.P7458720526592815662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131061 n + 3 : ℚ) / 4

end

end A007318.P7458720526592815662

namespace A007318

/-- `(A131061(n)+3)/4` -/
def P7458720526592815662.Spec : Prop :=
  ∀ n, P7458720526592815662.a n = (A007318 n : ℚ)

end A007318

/-! ## A007318.P6291983632547490470

`(A131063(n)+4)/5`
-/

namespace A007318.P6291983632547490470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n + 4 : ℚ) / 5

end

end A007318.P6291983632547490470

namespace A007318

/-- `(A131063(n)+4)/5` -/
def P6291983632547490470.Spec : Prop :=
  ∀ n, P6291983632547490470.a n = (A007318 n : ℚ)

end A007318

/-! ## A007318.P7593469482271094156

`lcm(2, A132046(n))/2`
-/

namespace A007318.P7593469482271094156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A132046 n) : ℚ) / 2

end

end A007318.P7593469482271094156

namespace A007318

/-- `lcm(2, A132046(n))/2` -/
def P7593469482271094156.Spec : Prop :=
  ∀ n, P7593469482271094156.a n = (A007318 n : ℚ)

end A007318

/-! ## A007318.P8179638341424932016

`ceil(sqrt(A141596(n))/2)`
-/

namespace A007318.P8179638341424932016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A141596 n : ℝ) / 2⌉

end

end A007318.P8179638341424932016

namespace A007318

/-- `ceil(sqrt(A141596(n))/2)` -/
def P8179638341424932016.Spec : Prop :=
  ∀ n, P8179638341424932016.a n = A007318 n

end A007318

/-! ## A007318.P302227728145965961

`A259525(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A007318

/-- `A259525(n-1)+a(n-1)` -/
def P302227728145965961.Spec : Prop :=
  ∀ n, P302227728145965961.a n = A007318 n

theorem P302227728145965961.correct : P302227728145965961.Spec := by
  intro n
  simp only [A007318]

end A007318

/-!
# A007319: A grasshopper sequence: closed under n -> 2n+2 and 6n+6.

The programs for A007319, there is no canonical definition to state claims against.
-/

/-! ## A007319.P1773807467970537178

`eq[A028629(A028643(n)), A028634(2*(n+2))]`
-/

namespace A007319.P1773807467970537178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028629 (A028643 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028634 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007319.P1773807467970537178

/-!
# A007322: Number of functors of degree n from free Abelian groups to Abelian groups.

The programs for A007322, there is no canonical definition to state claims against.
-/

/-! ## A007322.P1404476087902615176

`∑[A120733(n+1)]`
-/

namespace A007322.P1404476087902615176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007322.P1404476087902615176

/-! ## A007322.P12849917375136882829

`∑[record[A120733(A008611(n))]]`
-/

namespace A007322.P12849917375136882829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007322.P12849917375136882829

/-! ## A007322.P2249812018810406858

`∑[record[A120733(A008615(n))]]`
-/

namespace A007322.P2249812018810406858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 (A008615 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007322.P2249812018810406858

/-! ## A007322.P16639874126441865992

`∑[record[A120733(A103627(n))]]`
-/

namespace A007322.P16639874126441865992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 (A103627 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007322.P16639874126441865992

/-! ## A007322.P13718412496269027328

`∑[record[A120733(A138471(n))]]`
-/

namespace A007322.P13718412496269027328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 (A138471 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007322.P13718412496269027328

/-! ## A007322.P18348511337787838745

`∑[record[A120733(A303534(n))]]`
-/

namespace A007322.P18348511337787838745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 (A303534 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007322.P18348511337787838745

/-!
# A007323: Number of numerical semigroups of genus n; conjecturally also the number of power sum bases for symmetric functions in n variables.

The programs for A007323, there is no canonical definition to state claims against.
-/

/-! ## A007323.P13166308665289255136

`A026713(n)+A011739(A006728(n))`
-/

namespace A007323.P13166308665289255136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026713 n + A011739 (A006728 n).toNat

end

end A007323.P13166308665289255136

/-! ## A007323.P16049167799325520686

`A257932(n)+A102683(A240610(n))`
-/

namespace A007323.P16049167799325520686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257932 n + A102683 (A240610 n).toNat

end

end A007323.P16049167799325520686

/-! ## A007323.P4232492497750267503

`or(A026713(n), A124761(A017341(n)))`
-/

namespace A007323.P4232492497750267503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026713 n) (A124761 (A017341 n).toNat)

end

end A007323.P4232492497750267503

/-! ## A007323.P8979880940005216766

`or(A124761(A017341(n)), A257932(n))`
-/

namespace A007323.P8979880940005216766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124761 (A017341 n).toNat) (A257932 n)

end

end A007323.P8979880940005216766

/-! ## A007323.P2673427714693616073

`or(A189628(A303742(n)), A257932(n))`
-/

namespace A007323.P2673427714693616073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189628 (A303742 n).toNat) (A257932 n)

end

end A007323.P2673427714693616073

/-!
# A007324: Least number for which Solovay-Strassen primality test on bases < prime(n) fails.

The programs for A007324, there is no canonical definition to state claims against.
-/

/-! ## A007324.P5982245333936574635

`A354692(and(A000984(n), A343935(n+1)))`
-/

namespace A007324.P5982245333936574635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354692 (Int.land (A000984 n) (A343935 (n + 1))).toNat

end

end A007324.P5982245333936574635

/-!
# A007325: G.f.: Product_{k>0} (1-x^(5k-1))*(1-x^(5k-4))/((1-x^(5k-2))*(1-x^(5k-3))).

The programs for A007325, there is no canonical definition to state claims against.
-/

/-! ## A007325.P8426645682274896453

`(-1)^n*A226556(n)`
-/

namespace A007325.P8426645682274896453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A226556 n

end

end A007325.P8426645682274896453

/-! ## A007325.P18337084912854675982

`A226556(n)/A033999(n)`
-/

namespace A007325.P18337084912854675982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226556 n : ℚ) / (A033999 n : ℚ)

end

end A007325.P18337084912854675982

/-! ## A007325.P5190183644746300169

`A226556(n)/A057077(A057077(n)+n)`
-/

namespace A007325.P5190183644746300169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226556 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A007325.P5190183644746300169

/-! ## A007325.P8040780836855735703

`A285555(2*n)+A285554(2*n)`
-/

namespace A007325.P8040780836855735703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285555 (2 * n) + A285554 (2 * n)

end

end A007325.P8040780836855735703

/-! ## A007325.P8363811332512912794

`A055101(2*n)+2*A285554(2*n)`
-/

namespace A007325.P8363811332512912794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055101 (2 * n) + 2 * A285554 (2 * n)

end

end A007325.P8363811332512912794

/-! ## A007325.P3477085325516638119

`2*A285555(2*n)-A055101(2*n)`
-/

namespace A007325.P3477085325516638119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285555 (2 * n) - A055101 (2 * n)

end

end A007325.P3477085325516638119

/-! ## A007325.P5766185147743026750

`A226556(n)/A057077(2*n)`
-/

namespace A007325.P5766185147743026750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226556 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A007325.P5766185147743026750

/-! ## A007325.P11168937018879965746

`A286509(∑[n+2]-1)`
-/

namespace A007325.P11168937018879965746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286509 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A007325.P11168937018879965746

/-!
# A007326: Difference between A000294 and the number of solid partitions of n (A000293).

The programs for A007326, there is no canonical definition to state claims against.
-/

/-! ## A007326.P11730590141189155457

`A000294(n)-A000293(n)`
-/

namespace A007326.P11730590141189155457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000294 n - A000293 n

end

end A007326.P11730590141189155457

/-! ## A007326.P6706980061992048666

`A000294(round(acot(n)+n))%A000293(n)`
-/

namespace A007326.P6706980061992048666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000294 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A000293 n)

end

end A007326.P6706980061992048666

/-! ## A007326.P12669529840179660230

`A000294(A028310(n))%A000293(n)`
-/

namespace A007326.P12669529840179660230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000294 (A028310 n).toNat) (A000293 n)

end

end A007326.P12669529840179660230

/-! ## A007326.P14139631907672266682

`A000294(n)%A000293(A118759(n))`
-/

namespace A007326.P14139631907672266682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000294 n) (A000293 (A118759 n).toNat)

end

end A007326.P14139631907672266682

/-! ## A007326.P8806241414681399895

`A000294(A292579(n))%A000293(n)`
-/

namespace A007326.P8806241414681399895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000294 (A292579 n).toNat) (A000293 n)

end

end A007326.P8806241414681399895

/-! ## A007326.P9014613742743640404

`A000294(A233583(n+1))%A000293(n)`
-/

namespace A007326.P9014613742743640404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000294 (A233583 (n + 1)).toNat) (A000293 n)

end

end A007326.P9014613742743640404

/-! ## A007326.P7279882314650858681

`A000294(A065033(2*n))%A000293(n)`
-/

namespace A007326.P7279882314650858681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000294 (A065033 (2 * n)).toNat) (A000293 n)

end

end A007326.P7279882314650858681

/-! ## A007326.P4667071624530125094

`A000294(A123108(2*n))%A000293(n)`
-/

namespace A007326.P4667071624530125094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000294 (A123108 (2 * n)).toNat) (A000293 n)

end

end A007326.P4667071624530125094

/-! ## A007326.P1878349478332271475

`(A000294(n)+A000007(n))%A000293(n)`
-/

namespace A007326.P1878349478332271475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000294 n + A000007 n) (A000293 n)

end

end A007326.P1878349478332271475

/-!
# A007327: Difference between two partition g.f.s.

The programs for A007327, there is no canonical definition to state claims against.
-/

/-! ## A007327.P4392159494259805593

`A000335(n+1)-A000334(n+1)`
-/

namespace A007327.P4392159494259805593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000335 (n + 1) - A000334 (n + 1)

end

end A007327.P4392159494259805593

/-! ## A007327.P12811787913247655997

`A000335(n+1)%record[A000334(A193592(n))]`
-/

namespace A007327.P12811787913247655997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000334 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000335 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A007327.P12811787913247655997

/-! ## A007327.P15577237290585704780

`A293551(A052905(n+3))-A000334(n+1)`
-/

namespace A007327.P15577237290585704780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (n + 3)).toNat - A000334 (n + 1)

end

end A007327.P15577237290585704780

/-! ## A007327.P10602994819428528383

`A000335(A000027(n+1))%A000334(n+1)`
-/

namespace A007327.P10602994819428528383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000335 (A000027 (n + 1)).toNat) (A000334 (n + 1))

end

end A007327.P10602994819428528383

/-! ## A007327.P63024729544170749

`A000335(A085735(n+1))%A000334(n+1)`
-/

namespace A007327.P63024729544170749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000335 (A085735 (n + 1)).toNat) (A000334 (n + 1))

end

end A007327.P63024729544170749

/-!
# A007328: Difference between the number of 5-dimensional partitions of n and an approximation derived from binomial(n,4).

The programs for A007328, there is no canonical definition to state claims against.
-/

/-! ## A007328.P6825873505764803083

`A000391(n+1)-A000390(n+1)`
-/

namespace A007328.P6825873505764803083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000391 (n + 1) - A000390 (n + 1)

end

end A007328.P6825873505764803083

/-! ## A007328.P18348305694388220994

`A293551(A055999(n+4))-A000390(n+1)`
-/

namespace A007328.P18348305694388220994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (n + 4)).toNat - A000390 (n + 1)

end

end A007328.P18348305694388220994

/-! ## A007328.P7826267997106730800

`A000391(A000027(n+1))%A000390(n+1)`
-/

namespace A007328.P7826267997106730800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000391 (A000027 (n + 1)).toNat) (A000390 (n + 1))

end

end A007328.P7826267997106730800

/-! ## A007328.P8883857298003541656

`A000391(n+1)%A000390(A008684(n+1))`
-/

namespace A007328.P8883857298003541656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000391 (n + 1)) (A000390 (A008684 (n + 1)).toNat)

end

end A007328.P8883857298003541656

/-! ## A007328.P11789269481870798096

`A000391(A085735(n+1))%A000390(n+1)`
-/

namespace A007328.P11789269481870798096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000391 (A085735 (n + 1)).toNat) (A000390 (n + 1))

end

end A007328.P11789269481870798096

/-!
# A007329: Unexplained difference between two partition generating functions.

The programs for A007329, there is no canonical definition to state claims against.
-/

/-! ## A007329.P10754546220277764348

`A000417(n+1)-A000416(n+1)`
-/

namespace A007329.P10754546220277764348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000417 (n + 1) - A000416 (n + 1)

end

end A007329.P10754546220277764348

/-! ## A007329.P13989030412158381389

`A000417(A000027(n+1))%A000416(n+1)`
-/

namespace A007329.P13989030412158381389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000417 (A000027 (n + 1)).toNat) (A000416 (n + 1))

end

end A007329.P13989030412158381389

/-! ## A007329.P9397366548407407474

`A000417(n+1)%A000416(A008684(n+1))`
-/

namespace A007329.P9397366548407407474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000417 (n + 1)) (A000416 (A008684 (n + 1)).toNat)

end

end A007329.P9397366548407407474

/-! ## A007329.P11346533758149838916

`A000417(A130446(n+1))%A000416(n+1)`
-/

namespace A007329.P11346533758149838916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000417 (A130446 (n + 1)).toNat) (A000416 (n + 1))

end

end A007329.P11346533758149838916

/-! ## A007329.P9086874415161168368

`A000417(A132263(n+1))%A000416(n+1)`
-/

namespace A007329.P9086874415161168368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000417 (A132263 (n + 1)).toNat) (A000416 (n + 1))

end

end A007329.P9086874415161168368

/-!
# A007330: Difference between the number of 7-dimensional partitions of n and an approximation derived from binomial(n,6).

The programs for A007330, there is no canonical definition to state claims against.
-/

/-! ## A007330.P4132026337069794240

`A000428(n+1)-A000427(n+1)`
-/

namespace A007330.P4132026337069794240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000428 (n + 1) - A000427 (n + 1)

end

end A007330.P4132026337069794240

/-! ## A007330.P13499635028705508946

`A000428(n+1)%A000427(n%n!+1)`
-/

namespace A007330.P13499635028705508946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000428 (n + 1)) (A000427 (n % Nat.factorial n + 1))

end

end A007330.P13499635028705508946

/-! ## A007330.P5417526612423481678

`A000428(A000027(n+1))%A000427(n+1)`
-/

namespace A007330.P5417526612423481678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000428 (A000027 (n + 1)).toNat) (A000427 (n + 1))

end

end A007330.P5417526612423481678

/-! ## A007330.P5382357103268027860

`A000428(n+1)%A000427(A008684(n+1))`
-/

namespace A007330.P5382357103268027860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000428 (n + 1)) (A000427 (A008684 (n + 1)).toNat)

end

end A007330.P5382357103268027860

/-! ## A007330.P2247022090814496399

`A000428(A130446(n+1))%A000427(n+1)`
-/

namespace A007330.P2247022090814496399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000428 (A130446 (n + 1)).toNat) (A000427 (n + 1))

end

end A007330.P2247022090814496399

/-!
# A007331: Fourier coefficients of E_{infinity,4}.

The programs for A007331, the canonical program `A007331.P7249092391155220355` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007331 has offset 0).

The definition of A007331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007331.P7249092391155220355

`∑{d}[2*n, (n%#)^3]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007331

/-- `∑{d}[2*n, (n%#)^3]` -/
def P7249092391155220355.Spec : Prop :=
  ∀ n, (P7249092391155220355.a n : ℤ) = A007331 n

theorem P7249092391155220355.correct : P7249092391155220355.Spec := by
  intro n
  simp only [A007331]

end A007331

/-! ## A007331.P8984180100716791647

`∑{d}[n, A309335(#)]`
-/

namespace A007331.P8984180100716791647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309335 d

end

end A007331.P8984180100716791647

namespace A007331

/-- `∑{d}[n, A309335(#)]` -/
def P8984180100716791647.Spec : Prop :=
  ∀ n, P8984180100716791647.a n = A007331 n

end A007331

/-! ## A007331.P10698920888732316412

`∑{d}[n, A309338(#)/#]`
-/

namespace A007331.P10698920888732316412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A309338 d : ℚ) / (d : ℚ)

end

end A007331.P10698920888732316412

namespace A007331

/-- `∑{d}[n, A309338(#)/#]` -/
def P10698920888732316412.Spec : Prop :=
  ∀ n, P10698920888732316412.a n = (A007331 n : ℚ)

end A007331

/-! ## A007331.P11684266369889742966

`abs(A002408(n))`
-/

namespace A007331.P11684266369889742966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002408 n|

end

end A007331.P11684266369889742966

namespace A007331

/-- `abs(A002408(n))` -/
def P11684266369889742966.Spec : Prop :=
  ∀ n, P11684266369889742966.a n = A007331 n

end A007331

/-! ## A007331.P18432339652922961119

`A002408(n)*A062157(n)`
-/

namespace A007331.P18432339652922961119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002408 n * A062157 n

end

end A007331.P18432339652922961119

namespace A007331

/-- `A002408(n)*A062157(n)` -/
def P18432339652922961119.Spec : Prop :=
  ∀ n, P18432339652922961119.a n = A007331 n

end A007331

/-! ## A007331.P285386969264851632

`A002408(n)*A165326(n)`
-/

namespace A007331.P285386969264851632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002408 n * A165326 n

end

end A007331.P285386969264851632

namespace A007331

/-- `A002408(n)*A165326(n)` -/
def P285386969264851632.Spec : Prop :=
  ∀ n, P285386969264851632.a n = A007331 n

end A007331

/-! ## A007331.P2226351023239088505

`lcm(A002408(n), A006466(n))`
-/

namespace A007331.P2226351023239088505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002408 n) (A006466 n)

end

end A007331.P2226351023239088505

namespace A007331

/-- `lcm(A002408(n), A006466(n))` -/
def P2226351023239088505.Spec : Prop :=
  ∀ n, (P2226351023239088505.a n : ℤ) = A007331 n

end A007331

/-! ## A007331.P3009574188511877578

`A002408(n)/A062157(n+2)`
-/

namespace A007331.P3009574188511877578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002408 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A007331.P3009574188511877578

namespace A007331

/-- `A002408(n)/A062157(n+2)` -/
def P3009574188511877578.Spec : Prop :=
  ∀ n, P3009574188511877578.a n = (A007331 n : ℚ)

end A007331

/-! ## A007331.P8220089994255369522

`gcd(A002408(2*n), A002408(n))`
-/

namespace A007331.P8220089994255369522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002408 (2 * n)) (A002408 n)

end

end A007331.P8220089994255369522

namespace A007331

/-- `gcd(A002408(2*n), A002408(n))` -/
def P8220089994255369522.Spec : Prop :=
  ∀ n, (P8220089994255369522.a n : ℤ) = A007331 n

end A007331

/-!
# A007332: Expansion of 6-dimensional cusp form (eta(q) * eta(q^3))^6 in powers of q.

The programs for A007332, there is no canonical definition to state claims against.
-/

/-! ## A007332.P2459721383726505854

`(A008657(n)-A004010(n))/36`
-/

namespace A007332.P2459721383726505854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008657 n - A004010 n : ℚ) / 36

end

end A007332.P2459721383726505854

/-!
# A007333: An upper bound on the biplanar crossing number of the complete graph on n nodes.

The programs for A007333, there is no canonical definition to state claims against.
-/

/-! ## A007333.P11219541001655601798

`A188299(A146238(n+1))%A146284(n+1)`
-/

namespace A007333.P11219541001655601798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188299 (A146238 (n + 1)).toNat) (A146284 (n + 1))

end

end A007333.P11219541001655601798

/-!
# A007334: Number of spanning trees in the graph K_{n}/e, which results from contracting an edge e in the complete graph K_{n} on n vertices (for n>=2).

The programs for A007334, there is no canonical definition to state claims against.
-/

/-! ## A007334.P6462467082492988499

`2*(n+2)^(n-1)`
-/

namespace A007334.P6462467082492988499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A007334.P6462467082492988499

/-! ## A007334.P16825958658027186268

`(n+2)^(n-1)/tan(acot(2))`
-/

namespace A007334.P16825958658027186268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

end

end A007334.P16825958658027186268

/-! ## A007334.P4850489306185734448

`(n+2)^(n-1)/cot(atan(2))`
-/

namespace A007334.P4850489306185734448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A007334.P4850489306185734448

/-! ## A007334.P4935336966657313954

`A089460(∑[n])`
-/

namespace A007334.P4935336966657313954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007334.P4935336966657313954

/-! ## A007334.P9713746331207139263

`record[A089460(n)]`
-/

namespace A007334.P9713746331207139263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007334.P9713746331207139263

/-! ## A007334.P17210249523176428110

`A058127(∑[n+2])`
-/

namespace A007334.P17210249523176428110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007334.P17210249523176428110

/-! ## A007334.P13021235057987935954

`A379611(∑[n+2])`
-/

namespace A007334.P13021235057987935954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379611 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007334.P13021235057987935954

/-! ## A007334.P17541552895431784979

`A089946(n)/(n+1)`
-/

namespace A007334.P17541552895431784979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089946 n : ℚ) / (n + 1 : ℚ)

end

end A007334.P17541552895431784979

/-! ## A007334.P4513725542604212753

`A232006(∑[n+2]+3)`
-/

namespace A007334.P4513725542604212753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A007334.P4513725542604212753

/-! ## A007334.P5585881659108273879

`A003308(n+2)/(n+2)`
-/

namespace A007334.P5585881659108273879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003308 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A007334.P5585881659108273879

/-!
# A007335: MU-numbers: next term is uniquely the product of 2 earlier terms.

The programs for A007335, there is no canonical definition to state claims against.
-/

/-! ## A007335.P8084290578216068038

`A003586(A261255(n+1))`
-/

namespace A007335.P8084290578216068038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A261255 (n + 1)).toNat

end

end A007335.P8084290578216068038

/-! ## A007335.P5977457241322985156

`A007694(A261255(n+1)+1)/2`
-/

namespace A007335.P5977457241322985156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (A261255 (n + 1) + 1).toNat : ℚ) / 2

end

end A007335.P5977457241322985156

/-! ## A007335.P247155576424234688

`A065119(A261255(n+1))/A157532(n+2)`
-/

namespace A007335.P247155576424234688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (A261255 (n + 1)).toNat : ℚ) / (A157532 (n + 2) : ℚ)

end

end A007335.P247155576424234688

/-! ## A007335.P6597362702074719169

`A065119(A261255(n+1))/A010693(2*n+1)`
-/

namespace A007335.P6597362702074719169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (A261255 (n + 1)).toNat : ℚ) / (A010693 (2 * n + 1) : ℚ)

end

end A007335.P6597362702074719169

/-! ## A007335.P17620674309920669319

`A065119(A261255(n+1))/(∑[n+3]+1-A052905(n))`
-/

namespace A007335.P17620674309920669319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (A261255 (n + 1)).toNat : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A052905 n : ℚ)

end

end A007335.P17620674309920669319

/-! ## A007335.P7909234297408511361

`A065119(A261255(n+1))/A006530(A065119(n+1))`
-/

namespace A007335.P7909234297408511361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (A261255 (n + 1)).toNat : ℚ) / (A006530 (A065119 (n + 1)).toNat : ℚ)

end

end A007335.P7909234297408511361

/-!
# A007336: Signature sequence of sqrt 2 (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A007336, there is no canonical definition to state claims against.
-/

/-! ## A007336.P518678063266890900

`A000720(p?[A073846(A023131(n+1))])`
-/

namespace A007336.P518678063266890900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A023131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A007336.P518678063266890900

/-! ## A007336.P9794941381579095055

`A061395(p?[A073846(A023131(n+1))])`
-/

namespace A007336.P9794941381579095055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A023131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A007336.P9794941381579095055

/-! ## A007336.P10857058799158873744

`∑{p}[p?[A073846(A023131(n+1))], A297109(#)]`
-/

namespace A007336.P10857058799158873744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A023131 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297109 p

end

end A007336.P10857058799158873744

/-! ## A007336.P11570978688473887608

`A131843(A046092(n))+A025648(n+1)`
-/

namespace A007336.P11570978688473887608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131843 (A046092 n).toNat + A025648 (n + 1)

end

end A007336.P11570978688473887608

/-! ## A007336.P13162559847176612764

`A053150(A211144(n+1))+A025648(n+1)`
-/

namespace A007336.P13162559847176612764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A211144 (n + 1)).toNat + A025648 (n + 1)

end

end A007336.P13162559847176612764

/-! ## A007336.P150599892059028099

`val(A025619(n+1), 4)-A057428(A211144(n+1))`
-/

namespace A007336.P150599892059028099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A025619 (n + 1)).toNat 4 : ℤ) - A057428 (A211144 (n + 1)).toNat

end

end A007336.P150599892059028099

/-! ## A007336.P8644997451729107698

`val(A025619(n+1), 4)-A057428(A324975(n+1))`
-/

namespace A007336.P8644997451729107698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A025619 (n + 1)).toNat 4 : ℤ) - A057428 (A324975 (n + 1)).toNat

end

end A007336.P8644997451729107698

/-! ## A007336.P1271537183712064279

`A088705(A320866(n+1))+A025648(n+1)`
-/

namespace A007336.P1271537183712064279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A320866 (n + 1)).toNat + A025648 (n + 1)

end

end A007336.P1271537183712064279

/-! ## A007336.P10650057493154587073

`A025648(n+1)+A000035(A160031(n+1))`
-/

namespace A007336.P10650057493154587073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025648 (n + 1) + A000035 (A160031 (n + 1)).toNat

end

end A007336.P10650057493154587073

/-! ## A007336.P6743136188820564787

`A057427(A015847(n+1))+A025648(n+1)`
-/

namespace A007336.P6743136188820564787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A015847 (n + 1)).toNat + A025648 (n + 1)

end

end A007336.P6743136188820564787

/-! ## A007336.P14499230176931730965

`A025648(n+1)+A001222(A186169(n+1))`
-/

namespace A007336.P14499230176931730965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025648 (n + 1) + A001222 (A186169 (n + 1)).toNat

end

end A007336.P14499230176931730965

/-! ## A007336.P14415352260828763636

`A001222(A186169(n+1))+val(A025619(n+1), 4)`
-/

namespace A007336.P14415352260828763636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A186169 (n + 1)).toNat + (SequenceMachineLib.valuation (A025619 (n + 1)).toNat 4 : ℤ)

end

end A007336.P14415352260828763636

/-! ## A007336.P6243477845596742293

`A000005(2^A025648(n+1))`
-/

namespace A007336.P6243477845596742293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025648 (n + 1) : ℤ))).toNat

end

end A007336.P6243477845596742293

/-! ## A007336.P5675589059063875708

`(A025648(n+1)+1)%A000040(∑[A058071(n)])`
-/

namespace A007336.P5675589059063875708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025648 (n + 1) + 1) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A007336.P5675589059063875708

/-!
# A007337: Signature sequence of sqrt(3).

The programs for A007337, there is no canonical definition to state claims against.
-/

/-! ## A007337.P14890311790617299245

`A235127(A107988(n+1))+1`
-/

namespace A007337.P14890311790617299245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A107988 (n + 1)).toNat + 1

end

end A007337.P14890311790617299245

/-! ## A007337.P17040959995218238308

`A001227(record[A026741(A003586(n+1))])`
-/

namespace A007337.P17040959995218238308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007337.P17040959995218238308

/-! ## A007337.P14831429742989426032

`A002325(record[A026741(A003586(n+1))])`
-/

namespace A007337.P14831429742989426032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007337.P14831429742989426032

/-! ## A007337.P576523576860457642

`A051064(record[A026741(A003586(n+1))])`
-/

namespace A007337.P576523576860457642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007337.P576523576860457642

/-! ## A007337.P16666328040826198827

`A192006(record[A026741(A003586(n+1))])`
-/

namespace A007337.P16666328040826198827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007337.P16666328040826198827

/-!
# A007339: a(n) = n! - n^3.

The programs for A007339, the canonical program `A007339.P7185081731974410792` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007339 has offset 0).

The definition of A007339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007339.P7185081731974410792

`n!-n^3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007339

/-- `n!-n^3` -/
def P7185081731974410792.Spec : Prop :=
  ∀ n, P7185081731974410792.a n = A007339 n

theorem P7185081731974410792.correct : P7185081731974410792.Spec := by
  intro n
  simp only [A007339]

end A007339

/-! ## A007339.P14100464629441046670

`∏[round(1/acot(n))]-n^3`
-/

namespace A007339.P14100464629441046670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 3 : ℤ)

end

end A007339.P14100464629441046670

namespace A007339

/-- `∏[round(1/acot(n))]-n^3` -/
def P14100464629441046670.Spec : Prop :=
  ∀ n, P14100464629441046670.a n = A007339 n

end A007339

/-! ## A007339.P12714538113626759866

`∏[ceil(abs(γ-n))]-n^3`
-/

namespace A007339.P12714538113626759866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 3 : ℤ)

end

end A007339.P12714538113626759866

namespace A007339

/-- `∏[ceil(abs(γ-n))]-n^3` -/
def P12714538113626759866.Spec : Prop :=
  ∀ n, P12714538113626759866.a n = A007339 n

end A007339

/-! ## A007339.P4208146469101041700

`Δ[∑[A104150(n)]-A161680(n)²]`
-/

namespace A007339.P4208146469101041700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007339.P4208146469101041700

namespace A007339

/-- `Δ[∑[A104150(n)]-A161680(n)²]` -/
def P4208146469101041700.Spec : Prop :=
  ∀ n, P4208146469101041700.a n = A007339 n

end A007339

/-! ## A007339.P12218726843855195021

`(n!-A000578(n))*A143453(∑[n])`
-/

namespace A007339.P12218726843855195021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) - A000578 n) * A143453 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A007339.P12218726843855195021

namespace A007339

/-- `(n!-A000578(n))*A143453(∑[n])` -/
def P12218726843855195021.Spec : Prop :=
  ∀ n, P12218726843855195021.a n = A007339 n

end A007339

/-! ## A007339.P12867685251267996710

`(A000142(n)-n^3)%A048855(n+4)`
-/

namespace A007339.P12867685251267996710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 n - (n ^ 3 : ℤ)) (A048855 (n + 4))

end

end A007339.P12867685251267996710

namespace A007339

/-- `(A000142(n)-n^3)%A048855(n+4)` -/
def P12867685251267996710.Spec : Prop :=
  ∀ n, P12867685251267996710.a n = A007339 n

end A007339

/-! ## A007339.P17719060132688232125

`(A000142(n)-A000578(n))%A000142(n+3)`
-/

namespace A007339.P17719060132688232125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 n - A000578 n) (A000142 (n + 3))

end

end A007339.P17719060132688232125

namespace A007339

/-- `(A000142(n)-A000578(n))%A000142(n+3)` -/
def P17719060132688232125.Spec : Prop :=
  ∀ n, P17719060132688232125.a n = A007339 n

end A007339

/-!
# A007340: Numbers whose divisors' harmonic and arithmetic means are both integers.

The programs for A007340, there is no canonical definition to state claims against.
-/

/-! ## A007340.P5709289985484872859

`A157848(n+1)*A157850(n+1)`
-/

namespace A007340.P5709289985484872859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157848 (n + 1) * A157850 (n + 1)

end

end A007340.P5709289985484872859

/-! ## A007340.P12647326824395733088

`A000027(∪[A090945(n+1), A335318(n+1)])`
-/

namespace A007340.P12647326824395733088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335318 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A007340.P12647326824395733088

/-! ## A007340.P14792388479888748160

`A000027(∪[A140798(n+1), A331724(n+1)])`
-/

namespace A007340.P14792388479888748160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331724 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A007340.P14792388479888748160

/-! ## A007340.P5419386968093685529

`A000027(∪[A335316(2*(n+1)), A090945(n+1)])`
-/

namespace A007340.P5419386968093685529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335316 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090945 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A007340.P5419386968093685529

/-! ## A007340.P3087089184612844498

`A000027(∪[A335317(2*(n+1)), A090945(n+1)])`
-/

namespace A007340.P3087089184612844498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335317 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090945 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A007340.P3087089184612844498

/-!
# A007341: Number of spanning trees in n X n grid.

The programs for A007341, there is no canonical definition to state claims against.
-/

/-! ## A007341.P14173790035460457893

`A189002(Δ[n²])`
-/

namespace A007341.P14173790035460457893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A007341.P14173790035460457893

/-! ## A007341.P2214178280964592346

`A116469((n+1)²+n²)`
-/

namespace A007341.P2214178280964592346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 ((n + 1) ^ 2 + n ^ 2)

end

end A007341.P2214178280964592346

/-! ## A007341.P12838267803577948904

`record[(A189002(n)-1)*n%2]+1`
-/

namespace A007341.P12838267803577948904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189002 n - 1) * ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A007341.P12838267803577948904

/-! ## A007341.P3439466819621510362

`A189006((n+1)*A017113(n))`
-/

namespace A007341.P3439466819621510362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 ((n + 1 : ℤ) * A017113 n).toNat

end

end A007341.P3439466819621510362

/-! ## A007341.P3701007913499694672

`or(A000007(n), A189002(A005408(n)))`
-/

namespace A007341.P3701007913499694672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A189002 (A005408 n).toNat)

end

end A007341.P3701007913499694672

/-!
# A007343: Number of homogeneous primitive partition identities with largest part n.

The programs for A007343, there is no canonical definition to state claims against.
-/

/-! ## A007343.P14262284656650946828

`A321393(A008415(n)+2)`
-/

namespace A007343.P14262284656650946828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321393 (A008415 n + 2).toNat

end

end A007343.P14262284656650946828

/-! ## A007343.P14955835827272594412

`A279375(3*n+2)+A256505(A369990(n))`
-/

namespace A007343.P14955835827272594412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279375 (3 * n + 2) + A256505 (A369990 n).toNat

end

end A007343.P14955835827272594412

/-!
# A007344: Number of homogeneous primitive partition identities of degree 6 with largest part n.

The programs for A007344, there is no canonical definition to state claims against.
-/

/-! ## A007344.P13409158713790315132

`A319434(A161776(n)+A060493(n))`
-/

namespace A007344.P13409158713790315132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319434 (A161776 n + A060493 n).toNat

end

end A007344.P13409158713790315132

/-! ## A007344.P729982473283861112

`A273108(A000354(n))+A273079(n)`
-/

namespace A007344.P729982473283861112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273108 (A000354 n).toNat + A273079 n

end

end A007344.P729982473283861112

/-!
# A007345: Number of Havender tableaux of height 2 with n columns.

The programs for A007345, the canonical program `A007345.P15189906619051462837` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007345 has offset 0).

The definition of A007345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007345.P15189906619051462837

`∑[A082298(n)-Δ[A181768(n)]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A007345

/-- `∑[A082298(n)-Δ[A181768(n)]]` -/
def P15189906619051462837.Spec : Prop :=
  ∀ n, P15189906619051462837.a n = A007345 n

theorem P15189906619051462837.correct : P15189906619051462837.Spec := by
  intro n
  simp only [A007345]

end A007345

/-! ## A007345.P14264106218144962476

`2*A162326(n+1)-∑[A002212(n)]`
-/

namespace A007345.P14264106218144962476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162326 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007345.P14264106218144962476

namespace A007345

/-- `2*A162326(n+1)-∑[A002212(n)]` -/
def P14264106218144962476.Spec : Prop :=
  ∀ n, P14264106218144962476.a n = A007345 n

end A007345

/-! ## A007345.P15101492134698702023

`2*A162326(n+1)-A181768(n+1)`
-/

namespace A007345.P15101492134698702023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162326 (n + 1) - A181768 (n + 1)

end

end A007345.P15101492134698702023

namespace A007345

/-- `2*A162326(n+1)-A181768(n+1)` -/
def P15101492134698702023.Spec : Prop :=
  ∀ n, P15101492134698702023.a n = A007345 n

end A007345

/-! ## A007345.P14346049391302904867

`A162326(n+1)+A162326(n+1)-A007317(n+1)`
-/

namespace A007345.P14346049391302904867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162326 (n + 1) + (A162326 (n + 1) - A007317 (n + 1))

end

end A007345.P14346049391302904867

namespace A007345

/-- `A162326(n+1)+A162326(n+1)-A007317(n+1)` -/
def P14346049391302904867.Spec : Prop :=
  ∀ n, P14346049391302904867.a n = A007345 n

end A007345

/-!
# A007346: Order of group generated by perfect shuffles of 2n cards.

The programs for A007346, there is no canonical definition to state claims against.
-/

/-! ## A007346.P962252965459006353

`A046523(A277498(n+2))`
-/

namespace A007346.P962252965459006353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A277498 (n + 2)).toNat

end

end A007346.P962252965459006353

/-!
# A007347: Maximal Eulerian numbers of second kind.

The programs for A007347, there is no canonical definition to state claims against.
-/

/-! ## A007347.P5740188417202939965

`A112007(A171452(n))`
-/

namespace A007347.P5740188417202939965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (A171452 n).toNat

end

end A007347.P5740188417202939965

/-! ## A007347.P14972076909321573661

`A340556(A389142(n+1))`
-/

namespace A007347.P14972076909321573661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A389142 (n + 1)).toNat

end

end A007347.P14972076909321573661

/-! ## A007347.P15120974834934269186

`A112007(floor(A000326(n)/3))`
-/

namespace A007347.P15120974834934269186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 ⌊(A000326 n : ℚ) / 3⌋.toNat

end

end A007347.P15120974834934269186

/-! ## A007347.P7538922674419999089

`A163936(A008620(n)+A000217(n))`
-/

namespace A007347.P7538922674419999089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 (A008620 n + A000217 n).toNat

end

end A007347.P7538922674419999089

/-! ## A007347.P11191942279656260837

`A112007(A161680(n)+A002264(n))`
-/

namespace A007347.P11191942279656260837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (A161680 n + A002264 n).toNat

end

end A007347.P11191942279656260837

/-! ## A007347.P9874680033353578488

`A201637(A347553(n+3)-A008620(n))`
-/

namespace A007347.P9874680033353578488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A347553 (n + 3) - A008620 n).toNat

end

end A007347.P9874680033353578488

/-!
# A007348: Primes for which -10 is a primitive root.

The programs for A007348, there is no canonical definition to state claims against.
-/

/-! ## A007348.P13997543863882872546

`p?[A167806(n+1)]`
-/

namespace A007348.P13997543863882872546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A007348.P13997543863882872546

/-! ## A007348.P13702386989467762113

`filter[A167806(n+1), A008966(#)]`
-/

namespace A007348.P13702386989467762113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A007348.P13702386989467762113

/-! ## A007348.P14049489260612511982

`filter[A167806(n+1), A010051(#)]`
-/

namespace A007348.P14049489260612511982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A007348.P14049489260612511982

/-! ## A007348.P16962935688781356154

`∩[A004139(n+1), A167806(n+1)]`
-/

namespace A007348.P16962935688781356154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P16962935688781356154

/-! ## A007348.P832684630093275892

`∩[A045319(n+1), A167806(n+1)]`
-/

namespace A007348.P832684630093275892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P832684630093275892

/-! ## A007348.P11435483930727545323

`∩[A000040(n+1), A167806(n+1)]`
-/

namespace A007348.P11435483930727545323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P11435483930727545323

/-! ## A007348.P17439770995740761937

`∩[A006005(n+1), A167806(n+1)]`
-/

namespace A007348.P17439770995740761937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P17439770995740761937

/-! ## A007348.P13175492438225591398

`∩[A008578(n+1), A167806(n+1)]`
-/

namespace A007348.P13175492438225591398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P13175492438225591398

/-! ## A007348.P7865451289486300557

`∩[A033946(n+1), A167806(n+1)]`
-/

namespace A007348.P7865451289486300557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P7865451289486300557

/-! ## A007348.P1913727270672785814

`∩[A046022(n+1), A167806(n+1)]`
-/

namespace A007348.P1913727270672785814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P1913727270672785814

/-! ## A007348.P1319910041151040259

`∩[A053813(n+1), A167806(n+1)]`
-/

namespace A007348.P1319910041151040259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P1319910041151040259

/-! ## A007348.P5479262491908410936

`∩[A066050(n+1), A167806(n+1)]`
-/

namespace A007348.P5479262491908410936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P5479262491908410936

/-! ## A007348.P1546329425187074726

`∩[A067126(n+1), A167806(n+1)]`
-/

namespace A007348.P1546329425187074726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P1546329425187074726

/-! ## A007348.P15564334104301499109

`∩[A062972(n+1), A167806(n+1)]`
-/

namespace A007348.P15564334104301499109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P15564334104301499109

/-! ## A007348.P7139016655636654333

`∩[A055977(n+1), A167806(n+1)]`
-/

namespace A007348.P7139016655636654333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P7139016655636654333

/-! ## A007348.P164592972278501414

`∩[A053577(n+1), A167806(n+1)]`
-/

namespace A007348.P164592972278501414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P164592972278501414

/-! ## A007348.P1043397189954829237

`∩[A015919(n+1), A167806(n+1)]`
-/

namespace A007348.P1043397189954829237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P1043397189954829237

/-! ## A007348.P4226675590428046114

`∩[A167806(n+1), A260442(n)]`
-/

namespace A007348.P4226675590428046114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P4226675590428046114

/-! ## A007348.P5274806441755850911

`∩[A143578(n+1), A167806(n+1)]`
-/

namespace A007348.P5274806441755850911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P5274806441755850911

/-! ## A007348.P13621595745045544667

`∩[A073040(n+1), A167806(n+1)]`
-/

namespace A007348.P13621595745045544667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007348.P13621595745045544667

/-!
# A007349: Primes with both 10 and -10 as primitive root.

The programs for A007349, there is no canonical definition to state claims against.
-/

/-! ## A007349.P18315013118416268450

`∩[A001913(n+1), A007348(n+1)]`
-/

namespace A007349.P18315013118416268450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P18315013118416268450

/-! ## A007349.P5104342288961879603

`∩[A006883(n+1), A007348(n+1)]`
-/

namespace A007349.P5104342288961879603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P5104342288961879603

/-! ## A007349.P11746067410948736913

`∩[A001913(n+1), A002144(n+1)]`
-/

namespace A007349.P11746067410948736913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P11746067410948736913

/-! ## A007349.P13282446127432268315

`∩[A002144(n+1), A006883(n+1)]`
-/

namespace A007349.P13282446127432268315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P13282446127432268315

/-! ## A007349.P2900061921929283508

`∩[A002144(n+1), A007348(n+1)]`
-/

namespace A007349.P2900061921929283508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P2900061921929283508

/-! ## A007349.P918432500771894064

`∩[A001913(n+1), A002313(n+1)]`
-/

namespace A007349.P918432500771894064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P918432500771894064

/-! ## A007349.P13299142212802558948

`∩[A002313(n+1), A007348(n+1)]`
-/

namespace A007349.P13299142212802558948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P13299142212802558948

/-! ## A007349.P5484266872717815382

`∩[A007348(n+1), A038880(n+1)]`
-/

namespace A007349.P5484266872717815382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P5484266872717815382

/-! ## A007349.P10000088813923126251

`∩[A001913(n+1), A055025(n+1)]`
-/

namespace A007349.P10000088813923126251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P10000088813923126251

/-! ## A007349.P1074928217733807549

`∩[A001913(n+1), A120960(n+1)]`
-/

namespace A007349.P1074928217733807549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P1074928217733807549

/-! ## A007349.P1017425358969833033

`∩[A001913(n+1), A125018(n+1)]`
-/

namespace A007349.P1017425358969833033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P1017425358969833033

/-! ## A007349.P31788235310496581

`∩[A007348(n+1), A028416(n+1)]`
-/

namespace A007349.P31788235310496581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P31788235310496581

/-! ## A007349.P2461422332082914157

`∩[A001913(n+1), A003653(n+1)]`
-/

namespace A007349.P2461422332082914157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P2461422332082914157

/-! ## A007349.P2225697941043430124

`∩[A003653(n+1), A006883(n+1)]`
-/

namespace A007349.P2225697941043430124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P2225697941043430124

/-! ## A007349.P10078813362161335165

`∩[A003653(n+1), A007348(n+1)]`
-/

namespace A007349.P10078813362161335165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P10078813362161335165

/-! ## A007349.P17304759065558098568

`∩[A007348(n+1), A043292(n+1)]`
-/

namespace A007349.P17304759065558098568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P17304759065558098568

/-! ## A007349.P8678929791997761932

`∩[A001913(n+1), A004613(n+1)]`
-/

namespace A007349.P8678929791997761932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P8678929791997761932

/-! ## A007349.P14293085336833354720

`∩[A001913(n+1), A008846(n+1)]`
-/

namespace A007349.P14293085336833354720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P14293085336833354720

/-! ## A007349.P14595573116381887352

`∩[A004613(n+1), A006883(n+1)]`
-/

namespace A007349.P14595573116381887352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P14595573116381887352

/-! ## A007349.P3498798418371297103

`∩[A004613(n+1), A007348(n+1)]`
-/

namespace A007349.P3498798418371297103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007349.P3498798418371297103

/-!
# A007351: Where prime race 4m-1 vs. 4m+1 is tied.

The programs for A007351, there is no canonical definition to state claims against.
-/

/-! ## A007351.P9495052949038798817

`A096447(n+1)-A001223(A038691(n+1))`
-/

namespace A007351.P9495052949038798817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096447 (n + 1) - A001223 (A038691 (n + 1)).toNat

end

end A007351.P9495052949038798817

/-! ## A007351.P18317674371254471492

`A096447(n+1)-A001223(2*A092198(n+1)+1)`
-/

namespace A007351.P18317674371254471492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096447 (n + 1) - A001223 (2 * A092198 (n + 1) + 1).toNat

end

end A007351.P18317674371254471492

/-! ## A007351.P14718418140603853527

`A000040(A038691(n+1))`
-/

namespace A007351.P14718418140603853527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038691 (n + 1)).toNat

end

end A007351.P14718418140603853527

/-! ## A007351.P6047417526630052484

`A008578(A038691(n+1)+1)`
-/

namespace A007351.P6047417526630052484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A038691 (n + 1) + 1).toNat

end

end A007351.P6047417526630052484

/-!
# A007353: Where the prime race among 5k+1, ..., 5k+4 changes leader.

The programs for A007353, there is no canonical definition to state claims against.
-/

/-! ## A007353.P13099929291418453125

`A144573(A162309(A141468(A176393(n+2))))`
-/

namespace A007353.P13099929291418453125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144573 (A162309 (A141468 (A176393 (n + 2)).toNat).toNat).toNat

end

end A007353.P13099929291418453125

/-!
# A007354: Where the prime race among 7k+1, ..., 7k+6 changes leader.

The programs for A007354, there is no canonical definition to state claims against.
-/

/-! ## A007354.P4309503074289094557

`A178382(A191107(n+1)+A002605(n))`
-/

namespace A007354.P4309503074289094557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178382 (A191107 (n + 1) + A002605 n).toNat

end

end A007354.P4309503074289094557

/-!
# A007357: Infinitary perfect numbers.

The programs for A007357, there is no canonical definition to state claims against.
-/

/-! ## A007357.P3346090383831082035

`A007358(A274148(n)+A268335(n+1))`
-/

namespace A007357.P3346090383831082035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007358 (A274148 n + A268335 (n + 1)).toNat

end

end A007357.P3346090383831082035

/-! ## A007357.P14573445443903722099

`A007358(record[Δ[A332318(n+3)]])`
-/

namespace A007357.P14573445443903722099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332318 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A007357.P14573445443903722099

/-!
# A007358: Infinitary multiperfect numbers.

The programs for A007358, there is no canonical definition to state claims against.
-/

/-! ## A007358.P15820142951658807445

`∪[A000142(2*n+1), A000027(A007357(n+2))]`
-/

namespace A007358.P15820142951658807445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007357 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A007358.P15820142951658807445

/-!
# A007359: Number of partitions of n into pairwise coprime parts that are >= 2.

The programs for A007359, there is no canonical definition to state claims against.
-/

/-! ## A007359.P7803192152270927443

`A337485(n)+1-char[1]`
-/

namespace A007359.P7803192152270927443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337485 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A007359.P7803192152270927443

/-! ## A007359.P17113988764969305253

`A007360(n)-a(n-1)` with `a(0)=1`
-/

namespace A007359.P17113988764969305253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007360 n - a (n - 1)

end

end A007359.P17113988764969305253

/-! ## A007359.P18377375736044739753

`A007360(n+1)-Δ[A051424(n)]`
-/

namespace A007359.P18377375736044739753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007360 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007359.P18377375736044739753

/-! ## A007359.P5383852119144629855

`A007360(n+1)+A051424(n)-A051424(n+1)`
-/

namespace A007359.P5383852119144629855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007360 (n + 1) + (A051424 n - A051424 (n + 1))

end

end A007359.P5383852119144629855

/-! ## A007359.P325582458819037683

`A305713(n+1)-A337485(n+1)`
-/

namespace A007359.P325582458819037683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305713 (n + 1) - A337485 (n + 1)

end

end A007359.P325582458819037683

/-! ## A007359.P3218331856665459461

`A305713(n+1)+A051424(n)-A327516(n+1)`
-/

namespace A007359.P3218331856665459461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305713 (n + 1) + (A051424 n - A327516 (n + 1))

end

end A007359.P3218331856665459461

/-! ## A007359.P12485416224245925534

`Δ[A327516(n+1)-A305713(n+1)]`
-/

namespace A007359.P12485416224245925534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 (n + 1) - A305713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007359.P12485416224245925534

/-! ## A007359.P14976294602453889634

`A305713(n+1)%A101268(n)+1-Δ[A051424(n)]`
-/

namespace A007359.P14976294602453889634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305713 (n + 1)) (A101268 n) + 1 - (f1 (n + 1) - f1 n)

end

end A007359.P14976294602453889634

/-!
# A007360: Number of partitions of n into distinct and pairwise relatively prime parts.

The programs for A007360, there is no canonical definition to state claims against.
-/

/-! ## A007360.P5290426380362178090

`A007359(n)+Δ[A051424(n)]`
-/

namespace A007360.P5290426380362178090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 n + (f1 (n + 1) - f1 n)

end

end A007360.P5290426380362178090

/-! ## A007360.P1888358448245655736

`A007359(n+1)+A007359(n)`
-/

namespace A007360.P1888358448245655736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (n + 1) + A007359 n

end

end A007360.P1888358448245655736

/-! ## A007360.P13588691826858904699

`A305713(ceil(abs(γ-n))+1)+1`
-/

namespace A007360.P13588691826858904699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305713 (⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉ + 1).toNat + 1

end

end A007360.P13588691826858904699

/-! ## A007360.P4646688630629990189

`A305713(n+1)-A000007(n)+1`
-/

namespace A007360.P4646688630629990189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305713 (n + 1) - A000007 n + 1

end

end A007360.P4646688630629990189

/-! ## A007360.P6603866022571400476

`A305713(n+1)%A323765(n)+1`
-/

namespace A007360.P6603866022571400476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305713 (n + 1)) (A323765 n) + 1

end

end A007360.P6603866022571400476

/-! ## A007360.P12653651315153901599

`A328672(∑{e}[n+1, #])+A305713(n+1)`
-/

namespace A007360.P12653651315153901599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328672 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A305713 (n + 1)

end

end A007360.P12653651315153901599

/-!
# A007361: Numerator of n-th power of Hermite constant for dimension n.

The programs for A007361, there is no canonical definition to state claims against.
-/

/-! ## A007361.P15709384681536978628

`2^∑[a(n-4)+1]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=1`
-/

namespace A007361.P15709384681536978628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1, 1] fun n f1 =>
  f1 (n - 4) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A007361.P15709384681536978628

/-! ## A007361.P11079772159160803313

`a(n-4)*2^(n-1)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=4`
-/

namespace A007361.P11079772159160803313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 2, 4] fun n a =>
  a (n - 4) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A007361.P11079772159160803313

/-! ## A007361.P5499212742593251394

`A143095(∑[ceil(n/2)])`
-/

namespace A007361.P5499212742593251394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007361.P5499212742593251394

/-! ## A007361.P10042810112092583987

`A135530(∑[round(cosh(log(acot(n))))])`
-/

namespace A007361.P10042810112092583987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A007361.P10042810112092583987

/-!
# A007363: Maximal self-dual antichains on n points.

The programs for A007363, there is no canonical definition to state claims against.
-/

/-! ## A007363.P4885086308256711206

`A326363(n)-1`
-/

namespace A007363.P4885086308256711206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326363 n - 1

end

end A007363.P4885086308256711206

/-! ## A007363.P673153062719672071

`A326362(n)+comp[7*n+2]-1`
-/

namespace A007363.P673153062719672071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326362 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A007363.P673153062719672071

/-! ## A007363.P16288739210177253929

`record[Δ[A326363(A142150(n))]]`
-/

namespace A007363.P16288739210177253929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326363 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007363.P16288739210177253929

/-! ## A007363.P2683681104359242261

`record[Δ[A326363(A332104(n))]]`
-/

namespace A007363.P2683681104359242261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326363 (A332104 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007363.P2683681104359242261

/-!
# A007366: Numbers k such that phi(x) = k has exactly 2 solutions.

The programs for A007366, there is no canonical definition to state claims against.
-/

/-! ## A007366.P11639062194592064716

`∩[A297475(n+1), A376927(n+1)]`
-/

namespace A007366.P11639062194592064716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007366.P11639062194592064716

/-! ## A007366.P10892251266985596572

`∩[A071388(n+1), A376927(n+1)]`
-/

namespace A007366.P10892251266985596572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007366.P10892251266985596572

/-! ## A007366.P4606386084320195660

`∩[A071388(n+1), A296655(n+1)]`
-/

namespace A007366.P4606386084320195660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007366.P4606386084320195660

/-! ## A007366.P3035625107630172194

`∩[A296655(n+1), A297475(n+1)]`
-/

namespace A007366.P3035625107630172194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007366.P3035625107630172194

/-! ## A007366.P5220450109668004727

`A002202(eq[1, A143422(n+1)]+1)`
-/

namespace A007366.P5220450109668004727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A007366.P5220450109668004727

/-! ## A007366.P4257957676956924500

`A002202(eq[2, A058277(n+1)]+1)`
-/

namespace A007366.P4257957676956924500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A007366.P4257957676956924500

/-! ## A007366.P3512741213299416755

`record[(2-A143422(n+1))*A002202(n+1)]`
-/

namespace A007366.P3512741213299416755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A143422 (n + 1)) * A002202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007366.P3512741213299416755

/-! ## A007366.P3019029716726510022

`A002202(record[and(n, A143422(n+1)-2)]+1)`
-/

namespace A007366.P3019029716726510022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A143422 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A007366.P3019029716726510022

/-! ## A007366.P8274088614162719531

`A000010(A002181(eq[1, A143422(n+1)]+1))`
-/

namespace A007366.P8274088614162719531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat

end

end A007366.P8274088614162719531

/-! ## A007366.P5591632338854052687

`lt[n, A323169(n+1)]+1`
-/

namespace A007366.P5591632338854052687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A007366.P5591632338854052687

/-! ## A007366.P2271051182160505573

`record[A000010(A323169(n+1)-A323514(n+1)+1)]`
-/

namespace A007366.P2271051182160505573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A323169 (n + 1) - A323514 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007366.P2271051182160505573

/-! ## A007366.P11382873692552104223

`eq[2, A014197(n+1)]+1`
-/

namespace A007366.P11382873692552104223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007366.P11382873692552104223

/-! ## A007366.P15780645210847160007

`eq[A040013(n), A307853(n+1)]`
-/

namespace A007366.P15780645210847160007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007366.P15780645210847160007

/-! ## A007366.P4627671590295803435

`eq[A115291(n), A307853(n+1)]`
-/

namespace A007366.P4627671590295803435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007366.P4627671590295803435

/-! ## A007366.P17675970526862535923

`eq[A307853(n+1), A329507(n)]`
-/

namespace A007366.P17675970526862535923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007366.P17675970526862535923

/-! ## A007366.P5903825149856195167

`eq[2*A307853(n+1), A040057(n)]`
-/

namespace A007366.P5903825149856195167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007366.P5903825149856195167

/-! ## A007366.P15300604455120810535

`eq[A205383(n+1), A307853(n+1)]`
-/

namespace A007366.P15300604455120810535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007366.P15300604455120810535

/-! ## A007366.P659017170971175509

`record[A002202(n+1)/A002202(A143422(n+1)²)]`
-/

namespace A007366.P659017170971175509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002202 (n + 1) : ℚ) / (A002202 (A143422 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007366.P659017170971175509

/-! ## A007366.P2594805674328439534

`A164020(lt[n, A323169(n+1)])`
-/

namespace A007366.P2594805674328439534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A007366.P2594805674328439534

/-!
# A007367: Numbers k such that phi(x) = k has exactly 3 solutions.

The programs for A007367, there is no canonical definition to state claims against.
-/

/-! ## A007367.P13698720763165385890

`∩[2*A297475(n+1), A297475(n+1)]`
-/

namespace A007367.P13698720763165385890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007367.P13698720763165385890

/-! ## A007367.P1464869281630245826

`eq[2, A322311(n+1)]+1`
-/

namespace A007367.P1464869281630245826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007367.P1464869281630245826

/-! ## A007367.P13058189104376493222

`A002202(eq[3, A058277(n+1)]+1)`
-/

namespace A007367.P13058189104376493222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A007367.P13058189104376493222

/-! ## A007367.P4021501928036669911

`A000010(A002181(eq[3, A058277(n+1)]+1))`
-/

namespace A007367.P4021501928036669911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat

end

end A007367.P4021501928036669911

/-! ## A007367.P14957196279777743824

`2*(eq[3, A032446(n+1)]+1)`
-/

namespace A007367.P14957196279777743824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A007367.P14957196279777743824

/-! ## A007367.P15143292507181401925

`A005843(eq[3, A032446(n+1)]+1)`
-/

namespace A007367.P15143292507181401925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A007367.P15143292507181401925

/-! ## A007367.P5796230075092789885

`eq[12, A307853(n+1)]`
-/

namespace A007367.P5796230075092789885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007367.P5796230075092789885

/-! ## A007367.P9590962322535267868

`eq[1, A014197(A028310(n))-2]`
-/

namespace A007367.P9590962322535267868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007367.P9590962322535267868

/-! ## A007367.P3121196257021508920

`eq[2, A014202(A014197(n+1))]+1`
-/

namespace A007367.P3121196257021508920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014202 (A014197 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007367.P3121196257021508920

/-! ## A007367.P1969665882267602251

`A014681(eq[1, A014197(n+1)-2])`
-/

namespace A007367.P1969665882267602251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007367.P1969665882267602251

/-! ## A007367.P3078884912279096515

`A020725(eq[1, A014197(n+1)-2])`
-/

namespace A007367.P3078884912279096515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007367.P3078884912279096515

/-! ## A007367.P13971864112052200095

`A092486(eq[1, A014197(n+1)-2])`
-/

namespace A007367.P13971864112052200095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007367.P13971864112052200095

/-! ## A007367.P12887308833401884978

`A103889(eq[1, A014197(n+1)-2])`
-/

namespace A007367.P12887308833401884978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007367.P12887308833401884978

/-! ## A007367.P17411303120555713435

`A133265(eq[1, A014197(n+1)-2])`
-/

namespace A007367.P17411303120555713435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007367.P17411303120555713435

/-!
# A007369: Numbers n such that sigma(x) = n has no solution.

The programs for A007369, the canonical program `A007369.P12791547163572233403` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007369 has offset 1).

The definition of A007369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007369.P1049550056291520510

`record[A257670(n+2)]`
-/

namespace A007369.P1049550056291520510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007369.P1049550056291520510

namespace A007369

/-- `record[A257670(n+2)]` -/
def P1049550056291520510.Spec : Prop :=
  ∀ n, P1049550056291520510.a n = A007369 (n + 1)

end A007369

/-! ## A007369.P18155002319646191085

`eq[0, A175192(n+1)]+1`
-/

namespace A007369.P18155002319646191085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007369.P18155002319646191085

namespace A007369

/-- `eq[0, A175192(n+1)]+1` -/
def P18155002319646191085.Spec : Prop :=
  ∀ n, (P18155002319646191085.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P4450552037940158314

`A083532(n)+a(n-1)` with `a(0)=2`
-/

namespace A007369.P4450552037940158314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A083532 n + a (n - 1)

end

end A007369.P4450552037940158314

namespace A007369

/-- `A083532(n)+a(n-1)` -/
def P4450552037940158314.Spec : Prop :=
  ∀ n, P4450552037940158314.a n = A007369 (n + 1)

end A007369

/-! ## A007369.P12791547163572233403

`comp[A000203(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007369

/-- `comp[A000203(n+1)-1]+1` -/
def P12791547163572233403.Spec : Prop :=
  ∀ n, (P12791547163572233403.a n : ℤ) = A007369 (n + 1)

theorem P12791547163572233403.correct : P12791547163572233403.Spec := by
  intro n
  simp only [A007369, Nat.add_sub_cancel]

end A007369

/-! ## A007369.P16275214752863677462

`comp[A002191(n+1)-1]+1`
-/

namespace A007369.P16275214752863677462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A007369.P16275214752863677462

namespace A007369

/-- `comp[A002191(n+1)-1]+1` -/
def P16275214752863677462.Spec : Prop :=
  ∀ n, (P16275214752863677462.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P13022429204163064953

`∑[abs(Δ[comp[A000203(n+1)]])]`
-/

namespace A007369.P13022429204163064953
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007369.P13022429204163064953

namespace A007369

/-- `∑[abs(Δ[comp[A000203(n+1)]])]` -/
def P13022429204163064953.Spec : Prop :=
  ∀ n, P13022429204163064953.a n = A007369 (n + 1)

end A007369

/-! ## A007369.P9171443401386671363

`eq[0, char[∑{d}[n, #]]]`
-/

namespace A007369.P9171443401386671363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007369.P9171443401386671363

namespace A007369

/-- `eq[0, char[∑{d}[n, #]]]` -/
def P9171443401386671363.Spec : Prop :=
  ∀ n, (P9171443401386671363.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P8976701739723207979

`lt[char[∑{d}[n, #]], 1]`
-/

namespace A007369.P8976701739723207979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A007369.P8976701739723207979

namespace A007369

/-- `lt[char[∑{d}[n, #]], 1]` -/
def P8976701739723207979.Spec : Prop :=
  ∀ n, (P8976701739723207979.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P5809351215814452672

`filter[n+1, A175253(#)]`
-/

namespace A007369.P5809351215814452672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175253 (f1 j) = 1) n)

end

end A007369.P5809351215814452672

namespace A007369

/-- `filter[n+1, A175253(#)]` -/
def P5809351215814452672.Spec : Prop :=
  ∀ n, (P5809351215814452672.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P13521831958437546418

`eq[1, A175253(n+1)]+1`
-/

namespace A007369.P13521831958437546418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007369.P13521831958437546418

namespace A007369

/-- `eq[1, A175253(n+1)]+1` -/
def P13521831958437546418.Spec : Prop :=
  ∀ n, (P13521831958437546418.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P6405329944707691292

`eq[1, A283524(n+1)]+1`
-/

namespace A007369.P6405329944707691292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007369.P6405329944707691292

namespace A007369

/-- `eq[1, A283524(n+1)]+1` -/
def P6405329944707691292.Spec : Prop :=
  ∀ n, (P6405329944707691292.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P695974066823490122

`lt[A051444(n+1), 1]+1`
-/

namespace A007369.P695974066823490122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007369.P695974066823490122

namespace A007369

/-- `lt[A051444(n+1), 1]+1` -/
def P695974066823490122.Spec : Prop :=
  ∀ n, (P695974066823490122.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P17402175819780438266

`lt[A054973(n+1), 1]+1`
-/

namespace A007369.P17402175819780438266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007369.P17402175819780438266

namespace A007369

/-- `lt[A054973(n+1), 1]+1` -/
def P17402175819780438266.Spec : Prop :=
  ∀ n, (P17402175819780438266.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P5763801211804111059

`lt[A057637(n+1), 1]+1`
-/

namespace A007369.P5763801211804111059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007369.P5763801211804111059

namespace A007369

/-- `lt[A057637(n+1), 1]+1` -/
def P5763801211804111059.Spec : Prop :=
  ∀ n, (P5763801211804111059.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P7556472341563462695

`lt[A240667(n+1), 1]+1`
-/

namespace A007369.P7556472341563462695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007369.P7556472341563462695

namespace A007369

/-- `lt[A240667(n+1), 1]+1` -/
def P7556472341563462695.Spec : Prop :=
  ∀ n, (P7556472341563462695.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P652254273449069011

`lt[A241954(n+1), 1]+1`
-/

namespace A007369.P652254273449069011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007369.P652254273449069011

namespace A007369

/-- `lt[A241954(n+1), 1]+1` -/
def P652254273449069011.Spec : Prop :=
  ∀ n, (P652254273449069011.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P6123567014113332445

`lt[A258913(n+1), 1]+1`
-/

namespace A007369.P6123567014113332445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007369.P6123567014113332445

namespace A007369

/-- `lt[A258913(n+1), 1]+1` -/
def P6123567014113332445.Spec : Prop :=
  ∀ n, (P6123567014113332445.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P12161428580826600664

`lt[A286011(n+1), 1]+1`
-/

namespace A007369.P12161428580826600664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007369.P12161428580826600664

namespace A007369

/-- `lt[A286011(n+1), 1]+1` -/
def P12161428580826600664.Spec : Prop :=
  ∀ n, (P12161428580826600664.a n : ℤ) = A007369 (n + 1)

end A007369

/-! ## A007369.P10801690148904666080

`lt[A341879(n+1), 1]+1`
-/

namespace A007369.P10801690148904666080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007369.P10801690148904666080

namespace A007369

/-- `lt[A341879(n+1), 1]+1` -/
def P10801690148904666080.Spec : Prop :=
  ∀ n, (P10801690148904666080.a n : ℤ) = A007369 (n + 1)

end A007369

/-!
# A007370: Numbers k such that sigma(x) = k has a unique solution.

The programs for A007370, there is no canonical definition to state claims against.
-/

/-! ## A007370.P14193096226347452612

`∑{d}[A308098(n+1), #]`
-/

namespace A007370.P14193096226347452612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A007370.P14193096226347452612

/-! ## A007370.P12910550243461458780

`A000203(A308098(n+1))`
-/

namespace A007370.P12910550243461458780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A308098 (n + 1)).toNat

end

end A007370.P12910550243461458780

/-! ## A007370.P13557361460082078073

`eq[1, char[A211657(n+1)]]`
-/

namespace A007370.P13557361460082078073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211657 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007370.P13557361460082078073

/-! ## A007370.P17319193656943801721

`record[∑{d}[A240667(n+1), #]]`
-/

namespace A007370.P17319193656943801721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240667 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007370.P17319193656943801721

/-! ## A007370.P13465563233750277106

`eq[1, A054973(n+1)]+1`
-/

namespace A007370.P13465563233750277106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007370.P13465563233750277106

/-! ## A007370.P5413182193274128004

`record[(n+1)%A000040(A240667(n+1)+1)]`
-/

namespace A007370.P5413182193274128004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000040 (A240667 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007370.P5413182193274128004

/-! ## A007370.P11988842900853881636

`eq[n, A028310(n)*A054973(A028310(n))]`
-/

namespace A007370.P11988842900853881636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007370.P11988842900853881636

/-! ## A007370.P4549738630708808911

`record[A002191(n+1)/A054973(A002191(n+1))]`
-/

namespace A007370.P4549738630708808911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002191 (n + 1) : ℚ) / (A054973 (A002191 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007370.P4549738630708808911

/-! ## A007370.P14662508533707594938

`record[A007609(n+1)/A054973(A007609(n+1))]`
-/

namespace A007370.P14662508533707594938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007609 (n + 1) : ℚ) / (A054973 (A007609 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007370.P14662508533707594938

/-! ## A007370.P2962332078690287167

`record[(n+1)*A054973(2^A054973(n+1)+1)]`
-/

namespace A007370.P2962332078690287167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054973 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A054973 (n + 1) : ℤ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007370.P2962332078690287167

/-!
# A007371: Numbers k such that sigma(x) = k has exactly 2 solutions.

The programs for A007371, there is no canonical definition to state claims against.
-/

/-! ## A007371.P4355854899955364542

`A159886(eq[2, A159953(n+1)]+1)`
-/

namespace A007371.P4355854899955364542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A007371.P4355854899955364542

/-! ## A007371.P2400021494207736950

`record[root(A159886(n+1), A159953(n+1))²]`
-/

namespace A007371.P2400021494207736950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A159886 (n + 1) : ℝ) ^ (1 / (A159953 (n + 1) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007371.P2400021494207736950

/-! ## A007371.P15251837433796661406

`eq[2, A054973(n+1)]+1`
-/

namespace A007371.P15251837433796661406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007371.P15251837433796661406

/-! ## A007371.P13569457519405005046

`eq[2, A054973(A028310(n))]`
-/

namespace A007371.P13569457519405005046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007371.P13569457519405005046

/-! ## A007371.P18338989695162703024

`A020725(eq[2, A054973(n+1)])`
-/

namespace A007371.P18338989695162703024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007371.P18338989695162703024

/-! ## A007371.P13123474327207629857

`A065475(eq[2, A054973(n+1)])`
-/

namespace A007371.P13123474327207629857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007371.P13123474327207629857

/-! ## A007371.P18320040068933954241

`A114637(eq[2, A054973(n+1)])`
-/

namespace A007371.P18320040068933954241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007371.P18320040068933954241

/-! ## A007371.P3844964424481464459

`eq[2, A054973(A004277(n)-n)]`
-/

namespace A007371.P3844964424481464459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007371.P3844964424481464459

/-! ## A007371.P14456099929965621460

`eq[2, A054973(A138153(n+1))]`
-/

namespace A007371.P14456099929965621460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007371.P14456099929965621460

/-! ## A007371.P6665001716673105797

`eq[2, A054973(A060000(n+1))]`
-/

namespace A007371.P6665001716673105797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007371.P6665001716673105797

/-! ## A007371.P510775936898518773

`eq[2, A054973(A065033(2*n))]`
-/

namespace A007371.P510775936898518773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007371.P510775936898518773

/-!
# A007372: Numbers k such that sigma(x) = k has exactly 3 solutions.

The programs for A007372, there is no canonical definition to state claims against.
-/

/-! ## A007372.P9228074081180072415

`A159886(eq[3, A159953(n+1)]+1)`
-/

namespace A007372.P9228074081180072415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A007372.P9228074081180072415

/-! ## A007372.P7247446805683857754

`A103517(eq[3, A283486(n+1)])`
-/

namespace A007372.P7247446805683857754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007372.P7247446805683857754

/-! ## A007372.P2277755689989888824

`eq[3, A054973(n+1)]+1`
-/

namespace A007372.P2277755689989888824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A007372.P2277755689989888824

/-! ## A007372.P285983201397694191

`eq[3, A054973(A028310(n))]`
-/

namespace A007372.P285983201397694191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007372.P285983201397694191

/-! ## A007372.P11993478037864750153

`A011760(eq[3, A054973(n+1)])`
-/

namespace A007372.P11993478037864750153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007372.P11993478037864750153

/-! ## A007372.P4927544645465430325

`A014681(eq[3, A054973(n+1)])`
-/

namespace A007372.P4927544645465430325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007372.P4927544645465430325

/-! ## A007372.P13621877129386689191

`A020725(eq[3, A054973(n+1)])`
-/

namespace A007372.P13621877129386689191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A007372.P13621877129386689191

/-! ## A007372.P8409566884541244813

`eq[3, A054973(A065190(n+1))]`
-/

namespace A007372.P8409566884541244813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007372.P8409566884541244813

/-! ## A007372.P6433237009479242339

`eq[3, A054973(A060000(n+1))]`
-/

namespace A007372.P6433237009479242339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007372.P6433237009479242339

/-!
# A007373: Numbers k such that sigma(k+2) = sigma(k).

The programs for A007373, there is no canonical definition to state claims against.
-/

/-! ## A007373.P6924164786124291890

`A055574(n+1)-1`
-/

namespace A007373.P6924164786124291890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055574 (n + 1) - 1

end

end A007373.P6924164786124291890

/-! ## A007373.P8090865610178425948

`A106400(A059150(n))+A055574(n+1)`
-/

namespace A007373.P8090865610178425948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A059150 n).toNat + A055574 (n + 1)

end

end A007373.P8090865610178425948

/-! ## A007373.P4769273713095404792

`A057428(n+1)+A055574(n+1)`
-/

namespace A007373.P4769273713095404792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A055574 (n + 1)

end

end A007373.P4769273713095404792

/-! ## A007373.P13133461644691779144

`A134824(A002024(3*(n+1)))+A055574(n+1)`
-/

namespace A007373.P13133461644691779144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A002024 (3 * (n + 1))).toNat + A055574 (n + 1)

end

end A007373.P13133461644691779144

/-! ## A007373.P10889047313971306110

`record[A055574(A286554(n))-1]`
-/

namespace A007373.P10889047313971306110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055574 (A286554 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007373.P10889047313971306110

/-! ## A007373.P3913491149239402897

`record[A055574(A065648(n))-1]`
-/

namespace A007373.P3913491149239402897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055574 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007373.P3913491149239402897

/-! ## A007373.P14933931990418406018

`A085384(A271799(n+1))+A055574(n+1)`
-/

namespace A007373.P14933931990418406018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (A271799 (n + 1)).toNat + A055574 (n + 1)

end

end A007373.P14933931990418406018

/-! ## A007373.P5617700737525644521

`(A175876(n+1)+A055574(n+1))%A067134(n+1)`
-/

namespace A007373.P5617700737525644521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175876 (n + 1) + A055574 (n + 1)) (A067134 (n + 1))

end

end A007373.P5617700737525644521

/-! ## A007373.P14724388779155267776

`A223137(n+2)-1`
-/

namespace A007373.P14724388779155267776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223137 (n + 2) - 1

end

end A007373.P14724388779155267776

/-! ## A007373.P10755544339631390625

`∩[A067130(n+1), A227304(n+1)]-1`
-/

namespace A007373.P10755544339631390625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227304 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A007373.P10755544339631390625

/-! ## A007373.P9259258916050013630

`A321804(A135481(n))+A055574(n+1)`
-/

namespace A007373.P9259258916050013630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A135481 n).toNat + A055574 (n + 1)

end

end A007373.P9259258916050013630

/-! ## A007373.P3242970874642209657

`A309215(A014963(42*(n+1)))+A055574(n+1)`
-/

namespace A007373.P3242970874642209657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309215 (A014963 (42 * (n + 1))).toNat + A055574 (n + 1)

end

end A007373.P3242970874642209657

/-! ## A007373.P3434150257303134810

`A085384(A153414(n+1))+A055574(n+1)`
-/

namespace A007373.P3434150257303134810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (A153414 (n + 1)).toNat + A055574 (n + 1)

end

end A007373.P3434150257303134810

/-!
# A007374: Smallest k such that phi(x) = k has exactly n solutions, n>=2.

The programs for A007374, there is no canonical definition to state claims against.
-/

/-! ## A007374.P2361057301518280610

`A014573(n+2)`
-/

namespace A007374.P2361057301518280610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014573 (n + 2)

end

end A007374.P2361057301518280610

/-! ## A007374.P6338468885364782950

`(2*A085758(n+2))%A172464(n+1)`
-/

namespace A007374.P6338468885364782950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A085758 (n + 2)) (A172464 (n + 1))

end

end A007374.P6338468885364782950

/-! ## A007374.P11003675105731999093

`A000010(A066420(n+2))`
-/

namespace A007374.P11003675105731999093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A066420 (n + 2)).toNat

end

end A007374.P11003675105731999093

/-! ## A007374.P13554053960659918841

`A000010(A224531(∑[n+1]+1))`
-/

namespace A007374.P13554053960659918841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A224531 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A007374.P13554053960659918841

/-! ## A007374.P1473743717531541241

`A000010(A224532(n+2))`
-/

namespace A007374.P1473743717531541241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A224532 (n + 2)).toNat

end

end A007374.P1473743717531541241

/-! ## A007374.P1569229417973451667

`A319997(or(1, A066420(n+2)))`
-/

namespace A007374.P1569229417973451667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (Int.lor 1 (A066420 (n + 2))).toNat

end

end A007374.P1569229417973451667

/-! ## A007374.P11788153416426922671

`A000010(lcm(2, A224531(C(n+3, 2))))`
-/

namespace A007374.P11788153416426922671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (A224531 (Nat.choose (n + 3) 2)))

end

end A007374.P11788153416426922671

/-!
# A007376: The almost-natural numbers: write n in base 10 and juxtapose digits.

The programs for A007376, there is no canonical definition to state claims against.
-/

/-! ## A007376.P8421461435001089468

`A065649(n)%10`
-/

namespace A007376.P8421461435001089468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 n) 10

end

end A007376.P8421461435001089468

/-! ## A007376.P14789809568777447581

`A033307(abs(1-n))%A101100(n+1)`
-/

namespace A007376.P14789809568777447581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033307 |1 - (n : ℤ)|.toNat) (A101100 (n + 1))

end

end A007376.P14789809568777447581

/-! ## A007376.P6486679777756571289

`A033307(n-A057427(n))*A057427(n)`
-/

namespace A007376.P6486679777756571289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 ((n : ℤ) - A057427 n).toNat * A057427 n

end

end A007376.P6486679777756571289

/-! ## A007376.P1118400224193846307

`A033307(n-A007318(A007318(a(n-1))))` with `a(0)=0`
-/

namespace A007376.P1118400224193846307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033307 ((n : ℤ) - A007318 (A007318 (a (n - 1)).toNat).toNat).toNat

end

end A007376.P1118400224193846307

/-! ## A007376.P995948583462836378

`A108202(2*n)`
-/

namespace A007376.P995948583462836378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

end

end A007376.P995948583462836378

/-! ## A007376.P7822234471493748709

`A010879(A065649(n))`
-/

namespace A007376.P7822234471493748709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065649 n).toNat

end

end A007376.P7822234471493748709

/-! ## A007376.P5665935232595239460

`A033307(A261334(A261293(A065650(n))))`
-/

namespace A007376.P5665935232595239460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A261334 (A261293 (A065650 n).toNat).toNat).toNat

end

end A007376.P5665935232595239460

/-! ## A007376.P15473533061342520257

`n-A098728((n-1)%(n+1))`
-/

namespace A007376.P15473533061342520257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A098728 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A007376.P15473533061342520257

/-! ## A007376.P2297786518533626451

`n-A098728(A004273(n)-n)`
-/

namespace A007376.P2297786518533626451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A098728 (A004273 n - (n : ℤ)).toNat

end

end A007376.P2297786518533626451

/-! ## A007376.P8392657107873951625

`1-A098732(n+1)+n`
-/

namespace A007376.P8392657107873951625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A098732 (n + 1) + (n : ℤ)

end

end A007376.P8392657107873951625

/-! ## A007376.P13901480688660280089

`n-A023443(A098732(n+1))`
-/

namespace A007376.P13901480688660280089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A098732 (n + 1)).toNat

end

end A007376.P13901480688660280089

/-!
# A007377: Numbers k such that the decimal expansion of 2^k contains no 0.

The programs for A007377, there is no canonical definition to state claims against.
-/

/-! ## A007377.P13175691888872093206

`lt[0, ∏{digits}[2^n, #]]`
-/

namespace A007377.P13175691888872093206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007377.P13175691888872093206

/-! ## A007377.P4076186945056661656

`record[A305932(n)]`
-/

namespace A007377.P4076186945056661656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A007377.P4076186945056661656

/-! ## A007377.P12660660918460628283

`eq[0, A027870(n)]`
-/

namespace A007377.P12660660918460628283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007377.P12660660918460628283

/-! ## A007377.P13701149894420592626

`eq[0, A224782(n)]`
-/

namespace A007377.P13701149894420592626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007377.P13701149894420592626

/-! ## A007377.P8809923298825287574

`eq[0, A330024(n)]`
-/

namespace A007377.P8809923298825287574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007377.P8809923298825287574

/-!
# A007378: a(n), for n >= 2, is smallest positive integer which is consistent with sequence being monotonically increasing and satisfying a(a(n)) = 2n.

The programs for A007378, the canonical program `A007378.P13238682359254328694` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007378 has offset 2).

The definition of A007378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007378.P13238682359254328694

`∑[abs(a(floor((n-1)/2)))]` with `a(0)=3, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007378

/-- `∑[abs(a(floor((n-1)/2)))]` -/
def P13238682359254328694.Spec : Prop :=
  ∀ n, (P13238682359254328694.a n : ℤ) = A007378 (n + 2)

theorem P13238682359254328694.correct : P13238682359254328694.Spec := by
  intro n
  simp only [A007378, Nat.add_sub_cancel]

end A007378

/-! ## A007378.P13565725039317459817

`∑[floor(a(floor((n-1)/2)))]` with `a(0)=3, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A007378.P13565725039317459817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007378.P13565725039317459817

namespace A007378

/-- `∑[floor(a(floor((n-1)/2)))]` -/
def P13565725039317459817.Spec : Prop :=
  ∀ n, (P13565725039317459817.a n : ℤ) = A007378 (n + 2)

theorem P13565725039317459817.correct : P13565725039317459817.Spec := by
  intro n
  simp only [A007378, Nat.add_sub_cancel, A007378.P13565725039317459817.f1, A007378.P13565725039317459817.a, A007378.P13238682359254328694.f1, A007378.P13238682359254328694.a, SequenceMachineLib.memo_apply]

end A007378

/-! ## A007378.P17367454673637356889

`∑[ceil(a(ceil(n/2)-1))]` with `a(0)=3, a(1)=1, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A007378.P17367454673637356889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007378.P17367454673637356889

namespace A007378

/-- `∑[ceil(a(ceil(n/2)-1))]` -/
def P17367454673637356889.Spec : Prop :=
  ∀ n, (P17367454673637356889.a n : ℤ) = A007378 (n + 2)

end A007378

/-! ## A007378.P15546829248344811980

`∑[ceil((n+1)/xor(n+1, ceil(n/2)))]+2`
-/

namespace A007378.P15546829248344811980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Int.xor (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉ : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A007378.P15546829248344811980

namespace A007378

/-- `∑[ceil((n+1)/xor(n+1, ceil(n/2)))]+2` -/
def P15546829248344811980.Spec : Prop :=
  ∀ n, P15546829248344811980.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P16197556864197400964

`lt[xor(and(n, n+1), a(n-1)), n]+1` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A007378.P16197556864197400964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  Nat.xor (Nat.land n (n + 1)) (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A007378.P16197556864197400964

namespace A007378

/-- `lt[xor(and(n, n+1), a(n-1)), n]+1` -/
def P16197556864197400964.Spec : Prop :=
  ∀ n, (P16197556864197400964.a n : ℤ) = A007378 (n + 2)

end A007378

/-! ## A007378.P7969995798334536274

`lt[or(2*n+1, n+2)-a(n-1), 2*n]+1` with `a(0)=0`
-/

namespace A007378.P7969995798334536274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.lor (2 * n + 1) (n + 2) : ℤ) - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A007378.P7969995798334536274

namespace A007378

/-- `lt[or(2*n+1, n+2)-a(n-1), 2*n]+1` -/
def P7969995798334536274.Spec : Prop :=
  ∀ n, (P7969995798334536274.a n : ℤ) = A007378 (n + 2)

end A007378

/-! ## A007378.P15687977770017991741

`a(n-1)+gcd(2, a(n-1)/gcd(n+1, a(n-1)))` with `a(0)=3`
-/

namespace A007378.P15687977770017991741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + Int.gcd 2 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (Nat.gcd (n + 1) (a (n - 1)) : ℚ)))

end

end A007378.P15687977770017991741

namespace A007378

/-- `a(n-1)+gcd(2, a(n-1)/gcd(n+1, a(n-1)))` -/
def P15687977770017991741.Spec : Prop :=
  ∀ n, (P15687977770017991741.a n : ℤ) = A007378 (n + 2)

end A007378

/-! ## A007378.P9223087988424502621

`A080637(n+1)+1`
-/

namespace A007378.P9223087988424502621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (n + 1) + 1

end

end A007378.P9223087988424502621

namespace A007378

/-- `A080637(n+1)+1` -/
def P9223087988424502621.Spec : Prop :=
  ∀ n, P9223087988424502621.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P2249403132535235851

`A115836(n+1)+2`
-/

namespace A007378.P2249403132535235851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115836 (n + 1) + 2

end

end A007378.P2249403132535235851

namespace A007378

/-- `A115836(n+1)+2` -/
def P2249403132535235851.Spec : Prop :=
  ∀ n, P2249403132535235851.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P1305521672821846415

`lt[lcm(n, A063946(n)), n²]`
-/

namespace A007378.P1305521672821846415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A063946 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A007378.P1305521672821846415

namespace A007378

/-- `lt[lcm(n, A063946(n)), n²]` -/
def P1305521672821846415.Spec : Prop :=
  ∀ n, (P1305521672821846415.a n : ℤ) = A007378 (n + 2)

end A007378

/-! ## A007378.P2289936306213364217

`A166079(n+3)+n+1`
-/

namespace A007378.P2289936306213364217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (n + 3) + (n + 1 : ℤ)

end

end A007378.P2289936306213364217

namespace A007378

/-- `A166079(n+3)+n+1` -/
def P2289936306213364217.Spec : Prop :=
  ∀ n, P2289936306213364217.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P12284155131154794598

`A277267(n+1)+3+n`
-/

namespace A007378.P12284155131154794598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (n + 1) + 3 + (n : ℤ)

end

end A007378.P12284155131154794598

namespace A007378

/-- `A277267(n+1)+3+n` -/
def P12284155131154794598.Spec : Prop :=
  ∀ n, P12284155131154794598.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P5427384934573738623

`2*(n+2)-A078881(n+1)`
-/

namespace A007378.P5427384934573738623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A078881 (n + 1)

end

end A007378.P5427384934573738623

namespace A007378

/-- `2*(n+2)-A078881(n+1)` -/
def P5427384934573738623.Spec : Prop :=
  ∀ n, P5427384934573738623.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P9837029916540799184

`2*n+3-A279521(n+1)`
-/

namespace A007378.P9837029916540799184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A279521 (n + 1)

end

end A007378.P9837029916540799184

namespace A007378

/-- `2*n+3-A279521(n+1)` -/
def P9837029916540799184.Spec : Prop :=
  ∀ n, P9837029916540799184.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P3338724903704056084

`A079882(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A007378.P3338724903704056084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A079882 (n - 1) + a (n - 1)

end

end A007378.P3338724903704056084

namespace A007378

/-- `A079882(n-1)+a(n-1)` -/
def P3338724903704056084.Spec : Prop :=
  ∀ n, P3338724903704056084.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P2646085844406824708

`comp[lt[A003188(n), n]+n-1]+3`
-/

namespace A007378.P2646085844406824708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A007378.P2646085844406824708

namespace A007378

/-- `comp[lt[A003188(n), n]+n-1]+3` -/
def P2646085844406824708.Spec : Prop :=
  ∀ n, (P2646085844406824708.a n : ℤ) = A007378 (n + 2)

end A007378

/-! ## A007378.P2107690619933774664

`A079905(n+1)+A054977(n)`
-/

namespace A007378.P2107690619933774664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (n + 1) + A054977 n

end

end A007378.P2107690619933774664

namespace A007378

/-- `A079905(n+1)+A054977(n)` -/
def P2107690619933774664.Spec : Prop :=
  ∀ n, P2107690619933774664.a n = A007378 (n + 2)

end A007378

/-! ## A007378.P16611371372331396935

`A079945(n)+2-A079944(n)`
-/

namespace A007378.P16611371372331396935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 n + (2 - A079944 n)

end

end A007378.P16611371372331396935

namespace A007378

/-- `A079945(n)+2-A079944(n)` -/
def P16611371372331396935.Spec : Prop :=
  ∀ n, P16611371372331396935.a n = A007378 (n + 2)

end A007378

/-!
# A007380: Number of 5th-order maximal independent sets in path graph.

The programs for A007380, the canonical program `A007380.P3502956086768330197` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007380 has offset 1).

The definition of A007380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007380.P3502956086768330197

`a(n-2)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3, a(4)=1, a(5)=4, a(6)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007380

/-- `a(n-2)+a(n-7)` -/
def P3502956086768330197.Spec : Prop :=
  ∀ n, (P3502956086768330197.a n : ℤ) = A007380 (n + 1)

theorem P3502956086768330197.correct : P3502956086768330197.Spec := by
  intro n
  simp only [A007380, Nat.add_sub_cancel]

end A007380

/-! ## A007380.P1927403021589514569

`A369813(n+8)`
-/

namespace A007380.P1927403021589514569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (n + 8)

end

end A007380.P1927403021589514569

namespace A007380

/-- `A369813(n+8)` -/
def P1927403021589514569.Spec : Prop :=
  ∀ n, P1927403021589514569.a n = A007380 (n + 1)

end A007380

/-! ## A007380.P9052000176898919549

`A007385(n+1)+Δ[A101881(n)]`
-/

namespace A007380.P9052000176898919549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007385 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007380.P9052000176898919549

namespace A007380

/-- `A007385(n+1)+Δ[A101881(n)]` -/
def P9052000176898919549.Spec : Prop :=
  ∀ n, P9052000176898919549.a n = A007380 (n + 1)

end A007380

/-! ## A007380.P16203587994316736372

`A007385(n+1)+Δ[A165157(n)]`
-/

namespace A007380.P16203587994316736372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007385 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007380.P16203587994316736372

namespace A007380

/-- `A007385(n+1)+Δ[A165157(n)]` -/
def P16203587994316736372.Spec : Prop :=
  ∀ n, P16203587994316736372.a n = A007380 (n + 1)

end A007380

/-! ## A007380.P15177382506312182839

`A133622(n+1)+A007385(n+1)`
-/

namespace A007380.P15177382506312182839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1) + A007385 (n + 1)

end

end A007380.P15177382506312182839

namespace A007380

/-- `A133622(n+1)+A007385(n+1)` -/
def P15177382506312182839.Spec : Prop :=
  ∀ n, P15177382506312182839.a n = A007380 (n + 1)

end A007380

/-! ## A007380.P5013349259078212071

`A158416(n+1)+A007385(n+1)`
-/

namespace A007380.P5013349259078212071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (n + 1) + A007385 (n + 1)

end

end A007380.P5013349259078212071

namespace A007380

/-- `A158416(n+1)+A007385(n+1)` -/
def P5013349259078212071.Spec : Prop :=
  ∀ n, P5013349259078212071.a n = A007380 (n + 1)

end A007380

/-! ## A007380.P3477195737516270036

`A152271(n+2)+A007385(n+1)`
-/

namespace A007380.P3477195737516270036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 2) + A007385 (n + 1)

end

end A007380.P3477195737516270036

namespace A007380

/-- `A152271(n+2)+A007385(n+1)` -/
def P3477195737516270036.Spec : Prop :=
  ∀ n, P3477195737516270036.a n = A007380 (n + 1)

end A007380

/-! ## A007380.P1814111004165022475

`A057979(n+4)+A007385(n+1)`
-/

namespace A007380.P1814111004165022475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 4) + A007385 (n + 1)

end

end A007380.P1814111004165022475

namespace A007380

/-- `A057979(n+4)+A007385(n+1)` -/
def P1814111004165022475.Spec : Prop :=
  ∀ n, P1814111004165022475.a n = A007380 (n + 1)

end A007380

/-! ## A007380.P14277095832657580255

`A007385(n+1)+A004526(A141310(n+3))`
-/

namespace A007380.P14277095832657580255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007385 (n + 1) + A004526 (A141310 (n + 3)).toNat

end

end A007380.P14277095832657580255

namespace A007380

/-- `A007385(n+1)+A004526(A141310(n+3))` -/
def P14277095832657580255.Spec : Prop :=
  ∀ n, P14277095832657580255.a n = A007380 (n + 1)

end A007380

/-! ## A007380.P2695584418338880764

`A007381(n+1)+A007385(n+1)-A007386(n+1)`
-/

namespace A007380.P2695584418338880764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) + (A007385 (n + 1) - A007386 (n + 1))

end

end A007380.P2695584418338880764

namespace A007380

/-- `A007381(n+1)+A007385(n+1)-A007386(n+1)` -/
def P2695584418338880764.Spec : Prop :=
  ∀ n, P2695584418338880764.a n = A007380 (n + 1)

end A007380

/-!
# A007381: 7th-order maximal independent sets in path graph.

The programs for A007381, there is no canonical definition to state claims against.
-/

/-! ## A007381.P17208096772085880243

`A007386(n+1)+Δ[A101881(n)]`
-/

namespace A007381.P17208096772085880243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007386 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007381.P17208096772085880243

/-! ## A007381.P2393250383037485335

`A007386(n+1)+Δ[A165157(n)]`
-/

namespace A007381.P2393250383037485335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007386 (n + 1) + (f1 (n + 1) - f1 n)

end

end A007381.P2393250383037485335

/-! ## A007381.P8318261279860471692

`A133622(n+1)+A007386(n+1)`
-/

namespace A007381.P8318261279860471692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1) + A007386 (n + 1)

end

end A007381.P8318261279860471692

/-! ## A007381.P16947313295021273301

`A158416(n+1)+A007386(n+1)`
-/

namespace A007381.P16947313295021273301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (n + 1) + A007386 (n + 1)

end

end A007381.P16947313295021273301

/-! ## A007381.P10926602099372426624

`A152271(n+2)+A007386(n+1)`
-/

namespace A007381.P10926602099372426624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n + 2) + A007386 (n + 1)

end

end A007381.P10926602099372426624

/-! ## A007381.P4206981997337778949

`A007380(n+1)+A007386(n+1)-A007385(n+1)`
-/

namespace A007381.P4206981997337778949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) + (A007386 (n + 1) - A007385 (n + 1))

end

end A007381.P4206981997337778949

/-!
# A007382: Number of strict (-1)st-order maximal independent sets in path graph.

The programs for A007382, the canonical program `A007382.P16939889780261268150` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007382 has offset 1).

The definition of A007382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007382.P16939889780261268150

`∑[3*a(n-2)+a(n-3)-2*a(n-4)-a(n-5)]-1` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1, a(4)=7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007382

/-- `∑[3*a(n-2)+a(n-3)-2*a(n-4)-a(n-5)]-1` -/
def P16939889780261268150.Spec : Prop :=
  ∀ n, P16939889780261268150.a n = A007382 (n + 1)

theorem P16939889780261268150.correct : P16939889780261268150.Spec := by
  intro n
  simp only [A007382, Nat.add_sub_cancel]

end A007382

/-! ## A007382.P10602443468854379534

`A054451(n)-1`
-/

namespace A007382.P10602443468854379534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 n - 1

end

end A007382.P10602443468854379534

namespace A007382

/-- `A054451(n)-1` -/
def P10602443468854379534.Spec : Prop :=
  ∀ n, P10602443468854379534.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P137963274472551938

`∑[A213043(n)]-1`
-/

namespace A007382.P137963274472551938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007382.P137963274472551938

namespace A007382

/-- `∑[A213043(n)]-1` -/
def P137963274472551938.Spec : Prop :=
  ∀ n, P137963274472551938.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P5348564205855131455

`A000045(n+3)-(∑[n]%(n+1)+2)`
-/

namespace A007382.P5348564205855131455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 2 : ℕ) : ℤ)

end

end A007382.P5348564205855131455

namespace A007382

/-- `A000045(n+3)-(∑[n]%(n+1)+2)` -/
def P5348564205855131455.Spec : Prop :=
  ∀ n, P5348564205855131455.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P2745095140112856069

`∑[A000045(n+2)-(a(n-1)+and(1, n))]-1` with `a(0)=1`
-/

namespace A007382.P2745095140112856069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000045 (n + 2) - (f1 (n - 1) + (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007382.P2745095140112856069

namespace A007382

/-- `∑[A000045(n+2)-(a(n-1)+and(1, n))]-1` -/
def P2745095140112856069.Spec : Prop :=
  ∀ n, P2745095140112856069.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P13787990097299116709

`∑[a(n-2)-Δ[a(n-2)-A000045(n)]]-1` with `a(0)=1, a(1)=0`
-/

namespace A007382.P13787990097299116709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2) - A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007382.P13787990097299116709

namespace A007382

/-- `∑[a(n-2)-Δ[a(n-2)-A000045(n)]]-1` -/
def P13787990097299116709.Spec : Prop :=
  ∀ n, P13787990097299116709.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P9122131344564863990

`A081662(n)-(A093353(n)+1)`
-/

namespace A007382.P9122131344564863990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081662 n - (A093353 n + 1)

end

end A007382.P9122131344564863990

namespace A007382

/-- `A081662(n)-(A093353(n)+1)` -/
def P9122131344564863990.Spec : Prop :=
  ∀ n, P9122131344564863990.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P11868927877592252262

`A142150(n)+A215004(n)-1`
-/

namespace A007382.P11868927877592252262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + (A215004 n - 1)

end

end A007382.P11868927877592252262

namespace A007382

/-- `A142150(n)+A215004(n)-1` -/
def P11868927877592252262.Spec : Prop :=
  ∀ n, P11868927877592252262.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P6481626572726536191

`∑[A081659(n)-A014682(n)]-1`
-/

namespace A007382.P6481626572726536191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A007382.P6481626572726536191

namespace A007382

/-- `∑[A081659(n)-A014682(n)]-1` -/
def P6481626572726536191.Spec : Prop :=
  ∀ n, P6481626572726536191.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P15203633843054716124

`A020695(n)-(A133622(n+1)+1)`
-/

namespace A007382.P15203633843054716124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - (A133622 (n + 1) + 1)

end

end A007382.P15203633843054716124

namespace A007382

/-- `A020695(n)-(A133622(n+1)+1)` -/
def P15203633843054716124.Spec : Prop :=
  ∀ n, P15203633843054716124.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P631000523837914093

`A255875(n+1)-A080512(n+1)`
-/

namespace A007382.P631000523837914093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255875 (n + 1) - A080512 (n + 1)

end

end A007382.P631000523837914093

namespace A007382

/-- `A255875(n+1)-A080512(n+1)` -/
def P631000523837914093.Spec : Prop :=
  ∀ n, P631000523837914093.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P3753609551271252460

`∑[A000071(n+1)-A001057(n)]+n`
-/

namespace A007382.P3753609551271252460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A007382.P3753609551271252460

namespace A007382

/-- `∑[A000071(n+1)-A001057(n)]+n` -/
def P3753609551271252460.Spec : Prop :=
  ∀ n, P3753609551271252460.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P9561277965954413239

`A001911(n)-∑[A000035(n)]*A000035(n)`
-/

namespace A007382.P9561277965954413239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n - (∑ j ∈ Finset.range (n + 1), f1 j) * A000035 n

end

end A007382.P9561277965954413239

namespace A007382

/-- `A001911(n)-∑[A000035(n)]*A000035(n)` -/
def P9561277965954413239.Spec : Prop :=
  ∀ n, P9561277965954413239.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P12130717670891525727

`∑[A213043(n)%A213043(n+3)]`
-/

namespace A007382.P12130717670891525727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213043 n) (A213043 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007382.P12130717670891525727

namespace A007382

/-- `∑[A213043(n)%A213043(n+3)]` -/
def P12130717670891525727.Spec : Prop :=
  ∀ n, P12130717670891525727.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P10139410897898233833

`A054450(A340266(n+1))-1`
-/

namespace A007382.P10139410897898233833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A340266 (n + 1)).toNat - 1

end

end A007382.P10139410897898233833

namespace A007382

/-- `A054450(A340266(n+1))-1` -/
def P10139410897898233833.Spec : Prop :=
  ∀ n, P10139410897898233833.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P14700003157828571185

`A294453(A116940(n+1))-1`
-/

namespace A007382.P14700003157828571185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 (A116940 (n + 1)).toNat - 1

end

end A007382.P14700003157828571185

namespace A007382

/-- `A294453(A116940(n+1))-1` -/
def P14700003157828571185.Spec : Prop :=
  ∀ n, P14700003157828571185.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P660742519269288075

`A038792(A074148(n+2))-1`
-/

namespace A007382.P660742519269288075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A074148 (n + 2)).toNat - 1

end

end A007382.P660742519269288075

namespace A007382

/-- `A038792(A074148(n+2))-1` -/
def P660742519269288075.Spec : Prop :=
  ∀ n, P660742519269288075.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P9366645349347134811

`A054450(A133263(n+2))-1`
-/

namespace A007382.P9366645349347134811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A133263 (n + 2)).toNat - 1

end

end A007382.P9366645349347134811

namespace A007382

/-- `A054450(A133263(n+2))-1` -/
def P9366645349347134811.Spec : Prop :=
  ∀ n, P9366645349347134811.a n = A007382 (n + 1)

end A007382

/-! ## A007382.P8933340396409655972

`A054450(A167614(n+1)-1)-1`
-/

namespace A007382.P8933340396409655972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A167614 (n + 1) - 1).toNat - 1

end

end A007382.P8933340396409655972

namespace A007382

/-- `A054450(A167614(n+1)-1)-1` -/
def P8933340396409655972.Spec : Prop :=
  ∀ n, P8933340396409655972.a n = A007382 (n + 1)

end A007382

/-!
# A007383: Number of strict first-order maximal independent sets in path graph.

The programs for A007383, the canonical program `A007383.P16560384234796121646` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007383 has offset 1).

The definition of A007383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 819 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007383.P16560384234796121646

`A023434(n)+∑[A130472(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007383

/-- `A023434(n)+∑[A130472(n)]` -/
def P16560384234796121646.Spec : Prop :=
  ∀ n, P16560384234796121646.a n = A007383 (n + 1)

theorem P16560384234796121646.correct : P16560384234796121646.Spec := by
  intro n
  simp only [A007383, Nat.add_sub_cancel]

end A007383

/-! ## A007383.P5743351272675910131

`A023434(n)-∑[A001057(n)]`
-/

namespace A007383.P5743351272675910131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A007383.P5743351272675910131

namespace A007383

/-- `A023434(n)-∑[A001057(n)]` -/
def P5743351272675910131.Spec : Prop :=
  ∀ n, P5743351272675910131.a n = A007383 (n + 1)

end A007383

/-! ## A007383.P15840843968495361976

`A078027(n+9)-A133622(n+1)`
-/

namespace A007383.P15840843968495361976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 9) - A133622 (n + 1)

end

end A007383.P15840843968495361976

namespace A007383

/-- `A078027(n+9)-A133622(n+1)` -/
def P15840843968495361976.Spec : Prop :=
  ∀ n, P15840843968495361976.a n = A007383 (n + 1)

end A007383

/-! ## A007383.P4265135134059638630

`A026741(n+1)+A023434(n)-(n+1)`
-/

namespace A007383.P4265135134059638630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + A023434 n - (n + 1 : ℤ)

end

end A007383.P4265135134059638630

namespace A007383

/-- `A026741(n+1)+A023434(n)-(n+1)` -/
def P4265135134059638630.Spec : Prop :=
  ∀ n, P4265135134059638630.a n = A007383 (n + 1)

end A007383

/-! ## A007383.P17266408301700233279

`Δ[A164315(n)-A101881(n)]`
-/

namespace A007383.P17266408301700233279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 n - A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A007383.P17266408301700233279

namespace A007383

/-- `Δ[A164315(n)-A101881(n)]` -/
def P17266408301700233279.Spec : Prop :=
  ∀ n, P17266408301700233279.a n = A007383 (n + 1)

end A007383

/-! ## A007383.P6154267168590674436

`A023434(n)-log2(A072345(n))`
-/

namespace A007383.P6154267168590674436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023434 n : ℝ) - Real.logb 2 (A072345 n : ℝ)

end

end A007383.P6154267168590674436

namespace A007383

/-- `A023434(n)-log2(A072345(n))` -/
def P6154267168590674436.Spec : Prop :=
  ∀ n, P6154267168590674436.a n = (A007383 (n + 1) : ℝ)

end A007383

/-!
# A007385: Number of strict 5th-order maximal independent sets in path graph.

The programs for A007385, the canonical program `A007385.P7467196621491542789` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007385 has offset 1).

The definition of A007385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007385.P7467196621491542789

`A007380(n+1)-∑[or(1, n)]%(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007385

/-- `A007380(n+1)-∑[or(1, n)]%(n+2)` -/
def P7467196621491542789.Spec : Prop :=
  ∀ n, P7467196621491542789.a n = A007385 (n + 1)

theorem P7467196621491542789.correct : P7467196621491542789.Spec := by
  intro n
  simp only [A007385, Nat.add_sub_cancel]

end A007385

/-! ## A007385.P12309787631319173269

`A007380(n+1)-Δ[A101881(n)]`
-/

namespace A007385.P12309787631319173269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007385.P12309787631319173269

namespace A007385

/-- `A007380(n+1)-Δ[A101881(n)]` -/
def P12309787631319173269.Spec : Prop :=
  ∀ n, P12309787631319173269.a n = A007385 (n + 1)

end A007385

/-! ## A007385.P17702020063760365334

`A007380(n+1)-Δ[A165157(n)]`
-/

namespace A007385.P17702020063760365334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007385.P17702020063760365334

namespace A007385

/-- `A007380(n+1)-Δ[A165157(n)]` -/
def P17702020063760365334.Spec : Prop :=
  ∀ n, P17702020063760365334.a n = A007385 (n + 1)

end A007385

/-! ## A007385.P15081297990421995912

`A007380(n+1)-A133622(n+1)`
-/

namespace A007385.P15081297990421995912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) - A133622 (n + 1)

end

end A007385.P15081297990421995912

namespace A007385

/-- `A007380(n+1)-A133622(n+1)` -/
def P15081297990421995912.Spec : Prop :=
  ∀ n, P15081297990421995912.a n = A007385 (n + 1)

end A007385

/-! ## A007385.P15732123141417335223

`A007380(n+1)-A158416(n+1)`
-/

namespace A007385.P15732123141417335223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) - A158416 (n + 1)

end

end A007385.P15732123141417335223

namespace A007385

/-- `A007380(n+1)-A158416(n+1)` -/
def P15732123141417335223.Spec : Prop :=
  ∀ n, P15732123141417335223.a n = A007385 (n + 1)

end A007385

/-! ## A007385.P10801950538749490280

`A007380(n+1)-A152271(n+2)`
-/

namespace A007385.P10801950538749490280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) - A152271 (n + 2)

end

end A007385.P10801950538749490280

namespace A007385

/-- `A007380(n+1)-A152271(n+2)` -/
def P10801950538749490280.Spec : Prop :=
  ∀ n, P10801950538749490280.a n = A007385 (n + 1)

end A007385

/-! ## A007385.P7899920962016305891

`A007380(n+1)-A057979(n+4)`
-/

namespace A007385.P7899920962016305891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) - A057979 (n + 4)

end

end A007385.P7899920962016305891

namespace A007385

/-- `A007380(n+1)-A057979(n+4)` -/
def P7899920962016305891.Spec : Prop :=
  ∀ n, P7899920962016305891.a n = A007385 (n + 1)

end A007385

/-! ## A007385.P5469220521878875101

`A007380(n+1)+A001489(Δ[A101881(n)])`
-/

namespace A007385.P5469220521878875101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) + A001489 (f1 (n + 1) - f1 n).toNat

end

end A007385.P5469220521878875101

namespace A007385

/-- `A007380(n+1)+A001489(Δ[A101881(n)])` -/
def P5469220521878875101.Spec : Prop :=
  ∀ n, P5469220521878875101.a n = A007385 (n + 1)

end A007385

/-! ## A007385.P3234940521559220006

`A007380(n+1)+A007386(n+1)-A007381(n+1)`
-/

namespace A007385.P3234940521559220006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (n + 1) + (A007386 (n + 1) - A007381 (n + 1))

end

end A007385.P3234940521559220006

namespace A007385

/-- `A007380(n+1)+A007386(n+1)-A007381(n+1)` -/
def P3234940521559220006.Spec : Prop :=
  ∀ n, P3234940521559220006.a n = A007385 (n + 1)

end A007385

/-!
# A007386: Number of strict 7th-order maximal independent sets in path graph.

The programs for A007386, there is no canonical definition to state claims against.
-/

/-! ## A007386.P15504152687654873288

`A007381(n+1)-Δ[A101881(n)]`
-/

namespace A007386.P15504152687654873288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007386.P15504152687654873288

/-! ## A007386.P1681093956637185883

`A007381(n+1)-Δ[A165157(n)]`
-/

namespace A007386.P1681093956637185883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) - (f1 (n + 1) - f1 n)

end

end A007386.P1681093956637185883

/-! ## A007386.P9326536264435939565

`A007381(n+1)-A133622(n+1)`
-/

namespace A007386.P9326536264435939565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) - A133622 (n + 1)

end

end A007386.P9326536264435939565

/-! ## A007386.P11335449885764512715

`A007381(n+1)-A158416(n+1)`
-/

namespace A007386.P11335449885764512715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) - A158416 (n + 1)

end

end A007386.P11335449885764512715

/-! ## A007386.P2996378551841884664

`A007381(n+1)-A152271(n+2)`
-/

namespace A007386.P2996378551841884664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) - A152271 (n + 2)

end

end A007386.P2996378551841884664

/-! ## A007386.P5671449685917053653

`A007381(n+1)-A057979(n+4)`
-/

namespace A007386.P5671449685917053653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) - A057979 (n + 4)

end

end A007386.P5671449685917053653

/-! ## A007386.P7827022751813772129

`A007381(n+1)+A001489(Δ[A101881(n)])`
-/

namespace A007386.P7827022751813772129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) + A001489 (f1 (n + 1) - f1 n).toNat

end

end A007386.P7827022751813772129

/-! ## A007386.P9199308387637241851

`A007381(n+1)+A007385(n+1)-A007380(n+1)`
-/

namespace A007386.P9199308387637241851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (n + 1) + (A007385 (n + 1) - A007380 (n + 1))

end

end A007386.P9199308387637241851

/-!
# A007387: Number of 3rd-order maximal independent sets in cycle graph.

The programs for A007387, the canonical program `A007387.P13652367802576472757` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007387 has offset 1).

The definition of A007387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007387.P13652367802576472757

`a(n-2)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=2, a(4)=5, a(5)=2, a(6)=7, a(7)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007387

/-- `a(n-2)+a(n-5)` -/
def P13652367802576472757.Spec : Prop :=
  ∀ n, (P13652367802576472757.a n : ℤ) = A007387 (n + 1)

theorem P13652367802576472757.correct : P13652367802576472757.Spec := by
  intro n
  simp only [A007387, Nat.add_sub_cancel]

end A007387

/-! ## A007387.P16075655330530644800

`A007392(n+1)+A141310(n)-A000007(n)`
-/

namespace A007387.P16075655330530644800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007392 (n + 1) + (A141310 n - A000007 n)

end

end A007387.P16075655330530644800

namespace A007387

/-- `A007392(n+1)+A141310(n)-A000007(n)` -/
def P16075655330530644800.Spec : Prop :=
  ∀ n, P16075655330530644800.a n = A007387 (n + 1)

end A007387

/-! ## A007387.P757210960108834882

`A007392(n+1)+A057427(n)*A141310(n)`
-/

namespace A007387.P757210960108834882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007392 (n + 1) + A057427 n * A141310 n

end

end A007387.P757210960108834882

namespace A007387

/-- `A007392(n+1)+A057427(n)*A141310(n)` -/
def P757210960108834882.Spec : Prop :=
  ∀ n, P757210960108834882.a n = A007387 (n + 1)

end A007387

/-! ## A007387.P6700481738138421527

`A007392(n+1)+A141310(n)%A005408(n)`
-/

namespace A007387.P6700481738138421527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007392 (n + 1) + Int.tmod (A141310 n) (A005408 n)

end

end A007387.P6700481738138421527

namespace A007387

/-- `A007392(n+1)+A141310(n)%A005408(n)` -/
def P6700481738138421527.Spec : Prop :=
  ∀ n, P6700481738138421527.a n = A007387 (n + 1)

end A007387

/-! ## A007387.P7561168334384834064

`A007388(n+1)+A007392(n+1)-A007393(n+1)`
-/

namespace A007387.P7561168334384834064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (n + 1) + (A007392 (n + 1) - A007393 (n + 1))

end

end A007387.P7561168334384834064

namespace A007387

/-- `A007388(n+1)+A007392(n+1)-A007393(n+1)` -/
def P7561168334384834064.Spec : Prop :=
  ∀ n, P7561168334384834064.a n = A007387 (n + 1)

end A007387

/-! ## A007387.P15339505099798882233

`A007389(n+1)+A007392(n+1)-A007394(n+1)`
-/

namespace A007387.P15339505099798882233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007389 (n + 1) + (A007392 (n + 1) - A007394 (n + 1))

end

end A007387.P15339505099798882233

namespace A007387

/-- `A007389(n+1)+A007392(n+1)-A007394(n+1)` -/
def P15339505099798882233.Spec : Prop :=
  ∀ n, P15339505099798882233.a n = A007387 (n + 1)

end A007387

/-! ## A007387.P398012384823166643

`(A141310(n)+A007392(n+1))%A005159(n)`
-/

namespace A007387.P398012384823166643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141310 n + A007392 (n + 1)) (A005159 n)

end

end A007387.P398012384823166643

namespace A007387

/-- `(A141310(n)+A007392(n+1))%A005159(n)` -/
def P398012384823166643.Spec : Prop :=
  ∀ n, P398012384823166643.a n = A007387 (n + 1)

end A007387

/-!
# A007388: 5th-order maximal independent sets in cycle graph.

The programs for A007388, there is no canonical definition to state claims against.
-/

/-! ## A007388.P14352357789558135693

`A007393(n+1)+A141310(n)-A000007(n)`
-/

namespace A007388.P14352357789558135693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007393 (n + 1) + (A141310 n - A000007 n)

end

end A007388.P14352357789558135693

/-! ## A007388.P943610790257476849

`A007393(n+1)+A141310(n)%A005408(n)`
-/

namespace A007388.P943610790257476849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007393 (n + 1) + Int.tmod (A141310 n) (A005408 n)

end

end A007388.P943610790257476849

/-! ## A007388.P9380089193484289915

`A007393(n+1)+gcd(A010673(n), A087156(n+1))`
-/

namespace A007388.P9380089193484289915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007393 (n + 1) + (Int.gcd (A010673 n) (A087156 (n + 1)) : ℤ)

end

end A007388.P9380089193484289915

/-! ## A007388.P8979906275127527028

`A007389(n+1)+A007393(n+1)-A007394(n+1)`
-/

namespace A007388.P8979906275127527028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007389 (n + 1) + (A007393 (n + 1) - A007394 (n + 1))

end

end A007388.P8979906275127527028

/-! ## A007388.P8914307740937450822

`A007387(n+1)+A007393(n+1)-A007392(n+1)`
-/

namespace A007388.P8914307740937450822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (n + 1) + (A007393 (n + 1) - A007392 (n + 1))

end

end A007388.P8914307740937450822

/-!
# A007389: 7th-order maximal independent sets in cycle graph.

The programs for A007389, there is no canonical definition to state claims against.
-/

/-! ## A007389.P17050479424249166973

`A087156(A141310(n))+A007394(n+1)`
-/

namespace A007389.P17050479424249166973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A141310 n).toNat + A007394 (n + 1)

end

end A007389.P17050479424249166973

/-! ## A007389.P13864202372100715158

`A007394(n+1)+A141310(n)-A000007(n)`
-/

namespace A007389.P13864202372100715158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007394 (n + 1) + (A141310 n - A000007 n)

end

end A007389.P13864202372100715158

/-! ## A007389.P6517920396214851561

`A007394(n+1)+A141310(n)%A005408(n)`
-/

namespace A007389.P6517920396214851561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007394 (n + 1) + Int.tmod (A141310 n) (A005408 n)

end

end A007389.P6517920396214851561

/-! ## A007389.P11187524023853562895

`A007388(n+1)+A007394(n+1)-A007393(n+1)`
-/

namespace A007389.P11187524023853562895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (n + 1) + (A007394 (n + 1) - A007393 (n + 1))

end

end A007389.P11187524023853562895

/-! ## A007389.P8785386913218268460

`A007387(n+1)+A007394(n+1)-A007392(n+1)`
-/

namespace A007389.P8785386913218268460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (n + 1) + (A007394 (n + 1) - A007392 (n + 1))

end

end A007389.P8785386913218268460

/-!
# A007390: Number of strict (-1)st-order maximal independent sets in cycle graph.

The programs for A007390, the canonical program `A007390.P12947736294217796826` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007390 has offset 1).

The definition of A007390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007390.P12947736294217796826

`gcd(n+1, (n+1)%2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A007390

/-- `gcd(n+1, (n+1)%2)+a(n-1)+a(n-2)` -/
def P12947736294217796826.Spec : Prop :=
  ∀ n, (P12947736294217796826.a n : ℤ) = A007390 (n + 1)

theorem P12947736294217796826.correct : P12947736294217796826.Spec := by
  intro n
  simp only [A007390, Nat.add_sub_cancel]

end A007390

/-! ## A007390.P3805469117694748039

`A001350(n)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A007390.P3805469117694748039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A001350 n + a (n - 2)

end

end A007390.P3805469117694748039

namespace A007390

/-- `A001350(n)+a(n-2)` -/
def P3805469117694748039.Spec : Prop :=
  ∀ n, P3805469117694748039.a n = A007390 (n + 1)

end A007390

/-! ## A007390.P16760808745964383038

`A324015(n+1)-A141310(n)`
-/

namespace A007390.P16760808745964383038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 (n + 1) - A141310 n

end

end A007390.P16760808745964383038

namespace A007390

/-- `A324015(n+1)-A141310(n)` -/
def P16760808745964383038.Spec : Prop :=
  ∀ n, P16760808745964383038.a n = A007390 (n + 1)

end A007390

/-! ## A007390.P15631130434406726161

`record[A000032(n)]-(A141310(n)+1)`
-/

namespace A007390.P15631130434406726161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A141310 n + 1)

end

end A007390.P15631130434406726161

namespace A007390

/-- `record[A000032(n)]-(A141310(n)+1)` -/
def P15631130434406726161.Spec : Prop :=
  ∀ n, P15631130434406726161.a n = A007390 (n + 1)

end A007390

/-! ## A007390.P13734424987813250304

`A001610(n)-A242480(A141310(n))`
-/

namespace A007390.P13734424987813250304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n - A242480 (A141310 n).toNat

end

end A007390.P13734424987813250304

namespace A007390

/-- `A001610(n)-A242480(A141310(n))` -/
def P13734424987813250304.Spec : Prop :=
  ∀ n, P13734424987813250304.a n = A007390 (n + 1)

end A007390

/-! ## A007390.P150407350685682781

`record[A000032(n)]-A020725(A141310(n))`
-/

namespace A007390.P150407350685682781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A020725 (A141310 n).toNat

end

end A007390.P150407350685682781

namespace A007390

/-- `record[A000032(n)]-A020725(A141310(n))` -/
def P150407350685682781.Spec : Prop :=
  ∀ n, P150407350685682781.a n = A007390 (n + 1)

end A007390

/-! ## A007390.P11796576344972589271

`A000204(n+1)-A065475(A141310(n))`
-/

namespace A007390.P11796576344972589271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A065475 (A141310 n).toNat

end

end A007390.P11796576344972589271

namespace A007390

/-- `A000204(n+1)-A065475(A141310(n))` -/
def P11796576344972589271.Spec : Prop :=
  ∀ n, P11796576344972589271.a n = A007390 (n + 1)

end A007390

/-!
# A007391: Number of strict first-order maximal independent sets in cycle graph.

The programs for A007391, the canonical program `A007391.P2399758922206179778` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007391 has offset 1).

The definition of A007391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007391.P2399758922206179778

`A001608(n+1)-A141310(n)%A005408(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007391

/-- `A001608(n+1)-A141310(n)%A005408(n)` -/
def P2399758922206179778.Spec : Prop :=
  ∀ n, P2399758922206179778.a n = A007391 (n + 1)

theorem P2399758922206179778.correct : P2399758922206179778.Spec := by
  intro n
  simp only [A007391, Nat.add_sub_cancel]

end A007391

/-! ## A007391.P382245122972759732

`A001608(n+1)+A007392(n+1)-A007387(n+1)`
-/

namespace A007391.P382245122972759732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 1) + (A007392 (n + 1) - A007387 (n + 1))

end

end A007391.P382245122972759732

namespace A007391

/-- `A001608(n+1)+A007392(n+1)-A007387(n+1)` -/
def P382245122972759732.Spec : Prop :=
  ∀ n, P382245122972759732.a n = A007391 (n + 1)

end A007391

/-! ## A007391.P1391708467460031217

`A001608(n+1)+A007393(n+1)-A007388(n+1)`
-/

namespace A007391.P1391708467460031217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 1) + (A007393 (n + 1) - A007388 (n + 1))

end

end A007391.P1391708467460031217

namespace A007391

/-- `A001608(n+1)+A007393(n+1)-A007388(n+1)` -/
def P1391708467460031217.Spec : Prop :=
  ∀ n, P1391708467460031217.a n = A007391 (n + 1)

end A007391

/-! ## A007391.P8571574587372781796

`A001608(n+1)+A007394(n+1)-A007389(n+1)`
-/

namespace A007391.P8571574587372781796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (n + 1) + (A007394 (n + 1) - A007389 (n + 1))

end

end A007391.P8571574587372781796

namespace A007391

/-- `A001608(n+1)+A007394(n+1)-A007389(n+1)` -/
def P8571574587372781796.Spec : Prop :=
  ∀ n, P8571574587372781796.a n = A007391 (n + 1)

end A007391

/-! ## A007391.P14498572322473548586

`Δ[A193744(n)]-A141310(n)%A026324(n)`
-/

namespace A007391.P14498572322473548586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A141310 n) (A026324 n)

end

end A007391.P14498572322473548586

namespace A007391

/-- `Δ[A193744(n)]-A141310(n)%A026324(n)` -/
def P14498572322473548586.Spec : Prop :=
  ∀ n, P14498572322473548586.a n = A007391 (n + 1)

end A007391

/-!
# A007392: Number of strict 3rd-order maximal independent sets in cycle graph.

The programs for A007392, the canonical program `A007392.P3751705006797672955` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007392 has offset 1).

The definition of A007392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A007392.P3751705006797672955

`A007387(n+1)+A000007(n)-A141310(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007392

/-- `A007387(n+1)+A000007(n)-A141310(n)` -/
def P3751705006797672955.Spec : Prop :=
  ∀ n, P3751705006797672955.a n = A007392 (n + 1)

theorem P3751705006797672955.correct : P3751705006797672955.Spec := by
  intro n
  simp only [A007392, Nat.add_sub_cancel]

end A007392

/-! ## A007392.P9157811243583017844

`A007387(n+1)-A141310(n)%A005408(n)`
-/

namespace A007392.P9157811243583017844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (n + 1) - Int.tmod (A141310 n) (A005408 n)

end

end A007392.P9157811243583017844

namespace A007392

/-- `A007387(n+1)-A141310(n)%A005408(n)` -/
def P9157811243583017844.Spec : Prop :=
  ∀ n, P9157811243583017844.a n = A007392 (n + 1)

end A007392

/-! ## A007392.P9466447666331910495

`A007387(n+1)+A007393(n+1)-A007388(n+1)`
-/

namespace A007392.P9466447666331910495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (n + 1) + (A007393 (n + 1) - A007388 (n + 1))

end

end A007392.P9466447666331910495

namespace A007392

/-- `A007387(n+1)+A007393(n+1)-A007388(n+1)` -/
def P9466447666331910495.Spec : Prop :=
  ∀ n, P9466447666331910495.a n = A007392 (n + 1)

end A007392

/-! ## A007392.P4102177803137628909

`A007387(n+1)+A007394(n+1)-A007389(n+1)`
-/

namespace A007392.P4102177803137628909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (n + 1) + (A007394 (n + 1) - A007389 (n + 1))

end

end A007392.P4102177803137628909

namespace A007392

/-- `A007387(n+1)+A007394(n+1)-A007389(n+1)` -/
def P4102177803137628909.Spec : Prop :=
  ∀ n, P4102177803137628909.a n = A007392 (n + 1)

end A007392

/-! ## A007392.P371386072807802653

`A007387(n+1)+A007391(n+1)-A001608(n+1)`
-/

namespace A007392.P371386072807802653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (n + 1) + (A007391 (n + 1) - A001608 (n + 1))

end

end A007392.P371386072807802653

namespace A007392

/-- `A007387(n+1)+A007391(n+1)-A001608(n+1)` -/
def P371386072807802653.Spec : Prop :=
  ∀ n, P371386072807802653.a n = A007392 (n + 1)

end A007392

/-! ## A007392.P13227201838297076193

`(A007387(n+1)-A141310(n))%A000045(n+1)`
-/

namespace A007392.P13227201838297076193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007387 (n + 1) - A141310 n) (A000045 (n + 1))

end

end A007392.P13227201838297076193

namespace A007392

/-- `(A007387(n+1)-A141310(n))%A000045(n+1)` -/
def P13227201838297076193.Spec : Prop :=
  ∀ n, P13227201838297076193.a n = A007392 (n + 1)

end A007392

/-! ## A007392.P4997416934299812376

`(A007387(n+1)-A141310(n))%A000079(n)`
-/

namespace A007392.P4997416934299812376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007387 (n + 1) - A141310 n) (A000079 n)

end

end A007392.P4997416934299812376

namespace A007392

/-- `(A007387(n+1)-A141310(n))%A000079(n)` -/
def P4997416934299812376.Spec : Prop :=
  ∀ n, P4997416934299812376.a n = A007392 (n + 1)

end A007392

/-! ## A007392.P587901113644430206

`and(A007387(n+1)-A141310(n), A000225(n))`
-/

namespace A007392.P587901113644430206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007387 (n + 1) - A141310 n) (A000225 n)

end

end A007392.P587901113644430206

namespace A007392

/-- `and(A007387(n+1)-A141310(n), A000225(n))` -/
def P587901113644430206.Spec : Prop :=
  ∀ n, P587901113644430206.a n = A007392 (n + 1)

end A007392

/-! ## A007392.P13297470186903126796

`(A007387(n+1)-A141310(n))*A052409(n²+1)`
-/

namespace A007392.P13297470186903126796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007387 (n + 1) - A141310 n) * A052409 (n ^ 2 + 1)

end

end A007392.P13297470186903126796

namespace A007392

/-- `(A007387(n+1)-A141310(n))*A052409(n²+1)` -/
def P13297470186903126796.Spec : Prop :=
  ∀ n, P13297470186903126796.a n = A007392 (n + 1)

end A007392

/-!
# A007393: Number of strict 5th-order maximal independent sets in cycle graph.

The programs for A007393, there is no canonical definition to state claims against.
-/

/-! ## A007393.P11105938885961207580

`A007388(n+1)+A000007(n)-A141310(n)`
-/

namespace A007393.P11105938885961207580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (n + 1) + (A000007 n - A141310 n)

end

end A007393.P11105938885961207580

/-! ## A007393.P17372446646765914551

`A007388(n+1)-A057427(n)*A141310(n)`
-/

namespace A007393.P17372446646765914551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (n + 1) - A057427 n * A141310 n

end

end A007393.P17372446646765914551

/-! ## A007393.P1536096410826927510

`(A007388(n+1)-A141310(n))*A157928(n)`
-/

namespace A007393.P1536096410826927510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007388 (n + 1) - A141310 n) * A157928 n

end

end A007393.P1536096410826927510

/-! ## A007393.P5059236601764018611

`A007388(n+1)-A141310(n)%A005408(n)`
-/

namespace A007393.P5059236601764018611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (n + 1) - Int.tmod (A141310 n) (A005408 n)

end

end A007393.P5059236601764018611

/-! ## A007393.P9935786077749396218

`A007388(n+1)+A007394(n+1)-A007389(n+1)`
-/

namespace A007393.P9935786077749396218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (n + 1) + (A007394 (n + 1) - A007389 (n + 1))

end

end A007393.P9935786077749396218

/-! ## A007393.P13046690888376280477

`A014053(A000040(n+1))+A007388(n+1)-A141310(n)`
-/

namespace A007393.P13046690888376280477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014053 (A000040 (n + 1)).toNat + (A007388 (n + 1) - A141310 n)

end

end A007393.P13046690888376280477

/-! ## A007393.P10367280396488740120

`A007388(n+1)+A007392(n+1)-A007387(n+1)`
-/

namespace A007393.P10367280396488740120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (n + 1) + (A007392 (n + 1) - A007387 (n + 1))

end

end A007393.P10367280396488740120

/-! ## A007393.P16833802985924609607

`A007388(n+1)+A007391(n+1)-A001608(n+1)`
-/

namespace A007393.P16833802985924609607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007388 (n + 1) + (A007391 (n + 1) - A001608 (n + 1))

end

end A007393.P16833802985924609607

/-! ## A007393.P11231730116999351636

`(A007388(n+1)-A141310(n))%A001611(n)`
-/

namespace A007393.P11231730116999351636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007388 (n + 1) - A141310 n) (A001611 n)

end

end A007393.P11231730116999351636

/-!
# A007394: Number of strict 7th-order maximal independent sets in cycle graph.

The programs for A007394, there is no canonical definition to state claims against.
-/

/-! ## A007394.P12912477785690545643

`A007389(n+1)+A000007(n)-A141310(n)`
-/

namespace A007394.P12912477785690545643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007389 (n + 1) + (A000007 n - A141310 n)

end

end A007394.P12912477785690545643

/-! ## A007394.P4576986818617557693

`A007389(n+1)-A057427(n)*A141310(n)`
-/

namespace A007394.P4576986818617557693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007389 (n + 1) - A057427 n * A141310 n

end

end A007394.P4576986818617557693

/-! ## A007394.P1157652906117864198

`A007389(n+1)-A141310(n)%A005408(n)`
-/

namespace A007394.P1157652906117864198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007389 (n + 1) - Int.tmod (A141310 n) (A005408 n)

end

end A007394.P1157652906117864198

/-! ## A007394.P4338359262943101799

`A007389(n+1)+A007393(n+1)-A007388(n+1)`
-/

namespace A007394.P4338359262943101799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007389 (n + 1) + (A007393 (n + 1) - A007388 (n + 1))

end

end A007394.P4338359262943101799

/-! ## A007394.P15910965425359073705

`A007389(n+1)+A007392(n+1)-A007387(n+1)`
-/

namespace A007394.P15910965425359073705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007389 (n + 1) + (A007392 (n + 1) - A007387 (n + 1))

end

end A007394.P15910965425359073705

/-! ## A007394.P4695223097480004893

`A028310(A007389(n+1))-A141310(n)`
-/

namespace A007394.P4695223097480004893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007389 (n + 1)).toNat - A141310 n

end

end A007394.P4695223097480004893

/-!
# A007395: Constant sequence: the all 2's sequence.

The programs for A007395, the canonical program `A007395.P8813562151010342446` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A007395 has offset 1).

The definition of A007395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A007395.P8813562151010342446

`A002061(n)-A165900(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A007395

/-- `A002061(n)-A165900(n)` -/
def P8813562151010342446.Spec : Prop :=
  ∀ n, P8813562151010342446.a n = A007395 (n + 1)

theorem P8813562151010342446.correct : P8813562151010342446.Spec := by
  intro n
  simp only [A007395, Nat.add_sub_cancel]

end A007395

/-!
# A007396: Add 2, then reverse digits!.

The programs for A007396, there is no canonical definition to state claims against.
-/

/-! ## A007396.P16214408601849397431

`A004086(a(n-1)+2)` with `a(0)=0`
-/

namespace A007396.P16214408601849397431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 (a (n - 1) + 2).toNat

end

end A007396.P16214408601849397431

/-!
# A007397: Add 5, then reverse digits!.

The programs for A007397, there is no canonical definition to state claims against.
-/

/-! ## A007397.P2530438669350320010

`A004086(a(n-1)+5)` with `a(0)=0`
-/

namespace A007397.P2530438669350320010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 (a (n - 1) + 5).toNat

end

end A007397.P2530438669350320010

/-!
# A007398: Add 7, then reverse digits.

The programs for A007398, there is no canonical definition to state claims against.
-/

/-! ## A007398.P3437650509159586689

`A004086(a(n-1)+7)` with `a(0)=0`
-/

namespace A007398.P3437650509159586689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 (a (n - 1) + 7).toNat

end

end A007398.P3437650509159586689

/-!
# A007399: Add 8, then reverse digits!.

The programs for A007399, there is no canonical definition to state claims against.
-/

/-! ## A007399.P13307743733743130932

`A004086(a(n-1)+8)` with `a(0)=0`
-/

namespace A007399.P13307743733743130932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 (a (n - 1) + 8).toNat

end

end A007399.P13307743733743130932

