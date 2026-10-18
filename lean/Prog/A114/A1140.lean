import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A114000: Triangle read by rows: column k has g.f. = Sum_{k>0} x^k/(1-x^(2*k+1)).

The programs for A114000, there is no canonical definition to state claims against.
-/

/-! ## A114000.P10613297603352372551

`floor(acot(A025581(n)%A143453(n)))`
-/

namespace A114000.P10613297603352372551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (A025581 n) (A143453 n) : ℝ)⌋

end

end A114000.P10613297603352372551

/-! ## A114000.P13968486068952898334

`A000007(A025581(n)%A143453(n))`
-/

namespace A114000.P13968486068952898334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A025581 n) (A143453 n)).toNat

end

end A114000.P13968486068952898334

/-! ## A114000.P17029276756624334073

`A127093(A185868(n+1))%2`
-/

namespace A114000.P17029276756624334073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127093 (A185868 (n + 1)).toNat) 2

end

end A114000.P17029276756624334073

/-! ## A114000.P11676246425895560040

`A152072((1-round(sqrt(2*(n+1))))²+2*n+1)%2`
-/

namespace A114000.P11676246425895560040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152072 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat) 2

end

end A114000.P11676246425895560040

/-! ## A114000.P9655256409322423386

`A051731((1-round(sqrt(2*(n+1))))²+2*n+1)`
-/

namespace A114000.P9655256409322423386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A114000.P9655256409322423386

/-! ## A114000.P3097066966668356016

`A085383((1-round(sqrt(2*(n+1))))²+2*n+1)%2`
-/

namespace A114000.P3097066966668356016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085383 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat) 2

end

end A114000.P3097066966668356016

/-! ## A114000.P4287009045597377036

`A126988((1-round(sqrt(2*(n+1))))²+2*n+1)%2`
-/

namespace A114000.P4287009045597377036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126988 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat) 2

end

end A114000.P4287009045597377036

/-! ## A114000.P5984171585782611387

`C(2, A173541((1-round(sqrt(2*(n+1))))²+2*n+1))`
-/

namespace A114000.P5984171585782611387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A173541 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat).toNat

end

end A114000.P5984171585782611387

/-! ## A114000.P9312439408584144443

`round(1/A146326(8*n+5))`
-/

namespace A114000.P9312439408584144443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A146326 (8 * n + 5) : ℚ))

end

end A114000.P9312439408584144443

/-! ## A114000.P6099436776767846862

`A129573(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A114000.P6099436776767846862
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129573 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A114000.P6099436776767846862

/-! ## A114000.P8194269907333199644

`A113704(A185869(n+1))`
-/

namespace A114000.P8194269907333199644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 (A185869 (n + 1)).toNat

end

end A114000.P8194269907333199644

/-! ## A114000.P13218914495593498039

`A187954(n)%2`
-/

namespace A114000.P13218914495593498039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187954 n) 2

end

end A114000.P13218914495593498039

/-! ## A114000.P4733398433723387251

`A000035(A187954(n))`
-/

namespace A114000.P4733398433723387251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A187954 n).toNat

end

end A114000.P4733398433723387251

/-! ## A114000.P6033122156434074256

`A187954(n)/A158405(n+1)`
-/

namespace A114000.P6033122156434074256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187954 n : ℚ) / (A158405 (n + 1) : ℚ)

end

end A114000.P6033122156434074256

/-! ## A114000.P12260154121463947598

`and(A174692(n), A187954(n))`
-/

namespace A114000.P12260154121463947598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A187954 n)

end

end A114000.P12260154121463947598

/-! ## A114000.P7021786514080871039

`round(1/A008783(Δ[n²]))`
-/

namespace A114000.P7021786514080871039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A008783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ))

end

end A114000.P7021786514080871039

/-! ## A114000.P17683254624144995497

`A094497(A008783(Δ[n²]))`
-/

namespace A114000.P17683254624144995497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (A008783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A114000.P17683254624144995497

/-! ## A114000.P12972929343053916073

`A000045(C(2, A008783(2*n+1)))`
-/

namespace A114000.P12972929343053916073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A008783 (2 * n + 1)).toNat)

end

end A114000.P12972929343053916073

/-! ## A114000.P6637931987292780225

`and(A020737(n), A187954(n))`
-/

namespace A114000.P6637931987292780225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A187954 n)

end

end A114000.P6637931987292780225

/-! ## A114000.P7507345290864948825

`and(A187954(n), A195744(n))`
-/

namespace A114000.P7507345290864948825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187954 n) (A195744 n)

end

end A114000.P7507345290864948825

/-!
# A114001: Rows of A114000 expressed as decimals (a sequence related to the number of divisors of 2n-1).

The programs for A114001, the canonical program `A114001.P7467236643133734721` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114001 has offset 0).

The definition of A114001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114001.P7467236643133734721

`∑{d}[2*n+1, sqrt(2^(2*n+1-#))]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114001

/-- `∑{d}[2*n+1, sqrt(2^(2*n+1-#))]` -/
def P7467236643133734721.Spec : Prop :=
  ∀ n, P7467236643133734721.a n = (A114001 n : ℝ)

end A114001

/-! ## A114001.P9529781595264415910

`A030101(∑{d}[2*n+1, 2^(n%#)])`
-/

namespace A114001.P9529781595264415910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∑ d ∈ Nat.divisors (f1 n), 2 ^ (n % d))

end

end A114001.P9529781595264415910

namespace A114001

/-- `A030101(∑{d}[2*n+1, 2^(n%#)])` -/
def P9529781595264415910.Spec : Prop :=
  ∀ n, P9529781595264415910.a n = A114001 n

end A114001

/-! ## A114001.P188733790987834717

`A030101(∑{d}[2*n+1, 2^floor(#/2)])`
-/

namespace A114001.P188733790987834717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (⌊(d : ℚ) / 2⌋ : ℤ))).toNat

end

end A114001.P188733790987834717

namespace A114001

/-- `A030101(∑{d}[2*n+1, 2^floor(#/2)])` -/
def P188733790987834717.Spec : Prop :=
  ∀ n, P188733790987834717.a n = A114001 n

end A114001

/-! ## A114001.P17032509364660878862

`A030101(A339916(n))`
-/

namespace A114001.P17032509364660878862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A339916 n).toNat

end

end A114001.P17032509364660878862

namespace A114001

/-- `A030101(A339916(n))` -/
def P17032509364660878862.Spec : Prop :=
  ∀ n, P17032509364660878862.a n = A114001 n

end A114001

/-! ## A114001.P603329149085344822

`A030101(record[∑{d}[n+1, A131575(#)]])`
-/

namespace A114001.P603329149085344822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A131575 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114001.P603329149085344822

namespace A114001

/-- `A030101(record[∑{d}[n+1, A131575(#)]])` -/
def P603329149085344822.Spec : Prop :=
  ∀ n, P603329149085344822.a n = A114001 n

end A114001

/-!
# A114002: Expansion of g.f. x^k(1+x^(k+1))/(1-x^(k+1)).

The programs for A114002, the canonical program `A114002.P11087141496141675113` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114002 has offset 0).

The definition of A114002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114002.P12320186702701984378

`and(3, A114004(n))`
-/

namespace A114002.P12320186702701984378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A114004 n)

end

end A114002.P12320186702701984378

namespace A114002

/-- `and(3, A114004(n))` -/
def P12320186702701984378.Spec : Prop :=
  ∀ n, P12320186702701984378.a n = A114002 n

end A114002

/-! ## A114002.P893604679850534633

`ceil(atan(A126988(n+1)))`
-/

namespace A114002.P893604679850534633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A126988 (n + 1) : ℝ)⌉

end

end A114002.P893604679850534633

namespace A114002

/-- `ceil(atan(A126988(n+1)))` -/
def P893604679850534633.Spec : Prop :=
  ∀ n, P893604679850534633.a n = A114002 n

end A114002

/-! ## A114002.P3030658766897623420

`ceil(atan(A127169(n+1)))`
-/

namespace A114002.P3030658766897623420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A127169 (n + 1) : ℝ)⌉

end

end A114002.P3030658766897623420

namespace A114002

/-- `ceil(atan(A127169(n+1)))` -/
def P3030658766897623420.Spec : Prop :=
  ∀ n, P3030658766897623420.a n = A114002 n

end A114002

/-! ## A114002.P12499766264511561149

`ceil(atan(A127170(n+1)))`
-/

namespace A114002.P12499766264511561149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A127170 (n + 1) : ℝ)⌉

end

end A114002.P12499766264511561149

namespace A114002

/-- `ceil(atan(A127170(n+1)))` -/
def P12499766264511561149.Spec : Prop :=
  ∀ n, P12499766264511561149.a n = A114002 n

end A114002

/-! ## A114002.P4865257171446940604

`ceil(atan(A129559(n+1)))`
-/

namespace A114002.P4865257171446940604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A129559 (n + 1) : ℝ)⌉

end

end A114002.P4865257171446940604

namespace A114002

/-- `ceil(atan(A129559(n+1)))` -/
def P4865257171446940604.Spec : Prop :=
  ∀ n, P4865257171446940604.a n = A114002 n

end A114002

/-! ## A114002.P3203591854337173520

`floor(atan(2*A141680(n+1))²)`
-/

namespace A114002.P3203591854337173520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (2 * A141680 (n + 1) : ℝ) ^ 2⌋

end

end A114002.P3203591854337173520

namespace A114002

/-- `floor(atan(2*A141680(n+1))²)` -/
def P3203591854337173520.Spec : Prop :=
  ∀ n, P3203591854337173520.a n = A114002 n

end A114002

/-! ## A114002.P17410438518366185923

`(2-char[∑[n-1]])*A051731(n+1)`
-/

namespace A114002.P17410438518366185923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A051731 (n + 1)

end

end A114002.P17410438518366185923

namespace A114002

/-- `(2-char[∑[n-1]])*A051731(n+1)` -/
def P17410438518366185923.Spec : Prop :=
  ∀ n, P17410438518366185923.a n = A114002 n

end A114002

/-! ## A114002.P12163773962519625173

`A046698(A127168(n))`
-/

namespace A114002.P12163773962519625173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A127168 n).toNat

end

end A114002.P12163773962519625173

namespace A114002

/-- `A046698(A127168(n))` -/
def P12163773962519625173.Spec : Prop :=
  ∀ n, P12163773962519625173.a n = A114002 n

end A114002

/-! ## A114002.P15294261977781743023

`A046698(A143315(n+1))`
-/

namespace A114002.P15294261977781743023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A143315 (n + 1)).toNat

end

end A114002.P15294261977781743023

namespace A114002

/-- `A046698(A143315(n+1))` -/
def P15294261977781743023.Spec : Prop :=
  ∀ n, P15294261977781743023.a n = A114002 n

end A114002

/-! ## A114002.P13791153733638088278

`A130130(A126988(n+1))`
-/

namespace A114002.P13791153733638088278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A126988 (n + 1)).toNat

end

end A114002.P13791153733638088278

namespace A114002

/-- `A130130(A126988(n+1))` -/
def P13791153733638088278.Spec : Prop :=
  ∀ n, P13791153733638088278.a n = A114002 n

end A114002

/-! ## A114002.P12164417989780007928

`A130130(A127192(n+1))`
-/

namespace A114002.P12164417989780007928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A127192 (n + 1)).toNat

end

end A114002.P12164417989780007928

namespace A114002

/-- `A130130(A127192(n+1))` -/
def P12164417989780007928.Spec : Prop :=
  ∀ n, P12164417989780007928.a n = A114002 n

end A114002

/-! ## A114002.P11087141496141675113

`2*A051731(n+1)-A023531(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A114002

/-- `2*A051731(n+1)-A023531(n)` -/
def P11087141496141675113.Spec : Prop :=
  ∀ n, P11087141496141675113.a n = A114002 n

theorem P11087141496141675113.correct : P11087141496141675113.Spec := by
  intro n
  simp only [A114002]

end A114002

/-! ## A114002.P3519361656154399024

`A051731(n+1)+A158906(n+1)-A158821(n)`
-/

namespace A114002.P3519361656154399024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A158906 (n + 1) - A158821 n)

end

end A114002.P3519361656154399024

namespace A114002

/-- `A051731(n+1)+A158906(n+1)-A158821(n)` -/
def P3519361656154399024.Spec : Prop :=
  ∀ n, P3519361656154399024.a n = A114002 n

end A114002

/-! ## A114002.P16891781599468982092

`A051731(n+1)+A134673(n+1)-A127448(n+1)`
-/

namespace A114002.P16891781599468982092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A134673 (n + 1) - A127448 (n + 1))

end

end A114002.P16891781599468982092

namespace A114002

/-- `A051731(n+1)+A134673(n+1)-A127448(n+1)` -/
def P16891781599468982092.Spec : Prop :=
  ∀ n, P16891781599468982092.a n = A114002 n

end A114002

/-! ## A114002.P4422100328563640618

`A051731(n+1)+A051731(n+1)*A191907(n+1)`
-/

namespace A114002.P4422100328563640618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A051731 (n + 1) * A191907 (n + 1)

end

end A114002.P4422100328563640618

namespace A114002

/-- `A051731(n+1)+A051731(n+1)*A191907(n+1)` -/
def P4422100328563640618.Spec : Prop :=
  ∀ n, P4422100328563640618.a n = A114002 n

end A114002

/-! ## A114002.P16270775272480991909

`(A051010(n+2)+1)!%3`
-/

namespace A114002.P16270775272480991909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A051010 (n + 2) + 1).toNat % 3

end

end A114002.P16270775272480991909

namespace A114002

/-- `(A051010(n+2)+1)!%3` -/
def P16270775272480991909.Spec : Prop :=
  ∀ n, (P16270775272480991909.a n : ℤ) = A114002 n

end A114002

/-! ## A114002.P10058979540006137164

`A051731(n+1)+A128184(n+1)-A051731(n+2)`
-/

namespace A114002.P10058979540006137164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A128184 (n + 1) - A051731 (n + 2))

end

end A114002.P10058979540006137164

namespace A114002

/-- `A051731(n+1)+A128184(n+1)-A051731(n+2)` -/
def P10058979540006137164.Spec : Prop :=
  ∀ n, P10058979540006137164.a n = A114002 n

end A114002

/-! ## A114002.P9821812394230408476

`2-ceil(acot(Δ[A127057(n+1)]))`
-/

namespace A114002.P9821812394230408476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A114002.P9821812394230408476

namespace A114002

/-- `2-ceil(acot(Δ[A127057(n+1)]))` -/
def P9821812394230408476.Spec : Prop :=
  ∀ n, P9821812394230408476.a n = A114002 n

end A114002

/-! ## A114002.P1709662060398854543

`A046698(A127169(n+1))`
-/

namespace A114002.P1709662060398854543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A127169 (n + 1)).toNat

end

end A114002.P1709662060398854543

namespace A114002

/-- `A046698(A127169(n+1))` -/
def P1709662060398854543.Spec : Prop :=
  ∀ n, P1709662060398854543.a n = A114002 n

end A114002

/-! ## A114002.P2483135196790664224

`A051731(n+1)*A252230(n+1)`
-/

namespace A114002.P2483135196790664224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A252230 (n + 1)

end

end A114002.P2483135196790664224

namespace A114002

/-- `A051731(n+1)*A252230(n+1)` -/
def P2483135196790664224.Spec : Prop :=
  ∀ n, P2483135196790664224.a n = A114002 n

end A114002

/-!
# A114003: Rows sums of triangle A114002.

The programs for A114003, the canonical program `A114003.P1695342291946871726` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114003 has offset 1).

The definition of A114003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114003.P1695342291946871726

`2*A000005(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114003

/-- `2*A000005(n+1)-1` -/
def P1695342291946871726.Spec : Prop :=
  ∀ n, P1695342291946871726.a n = A114003 (n + 1)

theorem P1695342291946871726.correct : P1695342291946871726.Spec := by
  intro n
  simp only [A114003, Nat.add_sub_cancel]

end A114003

/-! ## A114003.P8256259318221975298

`∑{d}[n+1, ceil(atan(#))]`
-/

namespace A114003.P8256259318221975298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉

end

end A114003.P8256259318221975298

namespace A114003

/-- `∑{d}[n+1, ceil(atan(#))]` -/
def P8256259318221975298.Spec : Prop :=
  ∀ n, P8256259318221975298.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P9201014148182145604

`∑{d}[n+1, 2%#²]+1`
-/

namespace A114003.P9201014148182145604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 % d ^ 2 + 1

end

end A114003.P9201014148182145604

namespace A114003

/-- `∑{d}[n+1, 2%#²]+1` -/
def P9201014148182145604.Spec : Prop :=
  ∀ n, (P9201014148182145604.a n : ℤ) = A114003 (n + 1)

end A114003

/-! ## A114003.P2830901617675090674

`∑{d}[n+1, 2-floor(1/#)]`
-/

namespace A114003.P2830901617675090674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - ⌊1 / (d : ℚ)⌋)

