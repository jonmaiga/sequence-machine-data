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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A020500: Cyclotomic polynomials at x=1.

The programs for A020500, the canonical program `A020500.P15745458112770955771` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020500 has offset 1).

The definition of A020500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A020500.P15745458112770955771

`ceil(2*n/∏{p}[n+1, 2*n/#])`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020500

/-- `ceil(2*n/∏{p}[n+1, 2*n/#])` -/
def P15745458112770955771.Spec : Prop :=
  ∀ n, P15745458112770955771.a n = A020500 (n + 1)

theorem P15745458112770955771.correct : P15745458112770955771.Spec := by
  intro n
  simp only [A020500, Nat.add_sub_cancel]

end A020500

/-! ## A020500.P9287910514694012510

`1-A120112(n)`
-/

namespace A020500.P9287910514694012510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A120112 n

end

end A020500.P9287910514694012510

namespace A020500

/-- `1-A120112(n)` -/
def P9287910514694012510.Spec : Prop :=
  ∀ n, P9287910514694012510.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P11529459677078281157

`A014963(n+1)%Δ[n²]`
-/

namespace A020500.P11529459677078281157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A020500.P11529459677078281157

namespace A020500

/-- `A014963(n+1)%Δ[n²]` -/
def P11529459677078281157.Spec : Prop :=
  ∀ n, P11529459677078281157.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P445779566789831774

`Δ[A014963(n)+a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A020500.P445779566789831774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A014963 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020500.P445779566789831774

namespace A020500

/-- `Δ[A014963(n)+a(n-1)]` -/
def P445779566789831774.Spec : Prop :=
  ∀ n, P445779566789831774.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P3770601331623868599

`∏{d}[n+1, (n/#)^A008683(#)]`
-/

namespace A020500.P3770601331623868599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((n : ℚ) / (d : ℚ)) ^ (A008683 d : ℤ)

end

end A020500.P3770601331623868599

namespace A020500

/-- `∏{d}[n+1, (n/#)^A008683(#)]` -/
def P3770601331623868599.Spec : Prop :=
  ∀ n, P3770601331623868599.a n = (A020500 (n + 1) : ℚ)

end A020500

/-! ## A020500.P13269130269562980485

`A014963(lcm(n, a(n-1))+1)` with `a(0)=0, a(1)=2`
-/

namespace A020500.P13269130269562980485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A014963 (Int.lcm (n : ℤ) (a (n - 1)) + 1)

end

end A020500.P13269130269562980485

namespace A020500

/-- `A014963(lcm(n, a(n-1))+1)` -/
def P13269130269562980485.Spec : Prop :=
  ∀ n, P13269130269562980485.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P15267915078060297361

`A014963(a(and(2, n²))+n+1)` with `a(0)=0`
-/

namespace A020500.P15267915078060297361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014963 (a (Nat.land 2 (n ^ 2)) + (n + 1 : ℤ)).toNat

end

end A020500.P15267915078060297361

namespace A020500

/-- `A014963(a(and(2, n²))+n+1)` -/
def P15267915078060297361.Spec : Prop :=
  ∀ n, P15267915078060297361.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P9972855817165024574

`A014963(a(C(2, n+2))+n+1)` with `a(0)=0`
-/

namespace A020500.P9972855817165024574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014963 (a (Nat.choose 2 (n + 2)) + (n + 1 : ℤ)).toNat

end

end A020500.P9972855817165024574

namespace A020500

/-- `A014963(a(C(2, n+2))+n+1)` -/
def P9972855817165024574.Spec : Prop :=
  ∀ n, P9972855817165024574.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P14631699330965931000

`A014963(gcd(n, n*a(n-1))+1)` with `a(0)=0`
-/

namespace A020500.P14631699330965931000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014963 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)) + 1)

end

end A020500.P14631699330965931000

namespace A020500

/-- `A014963(gcd(n, n*a(n-1))+1)` -/
def P14631699330965931000.Spec : Prop :=
  ∀ n, P14631699330965931000.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P8559371616727033972

`A014963(n+1)-A000007(n)`
-/

namespace A020500.P8559371616727033972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - A000007 n

end

end A020500.P8559371616727033972

namespace A020500

/-- `A014963(n+1)-A000007(n)` -/
def P8559371616727033972.Spec : Prop :=
  ∀ n, P8559371616727033972.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P2488089083404766893

`A014963(n+1)*A057427(n)`
-/

namespace A020500.P2488089083404766893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A057427 n

end

end A020500.P2488089083404766893

namespace A020500

/-- `A014963(n+1)*A057427(n)` -/
def P2488089083404766893.Spec : Prop :=
  ∀ n, P2488089083404766893.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P13561671995821786722

`gcd(A131738(n), A182936(n+1))`
-/

namespace A020500.P13561671995821786722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A182936 (n + 1))

end

end A020500.P13561671995821786722

namespace A020500

/-- `gcd(A131738(n), A182936(n+1))` -/
def P13561671995821786722.Spec : Prop :=
  ∀ n, (P13561671995821786722.a n : ℤ) = A020500 (n + 1)

end A020500

/-! ## A020500.P14912393439276860075

`and(A014963(n+1), A057428(n))`
-/

namespace A020500.P14912393439276860075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (n + 1)) (A057428 n)

end

end A020500.P14912393439276860075

namespace A020500

/-- `and(A014963(n+1), A057428(n))` -/
def P14912393439276860075.Spec : Prop :=
  ∀ n, P14912393439276860075.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P7035765432559277659

`A182936(n+1)+A061397(n+1)`
-/

namespace A020500.P7035765432559277659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (n + 1) + A061397 (n + 1)

end

end A020500.P7035765432559277659

namespace A020500

/-- `A182936(n+1)+A061397(n+1)` -/
def P7035765432559277659.Spec : Prop :=
  ∀ n, P7035765432559277659.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P2183851206376297259

`gcd(A008472(n+1), A079872(n+1))`
-/

namespace A020500.P2183851206376297259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008472 (n + 1)) (A079872 (n + 1))

end

end A020500.P2183851206376297259

namespace A020500

/-- `gcd(A008472(n+1), A079872(n+1))` -/
def P2183851206376297259.Spec : Prop :=
  ∀ n, (P2183851206376297259.a n : ℤ) = A020500 (n + 1)

end A020500

/-! ## A020500.P11428120756061511025

`and(A014963(n+1), A084317(n+1))`
-/

namespace A020500.P11428120756061511025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (n + 1)) (A084317 (n + 1))

end

end A020500.P11428120756061511025

namespace A020500

/-- `and(A014963(n+1), A084317(n+1))` -/
def P11428120756061511025.Spec : Prop :=
  ∀ n, P11428120756061511025.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P10673722029203634905

`and(A014963(n+1), A111089(n+1))`
-/

namespace A020500.P10673722029203634905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (n + 1)) (A111089 (n + 1))

end

end A020500.P10673722029203634905

namespace A020500

/-- `and(A014963(n+1), A111089(n+1))` -/
def P10673722029203634905.Spec : Prop :=
  ∀ n, P10673722029203634905.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P14277632525318110079

`and(A014963(n+1), A256267(n+1))`
-/

namespace A020500.P14277632525318110079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (n + 1)) (A256267 (n + 1))

end

end A020500.P14277632525318110079

namespace A020500

/-- `and(A014963(n+1), A256267(n+1))` -/
def P14277632525318110079.Spec : Prop :=
  ∀ n, P14277632525318110079.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P9617765182056506655

`and(A014963(n+1), A280990(n+1))`
-/

namespace A020500.P9617765182056506655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (n + 1)) (A280990 (n + 1))

end

end A020500.P9617765182056506655

namespace A020500

/-- `and(A014963(n+1), A280990(n+1))` -/
def P9617765182056506655.Spec : Prop :=
  ∀ n, P9617765182056506655.a n = A020500 (n + 1)

end A020500

/-! ## A020500.P18086154865513959897

`and(A014963(n+1), A318884(n+1))`
-/

namespace A020500.P18086154865513959897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (n + 1)) (A318884 (n + 1))

end

end A020500.P18086154865513959897

namespace A020500

/-- `and(A014963(n+1), A318884(n+1))` -/
def P18086154865513959897.Spec : Prop :=
  ∀ n, P18086154865513959897.a n = A020500 (n + 1)

end A020500

/-!
# A020501: Cyclotomic polynomials at x=-2.

The programs for A020501, there is no canonical definition to state claims against.
-/

/-! ## A020501.P10605604701609222176

`A065366(A019321(n))`
-/

namespace A020501.P10605604701609222176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065366 (A019321 n).toNat

end

end A020501.P10605604701609222176

/-!
# A020502: Cyclotomic polynomials at x=-3.

The programs for A020502, there is no canonical definition to state claims against.
-/

/-! ## A020502.P7610731659045156797

`A065367(A019321(n))`
-/

namespace A020502.P7610731659045156797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065367 (A019321 n).toNat

end

end A020502.P7610731659045156797

/-!
# A020513: Cyclotomic polynomials evaluated at x=-1.

The programs for A020513, there is no canonical definition to state claims against.
-/

/-! ## A020513.P6813446063483503895

`A020512(n)%A006464(A126646(n))`
-/

namespace A020513.P6813446063483503895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020512 n) (A006464 (A126646 n).toNat)

end

end A020513.P6813446063483503895

/-! ## A020513.P847490592870743717

`A020506(A004918(n+1))%6`
-/

namespace A020513.P847490592870743717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020506 (A004918 (n + 1)).toNat) 6

end

end A020513.P847490592870743717

/-! ## A020513.P4579874983797276232

`A020506(n)%A001222(A030633(3*n+4))`
-/

namespace A020513.P4579874983797276232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020506 n) (A001222 (A030633 (3 * n + 4)).toNat)

end

end A020513.P4579874983797276232

/-! ## A020513.P13860765325376904747

`abs(A056594(2*(n+1)))*A020512(A004918(n+1))%6`
-/

namespace A020513.P13860765325376904747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056594 (2 * (n + 1))| * Int.tmod (A020512 (A004918 (n + 1)).toNat) 6

end

end A020513.P13860765325376904747

/-! ## A020513.P2932681704698557009

`A056594(A126646(n))+A020512(A004918(n+1))%6`
-/

namespace A020513.P2932681704698557009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A126646 n).toNat + Int.tmod (A020512 (A004918 (n + 1)).toNat) 6

end

end A020513.P2932681704698557009

/-!
# A020514: a(n) = 1^n + 2^n + 4^n + 8^n + 16^n.

The programs for A020514, there is no canonical definition to state claims against.
-/

/-! ## A020514.P17921885982748853542

`∑{d}[-a(n-1), #^n]` with `a(0)=16`
-/

namespace A020514.P17921885982748853542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A020514.P17921885982748853542

/-! ## A020514.P18238593940811915332

`1+2^n+4^n+8^n+16^n`
-/

namespace A020514.P18238593940811915332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 4 ^ n + 8 ^ n + 16 ^ n

end

end A020514.P18238593940811915332

/-! ## A020514.P5743897039479940362

`or(16^n, A034496(n))`
-/

namespace A020514.P5743897039479940362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (16 ^ n : ℤ) (A034496 n)

end

end A020514.P5743897039479940362

/-! ## A020514.P12445356559550066843

`or(A020515(n)*A028400(n), A000302(n))`
-/

namespace A020514.P12445356559550066843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020515 n * A028400 n) (A000302 n)

end

end A020514.P12445356559550066843

/-! ## A020514.P178236437097132233

`A034668(n)/(3^n+1)`
-/

namespace A020514.P178236437097132233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034668 n : ℚ) / (3 ^ n + 1 : ℚ)

end

end A020514.P178236437097132233

/-! ## A020514.P7789102436200018725

`floor(A034668(n)/A034472(n))`
-/

namespace A020514.P7789102436200018725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034668 n : ℚ) / (A034472 n : ℚ)⌋

end

end A020514.P7789102436200018725

/-!
# A020515: a(n) = 4^n - 2^n + 1.

The programs for A020515, the canonical program `A020515.P9986950794544563724` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020515 has offset 0).

The definition of A020515 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2^n+1` (program `A020515.P9986950794544563724`, by `A020515.P9986950794544563724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020515.P9986950794544563724

`4^n-2^n+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020515

/-- `4^n-2^n+1` -/
def P9986950794544563724.Spec : Prop :=
  ∀ n, P9986950794544563724.a n = A020515 n

theorem P9986950794544563724.correct : P9986950794544563724.Spec := by
  intro n
  simp only [A020515]

end A020515

/-! ## A020515.P12156182659008200360

`A002061(A000079(n))`
-/

namespace A020515.P12156182659008200360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000079 n).toNat

end

end A020515.P12156182659008200360

namespace A020515

/-- `A002061(A000079(n))` -/
def P12156182659008200360.Spec : Prop :=
  ∀ n, P12156182659008200360.a n = A020515 n

end A020515

/-! ## A020515.P565761306090625344

`or(1, 4^n-2^n)`
-/

namespace A020515.P565761306090625344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((4 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A020515.P565761306090625344

namespace A020515

/-- `or(1, 4^n-2^n)` -/
def P565761306090625344.Spec : Prop :=
  ∀ n, P565761306090625344.a n = A020515 n

end A020515

/-! ## A020515.P14743104248493601425

`xor(1, 4^n-2^n)`
-/

namespace A020515.P14743104248493601425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((4 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A020515.P14743104248493601425

namespace A020515

/-- `xor(1, 4^n-2^n)` -/
def P14743104248493601425.Spec : Prop :=
  ∀ n, P14743104248493601425.a n = A020515 n

end A020515

/-! ## A020515.P15238507789939330253

`record[or(1, A279879(n))]`
-/

namespace A020515.P15238507789939330253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A279879 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020515.P15238507789939330253

namespace A020515

/-- `record[or(1, A279879(n))]` -/
def P15238507789939330253.Spec : Prop :=
  ∀ n, P15238507789939330253.a n = A020515 n

end A020515

/-! ## A020515.P4177350546206541040

`A064386(A008486(n))`
-/

namespace A020515.P4177350546206541040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064386 (A008486 n).toNat

end

end A020515.P4177350546206541040

namespace A020515

/-- `A064386(A008486(n))` -/
def P4177350546206541040.Spec : Prop :=
  ∀ n, P4177350546206541040.a n = A020515 n

end A020515

/-! ## A020515.P4685537221805983841

`A370425(A054519(n))`
-/

namespace A020515.P4685537221805983841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370425 (A054519 n).toNat

end

end A020515.P4685537221805983841

namespace A020515

/-- `A370425(A054519(n))` -/
def P4685537221805983841.Spec : Prop :=
  ∀ n, P4685537221805983841.a n = A020515 n

end A020515

/-! ## A020515.P1155550479141721122

`(A092440(n)+1)/2`
-/

namespace A020515.P1155550479141721122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092440 n + 1 : ℚ) / 2

end

end A020515.P1155550479141721122

namespace A020515

/-- `(A092440(n)+1)/2` -/
def P1155550479141721122.Spec : Prop :=
  ∀ n, P1155550479141721122.a n = (A020515 n : ℚ)

end A020515

/-! ## A020515.P6013941417418885069

`(A169726(n)+2)/3`
-/

namespace A020515.P6013941417418885069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169726 n + 2 : ℚ) / 3

end

end A020515.P6013941417418885069

namespace A020515

/-- `(A169726(n)+2)/3` -/
def P6013941417418885069.Spec : Prop :=
  ∀ n, P6013941417418885069.a n = (A020515 n : ℚ)

end A020515

/-! ## A020515.P4003478428702628858

`A208900(Δ[n²])/2`
-/

namespace A020515.P4003478428702628858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A020515.P4003478428702628858

namespace A020515

/-- `A208900(Δ[n²])/2` -/
def P4003478428702628858.Spec : Prop :=
  ∀ n, P4003478428702628858.a n = (A020515 n : ℚ)

end A020515

/-! ## A020515.P7153851653402943908

`(A191341(n+1)+1)/4`
-/

namespace A020515.P7153851653402943908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191341 (n + 1) + 1 : ℚ) / 4

end

end A020515.P7153851653402943908

namespace A020515

/-- `(A191341(n+1)+1)/4` -/
def P7153851653402943908.Spec : Prop :=
  ∀ n, P7153851653402943908.a n = (A020515 n : ℚ)

end A020515

/-! ## A020515.P13626412136568110772

`(A060867(n+1)+3)/4`
-/

namespace A020515.P13626412136568110772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060867 (n + 1) + 3 : ℚ) / 4

end

end A020515.P13626412136568110772

namespace A020515

/-- `(A060867(n+1)+3)/4` -/
def P13626412136568110772.Spec : Prop :=
  ∀ n, P13626412136568110772.a n = (A020515 n : ℚ)

end A020515

/-! ## A020515.P677688890183808994

`(A093112(n+1)+5)/4`
-/

namespace A020515.P677688890183808994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093112 (n + 1) + 5 : ℚ) / 4

end

end A020515.P677688890183808994

namespace A020515

/-- `(A093112(n+1)+5)/4` -/
def P677688890183808994.Spec : Prop :=
  ∀ n, P677688890183808994.a n = (A020515 n : ℚ)

end A020515

/-! ## A020515.P9749869833289587355

`A087289(n)%A161168(n)`
-/

namespace A020515.P9749869833289587355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087289 n) (A161168 n)

end

end A020515.P9749869833289587355

namespace A020515

/-- `A087289(n)%A161168(n)` -/
def P9749869833289587355.Spec : Prop :=
  ∀ n, P9749869833289587355.a n = A020515 n

end A020515

/-! ## A020515.P15440337353995208473

`A283070(n)%A001576(n)`
-/

namespace A020515.P15440337353995208473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283070 n) (A001576 n)

end

end A020515.P15440337353995208473

namespace A020515

/-- `A283070(n)%A001576(n)` -/
def P15440337353995208473.Spec : Prop :=
  ∀ n, P15440337353995208473.a n = A020515 n

end A020515

/-! ## A020515.P512111141813911816

`A188161(n)%A170938(n)`
-/

namespace A020515.P512111141813911816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188161 n) (A170938 n)

end

end A020515.P512111141813911816

namespace A020515

/-- `A188161(n)%A170938(n)` -/
def P512111141813911816.Spec : Prop :=
  ∀ n, P512111141813911816.a n = A020515 n

end A020515

/-! ## A020515.P4664763544474668348

`A171499(n)%A198693(n)`
-/

namespace A020515.P4664763544474668348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171499 n) (A198693 n)

end

end A020515.P4664763544474668348

namespace A020515

/-- `A171499(n)%A198693(n)` -/
def P4664763544474668348.Spec : Prop :=
  ∀ n, P4664763544474668348.a n = A020515 n

end A020515

/-! ## A020515.P17264140498698050961

`A164346(n)%A092431(n+1)`
-/

namespace A020515.P17264140498698050961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164346 n) (A092431 (n + 1))

end

end A020515.P17264140498698050961

namespace A020515

/-- `A164346(n)%A092431(n+1)` -/
def P17264140498698050961.Spec : Prop :=
  ∀ n, P17264140498698050961.a n = A020515 n

end A020515

/-! ## A020515.P9362353946983065493

`A297928(n)%A290718(n+1)`
-/

namespace A020515.P9362353946983065493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297928 n) (A290718 (n + 1))

end

end A020515.P9362353946983065493

namespace A020515

/-- `A297928(n)%A290718(n+1)` -/
def P9362353946983065493.Spec : Prop :=
  ∀ n, P9362353946983065493.a n = A020515 n

end A020515

/-!
# A020516: Sum of n-th powers of divisors of 64.

The programs for A020516, there is no canonical definition to state claims against.
-/

/-! ## A020516.P15222619723795648424

`1+2^n+4^n+8^n+16^n+32^n+64^n`
-/

namespace A020516.P15222619723795648424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 ^ n + 4 ^ n + 8 ^ n + 16 ^ n + 32 ^ n + 64 ^ n

end

end A020516.P15222619723795648424

/-! ## A020516.P14530198567279418817

`(A034674(n)-1)/2^n`
-/

namespace A020516.P14530198567279418817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034674 n - 1 : ℚ) / (2 ^ n : ℚ)

end

end A020516.P14530198567279418817

/-! ## A020516.P7846849268656332259

`A053716(2^n)`
-/

namespace A020516.P7846849268656332259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (2 ^ n)

end

end A020516.P7846849268656332259

/-! ## A020516.P2271069799672922940

`record[A053716(A059268(n))]`
-/

namespace A020516.P2271069799672922940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020516.P2271069799672922940

/-! ## A020516.P11547522309058067535

`record[A053716(A307433(n))]`
-/

namespace A020516.P11547522309058067535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A307433 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020516.P11547522309058067535

/-!
# A020517: 9th cyclotomic polynomial evaluated at powers of 2.

The programs for A020517, the canonical program `A020517.P5044514784341682407` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020517 has offset 0).

The definition of A020517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020517.P5044514784341682407

`1+8^n+64^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020517

/-- `1+8^n+64^n` -/
def P5044514784341682407.Spec : Prop :=
  ∀ n, (P5044514784341682407.a n : ℤ) = A020517 n

theorem P5044514784341682407.correct : P5044514784341682407.Spec := by
  intro n
  simp only [A020517]

end A020517

/-! ## A020517.P2319277056316214296

`A001576(3*n)`
-/

namespace A020517.P2319277056316214296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 (3 * n)

end

end A020517.P2319277056316214296

namespace A020517

/-- `A001576(3*n)` -/
def P2319277056316214296.Spec : Prop :=
  ∀ n, P2319277056316214296.a n = A020517 n

end A020517

/-! ## A020517.P14873741190436415251

`round(A085601(3*n)/2)`
-/

namespace A020517.P14873741190436415251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085601 (3 * n) : ℚ) / 2)

end

end A020517.P14873741190436415251

namespace A020517

/-- `round(A085601(3*n)/2)` -/
def P14873741190436415251.Spec : Prop :=
  ∀ n, P14873741190436415251.a n = A020517 n

end A020517

/-! ## A020517.P17738533874150603746

`ceil(ceil(A000051(3*n+1)²/2)/2)`
-/

namespace A020517.P17738533874150603746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A000051 (3 * n + 1) ^ 2 : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A020517.P17738533874150603746

namespace A020517

/-- `ceil(ceil(A000051(3*n+1)²/2)/2)` -/
def P17738533874150603746.Spec : Prop :=
  ∀ n, P17738533874150603746.a n = A020517 n

end A020517

/-! ## A020517.P9343317149982265425

`xor(sqrt(A089357(n)), A052539(3*n))`
-/

namespace A020517.P9343317149982265425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.sqrt (A089357 n : ℝ))) (A052539 (3 * n))

end

end A020517.P9343317149982265425

namespace A020517

/-- `xor(sqrt(A089357(n)), A052539(3*n))` -/
def P9343317149982265425.Spec : Prop :=
  ∀ n, P9343317149982265425.a n = A020517 n

end A020517

/-! ## A020517.P12161795952273329692

`or(A052539(3*n), A131577(3*n+1))`
-/

namespace A020517.P12161795952273329692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052539 (3 * n)) (A131577 (3 * n + 1))

end

end A020517.P12161795952273329692

namespace A020517

