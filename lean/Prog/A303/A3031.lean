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
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A303100: Number of n X 6 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303100, there is no canonical definition to state claims against.
-/

/-! ## A303100.P15085137369092501639

`A303102(A052905(n+3))`
-/

namespace A303100.P15085137369092501639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A052905 (n + 3)).toNat

end

end A303100.P15085137369092501639

/-! ## A303100.P3888495496413611093

`A303102(eq[3, A219347(n)])`
-/

namespace A303100.P3888495496413611093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303100.P3888495496413611093

/-! ## A303100.P474284327524311188

`A303102(eq[5, A193592(n)])`
-/

namespace A303100.P474284327524311188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303100.P474284327524311188

/-! ## A303100.P5361898692441338488

`A303102(eq[6, A200370(n+1)])`
-/

namespace A303100.P5361898692441338488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303100.P5361898692441338488

/-! ## A303100.P895100582586128630

`A303102(eq[8, A185782(n+1)])`
-/

namespace A303100.P895100582586128630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303100.P895100582586128630

/-!
# A303101: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303101, there is no canonical definition to state claims against.
-/

/-! ## A303101.P3693745459112670521

`A303102(eq[4, A219347(n)])`
-/

namespace A303101.P3693745459112670521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303101.P3693745459112670521

/-! ## A303101.P305613319387092630

`A303102(eq[6, A193592(n)])`
-/

namespace A303101.P305613319387092630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303101.P305613319387092630

/-! ## A303101.P12173347757767396142

`A303102(A000096(n+6)-5)`
-/

namespace A303101.P12173347757767396142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A000096 (n + 6) - 5).toNat

end

end A303101.P12173347757767396142

/-! ## A303101.P8561884320132712911

`A303102(eq[4, A092921(n+1)])`
-/

namespace A303101.P8561884320132712911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303101.P8561884320132712911

/-! ## A303101.P8613448003165878353

`A303102(eq[7, A200370(n+1)])`
-/

namespace A303101.P8613448003165878353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303101.P8613448003165878353

/-!
# A303102: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303102, there is no canonical definition to state claims against.
-/

/-! ## A303102.P1717521813610408372

`or(A302381(n+1), A302381(A306209(n)!))`
-/

namespace A303102.P1717521813610408372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A302381 (n + 1)) (A302381 (Nat.factorial (A306209 n).toNat))

end

end A303102.P1717521813610408372

/-! ## A303102.P13170281389988084522

`A302381(n+1)+A044941(A264617(n+1))`
-/

namespace A303102.P13170281389988084522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (n + 1) + A044941 (A264617 (n + 1)).toNat

end

end A303102.P13170281389988084522

/-! ## A303102.P316822745992067929

`A302381(n+1)+A014707(A022171(n))`
-/

namespace A303102.P316822745992067929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (n + 1) + A014707 (A022171 n).toNat

end

end A303102.P316822745992067929

/-! ## A303102.P1519419932569354116

`A302381(n+1)+A025469(A022345(n))`
-/

namespace A303102.P1519419932569354116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (n + 1) + A025469 (A022345 n).toNat

end

end A303102.P1519419932569354116

/-! ## A303102.P16551860163568194951

`A333382(A185411(n))+A302381(n+1)`
-/

namespace A303102.P16551860163568194951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A185411 n).toNat + A302381 (n + 1)

end

end A303102.P16551860163568194951

/-!
# A303103: Number of 3Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303103, there is no canonical definition to state claims against.
-/

/-! ## A303103.P2702214910809792452

`A303102(∑[n+2]+4)`
-/

namespace A303103.P2702214910809792452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303103.P2702214910809792452

/-! ## A303103.P15352229746916635136

`A303102(A167614(n+1))+A025469(n)`
-/

namespace A303103.P15352229746916635136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A167614 (n + 1)).toNat + A025469 n

end

end A303103.P15352229746916635136

/-! ## A303103.P4770996376561372073

`A303102(A167614(n+1))+A178798(n)`
-/

namespace A303103.P4770996376561372073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A167614 (n + 1)).toNat + A178798 n

end

end A303103.P4770996376561372073

/-! ## A303103.P8797405377833474491

`A057427(n)*A303102(A167614(n+1))`
-/

namespace A303103.P8797405377833474491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A303102 (A167614 (n + 1)).toNat

end

end A303103.P8797405377833474491

/-! ## A303103.P12199365811412195018

`A303102(A167614(n+1))%A016939(n)`
-/

namespace A303103.P12199365811412195018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303102 (A167614 (n + 1)).toNat) (A016939 n)

end

end A303103.P12199365811412195018

/-!
# A303104: Number of 4Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303104, there is no canonical definition to state claims against.
-/

/-! ## A303104.P7964863650302093952

`A303102(A141214(n)+7)`
-/

namespace A303104.P7964863650302093952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A141214 n + 7).toNat

end

end A303104.P7964863650302093952

/-! ## A303104.P166984729964811022

`A303102(A052905(n)+9)`
-/

namespace A303104.P166984729964811022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A052905 n + 9).toNat

end

end A303104.P166984729964811022

/-! ## A303104.P2534781253970095398

`A303102(A055999(n)+10)`
-/

namespace A303104.P2534781253970095398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A055999 n + 10).toNat

end

end A303104.P2534781253970095398

/-! ## A303104.P1545643929489682167

`A303102(A167614(n+2)+1)`
-/

namespace A303104.P1545643929489682167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A167614 (n + 2) + 1).toNat

end

end A303104.P1545643929489682167

/-! ## A303104.P2023211829815178557

`A303102(A166136(n+2)-2)`
-/

namespace A303104.P2023211829815178557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A166136 (n + 2) - 2).toNat

end

end A303104.P2023211829815178557

/-!
# A303105: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303105, there is no canonical definition to state claims against.
-/

/-! ## A303105.P7597949254704756384

`A303102(A155212(n)+13)`
-/

namespace A303105.P7597949254704756384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A155212 n + 13).toNat

end

end A303105.P7597949254704756384

/-! ## A303105.P262139894648605484

`A303102(A056000(n)+15)`
-/

namespace A303105.P262139894648605484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A056000 n + 15).toNat

end

end A303105.P262139894648605484

/-! ## A303105.P131082724880559177

`A303102(eq[7, A066657(n)])`
-/

namespace A303105.P131082724880559177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303105.P131082724880559177

/-! ## A303105.P2886644676207833774

`A303102(A055998(n+2)+8)`
-/

namespace A303105.P2886644676207833774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A055998 (n + 2) + 8).toNat

end

end A303105.P2886644676207833774

/-! ## A303105.P11879292995091521479

`A303102(eq[6, A131818(n+1)])`
-/

namespace A303105.P11879292995091521479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303105.P11879292995091521479

/-!
# A303106: Number of 6Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303106, there is no canonical definition to state claims against.
-/

/-! ## A303106.P17228801045361088142

`A303102(C(n+7, 2)-n)`
-/

namespace A303106.P17228801045361088142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (Nat.choose (n + 7) 2 - n)

end

end A303106.P17228801045361088142

/-! ## A303106.P11818619197529490032

`A303102(A166136(n+4))`
-/

namespace A303106.P11818619197529490032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A166136 (n + 4)).toNat

end

end A303106.P11818619197529490032

/-! ## A303106.P4596027532392347927

`A303102(A056115(n)+21)`
-/

namespace A303106.P4596027532392347927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A056115 n + 21).toNat

end

end A303106.P4596027532392347927

/-! ## A303106.P4851602781432593499

`A303102(A246172(n+1)+20)`
-/

namespace A303106.P4851602781432593499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A246172 (n + 1) + 20).toNat

end

end A303106.P4851602781432593499

/-! ## A303106.P18373621251633444036

`A303102(eq[6, A130270(n+1)])`
-/

namespace A303106.P18373621251633444036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303106.P18373621251633444036

/-!
# A303107: Number of 7Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303107, there is no canonical definition to state claims against.
-/

/-! ## A303107.P315138151318409884

`A303102(A056119(n)+28)`
-/

namespace A303107.P315138151318409884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A056119 n + 28).toNat

end

end A303107.P315138151318409884

/-! ## A303107.P15680127655119293390

`A303102(eq[11, A066657(n)])`
-/

namespace A303107.P15680127655119293390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303107.P15680127655119293390

/-! ## A303107.P10242156162338850705

`A303102(A133263(n+6)+5)`
-/

namespace A303107.P10242156162338850705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A133263 (n + 6) + 5).toNat

end

end A303107.P10242156162338850705

/-! ## A303107.P8902624943832823369

`A303102(eq[8, A131818(n+1)])`
-/

namespace A303107.P8902624943832823369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303107.P8902624943832823369

/-! ## A303107.P8564558079817097229

`A303102(A000096(n+6)+1-n)`
-/

namespace A303107.P8564558079817097229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303102 (A000096 (n + 6) + 1 - (n : ℤ)).toNat

end

end A303107.P8564558079817097229

/-!
# A303108: a(n) = (2*n-1)*a(n-1) - (n-2)!, with a(1) = 2, n > 1.

The programs for A303108, the canonical program `A303108.P12389838485242802707` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303108 has offset 1).

The definition of A303108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*a(n-1)-(n-1)!` (program `A303108.P12389838485242802707`, by `A303108.P12389838485242802707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303108.P12389838485242802707

