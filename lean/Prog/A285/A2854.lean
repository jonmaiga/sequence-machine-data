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
import Seq.B000.C018
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
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

/-!
# A285400: Start with a single cell at coordinates (0, 0, 0), then iteratively subdivide the grid into 3 X 3 X 3 cells and remove the cells whose sum of modulo 2 coordinates is 0 or 3; a(n) is the number of cells after n iterations.

The programs for A285400, the canonical program `A285400.P7683292784740134049` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285400 has offset 0).

The definition of A285400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285400.P7683292784740134049

`21*a(n-1)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285400

/-- `21*a(n-1)` -/
def P7683292784740134049.Spec : Prop :=
  ∀ n, (P7683292784740134049.a n : ℤ) = A285400 n

theorem P7683292784740134049.correct : P7683292784740134049.Spec := by
  intro n
  simp only [A285400]

end A285400

/-! ## A285400.P17035210780949339058

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=18, a(2)=21`
-/

namespace A285400.P17035210780949339058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 21] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A285400.P17035210780949339058

namespace A285400

/-- `abs(∏[-a(n-1)])` -/
def P17035210780949339058.Spec : Prop :=
  ∀ n, P17035210780949339058.a n = A285400 n

end A285400

/-! ## A285400.P13948629138251405369

`3^n*Δ[floor(7^(n-1))]`
-/

namespace A285400.P13948629138251405369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A285400.P13948629138251405369

namespace A285400

/-- `3^n*Δ[floor(7^(n-1))]` -/
def P13948629138251405369.Spec : Prop :=
  ∀ n, P13948629138251405369.a n = A285400 n

end A285400

/-! ## A285400.P8960979078697186506

`round(A203872(n+1)/63)`
-/

namespace A285400.P8960979078697186506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203872 (n + 1) : ℚ) / 63)

end

end A285400.P8960979078697186506

namespace A285400

/-- `round(A203872(n+1)/63)` -/
def P8960979078697186506.Spec : Prop :=
  ∀ n, P8960979078697186506.a n = A285400 n

end A285400

/-!
# A285401: Positions of 0 in A285177; complement of A285402.

The programs for A285401, there is no canonical definition to state claims against.
-/

/-! ## A285401.P12580180509122827562

`A285130(∑[A059841(n)])+A110654(n)`
-/

namespace A285401.P12580180509122827562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285130 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A110654 n

end

end A285401.P12580180509122827562

/-! ## A285401.P6360280850748037411

`A285130(A110654(n+1))+A110654(n)`
-/

namespace A285401.P6360280850748037411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285130 (A110654 (n + 1)).toNat + A110654 n

end

end A285401.P6360280850748037411

/-! ## A285401.P13898137778321239751

`A285130(A004526(n)+1)+A004526(n+1)`
-/

namespace A285401.P13898137778321239751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285130 (A004526 n + 1).toNat + A004526 (n + 1)

end

end A285401.P13898137778321239751

/-! ## A285401.P7269619184782226099

`eq[0, A285177(n+1)]+1`
-/

namespace A285401.P7269619184782226099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285401.P7269619184782226099

/-! ## A285401.P1977624242286329562

`lt[n*A285177(A028310(n)), n]`
-/

namespace A285401.P1977624242286329562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285177 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285401.P1977624242286329562

/-! ## A285401.P14733320312636383667

`record[(n+1)/A285405(n*A285177(n+1)+1)]`
-/

namespace A285401.P14733320312636383667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A285405 ((n : ℤ) * A285177 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285401.P14733320312636383667

/-! ## A285401.P7527494038912465209

`lt[A285177(A028310(n)), A057427(n)]`
-/

namespace A285401.P7527494038912465209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285401.P7527494038912465209

/-! ## A285401.P2250385509741592991

`eq[0, A285125(2*n+1)]+1`
-/

namespace A285401.P2250385509741592991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285401.P2250385509741592991

/-!
# A285402: Positions of 1 in A285177; complement of A285401.

The programs for A285402, there is no canonical definition to state claims against.
-/

/-! ## A285402.P9806111472671646967

`ceil(A285127(n+1)/2)`
-/

namespace A285402.P9806111472671646967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285127 (n + 1) : ℚ) / 2⌉

end

end A285402.P9806111472671646967

/-! ## A285402.P18141740969657791242

`comp[A285401(n+1)-1]+1`
-/

namespace A285402.P18141740969657791242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285401 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285402.P18141740969657791242

/-! ## A285402.P12322986958445265639

`2*A285129(n+1)-(n+1)`
-/

namespace A285402.P12322986958445265639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285129 (n + 1) - (n + 1 : ℤ)

end

end A285402.P12322986958445265639

/-! ## A285402.P4897497529711810500

`A014682(A285127(n+1)+1)`
-/

namespace A285402.P4897497529711810500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A285127 (n + 1) + 1).toNat

end

end A285402.P4897497529711810500

/-! ## A285402.P12102957431329965051

`filter[n+1, A285177(#)]`
-/

namespace A285402.P12102957431329965051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285177 (f1 j) = 1) n)

end

end A285402.P12102957431329965051

/-! ## A285402.P10343810555768034162

`lt[0, A285177(A028310(n))]`
-/

namespace A285402.P10343810555768034162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285402.P10343810555768034162

/-! ## A285402.P6750971193014324446

`(A285404(2*(n+1))-n)/2`
-/

namespace A285402.P6750971193014324446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285404 (2 * (n + 1)) - (n : ℤ) : ℚ) / 2

end

end A285402.P6750971193014324446

/-! ## A285402.P6715316098415616480

`(A285404(Δ[n²])-n+1)/2`
-/

namespace A285402.P6715316098415616480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ) + 1 : ℚ) / 2

end

end A285402.P6715316098415616480

/-! ## A285402.P3413894396492916449

`A000463(A285127(n+1))`
-/

namespace A285402.P3413894396492916449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A285127 (n + 1)).toNat

end

end A285402.P3413894396492916449

/-! ## A285402.P9967876105665363345

`A004526(A285127(n+1)+1)`
-/

namespace A285402.P9967876105665363345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285127 (n + 1) + 1).toNat

end

end A285402.P9967876105665363345

/-! ## A285402.P16344079509498581142

`A065262(A285127(n+1)+1)`
-/

namespace A285402.P16344079509498581142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (A285127 (n + 1) + 1).toNat

end

end A285402.P16344079509498581142

/-! ## A285402.P11167310474907445203

`A110654(A285127(n+1)+1)`
-/

namespace A285402.P11167310474907445203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A285127 (n + 1) + 1).toNat

end

end A285402.P11167310474907445203

/-! ## A285402.P16907624345201590038

`A308217(A285127(n+1)-1)`
-/

namespace A285402.P16907624345201590038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (A285127 (n + 1) - 1).toNat

end

end A285402.P16907624345201590038

/-! ## A285402.P10379522438155561011

`A308217(xor(1, A285127(n+1)))`
-/

namespace A285402.P10379522438155561011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (Int.xor 1 (A285127 (n + 1))).toNat

end

end A285402.P10379522438155561011

/-! ## A285402.P3596665166397756957

`A028242(A285404(2*n+1)-(n+1))`
-/

namespace A285402.P3596665166397756957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A285404 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A285402.P3596665166397756957

/-! ## A285402.P6329429565191324328

`A308217(A285404(2*n+1)-(n+1))`
-/

namespace A285402.P6329429565191324328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308217 (A285404 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A285402.P6329429565191324328

/-! ## A285402.P5739968678820712667

`A028242(A285404(2*(n+1)))-A028242(n)`
-/

namespace A285402.P5739968678820712667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A285404 (2 * (n + 1))).toNat - A028242 n

end

end A285402.P5739968678820712667

/-!
# A285403: 1-limiting word of the morphism 0->11, 1-> 001.

The programs for A285403, there is no canonical definition to state claims against.
-/

/-! ## A285403.P18259021191613553638

`char[A285405(n+1)-1]`
-/

namespace A285403.P18259021191613553638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285405 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285403.P18259021191613553638

/-! ## A285403.P16672197318659571489

`char[2*A285126(n+1)-(n+2)]`
-/

namespace A285403.P16672197318659571489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285126 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285403.P16672197318659571489

/-! ## A285403.P10110676842418455971

`char[A285130(n+1)%A285405(n+1)]`
-/

namespace A285403.P10110676842418455971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285130 (n + 1)) (A285405 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285403.P10110676842418455971

/-! ## A285403.P9866422504776835121

`A285128(Δ[n²])`
-/

namespace A285403.P9866422504776835121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285403.P9866422504776835121

/-! ## A285403.P15480809721553430148

`and(1, A285128(2*n+1))`
-/

namespace A285403.P15480809721553430148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285128 (2 * n + 1))

end

end A285403.P15480809721553430148

/-! ## A285403.P8882703166398999325

`ceil(A285128(2*n+1)/2)^A000041(n)`
-/

namespace A285403.P8882703166398999325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A285128 (2 * n + 1) : ℚ) / 2⌉ : ℚ) ^ (A000041 n : ℤ)

end

end A285403.P8882703166398999325

/-! ## A285403.P4080320557644164407

`A285128(2*n+1)+A285128(A285129(n+1))`
-/

namespace A285403.P4080320557644164407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (2 * n + 1) + A285128 (A285129 (n + 1)).toNat

end

end A285403.P4080320557644164407

/-! ## A285403.P7111540467755469001

`or(A285125(A285126(n+1)), A285128(2*n+1))`
-/

namespace A285403.P7111540467755469001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285125 (A285126 (n + 1)).toNat) (A285128 (2 * n + 1))

end

end A285403.P7111540467755469001

/-! ## A285403.P2307096618062945697

`A285128(n+1+n)/A284254(A006530(n+1))`
-/

namespace A285403.P2307096618062945697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285128 (n + 1 + n) : ℚ) / (A284254 (A006530 (n + 1)).toNat : ℚ)

end

end A285403.P2307096618062945697

/-! ## A285403.P14600430323987482864

`A285128(2*n+1)+A285125(2*(n+2))`
-/

namespace A285403.P14600430323987482864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (2 * n + 1) + A285125 (2 * (n + 2))

end

end A285403.P14600430323987482864

/-! ## A285403.P3811125808691932355

`A285125(A285127(n+1))*A285128(2*n+1)`
-/

namespace A285403.P3811125808691932355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A285127 (n + 1)).toNat * A285128 (2 * n + 1)

end

end A285403.P3811125808691932355

/-! ## A285403.P6519097870271788132

`ceil(A285128(2*n+1)/A000041(2*n)²)`
-/

namespace A285403.P6519097870271788132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285128 (2 * n + 1) : ℚ) / (A000041 (2 * n) ^ 2 : ℚ)⌉

end

end A285403.P6519097870271788132

/-!
# A285404: Positions of 0 in A285403; complement of A285405.

The programs for A285404, there is no canonical definition to state claims against.
-/

/-! ## A285404.P14903048633572505572

`A285127(A008619(n))+A110654(n)`
-/

namespace A285404.P14903048633572505572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (A008619 n).toNat + A110654 n

end

end A285404.P14903048633572505572

/-! ## A285404.P17281902721495398906

`A285127(A008619(n))+∑[A000035(n)]`
-/

namespace A285404.P17281902721495398906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (A008619 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285404.P17281902721495398906

/-! ## A285404.P18397638199509988905

`A285127(∑[A059841(n)])+A110654(n)`
-/

namespace A285404.P18397638199509988905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A110654 n

end

end A285404.P18397638199509988905

/-! ## A285404.P16876543150135738396

`A285127(A110654(n+1))+A110654(n)`
-/

namespace A285404.P16876543150135738396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (A110654 (n + 1)).toNat + A110654 n

end

end A285404.P16876543150135738396

/-! ## A285404.P4539305455637209174

`A285127(A008619(n))+n-A004526(n)`
-/

namespace A285404.P4539305455637209174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (A008619 n).toNat + ((n : ℤ) - A004526 n)

end

end A285404.P4539305455637209174

/-! ## A285404.P3591446503735284125

`A285127(A008619(n))+A004526(n+1)`
-/

namespace A285404.P3591446503735284125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285127 (A008619 n).toNat + A004526 (n + 1)

end

end A285404.P3591446503735284125

/-! ## A285404.P14130477550609800859

`eq[0, A285403(n+1)]+1`
-/

namespace A285404.P14130477550609800859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285404.P14130477550609800859

/-! ## A285404.P4057024051558406817

`eq[0, A285403(A028310(n))]`
-/

namespace A285404.P4057024051558406817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285404.P4057024051558406817

/-! ## A285404.P2623315762860328988

`A080513(eq[A007814(n+1), A285128(n+1)])`
-/

namespace A285404.P2623315762860328988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285404.P2623315762860328988

/-! ## A285404.P14544809899438448494

`A008619(eq[A244415(n+1), A285128(n+1)])`
-/

namespace A285404.P14544809899438448494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285404.P14544809899438448494

/-! ## A285404.P8866891286326554334

`A028242(eq[A244415(n+1), A285128(n+1)])`
-/

namespace A285404.P8866891286326554334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285404.P8866891286326554334

/-! ## A285404.P17312274738433475509

`A328399(eq[A007814(n+1), A285128(n+1)])`
-/

namespace A285404.P17312274738433475509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285404.P17312274738433475509

/-! ## A285404.P4492653698040210425

`lt[A285125(A285127(n+1))*A285128(2*n+1), 1]+1`
-/

namespace A285404.P4492653698040210425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A285127 (n + 1)).toNat * A285128 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285404.P4492653698040210425

/-!
# A285405: Positions of 1 in A285403; complement of A285404.

The programs for A285405, there is no canonical definition to state claims against.
-/

/-! ## A285405.P12250143488343884696

`ceil(A285130(n+1)/2)`
-/

namespace A285405.P12250143488343884696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285130 (n + 1) : ℚ) / 2⌉

end

end A285405.P12250143488343884696

/-! ## A285405.P18138886051837102715

`comp[A285404(n+1)-1]+1`
-/

namespace A285405.P18138886051837102715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285404 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285405.P18138886051837102715

/-! ## A285405.P12461904983366502921

`2*A285126(n+1)-(n+1)`
-/

namespace A285405.P12461904983366502921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285126 (n + 1) - (n + 1 : ℤ)

end

end A285405.P12461904983366502921

/-! ## A285405.P7575697830057518981

`filter[n+1, A285403(#)]`
-/

namespace A285405.P7575697830057518981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285403 (f1 j) = 1) n)

end

end A285405.P7575697830057518981

/-! ## A285405.P10491407681255647542

`lt[0, A285403(n+1)]+1`
-/

namespace A285405.P10491407681255647542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285405.P10491407681255647542

/-! ## A285405.P1772917402820356069

`eq[n, A028310(n)*A285403(A028310(n))]`
-/

namespace A285405.P1772917402820356069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A285403 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285405.P1772917402820356069

/-! ## A285405.P5145223368434734324

`(A285401(2*(n+1))-n)/2`
-/

namespace A285405.P5145223368434734324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285401 (2 * (n + 1)) - (n : ℤ) : ℚ) / 2

end

end A285405.P5145223368434734324

/-! ## A285405.P6908497979852000785

`(A285401(Δ[n²])-n+1)/2`
-/

namespace A285405.P6908497979852000785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285401 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ) + 1 : ℚ) / 2

end

end A285405.P6908497979852000785

/-! ## A285405.P14941197206326953077

`record[(n+1)*ceil(A285128(2*n+1)/2)]`
-/

namespace A285405.P14941197206326953077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A285128 (2 * n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285405.P14941197206326953077

/-! ## A285405.P18258912694027740158

`record[(n+2)*(xor(n, n+1)+1)/4*A285128(n+1)]`
-/

namespace A285405.P18258912694027740158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (Nat.xor n (n + 1) + 1) : ℚ) / 4 * (A285128 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285405.P18258912694027740158

/-! ## A285405.P2879657905283451559

`A000463(A285130(n+1))`
-/

namespace A285405.P2879657905283451559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A285130 (n + 1)).toNat

end

end A285405.P2879657905283451559

/-! ## A285405.P16292897975803386219

`A004526(A285130(n+1)+1)`
-/

namespace A285405.P16292897975803386219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285130 (n + 1) + 1).toNat

end

end A285405.P16292897975803386219

/-! ## A285405.P7278659716170711274

`A006370(A285401(2*(n+1))-n)`
-/

namespace A285405.P7278659716170711274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A285401 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A285405.P7278659716170711274

/-! ## A285405.P2095129190042175647

`A026741(A285401(2*(n+1))-n)`
-/

namespace A285405.P2095129190042175647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A285401 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A285405.P2095129190042175647

/-! ## A285405.P943998372108426836

`A008619(eq[n, n*A285128(n+1)])`
-/

namespace A285405.P943998372108426836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285405.P943998372108426836

/-! ## A285405.P8156450879737135626

`A028242(eq[n, n*A285128(n+1)])`
-/

namespace A285405.P8156450879737135626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285405.P8156450879737135626

/-! ## A285405.P15481062564698786925

`A080513(eq[n, n*A285128(n+1)])`
-/

namespace A285405.P15481062564698786925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285405.P15481062564698786925

/-! ## A285405.P11185521921866462943

`A328399(eq[n, n*A285128(n+1)])`
-/

namespace A285405.P11185521921866462943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285405.P11185521921866462943

/-! ## A285405.P7601716513049151511

`A080513(eq[A007814(n+1)+1, A285128(n+1)])`
-/

namespace A285405.P7601716513049151511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285405.P7601716513049151511

/-! ## A285405.P15904688760681625829

`A008619(eq[A244415(n+1)+1, A285128(n+1)])`
-/

namespace A285405.P15904688760681625829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285405.P15904688760681625829

/-!
# A285406: Base-2 logarithm of denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k)*n).

The programs for A285406, the canonical program `A285406.P13392758496350615043` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285406 has offset 1).

The definition of A285406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285406.P13392758496350615043