/-- `or(A052539(3*n), A131577(3*n+1))` -/
def P12161795952273329692.Spec : Prop :=
  ∀ n, P12161795952273329692.a n = A020517 n

end A020517

/-!
# A020518: 10th cyclotomic polynomial evaluated at powers of 2.

The programs for A020518, the canonical program `A020518.P5655041485655133344` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020518 has offset 0).

The definition of A020518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020518.P5655041485655133344

`1-2^n+4^n-8^n+16^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020518

/-- `1-2^n+4^n-8^n+16^n` -/
def P5655041485655133344.Spec : Prop :=
  ∀ n, P5655041485655133344.a n = A020518 n

theorem P5655041485655133344.correct : P5655041485655133344.Spec := by
  intro n
  simp only [A020518]

end A020518

/-! ## A020518.P17832758781966808220

`A060884(A000079(n))`
-/

namespace A020518.P17832758781966808220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (A000079 n).toNat

end

end A020518.P17832758781966808220

namespace A020518

/-- `A060884(A000079(n))` -/
def P17832758781966808220.Spec : Prop :=
  ∀ n, P17832758781966808220.a n = A020518 n

end A020518

/-! ## A020518.P3671080531538431268

`xor(1, (2^n+8^n)*(2^n-1))`
-/

namespace A020518.P3671080531538431268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 ^ n + 8 ^ n : ℤ) * ((2 ^ n : ℤ) - 1))

end

end A020518.P3671080531538431268

namespace A020518

/-- `xor(1, (2^n+8^n)*(2^n-1))` -/
def P3671080531538431268.Spec : Prop :=
  ∀ n, P3671080531538431268.a n = A020518 n

end A020518

/-! ## A020518.P15874795819804337810

`ceil(A009976(n)/A000051(n))`
-/

namespace A020518.P15874795819804337810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A009976 n : ℚ) / (A000051 n : ℚ)⌉

end

end A020518.P15874795819804337810

namespace A020518

/-- `ceil(A009976(n)/A000051(n))` -/
def P15874795819804337810.Spec : Prop :=
  ∀ n, P15874795819804337810.a n = A020518 n

end A020518

/-! ## A020518.P3922772376463996161

`A000051(5*n)/A000051(n)`
-/

namespace A020518.P3922772376463996161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 (5 * n) : ℚ) / (A000051 n : ℚ)

end

end A020518.P3922772376463996161

namespace A020518

/-- `A000051(5*n)/A000051(n)` -/
def P3922772376463996161.Spec : Prop :=
  ∀ n, P3922772376463996161.a n = (A020518 n : ℚ)

end A020518

/-! ## A020518.P14345450218487478220

`A083318(5*n)/A083318(n)`
-/

namespace A020518.P14345450218487478220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083318 (5 * n) : ℚ) / (A083318 n : ℚ)

end

end A020518.P14345450218487478220

namespace A020518

/-- `A083318(5*n)/A083318(n)` -/
def P14345450218487478220.Spec : Prop :=
  ∀ n, P14345450218487478220.a n = (A020518 n : ℚ)

end A020518

/-!
# A020519: 11th cyclotomic polynomial evaluated at powers of 2.

The programs for A020519, the canonical program `A020519.P6741495826422938013` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020519 has offset 0).

The definition of A020519 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060885, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A020519.P6741495826422938013

`A060885(A000079(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A020519

/-- `A060885(A000079(n))` -/
def P6741495826422938013.Spec : Prop :=
  ∀ n, P6741495826422938013.a n = A020519 n

theorem P6741495826422938013.correct : P6741495826422938013.Spec := by
  intro n
  simp only [A020519]

end A020519

/-! ## A020519.P17695009060827619765

`A060885(2^n)`
-/

namespace A020519.P17695009060827619765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 (2 ^ n)

end

end A020519.P17695009060827619765

namespace A020519

/-- `A060885(2^n)` -/
def P17695009060827619765.Spec : Prop :=
  ∀ n, P17695009060827619765.a n = A020519 n

end A020519

/-! ## A020519.P11229370956145332136

`A228294(2^n)+1`
-/

namespace A020519.P11229370956145332136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228294 (2 ^ n) + 1

end

end A020519.P11229370956145332136

namespace A020519

/-- `A228294(2^n)+1` -/
def P11229370956145332136.Spec : Prop :=
  ∀ n, P11229370956145332136.a n = A020519 n

end A020519

/-!
# A020520: 12th cyclotomic polynomial evaluated at powers of 2.

The programs for A020520, the canonical program `A020520.P6546243196613924140` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020520 has offset 0).

The definition of A020520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020520.P6546243196613924140

`1-4^n+16^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020520

/-- `1-4^n+16^n` -/
def P6546243196613924140.Spec : Prop :=
  ∀ n, P6546243196613924140.a n = A020520 n

theorem P6546243196613924140.correct : P6546243196613924140.Spec := by
  intro n
  simp only [A020520]

end A020520

/-! ## A020520.P3079971018872859248

`or((1-4^n)², 4^n)`
-/

namespace A020520.P3079971018872859248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((1 - (4 ^ n : ℤ)) ^ 2) (4 ^ n : ℤ)

end

end A020520.P3079971018872859248

namespace A020520

/-- `or((1-4^n)², 4^n)` -/
def P3079971018872859248.Spec : Prop :=
  ∀ n, P3079971018872859248.a n = A020520 n

end A020520

/-! ## A020520.P12343681103420777224

`xor((1-4^n)², 4^n)`
-/

namespace A020520.P12343681103420777224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((1 - (4 ^ n : ℤ)) ^ 2) (4 ^ n : ℤ)

end

end A020520.P12343681103420777224

namespace A020520

/-- `xor((1-4^n)², 4^n)` -/
def P12343681103420777224.Spec : Prop :=
  ∀ n, P12343681103420777224.a n = A020520 n

end A020520

/-! ## A020520.P3285704526529685870

`A020515(2*n)`
-/

namespace A020520.P3285704526529685870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020515 (2 * n)

end

end A020520.P3285704526529685870

namespace A020520

/-- `A020515(2*n)` -/
def P3285704526529685870.Spec : Prop :=
  ∀ n, P3285704526529685870.a n = A020520 n

end A020520

/-! ## A020520.P13542551331291666314

`A064386(A008458(n))`
-/

namespace A020520.P13542551331291666314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064386 (A008458 n).toNat

end

end A020520.P13542551331291666314

namespace A020520

/-- `A064386(A008458(n))` -/
def P13542551331291666314.Spec : Prop :=
  ∀ n, P13542551331291666314.a n = A020520 n

end A020520

/-! ## A020520.P1486997477998175778

`A370425(A099055(n))`
-/

namespace A020520.P1486997477998175778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370425 (A099055 n).toNat

end

end A020520.P1486997477998175778

namespace A020520

/-- `A370425(A099055(n))` -/
def P1486997477998175778.Spec : Prop :=
  ∀ n, P1486997477998175778.a n = A020520 n

end A020520

/-! ## A020520.P301539156386588518

`record[A020515(A014681(n))]`
-/

namespace A020520.P301539156386588518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020515 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020520.P301539156386588518

namespace A020520

/-- `record[A020515(A014681(n))]` -/
def P301539156386588518.Spec : Prop :=
  ∀ n, P301539156386588518.a n = A020520 n

end A020520

/-! ## A020520.P3671966249808414213

`record[A020515(n)/A033999(n)]`
-/

namespace A020520.P3671966249808414213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020515 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020520.P3671966249808414213

namespace A020520

/-- `record[A020515(n)/A033999(n)]` -/
def P3671966249808414213.Spec : Prop :=
  ∀ n, P3671966249808414213.a n = (A020520 n : ℚ)

end A020520

/-! ## A020520.P12145278042851137623

`(A092440(2*n)+1)/2`
-/

namespace A020520.P12145278042851137623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092440 (2 * n) + 1 : ℚ) / 2

end

end A020520.P12145278042851137623

namespace A020520

/-- `(A092440(2*n)+1)/2` -/
def P12145278042851137623.Spec : Prop :=
  ∀ n, P12145278042851137623.a n = (A020520 n : ℚ)

end A020520

/-! ## A020520.P6791488688764528806

`(A188161(2*n)-A048578(2*n))/2`
-/

namespace A020520.P6791488688764528806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188161 (2 * n) - A048578 (2 * n) : ℚ) / 2

end

end A020520.P6791488688764528806

namespace A020520

/-- `(A188161(2*n)-A048578(2*n))/2` -/
def P6791488688764528806.Spec : Prop :=
  ∀ n, P6791488688764528806.a n = (A020520 n : ℚ)

end A020520

/-!
# A020521: 13th cyclotomic polynomial evaluated at powers of 2.

The programs for A020521, the canonical program `A020521.P17693955101248883378` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020521 has offset 0).

The definition of A020521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060887, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A020521.P17693955101248883378

`A060887(A000079(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A020521

/-- `A060887(A000079(n))` -/
def P17693955101248883378.Spec : Prop :=
  ∀ n, P17693955101248883378.a n = A020521 n

theorem P17693955101248883378.correct : P17693955101248883378.Spec := by
  intro n
  simp only [A020521]

end A020521

/-! ## A020521.P6453380456299789758

`A060887(2^n)`
-/

namespace A020521.P6453380456299789758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060887 (2 ^ n)

end

end A020521.P6453380456299789758

namespace A020521

/-- `A060887(2^n)` -/
def P6453380456299789758.Spec : Prop :=
  ∀ n, P6453380456299789758.a n = A020521 n

end A020521

/-!
# A020522: a(n) = 4^n - 2^n.

The programs for A020522, the canonical program `A020522.P10227953348410881457` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020522 has offset 0).

The definition of A020522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2^n` (program `A020522.P10227953348410881457`, by `A020522.P10227953348410881457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020522.P10227953348410881457

`4^n-2^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020522

/-- `4^n-2^n` -/
def P10227953348410881457.Spec : Prop :=
  ∀ n, P10227953348410881457.a n = A020522 n

theorem P10227953348410881457.correct : P10227953348410881457.Spec := by
  intro n
  simp only [A020522]

end A020522

/-! ## A020522.P4873064153654280376

`2*A006516(n)`
-/

namespace A020522.P4873064153654280376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006516 n

end

end A020522.P4873064153654280376

namespace A020522

/-- `2*A006516(n)` -/
def P4873064153654280376.Spec : Prop :=
  ∀ n, P4873064153654280376.a n = A020522 n

end A020522

/-! ## A020522.P10888543899014785528

`A000079(n)*A000225(n)`
-/

namespace A020522.P10888543899014785528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000225 n

end

end A020522.P10888543899014785528

namespace A020522

/-- `A000079(n)*A000225(n)` -/
def P10888543899014785528.Spec : Prop :=
  ∀ n, P10888543899014785528.a n = A020522 n

end A020522

/-! ## A020522.P1141867105633138080

`A265736(A000225(n))`
-/

namespace A020522.P1141867105633138080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265736 (A000225 n).toNat

end

end A020522.P1141867105633138080

namespace A020522

/-- `A265736(A000225(n))` -/
def P1141867105633138080.Spec : Prop :=
  ∀ n, P1141867105633138080.a n = A020522 n

end A020522

/-! ## A020522.P2152092074118696753

`2*A137173(2*n)`
-/

namespace A020522.P2152092074118696753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137173 (2 * n)

end

end A020522.P2152092074118696753

namespace A020522

/-- `2*A137173(2*n)` -/
def P2152092074118696753.Spec : Prop :=
  ∀ n, P2152092074118696753.a n = A020522 n

end A020522

/-!
# A020523: a(n) = 3rd Euler polynomial evaluated at 2^n and multiplied by 4.

The programs for A020523, the canonical program `A020523.P3680637236288114178` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020523 has offset 0).

The definition of A020523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020523.P3680637236288114178

`4*8^n-6*4^n+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020523

/-- `4*8^n-6*4^n+1` -/
def P3680637236288114178.Spec : Prop :=
  ∀ n, P3680637236288114178.a n = A020523 n

theorem P3680637236288114178.correct : P3680637236288114178.Spec := by
  intro n
  simp only [A020523]

end A020523

/-! ## A020523.P12712359706128015140

`(A092440(n)-2)*A126646(n)`
-/

namespace A020523.P12712359706128015140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092440 n - 2) * A126646 n

end

end A020523.P12712359706128015140

namespace A020523

/-- `(A092440(n)-2)*A126646(n)` -/
def P12712359706128015140.Spec : Prop :=
  ∀ n, P12712359706128015140.a n = A020523 n

end A020523

/-! ## A020523.P6110832864345031907

`(A092440(n)-2)*A000225(n+1)`
-/

namespace A020523.P6110832864345031907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092440 n - 2) * A000225 (n + 1)

end

end A020523.P6110832864345031907

namespace A020523

/-- `(A092440(n)-2)*A000225(n+1)` -/
def P6110832864345031907.Spec : Prop :=
  ∀ n, P6110832864345031907.a n = A020523 n

end A020523

/-! ## A020523.P4286509080176858890

`(4*A006516(n)-1)*A000225(n+1)`
-/

namespace A020523.P4286509080176858890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A006516 n - 1) * A000225 (n + 1)

end

end A020523.P4286509080176858890

namespace A020523

/-- `(4*A006516(n)-1)*A000225(n+1)` -/
def P4286509080176858890.Spec : Prop :=
  ∀ n, P4286509080176858890.a n = A020523 n

end A020523

/-! ## A020523.P532688510096977306

`(A208901(2*n+1)-1)*A097110(2*n)`
-/

namespace A020523.P532688510096977306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A208901 (2 * n + 1) - 1) * A097110 (2 * n)

end

end A020523.P532688510096977306

namespace A020523

/-- `(A208901(2*n+1)-1)*A097110(2*n)` -/
def P532688510096977306.Spec : Prop :=
  ∀ n, P532688510096977306.a n = A020523 n

end A020523

/-! ## A020523.P7469560494857459150

`(A233411(2*n+1)-1)*A279880(2*n+1)`
-/

namespace A020523.P7469560494857459150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233411 (2 * n + 1) - 1) * A279880 (2 * n + 1)

end

end A020523.P7469560494857459150

namespace A020523

/-- `(A233411(2*n+1)-1)*A279880(2*n+1)` -/
def P7469560494857459150.Spec : Prop :=
  ∀ n, P7469560494857459150.a n = A020523 n

end A020523

/-! ## A020523.P5783991573833932830

`(A156589(n)+A020522(n))*A126646(n)`
-/

namespace A020523.P5783991573833932830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156589 n + A020522 n) * A126646 n

end

end A020523.P5783991573833932830

namespace A020523

/-- `(A156589(n)+A020522(n))*A126646(n)` -/
def P5783991573833932830.Spec : Prop :=
  ∀ n, P5783991573833932830.a n = A020523 n

end A020523

/-! ## A020523.P11256693719194565612

`(A002446(n)-A126646(n))*A126646(n)`
-/

namespace A020523.P11256693719194565612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002446 n - A126646 n) * A126646 n

end

end A020523.P11256693719194565612

namespace A020523

/-- `(A002446(n)-A126646(n))*A126646(n)` -/
def P11256693719194565612.Spec : Prop :=
  ∀ n, P11256693719194565612.a n = A020523 n

end A020523

/-! ## A020523.P8812572259119365009

`(A126646(n)-A000038(n))*A267816(n)`
-/

namespace A020523.P8812572259119365009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126646 n - A000038 n) * A267816 n

end

end A020523.P8812572259119365009

namespace A020523

/-- `(A126646(n)-A000038(n))*A267816(n)` -/
def P8812572259119365009.Spec : Prop :=
  ∀ n, P8812572259119365009.a n = A020523 n

end A020523

/-! ## A020523.P592321306856017434

`(A002446(n)-A000225(n+1))*A000225(n+1)`
-/

namespace A020523.P592321306856017434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002446 n - A000225 (n + 1)) * A000225 (n + 1)

end

end A020523.P592321306856017434

namespace A020523

/-- `(A002446(n)-A000225(n+1))*A000225(n+1)` -/
def P592321306856017434.Spec : Prop :=
  ∀ n, P592321306856017434.a n = A020523 n

end A020523

/-! ## A020523.P8739034284622023775

`(A083420(n)-A000079(n+1))*A000225(n+1)`
-/

namespace A020523.P8739034284622023775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083420 n - A000079 (n + 1)) * A000225 (n + 1)

end

end A020523.P8739034284622023775

namespace A020523

/-- `(A083420(n)-A000079(n+1))*A000225(n+1)` -/
def P8739034284622023775.Spec : Prop :=
  ∀ n, P8739034284622023775.a n = A020523 n

end A020523

/-! ## A020523.P11059098476560990866

`(A101622(2*n)-A000225(n+1))*A000225(n+1)`
-/

namespace A020523.P11059098476560990866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101622 (2 * n) - A000225 (n + 1)) * A000225 (n + 1)

end

end A020523.P11059098476560990866

namespace A020523

/-- `(A101622(2*n)-A000225(n+1))*A000225(n+1)` -/
def P11059098476560990866.Spec : Prop :=
  ∀ n, P11059098476560990866.a n = A020523 n

end A020523

/-! ## A020523.P13735483680819839726

`(A000225(2*n+1)-A000079(n+1))*A000225(n+1)`
-/

namespace A020523.P13735483680819839726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (2 * n + 1) - A000079 (n + 1)) * A000225 (n + 1)

end

end A020523.P13735483680819839726

namespace A020523

/-- `(A000225(2*n+1)-A000079(n+1))*A000225(n+1)` -/
def P13735483680819839726.Spec : Prop :=
  ∀ n, P13735483680819839726.a n = A020523 n

end A020523

/-! ## A020523.P16426635361915179652

`(A000918(2*n+1)-A000225(n+1))*A000225(n+1)`
-/

namespace A020523.P16426635361915179652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 (2 * n + 1) - A000225 (n + 1)) * A000225 (n + 1)

end

end A020523.P16426635361915179652

namespace A020523

/-- `(A000918(2*n+1)-A000225(n+1))*A000225(n+1)` -/
def P16426635361915179652.Spec : Prop :=
  ∀ n, P16426635361915179652.a n = A020523 n

end A020523

/-! ## A020523.P726764783468065652

`(A000225(2*n+1)-A155559(n+1))*A000225(n+1)`
-/

namespace A020523.P726764783468065652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (2 * n + 1) - A155559 (n + 1)) * A000225 (n + 1)

end

end A020523.P726764783468065652

namespace A020523

/-- `(A000225(2*n+1)-A155559(n+1))*A000225(n+1)` -/
def P726764783468065652.Spec : Prop :=
  ∀ n, P726764783468065652.a n = A020523 n

end A020523

/-! ## A020523.P4121623365493446960

`(A255047(2*n+1)-A000079(n+1))*A255047(n+1)`
-/

namespace A020523.P4121623365493446960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255047 (2 * n + 1) - A000079 (n + 1)) * A255047 (n + 1)

end

end A020523.P4121623365493446960

namespace A020523

/-- `(A255047(2*n+1)-A000079(n+1))*A255047(n+1)` -/
def P4121623365493446960.Spec : Prop :=
  ∀ n, P4121623365493446960.a n = A020523 n

end A020523

/-! ## A020523.P10595752189407178699

`(A000918(2*n+1)-A052955(2*n))*A052955(2*n)`
-/

namespace A020523.P10595752189407178699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 (2 * n + 1) - A052955 (2 * n)) * A052955 (2 * n)

end

end A020523.P10595752189407178699

namespace A020523

/-- `(A000918(2*n+1)-A052955(2*n))*A052955(2*n)` -/
def P10595752189407178699.Spec : Prop :=
  ∀ n, P10595752189407178699.a n = A020523 n

end A020523

/-! ## A020523.P2980584489555835051

`(A000918(2*n+1)-A075427(2*n))*A075427(2*n)`
-/

namespace A020523.P2980584489555835051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 (2 * n + 1) - A075427 (2 * n)) * A075427 (2 * n)

end

end A020523.P2980584489555835051

namespace A020523

/-- `(A000918(2*n+1)-A075427(2*n))*A075427(2*n)` -/
def P2980584489555835051.Spec : Prop :=
  ∀ n, P2980584489555835051.a n = A020523 n

end A020523

/-! ## A020523.P14982780720520160789

`(A000918(2*n+1)-A140407(2*n))*A140407(2*n)`
-/

namespace A020523.P14982780720520160789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 (2 * n + 1) - A140407 (2 * n)) * A140407 (2 * n)

end

end A020523.P14982780720520160789

namespace A020523

/-- `(A000918(2*n+1)-A140407(2*n))*A140407(2*n)` -/
def P14982780720520160789.Spec : Prop :=
  ∀ n, P14982780720520160789.a n = A020523 n

end A020523

/-! ## A020523.P16940447008154013538

`(A290234(2*n)-A072345(2*n+1))*A077896(2*n)`
-/

namespace A020523.P16940447008154013538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290234 (2 * n) - A072345 (2 * n + 1)) * A077896 (2 * n)

end

end A020523.P16940447008154013538

namespace A020523

/-- `(A290234(2*n)-A072345(2*n+1))*A077896(2*n)` -/
def P16940447008154013538.Spec : Prop :=
  ∀ n, P16940447008154013538.a n = A020523 n

end A020523

/-!
# A020524: a(n) = 4th Euler polynomial evaluated at 2^n.

The programs for A020524, the canonical program `A020524.P7251791875949894759` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020524 has offset 0).

The definition of A020524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020524.P7251791875949894759