`(2*(n+1)-1)*a(n-1)-(n-1)!` with `a(0)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303108

/-- `(2*(n+1)-1)*a(n-1)-(n-1)!` -/
def P12389838485242802707.Spec : Prop :=
  ∀ n, P12389838485242802707.a n = A303108 (n + 1)

theorem P12389838485242802707.correct : P12389838485242802707.Spec := by
  intro n
  simp only [A303108, Nat.add_sub_cancel]

end A303108

/-! ## A303108.P14894867754436027738

`3*n*a(n-1)-(2*(n+1)-3)*(n-1)*a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A303108.P14894867754436027738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (3 * n : ℤ) * a (n - 1) - ((2 * (n + 1) : ℤ) - 3) * ((n : ℤ) - 1) * a (n - 2)

end

end A303108.P14894867754436027738

namespace A303108

/-- `3*n*a(n-1)-(2*(n+1)-3)*(n-1)*a(n-2)` -/
def P14894867754436027738.Spec : Prop :=
  ∀ n, P14894867754436027738.a n = A303108 (n + 1)

end A303108

/-! ## A303108.P8215053037189203730

`A087547(n+1)+n!`
-/

namespace A303108.P8215053037189203730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087547 (n + 1) + (Nat.factorial n : ℤ)

end

end A303108.P8215053037189203730

namespace A303108

/-- `A087547(n+1)+n!` -/
def P8215053037189203730.Spec : Prop :=
  ∀ n, P8215053037189203730.a n = A303108 (n + 1)

end A303108

/-! ## A303108.P15171598769752860981

`A087547(n+1)+A000142(n)`
-/

namespace A303108.P15171598769752860981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087547 (n + 1) + A000142 n

end

end A303108.P15171598769752860981

namespace A303108

/-- `A087547(n+1)+A000142(n)` -/
def P15171598769752860981.Spec : Prop :=
  ∀ n, P15171598769752860981.a n = A303108 (n + 1)

end A303108

/-! ## A303108.P8161865505812363953

`A000142(n)+record[A336601(n+1)]`
-/

namespace A303108.P8161865505812363953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303108.P8161865505812363953

namespace A303108

/-- `A000142(n)+record[A336601(n+1)]` -/
def P8161865505812363953.Spec : Prop :=
  ∀ n, P8161865505812363953.a n = A303108 (n + 1)

end A303108

/-! ## A303108.P6383000323569223102

`A336601(A152947(n+2))+A000142(n)`
-/

namespace A303108.P6383000323569223102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336601 (A152947 (n + 2)).toNat + A000142 n

end

end A303108.P6383000323569223102

namespace A303108

/-- `A336601(A152947(n+2))+A000142(n)` -/
def P6383000323569223102.Spec : Prop :=
  ∀ n, P6383000323569223102.a n = A303108 (n + 1)

end A303108

/-! ## A303108.P17055564867323037251

`A087547(n+1)+A000165(n)/A000079(n)`
-/

namespace A303108.P17055564867323037251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087547 (n + 1) : ℚ) + (A000165 n : ℚ) / (A000079 n : ℚ)

end

end A303108.P17055564867323037251

namespace A303108

/-- `A087547(n+1)+A000165(n)/A000079(n)` -/
def P17055564867323037251.Spec : Prop :=
  ∀ n, P17055564867323037251.a n = (A303108 (n + 1) : ℚ)

end A303108

/-! ## A303108.P3904192121575430557

`A182525(n+1)/(n+1)`
-/

namespace A303108.P3904192121575430557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182525 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A303108.P3904192121575430557

namespace A303108

/-- `A182525(n+1)/(n+1)` -/
def P3904192121575430557.Spec : Prop :=
  ∀ n, P3904192121575430557.a n = (A303108 (n + 1) : ℚ)

end A303108

/-!
# A303109: a(n) = n*(2*n-1)*a(n-1) + ((n-1)!)^2, with a(0) = 0, n > 0.

The programs for A303109, the canonical program `A303109.P1194221021103684740` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303109 has offset 0).

The definition of A303109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n-1)*a(n-1)+(n-1)!²` (program `A303109.P1194221021103684740`, by `A303109.P1194221021103684740.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A303109.P1194221021103684740

`n*(2*n-1)*a(n-1)+(n-1)!²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303109

/-- `n*(2*n-1)*a(n-1)+(n-1)!²` -/
def P1194221021103684740.Spec : Prop :=
  ∀ n, P1194221021103684740.a n = A303109 n

theorem P1194221021103684740.correct : P1194221021103684740.Spec := by
  intro n
  simp only [A303109]

end A303109

/-! ## A303109.P6009477201386497727

`(3*n²-3*n+1)*a(n-1)-(n-1)^3*(2*n-3)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A303109.P6009477201386497727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((3 * n ^ 2 : ℤ) - (3 * n : ℤ) + 1) * a (n - 1) - ((n : ℤ) - 1) ^ 3 * ((2 * n : ℤ) - 3) * a (n - 2)

end

end A303109.P6009477201386497727

namespace A303109

/-- `(3*n²-3*n+1)*a(n-1)-(n-1)^3*(2*n-3)*a(n-2)` -/
def P6009477201386497727.Spec : Prop :=
  ∀ n, P6009477201386497727.a n = A303109 n

end A303109

/-!
# A303110: Number of partitions of n into two parts (p,q), with p < q, such that neither p+q nor |q-p| is semiprime.

The programs for A303110, there is no canonical definition to state claims against.
-/

/-! ## A303110.P14610264851756029305

`A344616((∑{p}[n+1, C(#, n)]+1+n)^∑{e}[n+1, #])`
-/

namespace A303110.P14610264851756029305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + 1 + n) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A303110.P14610264851756029305

/-! ## A303110.P13619504715479274600

`A004275(A002445(n))%A304106(n+1)`
-/

namespace A303110.P13619504715479274600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (A002445 n).toNat) (A304106 (n + 1))

end

end A303110.P13619504715479274600

/-! ## A303110.P9198001781899855302

`A079067(A347403(n+1)+A187829(n+1))`
-/

namespace A303110.P9198001781899855302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A347403 (n + 1) + A187829 (n + 1)).toNat

end

end A303110.P9198001781899855302

/-! ## A303110.P12343369303399986027

`A316524(A176029(n+1))-A010051(n+1)`
-/

namespace A303110.P12343369303399986027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A176029 (n + 1)).toNat - A010051 (n + 1)

end

end A303110.P12343369303399986027

/-!
# A303113: Number of partitions of n into two distinct positive integers (s,t), s < t, such that t is semiprime and |t-s| is not semiprime.

The programs for A303113, there is no canonical definition to state claims against.
-/

/-! ## A303113.P17784192389353584009

`∑{e}[A110409(A332212(n+1)), #]`
-/

namespace A303113.P17784192389353584009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110409 (A332212 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A303113.P17784192389353584009

/-! ## A303113.P7198897936434201576

`A037871(A260089(n)+A089849(n))`
-/

namespace A303113.P7198897936434201576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A260089 n + A089849 n).toNat

end

end A303113.P7198897936434201576

/-! ## A303113.P16181807510400566275

`A061762(A001202(n+1))%A008620(n)`
-/

namespace A303113.P16181807510400566275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061762 (A001202 (n + 1)).toNat) (A008620 n)

end

end A303113.P16181807510400566275

/-! ## A303113.P7286965414652283538

`A241637(n)%A234287(2*A233522(n))`
-/

namespace A303113.P7286965414652283538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241637 n) (A234287 (2 * A233522 n).toNat)

end

end A303113.P7286965414652283538

/-! ## A303113.P17313605040381147064

`A241641(n)%A234287(2*A233522(n))`
-/

namespace A303113.P17313605040381147064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241641 n) (A234287 (2 * A233522 n).toNat)

end

end A303113.P17313605040381147064

/-!
# A303114: Array read by antidiagonals: T(m,n) is the number of total dominating sets in the n X m king graph.

The programs for A303114, there is no canonical definition to state claims against.
-/

/-! ## A303114.P13659922034409194466

`A059395(A059413(n+2))%A202795(n+1)`
-/

namespace A303114.P13659922034409194466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059395 (A059413 (n + 2)).toNat) (A202795 (n + 1))

end

end A303114.P13659922034409194466

/-! ## A303114.P12978038731401741696

`A059395(A001037(2*n))%A202795(n+1)`
-/

namespace A303114.P12978038731401741696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059395 (A001037 (2 * n)).toNat) (A202795 (n + 1))

end

end A303114.P12978038731401741696

/-! ## A303114.P11256699353376967411

`A000204(A197545(n+1))-A003982(A303156(n+1))`
-/

namespace A303114.P11256699353376967411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A197545 (n + 1)).toNat - A003982 (A303156 (n + 1)).toNat

end

end A303114.P11256699353376967411

/-!
# A303117: a(n) is the number of cyclic permutations with at most two descents.

The programs for A303117, there is no canonical definition to state claims against.
-/

/-! ## A303117.P2547637620679552427

`A027376(n)-n*A001037(n)`
-/

namespace A303117.P2547637620679552427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 n - (n : ℤ) * A001037 n

end

end A303117.P2547637620679552427

/-! ## A303117.P6646805839056391809

`A027376(n)-A027375(n)`
-/

namespace A303117.P6646805839056391809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 n - A027375 n

end

end A303117.P6646805839056391809

/-! ## A303117.P540286970365011278

`A001867(n)-(A278663(n)+A027375(n))`
-/

namespace A303117.P540286970365011278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n - (A278663 n + A027375 n)

end

end A303117.P540286970365011278

/-! ## A303117.P12606735051980818523

`abs(A038199(A233583(n+1))-A027376(n))`
-/

namespace A303117.P12606735051980818523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038199 (A233583 (n + 1)).toNat - A027376 n|

end

end A303117.P12606735051980818523

/-! ## A303117.P14745041870243325450

`A054718(n)/A028310(n)-A027375(n)`
-/