`A056220(n+1)-A285717(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A285406

/-- `A056220(n+1)-A285717(n+1)` -/
def P13392758496350615043.Spec : Prop :=
  ∀ n, P13392758496350615043.a n = A285406 (n + 1)

theorem P13392758496350615043.correct : P13392758496350615043.Spec := by
  intro n
  simp only [A285406, Nat.add_sub_cancel]

end A285406

/-! ## A285406.P1672126644691159361

`2*(n+1)²-A007814(n+1)-A000120((n+1)²)-1`
-/

namespace A285406.P1672126644691159361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - A007814 (n + 1) - A000120 ((n + 1) ^ 2) - 1

end

end A285406.P1672126644691159361

namespace A285406

/-- `2*(n+1)²-A007814(n+1)-A000120((n+1)²)-1` -/
def P1672126644691159361.Spec : Prop :=
  ∀ n, P1672126644691159361.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P13733366286228288124

`A005187(n*(n+2))+val(n+1, 2)`
-/

namespace A285406.P13733366286228288124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n * (n + 2)) + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A285406.P13733366286228288124

namespace A285406

/-- `A005187(n*(n+2))+val(n+1, 2)` -/
def P13733366286228288124.Spec : Prop :=
  ∀ n, P13733366286228288124.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P4480709385851989728

`A005187((n+1)²)-(val(n+1, 2)+1)`
-/

namespace A285406.P4480709385851989728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ((n + 1) ^ 2) - (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A285406.P4480709385851989728

namespace A285406

/-- `A005187((n+1)²)-(val(n+1, 2)+1)` -/
def P4480709385851989728.Spec : Prop :=
  ∀ n, P4480709385851989728.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P5677750243461960643

`A005187((n+1)²)-A001511(n+1)`
-/

namespace A285406.P5677750243461960643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ((n + 1) ^ 2) - A001511 (n + 1)

end

end A285406.P5677750243461960643

namespace A285406

/-- `A005187((n+1)²)-A001511(n+1)` -/
def P5677750243461960643.Spec : Prop :=
  ∀ n, P5677750243461960643.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P12048993265761809785

`A007814(n+1)+A005187(n*(n+2))`
-/

namespace A285406.P12048993265761809785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A005187 (n * (n + 2))

end

end A285406.P12048993265761809785

namespace A285406

/-- `A007814(n+1)+A005187(n*(n+2))` -/
def P12048993265761809785.Spec : Prop :=
  ∀ n, P12048993265761809785.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P1434415020542001680

`A005187(n*(n+2))+A001222(or(n, n+1)-n)`
-/

namespace A285406.P1434415020542001680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n * (n + 2)) + A001222 (Nat.lor n (n + 1) - n)

end

end A285406.P1434415020542001680

namespace A285406

/-- `A005187(n*(n+2))+A001222(or(n, n+1)-n)` -/
def P1434415020542001680.Spec : Prop :=
  ∀ n, P1434415020542001680.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P13496507745755723259

`A005187(n*(n+2))+A001222(and(n+1, -(n+1)))`
-/

namespace A285406.P13496507745755723259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n * (n + 2)) + A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A285406.P13496507745755723259

namespace A285406

/-- `A005187(n*(n+2))+A001222(and(n+1, -(n+1)))` -/
def P13496507745755723259.Spec : Prop :=
  ∀ n, P13496507745755723259.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P5899030602867385986

`A005187(n*(n+2))+A000005(xor(n, n+1)+1)-2`
-/

namespace A285406.P5899030602867385986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n * (n + 2)) + (A000005 (Nat.xor n (n + 1) + 1) - 2)

end

end A285406.P5899030602867385986

namespace A285406

/-- `A005187(n*(n+2))+A000005(xor(n, n+1)+1)-2` -/
def P5899030602867385986.Spec : Prop :=
  ∀ n, P5899030602867385986.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P11465170571261852499

`A005187(n*(n+2))+A001222((xor(n, n+1)+1)/2)`
-/

namespace A285406.P11465170571261852499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n * (n + 2)) + A001222 (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 2)).toNat

end

end A285406.P11465170571261852499

namespace A285406

/-- `A005187(n*(n+2))+A001222((xor(n, n+1)+1)/2)` -/
def P11465170571261852499.Spec : Prop :=
  ∀ n, P11465170571261852499.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P6005349338356845030

`A011371(n+1)+A005187(n*(n+2))-A011371(n)`
-/

namespace A285406.P6005349338356845030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + (A005187 (n * (n + 2)) - A011371 n)

end

end A285406.P6005349338356845030

namespace A285406

/-- `A011371(n+1)+A005187(n*(n+2))-A011371(n)` -/
def P6005349338356845030.Spec : Prop :=
  ∀ n, P6005349338356845030.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P11072622157386288213

`and(n, val(n+1, 2))+A101925(n*(n+2))-1`
-/

namespace A285406.P11072622157386288213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land n (SequenceMachineLib.valuation (n + 1) 2) : ℤ) + (A101925 (n * (n + 2)) - 1)

end

end A285406.P11072622157386288213

namespace A285406

/-- `and(n, val(n+1, 2))+A101925(n*(n+2))-1` -/
def P11072622157386288213.Spec : Prop :=
  ∀ n, P11072622157386288213.a n = A285406 (n + 1)

end A285406

/-! ## A285406.P12550254726183906608

`A001222((xor(n, n+1)+1)/2)+A101925(n*(n+2))-1`
-/

namespace A285406.P12550254726183906608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 2)).toNat + (A101925 (n * (n + 2)) - 1)

end

end A285406.P12550254726183906608

namespace A285406

/-- `A001222((xor(n, n+1)+1)/2)+A101925(n*(n+2))-1` -/
def P12550254726183906608.Spec : Prop :=
  ∀ n, P12550254726183906608.a n = A285406 (n + 1)

end A285406

/-!
# A285407: G.f.: 1/(1 - x^2/(1 - x^3/(1 - x^5/(1 - x^7/(1 - x^11/(1 - ... - x^prime(k)/(1 - ... ))))))), a continued fraction.

The programs for A285407, there is no canonical definition to state claims against.
-/

/-! ## A285407.P14445745713017770472

`Δ[A004526(A003056(A182908(n+1)))]`
-/

namespace A285407.P14445745713017770472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003056 (A182908 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285407.P14445745713017770472

/-! ## A285407.P14268119823065355366

`Δ[A110654(A003056(A185192(n+1)))]`
-/

namespace A285407.P14268119823065355366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003056 (A185192 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285407.P14268119823065355366

/-! ## A285407.P11122077136209341917

`A079955(n)-A010051(A063834(n+3))`
-/

namespace A285407.P11122077136209341917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 n - A010051 (A063834 (n + 3)).toNat

end

end A285407.P11122077136209341917

/-!
# A285408: Expansion of 1/(1 + x/(1 + x^4/(1 + x^9/(1 + x^16/(1 + x^25/(1 + ... + x^(k^2)/(1 + ...))))))), a continued fraction.

The programs for A285408, there is no canonical definition to state claims against.
-/

/-! ## A285408.P14426077280661848047

`A101914(n)-A178798(A027187(n))`
-/

namespace A285408.P14426077280661848047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101914 n - A178798 (A027187 n).toNat

end

end A285408.P14426077280661848047

/-! ## A285408.P8202494738213326331

`A101914(n)-A248805(A057977(n))`
-/

namespace A285408.P8202494738213326331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101914 n - A248805 (A057977 n).toNat

end

end A285408.P8202494738213326331

/-! ## A285408.P7067691399257338049

`A101941(A101842(n+1))+A101914(n)`
-/

namespace A285408.P7067691399257338049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101941 (A101842 (n + 1)).toNat + A101914 n

end

end A285408.P7067691399257338049

/-! ## A285408.P17395433399425837916

`A101914(n)-A295884(A000041(3*n+1))`
-/

namespace A285408.P17395433399425837916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101914 n - A295884 (A000041 (3 * n + 1)).toNat

end

end A285408.P17395433399425837916

/-!
# A285410: Sum of the entries in the (n+1)-th blocks of all set partitions of [2n+1].

The programs for A285410, there is no canonical definition to state claims against.
-/

/-! ## A285410.P6297969208177347036

`A285362(∑[4*n]+1)`
-/

namespace A285410.P6297969208177347036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285410.P6297969208177347036

/-! ## A285410.P3839292324497835708

`record[A003982(n)*A285362(n+1)]`
-/

namespace A285410.P3839292324497835708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A285362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285410.P3839292324497835708

/-! ## A285410.P17126288752392818403

`record[gcd(A003987(n), A285362(n+1))]`
-/

namespace A285410.P17126288752392818403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A285362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285410.P17126288752392818403

/-! ## A285410.P7983890764998248088

`A285362(A001844(n))^A178334(n)`
-/

namespace A285410.P7983890764998248088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285362 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A285410.P7983890764998248088

/-! ## A285410.P15890313302381297525

`A285362(A001844(n))%A293086(n+1)`
-/

namespace A285410.P15890313302381297525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285362 (A001844 n).toNat) (A293086 (n + 1))

end

end A285410.P15890313302381297525

/-!
# A285411: 0-limiting word of the morphism 0->11, 1-> 010.

The programs for A285411, there is no canonical definition to state claims against.
-/

/-! ## A285411.P16859780528615427005

`char[A285413(n+1)-1]`
-/

namespace A285411.P16859780528615427005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285413 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285411.P16859780528615427005

/-! ## A285411.P7230212410623737974

`char[comp[A285412(n+1)-1]]`
-/

namespace A285411.P7230212410623737974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285412 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285411.P7230212410623737974

/-! ## A285411.P9284757924410167530

`A128174(A063980(n+1)*A137721(n+1))`
-/

namespace A285411.P9284757924410167530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A063980 (n + 1) * A137721 (n + 1)).toNat

end

end A285411.P9284757924410167530

/-! ## A285411.P13653024104918811563

`A327256(and(A007304(n+1), A192272(n+1)))`
-/

namespace A285411.P13653024104918811563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 (Int.land (A007304 (n + 1)) (A192272 (n + 1))).toNat

end

end A285411.P13653024104918811563

/-! ## A285411.P8907998521185427546

`A064990(4*A029747(n+3))`
-/

namespace A285411.P8907998521185427546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (4 * A029747 (n + 3)).toNat

end

end A285411.P8907998521185427546

/-!
# A285412: Positions of 0 in A285411; complement of A285413.

The programs for A285412, there is no canonical definition to state claims against.
-/

/-! ## A285412.P17843105626989413068

`eq[0, A285411(n+1)]+1`
-/

namespace A285412.P17843105626989413068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285412.P17843105626989413068

/-! ## A285412.P7357375520971242731

`eq[char[A285413(n+1)], A000007(n)]`
-/

namespace A285412.P7357375520971242731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285412.P7357375520971242731

/-! ## A285412.P14565635186908280429

`eq[char[A285413(n+1)], A000038(n)]`
-/

namespace A285412.P14565635186908280429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285412.P14565635186908280429

/-! ## A285412.P17128488515591114405

`eq[A000007(n), A285411(A028310(n))]`
-/

namespace A285412.P17128488515591114405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285411 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285412.P17128488515591114405

/-! ## A285412.P12904233103860631243

`eq[A000038(n), A285411(A028310(n))]`
-/

namespace A285412.P12904233103860631243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285411 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285412.P12904233103860631243

/-!
# A285413: Positions of 1 in A285411; complement of A285412.

The programs for A285413, there is no canonical definition to state claims against.
-/

/-! ## A285413.P17449362627136340459

`comp[A285412(n+1)-1]+1`
-/

namespace A285413.P17449362627136340459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285412 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285413.P17449362627136340459

/-! ## A285413.P11540741626119343395

`filter[n+1, A285411(#)]`
-/

namespace A285413.P11540741626119343395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285411 (f1 j) = 1) n)

end

end A285413.P11540741626119343395

/-! ## A285413.P15504666109973819177

`lt[0, A285411(n+1)]+1`
-/

namespace A285413.P15504666109973819177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285413.P15504666109973819177

/-! ## A285413.P5124062802084064610

`record[(n+2)*A285411(n+2)]`
-/

namespace A285413.P5124062802084064610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A285411 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285413.P5124062802084064610

/-! ## A285413.P9614209903992316554

`lt[0, A285411(A028310(n))]`
-/

namespace A285413.P9614209903992316554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285411 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285413.P9614209903992316554

/-! ## A285413.P9701848412200992176

`eq[A001221(A051697(n)), A285411(n+1)]+1`
-/

namespace A285413.P9701848412200992176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051697 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285411 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285413.P9701848412200992176

/-! ## A285413.P85679520364029239

`eq[1, A285411(A000007(n)+n)]`
-/

namespace A285413.P85679520364029239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285411 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285413.P85679520364029239

/-! ## A285413.P2713778112441738334

`(A285415(2*(n+1))-(n+1))/2`
-/

namespace A285413.P2713778112441738334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285415 (2 * (n + 1)) - (n + 1 : ℤ) : ℚ) / 2

end

end A285413.P2713778112441738334

/-! ## A285413.P6533482586706541598

`A008619(A285415(2*n+1)-n)`
-/

namespace A285413.P6533482586706541598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285415 (2 * n + 1) - (n : ℤ)).toNat

end

end A285413.P6533482586706541598

/-! ## A285413.P16775354443234496716

`A004525(A285415(2*(n+1))-(n+1))`
-/

namespace A285413.P16775354443234496716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A285415 (2 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A285413.P16775354443234496716

/-! ## A285413.P16868778848131516433

`A004526(A285415(2*(n+1))-n)`
-/

namespace A285413.P16868778848131516433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285415 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A285413.P16868778848131516433

/-!
# A285414: 1-limiting word of the morphism 0->11, 1-> 010.

The programs for A285414, there is no canonical definition to state claims against.
-/

/-! ## A285414.P16752636408892903707

`char[A285416(n+1)-1]`
-/

namespace A285414.P16752636408892903707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285416 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285414.P16752636408892903707

/-! ## A285414.P3636106060247989063

`char[comp[A285415(n+1)-1]]`
-/

namespace A285414.P3636106060247989063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285415 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285414.P3636106060247989063

/-! ## A285414.P11207384950803894373

`char[A285416(n)-1-a(2%n)]` with `a(0)=1`
-/

namespace A285414.P11207384950803894373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A285416 n - 1 - f1 (2 % n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285414.P11207384950803894373

/-! ## A285414.P1020737924348917105

`char[A023443(A285416(n+1))]`
-/

namespace A285414.P1020737924348917105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285416 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285414.P1020737924348917105

/-! ## A285414.P2630631884527279254

`A262808(record[A103517(n)%A108786(n)])`
-/

namespace A285414.P2630631884527279254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103517 n) (A108786 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285414.P2630631884527279254

/-!
# A285415: Positions of 0 in A285414; complement of A285416.

The programs for A285415, there is no canonical definition to state claims against.
-/

/-! ## A285415.P13343951319011976737

`eq[0, A285414(n+1)]+1`
-/

namespace A285415.P13343951319011976737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285415.P13343951319011976737

/-! ## A285415.P9610284110181521976

`A065475(eq[0, A285414(n+1)])`
-/

namespace A285415.P9610284110181521976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285415.P9610284110181521976

/-! ## A285415.P8428201222172263295

`lt[n*char[A285416(n+1)], n]`
-/

namespace A285415.P8428201222172263295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285416 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285415.P8428201222172263295

/-! ## A285415.P7434171827660626353

`eq[char[A285416(n+1)], A000007(n)]`
-/

namespace A285415.P7434171827660626353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285416 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285415.P7434171827660626353

/-! ## A285415.P8102091641013040259

`eq[char[A285416(n+1)], A000038(n)]`
-/

namespace A285415.P8102091641013040259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285416 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285415.P8102091641013040259

/-! ## A285415.P16953294882519745585

`lt[char[A285416(n+1)], n/A134623(n+1)]`
-/

namespace A285415.P16953294882519745585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285416 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A134623 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A285415.P16953294882519745585

/-! ## A285415.P13303832131315551440

`eq[0, A285414(A233583(n+1))]`
-/

namespace A285415.P13303832131315551440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285414 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285415.P13303832131315551440

/-!
# A285416: Positions of 1 in A285414; complement of A285415.

The programs for A285416, there is no canonical definition to state claims against.
-/

/-! ## A285416.P13708703411475028187

`comp[A285415(n+1)-1]+1`
-/

namespace A285416.P13708703411475028187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285415 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285416.P13708703411475028187

/-! ## A285416.P16958683011703298461

`filter[n+1, A285414(#)]`
-/

namespace A285416.P16958683011703298461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285414 (f1 j) = 1) n)

end

end A285416.P16958683011703298461

/-! ## A285416.P5414048060481207210

`eq[1, A285414(n+1)]+1`
-/

namespace A285416.P5414048060481207210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285416.P5414048060481207210

/-! ## A285416.P4032124203587360898

`record[A000027(n+1)*A285414(n+1)]`
-/

namespace A285416.P4032124203587360898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285416.P4032124203587360898

/-! ## A285416.P5259112347748236949

`A174221(A285412(2*(n+1))-(n+1))`
-/

namespace A285416.P5259112347748236949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A285412 (2 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A285416.P5259112347748236949

/-! ## A285416.P4705480163959515898

`record[A008619(n)*A285414(A008619(n))]`
-/

namespace A285416.P4705480163959515898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A285414 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285416.P4705480163959515898

/-! ## A285416.P11128306308550710931

`A064553(record[A008578(n+1)*A285414(n+1)])`
-/

namespace A285416.P11128306308550710931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A285414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285416.P11128306308550710931

/-! ## A285416.P9152977261246972334

`record[A114327(A285414(n+1)+A000096(n))]`
-/

namespace A285416.P9152977261246972334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A285414 (n + 1) + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285416.P9152977261246972334

/-!
# A285418: 0-limiting word of the morphism 0->11, 1-> 011.

The programs for A285418, there is no canonical definition to state claims against.
-/

/-! ## A285418.P17604771286002715608

`char[A285420(n+1)-1]`
-/

namespace A285418.P17604771286002715608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285418.P17604771286002715608

/-! ## A285418.P1409584052522717867

`char[floor(A285141(n+1)/2)]`
-/

namespace A285418.P1409584052522717867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285141 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285418.P1409584052522717867

/-! ## A285418.P17705681065394895519

`char[∑[A285142(n+1)]+n]`
-/

namespace A285418.P17705681065394895519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285418.P17705681065394895519

/-! ## A285418.P7601933547058098396

`char[A284589(n+1)-(n+1)]`
-/

namespace A285418.P7601933547058098396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285418.P7601933547058098396

/-! ## A285418.P16210300783039631369

`char[char[A285144(n+1)-1+n]+n]`
-/

namespace A285418.P16210300783039631369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285418.P16210300783039631369

/-! ## A285418.P54053357597377746

`A285205(n+1)+char[A285207(n+1)]`
-/

namespace A285418.P54053357597377746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285207 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285205 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285418.P54053357597377746

/-! ## A285418.P16536619102550889952

`Δ[char[A285420(2*n+1)]]²`
-/

namespace A285418.P16536619102550889952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285420 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A285418.P16536619102550889952

/-! ## A285418.P12942149604959719901

`2-Δ[comp[A284488(2*n+1)]]`
-/

namespace A285418.P12942149604959719901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285418.P12942149604959719901

/-! ## A285418.P13400054341846215626

`1-A284588(record[n*A284588(n+2)]+1)`
-/

namespace A285418.P13400054341846215626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A284588 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A285418.P13400054341846215626

/-! ## A285418.P12962561811336030561

`A285139(Δ[n²])`
-/

namespace A285418.P12962561811336030561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285418.P12962561811336030561

/-! ## A285418.P13917000364409603086

`and(1, A285139(2*n+1))`
-/

namespace A285418.P13917000364409603086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285139 (2 * n + 1))

end

end A285418.P13917000364409603086

/-! ## A285418.P11563503488771197639

`3%(A285139(n+1+n)+1)`
-/

namespace A285418.P11563503488771197639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A285139 (n + 1 + n) + 1)

end

end A285418.P11563503488771197639

/-! ## A285418.P16283033675659844167

`and(1, record[Δ[A284492(n+1)]+n+1])`
-/

namespace A285418.P16283033675659844167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284492 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A285418.P16283033675659844167

/-! ## A285418.P9988159137145848083

`A057427(n)*A285139(2*n+1)`
-/

namespace A285418.P9988159137145848083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A285139 (2 * n + 1)

end

end A285418.P9988159137145848083

/-! ## A285418.P17418821622880586448

`A285139(2*n+1)+A285125(2*(n+1))`
-/

namespace A285418.P17418821622880586448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (2 * n + 1) + A285125 (2 * (n + 1))

end

end A285418.P17418821622880586448

/-! ## A285418.P15231733026902835642

`A285139(2*n+1)+A285128(2*(n+1))`
-/

namespace A285418.P15231733026902835642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (2 * n + 1) + A285128 (2 * (n + 1))

end

end A285418.P15231733026902835642

/-! ## A285418.P10682017859065793905

`A285139(2*n+1)+A285139(2*(n+1))`
-/

namespace A285418.P10682017859065793905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (2 * n + 1) + A285139 (2 * (n + 1))

end

end A285418.P10682017859065793905

/-! ## A285418.P6006615629977206387

`A285208(comp[A285209(n+1)]+3)`
-/

namespace A285418.P6006615629977206387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285209 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A285418.P6006615629977206387

/-!
# A285419: Positions of 0 in A285418; complement of A285420.

The programs for A285419, there is no canonical definition to state claims against.
-/

/-! ## A285419.P17538458073169259734

`A285144(n+1)+n`
-/

namespace A285419.P17538458073169259734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) + (n : ℤ)

end

end A285419.P17538458073169259734

/-! ## A285419.P3514088964651406691

`A284492(n+1)+2*n`
-/

namespace A285419.P3514088964651406691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284492 (n + 1) + (2 * n : ℤ)

end

end A285419.P3514088964651406691

/-! ## A285419.P9682236422421379764

`2*A284534(n+1)-(n+1)`
-/

namespace A285419.P9682236422421379764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284534 (n + 1) - (n + 1 : ℤ)

end

end A285419.P9682236422421379764

/-! ## A285419.P12008039383855535043

`2*A285423(n+1)+n-1`
-/

namespace A285419.P12008039383855535043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285423 (n + 1) + ((n : ℤ) - 1)

end

end A285419.P12008039383855535043

/-! ## A285419.P6968836636065820624

`A004273(A285423(n+1))+n`
-/

namespace A285419.P6968836636065820624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285423 (n + 1)).toNat + (n : ℤ)

end

end A285419.P6968836636065820624

/-! ## A285419.P16550435835625989338

`2*n+eq[1, A284490(n+1)]+1`
-/

namespace A285419.P16550435835625989338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A285419.P16550435835625989338

/-! ## A285419.P8706481121647373758

`A284488(Δ[n²])-n`
-/

namespace A285419.P8706481121647373758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A285419.P8706481121647373758

/-! ## A285419.P17326491444897537615

`abs(A284488(2*n+1)-n)`
-/

namespace A285419.P17326491444897537615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284488 (2 * n + 1) - (n : ℤ)|

end

end A285419.P17326491444897537615

/-! ## A285419.P14088300534835332228

`record[(n+1)*A285142(n+1)]+n`
-/

namespace A285419.P14088300534835332228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A285419.P14088300534835332228

/-! ## A285419.P2477459773672455457

`A285422(n+1)-2*A285418(A285422(n+1))`
-/

namespace A285419.P2477459773672455457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1) - 2 * A285418 (A285422 (n + 1)).toNat

end

end A285419.P2477459773672455457

/-! ## A285419.P17600406353891561857

`eq[A285139(2*n+1), 0]+1`
-/

namespace A285419.P17600406353891561857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A285419.P17600406353891561857

/-!
# A285420: Positions of 1 in A285418; complement of A285419.

The programs for A285420, there is no canonical definition to state claims against.
-/

/-! ## A285420.P13937528976199289764

`A284589(n+1)-n`
-/

namespace A285420.P13937528976199289764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (n + 1) - (n : ℤ)

end

end A285420.P13937528976199289764

/-! ## A285420.P16672889162972486657

`ceil(A285141(n+1)/2)`
-/

namespace A285420.P16672889162972486657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285141 (n + 1) : ℚ) / 2⌉

end

end A285420.P16672889162972486657

/-! ## A285420.P3142337185600648758

`∑[A285142(n+1)+1]`
-/

namespace A285420.P3142337185600648758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285420.P3142337185600648758

/-! ## A285420.P10056193220914927954

`comp[A285419(n+1)-1]+1`
-/

namespace A285420.P10056193220914927954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285420.P10056193220914927954

/-! ## A285420.P5005669350281645738

`ceil((A284489(n+1)+n)/2)`
-/

namespace A285420.P5005669350281645738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284489 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A285420.P5005669350281645738

/-! ## A285420.P17132014703619638697

`ceil((A285422(n+1)-n)/2)`
-/

namespace A285420.P17132014703619638697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285422 (n + 1) - (n : ℤ) : ℚ) / 2⌉

end

end A285420.P17132014703619638697

/-! ## A285420.P18106153131128770179

`ceil((comp[A284488(n+1)-1]+n+1)/2)`
-/

namespace A285420.P18106153131128770179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284488 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1) : ℚ) / 2⌉

end

end A285420.P18106153131128770179

/-! ## A285420.P13692370070897422881

`A284489(n+1)-∑[char[A285144(n+1)-1]]`
-/

namespace A285420.P13692370070897422881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285144 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A285420.P13692370070897422881

/-! ## A285420.P4282185253468390255

`filter[n+1, A285418(#)]`
-/

namespace A285420.P4282185253468390255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285418 (f1 j) = 1) n)

end

end A285420.P4282185253468390255

/-! ## A285420.P4093878515304072804

`eq[1, A285418(n+1)]+1`
-/

namespace A285420.P4093878515304072804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285420.P4093878515304072804

/-! ## A285420.P3761953954746957328

`lt[0, A285418(n+2)]+2`
-/

namespace A285420.P3761953954746957328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285418 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A285420.P3761953954746957328

/-! ## A285420.P1458066757114604305

`A285140(A284489(n+1))/2`
-/

namespace A285420.P1458066757114604305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285140 (A284489 (n + 1)).toNat : ℚ) / 2

end

end A285420.P1458066757114604305

/-! ## A285420.P1331663020509531751

`A284491(2*(n+1))/2-n`
-/

namespace A285420.P1331663020509531751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284491 (2 * (n + 1)) : ℚ) / 2 - (n : ℚ)

end

end A285420.P1331663020509531751

/-! ## A285420.P7512655174237493080

`A284534(n+1)+A284588(A284534(n+1))-n`
-/

namespace A285420.P7512655174237493080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284534 (n + 1) + (A284588 (A284534 (n + 1)).toNat - (n : ℤ))

end

end A285420.P7512655174237493080

/-! ## A285420.P11374661283529276001

`lt[0, A285139(2*n+1)]+1`
-/

namespace A285420.P11374661283529276001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285420.P11374661283529276001

/-! ## A285420.P5648876900524003495

`A000463(A285141(n+1))`
-/

namespace A285420.P5648876900524003495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A285141 (n + 1)).toNat

end

end A285420.P5648876900524003495

/-! ## A285420.P5156518517436690401

`A004526(A285422(n+1)+1-n)`
-/

namespace A285420.P5156518517436690401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285422 (n + 1) + (1 - (n : ℤ))).toNat

end

end A285420.P5156518517436690401

/-! ## A285420.P5602775988800542828

`A285423(n+1)+A285421(A285419(n+1))`
-/

namespace A285420.P5602775988800542828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (n + 1) + A285421 (A285419 (n + 1)).toNat

end

end A285420.P5602775988800542828

/-! ## A285420.P8594989928831910094

`A285423(n+1)+A285418(A285422(n+1))`
-/

namespace A285420.P8594989928831910094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (n + 1) + A285418 (A285422 (n + 1)).toNat

end

end A285420.P8594989928831910094

/-!
# A285421: 1-limiting word of the morphism 0->11, 1-> 011.

The programs for A285421, there is no canonical definition to state claims against.
-/

/-! ## A285421.P146971077781098206

`char[A285423(n+1)-1]`
-/

namespace A285421.P146971077781098206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285421.P146971077781098206

/-! ## A285421.P2856809159268534500

`char[∑[A285139(n+1)]+n]`
-/

namespace A285421.P2856809159268534500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285421.P2856809159268534500

/-! ## A285421.P2530764594937448401

