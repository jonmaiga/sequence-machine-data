import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A009900: Coordination sequence T4 for Zeolite Code RUT.

The programs for A009900, there is no canonical definition to state claims against.
-/

/-! ## A009900.P13643851948139324975

`A038409(n)+A001221(n+1)*A001221(A001757(n))`
-/

namespace A009900.P13643851948139324975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038409 n + A001221 (n + 1) * A001221 (A001757 n).toNat

end

end A009900.P13643851948139324975

/-!
# A009901: Coordination sequence T5 for Zeolite Code RUT.

The programs for A009901, there is no canonical definition to state claims against.
-/

/-! ## A009901.P15451056747585101842

`A357621(A038202(n+4))+A008811(3*n)`
-/

namespace A009901.P15451056747585101842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (A038202 (n + 4)).toNat + A008811 (3 * n)

end

end A009901.P15451056747585101842

/-!
# A009902: Coordination sequence T1 for Zeolite Code VET.

The programs for A009902, there is no canonical definition to state claims against.
-/

/-! ## A009902.P9427042832392156214

`∑[∑[A216253(A032555(n+1))]]`
-/

namespace A009902.P9427042832392156214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216253 (A032555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009902.P9427042832392156214

/-! ## A009902.P11851306234967526665

`∑[∑[A216253(A078213(n+1))]]`
-/

namespace A009902.P11851306234967526665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216253 (A078213 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009902.P11851306234967526665

/-! ## A009902.P1730891143442919029

`∑[∑[A216253(n+1)%A118988(n+3)]]`
-/

namespace A009902.P1730891143442919029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216253 (n + 1)) (A118988 (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009902.P1730891143442919029

/-! ## A009902.P12631283235206169312

`A344174(A152090(n))+A008164(n)`
-/

namespace A009902.P12631283235206169312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344174 (A152090 n).toNat + A008164 n

end

end A009902.P12631283235206169312

/-!
# A009907: Coordination sequence T1 for Zeolite Code VNI.

The programs for A009907, there is no canonical definition to state claims against.
-/

/-! ## A009907.P7298726973376191212

`or(A038407(n), A123068(A026698(n)))`
-/

namespace A009907.P7298726973376191212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038407 n) (A123068 (A026698 n).toNat)

end

end A009907.P7298726973376191212

/-! ## A009907.P10911186800456274935

`or(A000292(n+1), A237706(A000984(n)))`
-/

namespace A009907.P10911186800456274935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000292 (n + 1)) (A237706 (A000984 n).toNat)

end

end A009907.P10911186800456274935

/-!
# A009923: Coordination sequence for CaF2(1), Ca position.

The programs for A009923, there is no canonical definition to state claims against.
-/

/-! ## A009923.P15367159769436765115

`A000203((∑[8*n]-n)^(lcm(12, n)/12))`
-/

namespace A009923.P15367159769436765115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℝ) ^ ((Nat.lcm 12 n : ℚ) / 12 : ℝ))).toNat

end

end A009923.P15367159769436765115

/-!
# A009924: Coordination sequence for CaF2(1), F position.

The programs for A009924, the canonical program `A009924.P8455884764933934148` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009924 has offset 0).

The definition of A009924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009924.P8455884764933934148

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=10, a(2)=34, a(3)=82, a(4)=142, a(5)=218, a(6)=322, a(7)=434`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009924

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P8455884764933934148.Spec : Prop :=
  ∀ n, P8455884764933934148.a n = A009924 n

theorem P8455884764933934148.correct : P8455884764933934148.Spec := by
  intro n
  simp only [A009924]

end A009924

/-! ## A009924.P3231539968381632551

`A010002(n)-A008611(n+1)²`
-/

namespace A009924.P3231539968381632551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - A008611 (n + 1) ^ 2

end

end A009924.P3231539968381632551

namespace A009924

/-- `A010002(n)-A008611(n+1)²` -/
def P3231539968381632551.Spec : Prop :=
  ∀ n, P3231539968381632551.a n = A009924 n

end A009924

/-! ## A009924.P4499206359781405742

`A010002(n)-(n-A002264(n)-A002264(n))²`
-/

namespace A009924.P4499206359781405742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - ((n : ℤ) - A002264 n - A002264 n) ^ 2

end

end A009924.P4499206359781405742

namespace A009924

/-- `A010002(n)-(n-A002264(n)-A002264(n))²` -/
def P4499206359781405742.Spec : Prop :=
  ∀ n, P4499206359781405742.a n = A009924 n

end A009924

/-! ## A009924.P16249667738276090939

`A010002(n)-A008612(2*(n+1))²`
-/

namespace A009924.P16249667738276090939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - A008612 (2 * (n + 1)) ^ 2

end

end A009924.P16249667738276090939

namespace A009924

/-- `A010002(n)-A008612(2*(n+1))²` -/
def P16249667738276090939.Spec : Prop :=
  ∀ n, P16249667738276090939.a n = A009924 n

end A009924

/-! ## A009924.P15997868585485557566

`A010000(A008585(n))-A008611(n+1)²`
-/

namespace A009924.P15997868585485557566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (A008585 n).toNat - A008611 (n + 1) ^ 2

end

end A009924.P15997868585485557566

namespace A009924

/-- `A010000(A008585(n))-A008611(n+1)²` -/
def P15997868585485557566.Spec : Prop :=
  ∀ n, P15997868585485557566.a n = A009924 n

end A009924

/-!
# A009925: Coordination sequence for CaF2(2), F position.

The programs for A009925, the canonical program `A009925.P566971274127706611` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009925 has offset 0).

The definition of A009925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009925.P566971274127706611

`ceil(A010001(n)/A000034(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009925

/-- `ceil(A010001(n)/A000034(n))` -/
def P566971274127706611.Spec : Prop :=
  ∀ n, P566971274127706611.a n = A009925 n

theorem P566971274127706611.correct : P566971274127706611.Spec := by
  intro n
  simp only [A009925]

end A009925

/-! ## A009925.P12341133922119647414

`ceil(A010001(n)/A040001(n+1))`
-/

namespace A009925.P12341133922119647414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010001 n : ℚ) / (A040001 (n + 1) : ℚ)⌉

end

end A009925.P12341133922119647414

namespace A009925

/-- `ceil(A010001(n)/A040001(n+1))` -/
def P12341133922119647414.Spec : Prop :=
  ∀ n, P12341133922119647414.a n = A009925 n

end A009925

/-! ## A009925.P2745500834321763910

`ceil(A010001(n)/2*A040001(n))`
-/

namespace A009925.P2745500834321763910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010001 n : ℚ) / 2 * (A040001 n : ℚ)⌉

end

end A009925.P2745500834321763910

namespace A009925

/-- `ceil(A010001(n)/2*A040001(n))` -/
def P2745500834321763910.Spec : Prop :=
  ∀ n, P2745500834321763910.a n = A009925 n

end A009925

/-! ## A009925.P13547791771390732388

`A005893(n)+A002620(n)*A040035(n)`
-/

namespace A009925.P13547791771390732388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + A002620 n * A040035 n

end

end A009925.P13547791771390732388

namespace A009925

/-- `A005893(n)+A002620(n)*A040035(n)` -/
def P13547791771390732388.Spec : Prop :=
  ∀ n, P13547791771390732388.a n = A009925 n

end A009925

/-! ## A009925.P14284765313212500289

`(A010001(n)+A000035(n))/A000034(n)`
-/

namespace A009925.P14284765313212500289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010001 n + A000035 n : ℚ) / (A000034 n : ℚ)

end

end A009925.P14284765313212500289

namespace A009925

/-- `(A010001(n)+A000035(n))/A000034(n)` -/
def P14284765313212500289.Spec : Prop :=
  ∀ n, P14284765313212500289.a n = (A009925 n : ℚ)

end A009925

/-! ## A009925.P8447304150559407406

`A057427(n)+A000265(A212656(n))`
-/

namespace A009925.P8447304150559407406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000265 (A212656 n).toNat

end

end A009925.P8447304150559407406

namespace A009925

/-- `A057427(n)+A000265(A212656(n))` -/
def P8447304150559407406.Spec : Prop :=
  ∀ n, P8447304150559407406.a n = A009925 n

end A009925

/-! ## A009925.P13348957249338427992

`A057427(n)+A000265(A005901(n))`
-/

namespace A009925.P13348957249338427992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000265 (A005901 n).toNat

end

end A009925.P13348957249338427992

namespace A009925

/-- `A057427(n)+A000265(A005901(n))` -/
def P13348957249338427992.Spec : Prop :=
  ∀ n, P13348957249338427992.a n = A009925 n

end A009925

/-! ## A009925.P15480157753288782041

`A178334(n)+A000265(A005901(n))`
-/

namespace A009925.P15480157753288782041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A000265 (A005901 n).toNat

end

end A009925.P15480157753288782041

namespace A009925

/-- `A178334(n)+A000265(A005901(n))` -/
def P15480157753288782041.Spec : Prop :=
  ∀ n, P15480157753288782041.a n = A009925 n

end A009925

/-! ## A009925.P9938933311413612491

`A305897(A005901(n)/A000034(n))`
-/

