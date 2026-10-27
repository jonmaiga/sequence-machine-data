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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
# A297200: Number of label-increasing forests with branching bounded by 4.

The programs for A297200, there is no canonical definition to state claims against.
-/

/-! ## A297200.P15321337526791984749

`A054899(A123503(3*n)+A000248(n))+1`
-/

namespace A297200.P15321337526791984749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A123503 (3 * n) + A000248 n).toNat + 1

end

end A297200.P15321337526791984749

/-! ## A297200.P4710074017491253752

`A321908(ceil(2^(n-1)))-∑{digits}[n, val(#+1, 7)]`
-/

namespace A297200.P4710074017491253752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321908 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 7).sum : ℕ) : ℤ)

end

end A297200.P4710074017491253752

/-! ## A297200.P15375423763192273984

`A002110(xor(2^(n-1), a(n-2)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=6, a(5)=24, a(6)=119`
-/

namespace A297200.P15375423763192273984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 6, 24, 119] fun n a =>
  A002110 (Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 2))).toNat

end

end A297200.P15375423763192273984

/-!
# A297201: Related to label-increasing forests with branching bounded by 4.

The programs for A297201, there is no canonical definition to state claims against.
-/

/-! ## A297201.P13762759374854429804

`ceil(root(A218818(n+1), 4))`
-/

namespace A297201.P13762759374854429804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A218818 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A297201.P13762759374854429804

/-! ## A297201.P13921097297369252721

`A111039(a(n-1))+1` with `a(0)=1`
-/

namespace A297201.P13921097297369252721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111039 (a (n - 1)).toNat + 1

end

end A297201.P13921097297369252721

/-!
# A297202: Related to label-increasing forests with branching bounded by 4.

The programs for A297202, there is no canonical definition to state claims against.
-/

/-! ## A297202.P1847564670279461583

`∑[A227737(∑[A054993(n)])]`
-/

namespace A297202.P1847564670279461583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054993 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297202.P1847564670279461583

/-!
# A297203: Related to label-increasing forests with branching bounded by 4.

The programs for A297203, there is no canonical definition to state claims against.
-/

/-! ## A297203.P11874569838785434250

`A132739(A377395(n))`
-/

namespace A297203.P11874569838785434250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (A377395 n).toNat

end

end A297203.P11874569838785434250

/-! ## A297203.P7092009442371798937

`A377395(A062937(n+1))`
-/

namespace A297203.P7092009442371798937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377395 (A062937 (n + 1)).toNat

end

end A297203.P7092009442371798937

/-!
# A297204: Number of label-increasing forests with branching bounded by 5.

The programs for A297204, there is no canonical definition to state claims against.
-/

/-! ## A297204.P12917959236921986546