`char[A284534(n+1)-(n+1)]`
-/

namespace A285421.P2530764594937448401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284534 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285421.P2530764594937448401

/-! ## A285421.P15220332154019461596

`A285208(A285208(n+1)+n)`
-/

namespace A285421.P15220332154019461596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285208 (A285208 (n + 1) + (n : ℤ)).toNat

end

end A285421.P15220332154019461596

/-! ## A285421.P1076184988134642522

`Δ[char[A285423(2*n+1)]]²`
-/

namespace A285421.P1076184988134642522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285423 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A285421.P1076184988134642522

/-! ## A285421.P11238712298089687354

`2-Δ[comp[A284491(2*n+1)]]`
-/

namespace A285421.P11238712298089687354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285421.P11238712298089687354

/-! ## A285421.P23543786596270035

`A284490(record[and(n, n+1-A284490(n+1))]+1)`
-/

namespace A285421.P23543786596270035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n + 1 : ℤ) - A284490 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A285421.P23543786596270035

/-! ## A285421.P6574456493000063429

`A284533(record[(n+1)*A284533(n+1)+2])`
-/

namespace A285421.P6574456493000063429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284533 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284533 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285421.P6574456493000063429

/-! ## A285421.P9194993743803558034

`A285142(Δ[n²])`
-/

namespace A285421.P9194993743803558034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285421.P9194993743803558034

/-! ## A285421.P12193906774358666020

`and(1, A285142(2*n+1))`
-/

namespace A285421.P12193906774358666020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285142 (2 * n + 1))

end

end A285421.P12193906774358666020

/-! ## A285421.P8406998676863342401

`ceil(abs(sin(A285142(n+1+n))))`
-/

namespace A285421.P8406998676863342401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (A285142 (n + 1 + n) : ℝ)|⌉

end

end A285421.P8406998676863342401

/-! ## A285421.P12898546415422355815

`A285142(2*n+1)+A265069(2*n)*A285142(2*(n+1))`
-/

namespace A285421.P12898546415422355815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1) + A265069 (2 * n) * A285142 (2 * (n + 1))

end

end A285421.P12898546415422355815

/-! ## A285421.P275741168863813964

`A285142(2*n+1)+A023442(2*n)*A285142(2*(n+1))`
-/

namespace A285421.P275741168863813964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1) + A023442 (2 * n) * A285142 (2 * (n + 1))

end

end A285421.P275741168863813964

/-! ## A285421.P17731079692370102794

`A285142(2*n+1)+A000045(2*n)*A285142(2*(n+1))`
-/

namespace A285421.P17731079692370102794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1) + A000045 (2 * n) * A285142 (2 * (n + 1))

end

end A285421.P17731079692370102794

/-! ## A285421.P7339151590988052563

`A285142(2*n+1)+A204398(2*n+1)*A285142(2*(n+1))`
-/

namespace A285421.P7339151590988052563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1) + A204398 (2 * n + 1) * A285142 (2 * (n + 1))

end

end A285421.P7339151590988052563

/-! ## A285421.P3813263679923255031

`A285142(2*n+1)+A236043(n+2)*A285142(2*(n+1))`
-/

namespace A285421.P3813263679923255031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1) + A236043 (n + 2) * A285142 (2 * (n + 1))

end

end A285421.P3813263679923255031

/-! ## A285421.P10635687606019334331

`A285142(2*n+1)+A203454(n+2)*A285142(2*(n+1))`
-/

namespace A285421.P10635687606019334331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1) + A203454 (n + 2) * A285142 (2 * (n + 1))

end

end A285421.P10635687606019334331

/-! ## A285421.P16020558094646796668

`A285142(2*n+1)+A221909(n+1)*A285142(2*(n+1))`
-/

namespace A285421.P16020558094646796668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1) + A221909 (n + 1) * A285142 (2 * (n + 1))

end

end A285421.P16020558094646796668

/-!
# A285422: Positions of 0 in A285421; complement of A285423.

The programs for A285422, there is no canonical definition to state claims against.
-/

/-! ## A285422.P7195371724939551376

`A285141(n+1)+n`
-/

namespace A285422.P7195371724939551376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (n + 1) + (n : ℤ)

end

end A285422.P7195371724939551376

/-! ## A285422.P8993106079008248144

`A284489(n+1)+2*n`
-/

namespace A285422.P8993106079008248144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284489 (n + 1) + (2 * n : ℤ)

end

end A285422.P8993106079008248144

/-! ## A285422.P12833746199216984888

`2*A284589(n+1)-(n+1)`
-/

namespace A285422.P12833746199216984888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284589 (n + 1) - (n + 1 : ℤ)

end

end A285422.P12833746199216984888

/-! ## A285422.P14033887303635510348

`2*A285420(n+1)+n-1`
-/

namespace A285422.P14033887303635510348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285420 (n + 1) + ((n : ℤ) - 1)

end

end A285422.P14033887303635510348

/-! ## A285422.P11847904469202222341

`A004273(A285420(n+1))+n`
-/

namespace A285422.P11847904469202222341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285420 (n + 1)).toNat + (n : ℤ)

end

end A285422.P11847904469202222341

/-! ## A285422.P13969918622951763826

`A284491(Δ[n²])-n`
-/

namespace A285422.P13969918622951763826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A285422.P13969918622951763826

/-! ## A285422.P15829299983006390515

`A284773(A284589(n+1))`
-/

namespace A285422.P15829299983006390515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A284589 (n + 1)).toNat

end

end A285422.P15829299983006390515

/-! ## A285422.P12028325310339968125

`A004525(∑[lcm(2, A285142(n+1)+2)])+2*n`
-/

namespace A285422.P12028325310339968125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A285142 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j) + (2 * n : ℤ)

end

end A285422.P12028325310339968125

/-! ## A285422.P5298630562794011418

`eq[0, A285421(n+1)]+1`
-/

namespace A285422.P5298630562794011418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285422.P5298630562794011418

/-! ## A285422.P16998359309878851701

`A285419(n+1)+2*A285421(A285419(n+1))`
-/

namespace A285422.P16998359309878851701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) + 2 * A285421 (A285419 (n + 1)).toNat

end

end A285422.P16998359309878851701

/-! ## A285422.P16133686105328963332

`A026368(n+1)-2*A285421(A026368(n+1))`
-/

namespace A285422.P16133686105328963332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1) - 2 * A285421 (A026368 (n + 1)).toNat

end

end A285422.P16133686105328963332

/-! ## A285422.P14530246452061469097

`eq[A285142(2*n+1), 0]+1`
-/

namespace A285422.P14530246452061469097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A285422.P14530246452061469097

/-! ## A285422.P15507001327770845312

`A193648(∑[n]+2)+A284489(n+1)-1`
-/

namespace A285422.P15507001327770845312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + (A284489 (n + 1) - 1)

end

end A285422.P15507001327770845312

/-!
# A285423: Positions of 1 in A285421; complement of A285422.

The programs for A285423, there is no canonical definition to state claims against.
-/

/-! ## A285423.P6356623028992042766

`A284534(n+1)-n`
-/

namespace A285423.P6356623028992042766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284534 (n + 1) - (n : ℤ)

end

end A285423.P6356623028992042766

/-! ## A285423.P12647318843818135143

`ceil(A285144(n+1)/2)`
-/

namespace A285423.P12647318843818135143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285144 (n + 1) : ℚ) / 2⌉

end

end A285423.P12647318843818135143

/-! ## A285423.P577419770676168242

`∑[A285139(n+1)+1]`
-/

namespace A285423.P577419770676168242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285423.P577419770676168242

/-! ## A285423.P4627118363193540044

`comp[A285422(n+1)-1]+1`
-/

namespace A285423.P4627118363193540044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285422 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285423.P4627118363193540044

/-! ## A285423.P15069671086493333955

`ceil((A284492(n+1)+n)/2)`
-/

namespace A285423.P15069671086493333955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284492 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A285423.P15069671086493333955

/-! ## A285423.P12759413541939093076

`(A285419(n+1)-(n-1))/2`
-/

namespace A285423.P12759413541939093076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285419 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A285423.P12759413541939093076

/-! ## A285423.P12058934586034242622

`∑[char[A285141(n+1)-1]+1]`
-/

namespace A285423.P12058934586034242622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285141 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285423.P12058934586034242622

/-! ## A285423.P15289549536366468925

`(A284492(n+1)+A000027(n+1))/2`
-/

namespace A285423.P15289549536366468925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284492 (n + 1) + A000027 (n + 1) : ℚ) / 2

end

end A285423.P15289549536366468925

/-! ## A285423.P7787095367126950129

`filter[n+1, A285421(#)]`
-/

namespace A285423.P7787095367126950129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285421 (f1 j) = 1) n)

end

end A285423.P7787095367126950129

/-! ## A285423.P8255731216000637520

`eq[1, A285421(n+1)]+1`
-/

namespace A285423.P8255731216000637520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285423.P8255731216000637520

/-! ## A285423.P15622478882978367881

`A285143(A284492(n+1))/2`
-/

namespace A285423.P15622478882978367881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285143 (A284492 (n + 1)).toNat : ℚ) / 2

end

end A285423.P15622478882978367881

/-! ## A285423.P17377970582141353883

`A110654(A284492(n+1))+A110654(n)`
-/

namespace A285423.P17377970582141353883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A284492 (n + 1)).toNat + A110654 n

end

end A285423.P17377970582141353883

/-! ## A285423.P5243899237693651043

`A284488(2*(n+1))/2-n`
-/

namespace A285423.P5243899237693651043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284488 (2 * (n + 1)) : ℚ) / 2 - (n : ℚ)

end

end A285423.P5243899237693651043

/-! ## A285423.P2652284006904409056

`A284589(n+1)-(A284533(A284589(n+1))+n)`
-/

namespace A285423.P2652284006904409056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284589 (n + 1) - (A284533 (A284589 (n + 1)).toNat + (n : ℤ))

end

end A285423.P2652284006904409056

/-! ## A285423.P15466058409187230479

`lt[0, A285142(2*n+1)]+1`
-/

namespace A285423.P15466058409187230479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285423.P15466058409187230479

/-! ## A285423.P17423599304131859677

`ceil((eq[2, A285142(n+1)+1]+1)/2)`
-/

namespace A285423.P17423599304131859677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285142 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 2⌉

end

end A285423.P17423599304131859677

/-! ## A285423.P7656934588027490618

`A000463(A285144(n+1))`
-/

namespace A285423.P7656934588027490618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A285144 (n + 1)).toNat

end

end A285423.P7656934588027490618

/-! ## A285423.P14017812986083539336

`A032742(A285144(n+1)+1)`
-/

namespace A285423.P14017812986083539336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A285144 (n + 1) + 1).toNat

end

end A285423.P14017812986083539336

/-! ## A285423.P18368679646759294499

`A110654(A284492(n+1)+n)`
-/

namespace A285423.P18368679646759294499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A284492 (n + 1) + (n : ℤ)).toNat

end

end A285423.P18368679646759294499

/-! ## A285423.P16333625657462840966

`A004524(A284492(n+1)+n)+1`
-/

namespace A285423.P16333625657462840966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A284492 (n + 1) + (n : ℤ)).toNat + 1

end

end A285423.P16333625657462840966

/-!
# A285424: Sum of the entries in the last blocks of all set partitions of [n].

The programs for A285424, there is no canonical definition to state claims against.
-/

/-! ## A285424.P3185533812483174774

`A286232(∑[n]+1)`
-/

namespace A285424.P3185533812483174774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286232 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285424.P3185533812483174774

/-! ## A285424.P4690131282663579734

`record[A286232(n+1)/A007318(n)]`
-/

namespace A285424.P4690131282663579734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286232 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285424.P4690131282663579734

/-! ## A285424.P13641177858511140099

`record[A286232(n+1)/A013609(n)]`
-/

namespace A285424.P13641177858511140099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286232 (n + 1) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285424.P13641177858511140099

/-! ## A285424.P2650018061721552092

`record[A286232(n+1)/A059481(n)]`
-/

namespace A285424.P2650018061721552092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286232 (n + 1) : ℚ) / (A059481 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285424.P2650018061721552092

/-! ## A285424.P831157070666655488

`record[A286232(n+1)/A093768(n)]`
-/

namespace A285424.P831157070666655488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286232 (n + 1) : ℚ) / (A093768 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285424.P831157070666655488

/-! ## A285424.P12789610458260866986

`record[A286232(n+1)/A002260(n+1)]`
-/

namespace A285424.P12789610458260866986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286232 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285424.P12789610458260866986

/-! ## A285424.P17111287890576230463

`record[A286232(n+1)/A076110(n+1)]`
-/

namespace A285424.P17111287890576230463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286232 (n + 1) : ℚ) / (A076110 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285424.P17111287890576230463

/-! ## A285424.P5097840024345910799

`record[A286232(A008619(A076110(n+1)))]`
-/

namespace A285424.P5097840024345910799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286232 (A008619 (A076110 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285424.P5097840024345910799

/-!
# A285425: Square array A(n,k), n>=1, k>=0, read by antidiagonals, where column k is the expansion of Sum_{j>=1} (2*j - 1)^k*x^(2*j-1)/(1 - x^(2*j-1)).

The programs for A285425, there is no canonical definition to state claims against.
-/

/-! ## A285425.P13621424165974166754

`gcd(A322082(n+1), A322081(n+1))`
-/

namespace A285425.P13621424165974166754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322082 (n + 1)) (A322081 (n + 1))

end

end A285425.P13621424165974166754

/-! ## A285425.P12234583164585102218

`gcd(A109974(A061579(n)), A322082(n+1))`
-/

namespace A285425.P12234583164585102218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109974 (A061579 n).toNat) (A322082 (n + 1))

end

end A285425.P12234583164585102218

/-! ## A285425.P3527841275959763918

`gcd(A322083(n+1)+A322082(n+1), A322083(n+1))`
-/

namespace A285425.P3527841275959763918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322083 (n + 1) + A322082 (n + 1)) (A322083 (n + 1))

end

end A285425.P3527841275959763918

/-! ## A285425.P12270771669818220282

`gcd(A279396(n+1), A322082(A000027(n+1)))`
-/

namespace A285425.P12270771669818220282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A279396 (n + 1)) (A322082 (A000027 (n + 1)).toNat)

end

end A285425.P12270771669818220282

/-! ## A285425.P2574078731411794534

`gcd(A322082(n+1)+A279394(n+1), A279394(n+1))`
-/

namespace A285425.P2574078731411794534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322082 (n + 1) + A279394 (n + 1)) (A279394 (n + 1))

end

end A285425.P2574078731411794534

/-! ## A285425.P15764305403590762370

`gcd(A321258(n+1)+A009998(n), (A322081(n+1)+A279394(n+1))/2)`
-/

namespace A285425.P15764305403590762370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321258 (n + 1) + A009998 n) (SequenceMachineLib.roundAway ((A322081 (n + 1) + A279394 (n + 1) : ℚ) / 2))

end

end A285425.P15764305403590762370

/-! ## A285425.P5857274146659139832

`A322082(n+1)/A006519(A009998(n))`
-/

namespace A285425.P5857274146659139832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322082 (n + 1) : ℚ) / (A006519 (A009998 n).toNat : ℚ)

end

end A285425.P5857274146659139832

/-!
# A285426: Numbers n such that at least two consecutive elements of the n-th row of A237591 are in increasing order.

The programs for A285426, there is no canonical definition to state claims against.
-/

/-! ## A285426.P17444742654499701104

`comp[A285356(n+1)-1]+1`
-/

namespace A285426.P17444742654499701104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285356 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285426.P17444742654499701104

/-! ## A285426.P5712383270506943069

`comp[A285356(n+1)%A285415(n+1)]`
-/

namespace A285426.P5712383270506943069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285356 (n + 1)) (A285415 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285426.P5712383270506943069

/-! ## A285426.P8722910229634920060

`comp[A285356(A055396(n+4)+1)%(n+1)]`
-/

namespace A285426.P8722910229634920060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285356 (A055396 (n + 4) + 1).toNat) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285426.P8722910229634920060

/-! ## A285426.P7543280842706374328

`eq[char[A285356(n+1)], A151933(n)]`
-/

namespace A285426.P7543280842706374328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285356 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285426.P7543280842706374328

/-! ## A285426.P14275791257141988303

`lt[A193974(3*n+2), A193979(n)]`
-/

namespace A285426.P14275791257141988303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285426.P14275791257141988303

/-!
# A285427: Fixed point of the morphism 0->11, 1-> 100.

The programs for A285427, there is no canonical definition to state claims against.
-/

/-! ## A285427.P10617785982900921705

`char[A285429(n+1)-1]`
-/

namespace A285427.P10617785982900921705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285429 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285427.P10617785982900921705

/-! ## A285427.P4518051731041887624

`char[comp[A285428(n+1)-1]]`
-/

namespace A285427.P4518051731041887624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285428 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285427.P4518051731041887624

/-! ## A285427.P3582131194358372876

`A284683(2*(n+1))`
-/

namespace A285427.P3582131194358372876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (2 * (n + 1))

end

end A285427.P3582131194358372876

/-! ## A285427.P7213885886061958542

`and(1, A284683(n+2+n))`
-/

namespace A285427.P7213885886061958542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284683 (n + 2 + n))

end

end A285427.P7213885886061958542

/-! ## A285427.P13781586538284891826

`A284683(A103517(n))+A000007(n)`
-/

namespace A285427.P13781586538284891826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (A103517 n).toNat + A000007 n

end

end A285427.P13781586538284891826

/-! ## A285427.P6757369776250493678

`A285177(A216455(n+1)+46)`
-/

namespace A285427.P6757369776250493678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A216455 (n + 1) + 46).toNat

end

end A285427.P6757369776250493678

/-!
# A285428: Positions of 0 in A285427; complement of A285429.

The programs for A285428, there is no canonical definition to state claims against.
-/

/-! ## A285428.P12441355107849226757

`A110654(n)+A081693(A008619(n))`
-/

namespace A285428.P12441355107849226757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A081693 (A008619 n).toNat

end

end A285428.P12441355107849226757

/-! ## A285428.P474241009956150300

`A110654(n)+A081693(A110654(n+1))`
-/

namespace A285428.P474241009956150300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A081693 (A110654 (n + 1)).toNat

end

end A285428.P474241009956150300

/-! ## A285428.P12073255559483455604

`A081693(A004526(n)+1)+A004526(n+1)`
-/

namespace A285428.P12073255559483455604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081693 (A004526 n + 1).toNat + A004526 (n + 1)

end

end A285428.P12073255559483455604

/-! ## A285428.P16623320942542622636

`A004526(n+1)+2*A285429(A004526(n)+1)`
-/

namespace A285428.P16623320942542622636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + 2 * A285429 (A004526 n + 1).toNat

end

end A285428.P16623320942542622636

/-! ## A285428.P16878391236315059537

`A110655(2*n)+A081693(A110655(2*(n+1)))`
-/

namespace A285428.P16878391236315059537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * n) + A081693 (A110655 (2 * (n + 1))).toNat

end

end A285428.P16878391236315059537

/-! ## A285428.P3154725875513622355

`lt[A285427(n+1), 1]+1`
-/

namespace A285428.P3154725875513622355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285427 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285428.P3154725875513622355

/-! ## A285428.P15351882610012488935

`eq[1, A285427(n+2)+1]+2`
-/

namespace A285428.P15351882610012488935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285427 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A285428.P15351882610012488935

/-! ## A285428.P5704432940824109640

`eq[0, A284683(2*(n+1))]+1`
-/

namespace A285428.P5704432940824109640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285428.P5704432940824109640

/-! ## A285428.P11492789519877711788

`lt[A284683(2*n+2), 1]+1`
-/

namespace A285428.P11492789519877711788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285428.P11492789519877711788

/-! ## A285428.P13073564320828053374

`lt[n*A284683(A004277(n)), n]`
-/

namespace A285428.P13073564320828053374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284683 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285428.P13073564320828053374

/-! ## A285428.P11479229458080518303

`A000463(eq[A035363(n), A284683(n+1)])`
-/

namespace A285428.P11479229458080518303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285428.P11479229458080518303

/-! ## A285428.P7476088073502684210

`A008619(eq[A059841(n), A284683(n+1)])`
-/

namespace A285428.P7476088073502684210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285428.P7476088073502684210

/-! ## A285428.P10920125369632322324

`A008619(eq[A115634(n), A284683(n+1)])`
-/

namespace A285428.P10920125369632322324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A285428.P10920125369632322324

/-!
# A285429: Positions of 1 in A285427; complement of A285428.

The programs for A285429, there is no canonical definition to state claims against.
-/

/-! ## A285429.P16832803405948266102

`comp[A285428(n+1)-1]+1`
-/

namespace A285429.P16832803405948266102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285428 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285429.P16832803405948266102

/-! ## A285429.P18030004323667915267

`A081693(n+1)/2`
-/

namespace A285429.P18030004323667915267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081693 (n + 1) : ℚ) / 2

end

end A285429.P18030004323667915267

/-! ## A285429.P10914163899217828613

`2*A081692(n+1)-(n+1)`
-/

namespace A285429.P10914163899217828613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081692 (n + 1) - (n + 1 : ℤ)

end

end A285429.P10914163899217828613

/-! ## A285429.P17857797768788430280

`filter[n+1, A285427(#)]`
-/

namespace A285429.P17857797768788430280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285427 (f1 j) = 1) n)

end

end A285429.P17857797768788430280

/-! ## A285429.P6766487590956405713

`lt[0, A285427(n+1)]+1`
-/

namespace A285429.P6766487590956405713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285429.P6766487590956405713

/-! ## A285429.P13977587639530379544

`(A285428(2*n+1)-n)/2`
-/

namespace A285429.P13977587639530379544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285428 (2 * n + 1) - (n : ℤ) : ℚ) / 2

end

end A285429.P13977587639530379544

/-! ## A285429.P708681630561595903

`eq[A115634(n), A284683(A008619(n))]-n`
-/

namespace A285429.P708681630561595903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A285429.P708681630561595903

/-! ## A285429.P6484705099031922646

`round(eq[1, A284683(n+1)]/2)`
-/

namespace A285429.P6484705099031922646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2)

end

end A285429.P6484705099031922646

/-! ## A285429.P17461132486797336890

`lt[0, A284683(2*(n+1))]+1`
-/

namespace A285429.P17461132486797336890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A285429.P17461132486797336890

/-! ## A285429.P3766221149190479662

`eq[1, A284683(2*n+2)]+1`
-/

namespace A285429.P3766221149190479662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285429.P3766221149190479662

/-! ## A285429.P15219142082531413551

`lt[0, A284683(A004277(n))]`
-/

namespace A285429.P15219142082531413551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285429.P15219142082531413551

/-! ## A285429.P479525762672979026

`A000463(eq[1, A284683(n+1)])`
-/

namespace A285429.P479525762672979026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285429.P479525762672979026

/-! ## A285429.P8480222126717386011

`A008619(eq[1, A284683(n+1)])`
-/

namespace A285429.P8480222126717386011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285429.P8480222126717386011

/-! ## A285429.P10688973079712922439

`record[A008619(n*A284683(n+1))]`
-/

namespace A285429.P10688973079712922439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A284683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285429.P10688973079712922439