`2^n-2^(1+3*n)+16^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020524

/-- `2^n-2^(1+3*n)+16^n` -/
def P7251791875949894759.Spec : Prop :=
  ∀ n, P7251791875949894759.a n = A020524 n

theorem P7251791875949894759.correct : P7251791875949894759.Spec := by
  intro n
  simp only [A020524]

end A020524

/-! ## A020524.P18205906680428747665

`lcm(ceil(∑[2^(n-1)]²)-2, 4^n-2^n)`
-/

namespace A020524.P18205906680428747665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌈(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌉ - 2) ((4 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A020524.P18205906680428747665

namespace A020524

/-- `lcm(ceil(∑[2^(n-1)]²)-2, 4^n-2^n)` -/
def P18205906680428747665.Spec : Prop :=
  ∀ n, (P18205906680428747665.a n : ℤ) = A020524 n

end A020524

/-! ## A020524.P9288723013444177246

`floor((A267816(n)/2)²)`
-/

namespace A020524.P9288723013444177246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A267816 n : ℚ) / 2) ^ 2⌋

end

end A020524.P9288723013444177246

namespace A020524

/-- `floor((A267816(n)/2)²)` -/
def P9288723013444177246.Spec : Prop :=
  ∀ n, P9288723013444177246.a n = A020524 n

end A020524

/-! ## A020524.P17564718257473312488

`A020522(n)*A156589(n)`
-/

namespace A020524.P17564718257473312488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 n * A156589 n

end

end A020524.P17564718257473312488

namespace A020524

/-- `A020522(n)*A156589(n)` -/
def P17564718257473312488.Spec : Prop :=
  ∀ n, P17564718257473312488.a n = A020524 n

end A020524

/-! ## A020524.P4641316193480906739

`(A060242(n)-1)*A000225(n)`
-/

namespace A020524.P4641316193480906739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060242 n - 1) * A000225 n

end

end A020524.P4641316193480906739

namespace A020524

/-- `(A060242(n)-1)*A000225(n)` -/
def P4641316193480906739.Spec : Prop :=
  ∀ n, P4641316193480906739.a n = A020524 n

end A020524

/-! ## A020524.P1116379581389706392

`(A267816(n)-1)*A006516(n)`
-/

namespace A020524.P1116379581389706392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267816 n - 1) * A006516 n

end

end A020524.P1116379581389706392

namespace A020524

/-- `(A267816(n)-1)*A006516(n)` -/
def P1116379581389706392.Spec : Prop :=
  ∀ n, P1116379581389706392.a n = A020524 n

end A020524

/-! ## A020524.P14784712774015877988

`2*A006516(n)*A156589(n)`
-/

namespace A020524.P14784712774015877988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006516 n * A156589 n)

end

end A020524.P14784712774015877988

namespace A020524

/-- `2*A006516(n)*A156589(n)` -/
def P14784712774015877988.Spec : Prop :=
  ∀ n, P14784712774015877988.a n = A020524 n

end A020524

/-! ## A020524.P16159023393908982770

`A014236(2*n)*A156589(n)`
-/

namespace A020524.P16159023393908982770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014236 (2 * n) * A156589 n

end

end A020524.P16159023393908982770

namespace A020524

/-- `A014236(2*n)*A156589(n)` -/
def P16159023393908982770.Spec : Prop :=
  ∀ n, P16159023393908982770.a n = A020524 n

end A020524

/-! ## A020524.P16793379107952243613

`record[A279879(n)²-A279879(n)]`
-/

namespace A020524.P16793379107952243613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 n ^ 2 - A279879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020524.P16793379107952243613

namespace A020524

/-- `record[A279879(n)²-A279879(n)]` -/
def P16793379107952243613.Spec : Prop :=
  ∀ n, P16793379107952243613.a n = A020524 n

end A020524

/-! ## A020524.P15474931488443094855

`record[A288663(n)²-A288663(n)]`
-/

namespace A020524.P15474931488443094855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 n ^ 2 - A288663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020524.P15474931488443094855

namespace A020524

/-- `record[A288663(n)²-A288663(n)]` -/
def P15474931488443094855.Spec : Prop :=
  ∀ n, P15474931488443094855.a n = A020524 n

end A020524

/-!
# A020525: a(n) = 5th Euler polynomial evaluated at 2^n and multiplied by 2.

The programs for A020525, there is no canonical definition to state claims against.
-/

/-! ## A020525.P10921568023328810130

`(4^n-(2^n+1))²*∑[2^n]`
-/

namespace A020525.P10921568023328810130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (2 ^ n + 1 : ℤ)) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A020525.P10921568023328810130

/-!
# A020526: a(n) = 6th Euler polynomial evaluated at 2^n.

The programs for A020526, there is no canonical definition to state claims against.
-/

/-! ## A020526.P4833120459546455205

`(4^n-(2^n+1))^3+1`
-/

namespace A020526.P4833120459546455205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (2 ^ n + 1 : ℤ)) ^ 3 + 1

end

end A020526.P4833120459546455205

/-! ## A020526.P13623131739096686494

`2*A152725(2^n-1)`
-/

namespace A020526.P13623131739096686494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152725 (2 ^ n - 1)

end

end A020526.P13623131739096686494

/-! ## A020526.P17539883417174806451

`lcm(A000079(n), A152725(A000225(n)))`
-/

namespace A020526.P17539883417174806451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A152725 (A000225 n).toNat)

end

end A020526.P17539883417174806451

/-! ## A020526.P6292524825660349884

`lcm(A020522(n), A152725(A255047(n)))`
-/

namespace A020526.P6292524825660349884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020522 n) (A152725 (A255047 n).toNat)

end

end A020526.P6292524825660349884

/-! ## A020526.P14264805882683679110

`A152725(A000225(n))*A298475(2*(n+1))`
-/

namespace A020526.P14264805882683679110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152725 (A000225 n).toNat * A298475 (2 * (n + 1))

end

end A020526.P14264805882683679110

/-!
# A020527: 2nd Bernoulli polynomial evaluated at powers of 2 (multiplied by 6).

The programs for A020527, the canonical program `A020527.P17983622019166158158` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020527 has offset 0).

The definition of A020527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020527.P17983622019166158158

`6*(4^n-2^n)+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020527

/-- `6*(4^n-2^n)+1` -/
def P17983622019166158158.Spec : Prop :=
  ∀ n, P17983622019166158158.a n = A020527 n

theorem P17983622019166158158.correct : P17983622019166158158.Spec := by
  intro n
  simp only [A020527]

end A020527

/-! ## A020527.P3625974525896988848

`(A127509(n+1)-1)/2`
-/

namespace A020527.P3625974525896988848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127509 (n + 1) - 1 : ℚ) / 2

end

end A020527.P3625974525896988848

namespace A020527

/-- `(A127509(n+1)-1)/2` -/
def P3625974525896988848.Spec : Prop :=
  ∀ n, P3625974525896988848.a n = (A020527 n : ℚ)

end A020527

/-! ## A020527.P11744191808541556326

`xor(xor(12*C(A000079(n), 2), 2*n)+1, 2*n)`
-/

namespace A020527.P11744191808541556326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor (12 * Nat.choose (A000079 n).toNat 2) (2 * n) + 1) (2 * n)

end

end A020527.P11744191808541556326

namespace A020527

/-- `xor(xor(12*C(A000079(n), 2), 2*n)+1, 2*n)` -/
def P11744191808541556326.Spec : Prop :=
  ∀ n, (P11744191808541556326.a n : ℤ) = A020527 n

end A020527

/-! ## A020527.P9516875744169207186

`∑[A093357(n+2)-Δ[ceil((2^n+1)²/2)]]`
-/

namespace A020527.P9516875744169207186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n + 1) ^ 2 : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093357 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020527.P9516875744169207186

namespace A020527

/-- `∑[A093357(n+2)-Δ[ceil((2^n+1)²/2)]]` -/
def P9516875744169207186.Spec : Prop :=
  ∀ n, P9516875744169207186.a n = A020527 n

end A020527

/-! ## A020527.P14144243661002838299

`∑[A003945(n)*A033484(n)]`
-/

namespace A020527.P14144243661002838299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A033484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020527.P14144243661002838299

namespace A020527

/-- `∑[A003945(n)*A033484(n)]` -/
def P14144243661002838299.Spec : Prop :=
  ∀ n, P14144243661002838299.a n = A020527 n

end A020527

/-! ## A020527.P9359423776435195816

`floor(∑[2*a(n-1)]²/6)` with `a(0)=3`
-/

namespace A020527.P9359423776435195816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 6⌋

end

end A020527.P9359423776435195816

namespace A020527

/-- `floor(∑[2*a(n-1)]²/6)` -/
def P9359423776435195816.Spec : Prop :=
  ∀ n, P9359423776435195816.a n = A020527 n

end A020527

/-! ## A020527.P932423417478553820

`(A388424(n)-A389269(n))/A000079(n)`
-/

namespace A020527.P932423417478553820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388424 n - A389269 n : ℚ) / (A000079 n : ℚ)

end

end A020527.P932423417478553820

namespace A020527

/-- `(A388424(n)-A389269(n))/A000079(n)` -/
def P932423417478553820.Spec : Prop :=
  ∀ n, P932423417478553820.a n = (A020527 n : ℚ)

end A020527

/-!
# A020528: 3rd Bernoulli polynomial evaluated at powers of 2 (multiplied by 6).

The programs for A020528, the canonical program `A020528.P11800271604530171402` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020528 has offset 0).

The definition of A020528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020528.P11800271604530171402

`6*8^n-9*4^n+3*2^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020528

/-- `6*8^n-9*4^n+3*2^n` -/
def P11800271604530171402.Spec : Prop :=
  ∀ n, P11800271604530171402.a n = A020528 n

theorem P11800271604530171402.correct : P11800271604530171402.Spec := by
  intro n
  simp only [A020528]

end A020528

/-! ## A020528.P4500386003418070325

`6*A160873(n+1)`
-/

namespace A020528.P4500386003418070325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A160873 (n + 1)

end

end A020528.P4500386003418070325

namespace A020528

/-- `6*A160873(n+1)` -/
def P4500386003418070325.Spec : Prop :=
  ∀ n, P4500386003418070325.a n = A020528 n

end A020528

/-! ## A020528.P7927490837805687432

`A000225(n)*A103897(n+1)`
-/

namespace A020528.P7927490837805687432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A103897 (n + 1)

end

end A020528.P7927490837805687432

namespace A020528

/-- `A000225(n)*A103897(n+1)` -/
def P7927490837805687432.Spec : Prop :=
  ∀ n, P7927490837805687432.a n = A020528 n

end A020528

/-! ## A020528.P6644076628448881967

`lcm(1-A169727(n), A000079(n))`
-/

namespace A020528.P6644076628448881967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A169727 n) (A000079 n)

end

end A020528.P6644076628448881967

namespace A020528

/-- `lcm(1-A169727(n), A000079(n))` -/
def P6644076628448881967.Spec : Prop :=
  ∀ n, (P6644076628448881967.a n : ℤ) = A020528 n

end A020528

/-! ## A020528.P664592595765103505

`lcm(Δ[A134057(n)], A103897(n+1))`
-/

namespace A020528.P664592595765103505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A103897 (n + 1))

end

end A020528.P664592595765103505

namespace A020528

/-- `lcm(Δ[A134057(n)], A103897(n+1))` -/
def P664592595765103505.Spec : Prop :=
  ∀ n, (P664592595765103505.a n : ℤ) = A020528 n

end A020528

/-! ## A020528.P17806343496858855472

`A163978(2*n+1)*A274230(2*n+1)`
-/

namespace A020528.P17806343496858855472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (2 * n + 1) * A274230 (2 * n + 1)

end

end A020528.P17806343496858855472

namespace A020528

/-- `A163978(2*n+1)*A274230(2*n+1)` -/
def P17806343496858855472.Spec : Prop :=
  ∀ n, P17806343496858855472.a n = A020528 n

end A020528

/-! ## A020528.P6738574893576303312

`(A006516(n)-A134057(n))*A103897(n+1)`
-/

namespace A020528.P6738574893576303312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006516 n - A134057 n) * A103897 (n + 1)

end

end A020528.P6738574893576303312

namespace A020528

/-- `(A006516(n)-A134057(n))*A103897(n+1)` -/
def P6738574893576303312.Spec : Prop :=
  ∀ n, P6738574893576303312.a n = A020528 n

end A020528

/-! ## A020528.P3492887618280889663

`A000225(n+1)*A000225(n)*A007283(n)`
-/

namespace A020528.P3492887618280889663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A000225 n * A007283 n

end

end A020528.P3492887618280889663

namespace A020528

/-- `A000225(n+1)*A000225(n)*A007283(n)` -/
def P3492887618280889663.Spec : Prop :=
  ∀ n, P3492887618280889663.a n = A020528 n

end A020528

/-! ## A020528.P8661029142321354120

`(A000918(n+1)+A000225(n))*A006516(n+1)`
-/

namespace A020528.P8661029142321354120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 (n + 1) + A000225 n) * A006516 (n + 1)

end

end A020528.P8661029142321354120

namespace A020528

/-- `(A000918(n+1)+A000225(n))*A006516(n+1)` -/
def P8661029142321354120.Spec : Prop :=
  ∀ n, P8661029142321354120.a n = A020528 n

end A020528

/-! ## A020528.P10275619389430539341

`(A020522(n+1)+A006516(n+1))*A000225(n)`
-/

namespace A020528.P10275619389430539341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020522 (n + 1) + A006516 (n + 1)) * A000225 n

end

end A020528.P10275619389430539341

namespace A020528

/-- `(A020522(n+1)+A006516(n+1))*A000225(n)` -/
def P10275619389430539341.Spec : Prop :=
  ∀ n, P10275619389430539341.a n = A020528 n

end A020528

/-! ## A020528.P15387285025712784642

`(A036563(n+1)+A000079(n))*A006516(n+1)`
-/

namespace A020528.P15387285025712784642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036563 (n + 1) + A000079 n) * A006516 (n + 1)

end

end A020528.P15387285025712784642

namespace A020528

/-- `(A036563(n+1)+A000079(n))*A006516(n+1)` -/
def P15387285025712784642.Spec : Prop :=
  ∀ n, P15387285025712784642.a n = A020528 n

end A020528

/-! ## A020528.P1545424561534243642

`(A000079(n+1)+A000079(n))*A134057(n+1)`
-/

namespace A020528.P1545424561534243642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) + A000079 n) * A134057 (n + 1)

end

end A020528.P1545424561534243642

namespace A020528

/-- `(A000079(n+1)+A000079(n))*A134057(n+1)` -/
def P1545424561534243642.Spec : Prop :=
  ∀ n, P1545424561534243642.a n = A020528 n

end A020528

/-! ## A020528.P9307409113421783819

`(A033484(n+1)-A033484(n))*A134057(n+1)`
-/

namespace A020528.P9307409113421783819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033484 (n + 1) - A033484 n) * A134057 (n + 1)

end

end A020528.P9307409113421783819

namespace A020528

/-- `(A033484(n+1)-A033484(n))*A134057(n+1)` -/
def P9307409113421783819.Spec : Prop :=
  ∀ n, P9307409113421783819.a n = A020528 n

end A020528

/-! ## A020528.P547562796413822860

`A000225(n+1)*A003945(n+1)*A000225(n)`
-/

namespace A020528.P547562796413822860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A003945 (n + 1) * A000225 n

end

end A020528.P547562796413822860

namespace A020528

/-- `A000225(n+1)*A003945(n+1)*A000225(n)` -/
def P547562796413822860.Spec : Prop :=
  ∀ n, P547562796413822860.a n = A020528 n

end A020528

/-! ## A020528.P8854831290258695401

`A000225(n+1)*A082505(n+1)*A000225(n)`
-/

namespace A020528.P8854831290258695401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A082505 (n + 1) * A000225 n

end

end A020528.P8854831290258695401

namespace A020528

/-- `A000225(n+1)*A082505(n+1)*A000225(n)` -/
def P8854831290258695401.Spec : Prop :=
  ∀ n, P8854831290258695401.a n = A020528 n

end A020528

/-! ## A020528.P11010700844936482019

`(A131577(n+1)+A036563(n+1))*A006516(n+1)`
-/

namespace A020528.P11010700844936482019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) + A036563 (n + 1)) * A006516 (n + 1)

end

end A020528.P11010700844936482019

namespace A020528

/-- `(A131577(n+1)+A036563(n+1))*A006516(n+1)` -/
def P11010700844936482019.Spec : Prop :=
  ∀ n, P11010700844936482019.a n = A020528 n

end A020528

/-!
# A020529: 4th Bernoulli polynomial evaluated at powers of 2 (multiplied by 30).

The programs for A020529, the canonical program `A020529.P1265996327337367783` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020529 has offset 0).

The definition of A020529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020529.P1265996327337367783

`30*16^n-60*8^n+30*4^n-1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020529

/-- `30*16^n-60*8^n+30*4^n-1` -/
def P1265996327337367783.Spec : Prop :=
  ∀ n, P1265996327337367783.a n = A020529 n

theorem P1265996327337367783.correct : P1265996327337367783.Spec := by
  intro n
  simp only [A020529]

end A020529

/-!
# A020530: a(n) = 8^n + 2^(n+1).

The programs for A020530, the canonical program `A020530.P10262763273957748371` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020530 has offset 0).

The definition of A020530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+2^(n+1)` (program `A020530.P10262763273957748371`, by `A020530.P10262763273957748371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020530.P10262763273957748371

`8^n+2^(n+1)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020530

/-- `8^n+2^(n+1)` -/
def P10262763273957748371.Spec : Prop :=
  ∀ n, (P10262763273957748371.a n : ℤ) = A020530 n

theorem P10262763273957748371.correct : P10262763273957748371.Spec := by
  intro n
  simp only [A020530]

end A020530

/-! ## A020530.P2013384314632200690

`3*A103334(n+1)`
-/

namespace A020530.P2013384314632200690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A103334 (n + 1)

end

end A020530.P2013384314632200690

namespace A020530

/-- `3*A103334(n+1)` -/
def P2013384314632200690.Spec : Prop :=
  ∀ n, P2013384314632200690.a n = A020530 n

end A020530

/-! ## A020530.P3913340183201261518

`3*A068010(3*n)`
-/

namespace A020530.P3913340183201261518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A068010 (3 * n)

end

end A020530.P3913340183201261518

namespace A020530

/-- `3*A068010(3*n)` -/
def P3913340183201261518.Spec : Prop :=
  ∀ n, P3913340183201261518.a n = A020530 n

end A020530

/-! ## A020530.P1509147621317719106

`2^n*A178789(n+1)`
-/

namespace A020530.P1509147621317719106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A178789 (n + 1)

end

end A020530.P1509147621317719106

namespace A020530

/-- `2^n*A178789(n+1)` -/
def P1509147621317719106.Spec : Prop :=
  ∀ n, P1509147621317719106.a n = A020530 n

end A020530

/-! ## A020530.P15627970799087296526

`A007283(n)*A047849(n)`
-/

namespace A020530.P15627970799087296526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A047849 n

end

end A020530.P15627970799087296526

namespace A020530

/-- `A007283(n)*A047849(n)` -/
def P15627970799087296526.Spec : Prop :=
  ∀ n, P15627970799087296526.a n = A020530 n

end A020530

/-! ## A020530.P2471924371317112558

`record[A135530(n)+A094014(n)]`
-/

namespace A020530.P2471924371317112558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n + A094014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020530.P2471924371317112558

namespace A020530

/-- `record[A135530(n)+A094014(n)]` -/
def P2471924371317112558.Spec : Prop :=
  ∀ n, P2471924371317112558.a n = A020530 n

end A020530

/-! ## A020530.P16291059525187658810

`A042950(n+1)*A047849(n)`
-/

namespace A020530.P16291059525187658810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 1) * A047849 n

end

end A020530.P16291059525187658810

namespace A020530

/-- `A042950(n+1)*A047849(n)` -/
def P16291059525187658810.Spec : Prop :=
  ∀ n, P16291059525187658810.a n = A020530 n

end A020530

/-! ## A020530.P5704921362007857268

`(A000302(n)+2)*A000079(n)`
-/

namespace A020530.P5704921362007857268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000302 n + 2) * A000079 n

end

end A020530.P5704921362007857268

namespace A020530

/-- `(A000302(n)+2)*A000079(n)` -/
def P5704921362007857268.Spec : Prop :=
  ∀ n, P5704921362007857268.a n = A020530 n

end A020530

/-! ## A020530.P12097510843426567632

`A000079(n)*A052548(2*n)`
-/

namespace A020530.P12097510843426567632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A052548 (2 * n)

end

end A020530.P12097510843426567632

namespace A020530

/-- `A000079(n)*A052548(2*n)` -/
def P12097510843426567632.Spec : Prop :=
  ∀ n, P12097510843426567632.a n = A020530 n

end A020530

/-! ## A020530.P2351312079949391566

`A007283(n)*A078008(2*n)`
-/

namespace A020530.P2351312079949391566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A078008 (2 * n)

end

end A020530.P2351312079949391566

namespace A020530

/-- `A007283(n)*A078008(2*n)` -/
def P2351312079949391566.Spec : Prop :=
  ∀ n, P2351312079949391566.a n = A020530 n

end A020530

/-! ## A020530.P9509305952646017925

`A007283(n)*A151575(2*n)`
-/

namespace A020530.P9509305952646017925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A151575 (2 * n)

end

end A020530.P9509305952646017925

namespace A020530

/-- `A007283(n)*A151575(2*n)` -/
def P9509305952646017925.Spec : Prop :=
  ∀ n, P9509305952646017925.a n = A020530 n

end A020530

/-! ## A020530.P10678607893422979521

`lcm(A178789(n+1), A198633(n))`
-/

namespace A020530.P10678607893422979521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178789 (n + 1)) (A198633 n)

end

end A020530.P10678607893422979521

namespace A020530

/-- `lcm(A178789(n+1), A198633(n))` -/
def P10678607893422979521.Spec : Prop :=
  ∀ n, (P10678607893422979521.a n : ℤ) = A020530 n

end A020530

/-! ## A020530.P16141926817824042404

`A000079(n)*A056469(2*n+1)`
-/

namespace A020530.P16141926817824042404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A056469 (2 * n + 1)

end

end A020530.P16141926817824042404

namespace A020530

/-- `A000079(n)*A056469(2*n+1)` -/
def P16141926817824042404.Spec : Prop :=
  ∀ n, P16141926817824042404.a n = A020530 n

end A020530

/-! ## A020530.P17565704696609725805

`A011782(n+1)*A052548(2*n)`
-/

namespace A020530.P17565704696609725805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A052548 (2 * n)

end

end A020530.P17565704696609725805

namespace A020530

/-- `A011782(n+1)*A052548(2*n)` -/
def P17565704696609725805.Spec : Prop :=
  ∀ n, P17565704696609725805.a n = A020530 n

end A020530

/-! ## A020530.P14673471367429332027

`A003945(n+1)*A078008(2*n)`
-/

namespace A020530.P14673471367429332027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) * A078008 (2 * n)

end

end A020530.P14673471367429332027

namespace A020530

/-- `A003945(n+1)*A078008(2*n)` -/
def P14673471367429332027.Spec : Prop :=
  ∀ n, P14673471367429332027.a n = A020530 n

end A020530

/-! ## A020530.P11993444737117797635

`A042950(n+1)*A078008(2*n)`
-/

namespace A020530.P11993444737117797635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 1) * A078008 (2 * n)

end

end A020530.P11993444737117797635

namespace A020530

/-- `A042950(n+1)*A078008(2*n)` -/
def P11993444737117797635.Spec : Prop :=
  ∀ n, P11993444737117797635.a n = A020530 n

end A020530

/-! ## A020530.P2327605552611841568

`A052548(2*n)*A131577(n+1)`
-/

namespace A020530.P2327605552611841568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 (2 * n) * A131577 (n + 1)

end

end A020530.P2327605552611841568

namespace A020530

/-- `A052548(2*n)*A131577(n+1)` -/
def P2327605552611841568.Spec : Prop :=
  ∀ n, P2327605552611841568.a n = A020530 n

end A020530

/-! ## A020530.P4038461124885005860

`xor(A000079(3*n), A000079(n+1))`
-/

namespace A020530.P4038461124885005860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 (3 * n)) (A000079 (n + 1))

end

end A020530.P4038461124885005860

namespace A020530

/-- `xor(A000079(3*n), A000079(n+1))` -/
def P4038461124885005860.Spec : Prop :=
  ∀ n, P4038461124885005860.a n = A020530 n

end A020530

/-! ## A020530.P3329847876531515527

`A003945(n+1)*A173197(2*n+1)`
-/

namespace A020530.P3329847876531515527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) * A173197 (2 * n + 1)

end

end A020530.P3329847876531515527

namespace A020530

/-- `A003945(n+1)*A173197(2*n+1)` -/
def P3329847876531515527.Spec : Prop :=
  ∀ n, P3329847876531515527.a n = A020530 n

end A020530

/-!
# A020531: a(n) = 5th Fibonacci polynomial evaluated at 2^n.

The programs for A020531, the canonical program `A020531.P10485678505940793675` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020531 has offset 0).

The definition of A020531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020531.P10485678505940793675

`1+3*4^n+16^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020531