namespace A303117.P14745041870243325450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (A028310 n : ℚ) - (A027375 n : ℚ)

end

end A303117.P14745041870243325450

/-! ## A303117.P15583728182352473209

`A054718(n)/A065033(2*n)-A027375(n)`
-/

namespace A303117.P15583728182352473209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (A065033 (2 * n) : ℚ) - (A027375 n : ℚ)

end

end A303117.P15583728182352473209

/-! ## A303117.P1334714800046367874

`A054718(n)/(A000007(n)+n)-A027375(n)`
-/

namespace A303117.P1334714800046367874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (A000007 n + (n : ℤ) : ℚ) - (A027375 n : ℚ)

end

end A303117.P1334714800046367874

/-! ## A303117.P1815543941077598600

`A054718(n)/A051176(A008486(n))-A027375(n)`
-/

namespace A303117.P1815543941077598600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 n : ℚ) / (A051176 (A008486 n).toNat : ℚ) - (A027375 n : ℚ)

end

end A303117.P1815543941077598600

/-! ## A303117.P6670121775221792484

`(A000027(n+1)*A027376(n))%(A027376(n)+A001037(n))`
-/

namespace A303117.P6670121775221792484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1) * A027376 n) (A027376 n + A001037 n)

end

end A303117.P6670121775221792484

/-! ## A303117.P9353793956553449215

`A074650(∑[n+2]-1)-A027375(n)`
-/

namespace A303117.P9353793956553449215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A027375 n

end

end A303117.P9353793956553449215

/-!
# A303118: Array read by antidiagonals: T(m,n) = number of minimal total dominating sets in the grid graph P_m X P_n.

The programs for A303118, there is no canonical definition to state claims against.
-/

/-! ## A303118.P3486803198650746517

`A157230(A157178(n)*A157320(n))`
-/

namespace A303118.P3486803198650746517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (A157178 n * A157320 n).toNat

end

end A303118.P3486803198650746517

/-! ## A303118.P16106595398195592620

`A157230(A157221(n)*A157320(n))`
-/

namespace A303118.P16106595398195592620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (A157221 n * A157320 n).toNat

end

end A303118.P16106595398195592620

/-! ## A303118.P328926540094064646

`A057427(n)*A225081(A283042(n+1))`
-/

namespace A303118.P328926540094064646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A225081 (A283042 (n + 1)).toNat

end

end A303118.P328926540094064646

/-! ## A303118.P12911407002542155342

`A216760(A227269(n+1))%A038208(n)`
-/

namespace A303118.P12911407002542155342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216760 (A227269 (n + 1)).toNat) (A038208 n)

end

end A303118.P12911407002542155342

/-! ## A303118.P16612577870109977671

`A352512(A207242(n+1))+A299588(n+1)`
-/

namespace A303118.P16612577870109977671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (A207242 (n + 1)).toNat + A299588 (n + 1)

end

end A303118.P16612577870109977671

/-!
# A303120: Total area of all rectangles of size p X q such that p + q = n^2 and p <= q.

The programs for A303120, the canonical program `A303120.P13190736090509542257` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303120 has offset 1).

The definition of A303120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303120.P13190736090509542257

`record[A023855(n+1)*A214295(n+2)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A303120

/-- `record[A023855(n+1)*A214295(n+2)]` -/
def P13190736090509542257.Spec : Prop :=
  ∀ n, P13190736090509542257.a n = A303120 (n + 1)

theorem P13190736090509542257.correct : P13190736090509542257.Spec := by
  intro n
  simp only [A303120, Nat.add_sub_cancel]

end A303120

/-! ## A303120.P1316423623365455052

`A295287((n+1)²)+A295286((n+1)²)`
-/

namespace A303120.P1316423623365455052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 ((n + 1) ^ 2) + A295286 ((n + 1) ^ 2)

end

end A303120.P1316423623365455052

namespace A303120

/-- `A295287((n+1)²)+A295286((n+1)²)` -/
def P1316423623365455052.Spec : Prop :=
  ∀ n, P1316423623365455052.a n = A303120 (n + 1)

end A303120

/-! ## A303120.P14404227542856794555

`A295287(2*(n+1)²)/4`
-/

namespace A303120.P14404227542856794555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295287 (2 * (n + 1) ^ 2) : ℚ) / 4

end

end A303120.P14404227542856794555

namespace A303120

/-- `A295287(2*(n+1)²)/4` -/
def P14404227542856794555.Spec : Prop :=
  ∀ n, P14404227542856794555.a n = (A303120 (n + 1) : ℚ)

end A303120

/-! ## A303120.P16465606560837764815

`A295293(∑[A016825(n)])/4`
-/

namespace A303120.P16465606560837764815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295293 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4

end

end A303120.P16465606560837764815

namespace A303120

/-- `A295293(∑[A016825(n)])/4` -/
def P16465606560837764815.Spec : Prop :=
  ∀ n, P16465606560837764815.a n = (A303120 (n + 1) : ℚ)

end A303120

/-! ## A303120.P7294886780248200962

`A295293(A001105(n+1))/4`
-/

namespace A303120.P7294886780248200962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295293 (A001105 (n + 1)).toNat : ℚ) / 4

end

end A303120.P7294886780248200962

namespace A303120

/-- `A295293(A001105(n+1))/4` -/
def P7294886780248200962.Spec : Prop :=
  ∀ n, P7294886780248200962.a n = (A303120 (n + 1) : ℚ)

end A303120

/-!
# A303121: Least k>1 such that k^n + n is prime, 0 if no such k exists.

The programs for A303121, there is no canonical definition to state claims against.
-/

/-! ## A303121.P6628391740676663122

`A216355(a(n-1))` with `a(0)=2, a(1)=3, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A303121.P6628391740676663122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2, 0, 2] fun n a =>
  A216355 (a (n - 1)).toNat

end

end A303121.P6628391740676663122

/-! ## A303121.P1053751092800133399

`xor(2, A296441(A086628(n)))`
-/

namespace A303121.P1053751092800133399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A296441 (A086628 n).toNat)

end

end A303121.P1053751092800133399

/-!
# A303123: Numbers whose sum of divisors is the square of one of their divisors.

The programs for A303123, there is no canonical definition to state claims against.
-/

/-! ## A303123.P17292613765696298197

`∩[A006532(n+1), A090777(n+1)]`
-/

namespace A303123.P17292613765696298197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303123.P17292613765696298197

/-!
# A303135: Expansion of Product_{n>=1} (1 - (16*x)^n)^(-1/4).

The programs for A303135, there is no canonical definition to state claims against.
-/

/-! ## A303135.P6076484760239468787

`A000079(A092391(n))*A061161(n)`
-/

namespace A303135.P6076484760239468787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A092391 n).toNat * A061161 n

end

end A303135.P6076484760239468787

/-!
# A303138: Regular triangle where T(n,k) is the number of strict integer partitions of n with greatest common divisor k.

The programs for A303138, there is no canonical definition to state claims against.
-/

/-! ## A303138.P15762020024130374068

`A051731(n+1)*A078374(A010766(n+1))`
-/

namespace A303138.P15762020024130374068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A078374 (A010766 (n + 1)).toNat

end

end A303138.P15762020024130374068

/-! ## A303138.P460485585943228889

`A051731(n+1)*A078374(A049834(n+1))`
-/

namespace A303138.P460485585943228889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A078374 (A049834 (n + 1)).toNat

end

end A303138.P460485585943228889

/-! ## A303138.P13558531267989793324

`A051731(n+1)*A078374(A051537(n+1))`
-/

namespace A303138.P13558531267989793324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A078374 (A051537 (n + 1)).toNat

end

end A303138.P13558531267989793324

/-! ## A303138.P8570163663916669839

`A051731(n+1)*A078374(A054531(n+1))`
-/

namespace A303138.P8570163663916669839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A078374 (A054531 (n + 1)).toNat

end

end A303138.P8570163663916669839

/-! ## A303138.P10959725879203057939

`A051731(n+1)*A078374(A219158(n+1))`
-/

namespace A303138.P10959725879203057939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A078374 (A219158 (n + 1)).toNat

end

end A303138.P10959725879203057939

/-! ## A303138.P9728523938796937697

`A051731(n+1)*A078374(A234575(n+1))`
-/

namespace A303138.P9728523938796937697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A078374 (A234575 (n + 1)).toNat

end

end A303138.P9728523938796937697

/-! ## A303138.P12310056872862547497

`A057427(A054522(n+1))*A078374(A010766(n+1))`
-/

namespace A303138.P12310056872862547497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A054522 (n + 1)).toNat * A078374 (A010766 (n + 1)).toNat

end

end A303138.P12310056872862547497

/-! ## A303138.P17405437476837232336

`A057427(A127093(n+1))*A078374(A010766(n+1))`
-/

namespace A303138.P17405437476837232336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A127093 (n + 1)).toNat * A078374 (A010766 (n + 1)).toNat

end

end A303138.P17405437476837232336

/-! ## A303138.P9623300253252360763

`A057427(A156348(n+1))*A078374(A010766(n+1))`
-/

namespace A303138.P9623300253252360763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A156348 (n + 1)).toNat * A078374 (A010766 (n + 1)).toNat

end

end A303138.P9623300253252360763

/-! ## A303138.P13184104195381416637

`A078374(A010766(n+1))%A008778(A127446(n+1))`
-/

namespace A303138.P13184104195381416637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078374 (A010766 (n + 1)).toNat) (A008778 (A127446 (n + 1)).toNat)

end

end A303138.P13184104195381416637

/-!
# A303139: Number of integer partitions of n with at least two but not all parts having a common divisor greater than 1.

The programs for A303139, there is no canonical definition to state claims against.
-/