end

end A114003.P2830901617675090674

namespace A114003

/-- `∑{d}[n+1, 2-floor(1/#)]` -/
def P2830901617675090674.Spec : Prop :=
  ∀ n, P2830901617675090674.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P10044217348973762636

`2*∏{e}[n+1, #+1]-1`
-/

namespace A114003.P10044217348973762636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ) - 1

end

end A114003.P10044217348973762636

namespace A114003

/-- `2*∏{e}[n+1, #+1]-1` -/
def P10044217348973762636.Spec : Prop :=
  ∀ n, P10044217348973762636.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P10924559436619629187

`-∑{d}[n+1, C(#, n+1)-2]`
-/

namespace A114003.P10924559436619629187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((Nat.choose d (n + 1) : ℤ) - 2))

end

end A114003.P10924559436619629187

namespace A114003

/-- `-∑{d}[n+1, C(#, n+1)-2]` -/
def P10924559436619629187.Spec : Prop :=
  ∀ n, P10924559436619629187.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P10038553621281931429

`∏{e}[n+1, #+1]+∏{e}[n+1, #+1]-1`
-/

namespace A114003.P10038553621281931429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1)

end

end A114003.P10038553621281931429

namespace A114003

/-- `∏{e}[n+1, #+1]+∏{e}[n+1, #+1]-1` -/
def P10038553621281931429.Spec : Prop :=
  ∀ n, P10038553621281931429.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P15978594912788704705

`A062011(n+1)-1`
-/

namespace A114003.P15978594912788704705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - 1

end

end A114003.P15978594912788704705

namespace A114003

/-- `A062011(n+1)-1` -/
def P15978594912788704705.Spec : Prop :=
  ∀ n, P15978594912788704705.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P1952942004158565199

`or(1, A086369(n+1))`
-/

namespace A114003.P1952942004158565199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A086369 (n + 1))

end

end A114003.P1952942004158565199

namespace A114003

/-- `or(1, A086369(n+1))` -/
def P1952942004158565199.Spec : Prop :=
  ∀ n, P1952942004158565199.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P11295888128093504741

`A134156(n+1)+n`
-/

namespace A114003.P11295888128093504741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134156 (n + 1) + (n : ℤ)

end

end A114003.P11295888128093504741

namespace A114003

/-- `A134156(n+1)+n` -/
def P11295888128093504741.Spec : Prop :=
  ∀ n, P11295888128093504741.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P285554376759312786

`2*A032741(n+1)+1`
-/

namespace A114003.P285554376759312786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032741 (n + 1) + 1

end

end A114003.P285554376759312786

namespace A114003

/-- `2*A032741(n+1)+1` -/
def P285554376759312786.Spec : Prop :=
  ∀ n, P285554376759312786.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P6292439609263840024

`A145154(n+1)/2-1`
-/

namespace A114003.P6292439609263840024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 (n + 1) : ℚ) / 2 - 1

end

end A114003.P6292439609263840024

namespace A114003

/-- `A145154(n+1)/2-1` -/
def P6292439609263840024.Spec : Prop :=
  ∀ n, P6292439609263840024.a n = (A114003 (n + 1) : ℚ)

end A114003

/-! ## A114003.P7423540731406912480

`2*A334954(n+1)-3`
-/

namespace A114003.P7423540731406912480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334954 (n + 1) - 3

end

end A114003.P7423540731406912480

namespace A114003

/-- `2*A334954(n+1)-3` -/
def P7423540731406912480.Spec : Prop :=
  ∀ n, P7423540731406912480.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P12033755033432335072

`3-2*A378216(n+1)`
-/

namespace A114003.P12033755033432335072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A378216 (n + 1)

end

end A114003.P12033755033432335072

namespace A114003

/-- `3-2*A378216(n+1)` -/
def P12033755033432335072.Spec : Prop :=
  ∀ n, P12033755033432335072.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P17585708089683158928

`lcm(2, A131089(n+1))-1`
-/

namespace A114003.P17585708089683158928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A131089 (n + 1)) : ℤ) - 1

end

end A114003.P17585708089683158928

namespace A114003

/-- `lcm(2, A131089(n+1))-1` -/
def P17585708089683158928.Spec : Prop :=
  ∀ n, P17585708089683158928.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P10068994726736716929

`log2(A100577(n+1)²)+1`
-/

namespace A114003.P10068994726736716929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A100577 (n + 1) ^ 2 : ℝ) + 1

end

end A114003.P10068994726736716929

namespace A114003

/-- `log2(A100577(n+1)²)+1` -/
def P10068994726736716929.Spec : Prop :=
  ∀ n, P10068994726736716929.a n = (A114003 (n + 1) : ℝ)

end A114003

/-! ## A114003.P12270467554494512149

`log2(A338506(n+1)²)-1`
-/

namespace A114003.P12270467554494512149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (n + 1) ^ 2 : ℝ) - 1

end

end A114003.P12270467554494512149

namespace A114003

/-- `log2(A338506(n+1)²)-1` -/
def P12270467554494512149.Spec : Prop :=
  ∀ n, P12270467554494512149.a n = (A114003 (n + 1) : ℝ)

end A114003

/-! ## A114003.P10582469729670585971

`∑{d}[n+1, A020639(2*#)]-1`
-/

namespace A114003.P10582469729670585971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) - 1

end

end A114003.P10582469729670585971

namespace A114003

/-- `∑{d}[n+1, A020639(2*#)]-1` -/
def P10582469729670585971.Spec : Prop :=
  ∀ n, P10582469729670585971.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P16015830122293395650

`A004273(A000005(n+1))`
-/

namespace A114003.P16015830122293395650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000005 (n + 1)).toNat

end

end A114003.P16015830122293395650

namespace A114003

/-- `A004273(A000005(n+1))` -/
def P16015830122293395650.Spec : Prop :=
  ∀ n, P16015830122293395650.a n = A114003 (n + 1)

end A114003

/-! ## A114003.P17356681347591400615

`A001650(A035116(n+1))`
-/

namespace A114003.P17356681347591400615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A035116 (n + 1)).toNat

end

end A114003.P17356681347591400615

namespace A114003

/-- `A001650(A035116(n+1))` -/
def P17356681347591400615.Spec : Prop :=
  ∀ n, P17356681347591400615.a n = A114003 (n + 1)

end A114003

/-!
# A114004: Inverse of triangle A114002.

The programs for A114004, there is no canonical definition to state claims against.
-/

/-! ## A114004.P3337352694591092106

`A114002(n)*A114006(A010766(n+1))`
-/

namespace A114004.P3337352694591092106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114002 n * A114006 (A010766 (n + 1)).toNat

end

end A114004.P3337352694591092106

/-! ## A114004.P16410826340778416127

`A114002(n)*A114006(A049834(n+1))`
-/

namespace A114004.P16410826340778416127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114002 n * A114006 (A049834 (n + 1)).toNat

end

end A114004.P16410826340778416127

/-! ## A114004.P6215751619837673394

`A114002(n)*A114006(A054531(n+1))`
-/

namespace A114004.P6215751619837673394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114002 n * A114006 (A054531 (n + 1)).toNat

end

end A114004.P6215751619837673394

/-! ## A114004.P5777125952761519161

`A051731(n+1)*A114005(A010766(n+1))`
-/

namespace A114004.P5777125952761519161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114005 (A010766 (n + 1)).toNat

end

end A114004.P5777125952761519161

/-! ## A114004.P9455053363930196691

`A051731(n+1)*A114005(A049834(n+1))`
-/

namespace A114004.P9455053363930196691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114005 (A049834 (n + 1)).toNat

end

end A114004.P9455053363930196691

/-! ## A114004.P5434229154258797223

`A051731(n+1)*A114005(A054531(n+1))`
-/

namespace A114004.P5434229154258797223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114005 (A054531 (n + 1)).toNat

end

end A114004.P5434229154258797223

/-! ## A114004.P9756381850905980865

`(A051010(n+2)+1)!%3*A114006(A010766(n+1))`
-/

namespace A114004.P9756381850905980865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A051010 (n + 2) + 1).toNat % 3 : ℕ) : ℤ) * A114006 (A010766 (n + 1)).toNat

end

end A114004.P9756381850905980865

/-! ## A114004.P3543636746165830623

`A114002(n)*A114006(A051537(n+1))`
-/

namespace A114004.P3543636746165830623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114002 n * A114006 (A051537 (n + 1)).toNat

end

end A114004.P3543636746165830623

/-! ## A114004.P16306754693122925865

`A051731(n+1)*A114005(A051537(n+1))`
-/

namespace A114004.P16306754693122925865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114005 (A051537 (n + 1)).toNat

end

end A114004.P16306754693122925865

/-! ## A114004.P3486428814548671879

`A046698(A141680(n+1))*A114006(A010766(n+1))`
-/

namespace A114004.P3486428814548671879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A141680 (n + 1)).toNat * A114006 (A010766 (n + 1)).toNat

end

end A114004.P3486428814548671879

/-! ## A114004.P4005262415434527479

`A046698(A141680(n+1))*A114006(A054531(n+1))`
-/

namespace A114004.P4005262415434527479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A141680 (n + 1)).toNat * A114006 (A054531 (n + 1)).toNat

end

end A114004.P4005262415434527479

/-!
# A114005: First column of number triangle A114004.

The programs for A114005, there is no canonical definition to state claims against.
-/

/-! ## A114005.P7533164151275792856

`gcd(2, A025487(n+1))*A114006(n+1)`
-/

namespace A114005.P7533164151275792856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A025487 (n + 1)) : ℤ) * A114006 (n + 1)

end

end A114005.P7533164151275792856

/-! ## A114005.P14717784007307643303

`∑{d}[n+1, A008683(#)*A114006((n+1)/#)]`
-/

namespace A114005.P14717784007307643303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A114006 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114005.P14717784007307643303

/-! ## A114005.P268174478880650758

`∑{d}[n+1, A007427(#)*A317581((n+1)/#)]`
-/

namespace A114005.P268174478880650758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A317581 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114005.P268174478880650758

/-! ## A114005.P8979538435118288562

`A034444(A034444(n+1))*A114006(n+1)`
-/

namespace A114005.P8979538435118288562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (n + 1)).toNat * A114006 (n + 1)

end

end A114005.P8979538435118288562

/-! ## A114005.P11576758598568861154

`A114006(n+1)+A114006(n+1)%A000961(n+1)`
-/

namespace A114005.P11576758598568861154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (n + 1) + Int.tmod (A114006 (n + 1)) (A000961 (n + 1))

end

end A114005.P11576758598568861154

/-! ## A114005.P2007686686699214697

`A114006(n+1)+A114006(n+1)*A157928(n+1)`
-/

namespace A114005.P2007686686699214697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (n + 1) + A114006 (n + 1) * A157928 (n + 1)

end

end A114005.P2007686686699214697

/-! ## A114005.P16840602404667096621

`A046698(n+2)*A114006(n+1)`
-/

namespace A114005.P16840602404667096621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (n + 2) * A114006 (n + 1)

end

end A114005.P16840602404667096621

/-! ## A114005.P14914724360519231713

`gcd(2, A008423(n))*A114006(n+1)`
-/

namespace A114005.P14914724360519231713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A008423 n) : ℤ) * A114006 (n + 1)

end

end A114005.P14914724360519231713

/-! ## A114005.P13465452810779184960

`A194577(A003961(n+1))`
-/

namespace A114005.P13465452810779184960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A003961 (n + 1)).toNat

end

end A114005.P13465452810779184960

/-! ## A114005.P7814161675900467094

`A194577(A045965(n+1))`
-/

namespace A114005.P7814161675900467094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A045965 (n + 1)).toNat

end

end A114005.P7814161675900467094

/-! ## A114005.P12016868367970244312

`A194577(A064988(n+1))`
-/

namespace A114005.P12016868367970244312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A064988 (n + 1)).toNat

end

end A114005.P12016868367970244312

/-! ## A114005.P10138281000028242091

`A194577(A332818(n+1))`
-/

namespace A114005.P10138281000028242091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A332818 (n + 1)).toNat

end

end A114005.P10138281000028242091

/-! ## A114005.P5218815116953997407

`A194577(A359600(n+1))`
-/

namespace A114005.P5218815116953997407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A359600 (n + 1)).toNat

end

end A114005.P5218815116953997407

/-! ## A114005.P12406268760472002348

`A194577(A348746(n+1))`
-/

namespace A114005.P12406268760472002348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A348746 (n + 1)).toNat

end

end A114005.P12406268760472002348

/-! ## A114005.P3809604939846974850

`A194577(A297002(n+1))`
-/

namespace A114005.P3809604939846974850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A297002 (n + 1)).toNat

end

end A114005.P3809604939846974850

/-! ## A114005.P18069781584184936781

`A194577(A389092(n+1))`
-/

namespace A114005.P18069781584184936781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (A389092 (n + 1)).toNat

end

end A114005.P18069781584184936781

/-! ## A114005.P12707718212988769299

`A114004(∑[n])`
-/

namespace A114005.P12707718212988769299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114004 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114005.P12707718212988769299

/-!
# A114006: Row sums of number triangle A114004.

The programs for A114006, there is no canonical definition to state claims against.
-/

/-! ## A114006.P13589732220545864040

`A008836(n+1)*A050328(n+1)`
-/

namespace A114006.P13589732220545864040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A050328 (n + 1)

end

end A114006.P13589732220545864040

/-! ## A114006.P12119277837101187265

`∑{d}[n+1, A114005(#)]`
-/

