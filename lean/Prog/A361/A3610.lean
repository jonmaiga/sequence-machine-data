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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A361000: Number of tilings of an n X 3 rectangle by integer-sided rectangular pieces that cannot be rearranged to produce a different tiling of the rectangle (including rotations and reflections of the original tiling).

The programs for A361000, the canonical program `A361000.P4616030779628208533` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361000 has offset 1).

The definition of A361000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361000.P4616030779628208533

`∏{e}[abs(2-n)+3, #+1]+∑{d}[n+1, C(3%#, 3)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361000

/-- `∏{e}[abs(2-n)+3, #+1]+∑{d}[n+1, C(3%#, 3)]` -/
def P4616030779628208533.Spec : Prop :=
  ∀ n, (P4616030779628208533.a n : ℤ) = A361000 (n + 1)

theorem P4616030779628208533.correct : P4616030779628208533.Spec := by
  intro n
  simp only [A361000, Nat.add_sub_cancel]

end A361000

/-! ## A361000.P5847129554102938660

`A321014(n+1)+A096737(n+1)`
-/

namespace A361000.P5847129554102938660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (n + 1) + A096737 (n + 1)

end

end A361000.P5847129554102938660

namespace A361000

/-- `A321014(n+1)+A096737(n+1)` -/
def P5847129554102938660.Spec : Prop :=
  ∀ n, P5847129554102938660.a n = A361000 (n + 1)

end A361000

/-! ## A361000.P8839375029537699295

`A096737(n+1)+∏{e}[n+1, #+1]-(A171182(n+1)+1)`
-/

namespace A361000.P8839375029537699295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - (A171182 (n + 1) + 1))

end

end A361000.P8839375029537699295

namespace A361000

/-- `A096737(n+1)+∏{e}[n+1, #+1]-(A171182(n+1)+1)` -/
def P8839375029537699295.Spec : Prop :=
  ∀ n, P8839375029537699295.a n = A361000 (n + 1)

end A361000

/-! ## A361000.P4814327863094519111

`A096737(n+1)+A066660(n+1)-A356122(n+1)`
-/

namespace A361000.P4814327863094519111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1) + (A066660 (n + 1) - A356122 (n + 1))

end

end A361000.P4814327863094519111

namespace A361000

/-- `A096737(n+1)+A066660(n+1)-A356122(n+1)` -/
def P4814327863094519111.Spec : Prop :=
  ∀ n, P4814327863094519111.a n = A361000 (n + 1)

end A361000

/-! ## A361000.P4945026344639235423

`A096737(n+1)+A076984(2*(n+1))-A356122(n+1)`
-/

namespace A361000.P4945026344639235423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1) + (A076984 (2 * (n + 1)) - A356122 (n + 1))

end

end A361000.P4945026344639235423

namespace A361000

/-- `A096737(n+1)+A076984(2*(n+1))-A356122(n+1)` -/
def P4945026344639235423.Spec : Prop :=
  ∀ n, P4945026344639235423.a n = A361000 (n + 1)

end A361000

/-!
# A361003: a(n) = A000005(n) + floor((n-1)/2).

The programs for A361003, the canonical program `A361003.P10390835011189963896` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361003 has offset 1).

The definition of A361003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361003.P10390835011189963896

`floor(∏{e}[n+1, #+1]+n/2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361003

/-- `floor(∏{e}[n+1, #+1]+n/2)` -/
def P10390835011189963896.Spec : Prop :=
  ∀ n, P10390835011189963896.a n = A361003 (n + 1)

theorem P10390835011189963896.correct : P10390835011189963896.Spec := by
  intro n
  simp only [A361003, Nat.add_sub_cancel]

end A361003

/-! ## A361003.P10587043063737433381

`∑{d}[n+1, ceil(#/(n+3-#))]`
-/

namespace A361003.P10587043063737433381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(d : ℚ) / ((n + 3 : ℤ) - (d : ℤ) : ℚ)⌉

end

end A361003.P10587043063737433381

namespace A361003

/-- `∑{d}[n+1, ceil(#/(n+3-#))]` -/
def P10587043063737433381.Spec : Prop :=
  ∀ n, P10587043063737433381.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P18197092971713178430

`floor(∑{d}[n+1, gcd(n, #)]+n/2)`
-/

namespace A361003.P18197092971713178430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) + (n : ℚ) / 2⌋

end

end A361003.P18197092971713178430

namespace A361003

/-- `floor(∑{d}[n+1, gcd(n, #)]+n/2)` -/
def P18197092971713178430.Spec : Prop :=
  ∀ n, P18197092971713178430.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P17954442368686326098

`floor(∑{d}[n+1, ceil(acot(#))]+n/2)`
-/

namespace A361003.P17954442368686326098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ : ℤ) : ℚ) + (n : ℚ) / 2⌋

end

end A361003.P17954442368686326098

namespace A361003

/-- `floor(∑{d}[n+1, ceil(acot(#))]+n/2)` -/
def P17954442368686326098.Spec : Prop :=
  ∀ n, P17954442368686326098.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P2073349825514861678

`floor(∑{d}[n+1, ceil(1/#)]+n/2)`
-/

namespace A361003.P2073349825514861678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ : ℤ) : ℚ) + (n : ℚ) / 2⌋

end

end A361003.P2073349825514861678

namespace A361003

/-- `floor(∑{d}[n+1, ceil(1/#)]+n/2)` -/
def P2073349825514861678.Spec : Prop :=
  ∀ n, P2073349825514861678.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P15495541633043757245

`∏{e}[n+1, #+1]-ceil(n/2)+n`
-/

namespace A361003.P15495541633043757245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ⌈(n : ℚ) / 2⌉ + (n : ℤ)

end

end A361003.P15495541633043757245

namespace A361003

/-- `∏{e}[n+1, #+1]-ceil(n/2)+n` -/
def P15495541633043757245.Spec : Prop :=
  ∀ n, P15495541633043757245.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P9433178021690256782

`floor(2^∑{e}[n+1, log2(#+1)]+n/2)`
-/

namespace A361003.P9433178021690256782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)) + ((n : ℚ) / 2 : ℝ)⌋

end

end A361003.P9433178021690256782

namespace A361003

/-- `floor(2^∑{e}[n+1, log2(#+1)]+n/2)` -/
def P9433178021690256782.Spec : Prop :=
  ∀ n, P9433178021690256782.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P6015004932497821359

`floor(n/2+∑{d}[n+1, C(2, #)!]-1)`
-/

namespace A361003.P6015004932497821359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 + (((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1 : ℚ)⌋

end

end A361003.P6015004932497821359

namespace A361003

/-- `floor(n/2+∑{d}[n+1, C(2, #)!]-1)` -/
def P6015004932497821359.Spec : Prop :=
  ∀ n, P6015004932497821359.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P2499161871869832028

`A088922(n+1)+1`
-/

namespace A361003.P2499161871869832028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) + 1

end

end A361003.P2499161871869832028

namespace A361003

/-- `A088922(n+1)+1` -/
def P2499161871869832028.Spec : Prop :=
  ∀ n, P2499161871869832028.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P16265884026100717941

`1-A003165(n+1)+n`
-/

namespace A361003.P16265884026100717941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003165 (n + 1) + (n : ℤ)

end

end A361003.P16265884026100717941

namespace A361003

/-- `1-A003165(n+1)+n` -/
def P16265884026100717941.Spec : Prop :=
  ∀ n, P16265884026100717941.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P18207780821788746173

`(A086369(n+1)+n+1)/2`
-/

namespace A361003.P18207780821788746173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086369 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A361003.P18207780821788746173

namespace A361003

/-- `(A086369(n+1)+n+1)/2` -/
def P18207780821788746173.Spec : Prop :=
  ∀ n, P18207780821788746173.a n = (A361003 (n + 1) : ℚ)

end A361003

/-! ## A361003.P15832855803326547101

`A004526(n)+Δ[A006218(n)]`
-/

namespace A361003.P15832855803326547101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (f1 (n + 1) - f1 n)

end

end A361003.P15832855803326547101

namespace A361003

/-- `A004526(n)+Δ[A006218(n)]` -/
def P15832855803326547101.Spec : Prop :=
  ∀ n, P15832855803326547101.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P13290708266259966029

`A004526(n)+Δ[A054519(n)]`
-/

namespace A361003.P13290708266259966029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (f1 (n + 1) - f1 n)

end

end A361003.P13290708266259966029

namespace A361003

/-- `A004526(n)+Δ[A054519(n)]` -/
def P13290708266259966029.Spec : Prop :=
  ∀ n, P13290708266259966029.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P8149305422144999611

`A004526(n)+A000005(n+1)`
-/

namespace A361003.P8149305422144999611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A000005 (n + 1)

end

end A361003.P8149305422144999611

namespace A361003

/-- `A004526(n)+A000005(n+1)` -/
def P8149305422144999611.Spec : Prop :=
  ∀ n, P8149305422144999611.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P13349861940108625417

`A032741(n+1)+A008619(n)`
-/

namespace A361003.P13349861940108625417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + A008619 n

end

end A361003.P13349861940108625417

namespace A361003

/-- `A032741(n+1)+A008619(n)` -/
def P13349861940108625417.Spec : Prop :=
  ∀ n, P13349861940108625417.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P16809469713715541885

`A080513(n)+A023645(n+1)`
-/

namespace A361003.P16809469713715541885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A023645 (n + 1)

end

end A361003.P16809469713715541885

namespace A361003

/-- `A080513(n)+A023645(n+1)` -/
def P16809469713715541885.Spec : Prop :=
  ∀ n, P16809469713715541885.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P272185033580453976

`A110654(n)+A076984(n+1)`
-/

namespace A361003.P272185033580453976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A076984 (n + 1)

end

end A361003.P272185033580453976

namespace A361003

/-- `A110654(n)+A076984(n+1)` -/
def P272185033580453976.Spec : Prop :=
  ∀ n, P272185033580453976.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P6315690657842356244

`A266977(n)+A070824(n+1)`
-/

namespace A361003.P6315690657842356244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A070824 (n + 1)

end

end A361003.P6315690657842356244

namespace A361003

/-- `A266977(n)+A070824(n+1)` -/
def P6315690657842356244.Spec : Prop :=
  ∀ n, P6315690657842356244.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P14867548812443183884

`A062249(n+1)-A080513(n)`
-/

namespace A361003.P14867548812443183884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A080513 n

end

end A361003.P14867548812443183884

namespace A361003

/-- `A062249(n+1)-A080513(n)` -/
def P14867548812443183884.Spec : Prop :=
  ∀ n, P14867548812443183884.a n = A361003 (n + 1)

end A361003

/-! ## A361003.P12792493866524506410

`A158907(n+1)-A110654(n)`
-/

namespace A361003.P12792493866524506410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) - A110654 n

end

end A361003.P12792493866524506410

namespace A361003

/-- `A158907(n+1)-A110654(n)` -/
def P12792493866524506410.Spec : Prop :=
  ∀ n, P12792493866524506410.a n = A361003 (n + 1)

end A361003

/-!
# A361005: Number of tilings of an n X 3 rectangle by integer-sided rectangular pieces that cannot be rearranged to produce a different tiling of the rectangle (except rotations and reflections of the original tiling).

The programs for A361005, there is no canonical definition to state claims against.
-/

/-! ## A361005.P17143950369112685591

`A275972(3*n+4)+A038567(A161307(n+1))`
-/

namespace A361005.P17143950369112685591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275972 (3 * n + 4) + A038567 (A161307 (n + 1)).toNat

end

end A361005.P17143950369112685591

/-! ## A361005.P11256163763133814851

`A275972(3*n+4)+A232746(A000203(n+1))`
-/

namespace A361005.P11256163763133814851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275972 (3 * n + 4) + A232746 (A000203 (n + 1)).toNat

end

end A361005.P11256163763133814851

/-!
# A361007: a(n) = numerator of (zeta(2*n,1/4) + zeta(2*n,3/4))/Pi^(2*n) where zeta is the Hurwitz zeta function.

The programs for A361007, there is no canonical definition to state claims against.
-/

/-! ## A361007.P2883181813092958558

`A046982(comp[2*(n+1)])%A000110(3*n)`
-/

namespace A361007.P2883181813092958558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A000110 (3 * n))

end

end A361007.P2883181813092958558

/-! ## A361007.P9769582315689325272

`∪[A046982(2*n+1), A105570(A046982(2*n+1))]`
-/

namespace A361007.P9769582315689325272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046982 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A046982 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361007.P9769582315689325272

/-!
# A361009: Positive integers k such that 2*k cannot be expressed p^2-q where p and q are primes.

The programs for A361009, there is no canonical definition to state claims against.
-/

/-! ## A361009.P7320912933839692927

`eq[0, A109619(n+1)]+1`
-/

namespace A361009.P7320912933839692927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361009.P7320912933839692927

/-! ## A361009.P7173216760655740025

`eq[0, A109619(A028310(n))]`
-/

namespace A361009.P7173216760655740025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109619 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361009.P7173216760655740025

/-! ## A361009.P18436436153214610184

`lt[A109619(n+1), A048669(n+1)]+1`
-/

namespace A361009.P18436436153214610184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A361009.P18436436153214610184

/-! ## A361009.P13893235718487627328

`eq[A014963(A102426(2*(n+2))), A340407(n+1)]`
-/

namespace A361009.P13893235718487627328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102426 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361009.P13893235718487627328

/-! ## A361009.P16676980944585425897

`lt[A217062(A080427(2*n+1)), A007947(2*n+3)]`
-/

namespace A361009.P16676980944585425897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217062 (A080427 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361009.P16676980944585425897

/-!
# A361012: Multiplicative with a(p^e) = sigma(e), where sigma = A000203.

The programs for A361012, the canonical program `A361012.P4834344683092660490` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361012 has offset 1).

The definition of A361012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361012.P4049163942191652722

`∏{e}[n+1, A000203(#)]`
-/

namespace A361012.P4049163942191652722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000203 (Nat.factorization (f1 n) p)

end

end A361012.P4049163942191652722

namespace A361012

/-- `∏{e}[n+1, A000203(#)]` -/
def P4049163942191652722.Spec : Prop :=
  ∀ n, P4049163942191652722.a n = A361012 (n + 1)

end A361012

/-! ## A361012.P10458333107811507379

`∏{e}[n+1, A074847(#)]`
-/

namespace A361012.P10458333107811507379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A074847 (Nat.factorization (f1 n) p)

end

end A361012.P10458333107811507379

namespace A361012

/-- `∏{e}[n+1, A074847(#)]` -/
def P10458333107811507379.Spec : Prop :=
  ∀ n, P10458333107811507379.a n = A361012 (n + 1)

end A361012

/-! ## A361012.P4834344683092660490

`∏{e}[n+1, A097012(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A361012

/-- `∏{e}[n+1, A097012(#)]` -/
def P4834344683092660490.Spec : Prop :=
  ∀ n, P4834344683092660490.a n = A361012 (n + 1)

theorem P4834344683092660490.correct : P4834344683092660490.Spec := by
  intro n
  simp only [A361012, Nat.add_sub_cancel]

end A361012

/-! ## A361012.P1277157837762482960

`∏{e}[n+1, A324545(#)]`
-/

namespace A361012.P1277157837762482960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A324545 (Nat.factorization (f1 n) p)

end

end A361012.P1277157837762482960

namespace A361012

/-- `∏{e}[n+1, A324545(#)]` -/
def P1277157837762482960.Spec : Prop :=
  ∀ n, P1277157837762482960.a n = A361012 (n + 1)

end A361012

/-! ## A361012.P15456934587096174321

`∏{e}[n+1, A064987(#)/#]`
-/

namespace A361012.P15456934587096174321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A064987 (Nat.factorization (f1 n) p) : ℚ) / (Nat.factorization (f1 n) p : ℚ)

end

end A361012.P15456934587096174321

namespace A361012

/-- `∏{e}[n+1, A064987(#)/#]` -/
def P15456934587096174321.Spec : Prop :=
  ∀ n, P15456934587096174321.a n = (A361012 (n + 1) : ℚ)

end A361012

/-! ## A361012.P11119681309479979400

`∏{p}[n+1, A000203(val(n+1, #))]`
-/

namespace A361012.P11119681309479979400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000203 (SequenceMachineLib.valuation (n + 1) p)

end

end A361012.P11119681309479979400

namespace A361012

/-- `∏{p}[n+1, A000203(val(n+1, #))]` -/
def P11119681309479979400.Spec : Prop :=
  ∀ n, P11119681309479979400.a n = A361012 (n + 1)

end A361012

/-! ## A361012.P1197901576915601241

`A033677(∏{e}[n+1, A072861(#)])`
-/

namespace A361012.P1197901576915601241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∏ p ∈ Nat.primeFactors (f1 n), A072861 (Nat.factorization (f1 n) p)).toNat