/-- `1+3*4^n+16^n` -/
def P10485678505940793675.Spec : Prop :=
  ∀ n, (P10485678505940793675.a n : ℤ) = A020531 n

theorem P10485678505940793675.correct : P10485678505940793675.Spec := by
  intro n
  simp only [A020531]

end A020531

/-! ## A020531.P11457503513133160400

`or(A052539(n)², 4^n)`
-/

namespace A020531.P11457503513133160400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052539 n ^ 2) (4 ^ n : ℤ)

end

end A020531.P11457503513133160400

namespace A020531

/-- `or(A052539(n)², 4^n)` -/
def P11457503513133160400.Spec : Prop :=
  ∀ n, P11457503513133160400.a n = A020531 n

end A020531

/-! ## A020531.P9295565206370258791

`xor(4^n, A028400(2*n))`
-/

namespace A020531.P9295565206370258791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 ^ n : ℤ) (A028400 (2 * n))

end

end A020531.P9295565206370258791

namespace A020531

/-- `xor(4^n, A028400(2*n))` -/
def P9295565206370258791.Spec : Prop :=
  ∀ n, P9295565206370258791.a n = A020531 n

end A020531

/-! ## A020531.P17286013832507520845

`or((A000302(n)+1)², 4^n)`
-/

namespace A020531.P17286013832507520845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((A000302 n + 1) ^ 2) (4 ^ n : ℤ)

end

end A020531.P17286013832507520845

namespace A020531

/-- `or((A000302(n)+1)², 4^n)` -/
def P17286013832507520845.Spec : Prop :=
  ∀ n, P17286013832507520845.a n = A020531 n

end A020531

/-! ## A020531.P9632974910305298894

`or(3*4^n+1, A001025(n))`
-/

namespace A020531.P9632974910305298894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * 4 ^ n + 1 : ℤ) (A001025 n)

end

end A020531.P9632974910305298894

namespace A020531

/-- `or(3*4^n+1, A001025(n))` -/
def P9632974910305298894.Spec : Prop :=
  ∀ n, P9632974910305298894.a n = A020531 n

end A020531

/-! ## A020531.P2676110915567008105

`record[(-2)^n*A062709(n)+1]`
-/

namespace A020531.P2676110915567008105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A062709 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020531.P2676110915567008105

namespace A020531

/-- `record[(-2)^n*A062709(n)+1]` -/
def P2676110915567008105.Spec : Prop :=
  ∀ n, P2676110915567008105.a n = A020531 n

end A020531

/-! ## A020531.P9869198575335610681

`or(A000302(n)², A140660(n))`
-/

namespace A020531.P9869198575335610681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000302 n ^ 2) (A140660 n)

end

end A020531.P9869198575335610681

namespace A020531

/-- `or(A000302(n)², A140660(n))` -/
def P9869198575335610681.Spec : Prop :=
  ∀ n, P9869198575335610681.a n = A020531 n

end A020531

/-! ## A020531.P14874299480383553507

`xor(A052539(n)², A000079(n)²)`
-/

namespace A020531.P14874299480383553507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052539 n ^ 2) (A000079 n ^ 2)

end

end A020531.P14874299480383553507

namespace A020531

/-- `xor(A052539(n)², A000079(n)²)` -/
def P14874299480383553507.Spec : Prop :=
  ∀ n, P14874299480383553507.a n = A020531 n

end A020531

/-! ## A020531.P1063739353845813028

`or(A000302(n), A028400(A005843(n)))`
-/

namespace A020531.P1063739353845813028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000302 n) (A028400 (A005843 n).toNat)

end

end A020531.P1063739353845813028

namespace A020531

/-- `or(A000302(n), A028400(A005843(n)))` -/
def P1063739353845813028.Spec : Prop :=
  ∀ n, P1063739353845813028.a n = A020531 n

end A020531

/-!
# A020532: a(n) = 6th Fibonacci polynomial evaluated at 2^n.

The programs for A020532, the canonical program `A020532.P2861734121257254508` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020532 has offset 0).

The definition of A020532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020532.P2861734121257254508

`2^n*(3+4^(1+n)+16^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020532

/-- `2^n*(3+4^(1+n)+16^n)` -/
def P2861734121257254508.Spec : Prop :=
  ∀ n, (P2861734121257254508.a n : ℤ) = A020532 n

theorem P2861734121257254508.correct : P2861734121257254508.Spec := by
  intro n
  simp only [A020532]

end A020532

/-! ## A020532.P559871492508432582

`A020534(n)%A020533(n)`
-/

namespace A020532.P559871492508432582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020534 n) (A020533 n)

end

end A020532.P559871492508432582

namespace A020532

/-- `A020534(n)%A020533(n)` -/
def P559871492508432582.Spec : Prop :=
  ∀ n, P559871492508432582.a n = A020532 n

end A020532

/-! ## A020532.P4895689004337319285

`(A020531(n)²-1)/A020530(n)`
-/

namespace A020532.P4895689004337319285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020531 n ^ 2 - 1 : ℚ) / (A020530 n : ℚ)

end

end A020532.P4895689004337319285

namespace A020532

/-- `(A020531(n)²-1)/A020530(n)` -/
def P4895689004337319285.Spec : Prop :=
  ∀ n, P4895689004337319285.a n = (A020532 n : ℚ)

end A020532

/-! ## A020532.P4535503095878636532

`A020536(n)/A020531(n)-A020530(n)`
-/

namespace A020532.P4535503095878636532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020536 n : ℚ) / (A020531 n : ℚ) - (A020530 n : ℚ)

end

end A020532.P4535503095878636532

namespace A020532

/-- `A020536(n)/A020531(n)-A020530(n)` -/
def P4535503095878636532.Spec : Prop :=
  ∀ n, P4535503095878636532.a n = (A020532 n : ℚ)

end A020532

/-! ## A020532.P12432346617809769228

`A124152(2^n)`
-/

namespace A020532.P12432346617809769228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124152 (2 ^ n)

end

end A020532.P12432346617809769228

namespace A020532

/-- `A124152(2^n)` -/
def P12432346617809769228.Spec : Prop :=
  ∀ n, P12432346617809769228.a n = A020532 n

end A020532

/-!
# A020533: a(n) = 7th Fibonacci polynomial evaluated at 2^n.

The programs for A020533, the canonical program `A020533.P9555811036588071828` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020533 has offset 0).

The definition of A020533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020533.P9555811036588071828

`1+3*2^(1+2*n)+5*16^n+64^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020533

/-- `1+3*2^(1+2*n)+5*16^n+64^n` -/
def P9555811036588071828.Spec : Prop :=
  ∀ n, (P9555811036588071828.a n : ℤ) = A020533 n

theorem P9555811036588071828.correct : P9555811036588071828.Spec := by
  intro n
  simp only [A020533]

end A020533

/-! ## A020533.P5315559630400617436

`round(A020532(n)/A020531(n)*A020532(n))`
-/

namespace A020533.P5315559630400617436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020532 n : ℚ) / (A020531 n : ℚ) * (A020532 n : ℚ))

end

end A020533.P5315559630400617436

namespace A020533

/-- `round(A020532(n)/A020531(n)*A020532(n))` -/
def P5315559630400617436.Spec : Prop :=
  ∀ n, P5315559630400617436.a n = A020533 n

end A020533

/-! ## A020533.P10124136935310673838

`A020535(n)%A020534(n)`
-/

namespace A020533.P10124136935310673838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020535 n) (A020534 n)

end

end A020533.P10124136935310673838

namespace A020533

/-- `A020535(n)%A020534(n)` -/
def P10124136935310673838.Spec : Prop :=
  ∀ n, P10124136935310673838.a n = A020533 n

end A020533

/-! ## A020533.P1160889449219727415

`round(A020532(n)²/A020531(n))`
-/

namespace A020533.P1160889449219727415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020532 n ^ 2 : ℚ) / (A020531 n : ℚ))

end

end A020533.P1160889449219727415

namespace A020533

/-- `round(A020532(n)²/A020531(n))` -/
def P1160889449219727415.Spec : Prop :=
  ∀ n, P1160889449219727415.a n = A020533 n

end A020533

/-! ## A020533.P669382486611013712

`round(sqrt(A020531(n)*A020535(n)))`
-/

namespace A020533.P669382486611013712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A020531 n * A020535 n : ℝ))

end

end A020533.P669382486611013712

namespace A020533

/-- `round(sqrt(A020531(n)*A020535(n)))` -/
def P669382486611013712.Spec : Prop :=
  ∀ n, P669382486611013712.a n = A020533 n

end A020533

/-!
# A020534: a(n) = 8th Fibonacci polynomial evaluated at 2^n.

The programs for A020534, there is no canonical definition to state claims against.
-/

/-! ## A020534.P18435084529062215719

`lcm(A020530(n), A020532(n))-A020530(n)`
-/

namespace A020534.P18435084529062215719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020530 n) (A020532 n) : ℤ) - A020530 n

end

end A020534.P18435084529062215719

/-! ## A020534.P10726301164725225681

`A020536(n)%A020535(n)`
-/

namespace A020534.P10726301164725225681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020536 n) (A020535 n)

end

end A020534.P10726301164725225681

/-! ## A020534.P14817299415926326169

`round(A020532(n)²/A020530(n))`
-/

namespace A020534.P14817299415926326169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020532 n ^ 2 : ℚ) / (A020530 n : ℚ))

end

end A020534.P14817299415926326169

/-!
# A020535: a(n) = 9th Fibonacci polynomial evaluated at 2^n.

The programs for A020535, there is no canonical definition to state claims against.
-/

/-! ## A020535.P13186059143931311499

`((4^n+2)*2^n)²+(4^n+(4^n+1)²)²`
-/

namespace A020535.P13186059143931311499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((4 ^ n + 2) * 2 ^ n) ^ 2 + (4 ^ n + (4 ^ n + 1) ^ 2) ^ 2

end

end A020535.P13186059143931311499

/-! ## A020535.P15241385989058487439

`A192398(4^n+1)`
-/

namespace A020535.P15241385989058487439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192398 (4 ^ n + 1)

end

end A020535.P15241385989058487439

/-! ## A020535.P5864666053499109303

`A192398(A000051(2*n))*A341847(n)`
-/

namespace A020535.P5864666053499109303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192398 (A000051 (2 * n)).toNat * A341847 n

end

end A020535.P5864666053499109303

/-!
# A020536: a(n) = 10th Fibonacci polynomial evaluated at 2^n.

The programs for A020536, there is no canonical definition to state claims against.
-/

/-! ## A020536.P13001266173034191534

`(A020532(n)+A020530(n))*A020531(n)`
-/

namespace A020536.P13001266173034191534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020532 n + A020530 n) * A020531 n

end

end A020536.P13001266173034191534

/-!
# A020537: a(n) = 4*8^n - 3*2^n.

The programs for A020537, the canonical program `A020537.P3829650220652913801` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020537 has offset 0).

The definition of A020537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*8^n-3*2^n` (program `A020537.P3829650220652913801`, by `A020537.P3829650220652913801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020537.P3829650220652913801

`4*8^n-3*2^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020537

/-- `4*8^n-3*2^n` -/
def P3829650220652913801.Spec : Prop :=
  ∀ n, P3829650220652913801.a n = A020537 n

theorem P3829650220652913801.correct : P3829650220652913801.Spec := by
  intro n
  simp only [A020537]

end A020537

/-! ## A020537.P2377640636708067803

`lcm(4^(n+1)-3, 2^n)`
-/

namespace A020537.P2377640636708067803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((4 ^ (n + 1) : ℤ) - 3) (2 ^ n : ℤ)

end

end A020537.P2377640636708067803

namespace A020537

/-- `lcm(4^(n+1)-3, 2^n)` -/
def P2377640636708067803.Spec : Prop :=
  ∀ n, (P2377640636708067803.a n : ℤ) = A020537 n

end A020537

/-! ## A020537.P10766090138496961827

`(4^(n+1)-3)/tan(acot(2))^n`
-/

namespace A020537.P10766090138496961827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) - 3 : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ)) ^ n

end

end A020537.P10766090138496961827

namespace A020537

/-- `(4^(n+1)-3)/tan(acot(2))^n` -/
def P10766090138496961827.Spec : Prop :=
  ∀ n, P10766090138496961827.a n = (A020537 n : ℝ)

end A020537

/-! ## A020537.P13984842512003465650

`2^n*A141725(n)`
-/

namespace A020537.P13984842512003465650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A141725 n

end

end A020537.P13984842512003465650

namespace A020537

/-- `2^n*A141725(n)` -/
def P13984842512003465650.Spec : Prop :=
  ∀ n, P13984842512003465650.a n = A020537 n

end A020537

/-! ## A020537.P623592646815373066

`or(2*a(n-1), A147538(n+1))` with `a(0)=1`
-/

namespace A020537.P623592646815373066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A147538 (n + 1))

end

end A020537.P623592646815373066

namespace A020537

/-- `or(2*a(n-1), A147538(n+1))` -/
def P623592646815373066.Spec : Prop :=
  ∀ n, P623592646815373066.a n = A020537 n

end A020537

/-! ## A020537.P3690524865957257379

`Δ[A046636(n)-A007283(n)]`
-/

namespace A020537.P3690524865957257379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046636 n - A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020537.P3690524865957257379

namespace A020537

/-- `Δ[A046636(n)-A007283(n)]` -/
def P3690524865957257379.Spec : Prop :=
  ∀ n, P3690524865957257379.a n = A020537 n

end A020537

/-! ## A020537.P17575643266697975664

`A000079(n)*A101622(2*n+1)`
-/

namespace A020537.P17575643266697975664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A101622 (2 * n + 1)

end

end A020537.P17575643266697975664

namespace A020537

/-- `A000079(n)*A101622(2*n+1)` -/
def P17575643266697975664.Spec : Prop :=
  ∀ n, P17575643266697975664.a n = A020537 n

end A020537

/-! ## A020537.P2821596847757831739

`(A291537(n+1)-5)/2`
-/

namespace A020537.P2821596847757831739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291537 (n + 1) - 5 : ℚ) / 2

end

end A020537.P2821596847757831739

namespace A020537

/-- `(A291537(n+1)-5)/2` -/
def P2821596847757831739.Spec : Prop :=
  ∀ n, P2821596847757831739.a n = (A020537 n : ℚ)

end A020537

/-!
# A020538: a(n) = 4th Chebyshev polynomial (first kind) evaluated at 2^n.

The programs for A020538, the canonical program `A020538.P17649233711124835802` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020538 has offset 0).

The definition of A020538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020538.P17649233711124835802

`1-2^(3+2*n)+2^(3+4*n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020538

/-- `1-2^(3+2*n)+2^(3+4*n)` -/
def P17649233711124835802.Spec : Prop :=
  ∀ n, P17649233711124835802.a n = A020538 n

theorem P17649233711124835802.correct : P17649233711124835802.Spec := by
  intro n
  simp only [A020538]

end A020538

/-! ## A020538.P13094147374854873264

`xor(3, A087291(2*n+1))`
-/

namespace A020538.P13094147374854873264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A087291 (2 * n + 1))

end

end A020538.P13094147374854873264

namespace A020538

/-- `xor(3, A087291(2*n+1))` -/
def P13094147374854873264.Spec : Prop :=
  ∀ n, P13094147374854873264.a n = A020538 n

end A020538

/-! ## A020538.P14221453695415643559

`record[A087291(A093178(n))-1]`
-/

namespace A020538.P14221453695415643559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087291 (A093178 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020538.P14221453695415643559

namespace A020538

/-- `record[A087291(A093178(n))-1]` -/
def P14221453695415643559.Spec : Prop :=
  ∀ n, P14221453695415643559.a n = A020538 n

end A020538

/-! ## A020538.P9236191642851508812

`record[A087291(A000265(n+1))-1]`
-/

namespace A020538.P9236191642851508812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087291 (A000265 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020538.P9236191642851508812

namespace A020538

/-- `record[A087291(A000265(n+1))-1]` -/
def P9236191642851508812.Spec : Prop :=
  ∀ n, P9236191642851508812.a n = A020538 n

end A020538

/-! ## A020538.P10818387025535761909

`abs(A087291(A000265(2*n+1))-1)`
-/

namespace A020538.P10818387025535761909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087291 (A000265 (2 * n + 1)).toNat - 1|

end

end A020538.P10818387025535761909

namespace A020538

/-- `abs(A087291(A000265(2*n+1))-1)` -/
def P10818387025535761909.Spec : Prop :=
  ∀ n, P10818387025535761909.a n = A020538 n

end A020538

/-! ## A020538.P5997829194730728852

`xor(A002446(2*n+1), A083420(n+1))`
-/

namespace A020538.P5997829194730728852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002446 (2 * n + 1)) (A083420 (n + 1))

end

end A020538.P5997829194730728852

namespace A020538

/-- `xor(A002446(2*n+1), A083420(n+1))` -/
def P5997829194730728852.Spec : Prop :=
  ∀ n, P5997829194730728852.a n = A020538 n

end A020538

/-! ## A020538.P12579723109223663886

`and(A285947(2*n+1)², A083420(2*n+1))`
-/

namespace A020538.P12579723109223663886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285947 (2 * n + 1) ^ 2) (A083420 (2 * n + 1))

end

end A020538.P12579723109223663886

namespace A020538

/-- `and(A285947(2*n+1)², A083420(2*n+1))` -/
def P12579723109223663886.Spec : Prop :=
  ∀ n, P12579723109223663886.a n = A020538 n

end A020538

/-! ## A020538.P3982755490498567390

`and(A285948(2*n+1)², A083420(2*n+1))`
-/

namespace A020538.P3982755490498567390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285948 (2 * n + 1) ^ 2) (A083420 (2 * n + 1))

end

end A020538.P3982755490498567390

namespace A020538

/-- `and(A285948(2*n+1)², A083420(2*n+1))` -/
def P3982755490498567390.Spec : Prop :=
  ∀ n, P3982755490498567390.a n = A020538 n

end A020538

/-! ## A020538.P10932429054003603703

`and(A126646(2*n+1)², A267042(2*n+1))`
-/

namespace A020538.P10932429054003603703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 (2 * n + 1) ^ 2) (A267042 (2 * n + 1))

end

end A020538.P10932429054003603703

namespace A020538

/-- `and(A126646(2*n+1)², A267042(2*n+1))` -/
def P10932429054003603703.Spec : Prop :=
  ∀ n, P10932429054003603703.a n = A020538 n

end A020538

/-! ## A020538.P17572788472501905567

`and(A126646(2*n+1)², A267351(2*n+1))`
-/

namespace A020538.P17572788472501905567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 (2 * n + 1) ^ 2) (A267351 (2 * n + 1))

end

end A020538.P17572788472501905567

namespace A020538

/-- `and(A126646(2*n+1)², A267351(2*n+1))` -/
def P17572788472501905567.Spec : Prop :=
  ∀ n, P17572788472501905567.a n = A020538 n

end A020538

/-!
# A020539: a(n) = 5th Chebyshev polynomial (first kind) evaluated at 2^n.

The programs for A020539, the canonical program `A020539.P13495235315856166313` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020539 has offset 0).

The definition of A020539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020539.P13495235315856166313

`2^n*(5-5*4^(1+n)+16^(1+n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020539

/-- `2^n*(5-5*4^(1+n)+16^(1+n))` -/
def P13495235315856166313.Spec : Prop :=
  ∀ n, P13495235315856166313.a n = A020539 n

theorem P13495235315856166313.correct : P13495235315856166313.Spec := by
  intro n
  simp only [A020539]

end A020539

/-! ## A020539.P12854050425468735851

`A167440(n+1)/2`
-/

namespace A020539.P12854050425468735851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167440 (n + 1) : ℚ) / 2

end

end A020539.P12854050425468735851

namespace A020539

/-- `A167440(n+1)/2` -/
def P12854050425468735851.Spec : Prop :=
  ∀ n, P12854050425468735851.a n = (A020539 n : ℚ)

end A020539

/-! ## A020539.P11670841270743558379

`(A020542(n)-A020540(n))/2`
-/

namespace A020539.P11670841270743558379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020542 n - A020540 n : ℚ) / 2

end

end A020539.P11670841270743558379

namespace A020539

/-- `(A020542(n)-A020540(n))/2` -/
def P11670841270743558379.Spec : Prop :=
  ∀ n, P11670841270743558379.a n = (A020539 n : ℚ)

end A020539

/-! ## A020539.P550114297791566729

`A243131(2^n)`
-/

namespace A020539.P550114297791566729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243131 (2 ^ n)

end

end A020539.P550114297791566729

namespace A020539

/-- `A243131(2^n)` -/
def P550114297791566729.Spec : Prop :=
  ∀ n, P550114297791566729.a n = A020539 n

end A020539

/-! ## A020539.P9068700953937535467

`record[A243131(A059268(n))]`
-/

namespace A020539.P9068700953937535467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243131 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020539.P9068700953937535467

namespace A020539

/-- `record[A243131(A059268(n))]` -/
def P9068700953937535467.Spec : Prop :=
  ∀ n, P9068700953937535467.a n = A020539 n

end A020539

/-!
# A020540: a(n) = 8^(n+1) - 2^(n+2).

The programs for A020540, the canonical program `A020540.P2284246446562575547` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020540 has offset 0).

The definition of A020540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(n+1)-2^(n+2)` (program `A020540.P2284246446562575547`, by `A020540.P2284246446562575547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020540.P2284246446562575547

`8^(n+1)-2^(n+2)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020540

/-- `8^(n+1)-2^(n+2)` -/
def P2284246446562575547.Spec : Prop :=
  ∀ n, P2284246446562575547.a n = A020540 n

theorem P2284246446562575547.correct : P2284246446562575547.Spec := by
  intro n
  simp only [A020540]

end A020540

/-! ## A020540.P5854472166927760085

`2*A147537(n+1)`
-/

namespace A020540.P5854472166927760085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147537 (n + 1)

end

end A020540.P5854472166927760085

namespace A020540

/-- `2*A147537(n+1)` -/
def P5854472166927760085.Spec : Prop :=
  ∀ n, P5854472166927760085.a n = A020540 n

end A020540

/-! ## A020540.P3422158957782762862

`4*A147590(n+1)`
-/

namespace A020540.P3422158957782762862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A147590 (n + 1)

end

end A020540.P3422158957782762862

namespace A020540

/-- `4*A147590(n+1)` -/
def P3422158957782762862.Spec : Prop :=
  ∀ n, P3422158957782762862.a n = A020540 n

end A020540

/-! ## A020540.P14515165819790884013

`4*A083332(2*n)`
-/

namespace A020540.P14515165819790884013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A083332 (2 * n)

end

end A020540.P14515165819790884013

namespace A020540

/-- `4*A083332(2*n)` -/
def P14515165819790884013.Spec : Prop :=
  ∀ n, P14515165819790884013.a n = A020540 n

end A020540

/-! ## A020540.P16876197177462904457

`2^(n+2)*A083420(n)`
-/

namespace A020540.P16876197177462904457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) * A083420 n