/-! ## A285429.P6708725894657605686

`A052938(record[n*A284683(n+2)])`
-/

namespace A285429.P6708725894657605686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285429.P6708725894657605686

/-! ## A285429.P5815670750891638366

`A160413(A285428(2*n+1)-n)`
-/

namespace A285429.P5815670750891638366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A285428 (2 * n + 1) - (n : ℤ)).toNat

end

end A285429.P5815670750891638366

/-! ## A285429.P15451963395295223160

`A160413(record[A285428(n+2)-A160413(n+2)])`
-/

namespace A285429.P15451963395295223160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285428 (n + 2) - A160413 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A285429.P15451963395295223160

/-! ## A285429.P1735561588740121057

`record[A014681(A014681(n+1)*A284683(2*(n+1)))]`
-/

namespace A285429.P1735561588740121057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 (n + 1) * A284683 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285429.P1735561588740121057

/-!
# A285430: Fixed point of the morphism 0->11, 1-> 101.

The programs for A285430, the canonical program `A285430.P12724991769825989304` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285430 has offset 1).

The definition of A285430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285430.P5412493939870213262

`A080428(n+1)-2`
-/

namespace A285430.P5412493939870213262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080428 (n + 1) - 2

end

end A285430.P5412493939870213262

namespace A285430

/-- `A080428(n+1)-2` -/
def P5412493939870213262.Spec : Prop :=
  ∀ n, P5412493939870213262.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P12724991769825989304

`char[A026363(n+1)-1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285430

/-- `char[A026363(n+1)-1]` -/
def P12724991769825989304.Spec : Prop :=
  ∀ n, (P12724991769825989304.a n : ℤ) = A285430 (n + 1)

theorem P12724991769825989304.correct : P12724991769825989304.Spec := by
  intro n
  simp only [A285430, Nat.add_sub_cancel]

end A285430

/-! ## A285430.P9130996820059610425

`char[comp[A026364(n+1)-1]]`
-/

namespace A285430.P9130996820059610425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285430.P9130996820059610425

namespace A285430

/-- `char[comp[A026364(n+1)-1]]` -/
def P9130996820059610425.Spec : Prop :=
  ∀ n, (P9130996820059610425.a n : ℤ) = A285430 (n + 1)

end A285430

/-! ## A285430.P15160143971583147191

`comp[2*comp[A086398(n+1)]]%2`
-/

namespace A285430.P15160143971583147191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A285430.P15160143971583147191

namespace A285430

/-- `comp[2*comp[A086398(n+1)]]%2` -/
def P15160143971583147191.Spec : Prop :=
  ∀ n, (P15160143971583147191.a n : ℤ) = A285430 (n + 1)

end A285430

/-! ## A285430.P16600601416072112047

`A010715(n)%A080428(n+1)`
-/

namespace A285430.P16600601416072112047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010715 n) (A080428 (n + 1))

end

end A285430.P16600601416072112047

namespace A285430

/-- `A010715(n)%A080428(n+1)` -/
def P16600601416072112047.Spec : Prop :=
  ∀ n, P16600601416072112047.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P344968946896148342

`A016963(n)%A080428(n+1)`
-/

namespace A285430.P344968946896148342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016963 n) (A080428 (n + 1))

end

end A285430.P344968946896148342

namespace A285430

/-- `A016963(n)%A080428(n+1)` -/
def P344968946896148342.Spec : Prop :=
  ∀ n, P344968946896148342.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P15186942002512385490

`A017550(n)%A080428(n+1)`
-/

namespace A285430.P15186942002512385490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017550 n) (A080428 (n + 1))

end

end A285430.P15186942002512385490

namespace A285430

/-- `A017550(n)%A080428(n+1)` -/
def P15186942002512385490.Spec : Prop :=
  ∀ n, P15186942002512385490.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P15878951614188905807

`A017574(n)%A080428(n+1)`
-/

namespace A285430.P15878951614188905807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017574 n) (A080428 (n + 1))

end

end A285430.P15878951614188905807

namespace A285430

/-- `A017574(n)%A080428(n+1)` -/
def P15878951614188905807.Spec : Prop :=
  ∀ n, P15878951614188905807.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P350032805043836922

`A017622(n)%A080428(n+1)`
-/

namespace A285430.P350032805043836922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017622 n) (A080428 (n + 1))

end

end A285430.P350032805043836922

namespace A285430

/-- `A017622(n)%A080428(n+1)` -/
def P350032805043836922.Spec : Prop :=
  ∀ n, P350032805043836922.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P1291137126229634547

`A017646(n)%A080428(n+1)`
-/

namespace A285430.P1291137126229634547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017646 n) (A080428 (n + 1))

end

end A285430.P1291137126229634547

namespace A285430

/-- `A017646(n)%A080428(n+1)` -/
def P1291137126229634547.Spec : Prop :=
  ∀ n, P1291137126229634547.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P801101453458912979

`and(A008379(n), A080428(n+1))`
-/

namespace A285430.P801101453458912979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A080428 (n + 1))

end

end A285430.P801101453458912979

namespace A285430

/-- `and(A008379(n), A080428(n+1))` -/
def P801101453458912979.Spec : Prop :=
  ∀ n, P801101453458912979.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P13486617154147699373

`and(A016760(n), A080428(n+1))`
-/

namespace A285430.P13486617154147699373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A080428 (n + 1))

end

end A285430.P13486617154147699373

namespace A285430

/-- `and(A016760(n), A080428(n+1))` -/
def P13486617154147699373.Spec : Prop :=
  ∀ n, P13486617154147699373.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P7883171259270433657

`and(A016819(n), A080428(n+1))`
-/

namespace A285430.P7883171259270433657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016819 n) (A080428 (n + 1))

end

end A285430.P7883171259270433657

namespace A285430

/-- `and(A016819(n), A080428(n+1))` -/
def P7883171259270433657.Spec : Prop :=
  ∀ n, P7883171259270433657.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P11294378232905051854

`and(A016820(n), A080428(n+1))`
-/

namespace A285430.P11294378232905051854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A080428 (n + 1))

end

end A285430.P11294378232905051854

namespace A285430

/-- `and(A016820(n), A080428(n+1))` -/
def P11294378232905051854.Spec : Prop :=
  ∀ n, P11294378232905051854.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P17445082309951481352

`and(A017286(n), A080428(n+1))`
-/

namespace A285430.P17445082309951481352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A080428 (n + 1))

end

end A285430.P17445082309951481352

namespace A285430

/-- `and(A017286(n), A080428(n+1))` -/
def P17445082309951481352.Spec : Prop :=
  ∀ n, P17445082309951481352.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P11063720491220775542

`and(A017310(n), A080428(n+1))`
-/

namespace A285430.P11063720491220775542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A080428 (n + 1))

end

end A285430.P11063720491220775542

namespace A285430

/-- `and(A017310(n), A080428(n+1))` -/
def P11063720491220775542.Spec : Prop :=
  ∀ n, P11063720491220775542.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P2374890151121194696

`and(A017334(n), A080428(n+1))`
-/

namespace A285430.P2374890151121194696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017334 n) (A080428 (n + 1))

end

end A285430.P2374890151121194696

namespace A285430

/-- `and(A017334(n), A080428(n+1))` -/
def P2374890151121194696.Spec : Prop :=
  ∀ n, P2374890151121194696.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P18010480083741014716

`and(A017358(n), A080428(n+1))`
-/

namespace A285430.P18010480083741014716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017358 n) (A080428 (n + 1))

end

end A285430.P18010480083741014716

namespace A285430

/-- `and(A017358(n), A080428(n+1))` -/
def P18010480083741014716.Spec : Prop :=
  ∀ n, P18010480083741014716.a n = A285430 (n + 1)

end A285430

/-! ## A285430.P4647940226320276134

`and(A017382(n), A080428(n+1))`
-/

namespace A285430.P4647940226320276134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017382 n) (A080428 (n + 1))

end

end A285430.P4647940226320276134

namespace A285430

/-- `and(A017382(n), A080428(n+1))` -/
def P4647940226320276134.Spec : Prop :=
  ∀ n, P4647940226320276134.a n = A285430 (n + 1)

end A285430

/-!
# A285431: Fixed point of the morphism 0->11, 1-> 110.

The programs for A285431, the canonical program `A285431.P6460164538225184312` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285431 has offset 1).

The definition of A285431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285431.P16112900087608873005

`val(A044433(n+1), 9)`
-/

namespace A285431.P16112900087608873005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A044433 (n + 1)).toNat 9

end

end A285431.P16112900087608873005

namespace A285431

/-- `val(A044433(n+1), 9)` -/
def P16112900087608873005.Spec : Prop :=
  ∀ n, (P16112900087608873005.a n : ℤ) = A285431 (n + 1)

end A285431

/-! ## A285431.P6460164538225184312

`char[A026367(n+1)-1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285431

/-- `char[A026367(n+1)-1]` -/
def P6460164538225184312.Spec : Prop :=
  ∀ n, (P6460164538225184312.a n : ℤ) = A285431 (n + 1)

theorem P6460164538225184312.correct : P6460164538225184312.Spec := by
  intro n
  simp only [A285431, Nat.add_sub_cancel]

end A285431

/-! ## A285431.P402656212428761181

`Δ[A286389(n)]`
-/

namespace A285431.P402656212428761181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285431.P402656212428761181

namespace A285431

/-- `Δ[A286389(n)]` -/
def P402656212428761181.Spec : Prop :=
  ∀ n, P402656212428761181.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P4775900575439123109

`log2(Δ[A283965(n+1)])`
-/

namespace A285431.P4775900575439123109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283965 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A285431.P4775900575439123109

namespace A285431

/-- `log2(Δ[A283965(n+1)])` -/
def P4775900575439123109.Spec : Prop :=
  ∀ n, P4775900575439123109.a n = (A285431 (n + 1) : ℝ)

end A285431

/-! ## A285431.P10726848504280251727

`Δ[A284774(n+1)]-2`
-/

namespace A285431.P10726848504280251727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A285431.P10726848504280251727

namespace A285431

/-- `Δ[A284774(n+1)]-2` -/
def P10726848504280251727.Spec : Prop :=
  ∀ n, P10726848504280251727.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P387957065853507055

`A026367(A286389(n+1))-n`
-/

namespace A285431.P387957065853507055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (A286389 (n + 1)).toNat - (n : ℤ)

end

end A285431.P387957065853507055

namespace A285431

/-- `A026367(A286389(n+1))-n` -/
def P387957065853507055.Spec : Prop :=
  ∀ n, P387957065853507055.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P2016231969953240074

`A286389(n+1)-A286389(n)`
-/

namespace A285431.P2016231969953240074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (n + 1) - A286389 n

end

end A285431.P2016231969953240074

namespace A285431

/-- `A286389(n+1)-A286389(n)` -/
def P2016231969953240074.Spec : Prop :=
  ∀ n, P2016231969953240074.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P4329907277179875180

`A284772(n+1)+A284772(n+2)`
-/

namespace A285431.P4329907277179875180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284772 (n + 1) + A284772 (n + 2)

end

end A285431.P4329907277179875180

namespace A285431

/-- `A284772(n+1)+A284772(n+2)` -/
def P4329907277179875180.Spec : Prop :=
  ∀ n, P4329907277179875180.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P14186283112845604490

`A014578(A044052(n+1))`
-/

namespace A285431.P14186283112845604490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (A044052 (n + 1)).toNat

end

end A285431.P14186283112845604490

namespace A285431

/-- `A014578(A044052(n+1))` -/
def P14186283112845604490.Spec : Prop :=
  ∀ n, P14186283112845604490.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P2417855028882728500

`A283963(A283965(n+2)-2)`
-/

namespace A285431.P2417855028882728500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 (A283965 (n + 2) - 2).toNat

end

end A285431.P2417855028882728500

namespace A285431

/-- `A283963(A283965(n+2)-2)` -/
def P2417855028882728500.Spec : Prop :=
  ∀ n, P2417855028882728500.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P4647922625487733735

`A284851(2*(n+1))`
-/

namespace A285431.P4647922625487733735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (2 * (n + 1))

end

end A285431.P4647922625487733735

namespace A285431

/-- `A284851(2*(n+1))` -/
def P4647922625487733735.Spec : Prop :=
  ∀ n, P4647922625487733735.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P10535756043156786735

`Δ[A026367(2*n+1)]-2`
-/

namespace A285431.P10535756043156786735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A285431.P10535756043156786735

namespace A285431

/-- `Δ[A026367(2*n+1)]-2` -/
def P10535756043156786735.Spec : Prop :=
  ∀ n, P10535756043156786735.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P2182532102760199461

`A283963(Δ[A283964(2*n+1)])`
-/

namespace A285431.P2182532102760199461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283964 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 (f1 (n + 1) - f1 n).toNat

end

end A285431.P2182532102760199461

namespace A285431

/-- `A283963(Δ[A283964(2*n+1)])` -/
def P2182532102760199461.Spec : Prop :=
  ∀ n, P2182532102760199461.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P9269610799996080816

`A284487(Δ[A284507(2*n+1)])`
-/

namespace A285431.P9269610799996080816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (f1 (n + 1) - f1 n).toNat

end

end A285431.P9269610799996080816

namespace A285431

/-- `A284487(Δ[A284507(2*n+1)])` -/
def P9269610799996080816.Spec : Prop :=
  ∀ n, P9269610799996080816.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P11938448752673396825

`A062186(Δ[A026367(2*(n+1))])²`
-/

namespace A285431.P11938448752673396825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062186 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A285431.P11938448752673396825

namespace A285431

/-- `A062186(Δ[A026367(2*(n+1))])²` -/
def P11938448752673396825.Spec : Prop :=
  ∀ n, P11938448752673396825.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P3611955325153277995

`A283963(A283964(2*(n+1))+2)`
-/

namespace A285431.P3611955325153277995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 (A283964 (2 * (n + 1)) + 2).toNat

end

end A285431.P3611955325153277995

namespace A285431

/-- `A283963(A283964(2*(n+1))+2)` -/
def P3611955325153277995.Spec : Prop :=
  ∀ n, P3611955325153277995.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P18210906112873310722

`A011655(A044060(n+1))`
-/

namespace A285431.P18210906112873310722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A044060 (n + 1)).toNat

end

end A285431.P18210906112873310722

namespace A285431

/-- `A011655(A044060(n+1))` -/
def P18210906112873310722.Spec : Prop :=
  ∀ n, P18210906112873310722.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P2084377929345520635

`A014018(A044433(n+1))`
-/

namespace A285431.P2084377929345520635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014018 (A044433 (n + 1)).toNat

end

end A285431.P2084377929345520635

namespace A285431

/-- `A014018(A044433(n+1))` -/
def P2084377929345520635.Spec : Prop :=
  ∀ n, P2084377929345520635.a n = A285431 (n + 1)

end A285431

/-! ## A285431.P10706928198471818103

`A156595(A044060(n+1)-1)`
-/

namespace A285431.P10706928198471818103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A044060 (n + 1) - 1).toNat

end

end A285431.P10706928198471818103

namespace A285431

/-- `A156595(A044060(n+1)-1)` -/
def P10706928198471818103.Spec : Prop :=
  ∀ n, P10706928198471818103.a n = A285431 (n + 1)

end A285431

/-!
# A285432: Positions of 0 in A286939; complement of A285564.

The programs for A285432, there is no canonical definition to state claims against.
-/

/-! ## A285432.P4600155267727866004

`a(n-1)+A286939(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A285432.P4600155267727866004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A286939 (a (n - 1) + 1).toNat + 1)

end

end A285432.P4600155267727866004

/-! ## A285432.P12089545397112797512

`eq[0, A286939(n+1)]+1`
-/

namespace A285432.P12089545397112797512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285432.P12089545397112797512

/-! ## A285432.P875668540112658377

`lt[n*A286939(A028310(n)), n]`
-/

namespace A285432.P875668540112658377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A286939 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285432.P875668540112658377

/-! ## A285432.P7323293901439777354

`record[∑{d}[n+1, A000010(#)-A286939(n+1)]]`
-/

namespace A285432.P7323293901439777354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A000010 d - A286939 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285432.P7323293901439777354

/-! ## A285432.P3545621596642625235

`record[n+1-A000010(n+1)*A286939(n+1)]`
-/

namespace A285432.P3545621596642625235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (n + 1) * A286939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285432.P3545621596642625235

/-! ## A285432.P652900805104114459

`record[n+1-A285564(n+1)*A286939(n+1)]`
-/

namespace A285432.P652900805104114459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285564 (n + 1) * A286939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285432.P652900805104114459

/-! ## A285432.P12694396702276198995

`A230980(p?[A286939(n+1)+A000040(n+1)])`
-/

namespace A285432.P12694396702276198995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285432.P12694396702276198995

/-! ## A285432.P4913758292141679435

`record[(n+1)/A232896(n*A286939(n+1)+1)]`
-/

namespace A285432.P4913758292141679435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A232896 ((n : ℤ) * A286939 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285432.P4913758292141679435

/-! ## A285432.P7203153136000945940

`record[n+1-A285665(n)*A286939(n+1)]`
-/

namespace A285432.P7203153136000945940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285665 n * A286939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285432.P7203153136000945940

/-!
# A285434: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A285434, there is no canonical definition to state claims against.
-/

/-! ## A285434.P15234692934720514102

`A277916(floor(n/2))`
-/

namespace A285434.P15234692934720514102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277916 ⌊(n : ℚ) / 2⌋.toNat

end

end A285434.P15234692934720514102

/-! ## A285434.P2144174739435786266

`A285771(or(1, n)-1)`
-/

namespace A285434.P2144174739435786266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285771 (Nat.lor 1 n - 1)

end

end A285434.P2144174739435786266

/-! ## A285434.P12700259185003059123

`A285771(n-n%2)`
-/

namespace A285434.P12700259185003059123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285771 (n - n % 2)

end

end A285434.P12700259185003059123

/-! ## A285434.P14114760863175860368

`A285771(n-and(1, n))`
-/

namespace A285434.P14114760863175860368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285771 (n - Nat.land 1 n)

end

end A285434.P14114760863175860368

/-! ## A285434.P10960881998474440288

`A288805(n-and(1, n))`
-/

namespace A285434.P10960881998474440288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (n - Nat.land 1 n)

end

end A285434.P10960881998474440288

/-! ## A285434.P9925212728334738409

`A288805(2*floor(n/2))`
-/

namespace A285434.P9925212728334738409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A285434.P9925212728334738409

/-! ## A285434.P17496138815329405213

`A285771(A052928(n))`
-/

namespace A285434.P17496138815329405213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285771 (A052928 n).toNat

end

end A285434.P17496138815329405213

/-! ## A285434.P472308927250319135

`A285771(2*A004526(n))`
-/

namespace A285434.P472308927250319135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285771 (2 * A004526 n).toNat

end

end A285434.P472308927250319135

/-! ## A285434.P5178978395939372924

`A285771(n-A000035(n))`
-/

namespace A285434.P5178978395939372924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285771 ((n : ℤ) - A000035 n).toNat

end

end A285434.P5178978395939372924

/-!
# A285435: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A285435, there is no canonical definition to state claims against.
-/

/-! ## A285435.P18092950343366515575

`lcm(A285434(n), A286508(n))`
-/

namespace A285435.P18092950343366515575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285434 n) (A286508 n)

end

end A285435.P18092950343366515575

/-! ## A285435.P3448320406473360174

`lcm(11, A288806(n))/11`
-/

namespace A285435.P3448320406473360174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 11 (A288806 n) : ℚ) / 11

end

end A285435.P3448320406473360174

/-! ## A285435.P17012417919833342249

`A286508(n)*A305989(A285436(n))`
-/

namespace A285435.P17012417919833342249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A285436 n).toNat

end

end A285435.P17012417919833342249

/-! ## A285435.P11487795585013105426

`A286508(n)*A305989(A288807(and(n, -2)))`
-/

namespace A285435.P11487795585013105426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A288807 (Int.land (n : ℤ) (-2)).toNat).toNat

end

end A285435.P11487795585013105426

/-! ## A285435.P2204902674742365998

`A286508(n)*A305989(A277918(floor(n/2)))`
-/

namespace A285435.P2204902674742365998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A277918 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A285435.P2204902674742365998

/-!
# A285436: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A285436, the canonical program `A285436.P11623261315318011481` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285436 has offset 0).

The definition of A285436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285436.P15097418893866249831

`A288807(and(n, -2))`
-/

namespace A285436.P15097418893866249831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (Int.land (n : ℤ) (-2)).toNat

end

end A285436.P15097418893866249831

namespace A285436

/-- `A288807(and(n, -2))` -/
def P15097418893866249831.Spec : Prop :=
  ∀ n, P15097418893866249831.a n = A285436 n

end A285436

/-! ## A285436.P11623261315318011481