end

end A361012.P1197901576915601241

namespace A361012

/-- `A033677(∏{e}[n+1, A072861(#)])` -/
def P1197901576915601241.Spec : Prop :=
  ∀ n, P1197901576915601241.a n = A361012 (n + 1)

end A361012

/-!
# A361015: Number of arithmetic progressions of 3 or more integers whose product is equal to n.

The programs for A361015, there is no canonical definition to state claims against.
-/

/-! ## A361015.P6686029021697363666

`A146208(n+2)-A062011(n+2)`
-/

namespace A361015.P6686029021697363666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146208 (n + 2) - A062011 (n + 2)

end

end A361015.P6686029021697363666

/-! ## A361015.P2512071099703752176

`A146208(n+2)-A131089(n+2)`
-/

namespace A361015.P2512071099703752176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146208 (n + 2) - A131089 (n + 2)

end

end A361015.P2512071099703752176

/-! ## A361015.P14453982533057056726

`A146208(n+2)+A183063(n+2)-A060710(n+2)`
-/

namespace A361015.P14453982533057056726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146208 (n + 2) + (A183063 (n + 2) - A060710 (n + 2))

end

end A361015.P14453982533057056726

/-! ## A361015.P1808060636758721940

`A146208(n+2)-A000005(n+2)-A000005(n+2)`
-/

namespace A361015.P1808060636758721940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146208 (n + 2) - A000005 (n + 2) - A000005 (n + 2)

end

end A361015.P1808060636758721940

/-! ## A361015.P216494766843828333

`A035199(A217464(n+1)+A188726(2*n+1))`
-/

namespace A361015.P216494766843828333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035199 (A217464 (n + 1) + A188726 (2 * n + 1)).toNat

end

end A361015.P216494766843828333

/-!
# A361016: a(n) = 1 if A004718(n) = 0, otherwise 0, where A004718 is the Danish composer Per Nørgård's "infinity sequence".

The programs for A361016, the canonical program `A361016.P2947014953054835529` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361016 has offset 0).

The definition of A361016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361016.P9308564818372813505

`char[A083866(n)]`
-/

namespace A361016.P9308564818372813505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083866 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361016.P9308564818372813505

namespace A361016

/-- `char[A083866(n)]` -/
def P9308564818372813505.Spec : Prop :=
  ∀ n, (P9308564818372813505.a n : ℤ) = A361016 n

end A361016

/-! ## A361016.P14624653365456224494

`floor(1/A323907(n))`
-/

namespace A361016.P14624653365456224494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A323907 n : ℚ)⌋

end

end A361016.P14624653365456224494

namespace A361016

/-- `floor(1/A323907(n))` -/
def P14624653365456224494.Spec : Prop :=
  ∀ n, P14624653365456224494.a n = A361016 n

end A361016

/-! ## A361016.P6628928972802735833

`char[eq[0, A004718(n)]]`
-/

namespace A361016.P6628928972802735833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A361016.P6628928972802735833

namespace A361016

/-- `char[eq[0, A004718(n)]]` -/
def P6628928972802735833.Spec : Prop :=
  ∀ n, (P6628928972802735833.a n : ℤ) = A361016 n

end A361016

/-! ## A361016.P8697594461448780335

`char[lt[A323909(n), 1]]`
-/

namespace A361016.P8697594461448780335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323909 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A361016.P8697594461448780335

namespace A361016

/-- `char[lt[A323909(n), 1]]` -/
def P8697594461448780335.Spec : Prop :=
  ∀ n, (P8697594461448780335.a n : ℤ) = A361016 n

end A361016

/-! ## A361016.P2947014953054835529

`A000007(A323908(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A361016

/-- `A000007(A323908(n))` -/
def P2947014953054835529.Spec : Prop :=
  ∀ n, P2947014953054835529.a n = A361016 n

theorem P2947014953054835529.correct : P2947014953054835529.Spec := by
  intro n
  simp only [A361016]

end A361016

/-! ## A361016.P15784319554988079050

`A000007(A323909(n))`
-/

namespace A361016.P15784319554988079050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A323909 n).toNat

end

end A361016.P15784319554988079050

namespace A361016

/-- `A000007(A323909(n))` -/
def P15784319554988079050.Spec : Prop :=
  ∀ n, P15784319554988079050.a n = A361016 n

end A361016

/-! ## A361016.P10159559252834723350

`A000007(A004718(n)²)`
-/

namespace A361016.P10159559252834723350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004718 n ^ 2).toNat

end

end A361016.P10159559252834723350

namespace A361016

/-- `A000007(A004718(n)²)` -/
def P10159559252834723350.Spec : Prop :=
  ∀ n, P10159559252834723350.a n = A361016 n

end A361016

/-! ## A361016.P10914544338949838

`A036987(A004718(n)²+1)`
-/

namespace A361016.P10914544338949838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A004718 n ^ 2 + 1).toNat

end

end A361016.P10914544338949838

namespace A361016

/-- `A036987(A004718(n)²+1)` -/
def P10914544338949838.Spec : Prop :=
  ∀ n, P10914544338949838.a n = A361016 n

end A361016

/-! ## A361016.P14254053381440045794

`A135416(A004718(n)²+1)`
-/

namespace A361016.P14254053381440045794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A004718 n ^ 2 + 1).toNat

end

end A361016.P14254053381440045794

namespace A361016

/-- `A135416(A004718(n)²+1)` -/
def P14254053381440045794.Spec : Prop :=
  ∀ n, P14254053381440045794.a n = A361016 n

end A361016

/-! ## A361016.P3542383483406229260

`A036987((2*A004718(n))²)`
-/

namespace A361016.P3542383483406229260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 ((2 * A004718 n) ^ 2).toNat

end

end A361016.P3542383483406229260

namespace A361016

/-- `A036987((2*A004718(n))²)` -/
def P3542383483406229260.Spec : Prop :=
  ∀ n, P3542383483406229260.a n = A361016 n

end A361016

/-! ## A361016.P6697668930588914038

`A329893(A083866(A004718(n)²))`
-/

namespace A361016.P6697668930588914038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 (A083866 (A004718 n ^ 2).toNat).toNat

end

end A361016.P6697668930588914038

namespace A361016

/-- `A329893(A083866(A004718(n)²))` -/
def P6697668930588914038.Spec : Prop :=
  ∀ n, P6697668930588914038.a n = A361016 n

end A361016

/-! ## A361016.P10505022499937336834

`A293233(A284005(A323909(n))²)`
-/

namespace A361016.P10505022499937336834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293233 (A284005 (A323909 n).toNat ^ 2).toNat

end

end A361016.P10505022499937336834

namespace A361016

/-- `A293233(A284005(A323909(n))²)` -/
def P10505022499937336834.Spec : Prop :=
  ∀ n, P10505022499937336834.a n = A361016 n

end A361016

/-! ## A361016.P16666684454608582597

`A329893(A323908(n)+A004718(n))`
-/

namespace A361016.P16666684454608582597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329893 (A323908 n + A004718 n).toNat

end

end A361016.P16666684454608582597

namespace A361016

/-- `A329893(A323908(n)+A004718(n))` -/
def P16666684454608582597.Spec : Prop :=
  ∀ n, P16666684454608582597.a n = A361016 n

end A361016

/-! ## A361016.P7163660221979712837

`A130123(A004718(n)²²)`
-/

namespace A361016.P7163660221979712837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 ((A004718 n ^ 2) ^ 2).toNat

end

end A361016.P7163660221979712837

namespace A361016

/-- `A130123(A004718(n)²²)` -/
def P7163660221979712837.Spec : Prop :=
  ∀ n, P7163660221979712837.a n = A361016 n

end A361016

/-! ## A361016.P1574869674408964980

`A353370(A005940(n+1))`
-/

namespace A361016.P1574869674408964980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 (A005940 (n + 1)).toNat

end

end A361016.P1574869674408964980

namespace A361016

/-- `A353370(A005940(n+1))` -/
def P1574869674408964980.Spec : Prop :=
  ∀ n, P1574869674408964980.a n = A361016 n

end A361016

/-! ## A361016.P3016526452332003247

`A097331(A284005(A004718(n)²))`
-/

namespace A361016.P3016526452332003247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A284005 (A004718 n ^ 2).toNat).toNat

end

end A361016.P3016526452332003247

namespace A361016

/-- `A097331(A284005(A004718(n)²))` -/
def P3016526452332003247.Spec : Prop :=
  ∀ n, P3016526452332003247.a n = A361016 n

end A361016

/-!
# A361017: Dirichlet inverse of Thue-Morse sequence, A010060.

The programs for A361017, there is no canonical definition to state claims against.
-/

/-! ## A361017.P68959108466147752

`A359773(A005940(n+1))%A276817(2*(n+1))`
-/

namespace A361017.P68959108466147752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359773 (A005940 (n + 1)).toNat) (A276817 (2 * (n + 1)))

end

end A361017.P68959108466147752

/-! ## A361017.P102506102330912870

`A016411(A170854(n))`
-/

namespace A361017.P102506102330912870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016411 (A170854 n).toNat

end

end A361017.P102506102330912870

/-! ## A361017.P3291196611698182396

`A008683(A361018(n+1)+A170854(n)²)`
-/

namespace A361017.P3291196611698182396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A361018 (n + 1) + A170854 n ^ 2).toNat

end

end A361017.P3291196611698182396

/-! ## A361017.P167195525688274433

`A359773(A005940(n+1)%A110624(n+1))`
-/

namespace A361017.P167195525688274433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (Int.tmod (A005940 (n + 1)) (A110624 (n + 1))).toNat

end

end A361017.P167195525688274433

/-! ## A361017.P563963346779249674

`A359773(A005940(n+1))^A239721(2*n+5)`
-/

namespace A361017.P563963346779249674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359773 (A005940 (n + 1)).toNat : ℚ) ^ (A239721 (2 * n + 5) : ℤ)

end

end A361017.P563963346779249674

/-!
# A361018: Parity of A361017, where A361017 is the Dirichlet inverse of Thue-Morse sequence, A010060.

The programs for A361018, there is no canonical definition to state claims against.
-/

/-! ## A361018.P8543402057882857447

`and(1, A323886(n+1))`
-/

namespace A361018.P8543402057882857447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A323886 (n + 1))

end

end A361018.P8543402057882857447

/-! ## A361018.P148047458245347896

`and(1, A346237(n+1))`
-/

namespace A361018.P148047458245347896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A346237 (n + 1))

end

end A361018.P148047458245347896

/-! ## A361018.P17630912630529092274

`and(1, A378990(n+1))`
-/

namespace A361018.P17630912630529092274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A378990 (n + 1))

end

end A361018.P17630912630529092274

/-! ## A361018.P8691828342050035910

`A000035(A361017(n+1)²)`
-/

namespace A361018.P8691828342050035910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A361017 (n + 1) ^ 2).toNat

end

end A361018.P8691828342050035910

/-! ## A361018.P9574101261090366171

`A007877(A361017(n+1)²)`
-/

namespace A361018.P9574101261090366171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A361017 (n + 1) ^ 2).toNat

end

end A361018.P9574101261090366171

/-! ## A361018.P17380114602290442436

`and(A001492(n), A361017(n+1))`
-/

namespace A361018.P17380114602290442436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001492 n) (A361017 (n + 1))

end

end A361018.P17380114602290442436

/-! ## A361018.P5019274021993299284

`and(A093148(n), A361017(n+1))`
-/

namespace A361018.P5019274021993299284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093148 n) (A361017 (n + 1))

end

end A361018.P5019274021993299284

/-! ## A361018.P8431291203873861596

`and(1, A007879(n)*A361017(n+1))`
-/

namespace A361018.P8431291203873861596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007879 n * A361017 (n + 1))

end

end A361018.P8431291203873861596

/-! ## A361018.P12039748385814041998

`A000035(A323886(n+1)+2*n)`
-/

namespace A361018.P12039748385814041998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A323886 (n + 1) + (2 * n : ℤ)).toNat

end

end A361018.P12039748385814041998

/-! ## A361018.P10790716291136746707

`A000035(A248056(n+1)-A323886(n+1))`
-/

namespace A361018.P10790716291136746707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A248056 (n + 1) - A323886 (n + 1)).toNat

end

end A361018.P10790716291136746707

/-! ## A361018.P6743272229264591573

`A000035(A323886(n+1)²)`
-/

namespace A361018.P6743272229264591573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A323886 (n + 1) ^ 2).toNat

end

end A361018.P6743272229264591573

/-! ## A361018.P9733798390809471972

`A007877(A323886(n+1)²)`
-/

namespace A361018.P9733798390809471972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A323886 (n + 1) ^ 2).toNat

end

end A361018.P9733798390809471972

/-! ## A361018.P17301020872243302462

`A010060(A160017(A323886(n+1)²))`
-/

namespace A361018.P17301020872243302462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A160017 (A323886 (n + 1) ^ 2).toNat).toNat

end

end A361018.P17301020872243302462

/-! ## A361018.P14587573964387915941

`and(A262940(n), A361017(n+1))`
-/

namespace A361018.P14587573964387915941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262940 n) (A361017 (n + 1))

end

end A361018.P14587573964387915941

/-!
# A361019: Dirichlet inverse of A038712.

The programs for A361019, the canonical program `A361019.P15075616182394612609` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361019 has offset 1).

The definition of A361019 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, A086831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361019.P15075616182394612609

`2*A008683(n+1)-A086831(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A361019

/-- `2*A008683(n+1)-A086831(n+1)` -/
def P15075616182394612609.Spec : Prop :=
  ∀ n, P15075616182394612609.a n = A361019 (n + 1)

theorem P15075616182394612609.correct : P15075616182394612609.Spec := by
  intro n
  simp only [A361019, Nat.add_sub_cancel]

end A361019

/-! ## A361019.P9991078837392471392

`3*A008683(n+1)-2*A359591(n+1)`
-/

namespace A361019.P9991078837392471392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008683 (n + 1) - 2 * A359591 (n + 1)

end

end A361019.P9991078837392471392

namespace A361019

/-- `3*A008683(n+1)-2*A359591(n+1)` -/
def P9991078837392471392.Spec : Prop :=
  ∀ n, P9991078837392471392.a n = A361019 (n + 1)

end A361019

/-! ## A361019.P13469406643878373956

`A359484(n+1)/ceil(lcm(4, n+1)/4)`
-/

namespace A361019.P13469406643878373956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (⌈(Nat.lcm 4 (n + 1) : ℚ) / 4⌉ : ℚ)

end

end A361019.P13469406643878373956

namespace A361019

/-- `A359484(n+1)/ceil(lcm(4, n+1)/4)` -/
def P13469406643878373956.Spec : Prop :=
  ∀ n, P13469406643878373956.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P5361456664020838890

`A359484(n+1)/A000265(n+1)`
-/

namespace A361019.P5361456664020838890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A361019.P5361456664020838890

namespace A361019

/-- `A359484(n+1)/A000265(n+1)` -/
def P5361456664020838890.Spec : Prop :=
  ∀ n, P5361456664020838890.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P9232598283166259472

`A359484(n+1)/A060819(n+1)`
-/

namespace A361019.P9232598283166259472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (A060819 (n + 1) : ℚ)

end

end A361019.P9232598283166259472

namespace A361019

/-- `A359484(n+1)/A060819(n+1)` -/
def P9232598283166259472.Spec : Prop :=
  ∀ n, P9232598283166259472.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P8714175985820483678

`A359484(n+1)/A204455(n+1)`
-/

namespace A361019.P8714175985820483678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (A204455 (n + 1) : ℚ)

end

end A361019.P8714175985820483678

namespace A361019

/-- `A359484(n+1)/A204455(n+1)` -/
def P8714175985820483678.Spec : Prop :=
  ∀ n, P8714175985820483678.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P16184522138749249785

`A359484(n+1)/A318653(n+1)`
-/

namespace A361019.P16184522138749249785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (A318653 (n + 1) : ℚ)

end

end A361019.P16184522138749249785

namespace A361019

/-- `A359484(n+1)/A318653(n+1)` -/
def P16184522138749249785.Spec : Prop :=
  ∀ n, P16184522138749249785.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P4342496369551311449

`A359484(n+1)/A318661(n+1)`
-/

namespace A361019.P4342496369551311449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (A318661 (n + 1) : ℚ)

end

end A361019.P4342496369551311449

namespace A361019

/-- `A359484(n+1)/A318661(n+1)` -/
def P4342496369551311449.Spec : Prop :=
  ∀ n, P4342496369551311449.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P1526887223432333446

`A359484(n+1)/A324894(n+1)`
-/

namespace A361019.P1526887223432333446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (A324894 (n + 1) : ℚ)

end

end A361019.P1526887223432333446

namespace A361019

/-- `A359484(n+1)/A324894(n+1)` -/
def P1526887223432333446.Spec : Prop :=
  ∀ n, P1526887223432333446.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P16456074207809191166

`A359484(n+1)/A336652(n+1)`
-/

namespace A361019.P16456074207809191166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (A336652 (n + 1) : ℚ)

end

end A361019.P16456074207809191166

namespace A361019

/-- `A359484(n+1)/A336652(n+1)` -/
def P16456074207809191166.Spec : Prop :=
  ∀ n, P16456074207809191166.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P7512065074385502710

`A359484(n+1)/A341042(n+1)`
-/

namespace A361019.P7512065074385502710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359484 (n + 1) : ℚ) / (A341042 (n + 1) : ℚ)