namespace A114006.P12119277837101187265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114005 d

end

end A114006.P12119277837101187265

/-! ## A114006.P15012253476935018492

`ceil(A114005(n+1)/2)`
-/

namespace A114006.P15012253476935018492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114005 (n + 1) : ℚ) / 2⌉

end

end A114006.P15012253476935018492

/-! ## A114006.P12798076208934618417

`2*A317581(n+1)-1`
-/

namespace A114006.P12798076208934618417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317581 (n + 1) - 1

end

end A114006.P12798076208934618417

/-! ## A114006.P6497633544822310288

`∑{d}[n+1, A008683(#)*A317581((n+1)/#)]`
-/

namespace A114006.P6497633544822310288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A317581 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A114006.P6497633544822310288

/-! ## A114006.P11958981888878113363

`A114005(n+1)/A034444(A034444(n+1))`
-/

namespace A114006.P11958981888878113363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114005 (n + 1) : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A114006.P11958981888878113363

/-! ## A114006.P6121546262101562530

`A317581(A046523(n+1))+A317581(n+1)-1`
-/

namespace A114006.P6121546262101562530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317581 (A046523 (n + 1)).toNat + A317581 (n + 1) - 1

end

end A114006.P6121546262101562530

/-! ## A114006.P4247890583164524688

`A114005(n+1)/A036452(A114005(n+1)²)`
-/

namespace A114006.P4247890583164524688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114005 (n + 1) : ℚ) / (A036452 (A114005 (n + 1) ^ 2).toNat : ℚ)

end

end A114006.P4247890583164524688

/-! ## A114006.P664221478542109494

`A114005(n+1)/A036453(A114005(n+1)²)`
-/

namespace A114006.P664221478542109494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114005 (n + 1) : ℚ) / (A036453 (A114005 (n + 1) ^ 2).toNat : ℚ)

end

end A114006.P664221478542109494

/-!
# A114007: Distinct primes in increasing order interleaved with primes of the form concatenation two or more previous terms say all a(i), a(j) i

The programs for A114007, there is no canonical definition to state claims against.
-/

/-! ## A114007.P7349956079343307990

`p?[A048794(n)*A277892(n+2)]`
-/

namespace A114007.P7349956079343307990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n * A277892 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114007.P7349956079343307990

/-!
# A114009: Regular triangle where n-th row is composed of n primes beginning with prime(n).

The programs for A114009, there is no canonical definition to state claims against.
-/

/-! ## A114009.P2968513064935871165

`A210757(lt[A341231(n+1), A007318(n+3)])`
-/

namespace A114009.P2968513064935871165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210757 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114009.P2968513064935871165

/-!
# A114010: a(1) = a(2) = 2, Let k(n) = (prime(n) + prime(n+1))/2. Then a(k(n)) = k(n). a(k(n)-i) = prime(n), a(k(n)+i) = prime(n+1) until the next prime occurs.

The programs for A114010, there is no canonical definition to state claims against.
-/

/-! ## A114010.P1260355599311107194

`A001281(Δ[A180107(Δ[n²])])`
-/

namespace A114010.P1260355599311107194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A114010.P1260355599311107194

/-! ## A114010.P2944109494408572200

`A014682(Δ[A180107(Δ[n²])])`
-/

namespace A114010.P2944109494408572200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A114010.P2944109494408572200

/-! ## A114010.P6331067503410139837

`A064680(Δ[A180107(Δ[n²])])`
-/

namespace A114010.P6331067503410139837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (f1 (n + 1) - f1 n).toNat

end

end A114010.P6331067503410139837

/-! ## A114010.P17894155129221250698

`Δ[A028242(A180107(2*n+1))]`
-/

namespace A114010.P17894155129221250698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A180107 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114010.P17894155129221250698

/-! ## A114010.P4079657468491160705

`Δ[A052938(A180107(2*n+1)+1)]`
-/

namespace A114010.P4079657468491160705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A180107 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114010.P4079657468491160705

/-! ## A114010.P11199808887633413595

`A188134(Δ[2*A180107(2*n+1)])`
-/

namespace A114010.P11199808887633413595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180107 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (f1 (n + 1) - f1 n).toNat

end

end A114010.P11199808887633413595

/-! ## A114010.P17258051322378573366

`(A077018(n+1)+A051697(n+1))/2`
-/

namespace A114010.P17258051322378573366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077018 (n + 1) + A051697 (n + 1) : ℚ) / 2

end

end A114010.P17258051322378573366

/-! ## A114010.P4704411256583237479

`A004525(A077018(n+1)+A077018(n))`
-/

namespace A114010.P4704411256583237479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A077018 (n + 1) + A077018 n).toNat

end

end A114010.P4704411256583237479

/-! ## A114010.P16560886503883421602

`A065033(Δ[A180107(2*n+1)])+A000007(n)`
-/

namespace A114010.P16560886503883421602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat + A000007 n

end

end A114010.P16560886503883421602

/-! ## A114010.P12752477536579320928

`A273943(Δ[A180107(2*n+1)])+A000007(n)`
-/

namespace A114010.P12752477536579320928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f1 (n + 1) - f1 n).toNat + A000007 n

end

end A114010.P12752477536579320928

/-!
# A114011: Least multiple of prime(n) ending in digit 1.

The programs for A114011, there is no canonical definition to state claims against.
-/

/-! ## A114011.P1738145388092185101

`10*A103876(n+4)+1`
-/

namespace A114011.P1738145388092185101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A103876 (n + 4) + 1

end

end A114011.P1738145388092185101

/-! ## A114011.P16279605286282107620

`A017281(A103876(n+4))`
-/

namespace A114011.P16279605286282107620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A103876 (n + 4)).toNat

end

end A114011.P16279605286282107620

/-! ## A114011.P12749025955438704232

`A016861(2*A103876(n+4))`
-/

namespace A114011.P12749025955438704232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * A103876 (n + 4)).toNat

end

end A114011.P12749025955438704232

/-! ## A114011.P13515033621707868843

`A005408(5*A103876(n+4))`
-/

namespace A114011.P13515033621707868843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (5 * A103876 (n + 4)).toNat

end

end A114011.P13515033621707868843

/-! ## A114011.P9724062490918554622

`A144396(5*A103876(n+4))`
-/

namespace A114011.P9724062490918554622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (5 * A103876 (n + 4)).toNat

end

end A114011.P9724062490918554622

/-! ## A114011.P2662530201403026800

`A004442(10*A103876(n+4))`
-/

namespace A114011.P2662530201403026800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (10 * A103876 (n + 4)).toNat

end

end A114011.P2662530201403026800

/-! ## A114011.P11621556825372115313

`A020725(10*A103876(n+4))`
-/

namespace A114011.P11621556825372115313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (10 * A103876 (n + 4)).toNat

end

end A114011.P11621556825372115313

/-! ## A114011.P13379700958318726471

`A109613(10*A103876(n+4))`
-/

namespace A114011.P13379700958318726471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (10 * A103876 (n + 4)).toNat

end

end A114011.P13379700958318726471

/-! ## A114011.P7581506635886944633

`A008619(20*A103876(n+4))`
-/

namespace A114011.P7581506635886944633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (20 * A103876 (n + 4)).toNat

end

end A114011.P7581506635886944633

/-! ## A114011.P712980889234764552

`A008611(30*A103876(n+4))`
-/

namespace A114011.P712980889234764552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (30 * A103876 (n + 4)).toNat

end

end A114011.P712980889234764552

/-!
# A114013: Least multiple of prime(n) ending in digit 9.

The programs for A114013, there is no canonical definition to state claims against.
-/

/-! ## A114013.P13371335209341930334

`A017281(A090417(n+1)-A103876(n+4))-2`
-/

namespace A114013.P13371335209341930334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A090417 (n + 1) - A103876 (n + 4)).toNat - 2

end

end A114013.P13371335209341930334

/-! ## A114013.P13815811301381557996

`A017281(A090417(n+1)-round(A114011(2*(n+2)-n)/10))-2`
-/

namespace A114013.P13815811301381557996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A090417 (n + 1) - SequenceMachineLib.roundAway ((A114011 (2 * (n + 2) - n) : ℚ) / 10)).toNat - 2

end

end A114013.P13815811301381557996

/-! ## A114013.P6043090151553307801

`A008592(A006530(A114011(n+4)))-A114011(n+4)`
-/

namespace A114013.P6043090151553307801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A006530 (A114011 (n + 4)).toNat).toNat - A114011 (n + 4)

end

end A114013.P6043090151553307801

/-! ## A114013.P13658705530121127920

`A008592(A090417(n+1))-A144396(5*A103876(n+4))`
-/

namespace A114013.P13658705530121127920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A090417 (n + 1)).toNat - A144396 (5 * A103876 (n + 4)).toNat

end

end A114013.P13658705530121127920

/-! ## A114013.P9971089989406616199

`A008592(A090417(n+1))-A004442(10*A103876(n+4))`
-/

namespace A114013.P9971089989406616199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A090417 (n + 1)).toNat - A004442 (10 * A103876 (n + 4)).toNat

end

end A114013.P9971089989406616199

/-!
# A114014: Expansion of g.f. (1 + 2*x)^4/((1 + x)*(1 - 16*x^2)).

The programs for A114014, there is no canonical definition to state claims against.
-/

/-! ## A114014.P10722376139561854754

`or(1, A079631(Δ[A239549(n)]))`
-/

namespace A114014.P10722376139561854754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A079631 (f1 (n + 1) - f1 n).toNat)

end

end A114014.P10722376139561854754

/-!
# A114016: Least n-digit prime which differs from the next prime at every corresponding digit.

The programs for A114016, there is no canonical definition to state claims against.
-/

/-! ## A114016.P7915248210006259482

`p?[2*10^n-A116609(n+1)]`
-/

namespace A114016.P7915248210006259482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ n : ℤ) - A116609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114016.P7915248210006259482

/-! ## A114016.P2476204749273383462

`p?[2*10^n-A298396(n+1)]`
-/

namespace A114016.P2476204749273383462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ n : ℤ) - A298396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114016.P2476204749273383462

/-!
# A114017: a(n) = smallest n-digit prime which differs from the previous n-digit prime at every corresponding digit (or 0 if no such prime exists).

The programs for A114017, there is no canonical definition to state claims against.
-/

/-! ## A114017.P13675627348966379532

`p?[or(1, A069590(n+1))]`
-/

namespace A114017.P13675627348966379532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069590 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114017.P13675627348966379532

/-! ## A114017.P15028999249954265417

`p?[or(3, A155890(2*n+1))]`
-/

namespace A114017.P15028999249954265417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A155890 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114017.P15028999249954265417

/-!
# A114018: Least n-digit prime whose digit reversal is also prime.

The programs for A114018, there is no canonical definition to state claims against.
-/

/-! ## A114018.P3291193548316882924

`10^n+A168159(n+1)`
-/

namespace A114018.P3291193548316882924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A168159 (n + 1)

end

end A114018.P3291193548316882924

/-! ## A114018.P16141094324809010955

`A168159(n+1)+A011557(n)`
-/

namespace A114018.P16141094324809010955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168159 (n + 1) + A011557 n

end

end A114018.P16141094324809010955

/-! ## A114018.P2006555163135956265

`A168159(n+1)+A004663(2*n)`
-/

namespace A114018.P2006555163135956265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168159 (n + 1) + A004663 (2 * n)

end

end A114018.P2006555163135956265

/-! ## A114018.P12248642100097100601

`A168159(n+1)+A017935(2*n)`
-/

namespace A114018.P12248642100097100601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168159 (n + 1) + A017935 (2 * n)

end

end A114018.P12248642100097100601

/-! ## A114018.P17319292769395817980

`A168159(n+1)+A025635(A025747(n))`
-/

namespace A114018.P17319292769395817980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168159 (n + 1) + A025635 (A025747 n).toNat

end

end A114018.P17319292769395817980

/-! ## A114018.P4467799294054194056

`A168159(n+1)+A000079(n)*A000351(n)`
-/

namespace A114018.P4467799294054194056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168159 (n + 1) + A000079 n * A000351 n

end

end A114018.P4467799294054194056

/-! ## A114018.P17299540998775247799

`A168159(n+1)+Δ[A173735(n)]`
-/

namespace A114018.P17299540998775247799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168159 (n + 1) + (f1 (n + 1) - f1 n)

end

end A114018.P17299540998775247799

/-!
# A114019: Largest n-digit prime whose digit reversal is also prime.

The programs for A114019, there is no canonical definition to state claims against.
-/

/-! ## A114019.P15850598636460550398

`A007500(∑[A048054(n+1)])`
-/

namespace A114019.P15850598636460550398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114019.P15850598636460550398

/-!
# A114020: a(n) = a(n-1)! + a(n-2)! with a(0) = 0, a(1) = 1.

The programs for A114020, there is no canonical definition to state claims against.
-/

/-! ## A114020.P13647884006588231590

`a(n-1)!+(n-2)!` with `a(0)=0, a(1)=1`
-/

namespace A114020.P13647884006588231590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.factorial (a (n - 1)) + Nat.factorial ((n : ℤ) - 2).toNat

end

end A114020.P13647884006588231590

/-!
# A114021: Number of semiprimes between n and n + sqrt(n).

The programs for A114021, there is no canonical definition to state claims against.
-/

/-! ## A114021.P7799619596108121580

`A153246(A316649(n)+A000196(n))`
-/

namespace A114021.P7799619596108121580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (A316649 n + A000196 n).toNat

end

end A114021.P7799619596108121580

/-! ## A114021.P15187049333201675878

`A309144(A063994(n+1)+A000292(n))`
-/

namespace A114021.P15187049333201675878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309144 (A063994 (n + 1) + A000292 n).toNat

end

end A114021.P15187049333201675878

/-! ## A114021.P2800083575674888819

`A072670(A102985(n+1)%A024619(n+1))`
-/

namespace A114021.P2800083575674888819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (Int.tmod (A102985 (n + 1)) (A024619 (n + 1))).toNat

end

end A114021.P2800083575674888819

/-! ## A114021.P4449166767577524267

`A001221(n+2)%A001221(A119048(n+2))`
-/

namespace A114021.P4449166767577524267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (n + 2)) (A001221 (A119048 (n + 2)).toNat)

end

end A114021.P4449166767577524267

/-!
# A114023: Squares of the form semiprime(k) + k-th triangular number.

The programs for A114023, there is no canonical definition to state claims against.
-/

/-! ## A114023.P5102205293118610404

`A360923(A363397(n))²`
-/

namespace A114023.P5102205293118610404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360923 (A363397 n).toNat ^ 2

end

end A114023.P5102205293118610404

/-!
# A114024: Lexicographically earliest infinite sequence of distinct integers k such that there are k primes in the sequence strictly less than k^2.

The programs for A114024, there is no canonical definition to state claims against.
-/

/-! ## A114024.P12091586218253263449

`lt[∑[-n*(-1)^n], A241090(A074399(n+1))]`
-/

