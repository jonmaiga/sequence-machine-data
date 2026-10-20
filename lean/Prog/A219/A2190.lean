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
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A219000: Unmatched value maps: number of nX6 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX6 array.

The programs for A219000, there is no canonical definition to state claims against.
-/

/-! ## A219000.P15504194552715384665

`A219002(record[a(n-1)+n-1])` with `a(0)=16, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=6, a(6)=10`
-/

namespace A219000.P15504194552715384665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16, 0, 0, 1, 3, 6, 10] fun n f1 =>
  f1 (n - 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219000.P15504194552715384665

/-!
# A219001: Unmatched value maps: number of nX7 binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX7 array.

The programs for A219001, there is no canonical definition to state claims against.
-/

/-! ## A219001.P18251764720137196425

`A219002(A055999(n+4))`
-/

namespace A219001.P18251764720137196425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A055999 (n + 4)).toNat

end

end A219001.P18251764720137196425

/-!
# A219002: T(n,k)=Unmatched value maps: number of nXk binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nXk array.

The programs for A219002, there is no canonical definition to state claims against.
-/

/-! ## A219002.P1731996569699796952

`A220922(n+1)+A025469(A000166(n))`
-/

namespace A219002.P1731996569699796952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (n + 1) + A025469 (A000166 n).toNat

end

end A219002.P1731996569699796952

/-! ## A219002.P5176382489091212908

`A220993(n+1)+A025469(A000166(n))`
-/

namespace A219002.P5176382489091212908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (n + 1) + A025469 (A000166 n).toNat

end

end A219002.P5176382489091212908

/-! ## A219002.P17413050574469865493

`A220922(n+1)+A056170(A020103(n))`
-/

namespace A219002.P17413050574469865493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220922 (n + 1) + A056170 (A020103 n).toNat

end

end A219002.P17413050574469865493

/-! ## A219002.P98042452706450712

`A220993(n+1)+A056170(A020103(n))`
-/

namespace A219002.P98042452706450712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220993 (n + 1) + A056170 (A020103 n).toNat

end

end A219002.P98042452706450712

/-! ## A219002.P9353574186400908368

`A297654(n+1)+A080224(A056273(n))`
-/

namespace A219002.P9353574186400908368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297654 (n + 1) + A080224 (A056273 n).toNat

end

end A219002.P9353574186400908368

/-!
# A219003: Unmatched value maps: number of 2 X n binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 2 X n array.

The programs for A219003, the canonical program `A219003.P12939061479826122211` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219003 has offset 1).

The definition of A219003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219003.P17785144447814999277

`ogf((1+6x+9x^2)/(1-4x+3x^2-9x^3))`
-/

namespace A219003.P17785144447814999277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 9] [1, -4, 3, -9] n

end

end A219003.P17785144447814999277

namespace A219003

/-- `ogf((1+6x+9x^2)/(1-4x+3x^2-9x^3))` -/
def P17785144447814999277.Spec : Prop :=
  ∀ n, P17785144447814999277.a n = A219003 (n + 1)

end A219003

/-! ## A219003.P12939061479826122211

`4*a(n-1)-3*a(n-2)+9*a(n-3)` with `a(0)=1, a(1)=10, a(2)=46`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219003

/-- `4*a(n-1)-3*a(n-2)+9*a(n-3)` -/
def P12939061479826122211.Spec : Prop :=
  ∀ n, P12939061479826122211.a n = A219003 (n + 1)

theorem P12939061479826122211.correct : P12939061479826122211.Spec := by
  intro n
  simp only [A219003, Nat.add_sub_cancel]

end A219003

/-! ## A219003.P17838543595389029022

`A219002(∑[n+1]+2)`
-/

namespace A219003.P17838543595389029022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219003.P17838543595389029022

namespace A219003

/-- `A219002(∑[n+1]+2)` -/
def P17838543595389029022.Spec : Prop :=
  ∀ n, P17838543595389029022.a n = A219003 (n + 1)

end A219003

/-! ## A219003.P10314976524224347817

`record[A219002(A135223(n+1)+2)]`
-/

namespace A219003.P10314976524224347817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219003.P10314976524224347817

namespace A219003

/-- `record[A219002(A135223(n+1)+2)]` -/
def P10314976524224347817.Spec : Prop :=
  ∀ n, P10314976524224347817.a n = A219003 (n + 1)

end A219003

/-! ## A219003.P1282550442239346558

`record[gcd(A097230(n), A219002(n+1))]`
-/

namespace A219003.P1282550442239346558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A219002 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219003.P1282550442239346558

namespace A219003

/-- `record[gcd(A097230(n), A219002(n+1))]` -/
def P1282550442239346558.Spec : Prop :=
  ∀ n, (P1282550442239346558.a n : ℤ) = A219003 (n + 1)

end A219003

/-!
# A219004: Unmatched value maps: number of 3 X n binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 3 X n array.

The programs for A219004, there is no canonical definition to state claims against.
-/

/-! ## A219004.P4687309825768478901

`A219002(∑[n+2]+4)`
-/

namespace A219004.P4687309825768478901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219004.P4687309825768478901

/-! ## A219004.P2498474953951923084

`and(-1, A219002(A167614(n+1)))`
-/

namespace A219004.P2498474953951923084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A219002 (A167614 (n + 1)).toNat)

end

end A219004.P2498474953951923084

/-! ## A219004.P11459641827833430983

`A219002(A167614(n+1))+A011731(n)`
-/

namespace A219004.P11459641827833430983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A167614 (n + 1)).toNat + A011731 n

end

end A219004.P11459641827833430983

/-! ## A219004.P6104916359919522739

`A219002(A167614(n+1))+A025434(n)`
-/

namespace A219004.P6104916359919522739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A167614 (n + 1)).toNat + A025434 n

end

end A219004.P6104916359919522739

/-! ## A219004.P16076021881287512920

`A219002(A167614(n+1))+A025437(n)`
-/

namespace A219004.P16076021881287512920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A167614 (n + 1)).toNat + A025437 n

end

end A219004.P16076021881287512920

/-!
# A219005: Unmatched value maps: number of 4Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 4Xn array.

The programs for A219005, there is no canonical definition to state claims against.
-/

/-! ## A219005.P27317250021407439

`A219002(∑[n+3]+7)`
-/

namespace A219005.P27317250021407439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219005.P27317250021407439

/-! ## A219005.P12606284265766388238

`A219002(A034856(n+2)+6)-log2(1/2)-1`
-/

namespace A219005.P12606284265766388238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A219002 (A034856 (n + 2) + 6).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 1

end

end A219005.P12606284265766388238

/-! ## A219005.P1919359347051351060

`A219002(A000217(n+3)+4)/A139553(n)`
-/

namespace A219005.P1919359347051351060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219002 (A000217 (n + 3) + 4).toNat : ℚ) / (A139553 n : ℚ)

end

end A219005.P1919359347051351060

/-! ## A219005.P15573715925564836039

`A219002(A000217(n+3)+4)%A067479(n+3)`
-/

namespace A219005.P15573715925564836039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219002 (A000217 (n + 3) + 4).toNat) (A067479 (n + 3))

end

end A219005.P15573715925564836039

/-! ## A219005.P17140306207920304711

`A219002(A000217(n+3)+4)^A139553(3*n+4)`
-/

namespace A219005.P17140306207920304711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219002 (A000217 (n + 3) + 4).toNat : ℚ) ^ (A139553 (3 * n + 4) : ℤ)

end

end A219005.P17140306207920304711

/-!
# A219006: Unmatched value maps: number of 5Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 5Xn array.

The programs for A219006, there is no canonical definition to state claims against.
-/

/-! ## A219006.P14132910573049103549

`A219002(∑[n+4]+11)`
-/

namespace A219006.P14132910573049103549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A219006.P14132910573049103549

/-!
# A219007: Unmatched value maps: number of 6Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 6Xn array.

The programs for A219007, there is no canonical definition to state claims against.
-/

/-! ## A219007.P5996599567640722562

`A219002(∑[n+5]+16)`
-/

namespace A219007.P5996599567640722562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A219007.P5996599567640722562

/-!
# A219008: Unmatched value maps: number of 7Xn binary arrays indicating the locations of corresponding elements not equal to any horizontal, diagonal or antidiagonal neighbor in a random 0..2 7Xn array.

The programs for A219008, there is no canonical definition to state claims against.
-/

/-! ## A219008.P16491872525003544045

`A219002(A056119(n)+28)`
-/

namespace A219008.P16491872525003544045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219002 (A056119 n + 28).toNat

end

end A219008.P16491872525003544045

/-!
# A219009: Coefficients of the Dirichlet series for zeta(4s)/zeta(s).

The programs for A219009, the canonical program `A219009.P4084313568037727888` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219009 has offset 1).

The definition of A219009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219009.P5928645487997204850

`∏{e}[n+1, A219977(#)]`
-/

namespace A219009.P5928645487997204850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A219977 (Nat.factorization (f1 n) p)

end

end A219009.P5928645487997204850

namespace A219009

/-- `∏{e}[n+1, A219977(#)]` -/
def P5928645487997204850.Spec : Prop :=
  ∀ n, P5928645487997204850.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P5859727423222246072

`∏{e}[n+1, A001222(or(12, #))-2]`
-/

namespace A219009.P5859727423222246072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001222 (Nat.lor 12 (Nat.factorization (f1 n) p)) - 2)

end

end A219009.P5859727423222246072

namespace A219009

/-- `∏{e}[n+1, A001222(or(12, #))-2]` -/
def P5859727423222246072.Spec : Prop :=
  ∀ n, P5859727423222246072.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P418195309011504758

`A008683(A053165(n+1))`
-/

namespace A219009.P418195309011504758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A053165 (n + 1)).toNat

end

end A219009.P418195309011504758

namespace A219009

/-- `A008683(A053165(n+1))` -/
def P418195309011504758.Spec : Prop :=
  ∀ n, P418195309011504758.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P7241118027825584393

`A008683(A384555(n+1))`
-/

namespace A219009.P7241118027825584393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A384555 (n + 1)).toNat

end

end A219009.P7241118027825584393

namespace A219009

/-- `A008683(A384555(n+1))` -/
def P7241118027825584393.Spec : Prop :=
  ∀ n, P7241118027825584393.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P17652120599841796838

`A008836(n+1)*A353519(n+1)`
-/

namespace A219009.P17652120599841796838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A353519 (n + 1)

end

end A219009.P17652120599841796838

namespace A219009

/-- `A008836(n+1)*A353519(n+1)` -/
def P17652120599841796838.Spec : Prop :=
  ∀ n, P17652120599841796838.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P15300739987580774055

`A008683((n+1)/A008835(n+1))`
-/

namespace A219009.P15300739987580774055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008835 (n + 1) : ℚ))).toNat

end

end A219009.P15300739987580774055

namespace A219009

/-- `A008683((n+1)/A008835(n+1))` -/
def P15300739987580774055.Spec : Prop :=
  ∀ n, P15300739987580774055.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P3089577877959364111

`2*A369255(n+1)-A353519(n+1)`
-/

namespace A219009.P3089577877959364111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A369255 (n + 1) - A353519 (n + 1)

end

end A219009.P3089577877959364111

namespace A219009

/-- `2*A369255(n+1)-A353519(n+1)` -/
def P3089577877959364111.Spec : Prop :=
  ∀ n, P3089577877959364111.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P4084313568037727888

`∑{d}[n+1, A007427(#)*A063775((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A219009

/-- `∑{d}[n+1, A007427(#)*A063775((n+1)/#)]` -/
def P4084313568037727888.Spec : Prop :=
  ∀ n, P4084313568037727888.a n = A219009 (n + 1)

theorem P4084313568037727888.correct : P4084313568037727888.Spec := by
  intro n
  simp only [A219009, Nat.add_sub_cancel]

end A219009

/-! ## A219009.P4598142460391067232

`∑{d}[n+1, A046951(#)*A355837((n+1)/#)]`
-/

namespace A219009.P4598142460391067232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A355837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P4598142460391067232

namespace A219009

/-- `∑{d}[n+1, A046951(#)*A355837((n+1)/#)]` -/
def P4598142460391067232.Spec : Prop :=
  ∀ n, P4598142460391067232.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P7915738044703249406

`∑{d}[n+1, A158522(#)*A353519((n+1)/#)]`
-/

namespace A219009.P7915738044703249406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A353519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P7915738044703249406

namespace A219009

/-- `∑{d}[n+1, A158522(#)*A353519((n+1)/#)]` -/
def P7915738044703249406.Spec : Prop :=
  ∀ n, P7915738044703249406.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P14473567261856784397

`∑{d}[n+1, A307420(#)*A355684((n+1)/#)]`
-/

namespace A219009.P14473567261856784397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307420 d * A355684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P14473567261856784397

namespace A219009

/-- `∑{d}[n+1, A307420(#)*A355684((n+1)/#)]` -/
def P14473567261856784397.Spec : Prop :=
  ∀ n, P14473567261856784397.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P12197781904958671093

`∑{d}[n+1, A326415(#)*A365171((n+1)/#)]`
-/

namespace A219009.P12197781904958671093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326415 d * A365171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P12197781904958671093

namespace A219009

/-- `∑{d}[n+1, A326415(#)*A365171((n+1)/#)]` -/
def P12197781904958671093.Spec : Prop :=
  ∀ n, P12197781904958671093.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P12301692816130975687

`∑{d}[n+1, A369255(#)*A378452((n+1)/#)]`
-/

namespace A219009.P12301692816130975687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369255 d * A378452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P12301692816130975687

namespace A219009

/-- `∑{d}[n+1, A369255(#)*A378452((n+1)/#)]` -/
def P12301692816130975687.Spec : Prop :=
  ∀ n, P12301692816130975687.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P5833501413077847083

`A008683(A056553(n+1)/A056555(n+1))`
-/

namespace A219009.P5833501413077847083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A056553 (n + 1) : ℚ) / (A056555 (n + 1) : ℚ))).toNat

end

end A219009.P5833501413077847083

namespace A219009

/-- `A008683(A056553(n+1)/A056555(n+1))` -/
def P5833501413077847083.Spec : Prop :=
  ∀ n, P5833501413077847083.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P15617187226092390506

`A307420(A355264(n+1))`
-/

namespace A219009.P15617187226092390506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307420 (A355264 (n + 1)).toNat

end

end A219009.P15617187226092390506

namespace A219009

/-- `A307420(A355264(n+1))` -/
def P15617187226092390506.Spec : Prop :=
  ∀ n, P15617187226092390506.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P4609441202702807025

`A046978(A111217(n+1))`
-/

namespace A219009.P4609441202702807025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A111217 (n + 1)).toNat

end

end A219009.P4609441202702807025

namespace A219009

/-- `A046978(A111217(n+1))` -/
def P4609441202702807025.Spec : Prop :=
  ∀ n, P4609441202702807025.a n = A219009 (n + 1)

end A219009

/-! ## A219009.P6919657784926520180

`A341831(n+1)%A178815(n+1)`
-/

namespace A219009.P6919657784926520180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341831 (n + 1)) (A178815 (n + 1))

end

end A219009.P6919657784926520180

namespace A219009

/-- `A341831(n+1)%A178815(n+1)` -/
def P6919657784926520180.Spec : Prop :=
  ∀ n, P6919657784926520180.a n = A219009 (n + 1)

end A219009

/-!
# A219016: e-perfect numbers (A054979) divided by 36.

The programs for A219016, there is no canonical definition to state claims against.
-/

/-! ## A219016.P14008082507371819701

`A054979(n+1)/36`
-/

namespace A219016.P14008082507371819701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054979 (n + 1) : ℚ) / 36

end

end A219016.P14008082507371819701

/-! ## A219016.P10321962469207626065

`∩[A335219(n+1), A348962(n+1)]/36`
-/

namespace A219016.P10321962469207626065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348962 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 36

end

end A219016.P10321962469207626065

/-! ## A219016.P1574718754834883436

`∩[A318100(n+1), A335219(n+1)]/36`
-/

namespace A219016.P1574718754834883436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 36

end

end A219016.P1574718754834883436

/-! ## A219016.P5588794369631238216

`∩[A335219(n+1), A044102(n)]/36`
-/

namespace A219016.P5588794369631238216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 36

end

end A219016.P5588794369631238216

/-! ## A219016.P11196208615416757494

`∩[A008458(A008458(n)), A348962(n+1)]/36`
-/

namespace A219016.P11196208615416757494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348962 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 36

end

end A219016.P11196208615416757494

/-! ## A219016.P14422434957901771534

`A244414(A054979(n+1))`
-/

namespace A219016.P14422434957901771534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244414 (A054979 (n + 1)).toNat

end

end A219016.P14422434957901771534

/-! ## A219016.P16373340493643339396

`record[A110665(A335219(n+1))]/36`
-/

namespace A219016.P16373340493643339396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110665 (A335219 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 36

end

end A219016.P16373340493643339396

/-! ## A219016.P16857492255557267855

`record[A126164(A348962(n+1))/36]`
-/

namespace A219016.P16857492255557267855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126164 (A348962 (n + 1)).toNat : ℚ) / 36

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219016.P16857492255557267855

/-! ## A219016.P486509770170047315

`A103221(A103221(A054979(n+1)+2))`
-/