namespace A009925.P9938933311413612491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (SequenceMachineLib.roundAway ((A005901 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A009925.P9938933311413612491

namespace A009925

/-- `A305897(A005901(n)/A000034(n))` -/
def P9938933311413612491.Spec : Prop :=
  ∀ n, P9938933311413612491.a n = A009925 n

end A009925

/-! ## A009925.P5111398254766573345

`A000265(A005901(n))+char[A038722(n+1)]`
-/

namespace A009925.P5111398254766573345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005901 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A009925.P5111398254766573345

namespace A009925

/-- `A000265(A005901(n))+char[A038722(n+1)]` -/
def P5111398254766573345.Spec : Prop :=
  ∀ n, P5111398254766573345.a n = A009925 n

end A009925

/-! ## A009925.P14184088390966926122

`A000265(A005901(n))+char[A048673(n+1)]`
-/

namespace A009925.P14184088390966926122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005901 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A009925.P14184088390966926122

namespace A009925

/-- `A000265(A005901(n))+char[A048673(n+1)]` -/
def P14184088390966926122.Spec : Prop :=
  ∀ n, P14184088390966926122.a n = A009925 n

end A009925

/-! ## A009925.P5827380195951888142

`A048766(A048766(n))+A000265(A005901(n))`
-/

namespace A009925.P5827380195951888142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 n).toNat + A000265 (A005901 n).toNat

end

end A009925.P5827380195951888142

namespace A009925

/-- `A048766(A048766(n))+A000265(A005901(n))` -/
def P5827380195951888142.Spec : Prop :=
  ∀ n, P5827380195951888142.a n = A009925 n

end A009925

/-!
# A009926: Coordination sequence for CaF2(2), Ca position.

The programs for A009926, the canonical program `A009926.P3570853923251621358` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009926 has offset 0).

The definition of A009926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009926.P3570853923251621358

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=12, a(3)=48, a(4)=42, a(5)=128, a(6)=92`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009926

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P3570853923251621358.Spec : Prop :=
  ∀ n, P3570853923251621358.a n = A009926 n

theorem P3570853923251621358.correct : P3570853923251621358.Spec := by
  intro n
  simp only [A009926]

end A009926

/-! ## A009926.P6798500318206060322

`A000034(n)*A008253(n)`
-/

namespace A009926.P6798500318206060322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A008253 n

end

end A009926.P6798500318206060322

namespace A009926

/-- `A000034(n)*A008253(n)` -/
def P6798500318206060322.Spec : Prop :=
  ∀ n, P6798500318206060322.a n = A009926 n

end A009926

/-! ## A009926.P8724813877310468042

`(A000035(n)+1)*A008253(n)`
-/

namespace A009926.P8724813877310468042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A008253 n

end

end A009926.P8724813877310468042

namespace A009926

/-- `(A000035(n)+1)*A008253(n)` -/
def P8724813877310468042.Spec : Prop :=
  ∀ n, P8724813877310468042.a n = A009926 n

end A009926

/-! ## A009926.P6831718986705653467

`gcd(2, A016777(n))*A008253(n)`
-/

namespace A009926.P6831718986705653467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A016777 n) : ℤ) * A008253 n

end

end A009926.P6831718986705653467

namespace A009926

/-- `gcd(2, A016777(n))*A008253(n)` -/
def P6831718986705653467.Spec : Prop :=
  ∀ n, P6831718986705653467.a n = A009926 n

end A009926

/-! ## A009926.P11898419105438182938

`(Δ[A008619(n)]+1)*A008253(n)`
-/

namespace A009926.P11898419105438182938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A008253 n

end

end A009926.P11898419105438182938

namespace A009926

/-- `(Δ[A008619(n)]+1)*A008253(n)` -/
def P11898419105438182938.Spec : Prop :=
  ∀ n, P11898419105438182938.a n = A009926 n

end A009926

/-! ## A009926.P6522303797728852573

`(char[A000265(n+1)]+1)*A008253(n)`
-/

namespace A009926.P6522303797728852573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A008253 n

end

end A009926.P6522303797728852573

namespace A009926

/-- `(char[A000265(n+1)]+1)*A008253(n)` -/
def P6522303797728852573.Spec : Prop :=
  ∀ n, P6522303797728852573.a n = A009926 n

end A009926

/-! ## A009926.P16083944145809427475

`A008253(n)*A225853(Δ[A008619(n)])`
-/

namespace A009926.P16083944145809427475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n * A225853 (f1 (n + 1) - f1 n).toNat

end

end A009926.P16083944145809427475

namespace A009926

/-- `A008253(n)*A225853(Δ[A008619(n)])` -/
def P16083944145809427475.Spec : Prop :=
  ∀ n, P16083944145809427475.a n = A009926 n

end A009926

/-! ## A009926.P14064447661660130585

`(A280618(A020639(n+1))+1)*A008253(n)`
-/

namespace A009926.P14064447661660130585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280618 (A020639 (n + 1)).toNat + 1) * A008253 n

end

end A009926.P14064447661660130585

namespace A009926

/-- `(A280618(A020639(n+1))+1)*A008253(n)` -/
def P14064447661660130585.Spec : Prop :=
  ∀ n, P14064447661660130585.a n = A009926 n

end A009926

/-! ## A009926.P4688113562185228191

`A014963(n+1-A129760(n+1))*A008253(n)`
-/

namespace A009926.P4688113562185228191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 1 : ℤ) - A129760 (n + 1)).toNat * A008253 n

end

end A009926.P4688113562185228191

namespace A009926

/-- `A014963(n+1-A129760(n+1))*A008253(n)` -/
def P4688113562185228191.Spec : Prop :=
  ∀ n, P4688113562185228191.a n = A009926 n

end A009926

/-! ## A009926.P16124182741549181201

`A006530((n+1)/A000265(n+1))*A008253(n)`
-/

namespace A009926.P16124182741549181201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000265 (n + 1) : ℚ))).toNat * A008253 n

end

end A009926.P16124182741549181201

namespace A009926

/-- `A006530((n+1)/A000265(n+1))*A008253(n)` -/
def P16124182741549181201.Spec : Prop :=
  ∀ n, P16124182741549181201.a n = A009926 n

end A009926

/-! ## A009926.P9254740093270000959

`A057427(n)+A000265(A212656(n)+1)`
-/

namespace A009926.P9254740093270000959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000265 (A212656 n + 1).toNat

end

end A009926.P9254740093270000959

namespace A009926

/-- `A057427(n)+A000265(A212656(n)+1)` -/
def P9254740093270000959.Spec : Prop :=
  ∀ n, P9254740093270000959.a n = A009926 n

end A009926

/-!
# A009927: Coordination sequence for Cr3Si, Si position.

The programs for A009927, there is no canonical definition to state claims against.
-/

/-! ## A009927.P3930520693658328568

`A144019(A050866(n+2))`
-/

namespace A009927.P3930520693658328568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144019 (A050866 (n + 2)).toNat

end

end A009927.P3930520693658328568

/-!
# A009928: Coordination sequence for Cr3Si, Cr position.

The programs for A009928, there is no canonical definition to state claims against.
-/

/-! ## A009928.P7702402881236779350

`∑[A093517(A033098(3*n+4))]`
-/

namespace A009928.P7702402881236779350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (A033098 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009928.P7702402881236779350

/-! ## A009928.P13498613250017575738

`A023138(A119686(n+1))+A001106(2*n)`
-/

namespace A009928.P13498613250017575738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023138 (A119686 (n + 1)).toNat + A001106 (2 * n)

end

end A009928.P13498613250017575738

/-!
# A009930: Coordination sequence for MgCu2, Cu position.

The programs for A009930, there is no canonical definition to state claims against.
-/

/-! ## A009930.P18015401940347281417

`A250002(A008255(n))+A009932(n)`
-/

namespace A009930.P18015401940347281417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A008255 n).toNat + A009932 n

end

end A009930.P18015401940347281417

/-! ## A009930.P3303461901210999660

`A326033(A008085(n))+A009933(n)`
-/

namespace A009930.P3303461901210999660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (A008085 n).toNat + A009933 n

end

end A009930.P3303461901210999660

/-!
# A009931: Coordination sequence for MgCu2, Mg position.

The programs for A009931, there is no canonical definition to state claims against.
-/

/-! ## A009931.P11446880569823479506

`A175542(A009936(n))`
-/

namespace A009931.P11446880569823479506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A009936 n).toNat

end

end A009931.P11446880569823479506

/-! ## A009931.P16509820222448557901

`A009936(A091954(5^n))`
-/

namespace A009931.P16509820222448557901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009936 (A091954 (5 ^ n)).toNat

end

end A009931.P16509820222448557901

/-!
# A009932: Coordination sequence for MgNi2, Position Ni2.

The programs for A009932, there is no canonical definition to state claims against.
-/

/-! ## A009932.P13079312815381735668

`A250002(A032439(n))+A009937(n)`
-/

namespace A009932.P13079312815381735668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A032439 n).toNat + A009937 n

end

end A009932.P13079312815381735668

/-! ## A009932.P17963485953123204165

`A326469(A326331(n))+A009937(n)`
-/

namespace A009932.P17963485953123204165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326469 (A326331 n).toNat + A009937 n

end

end A009932.P17963485953123204165

/-!
# A009934: Coordination sequence for MgNi2, Position Ni3.

The programs for A009934, there is no canonical definition to state claims against.
-/

/-! ## A009934.P12154960346973614116

`xor(∑[n]+12*n², A332404(A085139(n)))`
-/

namespace A009934.P12154960346973614116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j + 12 * n ^ 2 : ℕ) : ℤ) (A332404 (A085139 n).toNat)

end

end A009934.P12154960346973614116

/-!
# A009935: Coordination sequence for MgNi2, Position Mg2.

The programs for A009935, there is no canonical definition to state claims against.
-/

/-! ## A009935.P14129833014072592837

`xor(A009939(n), A185284(n²))`
-/

namespace A009935.P14129833014072592837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009939 n) (A185284 (n ^ 2))

end

end A009935.P14129833014072592837

/-! ## A009935.P11070342694254551738

`A034336(A034336(n))+A009939(n)`
-/

namespace A009935.P11070342694254551738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034336 (A034336 n).toNat + A009939 n

end

end A009935.P11070342694254551738

/-! ## A009935.P16235043286163615617

`A034333(A250003(n))+A009939(n)`
-/

namespace A009935.P16235043286163615617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034333 (A250003 n).toNat + A009939 n

end

end A009935.P16235043286163615617

/-!
# A009937: Coordination sequence for MgZn2, Position Zn1.

The programs for A009937, there is no canonical definition to state claims against.
-/

/-! ## A009937.P6337253553934971299

`A009932(n)-A250002(A032439(n))`
-/

namespace A009937.P6337253553934971299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009932 n - A250002 (A032439 n).toNat

end

end A009937.P6337253553934971299

/-!
# A009938: Coordination sequence for MgZn2, Position Zn2.

The programs for A009938, there is no canonical definition to state claims against.
-/

/-! ## A009938.P17122932510376524204

`A354902(3*n)+A001222(A354897(n+1))`
-/

namespace A009938.P17122932510376524204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354902 (3 * n) + A001222 (A354897 (n + 1)).toNat

end

end A009938.P17122932510376524204

/-! ## A009938.P10392011905067154777

`A354902(3*n)+A001222(A354899(n+1))`
-/

namespace A009938.P10392011905067154777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354902 (3 * n) + A001222 (A354899 (n + 1)).toNat

end

end A009938.P10392011905067154777

/-!
# A009939: Coordination sequence for MgZn2, Mg position.

The programs for A009939, there is no canonical definition to state claims against.
-/

/-! ## A009939.P14317290052206446009

`A009935(n)-A034336(A034336(n))`
-/

namespace A009939.P14317290052206446009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009935 n - A034336 (A034336 n).toNat

end

end A009939.P14317290052206446009

/-! ## A009939.P12297377859773813471

`A009935(n)-A034333(A250003(n))`
-/

namespace A009939.P12297377859773813471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009935 n - A034333 (A250003 n).toNat

end

end A009939.P12297377859773813471

/-!
# A009940: a(n) = n!*L_{n}(1), where L_{n}(x) is the n-th Laguerre polynomial.

The programs for A009940, there is no canonical definition to state claims against.
-/

/-! ## A009940.P4265369907068393396

`A293116(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A009940.P4265369907068393396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293116 n + (n : ℤ) * a (n - 1)

end

end A009940.P4265369907068393396

/-! ## A009940.P12353815966217671155

`A033999(n)*A056920(2*n)`
-/

namespace A009940.P12353815966217671155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A056920 (2 * n)

end

end A009940.P12353815966217671155

/-! ## A009940.P169331496039948747

`n!-A087860(n)`
-/

namespace A009940.P169331496039948747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A087860 n

end

end A009940.P169331496039948747

/-! ## A009940.P7288427513562916755

`A295381(∑[n+1]+n)`
-/

namespace A009940.P7288427513562916755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A009940.P7288427513562916755

/-! ## A009940.P10860903337361243705

`A000142(n)-A087860(n)`
-/

namespace A009940.P10860903337361243705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A087860 n

end

end A009940.P10860903337361243705

/-! ## A009940.P16315649271810945781

`A000142(n)/A160622(n)*A160621(n)`
-/

namespace A009940.P16315649271810945781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A160622 n : ℚ) * (A160621 n : ℚ)

end

end A009940.P16315649271810945781

/-! ## A009940.P13700415339047981071

`A021009(∑[n])-A087860(n)`
-/

namespace A009940.P13700415339047981071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 (∑ j ∈ Finset.range (n + 1), f1 j) - A087860 n

end

end A009940.P13700415339047981071

/-! ## A009940.P12856254457305971135

`A331325(n)-A331326(n)`
-/

namespace A009940.P12856254457305971135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331325 n - A331326 n

end

end A009940.P12856254457305971135

/-! ## A009940.P14469136619531751766

`2*A331325(n)-A002720(n)`
-/

namespace A009940.P14469136619531751766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331325 n - A002720 n

end

end A009940.P14469136619531751766

/-!
# A009941: Coordination sequence for Ni2In, Position Ni1 and In.

The programs for A009941, there is no canonical definition to state claims against.
-/

/-! ## A009941.P11639558288856093697

`A267528(A008266(2*n))-A000035(n)`
-/

namespace A009941.P11639558288856093697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A008266 (2 * n)).toNat - A000035 n

end

end A009941.P11639558288856093697

/-!
# A009942: Coordination sequence for Ni2In, Position Ni2.

The programs for A009942, the canonical program `A009942.P10386336069079178020` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009942 has offset 0).

The definition of A009942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009942.P5559985043292731502

`(ceil(2/acot(2*n)²)-n²)%6+11*n²`
-/

namespace A009942.P5559985043292731502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2⌉ - (n ^ 2 : ℤ)) 6 + (11 * n ^ 2 : ℤ)

end

end A009942.P5559985043292731502

namespace A009942

/-- `(ceil(2/acot(2*n)²)-n²)%6+11*n²` -/
def P5559985043292731502.Spec : Prop :=
  ∀ n, P5559985043292731502.a n = A009942 n

end A009942

/-! ## A009942.P10386336069079178020

`A010009(n)%6+11*n²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009942

/-- `A010009(n)%6+11*n²` -/
def P10386336069079178020.Spec : Prop :=
  ∀ n, P10386336069079178020.a n = A009942 n

theorem P10386336069079178020.correct : P10386336069079178020.Spec := by
  intro n
  simp only [A009942]

end A009942

/-!
# A009943: Coordination sequence for NiAs(1), As position.

The programs for A009943, the canonical program `A009943.P10978519285802944135` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009943 has offset 0).

The definition of A009943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009943.P10978519285802944135

`A163433(n+1)+A106469(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009943

/-- `A163433(n+1)+A106469(n)` -/
def P10978519285802944135.Spec : Prop :=
  ∀ n, P10978519285802944135.a n = A009943 n

theorem P10978519285802944135.correct : P10978519285802944135.Spec := by
  intro n
  simp only [A009943]

end A009943

/-! ## A009943.P10342966596620313704

`A163433(n+1)+A000091(A071044(n))`
-/

namespace A009943.P10342966596620313704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163433 (n + 1) + A000091 (A071044 n).toNat

end

end A009943.P10342966596620313704

namespace A009943

/-- `A163433(n+1)+A000091(A071044(n))` -/
def P10342966596620313704.Spec : Prop :=
  ∀ n, P10342966596620313704.a n = A009943 n

end A009943

/-! ## A009943.P16482321745932463044

`A005897(n)-A053399(A266662(n))`
-/

namespace A009943.P16482321745932463044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A053399 (A266662 n).toNat

end

end A009943.P16482321745932463044

namespace A009943

/-- `A005897(n)-A053399(A266662(n))` -/
def P16482321745932463044.Spec : Prop :=
  ∀ n, P16482321745932463044.a n = A009943 n

end A009943

/-! ## A009943.P8829481785966758454

`A005897(n)-and(2, A053599(n+1))`
-/

namespace A009943.P8829481785966758454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - Int.land 2 (A053599 (n + 1))

end

end A009943.P8829481785966758454

namespace A009943

/-- `A005897(n)-and(2, A053599(n+1))` -/
def P8829481785966758454.Spec : Prop :=
  ∀ n, P8829481785966758454.a n = A009943 n

end A009943

/-! ## A009943.P2618255886338920671

`A033581(n)+A167193(n)%4`
-/

namespace A009943.P2618255886338920671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + Int.tmod (A167193 n) 4

end

end A009943.P2618255886338920671

namespace A009943

/-- `A033581(n)+A167193(n)%4` -/
def P2618255886338920671.Spec : Prop :=
  ∀ n, P2618255886338920671.a n = A009943 n

end A009943

/-! ## A009943.P17624841595322849844

`A033581(n)+A100314(n)%4`
-/

namespace A009943.P17624841595322849844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + Int.tmod (A100314 n) 4

end

end A009943.P17624841595322849844

namespace A009943

/-- `A033581(n)+A100314(n)%4` -/
def P17624841595322849844.Spec : Prop :=
  ∀ n, P17624841595322849844.a n = A009943 n

end A009943

/-! ## A009943.P16606677361329630699

`A033581(n)+A001117(n)%4`
-/

namespace A009943.P16606677361329630699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + Int.tmod (A001117 n) 4

end

end A009943.P16606677361329630699

namespace A009943

/-- `A033581(n)+A001117(n)%4` -/
def P16606677361329630699.Spec : Prop :=
  ∀ n, P16606677361329630699.a n = A009943 n

end A009943

/-! ## A009943.P4960993099922883825

`A382155(A238410(n+1))`
-/

namespace A009943.P4960993099922883825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382155 (A238410 (n + 1)).toNat

end

end A009943.P4960993099922883825

namespace A009943

/-- `A382155(A238410(n+1))` -/
def P4960993099922883825.Spec : Prop :=
  ∀ n, P4960993099922883825.a n = A009943 n

end A009943

/-!
# A009944: Left-right/right-left numbers: n = pq such that n=q_reversed*p_reversed.

The programs for A009944, there is no canonical definition to state claims against.
-/

/-! ## A009944.P3529981766789422799

`A179482(∑[A109400(3*n+1)^(n-1)])`
-/

namespace A009944.P3529981766789422799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109400 (3 * n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179482 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A009944.P3529981766789422799

/-!
# A009945: Coordination sequence for NiAs(2), As position.

The programs for A009945, the canonical program `A009945.P12744615334983203965` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009945 has offset 0).

The definition of A009945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009945.P12744615334983203965

`-or(2, -A009946(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009945

/-- `-or(2, -A009946(n))` -/
def P12744615334983203965.Spec : Prop :=
  ∀ n, P12744615334983203965.a n = A009945 n

theorem P12744615334983203965.correct : P12744615334983203965.Spec := by
  intro n
  simp only [A009945]

end A009945

/-! ## A009945.P8901691232592348490

`A009948(n)-A033581(n)`
-/

namespace A009945.P8901691232592348490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009948 n - A033581 n

end

end A009945.P8901691232592348490

namespace A009945

/-- `A009948(n)-A033581(n)` -/
def P8901691232592348490.Spec : Prop :=
  ∀ n, P8901691232592348490.a n = A009945 n

end A009945

/-! ## A009945.P1880908279429425804

`A009946(n)-and(2, A195147(n))`
-/

namespace A009945.P1880908279429425804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - Int.land 2 (A195147 n)

end

end A009945.P1880908279429425804

namespace A009945

/-- `A009946(n)-and(2, A195147(n))` -/
def P1880908279429425804.Spec : Prop :=
  ∀ n, P1880908279429425804.a n = A009945 n

end A009945

/-! ## A009945.P5276961174732260211

`or(A020639(A278247(n)), A299256(n))`
-/

namespace A009945.P5276961174732260211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A278247 n).toNat) (A299256 n)

end

end A009945.P5276961174732260211

namespace A009945

/-- `or(A020639(A278247(n)), A299256(n))` -/
def P5276961174732260211.Spec : Prop :=
  ∀ n, P5276961174732260211.a n = A009945 n

end A009945

/-! ## A009945.P11641504186918553388

`or(A272565(A002322(2*n+1)), A299256(n))`
-/

namespace A009945.P11641504186918553388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A272565 (A002322 (2 * n + 1)).toNat) (A299256 n)

end

end A009945.P11641504186918553388

namespace A009945

/-- `or(A272565(A002322(2*n+1)), A299256(n))` -/
def P11641504186918553388.Spec : Prop :=
  ∀ n, P11641504186918553388.a n = A009945 n

end A009945

/-! ## A009945.P9635843780499934191

`or(A107279(2*n), A299256(n))`
-/

namespace A009945.P9635843780499934191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107279 (2 * n)) (A299256 n)

end

end A009945.P9635843780499934191

namespace A009945

/-- `or(A107279(2*n), A299256(n))` -/
def P9635843780499934191.Spec : Prop :=
  ∀ n, P9635843780499934191.a n = A009945 n

end A009945

/-!
# A009946: Coordination sequence for NiAs(2), Ni position.

The programs for A009946, the canonical program `A009946.P18323634591044186742` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009946 has offset 0).

The definition of A009946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009946.P18323634591044186742

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=42, a(4)=74`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009946

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P18323634591044186742.Spec : Prop :=
  ∀ n, P18323634591044186742.a n = A009946 n

theorem P18323634591044186742.correct : P18323634591044186742.Spec := by
  intro n
  simp only [A009946]

end A009946

/-! ## A009946.P12129572394253132750

`ceil((A010002(n)+1)/2)`
-/

namespace A009946.P12129572394253132750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010002 n + 1 : ℚ) / 2⌉