`A277918(floor(n/2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A285436

/-- `A277918(floor(n/2))` -/
def P11623261315318011481.Spec : Prop :=
  ∀ n, P11623261315318011481.a n = A285436 n

theorem P11623261315318011481.correct : P11623261315318011481.Spec := by
  intro n
  simp only [A285436]

end A285436

/-! ## A285436.P17061978928144573073

`A288807(n-and(1, n))`
-/

namespace A285436.P17061978928144573073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (n - Nat.land 1 n)

end

end A285436.P17061978928144573073

namespace A285436

/-- `A288807(n-and(1, n))` -/
def P17061978928144573073.Spec : Prop :=
  ∀ n, P17061978928144573073.a n = A285436 n

end A285436

/-! ## A285436.P8464500523497926400

`A288807(xor(n, and(1, n)))`
-/

namespace A285436.P8464500523497926400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (Nat.xor n (Nat.land 1 n))

end

end A285436.P8464500523497926400

namespace A285436

/-- `A288807(xor(n, and(1, n)))` -/
def P8464500523497926400.Spec : Prop :=
  ∀ n, P8464500523497926400.a n = A285436 n

end A285436

/-! ## A285436.P551034376864480519

`A285773(A052928(n))`
-/

namespace A285436.P551034376864480519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285773 (A052928 n).toNat

end

end A285436.P551034376864480519

namespace A285436

/-- `A285773(A052928(n))` -/
def P551034376864480519.Spec : Prop :=
  ∀ n, P551034376864480519.a n = A285436 n

end A285436

/-! ## A285436.P17325354867577951782

`A288807(A004524(2*n))`
-/

namespace A285436.P17325354867577951782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (A004524 (2 * n)).toNat

end

end A285436.P17325354867577951782

namespace A285436

/-- `A288807(A004524(2*n))` -/
def P17325354867577951782.Spec : Prop :=
  ∀ n, P17325354867577951782.a n = A285436 n

end A285436

/-! ## A285436.P17889356280300171929

`A288807(2*A004526(n))`
-/

namespace A285436.P17889356280300171929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (2 * A004526 n).toNat

end

end A285436.P17889356280300171929

namespace A285436

/-- `A288807(2*A004526(n))` -/
def P17889356280300171929.Spec : Prop :=
  ∀ n, P17889356280300171929.a n = A285436 n

end A285436

/-! ## A285436.P3797354751060197493

`A288807(n-A000035(n))`
-/

namespace A285436.P3797354751060197493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 ((n : ℤ) - A000035 n).toNat

end

end A285436.P3797354751060197493

namespace A285436

/-- `A288807(n-A000035(n))` -/
def P3797354751060197493.Spec : Prop :=
  ∀ n, P3797354751060197493.a n = A285436 n

end A285436

/-! ## A285436.P1956078960979126092

`A288807(2*(A008619(n)-1))`
-/

namespace A285436.P1956078960979126092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (2 * (A008619 n - 1)).toNat

end

end A285436.P1956078960979126092

namespace A285436

/-- `A288807(2*(A008619(n)-1))` -/
def P1956078960979126092.Spec : Prop :=
  ∀ n, P1956078960979126092.a n = A285436 n

end A285436

/-! ## A285436.P2915608556750444857

`A288807(n-A059841(n+1))`
-/

namespace A285436.P2915608556750444857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 ((n : ℤ) - A059841 (n + 1)).toNat

end

end A285436.P2915608556750444857

namespace A285436

/-- `A288807(n-A059841(n+1))` -/
def P2915608556750444857.Spec : Prop :=
  ∀ n, P2915608556750444857.a n = A285436 n

end A285436

/-! ## A285436.P1210925306056601370

`A288807(n-(1-A059841(n)))`
-/

namespace A285436.P1210925306056601370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 ((n : ℤ) - (1 - A059841 n)).toNat

end

end A285436.P1210925306056601370

namespace A285436

/-- `A288807(n-(1-A059841(n)))` -/
def P1210925306056601370.Spec : Prop :=
  ∀ n, P1210925306056601370.a n = A285436 n

end A285436

/-! ## A285436.P8063394754299188133

`A285773(xor(1, n))+A285773(n)`
-/

namespace A285436.P8063394754299188133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285773 (Nat.xor 1 n) + A285773 n

end

end A285436.P8063394754299188133

namespace A285436

/-- `A285773(xor(1, n))+A285773(n)` -/
def P8063394754299188133.Spec : Prop :=
  ∀ n, P8063394754299188133.a n = A285436 n

end A285436

/-! ## A285436.P11262705384604085965

`A288807(A004275(A008619(n)))`
-/

namespace A285436.P11262705384604085965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (A004275 (A008619 n).toNat).toNat

end

end A285436.P11262705384604085965

namespace A285436

/-- `A288807(A004275(A008619(n)))` -/
def P11262705384604085965.Spec : Prop :=
  ∀ n, P11262705384604085965.a n = A285436 n

end A285436

/-! ## A285436.P2250086767687437369

`A288807(A008619(n)+A008619(n)-2)`
-/

namespace A285436.P2250086767687437369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (A008619 n + (A008619 n - 2)).toNat

end

end A285436.P2250086767687437369

namespace A285436

/-- `A288807(A008619(n)+A008619(n)-2)` -/
def P2250086767687437369.Spec : Prop :=
  ∀ n, P2250086767687437369.a n = A285436 n

end A285436

/-! ## A285436.P2885554395434153452

`A288807(A008619(n)-(2-A008619(n)))`
-/

namespace A285436.P2885554395434153452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (A008619 n - (2 - A008619 n)).toNat

end

end A285436.P2885554395434153452

namespace A285436

/-- `A288807(A008619(n)-(2-A008619(n)))` -/
def P2885554395434153452.Spec : Prop :=
  ∀ n, P2885554395434153452.a n = A285436 n

end A285436

/-! ## A285436.P17969196397222006336

`and(A287744(n), A288807(n))`
-/

namespace A285436.P17969196397222006336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287744 n) (A288807 n)

end

end A285436.P17969196397222006336

namespace A285436

/-- `and(A287744(n), A288807(n))` -/
def P17969196397222006336.Spec : Prop :=
  ∀ n, P17969196397222006336.a n = A285436 n

end A285436

/-!
# A285437: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A285437, the canonical program `A285437.P16402339741766038757` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285437 has offset 0).

The definition of A285437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285437.P10312383338678279031

`lcm(A060546(n), A285436(n))`
-/

namespace A285437.P10312383338678279031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060546 n) (A285436 n)

end

end A285437.P10312383338678279031

namespace A285437

/-- `lcm(A060546(n), A285436(n))` -/
def P10312383338678279031.Spec : Prop :=
  ∀ n, (P10312383338678279031.a n : ℤ) = A285437 n

end A285437

/-! ## A285437.P2617889071336723648

`A288808(n)/gcd(3, A288807(n))`
-/

namespace A285437.P2617889071336723648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288808 n : ℚ) / (Int.gcd 3 (A288807 n) : ℚ)

end

end A285437.P2617889071336723648

namespace A285437

/-- `A288808(n)/gcd(3, A288807(n))` -/
def P2617889071336723648.Spec : Prop :=
  ∀ n, P2617889071336723648.a n = (A285437 n : ℚ)

end A285437

/-! ## A285437.P16402339741766038757

`A000034(n)*A288808(A052928(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285437

/-- `A000034(n)*A288808(A052928(n))` -/
def P16402339741766038757.Spec : Prop :=
  ∀ n, P16402339741766038757.a n = A285437 n

theorem P16402339741766038757.correct : P16402339741766038757.Spec := by
  intro n
  simp only [A285437]

end A285437

/-! ## A285437.P1107952963113671402

`A288808(n)/gcd(A256689(n+1), A288808(n))`
-/

namespace A285437.P1107952963113671402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288808 n : ℚ) / (Int.gcd (A256689 (n + 1)) (A288808 n) : ℚ)

end

end A285437.P1107952963113671402

namespace A285437

/-- `A288808(n)/gcd(A256689(n+1), A288808(n))` -/
def P1107952963113671402.Spec : Prop :=
  ∀ n, P1107952963113671402.a n = (A285437 n : ℚ)

end A285437

/-! ## A285437.P16712608328771884404

`and(A287745(n), A288808(n))`
-/

namespace A285437.P16712608328771884404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287745 n) (A288808 n)

end

end A285437.P16712608328771884404

namespace A285437

/-- `and(A287745(n), A288808(n))` -/
def P16712608328771884404.Spec : Prop :=
  ∀ n, P16712608328771884404.a n = A285437 n

end A285437

/-!
# A285438: Perfect powers that are also the sum of two powers of a prime p.

The programs for A285438, there is no canonical definition to state claims against.
-/

/-! ## A285438.P7624291187024008081

`A161792(A087051(n)+3)`
-/

namespace A285438.P7624291187024008081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161792 (A087051 n + 3).toNat

end

end A285438.P7624291187024008081

/-! ## A285438.P1475648824895912496

`filter[A367501(n+2), A075802(#)]`
-/

namespace A285438.P1475648824895912496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367501 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A285438.P1475648824895912496

/-! ## A285438.P10056388805316281686

`∩[A354620(n+1), A034023(n)]`
-/

namespace A285438.P10056388805316281686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285438.P10056388805316281686

/-! ## A285438.P7768710985032501141

`∩[A354620(n+1), A034024(n)]`
-/

namespace A285438.P7768710985032501141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285438.P7768710985032501141

/-! ## A285438.P11237697077432443640

`∩[A004753(n+1), A161792(n+1)]`
-/

namespace A285438.P11237697077432443640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285438.P11237697077432443640

/-!
# A285439: Sum T(n,k) of the entries in the k-th cycles of all permutations of [n]; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A285439, there is no canonical definition to state claims against.
-/

/-! ## A285439.P4264817638021860657

`A048571(A337039(n))+A092276(n+1)*A123578(n+1)`
-/

namespace A285439.P4264817638021860657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048571 (A337039 n).toNat + A092276 (n + 1) * A123578 (n + 1)

end

end A285439.P4264817638021860657

/-!
# A285440: Consider the sums of the numbers < n that share the same greatest common divisor with n. Sequence lists numbers that have only one of those sums equal to n.

The programs for A285440, the canonical program `A285440.P16316534470227500627` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285440 has offset 1).

The definition of A285440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285440.P16316534470227500627

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=4, a(2)=8, a(3)=9, a(4)=15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285440

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P16316534470227500627.Spec : Prop :=
  ∀ n, P16316534470227500627.a n = A285440 (n + 1)

theorem P16316534470227500627.correct : P16316534470227500627.Spec := by
  intro n
  simp only [A285440, Nat.add_sub_cancel]

end A285440

/-! ## A285440.P2242585974903754598

`a(n-4)+12` with `a(0)=3, a(1)=4, a(2)=8, a(3)=9`
-/

namespace A285440.P2242585974903754598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 8, 9] fun n a =>
  a (n - 4) + 12

end

end A285440.P2242585974903754598

namespace A285440

/-- `a(n-4)+12` -/
def P2242585974903754598.Spec : Prop :=
  ∀ n, (P2242585974903754598.a n : ℤ) = A285440 (n + 1)

end A285440

/-! ## A285440.P18402000449968261370

`or(1, n)+∑[gcd(4, n)]-2`
-/

namespace A285440.P18402000449968261370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A285440.P18402000449968261370

namespace A285440

/-- `or(1, n)+∑[gcd(4, n)]-2` -/
def P18402000449968261370.Spec : Prop :=
  ∀ n, P18402000449968261370.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P9787158800654116515

`eq[n²%3, val(n+2, 2)]`
-/

namespace A285440.P9787158800654116515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285440.P9787158800654116515

namespace A285440

/-- `eq[n²%3, val(n+2, 2)]` -/
def P9787158800654116515.Spec : Prop :=
  ∀ n, (P9787158800654116515.a n : ℤ) = A285440 (n + 1)

end A285440

/-! ## A285440.P9218406671735566142

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=1, a(2)=4, a(3)=1, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A285440.P9218406671735566142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 4, 1, 6] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285440.P9218406671735566142

namespace A285440

/-- `∑[floor(a(n-4))]` -/
def P9218406671735566142.Spec : Prop :=
  ∀ n, (P9218406671735566142.a n : ℤ) = A285440 (n + 1)

end A285440

/-! ## A285440.P15886045189530897444

`∑[a(n-4)%7]` with `a(0)=3, a(1)=1, a(2)=4, a(3)=1, a(4)=6`
-/

namespace A285440.P15886045189530897444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 4, 1, 6] fun n f1 =>
  f1 (n - 4) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285440.P15886045189530897444

namespace A285440

/-- `∑[a(n-4)%7]` -/
def P15886045189530897444.Spec : Prop :=
  ∀ n, (P15886045189530897444.a n : ℤ) = A285440 (n + 1)

end A285440

/-! ## A285440.P18140541623809685204

`∑[a(n-4)^a(n-1)]` with `a(0)=3, a(1)=1, a(2)=4, a(3)=1, a(4)=6`
-/

namespace A285440.P18140541623809685204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 4, 1, 6] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285440.P18140541623809685204

namespace A285440

/-- `∑[a(n-4)^a(n-1)]` -/
def P18140541623809685204.Spec : Prop :=
  ∀ n, (P18140541623809685204.a n : ℤ) = A285440 (n + 1)

end A285440

/-! ## A285440.P4535214406247967647

`∑[A040300(n)%7]`
-/

namespace A285440.P4535214406247967647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040300 n) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285440.P4535214406247967647

namespace A285440

/-- `∑[A040300(n)%7]` -/
def P4535214406247967647.Spec : Prop :=
  ∀ n, P4535214406247967647.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P8212576351541905871

`comp[A047401(n+1)]+xor(1, n)`
-/

namespace A285440.P8212576351541905871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.xor 1 n

end

end A285440.P8212576351541905871

namespace A285440

/-- `comp[A047401(n+1)]+xor(1, n)` -/
def P8212576351541905871.Spec : Prop :=
  ∀ n, (P8212576351541905871.a n : ℤ) = A285440 (n + 1)

end A285440

/-! ## A285440.P25524420004442775

`A091573(n-1)-a(n-1)` with `a(0)=3`
-/

namespace A285440.P25524420004442775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A091573 (n - 1) - a (n - 1)

end

end A285440.P25524420004442775

namespace A285440

/-- `A091573(n-1)-a(n-1)` -/
def P25524420004442775.Spec : Prop :=
  ∀ n, P25524420004442775.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P2958786875014557218

`∑[A000010(ceil(ϕ*a(n-2)))]` with `a(0)=3, a(1)=1`
-/

namespace A285440.P2958786875014557218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  A000010 ⌈Real.goldenRatio * (f1 (n - 2) : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285440.P2958786875014557218

namespace A285440

/-- `∑[A000010(ceil(ϕ*a(n-2)))]` -/
def P2958786875014557218.Spec : Prop :=
  ∀ n, P2958786875014557218.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P18315171720749347227

`A028242(and(3, n-2))+or(1, n)+2*n`
-/

namespace A285440.P18315171720749347227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.land 3 ((n : ℤ) - 2)).toNat + (Nat.lor 1 n + 2 * n : ℤ)

end

end A285440.P18315171720749347227

namespace A285440

/-- `A028242(and(3, n-2))+or(1, n)+2*n` -/
def P18315171720749347227.Spec : Prop :=
  ∀ n, P18315171720749347227.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P4744226123448442178

`A293990(n)+A166517(n)`
-/

namespace A285440.P4744226123448442178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293990 n + A166517 n

end

end A285440.P4744226123448442178

namespace A285440

/-- `A293990(n)+A166517(n)` -/
def P4744226123448442178.Spec : Prop :=
  ∀ n, P4744226123448442178.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P17470369163488296441

`A047398(A004526(n)+1)+n`
-/

namespace A285440.P17470369163488296441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047398 (A004526 n + 1).toNat + (n : ℤ)

end

end A285440.P17470369163488296441

namespace A285440

/-- `A047398(A004526(n)+1)+n` -/
def P17470369163488296441.Spec : Prop :=
  ∀ n, P17470369163488296441.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P3201535201353395555

`A047495(n+1)+A004442(n)`
-/

namespace A285440.P3201535201353395555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047495 (n + 1) + A004442 n

end

end A285440.P3201535201353395555

namespace A285440

/-- `A047495(n+1)+A004442(n)` -/
def P3201535201353395555.Spec : Prop :=
  ∀ n, P3201535201353395555.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P8163803348795899076

`A067060(n+1)+A014601(n)`
-/

namespace A285440.P8163803348795899076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (n + 1) + A014601 n

end

end A285440.P8163803348795899076

namespace A285440

/-- `A067060(n+1)+A014601(n)` -/
def P8163803348795899076.Spec : Prop :=
  ∀ n, P8163803348795899076.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P18118407200254325879

`A052928(n)+A047514(n+1)`
-/

namespace A285440.P18118407200254325879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n + A047514 (n + 1)

end

end A285440.P18118407200254325879

namespace A285440

/-- `A052928(n)+A047514(n+1)` -/
def P18118407200254325879.Spec : Prop :=
  ∀ n, P18118407200254325879.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P16366022857672006750

`A102560(n)+A047235(n+1)`
-/

namespace A285440.P16366022857672006750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n + A047235 (n + 1)

end

end A285440.P16366022857672006750

namespace A285440

/-- `A102560(n)+A047235(n+1)` -/
def P16366022857672006750.Spec : Prop :=
  ∀ n, P16366022857672006750.a n = A285440 (n + 1)

end A285440

/-! ## A285440.P6259194261114976445

`A109613(n)+A047447(n+1)`
-/

namespace A285440.P6259194261114976445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A047447 (n + 1)

end

end A285440.P6259194261114976445

namespace A285440

/-- `A109613(n)+A047447(n+1)` -/
def P6259194261114976445.Spec : Prop :=
  ∀ n, P6259194261114976445.a n = A285440 (n + 1)

end A285440

/-!
# A285442: Expansion of Product_{k>0} ((1-x^{5k-2}) * (1-x^{5k-3})/((1-x^{5k-1}) * (1-x^{5k-4})))^2 in powers of x.

The programs for A285442, there is no canonical definition to state claims against.
-/

/-! ## A285442.P9937957589463912609

`A291678(∑[n+3])`
-/

namespace A285442.P9937957589463912609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285442.P9937957589463912609

/-! ## A285442.P10379879855701022671

`A291678(A055998(n+1))%A008888(n)`
-/

namespace A285442.P10379879855701022671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291678 (A055998 (n + 1)).toNat) (A008888 n)

end

end A285442.P10379879855701022671

/-! ## A285442.P4597930877048694892

`A291678(A027379(n+1))%A157725(n)`
-/

namespace A285442.P4597930877048694892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291678 (A027379 (n + 1)).toNat) (A157725 n)

end

end A285442.P4597930877048694892

/-! ## A285442.P1616879052142030870

`or(A000007(n), A291678(A055998(n+1)))`
-/

namespace A285442.P1616879052142030870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291678 (A055998 (n + 1)).toNat)

end

end A285442.P1616879052142030870

/-! ## A285442.P9325053716403336184

`char[A004442(n)]*A291678(A055998(n+1))`
-/

namespace A285442.P9325053716403336184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A291678 (A055998 (n + 1)).toNat

end

end A285442.P9325053716403336184

/-! ## A285442.P13812131662505699135

`A291678(A055998(n+1))^cos(A000038(n))`
-/

namespace A285442.P13812131662505699135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A291678 (A055998 (n + 1)).toNat : ℝ) ^ (Real.cos (A000038 n : ℝ))

end

end A285442.P13812131662505699135

/-! ## A285442.P16043746281403006147

`A014963(A008458(n))*A291678(A055998(n+1))`
-/

namespace A285442.P16043746281403006147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A291678 (A055998 (n + 1)).toNat

end

end A285442.P16043746281403006147

/-! ## A285442.P1140531277603083479

`A065941(A159780(n))*A291678(A055998(n+1))`
-/

namespace A285442.P1140531277603083479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A159780 n).toNat * A291678 (A055998 (n + 1)).toNat

end

end A285442.P1140531277603083479

/-!
# A285443: Expansion of Product_{k>0} ((1-x^{5k-2}) * (1-x^{5k-3})/((1-x^{5k-1}) * (1-x^{5k-4})))^3 in powers of x.

The programs for A285443, there is no canonical definition to state claims against.
-/

/-! ## A285443.P116907401133194221

`A291678(∑[n+4]+2)`
-/

namespace A285443.P116907401133194221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A285443.P116907401133194221

/-! ## A285443.P1729025494991335085

`A291678(A046691(n+2))%A002011(n)`
-/

namespace A285443.P1729025494991335085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291678 (A046691 (n + 2)).toNat) (A002011 n)

end

end A285443.P1729025494991335085

/-! ## A285443.P14577510401294168227

`or(A000007(n), A291678(A046691(n+2)))`
-/

namespace A285443.P14577510401294168227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291678 (A046691 (n + 2)).toNat)

end

end A285443.P14577510401294168227

/-! ## A285443.P8084498350603871925

`A291678(A046691(n+2))+A000007(n+1)`
-/

namespace A285443.P8084498350603871925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A285443.P8084498350603871925

/-! ## A285443.P2667956962730784832

`A291678(A046691(n+2))+char[A119711(n+1)]`
-/

namespace A285443.P2667956962730784832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119711 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285443.P2667956962730784832

/-! ## A285443.P3001443386570361426

`A000203(gcd(n, n+1))*A291678(A046691(n+2))`
-/

namespace A285443.P3001443386570361426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A291678 (A046691 (n + 2)).toNat

end

end A285443.P3001443386570361426

/-! ## A285443.P3256851070022187933

`A000034(A017089(n))*A291678(A046691(n+2))`
-/

namespace A285443.P3256851070022187933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A017089 n).toNat * A291678 (A046691 (n + 2)).toNat

end

end A285443.P3256851070022187933

/-! ## A285443.P18063608905330384831

`A291678(A046691(n+2))^A001221(A000961(n+1))`
-/

namespace A285443.P18063608905330384831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291678 (A046691 (n + 2)).toNat : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A285443.P18063608905330384831

/-! ## A285443.P5299676256435095905

`A291678(A046691(n+2))+A010051(A013935(n+1))`
-/

namespace A285443.P5299676256435095905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (A046691 (n + 2)).toNat + A010051 (A013935 (n + 1)).toNat

end

end A285443.P5299676256435095905

/-!
# A285444: Expansion of Product_{k>0} ((1-x^{5k-2}) * (1-x^{5k-3})/((1-x^{5k-1}) * (1-x^{5k-4})))^4 in powers of x.

The programs for A285444, there is no canonical definition to state claims against.
-/

/-! ## A285444.P558835052968014451

`A291678(∑[n+5]+5)`
-/

namespace A285444.P558835052968014451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291678 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A285444.P558835052968014451

/-!
# A285445: Expansion of Product_{k>=1} (1 + x^k) / (1 - x^(3*k)).

The programs for A285445, there is no canonical definition to state claims against.
-/

/-! ## A285445.P1763716677259521191

`A327745(n)-A133010(A023029(n+9))`
-/

namespace A285445.P1763716677259521191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327745 n - A133010 (A023029 (n + 9)).toNat

end

end A285445.P1763716677259521191

/-! ## A285445.P16615653176062739354

`A327745(n)-A107846(p?[A123291(n+1)])`
-/

namespace A285445.P16615653176062739354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327745 n - A107846 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A285445.P16615653176062739354

/-!
# A285446: Expansion of Product_{k>=1} ((1 + x^k) / (1 - x^(3*k)))^k.

The programs for A285446, there is no canonical definition to state claims against.
-/

/-! ## A285446.P9147239619283653865

`A367224(A389121(n))`
-/

namespace A285446.P9147239619283653865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (A389121 n).toNat

end

end A285446.P9147239619283653865

/-! ## A285446.P7196433596613736739

`A008619(n)*A108852(A185336(n+4))`
-/

namespace A285446.P7196433596613736739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A108852 (A185336 (n + 4)).toNat

end

end A285446.P7196433596613736739

/-!
# A285447: Expansion of Product_{k>=1} ((1 + x^(3*k)) / (1 - x^k))^k.

The programs for A285447, there is no canonical definition to state claims against.
-/

/-! ## A285447.P10965473295525310395

`A367128(A155084(n))`
-/

namespace A285447.P10965473295525310395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367128 (A155084 n).toNat

end

end A285447.P10965473295525310395

/-! ## A285447.P3578449018592684095

`A089646(∑[or(1, A078346(n+1))])`
-/

namespace A285447.P3578449018592684095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A078346 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089646 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285447.P3578449018592684095

/-! ## A285447.P13605879340360867983

`A002487(A125282(n)+A033537(n))`
-/

namespace A285447.P13605879340360867983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A125282 n + A033537 n).toNat

end

end A285447.P13605879340360867983

/-! ## A285447.P12010566426433826627

`A335460(A042479(n))+A018084(n)`
-/

namespace A285447.P12010566426433826627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A042479 n).toNat + A018084 n

end

end A285447.P12010566426433826627

/-!
# A285448: Least number x such that x^n has n digits equal to k. Case k = 1.

The programs for A285448, there is no canonical definition to state claims against.
-/

/-! ## A285448.P10857323345582148131

`A333861(A218724(n)+A000045(n+2))`
-/

namespace A285448.P10857323345582148131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333861 (A218724 n + A000045 (n + 2)).toNat

end

end A285448.P10857323345582148131

/-!
# A285458: Expansion of Product_{k>=1} ((1 + x^k) / (1 - x^(4*k)))^k.

The programs for A285458, there is no canonical definition to state claims against.
-/