end

end A361019.P7512065074385502710

namespace A361019

/-- `A359484(n+1)/A341042(n+1)` -/
def P7512065074385502710.Spec : Prop :=
  ∀ n, P7512065074385502710.a n = (A361019 (n + 1) : ℚ)

end A361019

/-! ## A361019.P343406335263918757

`2*A092673(n+1)-A008683(n+1)`
-/

namespace A361019.P343406335263918757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092673 (n + 1) - A008683 (n + 1)

end

end A361019.P343406335263918757

namespace A361019

/-- `2*A092673(n+1)-A008683(n+1)` -/
def P343406335263918757.Spec : Prop :=
  ∀ n, P343406335263918757.a n = A361019 (n + 1)

end A361019

/-! ## A361019.P6653946179310328370

`∑{d}[n+1, A007428(#)*A048272((n+1)/#)]`
-/

namespace A361019.P6653946179310328370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361019.P6653946179310328370

namespace A361019

/-- `∑{d}[n+1, A007428(#)*A048272((n+1)/#)]` -/
def P6653946179310328370.Spec : Prop :=
  ∀ n, P6653946179310328370.a n = A361019 (n + 1)

end A361019

/-! ## A361019.P15423210089587686031

`∑{d}[n+1, A046692(#)*A193356((n+1)/#)]`
-/

namespace A361019.P15423210089587686031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361019.P15423210089587686031

namespace A361019

/-- `∑{d}[n+1, A046692(#)*A193356((n+1)/#)]` -/
def P15423210089587686031.Spec : Prop :=
  ∀ n, P15423210089587686031.a n = A361019 (n + 1)

end A361019

/-! ## A361019.P15117926593637253675

`∑{d}[n+1, A055615(#)*A319997((n+1)/#)]`
-/

namespace A361019.P15117926593637253675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361019.P15117926593637253675

namespace A361019

/-- `∑{d}[n+1, A055615(#)*A319997((n+1)/#)]` -/
def P15117926593637253675.Spec : Prop :=
  ∀ n, P15117926593637253675.a n = A361019 (n + 1)

end A361019

/-! ## A361019.P7163845448018324869

`∑{d}[n+1, A247343(#)*A288571((n+1)/#)]`
-/

namespace A361019.P7163845448018324869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361019.P7163845448018324869

namespace A361019

/-- `∑{d}[n+1, A247343(#)*A288571((n+1)/#)]` -/
def P7163845448018324869.Spec : Prop :=
  ∀ n, P7163845448018324869.a n = A361019 (n + 1)

end A361019

/-! ## A361019.P533246163398726836

`∑{d}[n+1, A228274(#)*A328254((n+1)/#)]`
-/

namespace A361019.P533246163398726836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A228274 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361019.P533246163398726836

namespace A361019

/-- `∑{d}[n+1, A228274(#)*A328254((n+1)/#)]` -/
def P533246163398726836.Spec : Prop :=
  ∀ n, P533246163398726836.a n = A361019 (n + 1)

end A361019

/-! ## A361019.P4558749990810415751

`∑{d}[n+1, A230074(#)*A327276((n+1)/#)]`
-/

namespace A361019.P4558749990810415751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361019.P4558749990810415751

namespace A361019

/-- `∑{d}[n+1, A230074(#)*A327276((n+1)/#)]` -/
def P4558749990810415751.Spec : Prop :=
  ∀ n, P4558749990810415751.a n = A361019 (n + 1)

end A361019

/-! ## A361019.P15313345831651594079

`∑{d}[n+1, A245579(#)*A327960((n+1)/#)]`
-/

namespace A361019.P15313345831651594079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245579 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361019.P15313345831651594079

namespace A361019

/-- `∑{d}[n+1, A245579(#)*A327960((n+1)/#)]` -/
def P15313345831651594079.Spec : Prop :=
  ∀ n, P15313345831651594079.a n = A361019 (n + 1)

end A361019

/-!
# A361020: Lexicographically earliest infinite sequence such that a(i) = a(j) => A343029(i) = A343029(j) and A343030(i) = A343030(j) for all i, j >= 0.

The programs for A361020, the canonical program `A361020.P12000119791759968887` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361020 has offset 0).

The definition of A361020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361020.P2059423790125066308

`A389902(2*n)`
-/

namespace A361020.P2059423790125066308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389902 (2 * n)

end

end A361020.P2059423790125066308

namespace A361020

/-- `A389902(2*n)` -/
def P2059423790125066308.Spec : Prop :=
  ∀ n, P2059423790125066308.a n = A361020 n

end A361020

/-! ## A361020.P12000119791759968887

`A249725(A001316(n))-A343029(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A361020

/-- `A249725(A001316(n))-A343029(n)` -/
def P12000119791759968887.Spec : Prop :=
  ∀ n, P12000119791759968887.a n = A361020 n

theorem P12000119791759968887.correct : P12000119791759968887.Spec := by
  intro n
  simp only [A361020]

end A361020

/-! ## A361020.P12824515326222985128

`A075301(A075300(A389902(n+n)))`
-/

namespace A361020.P12824515326222985128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075301 (A075300 (A389902 (n + n)).toNat).toNat

end

end A361020.P12824515326222985128

namespace A361020

/-- `A075301(A075300(A389902(n+n)))` -/
def P12824515326222985128.Spec : Prop :=
  ∀ n, P12824515326222985128.a n = A361020 n

end A361020

/-! ## A361020.P13140986830301771581

`A389899(A028310(3*n)-A000034(n))`
-/

namespace A361020.P13140986830301771581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389899 (A028310 (3 * n) - A000034 n).toNat

end

end A361020.P13140986830301771581

namespace A361020

/-- `A389899(A028310(3*n)-A000034(n))` -/
def P13140986830301771581.Spec : Prop :=
  ∀ n, P13140986830301771581.a n = A361020 n

end A361020

/-!
# A361021: 

The programs for A361021, there is no canonical definition to state claims against.
-/

/-! ## A361021.P18399907626814671803

`A295885(n+1)+a((n+1)%n)` with `a(0)=1`
-/

namespace A361021.P18399907626814671803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295885 (n + 1) + a ((n + 1) % n)

end

end A361021.P18399907626814671803

/-! ## A361021.P17622989323033193730

`A295885(n+1)+A130130(n)`
-/

namespace A361021.P17622989323033193730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295885 (n + 1) + A130130 n

end

end A361021.P17622989323033193730

/-! ## A361021.P13478914654209373885

`A295885(n+1)+A000040(n+1)%2-A057428(A046079(n+1))`
-/

namespace A361021.P13478914654209373885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295885 (n + 1) + Int.tmod (A000040 (n + 1)) 2 - A057428 (A046079 (n + 1)).toNat

end

end A361021.P13478914654209373885

/-!
# A361022: a(n) = 1 if d(n) divides d(n+1), otherwise 0, where d(n) is number of positive divisors of n.

The programs for A361022, the canonical program `A361022.P13909982394743935794` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361022 has offset 1).

The definition of A361022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361022.P11826657543426247271

`char[A057922(n)-1]`
-/

namespace A361022.P11826657543426247271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361022.P11826657543426247271

namespace A361022

/-- `char[A057922(n)-1]` -/
def P11826657543426247271.Spec : Prop :=
  ∀ n, (P11826657543426247271.a n : ℤ) = A361022 (n + 1)

end A361022

/-! ## A361022.P3032283130956953841

`round(acot(A275479(n+1)))`
-/

namespace A361022.P3032283130956953841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A275479 (n + 1) : ℝ))

end

end A361022.P3032283130956953841

namespace A361022

/-- `round(acot(A275479(n+1)))` -/
def P3032283130956953841.Spec : Prop :=
  ∀ n, P3032283130956953841.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P7674075390701383753

`char[A086552(n+1)-2]`
-/

namespace A361022.P7674075390701383753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086552 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361022.P7674075390701383753

namespace A361022

/-- `char[A086552(n+1)-2]` -/
def P7674075390701383753.Spec : Prop :=
  ∀ n, (P7674075390701383753.a n : ℤ) = A361022 (n + 1)

end A361022

/-! ## A361022.P4246828906403413523

`val(A069805(n+1), n+2)`
-/

namespace A361022.P4246828906403413523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069805 (n + 1)).toNat (n + 2)

end

end A361022.P4246828906403413523

namespace A361022

/-- `val(A069805(n+1), n+2)` -/
def P4246828906403413523.Spec : Prop :=
  ∀ n, (P4246828906403413523.a n : ℤ) = A361022 (n + 1)

end A361022

/-! ## A361022.P13754262473470045302

`A010051(2*A275479(n+1))`
-/

namespace A361022.P13754262473470045302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A275479 (n + 1)).toNat

end

end A361022.P13754262473470045302

namespace A361022

/-- `A010051(2*A275479(n+1))` -/
def P13754262473470045302.Spec : Prop :=
  ∀ n, P13754262473470045302.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P11691621723175277874

`A000007(floor(log2(A275479(n+1))))`
-/

namespace A361022.P11691621723175277874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.log 2 (A275479 (n + 1)).toNat)

end

end A361022.P11691621723175277874

namespace A361022

/-- `A000007(floor(log2(A275479(n+1))))` -/
def P11691621723175277874.Spec : Prop :=
  ∀ n, P11691621723175277874.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P4127578561098697982

`A000007(ceil(log2(A275479(n+1))))`
-/

namespace A361022.P4127578561098697982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌈Real.logb 2 (A275479 (n + 1) : ℝ)⌉.toNat

end

end A361022.P4127578561098697982

namespace A361022

/-- `A000007(ceil(log2(A275479(n+1))))` -/
def P4127578561098697982.Spec : Prop :=
  ∀ n, P4127578561098697982.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P7594560561566535649

`∑{d}[A275479(n+1), A008683(#)]`
-/

namespace A361022.P7594560561566535649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A361022.P7594560561566535649

namespace A361022

/-- `∑{d}[A275479(n+1), A008683(#)]` -/
def P7594560561566535649.Spec : Prop :=
  ∀ n, P7594560561566535649.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P17932734212417574222

`∏{p}[A275479(n+1), A000007(#)]`
-/

namespace A361022.P17932734212417574222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000007 p

end

end A361022.P17932734212417574222

namespace A361022

/-- `∏{p}[A275479(n+1), A000007(#)]` -/
def P17932734212417574222.Spec : Prop :=
  ∀ n, P17932734212417574222.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P8763260250402365537

`A000007(∑{e}[A275479(n+1), #])`
-/

namespace A361022.P8763260250402365537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A361022.P8763260250402365537

namespace A361022

/-- `A000007(∑{e}[A275479(n+1), #])` -/
def P8763260250402365537.Spec : Prop :=
  ∀ n, P8763260250402365537.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P18329729216978655595

`A000007(A063131(n+1)%A275479(n+1))`
-/

namespace A361022.P18329729216978655595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A063131 (n + 1)) (A275479 (n + 1))).toNat

end

end A361022.P18329729216978655595

namespace A361022

/-- `A000007(A063131(n+1)%A275479(n+1))` -/
def P18329729216978655595.Spec : Prop :=
  ∀ n, P18329729216978655595.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P8673274406417554071

`C(A057922(n), A057922(n)*A275479(n+1))`
-/

namespace A361022.P8673274406417554071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057922 n).toNat (A057922 n * A275479 (n + 1)).toNat

end

end A361022.P8673274406417554071

namespace A361022

/-- `C(A057922(n), A057922(n)*A275479(n+1))` -/
def P8673274406417554071.Spec : Prop :=
  ∀ n, (P8673274406417554071.a n : ℤ) = A361022 (n + 1)

end A361022

/-! ## A361022.P13909982394743935794

`A000007(Δ[A054519(n+1)]%∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A361022

/-- `A000007(Δ[A054519(n+1)]%∏{e}[n+1, #+1])` -/
def P13909982394743935794.Spec : Prop :=
  ∀ n, P13909982394743935794.a n = A361022 (n + 1)

theorem P13909982394743935794.correct : P13909982394743935794.Spec := by
  intro n
  simp only [A361022, Nat.add_sub_cancel]

end A361022

/-! ## A361022.P9788555038102522593

`A000007(A275479(n+1)-1)`
-/

namespace A361022.P9788555038102522593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A275479 (n + 1) - 1).toNat

end

end A361022.P9788555038102522593

namespace A361022

/-- `A000007(A275479(n+1)-1)` -/
def P9788555038102522593.Spec : Prop :=
  ∀ n, P9788555038102522593.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P3818716775242476196

`C(A277319(n+2), A277319(A069805(n+1)))`
-/

namespace A361022.P3818716775242476196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A277319 (n + 2)).toNat (A277319 (A069805 (n + 1)).toNat).toNat

end

end A361022.P3818716775242476196

namespace A361022

/-- `C(A277319(n+2), A277319(A069805(n+1)))` -/
def P3818716775242476196.Spec : Prop :=
  ∀ n, (P3818716775242476196.a n : ℤ) = A361022 (n + 1)

end A361022

/-! ## A361022.P17508933113311310633

`C(A275479(A057922(n)), A275479(n+1))`
-/

namespace A361022.P17508933113311310633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A275479 (A057922 n).toNat).toNat (A275479 (n + 1)).toNat

end

end A361022.P17508933113311310633

namespace A361022

/-- `C(A275479(A057922(n)), A275479(n+1))` -/
def P17508933113311310633.Spec : Prop :=
  ∀ n, (P17508933113311310633.a n : ℤ) = A361022 (n + 1)

end A361022

/-! ## A361022.P13077023128241468391

`C(cosh(A000007(2*(n+2))), A275479(n+1))`
-/

namespace A361022.P13077023128241468391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.cosh (A000007 (2 * (n + 2)) : ℝ))).toNat (A275479 (n + 1)).toNat

end

end A361022.P13077023128241468391

namespace A361022

/-- `C(cosh(A000007(2*(n+2))), A275479(n+1))` -/
def P13077023128241468391.Spec : Prop :=
  ∀ n, (P13077023128241468391.a n : ℤ) = A361022 (n + 1)

end A361022

/-! ## A361022.P5410579742387697239

`A008683(A275479(n+1)²)`
-/

namespace A361022.P5410579742387697239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A275479 (n + 1) ^ 2).toNat

end

end A361022.P5410579742387697239

namespace A361022

/-- `A008683(A275479(n+1)²)` -/
def P5410579742387697239.Spec : Prop :=
  ∀ n, P5410579742387697239.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P4463278723677584079

`A010051(A275479(n+1)+A275479(n+1)²)`
-/

namespace A361022.P4463278723677584079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A275479 (n + 1) + A275479 (n + 1) ^ 2).toNat

end

end A361022.P4463278723677584079

namespace A361022

/-- `A010051(A275479(n+1)+A275479(n+1)²)` -/
def P4463278723677584079.Spec : Prop :=
  ∀ n, P4463278723677584079.a n = A361022 (n + 1)

end A361022

/-! ## A361022.P698821078488746569

`A000007(A275478(n+1))`
-/