end

end A009946.P12129572394253132750

namespace A009946

/-- `ceil((A010002(n)+1)/2)` -/
def P12129572394253132750.Spec : Prop :=
  ∀ n, P12129572394253132750.a n = A009946 n

end A009946

/-! ## A009946.P12809416168097537987

`A008253(n)+2*n²`
-/

namespace A009946.P12809416168097537987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + (2 * n ^ 2 : ℤ)

end

end A009946.P12809416168097537987

namespace A009946

/-- `A008253(n)+2*n²` -/
def P12809416168097537987.Spec : Prop :=
  ∀ n, P12809416168097537987.a n = A009946 n

end A009946

/-! ## A009946.P13309887237106890346

`A299289(n)-2*n²`
-/

namespace A009946.P13309887237106890346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 n - (2 * n ^ 2 : ℤ)

end

end A009946.P13309887237106890346

namespace A009946

/-- `A299289(n)-2*n²` -/
def P13309887237106890346.Spec : Prop :=
  ∀ n, P13309887237106890346.a n = A009946 n

end A009946

/-! ## A009946.P5106036042156068700

`A007899(n)-6*n²`
-/

namespace A009946.P5106036042156068700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n - (6 * n ^ 2 : ℤ)

end

end A009946.P5106036042156068700

namespace A009946

/-- `A007899(n)-6*n²` -/
def P5106036042156068700.Spec : Prop :=
  ∀ n, P5106036042156068700.a n = A009946 n

end A009946

/-! ## A009946.P11948516675386600757

`A333574(n+1)+(2*n)²`
-/

namespace A009946.P11948516675386600757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) + ((2 * n) ^ 2 : ℤ)

end

end A009946.P11948516675386600757

namespace A009946

/-- `A333574(n+1)+(2*n)²` -/
def P11948516675386600757.Spec : Prop :=
  ∀ n, P11948516675386600757.a n = A009946 n

end A009946

/-! ## A009946.P7262951473299167924

`A007590(n)+A005899(n)`
-/

namespace A009946.P7262951473299167924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A005899 n

end

end A009946.P7262951473299167924

namespace A009946

/-- `A007590(n)+A005899(n)` -/
def P7262951473299167924.Spec : Prop :=
  ∀ n, P7262951473299167924.a n = A009946 n

end A009946

/-! ## A009946.P39384455631444332

`A032526(n)+A005893(n)`
-/

namespace A009946.P39384455631444332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032526 n + A005893 n

end

end A009946.P39384455631444332

namespace A009946

/-- `A032526(n)+A005893(n)` -/
def P39384455631444332.Spec : Prop :=
  ∀ n, P39384455631444332.a n = A009946 n

end A009946

/-! ## A009946.P14962024012397405192

`A032528(n)+A005918(n)`
-/

namespace A009946.P14962024012397405192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + A005918 n

end

end A009946.P14962024012397405192

namespace A009946

/-- `A032528(n)+A005918(n)` -/
def P14962024012397405192.Spec : Prop :=
  ∀ n, P14962024012397405192.a n = A009946 n

end A009946

/-! ## A009946.P5758589739157789226

`A032525(n)+A010000(n)`
-/

namespace A009946.P5758589739157789226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032525 n + A010000 n

end

end A009946.P5758589739157789226

namespace A009946

/-- `A032525(n)+A010000(n)` -/
def P5758589739157789226.Spec : Prop :=
  ∀ n, P5758589739157789226.a n = A009946 n

end A009946

/-! ## A009946.P9277605901898753074

`A114119(n)+A062741(n)`
-/

namespace A009946.P9277605901898753074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n + A062741 n

end

end A009946.P9277605901898753074

namespace A009946

/-- `A114119(n)+A062741(n)` -/
def P9277605901898753074.Spec : Prop :=
  ∀ n, P9277605901898753074.a n = A009946 n

end A009946

/-! ## A009946.P14620843281099457257

`A266977(n)+A022266(n)`
-/

namespace A009946.P14620843281099457257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A022266 n

end

end A009946.P14620843281099457257

namespace A009946

/-- `A266977(n)+A022266(n)` -/
def P14620843281099457257.Spec : Prop :=
  ∀ n, P14620843281099457257.a n = A009946 n

end A009946

/-! ## A009946.P9122020242583341802

`A265284(n)+A211623(n)`
-/

namespace A009946.P9122020242583341802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265284 n + A211623 n

end

end A009946.P9122020242583341802

namespace A009946

/-- `A265284(n)+A211623(n)` -/
def P9122020242583341802.Spec : Prop :=
  ∀ n, P9122020242583341802.a n = A009946 n

end A009946

/-! ## A009946.P10462622727160105460

`A010001(n)-A000982(n)`
-/

namespace A009946.P10462622727160105460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n - A000982 n

end

end A009946.P10462622727160105460

namespace A009946

/-- `A010001(n)-A000982(n)` -/
def P10462622727160105460.Spec : Prop :=
  ∀ n, P10462622727160105460.a n = A009946 n

end A009946

/-! ## A009946.P6353034844726486176

`A298034(n)-A062157(n)`
-/

namespace A009946.P6353034844726486176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298034 n - A062157 n

end

end A009946.P6353034844726486176

namespace A009946

/-- `A298034(n)-A062157(n)` -/
def P6353034844726486176.Spec : Prop :=
  ∀ n, P6353034844726486176.a n = A009946 n

end A009946

/-! ## A009946.P11952388117549521586

`∪[A010008(n), A164016(n)]`
-/

namespace A009946.P11952388117549521586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164016 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A009946.P11952388117549521586

namespace A009946

/-- `∪[A010008(n), A164016(n)]` -/
def P11952388117549521586.Spec : Prop :=
  ∀ n, (P11952388117549521586.a n : ℤ) = A009946 n

end A009946

/-! ## A009946.P13714505916611996296

`A173511(n)+A089071(n+1)`
-/

namespace A009946.P13714505916611996296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173511 n + A089071 (n + 1)

end

end A009946.P13714505916611996296

namespace A009946

/-- `A173511(n)+A089071(n+1)` -/
def P13714505916611996296.Spec : Prop :=
  ∀ n, P13714505916611996296.a n = A009946 n

end A009946

/-! ## A009946.P7217452985914917627

`A261243(n+1)+A007742(n)`
-/

namespace A009946.P7217452985914917627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261243 (n + 1) + A007742 n

end

end A009946.P7217452985914917627

namespace A009946

/-- `A261243(n+1)+A007742(n)` -/
def P7217452985914917627.Spec : Prop :=
  ∀ n, P7217452985914917627.a n = A009946 n

end A009946

/-! ## A009946.P12465295905223003463

`A006137(n)-A140106(n+1)`
-/

namespace A009946.P12465295905223003463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006137 n - A140106 (n + 1)

end

end A009946.P12465295905223003463

namespace A009946

/-- `A006137(n)-A140106(n+1)` -/
def P12465295905223003463.Spec : Prop :=
  ∀ n, P12465295905223003463.a n = A009946 n

end A009946

/-! ## A009946.P12905130785250079641

`A005897(n)-A238410(n+1)`
-/

namespace A009946.P12905130785250079641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A238410 (n + 1)

end

end A009946.P12905130785250079641

namespace A009946

/-- `A005897(n)-A238410(n+1)` -/
def P12905130785250079641.Spec : Prop :=
  ∀ n, P12905130785250079641.a n = A009946 n

end A009946

/-!
# A009947: Sequence of nonnegative integers, but insert n/2 after every even number n.

The programs for A009947, the canonical program `A009947.P16223829904691350356` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009947 has offset 0).

The definition of A009947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009947.P16223829904691350356