/-! ## A285458.P15207337356558339456

`A005041(ceil(sqrt(A190331(n))))`
-/

namespace A285458.P15207337356558339456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 ⌈Real.sqrt (A190331 n : ℝ)⌉.toNat

end

end A285458.P15207337356558339456

/-! ## A285458.P304005606966017412

`A055086(or(A108290(n), A140429(n)))`
-/

namespace A285458.P304005606966017412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A108290 n) (A140429 n)).toNat

end

end A285458.P304005606966017412

/-! ## A285458.P16070124125746518093

`A055086(or(A116600(n), A133494(n)))`
-/

namespace A285458.P16070124125746518093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A116600 n) (A133494 n)).toNat

end

end A285458.P16070124125746518093

/-! ## A285458.P6972800747510334000

`A055086(or(A116600(n), A140429(n)))`
-/

namespace A285458.P6972800747510334000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A116600 n) (A140429 n)).toNat

end

end A285458.P6972800747510334000

/-! ## A285458.P6383255767332808439

`A172471(A291000(n))-A000720(n+1)`
-/

namespace A285458.P6383255767332808439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A291000 n).toNat - A000720 (n + 1)

end

end A285458.P6383255767332808439

/-!
# A285459: Expansion of Product_{k>=1} ((1 + x^k) / (1 - x^(5*k)))^k.

The programs for A285459, there is no canonical definition to state claims against.
-/

/-! ## A285459.P14992701617497226365

`A127428(A392561(n))`
-/

namespace A285459.P14992701617497226365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127428 (A392561 n).toNat

end

end A285459.P14992701617497226365

/-! ## A285459.P3564249842881487036

`A374688(n)+A374519(A188920(n))`
-/

namespace A285459.P3564249842881487036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374688 n + A374519 (A188920 n).toNat

end

end A285459.P3564249842881487036

/-! ## A285459.P13705729161418411016

`xor(A000196(A052541(n)), A043545(n))`
-/

namespace A285459.P13705729161418411016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000196 (A052541 n).toNat) (A043545 n)

end

end A285459.P13705729161418411016

/-! ## A285459.P13707448791172434029

`A344654(2*n)+A334184(A001250(n))`
-/

namespace A285459.P13707448791172434029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344654 (2 * n) + A334184 (A001250 n).toNat

end

end A285459.P13707448791172434029

/-! ## A285459.P18251065177419894115

`A115063(A026007(n)^A046213(n+1))`
-/

namespace A285459.P18251065177419894115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (SequenceMachineLib.roundAway ((A026007 n : ℚ) ^ (A046213 (n + 1) : ℤ))).toNat

end

end A285459.P18251065177419894115

/-!
# A285460: Expansion of Product_{k>=1} ((1 + x^(4*k)) / (1 - x^k))^k.

The programs for A285460, there is no canonical definition to state claims against.
-/

/-! ## A285460.P18259756808108489610

`A291219(n)+A154263(A000142(n))`
-/

namespace A285460.P18259756808108489610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291219 n + A154263 (A000142 n).toNat

end

end A285460.P18259756808108489610

/-!
# A285461: Expansion of Product_{k>=1} ((1 + x^(5*k)) / (1 - x^k))^k.

The programs for A285461, there is no canonical definition to state claims against.
-/

/-! ## A285461.P10102268814450098466

`A356941(n)+A023974(A343666(n))`
-/

namespace A285461.P10102268814450098466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356941 n + A023974 (A343666 n).toNat

end

end A285461.P10102268814450098466

/-! ## A285461.P6743810567770195686

`or(A007814(A356937(n)), A356941(n))`
-/

namespace A285461.P6743810567770195686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A356937 n).toNat) (A356941 n)

end

end A285461.P6743810567770195686

/-! ## A285461.P14112488913904555769

`or(A266243(A185544(n)), A356941(n))`
-/

namespace A285461.P14112488913904555769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266243 (A185544 n).toNat) (A356941 n)

end

end A285461.P14112488913904555769

/-! ## A285461.P18444081591890757522

`or(A097325(A356963(n)), A356941(n))`
-/

namespace A285461.P18444081591890757522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097325 (A356963 n).toNat) (A356941 n)

end

end A285461.P18444081591890757522

/-! ## A285461.P11187370996658481503

`A097412(A131315(n+1))+A000219(n)`
-/

namespace A285461.P11187370996658481503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097412 (A131315 (n + 1)).toNat + A000219 n

end

end A285461.P11187370996658481503

/-!
# A285462: Expansion of Product_{k>=1} ((1 + x^(2*k)) / (1 - x^k))^k.

The programs for A285462, there is no canonical definition to state claims against.
-/

/-! ## A285462.P10178510204171506373

`∑{d}[A167904(n*floor(n/2)²+1), #]`
-/

namespace A285462.P10178510204171506373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 ((n : ℤ) * ⌊(n : ℚ) / 2⌋ ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A285462.P10178510204171506373

/-! ## A285462.P2482042260158834450

`A350943(A028495(n))+A191790(n)`
-/

namespace A285462.P2482042260158834450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350943 (A028495 n).toNat + A191790 n

end

end A285462.P2482042260158834450

/-! ## A285462.P6960947303804062507

`A071649(A102928(n+1))+A000225(n)`
-/

namespace A285462.P6960947303804062507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071649 (A102928 (n + 1)).toNat + A000225 n

end

end A285462.P6960947303804062507

/-!
# A285464: 0-limiting word of the morphism 0->11, 1-> 0001.

The programs for A285464, there is no canonical definition to state claims against.
-/

/-! ## A285464.P5630505318904067470

`char[A285466(n+1)-1]`
-/

namespace A285464.P5630505318904067470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285466 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285464.P5630505318904067470

/-! ## A285464.P3017555595298994016

`A285617(A134496(n+2))`
-/

namespace A285464.P3017555595298994016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285617 (A134496 (n + 2)).toNat

end

end A285464.P3017555595298994016

/-! ## A285464.P8247863958792342963

`A000035(A173497(and(n, floor(n/2)))²)`
-/

namespace A285464.P8247863958792342963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A173497 (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat ^ 2).toNat

end

end A285464.P8247863958792342963

/-! ## A285464.P12842133195078490755

`A129251(n+1)^A213338(n+1)`
-/

namespace A285464.P12842133195078490755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129251 (n + 1) : ℚ) ^ (A213338 (n + 1) : ℤ)

end

end A285464.P12842133195078490755

/-! ## A285464.P16968531657031270412

`A255852(4^val(n+1, 4))^A213338(n+1)`
-/

namespace A285464.P16968531657031270412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255852 (4 ^ SequenceMachineLib.valuation (n + 1) 4) : ℚ) ^ (A213338 (n + 1) : ℤ)

end

end A285464.P16968531657031270412

/-!
# A285465: Positions of 0 in A285464; complement of A285466.

The programs for A285465, there is no canonical definition to state claims against.
-/

/-! ## A285465.P11742761516601651882

`record[n+1-A285464(n+1)*A285466(n+1)]`
-/

namespace A285465.P11742761516601651882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285464 (n + 1) * A285466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285465.P11742761516601651882

/-! ## A285465.P8830062419206931096

`record[n+1-A285464(n+1)*A285468(n+1)]`
-/

namespace A285465.P8830062419206931096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285464 (n + 1) * A285468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285465.P8830062419206931096

/-! ## A285465.P5947966177350069827

`record[n+1-A285464(n+1)*A285469(n+1)]`
-/

namespace A285465.P5947966177350069827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285464 (n + 1) * A285469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285465.P5947966177350069827

/-! ## A285465.P1189593451368128768

`record[A246425(A285464(n+1)+A005408(n))]`
-/

namespace A285465.P1189593451368128768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A285464 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285465.P1189593451368128768

/-! ## A285465.P7126928715564001179

`record[A001057(A285464(n+1)+A005408(n))]`
-/

namespace A285465.P7126928715564001179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A285464 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285465.P7126928715564001179

/-! ## A285465.P8385693485388807335

`eq[A151933(A028310(n)), A285464(n+1)]+1`
-/

namespace A285465.P8385693485388807335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285465.P8385693485388807335

/-! ## A285465.P14179661236269862939

`eq[A151933(n), A285464(A028310(n))]`
-/

namespace A285465.P14179661236269862939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285464 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285465.P14179661236269862939

/-! ## A285465.P4744021918323480553

`eq[A151933(n), A285464(A151933(n)+n)]`
-/

namespace A285465.P4744021918323480553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285464 (A151933 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285465.P4744021918323480553

/-!
# A285466: Positions of 1 in A285464; complement of A285465.

The programs for A285466, there is no canonical definition to state claims against.
-/

/-! ## A285466.P12893243801438620284

`filter[n+1, A285464(#)]`
-/

namespace A285466.P12893243801438620284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285464 (f1 j) = 1) n)

end

end A285466.P12893243801438620284

/-! ## A285466.P5892303528767872577

`A285468(3*n+2)/2-n`
-/

namespace A285466.P5892303528767872577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285468 (3 * n + 2) : ℚ) / 2 - (n : ℚ)

end

end A285466.P5892303528767872577

/-! ## A285466.P7278881500452856434

`A004526(A285468(3*n+2)-2*n)`
-/

namespace A285466.P7278881500452856434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285468 (3 * n + 2) - (2 * n : ℤ)).toNat

end

end A285466.P7278881500452856434

/-! ## A285466.P7875197240133080525

`A246277(A285468(3*n+2)-2*n)`
-/

namespace A285466.P7875197240133080525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A285468 (3 * n + 2) - (2 * n : ℤ)).toNat

end

end A285466.P7875197240133080525

/-! ## A285466.P18173567167658799185

`A008619(A285468(3*n+2)-2*(n+1))`
-/

namespace A285466.P18173567167658799185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285468 (3 * n + 2) - (2 * (n + 1) : ℤ)).toNat

end

end A285466.P18173567167658799185

/-! ## A285466.P870012653824800636

`A110654(A285468(3*n+2))-n`
-/

namespace A285466.P870012653824800636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A285468 (3 * n + 2)).toNat - (n : ℤ)

end

end A285466.P870012653824800636

/-! ## A285466.P13207178127135905636

`A008619(A285468(3*n+2))-A000027(n+1)`
-/

namespace A285466.P13207178127135905636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A285468 (3 * n + 2)).toNat - A000027 (n + 1)

end

end A285466.P13207178127135905636

/-!
# A285467: 1-limiting word of the morphism 0->11, 1-> 0001.

The programs for A285467, there is no canonical definition to state claims against.
-/

/-! ## A285467.P12049387135362016511

`char[A285469(n+1)-1]`
-/

namespace A285467.P12049387135362016511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285469 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285467.P12049387135362016511

/-! ## A285467.P11365505377090232624

`char[comp[A285468(n+1)]-1]`
-/

namespace A285467.P11365505377090232624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285468 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285467.P11365505377090232624

/-! ## A285467.P13938024201064039915

`char[A023443(A285469(n+1))]`
-/

namespace A285467.P13938024201064039915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285469 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285467.P13938024201064039915

/-! ## A285467.P16560969152411442354

`char[A023443(comp[A285468(n+1)])]`
-/

namespace A285467.P16560969152411442354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285468 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285467.P16560969152411442354

/-! ## A285467.P15968968793827935403

`A014019(A014616(n+1)^A102677(n))`
-/

namespace A285467.P15968968793827935403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (SequenceMachineLib.roundAway ((A014616 (n + 1) : ℚ) ^ (A102677 n : ℤ))).toNat

end

end A285467.P15968968793827935403

/-! ## A285467.P8585413816534547354

`A151909(∑[A222251(n)-n])`
-/

namespace A285467.P8585413816534547354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285467.P8585413816534547354

/-! ## A285467.P11569357604868823100

`(∏{digits}[n, A029113(#)]%A095904(n))%2`
-/

namespace A285467.P11569357604868823100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod (A095904 n)) 2

end

end A285467.P11569357604868823100

/-! ## A285467.P9921602786058382876

`A151811(∑[A222251(n)-A222249(n)])`
-/

namespace A285467.P9921602786058382876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n - A222249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151811 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285467.P9921602786058382876

/-! ## A285467.P1827210066770857067

`A276837(∏{digits}[n, A029113(#)])^A095904(n)`
-/

namespace A285467.P1827210066770857067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276837 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod.toNat : ℚ) ^ (A095904 n : ℤ)

end

end A285467.P1827210066770857067

/-! ## A285467.P4568112719903056197

`and(A014963(A066286(n+4)), A106795(n))`
-/

namespace A285467.P4568112719903056197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (A066286 (n + 4)).toNat) (A106795 n)

end

end A285467.P4568112719903056197

/-!
# A285468: Positions of 0 in A285467; complement of A285469.

The programs for A285468, there is no canonical definition to state claims against.
-/

/-! ## A285468.P6793932545467698597

`eq[0, A285467(n+1)]+1`
-/

namespace A285468.P6793932545467698597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285468.P6793932545467698597

/-! ## A285468.P16120006581383019787

`eq[0, A285467(A028310(n))]`
-/

namespace A285468.P16120006581383019787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285467 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285468.P16120006581383019787

/-! ## A285468.P3458108832308969809

`A326178(eq[0, A285467(n+1)])`
-/

namespace A285468.P3458108832308969809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285468.P3458108832308969809

/-! ## A285468.P13419832079803600271

`lt[A000027(A002977(2*(n+1)))*A285467(n+1), 2]+1`
-/

namespace A285468.P13419832079803600271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002977 (2 * (n + 1))).toNat * A285467 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285468.P13419832079803600271

/-! ## A285468.P1489452977319002872

`lt[A002960(n+1)*A285467(n+1), 2]+1`
-/

namespace A285468.P1489452977319002872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002960 (n + 1) * A285467 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285468.P1489452977319002872

/-!
# A285469: Positions of 1 in A285467; complement of A285468.

The programs for A285469, there is no canonical definition to state claims against.
-/

/-! ## A285469.P11554827997869702882

`comp[A285468(n+1)-1]+1`
-/

namespace A285469.P11554827997869702882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285468 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285469.P11554827997869702882

/-! ## A285469.P1341060270972983400

`a(n-1)+(2-A285467(a(n-1)+1))²` with `a(0)=1`
-/

namespace A285469.P1341060270972983400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 - A285467 (a (n - 1) + 1).toNat) ^ 2

end

end A285469.P1341060270972983400

/-! ## A285469.P2723925396131941061

`filter[n+1, A285467(#)]`
-/

namespace A285469.P2723925396131941061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285467 (f1 j) = 1) n)

end

end A285469.P2723925396131941061

/-! ## A285469.P11086065802835239184

`eq[1, A285467(n+1)]+1`
-/

namespace A285469.P11086065802835239184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285469.P11086065802835239184

/-! ## A285469.P3002305618462880532

`record[A000027(n+1)*A285467(n+1)]`
-/

namespace A285469.P3002305618462880532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A285467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285469.P3002305618462880532

/-! ## A285469.P17150897612447152792

`record[((n+1)*A285467(n+1))%A285466(n+1)]`
-/

namespace A285469.P17150897612447152792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A285467 (n + 1)) (A285466 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285469.P17150897612447152792

/-! ## A285469.P1162388654838654458

`eq[n, A028310(n)*A285467(A028310(n))]`
-/

namespace A285469.P1162388654838654458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A285467 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285469.P1162388654838654458

/-! ## A285469.P7775399627435112260

`record[A285467(A305800(n+1))*A305800(n+1)]`
-/

namespace A285469.P7775399627435112260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285467 (A305800 (n + 1)).toNat * A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285469.P7775399627435112260

/-! ## A285469.P2597699461705338989

`record[A082287(n+1)*A285467(A082287(n+1))]`
-/

namespace A285469.P2597699461705338989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082287 (n + 1) * A285467 (A082287 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285469.P2597699461705338989

/-!
# A285470: Numbers k where "2" appears as the second digit of the decimal representation.

The programs for A285470, there is no canonical definition to state claims against.
-/

/-! ## A285470.P12375149159887356454

`eq[A257587(n)+8, A289506(A113581(n))]`
-/

namespace A285470.P12375149159887356454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257587 n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285470.P12375149159887356454

/-! ## A285470.P4224182278670037063

`or(1, A098395(∑[n+2]))+1`
-/

namespace A285470.P4224182278670037063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098395 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A285470.P4224182278670037063

/-! ## A285470.P16892153170178943477

`A130734(A332046(n+1))+3`
-/

namespace A285470.P16892153170178943477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A332046 (n + 1)).toNat + 3

end

end A285470.P16892153170178943477

/-! ## A285470.P12495086520681794589

`∑[A220664(A026534(n+1))+1]`
-/

namespace A285470.P12495086520681794589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220664 (A026534 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285470.P12495086520681794589

/-! ## A285470.P14117785082256541888

`A098395(∑[A051885(n+1)])+11`
-/

namespace A285470.P14117785082256541888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098395 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 11

end

end A285470.P14117785082256541888

/-!
# A285472: Expansion of Product_{k>=1} ((1 + x^(4*k)) / (1 - x^k)).

The programs for A285472, there is no canonical definition to state claims against.
-/

/-! ## A285472.P448475689461046765

`A140472(A323433(n)%A130817(n+1))`
-/

namespace A285472.P448475689461046765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (Int.tmod (A323433 n) (A130817 (n + 1))).toNat

end

end A285472.P448475689461046765

/-! ## A285472.P7981636670113421434

`A338466(A047967(n))+A046682(n)`
-/

namespace A285472.P7981636670113421434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A047967 n).toNat + A046682 n

end

end A285472.P7981636670113421434

/-! ## A285472.P13155979571846765250

`A008619(A323433(n))%A326793(2*(n+2))`
-/

namespace A285472.P13155979571846765250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A323433 n).toNat) (A326793 (2 * (n + 2)))

end

end A285472.P13155979571846765250

/-! ## A285472.P16897657791990652138

`A232012(A319454(n))`
-/

namespace A285472.P16897657791990652138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (A319454 n).toNat

end

end A285472.P16897657791990652138

/-! ## A285472.P17593644398098292924

`A232012(A358909(n))`
-/

namespace A285472.P17593644398098292924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (A358909 n).toNat

end

end A285472.P17593644398098292924

/-!
# A285473: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A285473, the canonical program `A285473.P5965544858136921209` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285473 has offset 0).

The definition of A285473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285473.P5965544858136921209