/-! ## A303139.P17498748418964890327

`Δ[A306912(n)-∑[A327516(n)]]`
-/

namespace A303139.P17498748418964890327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306912 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303139.P17498748418964890327

/-! ## A303139.P13776125875481863248

`Δ[A306912(n)]-A327516(n+1)`
-/

namespace A303139.P13776125875481863248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A327516 (n + 1)

end

end A303139.P13776125875481863248

/-! ## A303139.P18181252201353328880

`A000837(n+1)-A327516(n+1)`
-/

namespace A303139.P18181252201353328880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A327516 (n + 1)

end

end A303139.P18181252201353328880

/-! ## A303139.P13882770008918267236

`A300486(n+1)-A051424(n+1)`
-/

namespace A303139.P13882770008918267236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300486 (n + 1) - A051424 (n + 1)

end

end A303139.P13882770008918267236

/-! ## A303139.P4565179582066513254

`A335240(n+1)-A018783(n+1)`
-/

namespace A303139.P4565179582066513254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335240 (n + 1) - A018783 (n + 1)

end

end A303139.P4565179582066513254

/-!
# A303140: Number of strict integer partitions of n with at least two but not all parts having a common divisor greater than 1.

The programs for A303140, there is no canonical definition to state claims against.
-/

/-! ## A303140.P16568617865182583355

`A078374(n+1)-A305713(n+1)`
-/

namespace A303140.P16568617865182583355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (n + 1) - A305713 (n + 1)

end

end A303140.P16568617865182583355

/-! ## A303140.P13055130520703627460

`A078374(n+1)-(A337485(n+1)+A007359(n))`
-/

namespace A303140.P13055130520703627460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (n + 1) - (A337485 (n + 1) + A007359 n)

end

end A303140.P13055130520703627460

/-! ## A303140.P13911781011615054603

`A337452(n+1)+A025147(n)-A305713(n+1)`
-/

namespace A303140.P13911781011615054603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337452 (n + 1) + A025147 n - A305713 (n + 1)

end

end A303140.P13911781011615054603

/-! ## A303140.P8059566511864792061

`A000009(n+1)-A303280(n+1)-A305713(n+1)`
-/

namespace A303140.P8059566511864792061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A303280 (n + 1) - A305713 (n + 1)

end

end A303140.P8059566511864792061

/-! ## A303140.P12857247699603183658

`∑{d}[n+1, A055615(#)*A319301((n+1)/#)]-A305713(n+1)`
-/

namespace A303140.P12857247699603183658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A319301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A305713 (n + 1)

end

end A303140.P12857247699603183658

/-! ## A303140.P3815655356247972202

`A035457(A163300(n+1))-A303280(n+1)-A305713(n+1)`
-/

namespace A303140.P3815655356247972202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A163300 (n + 1)).toNat - A303280 (n + 1) - A305713 (n + 1)

end

end A303140.P3815655356247972202

/-! ## A303140.P9171346015485980956

`A078374(n+1)-(A007360(n+1)+A337561(n+1)-A337562(n+1))`
-/

namespace A303140.P9171346015485980956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (n + 1) - (A007360 (n + 1) + (A337561 (n + 1) - A337562 (n + 1)))

end

end A303140.P9171346015485980956

/-!
# A303142: Number of minimum total dominating sets in the n X n grid graph.

The programs for A303142, there is no canonical definition to state claims against.
-/

/-! ## A303142.P16898419800697253708

`A303293(∑[4*n]+1)`
-/

namespace A303142.P16898419800697253708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303293 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303142.P16898419800697253708

/-! ## A303142.P277311396314301726

`lcm(2, A303293(or(1, ∑[4*n])))`
-/

namespace A303142.P277311396314301726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A303293 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A303142.P277311396314301726

/-! ## A303142.P1606370910416066278

`lcm(2, A303293(A001844(n)))`
-/

namespace A303142.P1606370910416066278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A303293 (A001844 n).toNat)

end

end A303142.P1606370910416066278

/-! ## A303142.P2654735128182914424

`A303293(A001844(n))+A025438(n)`
-/

namespace A303142.P2654735128182914424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303293 (A001844 n).toNat + A025438 n

end

end A303142.P2654735128182914424

/-! ## A303142.P7216326624014743240

`A303293(A001844(n))%A034659(n)`
-/

namespace A303142.P7216326624014743240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303293 (A001844 n).toNat) (A034659 n)

end

end A303142.P7216326624014743240

/-!
# A303144: Number of minimum total dominating sets in the n X n white bishop graph.

The programs for A303144, there is no canonical definition to state claims against.
-/

/-! ## A303144.P4855103279696876582

`A321673(n+2)/A303141(n+2)`
-/

namespace A303144.P4855103279696876582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321673 (n + 2) : ℚ) / (A303141 (n + 2) : ℚ)

end

end A303144.P4855103279696876582

/-!
# A303145: Number of total dominating sets in the n X n black bishop graph.

The programs for A303145, there is no canonical definition to state claims against.
-/

/-! ## A303145.P6784321742227661761

`A051953(A049660(n)+A000612(n))`
-/

namespace A303145.P6784321742227661761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A049660 n + A000612 n).toNat

end

end A303145.P6784321742227661761

/-!
# A303147: Number of total dominating sets in the n X n white bishop graph.

The programs for A303147, there is no canonical definition to state claims against.
-/

/-! ## A303147.P4768342792499391451

`A304555(n+2)/A303145(n+2)`
-/

namespace A303147.P4768342792499391451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304555 (n + 2) : ℚ) / (A303145 (n + 2) : ℚ)

end

end A303147.P4768342792499391451

/-!
# A303148: Number of minimal total dominating sets in the n-pan graph.

The programs for A303148, the canonical program `A303148.P17958106799873883268` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303148 has offset 1).

The definition of A303148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303148.P17958106799873883268

`a(n-3)+a(n-4)+a(n-5)+a(n-6)-a(n-8)-a(n-9)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2, a(4)=4, a(5)=8, a(6)=6, a(7)=6, a(8)=13`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A303148

/-- `a(n-3)+a(n-4)+a(n-5)+a(n-6)-a(n-8)-a(n-9)` -/
def P17958106799873883268.Spec : Prop :=
  ∀ n, P17958106799873883268.a n = A303148 (n + 1)

theorem P17958106799873883268.correct : P17958106799873883268.Spec := by
  intro n
  simp only [A303148, Nat.add_sub_cancel]

end A303148

/-!
# A303156: Number of minimum total dominating sets in the n X n king graph.

The programs for A303156, there is no canonical definition to state claims against.
-/

/-! ## A303156.P12574831856542617659

`A303335(∑[4*n]+1)`
-/

namespace A303156.P12574831856542617659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303156.P12574831856542617659

/-! ## A303156.P4898032044762720972

`A303335(A001844(n))+char[16]`
-/

namespace A303156.P4898032044762720972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303335 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303156.P4898032044762720972

/-! ## A303156.P7434927624722248231

`A015970(n)*A303335(A001844(n))`
-/

namespace A303156.P7434927624722248231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A303335 (A001844 n).toNat

end

end A303156.P7434927624722248231

/-! ## A303156.P5964558328821588816

`A057427(n)*A303335(A001844(n))`
-/

namespace A303156.P5964558328821588816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A303335 (A001844 n).toNat

end

end A303156.P5964558328821588816

/-! ## A303156.P14050161448038146922

`A303335(A001844(n))%A017513(n)`
-/

namespace A303156.P14050161448038146922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303335 (A001844 n).toNat) (A017513 n)

end

end A303156.P14050161448038146922

/-!
# A303158: Lexicographically earliest sequence of distinct terms such that the successive quantities of digits between two successive 3s are given by the succession of the sequence's digits itself.

The programs for A303158, there is no canonical definition to state claims against.
-/

/-! ## A303158.P6537393254701152593

`A273467(A043318(n+1))`
-/

namespace A303158.P6537393254701152593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273467 (A043318 (n + 1)).toNat

end

end A303158.P6537393254701152593

/-! ## A303158.P17405336349299271574

`A273467(A044915(n+1))`
-/

namespace A303158.P17405336349299271574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273467 (A044915 (n + 1)).toNat

end

end A303158.P17405336349299271574

/-! ## A303158.P13179286436012496953

`A273467(A161951(n+1))`
-/

namespace A303158.P13179286436012496953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273467 (A161951 (n + 1)).toNat

end

end A303158.P13179286436012496953

/-! ## A303158.P17389937388830747971

`A278861(A077168(n+1)-1)`
-/

namespace A303158.P17389937388830747971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278861 (A077168 (n + 1) - 1).toNat

end

end A303158.P17389937388830747971

/-! ## A303158.P7827429305291702616

`A273467(n+1)%A273446(n+3)`
-/

namespace A303158.P7827429305291702616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273467 (n + 1)) (A273446 (n + 3))

end

end A303158.P7827429305291702616

/-!
# A303159: Number of permutations p of [2n+1] such that 0p has exactly n+1 alternating runs.

The programs for A303159, there is no canonical definition to state claims against.
-/

/-! ## A303159.P2271105038670259572

`A303160(Δ[n²])`
-/

namespace A303159.P2271105038670259572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303160 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A303159.P2271105038670259572

/-! ## A303159.P451097504165098204

`A186370((n+1)²+n²)`
-/

namespace A303159.P451097504165098204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 ((n + 1) ^ 2 + n ^ 2)

end

end A303159.P451097504165098204

/-! ## A303159.P4530691839078853480

`record[A303160(A026741(n))]`
-/

namespace A303159.P4530691839078853480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303160 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303159.P4530691839078853480

/-! ## A303159.P1339443713259569799