namespace A219016.P486509770170047315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A103221 (A054979 (n + 1) + 2).toNat).toNat

end

end A219016.P486509770170047315

/-! ## A219016.P96371275453664904

`A112689(A112689(A054979(n+1)-1))`
-/

namespace A219016.P96371275453664904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A112689 (A054979 (n + 1) - 1).toNat).toNat

end

end A219016.P96371275453664904

/-!
# A219017: Smallest number k such that k^2 - 1 has exactly n distinct prime factors.

The programs for A219017, there is no canonical definition to state claims against.
-/

/-! ## A219017.P16017238823136803622

`A014085(∑[A255463(n)]+n)`
-/

namespace A219017.P16017238823136803622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A219017.P16017238823136803622

/-! ## A219017.P6626336490336649876

`A014085(A005061(n+1)+n)`
-/

namespace A219017.P6626336490336649876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A005061 (n + 1) + (n : ℤ)).toNat

end

end A219017.P6626336490336649876

/-!
# A219020: Sum of the cubes of the first n even-indexed Fibonacci numbers divided by the sum of the first n terms.

The programs for A219020, the canonical program `A219020.P3529369945446315530` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219020 has offset 1).

The definition of A219020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219020.P12151897264046890296

`A163198(n+1)/A027941(n+1)`
-/

namespace A219020.P12151897264046890296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163198 (n + 1) : ℚ) / (A027941 (n + 1) : ℚ)

end

end A219020.P12151897264046890296

namespace A219020

/-- `A163198(n+1)/A027941(n+1)` -/
def P12151897264046890296.Spec : Prop :=
  ∀ n, P12151897264046890296.a n = (A219020 (n + 1) : ℚ)

end A219020

/-! ## A219020.P3529369945446315530

`∑[A215466(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A219020

/-- `∑[A215466(n+1)]` -/
def P3529369945446315530.Spec : Prop :=
  ∀ n, P3529369945446315530.a n = A219020 (n + 1)

theorem P3529369945446315530.correct : P3529369945446315530.Spec := by
  intro n
  simp only [A219020, Nat.add_sub_cancel]

end A219020

/-! ## A219020.P17450846019881483269

`A162460(2*n+3)/2`
-/

namespace A219020.P17450846019881483269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162460 (2 * n + 3) : ℚ) / 2

end

end A219020.P17450846019881483269

namespace A219020

/-- `A162460(2*n+3)/2` -/
def P17450846019881483269.Spec : Prop :=
  ∀ n, P17450846019881483269.a n = (A219020 (n + 1) : ℚ)

end A219020

/-! ## A219020.P9883278859521980222

`∑[A049601(2*(n+1))/2]`
-/

namespace A219020.P9883278859521980222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049601 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219020.P9883278859521980222

namespace A219020

/-- `∑[A049601(2*(n+1))/2]` -/
def P9883278859521980222.Spec : Prop :=
  ∀ n, P9883278859521980222.a n = (A219020 (n + 1) : ℚ)

end A219020

/-! ## A219020.P11662375493814607004

`∑[A051450(2*(n+1))/2]`
-/

namespace A219020.P11662375493814607004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051450 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219020.P11662375493814607004

namespace A219020

/-- `∑[A051450(2*(n+1))/2]` -/
def P11662375493814607004.Spec : Prop :=
  ∀ n, P11662375493814607004.a n = (A219020 (n + 1) : ℚ)

end A219020

/-! ## A219020.P1032244014440905444

`∑[Δ[A033192(2*n+1)]/2]`
-/

namespace A219020.P1032244014440905444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219020.P1032244014440905444

namespace A219020

/-- `∑[Δ[A033192(2*n+1)]/2]` -/
def P1032244014440905444.Spec : Prop :=
  ∀ n, P1032244014440905444.a n = (A219020 (n + 1) : ℚ)

end A219020

/-! ## A219020.P14281767316975949072

`∑[record[A215466(A008612(n))]]`
-/

namespace A219020.P14281767316975949072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215466 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219020.P14281767316975949072

namespace A219020

/-- `∑[record[A215466(A008612(n))]]` -/
def P14281767316975949072.Spec : Prop :=
  ∀ n, P14281767316975949072.a n = A219020 (n + 1)

end A219020

/-! ## A219020.P17974618885990099278

`∑[A182890(2*n+1)+A182890(n)]`
-/

namespace A219020.P17974618885990099278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182890 (2 * n + 1) + A182890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219020.P17974618885990099278

namespace A219020

/-- `∑[A182890(2*n+1)+A182890(n)]` -/
def P17974618885990099278.Spec : Prop :=
  ∀ n, P17974618885990099278.a n = A219020 (n + 1)

end A219020

/-! ## A219020.P17958322645398279589

`A163198(n+1)/A000071(2*n+3)`
-/

namespace A219020.P17958322645398279589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163198 (n + 1) : ℚ) / (A000071 (2 * n + 3) : ℚ)

end

end A219020.P17958322645398279589

namespace A219020

/-- `A163198(n+1)/A000071(2*n+3)` -/
def P17958322645398279589.Spec : Prop :=
  ∀ n, P17958322645398279589.a n = (A219020 (n + 1) : ℚ)

end A219020

/-!
# A219021: Sum of cubes of first n terms of Lucas sequence U(4,1) (A001353) divided by sum of their first powers.

The programs for A219021, there is no canonical definition to state claims against.
-/

/-! ## A219021.P13357962157616883442

`(A123480(n+1)+A061278(n+1))/5`
-/

namespace A219021.P13357962157616883442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123480 (n + 1) + A061278 (n + 1) : ℚ) / 5

end

end A219021.P13357962157616883442

/-! ## A219021.P4037568531888381169

`A249020(A001835(n+2)-2)`
-/

namespace A219021.P4037568531888381169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 (A001835 (n + 2) - 2).toNat

end

end A219021.P4037568531888381169

/-!
# A219023: Number of primes p

The programs for A219023, there is no canonical definition to state claims against.
-/

/-! ## A219023.P4399129166795092496

`A001221(gcd(A001790(n), A249952(n+1)))`
-/

namespace A219023.P4399129166795092496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A001790 n) (A249952 (n + 1)))

end

end A219023.P4399129166795092496

/-!
# A219024: Number of length n mixed-radix numbers with base [2, 3, 4, ...] (factorial base) such that the parities of adjacent digits differ.

The programs for A219024, there is no canonical definition to state claims against.
-/

/-! ## A219024.P6980509369939147985

`floor(n/2)!*record[A276955(n+1)]`
-/

namespace A219024.P6980509369939147985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219024.P6980509369939147985

/-! ## A219024.P15239288782235862155

`∏[A065033(n)]*A266977(n)`
-/

namespace A219024.P15239288782235862155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A266977 n

end

end A219024.P15239288782235862155

/-! ## A219024.P1108740900492708242

`∑[A266591(n)]*∏[A065033(n)]`
-/

namespace A219024.P1108740900492708242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A219024.P1108740900492708242

/-! ## A219024.P10077382506687167699

`record[A276955(n+1)]*A081123(n)`
-/

namespace A219024.P10077382506687167699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A081123 n

end

end A219024.P10077382506687167699

/-! ## A219024.P12456419405008040260

`A002024(A101881(n))*A010551(n)`
-/

namespace A219024.P12456419405008040260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A101881 n).toNat * A010551 n

end

end A219024.P12456419405008040260

/-! ## A219024.P18039700870771044228

`A010551(n+1)+A010551(n)-A000007(n)`
-/

namespace A219024.P18039700870771044228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010551 (n + 1) + (A010551 n - A000007 n)

end

end A219024.P18039700870771044228

/-! ## A219024.P4228453571879079382

`A010551(n+3)/A254667(A002620(n+2))`
-/

namespace A219024.P4228453571879079382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010551 (n + 3) : ℚ) / (A254667 (A002620 (n + 2)).toNat : ℚ)

end

end A219024.P4228453571879079382

/-! ## A219024.P17242767621172736701

`A010551(n+3)/A233583(A033638(n+2))`
-/

namespace A219024.P17242767621172736701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010551 (n + 3) : ℚ) / (A233583 (A033638 (n + 2)).toNat : ℚ)

end

end A219024.P17242767621172736701

/-!
# A219026: Number of primes p<=n such that 2n-p and 2n+p-2 are both prime.

The programs for A219026, there is no canonical definition to state claims against.
-/

/-! ## A219026.P7384986251686101238

`A072670(2*n)+A066247(A111866(n+1))`
-/

namespace A219026.P7384986251686101238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (2 * n) + A066247 (A111866 (n + 1)).toNat

end

end A219026.P7384986251686101238

/-! ## A219026.P8153909853503790270

`A066247(2*n+1)+A066247(A111866(n+1))`
-/

namespace A219026.P8153909853503790270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (2 * n + 1) + A066247 (A111866 (n + 1)).toNat

end

end A219026.P8153909853503790270

/-! ## A219026.P11338633690029552651

`A370814(2*n+1)%A187913(A336760(3*n+2))`
-/

namespace A219026.P11338633690029552651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370814 (2 * n + 1)) (A187913 (A336760 (3 * n + 2)).toNat)

end

end A219026.P11338633690029552651

/-! ## A219026.P4677454716303193500

`and(A001222(2*n+1), A022552(A038883(2*(n+2))))`
-/

namespace A219026.P4677454716303193500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (2 * n + 1)) (A022552 (A038883 (2 * (n + 2))).toNat)

end

end A219026.P4677454716303193500

/-! ## A219026.P9402701688266896598

`A196563(A174913(n+1)+A001629(n))`
-/

namespace A219026.P9402701688266896598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A174913 (n + 1) + A001629 n).toNat

end

end A219026.P9402701688266896598

/-!
# A219027: Number of non-primitive roots for n, less than n.

The programs for A219027, there is no canonical definition to state claims against.
-/

/-! ## A219027.P405534480976546136

`n-A046144(n+1)%(n+1)`
-/

namespace A219027.P405534480976546136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A046144 (n + 1)) (n + 1 : ℤ)

end

end A219027.P405534480976546136

/-! ## A219027.P11639063264274988479

`A028310(n)-A046144(n+1)`
-/

namespace A219027.P11639063264274988479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A046144 (n + 1)

end

end A219027.P11639063264274988479

/-! ## A219027.P10381932145747699171

`abs(A274922(n))-A046144(n+1)`
-/

namespace A219027.P10381932145747699171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274922 n| - A046144 (n + 1)

end

end A219027.P10381932145747699171

/-! ## A219027.P11977664151032814318

`A137734(n²)-A046144(n+1)`
-/

namespace A219027.P11977664151032814318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (n ^ 2) - A046144 (n + 1)

end

end A219027.P11977664151032814318

/-! ## A219027.P4627766525413862449

`A137735(n²)-A046144(n+1)`
-/

namespace A219027.P4627766525413862449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (n ^ 2) - A046144 (n + 1)

end

end A219027.P4627766525413862449

/-! ## A219027.P8406299894173646520

`sqrt(A253909(n))-A046144(n+1)`
-/

namespace A219027.P8406299894173646520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253909 n : ℝ) - (A046144 (n + 1) : ℝ)

end

end A219027.P8406299894173646520

/-! ## A219027.P1202977832553229655

`A345674(n+1)+A016035(n+1)`
-/

namespace A219027.P1202977832553229655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345674 (n + 1) + A016035 (n + 1)

end

end A219027.P1202977832553229655

/-! ## A219027.P9937693831002719786

`A123108(2*n)-A046144(n+1)`
-/

namespace A219027.P9937693831002719786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) - A046144 (n + 1)

end

end A219027.P9937693831002719786

/-! ## A219027.P2791630925120060453

`(n-A046144(n+1))%A000041(n)`
-/

namespace A219027.P2791630925120060453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A046144 (n + 1)) (A000041 n)

end

end A219027.P2791630925120060453

/-! ## A219027.P13375969838408080305

`n-A000010(A000010(n+1))*A211487(n+1)`
-/

namespace A219027.P13375969838408080305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (A000010 (n + 1)).toNat * A211487 (n + 1)

end

end A219027.P13375969838408080305

/-!
# A219028: Number of non-primitive roots for prime(n), less than prime(n).

The programs for A219028, the canonical program `A219028.P14180676015968789505` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219028 has offset 1).

The definition of A219028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219028.P10923551683999371203

`A051953(record[A037225(n)])`
-/

namespace A219028.P10923551683999371203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P10923551683999371203

namespace A219028

/-- `A051953(record[A037225(n)])` -/
def P10923551683999371203.Spec : Prop :=
  ∀ n, P10923551683999371203.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P17571750662236492934

`A051953(A006093(n+1))`
-/

namespace A219028.P17571750662236492934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A006093 (n + 1)).toNat

end

end A219028.P17571750662236492934

namespace A219028

/-- `A051953(A006093(n+1))` -/
def P17571750662236492934.Spec : Prop :=
  ∀ n, P17571750662236492934.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P13013841799145999260

`A070556(A000040(n+1))`
-/

namespace A219028.P13013841799145999260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (A000040 (n + 1)).toNat

end

end A219028.P13013841799145999260

namespace A219028

/-- `A070556(A000040(n+1))` -/
def P13013841799145999260.Spec : Prop :=
  ∀ n, P13013841799145999260.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P2097272857800453356

`A070556(A006005(n+1))`
-/

namespace A219028.P2097272857800453356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (A006005 (n + 1)).toNat

end

end A219028.P2097272857800453356

namespace A219028

/-- `A070556(A006005(n+1))` -/
def P2097272857800453356.Spec : Prop :=
  ∀ n, P2097272857800453356.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P14180676015968789505

`A057000(A039915(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A219028

/-- `A057000(A039915(n+1))` -/
def P14180676015968789505.Spec : Prop :=
  ∀ n, P14180676015968789505.a n = A219028 (n + 1)

theorem P14180676015968789505.correct : P14180676015968789505.Spec := by
  intro n
  simp only [A219028, Nat.add_sub_cancel]

end A219028

/-! ## A219028.P16615356998598100776

`A082023(A037168(n+1))`
-/

namespace A219028.P16615356998598100776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (A037168 (n + 1)).toNat

end

end A219028.P16615356998598100776

namespace A219028

/-- `A082023(A037168(n+1))` -/
def P16615356998598100776.Spec : Prop :=
  ∀ n, P16615356998598100776.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P2385788082489935385

`A070556(A008578(n+2))`
-/

namespace A219028.P2385788082489935385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (A008578 (n + 2)).toNat

end

end A219028.P2385788082489935385

namespace A219028

/-- `A070556(A008578(n+2))` -/
def P2385788082489935385.Spec : Prop :=
  ∀ n, P2385788082489935385.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P7638464873852396262

`A070556(A075643(n+2))`
-/

namespace A219028.P7638464873852396262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (A075643 (n + 2)).toNat

end

end A219028.P7638464873852396262

namespace A219028

/-- `A070556(A075643(n+2))` -/
def P7638464873852396262.Spec : Prop :=
  ∀ n, P7638464873852396262.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P5275674957418809356

`A051953(record[A000010(n+1)])`
-/

namespace A219028.P5275674957418809356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P5275674957418809356

namespace A219028

/-- `A051953(record[A000010(n+1)])` -/
def P5275674957418809356.Spec : Prop :=
  ∀ n, P5275674957418809356.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P18201357601625168820

`A051953(record[A002322(n+1)])`
-/

namespace A219028.P18201357601625168820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P18201357601625168820

namespace A219028

/-- `A051953(record[A002322(n+1)])` -/
def P18201357601625168820.Spec : Prop :=
  ∀ n, P18201357601625168820.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P12825593306278609427

`A057000(record[A000010(n+1)])`
-/

namespace A219028.P12825593306278609427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P12825593306278609427

namespace A219028

/-- `A057000(record[A000010(n+1)])` -/
def P12825593306278609427.Spec : Prop :=
  ∀ n, P12825593306278609427.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P11330364121330503449

`A082849(record[A000010(n+1)])`
-/

namespace A219028.P11330364121330503449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P11330364121330503449

namespace A219028

/-- `A082849(record[A000010(n+1)])` -/
def P11330364121330503449.Spec : Prop :=
  ∀ n, P11330364121330503449.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P2073636009763599136

`A083548(record[A000010(n+1)])`
-/

namespace A219028.P2073636009763599136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083548 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P2073636009763599136

namespace A219028

/-- `A083548(record[A000010(n+1)])` -/
def P2073636009763599136.Spec : Prop :=
  ∀ n, P2073636009763599136.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P8970081543131934695

`A083549(record[A000010(n+1)])`
-/

namespace A219028.P8970081543131934695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083549 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P8970081543131934695

namespace A219028

/-- `A083549(record[A000010(n+1)])` -/
def P8970081543131934695.Spec : Prop :=
  ∀ n, P8970081543131934695.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P2039818718570153104

`A070556(record[A006530(n+2)])`
-/

namespace A219028.P2039818718570153104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P2039818718570153104

namespace A219028

/-- `A070556(record[A006530(n+2)])` -/
def P2039818718570153104.Spec : Prop :=
  ∀ n, P2039818718570153104.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P1450869874322477103

`A070556(record[A020639(n+2)])`
-/

namespace A219028.P1450869874322477103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P1450869874322477103

namespace A219028

/-- `A070556(record[A020639(n+2)])` -/
def P1450869874322477103.Spec : Prop :=
  ∀ n, P1450869874322477103.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P14955891899843346284

`A219029(record[A006530(n+2)])`
-/

namespace A219028.P14955891899843346284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219029 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P14955891899843346284

namespace A219028

/-- `A219029(record[A006530(n+2)])` -/
def P14955891899843346284.Spec : Prop :=
  ∀ n, P14955891899843346284.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P1758596875013497540

`A219029(record[A020639(n+2)])`
-/

namespace A219028.P1758596875013497540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219029 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219028.P1758596875013497540

namespace A219028

/-- `A219029(record[A020639(n+2)])` -/
def P1758596875013497540.Spec : Prop :=
  ∀ n, P1758596875013497540.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P13024952525876373285

`A219029(A006093(n+1)+1)`
-/

namespace A219028.P13024952525876373285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219029 (A006093 (n + 1) + 1).toNat

end

end A219028.P13024952525876373285

namespace A219028

/-- `A219029(A006093(n+1)+1)` -/
def P13024952525876373285.Spec : Prop :=
  ∀ n, P13024952525876373285.a n = A219028 (n + 1)

end A219028

/-! ## A219028.P13835045039877485588

`A051953(A000040(n+1)-1)`
-/

namespace A219028.P13835045039877485588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000040 (n + 1) - 1).toNat

end

end A219028.P13835045039877485588

namespace A219028

/-- `A051953(A000040(n+1)-1)` -/
def P13835045039877485588.Spec : Prop :=
  ∀ n, P13835045039877485588.a n = A219028 (n + 1)

end A219028

/-!
# A219029: a(n) = n - 1 - phi(phi(n)).

The programs for A219029, the canonical program `A219029.P2789950166791163468` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219029 has offset 1).