`or(1, A277560(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A285473

/-- `or(1, A277560(n))` -/
def P5965544858136921209.Spec : Prop :=
  ∀ n, P5965544858136921209.a n = A285473 n

theorem P5965544858136921209.correct : P5965544858136921209.Spec := by
  intro n
  simp only [A285473]

end A285473

/-! ## A285473.P14094370077397438731

`or(1, A277926(n))`
-/

namespace A285473.P14094370077397438731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A277926 n)

end

end A285473.P14094370077397438731

namespace A285473

/-- `or(1, A277926(n))` -/
def P14094370077397438731.Spec : Prop :=
  ∀ n, P14094370077397438731.a n = A285473 n

end A285473

/-! ## A285473.P5711525008706485898

`or(1, A280410(n))`
-/

namespace A285473.P5711525008706485898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A280410 n)

end

end A285473.P5711525008706485898

namespace A285473

/-- `or(1, A280410(n))` -/
def P5711525008706485898.Spec : Prop :=
  ∀ n, P5711525008706485898.a n = A285473 n

end A285473

/-! ## A285473.P9481477438719385528

`or(1, A285775(n))`
-/

namespace A285473.P9481477438719385528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A285775 n)

end

end A285473.P9481477438719385528

namespace A285473

/-- `or(1, A285775(n))` -/
def P9481477438719385528.Spec : Prop :=
  ∀ n, P9481477438719385528.a n = A285473 n

end A285473

/-! ## A285473.P15596986726132307130

`or(1, A286770(n))`
-/

namespace A285473.P15596986726132307130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A286770 n)

end

end A285473.P15596986726132307130

namespace A285473

/-- `or(1, A286770(n))` -/
def P15596986726132307130.Spec : Prop :=
  ∀ n, P15596986726132307130.a n = A285473 n

end A285473

/-! ## A285473.P2720623195802196074

`A285540(lcm(2, n)-n)`
-/

namespace A285473.P2720623195802196074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285540 (Nat.lcm 2 n - n)

end

end A285473.P2720623195802196074

namespace A285473

/-- `A285540(lcm(2, n)-n)` -/
def P2720623195802196074.Spec : Prop :=
  ∀ n, P2720623195802196074.a n = A285473 n

end A285473

/-! ## A285473.P13075223702897837514

`A277560(n*and(1, n))`
-/

namespace A285473.P13075223702897837514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277560 (n * Nat.land 1 n)

end

end A285473.P13075223702897837514

namespace A285473

/-- `A277560(n*and(1, n))` -/
def P13075223702897837514.Spec : Prop :=
  ∀ n, P13075223702897837514.a n = A285473 n

end A285473

/-! ## A285473.P13829402095563626957

`A283604(n*and(1, n))`
-/

namespace A285473.P13829402095563626957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283604 (n * Nat.land 1 n)

end

end A285473.P13829402095563626957

namespace A285473

/-- `A283604(n*and(1, n))` -/
def P13829402095563626957.Spec : Prop :=
  ∀ n, P13829402095563626957.a n = A285473 n

end A285473

/-! ## A285473.P183457205493953222

`A285560(n*and(1, n))`
-/

namespace A285473.P183457205493953222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285560 (n * Nat.land 1 n)

end

end A285473.P183457205493953222

namespace A285473

/-- `A285560(n*and(1, n))` -/
def P183457205493953222.Spec : Prop :=
  ∀ n, P183457205493953222.a n = A285473 n

end A285473

/-! ## A285473.P4258575541469571466

`A286112(n*and(1, n))`
-/

namespace A285473.P4258575541469571466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286112 (n * Nat.land 1 n)

end

end A285473.P4258575541469571466

namespace A285473

/-- `A286112(n*and(1, n))` -/
def P4258575541469571466.Spec : Prop :=
  ∀ n, P4258575541469571466.a n = A285473 n

end A285473

/-! ## A285473.P16579077807243536592

`A286113(n*and(1, n))`
-/

namespace A285473.P16579077807243536592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286113 (n * Nat.land 1 n)

end

end A285473.P16579077807243536592

namespace A285473

/-- `A286113(n*and(1, n))` -/
def P16579077807243536592.Spec : Prop :=
  ∀ n, P16579077807243536592.a n = A285473 n

end A285473

/-! ## A285473.P11279426470933634384

`A286519(n*and(1, n))`
-/

namespace A285473.P11279426470933634384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286519 (n * Nat.land 1 n)

end

end A285473.P11279426470933634384

namespace A285473

/-- `A286519(n*and(1, n))` -/
def P11279426470933634384.Spec : Prop :=
  ∀ n, P11279426470933634384.a n = A285473 n

end A285473

/-! ## A285473.P4212548727293776588

`A286702(n*and(1, n))`
-/

namespace A285473.P4212548727293776588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286702 (n * Nat.land 1 n)

end

end A285473.P4212548727293776588

namespace A285473

/-- `A286702(n*and(1, n))` -/
def P4212548727293776588.Spec : Prop :=
  ∀ n, P4212548727293776588.a n = A285473 n

end A285473

/-! ## A285473.P12947532560185222431

`A286703(n*and(1, n))`
-/

namespace A285473.P12947532560185222431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 (n * Nat.land 1 n)

end

end A285473.P12947532560185222431

namespace A285473

/-- `A286703(n*and(1, n))` -/
def P12947532560185222431.Spec : Prop :=
  ∀ n, P12947532560185222431.a n = A285473 n

end A285473

/-! ## A285473.P15618291191095545968

`A290660(n*and(1, n))`
-/

namespace A285473.P15618291191095545968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 (n * Nat.land 1 n)

end

end A285473.P15618291191095545968

namespace A285473

/-- `A290660(n*and(1, n))` -/
def P15618291191095545968.Spec : Prop :=
  ∀ n, P15618291191095545968.a n = A285473 n

end A285473

/-! ## A285473.P2419425232555121220

`gcd(log2(gcd(2, n)), A286672(n))`
-/

namespace A285473.P2419425232555121220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))) (A286672 n)

end

end A285473.P2419425232555121220

namespace A285473

/-- `gcd(log2(gcd(2, n)), A286672(n))` -/
def P2419425232555121220.Spec : Prop :=
  ∀ n, (P2419425232555121220.a n : ℤ) = A285473 n

end A285473

/-! ## A285473.P6203626275263882455

`A000042(n*n%2+1)`
-/

namespace A285473.P6203626275263882455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n * (n % 2) + 1)

end

end A285473.P6203626275263882455

namespace A285473

/-- `A000042(n*n%2+1)` -/
def P6203626275263882455.Spec : Prop :=
  ∀ n, P6203626275263882455.a n = A285473 n

end A285473

/-! ## A285473.P6991549488285340422

`A000042(n*and(1, n)+1)`
-/

namespace A285473.P6991549488285340422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n * Nat.land 1 n + 1)

end

end A285473.P6991549488285340422

namespace A285473

/-- `A000042(n*and(1, n)+1)` -/
def P6991549488285340422.Spec : Prop :=
  ∀ n, P6991549488285340422.a n = A285473 n

end A285473

/-! ## A285473.P305509680894403430

`A289404(A266220(n))`
-/

namespace A285473.P305509680894403430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A266220 n).toNat

end

end A285473.P305509680894403430

namespace A285473

/-- `A289404(A266220(n))` -/
def P305509680894403430.Spec : Prop :=
  ∀ n, P305509680894403430.a n = A285473 n

end A285473

/-! ## A285473.P731883271058933958

`A289404(A266303(n))`
-/

namespace A285473.P731883271058933958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A266303 n).toNat

end

end A285473.P731883271058933958

namespace A285473

/-- `A289404(A266303(n))` -/
def P731883271058933958.Spec : Prop :=
  ∀ n, P731883271058933958.a n = A285473 n

end A285473

/-!
# A285474: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A285474, the canonical program `A285474.P15837645706445647605` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285474 has offset 0).

The definition of A285474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285474.P9023787598325136321

`A277798(xor(1, n+1))`
-/

namespace A285474.P9023787598325136321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (Nat.xor 1 (n + 1))

end

end A285474.P9023787598325136321

namespace A285474

/-- `A277798(xor(1, n+1))` -/
def P9023787598325136321.Spec : Prop :=
  ∀ n, P9023787598325136321.a n = A285474 n

end A285474

/-! ## A285474.P15819775072870800691

`A287196(xor(1, n+1))`
-/

namespace A285474.P15819775072870800691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287196 (Nat.xor 1 (n + 1))

end

end A285474.P15819775072870800691

namespace A285474

/-- `A287196(xor(1, n+1))` -/
def P15819775072870800691.Spec : Prop :=
  ∀ n, P15819775072870800691.a n = A285474 n

end A285474

/-! ## A285474.P15837645706445647605

`A309761(∑[A266303(n)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A285474

/-- `A309761(∑[A266303(n)])` -/
def P15837645706445647605.Spec : Prop :=
  ∀ n, P15837645706445647605.a n = A285474 n

theorem P15837645706445647605.correct : P15837645706445647605.Spec := by
  intro n
  simp only [A285474]

end A285474

/-! ## A285474.P14287041367253243771

`A277798(A004442(n+1))`
-/

namespace A285474.P14287041367253243771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (A004442 (n + 1)).toNat

end

end A285474.P14287041367253243771

namespace A285474

/-- `A277798(A004442(n+1))` -/
def P14287041367253243771.Spec : Prop :=
  ∀ n, P14287041367253243771.a n = A285474 n

end A285474

/-! ## A285474.P1111428250977324973

`A309761(A131179(n+1))`
-/

namespace A285474.P1111428250977324973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A131179 (n + 1)).toNat

end

end A285474.P1111428250977324973

namespace A285474

/-- `A309761(A131179(n+1))` -/
def P1111428250977324973.Spec : Prop :=
  ∀ n, P1111428250977324973.a n = A285474 n

end A285474

/-! ## A285474.P4867067177135074777

`A287196(1-A033999(n)+n)`
-/

namespace A285474.P4867067177135074777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287196 (1 - A033999 n + (n : ℤ)).toNat

end

end A285474.P4867067177135074777

namespace A285474

/-- `A287196(1-A033999(n)+n)` -/
def P4867067177135074777.Spec : Prop :=
  ∀ n, P4867067177135074777.a n = A285474 n

end A285474

/-! ## A285474.P2407204369484931750

`A287196(1-(A033999(n)-n))`
-/

namespace A285474.P2407204369484931750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287196 (1 - (A033999 n - (n : ℤ))).toNat

end

end A285474.P2407204369484931750

namespace A285474

/-- `A287196(1-(A033999(n)-n))` -/
def P2407204369484931750.Spec : Prop :=
  ∀ n, P2407204369484931750.a n = A285474 n

end A285474

/-! ## A285474.P16607975180519085966

`A287196(2*A000035(n)+n)`
-/

namespace A285474.P16607975180519085966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287196 (2 * A000035 n + (n : ℤ)).toNat

end

end A285474.P16607975180519085966

namespace A285474

/-- `A287196(2*A000035(n)+n)` -/
def P16607975180519085966.Spec : Prop :=
  ∀ n, P16607975180519085966.a n = A285474 n

end A285474

/-! ## A285474.P2744697368348398185

`floor((A011557(n)/A004663(n))²)`
-/

namespace A285474.P2744697368348398185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A011557 n : ℚ) / (A004663 n : ℚ)) ^ 2⌋

end

end A285474.P2744697368348398185

namespace A285474

/-- `floor((A011557(n)/A004663(n))²)` -/
def P2744697368348398185.Spec : Prop :=
  ∀ n, P2744697368348398185.a n = A285474 n

end A285474

/-! ## A285474.P7547634776259902893

`A277798(A004442(2*n)-A004442(n))`
-/

namespace A285474.P7547634776259902893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (A004442 (2 * n) - A004442 n).toNat

end

end A285474.P7547634776259902893

namespace A285474

/-- `A277798(A004442(2*n)-A004442(n))` -/
def P7547634776259902893.Spec : Prop :=
  ∀ n, P7547634776259902893.a n = A285474 n

end A285474

/-! ## A285474.P16762443289948811316

`A287196(A000035(n)+A000035(n)+n)`
-/

namespace A285474.P16762443289948811316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287196 (A000035 n + (A000035 n + (n : ℤ))).toNat

end

end A285474.P16762443289948811316

namespace A285474

/-- `A287196(A000035(n)+A000035(n)+n)` -/
def P16762443289948811316.Spec : Prop :=
  ∀ n, P16762443289948811316.a n = A285474 n

end A285474

/-! ## A285474.P1725743687382731425

`A011557(n)+A002275(n*A000035(n))`
-/

namespace A285474.P1725743687382731425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A002275 ((n : ℤ) * A000035 n).toNat

end

end A285474.P1725743687382731425

namespace A285474

/-- `A011557(n)+A002275(n*A000035(n))` -/
def P1725743687382731425.Spec : Prop :=
  ∀ n, P1725743687382731425.a n = A285474 n

end A285474

/-! ## A285474.P18393173949409349849

`A309761(A000124(n)+n*A000035(n))`
-/

namespace A285474.P18393173949409349849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A000124 n + (n : ℤ) * A000035 n).toNat

end

end A285474.P18393173949409349849

namespace A285474

/-- `A309761(A000124(n)+n*A000035(n))` -/
def P18393173949409349849.Spec : Prop :=
  ∀ n, P18393173949409349849.a n = A285474 n

end A285474

/-! ## A285474.P4693900839856419033

`A002275(n+1)-A277798(A093178(n+1))`
-/

namespace A285474.P4693900839856419033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A277798 (A093178 (n + 1)).toNat

end

end A285474.P4693900839856419033

namespace A285474

/-- `A002275(n+1)-A277798(A093178(n+1))` -/
def P4693900839856419033.Spec : Prop :=
  ∀ n, P4693900839856419033.a n = A285474 n

end A285474

/-! ## A285474.P17207698668651072672

`A000042(n+1)-A000035(n+1)*A002275(n)`
-/

namespace A285474.P17207698668651072672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A000035 (n + 1) * A002275 n

end

end A285474.P17207698668651072672

namespace A285474

/-- `A000042(n+1)-A000035(n+1)*A002275(n)` -/
def P17207698668651072672.Spec : Prop :=
  ∀ n, P17207698668651072672.a n = A285474 n

end A285474

/-! ## A285474.P9193332219500182106

`A002275(n+1)-A000035(n+1)*A002275(n)`
-/

namespace A285474.P9193332219500182106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A000035 (n + 1) * A002275 n

end

end A285474.P9193332219500182106

namespace A285474

/-- `A002275(n+1)-A000035(n+1)*A002275(n)` -/
def P9193332219500182106.Spec : Prop :=
  ∀ n, P9193332219500182106.a n = A285474 n

end A285474

/-!
# A285475: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

The programs for A285475, the canonical program `A285475.P8461351269532435313` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285475 has offset 0).

The definition of A285475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285475.P8461351269532435313

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285475

/-- `5*a(n-2)-4*a(n-4)` -/
def P8461351269532435313.Spec : Prop :=
  ∀ n, P8461351269532435313.a n = A285475 n

theorem P8461351269532435313.correct : P8461351269532435313.Spec := by
  intro n
  simp only [A285475]

end A285475

/-! ## A285475.P2840323662316247966

`4^∑[n%2]-n%2`
-/

namespace A285475.P2840323662316247966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A285475.P2840323662316247966

namespace A285475

/-- `4^∑[n%2]-n%2` -/
def P2840323662316247966.Spec : Prop :=
  ∀ n, P2840323662316247966.a n = A285475 n

end A285475

/-! ## A285475.P6428767913462074265

`∑[4*a(n-2)]+(n+1)%2` with `a(0)=0, a(1)=3`
-/

namespace A285475.P6428767913462074265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) % 2

end

end A285475.P6428767913462074265

namespace A285475

/-- `∑[4*a(n-2)]+(n+1)%2` -/
def P6428767913462074265.Spec : Prop :=
  ∀ n, (P6428767913462074265.a n : ℤ) = A285475 n

end A285475

/-! ## A285475.P2606794500642020515

`a(n-2)%4+4*a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A285475.P2606794500642020515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  a (n - 2) % 4 + 4 * a (n - 2)

end

end A285475.P2606794500642020515

namespace A285475

/-- `a(n-2)%4+4*a(n-2)` -/
def P2606794500642020515.Spec : Prop :=
  ∀ n, (P2606794500642020515.a n : ℤ) = A285475 n

end A285475

/-! ## A285475.P15215272549333036777

`(char[2*n+1]+1)*2^n-char[2*n+1]`
-/

namespace A285475.P15215272549333036777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((if ∃ j, f1 j = n then 1 else 0) + 1) * 2 ^ n : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A285475.P15215272549333036777

namespace A285475

/-- `(char[2*n+1]+1)*2^n-char[2*n+1]` -/
def P15215272549333036777.Spec : Prop :=
  ∀ n, P15215272549333036777.a n = A285475 n

end A285475

/-! ## A285475.P9589965887916049978

`A277800(xor(1, n+1))`
-/

namespace A285475.P9589965887916049978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 (Nat.xor 1 (n + 1))

end

end A285475.P9589965887916049978

namespace A285475

/-- `A277800(xor(1, n+1))` -/
def P9589965887916049978.Spec : Prop :=
  ∀ n, P9589965887916049978.a n = A285475 n

end A285475

/-! ## A285475.P8227285204427448330

`A287199(xor(1, n+1))`
-/

namespace A285475.P8227285204427448330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287199 (Nat.xor 1 (n + 1))

end

end A285475.P8227285204427448330

namespace A285475

/-- `A287199(xor(1, n+1))` -/
def P8227285204427448330.Spec : Prop :=
  ∀ n, P8227285204427448330.a n = A285475 n

end A285475

/-! ## A285475.P17514926513800004658

`A277800(A004442(n+1))`
-/

namespace A285475.P17514926513800004658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277800 (A004442 (n + 1)).toNat

end

end A285475.P17514926513800004658

namespace A285475

/-- `A277800(A004442(n+1))` -/
def P17514926513800004658.Spec : Prop :=
  ∀ n, P17514926513800004658.a n = A285475 n

end A285475

/-! ## A285475.P17560885199541357361

`A010684(n)*A092809(n)`
-/

namespace A285475.P17560885199541357361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A092809 n

end

end A285475.P17560885199541357361

namespace A285475

/-- `A010684(n)*A092809(n)` -/
def P17560885199541357361.Spec : Prop :=
  ∀ n, P17560885199541357361.a n = A285475 n

end A285475

/-! ## A285475.P8271644386195197056

`gcd(A199572(n), A277936(n))`
-/

namespace A285475.P8271644386195197056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A199572 n) (A277936 n)

end

end A285475.P8271644386195197056

namespace A285475

/-- `gcd(A199572(n), A277936(n))` -/
def P8271644386195197056.Spec : Prop :=
  ∀ n, (P8271644386195197056.a n : ℤ) = A285475 n

end A285475

/-! ## A285475.P13863754811587638209

`or(A000079(n), A051049(n))`
-/

namespace A285475.P13863754811587638209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A051049 n)

end

end A285475.P13863754811587638209

namespace A285475

/-- `or(A000079(n), A051049(n))` -/
def P13863754811587638209.Spec : Prop :=
  ∀ n, P13863754811587638209.a n = A285475 n

end A285475

/-! ## A285475.P13926162293302204288

`∪[A000302(n), A103454(n)]`
-/

namespace A285475.P13926162293302204288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285475.P13926162293302204288

namespace A285475

/-- `∪[A000302(n), A103454(n)]` -/
def P13926162293302204288.Spec : Prop :=
  ∀ n, (P13926162293302204288.a n : ℤ) = A285475 n

end A285475

/-! ## A285475.P3584743013074936551

`A106624(xor(1, A014601(n)+1))`
-/

namespace A285475.P3584743013074936551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (Int.xor 1 (A014601 n + 1)).toNat

end

end A285475.P3584743013074936551

namespace A285475

/-- `A106624(xor(1, A014601(n)+1))` -/
def P3584743013074936551.Spec : Prop :=
  ∀ n, P3584743013074936551.a n = A285475 n

end A285475

/-! ## A285475.P10548195551692181278

`or(A011782(n+1), A051049(n))`
-/

namespace A285475.P10548195551692181278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (n + 1)) (A051049 n)

end

end A285475.P10548195551692181278

namespace A285475

/-- `or(A011782(n+1), A051049(n))` -/
def P10548195551692181278.Spec : Prop :=
  ∀ n, P10548195551692181278.a n = A285475 n

end A285475

/-! ## A285475.P14376831182361064588

`or(A051049(n), A131577(n+1))`
-/

namespace A285475.P14376831182361064588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051049 n) (A131577 (n + 1))

end

end A285475.P14376831182361064588

namespace A285475

/-- `or(A051049(n), A131577(n+1))` -/
def P14376831182361064588.Spec : Prop :=
  ∀ n, P14376831182361064588.a n = A285475 n

end A285475

/-! ## A285475.P11943903904185244696

`A287199(and(2, A287199(n))+n)`
-/

namespace A285475.P11943903904185244696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287199 (Int.land 2 (A287199 n) + (n : ℤ)).toNat

end

end A285475.P11943903904185244696

namespace A285475

/-- `A287199(and(2, A287199(n))+n)` -/
def P11943903904185244696.Spec : Prop :=
  ∀ n, P11943903904185244696.a n = A285475 n

end A285475

/-! ## A285475.P13253911872028694353

`xor(A066532(n+1), A166977(n))`
-/

namespace A285475.P13253911872028694353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066532 (n + 1)) (A166977 n)

end

end A285475.P13253911872028694353

namespace A285475

/-- `xor(A066532(n+1), A166977(n))` -/
def P13253911872028694353.Spec : Prop :=
  ∀ n, P13253911872028694353.a n = A285475 n

end A285475

/-! ## A285475.P15706693481859752247

`or(2*A131577(n), A051049(n))`
-/

namespace A285475.P15706693481859752247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A131577 n) (A051049 n)

end

end A285475.P15706693481859752247

namespace A285475

/-- `or(2*A131577(n), A051049(n))` -/
def P15706693481859752247.Spec : Prop :=
  ∀ n, P15706693481859752247.a n = A285475 n

end A285475

/-! ## A285475.P1166033000927983800

`xor(A084170(n), A193652(n))`
-/

namespace A285475.P1166033000927983800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084170 n) (A193652 n)

end

end A285475.P1166033000927983800

namespace A285475

/-- `xor(A084170(n), A193652(n))` -/
def P1166033000927983800.Spec : Prop :=
  ∀ n, P1166033000927983800.a n = A285475 n

end A285475

/-!
# A285476: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 6", based on the 5-celled von Neumann neighborhood.

The programs for A285476, the canonical program `A285476.P9581577646134999919` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285476 has offset 0).

The definition of A285476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285476.P9581577646134999919

`C(5, 3*n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A285476

/-- `C(5, 3*n)` -/
def P9581577646134999919.Spec : Prop :=
  ∀ n, (P9581577646134999919.a n : ℤ) = A285476 n

theorem P9581577646134999919.correct : P9581577646134999919.Spec := by
  intro n
  simp only [A285476]

end A285476

/-!
# A285477: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A285477, there is no canonical definition to state claims against.
-/

/-! ## A285477.P220874788813800582

`char[2*n]*A285941(n)`
-/

namespace A285477.P220874788813800582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A285941 n

end

end A285477.P220874788813800582

/-! ## A285477.P7586097940774612221

`lcm(A056594(n), A285941(n))`
-/

namespace A285477.P7586097940774612221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A285941 n)

end

end A285477.P7586097940774612221

/-! ## A285477.P4657871987199066000

`and(A105812(n), A285941(n))`
-/

namespace A285477.P4657871987199066000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A285941 n)

end

end A285477.P4657871987199066000

/-! ## A285477.P13591138536897064587

`and(A061084(n)%3, A285941(n))`
-/

namespace A285477.P13591138536897064587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A061084 n) 3) (A285941 n)

end

end A285477.P13591138536897064587

/-! ## A285477.P15423529321359725784

`A285941(n)*A331218(A331218(n+1))`
-/

namespace A285477.P15423529321359725784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285941 n * A331218 (A331218 (n + 1)).toNat

end

end A285477.P15423529321359725784

/-! ## A285477.P7011132256494645342

`A285941(n)-A000035(n)*A285941(n)`
-/

namespace A285477.P7011132256494645342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285941 n - A000035 n * A285941 n

end

end A285477.P7011132256494645342

/-! ## A285477.P15435537980284347381

`A059841(n)*A285941(n)*A059841(n)`
-/

namespace A285477.P15435537980284347381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285941 n * A059841 n

end

end A285477.P15435537980284347381

/-! ## A285477.P999927804967608389

`C(A285941(n), A266302(n))`
-/

namespace A285477.P999927804967608389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285941 n).toNat (A266302 n).toNat

end

end A285477.P999927804967608389

/-!
# A285478: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A285478, there is no canonical definition to state claims against.
-/

/-! ## A285478.P3063965264150806124

`lcm(A004643(n), A285477(n))`
-/

namespace A285478.P3063965264150806124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004643 n) (A285477 n)

end

end A285478.P3063965264150806124

/-! ## A285478.P8539366713543620348

`A059841(n)*A285942(n*A059841(n))`
-/

namespace A285478.P8539366713543620348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285942 ((n : ℤ) * A059841 n).toNat

end

end A285478.P8539366713543620348

/-! ## A285478.P11970643363812034389

`A059841(n)*A285942(n)`
-/

namespace A285478.P11970643363812034389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285942 n

end

end A285478.P11970643363812034389

/-! ## A285478.P8134100951556263644

`lcm(A056594(n), A285942(n))`
-/

namespace A285478.P8134100951556263644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A285942 n)

end

end A285478.P8134100951556263644

/-! ## A285478.P11863097613667734455

`and(A000025(n), A285942(n))`
-/

namespace A285478.P11863097613667734455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000025 n) (A285942 n)

end

end A285478.P11863097613667734455

/-! ## A285478.P3213998541992276991

`and(A204854(n), A285942(n))`
-/

namespace A285478.P3213998541992276991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204854 n) (A285942 n)

end

end A285478.P3213998541992276991

/-! ## A285478.P17321708769846407574

`Δ[A110654(n)]*A285942(n)`
-/

namespace A285478.P17321708769846407574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A285942 n

end

end A285478.P17321708769846407574

/-! ## A285478.P16012110931038075987

`A077896(n)%2*A285942(n)`
-/

namespace A285478.P16012110931038075987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077896 n) 2 * A285942 n

end

end A285478.P16012110931038075987

/-! ## A285478.P4448287895244570511

`A056594(n²)*A285942(n)`
-/

namespace A285478.P4448287895244570511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A285942 n

end

end A285478.P4448287895244570511

/-!
# A285479: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A285479, there is no canonical definition to state claims against.
-/

/-! ## A285479.P12439250829009073822

`A059841(n)*A285943(n)`
-/

namespace A285479.P12439250829009073822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285943 n

end

end A285479.P12439250829009073822

/-! ## A285479.P14605064940288599541

`lcm(A056594(n), A285943(n))`
-/

namespace A285479.P14605064940288599541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A285943 n)

end

end A285479.P14605064940288599541

/-! ## A285479.P17844444547812922148

`and(A077896(n), A285943(n))`
-/

namespace A285479.P17844444547812922148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077896 n) (A285943 n)

end

end A285479.P17844444547812922148

/-! ## A285479.P17586931143443002661

`and(A097110(n), A285943(n))`
-/

namespace A285479.P17586931143443002661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097110 n) (A285943 n)

end

end A285479.P17586931143443002661

/-! ## A285479.P15999345961352777610

`and(A105812(n), A285943(n))`
-/

namespace A285479.P15999345961352777610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A285943 n)

end

end A285479.P15999345961352777610

/-! ## A285479.P4419612445855018122

`and(A278755(n), A285943(n))`
-/

namespace A285479.P4419612445855018122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278755 n) (A285943 n)

end

end A285479.P4419612445855018122

/-! ## A285479.P10581913373081332279

`and(A279879(n), A285943(n))`
-/