`record[A303160(Δ[A008794(n)])]`
-/

namespace A303159.P1339443713259569799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303160 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303159.P1339443713259569799

/-! ## A303159.P7825341763903839608

`record[A003982(n)*A186370(n+1)]`
-/

namespace A303159.P7825341763903839608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303159.P7825341763903839608

/-!
# A303160: Number of permutations p of [n] such that 0p has exactly ceiling(n/2) alternating runs.

The programs for A303160, there is no canonical definition to state claims against.
-/

/-! ## A303160.P12334090120069163880

`A186370(A065033(n²))`
-/

namespace A303160.P12334090120069163880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 (A065033 (n ^ 2)).toNat

end

end A303160.P12334090120069163880

/-! ## A303160.P18026151315848402123

`A186370(A080476(n+1)-n)`
-/

namespace A303160.P18026151315848402123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 (A080476 (n + 1) - (n : ℤ)).toNat

end

end A303160.P18026151315848402123

/-! ## A303160.P3543621337145625279

`A186370(A030978(floor(acot(n)+n)))`
-/

namespace A303160.P3543621337145625279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 (A030978 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A303160.P3543621337145625279

/-! ## A303160.P17685620091256375366

`A186370(ceil((A132411(n)+1)/2))`
-/

namespace A303160.P17685620091256375366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 ⌈(A132411 n + 1 : ℚ) / 2⌉.toNat

end

end A303160.P17685620091256375366

/-! ## A303160.P17539999499661920025

`A186370(A008619(A132411(n)))`
-/

namespace A303160.P17539999499661920025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186370 (A008619 (A132411 n).toNat).toNat

end

end A303160.P17539999499661920025

/-!
# A303161: Number of minimal total dominating sets in the n X n grid graph.

The programs for A303161, there is no canonical definition to state claims against.
-/

/-! ## A303161.P12358401691989229961

`A303118(∑[4*n]+1)`
-/

namespace A303161.P12358401691989229961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303161.P12358401691989229961

/-! ## A303161.P16061216463928716637

`record[A003982(n)*A303118(n+1)]`
-/

namespace A303161.P16061216463928716637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A303118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303161.P16061216463928716637

/-! ## A303161.P17607287569575275133

`record[A010052(2*n+3)*A303118(n+2)]`
-/

namespace A303161.P17607287569575275133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 3) * A303118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303161.P17607287569575275133

/-! ## A303161.P14569103698898094069

`A303118(A001844(n))+A235145(n)`
-/

namespace A303161.P14569103698898094069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303118 (A001844 n).toNat + A235145 n

end

end A303161.P14569103698898094069

/-! ## A303161.P10758757712942018819

`A057427(n)*A303118(A001844(n))`
-/

namespace A303161.P10758757712942018819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A303118 (A001844 n).toNat

end

end A303161.P10758757712942018819

/-!
# A303163: Lexicographically earliest sequence of distinct terms such that the successive quantities of digits between two successive 5s are given by the succession of the sequence's digits itself.

The programs for A303163, there is no canonical definition to state claims against.
-/

/-! ## A303163.P2038452360475072219

`A278940(∑[A181735(n+1)!])`
-/

namespace A303163.P2038452360475072219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A181735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303163.P2038452360475072219

/-! ## A303163.P5212740401805118391

`A273470(n+1)%A184155(3*n+5)`
-/

namespace A303163.P5212740401805118391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273470 (n + 1)) (A184155 (3 * n + 5))

end

end A303163.P5212740401805118391

/-! ## A303163.P15290187172793461136

`A273470(n+1)+A014473(A185294(n))`
-/

namespace A303163.P15290187172793461136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273470 (n + 1) + A014473 (A185294 n).toNat

end

end A303163.P15290187172793461136

/-! ## A303163.P10384449609110152030

`A273470(n+1)+A096268(A143698(n))`
-/

namespace A303163.P10384449609110152030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273470 (n + 1) + A096268 (A143698 n).toNat

end

end A303163.P10384449609110152030

/-! ## A303163.P14869728017897840657

`A278940(n+1)+A185294(A185294(n))`
-/

namespace A303163.P14869728017897840657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278940 (n + 1) + A185294 (A185294 n).toNat

end

end A303163.P14869728017897840657

/-!
# A303164: Lexicographically earliest sequence of distinct terms such that the successive quantities of digits between two successive 6s are given by the succession of the sequence's digits itself.

The programs for A303164, there is no canonical definition to state claims against.
-/

/-! ## A303164.P13764249680023515119

`A273473(n+1)%A133966(A070914(n))`
-/

namespace A303164.P13764249680023515119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273473 (n + 1)) (A133966 (A070914 n).toNat)

end

end A303164.P13764249680023515119

/-! ## A303164.P4501612549491196700

`A278941(n+1)%A047800(A370639(n))`
-/

namespace A303164.P4501612549491196700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278941 (n + 1)) (A047800 (A370639 n).toNat)

end

end A303164.P4501612549491196700

/-! ## A303164.P12355064464372905087

`A278941(n+1)+A129360(A003390(n+1))`
-/

namespace A303164.P12355064464372905087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278941 (n + 1) + A129360 (A003390 (n + 1)).toNat

end

end A303164.P12355064464372905087

/-! ## A303164.P7697120006031202659

`A347706(A363981(n+1))+A273473(n+1)`
-/

namespace A303164.P7697120006031202659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A363981 (n + 1)).toNat + A273473 (n + 1)

end

end A303164.P7697120006031202659

/-! ## A303164.P13532368958365865675

`A273473(n+1)+A051731(A273453(3*n+1))`
-/

namespace A303164.P13532368958365865675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273473 (n + 1) + A051731 (A273453 (3 * n + 1)).toNat

end

end A303164.P13532368958365865675

/-!
# A303165: Sum of the squarefree differences |q-p| of the parts in the partitions of n into two distinct parts (p,q) where p < q.

The programs for A303165, the canonical program `A303165.P14882555247550226549` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303165 has offset 1).

The definition of A303165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303165.P14882555247550226549

`a(n-2)+lcm(n-1, A008683(n-1))` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A303165

/-- `a(n-2)+lcm(n-1, A008683(n-1))` -/
def P14882555247550226549.Spec : Prop :=
  ∀ n, (P14882555247550226549.a n : ℤ) = A303165 (n + 1)

theorem P14882555247550226549.correct : P14882555247550226549.Spec := by
  intro n
  simp only [A303165, Nat.add_sub_cancel]

end A303165

/-!
# A303166: Lexicographically earliest sequence of distinct terms such that the successive quantities of digits between two successive 7's are given by the succession of the sequence's digits itself.

The programs for A303166, there is no canonical definition to state claims against.
-/

/-! ## A303166.P40929591269521267

`A273475(A281873(n+1))`
-/

namespace A303166.P40929591269521267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273475 (A281873 (n + 1)).toNat

end

end A303166.P40929591269521267

/-! ## A303166.P7361203479692681976

`and(A127581(n), A273475(n+1))`
-/

namespace A303166.P7361203479692681976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127581 n) (A273475 (n + 1))

end

end A303166.P7361203479692681976

/-! ## A303166.P1193000576917189717

`and(A127581(n), A278942(n+1))`
-/

namespace A303166.P1193000576917189717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127581 n) (A278942 (n + 1))

end

end A303166.P1193000576917189717

/-! ## A303166.P17612223370236966184

`A273475(n+1)%A091021(n+5)`
-/

namespace A303166.P17612223370236966184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273475 (n + 1)) (A091021 (n + 5))

end

end A303166.P17612223370236966184

/-! ## A303166.P2644025756647072590

`and(A273475(n+1), A356877(n))`
-/

namespace A303166.P2644025756647072590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273475 (n + 1)) (A356877 n)

end

end A303166.P2644025756647072590

/-!
# A303167: Lexicographically earliest sequence of distinct terms such that the successive quantities of digits between two successive 8's are given by the succession of the sequence's digits itself.

The programs for A303167, there is no canonical definition to state claims against.
-/

/-! ## A303167.P6541969577049416966

`and(A273476(n+1), A359082(n+1))`
-/

namespace A303167.P6541969577049416966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273476 (n + 1)) (A359082 (n + 1))

end

end A303167.P6541969577049416966

/-! ## A303167.P6170278959114036723

`and(A278943(n+1), A359082(n+1))`
-/

namespace A303167.P6170278959114036723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278943 (n + 1)) (A359082 (n + 1))

end

end A303167.P6170278959114036723

/-! ## A303167.P1327943910287975614

`A273476(n+1)+A008683(A181795(n+2))`
-/

namespace A303167.P1327943910287975614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273476 (n + 1) + A008683 (A181795 (n + 2)).toNat

end

end A303167.P1327943910287975614

/-! ## A303167.P6764757170085562281

`and(A117060(n+1), A273476(n+1))`
-/

namespace A303167.P6764757170085562281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 1)) (A273476 (n + 1))

end

end A303167.P6764757170085562281

/-! ## A303167.P2514218609019770307

`and(A117060(n+1), A278943(n+1))`
-/

namespace A303167.P2514218609019770307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 1)) (A278943 (n + 1))

end

end A303167.P2514218609019770307

/-!
# A303169: a(n) = [x^(n^3)] (1/(1 - x))*(Sum_{k>=0} x^(k^3))^n.

The programs for A303169, there is no canonical definition to state claims against.
-/

/-! ## A303169.P6402779528143538169

`A303484(∑[4*n])`
-/

namespace A303169.P6402779528143538169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303484 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303169.P6402779528143538169

/-! ## A303169.P4679044895146959906

`record[A303484(A266725(n))]`
-/