end

end A020540.P16876197177462904457

namespace A020540

/-- `2^(n+2)*A083420(n)` -/
def P16876197177462904457.Spec : Prop :=
  ∀ n, P16876197177462904457.a n = A020540 n

end A020540

/-! ## A020540.P7714483520287952222

`(A004171(n)-1)*2^(n+2)`
-/

namespace A020540.P7714483520287952222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004171 n - 1) * (2 ^ (n + 2) : ℤ)

end

end A020540.P7714483520287952222

namespace A020540

/-- `(A004171(n)-1)*2^(n+2)` -/
def P7714483520287952222.Spec : Prop :=
  ∀ n, P7714483520287952222.a n = A020540 n

end A020540

/-! ## A020540.P9013268922745881270

`lcm(A020707(n), A083420(n))`
-/

namespace A020540.P9013268922745881270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020707 n) (A083420 n)

end

end A020540.P9013268922745881270

namespace A020540

/-- `lcm(A020707(n), A083420(n))` -/
def P9013268922745881270.Spec : Prop :=
  ∀ n, (P9013268922745881270.a n : ℤ) = A020540 n

end A020540

/-! ## A020540.P14692890353818463867

`A083420(n)*A131577(n+3)`
-/

namespace A020540.P14692890353818463867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A131577 (n + 3)

end

end A020540.P14692890353818463867

namespace A020540

/-- `A083420(n)*A131577(n+3)` -/
def P14692890353818463867.Spec : Prop :=
  ∀ n, P14692890353818463867.a n = A020540 n

end A020540

/-! ## A020540.P12451235441494502231

`2*(A198852(n)-A126646(n))`
-/

namespace A020540.P12451235441494502231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198852 n - A126646 n)

end

end A020540.P12451235441494502231

namespace A020540

/-- `2*(A198852(n)-A126646(n))` -/
def P12451235441494502231.Spec : Prop :=
  ∀ n, P12451235441494502231.a n = A020540 n

end A020540

/-! ## A020540.P8761203753728044030

`A020707(n)*A126646(2*n)`
-/

namespace A020540.P8761203753728044030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n * A126646 (2 * n)

end

end A020540.P8761203753728044030

namespace A020540

/-- `A020707(n)*A126646(2*n)` -/
def P8761203753728044030.Spec : Prop :=
  ∀ n, P8761203753728044030.a n = A020540 n

end A020540

/-! ## A020540.P2860762790183519182

`2*(A013731(n)-Δ[A126646(n)])`
-/

namespace A020540.P2860762790183519182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A013731 n - (f1 (n + 1) - f1 n))

end

end A020540.P2860762790183519182

namespace A020540

/-- `2*(A013731(n)-Δ[A126646(n)])` -/
def P2860762790183519182.Spec : Prop :=
  ∀ n, P2860762790183519182.a n = A020540 n

end A020540

/-! ## A020540.P16136244896684658943

`A000225(2*n+1)*A020707(n)`
-/

namespace A020540.P16136244896684658943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) * A020707 n

end

end A020540.P16136244896684658943

namespace A020540

/-- `A000225(2*n+1)*A020707(n)` -/
def P16136244896684658943.Spec : Prop :=
  ∀ n, P16136244896684658943.a n = A020540 n

end A020540

/-! ## A020540.P4371153616313854748

`A014551(2*n+1)*A020707(n)`
-/

namespace A020540.P4371153616313854748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (2 * n + 1) * A020707 n

end

end A020540.P4371153616313854748

namespace A020540

/-- `A014551(2*n+1)*A020707(n)` -/
def P4371153616313854748.Spec : Prop :=
  ∀ n, P4371153616313854748.a n = A020540 n

end A020540

/-! ## A020540.P8131757609029836221

`A000079(n)*A173033(2*n+1)`
-/

namespace A020540.P8131757609029836221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A173033 (2 * n + 1)

end

end A020540.P8131757609029836221

namespace A020540

/-- `A000079(n)*A173033(2*n+1)` -/
def P8131757609029836221.Spec : Prop :=
  ∀ n, P8131757609029836221.a n = A020540 n

end A020540

/-! ## A020540.P4152015044155679948

`A020707(n)*A166977(2*n+1)`
-/

namespace A020540.P4152015044155679948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n * A166977 (2 * n + 1)

end

end A020540.P4152015044155679948

namespace A020540

/-- `A020707(n)*A166977(2*n+1)` -/
def P4152015044155679948.Spec : Prop :=
  ∀ n, P4152015044155679948.a n = A020540 n

end A020540

/-! ## A020540.P9090143604718273197

`A000079(n+1)*A281500(2*n)`
-/

namespace A020540.P9090143604718273197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A281500 (2 * n)

end

end A020540.P9090143604718273197

namespace A020540

/-- `A000079(n+1)*A281500(2*n)` -/
def P9090143604718273197.Spec : Prop :=
  ∀ n, P9090143604718273197.a n = A020540 n

end A020540

/-! ## A020540.P1270583392356269813

`A000079(n+2)*A084181(2*n)`
-/

namespace A020540.P1270583392356269813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) * A084181 (2 * n)

end

end A020540.P1270583392356269813

namespace A020540

/-- `A000079(n+2)*A084181(2*n)` -/
def P1270583392356269813.Spec : Prop :=
  ∀ n, P1270583392356269813.a n = A020540 n

end A020540

/-! ## A020540.P1153940839404643139

`A000079(n+2)*A094360(2*n)`
-/

namespace A020540.P1153940839404643139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) * A094360 (2 * n)

end

end A020540.P1153940839404643139

namespace A020540

/-- `A000079(n+2)*A094360(2*n)` -/
def P1153940839404643139.Spec : Prop :=
  ∀ n, P1153940839404643139.a n = A020540 n

end A020540

/-! ## A020540.P11797797636427867851

`A000079(n+2)*A107663(2*n)`
-/

namespace A020540.P11797797636427867851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) * A107663 (2 * n)

end

end A020540.P11797797636427867851

namespace A020540

/-- `A000079(n+2)*A107663(2*n)` -/
def P11797797636427867851.Spec : Prop :=
  ∀ n, P11797797636427867851.a n = A020540 n

end A020540

/-!
# A020541: a(n) = 4th Chebyshev polynomial (second kind) evaluated at 2^n.

The programs for A020541, the canonical program `A020541.P3790213956886285013` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020541 has offset 0).

The definition of A020541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020541.P3790213956886285013

`16^(n+1)-3*4^(n+1)+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020541

/-- `16^(n+1)-3*4^(n+1)+1` -/
def P3790213956886285013.Spec : Prop :=
  ∀ n, P3790213956886285013.a n = A020541 n

theorem P3790213956886285013.correct : P3790213956886285013.Spec := by
  intro n
  simp only [A020541]

end A020541

/-! ## A020541.P16228418029256252949

`A033622(3*n+n+1)`
-/

namespace A020541.P16228418029256252949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033622 (3 * n + (n + 1))

end

end A020541.P16228418029256252949

namespace A020541

/-- `A033622(3*n+n+1)` -/
def P16228418029256252949.Spec : Prop :=
  ∀ n, P16228418029256252949.a n = A020541 n

end A020541

/-! ## A020541.P2153694792263992515

`(A024036(n+1)+A000079(n+1))*A156589(n+1)`
-/

namespace A020541.P2153694792263992515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024036 (n + 1) + A000079 (n + 1)) * A156589 (n + 1)

end

end A020541.P2153694792263992515

namespace A020541

/-- `(A024036(n+1)+A000079(n+1))*A156589(n+1)` -/
def P2153694792263992515.Spec : Prop :=
  ∀ n, P2153694792263992515.a n = A020541 n

end A020541

/-! ## A020541.P18366871570389641444

`A144139(2^n)`
-/

namespace A020541.P18366871570389641444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144139 (2 ^ n)

end

end A020541.P18366871570389641444

namespace A020541

/-- `A144139(2^n)` -/
def P18366871570389641444.Spec : Prop :=
  ∀ n, P18366871570389641444.a n = A020541 n

end A020541

/-! ## A020541.P13418872217612988336

`or(1, A144139(A000079(n)))`
-/

namespace A020541.P13418872217612988336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A144139 (A000079 n).toNat)

end

end A020541.P13418872217612988336

namespace A020541

/-- `or(1, A144139(A000079(n)))` -/
def P13418872217612988336.Spec : Prop :=
  ∀ n, P13418872217612988336.a n = A020541 n

end A020541

/-!
# A020542: a(n) = 5th Chebyshev polynomial (second kind) evaluated at 2^n.

The programs for A020542, the canonical program `A020542.P12432770559341870108` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020542 has offset 0).

The definition of A020542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020542.P12432770559341870108

`2^(1+n)*(3-4^(2+n)+16^(1+n))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020542

/-- `2^(1+n)*(3-4^(2+n)+16^(1+n))` -/
def P12432770559341870108.Spec : Prop :=
  ∀ n, P12432770559341870108.a n = A020542 n

theorem P12432770559341870108.correct : P12432770559341870108.Spec := by
  intro n
  simp only [A020542]

end A020542

/-! ## A020542.P11090559847910010679

`A020540(n)+2*A020539(n)`
-/

namespace A020542.P11090559847910010679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020540 n + 2 * A020539 n

end

end A020542.P11090559847910010679

namespace A020542

/-- `A020540(n)+2*A020539(n)` -/
def P11090559847910010679.Spec : Prop :=
  ∀ n, P11090559847910010679.a n = A020542 n

end A020542

/-! ## A020542.P1261056420463673679

`A242850(2^n)`
-/

namespace A020542.P1261056420463673679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242850 (2 ^ n)

end

end A020542.P1261056420463673679

namespace A020542

/-- `A242850(2^n)` -/
def P1261056420463673679.Spec : Prop :=
  ∀ n, P1261056420463673679.a n = A020542 n

end A020542

/-! ## A020542.P10442725741448975501

`record[A242850(Δ[A023758(n+1)])]`
-/

namespace A020542.P10442725741448975501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242850 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020542.P10442725741448975501

namespace A020542

/-- `record[A242850(Δ[A023758(n+1)])]` -/
def P10442725741448975501.Spec : Prop :=
  ∀ n, P10442725741448975501.a n = A020542 n

end A020542

/-! ## A020542.P17976014008236777170

`record[A242850(Δ[A048645(n+1)])]`
-/

namespace A020542.P17976014008236777170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242850 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020542.P17976014008236777170

namespace A020542

/-- `record[A242850(Δ[A048645(n+1)])]` -/
def P17976014008236777170.Spec : Prop :=
  ∀ n, P17976014008236777170.a n = A020542 n

end A020542

/-!
# A020543: a(0) = 1, a(1) = 1, a(n+1) = (n+1)*a(n) + n.

The programs for A020543, the canonical program `A020543.P5649233965623340607` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020543 has offset 0).

The definition of A020543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020543.P5649233965623340607

`2*n!-1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020543

/-- `2*n!-1` -/
def P5649233965623340607.Spec : Prop :=
  ∀ n, P5649233965623340607.a n = A020543 n

theorem P5649233965623340607.correct : P5649233965623340607.Spec := by
  intro n
  simp only [A020543]

end A020543

/-! ## A020543.P2797087795860433960

`a(n-1)*n+n-1` with `a(0)=1, a(1)=1`
-/

namespace A020543.P2797087795860433960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (n : ℤ) + ((n : ℤ) - 1)

end

end A020543.P2797087795860433960

namespace A020543

/-- `a(n-1)*n+n-1` -/
def P2797087795860433960.Spec : Prop :=
  ∀ n, P2797087795860433960.a n = A020543 n

end A020543

/-! ## A020543.P10645390612215111117

`n!+n!-1`
-/

namespace A020543.P10645390612215111117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + ((Nat.factorial n : ℤ) - 1)

end

end A020543.P10645390612215111117

namespace A020543

/-- `n!+n!-1` -/
def P10645390612215111117.Spec : Prop :=
  ∀ n, P10645390612215111117.a n = A020543 n

theorem P10645390612215111117.correct : P10645390612215111117.Spec := by
  intro n
  simp only [A020543, Nat.add_sub_cancel, A020543.P10645390612215111117.a, A020543.P5649233965623340607.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020543

/-! ## A020543.P8569300092280408795

`n!-(1-n!)`
-/

namespace A020543.P8569300092280408795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (1 - (Nat.factorial n : ℤ))

end

end A020543.P8569300092280408795

namespace A020543

/-- `n!-(1-n!)` -/
def P8569300092280408795.Spec : Prop :=
  ∀ n, P8569300092280408795.a n = A020543 n

theorem P8569300092280408795.correct : P8569300092280408795.Spec := by
  intro n
  simp only [A020543, Nat.add_sub_cancel, A020543.P8569300092280408795.a, A020543.P5649233965623340607.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020543

/-! ## A020543.P8165969361016556401

`xor(-2*n!, -1)`
-/

namespace A020543.P8165969361016556401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * Nat.factorial n : ℤ)) (-1)

end

end A020543.P8165969361016556401

namespace A020543

/-- `xor(-2*n!, -1)` -/
def P8165969361016556401.Spec : Prop :=
  ∀ n, P8165969361016556401.a n = A020543 n

end A020543

/-! ## A020543.P13098633233982364457

`abs(or(1, -2*n!))`
-/

namespace A020543.P13098633233982364457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(2 * Nat.factorial n : ℤ))|

end

end A020543.P13098633233982364457

namespace A020543

/-- `abs(or(1, -2*n!))` -/
def P13098633233982364457.Spec : Prop :=
  ∀ n, P13098633233982364457.a n = A020543 n

end A020543

/-! ## A020543.P9964994394949311344

`-or(1, -2*n!)`
-/

namespace A020543.P9964994394949311344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 * Nat.factorial n : ℤ))

end

end A020543.P9964994394949311344

namespace A020543

/-- `-or(1, -2*n!)` -/
def P9964994394949311344.Spec : Prop :=
  ∀ n, P9964994394949311344.a n = A020543 n

end A020543

/-! ## A020543.P5286464758613985710

`∏[abs(1-n)+1]-1`
-/

namespace A020543.P5286464758613985710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A020543.P5286464758613985710

namespace A020543

/-- `∏[abs(1-n)+1]-1` -/
def P5286464758613985710.Spec : Prop :=
  ∀ n, P5286464758613985710.a n = A020543 n

end A020543

/-! ## A020543.P1314429607281540433

`or(n-1, n*a(n-1))` with `a(0)=1`
-/

namespace A020543.P1314429607281540433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor ((n : ℤ) - 1) ((n : ℤ) * a (n - 1))

end

end A020543.P1314429607281540433

namespace A020543

/-- `or(n-1, n*a(n-1))` -/
def P1314429607281540433.Spec : Prop :=
  ∀ n, P1314429607281540433.a n = A020543 n

end A020543

/-! ## A020543.P10687341865202960693

`xor(n-1, n*a(n-1))` with `a(0)=1`
-/

namespace A020543.P10687341865202960693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor ((n : ℤ) - 1) ((n : ℤ) * a (n - 1))

end

end A020543.P10687341865202960693

namespace A020543

/-- `xor(n-1, n*a(n-1))` -/
def P10687341865202960693.Spec : Prop :=
  ∀ n, P10687341865202960693.a n = A020543 n

end A020543

/-!
# A020544: Second Bernoulli polynomial evaluated at x=n! (multiplied by 6).

The programs for A020544, the canonical program `A020544.P8179931965877407542` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020544 has offset 0).

The definition of A020544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020544.P8179931965877407542

`6*n!²-6*n!+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020544

/-- `6*n!²-6*n!+1` -/
def P8179931965877407542.Spec : Prop :=
  ∀ n, P8179931965877407542.a n = A020544 n

theorem P8179931965877407542.correct : P8179931965877407542.Spec := by
  intro n
  simp only [A020544]

end A020544

/-! ## A020544.P10414553231101930985

`12*C(n!, 2)+1`
-/

namespace A020544.P10414553231101930985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose (Nat.factorial n) 2 + 1

end

end A020544.P10414553231101930985

namespace A020544

/-- `12*C(n!, 2)+1` -/
def P10414553231101930985.Spec : Prop :=
  ∀ n, (P10414553231101930985.a n : ℤ) = A020544 n

end A020544

/-! ## A020544.P8520005169835146512

`xor(1, 6*(n!-1)*n!)`
-/

namespace A020544.P8520005169835146512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * (((Nat.factorial n : ℤ) - 1) * (Nat.factorial n : ℤ)))

end

end A020544.P8520005169835146512

namespace A020544

/-- `xor(1, 6*(n!-1)*n!)` -/
def P8520005169835146512.Spec : Prop :=
  ∀ n, P8520005169835146512.a n = A020544 n

end A020544

/-! ## A020544.P12068485442281695857

`6*A020547(n)+1`
-/

namespace A020544.P12068485442281695857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A020547 n + 1

end

end A020544.P12068485442281695857

namespace A020544

/-- `6*A020547(n)+1` -/
def P12068485442281695857.Spec : Prop :=
  ∀ n, P12068485442281695857.a n = A020544 n

end A020544

/-! ## A020544.P16255641208895921571

`6*A261471(n)-5`
-/

namespace A020544.P16255641208895921571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A261471 n - 5

end

end A020544.P16255641208895921571

namespace A020544

/-- `6*A261471(n)-5` -/
def P16255641208895921571.Spec : Prop :=
  ∀ n, P16255641208895921571.a n = A020544 n

end A020544

/-!
# A020545: 3rd Bernoulli polynomial evaluated at x=n!.

The programs for A020545, there is no canonical definition to state claims against.
-/

/-! ## A020545.P11561892381867849235

`A020543(n)/2*A020547(n)`
-/

namespace A020545.P11561892381867849235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020543 n : ℚ) / 2 * (A020547 n : ℚ)

end

end A020545.P11561892381867849235

/-! ## A020545.P15235175944931429684

`C(A000142(n), 2)*A020543(n)`
-/

namespace A020545.P15235175944931429684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000142 n).toNat 2 : ℤ) * A020543 n

end

end A020545.P15235175944931429684

/-! ## A020545.P11130717670402473110

`A059270(n!-1)`
-/

namespace A020545.P11130717670402473110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 (Nat.factorial n - 1)

end

end A020545.P11130717670402473110

/-! ## A020545.P15743338838115737627

`3*A225972(n!)`
-/

namespace A020545.P15743338838115737627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A225972 (Nat.factorial n)

end

end A020545.P15743338838115737627

/-!
# A020546: 4th Bernoulli polynomial evaluated at x=n! (multiplied by 30).

The programs for A020546, there is no canonical definition to state claims against.
-/

/-! ## A020546.P232136876061894055

`30*((n!-1)*n!)²-1`
-/

namespace A020546.P232136876061894055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * (((Nat.factorial n : ℤ) - 1) * (Nat.factorial n : ℤ)) ^ 2 - 1

end

end A020546.P232136876061894055

/-!
# A020547: 2nd Euler polynomial x^2 - x evaluated at x=n!.

The programs for A020547, the canonical program `A020547.P17789962853661916017` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020547 has offset 0).

The definition of A020547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020547.P17789962853661916017

`n!²-n!`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020547

/-- `n!²-n!` -/
def P17789962853661916017.Spec : Prop :=
  ∀ n, P17789962853661916017.a n = A020547 n

theorem P17789962853661916017.correct : P17789962853661916017.Spec := by
  intro n
  simp only [A020547]

end A020547

/-! ## A020547.P3110970499311851921

`n!*(n!-1)`
-/

namespace A020547.P3110970499311851921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((Nat.factorial n : ℤ) - 1)

end

end A020547.P3110970499311851921

namespace A020547

/-- `n!*(n!-1)` -/
def P3110970499311851921.Spec : Prop :=
  ∀ n, P3110970499311851921.a n = A020547 n

theorem P3110970499311851921.correct : P3110970499311851921.Spec := by
  intro n
  simp only [A020547, Nat.add_sub_cancel, A020547.P3110970499311851921.a, A020547.P17789962853661916017.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020547

/-! ## A020547.P16582481711948042012

`2*(A055555(n)-A000142(n))`
-/

namespace A020547.P16582481711948042012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055555 n - A000142 n)

end

end A020547.P16582481711948042012

namespace A020547

/-- `2*(A055555(n)-A000142(n))` -/
def P16582481711948042012.Spec : Prop :=
  ∀ n, P16582481711948042012.a n = A020547 n

end A020547

/-! ## A020547.P10334187626271351997

`2*C(n!, 2)`
-/

namespace A020547.P10334187626271351997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (Nat.factorial n) 2

end

end A020547.P10334187626271351997

namespace A020547

/-- `2*C(n!, 2)` -/
def P10334187626271351997.Spec : Prop :=
  ∀ n, (P10334187626271351997.a n : ℤ) = A020547 n

end A020547

/-! ## A020547.P10933590386593030221

`n!^2-n!`
-/

namespace A020547.P10933590386593030221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) - (Nat.factorial n : ℤ)

end

end A020547.P10933590386593030221

namespace A020547

/-- `n!^2-n!` -/
def P10933590386593030221.Spec : Prop :=
  ∀ n, P10933590386593030221.a n = A020547 n

theorem P10933590386593030221.correct : P10933590386593030221.Spec := by
  intro n
  simp only [A020547, Nat.add_sub_cancel, A020547.P10933590386593030221.a, A020547.P17789962853661916017.a, SequenceMachineLib.memo_apply]

end A020547

/-!
# A020548: 3rd Euler polynomial evaluated at x=n! (multiplied by 4).

The programs for A020548, the canonical program `A020548.P4109064308919072940` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020548 has offset 0).

The definition of A020548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020548.P4109064308919072940

`4*n!^3-6*n!²+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020548

/-- `4*n!^3-6*n!²+1` -/
def P4109064308919072940.Spec : Prop :=
  ∀ n, P4109064308919072940.a n = A020548 n

theorem P4109064308919072940.correct : P4109064308919072940.Spec := by
  intro n
  simp only [A020548]

end A020548

/-! ## A020548.P3597186898421435749

`4*A020545(n)-A020543(n)`
-/

namespace A020548.P3597186898421435749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020545 n - A020543 n

end

end A020548.P3597186898421435749

namespace A020548

/-- `4*A020545(n)-A020543(n)` -/
def P3597186898421435749.Spec : Prop :=
  ∀ n, P3597186898421435749.a n = A020548 n

end A020548

/-! ## A020548.P11954356336620772453

`4*A020543(n)/2*A020547(n)-A020543(n)`
-/

namespace A020548.P11954356336620772453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A020543 n : ℚ) / 2 * (A020547 n : ℚ)) - (A020543 n : ℚ)

end

end A020548.P11954356336620772453

namespace A020548

/-- `4*A020543(n)/2*A020547(n)-A020543(n)` -/
def P11954356336620772453.Spec : Prop :=
  ∀ n, P11954356336620772453.a n = (A020548 n : ℚ)

end A020548

/-! ## A020548.P2034266425537457897

`A141530(n!)`
-/

namespace A020548.P2034266425537457897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 (Nat.factorial n)

end

end A020548.P2034266425537457897

namespace A020548

/-- `A141530(n!)` -/
def P2034266425537457897.Spec : Prop :=
  ∀ n, P2034266425537457897.a n = A020548 n

end A020548

/-!
# A020549: a(n) = (n!)^2 + 1.

The programs for A020549, the canonical program `A020549.P16028107715467819987` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020549 has offset 0).

The definition of A020549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+1` (program `A020549.P16028107715467819987`, by `A020549.P16028107715467819987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A020549.P16028107715467819987

`n!²+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020549

/-- `n!²+1` -/
def P16028107715467819987.Spec : Prop :=
  ∀ n, (P16028107715467819987.a n : ℤ) = A020549 n

theorem P16028107715467819987.correct : P16028107715467819987.Spec := by
  intro n
  simp only [A020549]

end A020549

/-! ## A020549.P9576618415329295239

`n!^2+1`
-/

namespace A020549.P9576618415329295239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 + 1

end

end A020549.P9576618415329295239

namespace A020549

/-- `n!^2+1` -/
def P9576618415329295239.Spec : Prop :=
  ∀ n, (P9576618415329295239.a n : ℤ) = A020549 n

theorem P9576618415329295239.correct : P9576618415329295239.Spec := by
  intro n
  simp only [A020549, Nat.add_sub_cancel, A020549.P9576618415329295239.a, A020549.P16028107715467819987.a, SequenceMachineLib.memo_apply]

end A020549

/-! ## A020549.P9498500583914070803

`abs(xor(n!², -1))`
-/

namespace A020549.P9498500583914070803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.factorial n ^ 2 : ℤ) (-1)|