namespace A361022.P698821078488746569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A275478 (n + 1)).toNat

end

end A361022.P698821078488746569

namespace A361022

/-- `A000007(A275478(n+1))` -/
def P698821078488746569.Spec : Prop :=
  ∀ n, P698821078488746569.a n = A361022 (n + 1)

end A361022

/-!
# A361023: a(n) = 1 if A007814(sigma(n)) >= A007814(n), otherwise 0, where A007814(n) gives the 2-adic valuation of n.

The programs for A361023, the canonical program `A361023.P14930666905499730848` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361023 has offset 1).

The definition of A361023 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361023.P12194608546849121988

`A324903(n+1)+A361024(n+1)`
-/

namespace A361023.P12194608546849121988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (n + 1) + A361024 (n + 1)

end

end A361023.P12194608546849121988

namespace A361023

/-- `A324903(n+1)+A361024(n+1)` -/
def P12194608546849121988.Spec : Prop :=
  ∀ n, P12194608546849121988.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P14930666905499730848

`A000035(A017666(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361023

/-- `A000035(A017666(n+1))` -/
def P14930666905499730848.Spec : Prop :=
  ∀ n, P14930666905499730848.a n = A361023 (n + 1)

theorem P14930666905499730848.correct : P14930666905499730848.Spec := by
  intro n
  simp only [A361023, Nat.add_sub_cancel]

end A361023

/-! ## A361023.P12604205373036428740

`A098988(n+1)%2`
-/

namespace A361023.P12604205373036428740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098988 (n + 1)) 2

end

end A361023.P12604205373036428740

namespace A361023

/-- `A098988(n+1)%2` -/
def P12604205373036428740.Spec : Prop :=
  ∀ n, P12604205373036428740.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P3256620194425029733

`A305007(n+1)%2`
-/

namespace A361023.P3256620194425029733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305007 (n + 1)) 2

end

end A361023.P3256620194425029733

namespace A361023

/-- `A305007(n+1)%2` -/
def P3256620194425029733.Spec : Prop :=
  ∀ n, P3256620194425029733.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P10442651437094883103

`A353667(n+1)%2`
-/

namespace A361023.P10442651437094883103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353667 (n + 1)) 2

end

end A361023.P10442651437094883103

namespace A361023

/-- `A353667(n+1)%2` -/
def P10442651437094883103.Spec : Prop :=
  ∀ n, P10442651437094883103.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P16229806508870358569

`((n+1)/A009194(n+1))%2`
-/

namespace A361023.P16229806508870358569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A009194 (n + 1) : ℚ))) 2

end

end A361023.P16229806508870358569

namespace A361023

/-- `((n+1)/A009194(n+1))%2` -/
def P16229806508870358569.Spec : Prop :=
  ∀ n, P16229806508870358569.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P15544062232487618732

`((n+1)/gcd(n+1, A000203(n+1)))%2`
-/

namespace A361023.P15544062232487618732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℚ))) 2

end

end A361023.P15544062232487618732

namespace A361023

/-- `((n+1)/gcd(n+1, A000203(n+1)))%2` -/
def P15544062232487618732.Spec : Prop :=
  ∀ n, P15544062232487618732.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P3779219547488236833

`A324903(A235800(n+1))`
-/

namespace A361023.P3779219547488236833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (A235800 (n + 1)).toNat

end

end A361023.P3779219547488236833

namespace A361023

/-- `A324903(A235800(n+1))` -/
def P3779219547488236833.Spec : Prop :=
  ∀ n, P3779219547488236833.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P3183287045060592132

`and(A017666(n+1), A060576(n))`
-/

namespace A361023.P3183287045060592132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A060576 n)

end

end A361023.P3183287045060592132

namespace A361023

/-- `and(A017666(n+1), A060576(n))` -/
def P3183287045060592132.Spec : Prop :=
  ∀ n, P3183287045060592132.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P14809095579558538264

`and(A017666(n+1), A158388(n))`
-/

namespace A361023.P14809095579558538264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A158388 n)

end

end A361023.P14809095579558538264

namespace A361023

/-- `and(A017666(n+1), A158388(n))` -/
def P14809095579558538264.Spec : Prop :=
  ∀ n, P14809095579558538264.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P15971540215192147677

`and(A017666(n+1), A267442(n))`
-/

namespace A361023.P15971540215192147677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A267442 n)

end

end A361023.P15971540215192147677

namespace A361023

/-- `and(A017666(n+1), A267442(n))` -/
def P15971540215192147677.Spec : Prop :=
  ∀ n, P15971540215192147677.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P9219812449565724970

`and(A017666(n+1), A267870(n))`
-/

namespace A361023.P9219812449565724970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A267870 n)

end

end A361023.P9219812449565724970

namespace A361023

/-- `and(A017666(n+1), A267870(n))` -/
def P9219812449565724970.Spec : Prop :=
  ∀ n, P9219812449565724970.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P15359306950252291777

`and(A017666(n+1), A267871(n))`
-/

namespace A361023.P15359306950252291777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A267871 n)

end

end A361023.P15359306950252291777

namespace A361023

/-- `and(A017666(n+1), A267871(n))` -/
def P15359306950252291777.Spec : Prop :=
  ∀ n, P15359306950252291777.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P5688186517776351576

`A000035(A098988(n+1))`
-/

namespace A361023.P5688186517776351576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A098988 (n + 1)).toNat

end

end A361023.P5688186517776351576

namespace A361023

/-- `A000035(A098988(n+1))` -/
def P5688186517776351576.Spec : Prop :=
  ∀ n, P5688186517776351576.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P9941718189627725882

`A000035(A305007(n+1))`
-/

namespace A361023.P9941718189627725882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A305007 (n + 1)).toNat

end

end A361023.P9941718189627725882

namespace A361023

/-- `A000035(A305007(n+1))` -/
def P9941718189627725882.Spec : Prop :=
  ∀ n, P9941718189627725882.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P13873971116827562343

`A000035(A353667(n+1))`
-/

namespace A361023.P13873971116827562343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A353667 (n + 1)).toNat

end

end A361023.P13873971116827562343

namespace A361023

/-- `A000035(A353667(n+1))` -/
def P13873971116827562343.Spec : Prop :=
  ∀ n, P13873971116827562343.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P647387063994748717

`and(A017666(n+1), A176410(n))`
-/

namespace A361023.P647387063994748717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A176410 n)

end

end A361023.P647387063994748717

namespace A361023

/-- `and(A017666(n+1), A176410(n))` -/
def P647387063994748717.Spec : Prop :=
  ∀ n, P647387063994748717.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P5711671937729138218

`and(A017666(n+1), A176794(n))`
-/

namespace A361023.P5711671937729138218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A176794 n)

end

end A361023.P5711671937729138218

namespace A361023

/-- `and(A017666(n+1), A176794(n))` -/
def P5711671937729138218.Spec : Prop :=
  ∀ n, P5711671937729138218.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P7259765653552710527

`and(A017666(n+1), A048578(n))`
-/

namespace A361023.P7259765653552710527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A048578 n)

end

end A361023.P7259765653552710527

namespace A361023

/-- `and(A017666(n+1), A048578(n))` -/
def P7259765653552710527.Spec : Prop :=
  ∀ n, P7259765653552710527.a n = A361023 (n + 1)

end A361023

/-! ## A361023.P3662279829475141440

`and(A017666(n+1), A020737(n))`
-/

namespace A361023.P3662279829475141440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017666 (n + 1)) (A020737 n)

end

end A361023.P3662279829475141440

namespace A361023

/-- `and(A017666(n+1), A020737(n))` -/
def P3662279829475141440.Spec : Prop :=
  ∀ n, P3662279829475141440.a n = A361023 (n + 1)

end A361023

/-!
# A361024: a(n) = 1 if n and sigma(n) have equal 2-adic valuations, otherwise 0, where sigma is the sum of divisors function.

The programs for A361024, the canonical program `A361024.P7432656464654402567` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361024 has offset 1).

The definition of A361024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324903, A361023, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361024.P7432656464654402567

`A361023(n+1)-A324903(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361024

/-- `A361023(n+1)-A324903(n+1)` -/
def P7432656464654402567.Spec : Prop :=
  ∀ n, P7432656464654402567.a n = A361024 (n + 1)

theorem P7432656464654402567.correct : P7432656464654402567.Spec := by
  intro n
  simp only [A361024, Nat.add_sub_cancel]

end A361024

/-! ## A361024.P3678717729790163426

`((n+1)*∑{d}[n+1, #]/gcd(n-1-2*n, ∑{d}[n+1, #])²)%2`
-/

namespace A361024.P3678717729790163426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℚ) / (Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) ^ 2 : ℚ))) 2

end

end A361024.P3678717729790163426

namespace A361024

/-- `((n+1)*∑{d}[n+1, #]/gcd(n-1-2*n, ∑{d}[n+1, #])²)%2` -/
def P3678717729790163426.Spec : Prop :=
  ∀ n, P3678717729790163426.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P30718918261674450

`A249670(n+1)%2`
-/

namespace A361024.P30718918261674450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249670 (n + 1)) 2

end

end A361024.P30718918261674450

namespace A361024

/-- `A249670(n+1)%2` -/
def P30718918261674450.Spec : Prop :=
  ∀ n, P30718918261674450.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P9544371964035942304

`log2(gcd(2, A243473(n+1)))`
-/

namespace A361024.P9544371964035942304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A243473 (n + 1)) : ℝ)

end

end A361024.P9544371964035942304

namespace A361024

/-- `log2(gcd(2, A243473(n+1)))` -/
def P9544371964035942304.Spec : Prop :=
  ∀ n, P9544371964035942304.a n = (A361024 (n + 1) : ℝ)

end A361024

/-! ## A361024.P15895745747299442323

`char[A216780(n+1)-1]`
-/

namespace A361024.P15895745747299442323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216780 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361024.P15895745747299442323

namespace A361024

/-- `char[A216780(n+1)-1]` -/
def P15895745747299442323.Spec : Prop :=
  ∀ n, (P15895745747299442323.a n : ℤ) = A361024 (n + 1)

end A361024

/-! ## A361024.P18119910815009488482

`and(1, A249670(A000027(n+1)))`
-/

namespace A361024.P18119910815009488482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A249670 (A000027 (n + 1)).toNat)

end

end A361024.P18119910815009488482

namespace A361024

/-- `and(1, A249670(A000027(n+1)))` -/
def P18119910815009488482.Spec : Prop :=
  ∀ n, P18119910815009488482.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P3163610596944206699

`and(A060576(n), A249670(n+1))`
-/

namespace A361024.P3163610596944206699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A249670 (n + 1))

end

end A361024.P3163610596944206699

namespace A361024

/-- `and(A060576(n), A249670(n+1))` -/
def P3163610596944206699.Spec : Prop :=
  ∀ n, P3163610596944206699.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P11608098783521298107

`and(A105234(n), A249670(n+1))`
-/

namespace A361024.P11608098783521298107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105234 n) (A249670 (n + 1))

end

end A361024.P11608098783521298107

namespace A361024

/-- `and(A105234(n), A249670(n+1))` -/
def P11608098783521298107.Spec : Prop :=
  ∀ n, P11608098783521298107.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P8444140485315821915

`and(A118102(n), A249670(n+1))`
-/

namespace A361024.P8444140485315821915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118102 n) (A249670 (n + 1))

end

end A361024.P8444140485315821915

namespace A361024

/-- `and(A118102(n), A249670(n+1))` -/
def P8444140485315821915.Spec : Prop :=
  ∀ n, P8444140485315821915.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P12209582277825126781

`and(A152822(n), A249670(n+1))`
-/

namespace A361024.P12209582277825126781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152822 n) (A249670 (n + 1))

end

end A361024.P12209582277825126781

namespace A361024

/-- `and(A152822(n), A249670(n+1))` -/
def P12209582277825126781.Spec : Prop :=
  ∀ n, P12209582277825126781.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P5445437518507984021

`and(A158388(n), A249670(n+1))`
-/

namespace A361024.P5445437518507984021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A249670 (n + 1))

end

end A361024.P5445437518507984021

namespace A361024

/-- `and(A158388(n), A249670(n+1))` -/
def P5445437518507984021.Spec : Prop :=
  ∀ n, P5445437518507984021.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P15109281475162989935

`and(A179184(n), A249670(n+1))`
-/

namespace A361024.P15109281475162989935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 n) (A249670 (n + 1))

end

end A361024.P15109281475162989935

namespace A361024

/-- `and(A179184(n), A249670(n+1))` -/
def P15109281475162989935.Spec : Prop :=
  ∀ n, P15109281475162989935.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P17997104096094315318

`A361023(n+1)-A361023(2*(n+1))`
-/

namespace A361024.P17997104096094315318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361023 (n + 1) - A361023 (2 * (n + 1))

end

end A361024.P17997104096094315318

namespace A361024

/-- `A361023(n+1)-A361023(2*(n+1))` -/
def P17997104096094315318.Spec : Prop :=
  ∀ n, P17997104096094315318.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P16667645138753922042

`(lcm(n+1, A000203(n+1))/gcd(n+1, A000203(n+1)))%2`
-/

namespace A361024.P16667645138753922042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (A000203 (n + 1)) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℚ))) 2

end

end A361024.P16667645138753922042

namespace A361024

/-- `(lcm(n+1, A000203(n+1))/gcd(n+1, A000203(n+1)))%2` -/
def P16667645138753922042.Spec : Prop :=
  ∀ n, P16667645138753922042.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P2162008145922478561

`A324903(A235800(n+1))-A324903(n+1)`
-/

namespace A361024.P2162008145922478561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (A235800 (n + 1)).toNat - A324903 (n + 1)

end

end A361024.P2162008145922478561

namespace A361024

/-- `A324903(A235800(n+1))-A324903(n+1)` -/
def P2162008145922478561.Spec : Prop :=
  ∀ n, P2162008145922478561.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P993978038992803751

`A059841(A243473(n+1))`
-/

namespace A361024.P993978038992803751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A243473 (n + 1)).toNat

end

end A361024.P993978038992803751

namespace A361024

/-- `A059841(A243473(n+1))` -/
def P993978038992803751.Spec : Prop :=
  ∀ n, P993978038992803751.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P15501680440514040432

`and(A020737(n), A249670(n+1))`
-/

namespace A361024.P15501680440514040432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A249670 (n + 1))

end

end A361024.P15501680440514040432

namespace A361024

/-- `and(A020737(n), A249670(n+1))` -/
def P15501680440514040432.Spec : Prop :=
  ∀ n, P15501680440514040432.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P17148217461713352792

`A361023((A243473(n+1)+1)²)`
-/

namespace A361024.P17148217461713352792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361023 ((A243473 (n + 1) + 1) ^ 2).toNat

end

end A361024.P17148217461713352792

namespace A361024

/-- `A361023((A243473(n+1)+1)²)` -/
def P17148217461713352792.Spec : Prop :=
  ∀ n, P17148217461713352792.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P7740273859162072360

`and(A048479(n), A249670(n+1))`
-/

namespace A361024.P7740273859162072360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A249670 (n + 1))

end

end A361024.P7740273859162072360

namespace A361024

/-- `and(A048479(n), A249670(n+1))` -/
def P7740273859162072360.Spec : Prop :=
  ∀ n, P7740273859162072360.a n = A361024 (n + 1)

end A361024

/-! ## A361024.P10845625311735077639

`and(A249670(n+1), A295926(n+3))`
-/

namespace A361024.P10845625311735077639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249670 (n + 1)) (A295926 (n + 3))

end

end A361024.P10845625311735077639

namespace A361024

/-- `and(A249670(n+1), A295926(n+3))` -/
def P10845625311735077639.Spec : Prop :=
  ∀ n, P10845625311735077639.a n = A361024 (n + 1)

end A361024

/-!
# A361025: a(n) = A007814(sigma(n)) - A007814(n), where A007814(n) gives the 2-adic valuation of n, and sigma is the sum of divisors function.

The programs for A361025, the canonical program `A361025.P152739747742070564` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361025 has offset 1).

The definition of A361025 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336937, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361025.P152739747742070564