namespace A285479.P10581913373081332279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279879 n) (A285943 n)

end

end A285479.P10581913373081332279

/-! ## A285479.P3105269297007921976

`and(A282417(n), A285943(n))`
-/

namespace A285479.P3105269297007921976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282417 n) (A285943 n)

end

end A285479.P3105269297007921976

/-! ## A285479.P10525535559924138533

`A285943(n)%A153265(n)`
-/

namespace A285479.P10525535559924138533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285943 n) (A153265 n)

end

end A285479.P10525535559924138533

/-! ## A285479.P3276603475162679052

`and(A094360(n), A285943(n))`
-/

namespace A285479.P3276603475162679052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094360 n) (A285943 n)

end

end A285479.P3276603475162679052

/-! ## A285479.P2614007438031763107

`and(A279872(n), A285943(n))`
-/

namespace A285479.P2614007438031763107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279872 n) (A285943 n)

end

end A285479.P2614007438031763107

/-! ## A285479.P5849762803724349248

`and(A282414(n), A285943(n))`
-/

namespace A285479.P5849762803724349248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282414 n) (A285943 n)

end

end A285479.P5849762803724349248

/-! ## A285479.P7406810484696167919

`and(A285943(n), A290234(n))`
-/

namespace A285479.P7406810484696167919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285943 n) (A290234 n)

end

end A285479.P7406810484696167919

/-! ## A285479.P13427984196846714257

`and(A080041(n), A285943(n))`
-/

namespace A285479.P13427984196846714257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080041 n) (A285943 n)

end

end A285479.P13427984196846714257

/-! ## A285479.P4361518210219100372

`A056594(n²)*A285943(n)`
-/

namespace A285479.P4361518210219100372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A285943 n

end

end A285479.P4361518210219100372

/-!
# A285480: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A285480, there is no canonical definition to state claims against.
-/

/-! ## A285480.P13781256941735463761

`A059841(n)*A285944(n)`
-/

namespace A285480.P13781256941735463761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A285944 n

end

end A285480.P13781256941735463761

/-! ## A285480.P15019301556786577588

`lcm(A016116(n), A285479(n))`
-/

namespace A285480.P15019301556786577588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016116 n) (A285479 n)

end

end A285480.P15019301556786577588

/-! ## A285480.P9515499943225304434

`lcm(A056594(n), A285944(n))`
-/

namespace A285480.P9515499943225304434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A285944 n)

end

end A285480.P9515499943225304434

/-! ## A285480.P5730264899020459328

`lcm(A077957(n), A285943(n))`
-/

namespace A285480.P5730264899020459328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077957 n) (A285943 n)

end

end A285480.P5730264899020459328

/-! ## A285480.P3682636807648903335

`and(A000025(n), A285944(n))`
-/

namespace A285480.P3682636807648903335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000025 n) (A285944 n)

end

end A285480.P3682636807648903335

/-! ## A285480.P16794753181593346866

`and(A105812(n), A285944(n))`
-/

namespace A285480.P16794753181593346866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105812 n) (A285944 n)

end

end A285480.P16794753181593346866

/-! ## A285480.P17121686815064511133

`and(A165326(n), A285944(n))`
-/

namespace A285480.P17121686815064511133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165326 n) (A285944 n)

end

end A285480.P17121686815064511133

/-! ## A285480.P704714525568893131

`and(A186422(n), A285944(n))`
-/

namespace A285480.P704714525568893131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186422 n) (A285944 n)

end

end A285480.P704714525568893131

/-! ## A285480.P6101838731265242680

`and(A204854(n), A285944(n))`
-/

namespace A285480.P6101838731265242680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204854 n) (A285944 n)

end

end A285480.P6101838731265242680

/-! ## A285480.P6414839596519632874

`and(A283104(n), A285944(n))`
-/

namespace A285480.P6414839596519632874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283104 n) (A285944 n)

end

end A285480.P6414839596519632874

/-! ## A285480.P16399583550492781267

`and(A089075(n+1), A285944(n))`
-/

namespace A285480.P16399583550492781267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089075 (n + 1)) (A285944 n)

end

end A285480.P16399583550492781267

/-! ## A285480.P9408388257336092278

`and(A089076(n+1), A285944(n))`
-/

namespace A285480.P9408388257336092278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089076 (n + 1)) (A285944 n)

end

end A285480.P9408388257336092278

/-! ## A285480.P2953645399471178026

`and(A135440(n), A285944(n))`
-/

namespace A285480.P2953645399471178026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135440 n) (A285944 n)

end

end A285480.P2953645399471178026

/-! ## A285480.P3760985510057761685

`A285944(n)%A153265(n)`
-/

namespace A285480.P3760985510057761685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285944 n) (A153265 n)

end

end A285480.P3760985510057761685

/-! ## A285480.P18385954054564675944

`and(A084181(n), A285944(n))`
-/

namespace A285480.P18385954054564675944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084181 n) (A285944 n)

end

end A285480.P18385954054564675944

/-! ## A285480.P7538084126734587492

`and(A107663(n), A285944(n))`
-/

namespace A285480.P7538084126734587492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107663 n) (A285944 n)

end

end A285480.P7538084126734587492

/-! ## A285480.P7781277130945014108

`and(A278756(n), A285944(n))`
-/

namespace A285480.P7781277130945014108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278756 n) (A285944 n)

end

end A285480.P7781277130945014108

/-! ## A285480.P14975024310688233273

`and(A279872(n), A285944(n))`
-/

namespace A285480.P14975024310688233273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279872 n) (A285944 n)

end

end A285480.P14975024310688233273

/-! ## A285480.P16374316715453452361

`and(A279880(n), A285944(n))`
-/

namespace A285480.P16374316715453452361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279880 n) (A285944 n)

end

end A285480.P16374316715453452361

/-! ## A285480.P15696801140947685459

`and(A282413(n), A285944(n))`
-/

namespace A285480.P15696801140947685459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282413 n) (A285944 n)

end

end A285480.P15696801140947685459

/-!
# A285481: Smallest integer radius needed such that an n-dimensional ball has a volume greater than or equal to 1.

The programs for A285481, there is no canonical definition to state claims against.
-/

/-! ## A285481.P5183999679830301898

`∑[char[A177677(n+1)]]+1`
-/

namespace A285481.P5183999679830301898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177677 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A285481.P5183999679830301898

/-! ## A285481.P10828978198121059173

`∑[char[A285482(n+1)-1]]`
-/

namespace A285481.P10828978198121059173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285482 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285481.P10828978198121059173

/-! ## A285481.P14694891236316661517

`ceil(A002313(A000124(n))/A055999(3*(n+1)))`
-/

namespace A285481.P14694891236316661517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002313 (A000124 n).toNat : ℚ) / (A055999 (3 * (n + 1)) : ℚ)⌉

end

end A285481.P14694891236316661517

/-! ## A285481.P10044655670100142850

`A178487(lt[A322289(n+1), A055456(3*n+5)])`
-/

namespace A285481.P10044655670100142850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285481.P10044655670100142850

/-! ## A285481.P18178797861714613372

`∑[A010052(∑[A094513(n+1)])]`
-/

namespace A285481.P18178797861714613372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094513 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285481.P18178797861714613372

/-! ## A285481.P13416319570209464458

`floor(floor(A000040(A001597(n+1))^(1/3))^(1/3))`
-/

namespace A285481.P13416319570209464458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A000040 (A001597 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A285481.P13416319570209464458

/-! ## A285481.P2805590575015100487

`A055642(floor(sqrt(A277025(n)))²)`
-/

namespace A285481.P2805590575015100487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.sqrt (A277025 n) ^ 2).toNat

end

end A285481.P2805590575015100487

/-! ## A285481.P3537109358931543816

`val(A025547(abs(4-n)+5), 5)`
-/

namespace A285481.P3537109358931543816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025547 (|4 - (n : ℤ)| + 5).toNat).toNat 5

end

end A285481.P3537109358931543816

/-! ## A285481.P794764416758888543

`A000041(val(A130414(n), 5))`
-/

namespace A285481.P794764416758888543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A130414 n).toNat 5)

end

end A285481.P794764416758888543

/-! ## A285481.P432340539029711487

`A000041(val(A025547(n+1), 5))`
-/

namespace A285481.P432340539029711487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (A025547 (n + 1)).toNat 5)

end

end A285481.P432340539029711487

/-! ## A285481.P11550041238309461558

`A086162(val(A025547(n+1), 5))`
-/

namespace A285481.P11550041238309461558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086162 (SequenceMachineLib.valuation (A025547 (n + 1)).toNat 5)

end

end A285481.P11550041238309461558

/-! ## A285481.P8469671318147729169

`A000196(A100617(n+1)%A114840(n+1))`
-/

namespace A285481.P8469671318147729169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A100617 (n + 1)) (A114840 (n + 1))).toNat

end

end A285481.P8469671318147729169

/-! ## A285481.P33899178340133094

`A006530(∏[A072499(A278538(n+1))])`
-/

namespace A285481.P33899178340133094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (A278538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285481.P33899178340133094

/-!
# A285482: Smallest k such that A285481(k) >= n, i.e., lowest d where the smallest integer radius needed for a d-dimensional ball to have a volume >= 1 is at least n.

The programs for A285482, there is no canonical definition to state claims against.
-/

/-! ## A285482.P10323335679095159691

`A001222(A279640(n))+4*C(3*n, 2)+1`
-/

namespace A285482.P10323335679095159691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A279640 n).toNat + (4 * Nat.choose (3 * n) 2 + 1 : ℤ)

end

end A285482.P10323335679095159691

/-!
# A285484: G.f.: 1/(1 + x/(1 + x^3/(1 + x^6/(1 + x^10/(1 + x^15/(1 + ... + x^(k*(k+1)/2)/(1 + ...))))))), a continued fraction.

The programs for A285484, there is no canonical definition to state claims against.
-/

/-! ## A285484.P14176570463295382046

`A062157(A082981(n+1))*A238430(n)`
-/

namespace A285484.P14176570463295382046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A082981 (n + 1)).toNat * A238430 n

end

end A285484.P14176570463295382046

/-! ## A285484.P4064766491042241502

`A033999(A082981(n+1)+1)*A238430(n)`
-/

namespace A285484.P4064766491042241502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A082981 (n + 1) + 1).toNat * A238430 n

end

end A285484.P4064766491042241502

/-! ## A285484.P195897352661929452

`A033999(A082981(n+2))*A238430(n)`
-/

namespace A285484.P195897352661929452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A082981 (n + 2)).toNat * A238430 n

end

end A285484.P195897352661929452

/-! ## A285484.P562703998267145470

`A238430(n)%A139115(3*n+5)/(-1)^n`
-/

namespace A285484.P562703998267145470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A238430 n) (A139115 (3 * n + 5)) : ℚ) / ((-1) ^ n : ℚ)

end

end A285484.P562703998267145470

/-! ## A285484.P9136149638559004065

`A062157(A187829(n+1))*A238430(n)`
-/

namespace A285484.P9136149638559004065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A187829 (n + 1)).toNat * A238430 n

end

end A285484.P9136149638559004065

/-!
# A285485: Number of (n+1)-extended Skolem sequences of order n.

The programs for A285485, there is no canonical definition to state claims against.
-/

/-! ## A285485.P2587019168762135846

`and(A015440(n), A176810(A364626(n)))`
-/

namespace A285485.P2587019168762135846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015440 n) (A176810 (A364626 n).toNat)

end

end A285485.P2587019168762135846

/-! ## A285485.P12671460387640578169

`and(A211639(A328531(n)), A328449(n))`
-/

namespace A285485.P12671460387640578169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211639 (A328531 n).toNat) (A328449 n)

end

end A285485.P12671460387640578169

/-! ## A285485.P5866759073331873696

`A195015(A241688(n+1)^A325702(n))`
-/

namespace A285485.P5866759073331873696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195015 (SequenceMachineLib.roundAway ((A241688 (n + 1) : ℚ) ^ (A325702 n : ℤ))).toNat

end

end A285485.P5866759073331873696

/-! ## A285485.P17539013236189249975

`and(A000010(A018495(n+1)), A328449(n))`
-/

namespace A285485.P17539013236189249975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A018495 (n + 1)).toNat) (A328449 n)

end

end A285485.P17539013236189249975

/-!
# A285489: Sum of entries in the second cycles of all permutations of [n].

The programs for A285489, there is no canonical definition to state claims against.
-/

/-! ## A285489.P1334244108316196428

`A285439(∑[n+1]+2)`
-/

namespace A285489.P1334244108316196428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285439 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A285489.P1334244108316196428

/-! ## A285489.P16744245697512009305

`record[A285439(A080036(n+1))]`
-/

namespace A285489.P16744245697512009305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285439 (A080036 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285489.P16744245697512009305

/-! ## A285489.P13813135556742416316

`record[A239927(n)*A285439(n+3)]`
-/

namespace A285489.P13813135556742416316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239927 n * A285439 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285489.P13813135556742416316

/-! ## A285489.P10916114903668000362

`record[A285439(n+3)%A285439(n+2)]`
-/

namespace A285489.P10916114903668000362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285439 (n + 3)) (A285439 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285489.P10916114903668000362

/-! ## A285489.P2902646851671925304

`record[A285439(n+3)/A039814(n+1)]`
-/

namespace A285489.P2902646851671925304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285439 (n + 3) : ℚ) / (A039814 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285489.P2902646851671925304

/-!
# A285491: Lexicographically earliest sequence of positive integers such that no two distinct unordered pairs of points ((n, a(n)), (m, a(m))) and ((k, a(k)), (j, a(j))) have the same midpoint.

The programs for A285491, there is no canonical definition to state claims against.
-/

/-! ## A285491.P9125298205122622170

`A242390(n)+1`
-/

namespace A285491.P9125298205122622170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242390 n + 1

end

end A285491.P9125298205122622170

/-! ## A285491.P2383716145472317142

`1-(A175676(A016777(n))-A242390(n))`
-/

namespace A285491.P2383716145472317142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A175676 (A016777 n).toNat - A242390 n)

end

end A285491.P2383716145472317142

/-! ## A285491.P14938322488885819859

`A008619(2*A242390(n))`
-/

namespace A285491.P14938322488885819859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A242390 n).toNat

end

end A285491.P14938322488885819859

/-! ## A285491.P7323972680555122556

`1--A242390(n)%A267210(n)`
-/

namespace A285491.P7323972680555122556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (-A242390 n) (A267210 n)

end

end A285491.P7323972680555122556

/-! ## A285491.P5923191732185737519

`A008620(3*A242390(n))`
-/

namespace A285491.P5923191732185737519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A242390 n).toNat

end

end A285491.P5923191732185737519

/-! ## A285491.P4796707244259612704

`A008624(4*A242390(n))`
-/

namespace A285491.P4796707244259612704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A242390 n).toNat

end

end A285491.P4796707244259612704

/-! ## A285491.P16892364456524937199

`A242328(n)-(A034474(n)-A242390(n))`
-/

namespace A285491.P16892364456524937199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242328 n - (A034474 n - A242390 n)

end

end A285491.P16892364456524937199

/-!
# A285494: Numbers k such that digit sum of k = number of distinct prime factors of k.

The programs for A285494, there is no canonical definition to state claims against.
-/

/-! ## A285494.P1493274774906499470

`∩[A304366(n+1), A396766(n+1)]`
-/

namespace A285494.P1493274774906499470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285494.P1493274774906499470

/-! ## A285494.P5480567263325345203

`eq[A001221(n+1), A007953(n+1)]+1`
-/

namespace A285494.P5480567263325345203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285494.P5480567263325345203

/-! ## A285494.P1436332582487992688

`eq[A001221(n+1), A061762(n+1)]+1`
-/

namespace A285494.P1436332582487992688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285494.P1436332582487992688

/-! ## A285494.P4194005611248226102

`eq[A062028(n), A229109(A028310(n))]`
-/

namespace A285494.P4194005611248226102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285494.P4194005611248226102

/-! ## A285494.P2328981811465091410

`eq[A001221(A000038(n)+n), A007953(n)]`
-/

namespace A285494.P2328981811465091410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285494.P2328981811465091410

/-!
# A285495: 0-limiting word of the morphism 0->11, 1-> 0010.

The programs for A285495, there is no canonical definition to state claims against.
-/

/-! ## A285495.P12332638860543091216

`char[A285497(n+1)-1]`
-/

namespace A285495.P12332638860543091216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285497 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285495.P12332638860543091216

/-! ## A285495.P7452613829104945961

`and(A067971(n), A340607(n+1))`
-/

namespace A285495.P7452613829104945961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067971 n) (A340607 (n + 1))

end

end A285495.P7452613829104945961

/-! ## A285495.P16364416568115890596

`A329504(A286475(n+1))%A124767(n+3)`
-/

namespace A285495.P16364416568115890596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329504 (A286475 (n + 1)).toNat) (A124767 (n + 3))

end

end A285495.P16364416568115890596

/-! ## A285495.P6537621695271976926

`A286049(A090108(3*n+2)²)`
-/

namespace A285495.P6537621695271976926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286049 (A090108 (3 * n + 2) ^ 2).toNat

end

end A285495.P6537621695271976926

/-! ## A285495.P6235440328058003346

`A010060(or(6, A056107(3*n+2)))`
-/

namespace A285495.P6235440328058003346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.lor 6 (A056107 (3 * n + 2))).toNat

end

end A285495.P6235440328058003346

/-!
# A285496: Positions of 0 in A285495; complement of A285497.

The programs for A285496, there is no canonical definition to state claims against.
-/

/-! ## A285496.P17018947163090477661

`eq[0, n*A285495(n+1)]+1`
-/

namespace A285496.P17018947163090477661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285496.P17018947163090477661

/-! ## A285496.P13949562162934206409

`record[(1-A285495(n+1))*A000027(n+1)]`
-/

namespace A285496.P13949562162934206409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A285495 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285496.P13949562162934206409

/-! ## A285496.P15185810764725737945

`eq[A285498(n+1)+A285495(n+1), A285498(n+1)]+1`
-/

namespace A285496.P15185810764725737945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285498 (n + 1) + A285495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285496.P15185810764725737945

/-! ## A285496.P10486543684265236804

`eq[2, A020639(A285500(n+1))]-n`
-/

namespace A285496.P10486543684265236804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285496.P10486543684265236804

/-! ## A285496.P2656955082197876402

`record[A001057(A285495(n+1)+2*n+1)]`
-/

namespace A285496.P2656955082197876402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A285495 (n + 1) + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285496.P2656955082197876402

/-! ## A285496.P1614617270812344082

`record[A007318(A285495(n+1)+A034856(n+1))]`
-/

namespace A285496.P1614617270812344082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A285495 (n + 1) + A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285496.P1614617270812344082

/-!
# A285497: Positions of 1 in A285495; complement of A285496.

The programs for A285497, there is no canonical definition to state claims against.
-/

/-! ## A285497.P16475714013293607884

`filter[n+1, A285495(#)]`
-/

namespace A285497.P16475714013293607884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285495 (f1 j) = 1) n)

end

end A285497.P16475714013293607884

/-! ## A285497.P12882295763940788582

`eq[A285495(n+1)*A285496(n+1), A285496(n+1)]+1`
-/

namespace A285497.P12882295763940788582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285495 (n + 1) * A285496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285497.P12882295763940788582

/-! ## A285497.P3352590194566018520

`eq[A285495(n+1)*A285499(n+1), A285499(n+1)]+1`
-/

namespace A285497.P3352590194566018520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285495 (n + 1) * A285499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285497.P3352590194566018520

/-! ## A285497.P620566522173791057

`eq[A285495(n+1)*A285500(n+1), A285500(n+1)]+1`
-/

namespace A285497.P620566522173791057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285495 (n + 1) * A285500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A285497.P620566522173791057

/-! ## A285497.P8280464633714951783

`record[A001057(A285499(n+1))]-n`
-/

namespace A285497.P8280464633714951783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A285499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A285497.P8280464633714951783

/-! ## A285497.P1089170726854573674

`A060681(A285499(3*n+2))-n`
-/

namespace A285497.P1089170726854573674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A285499 (3 * n + 2)).toNat - (n : ℤ)

end

end A285497.P1089170726854573674

/-! ## A285497.P835200531191884553

`A001489(n)+record[A001057(A285499(n+1))]`
-/

namespace A285497.P835200531191884553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A285499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285497.P835200531191884553

/-! ## A285497.P5523695197155507937

`A196199(n²)+record[A001057(A285499(n+1))]`
-/

namespace A285497.P5523695197155507937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A285499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (n ^ 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285497.P5523695197155507937

/-!
# A285498: 1-limiting word of the morphism 0->11, 1-> 0010.

The programs for A285498, there is no canonical definition to state claims against.
-/

/-! ## A285498.P4522988589856845471

`char[A285500(n+1)-1]`
-/

namespace A285498.P4522988589856845471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285500 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285498.P4522988589856845471

/-! ## A285498.P17495790453739179971

`char[comp[A285499(n+1)-1]]`
-/

namespace A285498.P17495790453739179971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285499 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285498.P17495790453739179971

/-! ## A285498.P11723691736637502600

`char[A023443(A285500(n+1))]`
-/

namespace A285498.P11723691736637502600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285500 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285498.P11723691736637502600

/-! ## A285498.P6709192329511467569

`char[A023443(comp[A285499(n+1)])]`
-/

namespace A285498.P6709192329511467569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285499 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285498.P6709192329511467569

/-! ## A285498.P5405667556769485256

`A151933(xor(n, A222240(A222242(n))))`
-/

namespace A285498.P5405667556769485256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.xor (n : ℤ) (A222240 (A222242 n).toNat)).toNat

end

end A285498.P5405667556769485256

/-!
# A285499: Positions of 0 in A285498; complement of A285500.

The programs for A285499, there is no canonical definition to state claims against.
-/

/-! ## A285499.P3575320986663385684

`eq[0, A285498(n+1)]+1`
-/

namespace A285499.P3575320986663385684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285499.P3575320986663385684

/-! ## A285499.P10167144452388822662

`lt[char[A285500(n+1)-1], 1]+1`
-/

namespace A285499.P10167144452388822662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285500 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A285499.P10167144452388822662

/-! ## A285499.P5015027233860006838

`eq[0, A285498(A028310(n))]`
-/

namespace A285499.P5015027233860006838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285498 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285499.P5015027233860006838

/-! ## A285499.P13773644289888573311

`lt[n*char[A285500(n+1)], n]`
-/

namespace A285499.P13773644289888573311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285499.P13773644289888573311

/-! ## A285499.P4475374160014556880

`eq[0, A285497(n+1)%2]-n`
-/

namespace A285499.P4475374160014556880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285497 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A285499.P4475374160014556880

/-! ## A285499.P11441076881238052131

`eq[char[A285500(n+1)], A285476(n)]`
-/

namespace A285499.P11441076881238052131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285499.P11441076881238052131

/-! ## A285499.P12358582547622683230

`eq[0, A285498(A008619(A004273(n)))]`
-/

namespace A285499.P12358582547622683230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285498 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285499.P12358582547622683230

/-! ## A285499.P6993609933263443398

`eq[0, A285498(A233583(n+1))]`
-/

namespace A285499.P6993609933263443398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285498 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285499.P6993609933263443398