`floor(n*gcd(2, n%3)/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009947

/-- `floor(n*gcd(2, n%3)/3)` -/
def P16223829904691350356.Spec : Prop :=
  ∀ n, P16223829904691350356.a n = A009947 n

theorem P16223829904691350356.correct : P16223829904691350356.Spec := by
  intro n
  simp only [A009947]

end A009947

/-! ## A009947.P17069235087195702516

`n-lcm(2, ceil(2*n/3))/2`
-/

namespace A009947.P17069235087195702516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.lcm 2 ⌈2 * ((n : ℚ) / 3)⌉ : ℚ) / 2

end

end A009947.P17069235087195702516

namespace A009947

/-- `n-lcm(2, ceil(2*n/3))/2` -/
def P17069235087195702516.Spec : Prop :=
  ∀ n, P17069235087195702516.a n = (A009947 n : ℚ)

end A009947

/-! ## A009947.P6758075322573393467

`(∑[∑[n]]-(a(n-1)+1))%n` with `a(0)=0`
-/

namespace A009947.P6758075322573393467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + 1)) (n : ℤ)

end

end A009947.P6758075322573393467

namespace A009947

/-- `(∑[∑[n]]-(a(n-1)+1))%n` -/
def P6758075322573393467.Spec : Prop :=
  ∀ n, P6758075322573393467.a n = A009947 n

end A009947

/-! ## A009947.P8349021130803183781

`round(2*n/3)%(lcm(3, n+2)/3)`
-/

namespace A009947.P8349021130803183781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) (SequenceMachineLib.roundAway ((Nat.lcm 3 (n + 2) : ℚ) / 3))

end

end A009947.P8349021130803183781

namespace A009947

/-- `round(2*n/3)%(lcm(3, n+2)/3)` -/
def P8349021130803183781.Spec : Prop :=
  ∀ n, P8349021130803183781.a n = A009947 n

end A009947

/-! ## A009947.P6855083657033705817

`n-∑[ceil(n*(n/3-round(n/3)))]`
-/

namespace A009947.P6855083657033705817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((n : ℚ) / 3 - (SequenceMachineLib.roundAway ((n : ℚ) / 3) : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009947.P6855083657033705817

namespace A009947

/-- `n-∑[ceil(n*(n/3-round(n/3)))]` -/
def P6855083657033705817.Spec : Prop :=
  ∀ n, P6855083657033705817.a n = A009947 n

end A009947

/-! ## A009947.P17233737752850242857

`floor(A265667(n)/2)`
-/

namespace A009947.P17233737752850242857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265667 n : ℚ) / 2⌋

end

end A009947.P17233737752850242857

namespace A009947

/-- `floor(A265667(n)/2)` -/
def P17233737752850242857.Spec : Prop :=
  ∀ n, P17233737752850242857.a n = A009947 n

end A009947

/-! ## A009947.P703186595923365950

`floor(2*n/(A000032(gcd(n+2, n-1))+2))`
-/

namespace A009947.P703186595923365950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (A000032 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)) + 2 : ℚ)⌋

end

end A009947.P703186595923365950

namespace A009947

/-- `floor(2*n/(A000032(gcd(n+2, n-1))+2))` -/
def P703186595923365950.Spec : Prop :=
  ∀ n, P703186595923365950.a n = A009947 n

end A009947

/-! ## A009947.P648907411765015095

`(n-1-a(n-1))*A000005(gcd(n, n+3))` with `a(0)=0`
-/

namespace A009947.P648907411765015095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1 - a (n - 1)) * A000005 (Nat.gcd n (n + 3))

end

end A009947.P648907411765015095

namespace A009947

/-- `(n-1-a(n-1))*A000005(gcd(n, n+3))` -/
def P648907411765015095.Spec : Prop :=
  ∀ n, P648907411765015095.a n = A009947 n

end A009947

/-! ## A009947.P12094663821300090371

`(n-1-a(n-1))*A000010(gcd(n-3, 2*n))` with `a(0)=0`
-/

namespace A009947.P12094663821300090371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1 - a (n - 1)) * A000010 (Int.gcd ((n : ℤ) - 3) (2 * n : ℤ))

end

end A009947.P12094663821300090371

namespace A009947

/-- `(n-1-a(n-1))*A000010(gcd(n-3, 2*n))` -/
def P12094663821300090371.Spec : Prop :=
  ∀ n, P12094663821300090371.a n = A009947 n

end A009947

/-! ## A009947.P5858345139939812153

`A110962(A047462(n+1))`
-/

namespace A009947.P5858345139939812153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A047462 (n + 1)).toNat

end

end A009947.P5858345139939812153

namespace A009947

/-- `A110962(A047462(n+1))` -/
def P5858345139939812153.Spec : Prop :=
  ∀ n, P5858345139939812153.a n = A009947 n

end A009947

/-! ## A009947.P5948400365611128726

`A110962(A047464(n+1))`
-/

namespace A009947.P5948400365611128726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A047464 (n + 1)).toNat

end

end A009947.P5948400365611128726

namespace A009947

/-- `A110962(A047464(n+1))` -/
def P5948400365611128726.Spec : Prop :=
  ∀ n, P5948400365611128726.a n = A009947 n

end A009947

/-! ## A009947.P13474252938345771449

`A004523(n)/A131534(n)`
-/

namespace A009947.P13474252938345771449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 n : ℚ) / (A131534 n : ℚ)

end

end A009947.P13474252938345771449

namespace A009947

/-- `A004523(n)/A131534(n)` -/
def P13474252938345771449.Spec : Prop :=
  ∀ n, P13474252938345771449.a n = (A009947 n : ℚ)

end A009947

/-! ## A009947.P5435599391232268640

`A004396(n)%A145064(n)`
-/

namespace A009947.P5435599391232268640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004396 n) (A145064 n)

end

end A009947.P5435599391232268640

namespace A009947

/-- `A004396(n)%A145064(n)` -/
def P5435599391232268640.Spec : Prop :=
  ∀ n, P5435599391232268640.a n = A009947 n

end A009947

/-! ## A009947.P11699936765971942764

`A212971(n)%A028310(n)`
-/

namespace A009947.P11699936765971942764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212971 n) (A028310 n)

end

end A009947.P11699936765971942764

namespace A009947

/-- `A212971(n)%A028310(n)` -/
def P11699936765971942764.Spec : Prop :=
  ∀ n, P11699936765971942764.a n = A009947 n

end A009947

/-! ## A009947.P18252984157047269932

`gcd(A004523(n), A190798(n))`
-/

namespace A009947.P18252984157047269932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004523 n) (A190798 n)

end

end A009947.P18252984157047269932

namespace A009947

/-- `gcd(A004523(n), A190798(n))` -/
def P18252984157047269932.Spec : Prop :=
  ∀ n, (P18252984157047269932.a n : ℤ) = A009947 n

end A009947

/-! ## A009947.P15883788897979410527

`A004523(n)/gcd(2, A057078(n))`
-/

namespace A009947.P15883788897979410527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 n : ℚ) / (Int.gcd 2 (A057078 n) : ℚ)

end

end A009947.P15883788897979410527

namespace A009947

/-- `A004523(n)/gcd(2, A057078(n))` -/
def P15883788897979410527.Spec : Prop :=
  ∀ n, P15883788897979410527.a n = (A009947 n : ℚ)

end A009947

/-! ## A009947.P4953399200803370690

`A004523(n)/(A066481(n+3)-A004396(n+1))`
-/

namespace A009947.P4953399200803370690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 n : ℚ) / (A066481 (n + 3) - A004396 (n + 1) : ℚ)

end

end A009947.P4953399200803370690

namespace A009947

/-- `A004523(n)/(A066481(n+3)-A004396(n+1))` -/
def P4953399200803370690.Spec : Prop :=
  ∀ n, P4953399200803370690.a n = (A009947 n : ℚ)

end A009947

/-! ## A009947.P1305172619677630412

`A152728(n+1)%(n+2)`
-/

namespace A009947.P1305172619677630412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152728 (n + 1)) (n + 2 : ℤ)

end

end A009947.P1305172619677630412

namespace A009947

/-- `A152728(n+1)%(n+2)` -/
def P1305172619677630412.Spec : Prop :=
  ∀ n, P1305172619677630412.a n = A009947 n

end A009947

/-! ## A009947.P1862364655675228716

`A004523(n)/A177702(n+1)`
-/

namespace A009947.P1862364655675228716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 n : ℚ) / (A177702 (n + 1) : ℚ)

end

end A009947.P1862364655675228716

namespace A009947

/-- `A004523(n)/A177702(n+1)` -/
def P1862364655675228716.Spec : Prop :=
  ∀ n, P1862364655675228716.a n = (A009947 n : ℚ)

end A009947

/-! ## A009947.P131658188521534228

`A004523(n)/(A011655(n+1)+A011655(n))`
-/

namespace A009947.P131658188521534228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004523 n : ℚ) / (A011655 (n + 1) + A011655 n : ℚ)

end

end A009947.P131658188521534228

namespace A009947

/-- `A004523(n)/(A011655(n+1)+A011655(n))` -/
def P131658188521534228.Spec : Prop :=
  ∀ n, P131658188521534228.a n = (A009947 n : ℚ)

end A009947

/-!
# A009948: Coordination sequence for alpha-Nd, Position Nd1.

The programs for A009948, the canonical program `A009948.P4426131671443174668` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009948 has offset 0).

The definition of A009948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009948.P4426131671443174668

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=12, a(2)=42, a(3)=96, a(4)=170, a(5)=264, a(6)=378`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009948

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P4426131671443174668.Spec : Prop :=
  ∀ n, P4426131671443174668.a n = A009948 n

theorem P4426131671443174668.correct : P4426131671443174668.Spec := by
  intro n
  simp only [A009948]

end A009948

/-! ## A009948.P1965562439932381942

`A007899(n)-and(4, n²)/2`
-/

namespace A009948.P1965562439932381942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007899 n : ℚ) - (Nat.land 4 (n ^ 2) : ℚ) / 2

end

end A009948.P1965562439932381942

namespace A009948

/-- `A007899(n)-and(4, n²)/2` -/
def P1965562439932381942.Spec : Prop :=
  ∀ n, P1965562439932381942.a n = (A009948 n : ℚ)

end A009948

/-! ## A009948.P18304958383155733983

`A033581(n)+A009945(n)`
-/

namespace A009948.P18304958383155733983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A009945 n

end

end A009948.P18304958383155733983

namespace A009948

/-- `A033581(n)+A009945(n)` -/
def P18304958383155733983.Spec : Prop :=
  ∀ n, P18304958383155733983.a n = A009948 n

end A009948

/-! ## A009948.P15782491749811146161

`A007899(n)-A008911(n)%4`
-/

namespace A009948.P15782491749811146161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n - Int.tmod (A008911 n) 4

end

end A009948.P15782491749811146161

namespace A009948

/-- `A007899(n)-A008911(n)%4` -/
def P15782491749811146161.Spec : Prop :=
  ∀ n, P15782491749811146161.a n = A009948 n

end A009948

/-! ## A009948.P13682982336069589707

`A007899(n)-and(2, A000578(n+1))`
-/

namespace A009948.P13682982336069589707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n - Int.land 2 (A000578 (n + 1))

end

end A009948.P13682982336069589707

namespace A009948

/-- `A007899(n)-and(2, A000578(n+1))` -/
def P13682982336069589707.Spec : Prop :=
  ∀ n, P13682982336069589707.a n = A009948 n

end A009948

/-! ## A009948.P4579422708256726899

`A005901(n)+A009945(n)-A005899(n)`
-/

namespace A009948.P4579422708256726899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n + (A009945 n - A005899 n)

end

end A009948.P4579422708256726899

namespace A009948

/-- `A005901(n)+A009945(n)-A005899(n)` -/
def P4579422708256726899.Spec : Prop :=
  ∀ n, P4579422708256726899.a n = A009948 n

end A009948

/-! ## A009948.P15534135686966737026

`A007899(n)-2%A319702(A319702(n+1))`
-/

namespace A009948.P15534135686966737026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n - Int.tmod 2 (A319702 (A319702 (n + 1)).toNat)

end

end A009948.P15534135686966737026

namespace A009948

/-- `A007899(n)-2%A319702(A319702(n+1))` -/
def P15534135686966737026.Spec : Prop :=
  ∀ n, P15534135686966737026.a n = A009948 n

end A009948

/-!
# A009950: Coordination sequence for alpha-Mn, Position Mn1.

The programs for A009950, there is no canonical definition to state claims against.
-/

/-! ## A009950.P12688259481942008987

`∑[∑[A284518(A070825(n+1))+n]]`
-/

namespace A009950.P12688259481942008987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284518 (A070825 (n + 1)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009950.P12688259481942008987

/-!
# A009951: Coordination sequence for alpha-Mn, Position Mn2.

The programs for A009951, there is no canonical definition to state claims against.
-/

/-! ## A009951.P14672039855785570930

`A131968(A131965(n))+12*n²`
-/

namespace A009951.P14672039855785570930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131968 (A131965 n).toNat + (12 * n ^ 2 : ℤ)

end

end A009951.P14672039855785570930

/-!
# A009952: Coordination sequence for alpha-Mn, Position Mn3.

The programs for A009952, there is no canonical definition to state claims against.
-/

/-! ## A009952.P7149753994045933691

`A375764(n+2)-A375818(A375781(n+1))`
-/

namespace A009952.P7149753994045933691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375764 (n + 2) - A375818 (A375781 (n + 1)).toNat

end

end A009952.P7149753994045933691

/-!
# A009953: Coordination sequence for alpha-Mn, Position Mn4.

The programs for A009953, there is no canonical definition to state claims against.
-/

/-! ## A009953.P7946577504797385600

`A176512(or(xor(1, n), A018012(n)))`
-/

namespace A009953.P7946577504797385600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176512 (Int.lor (Nat.xor 1 n : ℤ) (A018012 n)).toNat

end

end A009953.P7946577504797385600

/-!
# A009955: Coordination sequence for FeS2-Marcasite, Fe position.

The programs for A009955, there is no canonical definition to state claims against.
-/

/-! ## A009955.P10509300198938599392

`A339948(A000051(n))+A002939(n)`
-/

namespace A009955.P10509300198938599392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339948 (A000051 n).toNat + A002939 n

end

end A009955.P10509300198938599392

/-! ## A009955.P16907825517662907753

`A374633(A154962(n)+A001844(n))`
-/

namespace A009955.P16907825517662907753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (A154962 n + A001844 n).toNat

end

end A009955.P16907825517662907753

/-!
# A009956: Coordination sequence for FeS2-Pyrite, S position.

The programs for A009956, there is no canonical definition to state claims against.
-/

/-! ## A009956.P16961412275569542791

`A136110(A317298(n))`
-/

namespace A009956.P16961412275569542791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136110 (A317298 n).toNat

end

end A009956.P16961412275569542791

/-! ## A009956.P450308522419839001

`A300836(7*A004987(n))`
-/

namespace A009956.P450308522419839001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300836 (7 * A004987 n).toNat

end

end A009956.P450308522419839001

/-!
# A009957: Coordination sequence for FeS2-Pyrite, Fe position.

The programs for A009957, the canonical program `A009957.P8896837627040312614` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009957 has offset 0).