`A244479(∏[a(n-1)+1])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A297204.P12917959236921986546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A297204.P12917959236921986546

/-! ## A297204.P17439244447619058022

`A054897(∏[a(n-1)+1])+1` with `a(0)=1, a(1)=7, a(2)=1`
-/

namespace A297204.P17439244447619058022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A297204.P17439244447619058022

/-! ## A297204.P11195450646085464927

`A124773(round(2^(n-1)))-A037804(n+1)`
-/

namespace A297204.P11195450646085464927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat - A037804 (n + 1)

end

end A297204.P11195450646085464927

/-! ## A297204.P3561672466026110353

`A221916(floor(2^(n-1)))-A037904(n+3)`
-/

namespace A297204.P3561672466026110353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221916 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat - A037904 (n + 3)

end

end A297204.P3561672466026110353

/-!
# A297205: Array read by antidiagonals: T(m,n) is the number of edge covers in the m X n king graph.

The programs for A297205, there is no canonical definition to state claims against.
-/

/-! ## A297205.P14991234944384465795

`A004525(A221139(n+1)^A128227(n))`
-/

namespace A297205.P14991234944384465795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A221139 (n + 1) : ℚ) ^ (A128227 n : ℤ))).toNat

end

end A297205.P14991234944384465795

/-! ## A297205.P15316601454787921110

`A110654(A221139(n+1)^A128227(n))`
-/

namespace A297205.P15316601454787921110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A221139 (n + 1) : ℚ) ^ (A128227 n : ℤ))).toNat

end

end A297205.P15316601454787921110

/-! ## A297205.P5130983328097461583

`A004525(A297959(n+1)^A166271(n))`
-/

namespace A297205.P5130983328097461583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A297959 (n + 1) : ℚ) ^ (A166271 n : ℤ))).toNat

end

end A297205.P5130983328097461583

/-! ## A297205.P9645332569674389373

`A004525(A298093(n+1)^A166271(n))`
-/

namespace A297205.P9645332569674389373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A298093 (n + 1) : ℚ) ^ (A166271 n : ℤ))).toNat

end

end A297205.P9645332569674389373

/-!
# A297208: a(0)=0; for n >= 1, a(n) = a(n-1-A023416(n)) + A000120(n).

The programs for A297208, the canonical program `A297208.P13177567222155169446` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297208 has offset 0).

The definition of A297208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-A023416(n))+A000120(n)` (program `A297208.P13177567222155169446`, by `A297208.P13177567222155169446.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297208.P13177567222155169446

`a(n-1-A023416(n))+A000120(n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A297208

/-- `a(n-1-A023416(n))+A000120(n)` -/
def P13177567222155169446.Spec : Prop :=
  ∀ n, P13177567222155169446.a n = A297208 n

theorem P13177567222155169446.correct : P13177567222155169446.Spec := by
  intro n
  simp only [A297208]

end A297208

/-!
# A297209: Expansion of e.g.f. log(1 + arcsin(x))*exp(-x).

The programs for A297209, there is no canonical definition to state claims against.
-/

/-! ## A297209.P5181837562389932502

`A138333(n+2)%A268812(∑[n]+1)`
-/

namespace A297209.P5181837562389932502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138333 (n + 2)) (A268812 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A297209.P5181837562389932502

/-! ## A297209.P4938263384677139772

`A036876(A007097(n))+A009356(n)`
-/

namespace A297209.P4938263384677139772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (A007097 n).toNat + A009356 n

end

end A297209.P4938263384677139772

/-!
# A297212: a(0)=1; a(1)=1; for n >= 2, a(n) = a(A023416(n)) + a(A000120(n)).

The programs for A297212, the canonical program `A297212.P6382382023899161157` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297212 has offset 0).

The definition of A297212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(A023416(n))+a(A000120(n))` (program `A297212.P6382382023899161157`, by `A297212.P6382382023899161157.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297212.P6382382023899161157

`a(A023416(n))+a(A000120(n))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A297212

/-- `a(A023416(n))+a(A000120(n))` -/
def P6382382023899161157.Spec : Prop :=
  ∀ n, (P6382382023899161157.a n : ℤ) = A297212 n

theorem P6382382023899161157.correct : P6382382023899161157.Spec := by
  intro n
  simp only [A297212]

end A297212

/-! ## A297212.P9181900901015533589

`a(A000120(n))+a(A023416(n))` with `a(0)=1, a(1)=1`
-/

namespace A297212.P9181900901015533589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A000120 n).toNat + a (A023416 n).toNat

end

end A297212.P9181900901015533589

namespace A297212

/-- `a(A000120(n))+a(A023416(n))` -/
def P9181900901015533589.Spec : Prop :=
  ∀ n, (P9181900901015533589.a n : ℤ) = A297212 n

end A297212

/-!
# A297213: Expansion of e.g.f. log(1 + arctanh(x))*exp(-x).

The programs for A297213, there is no canonical definition to state claims against.
-/

/-! ## A297213.P13081233995142599444

`A036876(A007097(n))+A009374(n)`
-/

namespace A297213.P13081233995142599444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (A007097 n).toNat + A009374 n

end

end A297213.P13081233995142599444

/-! ## A297213.P10766482990067804049

`A036876(A098481(n))+A009374(n)`
-/

namespace A297213.P10766482990067804049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036876 (A098481 n).toNat + A009374 n

end

end A297213.P10766482990067804049

/-!
# A297215: Expansion of e.g.f. exp(cos(tan(x))-1) (even powers only).

The programs for A297215, there is no canonical definition to state claims against.
-/

/-! ## A297215.P17758914427177130277

`A245449(A000108(n))-∑[2*n]`
-/

namespace A297215.P17758914427177130277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245449 (A000108 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A297215.P17758914427177130277

/-!
# A297216: a(0)=1; a(1)=1; for n >= 2, a(n) = a(n-A000120(n)) + a(n-1-A023416(n)).

The programs for A297216, the canonical program `A297216.P16521217013821379212` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297216 has offset 0).

The definition of A297216 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-A000120(n))+a(n-1-A023416(n))` (program `A297216.P16521217013821379212`, by `A297216.P16521217013821379212.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297216.P16521217013821379212

`a(n-A000120(n))+a(n-1-A023416(n))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A297216

/-- `a(n-A000120(n))+a(n-1-A023416(n))` -/
def P16521217013821379212.Spec : Prop :=
  ∀ n, (P16521217013821379212.a n : ℤ) = A297216 n

theorem P16521217013821379212.correct : P16521217013821379212.Spec := by
  intro n
  simp only [A297216]

end A297216

/-! ## A297216.P5514776057565227204

`abs(A024936(∑[A027559(n)]))`
-/

namespace A297216.P5514776057565227204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024936 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A297216.P5514776057565227204

namespace A297216

/-- `abs(A024936(∑[A027559(n)]))` -/
def P5514776057565227204.Spec : Prop :=
  ∀ n, P5514776057565227204.a n = A297216 n

end A297216

/-! ## A297216.P14748916859467903139

`abs(A024936(∑[A164209(n)]))`
-/

namespace A297216.P14748916859467903139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024936 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A297216.P14748916859467903139

namespace A297216

/-- `abs(A024936(∑[A164209(n)]))` -/
def P14748916859467903139.Spec : Prop :=
  ∀ n, P14748916859467903139.a n = A297216 n

end A297216

/-! ## A297216.P1505891610343270534

`abs(A024936(∑[A054668(n+1)]))`
-/

namespace A297216.P1505891610343270534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024936 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A297216.P1505891610343270534

namespace A297216

/-- `abs(A024936(∑[A054668(n+1)]))` -/
def P1505891610343270534.Spec : Prop :=
  ∀ n, P1505891610343270534.a n = A297216 n

end A297216

/-! ## A297216.P8955898798675686988

`abs(A024936(∑[A308542(n+1)]))`
-/

namespace A297216.P8955898798675686988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024936 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A297216.P8955898798675686988

namespace A297216

/-- `abs(A024936(∑[A308542(n+1)]))` -/
def P8955898798675686988.Spec : Prop :=
  ∀ n, P8955898798675686988.a n = A297216 n

end A297216

/-!
# A297217: Most common value of the number of divisors function among all composites up to composite(n) inclusive, or 0 if there is a tie.

The programs for A297217, the canonical program `A297217.P10692087675694026462` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297217 has offset 1).

The definition of A297217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297217.P10692087675694026462

`4-C(4, lcm(3, n))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297217

/-- `4-C(4, lcm(3, n))` -/
def P10692087675694026462.Spec : Prop :=
  ∀ n, P10692087675694026462.a n = A297217 (n + 1)

theorem P10692087675694026462.correct : P10692087675694026462.Spec := by
  intro n
  simp only [A297217, Nat.add_sub_cancel]

end A297217

/-!
# A297218: Number of n X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1's.

The programs for A297218, there is no canonical definition to state claims against.
-/

/-! ## A297218.P15777350176699958932

`A297224((n+1)²+n²)`
-/

namespace A297218.P15777350176699958932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 ((n + 1) ^ 2 + n ^ 2)

end

end A297218.P15777350176699958932

/-! ## A297218.P11740691788133450221

`record[A003982(n)*A297224(n+1)]`
-/

namespace A297218.P11740691788133450221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297218.P11740691788133450221

/-! ## A297218.P12452602197421467755

`record[A115718(n)*A297224(n+1)]`
-/

namespace A297218.P12452602197421467755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n * A297224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297218.P12452602197421467755

/-! ## A297218.P8350167809845968270

`record[gcd(A114327(n), A297224(n+1))]`
-/

namespace A297218.P8350167809845968270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297224 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297218.P8350167809845968270

/-! ## A297218.P18211539611060500478

`record[and(A185917(n+1), A297224(n+1))]`
-/

namespace A297218.P18211539611060500478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A297224 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297218.P18211539611060500478

/-!
# A297219: Number of n X 3 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297219, the canonical program `A297219.P14632594709769856912` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297219 has offset 1).

The definition of A297219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297219.P13061176032351400241

`ogf((3+5x+4x^2)/(1-x-4x^2-4x^3))`
-/

namespace A297219.P13061176032351400241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 4] [1, -1, -4, -4] n

end

end A297219.P13061176032351400241

namespace A297219

/-- `ogf((3+5x+4x^2)/(1-x-4x^2-4x^3))` -/
def P13061176032351400241.Spec : Prop :=
  ∀ n, P13061176032351400241.a n = A297219 (n + 1)

end A297219

/-! ## A297219.P14632594709769856912

`a(n-1)+4*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=8, a(2)=24`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297219

/-- `a(n-1)+4*a(n-2)+4*a(n-3)` -/
def P14632594709769856912.Spec : Prop :=
  ∀ n, (P14632594709769856912.a n : ℤ) = A297219 (n + 1)

theorem P14632594709769856912.correct : P14632594709769856912.Spec := by
  intro n
  simp only [A297219, Nat.add_sub_cancel]

end A297219

/-! ## A297219.P17212708258573744177

`A303714(2*(n+1))`
-/

namespace A297219.P17212708258573744177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303714 (2 * (n + 1))

end

end A297219.P17212708258573744177

namespace A297219

/-- `A303714(2*(n+1))` -/
def P17212708258573744177.Spec : Prop :=
  ∀ n, P17212708258573744177.a n = A297219 (n + 1)

end A297219

/-! ## A297219.P3211736965817245983

`record[A303714(A114112(n+1))]`
-/

namespace A297219.P3211736965817245983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303714 (A114112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297219.P3211736965817245983

namespace A297219

/-- `record[A303714(A114112(n+1))]` -/
def P3211736965817245983.Spec : Prop :=
  ∀ n, P3211736965817245983.a n = A297219 (n + 1)

end A297219

/-! ## A297219.P3665269345189510158

`record[A303714(A000265(n+1)+1)]`
-/

namespace A297219.P3665269345189510158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303714 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297219.P3665269345189510158

namespace A297219

/-- `record[A303714(A000265(n+1)+1)]` -/
def P3665269345189510158.Spec : Prop :=
  ∀ n, P3665269345189510158.a n = A297219 (n + 1)

end A297219

/-! ## A297219.P16433347129103592786

`A003476(2*(n+1))+A003476(2*n+1)`
-/

namespace A297219.P16433347129103592786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (2 * (n + 1)) + A003476 (2 * n + 1)

end

end A297219.P16433347129103592786

namespace A297219

/-- `A003476(2*(n+1))+A003476(2*n+1)` -/
def P16433347129103592786.Spec : Prop :=
  ∀ n, P16433347129103592786.a n = A297219 (n + 1)

end A297219

/-! ## A297219.P591210135285778096

`A203175(2*n+1)+A203175(2*n+3)`
-/

namespace A297219.P591210135285778096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (2 * n + 1) + A203175 (2 * n + 3)

end

end A297219.P591210135285778096

namespace A297219

/-- `A203175(2*n+1)+A203175(2*n+3)` -/
def P591210135285778096.Spec : Prop :=
  ∀ n, P591210135285778096.a n = A297219 (n + 1)

end A297219

/-! ## A297219.P16315312238784432734

`Δ[A164395(2*n+1)/2]`
-/

namespace A297219.P16315312238784432734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164395 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297219.P16315312238784432734

namespace A297219

/-- `Δ[A164395(2*n+1)/2]` -/
def P16315312238784432734.Spec : Prop :=
  ∀ n, P16315312238784432734.a n = (A297219 (n + 1) : ℚ)

end A297219

/-! ## A297219.P9898511493320856008

`Δ[A003476(2*n+3)/2]`
-/

namespace A297219.P9898511493320856008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003476 (2 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297219.P9898511493320856008

namespace A297219

/-- `Δ[A003476(2*n+3)/2]` -/
def P9898511493320856008.Spec : Prop :=
  ∀ n, P9898511493320856008.a n = (A297219 (n + 1) : ℚ)

end A297219

/-! ## A297219.P983040935707836362

`A303719(A167614(2*(n+1)))`
-/

namespace A297219.P983040935707836362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A167614 (2 * (n + 1))).toNat

end

end A297219.P983040935707836362

namespace A297219

/-- `A303719(A167614(2*(n+1)))` -/
def P983040935707836362.Spec : Prop :=
  ∀ n, P983040935707836362.a n = A297219 (n + 1)

end A297219

/-!
# A297220: Number of n X 4 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297220, the canonical program `A297220.P6707284363178798705` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297220 has offset 1).

The definition of A297220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297220.P6707284363178798705

`a(n-1)+6*a(n-2)+11*a(n-3)+6*a(n-4)+a(n-5)` with `a(0)=4, a(1)=16, a(2)=57, a(3)=207, a(4)=751`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297220

/-- `a(n-1)+6*a(n-2)+11*a(n-3)+6*a(n-4)+a(n-5)` -/
def P6707284363178798705.Spec : Prop :=
  ∀ n, (P6707284363178798705.a n : ℤ) = A297220 (n + 1)

theorem P6707284363178798705.correct : P6707284363178798705.Spec := by
  intro n
  simp only [A297220, Nat.add_sub_cancel]

end A297220

/-! ## A297220.P16714420291147904850

`A297224(A141214(n+1))`
-/

namespace A297220.P16714420291147904850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A141214 (n + 1)).toNat

end

end A297220.P16714420291147904850

namespace A297220

/-- `A297224(A141214(n+1))` -/
def P16714420291147904850.Spec : Prop :=
  ∀ n, P16714420291147904850.a n = A297220 (n + 1)

end A297220

/-! ## A297220.P4789318166871908817

`A297224(A055998(n+2))`
-/

namespace A297220.P4789318166871908817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A055998 (n + 2)).toNat

end

end A297220.P4789318166871908817

namespace A297220

/-- `A297224(A055998(n+2))` -/
def P4789318166871908817.Spec : Prop :=
  ∀ n, P4789318166871908817.a n = A297220 (n + 1)

end A297220

/-! ## A297220.P17801501173544156152

`A297224(A056000(n)+7)`
-/

namespace A297220.P17801501173544156152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A056000 n + 7).toNat

end

end A297220.P17801501173544156152

namespace A297220

/-- `A297224(A056000(n)+7)` -/
def P17801501173544156152.Spec : Prop :=
  ∀ n, P17801501173544156152.a n = A297220 (n + 1)

end A297220

/-! ## A297220.P3735685838834865486

`A297224(eq[2, A152157(n)])`
-/

namespace A297220.P3735685838834865486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297220.P3735685838834865486

namespace A297220

/-- `A297224(eq[2, A152157(n)])` -/
def P3735685838834865486.Spec : Prop :=
  ∀ n, P3735685838834865486.a n = A297220 (n + 1)

end A297220

/-!
# A297221: Number of n X 5 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297221, there is no canonical definition to state claims against.
-/

/-! ## A297221.P15405485210669225423

`A297224(A046691(n+3))`
-/

namespace A297221.P15405485210669225423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A046691 (n + 3)).toNat

end

end A297221.P15405485210669225423

/-! ## A297221.P5068962961005426185

`A297224(eq[3, A152157(n)])`
-/

namespace A297221.P5068962961005426185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297221.P5068962961005426185

/-! ## A297221.P5000088224498134685

`A297224(eq[4, A193592(n)])`
-/

namespace A297221.P5000088224498134685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297221.P5000088224498134685

/-! ## A297221.P15442489441678193484

`A297224(Δ[A023545(n+1)])`
-/

namespace A297221.P15442489441678193484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (f1 (n + 1) - f1 n).toNat

end

end A297221.P15442489441678193484

/-! ## A297221.P18267879744545239465

`A297224(A052905(n+2)+1)`
-/

namespace A297221.P18267879744545239465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A052905 (n + 2) + 1).toNat

end

end A297221.P18267879744545239465

/-!
# A297222: Number of nX6 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297222, there is no canonical definition to state claims against.
-/

/-! ## A297222.P17895159635167741436

`A297224(A052905(n+3))`
-/

namespace A297222.P17895159635167741436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A052905 (n + 3)).toNat

end

end A297222.P17895159635167741436

/-! ## A297222.P17473648919985658696

`A297224(eq[3, A219347(n)])`
-/

namespace A297222.P17473648919985658696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297222.P17473648919985658696

/-! ## A297222.P14184582403599602843

`A297224(eq[5, A193592(n)])`
-/

namespace A297222.P14184582403599602843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297222.P14184582403599602843

/-! ## A297222.P9726590861231277280

`A297224(A000096(n+5)-4)`
-/

namespace A297222.P9726590861231277280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A000096 (n + 5) - 4).toNat

end

end A297222.P9726590861231277280

/-! ## A297222.P3844779267384581315

`A297224(eq[8, A185782(n+1)])`
-/

namespace A297222.P3844779267384581315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297222.P3844779267384581315

/-!
# A297223: Number of nX7 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297223, there is no canonical definition to state claims against.
-/

/-! ## A297223.P5601813515952724299

`A297224(A055999(n+4))`
-/

namespace A297223.P5601813515952724299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A055999 (n + 4)).toNat

end

end A297223.P5601813515952724299

/-! ## A297223.P1388542306256903362

`A297224(eq[4, A219347(n)])`
-/

namespace A297223.P1388542306256903362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297223.P1388542306256903362

/-! ## A297223.P12543531339238702719

`A297224(eq[6, A193592(n)])`
-/

namespace A297223.P12543531339238702719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297223.P12543531339238702719

/-! ## A297223.P4941985490337692217

`A297224(eq[10, A185782(n+1)])`
-/

namespace A297223.P4941985490337692217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297223.P4941985490337692217

/-! ## A297223.P10889842582509334023

`A297224(eq[7, A200370(n+1)])`
-/

namespace A297223.P10889842582509334023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297223.P10889842582509334023

/-!
# A297224: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297224, there is no canonical definition to state claims against.
-/

/-! ## A297224.P15088018766005822608

`Δ[A132016(∑[A208341(n)])]`
-/

namespace A297224.P15088018766005822608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297224.P15088018766005822608

/-! ## A297224.P7991465929796639270

`A361332(A327086(n+1))`
-/

namespace A297224.P7991465929796639270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361332 (A327086 (n + 1)).toNat

end

end A297224.P7991465929796639270

/-! ## A297224.P14618333588651089806

`Δ[A132016(∑[A201634(n)])]`
-/

namespace A297224.P14618333588651089806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297224.P14618333588651089806

/-!
# A297225: Number of 3Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297225, there is no canonical definition to state claims against.
-/

/-! ## A297225.P7585129584646919115

`A297224(∑[n+2]+4)`
-/

namespace A297225.P7585129584646919115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297225.P7585129584646919115

/-! ## A297225.P3145626686097663681

`and(or(n, -1), A297224(A167614(n+1)))`
-/

namespace A297225.P3145626686097663681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lor (n : ℤ) (-1)) (A297224 (A167614 (n + 1)).toNat)

end

end A297225.P3145626686097663681

/-! ## A297225.P13365426285550268311

`or(A000007(n), A297224(A167614(n+1)))`
-/

namespace A297225.P13365426285550268311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297224 (A167614 (n + 1)).toNat)

end

end A297225.P13365426285550268311

/-! ## A297225.P4986550850054220650

`A297224(A167614(n+1))%A297220(n+1)`
-/

namespace A297225.P4986550850054220650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297224 (A167614 (n + 1)).toNat) (A297220 (n + 1))

end

end A297225.P4986550850054220650

/-! ## A297225.P15399913446038132480

`A007318(A000096(n))*A297224(A167614(n+1))`
-/

namespace A297225.P15399913446038132480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A297224 (A167614 (n + 1)).toNat

end

end A297225.P15399913446038132480

/-!
# A297226: Number of 4Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297226, there is no canonical definition to state claims against.
-/

/-! ## A297226.P6639838985130082234

`A297224(A141214(n)+7)`
-/

namespace A297226.P6639838985130082234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A141214 n + 7).toNat

end

end A297226.P6639838985130082234

/-! ## A297226.P16729718984435150685

`A297224(A052905(n)+9)`
-/

namespace A297226.P16729718984435150685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A052905 n + 9).toNat

end

end A297226.P16729718984435150685

/-! ## A297226.P11558094557050817484

`A297224(A055999(n)+10)`
-/

namespace A297226.P11558094557050817484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A055999 n + 10).toNat

end

end A297226.P11558094557050817484

/-! ## A297226.P17698665673352706799

`A297224(A167614(n+2)+1)`
-/

namespace A297226.P17698665673352706799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A167614 (n + 2) + 1).toNat

end

end A297226.P17698665673352706799

/-! ## A297226.P3766836390949844369

`A297224(A166136(n+2)-2)`
-/

namespace A297226.P3766836390949844369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A166136 (n + 2) - 2).toNat

end

end A297226.P3766836390949844369

/-!
# A297227: Number of 5Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297227, there is no canonical definition to state claims against.
-/

/-! ## A297227.P7926382760720647268

`A297224(A167499(n+3))`
-/

namespace A297227.P7926382760720647268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A167499 (n + 3)).toNat

end

end A297227.P7926382760720647268

/-! ## A297227.P7028238246282074303

`A297224(∑[A020705(n)]+11)`
-/

namespace A297227.P7028238246282074303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A297227.P7028238246282074303

/-! ## A297227.P2419133774225182322

`A297224(A000217(n+4)+5)`
-/

namespace A297227.P2419133774225182322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A000217 (n + 4) + 5).toNat

end

end A297227.P2419133774225182322

/-! ## A297227.P4402732572937019081

`A297224(A000096(n+4)-n+1)`
-/

namespace A297227.P4402732572937019081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A000096 (n + 4) - (n : ℤ) + 1).toNat

end

end A297227.P4402732572937019081

/-! ## A297227.P11741753096701704257

`A297224(A038722(Δ[A023545(n+1)]))`
-/

namespace A297227.P11741753096701704257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A297227.P11741753096701704257

/-!
# A297228: Number of 6Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297228, there is no canonical definition to state claims against.
-/

/-! ## A297228.P2695274510381876685

`A297224(A167614(n+4)+3)`
-/

namespace A297228.P2695274510381876685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A167614 (n + 4) + 3).toNat

end

end A297228.P2695274510381876685

/-! ## A297228.P17536979354573216609

`A297224(A000124(n+5)+5)`
-/

namespace A297228.P17536979354573216609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A000124 (n + 5) + 5).toNat

end

end A297228.P17536979354573216609

/-! ## A297228.P7990989648373930934

`A297224(A000217(n+5)+6)`
-/

namespace A297228.P7990989648373930934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A000217 (n + 5) + 6).toNat

end

end A297228.P7990989648373930934

/-! ## A297228.P3213708152036532533

`A297224(Δ[A023545(n+1)]+10)`
-/

namespace A297228.P3213708152036532533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (f1 (n + 1) - f1 n + 10).toNat

end

end A297228.P3213708152036532533

/-! ## A297228.P500151381815496670

`A297224(A055998(n)+A008486(n+7))`
-/

namespace A297228.P500151381815496670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A055998 n + A008486 (n + 7)).toNat

end

end A297228.P500151381815496670

/-!
# A297229: Number of 7Xn 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 1 neighboring 1s.

The programs for A297229, there is no canonical definition to state claims against.
-/

/-! ## A297229.P5543552496649073672

`A297224(eq[11, A066657(n)])`
-/

namespace A297229.P5543552496649073672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297229.P5543552496649073672

/-! ## A297229.P14486901101290838937

`A297224(A166136(n+5)+1)`
-/

namespace A297229.P14486901101290838937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A166136 (n + 5) + 1).toNat

end

end A297229.P14486901101290838937

/-! ## A297229.P5280241746303460234

`A297224(A167614(n+5)+4)`
-/

namespace A297229.P5280241746303460234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A167614 (n + 5) + 4).toNat

end

end A297229.P5280241746303460234

/-! ## A297229.P3327085125454792828

`A297224(A000124(n+6)+6)`
-/

namespace A297229.P3327085125454792828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A000124 (n + 6) + 6).toNat

end

end A297229.P3327085125454792828

/-! ## A297229.P4719439380620379244

`A297224(eq[8, A131818(n+1)])`
-/

namespace A297229.P4719439380620379244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297229.P4719439380620379244

/-!
# A297231: Down-variation of the base-11 digits of n; see Comments.

The programs for A297231, there is no canonical definition to state claims against.
-/

/-! ## A297231.P8274292071920925593

`A297233(n+1)-A297232(n+1)`
-/

namespace A297231.P8274292071920925593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297233 (n + 1) - A297232 (n + 1)

end

end A297231.P8274292071920925593

/-! ## A297231.P1571983174211244367

`dr(A055961(n+1)%A235301(2*(n+5)))-A297232(n+1)`
-/

namespace A297231.P1571983174211244367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Int.tmod (A055961 (n + 1)) (A235301 (2 * (n + 5)))) : ℤ) - A297232 (n + 1)

end

end A297231.P1571983174211244367

/-! ## A297231.P5472898027525475990

`A297234(A033010(n+2))`
-/

namespace A297231.P5472898027525475990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (A033010 (n + 2)).toNat

end

end A297231.P5472898027525475990

/-! ## A297231.P11980833853911879622

`A297234(lt[A081532(3*n+5), A178202(n)])`
-/

namespace A297231.P11980833853911879622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A297231.P11980833853911879622

/-! ## A297231.P12948333110699826651

`A220470(n+1)%A324394(n)`
-/

namespace A297231.P12948333110699826651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220470 (n + 1)) (A324394 n)

end

end A297231.P12948333110699826651

/-!
# A297232: Up-variation of the base-11 digits of n; see Comments.

The programs for A297232, there is no canonical definition to state claims against.
-/

/-! ## A297232.P17658997037720628963

`A297233(n+1)-A297231(n+1)`
-/

namespace A297232.P17658997037720628963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297233 (n + 1) - A297231 (n + 1)

end

end A297232.P17658997037720628963

/-! ## A297232.P12931643652134318930

`A297231(A056960(n+1))`
-/

namespace A297232.P12931643652134318930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (A056960 (n + 1)).toNat

end

end A297232.P12931643652134318930

/-! ## A297232.P971554171825991176

`A297233(n+1)%gcd(A213217(n), A297231(n+1))`
-/

namespace A297232.P971554171825991176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297233 (n + 1)) (Int.gcd (A213217 n) (A297231 (n + 1)) : ℤ)

end

end A297232.P971554171825991176

/-! ## A297232.P17203318827063873145

`dr(A055961(n+1)%A235301(2*(n+5)))-A297231(n+1)`
-/

namespace A297232.P17203318827063873145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Int.tmod (A055961 (n + 1)) (A235301 (2 * (n + 5)))) : ℤ) - A297231 (n + 1)

end

end A297232.P17203318827063873145

/-!
# A297233: Total variation of base-11 digits of n; see Comments.

The programs for A297233, there is no canonical definition to state claims against.
-/

/-! ## A297233.P516136796279261870

`A297232(n+1)+A297231(n+1)`
-/

namespace A297233.P516136796279261870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (n + 1) + A297231 (n + 1)

end

end A297233.P516136796279261870

/-! ## A297233.P16922485947091205577

`A297231(A056960(n+1))+A297231(n+1)`
-/

namespace A297233.P16922485947091205577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (A056960 (n + 1)).toNat + A297231 (n + 1)

end

end A297233.P16922485947091205577

/-! ## A297233.P16906794701379069843

`dr(A055961(n+1)%A235301(2*(n+5)))`
-/

namespace A297233.P16906794701379069843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A055961 (n + 1)) (A235301 (2 * (n + 5))))

end

end A297233.P16906794701379069843

/-! ## A297233.P2397078510891643836

`dr(A011557(n)*A055961(n+1))`
-/

namespace A297233.P2397078510891643836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A011557 n * A055961 (n + 1))

end

end A297233.P2397078510891643836

/-! ## A297233.P2691123635472900653

`dr(A055961(n+1)%A224728(A007318(n)))`
-/

namespace A297233.P2691123635472900653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A055961 (n + 1)) (A224728 (A007318 n).toNat))

end

end A297233.P2691123635472900653

/-!
# A297234: Down-variation of the base-12 digits of n; see Comments.

The programs for A297234, there is no canonical definition to state claims against.
-/

/-! ## A297234.P4447126294209849168

`A297236(n+1)-A297235(n+1)`
-/

namespace A297234.P4447126294209849168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297236 (n + 1) - A297235 (n + 1)

end

end A297234.P4447126294209849168

/-! ## A297234.P1720481799354247381

`A297231(A259361(∑[A286667(n+1)]))`
-/

namespace A297234.P1720481799354247381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A297234.P1720481799354247381

/-! ## A297234.P12252774158683953917

`A297237(lt[A321936(n), A056961(n)])`
-/

namespace A297234.P12252774158683953917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A297234.P12252774158683953917

/-! ## A297234.P8832244907330619753

`A297243(A346151(comp[14*n]))`
-/

namespace A297234.P8832244907330619753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A346151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A297234.P8832244907330619753

/-! ## A297234.P16199740006981708336

`A297236(n+1)%gcd(A144880(n+1), A297235(n+1))`
-/

namespace A297234.P16199740006981708336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297236 (n + 1)) (Int.gcd (A144880 (n + 1)) (A297235 (n + 1)) : ℤ)

end

end A297234.P16199740006981708336

/-! ## A297234.P9765140245943520953

`A297237(A033011(n+2))`
-/

namespace A297234.P9765140245943520953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (A033011 (n + 2)).toNat

end

end A297234.P9765140245943520953

/-! ## A297234.P6643738495127281195

`A297231(A072932(n+1))-A102683(A306100(n))`
-/

namespace A297234.P6643738495127281195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (A072932 (n + 1)).toNat - A102683 (A306100 n).toNat

end

end A297234.P6643738495127281195

/-! ## A297234.P12090357826732075113

`A297231(A072932(n+1))%A106744(n+1)`
-/

namespace A297234.P12090357826732075113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297231 (A072932 (n + 1)).toNat) (A106744 (n + 1))

end

end A297234.P12090357826732075113

/-! ## A297234.P2915152477515594587

`A297231(A072932(n+1))+A000007((2*n+1)²)`
-/

namespace A297234.P2915152477515594587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (A072932 (n + 1)).toNat + A000007 ((2 * n + 1) ^ 2)

end

end A297234.P2915152477515594587

/-!
# A297235: Up-variation of the base-12 digits of n; see Comments.

The programs for A297235, there is no canonical definition to state claims against.
-/

/-! ## A297235.P14658876493094976463

`A297236(n+1)-A297234(n+1)`
-/

namespace A297235.P14658876493094976463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297236 (n + 1) - A297234 (n + 1)

end

end A297235.P14658876493094976463

/-! ## A297235.P16503293281356619620

`A297234(A056961(n+1))`
-/

namespace A297235.P16503293281356619620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (A056961 (n + 1)).toNat

end

end A297235.P16503293281356619620

/-! ## A297235.P16682791696506008313

`xor(A297234(n+1), A297236(n+1))%A128502(n)`
-/

namespace A297235.P16682791696506008313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A297234 (n + 1)) (A297236 (n + 1))) (A128502 n)

end

end A297235.P16682791696506008313

/-! ## A297235.P17779727094996808741

`A297236(n+1)-A297243(A346151(comp[14*n]))`
-/

namespace A297235.P17779727094996808741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297236 (n + 1) - A297243 (A346151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A297235.P17779727094996808741

/-! ## A297235.P2181701556220166474

`A297236(n+1)-A297237(A033011(n+2))`
-/

namespace A297235.P2181701556220166474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297236 (n + 1) - A297237 (A033011 (n + 2)).toNat

end

end A297235.P2181701556220166474

/-! ## A297235.P17254095135797915397

`A297236(n+1)-A297231(A072932(n+1))%A106744(n+1)`
-/

namespace A297235.P17254095135797915397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297236 (n + 1) - Int.tmod (A297231 (A072932 (n + 1)).toNat) (A106744 (n + 1))

end

end A297235.P17254095135797915397

/-!
# A297236: Total variation of base-12 digits of n; see Comments.

The programs for A297236, there is no canonical definition to state claims against.
-/

/-! ## A297236.P5535531906844925704

`A297235(n+1)+A297234(n+1)`
-/

namespace A297236.P5535531906844925704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1) + A297234 (n + 1)

end

end A297236.P5535531906844925704

/-! ## A297236.P9425892968223735988

`A297234(A056961(n+1))+A297234(n+1)`
-/

namespace A297236.P9425892968223735988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (A056961 (n + 1)).toNat + A297234 (n + 1)

end

end A297236.P9425892968223735988

/-! ## A297236.P10498473746829826625

`A297243(A346151(comp[14*n]))+A297235(n+1)`
-/

namespace A297236.P10498473746829826625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A346151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat + A297235 (n + 1)

end

end A297236.P10498473746829826625

/-! ## A297236.P493751861682190365

`A297237(A033011(n+2))+A297235(n+1)`
-/

namespace A297236.P493751861682190365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (A033011 (n + 2)).toNat + A297235 (n + 1)

end

end A297236.P493751861682190365

/-! ## A297236.P4846715648162107709

`A297235(n+1)+A297231(A072932(n+1))%A106744(n+1)`
-/

namespace A297236.P4846715648162107709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1) + Int.tmod (A297231 (A072932 (n + 1)).toNat) (A106744 (n + 1))

end

end A297236.P4846715648162107709

/-! ## A297236.P10406493450331446433

`A297235(n+1)+A297231(A072932(n+1))+A000007((2*n+1)²)`
-/

namespace A297236.P10406493450331446433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1) + (A297231 (A072932 (n + 1)).toNat + A000007 ((2 * n + 1) ^ 2))

end

end A297236.P10406493450331446433

/-!
# A297237: Down-variation of the base-13 digits of n; see Comments.

The programs for A297237, there is no canonical definition to state claims against.
-/

/-! ## A297237.P7023698206924673297

`A297239(n+1)-A297238(n+1)`
-/

namespace A297237.P7023698206924673297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297239 (n + 1) - A297238 (n + 1)

end

end A297237.P7023698206924673297

/-! ## A297237.P15038199893979997373

`A297239(n+1)%gcd(A005186(n), A297238(n+1))`
-/

namespace A297237.P15038199893979997373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297239 (n + 1)) (Int.gcd (A005186 n) (A297238 (n + 1)) : ℤ)

end

end A297237.P15038199893979997373

/-! ## A297237.P2363972423226977289

`A297240(A046100(n+2))%A000203(A051682(2*n+3))`
-/

namespace A297237.P2363972423226977289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297240 (A046100 (n + 2)).toNat) (A000203 (A051682 (2 * n + 3)).toNat)

end

end A297237.P2363972423226977289

/-! ## A297237.P632459494763956887

`A297240(A046100(n+2))%A120933(n+2)`
-/

namespace A297237.P632459494763956887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297240 (A046100 (n + 2)).toNat) (A120933 (n + 2))

end

end A297237.P632459494763956887

/-! ## A297237.P10119395387635658301

`A297243(A346151(n))`
-/

namespace A297237.P10119395387635658301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A346151 n).toNat

end

end A297237.P10119395387635658301

/-! ## A297237.P4393821141867068304

`A297240(A276796(2*n+1))%A220020(A085543(n))`
-/

namespace A297237.P4393821141867068304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297240 (A276796 (2 * n + 1)).toNat) (A220020 (A085543 n).toNat)

end

end A297237.P4393821141867068304

/-! ## A297237.P14054442008220287558

`A297240(A276796(2*n+1))+A122840(A165827(n+1))`
-/

namespace A297237.P14054442008220287558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A276796 (2 * n + 1)).toNat + A122840 (A165827 (n + 1)).toNat

end

end A297237.P14054442008220287558

/-! ## A297237.P1075883434498133582

`A297240(A033012(n+2))`
-/

namespace A297237.P1075883434498133582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A033012 (n + 2)).toNat

end

end A297237.P1075883434498133582

/-!
# A297238: Up-variation of the base-13 digits of n; see Comments.

The programs for A297238, there is no canonical definition to state claims against.
-/

/-! ## A297238.P15147010386379274701

`A297239(n+1)-A297237(n+1)`
-/

namespace A297238.P15147010386379274701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297239 (n + 1) - A297237 (n + 1)

end

end A297238.P15147010386379274701

/-! ## A297238.P4550386683032809672

`A297239(n+1)%gcd(A005186(n), A297237(n+1))`
-/

namespace A297238.P4550386683032809672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297239 (n + 1)) (Int.gcd (A005186 n) (A297237 (n + 1)) : ℤ)

end

end A297238.P4550386683032809672

/-! ## A297238.P1551994858344037746

`A297239(gcd(n, A297237(n+1)^n)+1)`
-/

namespace A297238.P1551994858344037746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297239 (Int.gcd (n : ℤ) (A297237 (n + 1) ^ n) + 1)

end

end A297238.P1551994858344037746

/-! ## A297238.P10336996165452460856

`A297239(n+1)-A297243(A346151(n))`
-/

namespace A297238.P10336996165452460856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297239 (n + 1) - A297243 (A346151 n).toNat

end

end A297238.P10336996165452460856

/-! ## A297238.P1262569756176736984

`A297239(n+1)-A297240(A033012(n+2))`
-/

namespace A297238.P1262569756176736984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297239 (n + 1) - A297240 (A033012 (n + 2)).toNat

end

end A297238.P1262569756176736984

/-!
# A297239: Total variation of base-13 digits of n; see Comments.

The programs for A297239, there is no canonical definition to state claims against.
-/

/-! ## A297239.P10049955484961471187

`A297238(n+1)+A297237(n+1)`
-/

namespace A297239.P10049955484961471187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297238 (n + 1) + A297237 (n + 1)

end

end A297239.P10049955484961471187

/-! ## A297239.P17175427219415157840

`A297238(n+1)+A297240(A046100(n+2))%A120933(n+2)`
-/

namespace A297239.P17175427219415157840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297238 (n + 1) + Int.tmod (A297240 (A046100 (n + 2)).toNat) (A120933 (n + 2))

end

end A297239.P17175427219415157840

/-! ## A297239.P3159641838629415642

`A297243(A346151(n))+A297238(n+1)`
-/

namespace A297239.P3159641838629415642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A346151 n).toNat + A297238 (n + 1)

end

end A297239.P3159641838629415642

/-! ## A297239.P3672412971492580507

`A297240(A033012(n+2))+A297238(n+1)`
-/

namespace A297239.P3672412971492580507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A033012 (n + 2)).toNat + A297238 (n + 1)

end

end A297239.P3672412971492580507

/-! ## A297239.P3374187029333561559

`A330174(A361500(n+1)+A238555(n+2))+A297238(n+1)`
-/

namespace A297239.P3374187029333561559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330174 (A361500 (n + 1) + A238555 (n + 2)).toNat + A297238 (n + 1)

end

end A297239.P3374187029333561559

/-!
# A297240: Down-variation of the base-14 digits of n; see Comments.

The programs for A297240, there is no canonical definition to state claims against.
-/

/-! ## A297240.P12177932626594869899

`A297242(n+1)-A297241(n+1)`
-/

namespace A297240.P12177932626594869899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297242 (n + 1) - A297241 (n + 1)

end

end A297240.P12177932626594869899

/-!
# A297241: Up-variation of the base-14 digits of n; see Comments.

The programs for A297241, there is no canonical definition to state claims against.
-/

/-! ## A297241.P9754226650480870679

`A297242(n+1)-A297240(n+1)`
-/

namespace A297241.P9754226650480870679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297242 (n + 1) - A297240 (n + 1)

end

end A297241.P9754226650480870679

/-! ## A297241.P6987835253119661007

`A297242(n+1)%gcd(A006497(n), A297240(n+1))`
-/

namespace A297241.P6987835253119661007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297242 (n + 1)) (Int.gcd (A006497 n) (A297240 (n + 1)) : ℤ)

end

end A297241.P6987835253119661007

/-! ## A297241.P12912290954655638124

`xor(A297240(n+1)%A213217(n), A297242(n+1))`
-/

namespace A297241.P12912290954655638124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A297240 (n + 1)) (A213217 n)) (A297242 (n + 1))

end

end A297241.P12912290954655638124

/-! ## A297241.P9502557550235459930

`and(A046100(n+1)%A320048(n+1), A297242(n+1))`
-/

namespace A297241.P9502557550235459930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A046100 (n + 1)) (A320048 (n + 1))) (A297242 (n + 1))

end

end A297241.P9502557550235459930

/-! ## A297241.P12160280461820670876

`xor(A297240(n+1), A297242(n+1))%A294472(n+1)`
-/

namespace A297241.P12160280461820670876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A297240 (n + 1)) (A297242 (n + 1))) (A294472 (n + 1))

end

end A297241.P12160280461820670876

/-!
# A297242: Total variation of base-14 digits of n; see Comments.

The programs for A297242, there is no canonical definition to state claims against.
-/

/-! ## A297242.P10013066023698439188

`A297241(n+1)+A297240(n+1)`
-/

namespace A297242.P10013066023698439188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (n + 1) + A297240 (n + 1)

end

end A297242.P10013066023698439188

/-!
# A297243: Down-variation of the base-15 digits of n; see Comments.

The programs for A297243, there is no canonical definition to state claims against.
-/

/-! ## A297243.P8980563256000880268

`A297245(n+1)-A297244(n+1)`
-/

namespace A297243.P8980563256000880268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297245 (n + 1) - A297244 (n + 1)

end

end A297243.P8980563256000880268

/-! ## A297243.P5943982383535497756

`A297246(A137735(∑[A284365(n+1)]))`
-/

namespace A297243.P5943982383535497756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A137735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A297243.P5943982383535497756

/-! ## A297243.P14686885495665119920

`A297245(n+1)%gcd(A294472(n+1), A297244(n+1))`
-/

namespace A297243.P14686885495665119920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297245 (n + 1)) (Int.gcd (A294472 (n + 1)) (A297244 (n + 1)) : ℤ)

end

end A297243.P14686885495665119920

/-! ## A297243.P7253398809304990485

`A297246(A252474(n+1))`
-/

namespace A297243.P7253398809304990485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A252474 (n + 1)).toNat

end

end A297243.P7253398809304990485

/-! ## A297243.P16307053638539706524

`A327932(A236830(n+1))`
-/

namespace A297243.P16307053638539706524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327932 (A236830 (n + 1)).toNat

end

end A297243.P16307053638539706524

/-!
# A297244: Up-variation of the base-15 digits of n; see Comments.

The programs for A297244, there is no canonical definition to state claims against.
-/

/-! ## A297244.P13837728917930091125

`A297245(n+1)-A297243(n+1)`
-/

namespace A297244.P13837728917930091125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297245 (n + 1) - A297243 (n + 1)

end

end A297244.P13837728917930091125

/-! ## A297244.P3634260458451225394

`A297245(n+1)%gcd(A294472(n+1), A297243(n+1))`
-/

namespace A297244.P3634260458451225394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297245 (n + 1)) (Int.gcd (A294472 (n + 1)) (A297243 (n + 1)) : ℤ)

end

end A297244.P3634260458451225394

/-! ## A297244.P15059787935943814962

`xor(A297243(n+1)%A128502(n), A297245(n+1))`
-/

namespace A297244.P15059787935943814962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A297243 (n + 1)) (A128502 n)) (A297245 (n + 1))

end

end A297244.P15059787935943814962

/-! ## A297244.P1477764764068466052

`A297247(A281873(n+2))`
-/

namespace A297244.P1477764764068466052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (A281873 (n + 2)).toNat

end

end A297244.P1477764764068466052

/-!
# A297245: Total variation of base-15 digits of n; see Comments.

The programs for A297245, there is no canonical definition to state claims against.
-/

/-! ## A297245.P404920534384875773

`A297244(n+1)+A297243(n+1)`
-/

namespace A297245.P404920534384875773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1) + A297243 (n + 1)

end

end A297245.P404920534384875773

/-! ## A297245.P6983472774449342912

`A297246(A252474(n+1))+A297244(n+1)`
-/

namespace A297245.P6983472774449342912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A252474 (n + 1)).toNat + A297244 (n + 1)

end

end A297245.P6983472774449342912

/-! ## A297245.P18058654469272010834

`A297244(n+1)+A014083(A059893(n+2)-A324930(2*n+5))`
-/

namespace A297245.P18058654469272010834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1) + A014083 (A059893 (n + 2) - A324930 (2 * n + 5)).toNat

end

end A297245.P18058654469272010834

/-! ## A297245.P8020517816618830856

`A297244(n+1)+A100380(n+3)%A333765(A333765(2*(n+1)))`
-/

namespace A297245.P8020517816618830856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1) + Int.tmod (A100380 (n + 3)) (A333765 (A333765 (2 * (n + 1))).toNat)

end

end A297245.P8020517816618830856

/-!
# A297246: Down-variation of the base-16 digits of n; see Comments.

The programs for A297246, there is no canonical definition to state claims against.
-/

/-! ## A297246.P10629304952399638059

`A297248(n+1)-A297247(n+1)`
-/

namespace A297246.P10629304952399638059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297248 (n + 1) - A297247 (n + 1)

end

end A297246.P10629304952399638059

/-! ## A297246.P4547819117692971385

`A297243(A274933(n+1)+1)`
-/

namespace A297246.P4547819117692971385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A274933 (n + 1) + 1).toNat

end

end A297246.P4547819117692971385

/-! ## A297246.P13149819535103507868

`A297243(A274933(n+2))`
-/

namespace A297246.P13149819535103507868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A274933 (n + 2)).toNat

end

end A297246.P13149819535103507868

/-! ## A297246.P4310139033706545005

`A297243(A106744(n+1)+2)`
-/

namespace A297246.P4310139033706545005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A106744 (n + 1) + 2).toNat

end

end A297246.P4310139033706545005

/-! ## A297246.P13867180064286312236

`A297248(n+1)+-A297247(n+1)%A106744(n+1)`
-/

namespace A297246.P13867180064286312236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297248 (n + 1) + Int.tmod (-A297247 (n + 1)) (A106744 (n + 1))

end

end A297246.P13867180064286312236

/-!
# A297247: Up-variation of the base-16 digits of n; see Comments.

The programs for A297247, there is no canonical definition to state claims against.
-/

/-! ## A297247.P7822909890763531453

`A297248(n+1)-A297246(n+1)`
-/

namespace A297247.P7822909890763531453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297248 (n + 1) - A297246 (n + 1)

end

end A297247.P7822909890763531453

/-! ## A297247.P3912158247983712919

`A297246(A056962(n+1))`
-/

namespace A297247.P3912158247983712919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A056962 (n + 1)).toNat

end

end A297247.P3912158247983712919

/-! ## A297247.P5849313183162281385

`A297246(A217558(n+1))%(n+1)`
-/

namespace A297247.P5849313183162281385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297246 (A217558 (n + 1)).toNat) (n + 1 : ℤ)

end

end A297247.P5849313183162281385

/-! ## A297247.P7069531071716847971

`and(A297246(A217558(n+1)), A297248(n+1))`
-/

namespace A297247.P7069531071716847971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A297246 (A217558 (n + 1)).toNat) (A297248 (n + 1))

end

end A297247.P7069531071716847971

/-! ## A297247.P8777831934744793799

`A297248(n+1)+-A297246(n+1)%A226410(n+1)`
-/

namespace A297247.P8777831934744793799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297248 (n + 1) + Int.tmod (-A297246 (n + 1)) (A226410 (n + 1))

end

end A297247.P8777831934744793799

/-!
# A297248: Total variation of base-16 digits of n; see Comments.

The programs for A297248, there is no canonical definition to state claims against.
-/

/-! ## A297248.P4143338049940123062

`A297247(n+1)+A297246(n+1)`
-/

namespace A297248.P4143338049940123062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (n + 1) + A297246 (n + 1)

end

end A297248.P4143338049940123062

/-! ## A297248.P11077765424546193362

`A297246(A056962(n+1))+A297246(n+1)`
-/

namespace A297248.P11077765424546193362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A056962 (n + 1)).toNat + A297246 (n + 1)

end

end A297248.P11077765424546193362

/-! ## A297248.P13570897886636345979

`A297246(n+1)+A297246(A217558(n+1))%(n+1)`
-/

namespace A297248.P13570897886636345979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (n + 1) + Int.tmod (A297246 (A217558 (n + 1)).toNat) (n + 1 : ℤ)

end

end A297248.P13570897886636345979

/-! ## A297248.P9257555863852502067

`A297247(n+1)+A297243(A106744(n+1)+2)`
-/

namespace A297248.P9257555863852502067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (n + 1) + A297243 (A106744 (n + 1) + 2).toNat

end

end A297248.P9257555863852502067

/-! ## A297248.P8830963957153209930

`A297247(n+1)+floor(n/A182633(n+2))`
-/

namespace A297248.P8830963957153209930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (n + 1) + ⌊(n : ℚ) / (A182633 (n + 2) : ℚ)⌋

end

end A297248.P8830963957153209930

/-!
# A297249: Numbers whose base-3 digits have greater down-variation than up-variation; see Comments.

The programs for A297249, the canonical program `A297249.P11320292076067648954` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297249 has offset 1).

The definition of A297249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297249.P16629114322509594887

`lt[1, Δ[A265511(n)]]`
-/

namespace A297249.P16629114322509594887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297249.P16629114322509594887

namespace A297249

/-- `lt[1, Δ[A265511(n)]]` -/
def P16629114322509594887.Spec : Prop :=
  ∀ n, (P16629114322509594887.a n : ℤ) = A297249 (n + 1)

end A297249

/-! ## A297249.P11320292076067648954

`record[A080782(A080727(n+1))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297249

/-- `record[A080782(A080727(n+1))]` -/
def P11320292076067648954.Spec : Prop :=
  ∀ n, P11320292076067648954.a n = A297249 (n + 1)

theorem P11320292076067648954.correct : P11320292076067648954.Spec := by
  intro n
  simp only [A297249, Nat.add_sub_cancel]

end A297249

/-! ## A297249.P15628957863836373727

`eq[A003417(n), A257075(A330740(n))]`
-/

namespace A297249.P15628957863836373727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A330740 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297249.P15628957863836373727

namespace A297249

/-- `eq[A003417(n), A257075(A330740(n))]` -/
def P15628957863836373727.Spec : Prop :=
  ∀ n, (P15628957863836373727.a n : ℤ) = A297249 (n + 1)

end A297249

/-! ## A297249.P8384867396608834566

`eq[A003417(n), A005131(A265353(n))]`
-/

namespace A297249.P8384867396608834566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A265353 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297249.P8384867396608834566

namespace A297249

/-- `eq[A003417(n), A005131(A265353(n))]` -/
def P8384867396608834566.Spec : Prop :=
  ∀ n, (P8384867396608834566.a n : ℤ) = A297249 (n + 1)

end A297249

/-! ## A297249.P1117777181826038739

`eq[A003417(n), A257075(A263273(n))]`
-/

namespace A297249.P1117777181826038739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A263273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297249.P1117777181826038739

namespace A297249

/-- `eq[A003417(n), A257075(A263273(n))]` -/
def P1117777181826038739.Spec : Prop :=
  ∀ n, (P1117777181826038739.a n : ℤ) = A297249 (n + 1)

end A297249

/-! ## A297249.P7577437122485732079

`eq[A003417(n), A267318(A321464(n))]`
-/

namespace A297249.P7577437122485732079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A321464 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297249.P7577437122485732079

namespace A297249

/-- `eq[A003417(n), A267318(A321464(n))]` -/
def P7577437122485732079.Spec : Prop :=
  ∀ n, (P7577437122485732079.a n : ℤ) = A297249 (n + 1)

end A297249

/-! ## A297249.P4237576396554166495

`record[A130481(A080727(A244479(n)))]`
-/

namespace A297249.P4237576396554166495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A080727 (A244479 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297249.P4237576396554166495

namespace A297249

/-- `record[A130481(A080727(A244479(n)))]` -/
def P4237576396554166495.Spec : Prop :=
  ∀ n, P4237576396554166495.a n = A297249 (n + 1)

end A297249

/-! ## A297249.P14155269533672008877

`eq[A139032(4*n+2), A139032(A263273(n))]`
-/

namespace A297249.P14155269533672008877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139032 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139032 (A263273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297249.P14155269533672008877

namespace A297249

/-- `eq[A139032(4*n+2), A139032(A263273(n))]` -/
def P14155269533672008877.Spec : Prop :=
  ∀ n, (P14155269533672008877.a n : ℤ) = A297249 (n + 1)

end A297249

/-! ## A297249.P1327716028503101496

`eq[A003417(n), A038500(A265341(n))]`
-/

namespace A297249.P1327716028503101496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A265341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297249.P1327716028503101496

namespace A297249

/-- `eq[A003417(n), A038500(A265341(n))]` -/
def P1327716028503101496.Spec : Prop :=
  ∀ n, (P1327716028503101496.a n : ℤ) = A297249 (n + 1)

end A297249

/-! ## A297249.P16789344959838471689

`record[A130481(A080727(A187185(n+1)))]`
-/

namespace A297249.P16789344959838471689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A080727 (A187185 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297249.P16789344959838471689

namespace A297249

/-- `record[A130481(A080727(A187185(n+1)))]` -/
def P16789344959838471689.Spec : Prop :=
  ∀ n, P16789344959838471689.a n = A297249 (n + 1)

end A297249

/-!
# A297250: Numbers whose base-3 digits having equal up-variation and down-variation; see Comments.

The programs for A297250, the canonical program `A297250.P2128841080923313740` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297250 has offset 1).

The definition of A297250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297250.P16161523471915255717

`eq[1, (n*A030102(n))%3]`
-/

namespace A297250.P16161523471915255717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A030102 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297250.P16161523471915255717

namespace A297250

/-- `eq[1, (n*A030102(n))%3]` -/
def P16161523471915255717.Spec : Prop :=
  ∀ n, (P16161523471915255717.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P482292453579871206

`eq[1, gcd(3, A263273(n)+n)]`
-/

namespace A297250.P482292453579871206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A263273 n + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297250.P482292453579871206

namespace A297250

/-- `eq[1, gcd(3, A263273(n)+n)]` -/
def P482292453579871206.Spec : Prop :=
  ∀ n, (P482292453579871206.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P2128841080923313740

`lt[A257075(A330740(n)), 0]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A297250

/-- `lt[A257075(A330740(n)), 0]` -/
def P2128841080923313740.Spec : Prop :=
  ∀ n, (P2128841080923313740.a n : ℤ) = A297250 (n + 1)

theorem P2128841080923313740.correct : P2128841080923313740.Spec := by
  intro n
  simp only [A297250, Nat.add_sub_cancel]

end A297250

/-! ## A297250.P4030519999397513498

`lt[A080587(n), A267318(A330740(n))]`
-/

namespace A297250.P4030519999397513498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A330740 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297250.P4030519999397513498

namespace A297250

/-- `lt[A080587(n), A267318(A330740(n))]` -/
def P4030519999397513498.Spec : Prop :=
  ∀ n, (P4030519999397513498.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P7868248703000732808

`lt[A267318(n), A267318(A330740(n))²]`
-/

namespace A297250.P7868248703000732808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A330740 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297250.P7868248703000732808

namespace A297250

/-- `lt[A267318(n), A267318(A330740(n))²]` -/
def P7868248703000732808.Spec : Prop :=
  ∀ n, (P7868248703000732808.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P8622990532394796407

`lt[A038500(n+1), A267318(A330740(n))]`
-/

namespace A297250.P8622990532394796407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A330740 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297250.P8622990532394796407

namespace A297250

/-- `lt[A038500(n+1), A267318(A330740(n))]` -/
def P8622990532394796407.Spec : Prop :=
  ∀ n, (P8622990532394796407.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P5262887127454414550

`lt[A079948(n+1), A267318(A330740(n))]`
-/

namespace A297250.P5262887127454414550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A330740 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297250.P5262887127454414550

namespace A297250

/-- `lt[A079948(n+1), A267318(A330740(n))]` -/
def P5262887127454414550.Spec : Prop :=
  ∀ n, (P5262887127454414550.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P7254420837086081097

`lt[A112798(n+2), A267318(A330740(n))]`
-/

namespace A297250.P7254420837086081097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A330740 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297250.P7254420837086081097

namespace A297250

/-- `lt[A112798(n+2), A267318(A330740(n))]` -/
def P7254420837086081097.Spec : Prop :=
  ∀ n, (P7254420837086081097.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P8796515239337869882

`eq[2, (n*A137305(n))%3]`
-/

namespace A297250.P8796515239337869882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A137305 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297250.P8796515239337869882

namespace A297250

/-- `eq[2, (n*A137305(n))%3]` -/
def P8796515239337869882.Spec : Prop :=
  ∀ n, (P8796515239337869882.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P16099651155412887520

`eq[A040252(n+1), A040252(A003605(n))]`
-/

namespace A297250.P16099651155412887520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040252 (A003605 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297250.P16099651155412887520

namespace A297250

/-- `eq[A040252(n+1), A040252(A003605(n))]` -/
def P16099651155412887520.Spec : Prop :=
  ∀ n, (P16099651155412887520.a n : ℤ) = A297250 (n + 1)

end A297250

/-! ## A297250.P12044153870750415078

`record[(n+1)%A038502(A321464(n+1)+n+1)]`
-/

namespace A297250.P12044153870750415078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A038502 (A321464 (n + 1) + (n : ℤ) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297250.P12044153870750415078

namespace A297250

/-- `record[(n+1)%A038502(A321464(n+1)+n+1)]` -/
def P12044153870750415078.Spec : Prop :=
  ∀ n, P12044153870750415078.a n = A297250 (n + 1)

end A297250

/-!
# A297251: Numbers whose base-3 digits have greater up-variation than down-variation; see Comments.

The programs for A297251, the canonical program `A297251.P6344271933404297145` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297251 has offset 1).

The definition of A297251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297251.P11494185193304335598

`3*A132141(n+1)+2`
-/

namespace A297251.P11494185193304335598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A132141 (n + 1) + 2

end

end A297251.P11494185193304335598

namespace A297251

/-- `3*A132141(n+1)+2` -/
def P11494185193304335598.Spec : Prop :=
  ∀ n, P11494185193304335598.a n = A297251 (n + 1)

end A297251

/-! ## A297251.P6344271933404297145

`2*n+A157671(n+1)+3`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297251

/-- `2*n+A157671(n+1)+3` -/
def P6344271933404297145.Spec : Prop :=
  ∀ n, P6344271933404297145.a n = A297251 (n + 1)

theorem P6344271933404297145.correct : P6344271933404297145.Spec := by
  intro n
  simp only [A297251, Nat.add_sub_cancel]

end A297251

/-! ## A297251.P15350900564571650

`A157671(n+1)+A005408(n+1)`
-/

namespace A297251.P15350900564571650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (n + 1) + A005408 (n + 1)

end

end A297251.P15350900564571650

namespace A297251

/-- `A157671(n+1)+A005408(n+1)` -/
def P15350900564571650.Spec : Prop :=
  ∀ n, P15350900564571650.a n = A297251 (n + 1)

theorem P15350900564571650.correct : P15350900564571650.Spec := by
  intro n
  simp only [A297251, Nat.add_sub_cancel, A297251.P15350900564571650.a, A297251.P6344271933404297145.a, A005408, A005408.P17437947328870227736.a, A157671, A157671.P16167228879042950369.f1, A157671.P16167228879042950369.f2, A157671.P16167228879042950369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297251

/-! ## A297251.P9985715989200817835

`A157671(n+1)+A144396(n+1)`
-/

namespace A297251.P9985715989200817835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (n + 1) + A144396 (n + 1)

end

end A297251.P9985715989200817835

namespace A297251

/-- `A157671(n+1)+A144396(n+1)` -/
def P9985715989200817835.Spec : Prop :=
  ∀ n, P9985715989200817835.a n = A297251 (n + 1)

theorem P9985715989200817835.correct : P9985715989200817835.Spec := by
  intro n
  simp only [A297251, Nat.add_sub_cancel, A297251.P9985715989200817835.a, A297251.P6344271933404297145.a, A144396, A144396.P18396969748453668116.a, A157671, A157671.P16167228879042950369.f1, A157671.P16167228879042950369.f2, A157671.P16167228879042950369.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297251

/-! ## A297251.P10296382779976397107

`A016789(A132141(n+1))`
-/

namespace A297251.P10296382779976397107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A132141 (n + 1)).toNat

end

end A297251.P10296382779976397107

namespace A297251

/-- `A016789(A132141(n+1))` -/
def P10296382779976397107.Spec : Prop :=
  ∀ n, P10296382779976397107.a n = A297251 (n + 1)

end A297251

/-! ## A297251.P15139048540473730177

`2*A076217(2*(n+1))-A076217(2*n+1)`
-/

namespace A297251.P15139048540473730177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076217 (2 * (n + 1)) - A076217 (2 * n + 1)

end

end A297251.P15139048540473730177

namespace A297251

/-- `2*A076217(2*(n+1))-A076217(2*n+1)` -/
def P15139048540473730177.Spec : Prop :=
  ∀ n, P15139048540473730177.a n = A297251 (n + 1)

end A297251

/-! ## A297251.P8739017906641901943

`A132141(3*n+4)`
-/

namespace A297251.P8739017906641901943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (3 * n + 4)

end

end A297251.P8739017906641901943

namespace A297251

/-- `A132141(3*n+4)` -/
def P8739017906641901943.Spec : Prop :=
  ∀ n, P8739017906641901943.a n = A297251 (n + 1)

end A297251

/-! ## A297251.P78222614139355237

`∩[A132141(n+1), A180486(n+1)]`
-/

namespace A297251.P78222614139355237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297251.P78222614139355237

namespace A297251

/-- `∩[A132141(n+1), A180486(n+1)]` -/
def P78222614139355237.Spec : Prop :=
  ∀ n, (P78222614139355237.a n : ℤ) = A297251 (n + 1)

end A297251

/-! ## A297251.P1685027117005706492

`A080727(A157671(n+1))`
-/

namespace A297251.P1685027117005706492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 (A157671 (n + 1)).toNat

end

end A297251.P1685027117005706492

namespace A297251

/-- `A080727(A157671(n+1))` -/
def P1685027117005706492.Spec : Prop :=
  ∀ n, P1685027117005706492.a n = A297251 (n + 1)

end A297251

/-! ## A297251.P12342322281274978353

`A080727(∩[A003605(n), A080727(n)])`
-/

namespace A297251.P12342322281274978353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A297251.P12342322281274978353

namespace A297251

/-- `A080727(∩[A003605(n), A080727(n)])` -/
def P12342322281274978353.Spec : Prop :=
  ∀ n, P12342322281274978353.a n = A297251 (n + 1)

end A297251

/-! ## A297251.P4575888393609042989

`A080727(∩[A080727(n)+1, A080727(n)])`
-/

namespace A297251.P4575888393609042989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A297251.P4575888393609042989

namespace A297251

/-- `A080727(∩[A080727(n)+1, A080727(n)])` -/
def P4575888393609042989.Spec : Prop :=
  ∀ n, P4575888393609042989.a n = A297251 (n + 1)

end A297251

/-! ## A297251.P16494429607883996864

`eq[1, A106581(n)]+2`
-/

namespace A297251.P16494429607883996864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A297251.P16494429607883996864

namespace A297251

/-- `eq[1, A106581(n)]+2` -/
def P16494429607883996864.Spec : Prop :=
  ∀ n, (P16494429607883996864.a n : ℤ) = A297251 (n + 1)

end A297251

/-! ## A297251.P9128320605543237270

`lt[(A263273(n)+1+n+n)%3, 1]`
-/

namespace A297251.P9128320605543237270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263273 n + 1 + (n : ℤ) + (n : ℤ)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297251.P9128320605543237270

namespace A297251

/-- `lt[(A263273(n)+1+n+n)%3, 1]` -/
def P9128320605543237270.Spec : Prop :=
  ∀ n, (P9128320605543237270.a n : ℤ) = A297251 (n + 1)

end A297251

/-! ## A297251.P7260369296111095135

`eq[n, A330740(A236348(n))]`
-/

namespace A297251.P7260369296111095135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 (A236348 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297251.P7260369296111095135

namespace A297251

/-- `eq[n, A330740(A236348(n))]` -/
def P7260369296111095135.Spec : Prop :=
  ∀ n, (P7260369296111095135.a n : ℤ) = A297251 (n + 1)

end A297251

/-! ## A297251.P12828126620962974191

`eq[A080782(n+1), A330740(n)]`
-/

namespace A297251.P12828126620962974191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297251.P12828126620962974191

namespace A297251

/-- `eq[A080782(n+1), A330740(n)]` -/
def P12828126620962974191.Spec : Prop :=
  ∀ n, (P12828126620962974191.a n : ℤ) = A297251 (n + 1)

end A297251

/-! ## A297251.P604364121618015257

`lt[n, A330740(n)+A007949(n+1)]`
-/

namespace A297251.P604364121618015257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n + A007949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297251.P604364121618015257

namespace A297251

/-- `lt[n, A330740(n)+A007949(n+1)]` -/
def P604364121618015257.Spec : Prop :=
  ∀ n, (P604364121618015257.a n : ℤ) = A297251 (n + 1)

end A297251

/-! ## A297251.P17412252688735795144

`lt[A267318(A330740(n)), A038500(n+1)]`
-/

namespace A297251.P17412252688735795144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267318 (A330740 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297251.P17412252688735795144

namespace A297251

/-- `lt[A267318(A330740(n)), A038500(n+1)]` -/
def P17412252688735795144.Spec : Prop :=
  ∀ n, (P17412252688735795144.a n : ℤ) = A297251 (n + 1)

end A297251

/-!
# A297252: Numbers whose base-4 digits have greater down-variation than up-variation; see Comments.

The programs for A297252, there is no canonical definition to state claims against.
-/

/-! ## A297252.P2470737806650198027

`lt[1, A055949(n)%4+1]`
-/

namespace A297252.P2470737806650198027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055949 n) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297252.P2470737806650198027

/-! ## A297252.P1303221469220497910

`lt[A010873(n), A010873(A030103(n))]`
-/

namespace A297252.P1303221469220497910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A030103 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297252.P1303221469220497910

/-! ## A297252.P14955593587171647301

`eq[A265546((n+1)/4^val(n+1, 4)), A265546(n)]`
-/

namespace A297252.P14955593587171647301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297252.P14955593587171647301

/-! ## A297252.P3514381256329672091

`eq[A265546(A065883(n+1)), A265546(n)]`
-/

namespace A297252.P3514381256329672091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 (A065883 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297252.P3514381256329672091

/-! ## A297252.P4671741950468718120

`eq[A265546(A186646(n+1)), A265546(n)]`
-/

namespace A297252.P4671741950468718120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 (A186646 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297252.P4671741950468718120

/-! ## A297252.P311637368134270210

`eq[A265546(A214392(n+1)), A265546(n)]`
-/

namespace A297252.P311637368134270210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 (A214392 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297252.P311637368134270210

/-! ## A297252.P4852076251138746092

`eq[A265546(A030103(n+1)), A265546(n)]`
-/

namespace A297252.P4852076251138746092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 (A030103 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297252.P4852076251138746092

/-! ## A297252.P18297567508946617379

`record[A003188(A332497(A297267(n+1)))]`
-/

namespace A297252.P18297567508946617379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A332497 (A297267 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297252.P18297567508946617379

/-!
# A297253: Numbers whose base-4 digits having equal up-variation and down-variation; see Comments.

The programs for A297253, there is no canonical definition to state claims against.
-/

/-! ## A297253.P9242301375368121911

`eq[4, gcd(4, A055949(n+1))]+1`
-/

namespace A297253.P9242301375368121911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A055949 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A297253.P9242301375368121911

/-! ## A297253.P10227350470671961444

`eq[A055949(n)%4, A000007(n)]`
-/

namespace A297253.P10227350470671961444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055949 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297253.P10227350470671961444

/-! ## A297253.P6822201253682507555

`eq[A037845(n+1), A037854(n+1)]+1`
-/

namespace A297253.P6822201253682507555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037854 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A297253.P6822201253682507555

/-! ## A297253.P17396823147665645616

`eq[A010873(A264994(4*n+3)), A010873(n)]`
-/

namespace A297253.P17396823147665645616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A264994 (4 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297253.P17396823147665645616

/-! ## A297253.P2257821739540270866

`eq[A010873(A030103(4*n+2)), A010873(n)]`
-/

namespace A297253.P2257821739540270866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A030103 (4 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297253.P2257821739540270866

/-!
# A297254: Numbers whose base-4 digits have greater up-variation than down-variation; see Comments.

The programs for A297254, there is no canonical definition to state claims against.
-/

/-! ## A297254.P9016823048092134857

`lt[A055949(n)%4+1, 1]`
-/

namespace A297254.P9016823048092134857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055949 n) 4 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297254.P9016823048092134857

/-! ## A297254.P5588726139131459225

`lt[A010873(A264994(n)), A010873(n)]`
-/

namespace A297254.P5588726139131459225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A264994 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297254.P5588726139131459225

/-! ## A297254.P15749388520173156887

`lt[A002265(n)+n, A255589(n)]`
-/

namespace A297254.P15749388520173156887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297254.P15749388520173156887

/-! ## A297254.P17725899058657973877

`lt[A010873(A030103(n)), A010873(n)]`
-/

namespace A297254.P17725899058657973877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A030103 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297254.P17725899058657973877

/-! ## A297254.P6149185842137993518

`lt[A057361(2*n), A255589(n)]`
-/

namespace A297254.P6149185842137993518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297254.P6149185842137993518

/-! ## A297254.P3509265023113243365

`lt[A002265(5*n), A255589(n)]`
-/

namespace A297254.P3509265023113243365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297254.P3509265023113243365

/-!
# A297255: Numbers whose base-5 digits have greater down-variation than up-variation; see Comments.

The programs for A297255, there is no canonical definition to state claims against.
-/

/-! ## A297255.P5851539050410868479

`lt[A037846(n+1), A037855(n+1)]+1`
-/

namespace A297255.P5851539050410868479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297255.P5851539050410868479

/-! ## A297255.P15637320485199998201

`lt[A010874(n), A010874(A030104(n))]`
-/

namespace A297255.P15637320485199998201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A030104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297255.P15637320485199998201

/-! ## A297255.P18312357944088291535

`lt[A269266(n), A269266(A030104(n))]`
-/

namespace A297255.P18312357944088291535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 (A030104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297255.P18312357944088291535

/-! ## A297255.P17549128910681344466

`lt[A165032(n), A056965(A007091(n))]`
-/

namespace A297255.P17549128910681344466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297255.P17549128910681344466

/-! ## A297255.P6799415160343478357

`lt[0, A056965(A062285(n+1))]`
-/

namespace A297255.P6799415160343478357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A062285 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297255.P6799415160343478357

/-! ## A297255.P8662854336580465185

`lt[A055975(A139827(n+1)), A055951(n)]`
-/

namespace A297255.P8662854336580465185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (A139827 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297255.P8662854336580465185

/-! ## A297255.P10570586346095229398

`lt[A132350(A139827(n+1)+1), A055951(n)]`
-/

namespace A297255.P10570586346095229398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132350 (A139827 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297255.P10570586346095229398

/-! ## A297255.P4333727088361133642

`lt[A164886(A008589(n)), A055951(n)]`
-/

namespace A297255.P4333727088361133642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A008589 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297255.P4333727088361133642

/-! ## A297255.P8746249952472209915

`lt[A278112(A000124(n)), A055951(n)]`
-/

namespace A297255.P8746249952472209915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278112 (A000124 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297255.P8746249952472209915

/-!
# A297256: Numbers whose base-5 digits have equal down-variation and up-variation; see Comments.

The programs for A297256, there is no canonical definition to state claims against.
-/

/-! ## A297256.P14961816406227527523

`eq[A037846(n+1), A037855(n+1)]+1`
-/

namespace A297256.P14961816406227527523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A297256.P14961816406227527523

/-! ## A297256.P6001796301285405444

`∑[A069784(Δ[A029952(n+1)])]`
-/

namespace A297256.P6001796301285405444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069784 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297256.P6001796301285405444

/-! ## A297256.P8150980035364992887

`A029952(A365659(2*n+3)+1)`
-/

namespace A297256.P8150980035364992887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (A365659 (2 * n + 3) + 1).toNat

end

end A297256.P8150980035364992887

/-! ## A297256.P14176907040706887046

`A088722(A081587(n))+A029952(n+2)`
-/

namespace A297256.P14176907040706887046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A081587 n).toNat + A029952 (n + 2)

end

end A297256.P14176907040706887046

/-! ## A297256.P8156901459194833209

`A029952((n+1)%A120359(n+4)+1)`
-/

namespace A297256.P8156901459194833209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (Int.tmod (n + 1 : ℤ) (A120359 (n + 4)) + 1).toNat

end

end A297256.P8156901459194833209

/-!
# A297257: Numbers whose base-5 digits have greater up-variation than down-variation; see Comments.

The programs for A297257, there is no canonical definition to state claims against.
-/

/-! ## A297257.P14635303993076269437

`lt[A037855(n+1), A037846(n+1)]+1`
-/

namespace A297257.P14635303993076269437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297257.P14635303993076269437

/-! ## A297257.P9475561018795656330

`lt[A010874(A030104(n)), A010874(n)]`
-/

namespace A297257.P9475561018795656330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A030104 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297257.P9475561018795656330

/-! ## A297257.P10775363644528332971

`lt[A010874(A264995(n)), A010874(n)]`
-/

namespace A297257.P10775363644528332971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A264995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297257.P10775363644528332971

/-! ## A297257.P11885914351732226761

`lt[A269266(A030104(n)), A269266(n)]`
-/

namespace A297257.P11885914351732226761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 (A030104 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297257.P11885914351732226761

/-! ## A297257.P10308640436132278678

`lt[A269266(A264995(n)), A269266(n)]`
-/

namespace A297257.P10308640436132278678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 (A264995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297257.P10308640436132278678

/-! ## A297257.P14836770086654965863

`lt[A219529(n), A313002(A255590(n))]`
-/

namespace A297257.P14836770086654965863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313002 (A255590 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297257.P14836770086654965863

/-!
# A297258: Numbers whose base-6 digits have greater down-variation than up-variation; see Comments.

The programs for A297258, the canonical program `A297258.P3376126013704301010` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297258 has offset 1).

The definition of A297258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297258.P10163948223512078188

`lt[A037847(n+1), A037856(n+1)]+1`
-/

namespace A297258.P10163948223512078188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297258.P10163948223512078188

namespace A297258

/-- `lt[A037847(n+1), A037856(n+1)]+1` -/
def P10163948223512078188.Spec : Prop :=
  ∀ n, (P10163948223512078188.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P2402888207748013319

`lt[A010875(n), A010875(A030105(n))]`
-/

namespace A297258.P2402888207748013319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A030105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P2402888207748013319

namespace A297258

/-- `lt[A010875(n), A010875(A030105(n))]` -/
def P2402888207748013319.Spec : Prop :=
  ∀ n, (P2402888207748013319.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P17295495123777467592

`lt[A010875(n), A010875(A255691(n))]`
-/

namespace A297258.P17295495123777467592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A255691 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P17295495123777467592

namespace A297258

/-- `lt[A010875(n), A010875(A255691(n))]` -/
def P17295495123777467592.Spec : Prop :=
  ∀ n, (P17295495123777467592.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P3376126013704301010

`lt[A010875(n+1), A339256(A028310(n))]+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297258

/-- `lt[A010875(n+1), A339256(A028310(n))]+1` -/
def P3376126013704301010.Spec : Prop :=
  ∀ n, (P3376126013704301010.a n : ℤ) = A297258 (n + 1)

theorem P3376126013704301010.correct : P3376126013704301010.Spec := by
  intro n
  simp only [A297258, Nat.add_sub_cancel]

end A297258

/-! ## A297258.P7292799123388147777

`lt[A008612(A255691(n)), A055953(n)]`
-/

namespace A297258.P7292799123388147777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A255691 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P7292799123388147777

namespace A297258

/-- `lt[A008612(A255691(n)), A055953(n)]` -/
def P7292799123388147777.Spec : Prop :=
  ∀ n, (P7292799123388147777.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P2664748101995147619

`lt[A030700(A090620(n)), A055953(n)]`
-/

namespace A297258.P2664748101995147619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030700 ((A090620 n).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P2664748101995147619

namespace A297258

/-- `lt[A030700(A090620(n)), A055953(n)]` -/
def P2664748101995147619.Spec : Prop :=
  ∀ n, (P2664748101995147619.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P13686574859568769886

`lt[A030700(A004736(n+1)), A055953(n)]`
-/

namespace A297258.P13686574859568769886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030700 ((A004736 (n + 1)).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P13686574859568769886

namespace A297258

/-- `lt[A030700(A004736(n+1)), A055953(n)]` -/
def P13686574859568769886.Spec : Prop :=
  ∀ n, (P13686574859568769886.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P11913608702491778097

`lt[A000007(A209636(n)), A055953(n)]`
-/

namespace A297258.P11913608702491778097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A209636 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P11913608702491778097

namespace A297258

/-- `lt[A000007(A209636(n)), A055953(n)]` -/
def P11913608702491778097.Spec : Prop :=
  ∀ n, (P11913608702491778097.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P2752695635219128181

`lt[A000007(A023108(n+1)), A055953(n)]`
-/

namespace A297258.P2752695635219128181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A023108 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P2752695635219128181

namespace A297258

/-- `lt[A000007(A023108(n+1)), A055953(n)]` -/
def P2752695635219128181.Spec : Prop :=
  ∀ n, (P2752695635219128181.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P2155579934016904346

`lt[A112382(A003557(n+1)), A055953(n)]`
-/

namespace A297258.P2155579934016904346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 (A003557 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P2155579934016904346

namespace A297258

/-- `lt[A112382(A003557(n+1)), A055953(n)]` -/
def P2155579934016904346.Spec : Prop :=
  ∀ n, (P2155579934016904346.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P15856742142238380967

`lt[A000007(A015832(n+1)), A055953(n)]`
-/

namespace A297258.P15856742142238380967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A015832 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P15856742142238380967

namespace A297258

/-- `lt[A000007(A015832(n+1)), A055953(n)]` -/
def P15856742142238380967.Spec : Prop :=
  ∀ n, (P15856742142238380967.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P5586103418863197237

`lt[A022113(A030105(n)), A022113(n)]`
-/

namespace A297258.P5586103418863197237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 (A030105 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P5586103418863197237

namespace A297258

/-- `lt[A022113(A030105(n)), A022113(n)]` -/
def P5586103418863197237.Spec : Prop :=
  ∀ n, (P5586103418863197237.a n : ℤ) = A297258 (n + 1)

end A297258

/-! ## A297258.P14323455290882343305

`lt[A030706(A074823(n+1)), A055953(n)]`
-/

namespace A297258.P14323455290882343305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030706 ((A074823 (n + 1)).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297258.P14323455290882343305

namespace A297258

/-- `lt[A030706(A074823(n+1)), A055953(n)]` -/
def P14323455290882343305.Spec : Prop :=
  ∀ n, (P14323455290882343305.a n : ℤ) = A297258 (n + 1)

end A297258

/-!
# A297259: Numbers whose base-6 digits have equal down-variation and up-variation; see Comments.

The programs for A297259, the canonical program `A297259.P16638468961794563216` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297259 has offset 1).

The definition of A297259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1671 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297259.P4599673766174222635

`eq[A037847(n+1), A037856(n+1)]+1`
-/

namespace A297259.P4599673766174222635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A297259.P4599673766174222635

namespace A297259

/-- `eq[A037847(n+1), A037856(n+1)]+1` -/
def P4599673766174222635.Spec : Prop :=
  ∀ n, (P4599673766174222635.a n : ℤ) = A297259 (n + 1)

end A297259

/-! ## A297259.P16638468961794563216

`eq[A010875(n), A339256(A028310(n))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297259

/-- `eq[A010875(n), A339256(A028310(n))]` -/
def P16638468961794563216.Spec : Prop :=
  ∀ n, (P16638468961794563216.a n : ℤ) = A297259 (n + 1)

theorem P16638468961794563216.correct : P16638468961794563216.Spec := by
  intro n
  simp only [A297259, Nat.add_sub_cancel]

end A297259

/-! ## A297259.P17076109158534718957

`eq[A010875(n), A339256(6*n+1)]`
-/

namespace A297259.P17076109158534718957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297259.P17076109158534718957

namespace A297259

/-- `eq[A010875(n), A339256(6*n+1)]` -/
def P17076109158534718957.Spec : Prop :=
  ∀ n, (P17076109158534718957.a n : ℤ) = A297259 (n + 1)

end A297259

/-! ## A297259.P13608145992387769911

`eq[A055953(n), A079979(n²)]`
-/

namespace A297259.P13608145992387769911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297259.P13608145992387769911

namespace A297259

/-- `eq[A055953(n), A079979(n²)]` -/
def P13608145992387769911.Spec : Prop :=
  ∀ n, (P13608145992387769911.a n : ℤ) = A297259 (n + 1)

end A297259

/-! ## A297259.P13758007683399434568

`∑[A020753(Δ[A029953(n+1)])]`
-/

namespace A297259.P13758007683399434568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297259.P13758007683399434568

namespace A297259

/-- `∑[A020753(Δ[A029953(n+1)])]` -/
def P13758007683399434568.Spec : Prop :=
  ∀ n, P13758007683399434568.a n = A297259 (n + 1)

end A297259

/-!
# A297260: Numbers whose base-6 digits have greater up-variation than down-variation; see Comments.

The programs for A297260, the canonical program `A297260.P8324532918351366393` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297260 has offset 1).

The definition of A297260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4073 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297260.P17505144431320326394

`lt[A037856(n+1), A037847(n+1)]+1`
-/

namespace A297260.P17505144431320326394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297260.P17505144431320326394

namespace A297260

/-- `lt[A037856(n+1), A037847(n+1)]+1` -/
def P17505144431320326394.Spec : Prop :=
  ∀ n, (P17505144431320326394.a n : ℤ) = A297260 (n + 1)

end A297260

/-! ## A297260.P8324532918351366393

`lt[A339256(A028310(n)), A010875(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297260

/-- `lt[A339256(A028310(n)), A010875(n)]` -/
def P8324532918351366393.Spec : Prop :=
  ∀ n, (P8324532918351366393.a n : ℤ) = A297260 (n + 1)

theorem P8324532918351366393.correct : P8324532918351366393.Spec := by
  intro n
  simp only [A297260, Nat.add_sub_cancel]

end A297260

/-! ## A297260.P3850130585334883974

`lt[A008612(n)+n, A255591(n)]`
-/

namespace A297260.P3850130585334883974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297260.P3850130585334883974

namespace A297260

/-- `lt[A008612(n)+n, A255591(n)]` -/
def P3850130585334883974.Spec : Prop :=
  ∀ n, (P3850130585334883974.a n : ℤ) = A297260 (n + 1)

end A297260

/-! ## A297260.P6004399991964264687

`lt[A010875(A030105(n)), A010875(n)]`
-/

namespace A297260.P6004399991964264687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A030105 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297260.P6004399991964264687

namespace A297260

/-- `lt[A010875(A030105(n)), A010875(n)]` -/
def P6004399991964264687.Spec : Prop :=
  ∀ n, (P6004399991964264687.a n : ℤ) = A297260 (n + 1)

end A297260

/-! ## A297260.P11872831887525696108

`lt[A010875(A255691(n)), A010875(n)]`
-/

namespace A297260.P11872831887525696108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A255691 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297260.P11872831887525696108

namespace A297260

/-- `lt[A010875(A255691(n)), A010875(n)]` -/
def P11872831887525696108.Spec : Prop :=
  ∀ n, (P11872831887525696108.a n : ℤ) = A297260 (n + 1)

end A297260

/-! ## A297260.P16751249432905740083

`lt[record[A106608(n)], A255591(n)]`
-/

namespace A297260.P16751249432905740083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A297260.P16751249432905740083

namespace A297260

/-- `lt[record[A106608(n)], A255591(n)]` -/
def P16751249432905740083.Spec : Prop :=
  ∀ n, (P16751249432905740083.a n : ℤ) = A297260 (n + 1)

end A297260

/-! ## A297260.P11954914231237754672

`lt[A339256(A008458(n)), A010875(n)]`
-/

namespace A297260.P11954914231237754672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297260.P11954914231237754672

namespace A297260

/-- `lt[A339256(A008458(n)), A010875(n)]` -/
def P11954914231237754672.Spec : Prop :=
  ∀ n, (P11954914231237754672.a n : ℤ) = A297260 (n + 1)

end A297260

/-! ## A297260.P2448545526488817504

`lt[A008612(7*n), A255591(n)]`
-/

namespace A297260.P2448545526488817504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (7 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297260.P2448545526488817504

namespace A297260

/-- `lt[A008612(7*n), A255591(n)]` -/
def P2448545526488817504.Spec : Prop :=
  ∀ n, (P2448545526488817504.a n : ℤ) = A297260 (n + 1)

end A297260

/-! ## A297260.P11826326670531292403

`lt[A022113(n), A022113(A030105(n))]`
-/

namespace A297260.P11826326670531292403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 (A030105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297260.P11826326670531292403

namespace A297260

/-- `lt[A022113(n), A022113(A030105(n))]` -/
def P11826326670531292403.Spec : Prop :=
  ∀ n, (P11826326670531292403.a n : ℤ) = A297260 (n + 1)

end A297260

/-!
# A297261: Numbers whose base-7 digits have greater down-variation than up-variation; see Comments.

The programs for A297261, there is no canonical definition to state claims against.
-/

/-! ## A297261.P1163081553044618379

`lt[A037848(n+1), A037857(n+1)]+1`
-/

namespace A297261.P1163081553044618379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297261.P1163081553044618379

/-! ## A297261.P13794906247093991091

`lt[A010876(n), A000030(A007093(n))]`
-/

namespace A297261.P13794906247093991091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P13794906247093991091

/-! ## A297261.P7944506362951517515

`lt[A010876(n), A010876(A030106(n))]`
-/

namespace A297261.P7944506362951517515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A030106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P7944506362951517515

/-! ## A297261.P7660078031562048312

`lt[A034538(A000194(3*n+1)), A055955(n)]`
-/

namespace A297261.P7660078031562048312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034538 (A000194 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P7660078031562048312

/-! ## A297261.P12677792344299627360

`lt[A158971(A065648(n)), A055955(n)]`
-/

namespace A297261.P12677792344299627360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158971 (A065648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P12677792344299627360

/-! ## A297261.P410671707482957151

`lt[A314051(A030106(n)), A314051(n)]`
-/

namespace A297261.P410671707482957151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314051 (A030106 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P410671707482957151

/-! ## A297261.P3481320907297595870

`lt[atan(A338192(n)), A055955(n)]`
-/

namespace A297261.P3481320907297595870
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A338192 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A297261.P3481320907297595870

/-! ## A297261.P14013238057903422536

`lt[A332671(A000974(n)), A055955(n)]`
-/

namespace A297261.P14013238057903422536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A000974 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P14013238057903422536

/-! ## A297261.P5080836134493324029

`lt[A000007(A023763(n+1)), A055955(n)]`
-/

namespace A297261.P5080836134493324029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A023763 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P5080836134493324029

/-! ## A297261.P10317143646235583873

`lt[A111660(A061395(n+1)), A055955(n)]`
-/

namespace A297261.P10317143646235583873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A061395 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P10317143646235583873

/-! ## A297261.P5913569736520794985

`lt[A030106(n), log2(A209410(n))]`
-/

namespace A297261.P5913569736520794985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A209410 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A297261.P5913569736520794985

/-! ## A297261.P11374183333537472636

`lt[atan(A209410(n)), A055955(n)]`
-/

namespace A297261.P11374183333537472636
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A209410 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A297261.P11374183333537472636

/-! ## A297261.P13991070517036066981

`lt[A351539(A000124(n)), A055955(n)]`
-/

namespace A297261.P13991070517036066981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A000124 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P13991070517036066981

/-! ## A297261.P4341252227379257569

`lt[A315651(A030106(n)), A315651(n)]`
-/

namespace A297261.P4341252227379257569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315651 (A030106 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P4341252227379257569

/-! ## A297261.P11957888831012674994

`lt[atan(A251704(n)), A055955(n)]`
-/

namespace A297261.P11957888831012674994
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A251704 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A297261.P11957888831012674994

/-! ## A297261.P13622210626144352444

`lt[A001222(A075800(n+1)), A055955(n)]`
-/

namespace A297261.P13622210626144352444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075800 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P13622210626144352444

/-! ## A297261.P8349938166033940165

`lt[A037860(A061076(n+1)), A055955(n)]`
-/

namespace A297261.P8349938166033940165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A061076 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P8349938166033940165

/-! ## A297261.P12122201878502537884

`lt[A209410(n-A055955(n)), A209410(n)]`
-/

namespace A297261.P12122201878502537884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209410 ((n : ℤ) - A055955 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P12122201878502537884

/-! ## A297261.P18183463272320486176

`lt[A251704(n-A055955(n)), A251704(n)]`
-/

namespace A297261.P18183463272320486176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 ((n : ℤ) - A055955 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P18183463272320486176

/-! ## A297261.P17279433568046967831

`lt[A338192(n-A055955(n)), A338192(n)]`
-/

namespace A297261.P17279433568046967831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 ((n : ℤ) - A055955 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297261.P17279433568046967831

/-!
# A297262: Numbers whose base-7 digits have equal up-variation and down-variation; see Comments.

The programs for A297262, there is no canonical definition to state claims against.
-/

/-! ## A297262.P8120622959017006685

`∑[A018676(Δ[A029954(n+1)])]`
-/

namespace A297262.P8120622959017006685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297262.P8120622959017006685

/-! ## A297262.P5482640169786943721

`∑[A020753(Δ[A029954(n+1)])]`
-/

namespace A297262.P5482640169786943721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297262.P5482640169786943721

/-! ## A297262.P12181755657461087512

`∑[A032555(Δ[A029954(n+1)])]`
-/

namespace A297262.P12181755657461087512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297262.P12181755657461087512

/-! ## A297262.P4005500589403293477

`∑[A032559(Δ[A029954(n+1)])]`
-/

namespace A297262.P4005500589403293477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297262.P4005500589403293477

/-! ## A297262.P16353594050084237649

`∑[A032579(Δ[A029954(n+1)])]`
-/

namespace A297262.P16353594050084237649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032579 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297262.P16353594050084237649

/-! ## A297262.P10560302833763505333

`∑[A048266(Δ[A029954(n+1)])]`
-/

namespace A297262.P10560302833763505333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297262.P10560302833763505333

/-! ## A297262.P16463880484650917077

`∑[A061921(Δ[A029954(n+1)])]`
-/

namespace A297262.P16463880484650917077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061921 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297262.P16463880484650917077

/-! ## A297262.P11022070109158593108

`lt[A055955(n)², atan(A338192(n))]`
-/

namespace A297262.P11022070109158593108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A338192 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A297262.P11022070109158593108

/-!
# A297263: Numbers whose base-7 digits have greater up-variation than down-variation; see Comments.

The programs for A297263, there is no canonical definition to state claims against.
-/

/-! ## A297263.P8265371810296987959

`lt[A037857(n+1), A037848(n+1)]+1`
-/

namespace A297263.P8265371810296987959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297263.P8265371810296987959

/-! ## A297263.P18316900020190752879

`lt[A010876(A030106(n)), A010876(n)]`
-/

namespace A297263.P18316900020190752879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A030106 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P18316900020190752879

/-! ## A297263.P9755303076183162758

`lt[A008574(2*n), A016993(A255592(n))]`
-/

namespace A297263.P9755303076183162758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A255592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P9755303076183162758

/-! ## A297263.P11691617203450927468

`lt[A016993(n)+n, A016993(A255592(n))]`
-/

namespace A297263.P11691617203450927468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A255592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P11691617203450927468

/-! ## A297263.P5041349615169005263

`lt[A000030(A007093(n)), A010876(n)]`
-/

namespace A297263.P5041349615169005263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P5041349615169005263

/-! ## A297263.P5733607133523204564

`lt[A055955(n), A302048(A141169(n))]`
-/

namespace A297263.P5733607133523204564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A141169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P5733607133523204564

/-! ## A297263.P9934631215961647300

`lt[A007359(n), A007359(A030106(n))]`
-/

namespace A297263.P9934631215961647300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (A030106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P9934631215961647300

/-! ## A297263.P5244400381488943095

`lt[A015750(n), A015750(A030106(n))]`
-/

namespace A297263.P5244400381488943095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015750 (A030106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P5244400381488943095

/-! ## A297263.P1860022109261644962

`lt[A055955(n), A302048(floor(3*(n/2)²))]`
-/

namespace A297263.P1860022109261644962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 ⌊3 * ((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P1860022109261644962

/-! ## A297263.P17815605870183205971

`lt[A055955(n), A000007(A128468(n))]`
-/

namespace A297263.P17815605870183205971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A128468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P17815605870183205971

/-! ## A297263.P8780323597708490687

`lt[A209410(n), A209410(A030106(n))]`
-/

namespace A297263.P8780323597708490687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209410 (A030106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P8780323597708490687

/-! ## A297263.P1581880878156596958

`lt[A055955(n), A000007(A182583(n+1))]`
-/

namespace A297263.P1581880878156596958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A182583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P1581880878156596958

/-! ## A297263.P15033966956618383914

`lt[A055955(n), A351539(A006562(n+1))]`
-/

namespace A297263.P15033966956618383914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A006562 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P15033966956618383914

/-! ## A297263.P10107560474910200339

`lt[A209410(n), A209410(n-A055955(n))]`
-/

namespace A297263.P10107560474910200339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209410 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209410 ((n : ℤ) - A055955 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P10107560474910200339

/-! ## A297263.P16312158966668074989

`lt[A251704(n), A251704(n-A055955(n))]`
-/

namespace A297263.P16312158966668074989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 ((n : ℤ) - A055955 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P16312158966668074989

/-! ## A297263.P16603366001059433520

`lt[A338192(n), A338192(n-A055955(n))]`
-/

namespace A297263.P16603366001059433520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 ((n : ℤ) - A055955 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P16603366001059433520

/-! ## A297263.P293571218073731431

`lt[A056926(A253909(n)), A030106(n)]`
-/

namespace A297263.P293571218073731431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A253909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P293571218073731431

/-! ## A297263.P17489998318424025495

`lt[A055955(n), A055955(A029954(n+1))]`
-/

namespace A297263.P17489998318424025495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 (A029954 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P17489998318424025495

/-! ## A297263.P1755858340335636703

`lt[A055955(n), A332671(A038500(n+1))]`
-/

namespace A297263.P1755858340335636703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A038500 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297263.P1755858340335636703

/-!
# A297264: Numbers whose base-8 digits have greater down-variation than up-variation; see Comments.

The programs for A297264, there is no canonical definition to state claims against.
-/

/-! ## A297264.P10664347798783883606

`lt[A037849(n+1), A037858(n+1)]+1`
-/

namespace A297264.P10664347798783883606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297264.P10664347798783883606

/-! ## A297264.P7523963379762772636

`lt[A010877(n), A010877(A255693(n))]`
-/

namespace A297264.P7523963379762772636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A255693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297264.P7523963379762772636

/-! ## A297264.P2878287551236522923

`lt[A037858(A030107(n+1)), A037858(n+1)]+1`
-/

namespace A297264.P2878287551236522923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A030107 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297264.P2878287551236522923

/-! ## A297264.P5783170103674910033

`lt[A136167(A030101(n+2)), A055957(n)]`
-/

namespace A297264.P5783170103674910033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136167 (A030101 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297264.P5783170103674910033

/-! ## A297264.P14201513261436704598

`lt[A164996(A000069(2*n+5)), A055957(n)]`
-/

namespace A297264.P14201513261436704598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164996 (A000069 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297264.P14201513261436704598

/-! ## A297264.P2729531469057583389

`lt[A312213(A055956(n)), A312213(2*n)]`
-/

namespace A297264.P2729531469057583389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312213 (A055956 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312213 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297264.P2729531469057583389

/-! ## A297264.P7815587193563536253

`lt[A048319(A055956(n)-n), A048319(n)]`
-/

namespace A297264.P7815587193563536253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 (A055956 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297264.P7815587193563536253

/-! ## A297264.P12129644854519003169

`lt[A312213(A055956(n)-n), A312213(n)]`
-/

namespace A297264.P12129644854519003169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312213 (A055956 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297264.P12129644854519003169

/-! ## A297264.P11961504659002929658

`lt[A313928(A055956(n)-n), A313928(n)]`
-/

namespace A297264.P11961504659002929658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 (A055956 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297264.P11961504659002929658

/-! ## A297264.P13264270540484881081

`lt[atan(A298406(n)), A055957(n)]`
-/

namespace A297264.P13264270540484881081
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A298406 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A297264.P13264270540484881081

/-! ## A297264.P16888198855510041309

`lt[dr(A248193(n)), A055957(n)]`
-/

namespace A297264.P16888198855510041309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A248193 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297264.P16888198855510041309

/-!
# A297265: Numbers whose base-8 digits have equal down-variation and up-variation; see Comments.

The programs for A297265, there is no canonical definition to state claims against.
-/

/-! ## A297265.P3563769378459908248

`eq[A037849(n+1), A037858(n+1)]+1`
-/

namespace A297265.P3563769378459908248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A297265.P3563769378459908248

/-! ## A297265.P1410568422941779963

`∑[A000926(Δ[A029803(n+1)])]`
-/

namespace A297265.P1410568422941779963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297265.P1410568422941779963

/-! ## A297265.P13763036723341173779

`∑[A032555(Δ[A029803(n+1)])]`
-/

namespace A297265.P13763036723341173779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297265.P13763036723341173779

/-! ## A297265.P254492765964117804

`∑[A032559(Δ[A029803(n+1)])]`
-/

namespace A297265.P254492765964117804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297265.P254492765964117804

/-! ## A297265.P12809333570149440905

`∑[A033621(Δ[A029803(n+1)])]`
-/

namespace A297265.P12809333570149440905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033621 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297265.P12809333570149440905

/-! ## A297265.P15371611801445099471

`∑[A065708(Δ[A029803(n+1)])]`
-/

namespace A297265.P15371611801445099471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297265.P15371611801445099471

/-! ## A297265.P12915339586225374512

`∑[A077739(Δ[A029803(n+1)])]`
-/

namespace A297265.P12915339586225374512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077739 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297265.P12915339586225374512

/-! ## A297265.P8188538586213470190

`A293903(A128445(n+1))+A029803(n+2)`
-/

namespace A297265.P8188538586213470190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293903 (A128445 (n + 1)).toNat + A029803 (n + 2)

end

end A297265.P8188538586213470190

/-! ## A297265.P7339409654082271344

`A001222(A029976(n+2))*A029803(n+2)`
-/

namespace A297265.P7339409654082271344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A029976 (n + 2)).toNat * A029803 (n + 2)

end

end A297265.P7339409654082271344

/-! ## A297265.P11945074851497962864

`eq[A055957(n), A270599(n+1)]`
-/

namespace A297265.P11945074851497962864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297265.P11945074851497962864

/-!
# A297266: Numbers whose base-8 digits have greater up-variation than down-variation; see Comments.

The programs for A297266, there is no canonical definition to state claims against.
-/

/-! ## A297266.P5328388925938172380

`lt[A010877(A030107(n)), n%8]`
-/

namespace A297266.P5328388925938172380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A030107 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297266.P5328388925938172380

/-! ## A297266.P14440992348823139054

`lt[A037858(n+1), A037849(n+1)]+1`
-/

namespace A297266.P14440992348823139054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297266.P14440992348823139054

/-! ## A297266.P18269233650228027897

`lt[A010877(A030107(n)), A010877(n)]`
-/

namespace A297266.P18269233650228027897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A030107 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P18269233650228027897

/-! ## A297266.P10625076870676794925

`lt[A010877(A255693(n)), A010877(n)]`
-/

namespace A297266.P10625076870676794925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A255693 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P10625076870676794925

/-! ## A297266.P8469327312102825954

`lt[A048319(n), A048319(A030107(n))]`
-/

namespace A297266.P8469327312102825954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 (A030107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P8469327312102825954

/-! ## A297266.P474106773339627122

`lt[A313928(n), A313928(A030107(n))]`
-/

namespace A297266.P474106773339627122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 (A030107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P474106773339627122

/-! ## A297266.P11920505953565777564

`lt[A048319(n), A048319(n-A055957(n))]`
-/

namespace A297266.P11920505953565777564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 ((n : ℤ) - A055957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P11920505953565777564

/-! ## A297266.P5296938943987781837

`lt[A048319(n), A048319(A055956(n)-n)]`
-/

namespace A297266.P5296938943987781837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 (A055956 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P5296938943987781837

/-! ## A297266.P4868179768853207799

`lt[A312213(n), A312213(A055956(n)-n)]`
-/

namespace A297266.P4868179768853207799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312213 (A055956 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P4868179768853207799

/-! ## A297266.P16276701491956511293

`lt[A313928(n), A313928(A055956(n)-n)]`
-/

namespace A297266.P16276701491956511293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 (A055956 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P16276701491956511293

/-! ## A297266.P9262472185601675522

`lt[A048302(n), A048302(A030107(n))]`
-/

namespace A297266.P9262472185601675522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048302 (A030107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P9262472185601675522

/-! ## A297266.P1917066777475099959

`lt[A048320(n), A048320(A030107(n))]`
-/

namespace A297266.P1917066777475099959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 (A030107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P1917066777475099959

/-! ## A297266.P1209273936997985002

`lt[A048318(n), A048318(A030107(n))]`
-/

namespace A297266.P1209273936997985002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048318 (A030107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P1209273936997985002

/-! ## A297266.P5242330871492340479

`lt[A055957(n), atan(1-A298406(n))]`
-/

namespace A297266.P5242330871492340479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (1 - A298406 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A297266.P5242330871492340479

/-! ## A297266.P6417971440615369735

`lt[A168024(n), A168024(A030107(n))]`
-/

namespace A297266.P6417971440615369735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 (A030107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P6417971440615369735

/-! ## A297266.P6811303507706983790

`lt[A248193(n), A248193(n)-A055957(n)]`
-/

namespace A297266.P6811303507706983790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248193 n - A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297266.P6811303507706983790

/-!
# A297267: Numbers whose base-9 digits have greater down-variation than up-variation; see Comments.

The programs for A297267, there is no canonical definition to state claims against.
-/

/-! ## A297267.P2940875692563379603

`lt[1, A265523(n+1)-A265523(n)]`
-/

namespace A297267.P2940875692563379603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (n + 1) - A265523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297267.P2940875692563379603

/-! ## A297267.P5005228295201305564

`lt[A157685(A319434(n+1)), A055959(n)]`
-/

namespace A297267.P5005228295201305564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A319434 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297267.P5005228295201305564

/-! ## A297267.P7245960377446671422

`lt[A000002(A298024(3*n+1)), A055959(n)]`
-/

namespace A297267.P7245960377446671422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A298024 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297267.P7245960377446671422

/-! ## A297267.P7681222200736180486

`lt[A083951(A030108(n)), A083951(n)]`
-/

namespace A297267.P7681222200736180486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083951 (A030108 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297267.P7681222200736180486

/-! ## A297267.P9245749563866488151

`lt[A273602(A030108(n)), A273602(n)]`
-/

namespace A297267.P9245749563866488151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 (A030108 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297267.P9245749563866488151

/-! ## A297267.P16899599514110286813

`lt[A301678(A030108(n)), A301678(n)]`
-/

namespace A297267.P16899599514110286813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 (A030108 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297267.P16899599514110286813

/-! ## A297267.P11359072234186545782

`lt[A272834(A055958(n)), A272834(2*n)]`
-/

namespace A297267.P11359072234186545782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (A055958 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297267.P11359072234186545782

/-! ## A297267.P2726962958766979502

`lt[A272834(A055958(n)/2), A272834(n)]`
-/

namespace A297267.P2726962958766979502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (SequenceMachineLib.roundAway ((A055958 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297267.P2726962958766979502

/-! ## A297267.P2242168233740677899

`lt[A272834(A055958(n)-n), A272834(n)]`
-/

namespace A297267.P2242168233740677899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (A055958 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297267.P2242168233740677899

/-!
# A297268: Numbers whose base-9 digits have equal down-variation and up-variation; see Comments.

The programs for A297268, there is no canonical definition to state claims against.
-/

/-! ## A297268.P10146118250972788687

`∑[A000926(Δ[A029955(n+1)])]`
-/

namespace A297268.P10146118250972788687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297268.P10146118250972788687

/-! ## A297268.P44398134422345555

`∑[A004438(Δ[A029955(n+1)])]`
-/

namespace A297268.P44398134422345555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297268.P44398134422345555

/-! ## A297268.P8891212078288764265

`∑[A020753(Δ[A029955(n+1)])]`
-/

namespace A297268.P8891212078288764265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297268.P8891212078288764265

/-! ## A297268.P13024926232341823605

`∑[A061511(Δ[A029955(n+1)])]`
-/

namespace A297268.P13024926232341823605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061511 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297268.P13024926232341823605

/-! ## A297268.P6705326033916436826

`∑[A089854(Δ[A029955(n+1)])]`
-/

namespace A297268.P6705326033916436826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297268.P6705326033916436826

/-! ## A297268.P7949851128219731883

`∑[A001222(2^Δ[A029955(n+1)])]`
-/

namespace A297268.P7949851128219731883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297268.P7949851128219731883

/-!
# A297269: Numbers whose base-9 digits have greater up-variation than down-variation; see Comments.

The programs for A297269, there is no canonical definition to state claims against.
-/

/-! ## A297269.P428109351350746055

`lt[dr(A265523(n)), A010878(n)]`
-/

namespace A297269.P428109351350746055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A265523 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297269.P428109351350746055

/-! ## A297269.P14413182664358561331

`eq[A265523(abs(1-n)), A265523(n)]`
-/

namespace A297269.P14413182664358561331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297269.P14413182664358561331

/-! ## A297269.P1389978935619774442

`eq[A265523(n+1), A265523(n)]+1`
-/

namespace A297269.P1389978935619774442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A297269.P1389978935619774442

/-! ## A297269.P9648966961722840367

`lt[A067251(n+1), A255594(n)+1]`
-/

namespace A297269.P9648966961722840367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255594 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297269.P9648966961722840367

/-! ## A297269.P9976495729289417388

`lt[A067251(A028310(n)), A255594(n)]`
-/

namespace A297269.P9976495729289417388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297269.P9976495729289417388

/-! ## A297269.P12577138265643583054

`lt[A083951(n), A083951(A030108(n))]`
-/

namespace A297269.P12577138265643583054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083951 (A030108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297269.P12577138265643583054

/-! ## A297269.P7950753487256899675

`lt[A272834(n), A272834(A055958(n)/2)]`
-/

namespace A297269.P7950753487256899675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (SequenceMachineLib.roundAway ((A055958 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297269.P7950753487256899675

/-! ## A297269.P17600237762418914111

`lt[A272834(n), A272834(A055958(n)-n)]`
-/

namespace A297269.P17600237762418914111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272834 (A055958 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297269.P17600237762418914111

/-!
# A297270: 

The programs for A297270, there is no canonical definition to state claims against.
-/

/-! ## A297270.P3372836489950059983

`lt[A010879(n), A000030(n)]`
-/

namespace A297270.P3372836489950059983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297270.P3372836489950059983

/-! ## A297270.P15844373251791897385

`lt[A010879(n), A032762(n)%10]`
-/

namespace A297270.P15844373251791897385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297270.P15844373251791897385

/-! ## A297270.P822029006882934833

`lt[A010879(n), A056142(n)%10]`
-/

namespace A297270.P822029006882934833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297270.P822029006882934833

/-! ## A297270.P1626763447138368985

`lt[A010879(n), A082216(n)%10]`
-/

namespace A297270.P1626763447138368985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297270.P1626763447138368985

/-! ## A297270.P2999648672454961353

`lt[A010879(n)+n, A182324(n)]`
-/

namespace A297270.P2999648672454961353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297270.P2999648672454961353

/-! ## A297270.P9389512416028408298

`lt[A010879(n), A010879(A004086(n))]`
-/

namespace A297270.P9389512416028408298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297270.P9389512416028408298

/-! ## A297270.P12976055892280010218

`lt[A010879(n), A054054(A355222(n))]`
-/

namespace A297270.P12976055892280010218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A355222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297270.P12976055892280010218

/-! ## A297270.P9459485227371795480

`lt[A010879(n), A010879(n-A056965(n))]`
-/

namespace A297270.P9459485227371795480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n : ℤ) - A056965 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297270.P9459485227371795480

/-!
# A297272: 

The programs for A297272, there is no canonical definition to state claims against.
-/

/-! ## A297272.P14216999233893223508

`lt[A000030(n), A010879(n)]`
-/

namespace A297272.P14216999233893223508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297272.P14216999233893223508

/-! ## A297272.P15316794842660573311

`lt[A032762(n)%10, A010879(n)]`
-/

namespace A297272.P15316794842660573311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297272.P15316794842660573311

/-! ## A297272.P813634802799524549

`lt[A056142(n)%10, A010879(n)]`
-/

namespace A297272.P813634802799524549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297272.P813634802799524549

/-! ## A297272.P11186963790065787988

`lt[A082216(n)%10, A010879(n)]`
-/

namespace A297272.P11186963790065787988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297272.P11186963790065787988

/-! ## A297272.P9055707574202257417

`lt[A182324(n), A010879(n)+n]`
-/

namespace A297272.P9055707574202257417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297272.P9055707574202257417

/-! ## A297272.P10846225558759790165

`eq[A265525(n+1), A265525(n)]+1`
-/

namespace A297272.P10846225558759790165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A297272.P10846225558759790165

/-! ## A297272.P3014552835891780511

`lt[A010879(A004086(n)), A010879(n)]`
-/

namespace A297272.P3014552835891780511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297272.P3014552835891780511

/-! ## A297272.P18036657261629492569

`lt[A054054(A355222(n)), A010879(n)]`
-/

namespace A297272.P18036657261629492569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A355222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297272.P18036657261629492569

/-! ## A297272.P12815830386528151542

`lt[A010879(n-A056965(n)), A010879(n)]`
-/

namespace A297272.P12815830386528151542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 ((n : ℤ) - A056965 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297272.P12815830386528151542

/-!
# A297273: Numbers whose base-11 digits have greater down-variation than up-variation; see Comments.

The programs for A297273, there is no canonical definition to state claims against.
-/

/-! ## A297273.P15775044794164725536

`lt[A001281(A055960(n)), n]`
-/

namespace A297273.P15775044794164725536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055960 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297273.P15775044794164725536

/-! ## A297273.P147987553997200523

`lt[A028310(A056960(n)), n]`
-/

namespace A297273.P147987553997200523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056960 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297273.P147987553997200523

/-! ## A297273.P13829167680659069296

`lt[A004767(A056960(n)), A004767(n)]`
-/

namespace A297273.P13829167680659069296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A056960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297273.P13829167680659069296

/-! ## A297273.P9134323545743220602

`lt[A007090(A056960(n)), A007090(n)]`
-/

namespace A297273.P9134323545743220602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A056960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297273.P9134323545743220602

/-! ## A297273.P11734365070724200914

`lt[A008588(A056960(n)), A008588(n)]`
-/

namespace A297273.P11734365070724200914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A056960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297273.P11734365070724200914

/-! ## A297273.P10628307099058216674

`lt[A028310(A055960(n)), A004277(n)]`
-/

namespace A297273.P10628307099058216674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297273.P10628307099058216674

/-! ## A297273.P16024273800463730030

`lt[A028387(A056960(n)), A028387(n)]`
-/

namespace A297273.P16024273800463730030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A056960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297273.P16024273800463730030

/-! ## A297273.P11136696350006044569

`lt[A028310(A055960(n)), A028310(2*n)]`
-/

namespace A297273.P11136696350006044569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297273.P11136696350006044569

/-! ## A297273.P1467639631806147376

`lt[A028310(A055960(n)), A028310(n)+n]`
-/

namespace A297273.P1467639631806147376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A055960 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297273.P1467639631806147376

/-! ## A297273.P14576119879489244115

`lt[A004277(A055960(n)-n), A004277(n)]`
-/

namespace A297273.P14576119879489244115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055960 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297273.P14576119879489244115

/-!
# A297274: Numbers whose base-11 digits have equal down-variation and up-variation; see Comments.

The programs for A297274, there is no canonical definition to state claims against.
-/

/-! ## A297274.P7185088220484572576

`eq[n, A028310(A056960(n))]`
-/

namespace A297274.P7185088220484572576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297274.P7185088220484572576

/-! ## A297274.P12378277844900121204

`A029956(n+2)%A019324(n)`
-/

namespace A297274.P12378277844900121204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029956 (n + 2)) (A019324 n)

end

end A297274.P12378277844900121204

/-! ## A297274.P62242243512041857

`∑[A004438(Δ[A029956(n+1)])]`
-/

namespace A297274.P62242243512041857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P62242243512041857

/-! ## A297274.P13280965166537168210

`∑[A072088(Δ[A029956(n+1)])]`
-/

namespace A297274.P13280965166537168210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P13280965166537168210

/-! ## A297274.P13758868234102115701

`∑[A072089(Δ[A029956(n+1)])]`
-/

namespace A297274.P13758868234102115701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P13758868234102115701

/-! ## A297274.P17762478341641550362

`∑[A089867(Δ[A029956(n+1)])]`
-/

namespace A297274.P17762478341641550362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P17762478341641550362

/-! ## A297274.P2384498082514550053

`∑[A089869(Δ[A029956(n+1)])]`
-/

namespace A297274.P2384498082514550053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P2384498082514550053

/-! ## A297274.P13919659618332802454

`∑[A089870(Δ[A029956(n+1)])]`
-/

namespace A297274.P13919659618332802454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P13919659618332802454

/-! ## A297274.P4823216983441032830

`∑[A096894(Δ[A029956(n+1)])]`
-/

namespace A297274.P4823216983441032830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096894 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P4823216983441032830

/-! ## A297274.P10986218577016576438

`∑[A118759(Δ[A029956(n+1)])]`
-/

namespace A297274.P10986218577016576438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P10986218577016576438

/-! ## A297274.P7328355110606534944

`∑[A187829(Δ[A029956(n+1)])]`
-/

namespace A297274.P7328355110606534944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P7328355110606534944

/-! ## A297274.P9050403848490648779

`eq[n, A028310(n-A055961(n))]`
-/

namespace A297274.P9050403848490648779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A055961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297274.P9050403848490648779

/-! ## A297274.P6071088550544126158

`∑[A000196(Δ[A029956(n+1)]²)]`
-/

namespace A297274.P6071088550544126158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297274.P6071088550544126158

/-! ## A297274.P6182460394167988046

`lt[(A055921(n)*A055961(n))², n]`
-/

namespace A297274.P6182460394167988046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055921 n * A055961 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297274.P6182460394167988046

/-!
# A297275: Numbers whose base-11 digits have greater up-variation than down-variation; see Comments.

The programs for A297275, there is no canonical definition to state claims against.
-/

/-! ## A297275.P4791516652883996016

`lt[A004767(n), A004767(A056960(n))]`
-/

namespace A297275.P4791516652883996016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P4791516652883996016

/-! ## A297275.P15029135146509076628

`lt[A007090(n), A007090(A056960(n))]`
-/

namespace A297275.P15029135146509076628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P15029135146509076628

/-! ## A297275.P8852639491616702401

`lt[A008588(n), A008588(A056960(n))]`
-/

namespace A297275.P8852639491616702401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P8852639491616702401

/-! ## A297275.P17382130406226145060

`lt[A016779(n), A016779(A056960(n))]`
-/

namespace A297275.P17382130406226145060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016779 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P17382130406226145060

/-! ## A297275.P12339895456217007780

`lt[A028387(n), A028387(A056960(n))]`
-/

namespace A297275.P12339895456217007780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P12339895456217007780

/-! ## A297275.P17586820302611418728

`lt[A028569(n), A028569(A056960(n))]`
-/

namespace A297275.P17586820302611418728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P17586820302611418728

/-! ## A297275.P10021675384510641751

`lt[A001281(n), A001281(A055960(n)-n)]`
-/

namespace A297275.P10021675384510641751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055960 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P10021675384510641751

/-! ## A297275.P10765392145878173090

`lt[A055961(n), A055961(n-A055961(n))]`
-/

namespace A297275.P10765392145878173090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055961 ((n : ℤ) - A055961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P10765392145878173090

/-! ## A297275.P1888492316569821978

`lt[n, A001281(A055960(n))]`
-/

namespace A297275.P1888492316569821978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297275.P1888492316569821978

/-! ## A297275.P16355455956154950361

`lt[A066186(n), A066186(A056960(n))]`
-/

namespace A297275.P16355455956154950361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P16355455956154950361

/-! ## A297275.P11903872743819095541

`lt[A208933(n), A208933(A056960(n))]`
-/

namespace A297275.P11903872743819095541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (A056960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P11903872743819095541

/-! ## A297275.P10045272557023970477

`lt[A056961(A056961(2*n+3)), A055960(n)]`
-/

namespace A297275.P10045272557023970477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056961 (A056961 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P10045272557023970477

/-! ## A297275.P12722275110601024388

`lt[A010785(n), A010785(A055960(n)/2)]`
-/

namespace A297275.P12722275110601024388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (SequenceMachineLib.roundAway ((A055960 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297275.P12722275110601024388

/-!
# A297276: Numbers whose base-12 digits have greater down-variation than up-variation; see Comments.

The programs for A297276, there is no canonical definition to state claims against.
-/

/-! ## A297276.P6430331515769872641

`lt[A297235(n+1), A297234(n+1)]+1`
-/

namespace A297276.P6430331515769872641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297276.P6430331515769872641

/-! ## A297276.P16450419583987247473

`lt[A004526(A055962(n)), n]`
-/

namespace A297276.P16450419583987247473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A055962 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297276.P16450419583987247473

/-! ## A297276.P11687987615680396213

`lt[A000290(A056961(n)), A000290(n)]`
-/

namespace A297276.P11687987615680396213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A056961 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297276.P11687987615680396213

/-! ## A297276.P11020699361271450240

`lt[A000326(A056961(n)), A000326(n)]`
-/

namespace A297276.P11020699361271450240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A056961 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297276.P11020699361271450240

/-! ## A297276.P8916536908712305190

`lt[A000124(A055962(n)), A014107(n)]`
-/

namespace A297276.P8916536908712305190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A055962 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297276.P8916536908712305190

/-! ## A297276.P4799710537360139114

`lt[A000124(A055962(n)-n), A000124(n)]`
-/

namespace A297276.P4799710537360139114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A055962 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297276.P4799710537360139114

/-! ## A297276.P1448916019293483185

`lt[A001489(n), A001489(A055962(n)-n)]`
-/

namespace A297276.P1448916019293483185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055962 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297276.P1448916019293483185

/-! ## A297276.P5738728450678379175

`lt[0, A001489(A055962(n)+A001489(n))+n]`
-/

namespace A297276.P5738728450678379175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055962 n + A001489 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297276.P5738728450678379175

/-! ## A297276.P11014319699802564554

`lt[atan(A122164(n)), A055963(n)]`
-/

namespace A297276.P11014319699802564554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A122164 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A297276.P11014319699802564554

/-! ## A297276.P1376766052099607150

`lt[atan(A122597(n)), A055963(n)]`
-/

namespace A297276.P1376766052099607150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A122597 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A297276.P1376766052099607150

/-! ## A297276.P7971178233129888402

`lt[atan(A048336(n)), A055963(n)]`
-/

namespace A297276.P7971178233129888402
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A048336 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A297276.P7971178233129888402

/-! ## A297276.P10514517493941490587

`lt[atan(A103609(n)), A055963(n)]`
-/

namespace A297276.P10514517493941490587
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A103609 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A297276.P10514517493941490587

/-!
# A297277: Numbers whose base-12 digits have equal down-variation and up-variation; see Comments.

The programs for A297277, there is no canonical definition to state claims against.
-/

/-! ## A297277.P12864989604534676149

`eq[n, A028310(A056961(n))]`
-/

namespace A297277.P12864989604534676149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297277.P12864989604534676149

/-! ## A297277.P8205460100639099960

`∑[A004438(Δ[A029957(n+1)])]`
-/

namespace A297277.P8205460100639099960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P8205460100639099960

/-! ## A297277.P14257271985613649794

`∑[A048266(Δ[A029957(n+1)])]`
-/

namespace A297277.P14257271985613649794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P14257271985613649794

/-! ## A297277.P17402918035499569475

`∑[A072088(Δ[A029957(n+1)])]`
-/

namespace A297277.P17402918035499569475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P17402918035499569475

/-! ## A297277.P8385993171359945171

`∑[A086431(Δ[A029957(n+1)])]`
-/

namespace A297277.P8385993171359945171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P8385993171359945171

/-! ## A297277.P9819651585185532890

`∑[A089868(Δ[A029957(n+1)])]`
-/

namespace A297277.P9819651585185532890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P9819651585185532890

/-! ## A297277.P16513716261050126881

`∑[A094275(Δ[A029957(n+1)])]`
-/

namespace A297277.P16513716261050126881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P16513716261050126881

/-! ## A297277.P13344791216183851472

`∑[A187829(Δ[A029957(n+1)])]`
-/

namespace A297277.P13344791216183851472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P13344791216183851472

/-! ## A297277.P7127404663092545500

`∑[A239088(Δ[A029957(n+1)])]`
-/

namespace A297277.P7127404663092545500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P7127404663092545500

/-! ## A297277.P8525044015785081388

`∑[A000188(Δ[A029957(n+1)]²)]`
-/

namespace A297277.P8525044015785081388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P8525044015785081388

/-! ## A297277.P16873347500920940431

`∑[A000194(Δ[A029957(n+1)]²)]`
-/

namespace A297277.P16873347500920940431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P16873347500920940431

/-! ## A297277.P17083129274948936156

`∑[A000196(Δ[A029957(n+1)]²)]`
-/

namespace A297277.P17083129274948936156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P17083129274948936156

/-! ## A297277.P16577354502041961009

`∑[A001222(2^Δ[A029957(n+1)])]`
-/

namespace A297277.P16577354502041961009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297277.P16577354502041961009

/-!
# A297278: Numbers whose base-12 digits have greater up-variation than down-variation; see Comments.

The programs for A297278, there is no canonical definition to state claims against.
-/

/-! ## A297278.P9656090236845667828

`lt[A297234(n+1), A297235(n+1)]+1`
-/

namespace A297278.P9656090236845667828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297278.P9656090236845667828

/-! ## A297278.P3527124651085882584

`lt[n+1, A028310(A056961(n))]`
-/

namespace A297278.P3527124651085882584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297278.P3527124651085882584

/-! ## A297278.P17343508744674588798

`lt[A000290(n), A000290(A056961(n))]`
-/

namespace A297278.P17343508744674588798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P17343508744674588798

/-! ## A297278.P13419424890758262428

`lt[A000326(n), A000326(A056961(n))]`
-/

namespace A297278.P13419424890758262428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P13419424890758262428

/-! ## A297278.P15506949707495903799

`lt[A008862(n), A008862(A056961(n))]`
-/

namespace A297278.P15506949707495903799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P15506949707495903799

/-! ## A297278.P7664091400871698995

`lt[A057355(n), A057355(A056961(n))]`
-/

namespace A297278.P7664091400871698995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P7664091400871698995

/-! ## A297278.P10529789033279998973

`lt[A000124(n), A000124(A055962(n)-n)]`
-/

namespace A297278.P10529789033279998973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A055962 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P10529789033279998973

/-! ## A297278.P5069955685101536137

`lt[A001489(A055962(n)-n), A001489(n)]`
-/

namespace A297278.P5069955685101536137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055962 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P5069955685101536137

/-! ## A297278.P5785697151470999066

`lt[A014107(n), A014107(A055962(n)-n)]`
-/

namespace A297278.P5785697151470999066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (A055962 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P5785697151470999066

/-! ## A297278.P7756477038765133278

`lt[A055923(n), A055923(A055962(n)-n)]`
-/

namespace A297278.P7756477038765133278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055923 (A055962 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P7756477038765133278

/-! ## A297278.P17786902390723468771

`lt[A001489(A055962(n)+A001489(n))+n, 0]`
-/

namespace A297278.P17786902390723468771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A055962 n + A001489 n).toNat + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297278.P17786902390723468771

/-! ## A297278.P10274765580212634950

`lt[n, A004526(A055962(n))]`
-/

namespace A297278.P10274765580212634950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A055962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297278.P10274765580212634950

/-! ## A297278.P17459712341285405331

`lt[A000070(n), A000070(A056961(n))]`
-/

namespace A297278.P17459712341285405331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P17459712341285405331

/-! ## A297278.P12969371144136760354

`lt[A055923(2*n+3), A055923(A055962(n))]`
-/

namespace A297278.P12969371144136760354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055923 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055923 (A055962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P12969371144136760354

/-! ## A297278.P14845090305375895325

`lt[A001523(n), A001523(A056961(n))]`
-/

namespace A297278.P14845090305375895325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A056961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P14845090305375895325

/-! ## A297278.P12770903910829953321

`lt[A122164(n), A122164(n)-A055963(n)]`
-/

namespace A297278.P12770903910829953321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 n - A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P12770903910829953321

/-! ## A297278.P16731822880033190858

`lt[A122597(n), A122597(n)-A055963(n)]`
-/

namespace A297278.P16731822880033190858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122597 n - A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P16731822880033190858

/-! ## A297278.P9257900243427763289

`lt[A048336(n), A048336(n)-A055963(n)]`
-/

namespace A297278.P9257900243427763289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 n - A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P9257900243427763289

/-! ## A297278.P13180746587091850723

`lt[A048315(n), A048315(n)-A055963(n)]`
-/

namespace A297278.P13180746587091850723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048315 n - A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P13180746587091850723

/-! ## A297278.P9272061427395255836

`lt[A103609(n), A103609(n)-A055963(n)]`
-/

namespace A297278.P9272061427395255836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n - A055963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297278.P9272061427395255836

/-!
# A297279: Numbers whose base-13 digits have greater down-variation than up-variation; see Comments.

The programs for A297279, there is no canonical definition to state claims against.
-/

/-! ## A297279.P11061964821712999948

`lt[A297238(n+1), A297237(n+1)]+1`
-/

namespace A297279.P11061964821712999948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297279.P11061964821712999948

/-!
# A297280: Numbers whose base-13 digits have equal down-variation and up-variation; see Comments.

The programs for A297280, there is no canonical definition to state claims against.
-/

/-! ## A297280.P13065165126839661705

`∑[A111615(Δ[A029958(n+1)])]`
-/

namespace A297280.P13065165126839661705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297280.P13065165126839661705

/-! ## A297280.P16616099454002185773

`∑[A120951(Δ[A029958(n+1)])]`
-/

namespace A297280.P16616099454002185773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297280.P16616099454002185773

/-! ## A297280.P16630613811245251119

`A029958(n+2)%A000040(A005728(n))`
-/

namespace A297280.P16630613811245251119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029958 (n + 2)) (A000040 (A005728 n).toNat)

end

end A297280.P16630613811245251119

/-! ## A297280.P9874739508227413745

`A239968(A054819(n+1))+A029958(n+2)`
-/

namespace A297280.P9874739508227413745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A054819 (n + 1)).toNat + A029958 (n + 2)

end

end A297280.P9874739508227413745

/-! ## A297280.P1340516147216330742

`A029958(n+2)*A285572(A376500(n+1))`
-/

namespace A297280.P1340516147216330742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 2) * A285572 (A376500 (n + 1)).toNat

end

end A297280.P1340516147216330742

/-! ## A297280.P17927273432533053153

`A029958(A220466(2*n+3)+val(A015521(n+2), 2))`
-/

namespace A297280.P17927273432533053153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (A220466 (2 * n + 3) + (SequenceMachineLib.valuation (A015521 (n + 2)).toNat 2 : ℤ)).toNat

end

end A297280.P17927273432533053153

/-! ## A297280.P9928627619222901945

`A029958(n+2)+A010054(A106856(3*n+5))`
-/

namespace A297280.P9928627619222901945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (n + 2) + A010054 (A106856 (3 * n + 5)).toNat

end

end A297280.P9928627619222901945

/-! ## A297280.P8187143679432901798

`A079998(A029952(2*(n+1)))+A029958(n+2)`
-/

namespace A297280.P8187143679432901798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A029952 (2 * (n + 1))).toNat + A029958 (n + 2)

end

end A297280.P8187143679432901798

/-! ## A297280.P18339504362075691672

`A029958(A085763(A085764(n+2)))`
-/

namespace A297280.P18339504362075691672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (A085763 (A085764 (n + 2)).toNat).toNat

end

end A297280.P18339504362075691672

/-! ## A297280.P15857702971539296263

`A029958(A220466(2*n+3)+val(A320087(3*n+4), 2))`
-/

namespace A297280.P15857702971539296263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029958 (A220466 (2 * n + 3) + (SequenceMachineLib.valuation (A320087 (3 * n + 4)).toNat 2 : ℤ)).toNat

end

end A297280.P15857702971539296263

/-!
# A297281: Numbers whose base-13 digits have greater up-variation than down-variation; see Comments.

The programs for A297281, there is no canonical definition to state claims against.
-/

/-! ## A297281.P13898305391676659626

`lt[A297237(n+1), A297238(n+1)]+1`
-/

namespace A297281.P13898305391676659626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297281.P13898305391676659626

/-!
# A297282: Numbers whose base-14 digits have greater down-variation than up-variation; see Comments.

The programs for A297282, there is no canonical definition to state claims against.
-/

/-! ## A297282.P3896748253365160480

`lt[A297241(n+1), A297240(n+1)]+1`
-/

namespace A297282.P3896748253365160480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297282.P3896748253365160480

/-!
# A297283: Numbers whose base-14 digits have equal down-variation and up-variation; see Comments.

The programs for A297283, there is no canonical definition to state claims against.
-/

/-! ## A297283.P10176664167892723497

`∑[A004438(Δ[A029959(n+1)])]`
-/

namespace A297283.P10176664167892723497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P10176664167892723497

/-! ## A297283.P3932290340285559510

`∑[A085736(Δ[A029959(n+1)])]`
-/

namespace A297283.P3932290340285559510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P3932290340285559510

/-! ## A297283.P10485933645407253631

`∑[A090109(Δ[A029959(n+1)])]`
-/

namespace A297283.P10485933645407253631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P10485933645407253631

/-! ## A297283.P13328569898630524087

`∑[A118759(Δ[A029959(n+1)])]`
-/

namespace A297283.P13328569898630524087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P13328569898630524087

/-! ## A297283.P3970481868166333182

`∑[A133137(Δ[A029959(n+1)])]`
-/

namespace A297283.P3970481868166333182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P3970481868166333182

/-! ## A297283.P14763079572425898892

`∑[A175948(Δ[A029959(n+1)])]`
-/

namespace A297283.P14763079572425898892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P14763079572425898892

/-! ## A297283.P16851987065157771976

`∑[A187829(Δ[A029959(n+1)])]`
-/

namespace A297283.P16851987065157771976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P16851987065157771976

/-! ## A297283.P4988416683764819561

`∑[A000188(Δ[A029959(n+1)]²)]`
-/

namespace A297283.P4988416683764819561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P4988416683764819561

/-! ## A297283.P18148639033145649526

`∑[A000189(Δ[A029959(n+1)]²)]`
-/

namespace A297283.P18148639033145649526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P18148639033145649526

/-! ## A297283.P10886714757444847061

`∑[A000194(Δ[A029959(n+1)]²)]`
-/

namespace A297283.P10886714757444847061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P10886714757444847061

/-! ## A297283.P10688359251191202868

`∑[A000196(Δ[A029959(n+1)]²)]`
-/

namespace A297283.P10688359251191202868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297283.P10688359251191202868

/-!
# A297284: Numbers whose base-14 digits have greater up-variation than down-variation; see Comments.

The programs for A297284, there is no canonical definition to state claims against.
-/

/-! ## A297284.P10868657351538859796

`lt[A297240(n+1), A297241(n+1)]+1`
-/

namespace A297284.P10868657351538859796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297284.P10868657351538859796

/-!
# A297285: 

The programs for A297285, there is no canonical definition to state claims against.
-/

/-! ## A297285.P5708091097858505986

`lt[A297244(n+1), A297243(n+1)]+1`
-/

namespace A297285.P5708091097858505986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297285.P5708091097858505986

/-!
# A297286: Numbers whose base-15 digits have equal down-variation and up-variation; see Comments.

The programs for A297286, there is no canonical definition to state claims against.
-/

/-! ## A297286.P6313131842798433422

`∑[A004438(Δ[A029960(n+1)])]`
-/

namespace A297286.P6313131842798433422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P6313131842798433422

/-! ## A297286.P18229836897575353642

`∑[A048266(Δ[A029960(n+1)])]`
-/

namespace A297286.P18229836897575353642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P18229836897575353642

/-! ## A297286.P13002208513325401524

`∑[A085735(Δ[A029960(n+1)])]`
-/

namespace A297286.P13002208513325401524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P13002208513325401524

/-! ## A297286.P17485778788850649792

`∑[A085736(Δ[A029960(n+1)])]`
-/

namespace A297286.P17485778788850649792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P17485778788850649792

/-! ## A297286.P9470085976818008804

`∑[A089867(Δ[A029960(n+1)])]`
-/

namespace A297286.P9470085976818008804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P9470085976818008804

/-! ## A297286.P15654144809882292818

`∑[A089868(Δ[A029960(n+1)])]`
-/

namespace A297286.P15654144809882292818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P15654144809882292818

/-! ## A297286.P18227866716795362652

`∑[A090106(Δ[A029960(n+1)])]`
-/

namespace A297286.P18227866716795362652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P18227866716795362652

/-! ## A297286.P17702394963928027340

`∑[A090107(Δ[A029960(n+1)])]`
-/

namespace A297286.P17702394963928027340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090107 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P17702394963928027340

/-! ## A297286.P17703817530253547711

`∑[A118759(Δ[A029960(n+1)])]`
-/

namespace A297286.P17703817530253547711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P17703817530253547711

/-! ## A297286.P12217569032524195935

`∑[A131516(Δ[A029960(n+1)])]`
-/

namespace A297286.P12217569032524195935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P12217569032524195935

/-! ## A297286.P2472228849736571666

`∑[A000188(Δ[A029960(n+1)]²)]`
-/

namespace A297286.P2472228849736571666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P2472228849736571666

/-! ## A297286.P13357425550595519156

`∑[A000194(Δ[A029960(n+1)]²)]`
-/

namespace A297286.P13357425550595519156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P13357425550595519156

/-! ## A297286.P16550448110825664253

`∑[A000196(Δ[A029960(n+1)]²)]`
-/

namespace A297286.P16550448110825664253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P16550448110825664253

/-! ## A297286.P13741244866032438929

`∑[A007967(Δ[A029960(n+1)]²)]`
-/

namespace A297286.P13741244866032438929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P13741244866032438929

/-! ## A297286.P1831639534540567412

`∑[A019554(Δ[A029960(n+1)]²)]`
-/

namespace A297286.P1831639534540567412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297286.P1831639534540567412

/-! ## A297286.P11733919210760459264

`A121262(A028916(2*n+1))+A029960(n+2)`
-/

namespace A297286.P11733919210760459264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A028916 (2 * n + 1)).toNat + A029960 (n + 2)

end

end A297286.P11733919210760459264

/-! ## A297286.P2534166500763484117

`gcd(2, A006995(A014192(n+2)+1))*A029960(n+2)`
-/

namespace A297286.P2534166500763484117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A006995 (A014192 (n + 2) + 1).toNat) : ℤ) * A029960 (n + 2)

end

end A297286.P2534166500763484117

/-! ## A297286.P14650333039133978714

`A029960(n+2)+and(1, A014574(A014574(n+1)+1))`
-/

namespace A297286.P14650333039133978714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 2) + Int.land 1 (A014574 (A014574 (n + 1) + 1).toNat)

end

end A297286.P14650333039133978714

/-!
# A297287: Numbers whose base-15 digits have greater up-variation than down-variation; see Comments.

The programs for A297287, there is no canonical definition to state claims against.
-/

/-! ## A297287.P14901147985246089320

`lt[A297243(n+1), A297244(n+1)]+1`
-/

namespace A297287.P14901147985246089320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297287.P14901147985246089320

/-!
# A297288: 

The programs for A297288, there is no canonical definition to state claims against.
-/

/-! ## A297288.P11358967211472326251

`lt[A297247(n+1), A297246(n+1)]+1`
-/

namespace A297288.P11358967211472326251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297288.P11358967211472326251

/-! ## A297288.P12799178776979672643

`lt[A004525(A055964(n)), n]`
-/

namespace A297288.P12799178776979672643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A055964 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297288.P12799178776979672643

/-! ## A297288.P1105566403388465789

`lt[A004526(A055964(n)+1), n]`
-/

namespace A297288.P1105566403388465789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A055964 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297288.P1105566403388465789

/-! ## A297288.P14759700744801478524

`lt[A002620(A056962(n)), A002620(n)]`
-/

namespace A297288.P14759700744801478524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A056962 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297288.P14759700744801478524

/-! ## A297288.P5257451562365840718

`lt[A005408(A055964(n)), A008574(n)]`
-/

namespace A297288.P5257451562365840718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A055964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297288.P5257451562365840718

/-! ## A297288.P7641859563330424813

`lt[A000124(A055964(n)), A014107(n)]`
-/

namespace A297288.P7641859563330424813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A055964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297288.P7641859563330424813

/-! ## A297288.P16983421101130986542

`lt[A056962(n), n%A000045(n+2)]`
-/

namespace A297288.P16983421101130986542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000045 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297288.P16983421101130986542

/-! ## A297288.P9465787481658132194

`lt[1, A055992(n+2)²*A055965(n)]`
-/

namespace A297288.P9465787481658132194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055992 (n + 2) ^ 2 * A055965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297288.P9465787481658132194

/-!
# A297289: Numbers whose base-16 digits have equal down-variation and up-variation; see Comments.

The programs for A297289, there is no canonical definition to state claims against.
-/

/-! ## A297289.P7800670556115365117

`eq[n, A065033(A055964(n))]`
-/

namespace A297289.P7800670556115365117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A055964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297289.P7800670556115365117

/-! ## A297289.P6900665638461905783

`A029730(A056926(n²)+2)`
-/

namespace A297289.P6900665638461905783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (A056926 (n ^ 2) + 2).toNat

end

end A297289.P6900665638461905783

/-! ## A297289.P15937913538303651331

`A029730(n+2)+C(n, A000045(2*n+1))`
-/

namespace A297289.P15937913538303651331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 2) + (Nat.choose n (A000045 (2 * n + 1)).toNat : ℤ)

end

end A297289.P15937913538303651331

/-! ## A297289.P9499602392697484403

`A029730(n+2)/A322310(A139264(n+1))`
-/

namespace A297289.P9499602392697484403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029730 (n + 2) : ℚ) / (A322310 (A139264 (n + 1)).toNat : ℚ)

end

end A297289.P9499602392697484403

/-! ## A297289.P11569860479467463714

`A029730(n+2)*A322310(A139264(n+2))`
-/

namespace A297289.P11569860479467463714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 2) * A322310 (A139264 (n + 2)).toNat

end

end A297289.P11569860479467463714

/-! ## A297289.P17306439811514391794

`A029730(n+2)+A014197(A001359(n+1))`
-/

namespace A297289.P17306439811514391794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 2) + A014197 (A001359 (n + 1)).toNat

end

end A297289.P17306439811514391794

/-! ## A297289.P4646953067574875699

`record[A029730(A028920(n)+1)]`
-/

namespace A297289.P4646953067574875699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (A028920 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297289.P4646953067574875699

/-! ## A297289.P2373271736343169156

`record[A029730(A028920(A005408(n)))]`
-/

namespace A297289.P2373271736343169156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (A028920 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297289.P2373271736343169156

/-! ## A297289.P6444942162286732457

`record[A029730(A028920(A093178(n)))]`
-/

namespace A297289.P6444942162286732457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (A028920 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297289.P6444942162286732457

/-! ## A297289.P10749347818706983696

`eq[A004525(A008574(n)), A055964(n)]`
-/

namespace A297289.P10749347818706983696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297289.P10749347818706983696

/-! ## A297289.P11370304627754262655

`A029730(A126799(∑[n-1]+2)+n+1)`
-/

namespace A297289.P11370304627754262655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (A126799 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + (n : ℤ) + 1).toNat

end

end A297289.P11370304627754262655

/-!
# A297290: Numbers whose base-16 digits have greater up-variation than down-variation; see Comments.

The programs for A297290, there is no canonical definition to state claims against.
-/

/-! ## A297290.P9134692025325991301

`lt[n, A023444(A055964(n)-n)]`
-/

namespace A297290.P9134692025325991301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A055964 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297290.P9134692025325991301

/-! ## A297290.P17648088773741989053

`lt[A002620(n), A002620(A056962(n))]`
-/

namespace A297290.P17648088773741989053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A056962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P17648088773741989053

/-! ## A297290.P17389857906000341537

`lt[A008597(n), A008597(A056962(n))]`
-/

namespace A297290.P17389857906000341537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A056962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P17389857906000341537

/-! ## A297290.P9596575082547193644

`lt[A052810(n), A000041(A056962(n))]`
-/

namespace A297290.P9596575082547193644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A056962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P9596575082547193644

/-! ## A297290.P14331479845084610095

`lt[A028392(n), A028392(A056962(n))]`
-/

namespace A297290.P14331479845084610095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 (A056962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P14331479845084610095

/-! ## A297290.P1485112918631634233

`lt[A084376(n), A000041(A056962(n))]`
-/

namespace A297290.P1485112918631634233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A056962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P1485112918631634233

/-! ## A297290.P2372569878234273829

`lt[A139582(n), A000041(A056962(n))]`
-/

namespace A297290.P2372569878234273829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A056962 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P2372569878234273829

/-! ## A297290.P13639761755743697317

`lt[n, A004525(A055964(n))]`
-/

namespace A297290.P13639761755743697317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A055964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297290.P13639761755743697317

/-! ## A297290.P3748690125083339187

`lt[1, A055964(n)-A246444(n+1)]`
-/

namespace A297290.P3748690125083339187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n - A246444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297290.P3748690125083339187

/-! ## A297290.P5707422175150471832

`lt[A020725(A246444(n+1)), A055964(n)]`
-/

namespace A297290.P5707422175150471832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A246444 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P5707422175150471832

/-! ## A297290.P6157292082828806357

`lt[A055965(n), A207710(A114856(n+1))]`
-/

namespace A297290.P6157292082828806357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207710 (A114856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P6157292082828806357

/-! ## A297290.P4874038464091658439

`lt[A055965(n), A025464(A049550(n+1))]`
-/

namespace A297290.P4874038464091658439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 (A049550 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P4874038464091658439

/-! ## A297290.P9320559563585166405

`lt[A055965(n), A072401(A161714(n))]`
-/

namespace A297290.P9320559563585166405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (A161714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297290.P9320559563585166405

/-!
# A297291: Solution (a(n)) of the system of 3 complementary equations in Comments.

The programs for A297291, there is no canonical definition to state claims against.
-/

/-! ## A297291.P1354879760290882714

`A297293(n)+2-A297292(n)`
-/

namespace A297291.P1354879760290882714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297293 n + (2 - A297292 n)

end

end A297291.P1354879760290882714

/-! ## A297291.P9828057154609497038

`A171463(A297293(n))-A297292(n)`
-/

namespace A297291.P9828057154609497038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A297293 n).toNat - A297292 n

end

end A297291.P9828057154609497038

/-! ## A297291.P635132125214965877

`A171463(A297293(n))%(A297292(n)%A017569(n))`
-/

namespace A297291.P635132125214965877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171463 (A297293 n).toNat) (Int.tmod (A297292 n) (A017569 n))

end

end A297291.P635132125214965877

/-! ## A297291.P602975682517230390

`A171463(A297293(n))%A098925(A297292(n)²)`
-/

namespace A297291.P602975682517230390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171463 (A297293 n).toNat) (A098925 (A297292 n ^ 2).toNat)

end

end A297291.P602975682517230390

/-!
# A297292: Solution (b(n)) of the system of 3 complementary equations in Comments.

The programs for A297292, there is no canonical definition to state claims against.
-/

/-! ## A297292.P2402775590142480970

`A297293(n)+2-A297291(n)`
-/

namespace A297292.P2402775590142480970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297293 n + (2 - A297291 n)

end

end A297292.P2402775590142480970

/-! ## A297292.P2309547800448500677

`A171463(A297293(n))-A297291(n)`
-/

namespace A297292.P2309547800448500677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A297293 n).toNat - A297291 n

end

end A297292.P2309547800448500677

/-! ## A297292.P1118850132043952146

`A034584(A313758(n+1))`
-/

namespace A297292.P1118850132043952146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A313758 (n + 1)).toNat

end

end A297292.P1118850132043952146

/-! ## A297292.P189132467633873501

`A034584(A313759(n+1))`
-/

namespace A297292.P189132467633873501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A313759 (n + 1)).toNat

end

end A297292.P189132467633873501

/-!
# A297293: Solution (c(n)) of the system of 3 complementary equations in Comments.

The programs for A297293, there is no canonical definition to state claims against.
-/

/-! ## A297293.P11326237106767019136

`A297291(n)+A297292(n)-2`
-/

namespace A297293.P11326237106767019136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297291 n + (A297292 n - 2)

end

end A297293.P11326237106767019136

/-!
# A297294: Number of primitive Pythagorean triples (PPTs) that have 2^n-1 as the length of their odd leg where n is the sequence index.

The programs for A297294, there is no canonical definition to state claims against.
-/

/-! ## A297294.P1806573150413089153

`A131577(A046800(n+1))`
-/

namespace A297294.P1806573150413089153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A046800 (n + 1)).toNat

end

end A297294.P1806573150413089153

/-! ## A297294.P1859830210063455839

`A011782(A046800(n+1))%∑[A046682(n)]`
-/

namespace A297294.P1859830210063455839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A046800 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297294.P1859830210063455839

/-! ## A297294.P7633491477784708580

`char[A064664(n+1)]*A011782(A046800(n+1))`
-/

namespace A297294.P7633491477784708580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A011782 (A046800 (n + 1)).toNat

end

end A297294.P7633491477784708580

/-! ## A297294.P4069299908096778829

`A000035(A058663(n+1))*A011782(A046800(n+1))`
-/

namespace A297294.P4069299908096778829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A058663 (n + 1)).toNat * A011782 (A046800 (n + 1)).toNat

end

end A297294.P4069299908096778829

/-! ## A297294.P12718090940363565037

`A011782(A046800(n+1))-A011782(n+1)%2`
-/

namespace A297294.P12718090940363565037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A046800 (n + 1)).toNat - Int.tmod (A011782 (n + 1)) 2

end

end A297294.P12718090940363565037

/-! ## A297294.P13349469125646002616

`A011782(A046800(n+1)%(n+1))%A011782(n+1)`
-/

namespace A297294.P13349469125646002616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (Int.tmod (A046800 (n + 1)) (n + 1 : ℤ)).toNat) (A011782 (n + 1))

end

end A297294.P13349469125646002616

/-! ## A297294.P6852861186655790142

`A004526(2^A046800(n+1))`
-/

namespace A297294.P6852861186655790142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A046800 (n + 1) : ℤ))).toNat

end

end A297294.P6852861186655790142

/-! ## A297294.P15834159625890517152

`A025480(2^A046800(n+1))`
-/

namespace A297294.P15834159625890517152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A046800 (n + 1) : ℤ))).toNat

end

end A297294.P15834159625890517152

/-! ## A297294.P15679483517132124647

`A051953(2^A046800(n+1))`
-/

namespace A297294.P15679483517132124647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A046800 (n + 1) : ℤ))).toNat

end

end A297294.P15679483517132124647

/-!
# A297295: Number of n X n 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1's.

The programs for A297295, there is no canonical definition to state claims against.
-/

/-! ## A297295.P12188098371277943715

`A297299((n+1)²+n²)`
-/

namespace A297295.P12188098371277943715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 ((n + 1) ^ 2 + n ^ 2)

end

end A297295.P12188098371277943715

/-! ## A297295.P6883944963773778787

`A297299(A001844(n))^A178334(n)`
-/

namespace A297295.P6883944963773778787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297299 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A297295.P6883944963773778787

/-! ## A297295.P3966947953302079874

`gcd(A000038(n), A297299(A001844(n)))`
-/

namespace A297295.P3966947953302079874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297299 (A001844 n).toNat)

end

end A297295.P3966947953302079874

/-! ## A297295.P17873657545392571327

`lcm(A033999(n), A297299(A001844(n)))`
-/

namespace A297295.P17873657545392571327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297299 (A001844 n).toNat)

end

end A297295.P17873657545392571327

/-! ## A297295.P4137770055432342731

`or(A000007(n), A297299(A001844(n)))`
-/

namespace A297295.P4137770055432342731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297299 (A001844 n).toNat)

end

end A297295.P4137770055432342731

/-!
# A297296: Number of n X 5 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297296, the canonical program `A297296.P11080276981444363042` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297296 has offset 1).

The definition of A297296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297296.P11080276981444363042

`2*a(n-1)+2*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=21, a(4)=49`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297296

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P11080276981444363042.Spec : Prop :=
  ∀ n, P11080276981444363042.a n = A297296 (n + 1)

theorem P11080276981444363042.correct : P11080276981444363042.Spec := by
  intro n
  simp only [A297296, Nat.add_sub_cancel]

end A297296

/-! ## A297296.P8171133819320637589

`A297299(Δ[A264443(n)])`
-/

namespace A297296.P8171133819320637589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (f1 (n + 1) - f1 n).toNat

end

end A297296.P8171133819320637589

namespace A297296

/-- `A297299(Δ[A264443(n)])` -/
def P8171133819320637589.Spec : Prop :=
  ∀ n, P8171133819320637589.a n = A297296 (n + 1)

end A297296

/-! ## A297296.P12787179747889810519

`A297299(A046691(n+3))`
-/

namespace A297296.P12787179747889810519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A046691 (n + 3)).toNat

end

end A297296.P12787179747889810519

namespace A297296

/-- `A297299(A046691(n+3))` -/
def P12787179747889810519.Spec : Prop :=
  ∀ n, P12787179747889810519.a n = A297296 (n + 1)

end A297296

/-! ## A297296.P10149535377374003453

`A297299(Δ[A023545(n+1)])`
-/

namespace A297296.P10149535377374003453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (f1 (n + 1) - f1 n).toNat

end

end A297296.P10149535377374003453

namespace A297296

/-- `A297299(Δ[A023545(n+1)])` -/
def P10149535377374003453.Spec : Prop :=
  ∀ n, P10149535377374003453.a n = A297296 (n + 1)

end A297296

/-! ## A297296.P7439983501832461842

`A297299(A000096(n+4)-3)`
-/

namespace A297296.P7439983501832461842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A000096 (n + 4) - 3).toNat

end

end A297296.P7439983501832461842

namespace A297296

/-- `A297299(A000096(n+4)-3)` -/
def P7439983501832461842.Spec : Prop :=
  ∀ n, P7439983501832461842.a n = A297296 (n + 1)

end A297296

/-!
# A297297: Number of nX6 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297297, there is no canonical definition to state claims against.
-/

/-! ## A297297.P5598382534738316635

`A297299(A052905(n+3))`
-/

namespace A297297.P5598382534738316635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A052905 (n + 3)).toNat

end

end A297297.P5598382534738316635

/-! ## A297297.P16965660689205328446

`A297299(Δ[A264443(n+1)]-1)`
-/

namespace A297297.P16965660689205328446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (f1 (n + 1) - f1 n - 1).toNat

end

end A297297.P16965660689205328446

/-! ## A297297.P216074960677577109

`A297299(Δ[A023545(n+2)]-1)`
-/

namespace A297297.P216074960677577109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (f1 (n + 1) - f1 n - 1).toNat

end

end A297297.P216074960677577109

/-! ## A297297.P9126766901718695722

`record[A297299(A052905(A002262(n)))]`
-/

namespace A297297.P9126766901718695722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A052905 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297297.P9126766901718695722

/-! ## A297297.P4383115645397404220

`record[A297299(A052905(A008611(n)))]`
-/

namespace A297297.P4383115645397404220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297297.P4383115645397404220

/-!
# A297298: Number of nX7 0..1 arrays with every 1 horizontally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297298, there is no canonical definition to state claims against.
-/

/-! ## A297298.P1494161741004123145

`A297299(A055999(n+4))`
-/

namespace A297298.P1494161741004123145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A055999 (n + 4)).toNat

end

end A297298.P1494161741004123145

/-! ## A297298.P2145875306733996327

`A297299(A000124(n+7)-7)`
-/

namespace A297298.P2145875306733996327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A000124 (n + 7) - 7).toNat

end

end A297298.P2145875306733996327

/-! ## A297298.P874455519373014697

`record[A297299(A055999(A052938(n)))]`
-/

namespace A297298.P874455519373014697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A055999 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297298.P874455519373014697

/-! ## A297298.P12026174755403492030

`record[A297299(A055999(A134478(n)))]`
-/

namespace A297298.P12026174755403492030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A055999 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297298.P12026174755403492030

/-! ## A297298.P5547042328371417752

`record[A297299(A055999(A304744(n)))]`
-/

namespace A297298.P5547042328371417752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297299 (A055999 (A304744 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297298.P5547042328371417752