`A336937(n+1)-A007814(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361025

/-- `A336937(n+1)-A007814(n+1)` -/
def P152739747742070564.Spec : Prop :=
  ∀ n, P152739747742070564.a n = A361025 (n + 1)

theorem P152739747742070564.correct : P152739747742070564.Spec := by
  intro n
  simp only [A361025, Nat.add_sub_cancel]

end A361025

/-! ## A361025.P15471813987689060883

`val(A000203(n+1), 2)-val(n+1, 2)`
-/

namespace A361025.P15471813987689060883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2 : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A361025.P15471813987689060883

namespace A361025

/-- `val(A000203(n+1), 2)-val(n+1, 2)` -/
def P15471813987689060883.Spec : Prop :=
  ∀ n, P15471813987689060883.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P558536558255485664

`A286357(n+1)-A001511(n+1)`
-/

namespace A361025.P558536558255485664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1) - A001511 (n + 1)

end

end A361025.P558536558255485664

namespace A361025

/-- `A286357(n+1)-A001511(n+1)` -/
def P558536558255485664.Spec : Prop :=
  ∀ n, P558536558255485664.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P4368642943464977320

`A286357(n+1)-(A007814(n+1)+1)`
-/

namespace A361025.P4368642943464977320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1) - (A007814 (n + 1) + 1)

end

end A361025.P4368642943464977320

namespace A361025

/-- `A286357(n+1)-(A007814(n+1)+1)` -/
def P4368642943464977320.Spec : Prop :=
  ∀ n, P4368642943464977320.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P4864717007491976762

`val(A000203(n+1), 2)-A007814(n+1)`
-/

namespace A361025.P4864717007491976762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000203 (n + 1)).toNat 2 : ℤ) - A007814 (n + 1)

end

end A361025.P4864717007491976762

namespace A361025

/-- `val(A000203(n+1), 2)-A007814(n+1)` -/
def P4864717007491976762.Spec : Prop :=
  ∀ n, P4864717007491976762.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P8070424822177610475

`A001511(A082903(n+1))-A001511(n+1)`
-/

namespace A361025.P8070424822177610475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A082903 (n + 1)).toNat - A001511 (n + 1)

end

end A361025.P8070424822177610475

namespace A361025

/-- `A001511(A082903(n+1))-A001511(n+1)` -/
def P8070424822177610475.Spec : Prop :=
  ∀ n, P8070424822177610475.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P7933607762601442343

`A007814(A082903(n+1))-A007814(n+1)`
-/

namespace A361025.P7933607762601442343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A082903 (n + 1)).toNat - A007814 (n + 1)

end

end A361025.P7933607762601442343

namespace A361025

/-- `A007814(A082903(n+1))-A007814(n+1)` -/
def P7933607762601442343.Spec : Prop :=
  ∀ n, P7933607762601442343.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P3416451304714571373

`A286357(n+1)-A089309(2*n+1)`
-/

namespace A361025.P3416451304714571373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1) - A089309 (2 * n + 1)

end

end A361025.P3416451304714571373

namespace A361025

/-- `A286357(n+1)-A089309(2*n+1)` -/
def P3416451304714571373.Spec : Prop :=
  ∀ n, P3416451304714571373.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P941959295883260573

`A001511(A000593(n+1))-A001511(n+1)`
-/

namespace A361025.P941959295883260573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000593 (n + 1)).toNat - A001511 (n + 1)

end

end A361025.P941959295883260573

namespace A361025

/-- `A001511(A000593(n+1))-A001511(n+1)` -/
def P941959295883260573.Spec : Prop :=
  ∀ n, P941959295883260573.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P16798712051710229435

`A007814(A000593(n+1))-A007814(n+1)`
-/

namespace A361025.P16798712051710229435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000593 (n + 1)).toNat - A007814 (n + 1)

end

end A361025.P16798712051710229435

namespace A361025

/-- `A007814(A000593(n+1))-A007814(n+1)` -/
def P16798712051710229435.Spec : Prop :=
  ∀ n, P16798712051710229435.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P3754329262697686139

`A001511(A046897(n+1))-A001511(n+1)`
-/

namespace A361025.P3754329262697686139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A046897 (n + 1)).toNat - A001511 (n + 1)

end

end A361025.P3754329262697686139

namespace A361025

/-- `A001511(A046897(n+1))-A001511(n+1)` -/
def P3754329262697686139.Spec : Prop :=
  ∀ n, P3754329262697686139.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P6477724745167155588

`A007814(A046897(n+1))-A007814(n+1)`
-/

namespace A361025.P6477724745167155588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046897 (n + 1)).toNat - A007814 (n + 1)

end

end A361025.P6477724745167155588

namespace A361025

/-- `A007814(A046897(n+1))-A007814(n+1)` -/
def P6477724745167155588.Spec : Prop :=
  ∀ n, P6477724745167155588.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P1407994949174026822

`A001511(A000203(n+1))-A001511(n+1)`
-/

namespace A361025.P1407994949174026822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000203 (n + 1)).toNat - A001511 (n + 1)

end

end A361025.P1407994949174026822

namespace A361025

/-- `A001511(A000203(n+1))-A001511(n+1)` -/
def P1407994949174026822.Spec : Prop :=
  ∀ n, P1407994949174026822.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P363613384465024841

`A007814(A000203(n+1))-A007814(n+1)`
-/

namespace A361025.P363613384465024841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000203 (n + 1)).toNat - A007814 (n + 1)

end

end A361025.P363613384465024841

namespace A361025

/-- `A007814(A000203(n+1))-A007814(n+1)` -/
def P363613384465024841.Spec : Prop :=
  ∀ n, P363613384465024841.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P9747557515946897455

`A088705(n+1)-A088705(A000203(2*(n+1)))`
-/

namespace A361025.P9747557515946897455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (n + 1) - A088705 (A000203 (2 * (n + 1))).toNat

end

end A361025.P9747557515946897455

namespace A361025

/-- `A088705(n+1)-A088705(A000203(2*(n+1)))` -/
def P9747557515946897455.Spec : Prop :=
  ∀ n, P9747557515946897455.a n = A361025 (n + 1)

end A361025

/-! ## A361025.P17217534000734202824

`A007814(A193553(n+1))-A007814(n+1)`
-/

namespace A361025.P17217534000734202824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A193553 (n + 1)).toNat - A007814 (n + 1)

end

end A361025.P17217534000734202824

namespace A361025

/-- `A007814(A193553(n+1))-A007814(n+1)` -/
def P17217534000734202824.Spec : Prop :=
  ∀ n, P17217534000734202824.a n = A361025 (n + 1)

end A361025

/-!
# A361026: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003557(i) = A003557(j) and A053669(i) = A053669(j), for all i, j >= 1.

The programs for A361026, there is no canonical definition to state claims against.
-/

/-! ## A361026.P8793595733516954428

`A055396(A066196(n+1)*A138310(n+1))`
-/

namespace A361026.P8793595733516954428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A066196 (n + 1) * A138310 (n + 1)).toNat

end

end A361026.P8793595733516954428

/-! ## A361026.P14071886303468002722

`gcd(A006052(A001055(3*n+1)), A296021(n+2))`
-/

namespace A361026.P14071886303468002722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006052 (A001055 (3 * n + 1)).toNat) (A296021 (n + 2))

end

end A361026.P14071886303468002722

/-! ## A361026.P14244246316299903411

`A210959(lt[A194001(3*n+4), (3*n+2)²])`
-/

namespace A361026.P14244246316299903411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194001 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A361026.P14244246316299903411

/-! ## A361026.P4570738830589485767

`A257261(or(A001037(n), A230928(n+1)))`
-/

namespace A361026.P4570738830589485767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 (Int.lor (A001037 n) (A230928 (n + 1))).toNat

end

end A361026.P4570738830589485767

/-! ## A361026.P8324171960383379893

`A193592(eq[A212177(n+5), A212185(n+1)])`
-/

namespace A361026.P8324171960383379893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212177 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A361026.P8324171960383379893

/-!
# A361028: a(n) = 2*(3*n)!/(n!*(n+1)!^2).

The programs for A361028, the canonical program `A361028.P18441464094651467817` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361028 has offset 0).

The definition of A361028 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361028.P18441464094651467817

`3*(3*n-1)*(3*n-2)/(n+1)²*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361028

/-- `3*(3*n-1)*(3*n-2)/(n+1)²*a(n-1)` -/
def P18441464094651467817.Spec : Prop :=
  ∀ n, P18441464094651467817.a n = (A361028 n : ℚ)

end A361028

/-! ## A361028.P3258230745335243271

`A007226(n)*A000108(n)`
-/

namespace A361028.P3258230745335243271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n * A000108 n

end

end A361028.P3258230745335243271

namespace A361028

/-- `A007226(n)*A000108(n)` -/
def P3258230745335243271.Spec : Prop :=
  ∀ n, P3258230745335243271.a n = A361028 n

end A361028

/-! ## A361028.P17973351021803615823

`2/3*A006480(n+1)/((3*n+1)*(3*n+2))`
-/

namespace A361028.P17973351021803615823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A006480 (n + 1) : ℚ) / ((3 * n + 1) * (3 * n + 2) : ℚ)

end

end A361028.P17973351021803615823

namespace A361028

/-- `2/3*A006480(n+1)/((3*n+1)*(3*n+2))` -/
def P17973351021803615823.Spec : Prop :=
  ∀ n, P17973351021803615823.a n = (A361028 n : ℚ)

end A361028

/-! ## A361028.P211044205813020420

`(n+2)*A005789(n)`
-/

namespace A361028.P211044205813020420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A005789 n

end

end A361028.P211044205813020420

namespace A361028

/-- `(n+2)*A005789(n)` -/
def P211044205813020420.Spec : Prop :=
  ∀ n, P211044205813020420.a n = A361028 n

end A361028

/-! ## A361028.P998646286359664804

`abs(A007226(n)*A168491(n))`
-/

namespace A361028.P998646286359664804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007226 n * A168491 n|

end

end A361028.P998646286359664804

namespace A361028

/-- `abs(A007226(n)*A168491(n))` -/
def P998646286359664804.Spec : Prop :=
  ∀ n, P998646286359664804.a n = A361028 n

end A361028

/-! ## A361028.P17776397085517805445

`A007226(n)*A028364(∑[n])`
-/

namespace A361028.P17776397085517805445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n * A028364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361028.P17776397085517805445

namespace A361028

/-- `A007226(n)*A028364(∑[n])` -/
def P17776397085517805445.Spec : Prop :=
  ∀ n, P17776397085517805445.a n = A361028 n

end A361028

/-! ## A361028.P12959103062624137975

`A007226(n)*A039599(∑[n])`
-/

namespace A361028.P12959103062624137975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361028.P12959103062624137975

namespace A361028

/-- `A007226(n)*A039599(∑[n])` -/
def P12959103062624137975.Spec : Prop :=
  ∀ n, P12959103062624137975.a n = A361028 n

end A361028

/-! ## A361028.P2953599402207035858

`A007226(n)*A120588(n+1)`
-/

namespace A361028.P2953599402207035858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n * A120588 (n + 1)

end

end A361028.P2953599402207035858

namespace A361028

/-- `A007226(n)*A120588(n+1)` -/
def P2953599402207035858.Spec : Prop :=
  ∀ n, P2953599402207035858.a n = A361028 n

end A361028

/-! ## A361028.P8028947360959900012

`A007226(n)*A028303(2*n)`
-/

namespace A361028.P8028947360959900012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n * A028303 (2 * n)

end

end A361028.P8028947360959900012

namespace A361028

/-- `A007226(n)*A028303(2*n)` -/
def P8028947360959900012.Spec : Prop :=
  ∀ n, P8028947360959900012.a n = A361028 n

end A361028

/-! ## A361028.P4424753727701610891

`A007226(n)*A057977(2*n)`
-/

namespace A361028.P4424753727701610891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n * A057977 (2 * n)

end

end A361028.P4424753727701610891

namespace A361028

/-- `A007226(n)*A057977(2*n)` -/
def P4424753727701610891.Spec : Prop :=
  ∀ n, P4424753727701610891.a n = A361028 n

end A361028

/-!
# A361029: a(n) = 120*(3*n)!/(n!*(n+2)!^2).

The programs for A361029, the canonical program `A361029.P12919880380144383065` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361029 has offset 0).

The definition of A361029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361029.P12919880380144383065

`3*(3*n-1)*(3*n-2)/(n+2)²*a(n-1)` with `a(0)=30`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361029

/-- `3*(3*n-1)*(3*n-2)/(n+2)²*a(n-1)` -/
def P12919880380144383065.Spec : Prop :=
  ∀ n, P12919880380144383065.a n = (A361029 n : ℚ)

end A361029

/-! ## A361029.P17454400200349441182

`A007054(n)*A361037(n)`
-/

namespace A361029.P17454400200349441182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 n * A361037 n

end

end A361029.P17454400200349441182

namespace A361029

/-- `A007054(n)*A361037(n)` -/
def P17454400200349441182.Spec : Prop :=
  ∀ n, P17454400200349441182.a n = A361029 n

end A361029

/-! ## A361029.P4634161767463301169

`A120589(n+2)/Δ[n²]*A361037(n)`
-/

namespace A361029.P4634161767463301169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120589 (n + 2) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) * (A361037 n : ℚ)

end

end A361029.P4634161767463301169

namespace A361029

/-- `A120589(n+2)/Δ[n²]*A361037(n)` -/
def P4634161767463301169.Spec : Prop :=
  ∀ n, P4634161767463301169.a n = (A361029 n : ℚ)

end A361029

/-! ## A361029.P12757895684649853468

`(A126079(n+2)-A246432(n+2))*A361037(n)`
-/

namespace A361029.P12757895684649853468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126079 (n + 2) - A246432 (n + 2)) * A361037 n

end

end A361029.P12757895684649853468

namespace A361029

/-- `(A126079(n+2)-A246432(n+2))*A361037(n)` -/
def P12757895684649853468.Spec : Prop :=
  ∀ n, P12757895684649853468.a n = A361029 n

end A361029

/-! ## A361029.P4341788265638376028

`(A126324(2*n+1)-Δ[A126324(2*n)])*A361037(n)`
-/

namespace A361029.P4341788265638376028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126324 (2 * n + 1) - (f1 (n + 1) - f1 n)) * A361037 n

end

end A361029.P4341788265638376028

namespace A361029

/-- `(A126324(2*n+1)-Δ[A126324(2*n)])*A361037(n)` -/
def P4341788265638376028.Spec : Prop :=
  ∀ n, P4341788265638376028.a n = A361029 n

end A361029

/-!
# A361030: a(n) = 20160*(3*n)!/(n!*(n+3)!^2).

The programs for A361030, the canonical program `A361030.P1549552057574773990` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361030 has offset 0).

The definition of A361030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361030.P1549552057574773990

`3*(3*n-1)*(3*n-2)/(n+3)²*a(n-1)` with `a(0)=560, a(1)=210, a(2)=504`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361030

/-- `3*(3*n-1)*(3*n-2)/(n+3)²*a(n-1)` -/
def P1549552057574773990.Spec : Prop :=
  ∀ n, P1549552057574773990.a n = (A361030 n : ℚ)

end A361030

/-! ## A361030.P12205696027330489134

`1/5*A007272(n)*A361038(n)`
-/

namespace A361030.P12205696027330489134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A007272 n : ℚ) * (A361038 n : ℚ)

end

end A361030.P12205696027330489134

namespace A361030

/-- `1/5*A007272(n)*A361038(n)` -/
def P12205696027330489134.Spec : Prop :=
  ∀ n, P12205696027330489134.a n = (A361030 n : ℚ)

end A361030

/-!
# A361031: a(n) = (3^3)*(1*2*4*5*7*8*10*11)*(3*n)!/(n!*(n+4)!^2).

The programs for A361031, there is no canonical definition to state claims against.
-/

/-! ## A361031.P161925593242885687

`1/7*A348893(n)*A361039(n)`
-/

namespace A361031.P161925593242885687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 7 * (A348893 n : ℚ) * (A361039 n : ℚ)

end

end A361031.P161925593242885687

/-!
# A361033: a(n) = 3*(4*n)!/(n!*(n+1)!^3).

The programs for A361033, the canonical program `A361033.P1812972836915808614` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361033 has offset 0).

The definition of A361033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361033.P1812972836915808614