The definition of A009957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009957.P8896837627040312614

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=44, a(4)=68, a(5)=120, a(6)=152`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009957

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P8896837627040312614.Spec : Prop :=
  ∀ n, P8896837627040312614.a n = A009957 n

theorem P8896837627040312614.correct : P8896837627040312614.Spec := by
  intro n
  simp only [A009957]

end A009957

/-! ## A009957.P451731080850700522

`A001651(A005918(n))-Δ[A000463(n+1)]`
-/

namespace A009957.P451731080850700522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A005918 n).toNat - (f1 (n + 1) - f1 n)

end

end A009957.P451731080850700522

namespace A009957

/-- `A001651(A005918(n))-Δ[A000463(n+1)]` -/
def P451731080850700522.Spec : Prop :=
  ∀ n, P451731080850700522.a n = A009957 n

end A009957

/-!
# A009958: Coordination sequence for sigma-CrFe, Position Xf.

The programs for A009958, there is no canonical definition to state claims against.
-/

/-! ## A009958.P9302654552369580296

`A000292(2*(n+1))-A241536(A151897(n+2))`
-/

namespace A009958.P9302654552369580296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * (n + 1)) - A241536 (A151897 (n + 2)).toNat

end

end A009958.P9302654552369580296

/-!
# A009959: Coordination sequence for sigma-CrFe, Position Xd.

The programs for A009959, there is no canonical definition to state claims against.
-/

/-! ## A009959.P5774734305834730469

`A064060(∑[∑[n]+3])+2*n`
-/

namespace A009959.P5774734305834730469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064060 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n : ℤ)

end

end A009959.P5774734305834730469

/-!
# A009960: Coordination sequence for sigma-CrFe, Position Xb.

The programs for A009960, there is no canonical definition to state claims against.
-/

/-! ## A009960.P777580102362363565

`A003056(A065068(2*(n+1)))+(3*n)²`
-/

namespace A009960.P777580102362363565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A065068 (2 * (n + 1))).toNat + ((3 * n) ^ 2 : ℤ)

end

end A009960.P777580102362363565

/-!
# A009961: Coordination sequence for sigma-CrFe, Position Xc.

The programs for A009961, there is no canonical definition to state claims against.
-/

/-! ## A009961.P2322353162656643976

`xor(6, A105601(A049720(n)))`
-/

namespace A009961.P2322353162656643976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A105601 (A049720 n).toNat)

end

end A009961.P2322353162656643976

/-!
# A009962: Coordination sequence for sigma-CrFe, Position Xa.

The programs for A009962, there is no canonical definition to state claims against.
-/

/-! ## A009962.P4761881410858469797

`A265517(5*n²)+(3*n)²+1`
-/

namespace A009962.P4761881410858469797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265517 (5 * n ^ 2) + ((3 * n) ^ 2 + 1 : ℤ)

end

end A009962.P4761881410858469797

/-!
# A009963: Triangle of numbers n!(n-1)!...(n-k+1)!/(1!2!...k!).

The programs for A009963, there is no canonical definition to state claims against.
-/

/-! ## A009963.P13769766018940113971

`A128227(n)!*A156584(A083920(n))`
-/

namespace A009963.P13769766018940113971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A128227 n).toNat : ℤ) * A156584 (A083920 n).toNat

end

end A009963.P13769766018940113971

/-! ## A009963.P6445351106663100917

`A007318(n)/A001263(n+1)*A156584(n)`
-/

namespace A009963.P6445351106663100917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A001263 (n + 1) : ℚ) * (A156584 n : ℚ)

end

end A009963.P6445351106663100917

/-! ## A009963.P1083898110163260472

`sqrt(A008459(n))/A001263(n+1)*A156584(n)`
-/

namespace A009963.P1083898110163260472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) / (A001263 (n + 1) : ℝ) * (A156584 n : ℝ)

end

end A009963.P1083898110163260472

/-! ## A009963.P9513357043332524294

`Δ[A102363(n)]/A001263(n+1)*A156584(n)`
-/

namespace A009963.P9513357043332524294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A001263 (n + 1) : ℚ) * (A156584 n : ℚ)

end

end A009963.P9513357043332524294

/-! ## A009963.P16379833215571464495

`A156765(n)/A022166(n)`
-/

namespace A009963.P16379833215571464495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156765 n : ℚ) / (A022166 n : ℚ)

end

end A009963.P16379833215571464495

/-! ## A009963.P7486653632832274381

`sqrt(A008459(n))/A157638(n)*A156765(n)`
-/

namespace A009963.P7486653632832274381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) / (A157638 n : ℝ) * (A156765 n : ℝ)

end

end A009963.P7486653632832274381

/-! ## A009963.P9168798623608281805

`Δ[A102363(n)]/A157638(n)*A156765(n)`
-/

namespace A009963.P9168798623608281805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A157638 n : ℚ) * (A156765 n : ℚ)

end

end A009963.P9168798623608281805

/-! ## A009963.P5464404825564539588

`A156766(n)/A022167(n)`
-/

namespace A009963.P5464404825564539588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156766 n : ℚ) / (A022167 n : ℚ)

end

end A009963.P5464404825564539588

/-! ## A009963.P10040895197755743724

`A156767(n)/A022168(n)`
-/

namespace A009963.P10040895197755743724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156767 n : ℚ) / (A022168 n : ℚ)

end

end A009963.P10040895197755743724

/-! ## A009963.P7090757132075574618

`A177939(n+1)/A060854(n+1)`
-/

namespace A009963.P7090757132075574618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177939 (n + 1) : ℚ) / (A060854 (n + 1) : ℚ)

end

end A009963.P7090757132075574618

/-!
# A009964: Powers of 20.

The programs for A009964, the canonical program `A009964.P4172866360070751422` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009964 has offset 0).

The definition of A009964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009964.P4172866360070751422

`20^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009964

/-- `20^n` -/
def P4172866360070751422.Spec : Prop :=
  ∀ n, (P4172866360070751422.a n : ℤ) = A009964 n

theorem P4172866360070751422.correct : P4172866360070751422.Spec := by
  intro n
  simp only [A009964]

end A009964

/-!
# A009965: Powers of 21.

The programs for A009965, the canonical program `A009965.P13848697580637964592` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009965 has offset 0).

The definition of A009965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009965.P13848697580637964592

`21^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009965

/-- `21^n` -/
def P13848697580637964592.Spec : Prop :=
  ∀ n, (P13848697580637964592.a n : ℤ) = A009965 n

theorem P13848697580637964592.correct : P13848697580637964592.Spec := by
  intro n
  simp only [A009965]

end A009965

/-!
# A009966: Powers of 22.

The programs for A009966, the canonical program `A009966.P9226435468646209523` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009966 has offset 0).

The definition of A009966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009966.P9226435468646209523

`22^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009966

/-- `22^n` -/
def P9226435468646209523.Spec : Prop :=
  ∀ n, (P9226435468646209523.a n : ℤ) = A009966 n

theorem P9226435468646209523.correct : P9226435468646209523.Spec := by
  intro n
  simp only [A009966]

end A009966

/-!
# A009967: Powers of 23.

The programs for A009967, the canonical program `A009967.P16923268497434393121` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009967 has offset 0).

The definition of A009967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009967.P16923268497434393121

`23^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009967

/-- `23^n` -/
def P16923268497434393121.Spec : Prop :=
  ∀ n, (P16923268497434393121.a n : ℤ) = A009967 n

theorem P16923268497434393121.correct : P16923268497434393121.Spec := by
  intro n
  simp only [A009967]

end A009967

/-!
# A009968: Powers of 24: a(n) = 24^n.

The programs for A009968, the canonical program `A009968.P13303915653291488908` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009968 has offset 0).

The definition of A009968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24^n` (program `A009968.P13303915653291488908`, by `A009968.P13303915653291488908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A009968.P13303915653291488908

`24^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009968

/-- `24^n` -/
def P13303915653291488908.Spec : Prop :=
  ∀ n, (P13303915653291488908.a n : ℤ) = A009968 n

theorem P13303915653291488908.correct : P13303915653291488908.Spec := by
  intro n
  simp only [A009968]

end A009968

/-!
# A009969: Powers of 25.

The programs for A009969, the canonical program `A009969.P12267461118234656815` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009969 has offset 0).

The definition of A009969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009969.P12267461118234656815

`25^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009969

/-- `25^n` -/
def P12267461118234656815.Spec : Prop :=
  ∀ n, (P12267461118234656815.a n : ℤ) = A009969 n

theorem P12267461118234656815.correct : P12267461118234656815.Spec := by
  intro n
  simp only [A009969]

end A009969

/-!
# A009970: Powers of 26.

The programs for A009970, the canonical program `A009970.P5416579341696706587` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009970 has offset 0).

The definition of A009970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009970.P5416579341696706587

`26^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009970

/-- `26^n` -/
def P5416579341696706587.Spec : Prop :=
  ∀ n, (P5416579341696706587.a n : ℤ) = A009970 n

theorem P5416579341696706587.correct : P5416579341696706587.Spec := by
  intro n
  simp only [A009970]

end A009970

/-!
# A009971: Powers of 27.

The programs for A009971, the canonical program `A009971.P9460515136028193919` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009971 has offset 0).

The definition of A009971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009971.P9460515136028193919

`27^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009971

/-- `27^n` -/
def P9460515136028193919.Spec : Prop :=
  ∀ n, (P9460515136028193919.a n : ℤ) = A009971 n

theorem P9460515136028193919.correct : P9460515136028193919.Spec := by
  intro n
  simp only [A009971]

end A009971

/-!
# A009972: Powers of 28.

The programs for A009972, the canonical program `A009972.P16289466509633370848` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009972 has offset 0).

The definition of A009972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009972.P16289466509633370848

`28^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009972

/-- `28^n` -/
def P16289466509633370848.Spec : Prop :=
  ∀ n, (P16289466509633370848.a n : ℤ) = A009972 n

theorem P16289466509633370848.correct : P16289466509633370848.Spec := by
  intro n
  simp only [A009972]

end A009972

/-!
# A009973: Powers of 29.

The programs for A009973, the canonical program `A009973.P5838128863185223012` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009973 has offset 0).

The definition of A009973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009973.P5838128863185223012

`29^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009973

/-- `29^n` -/
def P5838128863185223012.Spec : Prop :=
  ∀ n, (P5838128863185223012.a n : ℤ) = A009973 n

theorem P5838128863185223012.correct : P5838128863185223012.Spec := by
  intro n
  simp only [A009973]

end A009973

/-!
# A009974: Powers of 30.

The programs for A009974, the canonical program `A009974.P5634852946113571447` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009974 has offset 0).

The definition of A009974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009974.P5634852946113571447

`30^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009974

/-- `30^n` -/
def P5634852946113571447.Spec : Prop :=
  ∀ n, (P5634852946113571447.a n : ℤ) = A009974 n

theorem P5634852946113571447.correct : P5634852946113571447.Spec := by
  intro n
  simp only [A009974]

end A009974

/-!
# A009975: Powers of 31: a(n) = 31^n.

The programs for A009975, the canonical program `A009975.P17022346385264887538` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009975 has offset 0).

The definition of A009975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31^n` (program `A009975.P17022346385264887538`, by `A009975.P17022346385264887538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A009975.P17022346385264887538

`31^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009975

/-- `31^n` -/
def P17022346385264887538.Spec : Prop :=
  ∀ n, (P17022346385264887538.a n : ℤ) = A009975 n

theorem P17022346385264887538.correct : P17022346385264887538.Spec := by
  intro n
  simp only [A009975]

end A009975

/-!
# A009976: Powers of 32.

The programs for A009976, the canonical program `A009976.P429902976959801054` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009976 has offset 0).

The definition of A009976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009976.P429902976959801054

`32^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009976

/-- `32^n` -/
def P429902976959801054.Spec : Prop :=
  ∀ n, (P429902976959801054.a n : ℤ) = A009976 n

theorem P429902976959801054.correct : P429902976959801054.Spec := by
  intro n
  simp only [A009976]

end A009976

/-!
# A009977: Powers of 33.

The programs for A009977, the canonical program `A009977.P6044351241941811310` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009977 has offset 0).

The definition of A009977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009977.P6044351241941811310

`33^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009977

/-- `33^n` -/
def P6044351241941811310.Spec : Prop :=
  ∀ n, (P6044351241941811310.a n : ℤ) = A009977 n

theorem P6044351241941811310.correct : P6044351241941811310.Spec := by
  intro n
  simp only [A009977]

end A009977

/-!
# A009978: Powers of 34.

The programs for A009978, the canonical program `A009978.P8746595508513741110` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009978 has offset 0).

The definition of A009978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009978.P8746595508513741110

`34^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009978

/-- `34^n` -/
def P8746595508513741110.Spec : Prop :=
  ∀ n, (P8746595508513741110.a n : ℤ) = A009978 n

theorem P8746595508513741110.correct : P8746595508513741110.Spec := by
  intro n
  simp only [A009978]

end A009978

/-!
# A009979: Powers of 35.

The programs for A009979, the canonical program `A009979.P6645447862625895551` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009979 has offset 0).

The definition of A009979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009979.P6645447862625895551

`35^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009979

/-- `35^n` -/
def P6645447862625895551.Spec : Prop :=
  ∀ n, (P6645447862625895551.a n : ℤ) = A009979 n

theorem P6645447862625895551.correct : P6645447862625895551.Spec := by
  intro n
  simp only [A009979]

end A009979

/-!
# A009980: Powers of 36.

The programs for A009980, the canonical program `A009980.P2226722169121836870` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009980 has offset 0).

The definition of A009980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009980.P2226722169121836870

`36^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009980

/-- `36^n` -/
def P2226722169121836870.Spec : Prop :=
  ∀ n, (P2226722169121836870.a n : ℤ) = A009980 n

theorem P2226722169121836870.correct : P2226722169121836870.Spec := by
  intro n
  simp only [A009980]

end A009980

/-!
# A009981: Powers of 37.

The programs for A009981, the canonical program `A009981.P4016187551899995932` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009981 has offset 0).

The definition of A009981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009981.P4016187551899995932

`37^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009981

/-- `37^n` -/
def P4016187551899995932.Spec : Prop :=
  ∀ n, (P4016187551899995932.a n : ℤ) = A009981 n

theorem P4016187551899995932.correct : P4016187551899995932.Spec := by
  intro n
  simp only [A009981]

end A009981

/-!
# A009982: Powers of 38.

The programs for A009982, the canonical program `A009982.P7291663588826199634` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009982 has offset 0).

The definition of A009982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009982.P7291663588826199634

`38^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009982

/-- `38^n` -/
def P7291663588826199634.Spec : Prop :=
  ∀ n, (P7291663588826199634.a n : ℤ) = A009982 n

theorem P7291663588826199634.correct : P7291663588826199634.Spec := by
  intro n
  simp only [A009982]

end A009982

/-!
# A009983: Powers of 39.

The programs for A009983, the canonical program `A009983.P15808763319762972401` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009983 has offset 0).

The definition of A009983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009983.P15808763319762972401

`39^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009983

/-- `39^n` -/
def P15808763319762972401.Spec : Prop :=
  ∀ n, (P15808763319762972401.a n : ℤ) = A009983 n

theorem P15808763319762972401.correct : P15808763319762972401.Spec := by
  intro n
  simp only [A009983]

end A009983

/-!
# A009984: Powers of 40.

The programs for A009984, the canonical program `A009984.P10166428479331118956` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009984 has offset 0).

The definition of A009984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009984.P10166428479331118956

`40^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009984

/-- `40^n` -/
def P10166428479331118956.Spec : Prop :=
  ∀ n, (P10166428479331118956.a n : ℤ) = A009984 n

theorem P10166428479331118956.correct : P10166428479331118956.Spec := by
  intro n
  simp only [A009984]