The definition of A219029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010554, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219029.P2789950166791163468

`n-A010554(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A219029

/-- `n-A010554(n+1)` -/
def P2789950166791163468.Spec : Prop :=
  ∀ n, P2789950166791163468.a n = A219029 (n + 1)

theorem P2789950166791163468.correct : P2789950166791163468.Spec := by
  intro n
  simp only [A219029, Nat.add_sub_cancel]

end A219029

/-! ## A219029.P11829055954593823909

`n-∑[A111409(n)]`
-/

namespace A219029.P11829055954593823909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219029.P11829055954593823909

namespace A219029

/-- `n-∑[A111409(n)]` -/
def P11829055954593823909.Spec : Prop :=
  ∀ n, P11829055954593823909.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P1228756846919376674

`n-A000010(Δ[A002088(n)])`
-/

namespace A219029.P1228756846919376674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (f1 (n + 1) - f1 n).toNat

end

end A219029.P1228756846919376674

namespace A219029

/-- `n-A000010(Δ[A002088(n)])` -/
def P1228756846919376674.Spec : Prop :=
  ∀ n, P1228756846919376674.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P17130796410472790624

`n-A000010(Δ[A005728(n)])`
-/

namespace A219029.P17130796410472790624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (f1 (n + 1) - f1 n).toNat

end

end A219029.P17130796410472790624

namespace A219029

/-- `n-A000010(Δ[A005728(n)])` -/
def P17130796410472790624.Spec : Prop :=
  ∀ n, P17130796410472790624.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P13527560677894653649

`n-A055034(Δ[A002088(n)])`
-/

namespace A219029.P13527560677894653649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055034 (f1 (n + 1) - f1 n).toNat

end

end A219029.P13527560677894653649

namespace A219029

/-- `n-A055034(Δ[A002088(n)])` -/
def P13527560677894653649.Spec : Prop :=
  ∀ n, P13527560677894653649.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P1412135467691997518

`n-A055034(Δ[A005728(n)])`
-/

namespace A219029.P1412135467691997518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055034 (f1 (n + 1) - f1 n).toNat

end

end A219029.P1412135467691997518

namespace A219029

/-- `n-A055034(Δ[A005728(n)])` -/
def P1412135467691997518.Spec : Prop :=
  ∀ n, P1412135467691997518.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P12345475859855343114

`n-A000010(A000010(n+1))`
-/

namespace A219029.P12345475859855343114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (A000010 (n + 1)).toNat

end

end A219029.P12345475859855343114

namespace A219029

/-- `n-A000010(A000010(n+1))` -/
def P12345475859855343114.Spec : Prop :=
  ∀ n, P12345475859855343114.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P9640576051152263444

`A219428(n+1)+A070556(n+1)`
-/

namespace A219029.P9640576051152263444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A070556 (n + 1)

end

end A219029.P9640576051152263444

namespace A219029

/-- `A219428(n+1)+A070556(n+1)` -/
def P9640576051152263444.Spec : Prop :=
  ∀ n, P9640576051152263444.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P17047245526373483156

`n-A055034(A349137(2*n+1))`
-/

namespace A219029.P17047245526373483156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055034 (A349137 (2 * n + 1)).toNat

end

end A219029.P17047245526373483156

namespace A219029

/-- `n-A055034(A349137(2*n+1))` -/
def P17047245526373483156.Spec : Prop :=
  ∀ n, P17047245526373483156.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P10228847093009196647

`n-sqrt(A127473(sqrt(A127473(n+1))))`
-/

namespace A219029.P10228847093009196647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (A127473 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat : ℝ)

end

end A219029.P10228847093009196647

namespace A219029

/-- `n-sqrt(A127473(sqrt(A127473(n+1))))` -/
def P10228847093009196647.Spec : Prop :=
  ∀ n, P10228847093009196647.a n = (A219029 (n + 1) : ℝ)

end A219029

/-! ## A219029.P17106067421877550340

`n+1-A039649(A039649(n+1)-1)`
-/

namespace A219029.P17106067421877550340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A039649 (A039649 (n + 1) - 1).toNat

end

end A219029.P17106067421877550340

namespace A219029

/-- `n+1-A039649(A039649(n+1)-1)` -/
def P17106067421877550340.Spec : Prop :=
  ∀ n, P17106067421877550340.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P17990851321659625061

`A293516(n+1)-A070556(n+1)+n`
-/

namespace A219029.P17990851321659625061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293516 (n + 1) - A070556 (n + 1) + (n : ℤ)

end

end A219029.P17990851321659625061

namespace A219029

/-- `A293516(n+1)-A070556(n+1)+n` -/
def P17990851321659625061.Spec : Prop :=
  ∀ n, P17990851321659625061.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P6768448550784952843

`A065152(n+1)-A346692(n+1)+n`
-/

namespace A219029.P6768448550784952843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1) - A346692 (n + 1) + (n : ℤ)

end

end A219029.P6768448550784952843

namespace A219029

/-- `A065152(n+1)-A346692(n+1)+n` -/
def P6768448550784952843.Spec : Prop :=
  ∀ n, P6768448550784952843.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P11328903369253972829

`n-A034380(n+1)*A206941(n+1)`
-/

namespace A219029.P11328903369253972829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A034380 (n + 1) * A206941 (n + 1)

end

end A219029.P11328903369253972829

namespace A219029

/-- `n-A034380(n+1)*A206941(n+1)` -/
def P11328903369253972829.Spec : Prop :=
  ∀ n, P11328903369253972829.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P6244131735196646577

`abs(A109606(A109606(n+1)+1)-n)-1`
-/

namespace A219029.P6244131735196646577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109606 (A109606 (n + 1) + 1).toNat - (n : ℤ)| - 1

end

end A219029.P6244131735196646577

namespace A219029

/-- `abs(A109606(A109606(n+1)+1)-n)-1` -/
def P6244131735196646577.Spec : Prop :=
  ∀ n, P6244131735196646577.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P17015543372153816930

`n-A000010(lcm(2, A000010(2*n-(n-1))))`
-/

namespace A219029.P17015543372153816930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (Int.lcm 2 (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat))

end

end A219029.P17015543372153816930

namespace A219029

/-- `n-A000010(lcm(2, A000010(2*n-(n-1))))` -/
def P17015543372153816930.Spec : Prop :=
  ∀ n, P17015543372153816930.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P9897034567099693248

`A219428(A000010(n+1))+A051953(n+1)`
-/

namespace A219029.P9897034567099693248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (A000010 (n + 1)).toNat + A051953 (n + 1)

end

end A219029.P9897034567099693248

namespace A219029

/-- `A219428(A000010(n+1))+A051953(n+1)` -/
def P9897034567099693248.Spec : Prop :=
  ∀ n, P9897034567099693248.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P16975750828772885991

`A219428(n+1)+A051953(n-A219428(n+1))`
-/

namespace A219029.P16975750828772885991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + A051953 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A219029.P16975750828772885991

namespace A219029

/-- `A219428(n+1)+A051953(n-A219428(n+1))` -/
def P16975750828772885991.Spec : Prop :=
  ∀ n, P16975750828772885991.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P5479603295942580755

`n-1-A109606(A046073(n+1)*A060594(n+1))`
-/

namespace A219029.P5479603295942580755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - A109606 (A046073 (n + 1) * A060594 (n + 1)).toNat

end

end A219029.P5479603295942580755

namespace A219029

/-- `n-1-A109606(A046073(n+1)*A060594(n+1))` -/
def P5479603295942580755.Spec : Prop :=
  ∀ n, P5479603295942580755.a n = A219029 (n + 1)

end A219029

/-! ## A219029.P13073157699227004502

`n-A000010(Δ[A049643(n)])`
-/

namespace A219029.P13073157699227004502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (f1 (n + 1) - f1 n).toNat

end

end A219029.P13073157699227004502

namespace A219029

/-- `n-A000010(Δ[A049643(n)])` -/
def P13073157699227004502.Spec : Prop :=
  ∀ n, P13073157699227004502.a n = A219029 (n + 1)

end A219029

/-!
# A219030: Powers of odd primes (exponent > 1) for which 2 is not a primitive root.

The programs for A219030, there is no canonical definition to state claims against.
-/

/-! ## A219030.P17655128005091428101

`lt[A341945(n+2), A000035(A103309(n))]`
-/

namespace A219030.P17655128005091428101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A103309 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219030.P17655128005091428101

/-!
# A219032: Number of distinct squares as subwords of decimal representation of n-th square.

The programs for A219032, there is no canonical definition to state claims against.
-/

/-! ## A219032.P14366239230791053552

`A001221(A317989(n+2)+A190569(n))`
-/

namespace A219032.P14366239230791053552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A317989 (n + 2) + A190569 n).toNat

end

end A219032.P14366239230791053552

/-! ## A219032.P12532403440220712642

`A001221(A171974(3*n+2)+A053576(n))`
-/

namespace A219032.P12532403440220712642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A171974 (3 * n + 2) + A053576 n).toNat

end

end A219032.P12532403440220712642

/-! ## A219032.P4325023169979449674

`A109035(2*(n+2))+A085980(A116444(n+1))`
-/

namespace A219032.P4325023169979449674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109035 (2 * (n + 2)) + A085980 (A116444 (n + 1)).toNat

end

end A219032.P4325023169979449674

/-! ## A219032.P8900326003024078403

`A058061(A225118(n)+A017985(n))`
-/

namespace A219032.P8900326003024078403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A225118 n + A017985 n).toNat

end

end A219032.P8900326003024078403

/-! ## A219032.P18063703615395469183

`A001221(A263060(n+1)+A056353(n))`
-/

namespace A219032.P18063703615395469183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A263060 (n + 1) + A056353 n).toNat

end

end A219032.P18063703615395469183

/-!
# A219034: Triangular array read by rows: T(n,k) is the number of forests of rooted trees on n labeled nodes with exactly k isolated nodes; n>=0, 0<=k<=n.

The programs for A219034, there is no canonical definition to state claims against.
-/

/-! ## A219034.P5515164141632376805

`A007318(n)*A105785(A025581(n))`
-/

namespace A219034.P5515164141632376805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A105785 (A025581 n).toNat

end

end A219034.P5515164141632376805

/-!
# A219036: Numbers k such that sigma(k) - tau(k) is a perfect number.

The programs for A219036, there is no canonical definition to state claims against.
-/

/-! ## A219036.P13171203804266055303

`A330668(A214203(n))+A169884(2*n+5)`
-/

namespace A219036.P13171203804266055303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330668 (A214203 n).toNat + A169884 (2 * n + 5)

end

end A219036.P13171203804266055303

/-!
# A219040: Numbers k such that 3^k + 20 is prime.

The programs for A219040, there is no canonical definition to state claims against.
-/

/-! ## A219040.P17725869876243943740

`A053616(A325925(n))+1+n`
-/

namespace A219040.P17725869876243943740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A325925 n).toNat + 1 + (n : ℤ)

end

end A219040.P17725869876243943740

/-! ## A219040.P14283914831314285911

`∩[A333598(n+1), A380806(n+1)]`
-/

namespace A219040.P14283914831314285911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219040.P14283914831314285911

/-!
# A219046: Numbers k such that 3^k + 28 is prime.

The programs for A219046, there is no canonical definition to state claims against.
-/

/-! ## A219046.P3631366125782254026

`eq[A290322(n+2), A339927(n+1)]`
-/

namespace A219046.P3631366125782254026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290322 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219046.P3631366125782254026

/-! ## A219046.P2123353557063335229

`A088689(A378086(n+1))+A018261(n+1)`
-/

namespace A219046.P2123353557063335229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (A378086 (n + 1)).toNat + A018261 (n + 1)

end

end A219046.P2123353557063335229

/-!
# A219048: Numbers k such that 3^k + 32 is prime.

The programs for A219048, there is no canonical definition to state claims against.
-/

/-! ## A219048.P7432073806248555208

`val(Δ[A290005(n+1)], 3)`
-/

namespace A219048.P7432073806248555208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A219048.P7432073806248555208

/-!
# A219050: Numbers k such that 3^k + 34 is prime.

The programs for A219050, there is no canonical definition to state claims against.
-/

/-! ## A219050.P11284431493535982

`val(Δ[A290006(n+1)], 3)`
-/

namespace A219050.P11284431493535982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A219050.P11284431493535982

/-! ## A219050.P16984038718591289470

`record[gcd(A068962(n+1), A313916(n))]`
-/

namespace A219050.P16984038718591289470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068962 (n + 1)) (A313916 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219050.P16984038718591289470

/-! ## A219050.P14971054208497496501

`xor(record[A091325(n+1)], A326443(n))`
-/

namespace A219050.P14971054208497496501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A326443 n)

end

end A219050.P14971054208497496501

/-! ## A219050.P2176824603267009882

`xor(record[A091325(n+1)], A332639(n))`
-/

namespace A219050.P2176824603267009882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A332639 n)

end

end A219050.P2176824603267009882

/-! ## A219050.P5731594737667360249

`lt[A007318(A124785(n+1)), A124780(n)]`
-/

namespace A219050.P5731594737667360249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A124785 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219050.P5731594737667360249

/-!
# A219051: Numbers k such that 3^k - 34 is prime.

The programs for A219051, there is no canonical definition to state claims against.
-/

/-! ## A219051.P16456192279380958581

`val(Δ[A289984(n+1)], 3)`
-/

namespace A219051.P16456192279380958581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289984 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A219051.P16456192279380958581

/-!
# A219052: Number of ways to write n = p + q(3 - (-1)^n)/2 with q <= n/2 and p, q, p^2 + q^2 - 1 all prime.

The programs for A219052, there is no canonical definition to state claims against.
-/

/-! ## A219052.P16100736531100258681

`A339650(A274821(n))%A235791(A301696(n))`
-/

namespace A219052.P16100736531100258681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339650 (A274821 n).toNat) (A235791 (A301696 n).toNat)

end

end A219052.P16100736531100258681

/-! ## A219052.P1067048188406503739

`val(A286601(A240364(n+1)), 8)`
-/

namespace A219052.P1067048188406503739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286601 (A240364 (n + 1)).toNat).toNat 8

end

end A219052.P1067048188406503739

/-! ## A219052.P1622010273032706732

`A102681(xor(32, A000043(n+1)))`
-/

namespace A219052.P1622010273032706732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (Int.xor 32 (A000043 (n + 1))).toNat

end

end A219052.P1622010273032706732

/-! ## A219052.P15331437812493337909

`A343385(A069787(3*n+4))%A343356(2*n+5)`
-/

namespace A219052.P15331437812493337909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343385 (A069787 (3 * n + 4)).toNat) (A343356 (2 * n + 5))

end

end A219052.P15331437812493337909

/-! ## A219052.P4944164799352278465

`A064990(A206743(n))`
-/

namespace A219052.P4944164799352278465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (A206743 n).toNat

end

end A219052.P4944164799352278465

/-!
# A219053: Numbers which are the sum of their proper divisors and their anti-divisors.

The programs for A219053, there is no canonical definition to state claims against.
-/

/-! ## A219053.P7023213004904477239

`filter[A240746(n+1), A355820(#)]`
-/

namespace A219053.P7023213004904477239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A219053.P7023213004904477239

/-! ## A219053.P17474963543710196157

`filter[A240746(n+1), A257000(#)]`
-/

namespace A219053.P17474963543710196157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A219053.P17474963543710196157

/-! ## A219053.P6835950118644018670

`A020725(eq[-A033880(n+1), A066417(n+1)])`
-/

namespace A219053.P6835950118644018670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A219053.P6835950118644018670

/-! ## A219053.P16506865972431489890

`A020725(eq[2*(n+1)-A000203(n+1), A066417(n+1)])`
-/

namespace A219053.P16506865972431489890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A219053.P16506865972431489890

/-!
# A219054: a(n) = (8*n^3 + 3*n^2 + n) / 6.

The programs for A219054, the canonical program `A219054.P9209882772441458826` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219054 has offset 1).

The definition of A219054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219054.P13613626989156904374

`(n+1)*((n+1)*(8*(n+1)+3)+1)/6`
-/

namespace A219054.P13613626989156904374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) * (8 * (n + 1) + 3) + 1) : ℚ) / 6