namespace A114024.P12091586218253263449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241090 (A074399 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A114024.P12091586218253263449

/-! ## A114024.P9008963393096932497

`lt[A090088(n+1), A002808(A005941(n+2))]`
-/

namespace A114024.P9008963393096932497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A005941 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114024.P9008963393096932497

/-! ## A114024.P16042173074660269678

`lt[log2(A288638(n)), A000361(n)]`
-/

namespace A114024.P16042173074660269678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A288638 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A114024.P16042173074660269678

/-! ## A114024.P9435828061614169984

`lt[A048571(A133911(2*(n+1))), A215926(n+5)]`
-/

namespace A114024.P9435828061614169984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A133911 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215926 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114024.P9435828061614169984

/-! ## A114024.P1751701180246287254

`comp[gcd(A033312(n), A377457(n+1))]`
-/

namespace A114024.P1751701180246287254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033312 n) (A377457 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A114024.P1751701180246287254

/-!
# A114029: Rearrangement of Fibonacci numbers so that the n-th partial concatenation is a multiple of the n-th Fibonacci number.

The programs for A114029, there is no canonical definition to state claims against.
-/

/-! ## A114029.P3083770628746791237

`A000045(A330333(n+3)%A152950(n+1))`
-/

namespace A114029.P3083770628746791237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A330333 (n + 3)) (A152950 (n + 1))).toNat

end

end A114029.P3083770628746791237

/-! ## A114029.P17459987823876673470

`A035516(5^n)`
-/

namespace A114029.P17459987823876673470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (5 ^ n)

end

end A114029.P17459987823876673470

/-!
# A114031: Group the triangular numbers so that the n-th group sum is a multiple of n. 1, (3, 6, 10, 15), (21), (28), (36, 45, 55, 66, 78), (91, 105, 120, 136, 153, 171, 190), ... Sequence contains the group sums.

The programs for A114031, there is no canonical definition to state claims against.
-/

/-! ## A114031.P12606974390664039276

`(n+1)*A114032(n+1)`
-/

namespace A114031.P12606974390664039276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A114032 (n + 1)

end

end A114031.P12606974390664039276

/-! ## A114031.P13455087697320553414

`-xor(n, -1)*A114032(A008624(4*n))`
-/

namespace A114031.P13455087697320553414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (n : ℤ) (-1) * A114032 (A008624 (4 * n)).toNat)

end

end A114031.P13455087697320553414

/-!
# A114032: Group the triangular numbers so that the n-th group sum is a multiple of n. 1, (3, 6, 10, 15), (21), (28), (36, 45, 55, 66, 78), (91, 105, 120, 136, 153, 171, 190), ... Sequence contains n-th group sum divided by n.

The programs for A114032, there is no canonical definition to state claims against.
-/

/-! ## A114032.P6582443333785831024

`A114031(n+1)/(n+1)`
-/

namespace A114032.P6582443333785831024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114031 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A114032.P6582443333785831024

/-!
# A114034: Let f(n) be the number of sequences of 1's and 2's which sum to n. Sequence contains the string of sequences.

The programs for A114034, there is no canonical definition to state claims against.
-/

/-! ## A114034.P11709130570930504762

`A275536(record[A180200(val(n+1, 2)+1)])`
-/

namespace A114034.P11709130570930504762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A114034.P11709130570930504762

/-! ## A114034.P9776765272563040439

`A007931(A267111(n+1)%A109432(n+2))`
-/

namespace A114034.P9776765272563040439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (Int.tmod (A267111 (n + 1)) (A109432 (n + 2))).toNat

end

end A114034.P9776765272563040439

/-! ## A114034.P5113982469573849297

`A275536(A077337(n+1)%A071686(3*n+2))`
-/

namespace A114034.P5113982469573849297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (Int.tmod (A077337 (n + 1)) (A071686 (3 * n + 2))).toNat

end

end A114034.P5113982469573849297

/-! ## A114034.P18042284051926450625

`A007931(A161919(n+1)%A094776(n))`
-/

namespace A114034.P18042284051926450625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (Int.tmod (A161919 (n + 1)) (A094776 n)).toNat

end

end A114034.P18042284051926450625

/-! ## A114034.P4354808220160039351

`A007931(A161919(n+1))%A224643(n+1)`
-/

namespace A114034.P4354808220160039351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007931 (A161919 (n + 1)).toNat) (A224643 (n + 1))

end

end A114034.P4354808220160039351

/-!
# A114035: Self-describing sequence: a(n) gives the number of even integers in the sequence which are strictly < [a(n)]^2.

The programs for A114035, there is no canonical definition to state claims against.
-/

/-! ## A114035.P6575693029056446392

`A020725(lt[A167850(3*(n+1)), A214587(n)])`
-/

namespace A114035.P6575693029056446392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167850 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114035.P6575693029056446392

/-! ## A114035.P7151498230707498338

`A065475(lt[A167850(3*(n+1)), A214587(n)])`
-/

namespace A114035.P7151498230707498338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167850 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114035.P7151498230707498338

/-! ## A114035.P10593311266650029667

`lt[A014261(A242415(3*n+2)), A242366(n+1)]`
-/

namespace A114035.P10593311266650029667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (A242415 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114035.P10593311266650029667

/-! ## A114035.P15408024688266797665

`lt[A243504(3*n+2), A306151(A000267(2*(n+2)))]`
-/

namespace A114035.P15408024688266797665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243504 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306151 (A000267 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114035.P15408024688266797665

/-!
# A114036: Self-describing sequence: a(n) gives the number of odd integers in the sequence which are strictly < [a(n)]^2.

The programs for A114036, there is no canonical definition to state claims against.
-/

/-! ## A114036.P10367723519335778110

`comp[2*A047839(n+2)]+3`
-/

namespace A114036.P10367723519335778110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047839 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A114036.P10367723519335778110

/-! ## A114036.P10505208480287925466

`3+comp[A112594(2*(n+2))]`
-/

namespace A114036.P10505208480287925466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112594 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A114036.P10505208480287925466

/-! ## A114036.P17214816539865572636

`record[A257212(2*(n+1))+A257212(2*n+3)]`
-/

namespace A114036.P17214816539865572636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (2 * (n + 1)) + A257212 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114036.P17214816539865572636

/-! ## A114036.P1136227323329046555

`∪[A117804(n+3), A196564(n)+A117804(n+3)²]`
-/

namespace A114036.P1136227323329046555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n + A117804 (n + 3) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114036.P1136227323329046555

/-! ## A114036.P10197533628598643358

`lt[A143505(n^(n%2)), n/2]`
-/

namespace A114036.P10197533628598643358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143505 (n ^ (n % 2))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A114036.P10197533628598643358

/-!
# A114039: Expansion of g.f. 1/Sum_{k>=0} k!*(k!+1)*x^k/2.

The programs for A114039, there is no canonical definition to state claims against.
-/

/-! ## A114039.P4114969910399643603

`∏{e}[n+1, floor(log(atan(#)))]-A321411(2*n+1)²`
-/

namespace A114039.P4114969910399643603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋ - A321411 (2 * n + 1) ^ 2

end

end A114039.P4114969910399643603

/-!
# A114040: a(0) = 1, a(1) = 9, a(n) = 6*a(n-1) - a(n-2) - 4.

The programs for A114040, the canonical program `A114040.P18193180538516361160` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114040 has offset 0).

The definition of A114040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)-4` (program `A114040.P18193180538516361160`, by `A114040.P18193180538516361160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114040.P18193180538516361160