end A009984

/-!
# A009985: Powers of 41.

The programs for A009985, the canonical program `A009985.P2418920347418015536` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009985 has offset 0).

The definition of A009985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009985.P2418920347418015536

`41^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009985

/-- `41^n` -/
def P2418920347418015536.Spec : Prop :=
  ∀ n, (P2418920347418015536.a n : ℤ) = A009985 n

theorem P2418920347418015536.correct : P2418920347418015536.Spec := by
  intro n
  simp only [A009985]

end A009985

/-!
# A009986: Powers of 42.

The programs for A009986, the canonical program `A009986.P706516958195369301` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009986 has offset 0).

The definition of A009986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009986.P706516958195369301

`42^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009986

/-- `42^n` -/
def P706516958195369301.Spec : Prop :=
  ∀ n, (P706516958195369301.a n : ℤ) = A009986 n

theorem P706516958195369301.correct : P706516958195369301.Spec := by
  intro n
  simp only [A009986]

end A009986

/-!
# A009987: Powers of 43.

The programs for A009987, the canonical program `A009987.P8841735311481153621` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009987 has offset 0).

The definition of A009987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009987.P8841735311481153621

`43^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009987

/-- `43^n` -/
def P8841735311481153621.Spec : Prop :=
  ∀ n, (P8841735311481153621.a n : ℤ) = A009987 n

theorem P8841735311481153621.correct : P8841735311481153621.Spec := by
  intro n
  simp only [A009987]

end A009987

/-!
# A009988: Powers of 44.

The programs for A009988, the canonical program `A009988.P646334392193707381` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009988 has offset 0).

The definition of A009988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009988.P646334392193707381

`44^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009988

/-- `44^n` -/
def P646334392193707381.Spec : Prop :=
  ∀ n, (P646334392193707381.a n : ℤ) = A009988 n

theorem P646334392193707381.correct : P646334392193707381.Spec := by
  intro n
  simp only [A009988]

end A009988

/-!
# A009989: Powers of 45.

The programs for A009989, the canonical program `A009989.P16892934977051528746` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009989 has offset 0).

The definition of A009989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009989.P16892934977051528746

`45^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009989

/-- `45^n` -/
def P16892934977051528746.Spec : Prop :=
  ∀ n, (P16892934977051528746.a n : ℤ) = A009989 n

theorem P16892934977051528746.correct : P16892934977051528746.Spec := by
  intro n
  simp only [A009989]

end A009989

/-!
# A009990: Powers of 46.

The programs for A009990, the canonical program `A009990.P16574812573373832758` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009990 has offset 0).

The definition of A009990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009990.P16574812573373832758

`46^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009990

/-- `46^n` -/
def P16574812573373832758.Spec : Prop :=
  ∀ n, (P16574812573373832758.a n : ℤ) = A009990 n

theorem P16574812573373832758.correct : P16574812573373832758.Spec := by
  intro n
  simp only [A009990]

end A009990

/-!
# A009991: Powers of 47.

The programs for A009991, the canonical program `A009991.P18054387366177757036` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009991 has offset 0).

The definition of A009991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009991.P18054387366177757036

`47^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009991

/-- `47^n` -/
def P18054387366177757036.Spec : Prop :=
  ∀ n, (P18054387366177757036.a n : ℤ) = A009991 n

theorem P18054387366177757036.correct : P18054387366177757036.Spec := by
  intro n
  simp only [A009991]

end A009991

/-!
# A009992: Powers of 48: a(n) = 48^n.

The programs for A009992, the canonical program `A009992.P1841841845672871444` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009992 has offset 0).

The definition of A009992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `48^n` (program `A009992.P1841841845672871444`, by `A009992.P1841841845672871444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A009992.P1841841845672871444