end

end A219054.P13613626989156904374

namespace A219054

/-- `(n+1)*((n+1)*(8*(n+1)+3)+1)/6` -/
def P13613626989156904374.Spec : Prop :=
  ∀ n, P13613626989156904374.a n = (A219054 (n + 1) : ℚ)

end A219054

/-! ## A219054.P275525365873203850

`(8*(n+1)^3+3*(n+1)²+n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219054.P275525365873203850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) ^ 3 + 3 * (n + 1) ^ 2 + (n + 1) : ℚ) / 6

end

end A219054.P275525365873203850

namespace A219054

/-- `(8*(n+1)^3+3*(n+1)²+n+1)/6` -/
def P275525365873203850.Spec : Prop :=
  ∀ n, P275525365873203850.a n = (A219054 (n + 1) : ℚ)

end A219054

/-! ## A219054.P9209882772441458826

`A000578(n+1)+A000330(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A219054

/-- `A000578(n+1)+A000330(n+1)` -/
def P9209882772441458826.Spec : Prop :=
  ∀ n, P9209882772441458826.a n = A219054 (n + 1)

theorem P9209882772441458826.correct : P9209882772441458826.Spec := by
  intro n
  simp only [A219054, Nat.add_sub_cancel]

end A219054

/-! ## A219054.P15281754527985096199

`ogf((2+5x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A219054.P15281754527985096199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 1] [1, -4, 6, -4, 1] n

end

end A219054.P15281754527985096199

namespace A219054

/-- `ogf((2+5x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P15281754527985096199.Spec : Prop :=
  ∀ n, P15281754527985096199.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P17676882599162298661

`∑[n+1]+C(n+3+n, 3)`
-/

namespace A219054.P17676882599162298661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 3 + n) 3

end

end A219054.P17676882599162298661

namespace A219054

/-- `∑[n+1]+C(n+3+n, 3)` -/
def P17676882599162298661.Spec : Prop :=
  ∀ n, (P17676882599162298661.a n : ℤ) = A219054 (n + 1)

end A219054

/-! ## A219054.P6982168788424839252

`∑[record[(n-1)²]]+(n+1)^3`
-/

namespace A219054.P6982168788424839252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 3 : ℤ)

end

end A219054.P6982168788424839252

namespace A219054

/-- `∑[record[(n-1)²]]+(n+1)^3` -/
def P6982168788424839252.Spec : Prop :=
  ∀ n, P6982168788424839252.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P7529652624029854320

`∑[∑[a(n-1)+8]]-∑[n]` with `a(0)=2`
-/

namespace A219054.P7529652624029854320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A219054.P7529652624029854320

namespace A219054

/-- `∑[∑[a(n-1)+8]]-∑[n]` -/
def P7529652624029854320.Spec : Prop :=
  ∀ n, P7529652624029854320.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P8057418213464341805

`∑[n²]+lcm(n+2, (n+1)²)`
-/

namespace A219054.P8057418213464341805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 2) ((n + 1) ^ 2)

end

end A219054.P8057418213464341805

namespace A219054

/-- `∑[n²]+lcm(n+2, (n+1)²)` -/
def P8057418213464341805.Spec : Prop :=
  ∀ n, (P8057418213464341805.a n : ℤ) = A219054 (n + 1)

end A219054

/-! ## A219054.P15026306994424366246

`n+1+a(n-1)+Δ[n²]²` with `a(0)=2`
-/

namespace A219054.P15026306994424366246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℤ) + (a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A219054.P15026306994424366246

namespace A219054

/-- `n+1+a(n-1)+Δ[n²]²` -/
def P15026306994424366246.Spec : Prop :=
  ∀ n, P15026306994424366246.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P6256322380560913142

`(2*n+1)²+a(n-1)+1+n` with `a(0)=2`
-/

namespace A219054.P6256322380560913142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n + 1) ^ 2 + (a (n - 1) + 1 + n)

end

end A219054.P6256322380560913142

namespace A219054

/-- `(2*n+1)²+a(n-1)+1+n` -/
def P6256322380560913142.Spec : Prop :=
  ∀ n, (P6256322380560913142.a n : ℤ) = A219054 (n + 1)

end A219054

/-! ## A219054.P14441836701429684689

`a(n-1)+(n+1+n)²+n+1` with `a(0)=2`
-/

namespace A219054.P14441836701429684689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + ((n + 1 + n) ^ 2 + (n + 1))

end

end A219054.P14441836701429684689

namespace A219054

/-- `a(n-1)+(n+1+n)²+n+1` -/
def P14441836701429684689.Spec : Prop :=
  ∀ n, (P14441836701429684689.a n : ℤ) = A219054 (n + 1)

end A219054

/-! ## A219054.P11021682572597102775

`A051662(n)+(n+1)²`
-/

namespace A219054.P11021682572597102775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + ((n + 1) ^ 2 : ℤ)

end

end A219054.P11021682572597102775

namespace A219054

/-- `A051662(n)+(n+1)²` -/
def P11021682572597102775.Spec : Prop :=
  ∀ n, P11021682572597102775.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P17307281256811820400

`A035597(n+1)+∑[n]`
-/

namespace A219054.P17307281256811820400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A219054.P17307281256811820400

namespace A219054

/-- `A035597(n+1)+∑[n]` -/
def P17307281256811820400.Spec : Prop :=
  ∀ n, P17307281256811820400.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P9038466713046644198

`∑[n]+A166911(n)-1`
-/

namespace A219054.P9038466713046644198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A166911 n - 1)

end

end A219054.P9038466713046644198

namespace A219054

/-- `∑[n]+A166911(n)-1` -/
def P9038466713046644198.Spec : Prop :=
  ∀ n, P9038466713046644198.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P7516675241152448755

`A172482(n)-∑[n+1]`
-/

namespace A219054.P7516675241152448755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172482 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A219054.P7516675241152448755

namespace A219054

/-- `A172482(n)-∑[n+1]` -/
def P7516675241152448755.Spec : Prop :=
  ∀ n, P7516675241152448755.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P9606886627860903908

`Δ[(n+1)*A000330(n)]`
-/

namespace A219054.P9606886627860903908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219054.P9606886627860903908

namespace A219054

/-- `Δ[(n+1)*A000330(n)]` -/
def P9606886627860903908.Spec : Prop :=
  ∀ n, P9606886627860903908.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P2057082766221145129

`∑[A033951(n)]+(n+1)²`
-/

namespace A219054.P2057082766221145129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A219054.P2057082766221145129

namespace A219054

/-- `∑[A033951(n)]+(n+1)²` -/
def P2057082766221145129.Spec : Prop :=
  ∀ n, P2057082766221145129.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P17502957777108389915

`A036659(n+1)-∑[∑[n]]`
-/

namespace A219054.P17502957777108389915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036659 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A219054.P17502957777108389915

namespace A219054

/-- `A036659(n+1)-∑[∑[n]]` -/
def P17502957777108389915.Spec : Prop :=
  ∀ n, P17502957777108389915.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P13031914254263068592

`A205342(n+1)+n²+n`
-/

namespace A219054.P13031914254263068592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205342 (n + 1) + (n ^ 2 + n : ℤ)

end

end A219054.P13031914254263068592

namespace A219054

/-- `A205342(n+1)+n²+n` -/
def P13031914254263068592.Spec : Prop :=
  ∀ n, P13031914254263068592.a n = A219054 (n + 1)

end A219054

/-! ## A219054.P16754296268667211951

`A005891(n)+A001845(n)`
-/

namespace A219054.P16754296268667211951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + A001845 n

end

end A219054.P16754296268667211951

namespace A219054

/-- `A005891(n)+A001845(n)` -/
def P16754296268667211951.Spec : Prop :=
  ∀ n, P16754296268667211951.a n = A219054 (n + 1)

end A219054

/-!
# A219056: a(n) = 3*n^4.

The programs for A219056, the canonical program `A219056.P7269935841778079002` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219056 has offset 0).

The definition of A219056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^4` (program `A219056.P7269935841778079002`, by `A219056.P7269935841778079002.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219056.P7269935841778079002

`3*n^4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219056

/-- `3*n^4` -/
def P7269935841778079002.Spec : Prop :=
  ∀ n, (P7269935841778079002.a n : ℤ) = A219056 n

theorem P7269935841778079002.correct : P7269935841778079002.Spec := by
  intro n
  simp only [A219056]

end A219056

/-!
# A219057: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 n X n array.

The programs for A219057, there is no canonical definition to state claims against.
-/

/-! ## A219057.P11257636337396279170

`A219063(∑[4*n]+1)`
-/

namespace A219057.P11257636337396279170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219057.P11257636337396279170

/-! ## A219057.P18165158982140627132

`record[Δ[round(sqrt(n))]*A219063(2*n+1)]`
-/

namespace A219057.P18165158982140627132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A219063 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219057.P18165158982140627132

/-! ## A219057.P3736068717948668316

`or(1, A219063(A001844(n)))`
-/

namespace A219057.P3736068717948668316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219063 (A001844 n).toNat)

end

end A219057.P3736068717948668316

/-! ## A219057.P1430996199601612390

`record[A219063(Δ[A235355(n)])]`
-/

namespace A219057.P1430996199601612390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219057.P1430996199601612390

/-!
# A219058: Hilltop maps: number of nX3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX3 array.

The programs for A219058, there is no canonical definition to state claims against.
-/

/-! ## A219058.P14953116553131723679

`A219063(∑[n+3]+1)`
-/

namespace A219058.P14953116553131723679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219058.P14953116553131723679

/-! ## A219058.P6242622519728832845

`or(1, A219063(A034856(n+2)))`
-/

namespace A219058.P6242622519728832845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219063 (A034856 (n + 2)).toNat)

end

end A219058.P6242622519728832845

/-! ## A219058.P2653017048035604387

`A127836(n)*A219063(A034856(n+2))`
-/

namespace A219058.P2653017048035604387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127836 n * A219063 (A034856 (n + 2)).toNat

end

end A219058.P2653017048035604387

/-! ## A219058.P17765977304350582594

`abs(A033999(n)*A219063(A034856(n+2)))`
-/

namespace A219058.P17765977304350582594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A219063 (A034856 (n + 2)).toNat|

end

end A219058.P17765977304350582594

/-! ## A219058.P7394061576532374850

`A000010(A014963(2*(n+1)))*A219063(A034856(n+2))`
-/

namespace A219058.P7394061576532374850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A219063 (A034856 (n + 2)).toNat

end

end A219058.P7394061576532374850

/-!
# A219059: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX4 array.

The programs for A219059, there is no canonical definition to state claims against.
-/

/-! ## A219059.P12799615908017430544

`A219063(A141214(n+1))`
-/

namespace A219059.P12799615908017430544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A141214 (n + 1)).toNat

end

end A219059.P12799615908017430544

/-! ## A219059.P6655986940914673046

`A219063(A055998(n+2))`
-/

namespace A219059.P6655986940914673046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A055998 (n + 2)).toNat

end

end A219059.P6655986940914673046

/-! ## A219059.P14052605578389741117

`A219063(A056000(n)+7)`
-/

namespace A219059.P14052605578389741117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A056000 n + 7).toNat

end

end A219059.P14052605578389741117

/-! ## A219059.P15877821161007663065

`A219063(eq[3, A193592(n)])`
-/

namespace A219059.P15877821161007663065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219059.P15877821161007663065

/-! ## A219059.P2556115256774656957

`A219063(A052905(n+1)+2)`
-/

namespace A219059.P2556115256774656957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A052905 (n + 1) + 2).toNat

end

end A219059.P2556115256774656957

/-!
# A219060: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX5 array.

The programs for A219060, there is no canonical definition to state claims against.
-/

/-! ## A219060.P11263956214739035116

`A219063(Δ[A264443(n)])`
-/

namespace A219060.P11263956214739035116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (f1 (n + 1) - f1 n).toNat

end

end A219060.P11263956214739035116

/-! ## A219060.P238500679986678050

`A219063(A056115(n)+11)`
-/

namespace A219060.P238500679986678050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A056115 n + 11).toNat

end

end A219060.P238500679986678050

/-! ## A219060.P6397878378671794639

`A219063(eq[4, A193592(n)])`
-/

namespace A219060.P6397878378671794639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219060.P6397878378671794639

/-! ## A219060.P8254926659295382956

`A219063(eq[5, A239144(n)])`
-/

namespace A219060.P8254926659295382956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219060.P8254926659295382956

/-! ## A219060.P12238420380679249687

`A219063(Δ[A023545(n+1)])`
-/

namespace A219060.P12238420380679249687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (f1 (n + 1) - f1 n).toNat

end

end A219060.P12238420380679249687

/-!
# A219061: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX6 array.

The programs for A219061, there is no canonical definition to state claims against.
-/

/-! ## A219061.P345987892069364741

`A219063(A052905(n+3))`
-/

namespace A219061.P345987892069364741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A052905 (n + 3)).toNat

end

end A219061.P345987892069364741

/-! ## A219061.P7870366740995572561

`A219063(eq[3, A219347(n)])`
-/

namespace A219061.P7870366740995572561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219061.P7870366740995572561

/-! ## A219061.P13392377930244364685

`A219063(eq[5, A193592(n)])`
-/

namespace A219061.P13392377930244364685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219061.P13392377930244364685

/-! ## A219061.P11031088072242665605

`A219063(eq[8, A258709(n)])`
-/

namespace A219061.P11031088072242665605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219061.P11031088072242665605

/-! ## A219061.P10383051847196593569

`A219063(eq[6, A200370(n+1)])`
-/

namespace A219061.P10383051847196593569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219061.P10383051847196593569

/-!
# A219062: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nX7 array.

The programs for A219062, there is no canonical definition to state claims against.
-/

/-! ## A219062.P3555680408839315577

`A219063(eq[4, A219347(n)])`
-/

namespace A219062.P3555680408839315577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219062.P3555680408839315577

/-! ## A219062.P16061331745722532954

`A219063(eq[6, A193592(n)])`
-/

namespace A219062.P16061331745722532954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219062.P16061331745722532954

/-! ## A219062.P8759131026815941627

`A219063(A000124(n+7)-7)`
-/

namespace A219062.P8759131026815941627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A000124 (n + 7) - 7).toNat

end

end A219062.P8759131026815941627

/-! ## A219062.P737776657136786375

`A219063(eq[7, A200370(n+1)])`
-/

namespace A219062.P737776657136786375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219062.P737776657136786375

/-! ## A219062.P12920646606357475607

`A219063(eq[10, A185782(n+1)])`
-/

namespace A219062.P12920646606357475607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219062.P12920646606357475607

/-!
# A219063: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 nXk array.

The programs for A219063, there is no canonical definition to state claims against.
-/

/-! ## A219063.P3662641111532436976

`or(A218592(n+1), A342512(A345760(n+1)))`
-/

namespace A219063.P3662641111532436976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A218592 (n + 1)) (A342512 (A345760 (n + 1)).toNat)

end

end A219063.P3662641111532436976

/-!
# A219064: Hilltop maps: number of 3Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 3Xn array.

The programs for A219064, there is no canonical definition to state claims against.
-/

/-! ## A219064.P2448779785240521714

`A219063(∑[n+2]+4)`
-/

namespace A219064.P2448779785240521714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219064.P2448779785240521714

/-! ## A219064.P14569616078669484419

`or(1, A219063(A167614(n+1)))`
-/

namespace A219064.P14569616078669484419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219063 (A167614 (n + 1)).toNat)

end

end A219064.P14569616078669484419

/-! ## A219064.P5215502387985197632

`A219063(A167614(n+1))+A011733(n)`
-/

namespace A219064.P5215502387985197632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A167614 (n + 1)).toNat + A011733 n

end

end A219064.P5215502387985197632

/-! ## A219064.P3890545304809485263

`A219063(A167614(n+1))+A011734(n)`
-/

namespace A219064.P3890545304809485263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A167614 (n + 1)).toNat + A011734 n

end

end A219064.P3890545304809485263

/-! ## A219064.P17586485738670317904

`A219063(A167614(n+1))+A011737(n)`
-/

namespace A219064.P17586485738670317904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A167614 (n + 1)).toNat + A011737 n

end

end A219064.P17586485738670317904

/-!
# A219065: Hilltop maps: number of 4Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 4Xn array.

The programs for A219065, there is no canonical definition to state claims against.
-/

/-! ## A219065.P9229586309788665082

`A219063(A141214(n)+7)`
-/

namespace A219065.P9229586309788665082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A141214 n + 7).toNat

end

end A219065.P9229586309788665082

/-! ## A219065.P17642467759914093034

`A219063(A052905(n)+9)`
-/

namespace A219065.P17642467759914093034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A052905 n + 9).toNat

end

end A219065.P17642467759914093034

/-! ## A219065.P9323681428579789495

`A219063(A055999(n)+10)`
-/

namespace A219065.P9323681428579789495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A055999 n + 10).toNat

end

end A219065.P9323681428579789495

/-! ## A219065.P214408301442088674

`A219063(eq[5, A066657(n)])`
-/

namespace A219065.P214408301442088674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219065.P214408301442088674

/-! ## A219065.P8370573446777697245

`A219063(A167614(n+2)+1)`
-/

namespace A219065.P8370573446777697245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A167614 (n + 2) + 1).toNat

end

end A219065.P8370573446777697245

/-!
# A219066: Hilltop maps: number of 5Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 5Xn array.

The programs for A219066, there is no canonical definition to state claims against.
-/

/-! ## A219066.P18386543675505832865

`A219063(A167499(n+3))`
-/

namespace A219066.P18386543675505832865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A167499 (n + 3)).toNat

end

end A219066.P18386543675505832865

/-! ## A219066.P6101044324101847288

`A219063(eq[7, A066657(n)])`
-/

namespace A219066.P6101044324101847288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219066.P6101044324101847288

/-! ## A219066.P1186493304542763138

`A219063(A000217(n+4)+5)`
-/

namespace A219066.P1186493304542763138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A000217 (n + 4) + 5).toNat

end

end A219066.P1186493304542763138

/-! ## A219066.P906620289001620720

`A219063(eq[6, A131818(n+1)])`
-/

namespace A219066.P906620289001620720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219066.P906620289001620720

/-! ## A219066.P16800492874828269978

`or(1, A219063(A000124(n+4)+4))`
-/

namespace A219066.P16800492874828269978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219063 (A000124 (n + 4) + 4).toNat)

end

end A219066.P16800492874828269978

/-!
# A219067: Hilltop maps: number of 6 X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 6 X n array.

The programs for A219067, there is no canonical definition to state claims against.
-/

/-! ## A219067.P18368664099045672850

`A219063(eq[6, A256910(n)])`
-/

namespace A219067.P18368664099045672850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219067.P18368664099045672850

/-! ## A219067.P3304697352480408445

`A219063(eq[7, A131818(n+1)])`
-/

namespace A219067.P3304697352480408445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219067.P3304697352480408445

/-! ## A219067.P3362205713275497636

`A219063(Δ[A023545(n+1)]+10)`
-/

namespace A219067.P3362205713275497636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (f1 (n + 1) - f1 n + 10).toNat

end

end A219067.P3362205713275497636

/-! ## A219067.P4096040225127898404

`A219063(A133263(n+6)-(n+2))`
-/

namespace A219067.P4096040225127898404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A219067.P4096040225127898404

/-! ## A219067.P7863635933446379846

`A219063(eq[9, A158405(n+1)]+n+7)`
-/

namespace A219067.P7863635933446379846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A219067.P7863635933446379846

/-!
# A219068: Hilltop maps: number of 7Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..2 7Xn array.

The programs for A219068, there is no canonical definition to state claims against.
-/

/-! ## A219068.P8255833380553884682

`A219063(eq[11, A066657(n)])`
-/

namespace A219068.P8255833380553884682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219068.P8255833380553884682

/-! ## A219068.P2930822040305503760

`A219063(A166136(n+5)+1)`
-/

namespace A219068.P2930822040305503760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A166136 (n + 5) + 1).toNat

end

end A219068.P2930822040305503760

/-! ## A219068.P977153715048535362

`A219063(A167499(n+5)+2)`
-/

namespace A219068.P977153715048535362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A167499 (n + 5) + 2).toNat

end

end A219068.P977153715048535362

/-! ## A219068.P11146663554753974650

`A219063(A133263(n+6)+5)`
-/

namespace A219068.P11146663554753974650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A133263 (n + 6) + 5).toNat

end

end A219068.P11146663554753974650

/-! ## A219068.P16240492587705880224

`A219063(A000124(n+6)+6)`
-/

namespace A219068.P16240492587705880224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A000124 (n + 6) + 6).toNat

end

end A219068.P16240492587705880224

/-!
# A219069: Triangle read by rows: T(n,k) = n^4 + (n*k)^2 + k^4, 1 <= k <= n.

The programs for A219069, the canonical program `A219069.P12595511563106509790` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219069 has offset 1).

The definition of A219069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219069.P12595511563106509790

`A215630(n+1)*A215631(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A219069

/-- `A215630(n+1)*A215631(n+1)` -/
def P12595511563106509790.Spec : Prop :=
  ∀ n, P12595511563106509790.a n = A219069 (n + 1)

theorem P12595511563106509790.correct : P12595511563106509790.Spec := by
  intro n
  simp only [A219069, Nat.add_sub_cancel]

end A219069

/-! ## A219069.P5566245848688277458

`A070216(n+1)²-A075362(n+1)²`
-/

namespace A219069.P5566245848688277458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) ^ 2 - A075362 (n + 1) ^ 2