namespace A303169.P4679044895146959906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303484 (A266725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303169.P4679044895146959906

/-!
# A303170: Number of ordered ways of writing n as a sum of n tetrahedral numbers.

The programs for A303170, there is no canonical definition to state claims against.
-/

/-! ## A303170.P8591335963130920482

`A290429(∑[4*n])`
-/

namespace A303170.P8591335963130920482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290429 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303170.P8591335963130920482

/-! ## A303170.P10738530003620525150

`or(1, A290429(2*(n²+n)))`
-/

namespace A303170.P10738530003620525150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290429 (2 * (n ^ 2 + n)))

end

end A303170.P10738530003620525150

/-! ## A303170.P5118823353618846464

`A290429(2*(n²+n))%A000032(2*n)`
-/

namespace A303170.P5118823353618846464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290429 (2 * (n ^ 2 + n))) (A000032 (2 * n))

end

end A303170.P5118823353618846464

/-! ## A303170.P15625500906904177519

`A007318(C(2, n))*A290429(2*(n²+n))`
-/

namespace A303170.P15625500906904177519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A290429 (2 * (n ^ 2 + n))

end

end A303170.P15625500906904177519

/-!
# A303171: Lexicographically earliest sequence of distinct terms such that the successive quantities of digits between two successive 9's are given by the succession of the sequence's digits itself.

The programs for A303171, there is no canonical definition to state claims against.
-/

/-! ## A303171.P6392657100614929423

`A273478(n+1)%A162240(n+1)`
-/

namespace A303171.P6392657100614929423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273478 (n + 1)) (A162240 (n + 1))

end

end A303171.P6392657100614929423

/-! ## A303171.P5185649158930572550

`A273478(n+1)%A000010(A273480(n))`
-/

namespace A303171.P5185649158930572550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273478 (n + 1)) (A000010 (A273480 n).toNat)

end

end A303171.P5185649158930572550

/-! ## A303171.P18403865693811468195

`A273478(n+1)+A000007(A213891(n+1))`
-/

namespace A303171.P18403865693811468195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273478 (n + 1) + A000007 (A213891 (n + 1)).toNat

end

end A303171.P18403865693811468195

/-! ## A303171.P7073559908662568787

`A278944(n+1)+A266147(A004011(n+3))`
-/

namespace A303171.P7073559908662568787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278944 (n + 1) + A266147 (A004011 (n + 3)).toNat

end

end A303171.P7073559908662568787

/-! ## A303171.P315468044498680930

`A273478(n+1)+A165110(A048334(n))`
-/

namespace A303171.P315468044498680930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273478 (n + 1) + A165110 (A048334 n).toNat

end

end A303171.P315468044498680930

/-!
# A303172: Number of ordered ways of writing n as a sum of n square pyramidal numbers.

The programs for A303172, there is no canonical definition to state claims against.
-/

/-! ## A303172.P16779045206811021195

`A290430(∑[4*n])`
-/

namespace A303172.P16779045206811021195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303172.P16779045206811021195

/-! ## A303172.P7100008809442338109

`or(char[2^n], A290430(A046092(n)))`
-/

namespace A303172.P7100008809442338109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A290430 (A046092 n).toNat)

end

end A303172.P7100008809442338109

/-! ## A303172.P8806939114224644914

`A290430(A046092(n))+A025439(n)`
-/

namespace A303172.P8806939114224644914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (A046092 n).toNat + A025439 n

end

end A303172.P8806939114224644914

/-! ## A303172.P10510916946716160587

`A290430(A046092(n))+A025469(n)`
-/

namespace A303172.P10510916946716160587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290430 (A046092 n).toNat + A025469 n

end

end A303172.P10510916946716160587

/-! ## A303172.P3369976597194101067

`lcm(A033999(n), A290430(A046092(n)))`
-/

namespace A303172.P3369976597194101067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A290430 (A046092 n).toNat)

end

end A303172.P3369976597194101067

/-!
# A303175: a(n) = [x^n] Product_{k=1..n} 1/(1 - (n - k + 1)*x^k).

The programs for A303175, there is no canonical definition to state claims against.
-/

/-! ## A303175.P5770463335816027324

`A275848(A028391(n)+A007559(n))`
-/

namespace A303175.P5770463335816027324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275848 (A028391 n + A007559 n).toNat

end

end A303175.P5770463335816027324

/-! ## A303175.P16946625453677915621

`A246526(n)+A172274(A246526(n))`
-/

namespace A303175.P16946625453677915621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246526 n + A172274 (A246526 n).toNat

end

end A303175.P16946625453677915621

/-!
# A303176: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303176, there is no canonical definition to state claims against.
-/

/-! ## A303176.P12045364246558005784

`A303182(∑[4*n]+1)`
-/

namespace A303176.P12045364246558005784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303176.P12045364246558005784

/-! ## A303176.P2104424005279480319

`A047996(n)*A303182(A001844(n))`
-/

namespace A303176.P2104424005279480319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A303182 (A001844 n).toNat

end

end A303176.P2104424005279480319

/-! ## A303176.P14670389234610681036

`gcd(A000038(n), A303182(A001844(n)))`
-/

namespace A303176.P14670389234610681036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A303182 (A001844 n).toNat)

end

end A303176.P14670389234610681036

/-! ## A303176.P17455308229892992431

`lcm(A087960(n), A303182(A001844(n)))`
-/

namespace A303176.P17455308229892992431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A303182 (A001844 n).toNat)

end

end A303176.P17455308229892992431

/-! ## A303176.P4190946667396646754

`or(A025432(n), A303182(A001844(n)))`
-/

namespace A303176.P4190946667396646754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025432 n) (A303182 (A001844 n).toNat)

end

end A303176.P4190946667396646754

/-!
# A303177: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303177, there is no canonical definition to state claims against.
-/

/-! ## A303177.P1652954630437522777

`A303182(∑[n+3]+1)`
-/

namespace A303177.P1652954630437522777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303177.P1652954630437522777

/-!
# A303178: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303178, there is no canonical definition to state claims against.
-/

/-! ## A303178.P15323458397266031092

`A303182(A141214(n+1))`
-/

namespace A303178.P15323458397266031092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A141214 (n + 1)).toNat

end

end A303178.P15323458397266031092

/-! ## A303178.P14553492300309414396

`A303182(A027379(n+2))`
-/

namespace A303178.P14553492300309414396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A027379 (n + 2)).toNat

end

end A303178.P14553492300309414396

/-! ## A303178.P2635246531835880602

`A303182(A055998(n+2))`
-/

namespace A303178.P2635246531835880602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A055998 (n + 2)).toNat

end

end A303178.P2635246531835880602

/-! ## A303178.P8010071084553464908

`A303182(A155212(n)+5)`
-/

namespace A303178.P8010071084553464908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A155212 n + 5).toNat

end

end A303178.P8010071084553464908

/-! ## A303178.P3029044653933894055

`A303182(A056000(n)+7)`
-/

namespace A303178.P3029044653933894055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A056000 n + 7).toNat

end

end A303178.P3029044653933894055

/-!
# A303179: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303179, there is no canonical definition to state claims against.
-/

/-! ## A303179.P10423629032716832005

`A303182(Δ[A264443(n)])`
-/

namespace A303179.P10423629032716832005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (f1 (n + 1) - f1 n).toNat

end

end A303179.P10423629032716832005

/-! ## A303179.P16545397444261073705

`A303182(A046691(n+3))`
-/

namespace A303179.P16545397444261073705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A046691 (n + 3)).toNat

end

end A303179.P16545397444261073705

/-! ## A303179.P7478766085361964855

`A303182(Δ[A023545(n+1)])`
-/

namespace A303179.P7478766085361964855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (f1 (n + 1) - f1 n).toNat

end

end A303179.P7478766085361964855

/-! ## A303179.P14931139949316194391

`A303182(A055998(n+3)-1)`
-/

namespace A303179.P14931139949316194391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A055998 (n + 3) - 1).toNat

end

end A303179.P14931139949316194391

/-! ## A303179.P17331299397341630896

`A303182(A000217(n+5)-4)`
-/

namespace A303179.P17331299397341630896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A000217 (n + 5) - 4).toNat

end

end A303179.P17331299397341630896

/-!
# A303180: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303180, there is no canonical definition to state claims against.
-/

/-! ## A303180.P1268009539337304509

`A303182(A052905(n+3))`
-/

namespace A303180.P1268009539337304509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A052905 (n + 3)).toNat

end

end A303180.P1268009539337304509

/-! ## A303180.P5185747416706450067

`A303182(A056119(n)+16)`
-/

namespace A303180.P5185747416706450067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A056119 n + 16).toNat

end

end A303180.P5185747416706450067

/-! ## A303180.P4824452586025214096

`A303182(A000217(n+6)-5)`
-/

namespace A303180.P4824452586025214096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A000217 (n + 6) - 5).toNat

end

end A303180.P4824452586025214096

/-! ## A303180.P11615460144793769111

`A303182(A000124(n+6)-6)`
-/

namespace A303180.P11615460144793769111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A000124 (n + 6) - 6).toNat

end

end A303180.P11615460144793769111

/-! ## A303180.P10672461298899408339

`A303182(Δ[Δ[A006504(n+1)]])`
-/

namespace A303180.P10672461298899408339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (f1 (n + 1) - f1 n).toNat

end

end A303180.P10672461298899408339

/-!
# A303181: Number of n X 7 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303181, there is no canonical definition to state claims against.
-/

/-! ## A303181.P16743281711380053628

`A303182(A055999(n+4))`
-/

namespace A303181.P16743281711380053628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A055999 (n + 4)).toNat

end

end A303181.P16743281711380053628

/-! ## A303181.P9676950719369047591