`48^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009992

/-- `48^n` -/
def P1841841845672871444.Spec : Prop :=
  ∀ n, (P1841841845672871444.a n : ℤ) = A009992 n

theorem P1841841845672871444.correct : P1841841845672871444.Spec := by
  intro n
  simp only [A009992]

end A009992

/-!
# A009993: Numbers whose decimal digits are in strictly increasing order.

The programs for A009993, the canonical program `A009993.P17794961040129001579` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009993 has offset 1).

The definition of A009993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009993.P13230482479354627685

`∩[A009994(n+1), A010784(n+1)]`
-/

namespace A009993.P13230482479354627685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A009993.P13230482479354627685

namespace A009993

/-- `∩[A009994(n+1), A010784(n+1)]` -/
def P13230482479354627685.Spec : Prop :=
  ∀ n, (P13230482479354627685.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P3829087751644993956

`∩[A009994(n+1), A043096(n+1)]`
-/

namespace A009993.P3829087751644993956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A009993.P3829087751644993956

namespace A009993

/-- `∩[A009994(n+1), A043096(n+1)]` -/
def P3829087751644993956.Spec : Prop :=
  ∀ n, (P3829087751644993956.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P18328660150402831758

`lt[A037833(abs(1-n)+1), 1]`
-/

namespace A009993.P18328660150402831758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A009993.P18328660150402831758

namespace A009993

/-- `lt[A037833(abs(1-n)+1), 1]` -/
def P18328660150402831758.Spec : Prop :=
  ∀ n, (P18328660150402831758.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P2982372093027521848

`record[A137564(A004185(n))]`
-/

namespace A009993.P2982372093027521848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A004185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009993.P2982372093027521848

namespace A009993

/-- `record[A137564(A004185(n))]` -/
def P2982372093027521848.Spec : Prop :=
  ∀ n, P2982372093027521848.a n = A009993 (n + 1)

end A009993

/-! ## A009993.P12565862279307931624

`record[A004086(A227362(n))]`
-/

namespace A009993.P12565862279307931624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A227362 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009993.P12565862279307931624

namespace A009993

/-- `record[A004086(A227362(n))]` -/
def P12565862279307931624.Spec : Prop :=
  ∀ n, P12565862279307931624.a n = A009993 (n + 1)

end A009993

/-! ## A009993.P985992202601163800

`record[A355223(A137564(n))]`
-/

namespace A009993.P985992202601163800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (A137564 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009993.P985992202601163800

namespace A009993

/-- `record[A355223(A137564(n))]` -/
def P985992202601163800.Spec : Prop :=
  ∀ n, P985992202601163800.a n = A009993 (n + 1)

end A009993

/-! ## A009993.P731180342153916593

`record[A137564(A355222(n))]`
-/

namespace A009993.P731180342153916593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A355222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009993.P731180342153916593

namespace A009993

/-- `record[A137564(A355222(n))]` -/
def P731180342153916593.Spec : Prop :=
  ∀ n, P731180342153916593.a n = A009993 (n + 1)

end A009993

/-! ## A009993.P11374005107946657017

`record[A321802(A355223(n))]`
-/

namespace A009993.P11374005107946657017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A355223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009993.P11374005107946657017

namespace A009993

/-- `record[A321802(A355223(n))]` -/
def P11374005107946657017.Spec : Prop :=
  ∀ n, P11374005107946657017.a n = A009993 (n + 1)

end A009993

/-! ## A009993.P17794961040129001579

`filter[A355222(n), A178788(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A009993

/-- `filter[A355222(n), A178788(#)]` -/
def P17794961040129001579.Spec : Prop :=
  ∀ n, P17794961040129001579.a n = A009993 (n + 1)

theorem P17794961040129001579.correct : P17794961040129001579.Spec := by
  intro n
  simp only [A009993, Nat.add_sub_cancel]

end A009993

/-! ## A009993.P2153278775061841168

`filter[A355222(n), A196368(#)]`
-/

namespace A009993.P2153278775061841168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A009993.P2153278775061841168

namespace A009993

/-- `filter[A355222(n), A196368(#)]` -/
def P2153278775061841168.Spec : Prop :=
  ∀ n, P2153278775061841168.a n = A009993 (n + 1)

end A009993

/-! ## A009993.P16191869381048193540

`eq[A004185(n), A137564(n)]`
-/

namespace A009993.P16191869381048193540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009993.P16191869381048193540

namespace A009993

/-- `eq[A004185(n), A137564(n)]` -/
def P16191869381048193540.Spec : Prop :=
  ∀ n, (P16191869381048193540.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P602037134070422201

`eq[A097601(n), A107846(n)]`
-/

namespace A009993.P602037134070422201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009993.P602037134070422201

namespace A009993

/-- `eq[A097601(n), A107846(n)]` -/
def P602037134070422201.Spec : Prop :=
  ∀ n, (P602037134070422201.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P2123283214497711886

`eq[A004086(n), A227362(n)]`
-/

namespace A009993.P2123283214497711886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009993.P2123283214497711886

namespace A009993

/-- `eq[A004086(n), A227362(n)]` -/
def P2123283214497711886.Spec : Prop :=
  ∀ n, (P2123283214497711886.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P6217026623571282828

`eq[A107846(n), A193581(n)]`
-/

namespace A009993.P6217026623571282828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009993.P6217026623571282828

namespace A009993

/-- `eq[A107846(n), A193581(n)]` -/
def P6217026623571282828.Spec : Prop :=
  ∀ n, (P6217026623571282828.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P3858323148706381480

`eq[n, A004185(A337864(n))]`
-/

namespace A009993.P3858323148706381480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A337864 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009993.P3858323148706381480

namespace A009993

/-- `eq[n, A004185(A337864(n))]` -/
def P3858323148706381480.Spec : Prop :=
  ∀ n, (P3858323148706381480.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P15361344857651019874

`eq[n, A004185(A351868(n))]`
-/

namespace A009993.P15361344857651019874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A351868 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009993.P15361344857651019874

namespace A009993

/-- `eq[n, A004185(A351868(n))]` -/
def P15361344857651019874.Spec : Prop :=
  ∀ n, (P15361344857651019874.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P6822213548128249952

`eq[A097601(n), A321537(n)]`
-/

namespace A009993.P6822213548128249952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009993.P6822213548128249952

namespace A009993

/-- `eq[A097601(n), A321537(n)]` -/
def P6822213548128249952.Spec : Prop :=
  ∀ n, (P6822213548128249952.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P2267140430312197943

`eq[A097601(n), A321538(n)]`
-/

namespace A009993.P2267140430312197943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009993.P2267140430312197943

namespace A009993

/-- `eq[A097601(n), A321538(n)]` -/
def P2267140430312197943.Spec : Prop :=
  ∀ n, (P2267140430312197943.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P194405888933416543

`eq[A097601(n), A321797(n)]`
-/

namespace A009993.P194405888933416543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009993.P194405888933416543

namespace A009993

/-- `eq[A097601(n), A321797(n)]` -/
def P194405888933416543.Spec : Prop :=
  ∀ n, (P194405888933416543.a n : ℤ) = A009993 (n + 1)

end A009993

/-! ## A009993.P17070532546604868604

`eq[A137564(n), A355222(n)]`
-/

namespace A009993.P17070532546604868604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009993.P17070532546604868604

namespace A009993

/-- `eq[A137564(n), A355222(n)]` -/
def P17070532546604868604.Spec : Prop :=
  ∀ n, (P17070532546604868604.a n : ℤ) = A009993 (n + 1)

end A009993

/-!
# A009994: Numbers with digits in nondecreasing order.

The programs for A009994, there is no canonical definition to state claims against.
-/

/-! ## A009994.P18305552894228671426

`floor(floor((A052223(n+1)-1)/3)/3)`
-/

namespace A009994.P18305552894228671426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A052223 (n + 1) - 1 : ℚ) / 3⌋ : ℚ) / 3⌋

end

end A009994.P18305552894228671426

/-! ## A009994.P8166594916479223632

`record[A004086(n)-A151949(n)]`
-/

namespace A009994.P8166594916479223632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - A151949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009994.P8166594916479223632

/-! ## A009994.P2193694272636481327

`record[A226134(n)]`
-/

namespace A009994.P2193694272636481327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009994.P2193694272636481327

/-! ## A009994.P12353121652791091147

`record[A355222(n)]`
-/

namespace A009994.P12353121652791091147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009994.P12353121652791091147

/-! ## A009994.P16740508999004099942

`A355222(a(n-1)+1)` with `a(0)=0`
-/

namespace A009994.P16740508999004099942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A355222 (a (n - 1) + 1).toNat

end

end A009994.P16740508999004099942

/-! ## A009994.P13104734396154088613

`record[A004185(n)]`
-/

namespace A009994.P13104734396154088613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009994.P13104734396154088613

/-! ## A009994.P14074079784200042765

`record[A355223(n)]`
-/

namespace A009994.P14074079784200042765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009994.P14074079784200042765

/-! ## A009994.P8165198979608476885

`eq[0, A097601(n)]`
-/

namespace A009994.P8165198979608476885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009994.P8165198979608476885

/-! ## A009994.P10153823761835631543

`eq[0, A193581(n)]`
-/

namespace A009994.P10153823761835631543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009994.P10153823761835631543

/-! ## A009994.P15955651402210466020

`lt[A193582(n), 2]`
-/

namespace A009994.P15955651402210466020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A009994.P15955651402210466020

/-! ## A009994.P5102217942647061607

`record[A070196(n)-n]`
-/

namespace A009994.P5102217942647061607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009994.P5102217942647061607

/-! ## A009994.P15513363655487907563

`eq[1, A343639(n+1)]`
-/

namespace A009994.P15513363655487907563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009994.P15513363655487907563

/-! ## A009994.P12889184542369492544

`record[A004086(A004186(n))]`
-/

namespace A009994.P12889184542369492544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004186 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009994.P12889184542369492544

/-! ## A009994.P9168545452758392115

`eq[A004086(n), A004186(n)]`
-/

namespace A009994.P9168545452758392115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009994.P9168545452758392115

/-! ## A009994.P607242791327592865

`eq[A005843(n), A070196(n)]`
-/

namespace A009994.P607242791327592865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009994.P607242791327592865

/-! ## A009994.P10422210318306834571

`eq[A045918(n), A047842(n)]`
-/

namespace A009994.P10422210318306834571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009994.P10422210318306834571

/-! ## A009994.P6866461763866480282

`eq[A054842(n), A069877(n)]`
-/

namespace A009994.P6866461763866480282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009994.P6866461763866480282

/-! ## A009994.P9909780715930557979

`eq[A081600(n), A098488(n)]`
-/

namespace A009994.P9909780715930557979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009994.P9909780715930557979

/-! ## A009994.P12160401475517124096

`eq[A108782(n), A151949(n)]`
-/

namespace A009994.P12160401475517124096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009994.P12160401475517124096

/-! ## A009994.P12013859577605761599

`lt[1, A304273(A193581(n)+1)]`
-/

namespace A009994.P12013859577605761599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304273 (A193581 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A009994.P12013859577605761599

/-!
# A009995: Numbers with digits in strictly decreasing order. From the Macaulay expansion of n.

The programs for A009995, there is no canonical definition to state claims against.
-/

/-! ## A009995.P14729049712761213409

`A262557(A263327(n+1))`
-/

namespace A009995.P14729049712761213409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A263327 (n + 1)).toNat

end

end A009995.P14729049712761213409

/-! ## A009995.P8659805618289513231

`eq[n, A227362(n)]`
-/

namespace A009995.P8659805618289513231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009995.P8659805618289513231

/-! ## A009995.P15125926091047306098

`eq[1, char[A262557(n+1)]]`
-/

namespace A009995.P15125926091047306098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009995.P15125926091047306098

/-! ## A009995.P2143955174240366438

`record[A137564(A355221(n))]`
-/

namespace A009995.P2143955174240366438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A355221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009995.P2143955174240366438

/-! ## A009995.P1989428255492080086

`record[A137564(A355224(n))]`
-/

namespace A009995.P1989428255492080086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A355224 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009995.P1989428255492080086

/-! ## A009995.P13426697270528659353

`A004186(A257128(n+1))`
-/

namespace A009995.P13426697270528659353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A257128 (n + 1)).toNat

end

end A009995.P13426697270528659353

/-! ## A009995.P3743468348163399092

`filter[A355221(n), A178788(#)]`
-/

namespace A009995.P3743468348163399092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A009995.P3743468348163399092

/-! ## A009995.P573487093593047003

`filter[A355224(n), A178788(#)]`
-/

namespace A009995.P573487093593047003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A009995.P573487093593047003

/-! ## A009995.P16218488791433370616

`filter[A355221(n), A196368(#)]`
-/

namespace A009995.P16218488791433370616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A009995.P16218488791433370616

/-! ## A009995.P16428056436269828645

`filter[A355224(n), A196368(#)]`
-/

namespace A009995.P16428056436269828645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A009995.P16428056436269828645

/-! ## A009995.P7417089717781400603

`eq[n, A137564(A004186(n))]`
-/

namespace A009995.P7417089717781400603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009995.P7417089717781400603

/-! ## A009995.P4074214628419958739

`eq[A107846(n), A108782(n)]`
-/

namespace A009995.P4074214628419958739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009995.P4074214628419958739

/-! ## A009995.P6035401034158833956

`eq[n, A004186(A320486(n))]`
-/

namespace A009995.P6035401034158833956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A320486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009995.P6035401034158833956

/-! ## A009995.P6947768284675263912

`eq[A004186(n), A320485(n)]`
-/

namespace A009995.P6947768284675263912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009995.P6947768284675263912

/-! ## A009995.P6568991083139937233

`eq[n, A004186(A321801(n))]`
-/

namespace A009995.P6568991083139937233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A321801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009995.P6568991083139937233

/-! ## A009995.P8489672202538181147

`eq[A004186(n), A321802(n)]`
-/

namespace A009995.P8489672202538181147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009995.P8489672202538181147

/-! ## A009995.P4215001197190826265

`eq[n, A004186(A337864(n))]`
-/

namespace A009995.P4215001197190826265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A337864 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009995.P4215001197190826265

/-! ## A009995.P9267575151617085658

`eq[n, A004186(A351868(n))]`
-/

namespace A009995.P9267575151617085658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A351868 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009995.P9267575151617085658

/-! ## A009995.P3149121404421968350

`eq[n, A355221(A137564(n))]`
-/

namespace A009995.P3149121404421968350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009995.P3149121404421968350

/-! ## A009995.P12968984872009806762

`record[gcd(A227362(n), A227380(n))]`
-/

namespace A009995.P12968984872009806762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227362 n) (A227380 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009995.P12968984872009806762

/-!
# A009996: Numbers with digits in nonincreasing order.

The programs for A009996, the canonical program `A009996.P6730135653315160967` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009996 has offset 1).

The definition of A009996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009996.P6730135653315160967

`record[A355221(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009996

/-- `record[A355221(n)]` -/
def P6730135653315160967.Spec : Prop :=
  ∀ n, P6730135653315160967.a n = A009996 (n + 1)

theorem P6730135653315160967.correct : P6730135653315160967.Spec := by
  intro n
  simp only [A009996, Nat.add_sub_cancel]

end A009996

/-! ## A009996.P11704184535657526851

`eq[0, A108782(n)]`
-/

namespace A009996.P11704184535657526851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009996.P11704184535657526851

namespace A009996

/-- `eq[0, A108782(n)]` -/
def P11704184535657526851.Spec : Prop :=
  ∀ n, (P11704184535657526851.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P10808935246432532733

`eq[n, A004186(n)]`
-/

namespace A009996.P10808935246432532733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009996.P10808935246432532733

namespace A009996

/-- `eq[n, A004186(n)]` -/
def P10808935246432532733.Spec : Prop :=
  ∀ n, (P10808935246432532733.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P8194023711171558544

`eq[n, A355224(n)]`
-/

namespace A009996.P8194023711171558544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009996.P8194023711171558544

namespace A009996

/-- `eq[n, A355224(n)]` -/
def P8194023711171558544.Spec : Prop :=
  ∀ n, (P8194023711171558544.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P8615813793482425583

`eq[0, A193581(A004086(n))]`
-/

namespace A009996.P8615813793482425583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009996.P8615813793482425583

namespace A009996

/-- `eq[0, A193581(A004086(n))]` -/
def P8615813793482425583.Spec : Prop :=
  ∀ n, (P8615813793482425583.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P13352908127891722619

`eq[A004086(n), A004185(n)]`
-/

namespace A009996.P13352908127891722619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009996.P13352908127891722619

namespace A009996

/-- `eq[A004086(n), A004185(n)]` -/
def P13352908127891722619.Spec : Prop :=
  ∀ n, (P13352908127891722619.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P2516302491582105144

`eq[A056964(n), A070196(n)]`
-/

namespace A009996.P2516302491582105144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009996.P2516302491582105144

namespace A009996

/-- `eq[A056964(n), A070196(n)]` -/
def P2516302491582105144.Spec : Prop :=
  ∀ n, (P2516302491582105144.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P8508764650438873902

`eq[A056965(n), A151949(n)]`
-/

namespace A009996.P8508764650438873902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009996.P8508764650438873902

namespace A009996

/-- `eq[A056965(n), A151949(n)]` -/
def P8508764650438873902.Spec : Prop :=
  ∀ n, (P8508764650438873902.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P8993883927965344125

`eq[A056965(n), A193581(n)]`
-/

namespace A009996.P8993883927965344125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009996.P8993883927965344125

namespace A009996

/-- `eq[A056965(n), A193581(n)]` -/
def P8993883927965344125.Spec : Prop :=
  ∀ n, (P8993883927965344125.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P17762343230475950523

`eq[A045918(n), A244112(n)]`
-/

namespace A009996.P17762343230475950523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009996.P17762343230475950523

namespace A009996

/-- `eq[A045918(n), A244112(n)]` -/
def P17762343230475950523.Spec : Prop :=
  ∀ n, (P17762343230475950523.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P10047938970346026185

`eq[A151949(n), A193581(n)]`
-/

namespace A009996.P10047938970346026185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009996.P10047938970346026185

namespace A009996

/-- `eq[A151949(n), A193581(n)]` -/
def P10047938970346026185.Spec : Prop :=
  ∀ n, (P10047938970346026185.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P9688863817275383745

`eq[n, A333659(A328447(n))]`
-/

namespace A009996.P9688863817275383745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A328447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009996.P9688863817275383745

namespace A009996

/-- `eq[n, A333659(A328447(n))]` -/
def P9688863817275383745.Spec : Prop :=
  ∀ n, (P9688863817275383745.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P4888892681591841594

`eq[0, A283001(n)]`
-/

namespace A009996.P4888892681591841594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A009996.P4888892681591841594

namespace A009996

/-- `eq[0, A283001(n)]` -/
def P4888892681591841594.Spec : Prop :=
  ∀ n, (P4888892681591841594.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P7980291352163230165

`eq[A052008(n), A070196(n)]`
-/

namespace A009996.P7980291352163230165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A009996.P7980291352163230165

namespace A009996

/-- `eq[A052008(n), A070196(n)]` -/
def P7980291352163230165.Spec : Prop :=
  ∀ n, (P7980291352163230165.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P15104269974640298233

`lt[A108782(n), A108775(n+1)]`
-/

namespace A009996.P15104269974640298233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A009996.P15104269974640298233

namespace A009996

/-- `lt[A108782(n), A108775(n+1)]` -/
def P15104269974640298233.Spec : Prop :=
  ∀ n, (P15104269974640298233.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P3291732116830339314

`lt[A355224(n), lt[2, A004086(n)]]`
-/

namespace A009996.P3291732116830339314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A009996.P3291732116830339314

namespace A009996

/-- `lt[A355224(n), lt[2, A004086(n)]]` -/
def P3291732116830339314.Spec : Prop :=
  ∀ n, (P3291732116830339314.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P15534076854505515933

`lt[A004186(n)-(A157532(n+1)-1), n]`
-/

namespace A009996.P15534076854505515933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n - (A157532 (n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A009996.P15534076854505515933

namespace A009996

/-- `lt[A004186(n)-(A157532(n+1)-1), n]` -/
def P15534076854505515933.Spec : Prop :=
  ∀ n, (P15534076854505515933.a n : ℤ) = A009996 (n + 1)

end A009996

/-! ## A009996.P15394150664605422362

`record[n-A004186(A026741(n))]`
-/

namespace A009996.P15394150664605422362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004186 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009996.P15394150664605422362

namespace A009996

/-- `record[n-A004186(A026741(n))]` -/
def P15394150664605422362.Spec : Prop :=
  ∀ n, P15394150664605422362.a n = A009996 (n + 1)

end A009996

/-!
# A009997: Number of comparative probability orderings on all subsets of n elements that can arise by assigning a probability distribution to the individual elements.

The programs for A009997, there is no canonical definition to state claims against.
-/

/-! ## A009997.P13322588647150221310

`A361388(n)/A000165(n)`
-/

namespace A009997.P13322588647150221310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361388 n : ℚ) / (A000165 n : ℚ)

end

end A009997.P13322588647150221310

/-! ## A009997.P7993842751902010685

`ceil(∑[A241413(2^n)/10])`
-/

namespace A009997.P7993842751902010685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241413 (2 ^ n) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A009997.P7993842751902010685

/-!
# A009998: Triangle in which j-th entry in i-th row is (j+1)^(i-j).

The programs for A009998, the canonical program `A009998.P8900585392985839112` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009998 has offset 0).

The definition of A009998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009998.P8900585392985839112

`A004248(comp[∑[n]])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A009998

/-- `A004248(comp[∑[n]])` -/
def P8900585392985839112.Spec : Prop :=
  ∀ n, P8900585392985839112.a n = A009998 n

theorem P8900585392985839112.correct : P8900585392985839112.Spec := by
  intro n
  simp only [A009998]

end A009998

/-! ## A009998.P11906402120245386874

`A051129(A083920(n)+1)`
-/

namespace A009998.P11906402120245386874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A083920 n + 1).toNat

end

end A009998.P11906402120245386874

namespace A009998

/-- `A051129(A083920(n)+1)` -/
def P11906402120245386874.Spec : Prop :=
  ∀ n, P11906402120245386874.a n = A009998 n

end A009998

/-! ## A009998.P13724203454432545693

`A051129(A122797(n+1))`
-/

namespace A009998.P13724203454432545693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A122797 (n + 1)).toNat

end

end A009998.P13724203454432545693

namespace A009998

/-- `A051129(A122797(n+1))` -/
def P13724203454432545693.Spec : Prop :=
  ∀ n, P13724203454432545693.a n = A009998 n

end A009998

/-! ## A009998.P5395619209410410284

`A051129(1-A003056(n)+n)`
-/

namespace A009998.P5395619209410410284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (1 - A003056 n + (n : ℤ)).toNat

end

end A009998.P5395619209410410284

namespace A009998

/-- `A051129(1-A003056(n)+n)` -/
def P5395619209410410284.Spec : Prop :=
  ∀ n, P5395619209410410284.a n = A009998 n

end A009998

/-! ## A009998.P16990198391243605478

`A051129(1-(A003056(n)-n))`
-/

namespace A009998.P16990198391243605478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (1 - (A003056 n - (n : ℤ))).toNat

end

end A009998.P16990198391243605478

namespace A009998

/-- `A051129(1-(A003056(n)-n))` -/
def P16990198391243605478.Spec : Prop :=
  ∀ n, P16990198391243605478.a n = A009998 n

end A009998

/-! ## A009998.P2185720834372567516

`A002260(n+1)^A025581(n)`
-/

namespace A009998.P2185720834372567516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A025581 n : ℤ)

end

end A009998.P2185720834372567516

namespace A009998

/-- `A002260(n+1)^A025581(n)` -/
def P2185720834372567516.Spec : Prop :=
  ∀ n, P2185720834372567516.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P13789521236038796495

`A002262(n+1)^A025581(n)`
-/

namespace A009998.P13789521236038796495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (n + 1) : ℚ) ^ (A025581 n : ℤ)

end

end A009998.P13789521236038796495

namespace A009998

/-- `A002262(n+1)^A025581(n)` -/
def P13789521236038796495.Spec : Prop :=
  ∀ n, P13789521236038796495.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P10249465612334160668

`A051129(2-A002024(n+1)+n)`
-/

namespace A009998.P10249465612334160668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (2 - A002024 (n + 1) + (n : ℤ)).toNat

end

end A009998.P10249465612334160668

namespace A009998

/-- `A051129(2-A002024(n+1)+n)` -/
def P10249465612334160668.Spec : Prop :=
  ∀ n, P10249465612334160668.a n = A009998 n

end A009998

/-! ## A009998.P107351868247137870

`A051129(n+2-A123578(n+1))`
-/

namespace A009998.P107351868247137870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 ((n + 2 : ℤ) - A123578 (n + 1)).toNat

end

end A009998.P107351868247137870

namespace A009998

/-- `A051129(n+2-A123578(n+1))` -/
def P107351868247137870.Spec : Prop :=
  ∀ n, P107351868247137870.a n = A009998 n

end A009998

/-! ## A009998.P15277704250346666954

`A144328(n+2)^A004736(n+2)`
-/

namespace A009998.P15277704250346666954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 2) : ℚ) ^ (A004736 (n + 2) : ℤ)