end

end A219069.P5566245848688277458

namespace A219069

/-- `A070216(n+1)²-A075362(n+1)²` -/
def P5566245848688277458.Spec : Prop :=
  ∀ n, P5566245848688277458.a n = A219069 (n + 1)

end A219069

/-! ## A219069.P13436721226742543476

`A073254(A014132(n+1))*A215631(n+1)`
-/

namespace A219069.P13436721226742543476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 (A014132 (n + 1)).toNat * A215631 (n + 1)

end

end A219069.P13436721226742543476

namespace A219069

/-- `A073254(A014132(n+1))*A215631(n+1)` -/
def P13436721226742543476.Spec : Prop :=
  ∀ n, P13436721226742543476.a n = A219069 (n + 1)

end A219069

/-! ## A219069.P320720672304548852

`(A075362(n+1)+A070216(n+1))*A215630(n+1)`
-/

namespace A219069.P320720672304548852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) + A070216 (n + 1)) * A215630 (n + 1)

end

end A219069.P320720672304548852

namespace A219069

/-- `(A075362(n+1)+A070216(n+1))*A215630(n+1)` -/
def P320720672304548852.Spec : Prop :=
  ∀ n, P320720672304548852.a n = A219069 (n + 1)

end A219069

/-! ## A219069.P11462730189142736494

`(A070216(n+1)-A075362(n+1))*A215631(n+1)`
-/

namespace A219069.P11462730189142736494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070216 (n + 1) - A075362 (n + 1)) * A215631 (n + 1)

end

end A219069.P11462730189142736494

namespace A219069

/-- `(A070216(n+1)-A075362(n+1))*A215631(n+1)` -/
def P11462730189142736494.Spec : Prop :=
  ∀ n, P11462730189142736494.a n = A219069 (n + 1)

end A219069

/-! ## A219069.P17468742709291828709

`A215631(A341736(n+1))`
-/

namespace A219069.P17468742709291828709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215631 (A341736 (n + 1)).toNat

end

end A219069.P17468742709291828709

namespace A219069

/-- `A215631(A341736(n+1))` -/
def P17468742709291828709.Spec : Prop :=
  ∀ n, P17468742709291828709.a n = A219069 (n + 1)

end A219069

/-!
# A219070: a(n) = (46*n^5 + 30*n^4 + 15*n^3 - n) / 30.

The programs for A219070, the canonical program `A219070.P14543158143249078882` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219070 has offset 0).

The definition of A219070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219070.P14543158143249078882

`(46*n^5+30*n^4+15*n^3-n)/30`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219070

/-- `(46*n^5+30*n^4+15*n^3-n)/30` -/
def P14543158143249078882.Spec : Prop :=
  ∀ n, P14543158143249078882.a n = (A219070 n : ℚ)

end A219070

/-! ## A219070.P3611413313653710343

`A000584(n)+A000290(n)*A000330(n)+A000538(n)`
-/

namespace A219070.P3611413313653710343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n + A000290 n * A000330 n + A000538 n

end

end A219070.P3611413313653710343

namespace A219070

/-- `A000584(n)+A000290(n)*A000330(n)+A000538(n)` -/
def P3611413313653710343.Spec : Prop :=
  ∀ n, P3611413313653710343.a n = A219070 n

end A219070

/-!
# A219071: Parity of pi(10^n).

The programs for A219071, there is no canonical definition to state claims against.
-/

/-! ## A219071.P13107814896588533094

`A006880(n)%2`
-/

namespace A219071.P13107814896588533094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006880 n) 2

end

end A219071.P13107814896588533094

/-! ## A219071.P10652423891490534550

`A092871(n)%2`
-/

namespace A219071.P10652423891490534550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092871 n) 2

end

end A219071.P10652423891490534550

/-! ## A219071.P14815501514236602966

`∑[A006879(n)]%2`
-/

namespace A219071.P14815501514236602966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A219071.P14815501514236602966

/-! ## A219071.P5939420967400946718

`(A090226(n+1)+1)%2`
-/

namespace A219071.P5939420967400946718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090226 (n + 1) + 1) 2

end

end A219071.P5939420967400946718

/-! ## A219071.P8311695800222835795

`A160503(round(sqrt(n²+1)))%2`
-/

namespace A219071.P8311695800222835795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160503 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) 2

end

end A219071.P8311695800222835795

/-!
# A219072: Number of n X n binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219072, there is no canonical definition to state claims against.
-/

/-! ## A219072.P12538225596586050250

`A219078(∑[4*n]+1)`
-/

namespace A219072.P12538225596586050250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219072.P12538225596586050250

/-! ## A219072.P9495713754983218941

`or(1, A219078(A001844(n)))`
-/

namespace A219072.P9495713754983218941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219078 (A001844 n).toNat)

end

end A219072.P9495713754983218941

/-! ## A219072.P16168082797669647610

`or(1, A219078(∑[A008574(n)]))`
-/

namespace A219072.P16168082797669647610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219078 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A219072.P16168082797669647610

/-! ## A219072.P9746118433510844449

`record[A003982(n)*A219078(n+1)]`
-/

namespace A219072.P9746118433510844449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A219078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219072.P9746118433510844449

/-! ## A219072.P10070370447626201814

`record[gcd(A114327(n), A219078(n+1))]`
-/

namespace A219072.P10070370447626201814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A219078 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219072.P10070370447626201814

/-!
# A219073: Number of n X 3 binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219073, there is no canonical definition to state claims against.
-/

/-! ## A219073.P5624977973645276839

`A219078(∑[n+3]+1)`
-/

namespace A219073.P5624977973645276839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219073.P5624977973645276839

/-!
# A219074: Number of n X 4 binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219074, there is no canonical definition to state claims against.
-/

/-! ## A219074.P12754357262331186147

`A219078(A141214(n+1))`
-/

namespace A219074.P12754357262331186147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A141214 (n + 1)).toNat

end

end A219074.P12754357262331186147

/-! ## A219074.P13596563134085411602

`A219078(A055998(n+2))`
-/

namespace A219074.P13596563134085411602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A055998 (n + 2)).toNat

end

end A219074.P13596563134085411602

/-! ## A219074.P1014841758453858234

`A219078(A155212(n)+5)`
-/

namespace A219074.P1014841758453858234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A155212 n + 5).toNat

end

end A219074.P1014841758453858234

/-! ## A219074.P1713297652379612458

`A219078(eq[2, A054123(n)])`
-/

namespace A219074.P1713297652379612458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219074.P1713297652379612458

/-!
# A219075: Number of n X 5 binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219075, there is no canonical definition to state claims against.
-/

/-! ## A219075.P14246193058796146365

`A219078(Δ[A264443(n)])`
-/

namespace A219075.P14246193058796146365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (f1 (n + 1) - f1 n).toNat

end

end A219075.P14246193058796146365

/-! ## A219075.P12977328243415102501

`A219078(A046691(n+3))`
-/

namespace A219075.P12977328243415102501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A046691 (n + 3)).toNat

end

end A219075.P12977328243415102501

/-! ## A219075.P17815415698951542316

`A219078(eq[4, A193592(n)])`
-/

namespace A219075.P17815415698951542316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219075.P17815415698951542316

/-! ## A219075.P5724480916446815922

`A219078(Δ[A023545(n+1)])`
-/

namespace A219075.P5724480916446815922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (f1 (n + 1) - f1 n).toNat

end

end A219075.P5724480916446815922

/-! ## A219075.P12300449083524610395

`A219078(eq[5, A200370(n+1)])`
-/

namespace A219075.P12300449083524610395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219075.P12300449083524610395

/-!
# A219076: Number of n X 6 binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219076, there is no canonical definition to state claims against.
-/

/-! ## A219076.P3310713358965114888

`A219078(A052905(n+3))`
-/

namespace A219076.P3310713358965114888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A052905 (n + 3)).toNat

end

end A219076.P3310713358965114888

/-! ## A219076.P702776994674323100

`A219078(eq[3, A219347(n)])`
-/

namespace A219076.P702776994674323100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219076.P702776994674323100

/-! ## A219076.P11434869532216538863

`A219078(eq[5, A193592(n)])`
-/

namespace A219076.P11434869532216538863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219076.P11434869532216538863

/-! ## A219076.P11220419318168259141

`A219078(eq[6, A200370(n+1)])`
-/

namespace A219076.P11220419318168259141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219076.P11220419318168259141

/-! ## A219076.P12928161958333574094

`A219078(eq[16, A057728(n+1)])`
-/

namespace A219076.P12928161958333574094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219076.P12928161958333574094

/-!
# A219077: Number of n X 7 binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219077, there is no canonical definition to state claims against.
-/

/-! ## A219077.P13137858650423920029

`A219078(eq[4, A219347(n)])`
-/

namespace A219077.P13137858650423920029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219077.P13137858650423920029

/-! ## A219077.P1953760749894783337

`A219078(eq[5, A332954(n)])`
-/

namespace A219077.P1953760749894783337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219077.P1953760749894783337

/-! ## A219077.P2815359424727891116

`A219078(eq[6, A193592(n)])`
-/

namespace A219077.P2815359424727891116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219077.P2815359424727891116

/-! ## A219077.P8254636975107547995

`A219078(Δ[A026054(n+4)])`
-/

namespace A219077.P8254636975107547995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (f1 (n + 1) - f1 n).toNat

end

end A219077.P8254636975107547995

/-! ## A219077.P7246777507814669811

`A219078(eq[7, A200370(n+1)])`
-/

namespace A219077.P7246777507814669811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219077.P7246777507814669811

/-!
# A219079: Number of 2 X n binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219079, the canonical program `A219079.P915643758028659748` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219079 has offset 1).

The definition of A219079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219079.P915643758028659748

`3*a(n-1)+a(n-2)+7*a(n-3)+6*a(n-4)` with `a(0)=1, a(1)=11, a(2)=47, a(3)=165`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219079

/-- `3*a(n-1)+a(n-2)+7*a(n-3)+6*a(n-4)` -/
def P915643758028659748.Spec : Prop :=
  ∀ n, (P915643758028659748.a n : ℤ) = A219079 (n + 1)

theorem P915643758028659748.correct : P915643758028659748.Spec := by
  intro n
  simp only [A219079, Nat.add_sub_cancel]

end A219079

/-! ## A219079.P18280742822970018642

`A303114(∑[n+2])`
-/

namespace A219079.P18280742822970018642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303114 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219079.P18280742822970018642

namespace A219079

/-- `A303114(∑[n+2])` -/
def P18280742822970018642.Spec : Prop :=
  ∀ n, P18280742822970018642.a n = A219079 (n + 1)

end A219079

/-! ## A219079.P3024300161675593404

`A219078(∑[n+1]+2)`
-/

namespace A219079.P3024300161675593404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219079.P3024300161675593404

namespace A219079

/-- `A219078(∑[n+1]+2)` -/
def P3024300161675593404.Spec : Prop :=
  ∀ n, P3024300161675593404.a n = A219079 (n + 1)

end A219079

/-! ## A219079.P13757003320429059950

`record[ratio[A219078(A080036(n))]]`
-/

namespace A219079.P13757003320429059950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219079.P13757003320429059950

namespace A219079

/-- `record[ratio[A219078(A080036(n))]]` -/
def P13757003320429059950.Spec : Prop :=
  ∀ n, P13757003320429059950.a n = (A219079 (n + 1) : ℚ)

end A219079

/-! ## A219079.P3830623992340290822

`or(1, A219078(A133263(n+1)))`
-/

namespace A219079.P3830623992340290822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219078 (A133263 (n + 1)).toNat)

end

end A219079.P3830623992340290822

namespace A219079

/-- `or(1, A219078(A133263(n+1)))` -/
def P3830623992340290822.Spec : Prop :=
  ∀ n, P3830623992340290822.a n = A219079 (n + 1)

end A219079

/-!
# A219080: Number of 3 X n binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219080, there is no canonical definition to state claims against.
-/

/-! ## A219080.P9042445852357216376

`A219078(∑[n+2]+4)`
-/

namespace A219080.P9042445852357216376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219080.P9042445852357216376

/-! ## A219080.P637539439228842556

`or(1, A219078(A167614(n+1)))`
-/

namespace A219080.P637539439228842556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A219078 (A167614 (n + 1)).toNat)

end

end A219080.P637539439228842556

/-! ## A219080.P12368616903266624353

`A219078(A167614(n+1))+A025444(n)`
-/

namespace A219080.P12368616903266624353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A167614 (n + 1)).toNat + A025444 n