`6*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114040

/-- `6*a(n-1)-a(n-2)-4` -/
def P18193180538516361160.Spec : Prop :=
  ∀ n, P18193180538516361160.a n = A114040 n

theorem P18193180538516361160.correct : P18193180538516361160.Spec := by
  intro n
  simp only [A114040]

end A114040

/-! ## A114040.P11707416047476351148

`A081554(n)+1`
-/

namespace A114040.P11707416047476351148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 n + 1

end

end A114040.P11707416047476351148

namespace A114040

/-- `A081554(n)+1` -/
def P11707416047476351148.Spec : Prop :=
  ∀ n, P11707416047476351148.a n = A114040 n

end A114040

/-! ## A114040.P14136398547284739729

`Δ[A350921(n)]+1`
-/

namespace A114040.P14136398547284739729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114040.P14136398547284739729

namespace A114040

/-- `Δ[A350921(n)]+1` -/
def P14136398547284739729.Spec : Prop :=
  ∀ n, P14136398547284739729.a n = A114040 n

end A114040

/-! ## A114040.P4703791393234751119

`2*A005319(n)+1`
-/

namespace A114040.P4703791393234751119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005319 n + 1

end

end A114040.P4703791393234751119

namespace A114040

/-- `2*A005319(n)+1` -/
def P4703791393234751119.Spec : Prop :=
  ∀ n, P4703791393234751119.a n = A114040 n

end A114040

/-! ## A114040.P14388676804934865841

`4*A001542(n)+1`
-/

namespace A114040.P14388676804934865841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001542 n + 1

end

end A114040.P14388676804934865841

namespace A114040

/-- `4*A001542(n)+1` -/
def P14388676804934865841.Spec : Prop :=
  ∀ n, P14388676804934865841.a n = A114040 n

end A114040

/-! ## A114040.P1532953913038088778

`4*A182189(n)-3`
-/

namespace A114040.P1532953913038088778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A182189 n - 3

end

end A114040.P1532953913038088778

namespace A114040

/-- `4*A182189(n)-3` -/
def P1532953913038088778.Spec : Prop :=
  ∀ n, P1532953913038088778.a n = A114040 n

end A114040

/-! ## A114040.P1878484505052972299

`1+8*A001109(n)`
-/

namespace A114040.P1878484505052972299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 8 * A001109 n

end

end A114040.P1878484505052972299

namespace A114040

/-- `1+8*A001109(n)` -/
def P1878484505052972299.Spec : Prop :=
  ∀ n, P1878484505052972299.a n = A114040 n

end A114040

/-! ## A114040.P3542544184802911614

`5-4*A182188(n)`
-/

namespace A114040.P3542544184802911614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * A182188 n

end

end A114040.P3542544184802911614

namespace A114040

/-- `5-4*A182188(n)` -/
def P3542544184802911614.Spec : Prop :=
  ∀ n, P3542544184802911614.a n = A114040 n

end A114040

/-! ## A114040.P6785474246150678329

`or(1, A371596(2*n))`
-/

namespace A114040.P6785474246150678329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A371596 (2 * n))

end

end A114040.P6785474246150678329

namespace A114040

/-- `or(1, A371596(2*n))` -/
def P6785474246150678329.Spec : Prop :=
  ∀ n, P6785474246150678329.a n = A114040 n

end A114040

/-! ## A114040.P1654414690687773808

`Δ[A137199(2*n)]+1`
-/

namespace A114040.P1654414690687773808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A114040.P1654414690687773808

namespace A114040

/-- `Δ[A137199(2*n)]+1` -/
def P1654414690687773808.Spec : Prop :=
  ∀ n, P1654414690687773808.a n = A114040 n

end A114040

/-! ## A114040.P3193278575088259255

`2*A089499(2*n)+1`
-/

namespace A114040.P3193278575088259255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089499 (2 * n) + 1

end

end A114040.P3193278575088259255

namespace A114040

/-- `2*A089499(2*n)+1` -/
def P3193278575088259255.Spec : Prop :=
  ∀ n, P3193278575088259255.a n = A114040 n

end A114040

/-! ## A114040.P6308909974291563367

`2*A143608(2*n)+1`
-/

namespace A114040.P6308909974291563367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143608 (2 * n) + 1

end

end A114040.P6308909974291563367

namespace A114040

/-- `2*A143608(2*n)+1` -/
def P6308909974291563367.Spec : Prop :=
  ∀ n, P6308909974291563367.a n = A114040 n

end A114040

/-! ## A114040.P1062788347024870575

`4*A000129(2*n)+1`
-/

namespace A114040.P1062788347024870575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000129 (2 * n) + 1

end

end A114040.P1062788347024870575

namespace A114040

/-- `4*A000129(2*n)+1` -/
def P1062788347024870575.Spec : Prop :=
  ∀ n, P1062788347024870575.a n = A114040 n

end A114040

/-! ## A114040.P1859786224096935773

`floor(sqrt(2)*A124696(2*n))`
-/

namespace A114040.P1859786224096935773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A124696 (2 * n) : ℝ)⌋

end

end A114040.P1859786224096935773

namespace A114040

/-- `floor(sqrt(2)*A124696(2*n))` -/
def P1859786224096935773.Spec : Prop :=
  ∀ n, P1859786224096935773.a n = A114040 n

end A114040

/-! ## A114040.P10755890270950508148

`2*A163271(2*n+1)+1`
-/

namespace A114040.P10755890270950508148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163271 (2 * n + 1) + 1

end

end A114040.P10755890270950508148

namespace A114040

/-- `2*A163271(2*n+1)+1` -/
def P10755890270950508148.Spec : Prop :=
  ∀ n, P10755890270950508148.a n = A114040 n

end A114040

/-! ## A114040.P12871786417722457925

`2*A137199(2*n+1)-1`
-/

namespace A114040.P12871786417722457925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137199 (2 * n + 1) - 1

end

end A114040.P12871786417722457925

namespace A114040

/-- `2*A137199(2*n+1)-1` -/
def P12871786417722457925.Spec : Prop :=
  ∀ n, P12871786417722457925.a n = A114040 n

end A114040

/-! ## A114040.P835889964649868468

`or(char[A003188(n)], A081554(n))`
-/

namespace A114040.P835889964649868468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A081554 n)

end

end A114040.P835889964649868468

namespace A114040

/-- `or(char[A003188(n)], A081554(n))` -/
def P835889964649868468.Spec : Prop :=
  ∀ n, P835889964649868468.a n = A114040 n

end A114040

/-! ## A114040.P5153294782995879751

`A111954(2*n)+A075848(n)`
-/

namespace A114040.P5153294782995879751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (2 * n) + A075848 n

end

end A114040.P5153294782995879751

namespace A114040

/-- `A111954(2*n)+A075848(n)` -/
def P5153294782995879751.Spec : Prop :=
  ∀ n, P5153294782995879751.a n = A114040 n

end A114040

/-!
# A114042: Numbers n such that A072473(n)=A072473(n+1).

The programs for A114042, there is no canonical definition to state claims against.
-/

/-! ## A114042.P534968914105843962

`eq[0, A255171(n+1)]+1`
-/

namespace A114042.P534968914105843962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114042.P534968914105843962

/-! ## A114042.P7793075137820143651

`eq[0, A255171(A028310(n))]`
-/

namespace A114042.P7793075137820143651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255171 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114042.P7793075137820143651

/-! ## A114042.P3131251580923955457

`A020725(eq[0, A255171(n+1)])`
-/

namespace A114042.P3131251580923955457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114042.P3131251580923955457

/-! ## A114042.P14855067922820511057

`eq[0, A255171(A233583(n+1))]`
-/

namespace A114042.P14855067922820511057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255171 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114042.P14855067922820511057

/-! ## A114042.P13602372143984703163

`eq[A001223(n+1), A155750(n+1)]+1`
-/

namespace A114042.P13602372143984703163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114042.P13602372143984703163

/-! ## A114042.P728225110235048581

`eq[A072473(n+2), A072473(n+1)]+1`
-/

namespace A114042.P728225110235048581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114042.P728225110235048581

/-! ## A114042.P16020166166826727064

`eq[A258934(n+3), A258934(n+2)]+2`
-/

namespace A114042.P16020166166826727064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258934 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258934 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A114042.P16020166166826727064

/-! ## A114042.P11138723581948591504

`eq[A031131(2*(n+1)), A054541(n+2)]+1`
-/

namespace A114042.P11138723581948591504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114042.P11138723581948591504

/-! ## A114042.P7953691282951808651

`eq[A031131(A004277(n)), A054541(n+1)]`
-/

namespace A114042.P7953691282951808651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114042.P7953691282951808651

/-! ## A114042.P17632813484474265263

`eq[A054541(2*n+1)+A054541(2*(n+1)), A181346(n+1)]`
-/

namespace A114042.P17632813484474265263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (2 * n + 1) + A054541 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114042.P17632813484474265263

/-!
# A114043: Take an n X n square grid of points in the plane; a(n) = number of ways to divide the points into two sets using a straight line.

The programs for A114043, there is no canonical definition to state claims against.
-/

/-! ## A114043.P6680290128566265304

`A141255(n+1)+1`
-/

namespace A114043.P6680290128566265304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 1) + 1

end

end A114043.P6680290128566265304

/-! ## A114043.P14459417601132695134

`A114146(n+1)/2`
-/

namespace A114043.P14459417601132695134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114146 (n + 1) : ℚ) / 2

end

end A114043.P14459417601132695134

/-! ## A114043.P2261446715871349202

`A177719(2*(n+1))/4+1`
-/

namespace A114043.P2261446715871349202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (2 * (n + 1)) : ℚ) / 4 + 1

end

end A114043.P2261446715871349202

/-! ## A114043.P17253049601085906454

`A344993(n)+A058331(n)`
-/

namespace A114043.P17253049601085906454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344993 n + A058331 n

end

end A114043.P17253049601085906454

/-! ## A114043.P9226847977349965035

`A001105(n)+A344993(n)+1`
-/

namespace A114043.P9226847977349965035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + (A344993 n + 1)

end

end A114043.P9226847977349965035

/-! ## A114043.P16605894561770374595

`2*A115005(n+1)+1`
-/

namespace A114043.P16605894561770374595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115005 (n + 1) + 1

end

end A114043.P16605894561770374595

/-! ## A114043.P8937480760948246185

`2*(A306302(n)-n)+1`
-/

namespace A114043.P8937480760948246185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A306302 n - (n : ℤ)) + 1

end

end A114043.P8937480760948246185

/-! ## A114043.P10719124756325694657

`A290131(n+1)+A306302(n)+1`
-/

namespace A114043.P10719124756325694657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 1) + (A306302 n + 1)

end

end A114043.P10719124756325694657

/-! ## A114043.P8548825930116887953

`A331771(n+1)/2+1`
-/

namespace A114043.P8548825930116887953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331771 (n + 1) : ℚ) / 2 + 1

end

end A114043.P8548825930116887953

/-! ## A114043.P15053464691231497445

`A290131(n+1)+A290132(n+1)-A159065(n+1)`
-/

namespace A114043.P15053464691231497445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 1) + (A290132 (n + 1) - A159065 (n + 1))

end

end A114043.P15053464691231497445

/-! ## A114043.P18411361946821958610

`A331773(2*(n+1))+1`
-/

namespace A114043.P18411361946821958610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331773 (2 * (n + 1)) + 1

end

end A114043.P18411361946821958610

/-! ## A114043.P10750715771731767480

`A332351(∑[n+1])+1`
-/

namespace A114043.P10750715771731767480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A114043.P10750715771731767480

/-!
# A114044: Number of (ordered) sequences of coins (each of which has value 1, 5, 10, 25, 50 or 100) which add to n.

The programs for A114044, there is no canonical definition to state claims against.
-/

/-! ## A114044.P1174598230379064168

`A351724(A317205(∑[n]))`
-/

namespace A114044.P1174598230379064168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351724 (A317205 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A114044.P1174598230379064168

/-! ## A114044.P17326750969785902755

`A351724(n)+A000007(Δ[n²]²)`
-/

namespace A114044.P17326750969785902755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351724 n + A000007 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A114044.P17326750969785902755

/-! ## A114044.P7634194873477143176

`A351724(n)/A101455(Δ[n²]²)`
-/

namespace A114044.P7634194873477143176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351724 n : ℚ) / (A101455 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat : ℚ)

end

end A114044.P7634194873477143176

/-! ## A114044.P70721063983118658

`A351724(n)/A225561(Δ[n²]²)`
-/

namespace A114044.P70721063983118658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351724 n : ℚ) / (A225561 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat : ℚ)

end

end A114044.P70721063983118658

/-! ## A114044.P2675708334048227268

`A351724(n)%A001248(Δ[n²]²)`
-/

namespace A114044.P2675708334048227268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351724 n) (A001248 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat)

end

end A114044.P2675708334048227268

/-! ## A114044.P7875869028472346191

`-A351724(n)/A057428(Δ[n²]²)`
-/

namespace A114044.P7875869028472346191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A351724 n : ℚ) / (A057428 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat : ℚ))

end

end A114044.P7875869028472346191

/-! ## A114044.P3475562452474848542

`A351724(n)+A101455(Δ[n²]²+1)`
-/

namespace A114044.P3475562452474848542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351724 n + A101455 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1).toNat

end

end A114044.P3475562452474848542

/-! ## A114044.P6453444701469900675

`A351724(n)+val(A351673(2*n+5), 2)`
-/

namespace A114044.P6453444701469900675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351724 n + (SequenceMachineLib.valuation (A351673 (2 * n + 5)).toNat 2 : ℤ)

end

end A114044.P6453444701469900675

/-! ## A114044.P12884492758897221773

`A007814(A060626(n))*A351724(n)`
-/

namespace A114044.P12884492758897221773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A060626 n).toNat * A351724 n

end

end A114044.P12884492758897221773

/-!
# A114045: a(n) = n*a(n-1)! with a(0) = 0, a(1) = 1.

The programs for A114045, there is no canonical definition to state claims against.
-/

/-! ## A114045.P486644344238770474

`n*∑[and(5, n)]!`
-/

namespace A114045.P486644344238770474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114045.P486644344238770474

/-!
# A114046: Numbers x such that x^2 - 92*y^2 = 1 for some y.

The programs for A114046, there is no canonical definition to state claims against.
-/

/-! ## A114046.P7988259737092016567

`A114051(2*n)`
-/

namespace A114046.P7988259737092016567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114051 (2 * n)

end

end A114046.P7988259737092016567

/-! ## A114046.P2272091732422506513

`or(1, A114051(A005843(n)))`
-/

namespace A114046.P2272091732422506513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A114051 (A005843 n).toNat)

end

end A114046.P2272091732422506513

/-! ## A114046.P12115429868428070009

`lcm(A057077(n), A114051(A005843(n)))`
-/

namespace A114046.P12115429868428070009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A114051 (A005843 n).toNat)

end

end A114046.P12115429868428070009

/-! ## A114046.P5407829170555373376

`record[A114051(A114327(n)+A051162(n))]`
-/

namespace A114046.P5407829170555373376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114051 (A114327 n + A051162 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114046.P5407829170555373376

/-! ## A114046.P16726816405915252940

`record[A114051(A051162(n)-A025581(n))]`
-/

namespace A114046.P16726816405915252940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114051 (A051162 n - A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114046.P16726816405915252940

/-!
# A114047: x such that x^2 - 13*y^2 = 1.

The programs for A114047, there is no canonical definition to state claims against.
-/

/-! ## A114047.P5793507034203497411

`2*A132644(n)+1`
-/

namespace A114047.P5793507034203497411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132644 n + 1

end

end A114047.P5793507034203497411

/-! ## A114047.P16469235052896544671

`A057076(3*n)/2`
-/

namespace A114047.P16469235052896544671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057076 (3 * n) : ℚ) / 2

end

end A114047.P16469235052896544671

/-! ## A114047.P4805771642004611794

`A006497(A008588(n))/2`
-/

namespace A114047.P4805771642004611794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006497 (A008588 n).toNat : ℚ) / 2

end

end A114047.P4805771642004611794

/-! ## A114047.P13956541483448594731

`floor(A006497(A008458(n))/2)`
-/

namespace A114047.P13956541483448594731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006497 (A008458 n).toNat : ℚ) / 2⌋

end

end A114047.P13956541483448594731

/-!
# A114048: x-values in the solution to x^2 - 19*y^2 = 1.

The programs for A114048, the canonical program `A114048.P165565569857917609` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114048 has offset 1).

The definition of A114048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114048.P165565569857917609

`340*a(n-1)-a(n-2)` with `a(0)=1, a(1)=170`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114048

/-- `340*a(n-1)-a(n-2)` -/
def P165565569857917609.Spec : Prop :=
  ∀ n, P165565569857917609.a n = A114048 (n + 1)

theorem P165565569857917609.correct : P165565569857917609.Spec := by
  intro n
  simp only [A114048, Nat.add_sub_cancel]

end A114048

/-! ## A114048.P16407914192651530449

`A167774(n)/9`
-/

namespace A114048.P16407914192651530449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167774 n : ℚ) / 9

end

end A114048.P16407914192651530449

namespace A114048

/-- `A167774(n)/9` -/
def P16407914192651530449.Spec : Prop :=
  ∀ n, P16407914192651530449.a n = (A114048 (n + 1) : ℚ)

end A114048

/-! ## A114048.P10143369156453751178

`record[and(A033999(n), A041314(n))]`
-/

namespace A114048.P10143369156453751178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041314 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114048.P10143369156453751178

namespace A114048

/-- `record[and(A033999(n), A041314(n))]` -/
def P10143369156453751178.Spec : Prop :=
  ∀ n, P10143369156453751178.a n = A114048 (n + 1)

end A114048

/-! ## A114048.P1318061209762764609

`A167822(n)-10*A174765(n+1)`
-/

namespace A114048.P1318061209762764609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167822 n - 10 * A174765 (n + 1)

end

end A114048.P1318061209762764609

namespace A114048

/-- `A167822(n)-10*A174765(n+1)` -/
def P1318061209762764609.Spec : Prop :=
  ∀ n, P1318061209762764609.a n = A114048 (n + 1)

end A114048

/-! ## A114048.P1285824668942958538

`A167822(n)-(A174765(n+1)+A167820(n))`
-/

namespace A114048.P1285824668942958538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167822 n - (A174765 (n + 1) + A167820 n)

end

end A114048.P1285824668942958538

namespace A114048

/-- `A167822(n)-(A174765(n+1)+A167820(n))` -/
def P1285824668942958538.Spec : Prop :=
  ∀ n, P1285824668942958538.a n = A114048 (n + 1)

end A114048

/-!
# A114049: x such that x^2 - 21*y^2 = 1.

The programs for A114049, the canonical program `A114049.P11660377629395120384` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114049 has offset 0).

The definition of A114049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114049.P11660377629395120384

`110*a(n-1)-a(n-2)` with `a(0)=1, a(1)=55`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114049

/-- `110*a(n-1)-a(n-2)` -/
def P11660377629395120384.Spec : Prop :=
  ∀ n, P11660377629395120384.a n = A114049 n

theorem P11660377629395120384.correct : P11660377629395120384.Spec := by
  intro n
  simp only [A114049]

end A114049

/-! ## A114049.P6153040259762244378

`record[gcd(A041148(n), A126120(n))]`
-/

namespace A114049.P6153040259762244378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041148 n) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114049.P6153040259762244378

namespace A114049

/-- `record[gcd(A041148(n), A126120(n))]` -/
def P6153040259762244378.Spec : Prop :=
  ∀ n, (P6153040259762244378.a n : ℤ) = A114049 n

end A114049

/-! ## A114049.P5660527823966217975

`record[and(A033999(n), A041148(n))]`
-/

namespace A114049.P5660527823966217975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041148 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114049.P5660527823966217975

namespace A114049

/-- `record[and(A033999(n), A041148(n))]` -/
def P5660527823966217975.Spec : Prop :=
  ∀ n, P5660527823966217975.a n = A114049 n

end A114049

/-! ## A114049.P18356712775759757070

`1/2*(55+12*sqrt(21))^n+1/2*(55-12*sqrt(21))^n`
-/

namespace A114049.P18356712775759757070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * (55 + 12 * Real.sqrt (21 : ℝ)) ^ n + ((1 : ℚ) / 2 : ℝ) * (55 - 12 * Real.sqrt (21 : ℝ)) ^ n

end

end A114049.P18356712775759757070

namespace A114049

/-- `1/2*(55+12*sqrt(21))^n+1/2*(55-12*sqrt(21))^n` -/
def P18356712775759757070.Spec : Prop :=
  ∀ n, P18356712775759757070.a n = (A114049 n : ℝ)

end A114049

/-! ## A114049.P17617995505149598580

`A003501(3*n)/2`
-/

namespace A114049.P17617995505149598580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003501 (3 * n) : ℚ) / 2

end

end A114049.P17617995505149598580

namespace A114049

/-- `A003501(3*n)/2` -/
def P17617995505149598580.Spec : Prop :=
  ∀ n, P17617995505149598580.a n = (A114049 n : ℚ)

end A114049

/-!
# A114050: x-values in the solution to x^2 - 22*y^2 = 1.

The programs for A114050, the canonical program `A114050.P467370224576430642` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114050 has offset 1).

The definition of A114050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114050.P467370224576430642

`394*a(n-1)-a(n-2)` with `a(0)=1, a(1)=197`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114050

/-- `394*a(n-1)-a(n-2)` -/
def P467370224576430642.Spec : Prop :=
  ∀ n, P467370224576430642.a n = A114050 (n + 1)

theorem P467370224576430642.correct : P467370224576430642.Spec := by
  intro n
  simp only [A114050, Nat.add_sub_cancel]

end A114050

/-! ## A114050.P10316341829276940865

`record[A041366(n)^A062157(n)]`
-/

namespace A114050.P10316341829276940865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041366 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114050.P10316341829276940865

namespace A114050

/-- `record[A041366(n)^A062157(n)]` -/
def P10316341829276940865.Spec : Prop :=
  ∀ n, P10316341829276940865.a n = (A114050 (n + 1) : ℚ)

end A114050

/-! ## A114050.P6341254806330641689

`record[A042526(n)^A062157(n)]`
-/

namespace A114050.P6341254806330641689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042526 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114050.P6341254806330641689

namespace A114050

/-- `record[A042526(n)^A062157(n)]` -/
def P6341254806330641689.Spec : Prop :=
  ∀ n, P6341254806330641689.a n = (A114050 (n + 1) : ℚ)

end A114050

/-! ## A114050.P7285539279320147869

`record[A041366(n)^A131729(n)]`
-/

namespace A114050.P7285539279320147869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041366 n : ℚ) ^ (A131729 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114050.P7285539279320147869

namespace A114050

/-- `record[A041366(n)^A131729(n)]` -/
def P7285539279320147869.Spec : Prop :=
  ∀ n, P7285539279320147869.a n = (A114050 (n + 1) : ℚ)

end A114050

/-! ## A114050.P18158790002203367447

`record[gcd(A035363(n), A042526(n))]`
-/

namespace A114050.P18158790002203367447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A042526 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114050.P18158790002203367447

namespace A114050

/-- `record[gcd(A035363(n), A042526(n))]` -/
def P18158790002203367447.Spec : Prop :=
  ∀ n, (P18158790002203367447.a n : ℤ) = A114050 (n + 1)

end A114050

/-!
# A114051: x such that x^2 - 23*y^2 = 1.

The programs for A114051, the canonical program `A114051.P7124047870822648042` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114051 has offset 0).

The definition of A114051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114051.P7124047870822648042

`48*a(n-1)-a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114051