end

end A020549.P9498500583914070803

namespace A020549

/-- `abs(xor(n!², -1))` -/
def P9498500583914070803.Spec : Prop :=
  ∀ n, P9498500583914070803.a n = A020549 n

end A020549

/-! ## A020549.P6191660956432638984

`-xor(n!², -1)`
-/

namespace A020549.P6191660956432638984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Nat.factorial n ^ 2 : ℤ) (-1)

end

end A020549.P6191660956432638984

namespace A020549

/-- `-xor(n!², -1)` -/
def P6191660956432638984.Spec : Prop :=
  ∀ n, P6191660956432638984.a n = A020549 n

end A020549

/-! ## A020549.P4402693966741042527

`or(2, n!²)-1`
-/

namespace A020549.P4402693966741042527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (Nat.factorial n ^ 2) : ℤ) - 1

end

end A020549.P4402693966741042527

namespace A020549

/-- `or(2, n!²)-1` -/
def P4402693966741042527.Spec : Prop :=
  ∀ n, P4402693966741042527.a n = A020549 n

end A020549

/-!
# A020550: 4th Fibonacci polynomial evaluated at x=n!.

The programs for A020550, the canonical program `A020550.P655277780954376329` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020550 has offset 0).

The definition of A020550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020550.P655277780954376329

`n!^3+2*n!`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020550

/-- `n!^3+2*n!` -/
def P655277780954376329.Spec : Prop :=
  ∀ n, (P655277780954376329.a n : ℤ) = A020550 n

theorem P655277780954376329.correct : P655277780954376329.Spec := by
  intro n
  simp only [A020550]

end A020550

/-! ## A020550.P10837394991034957315

`n!*(n!²+2)`
-/

namespace A020550.P10837394991034957315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (Nat.factorial n ^ 2 + 2)

end

end A020550.P10837394991034957315

namespace A020550

/-- `n!*(n!²+2)` -/
def P10837394991034957315.Spec : Prop :=
  ∀ n, (P10837394991034957315.a n : ℤ) = A020550 n

theorem P10837394991034957315.correct : P10837394991034957315.Spec := by
  intro n
  simp only [A020550, Nat.add_sub_cancel, A020550.P10837394991034957315.a, A020550.P655277780954376329.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020550

/-! ## A020550.P7909986220369526083

`n!*or(2, n!²)`
-/

namespace A020550.P7909986220369526083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.lor 2 (Nat.factorial n ^ 2)

end

end A020550.P7909986220369526083

namespace A020550

/-- `n!*or(2, n!²)` -/
def P7909986220369526083.Spec : Prop :=
  ∀ n, (P7909986220369526083.a n : ℤ) = A020550 n

end A020550

/-! ## A020550.P10330602896512325769

`n!*xor(2, n!²)`
-/

namespace A020550.P10330602896512325769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.xor 2 (Nat.factorial n ^ 2)

end

end A020550.P10330602896512325769

namespace A020550

/-- `n!*xor(2, n!²)` -/
def P10330602896512325769.Spec : Prop :=
  ∀ n, (P10330602896512325769.a n : ℤ) = A020550 n

end A020550

/-! ## A020550.P3768067971971368899

`∏[C(n, a(n-1))]+n!^3` with `a(0)=2, a(1)=1`
-/

namespace A020550.P3768067971971368899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n ^ 3

end

end A020550.P3768067971971368899

namespace A020550

/-- `∏[C(n, a(n-1))]+n!^3` -/
def P3768067971971368899.Spec : Prop :=
  ∀ n, (P3768067971971368899.a n : ℤ) = A020550 n

end A020550

/-!
# A020551: 5th Fibonacci polynomial evaluated at x = n!.

The programs for A020551, the canonical program `A020551.P4979892754791003685` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020551 has offset 0).

The definition of A020551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020551.P4979892754791003685

`n!^4+3*n!²+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020551

/-- `n!^4+3*n!²+1` -/
def P4979892754791003685.Spec : Prop :=
  ∀ n, (P4979892754791003685.a n : ℤ) = A020551 n

theorem P4979892754791003685.correct : P4979892754791003685.Spec := by
  intro n
  simp only [A020551]

end A020551

/-! ## A020551.P7183216998311144694

`(n!²+1)²+n!²`
-/

namespace A020551.P7183216998311144694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 + 1) ^ 2 + Nat.factorial n ^ 2

end

end A020551.P7183216998311144694

namespace A020551

/-- `(n!²+1)²+n!²` -/
def P7183216998311144694.Spec : Prop :=
  ∀ n, (P7183216998311144694.a n : ℤ) = A020551 n

theorem P7183216998311144694.correct : P7183216998311144694.Spec := by
  intro n
  simp only [A020551, Nat.add_sub_cancel, A020551.P7183216998311144694.a, A020551.P4979892754791003685.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A020551

/-! ## A020551.P5167389413965759911

`n!²+A020549(n)²`
-/

namespace A020551.P5167389413965759911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) + A020549 n ^ 2

end

end A020551.P5167389413965759911

namespace A020551

/-- `n!²+A020549(n)²` -/
def P5167389413965759911.Spec : Prop :=
  ∀ n, P5167389413965759911.a n = A020551 n

end A020551

/-! ## A020551.P9479133107760148908

`A001044(n)+(n!²+1)²`
-/

namespace A020551.P9479133107760148908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n + ((Nat.factorial n ^ 2 + 1) ^ 2 : ℤ)

end

end A020551.P9479133107760148908

namespace A020551

/-- `A001044(n)+(n!²+1)²` -/
def P9479133107760148908.Spec : Prop :=
  ∀ n, P9479133107760148908.a n = A020551 n

end A020551

/-! ## A020551.P6900322562292607526

`A001044(n)+A020549(n)²`
-/

namespace A020551.P6900322562292607526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n + A020549 n ^ 2

end

end A020551.P6900322562292607526

namespace A020551

/-- `A001044(n)+A020549(n)²` -/
def P6900322562292607526.Spec : Prop :=
  ∀ n, P6900322562292607526.a n = A020551 n

end A020551

/-!
# A020552: 6th Fibonacci polynomial evaluated at x=n!.

The programs for A020552, there is no canonical definition to state claims against.
-/

/-! ## A020552.P5203592397756100485

`((A000142(n)²+2)²-1)*A000142(n)`
-/

namespace A020552.P5203592397756100485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000142 n ^ 2 + 2) ^ 2 - 1) * A000142 n

end

end A020552.P5203592397756100485

/-! ## A020552.P7675549621705406190

`A124152(n!)`
-/

namespace A020552.P7675549621705406190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124152 (Nat.factorial n)

end

end A020552.P7675549621705406190

/-! ## A020552.P17567369573087868885

`n!*A304726(n!)`
-/

namespace A020552.P17567369573087868885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A304726 (Nat.factorial n)

end

end A020552.P17567369573087868885

/-! ## A020552.P9180759012487164748

`A124152(∏[round(sqrt(n²+1))])`
-/

namespace A020552.P9180759012487164748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124152 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A020552.P9180759012487164748

/-!
# A020553: 7th Fibonacci polynomial evaluated at x=n!.

The programs for A020553, the canonical program `A020553.P3254767557005418301` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020553 has offset 0).

The definition of A020553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020553.P3254767557005418301

`n!^6+5*n!^4+6*n!²+1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020553

/-- `n!^6+5*n!^4+6*n!²+1` -/
def P3254767557005418301.Spec : Prop :=
  ∀ n, (P3254767557005418301.a n : ℤ) = A020553 n

theorem P3254767557005418301.correct : P3254767557005418301.Spec := by
  intro n
  simp only [A020553]

end A020553

/-!
# A020554: Number of multigraphs on n labeled edges (without loops).

The programs for A020554, there is no canonical definition to state claims against.
-/

/-! ## A020554.P10410766401708589946

`A098628(n)/2^n`
-/

namespace A020554.P10410766401708589946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098628 n : ℚ) / (2 ^ n : ℚ)

end

end A020554.P10410766401708589946

/-! ## A020554.P7012965124145513203

`A020556(n)/A098631(n)*A098628(n)`
-/

namespace A020554.P7012965124145513203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020556 n : ℚ) / (A098631 n : ℚ) * (A098628 n : ℚ)

end

end A020554.P7012965124145513203

/-! ## A020554.P5767915988354517179

`A188392(A133263(n))`
-/

namespace A020554.P5767915988354517179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A133263 n).toNat

end

end A020554.P5767915988354517179

/-! ## A020554.P15542577277194083796

`A188392(A238531(n+1))`
-/

namespace A020554.P15542577277194083796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A238531 (n + 1)).toNat

end

end A020554.P15542577277194083796

/-! ## A020554.P2495180225223559505

`A188392(A000124(n+1)-A065033(2*n))`
-/

namespace A020554.P2495180225223559505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A000124 (n + 1) - A065033 (2 * n)).toNat

end

end A020554.P2495180225223559505

/-!
# A020555: Number of multigraphs on n labeled edges (with loops). Also number of genetically distinct states amongst n individuals.

The programs for A020555, there is no canonical definition to state claims against.
-/

/-! ## A020555.P2357110694100700473

`A322765(∑[n]+n)`
-/

namespace A020555.P2357110694100700473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322765 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A020555.P2357110694100700473

/-! ## A020555.P12766928730760552436

`record[A322765(A279416(n+1))]`
-/

namespace A020555.P12766928730760552436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322765 (A279416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020555.P12766928730760552436

/-! ## A020555.P14372661102022310023

`record[A322765(n)/A076756(n)]`
-/

namespace A020555.P14372661102022310023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322765 n : ℚ) / (A076756 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020555.P14372661102022310023

/-! ## A020555.P11632628964241798581

`record[A322765(n)/A101038(n)]`
-/

namespace A020555.P11632628964241798581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322765 n : ℚ) / (A101038 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020555.P11632628964241798581

/-! ## A020555.P10102069572838246280

`record[A322765(n)/A322790(n)]`
-/

namespace A020555.P10102069572838246280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322765 n : ℚ) / (A322790 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020555.P10102069572838246280

/-! ## A020555.P9174303429820035897

`record[root(A322765(n), A055216(n))]`
-/

namespace A020555.P9174303429820035897
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322765 n : ℝ) ^ (1 / (A055216 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020555.P9174303429820035897

/-! ## A020555.P12794101244050177874

`record[A322765(gcd(n, A025581(n)))]`
-/

namespace A020555.P12794101244050177874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322765 (Int.gcd (n : ℤ) (A025581 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020555.P12794101244050177874

/-! ## A020555.P18161024105595124665

`record[A322765(record[n/A055216(n)])]`
-/

namespace A020555.P18161024105595124665
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A055216 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322765 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020555.P18161024105595124665

/-! ## A020555.P16677274227159744894

`record[root(A322765(n), A004736(n+1))]`
-/

namespace A020555.P16677274227159744894
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A322765 n : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020555.P16677274227159744894

/-! ## A020555.P11969276452928922389

`gcd(A000038(n), A322765(A000096(n)))`
-/

namespace A020555.P11969276452928922389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A322765 (A000096 n).toNat)

end

end A020555.P11969276452928922389

/-!
# A020556: Number of oriented multigraphs on n labeled arcs (without loops).

The programs for A020556, there is no canonical definition to state claims against.
-/

/-! ## A020556.P3796335625744694506

`A123346(2*n²)`
-/

namespace A020556.P3796335625744694506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (2 * n ^ 2)

end

end A020556.P3796335625744694506

/-! ## A020556.P1370703979866430202

`A095149(∑[4*n])`
-/

namespace A020556.P1370703979866430202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020556.P1370703979866430202

/-! ## A020556.P1682742319583375899

`A106436(∑[4*n])`
-/

namespace A020556.P1682742319583375899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020556.P1682742319583375899

/-! ## A020556.P5468896082793702351

`A011972(2*(n²-n))`
-/

namespace A020556.P5468896082793702351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (2 * ((n ^ 2 : ℤ) - (n : ℤ))).toNat

end

end A020556.P5468896082793702351

/-! ## A020556.P18165939411208084326

`A182930((n+1)²+n²)`
-/

namespace A020556.P18165939411208084326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 ((n + 1) ^ 2 + n ^ 2)

end

end A020556.P18165939411208084326

/-!
# A020557: Number of oriented multigraphs on n labeled arcs (with loops).

The programs for A020557, there is no canonical definition to state claims against.
-/

/-! ## A020557.P6127144347516924260

`A000110(2*n)`
-/

namespace A020557.P6127144347516924260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (2 * n)

end

end A020557.P6127144347516924260

/-! ## A020557.P658994624585950997

`record[A292935(n)]`
-/

namespace A020557.P658994624585950997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020557.P658994624585950997

/-! ## A020557.P13340244103857027168

`A292935(2*n)`
-/

namespace A020557.P13340244103857027168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 (2 * n)

end

end A020557.P13340244103857027168

/-! ## A020557.P3541880854503670865

`A188164(4*n)`
-/

namespace A020557.P3541880854503670865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (4 * n)

end

end A020557.P3541880854503670865

/-! ## A020557.P6682085900398653798

`A343254(∑[2*n])`
-/

namespace A020557.P6682085900398653798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020557.P6682085900398653798

/-!
# A020558: Number of ordered multigraphs on n labeled edges (without loops).

The programs for A020558, there is no canonical definition to state claims against.
-/

/-! ## A020558.P10676492759473048835

`A326545(A018009(n))+A045503(n)`
-/

namespace A020558.P10676492759473048835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 (A018009 n).toNat + A045503 n

end

end A020558.P10676492759473048835

/-! ## A020558.P14089031567931149881

`A156077(A091151(n)*A279573(n))`
-/

namespace A020558.P14089031567931149881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A091151 n * A279573 n).toNat

end

end A020558.P14089031567931149881

/-!
# A020559: Number of ordered multigraphs on n labeled edges (with loops).

The programs for A020559, there is no canonical definition to state claims against.
-/

/-! ## A020559.P17000404599916287455

`A027925(n^(n+1)+1)`
-/

namespace A020559.P17000404599916287455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027925 (n ^ (n + 1) + 1)

end

end A020559.P17000404599916287455

/-!
# A020560: Number of ordered oriented multigraphs on n labeled arcs (without loops).

The programs for A020560, there is no canonical definition to state claims against.
-/

/-! ## A020560.P341918702966490282

`∏{d}[A007716(n), A292050(#)]`
-/

namespace A020560.P341918702966490282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A292050 d

end

end A020560.P341918702966490282

/-!
# A020561: Number of ordered oriented multigraphs on n labeled arcs (with loops).

The programs for A020561, there is no canonical definition to state claims against.
-/

/-! ## A020561.P10518036023146887838

`A077026(∑[record[A103137(n)]])`
-/

namespace A020561.P10518036023146887838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077026 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A020561.P10518036023146887838

/-!
# A020562: Number of cyclic multigraphs on n labeled edges (without loops).

The programs for A020562, there is no canonical definition to state claims against.
-/

/-! ## A020562.P3805895625791138787

`A004525(A240958(n)+A024430(n))`
-/

namespace A020562.P3805895625791138787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A240958 n + A024430 n).toNat

end

end A020562.P3805895625791138787

/-! ## A020562.P9963292220109001122

`A004525(A240958(n)+A036720(n))`
-/

namespace A020562.P9963292220109001122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A240958 n + A036720 n).toNat

end

end A020562.P9963292220109001122

/-!
# A020563: Number of cyclic multigraphs on n labeled edges (with loops).

The programs for A020563, there is no canonical definition to state claims against.
-/

/-! ## A020563.P12919218726063132199

`(n+1)*A247911(n^n)`
-/

namespace A020563.P12919218726063132199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A247911 (n ^ n)

end

end A020563.P12919218726063132199

/-!
# A020564: Number of cyclic oriented multigraphs on n labeled arcs (without loops).

The programs for A020564, there is no canonical definition to state claims against.
-/

/-! ## A020564.P13691887978163062276

`A018825(A156326(n))`
-/

namespace A020564.P13691887978163062276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (A156326 n).toNat

end

end A020564.P13691887978163062276

/-!
# A020565: Number of cyclic oriented multigraphs on n labeled arcs (with loops).

The programs for A020565, there is no canonical definition to state claims against.
-/

/-! ## A020565.P3221347627874188426

`A038722(or(n+1, A258295(n)))`
-/

namespace A020565.P3221347627874188426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (Int.lor (n + 1 : ℤ) (A258295 n)).toNat

end

end A020565.P3221347627874188426

/-!
# A020566: Expansion of 1/((1-5x)(1-9x)(1-12x)).

The programs for A020566, the canonical program `A020566.P13204495895774021951` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020566 has offset 0).

The definition of A020566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020566.P13204495895774021951

`21*a(n-1)-108*a(n-2)+5^n` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020566

/-- `21*a(n-1)-108*a(n-2)+5^n` -/
def P13204495895774021951.Spec : Prop :=
  ∀ n, P13204495895774021951.a n = A020566 n

theorem P13204495895774021951.correct : P13204495895774021951.Spec := by
  intro n
  simp only [A020566]

end A020566

/-! ## A020566.P460635732358813402

`A016166(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A020566.P460635732358813402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016166 n + 9 * a (n - 1)

end

end A020566.P460635732358813402

namespace A020566

/-- `A016166(n)+9*a(n-1)` -/
def P460635732358813402.Spec : Prop :=
  ∀ n, P460635732358813402.a n = A020566 n

end A020566

/-! ## A020566.P4085871300114725472

`2*A016263(n)-A016239(n)`
-/

namespace A020566.P4085871300114725472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016263 n - A016239 n

end

end A020566.P4085871300114725472

namespace A020566

/-- `2*A016263(n)-A016239(n)` -/
def P4085871300114725472.Spec : Prop :=
  ∀ n, P4085871300114725472.a n = A020566 n

end A020566

/-! ## A020566.P13895030462785055154

`2*A019869(n)-A019793(n)`
-/

namespace A020566.P13895030462785055154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019869 n - A019793 n

end

end A020566.P13895030462785055154

namespace A020566

/-- `2*A019869(n)-A019793(n)` -/
def P13895030462785055154.Spec : Prop :=
  ∀ n, P13895030462785055154.a n = A020566 n

end A020566

/-! ## A020566.P13025791473229352915

`∑[A255463(n)]*A000244(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A020566.P13025791473229352915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n + 5 * a (n - 1)

end

end A020566.P13025791473229352915

namespace A020566

/-- `∑[A255463(n)]*A000244(n)+5*a(n-1)` -/
def P13025791473229352915.Spec : Prop :=
  ∀ n, P13025791473229352915.a n = A020566 n

end A020566

/-! ## A020566.P8337839902635937945

`A016302(n)+A016324(n)-A016298(n)`
-/

namespace A020566.P8337839902635937945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016302 n + (A016324 n - A016298 n)

end

end A020566.P8337839902635937945

namespace A020566

/-- `A016302(n)+A016324(n)-A016298(n)` -/
def P8337839902635937945.Spec : Prop :=
  ∀ n, P8337839902635937945.a n = A020566 n

end A020566

/-!
# A020567: Expansion of 1/((1-5x)(1-10x)(1-11x)).

The programs for A020567, the canonical program `A020567.P6501847014104547194` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020567 has offset 0).

The definition of A020567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020567.P6501847014104547194

`21*a(n-1)-110*a(n-2)+5^n` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020567

/-- `21*a(n-1)-110*a(n-2)+5^n` -/
def P6501847014104547194.Spec : Prop :=
  ∀ n, P6501847014104547194.a n = A020567 n

theorem P6501847014104547194.correct : P6501847014104547194.Spec := by
  intro n
  simp only [A020567]

end A020567

/-! ## A020567.P5521143933860046998