end

end A219080.P12368616903266624353

/-! ## A219080.P1468425787706287715

`A219078(A167614(n+1))+A185284(n)`
-/

namespace A219080.P1468425787706287715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A167614 (n + 1)).toNat + A185284 n

end

end A219080.P1468425787706287715

/-! ## A219080.P8999646624063857616

`A119335(n)*A219078(A167614(n+1))`
-/

namespace A219080.P8999646624063857616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A219078 (A167614 (n + 1)).toNat

end

end A219080.P8999646624063857616

/-!
# A219081: Number of 4 X n binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219081, there is no canonical definition to state claims against.
-/

/-! ## A219081.P1029354398776472381

`A219078(A141214(n)+7)`
-/

namespace A219081.P1029354398776472381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A141214 n + 7).toNat

end

end A219081.P1029354398776472381

/-! ## A219081.P12384367347202467891

`A219078(A052905(n)+9)`
-/

namespace A219081.P12384367347202467891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A052905 n + 9).toNat

end

end A219081.P12384367347202467891

/-! ## A219081.P4639774751932639236

`A219078(A055999(n)+10)`
-/

namespace A219081.P4639774751932639236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A055999 n + 10).toNat

end

end A219081.P4639774751932639236

/-! ## A219081.P2628713313086202482

`A219078(A167614(n+2)+1)`
-/

namespace A219081.P2628713313086202482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A167614 (n + 2) + 1).toNat

end

end A219081.P2628713313086202482

/-! ## A219081.P10525266043056975590

`A219078(A166136(n+2)-2)`
-/

namespace A219081.P10525266043056975590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A166136 (n + 2) - 2).toNat

end

end A219081.P10525266043056975590

/-!
# A219082: Number of 5 X n binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219082, there is no canonical definition to state claims against.
-/

/-! ## A219082.P15752387998061922783

`A219078(A167499(n+3))`
-/

namespace A219082.P15752387998061922783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A167499 (n + 3)).toNat

end

end A219082.P15752387998061922783

/-! ## A219082.P9161303906343517289

`A219078(A155212(n)+13)`
-/

namespace A219082.P9161303906343517289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A155212 n + 13).toNat

end

end A219082.P9161303906343517289

/-! ## A219082.P15306643018948142772

`A219078(A056000(n)+15)`
-/

namespace A219082.P15306643018948142772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A056000 n + 15).toNat

end

end A219082.P15306643018948142772

/-! ## A219082.P11587195470266382516

`A219078(eq[7, A066657(n)])`
-/

namespace A219082.P11587195470266382516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219082.P11587195470266382516

/-! ## A219082.P9286254762961717303

`A219078(eq[6, A131818(n+1)])`
-/

namespace A219082.P9286254762961717303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219082.P9286254762961717303

/-!
# A219083: Number of 6 X n binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219083, there is no canonical definition to state claims against.
-/

/-! ## A219083.P10615188463276390756

`A219078(A166136(n+4))`
-/

namespace A219083.P10615188463276390756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A166136 (n + 4)).toNat

end

end A219083.P10615188463276390756

/-! ## A219083.P14681867749591657593

`A219078(Δ[A264443(n)]+10)`
-/

namespace A219083.P14681867749591657593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (f1 (n + 1) - f1 n + 10).toNat

end

end A219083.P14681867749591657593

/-! ## A219083.P11255463984153970920

`A219078(eq[6, A130270(n+1)])`
-/

namespace A219083.P11255463984153970920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219083.P11255463984153970920

/-! ## A219083.P18293509555336951724

`A219078(eq[7, A131818(n+1)])`
-/

namespace A219083.P18293509555336951724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219083.P18293509555336951724

/-! ## A219083.P11393270414876991452

`A219078(A133263(n+6)-(n+2))`
-/

namespace A219083.P11393270414876991452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A219083.P11393270414876991452

/-!
# A219084: Number of 7 X n binary arrays with every 0 a horizontal, diagonal or antidiagonal neighbor to some 1.

The programs for A219084, there is no canonical definition to state claims against.
-/

/-! ## A219084.P15539720801502072645

`A219078(eq[11, A066657(n)])`
-/

namespace A219084.P15539720801502072645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219084.P15539720801502072645

/-! ## A219084.P6231519544680041114

`A219078(A133263(n+6)+5)`
-/

namespace A219084.P6231519544680041114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A133263 (n + 6) + 5).toNat

end

end A219084.P6231519544680041114

/-! ## A219084.P17346705582594592789

`A219078(A000217(n+6)+7)`
-/

namespace A219084.P17346705582594592789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (A000217 (n + 6) + 7).toNat

end

end A219084.P17346705582594592789

/-! ## A219084.P853408364112465792

`A219078(eq[8, A131818(n+1)])`
-/

namespace A219084.P853408364112465792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219084.P853408364112465792

/-! ## A219084.P5166446350387955206

`A219078(Δ[A026054(n+3)]+13)`
-/

namespace A219084.P5166446350387955206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219078 (f1 (n + 1) - f1 n + 13).toNat

end

end A219084.P5166446350387955206

/-!
# A219085: a(n) = floor((n + 1/2)^3).

The programs for A219085, the canonical program `A219085.P6433585508193960974` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219085 has offset 0).

The definition of A219085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1/2)^3)` (program `A219085.P6433585508193960974`, by `A219085.P6433585508193960974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219085.P6433585508193960974

`floor((n+1/2)^3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219085

/-- `floor((n+1/2)^3)` -/
def P6433585508193960974.Spec : Prop :=
  ∀ n, P6433585508193960974.a n = A219085 n

theorem P6433585508193960974.correct : P6433585508193960974.Spec := by
  intro n
  simp only [A219085]

end A219085

/-! ## A219085.P7224012759110316369

`∑[A058034(n)]-1`
-/

namespace A219085.P7224012759110316369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A219085.P7224012759110316369

namespace A219085

/-- `∑[A058034(n)]-1` -/
def P7224012759110316369.Spec : Prop :=
  ∀ n, P7224012759110316369.a n = A219085 n

end A219085

/-! ## A219085.P8470335114528175322

`ceil(A016755(n)/8)-1`
-/

namespace A219085.P8470335114528175322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016755 n : ℚ) / 8⌉ - 1

end

end A219085.P8470335114528175322

namespace A219085

/-- `ceil(A016755(n)/8)-1` -/
def P8470335114528175322.Spec : Prop :=
  ∀ n, P8470335114528175322.a n = A219085 n

end A219085

/-! ## A219085.P15019176695490531065

`A002265(n)+∑[3*n²]`
-/

namespace A219085.P15019176695490531065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A219085.P15019176695490531065

namespace A219085

/-- `A002265(n)+∑[3*n²]` -/
def P15019176695490531065.Spec : Prop :=
  ∀ n, P15019176695490531065.a n = A219085 n

end A219085

/-! ## A219085.P15568377513677829745

`∑[A033428(n)]+floor(n/4)`
-/

namespace A219085.P15568377513677829745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 4⌋

end

end A219085.P15568377513677829745

namespace A219085

/-- `∑[A033428(n)]+floor(n/4)` -/
def P15568377513677829745.Spec : Prop :=
  ∀ n, P15568377513677829745.a n = A219085 n

end A219085

/-! ## A219085.P7318520321916670575

`∑[A121262(n)+3*n²]-1`
-/

namespace A219085.P7318520321916670575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + (3 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A219085.P7318520321916670575

namespace A219085

/-- `∑[A121262(n)+3*n²]-1` -/
def P7318520321916670575.Spec : Prop :=
  ∀ n, P7318520321916670575.a n = A219085 n

end A219085

/-! ## A219085.P1326177288238902251

`floor(n/4)+Δ[n²]*A000217(n)`
-/

namespace A219085.P1326177288238902251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000217 n

end

end A219085.P1326177288238902251

namespace A219085

/-- `floor(n/4)+Δ[n²]*A000217(n)` -/
def P1326177288238902251.Spec : Prop :=
  ∀ n, P1326177288238902251.a n = A219085 n

end A219085

/-! ## A219085.P4849566417794992936

`A059270(n)+A002265(n)`
-/

namespace A219085.P4849566417794992936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A002265 n

end

end A219085.P4849566417794992936

namespace A219085

/-- `A059270(n)+A002265(n)` -/
def P4849566417794992936.Spec : Prop :=
  ∀ n, P4849566417794992936.a n = A219085 n

end A219085

/-! ## A219085.P1994151818416735642

`A082644(n)+A027444(n)`
-/

namespace A219085.P1994151818416735642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082644 n + A027444 n

end

end A219085.P1994151818416735642

namespace A219085

/-- `A082644(n)+A027444(n)` -/
def P1994151818416735642.Spec : Prop :=
  ∀ n, P1994151818416735642.a n = A219085 n

end A219085

/-! ## A219085.P1709798193121911343

`∑[xor(A000007(n), A058034(n))]`
-/

namespace A219085.P1709798193121911343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A058034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219085.P1709798193121911343

namespace A219085

/-- `∑[xor(A000007(n), A058034(n))]` -/
def P1709798193121911343.Spec : Prop :=
  ∀ n, P1709798193121911343.a n = A219085 n

end A219085

/-! ## A219085.P12697443071220906449

`∑[A058034(n)%A058195(n+1)]`
-/

namespace A219085.P12697443071220906449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058034 n) (A058195 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219085.P12697443071220906449

namespace A219085

/-- `∑[A058034(n)%A058195(n+1)]` -/
def P12697443071220906449.Spec : Prop :=
  ∀ n, P12697443071220906449.a n = A219085 n

end A219085

/-! ## A219085.P6761841962783660358

`∑[A047411(n+1)+A000567(n)]-1`
-/

namespace A219085.P6761841962783660358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (n + 1) + A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A219085.P6761841962783660358

namespace A219085

/-- `∑[A047411(n+1)+A000567(n)]-1` -/
def P6761841962783660358.Spec : Prop :=
  ∀ n, P6761841962783660358.a n = A219085 n

end A219085

/-! ## A219085.P16723154476087966292

`A059270(n)+A004526(A004526(n))`
-/

namespace A219085.P16723154476087966292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A004526 (A004526 n).toNat

end

end A219085.P16723154476087966292

namespace A219085

/-- `A059270(n)+A004526(A004526(n))` -/
def P16723154476087966292.Spec : Prop :=
  ∀ n, P16723154476087966292.a n = A219085 n

end A219085

/-! ## A219085.P12023784073630324060

`A004526(A004526(n))+A147656(n)-n`
-/

namespace A219085.P12023784073630324060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 n).toNat + (A147656 n - (n : ℤ))

end

end A219085.P12023784073630324060

namespace A219085

/-- `A004526(A004526(n))+A147656(n)-n` -/
def P12023784073630324060.Spec : Prop :=
  ∀ n, P12023784073630324060.a n = A219085 n

end A219085

/-! ## A219085.P7853472754802789380

`A008619(n)+A059270(n)-A008619(A008619(n))`
-/

namespace A219085.P7853472754802789380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A059270 n - A008619 (A008619 n).toNat)

end

end A219085.P7853472754802789380

namespace A219085

/-- `A008619(n)+A059270(n)-A008619(A008619(n))` -/
def P7853472754802789380.Spec : Prop :=
  ∀ n, P7853472754802789380.a n = A219085 n

end A219085

/-! ## A219085.P10505523375721136652

`A011861(2*n)+n*A002061(n+1)`
-/

namespace A219085.P10505523375721136652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 (2 * n) + (n : ℤ) * A002061 (n + 1)

end

end A219085.P10505523375721136652

namespace A219085

/-- `A011861(2*n)+n*A002061(n+1)` -/
def P10505523375721136652.Spec : Prop :=
  ∀ n, P10505523375721136652.a n = A219085 n

end A219085

/-! ## A219085.P12169575897028953616

`A081276(Δ[n²])`
-/

namespace A219085.P12169575897028953616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A219085.P12169575897028953616

namespace A219085

/-- `A081276(Δ[n²])` -/
def P12169575897028953616.Spec : Prop :=
  ∀ n, P12169575897028953616.a n = A219085 n

end A219085

/-! ## A219085.P8003683446378120805

`A033999(2*n+1)+∑[A058034(n)]`
-/

namespace A219085.P8003683446378120805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219085.P8003683446378120805

namespace A219085

/-- `A033999(2*n+1)+∑[A058034(n)]` -/
def P8003683446378120805.Spec : Prop :=
  ∀ n, P8003683446378120805.a n = A219085 n

end A219085

/-! ## A219085.P8805313429157096996

`A173196(2*n+1)+A011842(2*n+1)`
-/

namespace A219085.P8805313429157096996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * n + 1) + A011842 (2 * n + 1)

end

end A219085.P8805313429157096996

namespace A219085

/-- `A173196(2*n+1)+A011842(2*n+1)` -/
def P8805313429157096996.Spec : Prop :=
  ∀ n, P8805313429157096996.a n = A219085 n

end A219085

/-!
# A219086: a(n) = floor((n + 1/2)^4).

The programs for A219086, the canonical program `A219086.P162259877926075198` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219086 has offset 0).

The definition of A219086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1/2)^4)` (program `A219086.P162259877926075198`, by `A219086.P162259877926075198.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219086.P162259877926075198

`floor((n+1/2)^4)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219086

/-- `floor((n+1/2)^4)` -/
def P162259877926075198.Spec : Prop :=
  ∀ n, P162259877926075198.a n = A219086 n

theorem P162259877926075198.correct : P162259877926075198.Spec := by
  intro n
  simp only [A219086]

end A219086

/-! ## A219086.P8873820848895336400

`lcm((2*n+1)²-1, (2*n+1)²+1)/8`
-/

namespace A219086.P8873820848895336400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (((2 * n + 1) ^ 2 : ℤ) - 1) ((2 * n + 1) ^ 2 + 1 : ℤ) : ℚ) / 8

end

end A219086.P8873820848895336400

namespace A219086

/-- `lcm((2*n+1)²-1, (2*n+1)²+1)/8` -/
def P8873820848895336400.Spec : Prop :=
  ∀ n, P8873820848895336400.a n = (A219086 n : ℚ)

end A219086