/-- `48*a(n-1)-a(n-2)` -/
def P7124047870822648042.Spec : Prop :=
  ∀ n, P7124047870822648042.a n = A114051 n

theorem P7124047870822648042.correct : P7124047870822648042.Spec := by
  intro n
  simp only [A114051]

end A114051

/-! ## A114051.P7376409600930031024

`record[A042102(n)^A062157(n)]`
-/

namespace A114051.P7376409600930031024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042102 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114051.P7376409600930031024

namespace A114051

/-- `record[A042102(n)^A062157(n)]` -/
def P7376409600930031024.Spec : Prop :=
  ∀ n, P7376409600930031024.a n = (A114051 n : ℚ)

end A114051

/-! ## A114051.P18047952966393790180

`record[gcd(A042102(n), A126120(n))]`
-/

namespace A114051.P18047952966393790180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042102 n) (A126120 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114051.P18047952966393790180

namespace A114051

/-- `record[gcd(A042102(n), A126120(n))]` -/
def P18047952966393790180.Spec : Prop :=
  ∀ n, (P18047952966393790180.a n : ℤ) = A114051 n

end A114051

/-! ## A114051.P7679363150098495353

`record[and(A033999(n), A042102(n))]`
-/

namespace A114051.P7679363150098495353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A042102 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114051.P7679363150098495353

namespace A114051

/-- `record[and(A033999(n), A042102(n))]` -/
def P7679363150098495353.Spec : Prop :=
  ∀ n, P7679363150098495353.a n = A114051 n

end A114051

/-! ## A114051.P15725581597871042913

`A042102(2*n+1)-A042102(2*n)`
-/

namespace A114051.P15725581597871042913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042102 (2 * n + 1) - A042102 (2 * n)

end

end A114051.P15725581597871042913

namespace A114051

/-- `A042102(2*n+1)-A042102(2*n)` -/
def P15725581597871042913.Spec : Prop :=
  ∀ n, P15725581597871042913.a n = A114051 n

end A114051

/-! ## A114051.P14099405739226171649

`A042102(2*n+1)+A042102(2*n)/A033999(2*n+1)`
-/

namespace A114051.P14099405739226171649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042102 (2 * n + 1) : ℚ) + (A042102 (2 * n) : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A114051.P14099405739226171649

namespace A114051

/-- `A042102(2*n+1)+A042102(2*n)/A033999(2*n+1)` -/
def P14099405739226171649.Spec : Prop :=
  ∀ n, P14099405739226171649.a n = (A114051 n : ℚ)

end A114051

/-!
# A114052: x such that x^2 - 27*y^2 = 1.

The programs for A114052, the canonical program `A114052.P4027462497302605121` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114052 has offset 0).

The definition of A114052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114052.P4027462497302605121