`A016165(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A020567.P5521143933860046998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016165 n + 10 * a (n - 1)

end

end A020567.P5521143933860046998

namespace A020567

/-- `A016165(n)+10*a(n-1)` -/
def P5521143933860046998.Spec : Prop :=
  ∀ n, P5521143933860046998.a n = A020567 n

end A020567

/-! ## A020567.P811025222318089632

`Δ[A016238(n)-A016237(n)]`
-/

namespace A020567.P811025222318089632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016238 n - A016237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020567.P811025222318089632

namespace A020567

/-- `Δ[A016238(n)-A016237(n)]` -/
def P811025222318089632.Spec : Prop :=
  ∀ n, P811025222318089632.a n = A020567 n

end A020567

/-! ## A020567.P2651063769592447413

`2*A020499(n)-A020494(n)`
-/

namespace A020567.P2651063769592447413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020499 n - A020494 n

end

end A020567.P2651063769592447413

namespace A020567

/-- `2*A020499(n)-A020494(n)` -/
def P2651063769592447413.Spec : Prop :=
  ∀ n, P2651063769592447413.a n = A020567 n

end A020567

/-! ## A020567.P16923784395789856055

`A016165(n+1)-A016164(n+1)`
-/

namespace A020567.P16923784395789856055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016165 (n + 1) - A016164 (n + 1)

end

end A020567.P16923784395789856055

namespace A020567

/-- `A016165(n+1)-A016164(n+1)` -/
def P16923784395789856055.Spec : Prop :=
  ∀ n, P16923784395789856055.a n = A020567 n

end A020567

/-! ## A020567.P17203503743028154294

`Δ[(A016265(n)-A016238(n))/5]`
-/

namespace A020567.P17203503743028154294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016265 n - A016238 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020567.P17203503743028154294

namespace A020567

/-- `Δ[(A016265(n)-A016238(n))/5]` -/
def P17203503743028154294.Spec : Prop :=
  ∀ n, P17203503743028154294.a n = (A020567 n : ℚ)

end A020567

/-! ## A020567.P14731502774943112352

`2*A020568(n)-A020569(n)`
-/

namespace A020567.P14731502774943112352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020568 n - A020569 n

end

end A020567.P14731502774943112352

namespace A020567

/-- `2*A020568(n)-A020569(n)` -/
def P14731502774943112352.Spec : Prop :=
  ∀ n, P14731502774943112352.a n = A020567 n

end A020567

/-!
# A020568: G.f.: 1/((1-5x)(1-10x)(1-12x)).

The programs for A020568, the canonical program `A020568.P11572612084542246155` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020568 has offset 0).

The definition of A020568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020568.P11572612084542246155

`27*a(n-1)-230*a(n-2)+600*a(n-3)` with `a(0)=1, a(1)=27, a(2)=499`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020568

/-- `27*a(n-1)-230*a(n-2)+600*a(n-3)` -/
def P11572612084542246155.Spec : Prop :=
  ∀ n, P11572612084542246155.a n = A020568 n

theorem P11572612084542246155.correct : P11572612084542246155.Spec := by
  intro n
  simp only [A020568]

end A020568

/-! ## A020568.P15905601947045235952

`5*a(n-1)+6*12^n-5*10^n` with `a(0)=1`
-/

namespace A020568.P15905601947045235952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + ((6 * 12 ^ n : ℤ) - (5 * 10 ^ n : ℤ))

end

end A020568.P15905601947045235952

namespace A020568

/-- `5*a(n-1)+6*12^n-5*10^n` -/
def P15905601947045235952.Spec : Prop :=
  ∀ n, P15905601947045235952.a n = A020568 n

end A020568

/-! ## A020568.P6803350360865505741

`A016196(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A020568.P6803350360865505741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016196 n + 5 * a (n - 1)

end

end A020568.P6803350360865505741

namespace A020568

/-- `A016196(n)+5*a(n-1)` -/
def P6803350360865505741.Spec : Prop :=
  ∀ n, P6803350360865505741.a n = A020568 n

end A020568

/-! ## A020568.P15849019726304374978

`A016166(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A020568.P15849019726304374978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016166 n + 10 * a (n - 1)

end

end A020568.P15849019726304374978

namespace A020568

/-- `A016166(n)+10*a(n-1)` -/
def P15849019726304374978.Spec : Prop :=
  ∀ n, P15849019726304374978.a n = A020568 n

end A020568

/-! ## A020568.P2587901960297176740

`(A020569(n)+A020567(n))/2`
-/

namespace A020568.P2587901960297176740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020569 n + A020567 n : ℚ) / 2

end

end A020568.P2587901960297176740

namespace A020568

/-- `(A020569(n)+A020567(n))/2` -/
def P2587901960297176740.Spec : Prop :=
  ∀ n, P2587901960297176740.a n = (A020568 n : ℚ)

end A020568

/-!
# A020569: Expansion of g.f. 1/((1 - 5*x)*(1 - 11*x)*(1 - 12*x)).

The programs for A020569, the canonical program `A020569.P1728628854526897939` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020569 has offset 0).

The definition of A020569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020569.P1728628854526897939

`23*a(n-1)-132*a(n-2)+5^n` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020569

/-- `23*a(n-1)-132*a(n-2)+5^n` -/
def P1728628854526897939.Spec : Prop :=
  ∀ n, P1728628854526897939.a n = A020569 n

theorem P1728628854526897939.correct : P1728628854526897939.Spec := by
  intro n
  simp only [A020569]

end A020569

/-! ## A020569.P6749150021806562471

`Δ[A016239(n)-A016238(n)]`
-/

namespace A020569.P6749150021806562471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 n - A016238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020569.P6749150021806562471

namespace A020569

/-- `Δ[A016239(n)-A016238(n)]` -/
def P6749150021806562471.Spec : Prop :=
  ∀ n, P6749150021806562471.a n = A020569 n

end A020569

/-! ## A020569.P13172107354584279571

`2*A020568(n)-A020567(n)`
-/

namespace A020569.P13172107354584279571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020568 n - A020567 n

end

end A020569.P13172107354584279571

namespace A020569

/-- `2*A020568(n)-A020567(n)` -/
def P13172107354584279571.Spec : Prop :=
  ∀ n, P13172107354584279571.a n = A020569 n

end A020569

/-! ## A020569.P169190422970039703

`Δ[∑[A016166(n)]-A016238(n)]`
-/

namespace A020569.P169190422970039703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020569.P169190422970039703

namespace A020569

/-- `Δ[∑[A016166(n)]-A016238(n)]` -/
def P169190422970039703.Spec : Prop :=
  ∀ n, P169190422970039703.a n = A020569 n

end A020569

/-! ## A020569.P13085315134139980740

`Δ[A016239(n)-∑[A016165(n)]]`
-/

namespace A020569.P13085315134139980740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016165 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020569.P13085315134139980740

namespace A020569

/-- `Δ[A016239(n)-∑[A016165(n)]]` -/
def P13085315134139980740.Spec : Prop :=
  ∀ n, P13085315134139980740.a n = A020569 n

end A020569

/-! ## A020569.P6063111307400131044

`A016166(n+1)-Δ[A016238(n)]`
-/

namespace A020569.P6063111307400131044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016166 (n + 1) - (f1 (n + 1) - f1 n)

end

end A020569.P6063111307400131044

namespace A020569

/-- `A016166(n+1)-Δ[A016238(n)]` -/
def P6063111307400131044.Spec : Prop :=
  ∀ n, P6063111307400131044.a n = A020569 n

end A020569

/-! ## A020569.P13494310815219530134

`Δ[A016239(n)]-A016165(n+1)`
-/

namespace A020569.P13494310815219530134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016165 (n + 1)

end

end A020569.P13494310815219530134

namespace A020569

/-- `Δ[A016239(n)]-A016165(n+1)` -/
def P13494310815219530134.Spec : Prop :=
  ∀ n, P13494310815219530134.a n = A020569 n

end A020569

/-! ## A020569.P11410237688658325755

`Δ[A016239(n)-∑[A139743(n+1)/6]]`
-/

namespace A020569.P11410237688658325755
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139743 (n + 1) : ℚ) / 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016239 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020569.P11410237688658325755

namespace A020569

/-- `Δ[A016239(n)-∑[A139743(n+1)/6]]` -/
def P11410237688658325755.Spec : Prop :=
  ∀ n, P11410237688658325755.a n = (A020569 n : ℚ)

end A020569

/-! ## A020569.P17634875269232596864

`Δ[A016302(n)-A016238(n)]-A016302(n)`
-/

namespace A020569.P17634875269232596864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016302 n - A016238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016302 n

end

end A020569.P17634875269232596864

namespace A020569

/-- `Δ[A016302(n)-A016238(n)]-A016302(n)` -/
def P17634875269232596864.Spec : Prop :=
  ∀ n, P17634875269232596864.a n = A020569 n

end A020569

/-! ## A020569.P3854450795284687520

`Δ[A016239(n)-(2*A016265(n)-A023946(n))]`
-/

namespace A020569.P3854450795284687520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 n - (2 * A016265 n - A023946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020569.P3854450795284687520

namespace A020569

/-- `Δ[A016239(n)-(2*A016265(n)-A023946(n))]` -/
def P3854450795284687520.Spec : Prop :=
  ∀ n, P3854450795284687520.a n = A020569 n

end A020569

/-!
# A020570: Expansion of g.f. 1/((1-6*x)*(1-7*x)*(1-8*x)).

The programs for A020570, the canonical program `A020570.P5851975197806407532` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020570 has offset 0).

The definition of A020570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020570.P5851975197806407532

`18*6^n-49*7^n+32*8^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020570

/-- `18*6^n-49*7^n+32*8^n` -/
def P5851975197806407532.Spec : Prop :=
  ∀ n, P5851975197806407532.a n = A020570 n

theorem P5851975197806407532.correct : P5851975197806407532.Spec := by
  intro n
  simp only [A020570]

end A020570

/-! ## A020570.P14358685360356711428

`Δ[A016243(n)-A016241(n)]`
-/

namespace A020570.P14358685360356711428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016243 n - A016241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020570.P14358685360356711428

namespace A020570

/-- `Δ[A016243(n)-A016241(n)]` -/
def P14358685360356711428.Spec : Prop :=
  ∀ n, P14358685360356711428.a n = A020570 n

end A020570

/-! ## A020570.P17217952767508036563

`abs(A081189(n+2)-A000420(n+2))`
-/

namespace A020570.P17217952767508036563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081189 (n + 2) - A000420 (n + 2)|

end

end A020570.P17217952767508036563

namespace A020570

/-- `abs(A081189(n+2)-A000420(n+2))` -/
def P17217952767508036563.Spec : Prop :=
  ∀ n, P17217952767508036563.a n = A020570 n

end A020570

/-! ## A020570.P2238291000724187882

`Δ[A016249(n)-A016243(n)]`
-/

namespace A020570.P2238291000724187882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016249 n - A016243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020570.P2238291000724187882

namespace A020570

/-- `Δ[A016249(n)-A016243(n)]` -/
def P2238291000724187882.Spec : Prop :=
  ∀ n, P2238291000724187882.a n = A020570 n

end A020570

/-!
# A020571: Expansion of g.f. 1/((1-6*x)*(1-7*x)*(1-9*x)).

The programs for A020571, the canonical program `A020571.P17881902036686307012` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020571 has offset 0).

The definition of A020571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020571.P17881902036686307012

`16*a(n-1)-63*a(n-2)+6^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020571

/-- `16*a(n-1)-63*a(n-2)+6^n` -/
def P17881902036686307012.Spec : Prop :=
  ∀ n, P17881902036686307012.a n = A020571 n

theorem P17881902036686307012.correct : P17881902036686307012.Spec := by
  intro n
  simp only [A020571]

end A020571

/-! ## A020571.P14237577038870129229

`A016172(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A020571.P14237577038870129229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016172 n + 7 * a (n - 1)

end

end A020571.P14237577038870129229

namespace A020571

/-- `A016172(n)+7*a(n-1)` -/
def P14237577038870129229.Spec : Prop :=
  ∀ n, P14237577038870129229.a n = A020571 n

end A020571

/-! ## A020571.P4438867329819899645

`Δ[A016250(n)-A016244(n)]`
-/

namespace A020571.P4438867329819899645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016250 n - A016244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020571.P4438867329819899645

namespace A020571

/-- `Δ[A016250(n)-A016244(n)]` -/
def P4438867329819899645.Spec : Prop :=
  ∀ n, P4438867329819899645.a n = A020571 n

end A020571

/-! ## A020571.P11436180679893175128

`2*A019793(n)-A019757(n)`
-/

namespace A020571.P11436180679893175128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019793 n - A019757 n

end

end A020571.P11436180679893175128

namespace A020571

/-- `2*A019793(n)-A019757(n)` -/
def P11436180679893175128.Spec : Prop :=
  ∀ n, P11436180679893175128.a n = A020571 n

end A020571

/-! ## A020571.P15612726459576469888

`(A020579(n)+A020570(n))/2`
-/

namespace A020571.P15612726459576469888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020579 n + A020570 n : ℚ) / 2

end

end A020571.P15612726459576469888

namespace A020571

/-- `(A020579(n)+A020570(n))/2` -/
def P15612726459576469888.Spec : Prop :=
  ∀ n, P15612726459576469888.a n = (A020571 n : ℚ)

end A020571

/-! ## A020571.P1857920142483465377

`A016178(n+1)-A016172(n+1)`
-/

namespace A020571.P1857920142483465377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016178 (n + 1) - A016172 (n + 1)

end

end A020571.P1857920142483465377

namespace A020571

/-- `A016178(n+1)-A016172(n+1)` -/
def P1857920142483465377.Spec : Prop :=
  ∀ n, P1857920142483465377.a n = A020571 n

end A020571

/-! ## A020571.P4742037415976587324

`6*a(n-1)+A016178(n)*A057427(n)` with `a(0)=1`
-/

namespace A020571.P4742037415976587324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + A016178 n * A057427 n

end

end A020571.P4742037415976587324

namespace A020571

/-- `6*a(n-1)+A016178(n)*A057427(n)` -/
def P4742037415976587324.Spec : Prop :=
  ∀ n, P4742037415976587324.a n = A020571 n

end A020571

/-! ## A020571.P12513906265741742870

`2*A020573(n)-A020606(n)`
-/

namespace A020571.P12513906265741742870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020573 n - A020606 n

end

end A020571.P12513906265741742870

namespace A020571

/-- `2*A020573(n)-A020606(n)` -/
def P12513906265741742870.Spec : Prop :=
  ∀ n, P12513906265741742870.a n = A020571 n

end A020571

/-!
# A020572: Expansion of g.f. 1/((1 - 6*x)*(1 - 7*x)*(1 - 10*x)).

The programs for A020572, the canonical program `A020572.P5519520982728177341` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020572 has offset 0).

The definition of A020572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020572.P5519520982728177341

`17*a(n-1)-70*a(n-2)+6^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020572

/-- `17*a(n-1)-70*a(n-2)+6^n` -/
def P5519520982728177341.Spec : Prop :=
  ∀ n, P5519520982728177341.a n = A020572 n

theorem P5519520982728177341.correct : P5519520982728177341.Spec := by
  intro n
  simp only [A020572]

end A020572

/-! ## A020572.P16052956967906592641

`A016173(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A020572.P16052956967906592641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016173 n + 7 * a (n - 1)

end

end A020572.P16052956967906592641

namespace A020572

/-- `A016173(n)+7*a(n-1)` -/
def P16052956967906592641.Spec : Prop :=
  ∀ n, P16052956967906592641.a n = A020572 n

end A020572

/-! ## A020572.P6551739782778040540

`2*A016313(n)-A016304(n)`
-/

namespace A020572.P6551739782778040540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016313 n - A016304 n

end

end A020572.P6551739782778040540

namespace A020572

/-- `2*A016313(n)-A016304(n)` -/
def P6551739782778040540.Spec : Prop :=
  ∀ n, P6551739782778040540.a n = A020572 n

end A020572

/-! ## A020572.P17385699083808400070

`A019958(n)+A019958(n)-A019839(n)`
-/

namespace A020572.P17385699083808400070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019958 n + (A019958 n - A019839 n)

end

end A020572.P17385699083808400070

namespace A020572

/-- `A019958(n)+A019958(n)-A019839(n)` -/
def P17385699083808400070.Spec : Prop :=
  ∀ n, P17385699083808400070.a n = A020572 n

end A020572

/-! ## A020572.P9578813536429210615

`Δ[A016252(n)-A016246(n)]`
-/

namespace A020572.P9578813536429210615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016252 n - A016246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020572.P9578813536429210615

namespace A020572

/-- `Δ[A016252(n)-A016246(n)]` -/
def P9578813536429210615.Spec : Prop :=
  ∀ n, P9578813536429210615.a n = A020572 n

end A020572

/-! ## A020572.P2465577996055132929

`2*A019958(n)-A019839(n)`
-/

namespace A020572.P2465577996055132929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019958 n - A019839 n

end

end A020572.P2465577996055132929

namespace A020572

/-- `2*A019958(n)-A019839(n)` -/
def P2465577996055132929.Spec : Prop :=
  ∀ n, P2465577996055132929.a n = A020572 n

end A020572

/-! ## A020572.P17069057408459741929

`A016181(n+1)-A016173(n+1)`
-/

namespace A020572.P17069057408459741929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016181 (n + 1) - A016173 (n + 1)

end

end A020572.P17069057408459741929

namespace A020572

/-- `A016181(n+1)-A016173(n+1)` -/
def P17069057408459741929.Spec : Prop :=
  ∀ n, P17069057408459741929.a n = A020572 n

end A020572

/-!
# A020573: Expansion of g.f. 1/((1 - 6*x)*(1 - 7*x)*(1 - 11*x)).

The programs for A020573, the canonical program `A020573.P10640518270766356853` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020573 has offset 0).

The definition of A020573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020573.P10640518270766356853

`18*a(n-1)-77*a(n-2)+6^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020573

/-- `18*a(n-1)-77*a(n-2)+6^n` -/
def P10640518270766356853.Spec : Prop :=
  ∀ n, P10640518270766356853.a n = A020573 n

theorem P10640518270766356853.correct : P10640518270766356853.Spec := by
  intro n
  simp only [A020573]

end A020573

/-! ## A020573.P6686864250185352182

`2*A016254(n)-A016241(n)`
-/

namespace A020573.P6686864250185352182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016254 n - A016241 n

end

end A020573.P6686864250185352182

namespace A020573

/-- `2*A016254(n)-A016241(n)` -/
def P6686864250185352182.Spec : Prop :=
  ∀ n, P6686864250185352182.a n = A020573 n

end A020573

/-! ## A020573.P18378127852105538435

`2*A017953(n)-A017931(n)`
-/

namespace A020573.P18378127852105538435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017953 n - A017931 n

end

end A020573.P18378127852105538435

namespace A020573

/-- `2*A017953(n)-A017931(n)` -/
def P18378127852105538435.Spec : Prop :=
  ∀ n, P18378127852105538435.a n = A020573 n

end A020573

/-! ## A020573.P17633384473382470927

`2*A020000(n)-A019854(n)`
-/

namespace A020573.P17633384473382470927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020000 n - A019854 n

end

end A020573.P17633384473382470927

namespace A020573

/-- `2*A020000(n)-A019854(n)` -/
def P17633384473382470927.Spec : Prop :=
  ∀ n, P17633384473382470927.a n = A020573 n

end A020573

/-! ## A020573.P5516851358119851594

`A016250(n)+A016262(n)-A016241(n)`
-/

namespace A020573.P5516851358119851594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016250 n + (A016262 n - A016241 n)

end

end A020573.P5516851358119851594

namespace A020573

/-- `A016250(n)+A016262(n)-A016241(n)` -/
def P5516851358119851594.Spec : Prop :=
  ∀ n, P5516851358119851594.a n = A020573 n

end A020573

/-! ## A020573.P4490404677610322367

`A016308(n)+A016314(n)-A016304(n)`
-/

namespace A020573.P4490404677610322367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016308 n + (A016314 n - A016304 n)

end

end A020573.P4490404677610322367

namespace A020573

/-- `A016308(n)+A016314(n)-A016304(n)` -/
def P4490404677610322367.Spec : Prop :=
  ∀ n, P4490404677610322367.a n = A020573 n

end A020573

/-! ## A020573.P1236927898808713351

`Δ[A016254(n)-A016247(n)]`
-/

namespace A020573.P1236927898808713351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016254 n - A016247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020573.P1236927898808713351

namespace A020573

/-- `Δ[A016254(n)-A016247(n)]` -/
def P1236927898808713351.Spec : Prop :=
  ∀ n, P1236927898808713351.a n = A020573 n

end A020573

/-!
# A020577: Expansion of g.f. 1/((1 - 6*x)*(1 - 7*x)*(1 - 12*x)).

The programs for A020577, the canonical program `A020577.P6963321155888085192` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020577 has offset 0).

The definition of A020577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020577.P6963321155888085192

`19*a(n-1)-84*a(n-2)+6^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020577

/-- `19*a(n-1)-84*a(n-2)+6^n` -/
def P6963321155888085192.Spec : Prop :=
  ∀ n, P6963321155888085192.a n = A020577 n

theorem P6963321155888085192.correct : P6963321155888085192.Spec := by
  intro n
  simp only [A020577]

end A020577

/-! ## A020577.P15836340888982060951

`2*A016309(n)-A016304(n)`
-/

namespace A020577.P15836340888982060951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016309 n - A016304 n

end

end A020577.P15836340888982060951

namespace A020577

/-- `2*A016309(n)-A016304(n)` -/
def P15836340888982060951.Spec : Prop :=
  ∀ n, P15836340888982060951.a n = A020577 n

end A020577

/-! ## A020577.P4736660179207750950

`A016248(n)+A016255(n)-A016241(n)`
-/

namespace A020577.P4736660179207750950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016248 n + (A016255 n - A016241 n)

end

end A020577.P4736660179207750950

namespace A020577

/-- `A016248(n)+A016255(n)-A016241(n)` -/
def P4736660179207750950.Spec : Prop :=
  ∀ n, P4736660179207750950.a n = A020577 n

end A020577

/-! ## A020577.P17027533692067838615

`A016306(n)+A016324(n)-A016304(n)`
-/

namespace A020577.P17027533692067838615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 n + (A016324 n - A016304 n)

end

end A020577.P17027533692067838615

namespace A020577

/-- `A016306(n)+A016324(n)-A016304(n)` -/
def P17027533692067838615.Spec : Prop :=
  ∀ n, P17027533692067838615.a n = A020577 n

end A020577

/-! ## A020577.P12834248362284505026

`Δ[A016255(n)-A016248(n)]`
-/

namespace A020577.P12834248362284505026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016255 n - A016248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020577.P12834248362284505026

namespace A020577

/-- `Δ[A016255(n)-A016248(n)]` -/
def P12834248362284505026.Spec : Prop :=
  ∀ n, P12834248362284505026.a n = A020577 n

end A020577

/-!
# A020578: Smallest nonempty set S containing prime divisors of 2k+7 for each k in S.

The programs for A020578, there is no canonical definition to state claims against.
-/

/-! ## A020578.P7529269796575963253

`record[A367004(A351006(n))]`
-/

namespace A020578.P7529269796575963253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367004 (A351006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020578.P7529269796575963253

/-! ## A020578.P17251268973132911254

`A127046(A225804(n+1))`
-/

namespace A020578.P17251268973132911254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127046 (A225804 (n + 1)).toNat

end

end A020578.P17251268973132911254

/-! ## A020578.P9541209938263904036

`A127046(A349996(n+1))`
-/

namespace A020578.P9541209938263904036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127046 (A349996 (n + 1)).toNat

end

end A020578.P9541209938263904036

/-! ## A020578.P11718455997784002718

`A042998(A039170(n+2))`
-/

namespace A020578.P11718455997784002718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (A039170 (n + 2)).toNat

end

end A020578.P11718455997784002718

/-! ## A020578.P16820281685574808705

`A127046(A039163(n+2))`
-/

namespace A020578.P16820281685574808705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127046 (A039163 (n + 2)).toNat

end

end A020578.P16820281685574808705

/-!
# A020579: Expansion of g.f. 1/((1-6*x)*(1-8*x)*(1-9*x)).

The programs for A020579, the canonical program `A020579.P9265256622820816698` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020579 has offset 0).

The definition of A020579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020579.P9265256622820816698