`4*(4*n-1)*(4*n-2)*(4*n-3)/(n+1)^3*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361033

/-- `4*(4*n-1)*(4*n-2)*(4*n-3)/(n+1)^3*a(n-1)` -/
def P1812972836915808614.Spec : Prop :=
  ∀ n, P1812972836915808614.a n = (A361033 n : ℚ)

end A361033

/-! ## A361033.P735947216806429427

`1/2*A007228(n)*A007226(n)*A000108(n)`
-/

namespace A361033.P735947216806429427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A007228 n : ℚ) * (A007226 n : ℚ) * (A000108 n : ℚ)

end

end A361033.P735947216806429427

namespace A361033

/-- `1/2*A007228(n)*A007226(n)*A000108(n)` -/
def P735947216806429427.Spec : Prop :=
  ∀ n, P735947216806429427.a n = (A361033 n : ℚ)

end A361033

/-! ## A361033.P4946984592676304371

`3*A008977(n)/(n+1)^3`
-/

namespace A361033.P4946984592676304371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A008977 n : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A361033.P4946984592676304371

namespace A361033

/-- `3*A008977(n)/(n+1)^3` -/
def P4946984592676304371.Spec : Prop :=
  ∀ n, P4946984592676304371.a n = (A361033 n : ℚ)

end A361033

/-! ## A361033.P16953316269135592726

`A000108(n)²*A038629(2*n)`
-/

namespace A361033.P16953316269135592726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 * A038629 (2 * n)

end

end A361033.P16953316269135592726

namespace A361033

/-- `A000108(n)²*A038629(2*n)` -/
def P16953316269135592726.Spec : Prop :=
  ∀ n, P16953316269135592726.a n = A361033 n

end A361033

/-! ## A361033.P1203615528150552801

`A361032(∑[n]+n)`
-/

namespace A361033.P1203615528150552801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361032 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A361033.P1203615528150552801

namespace A361033

/-- `A361032(∑[n]+n)` -/
def P1203615528150552801.Spec : Prop :=
  ∀ n, P1203615528150552801.a n = A361033 n

end A361033

/-!
# A361034: a(n) = 2520*(4*n)!/(n!*(n+2)!^3).

The programs for A361034, the canonical program `A361034.P3437768279328252196` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361034 has offset 0).

The definition of A361034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361034.P3437768279328252196

`4*(4*n-1)*(4*n-2)*(4*n-3)/(n+2)^3*a(n-1)` with `a(0)=315`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361034

/-- `4*(4*n-1)*(4*n-2)*(4*n-3)/(n+2)^3*a(n-1)` -/
def P3437768279328252196.Spec : Prop :=
  ∀ n, P3437768279328252196.a n = (A361034 n : ℚ)

end A361034

/-! ## A361034.P18124557809323029663

`A361032(∑[n+2]-1)`
-/

namespace A361034.P18124557809323029663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361032 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A361034.P18124557809323029663

namespace A361034

/-- `A361032(∑[n+2]-1)` -/
def P18124557809323029663.Spec : Prop :=
  ∀ n, P18124557809323029663.a n = A361034 n

end A361034

/-!
# A361035: a(n) = 9979200 * (4*n)!/(n!*(n+3)!^3).

The programs for A361035, there is no canonical definition to state claims against.
-/

/-! ## A361035.P7293537033092922043

`A361032(∑[n+3])`
-/

namespace A361035.P7293537033092922043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361035.P7293537033092922043

/-!
# A361036: a(n) = n! * [x^n] (1 + x)^n * exp(x*(1 + x)^n).

The programs for A361036, there is no canonical definition to state claims against.
-/

/-! ## A361036.P13079167213821276870

`A361600(A056220(n+1))`
-/

namespace A361036.P13079167213821276870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A056220 (n + 1)).toNat

end

end A361036.P13079167213821276870

/-! ## A361036.P7580125895764932581

`A361600(eq[2, A007913(n+1)])`
-/

namespace A361036.P7580125895764932581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361036.P7580125895764932581

/-! ## A361036.P9363195309567862217

`A361600(A031940(2*(n+1))-2)`
-/

namespace A361036.P9363195309567862217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A031940 (2 * (n + 1)) - 2).toNat

end

end A361036.P9363195309567862217

/-! ## A361036.P4818274696795122578

`A361600(A000217(2*n+1)+n)`
-/

namespace A361036.P4818274696795122578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A361036.P4818274696795122578

/-! ## A361036.P11754862041740727499

`A361600(A052905(2*n+1)-(5*n+4))`
-/

namespace A361036.P11754862041740727499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361600 (A052905 (2 * n + 1) - (5 * n + 4 : ℤ)).toNat

end

end A361036.P11754862041740727499

/-!
# A361037: a(n) = 20*(3*n)!/((2*n)!*(n+2)!).

The programs for A361037, the canonical program `A361037.P4554012865254154430` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361037 has offset 0).

The definition of A361037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361037.P4554012865254154430

`20*(3*n)!/((2*n)!*(n+2)!)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361037

/-- `20*(3*n)!/((2*n)!*(n+2)!)` -/
def P4554012865254154430.Spec : Prop :=
  ∀ n, P4554012865254154430.a n = (A361037 n : ℚ)

end A361037

/-! ## A361037.P11249157585805502210

`A361029(n)/A007054(n)`
-/

namespace A361037.P11249157585805502210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361029 n : ℚ) / (A007054 n : ℚ)

end

end A361037.P11249157585805502210

namespace A361037

/-- `A361029(n)/A007054(n)` -/
def P11249157585805502210.Spec : Prop :=
  ∀ n, P11249157585805502210.a n = (A361037 n : ℚ)

end A361037

/-! ## A361037.P16007718587975829441

`10/A000108(n)*A005789(n)`
-/

namespace A361037.P16007718587975829441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (A000108 n : ℚ) * (A005789 n : ℚ)

end

end A361037.P16007718587975829441

namespace A361037

/-- `10/A000108(n)*A005789(n)` -/
def P16007718587975829441.Spec : Prop :=
  ∀ n, P16007718587975829441.a n = (A361037 n : ℚ)

end A361037

/-! ## A361037.P2363977216073985993

`A361029(n)/A135573(A034856(n+1))`
-/

namespace A361037.P2363977216073985993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361029 n : ℚ) / (A135573 (A034856 (n + 1)).toNat : ℚ)

end

end A361037.P2363977216073985993

namespace A361037

/-- `A361029(n)/A135573(A034856(n+1))` -/
def P2363977216073985993.Spec : Prop :=
  ∀ n, P2363977216073985993.a n = (A361037 n : ℚ)

end A361037

/-!
# A361040: a(n) = 420*(3*n)!/(n!*(2*n + 3)!).

The programs for A361040, the canonical program `A361040.P3795235044807817165` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361040 has offset 0).

The definition of A361040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361040.P3795235044807817165

`420*(3*n)!/(n!*(2*n+3)!)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361040

/-- `420*(3*n)!/(n!*(2*n+3)!)` -/
def P3795235044807817165.Spec : Prop :=
  ∀ n, P3795235044807817165.a n = (A361040 n : ℚ)

end A361040

/-! ## A361040.P945479923236043181

`(n/2+1)*A361041(n)`
-/

namespace A361040.P945479923236043181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A361041 n : ℚ)

end

end A361040.P945479923236043181

namespace A361040

/-- `(n/2+1)*A361041(n)` -/
def P945479923236043181.Spec : Prop :=
  ∀ n, P945479923236043181.a n = (A361040 n : ℚ)

end A361040

/-! ## A361040.P2870582117589979970

`A302042((n+2)*A361041(n))`
-/

namespace A361040.P2870582117589979970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 ((n + 2 : ℤ) * A361041 n).toNat

end

end A361040.P2870582117589979970

namespace A361040

/-- `A302042((n+2)*A361041(n))` -/
def P2870582117589979970.Spec : Prop :=
  ∀ n, P2870582117589979970.a n = A361040 n

end A361040

/-!
# A361041: a(n) = 1680*(3*n)!/(n!*(2*n + 4)!).

The programs for A361041, the canonical program `A361041.P11492204058538399731` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361041 has offset 0).

The definition of A361041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361041.P11492204058538399731

`A361040(n)/(n/2+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A361041

/-- `A361040(n)/(n/2+1)` -/
def P11492204058538399731.Spec : Prop :=
  ∀ n, P11492204058538399731.a n = (A361041 n : ℚ)

end A361041

/-!
# A361042: Triangle read by rows: T(n, k) = Sum_{j=0..n} j! * binomial(n - j, n - k).

The programs for A361042, there is no canonical definition to state claims against.
-/

/-! ## A361042.P10780889690930823678

`A049108(A132945(n))`
-/

namespace A361042.P10780889690930823678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A132945 n).toNat

end

end A361042.P10780889690930823678

/-! ## A361042.P14946176205510674048

`A228720(A071948(n))`
-/

namespace A361042.P14946176205510674048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228720 (A071948 n).toNat

end

end A361042.P14946176205510674048

/-! ## A361042.P10343467481155224485

`A228720(A193589(n))`
-/

namespace A361042.P10343467481155224485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228720 (A193589 n).toNat

end

end A361042.P10343467481155224485

/-! ## A361042.P10130969193899311731

`A228720(A223092(n))`
-/

namespace A361042.P10130969193899311731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228720 (A223092 n).toNat

end

end A361042.P10130969193899311731

/-! ## A361042.P7210546105417325333

`A076832(A072941(n+1))`
-/

namespace A361042.P7210546105417325333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076832 (A072941 (n + 1)).toNat

end

end A361042.P7210546105417325333

/-!
# A361043: Array read by descending antidiagonals. A(n, k) is, if n > 0, the number of multiset permutations of {0, 1} of length n * k where the number of occurrences of 1 are multiples of n. A(0, k) = k + 1.

The programs for A361043, there is no canonical definition to state claims against.
-/

/-! ## A361043.P7936291950224634938

`A308500(∑[2*n]%comp[∑[n]])`
-/

namespace A361043.P7936291950224634938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A361043.P7936291950224634938

/-! ## A361043.P12000400587230905811

`A308500(A061579(n))`
-/

namespace A361043.P12000400587230905811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (A061579 n).toNat

end

end A361043.P12000400587230905811

/-! ## A361043.P5020881030625306529

`A308500(A038722(n+2))`
-/

namespace A361043.P5020881030625306529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (A038722 (n + 2)).toNat

end

end A361043.P5020881030625306529

/-! ## A361043.P3621555740413902599

`A122203(n)+A090338(A106566(n))`
-/

namespace A361043.P3621555740413902599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 n + A090338 (A106566 n).toNat

end

end A361043.P3621555740413902599

/-! ## A361043.P3032825037385726122

`A161920(A161966(n+1)^A122283(n))`
-/

namespace A361043.P3032825037385726122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161920 (SequenceMachineLib.roundAway ((A161966 (n + 1) : ℚ) ^ (A122283 n : ℤ))).toNat

end

end A361043.P3032825037385726122

/-!
# A361045: Array read by descending antidiagonals. A(n, k) is, if n > 0, the number of multiset combinations of {0, 1} whose type is defined in the comments. A(0, k) = k + 1.

The programs for A361045, there is no canonical definition to state claims against.
-/

/-! ## A361045.P4391871207519162467

`A078812(n)-A241462(A028657(n))`
-/

namespace A361045.P4391871207519162467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A241462 (A028657 n).toNat

end

end A361045.P4391871207519162467

/-! ## A361045.P8518218053534470630

`A078812(n)-A006925(A331436(n))`
-/

namespace A361045.P8518218053534470630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A006925 (A331436 n).toNat

end

end A361045.P8518218053534470630

/-! ## A361045.P1786937942897089257

`A078812(n)-A225099(A342335(n))`
-/

namespace A361045.P1786937942897089257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A225099 (A342335 n).toNat

end

end A361045.P1786937942897089257

/-!
# A361046: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(3*n) * A(x)^(2*n) / n!.

The programs for A361046, there is no canonical definition to state claims against.
-/

/-! ## A361046.P12820295922526755974

`(2*n+1)*A361047(n+1)`
-/

namespace A361046.P12820295922526755974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A361047 (n + 1)

end

end A361046.P12820295922526755974

/-! ## A361046.P12576068749412672119

`A361047(n+1)/2*A016825(n)`
-/

namespace A361046.P12576068749412672119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361047 (n + 1) : ℚ) / 2 * (A016825 n : ℚ)

end

end A361046.P12576068749412672119

/-! ## A361046.P17062136893502302296

`A361047(n+1)*A361398(A024036(n))`
-/

namespace A361046.P17062136893502302296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361047 (n + 1) * A361398 (A024036 n).toNat

end

end A361046.P17062136893502302296

/-!
# A361047: Expansion of g.f. A(x) satisfying A(x) = Series_Reversion(x - x^3*A'(x)^2).

The programs for A361047, there is no canonical definition to state claims against.
-/

/-! ## A361047.P866468976096051760

`A361046(n)/Δ[n²]`
-/

namespace A361047.P866468976096051760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361046 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A361047.P866468976096051760

/-! ## A361047.P11895338200091908170

`floor(A361046(n)/A005408(n))`
-/

namespace A361047.P11895338200091908170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361046 n : ℚ) / (A005408 n : ℚ)⌋

end

end A361047.P11895338200091908170

/-! ## A361047.P9051110978441277361

`round(A361046(n)/Δ[A189836(n)])`
-/

namespace A361047.P9051110978441277361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A361046 n : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A361047.P9051110978441277361

/-! ## A361047.P6183688412141380696

`floor(A361046(n)/A214682(2*n+1))`
-/

namespace A361047.P6183688412141380696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361046 n : ℚ) / (A214682 (2 * n + 1) : ℚ)⌋

end

end A361047.P6183688412141380696

/-! ## A361047.P7485730619871422845

`ceil(A361046(n)/A000027(2*n+1))`
-/

namespace A361047.P7485730619871422845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A361046 n : ℚ) / (A000027 (2 * n + 1) : ℚ)⌉

end

end A361047.P7485730619871422845

/-!
# A361048: Expansion of g.f. A(x) satisfying a(n) = [x^(n-1)] A(x)^(n+1) for n >= 1.

The programs for A361048, there is no canonical definition to state claims against.
-/

/-! ## A361048.P2630498797270822584

`A190327(A014500(n))-1`
-/

namespace A361048.P2630498797270822584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190327 (A014500 n).toNat - 1

end

end A361048.P2630498797270822584

/-! ## A361048.P8542117296589589255

`A261929(A241706(n+1)+2)`
-/

namespace A361048.P8542117296589589255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261929 (A241706 (n + 1) + 2).toNat

end

end A361048.P8542117296589589255

/-!
# A361049: G.f. satisfies: A(x) = (1/x)*Series_Reversion( x/(1 + x*A(x)^2 + x^2*A(x)*A'(x)) ).

The programs for A361049, there is no canonical definition to state claims against.
-/

/-! ## A361049.P2762154142869465906

`A103354(A199481(n)+A000312(n))`
-/

namespace A361049.P2762154142869465906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (A199481 n + A000312 n).toNat

end

end A361049.P2762154142869465906

/-! ## A361049.P10743461470289943472

`A340321(A120051(n))+A138272(n)`
-/

namespace A361049.P10743461470289943472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340321 (A120051 n).toNat + A138272 n

end

end A361049.P10743461470289943472

/-!
# A361050: Expansion of g.f. A(x,y) satisfying y/x = Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x,y)^(3*n) - 1/A(x,y)^(3*n+1)), as a triangle read by rows.

The programs for A361050, there is no canonical definition to state claims against.
-/

/-! ## A361050.P14915390914607486575

`A318781(A027907(3*(n+1)))*A361550(n)`
-/

namespace A361050.P14915390914607486575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318781 (A027907 (3 * (n + 1))).toNat * A361550 n

end

end A361050.P14915390914607486575

/-!
# A361053: Expansion of e.g.f. A(x) satisfying A(x) = Sum_{n>=0} (A(x)^n + 2)^n * x^n/n!.

The programs for A361053, there is no canonical definition to state claims against.
-/

/-! ## A361053.P13993216497315535310

`or(n+1, A100959(A349525(n)))`
-/

namespace A361053.P13993216497315535310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A100959 (A349525 n).toNat)

end

end A361053.P13993216497315535310

/-!
# A361054: Expansion of e.g.f. A(x) satisfying A(x) = Sum_{n>=0} (A(x)^n + 3)^n * x^n/n!.

The programs for A361054, there is no canonical definition to state claims against.
-/

/-! ## A361054.P13356284178531710084

`record[2-xor(1, -n)]*A098488(A360344(n))`
-/

namespace A361054.P13356284178531710084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A098488 (A360344 n).toNat

end

end A361054.P13356284178531710084