/-! ## A219086.P5660824444570931999

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=5, a(2)=39, a(3)=150, a(4)=410`
-/

namespace A219086.P5660824444570931999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 39, 150, 410] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A219086.P5660824444570931999

namespace A219086

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5660824444570931999.Spec : Prop :=
  ∀ n, P5660824444570931999.a n = A219086 n

end A219086

/-! ## A219086.P11993268290152666888

`A000217(n)*A001844(n)`
-/

namespace A219086.P11993268290152666888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A001844 n

end

end A219086.P11993268290152666888

namespace A219086

/-- `A000217(n)*A001844(n)` -/
def P11993268290152666888.Spec : Prop :=
  ∀ n, P11993268290152666888.a n = A219086 n

end A219086

/-! ## A219086.P4748922468700550895

`∑[lcm(n, (2*n)²+1)]`
-/

namespace A219086.P4748922468700550895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((2 * n) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219086.P4748922468700550895

namespace A219086

/-- `∑[lcm(n, (2*n)²+1)]` -/
def P4748922468700550895.Spec : Prop :=
  ∀ n, (P4748922468700550895.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P9100888019595522768

`∑[n*or(1, (2*n)²)]`
-/

namespace A219086.P9100888019595522768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 ((2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219086.P9100888019595522768

namespace A219086

/-- `∑[n*or(1, (2*n)²)]` -/
def P9100888019595522768.Spec : Prop :=
  ∀ n, (P9100888019595522768.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P8793789585274384567

`∑[n*xor(1, (2*n)²)]`
-/

namespace A219086.P8793789585274384567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 ((2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219086.P8793789585274384567

namespace A219086

/-- `∑[n*xor(1, (2*n)²)]` -/
def P8793789585274384567.Spec : Prop :=
  ∀ n, (P8793789585274384567.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P16197950587128757437

`lcm(∑[4*n]+1, ∑[n])`
-/

namespace A219086.P16197950587128757437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A219086.P16197950587128757437

namespace A219086

/-- `lcm(∑[4*n]+1, ∑[n])` -/
def P16197950587128757437.Spec : Prop :=
  ∀ n, (P16197950587128757437.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P16473294478559329950

`round((or(1, 2*n)/2)^4)`
-/

namespace A219086.P16473294478559329950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 1 (2 * n) : ℚ) / 2) ^ 4)

end

end A219086.P16473294478559329950

namespace A219086

/-- `round((or(1, 2*n)/2)^4)` -/
def P16473294478559329950.Spec : Prop :=
  ∀ n, P16473294478559329950.a n = A219086 n

end A219086

/-! ## A219086.P12864396164950005950

`round((xor(1, 2*n)/2)^4)`
-/

namespace A219086.P12864396164950005950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.xor 1 (2 * n) : ℚ) / 2) ^ 4)

end

end A219086.P12864396164950005950

namespace A219086

/-- `round((xor(1, 2*n)/2)^4)` -/
def P12864396164950005950.Spec : Prop :=
  ∀ n, P12864396164950005950.a n = A219086 n

end A219086

/-! ## A219086.P16854218398615231094

`round((or(1, 2*n)/2)²²)`
-/

namespace A219086.P16854218398615231094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((Nat.lor 1 (2 * n) : ℚ) / 2) ^ 2) ^ 2)

end

end A219086.P16854218398615231094

namespace A219086

/-- `round((or(1, 2*n)/2)²²)` -/
def P16854218398615231094.Spec : Prop :=
  ∀ n, P16854218398615231094.a n = A219086 n

end A219086

/-! ## A219086.P3737798451143544499

`round((xor(1, 2*n)/2)²²)`
-/

namespace A219086.P3737798451143544499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((Nat.xor 1 (2 * n) : ℚ) / 2) ^ 2) ^ 2)

end

end A219086.P3737798451143544499

namespace A219086

/-- `round((xor(1, 2*n)/2)²²)` -/
def P3737798451143544499.Spec : Prop :=
  ∀ n, P3737798451143544499.a n = A219086 n

end A219086

/-! ## A219086.P16769106231283464376

`C((n+1)²+n², 2)/2`
-/

namespace A219086.P16769106231283464376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2 + n ^ 2) 2 : ℚ) / 2

end

end A219086.P16769106231283464376

namespace A219086

/-- `C((n+1)²+n², 2)/2` -/
def P16769106231283464376.Spec : Prop :=
  ∀ n, P16769106231283464376.a n = (A219086 n : ℚ)

end A219086

/-! ## A219086.P2793125542306296387

`C(n+1, 2)+∑[2*n]²`
-/

namespace A219086.P2793125542306296387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A219086.P2793125542306296387

namespace A219086

/-- `C(n+1, 2)+∑[2*n]²` -/
def P2793125542306296387.Spec : Prop :=
  ∀ n, (P2793125542306296387.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P18223611842653948646

`round((lcm(2, 2*n+1)/4)^4)`
-/

namespace A219086.P18223611842653948646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lcm 2 (2 * n + 1) : ℚ) / 4) ^ 4)

end

end A219086.P18223611842653948646

namespace A219086

/-- `round((lcm(2, 2*n+1)/4)^4)` -/
def P18223611842653948646.Spec : Prop :=
  ∀ n, P18223611842653948646.a n = A219086 n

end A219086

/-! ## A219086.P14372017791858781218

`∑[a(n-1)+4]*∑[n]` with `a(0)=1, a(1)=4`
-/

namespace A219086.P14372017791858781218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A219086.P14372017791858781218

namespace A219086

/-- `∑[a(n-1)+4]*∑[n]` -/
def P14372017791858781218.Spec : Prop :=
  ∀ n, (P14372017791858781218.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P4007010135544245443

`or(1, (n+1)*2*n)*∑[n]`
-/

namespace A219086.P4007010135544245443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) * (2 * n)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219086.P4007010135544245443

namespace A219086

/-- `or(1, (n+1)*2*n)*∑[n]` -/
def P4007010135544245443.Spec : Prop :=
  ∀ n, (P4007010135544245443.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P3842801159082034636

`xor(1, (n+1)*2*n)*∑[n]`
-/

namespace A219086.P3842801159082034636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) * (2 * n)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219086.P3842801159082034636

namespace A219086

/-- `xor(1, (n+1)*2*n)*∑[n]` -/
def P3842801159082034636.Spec : Prop :=
  ∀ n, (P3842801159082034636.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P4275251167172622581

`∑[n]+∑[a(n-1)+2]²` with `a(0)=0`
-/

namespace A219086.P4275251167172622581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A219086.P4275251167172622581

namespace A219086

/-- `∑[n]+∑[a(n-1)+2]²` -/
def P4275251167172622581.Spec : Prop :=
  ∀ n, (P4275251167172622581.a n : ℤ) = A219086 n

end A219086

/-! ## A219086.P15308785065213792043

`∑[n%(n+1)]+∑[2*n]²`
-/

namespace A219086.P15308785065213792043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A219086.P15308785065213792043

namespace A219086

/-- `∑[n%(n+1)]+∑[2*n]²` -/
def P15308785065213792043.Spec : Prop :=
  ∀ n, (P15308785065213792043.a n : ℤ) = A219086 n

end A219086

/-!
# A219087: a(n) = floor((n + 1/2)^(4/3)).

The programs for A219087, the canonical program `A219087.P356640209796371341` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219087 has offset 0).

The definition of A219087 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1/2)^(4/3))` (program `A219087.P356640209796371341`, by `A219087.P356640209796371341.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219087.P356640209796371341

`floor((n+1/2)^(4/3))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219087

/-- `floor((n+1/2)^(4/3))` -/
def P356640209796371341.Spec : Prop :=
  ∀ n, P356640209796371341.a n = A219087 n

theorem P356640209796371341.correct : P356640209796371341.Spec := by
  intro n
  simp only [A219087]

end A219087

/-! ## A219087.P1090813759557590343

`eq[1, Δ[round(n^(3/4))]]`
-/

namespace A219087.P1090813759557590343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((3 : ℚ) / 4 : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219087.P1090813759557590343

namespace A219087

/-- `eq[1, Δ[round(n^(3/4))]]` -/
def P1090813759557590343.Spec : Prop :=
  ∀ n, (P1090813759557590343.a n : ℤ) = A219087 n

end A219087

/-! ## A219087.P10668569205688122011

`A060143(A000196(∑[A331080(n+1)]))`
-/

namespace A219087.P10668569205688122011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A219087.P10668569205688122011

namespace A219087

/-- `A060143(A000196(∑[A331080(n+1)]))` -/
def P10668569205688122011.Spec : Prop :=
  ∀ n, P10668569205688122011.a n = A219087 n

end A219087

/-! ## A219087.P8223062015802358364

`A353086(∑[A261100(n+1)])`
-/

namespace A219087.P8223062015802358364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219087.P8223062015802358364

namespace A219087

/-- `A353086(∑[A261100(n+1)])` -/
def P8223062015802358364.Spec : Prop :=
  ∀ n, P8223062015802358364.a n = A219087 n

end A219087

/-! ## A219087.P13982081436645621453

`round(log(A135886(n)))`
-/

namespace A219087.P13982081436645621453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A135886 n : ℝ))

end

end A219087.P13982081436645621453

namespace A219087

/-- `round(log(A135886(n)))` -/
def P13982081436645621453.Spec : Prop :=
  ∀ n, P13982081436645621453.a n = A219087 n

end A219087

/-!
# A219088: a(n) = floor((n + 1/2)^5).

The programs for A219088, the canonical program `A219088.P16779431525648039452` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219088 has offset 0).

The definition of A219088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1/2)^5)` (program `A219088.P16779431525648039452`, by `A219088.P16779431525648039452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219088.P16779431525648039452

`floor((n+1/2)^5)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219088

/-- `floor((n+1/2)^5)` -/
def P16779431525648039452.Spec : Prop :=
  ∀ n, P16779431525648039452.a n = A219088 n

theorem P16779431525648039452.correct : P16779431525648039452.Spec := by
  intro n
  simp only [A219088]

end A219088

/-! ## A219088.P7660052252918645409

`ceil(cot(1/((Δ[n²]/2)^5-1)))`
-/

namespace A219088.P7660052252918645409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (1 / ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2) ^ 5 - 1) : ℝ)⌉

end

end A219088.P7660052252918645409

namespace A219088

/-- `ceil(cot(1/((Δ[n²]/2)^5-1)))` -/
def P7660052252918645409.Spec : Prop :=
  ∀ n, P7660052252918645409.a n = A219088 n

end A219088

/-! ## A219088.P4114317162461761678

`ceil(A175111(n)/16)-1`
-/

namespace A219088.P4114317162461761678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A175111 n : ℚ) / 16⌉ - 1

end

end A219088.P4114317162461761678

namespace A219088

/-- `ceil(A175111(n)/16)-1` -/
def P4114317162461761678.Spec : Prop :=
  ∀ n, P4114317162461761678.a n = A219088 n

end A219088

/-! ## A219088.P11215284566884604972

`ceil((A005408(n)/2)^5)-1`
-/

namespace A219088.P11215284566884604972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A005408 n : ℚ) / 2) ^ 5⌉ - 1

end

end A219088.P11215284566884604972

namespace A219088

/-- `ceil((A005408(n)/2)^5)-1` -/
def P11215284566884604972.Spec : Prop :=
  ∀ n, P11215284566884604972.a n = A219088 n

end A219088

/-! ## A219088.P8616476765660714646

`floor(A175111(n)/16)%A102868(n+1)`
-/

namespace A219088.P8616476765660714646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A175111 n : ℚ) / 16⌋ (A102868 (n + 1))

end

end A219088.P8616476765660714646

namespace A219088

/-- `floor(A175111(n)/16)%A102868(n+1)` -/
def P8616476765660714646.Spec : Prop :=
  ∀ n, P8616476765660714646.a n = A219088 n

end A219088

/-!
# A219089: a(n) = floor((n + 1/2)^6).

The programs for A219089, the canonical program `A219089.P2347043603783305900` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219089 has offset 0).

The definition of A219089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1/2)^6)` (program `A219089.P2347043603783305900`, by `A219089.P2347043603783305900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219089.P2347043603783305900

`floor((n+1/2)^6)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219089

/-- `floor((n+1/2)^6)` -/
def P2347043603783305900.Spec : Prop :=
  ∀ n, P2347043603783305900.a n = A219089 n

theorem P2347043603783305900.correct : P2347043603783305900.Spec := by
  intro n
  simp only [A219089]

end A219089

/-! ## A219089.P15484291619854513143

`record[floor(n^6/A302856(A158416(n)))]`
-/

namespace A219089.P15484291619854513143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 6 : ℚ) / (A302856 (A158416 n).toNat : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219089.P15484291619854513143

namespace A219089

/-- `record[floor(n^6/A302856(A158416(n)))]` -/
def P15484291619854513143.Spec : Prop :=
  ∀ n, P15484291619854513143.a n = A219089 n

end A219089

/-! ## A219089.P14358566746647668666

`ceil(A008836(A056157(n+1))+(1/2+n)^6)`
-/

namespace A219089.P14358566746647668666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008836 (A056157 (n + 1)).toNat : ℚ) + ((1 : ℚ) / 2 + (n : ℚ)) ^ 6⌉

end

end A219089.P14358566746647668666

namespace A219089

/-- `ceil(A008836(A056157(n+1))+(1/2+n)^6)` -/
def P14358566746647668666.Spec : Prop :=
  ∀ n, P14358566746647668666.a n = A219089 n

end A219089

/-! ## A219089.P7261060755195454457

`A011869(Δ[n²²]-n)`
-/

namespace A219089.P7261060755195454457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011869 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A219089.P7261060755195454457

namespace A219089

/-- `A011869(Δ[n²²]-n)` -/
def P7261060755195454457.Spec : Prop :=
  ∀ n, P7261060755195454457.a n = A219089 n

end A219089

/-!
# A219090: a(n) = floor((n + 1/2)^7).

The programs for A219090, the canonical program `A219090.P2131645389710189764` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219090 has offset 0).

The definition of A219090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219090.P2131645389710189764

`floor((1/2+n)^7)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219090

/-- `floor((1/2+n)^7)` -/
def P2131645389710189764.Spec : Prop :=
  ∀ n, P2131645389710189764.a n = A219090 n

theorem P2131645389710189764.correct : P2131645389710189764.Spec := by
  intro n
  simp only [A219090]

end A219090

/-! ## A219090.P15165768044380968259

`ceil((1/2+n)^7-A054977(A169614(n+1)))`
-/

namespace A219090.P15165768044380968259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 + (n : ℚ)) ^ 7 - (A054977 (A169614 (n + 1)).toNat : ℚ)⌉

end

end A219090.P15165768044380968259

namespace A219090

/-- `ceil((1/2+n)^7-A054977(A169614(n+1)))` -/
def P15165768044380968259.Spec : Prop :=
  ∀ n, P15165768044380968259.a n = A219090 n

end A219090

/-! ## A219090.P621204431174549409

`ceil((1/2+n)^7-A335521(A020639(n+1)))`
-/

namespace A219090.P621204431174549409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 + (n : ℚ)) ^ 7 - (A335521 (A020639 (n + 1)).toNat : ℚ)⌉

end

end A219090.P621204431174549409

namespace A219090

/-- `ceil((1/2+n)^7-A335521(A020639(n+1)))` -/
def P621204431174549409.Spec : Prop :=
  ∀ n, P621204431174549409.a n = A219090 n

end A219090

/-! ## A219090.P10115258862989614680

`ceil((1/2+n)^7-A052126(A180101(n+1)))`
-/

namespace A219090.P10115258862989614680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 + (n : ℚ)) ^ 7 - (A052126 (A180101 (n + 1)).toNat : ℚ)⌉

end

end A219090.P10115258862989614680

namespace A219090

/-- `ceil((1/2+n)^7-A052126(A180101(n+1)))` -/
def P10115258862989614680.Spec : Prop :=
  ∀ n, P10115258862989614680.a n = A219090 n

end A219090

/-! ## A219090.P18097671701405267453

`ceil((1/2+n)^7-A000035(A080859(n)))`
-/

namespace A219090.P18097671701405267453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 + (n : ℚ)) ^ 7 - (A000035 (A080859 n).toNat : ℚ)⌉

end

end A219090.P18097671701405267453

namespace A219090

/-- `ceil((1/2+n)^7-A000035(A080859(n)))` -/
def P18097671701405267453.Spec : Prop :=
  ∀ n, P18097671701405267453.a n = A219090 n

end A219090

/-!
# A219091: a(n) = floor((n + 1/2)^8).

The programs for A219091, the canonical program `A219091.P4942390193032050720` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219091 has offset 0).

The definition of A219091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219091.P4942390193032050720

`floor((1/2+n)^8)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A219091

/-- `floor((1/2+n)^8)` -/
def P4942390193032050720.Spec : Prop :=
  ∀ n, P4942390193032050720.a n = A219091 n

theorem P4942390193032050720.correct : P4942390193032050720.Spec := by
  intro n
  simp only [A219091]

end A219091

/-! ## A219091.P14237147681098903584

`ceil((A016945(n)/6)^8)-1`
-/

namespace A219091.P14237147681098903584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A016945 n : ℚ) / 6) ^ 8⌉ - 1

end

end A219091.P14237147681098903584

namespace A219091

/-- `ceil((A016945(n)/6)^8)-1` -/
def P14237147681098903584.Spec : Prop :=
  ∀ n, P14237147681098903584.a n = A219091 n

end A219091

/-! ## A219091.P324541060342165746

`ceil((A017113(n)/8)^8)-1`
-/

namespace A219091.P324541060342165746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A017113 n : ℚ) / 8) ^ 8⌉ - 1

end

end A219091.P324541060342165746

namespace A219091

/-- `ceil((A017113(n)/8)^8)-1` -/
def P324541060342165746.Spec : Prop :=
  ∀ n, P324541060342165746.a n = A219091 n

end A219091

/-! ## A219091.P3102184189363499801

`record[floor((gcd(n, ∑[n])/2)²²²)]`
-/

namespace A219091.P3102184189363499801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2) ^ 2) ^ 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219091.P3102184189363499801

namespace A219091

/-- `record[floor((gcd(n, ∑[n])/2)²²²)]` -/
def P3102184189363499801.Spec : Prop :=
  ∀ n, P3102184189363499801.a n = A219091 n

end A219091

/-! ## A219091.P16599828459738295836

`A220114(A010894(n)!)+ceil((A016945(n)/6)^8)`
-/

namespace A219091.P16599828459738295836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220114 (Nat.factorial (A010894 (n + 21)).toNat) + ⌈((A016945 n : ℚ) / 6) ^ 8⌉

end

end A219091.P16599828459738295836

namespace A219091

/-- `A220114(A010894(n)!)+ceil((A016945(n)/6)^8)` -/
def P16599828459738295836.Spec : Prop :=
  ∀ n, P16599828459738295836.a n = A219091 n

end A219091

/-!
# A219092: a(n) = floor(e^(n + 1/2)).

The programs for A219092, the canonical program `A219092.P6146677779326094586` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219092 has offset 0).

The definition of A219092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219092.P4718492362573566939

`floor(sqrt(e)*exp(n))`
-/

namespace A219092.P4718492362573566939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp 1) * Real.exp (n : ℝ)⌋

end

end A219092.P4718492362573566939

namespace A219092

/-- `floor(sqrt(e)*exp(n))` -/
def P4718492362573566939.Spec : Prop :=
  ∀ n, P4718492362573566939.a n = A219092 n

end A219092

/-! ## A219092.P17334502844044845753

`record[floor(exp(xor(1, n)/2))]`
-/