`52*a(n-1)-a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114052

/-- `52*a(n-1)-a(n-2)` -/
def P4027462497302605121.Spec : Prop :=
  ∀ n, P4027462497302605121.a n = A114052 n

theorem P4027462497302605121.correct : P4027462497302605121.Spec := by
  intro n
  simp only [A114052]

end A114052

/-! ## A114052.P13263974522778223968

`(1/(26+15*sqrt(3))^n+(26+15*sqrt(3))^n)/2`
-/

namespace A114052.P13263974522778223968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / (26 + 15 * Real.sqrt (3 : ℝ)) ^ n + (26 + 15 * Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A114052.P13263974522778223968

namespace A114052

/-- `(1/(26+15*sqrt(3))^n+(26+15*sqrt(3))^n)/2` -/
def P13263974522778223968.Spec : Prop :=
  ∀ n, P13263974522778223968.a n = (A114052 n : ℝ)

end A114052

/-! ## A114052.P5250050938974520385

`A001075(3*n)`
-/

namespace A114052.P5250050938974520385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (3 * n)

end

end A114052.P5250050938974520385

namespace A114052

/-- `A001075(3*n)` -/
def P5250050938974520385.Spec : Prop :=
  ∀ n, P5250050938974520385.a n = A114052 n

end A114052

/-! ## A114052.P11853552090444699322

`A002531(6*n)`
-/

namespace A114052.P11853552090444699322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (6 * n)

end

end A114052.P11853552090444699322

namespace A114052

/-- `A002531(6*n)` -/
def P11853552090444699322.Spec : Prop :=
  ∀ n, P11853552090444699322.a n = A114052 n

end A114052

/-! ## A114052.P8904550359784199052

`A092184(3*n)+1`
-/

namespace A114052.P8904550359784199052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 (3 * n) + 1

end

end A114052.P8904550359784199052

namespace A114052

/-- `A092184(3*n)+1` -/
def P8904550359784199052.Spec : Prop :=
  ∀ n, P8904550359784199052.a n = A114052 n

end A114052

/-! ## A114052.P6544194568733800021

`A121401(3*n)-1`
-/

namespace A114052.P6544194568733800021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 (3 * n) - 1

end

end A114052.P6544194568733800021

namespace A114052

/-- `A121401(3*n)-1` -/
def P6544194568733800021.Spec : Prop :=
  ∀ n, P6544194568733800021.a n = A114052 n

end A114052

/-! ## A114052.P13953665472155783132

`A249578(8*n+1+n)`
-/

namespace A114052.P13953665472155783132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (8 * n + 1 + n)

end

end A114052.P13953665472155783132

namespace A114052

/-- `A249578(8*n+1+n)` -/
def P13953665472155783132.Spec : Prop :=
  ∀ n, P13953665472155783132.a n = A114052 n

end A114052

/-! ## A114052.P1708225040616970781

`A005246(4*n+2*n+1)`
-/

namespace A114052.P1708225040616970781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (4 * n + (2 * n + 1))

end

end A114052.P1708225040616970781

namespace A114052

/-- `A005246(4*n+2*n+1)` -/
def P1708225040616970781.Spec : Prop :=
  ∀ n, P1708225040616970781.a n = A114052 n

end A114052

/-! ## A114052.P16481515821997825509

`A042298(2*n+1)-A042298(2*n)`
-/

namespace A114052.P16481515821997825509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042298 (2 * n + 1) - A042298 (2 * n)

end

end A114052.P16481515821997825509

namespace A114052

/-- `A042298(2*n+1)-A042298(2*n)` -/
def P16481515821997825509.Spec : Prop :=
  ∀ n, P16481515821997825509.a n = A114052 n

end A114052

/-!
# A114053: Sum of the first n n-digit primes less n*10^(n-1).

The programs for A114053, there is no canonical definition to state claims against.
-/

/-! ## A114053.P4116265217746713063

`A119491(n+1)-∑[A081045(n)]`
-/

namespace A114053.P4116265217746713063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119491 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114053.P4116265217746713063

/-! ## A114053.P1735481920463435521

`A119491(n+1)-A053541(n+1)`
-/

namespace A114053.P1735481920463435521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119491 (n + 1) - A053541 (n + 1)

end

end A114053.P1735481920463435521

/-! ## A114053.P374507742288371232

`A119491(n+1)-∑[∑[A255381(n)]]`
-/

namespace A114053.P374507742288371232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255381 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119491 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114053.P374507742288371232

/-! ## A114053.P10341932696763854692

`A119491(n+1)-(A126431(n)+A011557(n))`
-/

namespace A114053.P10341932696763854692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119491 (n + 1) - (A126431 n + A011557 n)

end

end A114053.P10341932696763854692

/-! ## A114053.P18140283053499776401

`A028310(A119491(n+1)%A000351(n))`
-/

namespace A114053.P18140283053499776401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A119491 (n + 1)) (A000351 n)).toNat

end

end A114053.P18140283053499776401

/-!
# A114055: Lexicographically earliest strictly increasing sequence such that the run lengths of digits with equal parity in the sequence's digit stream yield the sequence itself.

The programs for A114055, there is no canonical definition to state claims against.
-/

/-! ## A114055.P16688003961091407169

`A105771(n+1)-A113652(A105766(n+5)+1)`
-/

namespace A114055.P16688003961091407169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105771 (n + 1) - A113652 (A105766 (n + 5) + 1).toNat

end

end A114055.P16688003961091407169

/-! ## A114055.P8566410310889427893

`∑[gcd(A061319(n), A272575(n+1))]`
-/

namespace A114055.P8566410310889427893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061319 n) (A272575 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114055.P8566410310889427893

/-! ## A114055.P15118590918062901206

`A084383(A001614(n+1)%A105391(n+1))`
-/

namespace A114055.P15118590918062901206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084383 (Int.tmod (A001614 (n + 1)) (A105391 (n + 1))).toNat

end

end A114055.P15118590918062901206

/-! ## A114055.P6250788826502564297

`A084383(A001614(n+1))%A162691(n+1)`
-/

namespace A114055.P6250788826502564297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084383 (A001614 (n + 1)).toNat) (A162691 (n + 1))

end

end A114055.P6250788826502564297

/-! ## A114055.P1152028073104677910

`lt[A125184(A131105(n+2)), A189479(n+1)]`
-/

namespace A114055.P1152028073104677910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (A131105 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114055.P1152028073104677910

/-!
# A114056: Numbers k such that 2^prime(k) - 1 + 10^k is prime.

The programs for A114056, there is no canonical definition to state claims against.
-/

/-! ## A114056.P11869073314963259937

`xor(2, A007318((a(n-1)+1)²))` with `a(0)=1, a(1)=2`
-/

namespace A114056.P11869073314963259937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 2 (A007318 ((a (n - 1) + 1) ^ 2).toNat)

end

end A114056.P11869073314963259937

/-! ## A114056.P1721959343906594279

`eq[A092695(n), A131823(n)]`
-/

namespace A114056.P1721959343906594279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114056.P1721959343906594279

/-!
# A114058: Start of record gap in even semiprimes (A100484).

The programs for A114058, there is no canonical definition to state claims against.
-/

/-! ## A114058.P6321524553594924885

`2*A002386(n+1)`
-/

namespace A114058.P6321524553594924885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002386 (n + 1)

end

end A114058.P6321524553594924885

/-! ## A114058.P1172458231546944995

`2*(A000101(n+1)-A005250(n+1))`
-/

namespace A114058.P1172458231546944995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000101 (n + 1) - A005250 (n + 1))

end

end A114058.P1172458231546944995

/-! ## A114058.P5794886611837389777

`2*(A000101(n+1)-record[A014320(n+1)])`
-/

namespace A114058.P5794886611837389777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000101 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A114058.P5794886611837389777

/-! ## A114058.P18001943574821836705

`A002386(A000027(n+1))+A002386(n+1)`
-/

namespace A114058.P18001943574821836705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (A000027 (n + 1)).toNat + A002386 (n + 1)

end

end A114058.P18001943574821836705

/-! ## A114058.P17249952510868395

`A002386(n+1)+A002386((n+1)%A000230(n))`
-/

namespace A114058.P17249952510868395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) + A002386 (Int.tmod (n + 1 : ℤ) (A000230 n)).toNat

end

end A114058.P17249952510868395

/-! ## A114058.P9576376991132121765

`A000101(n+1)+A002386(n+1)-A005250(n+1)`
-/

namespace A114058.P9576376991132121765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (n + 1) + (A002386 (n + 1) - A005250 (n + 1))

end

end A114058.P9576376991132121765

/-! ## A114058.P17166179098989586573

`A002386(n+1)+A002386(n+1)/A051700(A051700(n))`
-/

namespace A114058.P17166179098989586573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002386 (n + 1) : ℚ) + (A002386 (n + 1) : ℚ) / (A051700 (A051700 n).toNat : ℚ)

end

end A114058.P17166179098989586573

/-! ## A114058.P5639481558454842926

`2*A000230(floor(A005250(n+1)/2))`
-/

namespace A114058.P5639481558454842926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000230 ⌊(A005250 (n + 1) : ℚ) / 2⌋.toNat

end

end A114058.P5639481558454842926

/-! ## A114058.P10043051259900783489

`record[2*A104138(A026741(n))]`
-/

namespace A114058.P10043051259900783489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104138 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114058.P10043051259900783489

/-!
# A114059: a(n) = binomial(3+2*n, n) * binomial(8+2*n, 3+n).

The programs for A114059, there is no canonical definition to state claims against.
-/

/-! ## A114059.P12835473996110893973

`∑[n+2]*A342288(n+2)`
-/

namespace A114059.P12835473996110893973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A342288 (n + 2)

end

end A114059.P12835473996110893973

/-! ## A114059.P15268284175417359604

`A001791(n+4)*A002054(n+1)`
-/

namespace A114059.P15268284175417359604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 4) * A002054 (n + 1)

end

end A114059.P15268284175417359604

/-! ## A114059.P2634373123671129176

`A001791(n+4)*A116385(2*(n+1))`
-/

namespace A114059.P2634373123671129176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 4) * A116385 (2 * (n + 1))

end

end A114059.P2634373123671129176

/-! ## A114059.P13087887560370975633

`A001791(n+4)*A037951(2*n+3)`
-/

namespace A114059.P13087887560370975633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 4) * A037951 (2 * n + 3)

end

end A114059.P13087887560370975633

/-! ## A114059.P1727518114317830572

`A276666(n+2)/2*A001791(n+4)`
-/

namespace A114059.P1727518114317830572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276666 (n + 2) : ℚ) / 2 * (A001791 (n + 4) : ℚ)

end

end A114059.P1727518114317830572

/-! ## A114059.P9997658779846238604

`A024483(n+3)/2*A001791(n+4)`
-/

namespace A114059.P9997658779846238604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024483 (n + 3) : ℚ) / 2 * (A001791 (n + 4) : ℚ)

end

end A114059.P9997658779846238604

/-! ## A114059.P15949125648673551964

`A002054(n+1)*A037955(A005843(n+4))`
-/

namespace A114059.P15949125648673551964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) * A037955 (A005843 (n + 4)).toNat

end

end A114059.P15949125648673551964

/-! ## A114059.P13636254964356428410

`(A007946(n)-A001791(n+1))*A001791(n+4)`
-/

namespace A114059.P13636254964356428410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007946 n - A001791 (n + 1)) * A001791 (n + 4)

end

end A114059.P13636254964356428410

/-! ## A114059.P10072181574553148260

`A062190(A167614(2*(n+1))+n)`
-/

namespace A114059.P10072181574553148260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062190 (A167614 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A114059.P10072181574553148260

/-!
# A114061: Numbers n such that n = (product of digits of n) * (sum of digits of n) in some base.

The programs for A114061, there is no canonical definition to state claims against.
-/

/-! ## A114061.P12037295522590190137

`A088915(n+1)+A010815(A089143(n))`
-/

namespace A114061.P12037295522590190137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1) + A010815 (A089143 n).toNat

end

end A114061.P12037295522590190137

/-! ## A114061.P14446456905411108768

`A088915(n+1)-A088917(A088930(n))`
-/

namespace A114061.P14446456905411108768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1) - A088917 (A088930 n).toNat

end

end A114061.P14446456905411108768

/-! ## A114061.P7504212713684389415

`A088915(n+1)-A088917(A278613(n))`
-/

namespace A114061.P7504212713684389415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1) - A088917 (A278613 n).toNat

end

end A114061.P7504212713684389415

/-! ## A114061.P7610646833896541446

`A088915(n+1)-A117929(A110930(n+2))`
-/

namespace A114061.P7610646833896541446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088915 (n + 1) - A117929 (A110930 (n + 2)).toNat

end

end A114061.P7610646833896541446

/-! ## A114061.P12305958274797163675

`A088915(n+1)/A014963(A268658(n+1))`
-/

namespace A114061.P12305958274797163675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088915 (n + 1) : ℚ) / (A014963 (A268658 (n + 1)).toNat : ℚ)

end

end A114061.P12305958274797163675

/-!
# A114062: United States Postal Rates (in cents) for the first ounce, starting in 1863.

The programs for A114062, there is no canonical definition to state claims against.
-/

/-! ## A114062.P16507527755244000703

`A097618(n+1)-(A114139(n+1)+A114139(n+2))`
-/

namespace A114062.P16507527755244000703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097618 (n + 1) - (A114139 (n + 1) + A114139 (n + 2))

end

end A114062.P16507527755244000703

/-!
# A114073: Numbers k such that phi(k) + k is a square.

The programs for A114073, the canonical program `A114073.P9867924632758766548` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114073 has offset 1).

The definition of A114073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114073.P9867924632758766548

`eq[1, A007913(A000010(n+1)+n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A114073

/-- `eq[1, A007913(A000010(n+1)+n+1)]+1` -/
def P9867924632758766548.Spec : Prop :=
  ∀ n, (P9867924632758766548.a n : ℤ) = A114073 (n + 1)

theorem P9867924632758766548.correct : P9867924632758766548.Spec := by
  intro n
  simp only [A114073, Nat.add_sub_cancel]

end A114073

/-! ## A114073.P6447292762362297646

`eq[2, A000122(A000010(n+1)+n+1)]+1`
-/

namespace A114073.P6447292762362297646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000010 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114073.P6447292762362297646

namespace A114073

/-- `eq[2, A000122(A000010(n+1)+n+1)]+1` -/
def P6447292762362297646.Spec : Prop :=
  ∀ n, (P6447292762362297646.a n : ℤ) = A114073 (n + 1)

end A114073

/-! ## A114073.P17610633639231370107

`lt[A092487(A000010(n+1)+n+1), 1]+1`
-/

namespace A114073.P17610633639231370107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (A000010 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A114073.P17610633639231370107

namespace A114073

/-- `lt[A092487(A000010(n+1)+n+1), 1]+1` -/
def P17610633639231370107.Spec : Prop :=
  ∀ n, (P17610633639231370107.a n : ℤ) = A114073 (n + 1)

end A114073

/-! ## A114073.P15007572974337948764

`eq[1, A003285(A225530(A028310(n))+n+1)]`
-/

namespace A114073.P15007572974337948764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A225530 (A028310 n).toNat + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114073.P15007572974337948764

namespace A114073

/-- `eq[1, A003285(A225530(A028310(n))+n+1)]` -/
def P15007572974337948764.Spec : Prop :=
  ∀ n, (P15007572974337948764.a n : ℤ) = A114073 (n + 1)

end A114073

/-! ## A114073.P3188514962450025233

`eq[1, A003285(A225530(n)+A000007(n)+n+1)]`
-/

namespace A114073.P3188514962450025233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A225530 n + (A000007 n + (n : ℤ)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114073.P3188514962450025233

namespace A114073

/-- `eq[1, A003285(A225530(n)+A000007(n)+n+1)]` -/
def P3188514962450025233.Spec : Prop :=
  ∀ n, (P3188514962450025233.a n : ℤ) = A114073 (n + 1)

end A114073

/-!
# A114074: phi(n) + n is a cube.

The programs for A114074, there is no canonical definition to state claims against.
-/

/-! ## A114074.P14192673661677769927

`eq[A225530(n+1), A333884(n+1)]+1`
-/

namespace A114074.P14192673661677769927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114074.P14192673661677769927

/-! ## A114074.P5237185669094532375

`eq[A225530(A028310(n)), A333884(n)]`
-/

namespace A114074.P5237185669094532375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114074.P5237185669094532375

/-!
# A114076: Numbers k such that k * phi(k) is a cube.

The programs for A114076, there is no canonical definition to state claims against.
-/

/-! ## A114076.P16610106668765262732

`sqrt(A358051(n+1))`
-/

namespace A114076.P16610106668765262732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A358051 (n + 1) : ℝ)

end

end A114076.P16610106668765262732

/-! ## A114076.P1352759154680458493

`record[A056926(A039771(n+1))]`
-/

namespace A114076.P1352759154680458493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A039771 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114076.P1352759154680458493

/-! ## A114076.P18170389857705741884

`A056926(A358051(n+1)+A000007(n))`
-/

namespace A114076.P18170389857705741884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A358051 (n + 1) + A000007 n).toNat

end

end A114076.P18170389857705741884

/-!
# A114079: Numbers k such that sigma(k)*phi(k)*k is a square.

The programs for A114079, there is no canonical definition to state claims against.
-/

/-! ## A114079.P16085312237568839074

`A002322(A003949(n)-A001266(n+2))`
-/

namespace A114079.P16085312237568839074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A003949 n - A001266 (n + 2)).toNat

end

end A114079.P16085312237568839074

/-! ## A114079.P8923251435799913423

`A000203(n+1)*A115302(A000041(2*n+1))`
-/

namespace A114079.P8923251435799913423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A115302 (A000041 (2 * n + 1)).toNat

end

end A114079.P8923251435799913423

/-!
# A114080: Numbers k such that sigma(k) times the k-th prime is a brilliant number (A078972).

The programs for A114080, there is no canonical definition to state claims against.
-/

/-! ## A114080.P5784099664841933627

`A023194(A322262(n)+n)`
-/

namespace A114080.P5784099664841933627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (A322262 n + (n : ℤ)).toNat

end

end A114080.P5784099664841933627

/-! ## A114080.P13893382246294439760

`record[A141822(n+2)^A283466(n+1)]`
-/

namespace A114080.P13893382246294439760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141822 (n + 2) : ℚ) ^ (A283466 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114080.P13893382246294439760

/-! ## A114080.P9014669419991370422

`A023194(A076105(∑[floor((7/8)^-n)]))`
-/

namespace A114080.P9014669419991370422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 : ℚ) / 8) ^ (-(n : ℤ) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (A076105 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A114080.P9014669419991370422

/-! ## A114080.P10679340306661017319

`A023194(C(A185974(n), A035343(n)))`
-/

namespace A114080.P10679340306661017319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (Nat.choose (A185974 n).toNat (A035343 n).toNat)

end

end A114080.P10679340306661017319

/-!
# A114082: sigma(n) plus the n-th prime gives a square.

The programs for A114082, there is no canonical definition to state claims against.
-/

/-! ## A114082.P11975254111438714174

`lt[A092487(A000203(n+1)+A000040(n+1)), 1]+1`
-/

namespace A114082.P11975254111438714174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (A000203 (n + 1) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A114082.P11975254111438714174

/-!
# A114085: phi(n) plus the n-th prime gives a cube.

The programs for A114085, there is no canonical definition to state claims against.
-/

/-! ## A114085.P16349102492568620466

`eq[A145446(n+1)-A000040(n+1), A000010(n+1)]+1`
-/

namespace A114085.P16349102492568620466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145446 (n + 1) - A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A114085.P16349102492568620466

/-!
# A114086: Numbers m such that m XOR 32*m = 33*m.

The programs for A114086, the canonical program `A114086.P6344819876537214699` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114086 has offset 1).

The definition of A114086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114086.P6344819876537214699

`record[n-and(n, 32*n)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114086

/-- `record[n-and(n, 32*n)]` -/
def P6344819876537214699.Spec : Prop :=
  ∀ n, P6344819876537214699.a n = A114086 (n + 1)

theorem P6344819876537214699.correct : P6344819876537214699.Spec := by
  intro n
  simp only [A114086, Nat.add_sub_cancel]

end A114086

/-! ## A114086.P10916435838148035422

`lt[and(n, 32*n), 1]`
-/

namespace A114086.P10916435838148035422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (32 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114086.P10916435838148035422

namespace A114086

/-- `lt[and(n, 32*n), 1]` -/
def P10916435838148035422.Spec : Prop :=
  ∀ n, (P10916435838148035422.a n : ℤ) = A114086 (n + 1)

end A114086

/-! ## A114086.P3881382644686035385

`eq[1, and(n, 32*n)+1]`
-/

namespace A114086.P3881382644686035385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (32 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114086.P3881382644686035385

namespace A114086

/-- `eq[1, and(n, 32*n)+1]` -/
def P3881382644686035385.Spec : Prop :=
  ∀ n, (P3881382644686035385.a n : ℤ) = A114086 (n + 1)

end A114086

/-! ## A114086.P6292103483451698734

`eq[1, C(5, and(n, 32*n))]`
-/

namespace A114086.P6292103483451698734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (Nat.land n (32 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114086.P6292103483451698734

namespace A114086

/-- `eq[1, C(5, and(n, 32*n))]` -/
def P6292103483451698734.Spec : Prop :=
  ∀ n, (P6292103483451698734.a n : ℤ) = A114086 (n + 1)

end A114086

/-! ## A114086.P16226778250201475079

`eq[1, A000837(and(n, 32*n))]`
-/

namespace A114086.P16226778250201475079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (Nat.land n (32 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114086.P16226778250201475079

namespace A114086

/-- `eq[1, A000837(and(n, 32*n))]` -/
def P16226778250201475079.Spec : Prop :=
  ∀ n, (P16226778250201475079.a n : ℤ) = A114086 (n + 1)

end A114086

/-! ## A114086.P8021833057903713190

`lt[0, A000025(A291168(n))]`
-/

namespace A114086.P8021833057903713190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 (A291168 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114086.P8021833057903713190

namespace A114086

/-- `lt[0, A000025(A291168(n))]` -/
def P8021833057903713190.Spec : Prop :=
  ∀ n, (P8021833057903713190.a n : ℤ) = A114086 (n + 1)

end A114086

/-! ## A114086.P7895677198194606642

`lt[A096014(3*A291168(n)), 9]`
-/

namespace A114086.P7895677198194606642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (3 * A291168 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A114086.P7895677198194606642

namespace A114086

/-- `lt[A096014(3*A291168(n)), 9]` -/
def P7895677198194606642.Spec : Prop :=
  ∀ n, (P7895677198194606642.a n : ℤ) = A114086 (n + 1)

end A114086

/-! ## A114086.P17859410780506826844

`eq[A035363(2*n+1), A035363(A291168(n))]`
-/

namespace A114086.P17859410780506826844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A291168 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114086.P17859410780506826844

namespace A114086

/-- `eq[A035363(2*n+1), A035363(A291168(n))]` -/
def P17859410780506826844.Spec : Prop :=
  ∀ n, (P17859410780506826844.a n : ℤ) = A114086 (n + 1)

end A114086

/-! ## A114086.P3528293319884918156

`eq[A089120(2*n+1), A089120(A291168(n))]`
-/

namespace A114086.P3528293319884918156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A291168 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114086.P3528293319884918156

namespace A114086

/-- `eq[A089120(2*n+1), A089120(A291168(n))]` -/
def P3528293319884918156.Spec : Prop :=
  ∀ n, (P3528293319884918156.a n : ℤ) = A114086 (n + 1)

end A114086

/-!
# A114087: Triangle read by rows: T(n,k) is the number of partitions of n whose tails below their Durfee squares have size k (n>=1; 0<=k<=n-1).

The programs for A114087, there is no canonical definition to state claims against.
-/

/-! ## A114087.P1155213941688958721

`A001221(4^A274635(n+1)+6)`
-/

namespace A114087.P1155213941688958721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A274635 (n + 1) : ℤ) + 6)).toNat

end

end A114087.P1155213941688958721

/-! ## A114087.P5325400831303147763

`A001222(4^A274635(n+1)+6)`
-/

namespace A114087.P5325400831303147763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A274635 (n + 1) : ℤ) + 6)).toNat

end

end A114087.P5325400831303147763

/-! ## A114087.P10156479896112028645

`A119963(lt[A052310(n)², A220319(n+1)])`
-/

namespace A114087.P10156479896112028645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052310 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A114087.P10156479896112028645

/-! ## A114087.P4000585132954088039

`A160385(A103880(n))`
-/

namespace A114087.P4000585132954088039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A103880 n).toNat

end

end A114087.P4000585132954088039

/-! ## A114087.P8763160441328469491

`A119963(A253723(n+2))`
-/

namespace A114087.P8763160441328469491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A253723 (n + 2)).toNat

end

end A114087.P8763160441328469491

/-!
# A114088: Triangle read by rows: T(n,k) is number of partitions of n whose tail below its Durfee square has k parts (n >= 1; 0 <= k <= n-1).

The programs for A114088, there is no canonical definition to state claims against.
-/

/-! ## A114088.P4263612318295156754

`A185284(A000700(n+2))+A008284(n+2)`
-/

namespace A114088.P4263612318295156754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000700 (n + 2)).toNat + A008284 (n + 2)

end

end A114088.P4263612318295156754

/-! ## A114088.P18249203679763426846

`A008284(n+2)%A002767(n)`
-/

namespace A114088.P18249203679763426846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008284 (n + 2)) (A002767 n)

end

end A114088.P18249203679763426846

/-! ## A114088.P6583829325413034764

`A008284(floor(log2(A367222(n+3))))`
-/

namespace A114088.P6583829325413034764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (Nat.log 2 (A367222 (n + 3)).toNat)

end

end A114088.P6583829325413034764

/-! ## A114088.P11661860919023610091

`A008284((n+1)%A372474(n)+1)`
-/

namespace A114088.P11661860919023610091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (Int.tmod (n + 1 : ℤ) (A372474 n) + 1).toNat

end

end A114088.P11661860919023610091

/-!
# A114089: Total number of parts in the tails below the Durfee squares of all partitions of n.

The programs for A114089, there is no canonical definition to state claims against.
-/

/-! ## A114089.P17759598256105767734

`A006128(n+1)-A115995(n+1)`
-/

namespace A114089.P17759598256105767734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A115995 (n + 1)

end

end A114089.P17759598256105767734

/-! ## A114089.P2174644919043326364

`∑[A138137(n+1)-Δ[A115995(n)]]`
-/

namespace A114089.P2174644919043326364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114089.P2174644919043326364

/-! ## A114089.P14663282940979179714

`∑[A138137(n+1)-A208474(n+1)]`
-/

namespace A114089.P14663282940979179714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A208474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114089.P14663282940979179714

/-! ## A114089.P11189931247033535242

`∑[Δ[A006128(n)]-A208474(n+1)]`
-/

namespace A114089.P11189931247033535242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A208474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114089.P11189931247033535242

/-! ## A114089.P12687830252369554479

`A006128(n+1)-∑[A208474(n+1)]`
-/

namespace A114089.P12687830252369554479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114089.P12687830252369554479

/-! ## A114089.P17019109742352506951

`∑[A138137(n+1)]-A115995(n+1)`
-/

namespace A114089.P17019109742352506951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A115995 (n + 1)

end

end A114089.P17019109742352506951

/-!
# A114090: Sums of 2 distinct nonnegative cubes.

The programs for A114090, there is no canonical definition to state claims against.
-/

/-! ## A114090.P9022933497741018474

`∪[A024670(n+1), ∑[A003215(n)]]`
-/

namespace A114090.P9022933497741018474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114090.P9022933497741018474

/-! ## A114090.P9892324562433108407

`∪[A024670(n+1), Δ[A000537(n)]]`
-/

namespace A114090.P9892324562433108407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114090.P9892324562433108407

/-! ## A114090.P7526086404223692748

`∪[A000578(n+1), A024670(n+1)]`
-/

namespace A114090.P7526086404223692748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114090.P7526086404223692748

/-! ## A114090.P5043737987121424543

`∩[A004999(n+1), A307585(n+1)]`
-/

namespace A114090.P5043737987121424543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114090.P5043737987121424543

/-! ## A114090.P948825639385748443

`lt[0, A025464(n)]`
-/

namespace A114090.P948825639385748443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114090.P948825639385748443

/-! ## A114090.P2126659281796435175

`lt[1, A173677(n)]`
-/

namespace A114090.P2126659281796435175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114090.P2126659281796435175

/-! ## A114090.P2541170434894140444

`record[(n+1)%(A173677(n+1)+n)]`
-/

namespace A114090.P2541170434894140444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A173677 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114090.P2541170434894140444

/-! ## A114090.P9763377242618854474

`eq[A025455(n)!, A025464(n)]`
-/

namespace A114090.P9763377242618854474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025455 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114090.P9763377242618854474

/-! ## A114090.P7535304142617518581

`eq[A025468(n)!, A025464(n)]`
-/

namespace A114090.P7535304142617518581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114090.P7535304142617518581

/-! ## A114090.P6619423923881040257

`lt[(A025455(n)+1)², A175362(n)]`
-/

namespace A114090.P6619423923881040257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025455 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114090.P6619423923881040257

/-! ## A114090.P857735581072923564

`lt[(2-A010057(n))², A175362(n)]`
-/

namespace A114090.P857735581072923564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010057 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114090.P857735581072923564

/-! ## A114090.P9316787260598576798

`lt[A002376(n+1)!, A175362(n)]`
-/

namespace A114090.P9316787260598576798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002376 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175362 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A114090.P9316787260598576798

/-! ## A114090.P14539931784107765649

`eq[A003982(A175362(n)), A010057(n)]`
-/

namespace A114090.P14539931784107765649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A175362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114090.P14539931784107765649

/-! ## A114090.P12535065151442019352

`lt[A025455(n), A002265(A175362(n))]`
-/

namespace A114090.P12535065151442019352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A175362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114090.P12535065151442019352

/-! ## A114090.P11767231187272109258

`eq[A010057(2*A175362(n)), A010057(n)]`
-/

namespace A114090.P11767231187272109258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (2 * A175362 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114090.P11767231187272109258

/-!
# A114091: Number of partitions of n into parts that are distinct mod 3.

The programs for A114091, the canonical program `A114091.P11037867006393132228` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114091 has offset 1).

The definition of A114091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114091.P11037867006393132228

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2, a(5)=4, a(6)=3, a(7)=3, a(8)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A114091

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P11037867006393132228.Spec : Prop :=
  ∀ n, P11037867006393132228.a n = A114091 (n + 1)

theorem P11037867006393132228.correct : P11037867006393132228.Spec := by
  intro n
  simp only [A114091, Nat.add_sub_cancel]

end A114091

/-! ## A114091.P14117602045600896228

`a(n-3)+gcd(n+1, gcd(a(n-1), a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A114091.P14117602045600896228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + Nat.gcd (n + 1) (Nat.gcd (a (n - 1)) (a (n - 2)))

end

end A114091.P14117602045600896228

namespace A114091

/-- `a(n-3)+gcd(n+1, gcd(a(n-1), a(n-2)))` -/
def P14117602045600896228.Spec : Prop :=
  ∀ n, (P14117602045600896228.a n : ℤ) = A114091 (n + 1)

end A114091

/-! ## A114091.P11905950914919400855

`A008620(n)+Δ[A004006(A002264(n))]`
-/

namespace A114091.P11905950914919400855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + (f1 (n + 1) - f1 n)

end

end A114091.P11905950914919400855

namespace A114091

/-- `A008620(n)+Δ[A004006(A002264(n))]` -/
def P11905950914919400855.Spec : Prop :=
  ∀ n, P11905950914919400855.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P11401592166270451211

`A161680(A175676(n+1))+A086161(n)`
-/

namespace A114091.P11401592166270451211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A175676 (n + 1)).toNat + A086161 n

end

end A114091.P11401592166270451211

namespace A114091

/-- `A161680(A175676(n+1))+A086161(n)` -/
def P11401592166270451211.Spec : Prop :=
  ∀ n, P11401592166270451211.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P13536058364346241973

`abs(A008620(n)-Δ[A190717(n)])`
-/

namespace A114091.P13536058364346241973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008620 n - (f1 (n + 1) - f1 n)|

end

end A114091.P13536058364346241973

namespace A114091

/-- `abs(A008620(n)-Δ[A190717(n)])` -/
def P13536058364346241973.Spec : Prop :=
  ∀ n, P13536058364346241973.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P585056655837294363

`Δ[A001840(n)+A000125(A002264(n))]`
-/

namespace A114091.P585056655837294363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + A000125 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114091.P585056655837294363

namespace A114091

/-- `Δ[A001840(n)+A000125(A002264(n))]` -/
def P585056655837294363.Spec : Prop :=
  ∀ n, P585056655837294363.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P403965645636336347

`A086161(n)+A000217(Δ[A211534(n)])`
-/

namespace A114091.P403965645636336347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n + A000217 (f1 (n + 1) - f1 n).toNat

end

end A114091.P403965645636336347

namespace A114091

/-- `A086161(n)+A000217(Δ[A211534(n)])` -/
def P403965645636336347.Spec : Prop :=
  ∀ n, P403965645636336347.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P10116931323252582731

`A002264(n+3)+Δ[A000125(A002264(n))]`
-/

namespace A114091.P10116931323252582731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 3) + (f1 (n + 1) - f1 n)

end

end A114091.P10116931323252582731

namespace A114091

/-- `A002264(n+3)+Δ[A000125(A002264(n))]` -/
def P10116931323252582731.Spec : Prop :=
  ∀ n, P10116931323252582731.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P6256627596694349621

`A051597(A028242(∑[A005131(n)]))`
-/

namespace A114091.P6256627596694349621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 (A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A114091.P6256627596694349621

namespace A114091

/-- `A051597(A028242(∑[A005131(n)]))` -/
def P6256627596694349621.Spec : Prop :=
  ∀ n, P6256627596694349621.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P3733267501393561523

`A087507(A087508(A161680(n))+n+1)`
-/

namespace A114091.P3733267501393561523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 (A087508 (A161680 n).toNat + (n + 1 : ℤ)).toNat

end

end A114091.P3733267501393561523

namespace A114091

/-- `A087507(A087508(A161680(n))+n+1)` -/
def P3733267501393561523.Spec : Prop :=
  ∀ n, P3733267501393561523.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P6050846369957906142

`A087508(A087508(A161680(n))+n+1)`
-/

namespace A114091.P6050846369957906142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A087508 (A161680 n).toNat + (n + 1 : ℤ)).toNat

end

end A114091.P6050846369957906142

namespace A114091

/-- `A087508(A087508(A161680(n))+n+1)` -/
def P6050846369957906142.Spec : Prop :=
  ∀ n, P6050846369957906142.a n = A114091 (n + 1)

end A114091

/-! ## A114091.P2762937222256402822

`A087507(A128615(A161680(n))+n+1)`
-/

namespace A114091.P2762937222256402822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 (A128615 (A161680 n).toNat + (n + 1 : ℤ)).toNat

end

end A114091.P2762937222256402822

namespace A114091

/-- `A087507(A128615(A161680(n))+n+1)` -/
def P2762937222256402822.Spec : Prop :=
  ∀ n, P2762937222256402822.a n = A114091 (n + 1)

end A114091

/-!
# A114092: Number of partitions of n into parts that are distinct mod 4.

The programs for A114092, the canonical program `A114092.P14494973868737545162` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114092 has offset 0).

The definition of A114092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114092.P14494973868737545162

`A117142(A152271(n))*A175686(A158416(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114092

/-- `A117142(A152271(n))*A175686(A158416(n))` -/
def P14494973868737545162.Spec : Prop :=
  ∀ n, P14494973868737545162.a n = A114092 n

theorem P14494973868737545162.correct : P14494973868737545162.Spec := by
  intro n
  simp only [A114092]

end A114092

/-! ## A114092.P15727062075473264696

`A117142(A152271(n^(n%2)))+A175686(A158416(n))-1`
-/

namespace A114092.P15727062075473264696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (A152271 (n ^ (n % 2))).toNat + (A175686 (A158416 n).toNat - 1)

end

end A114092.P15727062075473264696

namespace A114092

/-- `A117142(A152271(n^(n%2)))+A175686(A158416(n))-1` -/
def P15727062075473264696.Spec : Prop :=
  ∀ n, P15727062075473264696.a n = A114092 n

end A114092

/-! ## A114092.P848884145324075797

`A000120(or(A165891(n), A254128(n)))`
-/

namespace A114092.P848884145324075797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A165891 n) (A254128 n)).toNat

end

end A114092.P848884145324075797

namespace A114092

/-- `A000120(or(A165891(n), A254128(n)))` -/
def P848884145324075797.Spec : Prop :=
  ∀ n, P848884145324075797.a n = A114092 n

end A114092

/-! ## A114092.P14606386513296415447

`A341674(A353401(n+2))+A026927(n+1)`
-/

namespace A114092.P14606386513296415447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (A353401 (n + 2)).toNat + A026927 (n + 1)

end

end A114092.P14606386513296415447

namespace A114092

/-- `A341674(A353401(n+2))+A026927(n+1)` -/
def P14606386513296415447.Spec : Prop :=
  ∀ n, P14606386513296415447.a n = A114092 n

end A114092

/-!
# A114096: Number of partitions of n into parts that are distinct mod 8.

The programs for A114096, there is no canonical definition to state claims against.
-/

/-! ## A114096.P831534287815675351

`A086520(A259393(n)+A025925(n))`
-/

namespace A114096.P831534287815675351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A259393 n + A025925 n).toNat

end

end A114096.P831534287815675351

/-! ## A114096.P9429550063415832894

`A086520(2-(A025925(n)-A259393(n)))`
-/

namespace A114096.P9429550063415832894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (2 - (A025925 n - A259393 n)).toNat

end

end A114096.P9429550063415832894

/-! ## A114096.P17547534348758667667

`A156251(∑[A320226(A004525(n))])`
-/

namespace A114096.P17547534348758667667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114096.P17547534348758667667

/-! ## A114096.P8933646118005051230

`∑[A339364(n)+A079998(A135491(n))]`
-/

namespace A114096.P8933646118005051230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339364 n + A079998 (A135491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114096.P8933646118005051230

/-!
# A114098: Number of partitions of n into parts that are distinct mod 9.

The programs for A114098, there is no canonical definition to state claims against.
-/

/-! ## A114098.P15961072592292211737

`A147706(floor(acot(n)+n))`
-/

namespace A114098.P15961072592292211737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A114098.P15961072592292211737

/-! ## A114098.P15560681090114794795

`A147706(round(acot(n)+n))`
-/

namespace A114098.P15560681090114794795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A114098.P15560681090114794795

/-! ## A114098.P276100941969963065

`A147706(n^floor(atan(n)))`
-/

namespace A114098.P276100941969963065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A114098.P276100941969963065

/-! ## A114098.P4125227278968264588

`A147706(C(n, floor(atan(n))))`
-/

namespace A114098.P4125227278968264588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A114098.P4125227278968264588

/-! ## A114098.P8623685917217495220

`A147706(or(n, floor(acot(n))))`
-/

namespace A114098.P8623685917217495220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A114098.P8623685917217495220

/-! ## A114098.P1274608635517708441

`A147706(xor(n, floor(acot(n))))`
-/

namespace A114098.P1274608635517708441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A114098.P1274608635517708441

/-! ## A114098.P13323455010751174904

`A147706(abs(1-n)+1)`
-/

namespace A114098.P13323455010751174904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (|1 - (n : ℤ)| + 1).toNat

end

end A114098.P13323455010751174904

/-! ## A114098.P9223220727187707930

`or(char[1], A147706(A028310(n)))`
-/

namespace A114098.P9223220727187707930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A147706 (A028310 n).toNat)

end

end A114098.P9223220727187707930

/-! ## A114098.P4695192789344373314

`A147706(A028310(n))%A000041(n+5)`
-/

namespace A114098.P4695192789344373314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147706 (A028310 n).toNat) (A000041 (n + 5))

end

end A114098.P4695192789344373314

/-! ## A114098.P11254711074803608554

`A147706(A028310(n))^A014963(∑[n+1])`
-/

namespace A114098.P11254711074803608554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147706 (A028310 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A114098.P11254711074803608554

/-!
# A114099: Number of partitions of n into parts with digital root = 9.

The programs for A114099, there is no canonical definition to state claims against.
-/

/-! ## A114099.P1486514234080888701

`A035377(n/gcd(3, n))`
-/

namespace A114099.P1486514234080888701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 3 n : ℚ))).toNat

end

end A114099.P1486514234080888701

/-! ## A114099.P4663973687867875632

`A035377(A051176(n))`
-/

namespace A114099.P4663973687867875632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A051176 n).toNat

end

end A114099.P4663973687867875632

/-! ## A114099.P6944479945801038269

`A035444(A004396(A004396(n)))`
-/

namespace A114099.P6944479945801038269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A004396 (A004396 n).toNat).toNat

end

end A114099.P6944479945801038269

/-! ## A114099.P14208684084944213085

`A035444(A092942(A092942(n)))`
-/

namespace A114099.P14208684084944213085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A092942 (A092942 n).toNat).toNat

end

end A114099.P14208684084944213085

/-! ## A114099.P2004403933834951797

`A035444(A274616(A274616(n)))`
-/

namespace A114099.P2004403933834951797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A274616 (A274616 n).toNat).toNat

end

end A114099.P2004403933834951797

/-! ## A114099.P8914100731163771662

`A035444(A074307(n))`
-/

namespace A114099.P8914100731163771662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A074307 n).toNat

end

end A114099.P8914100731163771662

/-! ## A114099.P7290710797366951757

`A035444(A168222(n))`
-/

namespace A114099.P7290710797366951757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A168222 n).toNat

end

end A114099.P7290710797366951757

/-! ## A114099.P11606873777197678293

`A035444(A006369(A006369(n)))`
-/

namespace A114099.P11606873777197678293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A006369 (A006369 n).toNat).toNat

end

end A114099.P11606873777197678293