`A303182(eq[6, A193592(n)])`
-/

namespace A303181.P9676950719369047591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303181.P9676950719369047591

/-! ## A303181.P2765343131607782524

`A303182(eq[7, A200370(n+1)])`
-/

namespace A303181.P2765343131607782524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303181.P2765343131607782524

/-! ## A303181.P1096158843089669664

`A303182(eq[10, A185782(n+1)])`
-/

namespace A303181.P1096158843089669664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303181.P1096158843089669664

/-! ## A303181.P2649261336043686527

`A303182(A005408(n+3)+A000217(n+5))`
-/

namespace A303181.P2649261336043686527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A005408 (n + 3) + A000217 (n + 5)).toNat

end

end A303181.P2649261336043686527

/-!
# A303182: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303182, there is no canonical definition to state claims against.
-/

/-! ## A303182.P14407602887967269274

`or(A292251((n+1)*Δ[n^3]), A302415(n+1))`
-/

namespace A303182.P14407602887967269274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292251 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A302415 (n + 1))

end

end A303182.P14407602887967269274

/-! ## A303182.P4592147170195855993

`A302415(n+1)+A025466(A001296(n))`
-/

namespace A303182.P4592147170195855993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (n + 1) + A025466 (A001296 n).toNat

end

end A303182.P4592147170195855993

/-! ## A303182.P7698306403040093506

`A302415(n+1)+A011737(A022171(n))`
-/

namespace A303182.P7698306403040093506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (n + 1) + A011737 (A022171 n).toNat

end

end A303182.P7698306403040093506

/-! ## A303182.P4891512144850536496

`A302415(n+1)+A025465(A022345(n))`
-/

namespace A303182.P4891512144850536496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (n + 1) + A025465 (A022345 n).toNat

end

end A303182.P4891512144850536496

/-! ## A303182.P13582507665699369533

`A302415(n+1)+A025466(A209427(n))`
-/

namespace A303182.P13582507665699369533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (n + 1) + A025466 (A209427 n).toNat

end

end A303182.P13582507665699369533

/-!
# A303183: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303183, there is no canonical definition to state claims against.
-/

/-! ## A303183.P4533284026227961907

`A303182(∑[n+2]+4)`
-/

namespace A303183.P4533284026227961907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303183.P4533284026227961907

/-! ## A303183.P2438136181471344292

`record[A303182(A167614(floor(n/(n%2+2))+1))]`
-/

namespace A303183.P2438136181471344292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167614 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303183.P2438136181471344292

/-! ## A303183.P17358370776210122065

`A303182(A167614(n+1))+A025444(n)`
-/

namespace A303183.P17358370776210122065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167614 (n + 1)).toNat + A025444 n

end

end A303183.P17358370776210122065

/-! ## A303183.P8929218764456850068

`A303182(A167614(n+1))+A025466(n)`
-/

namespace A303183.P8929218764456850068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167614 (n + 1)).toNat + A025466 n

end

end A303183.P8929218764456850068

/-! ## A303183.P11746873264633395389

`A303182(A167614(n+1))+A184946(n)`
-/

namespace A303183.P11746873264633395389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167614 (n + 1)).toNat + A184946 n

end

end A303183.P11746873264633395389

/-!
# A303184: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303184, there is no canonical definition to state claims against.
-/

/-! ## A303184.P16220093124993114417

`A303182(A141214(n)+7)`
-/

namespace A303184.P16220093124993114417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A141214 n + 7).toNat

end

end A303184.P16220093124993114417

/-! ## A303184.P4790536177153697562

`A303182(A052905(n)+9)`
-/

namespace A303184.P4790536177153697562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A052905 n + 9).toNat

end

end A303184.P4790536177153697562

/-! ## A303184.P12438873995979175492

`A303182(A055999(n)+10)`
-/

namespace A303184.P12438873995979175492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A055999 n + 10).toNat

end

end A303184.P12438873995979175492

/-! ## A303184.P3545479590395250578

`A303182(A167614(n+2)+1)`
-/

namespace A303184.P3545479590395250578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167614 (n + 2) + 1).toNat

end

end A303184.P3545479590395250578

/-! ## A303184.P10963299977149779828

`A303182(A167499(n+2)-1)`
-/

namespace A303184.P10963299977149779828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167499 (n + 2) - 1).toNat

end

end A303184.P10963299977149779828

/-!
# A303185: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303185, there is no canonical definition to state claims against.
-/

/-! ## A303185.P7075366306811029050

`A303182(A167499(n+3))`
-/

namespace A303185.P7075366306811029050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167499 (n + 3)).toNat

end

end A303185.P7075366306811029050

/-! ## A303185.P5473024051490422514

`A303182(A155212(n)+13)`
-/

namespace A303185.P5473024051490422514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A155212 n + 13).toNat

end

end A303185.P5473024051490422514

/-! ## A303185.P1425737973673520265

`A303182(A056000(n)+15)`
-/

namespace A303185.P1425737973673520265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A056000 n + 15).toNat

end

end A303185.P1425737973673520265

/-! ## A303185.P16298235020697779915

`A303182(A167614(n+3)+2)`
-/

namespace A303185.P16298235020697779915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167614 (n + 3) + 2).toNat

end

end A303185.P16298235020697779915

/-! ## A303185.P783132712450233862

`A303182(A000217(n+4)+5)`
-/

namespace A303185.P783132712450233862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A000217 (n + 4) + 5).toNat

end

end A303185.P783132712450233862

/-!
# A303186: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303186, there is no canonical definition to state claims against.
-/

/-! ## A303186.P17835678886568110293

`A303182(A167499(n+4)+1)`
-/

namespace A303186.P17835678886568110293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167499 (n + 4) + 1).toNat

end

end A303186.P17835678886568110293

/-! ## A303186.P3564546416754629755

`A303182(A000124(n+5)+5)`
-/

namespace A303186.P3564546416754629755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A000124 (n + 5) + 5).toNat

end

end A303186.P3564546416754629755

/-! ## A303186.P9931803908724522384

`A303182(A000217(n+5)+6)`
-/

namespace A303186.P9931803908724522384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A000217 (n + 5) + 6).toNat

end

end A303186.P9931803908724522384

/-! ## A303186.P9826793620823188134

`A303182(Δ[A023545(n+1)]+10)`
-/

namespace A303186.P9826793620823188134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (f1 (n + 1) - f1 n + 10).toNat

end

end A303186.P9826793620823188134

/-! ## A303186.P14395087064504090987

`A303182(A167614(n+5)-(n+3))`
-/

namespace A303186.P14395087064504090987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A303186.P14395087064504090987

/-!
# A303187: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303187, there is no canonical definition to state claims against.
-/

/-! ## A303187.P16470666716147792521

`A303182(A167499(n+5)+2)`
-/

namespace A303187.P16470666716147792521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A167499 (n + 5) + 2).toNat

end

end A303187.P16470666716147792521

/-! ## A303187.P9304120612004506595

`A303182(A000217(n+6)+7)`
-/

namespace A303187.P9304120612004506595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A000217 (n + 6) + 7).toNat

end

end A303187.P9304120612004506595

/-! ## A303187.P8394158590654000152

`A303182(A027379(n+6)-A005408(n+2))`
-/

namespace A303187.P8394158590654000152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A027379 (n + 6) - A005408 (n + 2)).toNat

end

end A303187.P8394158590654000152

/-! ## A303187.P8791613003463729265

`A303182(A141214(n+9)-A016969(n+7))`
-/

namespace A303187.P8791613003463729265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (A141214 (n + 9) - A016969 (n + 7)).toNat

end

end A303187.P8791613003463729265

/-!
# A303188: a(n) = [x^n] Product_{k=1..n} (1 + (n - k + 1)*x^k).

The programs for A303188, there is no canonical definition to state claims against.
-/

/-! ## A303188.P1787477910540973099

`A143947(A105163(n+2))`
-/

namespace A303188.P1787477910540973099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143947 (A105163 (n + 2)).toNat

end

end A303188.P1787477910540973099

/-! ## A303188.P3759716664658293785

`A143947(A005581(n+1)+1)`
-/

namespace A303188.P3759716664658293785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143947 (A005581 (n + 1) + 1).toNat

end

end A303188.P3759716664658293785

/-! ## A303188.P13058672739279501620

`A143947(A000292(n+1)-n)`
-/

namespace A303188.P13058672739279501620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143947 (A000292 (n + 1) - (n : ℤ)).toNat

end

end A303188.P13058672739279501620

/-! ## A303188.P10375303256604563389

`A143947(A000124(n)+∑[∑[n]])`
-/

namespace A303188.P10375303256604563389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143947 (A000124 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A303188.P10375303256604563389

/-! ## A303188.P7161878120623879629

`A143947(A008778(n)-A000096(n))`
-/

namespace A303188.P7161878120623879629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143947 (A008778 n - A000096 n).toNat

end

end A303188.P7161878120623879629

/-!
# A303190: a(n) = [x^n] Product_{k=1..n} 1/(1 + (n - k + 1)*x^k).

The programs for A303190, there is no canonical definition to state claims against.
-/

/-! ## A303190.P17026778187453924976

`A003056(A215518(n))*A226447(n)`
-/

namespace A303190.P17026778187453924976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A215518 n).toNat * A226447 n

end

end A303190.P17026778187453924976

/-!
# A303191: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303191, there is no canonical definition to state claims against.
-/

/-! ## A303191.P8156854791949489734

`A303197(∑[4*n]+1)`
-/

namespace A303191.P8156854791949489734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303191.P8156854791949489734

/-! ## A303191.P8667428513856608767

`record[A303197(Δ[A235355(n)])]`
-/