namespace A219092.P17334502844044845753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((Nat.xor 1 n : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219092.P17334502844044845753

namespace A219092

/-- `record[floor(exp(xor(1, n)/2))]` -/
def P17334502844044845753.Spec : Prop :=
  ∀ n, P17334502844044845753.a n = A219092 n

end A219092

/-! ## A219092.P16046217135947696411

`record[floor(sqrt(e)^xor(1, n))]`
-/

namespace A219092.P16046217135947696411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp 1) ^ Nat.xor 1 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219092.P16046217135947696411

namespace A219092

/-- `record[floor(sqrt(e)^xor(1, n))]` -/
def P16046217135947696411.Spec : Prop :=
  ∀ n, P16046217135947696411.a n = A219092 n

end A219092

/-! ## A219092.P1824938444865721210

`record[floor(exp(lcm(2, 3*n)/12))]`
-/

namespace A219092.P1824938444865721210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((Nat.lcm 2 (3 * n) : ℚ) / 12 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219092.P1824938444865721210

namespace A219092

/-- `record[floor(exp(lcm(2, 3*n)/12))]` -/
def P1824938444865721210.Spec : Prop :=
  ∀ n, P1824938444865721210.a n = A219092 n

end A219092

/-! ## A219092.P13935838647338771087

`record[floor(exp(n^and(1, n)/2))]`
-/

namespace A219092.P13935838647338771087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n ^ Nat.land 1 n : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219092.P13935838647338771087

namespace A219092

/-- `record[floor(exp(n^and(1, n)/2))]` -/
def P13935838647338771087.Spec : Prop :=
  ∀ n, P13935838647338771087.a n = A219092 n

end A219092

/-! ## A219092.P6146677779326094586

`A005182(2*(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A219092

/-- `A005182(2*(n+1))` -/
def P6146677779326094586.Spec : Prop :=
  ∀ n, P6146677779326094586.a n = A219092 n

theorem P6146677779326094586.correct : P6146677779326094586.Spec := by
  intro n
  simp only [A219092]

end A219092

/-! ## A219092.P1502887681897065680

`A005181(2*(n+1))-1`
-/

namespace A219092.P1502887681897065680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (2 * (n + 1)) - 1

end

end A219092.P1502887681897065680

namespace A219092

/-- `A005181(2*(n+1))-1` -/
def P1502887681897065680.Spec : Prop :=
  ∀ n, P1502887681897065680.a n = A219092 n

end A219092

/-! ## A219092.P1226866877369799573

`Δ[∑[A005181(2*n)]-n]`
-/

namespace A219092.P1226866877369799573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219092.P1226866877369799573

namespace A219092

/-- `Δ[∑[A005181(2*n)]-n]` -/
def P1226866877369799573.Spec : Prop :=
  ∀ n, P1226866877369799573.a n = A219092 n

end A219092

/-! ## A219092.P12106680063530878526

`record[floor(exp(n/A020639(n+1)))]`
-/

namespace A219092.P12106680063530878526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n : ℚ) / (A020639 (n + 1) : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219092.P12106680063530878526

namespace A219092

/-- `record[floor(exp(n/A020639(n+1)))]` -/
def P12106680063530878526.Spec : Prop :=
  ∀ n, P12106680063530878526.a n = A219092 n

end A219092

/-! ## A219092.P12031276178431081690

`∑[A306486(2*n+1)+A306486(2*n)]`
-/

namespace A219092.P12031276178431081690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306486 (2 * n + 1) + A306486 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219092.P12031276178431081690

namespace A219092

/-- `∑[A306486(2*n+1)+A306486(2*n)]` -/
def P12031276178431081690.Spec : Prop :=
  ∀ n, P12031276178431081690.a n = A219092 n

end A219092

/-!
# A219093: Denominator of the least reduced fraction b/c > 1 using divisors b and c of n.

The programs for A219093, there is no canonical definition to state claims against.
-/

/-! ## A219093.P6620222988078019685

`(n+2)/gcd(n+2, A063718(n+2))`
-/

namespace A219093.P6620222988078019685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (n + 2 : ℤ) (A063718 (n + 2)) : ℚ)

end

end A219093.P6620222988078019685

/-! ## A219093.P5366780215395580699

`sqrt(A063717(n+2)/A219094(n+2))`
-/

namespace A219093.P5366780215395580699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A063717 (n + 2) : ℚ) / (A219094 (n + 2) : ℚ) : ℝ)

end

end A219093.P5366780215395580699

/-! ## A219093.P8319442031450369595

`(n+2)/(A218993(n+2)*A219094(n+2))`
-/

namespace A219093.P8319442031450369595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A218993 (n + 2) * A219094 (n + 2) : ℚ)

end

end A219093.P8319442031450369595

/-! ## A219093.P16882333622134956858

`A063717(n+2)/gcd(A063649(n+2), A063717(n+2))`
-/

namespace A219093.P16882333622134956858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063717 (n + 2) : ℚ) / (Int.gcd (A063649 (n + 2)) (A063717 (n + 2)) : ℚ)

end

end A219093.P16882333622134956858

/-! ## A219093.P17249218510304238427

`lcm(A063648(n+2), A063649(n+2))/A063648(n+2)`
-/

namespace A219093.P17249218510304238427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A063648 (n + 2)) (A063649 (n + 2)) : ℚ) / (A063648 (n + 2) : ℚ)

end

end A219093.P17249218510304238427

/-! ## A219093.P4082448355896572363

`lcm(A063428(n+2), A063717(n+2))/A063428(n+2)`
-/

namespace A219093.P4082448355896572363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A063428 (n + 2)) (A063717 (n + 2)) : ℚ) / (A063428 (n + 2) : ℚ)

end

end A219093.P4082448355896572363

/-! ## A219093.P11984915537360630508

`A063428(n+2)/A063427(n+2)*A218993(n+2)`
-/

namespace A219093.P11984915537360630508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063428 (n + 2) : ℚ) / (A063427 (n + 2) : ℚ) * (A218993 (n + 2) : ℚ)

end

end A219093.P11984915537360630508

/-!
# A219094: n/(b*c), where b/c is the least reduced fraction > 1 using divisors b and c of n.

The programs for A219094, there is no canonical definition to state claims against.
-/

/-! ## A219094.P211611301797561601

`gcd(A063649(n+2), A063718(n+2))`
-/

namespace A219094.P211611301797561601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063649 (n + 2)) (A063718 (n + 2))

end

end A219094.P211611301797561601

/-! ## A219094.P4476746270954596336

`A063718(n+2)/A218993(n+2)²`
-/

namespace A219094.P4476746270954596336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063718 (n + 2) : ℚ) / (A218993 (n + 2) ^ 2 : ℚ)

end

end A219094.P4476746270954596336

/-! ## A219094.P11632774113531467916

`A063717(n+2)/A219093(n+2)²`
-/

namespace A219094.P11632774113531467916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063717 (n + 2) : ℚ) / (A219093 (n + 2) ^ 2 : ℚ)

end

end A219094.P11632774113531467916

/-! ## A219094.P11741082530444464818

`gcd(n+2, A055527(2*(n+2)))`
-/

namespace A219094.P11741082530444464818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A055527 (2 * (n + 2)))

end

end A219094.P11741082530444464818

/-! ## A219094.P2810910051694464688

`gcd(A063718(n+2)+A063428(n+2), A063428(n+2))`
-/

namespace A219094.P2810910051694464688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063718 (n + 2) + A063428 (n + 2)) (A063428 (n + 2))

end

end A219094.P2810910051694464688

/-! ## A219094.P16858116796443997041

`gcd(A063427(n+2), A063717(n+2))`
-/

namespace A219094.P16858116796443997041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063427 (n + 2)) (A063717 (n + 2))

end

end A219094.P16858116796443997041

/-! ## A219094.P15187559813622895489

`gcd(n+2, A082119((n+2)²))`
-/

namespace A219094.P15187559813622895489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A082119 ((n + 2) ^ 2))

end

end A219094.P15187559813622895489

/-!
# A219095: Numbers k such that if b/c > 1 is the least reduced fraction using divisors b and c of k, then c > 1.

The programs for A219095, there is no canonical definition to state claims against.
-/

/-! ## A219095.P9004578916482531370

`lt[1, A219093(n+2)]+2`
-/

namespace A219095.P9004578916482531370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A219095.P9004578916482531370

/-! ## A219095.P14871053471266896730

`∩[A208770(n+1), A347262(n+1)]`
-/

namespace A219095.P14871053471266896730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219095.P14871053471266896730

/-! ## A219095.P12594847216183012676

`A208770(A043318(n+1))`
-/

namespace A219095.P12594847216183012676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (A043318 (n + 1)).toNat

end

end A219095.P12594847216183012676

/-! ## A219095.P16471030491245208667

`A208770(A044915(n+1))`
-/

namespace A219095.P16471030491245208667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (A044915 (n + 1)).toNat

end

end A219095.P16471030491245208667

/-! ## A219095.P10477559160159062712

`A208770(A055647(n+1))`
-/

namespace A219095.P10477559160159062712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (A055647 (n + 1)).toNat

end

end A219095.P10477559160159062712

/-!
# A219096: Indices of primes p such that the next two larger primes are p+6 and p+12.

The programs for A219096, there is no canonical definition to state claims against.
-/

/-! ## A219096.P15996034040062841498

`A000720(A047948(n+1))`
-/

namespace A219096.P15996034040062841498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A047948 (n + 1)).toNat

end

end A219096.P15996034040062841498

/-! ## A219096.P14178352542240006947

`A218249(n)+a(n-1)` with `a(0)=15`
-/

namespace A219096.P14178352542240006947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A218249 n + a (n - 1)

end

end A219096.P14178352542240006947

/-! ## A219096.P18188051522814672319

`∩[A064113(n+1), A320701(n+1)]`
-/

namespace A219096.P18188051522814672319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219096.P18188051522814672319

/-! ## A219096.P2182854175672963139

`∩[A320701(n+2)-1, A320701(n+2)]`
-/

namespace A219096.P2182854175672963139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219096.P2182854175672963139

/-! ## A219096.P9099925930862846228

`A320701(eq[1, A320701(n+2)-A320701(n+1)]+1)`
-/

namespace A219096.P9099925930862846228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 2) - A320701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A219096.P9099925930862846228

/-! ## A219096.P4884081660350583206

`A320701(eq[1, A320701(n+2)%A320701(n+1)]+1)`
-/

namespace A219096.P4884081660350583206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320701 (n + 2)) (A320701 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A219096.P4884081660350583206

/-! ## A219096.P13638923186513313982

`∩[A064113(n+1), A377317(n+1)]`
-/

namespace A219096.P13638923186513313982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219096.P13638923186513313982

/-! ## A219096.P2157555704006264479

`∩[A075541(n+1), A377317(n+1)]`
-/

namespace A219096.P2157555704006264479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219096.P2157555704006264479

/-! ## A219096.P17144365474066683157

`∩[A064113(n+1), A098015(n+1)]`
-/

namespace A219096.P17144365474066683157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219096.P17144365474066683157

/-! ## A219096.P5283792982152465822

`eq[A040306(n), A137174(n+1)]`
-/

namespace A219096.P5283792982152465822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219096.P5283792982152465822

/-! ## A219096.P5620255033243655834

`A000720(A128940(3*n))`
-/

namespace A219096.P5620255033243655834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A128940 (3 * n)).toNat

end

end A219096.P5620255033243655834

/-! ## A219096.P11088717551726949363

`A000720(A053070(n+1)-1)`
-/

namespace A219096.P11088717551726949363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A053070 (n + 1) - 1).toNat

end

end A219096.P11088717551726949363

/-! ## A219096.P5001455587428534720

`A000720(p?[A006562(n+1)-6])`
-/

namespace A219096.P5001455587428534720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A219096.P5001455587428534720

/-! ## A219096.P1827595425866141677

`∩[A064113(n+1), A113339(n+1)]`
-/

namespace A219096.P1827595425866141677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219096.P1827595425866141677

/-!
# A219097: Parity of pi(2^n).

The programs for A219097, the canonical program `A219097.P16650777398605658511` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219097 has offset 0).

The definition of A219097 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071986, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219097.P9899334082935541569

`A000035(A007053(n))`
-/

namespace A219097.P9899334082935541569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007053 n).toNat

end

end A219097.P9899334082935541569

namespace A219097

/-- `A000035(A007053(n))` -/
def P9899334082935541569.Spec : Prop :=
  ∀ n, P9899334082935541569.a n = A219097 n

end A219097

/-! ## A219097.P16650777398605658511

`A071986(2^n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A219097

/-- `A071986(2^n)` -/
def P16650777398605658511.Spec : Prop :=
  ∀ n, P16650777398605658511.a n = A219097 n

theorem P16650777398605658511.correct : P16650777398605658511.Spec := by
  intro n
  simp only [A219097]

end A219097

/-! ## A219097.P13751028320887243585

`and(A000051(n), A007053(n))`
-/

namespace A219097.P13751028320887243585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A007053 n)

end

end A219097.P13751028320887243585

namespace A219097

/-- `and(A000051(n), A007053(n))` -/
def P13751028320887243585.Spec : Prop :=
  ∀ n, P13751028320887243585.a n = A219097 n

end A219097

/-! ## A219097.P16478007542643176856

`and(A000337(n), A007053(n))`
-/

namespace A219097.P16478007542643176856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A007053 n)

end

end A219097.P16478007542643176856

namespace A219097

/-- `and(A000337(n), A007053(n))` -/
def P16478007542643176856.Spec : Prop :=
  ∀ n, P16478007542643176856.a n = A219097 n

end A219097

/-! ## A219097.P12481637042057141836

`and(A000533(n), A007053(n))`
-/

namespace A219097.P12481637042057141836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000533 n) (A007053 n)

end

end A219097.P12481637042057141836

namespace A219097

/-- `and(A000533(n), A007053(n))` -/
def P12481637042057141836.Spec : Prop :=
  ∀ n, P12481637042057141836.a n = A219097 n

end A219097

/-! ## A219097.P13121880592951283648

`and(A001576(n), A007053(n))`
-/

namespace A219097.P13121880592951283648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A007053 n)

end

end A219097.P13121880592951283648

namespace A219097

/-- `and(A001576(n), A007053(n))` -/
def P13121880592951283648.Spec : Prop :=
  ∀ n, P13121880592951283648.a n = A219097 n

end A219097

/-! ## A219097.P11013942915195495622

`and(A002064(n), A007053(n))`
-/

namespace A219097.P11013942915195495622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A007053 n)

end

end A219097.P11013942915195495622

namespace A219097

/-- `and(A002064(n), A007053(n))` -/
def P11013942915195495622.Spec : Prop :=
  ∀ n, P11013942915195495622.a n = A219097 n

end A219097

/-! ## A219097.P5397697629283254583

`and(A006483(n), A007053(n))`
-/

namespace A219097.P5397697629283254583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006483 n) (A007053 n)

end

end A219097.P5397697629283254583

namespace A219097

/-- `and(A006483(n), A007053(n))` -/
def P5397697629283254583.Spec : Prop :=
  ∀ n, P5397697629283254583.a n = A219097 n

end A219097

/-! ## A219097.P11196373843262487711

`and(A007053(n), A020515(n))`
-/

namespace A219097.P11196373843262487711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007053 n) (A020515 n)

end

end A219097.P11196373843262487711

namespace A219097

/-- `and(A007053(n), A020515(n))` -/
def P11196373843262487711.Spec : Prop :=
  ∀ n, P11196373843262487711.a n = A219097 n

end A219097

/-!
# A219098: Parity of primepi(3^n).

The programs for A219098, there is no canonical definition to state claims against.
-/

/-! ## A219098.P14667288321648193197

`A055729(n)%2`
-/

namespace A219098.P14667288321648193197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055729 n) 2

end

end A219098.P14667288321648193197

/-! ## A219098.P315027237320474065

`and(1, A055729(A028310(n)))`
-/

namespace A219098.P315027237320474065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055729 (A028310 n).toNat)

end

end A219098.P315027237320474065

/-! ## A219098.P15964488312412908404

`and(A050915(n), A055729(n))`
-/

namespace A219098.P15964488312412908404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050915 n) (A055729 n)

end

end A219098.P15964488312412908404

/-! ## A219098.P11907696496549414360

`and(A052539(n), A055729(n))`
-/

namespace A219098.P11907696496549414360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052539 n) (A055729 n)

end

end A219098.P11907696496549414360

/-! ## A219098.P14586448538344636764

`and(A054977(n), A055729(n))`
-/

namespace A219098.P14586448538344636764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A055729 n)

end

end A219098.P14586448538344636764

/-! ## A219098.P10812687478564794356

`and(A055729(n), A057427(n))`
-/

namespace A219098.P10812687478564794356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055729 n) (A057427 n)

end

end A219098.P10812687478564794356

/-! ## A219098.P14799307361781035196

`and(A055729(n), A060576(n))`
-/

namespace A219098.P14799307361781035196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055729 n) (A060576 n)

end

end A219098.P14799307361781035196

/-! ## A219098.P2381184459371256998

`and(A055729(n), A081546(n))`
-/

namespace A219098.P2381184459371256998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055729 n) (A081546 n)

end

end A219098.P2381184459371256998

/-! ## A219098.P11755505978616556351

`and(A055729(n), A087289(n))`
-/

namespace A219098.P11755505978616556351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055729 n) (A087289 n)

end

end A219098.P11755505978616556351

/-! ## A219098.P3544698483187591144

`and(A055729(n), A140660(n))`
-/

namespace A219098.P3544698483187591144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055729 n) (A140660 n)

end

end A219098.P3544698483187591144

/-!
# A219099: Unmatched value maps: number of n X n binary arrays indicating the locations of corresponding elements not equal to any horizontal, vertical or antidiagonal neighbor in a random 0..2 n X n array.

The programs for A219099, there is no canonical definition to state claims against.
-/

/-! ## A219099.P12640574615709935962

`A219106(∑[4*n]+1)`
-/

namespace A219099.P12640574615709935962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219106 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219099.P12640574615709935962