`6*6^n-32*8^n+27*9^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020579

/-- `6*6^n-32*8^n+27*9^n` -/
def P9265256622820816698.Spec : Prop :=
  ∀ n, P9265256622820816698.a n = A020579 n

theorem P9265256622820816698.correct : P9265256622820816698.Spec := by
  intro n
  simp only [A020579]

end A020579

/-! ## A020579.P5925786473138885435

`Δ[A016244(n)-A016243(n)]`
-/

namespace A020579.P5925786473138885435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016244 n - A016243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020579.P5925786473138885435

namespace A020579

/-- `Δ[A016244(n)-A016243(n)]` -/
def P5925786473138885435.Spec : Prop :=
  ∀ n, P5925786473138885435.a n = A020579 n

end A020579

/-! ## A020579.P1427075076529515398

`Δ[∑[A016172(n)]-A016243(n)]`
-/

namespace A020579.P1427075076529515398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A016243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020579.P1427075076529515398

namespace A020579

/-- `Δ[∑[A016172(n)]-A016243(n)]` -/
def P1427075076529515398.Spec : Prop :=
  ∀ n, P1427075076529515398.a n = A020579 n

end A020579

/-! ## A020579.P7259786203921278328

`Δ[A016244(n)-∑[A016170(n)]]`
-/

namespace A020579.P7259786203921278328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016244 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020579.P7259786203921278328

namespace A020579

/-- `Δ[A016244(n)-∑[A016170(n)]]` -/
def P7259786203921278328.Spec : Prop :=
  ∀ n, P7259786203921278328.a n = A020579 n

end A020579

/-! ## A020579.P4872483670642306359

`Δ[A016244(n)-∑[A081201(n+1)]]`
-/

namespace A020579.P4872483670642306359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016244 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020579.P4872483670642306359

namespace A020579

/-- `Δ[A016244(n)-∑[A081201(n+1)]]` -/
def P4872483670642306359.Spec : Prop :=
  ∀ n, P4872483670642306359.a n = A020579 n

end A020579

/-!
# A020580: Smallest nonempty set S containing prime divisors of 2k+9 for each k in S.

The programs for A020580, there is no canonical definition to state claims against.
-/

/-! ## A020580.P16518249873256845214

`p?[∑[n-a(n-1)]]` with `a(0)=5, a(1)=10, a(2)=0, a(3)=0`
-/

namespace A020580.P16518249873256845214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 10, 0, 0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020580.P16518249873256845214

/-!
# A020582: Smallest nonempty set S containing prime divisors of 3k+4 for each k in S.

The programs for A020582, there is no canonical definition to state claims against.
-/

/-! ## A020582.P9776750294098582052

`A020605(n+2)`
-/

namespace A020582.P9776750294098582052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020605 (n + 2)

end

end A020582.P9776750294098582052

/-! ## A020582.P17753225527659062427

`p?[A020605(comp[A000583(n)])]`
-/

namespace A020582.P17753225527659062427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020605 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020582.P17753225527659062427

/-! ## A020582.P8402300551810870814

`p?[A020605(comp[A238170(n)])]`
-/

namespace A020582.P8402300551810870814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238170 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020605 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020582.P8402300551810870814

/-! ## A020582.P7944359529057885839

`A151800(A146100(n)+A020587(n+1))`
-/

namespace A020582.P7944359529057885839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A146100 n + A020587 (n + 1)).toNat

end

end A020582.P7944359529057885839

/-!
# A020584: Expansion of 1/((1-6*x)*(1-8*x)*(1-10*x)).

The programs for A020584, the canonical program `A020584.P16534110715559295701` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020584 has offset 0).

The definition of A020584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020584.P16534110715559295701

`18*a(n-1)-80*a(n-2)+6^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020584

/-- `18*a(n-1)-80*a(n-2)+6^n` -/
def P16534110715559295701.Spec : Prop :=
  ∀ n, P16534110715559295701.a n = A020584 n

theorem P16534110715559295701.correct : P16534110715559295701.Spec := by
  intro n
  simp only [A020584]

end A020584

/-! ## A020584.P1131003733371199638

`2^n*A016753(n)`
-/

namespace A020584.P1131003733371199638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016753 n

end

end A020584.P1131003733371199638

namespace A020584

/-- `2^n*A016753(n)` -/
def P1131003733371199638.Spec : Prop :=
  ∀ n, P1131003733371199638.a n = A020584 n

end A020584

/-! ## A020584.P14560918023299881852

`A245019(n+2)/2*2^n`
-/

namespace A020584.P14560918023299881852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245019 (n + 2) : ℚ) / 2 * (2 ^ n : ℚ)

end

end A020584.P14560918023299881852

namespace A020584

/-- `A245019(n+2)/2*2^n` -/
def P14560918023299881852.Spec : Prop :=
  ∀ n, P14560918023299881852.a n = (A020584 n : ℚ)

end A020584

/-! ## A020584.P7857832271493710642

`(A020595(n)+A020579(n))/2`
-/

namespace A020584.P7857832271493710642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020595 n + A020579 n : ℚ) / 2

end

end A020584.P7857832271493710642

namespace A020584

/-- `(A020595(n)+A020579(n))/2` -/
def P7857832271493710642.Spec : Prop :=
  ∀ n, P7857832271493710642.a n = (A020584 n : ℚ)

end A020584

/-! ## A020584.P3955229824217425920

`abs(1-A000079(n)*A016753(n))+1`
-/

namespace A020584.P3955229824217425920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000079 n * A016753 n| + 1

end

end A020584.P3955229824217425920

namespace A020584

/-- `abs(1-A000079(n)*A016753(n))+1` -/
def P3955229824217425920.Spec : Prop :=
  ∀ n, P3955229824217425920.a n = A020584 n

end A020584

/-! ## A020584.P14538868542037486228

`A016753(n)*A036561(A000217(n))`
-/

namespace A020584.P14538868542037486228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016753 n * A036561 (A000217 n).toNat

end

end A020584.P14538868542037486228

namespace A020584

/-- `A016753(n)*A036561(A000217(n))` -/
def P14538868542037486228.Spec : Prop :=
  ∀ n, P14538868542037486228.a n = A020584 n

end A020584

/-! ## A020584.P8548741973289754768

`A000079(n)²/A000079(n+1)*A245019(n+2)`
-/

namespace A020584.P8548741973289754768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / (A000079 (n + 1) : ℚ) * (A245019 (n + 2) : ℚ)

end

end A020584.P8548741973289754768

namespace A020584

/-- `A000079(n)²/A000079(n+1)*A245019(n+2)` -/
def P8548741973289754768.Spec : Prop :=
  ∀ n, P8548741973289754768.a n = (A020584 n : ℚ)

end A020584

/-! ## A020584.P1630871375957208836

`A000079(2*n)/A000079(n+1)*A245019(n+2)`
-/

namespace A020584.P1630871375957208836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ) * (A245019 (n + 2) : ℚ)

end

end A020584.P1630871375957208836

namespace A020584

/-- `A000079(2*n)/A000079(n+1)*A245019(n+2)` -/
def P1630871375957208836.Spec : Prop :=
  ∀ n, P1630871375957208836.a n = (A020584 n : ℚ)

end A020584

/-!
# A020586: Smallest nonempty set S containing prime divisors of 3k+8 for each k in S.

The programs for A020586, there is no canonical definition to state claims against.
-/

/-! ## A020586.P15261531534088268475

`A151800(p?[A076564(n+3)])`
-/

namespace A020586.P15261531534088268475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A020586.P15261531534088268475

/-! ## A020586.P13713234220118645763

`p?[A055572(n)+5]`
-/

namespace A020586.P13713234220118645763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020586.P13713234220118645763

/-! ## A020586.P9596078253844533877

`p?[lt[7, A110734(n+4)]]`
-/

namespace A020586.P9596078253844533877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110734 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020586.P9596078253844533877

/-! ## A020586.P46629169251230111

`A165255(A077168(n+1))`
-/

namespace A020586.P46629169251230111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (A077168 (n + 1)).toNat

end

end A020586.P46629169251230111

/-! ## A020586.P3560493070930023222

`A122089(A287961(n+1))`
-/

namespace A020586.P3560493070930023222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122089 (A287961 (n + 1)).toNat

end

end A020586.P3560493070930023222

/-!
# A020587: Smallest nonempty set S containing prime divisors of 4k+1 for each k in S.

The programs for A020587, there is no canonical definition to state claims against.
-/

/-! ## A020587.P9936049187639824519

`p?[record[round(((n+6)²+n)/70)-a(n-1)]]` with `a(0)=3, a(1)=5`
-/

namespace A020587.P9936049187639824519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f2 =>
  SequenceMachineLib.roundAway (((n + 6) ^ 2 + n : ℚ) / 70) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020587.P9936049187639824519

/-! ## A020587.P7476722958317874376

`A020616(n+2)`
-/

namespace A020587.P7476722958317874376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020616 (n + 2)

end

end A020587.P7476722958317874376

/-! ## A020587.P765457111931874843

`p?[A178442(n+1)+2]`
-/

namespace A020587.P765457111931874843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178442 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020587.P765457111931874843

/-! ## A020587.P15936672160560640159

`p?[∑[p?[A260737(n+1)]]]`
-/

namespace A020587.P15936672160560640159
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020587.P15936672160560640159

/-!
# A020588: Smallest nonempty set S containing prime divisors of 4k+2 for each k in S.

The programs for A020588, there is no canonical definition to state claims against.
-/

/-! ## A020588.P18257708822274269086

`p?[floor(∑[sqrt(n)-2]/2)]`
-/

namespace A020588.P18257708822274269086
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f2 j) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020588.P18257708822274269086

/-! ## A020588.P16428932111907194543

`record[p?[A325820(n)]]`
-/

namespace A020588.P16428932111907194543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020588.P16428932111907194543

/-! ## A020588.P16792408079922668488

`record[p?[A367680(n)]]`
-/

namespace A020588.P16792408079922668488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020588.P16792408079922668488

/-! ## A020588.P483396184724259365

`A227202(∑{digits}[n+1, #])`
-/

namespace A020588.P483396184724259365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227202 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A020588.P483396184724259365

/-!
# A020589: Smallest nonempty set S containing prime divisors of 4k+3 for each k in S.

The programs for A020589, there is no canonical definition to state claims against.
-/

/-! ## A020589.P12301247295454254317

`A020619(n+2)`
-/

namespace A020589.P12301247295454254317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020619 (n + 2)

end

end A020589.P12301247295454254317

/-! ## A020589.P18419733369450170836

`p?[A020619(A084964(2*n))]`
-/

namespace A020589.P18419733369450170836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020619 (A084964 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020589.P18419733369450170836

/-! ## A020589.P11143163748087284260

`A020639(A020619(comp[n^5]))`
-/

namespace A020589.P11143163748087284260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A020589.P11143163748087284260

/-! ## A020589.P6384008114484982008

`p?[A020619(Δ[A002378(n)]-n)]`
-/

namespace A020589.P6384008114484982008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020619 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020589.P6384008114484982008

/-! ## A020589.P16413323618350326963

`A007318(C(2, n))*A020619(A084964(2*n))`
-/

namespace A020589.P16413323618350326963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A020619 (A084964 (2 * n)).toNat

end

end A020589.P16413323618350326963

/-!
# A020591: Smallest nonempty set S containing prime divisors of 4k+6 for each k in S.

The programs for A020591, there is no canonical definition to state claims against.
-/

/-! ## A020591.P2340734075088159034

`A066072(∑[ceil((n+1)/∏{p}[n+1, (n+1)/#])]+n)`
-/

namespace A020591.P2340734075088159034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066072 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A020591.P2340734075088159034

/-! ## A020591.P12868092069412887729

`A123318(A373554(n))`
-/

namespace A020591.P12868092069412887729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A373554 n).toNat

end

end A020591.P12868092069412887729

/-! ## A020591.P9398666343047609089

`A323782(A392543(n))`
-/

namespace A020591.P9398666343047609089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323782 (A392543 n).toNat

end

end A020591.P9398666343047609089

/-! ## A020591.P9506016428008275569

`A045344(A064278(n+1))`
-/

namespace A020591.P9506016428008275569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A064278 (n + 1)).toNat

end

end A020591.P9506016428008275569

/-! ## A020591.P12061443725058324018

`A137519(A112881(n+1))`
-/

namespace A020591.P12061443725058324018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137519 (A112881 (n + 1)).toNat

end

end A020591.P12061443725058324018

/-!
# A020592: Smallest nonempty set S containing prime divisors of 4k+7 for each k in S.

The programs for A020592, there is no canonical definition to state claims against.
-/

/-! ## A020592.P14790460282848598659

`A014662(record[Δ[∑{d}[n+1, #]-(n+1)]])`
-/

namespace A020592.P14790460282848598659
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A020592.P14790460282848598659

/-!
# A020593: Expansion of g.f. 1/((1 - 6*x)*(1 - 8*x)*(1 - 11*x)).

The programs for A020593, the canonical program `A020593.P334373299160643859` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020593 has offset 0).

The definition of A020593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020593.P334373299160643859

`19*a(n-1)-88*a(n-2)+6^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020593

/-- `19*a(n-1)-88*a(n-2)+6^n` -/
def P334373299160643859.Spec : Prop :=
  ∀ n, P334373299160643859.a n = A020593 n

theorem P334373299160643859.correct : P334373299160643859.Spec := by
  intro n
  simp only [A020593]

end A020593

/-! ## A020593.P8556695530476911940

`A016187(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A020593.P8556695530476911940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016187 n + 6 * a (n - 1)

end

end A020593.P8556695530476911940

namespace A020593

/-- `A016187(n)+6*a(n-1)` -/
def P8556695530476911940.Spec : Prop :=
  ∀ n, P8556695530476911940.a n = A020593 n

end A020593

/-! ## A020593.P1467455680328336203

`2*A016259(n)-A016243(n)`
-/

namespace A020593.P1467455680328336203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016259 n - A016243 n

end

end A020593.P1467455680328336203

namespace A020593

/-- `2*A016259(n)-A016243(n)` -/
def P1467455680328336203.Spec : Prop :=
  ∀ n, P1467455680328336203.a n = A020593 n

end A020593

/-! ## A020593.P4286946051458386582

`2*A019854(n)-A019783(n)`
-/

namespace A020593.P4286946051458386582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019854 n - A019783 n

end

end A020593.P4286946051458386582

namespace A020593

/-- `2*A019854(n)-A019783(n)` -/
def P4286946051458386582.Spec : Prop :=
  ∀ n, P4286946051458386582.a n = A020593 n

end A020593

/-! ## A020593.P9775141813164302363

`A020579(n)+A020977(n)-A020606(n)`
-/

namespace A020593.P9775141813164302363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020579 n + (A020977 n - A020606 n)

end

end A020593.P9775141813164302363

namespace A020593

/-- `A020579(n)+A020977(n)-A020606(n)` -/
def P9775141813164302363.Spec : Prop :=
  ∀ n, P9775141813164302363.a n = A020593 n

end A020593

/-!
# A020594: Expansion of 1/((1-6x)(1-8x)(1-12x)).

The programs for A020594, the canonical program `A020594.P4174227778734511821` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020594 has offset 0).

The definition of A020594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020594.P4174227778734511821

`20*a(n-1)-96*a(n-2)+6^n` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020594

/-- `20*a(n-1)-96*a(n-2)+6^n` -/
def P4174227778734511821.Spec : Prop :=
  ∀ n, P4174227778734511821.a n = A020594 n

theorem P4174227778734511821.correct : P4174227778734511821.Spec := by
  intro n
  simp only [A020594]

end A020594

/-! ## A020594.P71178036240411394

`(2*12^(n+2)-6*8^(n+2)+4*6^(n+2))/48`
-/

namespace A020594.P71178036240411394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 12 ^ (n + 2) : ℤ) - (6 * 8 ^ (n + 2) : ℤ) + (4 * 6 ^ (n + 2) : ℤ) : ℚ) / 48

end

end A020594.P71178036240411394

namespace A020594

/-- `(2*12^(n+2)-6*8^(n+2)+4*6^(n+2))/48` -/
def P71178036240411394.Spec : Prop :=
  ∀ n, P71178036240411394.a n = (A020594 n : ℚ)

end A020594

/-! ## A020594.P17359275224589155054

`2^n*A016765(n)`
-/

namespace A020594.P17359275224589155054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016765 n

end

end A020594.P17359275224589155054

namespace A020594

/-- `2^n*A016765(n)` -/
def P17359275224589155054.Spec : Prop :=
  ∀ n, P17359275224589155054.a n = A020594 n

end A020594

/-! ## A020594.P16908543619747788744

`A143079(n+1)-A011782(3*n+4)`
-/

namespace A020594.P16908543619747788744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143079 (n + 1) - A011782 (3 * n + 4)

end

end A020594.P16908543619747788744

namespace A020594

/-- `A143079(n+1)-A011782(3*n+4)` -/
def P16908543619747788744.Spec : Prop :=
  ∀ n, P16908543619747788744.a n = A020594 n

end A020594

/-! ## A020594.P10928643498299213178

`A016765(n)*A038207(A161680(n+1))`
-/

namespace A020594.P10928643498299213178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016765 n * A038207 (A161680 (n + 1)).toNat

end

end A020594.P10928643498299213178

namespace A020594

/-- `A016765(n)*A038207(A161680(n+1))` -/
def P10928643498299213178.Spec : Prop :=
  ∀ n, P10928643498299213178.a n = A020594 n

end A020594

/-!
# A020595: Expansion of g.f. 1/((1-6*x)*(1-9*x)*(1-10*x)).

The programs for A020595, the canonical program `A020595.P15450382402170572631` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A020595 has offset 0).

The definition of A020595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A020595.P15450382402170572631

`19*a(n-1)-90*a(n-2)+6^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A020595

/-- `19*a(n-1)-90*a(n-2)+6^n` -/
def P15450382402170572631.Spec : Prop :=
  ∀ n, P15450382402170572631.a n = A020595 n

theorem P15450382402170572631.correct : P15450382402170572631.Spec := by
  intro n
  simp only [A020595]

end A020595

/-! ## A020595.P10278937505325528691

`A016173(n+1)-A016172(n+1)`
-/

namespace A020595.P10278937505325528691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016173 (n + 1) - A016172 (n + 1)

end

end A020595.P10278937505325528691

namespace A020595

/-- `A016173(n+1)-A016172(n+1)` -/
def P10278937505325528691.Spec : Prop :=
  ∀ n, P10278937505325528691.a n = A020595 n

end A020595

/-! ## A020595.P1329632445953377354

`(3*10^(n+2)-4*9^(n+2)+6^(n+2))/12`
-/

namespace A020595.P1329632445953377354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 10 ^ (n + 2) : ℤ) - (4 * 9 ^ (n + 2) : ℤ) + (6 ^ (n + 2) : ℤ) : ℚ) / 12

end

end A020595.P1329632445953377354

namespace A020595

/-- `(3*10^(n+2)-4*9^(n+2)+6^(n+2))/12` -/
def P1329632445953377354.Spec : Prop :=
  ∀ n, P1329632445953377354.a n = (A020595 n : ℚ)

end A020595

/-! ## A020595.P18127312698025157595

`Δ[A016246(n)-A016244(n)]`
-/

namespace A020595.P18127312698025157595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016246 n - A016244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A020595.P18127312698025157595

namespace A020595

/-- `Δ[A016246(n)-A016244(n)]` -/
def P18127312698025157595.Spec : Prop :=
  ∀ n, P18127312698025157595.a n = A020595 n

end A020595

/-! ## A020595.P6657296327965035218

`2*A016321(n)-A016306(n)`
-/

namespace A020595.P6657296327965035218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016321 n - A016306 n

end

end A020595.P6657296327965035218

namespace A020595

/-- `2*A016321(n)-A016306(n)` -/
def P6657296327965035218.Spec : Prop :=
  ∀ n, P6657296327965035218.a n = A020595 n

end A020595

/-! ## A020595.P1802804662387333740

`2*A020584(n)-A020579(n)`
-/

namespace A020595.P1802804662387333740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020584 n - A020579 n

end

end A020595.P1802804662387333740

namespace A020595

/-- `2*A020584(n)-A020579(n)` -/
def P1802804662387333740.Spec : Prop :=
  ∀ n, P1802804662387333740.a n = A020595 n

end A020595

/-! ## A020595.P17250701526653683352

`A016244(n)+A024170(n)-A016246(n)`
-/

namespace A020595.P17250701526653683352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016244 n + (A024170 n - A016246 n)

end

end A020595.P17250701526653683352

namespace A020595

/-- `A016244(n)+A024170(n)-A016246(n)` -/
def P17250701526653683352.Spec : Prop :=
  ∀ n, P17250701526653683352.a n = A020595 n

end A020595

/-!
# A020596: Smallest nonempty set S containing prime divisors of 5k+2 for each k in S.

The programs for A020596, there is no canonical definition to state claims against.
-/

/-! ## A020596.P924643646908008471

`A020634(n+2)`
-/

namespace A020596.P924643646908008471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020634 (n + 2)

end

end A020596.P924643646908008471

/-! ## A020596.P8794910678475517684

`record[A020634(A012257(n))]`
-/

namespace A020596.P8794910678475517684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020634 (A012257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020596.P8794910678475517684

/-! ## A020596.P18004342339585848111

`p?[A020634(A084964(2*n))]`
-/

namespace A020596.P18004342339585848111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020634 (A084964 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020596.P18004342339585848111

/-! ## A020596.P10955152803110505056

`A007318(∑[n])*A020634(A084964(2*n))`
-/

namespace A020596.P10955152803110505056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A020634 (A084964 (2 * n)).toNat

end

end A020596.P10955152803110505056

/-! ## A020596.P923845223019656787

`A020634(A084964(2*n))/A007318(C(2, n))`
-/

namespace A020596.P923845223019656787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020634 (A084964 (2 * n)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A020596.P923845223019656787

/-!
# A020597: Smallest nonempty set S containing prime divisors of 5k+3 for each k in S.

The programs for A020597, there is no canonical definition to state claims against.
-/

/-! ## A020597.P18008181229342068898

`p?[∑[p?[31*n-6]%3]-6]`
-/

namespace A020597.P18008181229342068898
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020597.P18008181229342068898

/-! ## A020597.P13732716271935775962

`p?[comp[a(n-5)+n-3]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=6, a(5)=5, a(6)=4, a(7)=3`
-/

namespace A020597.P13732716271935775962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 6, 5, 4, 3] fun n f2 =>
  f2 (n - 5) + ((n : ℤ) - 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020597.P13732716271935775962

/-! ## A020597.P18088602940678852754

`p?[A003668(n+1)]`
-/

namespace A020597.P18088602940678852754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020597.P18088602940678852754

/-! ## A020597.P15154540543678482154

`p?[n*A323095(n)]`
-/

namespace A020597.P15154540543678482154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A323095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020597.P15154540543678482154

/-! ## A020597.P15711501039683191072

`p?[lt[n, A032445(n)]]`
-/

namespace A020597.P15711501039683191072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032445 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A020597.P15711501039683191072

/-!
# A020598: Smallest nonempty set S containing prime divisors of 5k+4 for each k in S.

The programs for A020598, there is no canonical definition to state claims against.
-/

/-! ## A020598.P2629694725352638979

`A020636(n+2)`
-/

namespace A020598.P2629694725352638979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020636 (n + 2)

end

end A020598.P2629694725352638979

/-! ## A020598.P559558905591472625

`A020639(A020636(comp[n^5]))`
-/

namespace A020598.P559558905591472625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020636 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A020598.P559558905591472625

/-! ## A020598.P408318235302573425

`p?[record[A238756(A018819(n))]]`
-/

namespace A020598.P408318235302573425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238756 (A018819 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A020598.P408318235302573425

/-! ## A020598.P10868055498123269589

`A000040(eq[A008676(n), A076478(n)])`
-/

namespace A020598.P10868055498123269589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A020598.P10868055498123269589

/-! ## A020598.P2271986874683237663

`A000040(lt[A134819(n+1), A040833(n+3)])`
-/

namespace A020598.P2271986874683237663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040833 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020598.P2271986874683237663