namespace A303191.P8667428513856608767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303191.P8667428513856608767

/-! ## A303191.P741534561907792091

`record[A003982(n)*A303197(n+1)]`
-/

namespace A303191.P741534561907792091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A303197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303191.P741534561907792091

/-! ## A303191.P6720201655635584988

`record[A214505(n)*A303197(n+1)]`
-/

namespace A303191.P6720201655635584988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A303197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303191.P6720201655635584988

/-! ## A303191.P18322814382671059579

`record[and(A185917(n+1), A303197(n+1))]`
-/

namespace A303191.P18322814382671059579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A303197 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303191.P18322814382671059579

/-!
# A303192: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303192, there is no canonical definition to state claims against.
-/

/-! ## A303192.P6454384516575877797

`A303197(∑[n+3]+1)`
-/

namespace A303192.P6454384516575877797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303192.P6454384516575877797

/-! ## A303192.P17023803872661826917

`record[A303197(A198464(n+1))]`
-/

namespace A303192.P17023803872661826917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303192.P17023803872661826917

/-! ## A303192.P883806282296562802

`A303197(A034856(n+2))+char[19]`
-/

namespace A303192.P883806282296562802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303192.P883806282296562802

/-! ## A303192.P15150215475358329239

`A037800(n)!*A303197(A034856(n+2))`
-/

namespace A303192.P15150215475358329239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A037800 n).toNat : ℤ) * A303197 (A034856 (n + 2)).toNat

end

end A303192.P15150215475358329239

/-! ## A303192.P6714247537966939198

`A007318(C(2, n))*A303197(A034856(n+2))`
-/

namespace A303192.P6714247537966939198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303197 (A034856 (n + 2)).toNat

end

end A303192.P6714247537966939198

/-!
# A303193: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303193, there is no canonical definition to state claims against.
-/

/-! ## A303193.P12488670658003904810

`A303197(∑[n+4]+3)`
-/

namespace A303193.P12488670658003904810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A303193.P12488670658003904810

/-! ## A303193.P18248237281638873793

`A303197(A027379(n+2))+char[21]`
-/

namespace A303193.P18248237281638873793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303193.P18248237281638873793

/-! ## A303193.P16216276029052418918

`A303197(A055998(n+2))+(2*n)%2`
-/

namespace A303193.P16216276029052418918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A055998 (n + 2)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A303193.P16216276029052418918

/-! ## A303193.P17765245261266801672

`A303197(A055998(n+2))%A050288(n+1)`
-/

namespace A303193.P17765245261266801672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303197 (A055998 (n + 2)).toNat) (A050288 (n + 1))

end

end A303193.P17765245261266801672

/-! ## A303193.P13446284918513353374

`A303197(A027379(n+2))%A131601(n+1)`
-/

namespace A303193.P13446284918513353374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303197 (A027379 (n + 2)).toNat) (A131601 (n + 1))

end

end A303193.P13446284918513353374

/-!
# A303194: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303194, there is no canonical definition to state claims against.
-/

/-! ## A303194.P2210067109949569575

`A303197(∑[n+5]+6)`
-/

namespace A303194.P2210067109949569575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A303194.P2210067109949569575

/-! ## A303194.P8455191336723279031

`A303197(Δ[A023545(n+1)])+char[18]`
-/

namespace A303194.P8455191336723279031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303194.P8455191336723279031

/-! ## A303194.P3501303260773202137

`A303197(A052905(n+2)+1)+char[20]`
-/

namespace A303194.P3501303260773202137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A052905 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303194.P3501303260773202137

/-! ## A303194.P18183461593766622613

`A303197(A000217(n+5)-4)+char[22]`
-/

namespace A303194.P18183461593766622613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A000217 (n + 5) - 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303194.P18183461593766622613

/-! ## A303194.P5666048016096191336

`or(A001221(n+1), A303197(A052905(n+2)+1))`
-/

namespace A303194.P5666048016096191336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (n + 1)) (A303197 (A052905 (n + 2) + 1).toNat)

end

end A303194.P5666048016096191336

/-!
# A303195: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303195, there is no canonical definition to state claims against.
-/

/-! ## A303195.P92346257181917098

`A303197(A052905(n+3))`
-/

namespace A303195.P92346257181917098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A052905 (n + 3)).toNat

end

end A303195.P92346257181917098

/-! ## A303195.P4410250570649728576

`A303197(A302537(n)+15)`
-/

namespace A303195.P4410250570649728576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A302537 n + 15).toNat

end

end A303195.P4410250570649728576

/-! ## A303195.P5452604660005398700

`A303197(A056119(n)+16)`
-/

namespace A303195.P5452604660005398700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A056119 n + 16).toNat

end

end A303195.P5452604660005398700

/-! ## A303195.P5731686451802562206

`A303197(eq[3, A219347(n)])`
-/

namespace A303195.P5731686451802562206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303195.P5731686451802562206

/-! ## A303195.P13223803455514915162

`A303197(eq[5, A193592(n)])`
-/

namespace A303195.P13223803455514915162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303195.P13223803455514915162

/-!
# A303196: Number of n X 7 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303196, there is no canonical definition to state claims against.
-/

/-! ## A303196.P4804437287437399334

`A303197(A055999(n+4))`
-/

namespace A303196.P4804437287437399334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A055999 (n + 4)).toNat

end

end A303196.P4804437287437399334

/-! ## A303196.P6172459882062232614

`A303197(A056121(n)+22)`
-/

namespace A303196.P6172459882062232614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A056121 n + 22).toNat

end

end A303196.P6172459882062232614

/-! ## A303196.P4048174386734173907

`A303197(eq[4, A219347(n)])`
-/

namespace A303196.P4048174386734173907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303196.P4048174386734173907

/-! ## A303196.P17626750458168901524

`A303197(eq[6, A193592(n)])`
-/

namespace A303196.P17626750458168901524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303196.P17626750458168901524

/-! ## A303196.P6355124949989095879

`A303197(Δ[A023551(n+2)])`
-/

namespace A303196.P6355124949989095879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (f1 (n + 1) - f1 n).toNat

end

end A303196.P6355124949989095879

/-!
# A303197: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303197, there is no canonical definition to state claims against.
-/

/-! ## A303197.P4470468925731119030

`A302427(n+1)+A276167(A331278(n))`
-/

namespace A303197.P4470468925731119030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (n + 1) + A276167 (A331278 n).toNat

end

end A303197.P4470468925731119030

/-! ## A303197.P5339739221908105750

`A302427(n+1)+A186034(A022167(n))`
-/

namespace A303197.P5339739221908105750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (n + 1) + A186034 (A022167 n).toNat

end

end A303197.P5339739221908105750

/-! ## A303197.P5823680652887912885

`A302427(n+1)+A124763(A099594(n))`
-/

namespace A303197.P5823680652887912885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (n + 1) + A124763 (A099594 n).toNat

end

end A303197.P5823680652887912885

/-! ## A303197.P17045733716176549987

`A302427(n+1)+A037903(A022173(n))`
-/

namespace A303197.P17045733716176549987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (n + 1) + A037903 (A022173 n).toNat

end

end A303197.P17045733716176549987

/-! ## A303197.P2687173687505603132

`A302427(n+1)+A014374(A318045(n+1))`
-/

namespace A303197.P2687173687505603132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302427 (n + 1) + A014374 (A318045 (n + 1)).toNat

end

end A303197.P2687173687505603132

/-!
# A303198: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303198, there is no canonical definition to state claims against.
-/

/-! ## A303198.P4127188368568361856

`A303197(∑[n+2]+4)`
-/

namespace A303198.P4127188368568361856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303198.P4127188368568361856

/-! ## A303198.P1636087303278354484

`and(-1, A303197(A167614(n+1)))`
-/

namespace A303198.P1636087303278354484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303197 (A167614 (n + 1)).toNat)

end

end A303198.P1636087303278354484

/-! ## A303198.P13513785821674333886

`A303197(A167614(n+1))+A011745(n)`
-/

namespace A303198.P13513785821674333886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A167614 (n + 1)).toNat + A011745 n

end

end A303198.P13513785821674333886

/-! ## A303198.P17282116158699627117

`A303197(A167614(n+1))+A025439(n)`
-/

namespace A303198.P17282116158699627117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A167614 (n + 1)).toNat + A025439 n

end

end A303198.P17282116158699627117

/-! ## A303198.P349791965281974791

`A303197(A167614(n+1))+A025444(n)`
-/

namespace A303198.P349791965281974791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A167614 (n + 1)).toNat + A025444 n

end

end A303198.P349791965281974791

/-!
# A303199: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 3, 5 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A303199, there is no canonical definition to state claims against.
-/

/-! ## A303199.P407466531934940982

`A303197(∑[n+3]+7)`
-/

namespace A303199.P407466531934940982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303199.P407466531934940982

/-! ## A303199.P18163216646183506052

`record[A303197(A198464(n+1)+6)]`
-/

namespace A303199.P18163216646183506052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A198464 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303199.P18163216646183506052

/-! ## A303199.P12872466754861329506

`A303197(A145018(n+4))+char[20]`
-/

namespace A303199.P12872466754861329506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A145018 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303199.P12872466754861329506

/-! ## A303199.P9849731935830850723

`A303197(A000096(n+2)+5)+char[21]`
-/

namespace A303199.P9849731935830850723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303197 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303199.P9849731935830850723

/-! ## A303199.P14908274013982663261

`A303197(A000096(n+2)+5)%A000108(n+5)`
-/

namespace A303199.P14908274013982663261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303197 (A000096 (n + 2) + 5).toNat) (A000108 (n + 5))

end

end A303199.P14908274013982663261