/-!
# A361056: Expansion of e.g.f. A(x) satisfying A(x) = Sum_{n>=0} (2*A(x)^n + 1)^n * x^n/n!.

The programs for A361056, there is no canonical definition to state claims against.
-/

/-! ## A361056.P4169103067704824133

`A362734(n)+A022556(C(A000079(n), n))`
-/

namespace A361056.P4169103067704824133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362734 n + A022556 (Nat.choose (A000079 n).toNat n)

end

end A361056.P4169103067704824133

/-!
# A361063: Multiplicative with a(p^e) = sigma_2(e), where sigma_2 = A001157.

The programs for A361063, the canonical program `A361063.P1577983195630285595` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361063 has offset 1).

The definition of A361063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361063.P1577983195630285595

`∏{e}[n+1, A001157(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A361063

/-- `∏{e}[n+1, A001157(#)]` -/
def P1577983195630285595.Spec : Prop :=
  ∀ n, P1577983195630285595.a n = A361063 (n + 1)

theorem P1577983195630285595.correct : P1577983195630285595.Spec := by
  intro n
  simp only [A361063, Nat.add_sub_cancel]

end A361063

/-! ## A361063.P175524271585057694

`∏{e}[n+1, A035316(#²)]`
-/

namespace A361063.P175524271585057694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A035316 (Nat.factorization (f1 n) p ^ 2)

end

end A361063.P175524271585057694

namespace A361063

/-- `∏{e}[n+1, A035316(#²)]` -/
def P175524271585057694.Spec : Prop :=
  ∀ n, P175524271585057694.a n = A361063 (n + 1)

end A361063

/-! ## A361063.P2983445123496347708

`∏{e}[n+1, A076752(#²)]`
-/

namespace A361063.P2983445123496347708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A076752 (Nat.factorization (f1 n) p ^ 2)

end

end A361063.P2983445123496347708

namespace A361063

/-- `∏{e}[n+1, A076752(#²)]` -/
def P2983445123496347708.Spec : Prop :=
  ∀ n, P2983445123496347708.a n = A361063 (n + 1)

end A361063

/-! ## A361063.P6053315281851911721

`∏{p}[n+1, A001157(val(n+1, #))]`
-/

namespace A361063.P6053315281851911721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001157 (SequenceMachineLib.valuation (n + 1) p)

end

end A361063.P6053315281851911721

namespace A361063

/-- `∏{p}[n+1, A001157(val(n+1, #))]` -/
def P6053315281851911721.Spec : Prop :=
  ∀ n, P6053315281851911721.a n = A361063 (n + 1)

end A361063

/-! ## A361063.P10671995405193728685

`A001157(A072411(n+1)%A291718(n+3))`
-/

namespace A361063.P10671995405193728685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (Int.tmod (A072411 (n + 1)) (A291718 (n + 3))).toNat

end

end A361063.P10671995405193728685

namespace A361063

/-- `A001157(A072411(n+1)%A291718(n+3))` -/
def P10671995405193728685.Spec : Prop :=
  ∀ n, P10671995405193728685.a n = A361063 (n + 1)

end A361063

/-!
# A361064: Multiplicative with a(p^e) = sigma_3(e), where sigma_3 = A001158.

The programs for A361064, the canonical program `A361064.P12223583230008359581` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361064 has offset 1).

The definition of A361064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361064.P12223583230008359581

`∏{e}[n+1, A001158(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A361064

/-- `∏{e}[n+1, A001158(#)]` -/
def P12223583230008359581.Spec : Prop :=
  ∀ n, P12223583230008359581.a n = A361064 (n + 1)

theorem P12223583230008359581.correct : P12223583230008359581.Spec := by
  intro n
  simp only [A361064, Nat.add_sub_cancel]

end A361064

/-! ## A361064.P8456523259193236491

`A000027(∏{e}[xor(n, -1), A001158(#)])`
-/

namespace A361064.P8456523259193236491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001158 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A361064.P8456523259193236491

namespace A361064

/-- `A000027(∏{e}[xor(n, -1), A001158(#)])` -/
def P8456523259193236491.Spec : Prop :=
  ∀ n, P8456523259193236491.a n = A361064 (n + 1)

end A361064

/-! ## A361064.P1774812255978130789

`A001158(A005361(n+1)%A361027(n+4))`
-/

namespace A361064.P1774812255978130789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (Int.tmod (A005361 (n + 1)) (A361027 (n + 4))).toNat

end

end A361064.P1774812255978130789

namespace A361064

/-- `A001158(A005361(n+1)%A361027(n+4))` -/
def P1774812255978130789.Spec : Prop :=
  ∀ n, P1774812255978130789.a n = A361064 (n + 1)

end A361064

/-! ## A361064.P439588921994596753

`A049418(A360970(n+1)%A361027(n+4))`
-/

namespace A361064.P439588921994596753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049418 (Int.tmod (A360970 (n + 1)) (A361027 (n + 4))).toNat

end

end A361064.P439588921994596753

namespace A361064

/-- `A049418(A360970(n+1)%A361027(n+4))` -/
def P439588921994596753.Spec : Prop :=
  ∀ n, P439588921994596753.a n = A361064 (n + 1)

end A361064

/-! ## A361064.P11422417088113318259

`A001158(A005361(n+1))%A358228(2*(n+2))`
-/

namespace A361064.P11422417088113318259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (A005361 (n + 1)).toNat) (A358228 (2 * (n + 2)))

end

end A361064.P11422417088113318259

namespace A361064

/-- `A001158(A005361(n+1))%A358228(2*(n+2))` -/
def P11422417088113318259.Spec : Prop :=
  ∀ n, P11422417088113318259.a n = A361064 (n + 1)

end A361064

/-!
# A361065: E.g.f. satisfies A(x) = exp( (x/(1-x)) * A(x)^2 ).

The programs for A361065, there is no canonical definition to state claims against.
-/

/-! ## A361065.P323942600638362226

`A326835(A295763(n))`
-/

namespace A361065.P323942600638362226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (A295763 n).toNat

end

end A361065.P323942600638362226

/-!
# A361066: E.g.f. satisfies A(x) = exp( (x/(1-x)) * A(x)^3 ).

The programs for A361066, there is no canonical definition to state claims against.
-/

/-! ## A361066.P6577100806921860007

`A045755(n)-A025428(A045755(n))`
-/

namespace A361066.P6577100806921860007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045755 n - A025428 (A045755 n).toNat

end

end A361066.P6577100806921860007

/-!
# A361067: E.g.f. satisfies A(x) = exp( x/((1-x) * A(x)) ).

The programs for A361067, there is no canonical definition to state claims against.
-/

/-! ## A361067.P6838278267006744970

`A266646(n*A000944(n+1)+1)`
-/

namespace A361067.P6838278267006744970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 ((n : ℤ) * A000944 (n + 1) + 1).toNat

end

end A361067.P6838278267006744970

/-! ## A361067.P13372407507447992028

`A352919(A352945(n+3))%A352954(3*n+4)`
-/

namespace A361067.P13372407507447992028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352919 (A352945 (n + 3)).toNat) (A352954 (3 * n + 4))

end

end A361067.P13372407507447992028

/-!
# A361068: E.g.f. satisfies A(x) = exp( x/((1-x) * A(x)^2) ).

The programs for A361068, there is no canonical definition to state claims against.
-/

/-! ## A361068.P8884688884405301731

`1-A137312(A137265(n))`
-/

namespace A361068.P8884688884405301731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137312 (A137265 n).toNat

end

end A361068.P8884688884405301731

/-!
# A361070: a(n) is the number of occurrences of n in A360923.

The programs for A361070, there is no canonical definition to state claims against.
-/

/-! ## A361070.P12463611656079123960

`A112751(A184936(n))`
-/

namespace A361070.P12463611656079123960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112751 (A184936 n).toNat

end

end A361070.P12463611656079123960

/-! ## A361070.P16583561033630004563

`A112751(A001384(n+1))`
-/

namespace A361070.P16583561033630004563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112751 (A001384 (n + 1)).toNat

end

end A361070.P16583561033630004563

/-!
# A361073: Lexicographically least increasing sequence of triprimes (A014612) a(n) such that a(n) - a(n-1) and a(n) + a(n-1) are also triprimes.

The programs for A361073, there is no canonical definition to state claims against.
-/

/-! ## A361073.P4648811479288046348

`A368078(n+1)/A000122(A368049(n+1))`
-/

namespace A361073.P4648811479288046348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368078 (n + 1) : ℚ) / (A000122 (A368049 (n + 1)).toNat : ℚ)

end

end A361073.P4648811479288046348

/-! ## A361073.P9217618385422997797

`A368078(n+1)/A020639(A222929(n+1))`
-/

namespace A361073.P9217618385422997797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368078 (n + 1) : ℚ) / (A020639 (A222929 (n + 1)).toNat : ℚ)

end

end A361073.P9217618385422997797

/-!
# A361074: Sum of the j-th number with binary weight n-j+1 over all j in [n].

The programs for A361074, there is no canonical definition to state claims against.
-/

/-! ## A361074.P4105239487482288062

`A266124(n)-A353392(A033442(n))`
-/

namespace A361074.P4105239487482288062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266124 n - A353392 (A033442 n).toNat

end

end A361074.P4105239487482288062

/-! ## A361074.P16136366919768133768

`A266124(n)-A353392(A161680(n))`
-/

namespace A361074.P16136366919768133768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266124 n - A353392 (A161680 n).toNat

end

end A361074.P16136366919768133768

/-! ## A361074.P17379321952828884124

`A222047(2*n)-A071625(A270447(n))`
-/

namespace A361074.P17379321952828884124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 (2 * n) - A071625 (A270447 n).toNat

end

end A361074.P17379321952828884124

/-!
# A361075: Products of exactly 7 distinct odd primes.

The programs for A361075, there is no canonical definition to state claims against.
-/

/-! ## A361075.P4952044577867588328

`A123322(n+1)/A324291(A023204(n+1))`
-/

namespace A361075.P4952044577867588328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123322 (n + 1) : ℚ) / (A324291 (A023204 (n + 1)).toNat : ℚ)

end

end A361075.P4952044577867588328

/-! ## A361075.P12438919860321054718

`A123322(n+1)/A286324(A225648(3*n+4))`
-/

namespace A361075.P12438919860321054718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123322 (n + 1) : ℚ) / (A286324 (A225648 (3 * n + 4)).toNat : ℚ)

end

end A361075.P12438919860321054718

/-! ## A361075.P11348400191744380035

`A123322(n+1)/A068068(A000040(3*n+5))`
-/

namespace A361075.P11348400191744380035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123322 (n + 1) : ℚ) / (A068068 (A000040 (3 * n + 5)).toNat : ℚ)

end

end A361075.P11348400191744380035

/-! ## A361075.P18082350798070178060

`A123322(n+1)/A286324(A068228(n+1))`
-/

namespace A361075.P18082350798070178060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123322 (n + 1) : ℚ) / (A286324 (A068228 (n + 1)).toNat : ℚ)

end

end A361075.P18082350798070178060

/-! ## A361075.P18318265498104854471

`A123322(n+1)/A001227(A001359(n+1))`
-/

namespace A361075.P18318265498104854471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123322 (n + 1) : ℚ) / (A001227 (A001359 (n + 1)).toNat : ℚ)

end

end A361075.P18318265498104854471

/-! ## A361075.P12558159827893105512

`A123322(n+1)/A020639(A062880(3*(n+1)))`
-/

namespace A361075.P12558159827893105512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123322 (n + 1) : ℚ) / (A020639 (A062880 (3 * (n + 1))).toNat : ℚ)

end

end A361075.P12558159827893105512

/-! ## A361075.P11358878493665673030

`A123322(n+1)/A324309(A324315(n+1))`
-/

namespace A361075.P11358878493665673030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123322 (n + 1) : ℚ) / (A324309 (A324315 (n + 1)).toNat : ℚ)

end

end A361075.P11358878493665673030

/-! ## A361075.P9323339094063589109

`A123322(n+1)/A324309(A324295(n+5))`
-/

namespace A361075.P9323339094063589109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123322 (n + 1) : ℚ) / (A324309 (A324295 (n + 5)).toNat : ℚ)

end

end A361075.P9323339094063589109

/-!
# A361076: Array, read by ascending antidiagonals, whose n-th row consists of the powers of 2, if n = 1; of the primes of the form (2*n-1)*2^k+1, if they exist and n > 1; and of zeros otherwise.

The programs for A361076, there is no canonical definition to state claims against.
-/

/-! ## A361076.P8132995972910903288

`A279709(A390761(n+1))`
-/

namespace A361076.P8132995972910903288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279709 (A390761 (n + 1)).toNat

end

end A361076.P8132995972910903288

/-! ## A361076.P18383522403299987981

`A026300(n)*A213982(A077969(n+1))`
-/

namespace A361076.P18383522403299987981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 n * A213982 (A077969 (n + 1)).toNat

end

end A361076.P18383522403299987981

/-! ## A361076.P15894176920301336698

`A279709(n+1)%A275435(A241985(n))`
-/

namespace A361076.P15894176920301336698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279709 (n + 1)) (A275435 (A241985 n).toNat)

end

end A361076.P15894176920301336698

/-! ## A361076.P3893428689771129670

`gcd(A081120(A007283(n)), A279709(n+1))`
-/

namespace A361076.P3893428689771129670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081120 (A007283 n).toNat) (A279709 (n + 1))

end

end A361076.P3893428689771129670

/-! ## A361076.P5031968178615240771

`and(A184153(A008713(n)), A279709(n+1))`
-/

namespace A361076.P5031968178615240771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184153 (A008713 n).toNat) (A279709 (n + 1))

end

end A361076.P5031968178615240771

/-!
# A361077: a(n) = largest sqrt(2*n)-smooth divisor of binomial(2*n, n).

The programs for A361077, the canonical program `A361077.P18103522662068847594` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361077 has offset 0).

The definition of A361077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361077.P18103522662068847594

`gcd(A000984(n), A010552(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A361077

/-- `gcd(A000984(n), A010552(n))` -/
def P18103522662068847594.Spec : Prop :=
  ∀ n, (P18103522662068847594.a n : ℤ) = A361077 n

theorem P18103522662068847594.correct : P18103522662068847594.Spec := by
  intro n
  simp only [A361077]

end A361077

/-! ## A361077.P18348022373537815678

`gcd(A010552(n+1), A263931(n))`
-/

namespace A361077.P18348022373537815678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010552 (n + 1)) (A263931 n)

end

end A361077.P18348022373537815678

namespace A361077

/-- `gcd(A010552(n+1), A263931(n))` -/
def P18348022373537815678.Spec : Prop :=
  ∀ n, (P18348022373537815678.a n : ℤ) = A361077 n

end A361077

/-! ## A361077.P1683707456466271211

`gcd(Δ[A010552(n)], A182923(2*n))`
-/

namespace A361077.P1683707456466271211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A182923 (2 * n))

end

end A361077.P1683707456466271211

namespace A361077

/-- `gcd(Δ[A010552(n)], A182923(2*n))` -/
def P1683707456466271211.Spec : Prop :=
  ∀ n, (P1683707456466271211.a n : ℤ) = A361077 n

end A361077

/-! ## A361077.P8316304799192139073

`gcd(A145891(2*n)², A001405(2*n))`
-/

namespace A361077.P8316304799192139073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145891 (2 * n) ^ 2) (A001405 (2 * n))

end

end A361077.P8316304799192139073

namespace A361077

/-- `gcd(A145891(2*n)², A001405(2*n))` -/
def P8316304799192139073.Spec : Prop :=
  ∀ n, (P8316304799192139073.a n : ℤ) = A361077 n

end A361077

/-! ## A361077.P2419405970735208362

`gcd(A000027(A010552(n)), A263931(n))`
-/

namespace A361077.P2419405970735208362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A010552 n).toNat) (A263931 n)

end

end A361077.P2419405970735208362

namespace A361077

/-- `gcd(A000027(A010552(n)), A263931(n))` -/
def P2419405970735208362.Spec : Prop :=
  ∀ n, (P2419405970735208362.a n : ℤ) = A361077 n

end A361077

/-!
# A361078: Numbers k for which k = gcd(k', k"), where k' is the arithmetic derivative of k (A003415) and k" is the second derivative of k (A068346).

The programs for A361078, there is no canonical definition to state claims against.
-/

/-! ## A361078.P12658008003941312825

`filter[A072873(n+1), A369006(#)]`
-/

namespace A361078.P12658008003941312825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369006 (f1 j).toNat = 1) n)