end

end A009998.P15277704250346666954

namespace A009998

/-- `A144328(n+2)^A004736(n+2)` -/
def P15277704250346666954.Spec : Prop :=
  ∀ n, P15277704250346666954.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P9339455338536730117

`A002260(n+1)^(A004736(n+1)-1)`
-/

namespace A009998.P9339455338536730117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A009998.P9339455338536730117

namespace A009998

/-- `A002260(n+1)^(A004736(n+1)-1)` -/
def P9339455338536730117.Spec : Prop :=
  ∀ n, P9339455338536730117.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P14067788999766859593

`A002260(n+1)^(A000217(round(sqrt(2*n+1)))-(n+1))`
-/

namespace A009998.P14067788999766859593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ) : ℤ)

end

end A009998.P14067788999766859593

namespace A009998

/-- `A002260(n+1)^(A000217(round(sqrt(2*n+1)))-(n+1))` -/
def P14067788999766859593.Spec : Prop :=
  ∀ n, P14067788999766859593.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P14121013604243625516

`A026100(A026098(n+1))^A025581(n)`
-/

namespace A009998.P14121013604243625516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026100 (A026098 (n + 1)).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A009998.P14121013604243625516

namespace A009998

/-- `A026100(A026098(n+1))^A025581(n)` -/
def P14121013604243625516.Spec : Prop :=
  ∀ n, P14121013604243625516.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P7505210593186885423

`A002260(n+1)^(A000096(A003056(n))-n)`
-/

namespace A009998.P7505210593186885423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A000096 (A003056 n).toNat - (n : ℤ) : ℤ)

end

end A009998.P7505210593186885423

namespace A009998

/-- `A002260(n+1)^(A000096(A003056(n))-n)` -/
def P7505210593186885423.Spec : Prop :=
  ∀ n, P7505210593186885423.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P9799934726280355657

`A002260(n+1)^(A003056(n)-A002262(n))`
-/

namespace A009998.P9799934726280355657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A003056 n - A002262 n : ℤ)

end

end A009998.P9799934726280355657

namespace A009998

/-- `A002260(n+1)^(A003056(n)-A002262(n))` -/
def P9799934726280355657.Spec : Prop :=
  ∀ n, P9799934726280355657.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P17846342999011018869

`A026100(A026098(n+1))^(A004736(n+1)-1)`
-/

namespace A009998.P17846342999011018869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026100 (A026098 (n + 1)).toNat : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A009998.P17846342999011018869

namespace A009998

/-- `A026100(A026098(n+1))^(A004736(n+1)-1)` -/
def P17846342999011018869.Spec : Prop :=
  ∀ n, P17846342999011018869.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P3072758403447819602

`A026100(A026098(n+1))^(A057555(2*(n+1))-1)`
-/

namespace A009998.P3072758403447819602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026100 (A026098 (n + 1)).toNat : ℚ) ^ (A057555 (2 * (n + 1)) - 1 : ℤ)

end

end A009998.P3072758403447819602

namespace A009998

/-- `A026100(A026098(n+1))^(A057555(2*(n+1))-1)` -/
def P3072758403447819602.Spec : Prop :=
  ∀ n, P3072758403447819602.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P15277213621202451506

`A002260(n+1)^(A004736(n+2)%A004736(n+1))`
-/

namespace A009998.P15277213621202451506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (Int.tmod (A004736 (n + 2)) (A004736 (n + 1)) : ℤ)

end

end A009998.P15277213621202451506

namespace A009998

/-- `A002260(n+1)^(A004736(n+2)%A004736(n+1))` -/
def P15277213621202451506.Spec : Prop :=
  ∀ n, P15277213621202451506.a n = (A009998 n : ℚ)

end A009998

/-! ## A009998.P2252393532623112129

`A009999(A061579(n))`
-/

namespace A009998.P2252393532623112129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A061579 n).toNat

end

end A009998.P2252393532623112129

namespace A009998

/-- `A009999(A061579(n))` -/
def P2252393532623112129.Spec : Prop :=
  ∀ n, P2252393532623112129.a n = A009998 n

end A009998

/-! ## A009998.P1545318777304551142

`A009999(A114327(n)+n)`
-/

namespace A009998.P1545318777304551142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A114327 n + (n : ℤ)).toNat

end

end A009998.P1545318777304551142

namespace A009998

/-- `A009999(A114327(n)+n)` -/
def P1545318777304551142.Spec : Prop :=
  ∀ n, P1545318777304551142.a n = A009998 n

end A009998

/-!
# A009999: Triangle in which j-th entry in i-th row is (i+1-j)^j, 0<=j<=i.

The programs for A009999, the canonical program `A009999.P900677114271416084` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009999 has offset 0).

The definition of A009999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A009999.P900677114271416084

`A003992(comp[∑[n-1]])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A009999

/-- `A003992(comp[∑[n-1]])` -/
def P900677114271416084.Spec : Prop :=
  ∀ n, P900677114271416084.a n = A009999 n

theorem P900677114271416084.correct : P900677114271416084.Spec := by
  intro n
  simp only [A009999]

end A009999

/-! ## A009999.P9194919446479951650

`A193592(n)^A002262(n)`
-/

namespace A009999.P9194919446479951650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193592 n : ℚ) ^ (A002262 n : ℤ)

end

end A009999.P9194919446479951650

namespace A009999

/-- `A193592(n)^A002262(n)` -/
def P9194919446479951650.Spec : Prop :=
  ∀ n, P9194919446479951650.a n = (A009999 n : ℚ)

end A009999

/-! ## A009999.P14801835543217204724

`A004736(n+1)^A002262(n)`
-/

namespace A009999.P14801835543217204724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002262 n : ℤ)

end

end A009999.P14801835543217204724

namespace A009999

/-- `A004736(n+1)^A002262(n)` -/
def P14801835543217204724.Spec : Prop :=
  ∀ n, P14801835543217204724.a n = (A009999 n : ℚ)

end A009999

/-! ## A009999.P14505545307018017618

`(A025581(n)+1)^A002262(n)`
-/

namespace A009999.P14505545307018017618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1 : ℚ) ^ (A002262 n : ℤ)

end

end A009999.P14505545307018017618

namespace A009999

/-- `(A025581(n)+1)^A002262(n)` -/
def P14505545307018017618.Spec : Prop :=
  ∀ n, P14505545307018017618.a n = (A009999 n : ℚ)

end A009999

/-! ## A009999.P338407203211876922

`A004736(n+1)^(A002260(n+1)-1)`
-/

namespace A009999.P338407203211876922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A009999.P338407203211876922

namespace A009999

/-- `A004736(n+1)^(A002260(n+1)-1)` -/
def P338407203211876922.Spec : Prop :=
  ∀ n, P338407203211876922.a n = (A009999 n : ℚ)

end A009999

/-! ## A009999.P13527364243263439999

`floor(A025581(abs(1-n))^(A002260(n+1)-1))`
-/

namespace A009999.P13527364243263439999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025581 |1 - (n : ℤ)|.toNat : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)⌋

end

end A009999.P13527364243263439999

namespace A009999

/-- `floor(A025581(abs(1-n))^(A002260(n+1)-1))` -/
def P13527364243263439999.Spec : Prop :=
  ∀ n, P13527364243263439999.a n = A009999 n

end A009999

/-! ## A009999.P3095302119929028529

`A004736(n+1)^(A026100(A026098(n+1))-1)`
-/

namespace A009999.P3095302119929028529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ)

end

end A009999.P3095302119929028529

namespace A009999

/-- `A004736(n+1)^(A026100(A026098(n+1))-1)` -/
def P3095302119929028529.Spec : Prop :=
  ∀ n, P3095302119929028529.a n = (A009999 n : ℚ)

end A009999

/-! ## A009999.P17795409236725221771

`A051129(1-A056944(n)+n)`
-/

namespace A009999.P17795409236725221771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (1 - A056944 n + (n : ℤ)).toNat

end

end A009999.P17795409236725221771

namespace A009999

/-- `A051129(1-A056944(n)+n)` -/
def P17795409236725221771.Spec : Prop :=
  ∀ n, P17795409236725221771.a n = A009999 n

end A009999

/-! ## A009999.P4614346135952063817

`A009998(A061579(n))`
-/

namespace A009999.P4614346135952063817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A061579 n).toNat

end

end A009999.P4614346135952063817

namespace A009999

/-- `A009998(A061579(n))` -/
def P4614346135952063817.Spec : Prop :=
  ∀ n, P4614346135952063817.a n = A009999 n

end A009999

/-! ## A009999.P13102826524227482487

`A009998(A038722(n+1)-1)`
-/

namespace A009999.P13102826524227482487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A038722 (n + 1) - 1).toNat

end

end A009999.P13102826524227482487

namespace A009999

/-- `A009998(A038722(n+1)-1)` -/
def P13102826524227482487.Spec : Prop :=
  ∀ n, P13102826524227482487.a n = A009999 n

end A009999

/-! ## A009999.P15359033803192625334

`A004248(A099375(n)+1+n)`
-/

namespace A009999.P15359033803192625334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A099375 n + 1 + (n : ℤ)).toNat

end

end A009999.P15359033803192625334

namespace A009999

/-- `A004248(A099375(n)+1+n)` -/
def P15359033803192625334.Spec : Prop :=
  ∀ n, P15359033803192625334.a n = A009999 n

end A009999

/-! ## A009999.P8583182314155045925

`A004248(2*A004736(n+1)+n)`
-/

namespace A009999.P8583182314155045925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A009999.P8583182314155045925

namespace A009999

/-- `A004248(2*A004736(n+1)+n)` -/
def P8583182314155045925.Spec : Prop :=
  ∀ n, P8583182314155045925.a n = A009999 n

end A009999

/-! ## A009999.P1625799590343335951

`A009998(A185869(n+1)-(A016777(n)+1))`
-/

namespace A009999.P1625799590343335951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A185869 (n + 1) - (A016777 n + 1)).toNat

end

end A009999.P1625799590343335951

namespace A009999

/-- `A009998(A185869(n+1)-(A016777(n)+1))` -/
def P1625799590343335951.Spec : Prop :=
  ∀ n, P1625799590343335951.a n = A009999 n

end A009999

/-! ## A009999.P14481892660826100896

`A009998(A014132(n+1)-2*A002260(n+1))`
-/

namespace A009999.P14481892660826100896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A014132 (n + 1) - 2 * A002260 (n + 1)).toNat

end

end A009999.P14481892660826100896

namespace A009999

/-- `A009998(A014132(n+1)-2*A002260(n+1))` -/
def P14481892660826100896.Spec : Prop :=
  ∀ n, P14481892660826100896.a n = A009999 n

end A009999

/-! ## A009999.P1045489637133949957

`A004248(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A009999.P1045489637133949957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A009999.P1045489637133949957

namespace A009999

/-- `A004248(A004736(n+1)+A004736(n+1)+n)` -/
def P1045489637133949957.Spec : Prop :=
  ∀ n, P1045489637133949957.a n = A009999 n

end A009999

/-! ## A009999.P10036437715937009990

`A004248(A007401(n+1)+A038722(n+1)-n)`
-/

namespace A009999.P10036437715937009990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A007401 (n + 1) + (A038722 (n + 1) - (n : ℤ))).toNat

end

end A009999.P10036437715937009990

namespace A009999

/-- `A004248(A007401(n+1)+A038722(n+1)-n)` -/
def P10036437715937009990.Spec : Prop :=
  ∀ n, P10036437715937009990.a n = A009999 n

end A009999

/-! ## A009999.P5192584815941976573

`A009998(A014132(n+1)-A002260(n+1)-A002260(n+1))`
-/

namespace A009999.P5192584815941976573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A014132 (n + 1) - A002260 (n + 1) - A002260 (n + 1)).toNat

end

end A009999.P5192584815941976573

namespace A009999

/-- `A009998(A014132(n+1)-A002260(n+1)-A002260(n+1))` -/
def P5192584815941976573.Spec : Prop :=
  ∀ n, P5192584815941976573.a n = A009999 n

end A009999

/-! ## A009999.P7035731887429898408

`A009998(A038722(n+2))`
-/

namespace A009999.P7035731887429898408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A038722 (n + 2)).toNat

end

end A009999.P7035731887429898408

namespace A009999

/-- `A009998(A038722(n+2))` -/
def P7035731887429898408.Spec : Prop :=
  ∀ n, P7035731887429898408.a n = A009999 n

end A009999

/-! ## A009999.P13371521763757352239

`A051128(n+1)/A004736(n+1)`
-/

namespace A009999.P13371521763757352239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A009999.P13371521763757352239

namespace A009999

/-- `A051128(n+1)/A004736(n+1)` -/
def P13371521763757352239.Spec : Prop :=
  ∀ n, P13371521763757352239.a n = (A009999 n : ℚ)

end A009999

/-! ## A009999.P5299477234395953595

`A051128(n+1)/(A025581(n)+1)`
-/

namespace A009999.P5299477234395953595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)

end

end A009999.P5299477234395953595

namespace A009999

/-- `A051128(n+1)/(A025581(n)+1)` -/
def P5299477234395953595.Spec : Prop :=
  ∀ n, P5299477234395953595.a n = (A009999 n : ℚ)

end A009999