end

end A361078.P12658008003941312825

/-! ## A361078.P13193970549826097637

`A072873(lt[A057708(n+1), A087687(n+1)])`
-/

namespace A361078.P13193970549826097637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361078.P13193970549826097637

/-! ## A361078.P16384366490231196398

`A072873(lt[A251637(n+5), A183420(2*n+1)])`
-/

namespace A361078.P16384366490231196398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251637 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183420 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361078.P16384366490231196398

/-! ## A361078.P8563134575739820682

`record[A085731(A001602(n+2))]`
-/

namespace A361078.P8563134575739820682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A001602 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361078.P8563134575739820682

/-!
# A361079: Number of integers in [n .. 2n-1] having the same binary weight as n.

The programs for A361079, there is no canonical definition to state claims against.
-/

/-! ## A361079.P4797453781411597307

`A263017(2*n)-A263017(n)`
-/

namespace A361079.P4797453781411597307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (2 * n) - A263017 n

end

end A361079.P4797453781411597307

/-! ## A361079.P17287476568744957413

`A068076(2*n)-A068076(n)`
-/

namespace A361079.P17287476568744957413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068076 (2 * n) - A068076 n

end

end A361079.P17287476568744957413

/-! ## A361079.P5203260316848702491

`A263328(2*n)-A263328(n)`
-/

namespace A361079.P5203260316848702491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263328 (2 * n) - A263328 n

end

end A361079.P5203260316848702491

/-! ## A361079.P10641123019114200907

`A138470(A001202(n+1))`
-/

namespace A361079.P10641123019114200907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138470 (A001202 (n + 1)).toNat

end

end A361079.P10641123019114200907

/-! ## A361079.P3339545488726502884

`A235224(A000120(n)^A340828(n+1))`
-/

namespace A361079.P3339545488726502884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A000120 n : ℚ) ^ (A340828 (n + 1) : ℤ))).toNat

end

end A361079.P3339545488726502884

/-!
# A361081: Records in A360224.

The programs for A361081, there is no canonical definition to state claims against.
-/

/-! ## A361081.P4393400237161951829

`record[A360224(n+1)]`
-/

namespace A361081.P4393400237161951829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361081.P4393400237161951829

/-! ## A361081.P14525142104462424904

`A360224(A361080(n+1))`
-/

namespace A361081.P14525142104462424904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360224 (A361080 (n + 1)).toNat

end

end A361081.P14525142104462424904

/-! ## A361081.P6270386200473781084

`lt[A064438(n+1), A306927(A335485(n+1))]`
-/

namespace A361081.P6270386200473781084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (A335485 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361081.P6270386200473781084

/-!
# A361082: Number of 3 X 3 matrices with unit determinant and positive integer entries whose sum is n.

The programs for A361082, there is no canonical definition to state claims against.
-/

/-! ## A361082.P8675703381730826813

`72%A025452(A003432(n))`
-/

namespace A361082.P8675703381730826813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 72 (A025452 (A003432 n).toNat)

end

end A361082.P8675703381730826813

/-! ## A361082.P7171285744312940729

`Δ[A213625(A218887(n+1))]`
-/

namespace A361082.P7171285744312940729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213625 (A218887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361082.P7171285744312940729

/-! ## A361082.P6920941422098040715

`lcm(n-∑{digits}[n, #], A181919(A007602(n+1)))`
-/

namespace A361082.P6920941422098040715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)) (A181919 (A007602 (n + 1)).toNat)

end

end A361082.P6920941422098040715

/-! ## A361082.P82212981179060839

`lcm(A318994(2*(n+1)), A325223(A008863(n)))`
-/

namespace A361082.P82212981179060839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A318994 (2 * (n + 1))) (A325223 (A008863 n).toNat)

end

end A361082.P82212981179060839

/-! ## A361082.P8059400723057567408

`A349403(A007953(A349403(A003422(A069816(n)))))`
-/

namespace A361082.P8059400723057567408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349403 (A007953 (A349403 (A003422 (A069816 n).toNat).toNat).toNat).toNat

end

end A361082.P8059400723057567408

/-!
# A361083: Number of 3 X 3 matrices with unit determinant and nonnegative integer entries whose sum is n.

The programs for A361083, there is no canonical definition to state claims against.
-/

/-! ## A361083.P2389567133208415869

`A293137(A115400(n))`
-/

namespace A361083.P2389567133208415869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A115400 n).toNat

end

end A361083.P2389567133208415869

/-! ## A361083.P3854803921930103821

`A231011(A011925(n+1))`
-/

namespace A361083.P3854803921930103821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231011 (A011925 (n + 1)).toNat

end

end A361083.P3854803921930103821

/-! ## A361083.P17510093762542650084

`A053604(A132846(n)+3)`
-/

namespace A361083.P17510093762542650084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 (A132846 n + 3).toNat

end

end A361083.P17510093762542650084

/-!
# A361085: Least prime p > prime(n) such that at least one of p * prime(n)# +- 1 is not squarefree, where prime(n)# is the n-th primorial A002110(n).

The programs for A361085, there is no canonical definition to state claims against.
-/

/-! ## A361085.P10110788790901607330

`A092621(lt[A155211(n+1), A000728(n)])`
-/

namespace A361085.P10110788790901607330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092621 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361085.P10110788790901607330

/-!
# A361086: 

The programs for A361086, there is no canonical definition to state claims against.
-/

/-! ## A361086.P1866794390598999906

`(a(n-1)²-1)*a(n-1)` with `a(0)=2`
-/

namespace A361086.P1866794390598999906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) ^ 2 - 1) * a (n - 1)

end

end A361086.P1866794390598999906

/-!
# A361088: Irregular table, read by rows, where row n holds the tau signature of n, i.e., the shortest sequence (tau(n+k), 0 <= k <= m) that uniquely identifies n; tau = A000005.

The programs for A361088, there is no canonical definition to state claims against.
-/

/-! ## A361088.P2072806703848472761

`A055181(A055199(n)+A003622(n+1))`
-/

namespace A361088.P2072806703848472761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055181 (A055199 n + A003622 (n + 1)).toNat

end

end A361088.P2072806703848472761

/-! ## A361088.P11529463594428166630

`A002828(A278900(n)+A000523(n+1))`
-/

namespace A361088.P11529463594428166630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A278900 n + A000523 (n + 1)).toNat

end

end A361088.P11529463594428166630

/-! ## A361088.P128337194810003250

`A297770(A181821(n+1)*A315629(n))`
-/

namespace A361088.P128337194810003250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A181821 (n + 1) * A315629 n).toNat

end

end A361088.P128337194810003250

/-! ## A361088.P18241700609712339498

`gcd(A164978(A109748(n+1)), A359133(n))`
-/

namespace A361088.P18241700609712339498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164978 (A109748 (n + 1)).toNat) (A359133 n)

end

end A361088.P18241700609712339498

/-! ## A361088.P5843207805812290956

`A257773(A005251(n)*A054353(n+2))`
-/

namespace A361088.P5843207805812290956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257773 (A005251 n * A054353 (n + 2)).toNat

end

end A361088.P5843207805812290956

/-!
# A361089: a(n) = smallest integer x such that Sum_{k = 2..x} 1/(k*log(log(k))) > n.

The programs for A361089, there is no canonical definition to state claims against.
-/

/-! ## A361089.P15496764199993311108

`A170888(A000129(n))+3+n`
-/

namespace A361089.P15496764199993311108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170888 (A000129 n).toNat + 3 + (n : ℤ)

end

end A361089.P15496764199993311108

/-! ## A361089.P13150634356873160590

`A392165(A001349(n))+A319559(n+3)`
-/

namespace A361089.P13150634356873160590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392165 (A001349 n).toNat + A319559 (n + 3)

end

end A361089.P13150634356873160590

/-!
# A361090: E.g.f. satisfies A(x) = exp( x/(1 - x/A(x)) ).

The programs for A361090, there is no canonical definition to state claims against.
-/

/-! ## A361090.P8354185776571033069

`A000255(n)-A160124(A000108(n))`
-/

namespace A361090.P8354185776571033069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 n - A160124 (A000108 n).toNat

end

end A361090.P8354185776571033069

/-! ## A361090.P10201652268187093230

`A088305(n)-A325228(A000108(n))`
-/

namespace A361090.P10201652268187093230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n - A325228 (A000108 n).toNat

end

end A361090.P10201652268187093230

/-!
# A361092: E.g.f. satisfies A(x) = exp( x/(1 - x/A(x)^3) ).

The programs for A361092, there is no canonical definition to state claims against.
-/

/-! ## A361092.P843388119369561355

`a(n-1)-A008926(n+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A361092.P843388119369561355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) - A008926 (n + 1)

end

end A361092.P843388119369561355

/-!
# A361093: E.g.f. A(x) satisfies A(x) = exp( 1/(1 - x * A(x)^2) - 1 ).

The programs for A361093, there is no canonical definition to state claims against.
-/

/-! ## A361093.P7929105051273817922

`A118764(A061257(n²))`
-/

namespace A361093.P7929105051273817922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (A061257 (n ^ 2)).toNat

end

end A361093.P7929105051273817922

/-!
# A361094: E.g.f. A(x) satisfies A(x) = exp( 1/(1 - x * A(x)^3) - 1 ).

The programs for A361094, there is no canonical definition to state claims against.
-/

/-! ## A361094.P4280906716249341729

`A055265(A367135(n))`
-/

namespace A361094.P4280906716249341729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A367135 n).toNat

end

end A361094.P4280906716249341729

/-!
# A361097: E.g.f. A(x) satisfies A(x) = exp( 1/(1 - x/A(x)^3) - 1 ).

The programs for A361097, there is no canonical definition to state claims against.
-/

/-! ## A361097.P10468129704315302364

`A396228(∑[n]^n)`
-/

namespace A361097.P10468129704315302364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396228 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A361097.P10468129704315302364

/-!
# A361098: Intersection of A360765 and A360768.

The programs for A361098, there is no canonical definition to state claims against.
-/

/-! ## A361098.P13354292915571846269

`∪[A286708(n+1), A364702(n+1)]`
-/

namespace A361098.P13354292915571846269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361098.P13354292915571846269

/-! ## A361098.P12810431720203058768

`∪[A364702(n+1), A370266(n+1)]`
-/

namespace A361098.P12810431720203058768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361098.P12810431720203058768

/-! ## A361098.P13979879697608177981

`∪[A367708(n+1), A370266(n+1)]`
-/

namespace A361098.P13979879697608177981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361098.P13979879697608177981

/-! ## A361098.P16408184293795889885

`∩[A360765(n+1), A360768(n+1)]`
-/

namespace A361098.P16408184293795889885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361098.P16408184293795889885

/-! ## A361098.P11174242764070333421

`∩[A360768(n+1), A393869(n+1)]`
-/

namespace A361098.P11174242764070333421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361098.P11174242764070333421

/-!
# A361099: a(n) = n + 2*binomial(n,2) + 3*binomial(n,3) + 4*binomial(n,4).

The programs for A361099, the canonical program `A361099.P12342700061437491556` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361099 has offset 0).

The definition of A361099 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` (program `A361099.P12342700061437491556`, by `A361099.P12342700061437491556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361099.P14673476208018682991

`n²*(n*(n-3)+8)/6`
-/

namespace A361099.P14673476208018682991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * (((n : ℤ) * ((n : ℤ) - 3) + 8 : ℚ) / 6)

end

end A361099.P14673476208018682991

namespace A361099

/-- `n²*(n*(n-3)+8)/6` -/
def P14673476208018682991.Spec : Prop :=
  ∀ n, P14673476208018682991.a n = (A361099 n : ℚ)

end A361099

/-! ## A361099.P12342700061437491556

`n+2*C(n, 2)+3*C(n, 3)+4*C(n, 4)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A361099

/-- `n+2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` -/
def P12342700061437491556.Spec : Prop :=
  ∀ n, (P12342700061437491556.a n : ℤ) = A361099 n

theorem P12342700061437491556.correct : P12342700061437491556.Spec := by
  intro n
  simp only [A361099]

end A361099

/-! ## A361099.P7768181089903298319

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A361099.P7768181089903298319
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361099.P7768181089903298319

namespace A361099

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P7768181089903298319.Spec : Prop :=
  ∀ n, (P7768181089903298319.a n : ℤ) = A361099 n

end A361099

/-! ## A361099.P8125273494388859061

`∑[∑[C(2*n, 2)]]-(n-1)*n²`
-/

namespace A361099.P8125273494388859061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) * (n ^ 2 : ℤ)

end

end A361099.P8125273494388859061

namespace A361099

/-- `∑[∑[C(2*n, 2)]]-(n-1)*n²` -/
def P8125273494388859061.Spec : Prop :=
  ∀ n, P8125273494388859061.a n = A361099 n

end A361099

/-! ## A361099.P18042592781751178384

`A384852(n)+n`
-/

namespace A361099.P18042592781751178384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384852 n + (n : ℤ)

end

end A361099.P18042592781751178384

namespace A361099

/-- `A384852(n)+n` -/
def P18042592781751178384.Spec : Prop :=
  ∀ n, P18042592781751178384.a n = A361099 n

end A361099

/-! ## A361099.P3712797269413925896

`A037255(n)+A000332(n)`
-/

namespace A361099.P3712797269413925896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037255 n + A000332 n

end

end A361099.P3712797269413925896

namespace A361099

/-- `A037255(n)+A000332(n)` -/
def P3712797269413925896.Spec : Prop :=
  ∀ n, P3712797269413925896.a n = A361099 n

end A361099

/-! ## A361099.P3253931377796591013

`A004320(n)-A035597(n)`
-/

namespace A361099.P3253931377796591013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n - A035597 n

end

end A361099.P3253931377796591013

namespace A361099

/-- `A004320(n)-A035597(n)` -/
def P3253931377796591013.Spec : Prop :=
  ∀ n, P3253931377796591013.a n = A361099 n

end A361099

/-! ## A361099.P15928464026687034979

`A139594(n)-A085740(n)`
-/

namespace A361099.P15928464026687034979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 n - A085740 n

end

end A361099.P15928464026687034979

namespace A361099

/-- `A139594(n)-A085740(n)` -/
def P15928464026687034979.Spec : Prop :=
  ∀ n, P15928464026687034979.a n = A361099 n

end A361099

/-! ## A361099.P6515098365528177129

`∑[A139488(n)]-A139488(n)`
-/

namespace A361099.P6515098365528177129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139488 n

end

end A361099.P6515098365528177129

namespace A361099

/-- `∑[A139488(n)]-A139488(n)` -/
def P6515098365528177129.Spec : Prop :=
  ∀ n, P6515098365528177129.a n = A361099 n

end A361099

/-! ## A361099.P5437342667601957877

`∑[∑[A116735(n+1)]-A116735(n+1)]`
-/

namespace A361099.P5437342667601957877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A116735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361099.P5437342667601957877

namespace A361099

/-- `∑[∑[A116735(n+1)]-A116735(n+1)]` -/
def P5437342667601957877.Spec : Prop :=
  ∀ n, P5437342667601957877.a n = A361099 n

end A361099

/-! ## A361099.P5475511354090796115

`A002415(n+1)+A034827(n)-A007290(n+1)`
-/

namespace A361099.P5475511354090796115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A034827 n - A007290 (n + 1))

end

end A361099.P5475511354090796115

namespace A361099

/-- `A002415(n+1)+A034827(n)-A007290(n+1)` -/
def P5475511354090796115.Spec : Prop :=
  ∀ n, P5475511354090796115.a n = A361099 n

end A361099

/-! ## A361099.P13633816211153038425

`A330299(2*n)+n²`
-/

namespace A361099.P13633816211153038425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330299 (2 * n) + (n ^ 2 : ℤ)

end

end A361099.P13633816211153038425

namespace A361099

/-- `A330299(2*n)+n²` -/
def P13633816211153038425.Spec : Prop :=
  ∀ n, P13633816211153038425.a n = A361099 n

end A361099

/-! ## A361099.P12297260876436539312

`A333319(2*n)+n²`
-/

namespace A361099.P12297260876436539312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333319 (2 * n) + (n ^ 2 : ℤ)

end

end A361099.P12297260876436539312

namespace A361099

/-- `A333319(2*n)+n²` -/
def P12297260876436539312.Spec : Prop :=
  ∀ n, P12297260876436539312.a n = A361099 n

end A361099

