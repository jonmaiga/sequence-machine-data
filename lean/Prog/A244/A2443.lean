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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C016
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
# A244300: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 6.

The programs for A244300, there is no canonical definition to state claims against.
-/

/-! ## A244300.P14596951791178684971

`A238707(A167499(n+7)+1)`
-/

namespace A244300.P14596951791178684971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167499 (n + 7) + 1).toNat

end

end A244300.P14596951791178684971

/-! ## A244300.P9186026644762019237

`A238707(A133263(n+8)+4)`
-/

namespace A244300.P9186026644762019237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A133263 (n + 8) + 4).toNat

end

end A244300.P9186026644762019237

/-! ## A244300.P6105908476740031717

`A238707(A000124(n+8)+5)`
-/

namespace A244300.P6105908476740031717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000124 (n + 8) + 5).toNat

end

end A244300.P6105908476740031717

/-! ## A244300.P8355909523017139001

`A238707(A000096(n+7)+7)`
-/

namespace A244300.P8355909523017139001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000096 (n + 7) + 7).toNat

end

end A244300.P8355909523017139001

/-! ## A244300.P16979406636517188129

`A238707(A052905(n+7)-A005843(n+4))`
-/

namespace A244300.P16979406636517188129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A052905 (n + 7) - A005843 (n + 4)).toNat

end

end A244300.P16979406636517188129

/-!
# A244301: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 7.

The programs for A244301, there is no canonical definition to state claims against.
-/

/-! ## A244301.P17456163720713075219

`A238707(A167487(n+8))`
-/

namespace A244301.P17456163720713075219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167487 (n + 8)).toNat

end

end A244301.P17456163720713075219

/-! ## A244301.P1122640193748138538

`A238707(A167614(n+8)+4)`
-/

namespace A244301.P1122640193748138538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167614 (n + 8) + 4).toNat

end

end A244301.P1122640193748138538

/-! ## A244301.P7976869470903963745

`A238707(A133263(n+9)+5)`
-/

namespace A244301.P7976869470903963745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A133263 (n + 9) + 5).toNat

end

end A244301.P7976869470903963745

/-! ## A244301.P3093293264423950422

`A238707(A000124(n+9)+6)`
-/

namespace A244301.P3093293264423950422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000124 (n + 9) + 6).toNat

end

end A244301.P3093293264423950422

/-! ## A244301.P11315632657599176243

`A238707(A167499(n+7)+n+11)`
-/

namespace A244301.P11315632657599176243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167499 (n + 7) + (n + 11 : ℤ)).toNat

end

end A244301.P11315632657599176243

/-!
# A244302: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 8.

The programs for A244302, there is no canonical definition to state claims against.
-/

/-! ## A244302.P16382631797912131518

`A238707(A167499(n+9)+3)`
-/

namespace A244302.P16382631797912131518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167499 (n + 9) + 3).toNat

end

end A244302.P16382631797912131518

/-! ## A244302.P411198654394598208

`A238707(A000124(n+10)+7)`
-/

namespace A244302.P411198654394598208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000124 (n + 10) + 7).toNat

end

end A244302.P411198654394598208

/-! ## A244302.P2781342487753830516

`A238707(A161680(n+11)+8)`
-/

namespace A244302.P2781342487753830516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A161680 (n + 11) + 8).toNat

end

end A244302.P2781342487753830516

/-! ## A244302.P2300548786308711836

`A238707(A055999(n+7)+14)`
-/

namespace A244302.P2300548786308711836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A055999 (n + 7) + 14).toNat

end

end A244302.P2300548786308711836

/-! ## A244302.P15203775211535990479

`A238707(A052905(n+9)-A005843(n+5))`
-/

namespace A244302.P15203775211535990479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A052905 (n + 9) - A005843 (n + 5)).toNat

end

end A244302.P15203775211535990479

/-!
# A244303: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 9.

The programs for A244303, there is no canonical definition to state claims against.
-/

/-! ## A244303.P9564995958358140707

`A238707(A000124(n+11)+8)`
-/

namespace A244303.P9564995958358140707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000124 (n + 11) + 8).toNat

end

end A244303.P9564995958358140707

/-! ## A244303.P14238259623777284114

`A238707(A000217(n+11)+9)`
-/

namespace A244303.P14238259623777284114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000217 (n + 11) + 9).toNat

end

end A244303.P14238259623777284114

/-! ## A244303.P16128672918998443177

`A238707(A167499(n)+A017281(n+7)-2)`
-/

namespace A244303.P16128672918998443177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A167499 n + A017281 (n + 7) - 2).toNat

end

end A244303.P16128672918998443177

/-!
# A244304: Number of standard Young tableaux with n cells such that the lengths of the first and the last row differ by 10.

The programs for A244304, there is no canonical definition to state claims against.
-/

/-! ## A244304.P4868773743581483325

`A238707(A133263(n+12)+8)`
-/

namespace A244304.P4868773743581483325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A133263 (n + 12) + 8).toNat

end

end A244304.P4868773743581483325

/-! ## A244304.P8103414014033220916

`A238707(A000217(n+12)+10)`
-/

namespace A244304.P8103414014033220916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A000217 (n + 12) + 10).toNat

end

end A244304.P8103414014033220916

/-!
# A244305: Number of standard Young tableaux with 2n cells such that the lengths of the first and the last row differ by n.

The programs for A244305, there is no canonical definition to state claims against.
-/

/-! ## A244305.P12605375115454403046

`A238707(∑[4*n])`
-/

namespace A244305.P12605375115454403046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244305.P12605375115454403046

/-! ## A244305.P877035010414187817

`A238707(A046092(n))+A000035(2*n)`
-/

namespace A244305.P877035010414187817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238707 (A046092 n).toNat + A000035 (2 * n)

end

end A244305.P877035010414187817

/-! ## A244305.P4821438381782496801

`A238707(A046092(n))%A001348(n+2)`
-/

namespace A244305.P4821438381782496801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238707 (A046092 n).toNat) (A001348 (n + 2))

end

end A244305.P4821438381782496801

/-! ## A244305.P13875676422493567373

`A014963(A000217(n+7))*A238707(A046092(n))`
-/

namespace A244305.P13875676422493567373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 7)).toNat * A238707 (A046092 n).toNat

end

end A244305.P13875676422493567373

/-!
# A244307: Sum over each antidiagonal of A244306.

The programs for A244307, the canonical program `A244307.P4582279451583344782` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244307 has offset 1).

The definition of A244307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244307.P9420198097204989653

`ogf((2x-x^2+x^4)/(1-4x+4x^2+4x^3-10x^4+4x^5+4x^6-4x^7+x^8))`
-/

namespace A244307.P9420198097204989653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 0, 1] [1, -4, 4, 4, -10, 4, 4, -4, 1] n

end

end A244307.P9420198097204989653

namespace A244307

/-- `ogf((2x-x^2+x^4)/(1-4x+4x^2+4x^3-10x^4+4x^5+4x^6-4x^7+x^8))` -/
def P9420198097204989653.Spec : Prop :=
  ∀ n, P9420198097204989653.a n = A244307 (n + 1)

end A244307

/-! ## A244307.P4582279451583344782

`∑[∑[∑[A080513(n)²-(n+1)]]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244307

/-- `∑[∑[∑[A080513(n)²-(n+1)]]]` -/
def P4582279451583344782.Spec : Prop :=
  ∀ n, P4582279451583344782.a n = A244307 (n + 1)

theorem P4582279451583344782.correct : P4582279451583344782.Spec := by
  intro n
  simp only [A244307, Nat.add_sub_cancel]

end A244307

/-! ## A244307.P10482187351116887167

`∑[∑[∑[A008619(n+1)²-(n+1)]]]`
-/

namespace A244307.P10482187351116887167
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) ^ 2 - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244307.P10482187351116887167

namespace A244307

/-- `∑[∑[∑[A008619(n+1)²-(n+1)]]]` -/
def P10482187351116887167.Spec : Prop :=
  ∀ n, P10482187351116887167.a n = A244307 (n + 1)

end A244307

/-! ## A244307.P3535302397908551280

`∑[∑[∑[(A110654(n)+1)²-(n+1)]]]`
-/

namespace A244307.P3535302397908551280
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 n + 1) ^ 2 - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244307.P3535302397908551280

namespace A244307

/-- `∑[∑[∑[(A110654(n)+1)²-(n+1)]]]` -/
def P3535302397908551280.Spec : Prop :=
  ∀ n, P3535302397908551280.a n = A244307 (n + 1)

end A244307

/-! ## A244307.P3666114263626724072

`∑[∑[∑[A131805(n+1)+1]]]`
-/

namespace A244307.P3666114263626724072
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131805 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244307.P3666114263626724072

namespace A244307

/-- `∑[∑[∑[A131805(n+1)+1]]]` -/
def P3666114263626724072.Spec : Prop :=
  ∀ n, P3666114263626724072.a n = A244307 (n + 1)

end A244307

/-! ## A244307.P11888509631005509424

`∑[∑[A005993(n+1)-A000124(n+1)]]`
-/

namespace A244307.P11888509631005509424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (n + 1) - A000124 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244307.P11888509631005509424

namespace A244307

/-- `∑[∑[A005993(n+1)-A000124(n+1)]]` -/
def P11888509631005509424.Spec : Prop :=
  ∀ n, P11888509631005509424.a n = A244307 (n + 1)

end A244307

/-!
# A244309: a(n) = F(n)^3 - F(n)^2, where F(n) is the n-th Fibonacci number (A000045).

The programs for A244309, the canonical program `A244309.P8886060340627937922` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244309 has offset 0).

The definition of A244309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)^3-A000045(n)²` (program `A244309.P8886060340627937922`, by `A244309.P8886060340627937922.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244309.P6469263423758906196

`ogf((4x^3-2x^4+2x^5)/(1-5x-2x^2+22x^3+4x^4-14x^5+x^6+x^7))`
-/

namespace A244309.P6469263423758906196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 4, -2, 2] [1, -5, -2, 22, 4, -14, 1, 1] n

end

end A244309.P6469263423758906196

namespace A244309

/-- `ogf((4x^3-2x^4+2x^5)/(1-5x-2x^2+22x^3+4x^4-14x^5+x^6+x^7))` -/
def P6469263423758906196.Spec : Prop :=
  ∀ n, P6469263423758906196.a n = A244309 n

end A244309

/-! ## A244309.P8886060340627937922

`A000045(n)^3-A000045(n)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244309

/-- `A000045(n)^3-A000045(n)²` -/
def P8886060340627937922.Spec : Prop :=
  ∀ n, P8886060340627937922.a n = A244309 n

theorem P8886060340627937922.correct : P8886060340627937922.Spec := by
  intro n
  simp only [A244309]

end A244309

/-! ## A244309.P10908042367509660093

`A045991(A000045(n))`
-/

namespace A244309.P10908042367509660093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A000045 n).toNat

end

end A244309.P10908042367509660093

namespace A244309

/-- `A045991(A000045(n))` -/
def P10908042367509660093.Spec : Prop :=
  ∀ n, P10908042367509660093.a n = A244309 n

end A244309

/-! ## A244309.P5991282632772202371

`A056570(n)-A007598(n)`
-/

namespace A244309.P5991282632772202371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n - A007598 n

end

end A244309.P5991282632772202371

namespace A244309

/-- `A056570(n)-A007598(n)` -/
def P5991282632772202371.Spec : Prop :=
  ∀ n, P5991282632772202371.a n = A244309 n

end A244309

/-! ## A244309.P5647206268775332288

`A055389(n)*A191797(n)`
-/

namespace A244309.P5647206268775332288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n * A191797 n

end

end A244309.P5647206268775332288

namespace A244309

/-- `A055389(n)*A191797(n)` -/
def P5647206268775332288.Spec : Prop :=
  ∀ n, P5647206268775332288.a n = A244309 n

end A244309

/-! ## A244309.P15310778935547415126

`A056570(n)-A000045(n)²`
-/

namespace A244309.P15310778935547415126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n - A000045 n ^ 2

end

end A244309.P15310778935547415126

namespace A244309

/-- `A056570(n)-A000045(n)²` -/
def P15310778935547415126.Spec : Prop :=
  ∀ n, P15310778935547415126.a n = A244309 n

end A244309

/-! ## A244309.P5040188634754305519

`lcm(∑[A152163(n)], A007598(n))`
-/

namespace A244309.P5040188634754305519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A007598 n)

end

end A244309.P5040188634754305519

namespace A244309

/-- `lcm(∑[A152163(n)], A007598(n))` -/
def P5040188634754305519.Spec : Prop :=
  ∀ n, (P5040188634754305519.a n : ℤ) = A244309 n

end A244309

/-! ## A244309.P18233033977802835540

`(A000045(n)-1)*A007598(n)`
-/

namespace A244309.P18233033977802835540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n - 1) * A007598 n

end

end A244309.P18233033977802835540

namespace A244309

/-- `(A000045(n)-1)*A007598(n)` -/
def P18233033977802835540.Spec : Prop :=
  ∀ n, P18233033977802835540.a n = A244309 n

theorem P18233033977802835540.correct : P18233033977802835540.Spec := by
  intro n
  simp only [A244309, Nat.add_sub_cancel, A244309.P18233033977802835540.a, A244309.P8886060340627937922.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244309

/-! ## A244309.P8692268055667696442

`(A262184(n)-1)*A000045(n)`
-/

namespace A244309.P8692268055667696442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262184 n - 1) * A000045 n

end

end A244309.P8692268055667696442

namespace A244309

/-- `(A262184(n)-1)*A000045(n)` -/
def P8692268055667696442.Spec : Prop :=
  ∀ n, P8692268055667696442.a n = A244309 n

theorem P8692268055667696442.correct : P8692268055667696442.Spec := by
  intro n
  simp only [A244309, Nat.add_sub_cancel, A244309.P8692268055667696442.a, A244309.P8886060340627937922.a, A000045, A000045.P11838749114346432762.a, A262184, A262184.P505657882986553229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244309

/-! ## A244309.P11204672076255420831

`2*A000045(n)*A191797(n)`
-/

namespace A244309.P11204672076255420831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 n * A191797 n)

end

end A244309.P11204672076255420831

namespace A244309

/-- `2*A000045(n)*A191797(n)` -/
def P11204672076255420831.Spec : Prop :=
  ∀ n, P11204672076255420831.a n = A244309 n

end A244309

/-! ## A244309.P7336248497749210026

`C(A000045(n), 2)*A055389(n)`
-/

namespace A244309.P7336248497749210026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000045 n).toNat 2 : ℤ) * A055389 n

end

end A244309.P7336248497749210026

namespace A244309

/-- `C(A000045(n), 2)*A055389(n)` -/
def P7336248497749210026.Spec : Prop :=
  ∀ n, P7336248497749210026.a n = A244309 n

end A244309

/-! ## A244309.P6552787537629451037

`(A001611(n)-2)*A236191(n)²`
-/

namespace A244309.P6552787537629451037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 2) * A236191 n ^ 2

end

end A244309.P6552787537629451037

namespace A244309

/-- `(A001611(n)-2)*A236191(n)²` -/
def P6552787537629451037.Spec : Prop :=
  ∀ n, P6552787537629451037.a n = A244309 n

end A244309

/-! ## A244309.P13211693204544973495

`abs(A000045(n)²*∑[A152163(n)])`
-/

namespace A244309.P13211693204544973495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A244309.P13211693204544973495

namespace A244309

/-- `abs(A000045(n)²*∑[A152163(n)])` -/
def P13211693204544973495.Spec : Prop :=
  ∀ n, P13211693204544973495.a n = A244309 n

end A244309

/-! ## A244309.P5088773772202656438

`(A324969(n+1)-1)*A007598(n)`
-/

namespace A244309.P5088773772202656438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324969 (n + 1) - 1) * A007598 n

end

end A244309.P5088773772202656438

namespace A244309

/-- `(A324969(n+1)-1)*A007598(n)` -/
def P5088773772202656438.Spec : Prop :=
  ∀ n, P5088773772202656438.a n = A244309 n

end A244309

/-! ## A244309.P6247736895969824452

`A000071(A028310(n))*A007598(n)`
-/

namespace A244309.P6247736895969824452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A028310 n).toNat * A007598 n

end

end A244309.P6247736895969824452

namespace A244309

/-- `A000071(A028310(n))*A007598(n)` -/
def P6247736895969824452.Spec : Prop :=
  ∀ n, P6247736895969824452.a n = A244309 n

end A244309

/-! ## A244309.P14201736155717162070

`(A382845(n)-A095122(n))*A007598(n)`
-/

namespace A244309.P14201736155717162070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A382845 n - A095122 n) * A007598 n

end

end A244309.P14201736155717162070

namespace A244309

/-- `(A382845(n)-A095122(n))*A007598(n)` -/
def P14201736155717162070.Spec : Prop :=
  ∀ n, P14201736155717162070.a n = A244309 n

theorem P14201736155717162070.correct : P14201736155717162070.Spec := by
  intro n
  simp only [A244309, Nat.add_sub_cancel, A244309.P14201736155717162070.a, A244309.P8886060340627937922.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, A095122, A095122.P15035804079666453.a, A382845, A382845.P16632734929146409984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244309

/-! ## A244309.P13029419895311745671

`(A057428(n)+A000045(n))*A000045(n)²`
-/

namespace A244309.P13029419895311745671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057428 n + A000045 n) * A000045 n ^ 2

end

end A244309.P13029419895311745671

namespace A244309

/-- `(A057428(n)+A000045(n))*A000045(n)²` -/
def P13029419895311745671.Spec : Prop :=
  ∀ n, P13029419895311745671.a n = A244309 n

end A244309

/-! ## A244309.P5529339041460429723

`A056570(n)-A066258(n)/A000045(n+1)`
-/

namespace A244309.P5529339041460429723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056570 n : ℚ) - (A066258 n : ℚ) / (A000045 (n + 1) : ℚ)

end

end A244309.P5529339041460429723

namespace A244309

/-- `A056570(n)-A066258(n)/A000045(n+1)` -/
def P5529339041460429723.Spec : Prop :=
  ∀ n, P5529339041460429723.a n = (A244309 n : ℚ)

end A244309

/-! ## A244309.P16633452547766661387

`A292278(n+1)-(A007598(n)+A005968(n+1))`
-/

namespace A244309.P16633452547766661387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292278 (n + 1) - (A007598 n + A005968 (n + 1))

end

end A244309.P16633452547766661387

namespace A244309

/-- `A292278(n+1)-(A007598(n)+A005968(n+1))` -/
def P16633452547766661387.Spec : Prop :=
  ∀ n, P16633452547766661387.a n = A244309 n

end A244309

/-!
# A244310: a(n) = L(n)^3 - L(n)^2, where L(n) is the n-th Lucas number (A000032).

The programs for A244310, the canonical program `A244310.P14646271545363683586` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244310 has offset 0).

The definition of A244310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244310.P12453181053229115495

`ogf((4-20x+10x^2+46x^3+34x^4-16x^5+2x^6)/(1-5x-2x^2+22x^3+4x^4-14x^5+x^6+x^7))`
-/

namespace A244310.P12453181053229115495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -20, 10, 46, 34, -16, 2] [1, -5, -2, 22, 4, -14, 1, 1] n

end

end A244310.P12453181053229115495

namespace A244310

/-- `ogf((4-20x+10x^2+46x^3+34x^4-16x^5+2x^6)/(1-5x-2x^2+22x^3+4x^4-14x^5+x^6+x^7))` -/
def P12453181053229115495.Spec : Prop :=
  ∀ n, P12453181053229115495.a n = A244310 n

end A244310

/-! ## A244310.P7376658289774923933

`A000032(n)^3-A000032(n)²`
-/

namespace A244310.P7376658289774923933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 3 - A000032 n ^ 2

end

end A244310.P7376658289774923933

namespace A244310

/-- `A000032(n)^3-A000032(n)²` -/
def P7376658289774923933.Spec : Prop :=
  ∀ n, P7376658289774923933.a n = A244310 n

end A244310

/-! ## A244310.P14646271545363683586

`A045991(A000032(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244310

/-- `A045991(A000032(n))` -/
def P14646271545363683586.Spec : Prop :=
  ∀ n, P14646271545363683586.a n = A244310 n

theorem P14646271545363683586.correct : P14646271545363683586.Spec := by
  intro n
  simp only [A244310]

end A244310

/-! ## A244310.P8636840336911630777

`abs((floor((-ϕ)^n)+1)^3)-(floor((-ϕ)^n)+1)²`
-/

namespace A244310.P8636840336911630777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 3| - (⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 2

end

end A244310.P8636840336911630777

namespace A244310

/-- `abs((floor((-ϕ)^n)+1)^3)-(floor((-ϕ)^n)+1)²` -/
def P8636840336911630777.Spec : Prop :=
  ∀ n, P8636840336911630777.a n = A244310 n

end A244310

/-! ## A244310.P10824948677770506108

`abs((floor((-ϕ)^n)+1)²-A329723(n+2)^3)`
-/

namespace A244310.P10824948677770506108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 2 - A329723 (n + 2) ^ 3|

end

end A244310.P10824948677770506108

namespace A244310

/-- `abs((floor((-ϕ)^n)+1)²-A329723(n+2)^3)` -/
def P10824948677770506108.Spec : Prop :=
  ∀ n, P10824948677770506108.a n = A244310 n

end A244310

/-! ## A244310.P14277093729451086151

`abs(A075150(n)-A075151(n))`
-/

namespace A244310.P14277093729451086151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075150 n - A075151 n|

end

end A244310.P14277093729451086151

namespace A244310

/-- `abs(A075150(n)-A075151(n))` -/
def P14277093729451086151.Spec : Prop :=
  ∀ n, P14277093729451086151.a n = A244310 n

end A244310

/-! ## A244310.P7386708020773378900

`(A000032(n)-1)*A001254(n)`
-/

namespace A244310.P7386708020773378900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - 1) * A001254 n

end

end A244310.P7386708020773378900

namespace A244310

/-- `(A000032(n)-1)*A001254(n)` -/
def P7386708020773378900.Spec : Prop :=
  ∀ n, P7386708020773378900.a n = A244310 n

end A244310

/-! ## A244310.P13639512113139600302

`lcm(1-A000032(n), A075150(n))`
-/

namespace A244310.P13639512113139600302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A000032 n) (A075150 n)

end

end A244310.P13639512113139600302

namespace A244310

/-- `lcm(1-A000032(n), A075150(n))` -/
def P13639512113139600302.Spec : Prop :=
  ∀ n, (P13639512113139600302.a n : ℤ) = A244310 n

end A244310

/-! ## A244310.P5832178602579880410

`(Δ[A000204(n+1)]-1)*abs(A075150(n))`
-/

namespace A244310.P5832178602579880410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * |A075150 n|

end

end A244310.P5832178602579880410

namespace A244310

/-- `(Δ[A000204(n+1)]-1)*abs(A075150(n))` -/
def P5832178602579880410.Spec : Prop :=
  ∀ n, P5832178602579880410.a n = A244310 n

end A244310

/-! ## A244310.P14931894774777869980

`(A383039(n)-A382409(n))*A001254(n)`
-/

namespace A244310.P14931894774777869980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383039 n - A382409 n) * A001254 n

end

end A244310.P14931894774777869980

namespace A244310

/-- `(A383039(n)-A382409(n))*A001254(n)` -/
def P14931894774777869980.Spec : Prop :=
  ∀ n, P14931894774777869980.a n = A244310 n

end A244310

/-! ## A244310.P10806674212805466910

`A001254(n)/A382409(n)*A382410(n)`
-/

namespace A244310.P10806674212805466910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001254 n : ℚ) / (A382409 n : ℚ) * (A382410 n : ℚ)

end

end A244310.P10806674212805466910

namespace A244310

/-- `A001254(n)/A382409(n)*A382410(n)` -/
def P10806674212805466910.Spec : Prop :=
  ∀ n, P10806674212805466910.a n = (A244310 n : ℚ)

end A244310

/-! ## A244310.P2879240625978927852

`(A212804(n)+A000071(n+1))*A000032(n)²`
-/

namespace A244310.P2879240625978927852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + A000071 (n + 1)) * A000032 n ^ 2

end

end A244310.P2879240625978927852

namespace A244310

/-- `(A212804(n)+A000071(n+1))*A000032(n)²` -/
def P2879240625978927852.Spec : Prop :=
  ∀ n, P2879240625978927852.a n = A244310 n

end A244310

/-! ## A244310.P2579924894592322938

`(A099923(n)-A075155(n))/A000032(n)`
-/

namespace A244310.P2579924894592322938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099923 n - A075155 n : ℚ) / (A000032 n : ℚ)

end

end A244310.P2579924894592322938

namespace A244310

/-- `(A099923(n)-A075155(n))/A000032(n)` -/
def P2579924894592322938.Spec : Prop :=
  ∀ n, P2579924894592322938.a n = (A244310 n : ℚ)

end A244310

/-!
# A244311: Primes (with d digits, say) that generate another prime when acted on by the "standard" superpermutation of length A007489(d) of d elements (cf. comment).

The programs for A244311, there is no canonical definition to state claims against.
-/

/-! ## A244311.P16788770033376534594

`A000015(A332088(n+5))`
-/

namespace A244311.P16788770033376534594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A332088 (n + 5)).toNat

end

end A244311.P16788770033376534594

/-! ## A244311.P15422444308875723801

`filter[A332088(n+1), A266444(#)]`
-/

namespace A244311.P15422444308875723801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A244311.P15422444308875723801

/-! ## A244311.P5706177915078886243

`filter[A332088(n+2), A266789(#)]`
-/

namespace A244311.P5706177915078886243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A244311.P5706177915078886243

/-! ## A244311.P15678231449649237661

`∩[A007959(n+1), A332088(n+1)]`
-/

namespace A244311.P15678231449649237661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244311.P15678231449649237661

/-! ## A244311.P1772149578291477794

`∩[A029742(n+1), A332088(n+1)]`
-/

namespace A244311.P1772149578291477794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244311.P1772149578291477794

/-!
# A244312: Triangle read by rows: T(n,k) is the number of single loop solutions formed by n proper arches (connecting odd vertices to even vertices in the range 1 to 2n) above the x axis, k of which connect an odd vertex to a higher even vertex, with a rainbow of n arches below the x axis.

The programs for A244312, there is no canonical definition to state claims against.
-/

/-! ## A244312.P3888803622152251995

`and(A014683(A001405(n)), A127631(n))`
-/

namespace A244312.P3888803622152251995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014683 (A001405 n).toNat) (A127631 n)

end

end A244312.P3888803622152251995

/-! ## A244312.P248318018574511070

`and(A016897(A081123(n)), A059297(n))`
-/

namespace A244312.P248318018574511070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016897 (A081123 n).toNat) (A059297 n)

end

end A244312.P248318018574511070

/-! ## A244312.P18193745953132121538

`and(A014683(A001405(n)), A205813(n))`
-/

namespace A244312.P18193745953132121538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014683 (A001405 n).toNat) (A205813 n)

end

end A244312.P18193745953132121538

/-! ## A244312.P817292244588422769

`and(A001281(A295951(n)), A127631(n))`
-/

namespace A244312.P817292244588422769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001281 (A295951 n).toNat) (A127631 n)

end

end A244312.P817292244588422769

/-! ## A244312.P13124669174797058967

`and(A166133(A072187(n)), A205813(n))`
-/

namespace A244312.P13124669174797058967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166133 (A072187 n).toNat) (A205813 n)

end

end A244312.P13124669174797058967

/-!
# A244313: Consider a number k with m decimal digits, the prefix p of length m-1 and the suffix s of length m-1. The sequence lists the numbers k such that sigma(k) = sigma(p)*sigma(s) where sigma(x) is the sum of the divisors of x.

The programs for A244313, there is no canonical definition to state claims against.
-/

/-! ## A244313.P16673721254618273378

`A147616(n+1)-A000045(A343434(n+3))`
-/

namespace A244313.P16673721254618273378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147616 (n + 1) - A000045 (A343434 (n + 3)).toNat

end

end A244313.P16673721254618273378

/-!
# A244314: Nonnegative integers m such that the Semigreedy Catalan representation A244159(m) contains at least one zero.

The programs for A244314, there is no canonical definition to state claims against.
-/

/-! ## A244314.P18251997184630141437

`lt[A244233(n), acot(n)]`
-/

namespace A244314.P18251997184630141437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A244314.P18251997184630141437

/-! ## A244314.P18326760406801498228

`eq[A000007(n), A244233(n)]`
-/

namespace A244314.P18326760406801498228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P18326760406801498228

/-! ## A244314.P3355613508326220302

`eq[A117940(n), A244233(n)]`
-/

namespace A244314.P3355613508326220302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117940 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P3355613508326220302

/-! ## A244314.P6242007054516040639

`eq[A130706(n), A244233(n)]`
-/

namespace A244314.P6242007054516040639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P6242007054516040639

/-! ## A244314.P17116220865826830184

`eq[A169585(n), A244233(n)]`
-/

namespace A244314.P17116220865826830184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P17116220865826830184

/-! ## A244314.P8486431977081502532

`eq[A244233(n), A285476(n)]`
-/

namespace A244314.P8486431977081502532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P8486431977081502532

/-! ## A244314.P11967090967435061911

`eq[A151672(n)², A244233(n)]`
-/

namespace A244314.P11967090967435061911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151672 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P11967090967435061911

/-! ## A244314.P14777139655920105841

`eq[A154955(n+1), A244233(n)]`
-/

namespace A244314.P14777139655920105841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P14777139655920105841

/-! ## A244314.P12373011813176075722

`eq[A244233(n), A294106(n)]`
-/

namespace A244314.P12373011813176075722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P12373011813176075722

/-! ## A244314.P2189563577560135050

`eq[A000041(n), A000041(A244233(n)+n)]`
-/

namespace A244314.P2189563577560135050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A244233 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P2189563577560135050

/-! ## A244314.P8596008349549797662

`eq[A161680(n), A161680(A244233(n)+n)]`
-/

namespace A244314.P8596008349549797662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A244233 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244314.P8596008349549797662

/-!
# A244315: a(0) = 0, after which, if A176137(n) = 1, a(n) = A007814(A244230(n)), otherwise a(n) = a(n-A197433(A244230(n)-1)).

The programs for A244315, there is no canonical definition to state claims against.
-/

/-! ## A244315.P17132047289125364401

`A244316(n)-ceil(abs(sin(n)))`
-/

namespace A244315.P17132047289125364401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - ⌈|Real.sin (n : ℝ)|⌉

end

end A244315.P17132047289125364401

/-! ## A244315.P16541292935257923671

`A244316(n)+A057428(n)`
-/

namespace A244315.P16541292935257923671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n + A057428 n

end

end A244315.P16541292935257923671

/-! ## A244315.P16795810170500952396

`A244316(n)-A057427(n)`
-/

namespace A244315.P16795810170500952396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - A057427 n

end

end A244315.P16795810170500952396

/-! ## A244315.P10232673379628543115

`(A244316(n)-1)%A010017(n)`
-/

namespace A244315.P10232673379628543115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244316 n - 1) (A010017 n)

end

end A244315.P10232673379628543115

/-! ## A244315.P11652106575387092673

`floor(A244316(n)-n/A142952(n+1))`
-/

namespace A244315.P11652106575387092673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A244316 n : ℚ) - (n : ℚ) / (A142952 (n + 1) : ℚ)⌋

end

end A244315.P11652106575387092673

/-! ## A244315.P6658333280397476996

`A244316(n)-A236859(A081290(n))`
-/

namespace A244315.P6658333280397476996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - A236859 (A081290 n).toNat

end

end A244315.P6658333280397476996

/-! ## A244315.P7561387170715578780

`A244316(n)-A030308(A244316(n)²)`
-/

namespace A244315.P7561387170715578780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - A030308 (A244316 n ^ 2).toNat

end

end A244315.P7561387170715578780

/-! ## A244315.P9461394923418404761

`A244316(n)-A211666(A244316(n)+1)`
-/

namespace A244315.P9461394923418404761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - A211666 (A244316 n + 1).toNat

end

end A244315.P9461394923418404761

/-! ## A244315.P799614282896932533

`A244316(n)-A323022(A244316(n)+1)`
-/

namespace A244315.P799614282896932533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - A323022 (A244316 n + 1).toNat

end

end A244315.P799614282896932533

/-! ## A244315.P5933106181624796190

`A244316(n)-A178489(A244316(2*n))`
-/

namespace A244315.P5933106181624796190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - A178489 (A244316 (2 * n)).toNat

end

end A244315.P5933106181624796190

/-! ## A244315.P10792857446337288718

`A244316(n)-A057428(A244316(n)²)²`
-/

namespace A244315.P10792857446337288718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - A057428 (A244316 n ^ 2).toNat ^ 2

end

end A244315.P10792857446337288718

/-! ## A244315.P7816895486148482860

`A244316(n)-A244231(A197433(n))`
-/

namespace A244315.P7816895486148482860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 n - A244231 (A197433 n).toNat

end

end A244315.P7816895486148482860

/-!
# A244316: a(0) = 0, after which, if A176137(n) = 1, a(n) = A001511(A244230(n)), otherwise a(n) = a(n-A197433(A244230(n)-1)).

The programs for A244316, there is no canonical definition to state claims against.
-/

/-! ## A244316.P16736285166706391388

`ceil(A244315(n)+abs(sin(n)))`
-/

namespace A244316.P16736285166706391388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A244315 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A244316.P16736285166706391388

/-! ## A244316.P12230042000400439438

`A244315(n)+A057427(n)`
-/

namespace A244316.P12230042000400439438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n + A057427 n

end

end A244316.P12230042000400439438

/-! ## A244316.P4391222712865644356

`A244315(n)-A057428(n)`
-/

namespace A244316.P4391222712865644356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n - A057428 n

end

end A244316.P4391222712865644356

/-! ## A244316.P17081541631876288928

`A244315(n)+and(1, A000040(n+1))`
-/

namespace A244316.P17081541631876288928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n + Int.land 1 (A000040 (n + 1))

end

end A244316.P17081541631876288928

/-! ## A244316.P17999955359973837999

`A244315(n)+and(1, A045315(n+1))`
-/

namespace A244316.P17999955359973837999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n + Int.land 1 (A045315 (n + 1))

end

end A244316.P17999955359973837999

/-! ## A244316.P4785618709406891683

`A244315(n)+A236859(A081290(n))`
-/

namespace A244316.P4785618709406891683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n + A236859 (A081290 n).toNat

end

end A244316.P4785618709406891683

/-! ## A244316.P11528374745992222224

`A081288(n)+A244315(n)-A244160(n)`
-/

namespace A244316.P11528374745992222224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081288 n + (A244315 n - A244160 n)

end

end A244316.P11528374745992222224

/-! ## A244316.P16778030189846482042

`A244315(n)-A008683(A039915(n+1)+1)`
-/

namespace A244316.P16778030189846482042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n - A008683 (A039915 (n + 1) + 1).toNat

end

end A244316.P16778030189846482042

/-! ## A244316.P8234148042981637289

`A244315(n)+and(1, p?[A000267(n)])`
-/

namespace A244316.P8234148042981637289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n + Int.land 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A244316.P8234148042981637289

/-! ## A244316.P8392965801661236726

`A244315(n)+A244231(A197433(n))`
-/

namespace A244316.P8392965801661236726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n + A244231 (A197433 n).toNat

end

end A244316.P8392965801661236726

/-! ## A244316.P10885402625722126698

`A244315(n)+1-A010815(A045315(n+2))`
-/

namespace A244316.P10885402625722126698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244315 n + (1 - A010815 (A045315 (n + 2)).toNat)

end

end A244316.P10885402625722126698

/-!
# A244317: n occurs A014138(n) times.

The programs for A244317, the canonical program `A244317.P585579045267430053` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244317 has offset 0).

The definition of A244317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244317.P585579045267430053

`∑[char[A294790(n)]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A244317

/-- `∑[char[A294790(n)]]` -/
def P585579045267430053.Spec : Prop :=
  ∀ n, (P585579045267430053.a n : ℤ) = A244317 n

theorem P585579045267430053.correct : P585579045267430053.Spec := by
  intro n
  simp only [A244317]

end A244317

/-! ## A244317.P10701322647379727656

`comp[A014140(n)]-n`
-/

namespace A244317.P10701322647379727656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014140 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A244317.P10701322647379727656

namespace A244317

/-- `comp[A014140(n)]-n` -/
def P10701322647379727656.Spec : Prop :=
  ∀ n, P10701322647379727656.a n = A244317 n

end A244317

/-! ## A244317.P2540411804421328055

`comp[∑[A014137(n)]]-n`
-/

namespace A244317.P2540411804421328055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A244317.P2540411804421328055

namespace A244317

/-- `comp[∑[A014137(n)]]-n` -/
def P2540411804421328055.Spec : Prop :=
  ∀ n, P2540411804421328055.a n = A244317 n

end A244317

/-! ## A244317.P17623623807118434967

`comp[∑[∑[A000108(n)]]]-n`
-/

namespace A244317.P17623623807118434967
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A244317.P17623623807118434967

namespace A244317

/-- `comp[∑[∑[A000108(n)]]]-n` -/
def P17623623807118434967.Spec : Prop :=
  ∀ n, P17623623807118434967.a n = A244317 n

end A244317

/-! ## A244317.P5144302072204995622

`comp[∑[A014138(n)+1]]-n`
-/

namespace A244317.P5144302072204995622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A244317.P5144302072204995622

namespace A244317

/-- `comp[∑[A014138(n)+1]]-n` -/
def P5144302072204995622.Spec : Prop :=
  ∀ n, P5144302072204995622.a n = A244317 n

end A244317

/-! ## A244317.P16384892994677668995

`A244160(A244314(n)-n)`
-/

namespace A244317.P16384892994677668995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (A244314 n - (n : ℤ)).toNat

end

end A244317.P16384892994677668995

namespace A244317

/-- `A244160(A244314(n)-n)` -/
def P16384892994677668995.Spec : Prop :=
  ∀ n, P16384892994677668995.a n = A244317 n

end A244317

/-! ## A244317.P9230049086534856856

`A244215(A081290(A244314(n)-n))`
-/

namespace A244317.P9230049086534856856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 (A081290 (A244314 n - (n : ℤ)).toNat).toNat

end

end A244317.P9230049086534856856

namespace A244317

/-- `A244215(A081290(A244314(n)-n))` -/
def P9230049086534856856.Spec : Prop :=
  ∀ n, P9230049086534856856.a n = A244317 n

end A244317

/-! ## A244317.P15327211805060108242

`A130260(A112318(n))`
-/

namespace A244317.P15327211805060108242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A112318 n).toNat

end

end A244317.P15327211805060108242

namespace A244317

/-- `A130260(A112318(n))` -/
def P15327211805060108242.Spec : Prop :=
  ∀ n, P15327211805060108242.a n = A244317 n

end A244317

/-! ## A244317.P3863368973941819962

`A000193(A090848(n))`
-/

namespace A244317.P3863368973941819962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A090848 n).toNat

end

end A244317.P3863368973941819962

namespace A244317

/-- `A000193(A090848(n))` -/
def P3863368973941819962.Spec : Prop :=
  ∀ n, P3863368973941819962.a n = A244317 n

end A244317

/-!
# A244318: Product of digits+1 of n in Greedy Catalan Base (A014418).

The programs for A244318, there is no canonical definition to state claims against.
-/

/-! ## A244318.P8588143143131098530

`∏{digits}[A014418(n), #+1]`
-/

namespace A244318.P8588143143131098530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A244318.P8588143143131098530

/-! ## A244318.P3464838282131917677

`A268444(A244161(n))`
-/

namespace A244318.P3464838282131917677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A244161 n).toNat

end

end A244318.P3464838282131917677

/-! ## A244318.P8042120536388134796

`∏{digits}[A007090(A244161(n)), A089898(#)]`
-/

namespace A244318.P8042120536388134796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A244161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A089898 x).prod

end

end A244318.P8042120536388134796

/-! ## A244318.P15141270657693975485

`A006047(A014419(n))`
-/

namespace A244318.P15141270657693975485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A014419 n).toNat

end

end A244318.P15141270657693975485

/-! ## A244318.P14144339282862266815

`∏{digits}[A007089(A014419(n)), A089898(#)]`
-/

namespace A244318.P14144339282862266815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A014419 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A089898 x).prod

end

end A244318.P14144339282862266815

/-! ## A244318.P18248244677653055119

`∏{digits}[A007089(A014419(n)), A268444(#)]`
-/

namespace A244318.P18248244677653055119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A014419 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A268444 x).prod

end

end A244318.P18248244677653055119

/-! ## A244318.P6491145636240914712

`∏{digits}[A007089(A014419(n)), A276086(#)]`
-/

namespace A244318.P6491145636240914712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A014419 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A276086 x).prod

end

end A244318.P6491145636240914712

/-!
# A244319: Self-inverse permutation of natural numbers: a(1) = 1, a(2n) = A003961(1+a(A064989(2n-1))), a(2n+1) = 1+A003961(a(A064989(2n+1)-1)).

The programs for A244319, there is no canonical definition to state claims against.
-/

/-! ## A244319.P16459004494417790959

`A245609(A048673(n+1))`
-/

namespace A244319.P16459004494417790959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245609 (A048673 (n + 1)).toNat

end

end A244319.P16459004494417790959

/-! ## A244319.P11786799338147693079

`A064216(A245610(n+1))`
-/

namespace A244319.P11786799338147693079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A245610 (n + 1)).toNat

end

end A244319.P11786799338147693079

/-! ## A244319.P484666721326045003

`A245609(A108228(n+1)+1)`
-/

namespace A244319.P484666721326045003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245609 (A108228 (n + 1) + 1).toNat

end

end A244319.P484666721326045003

/-! ## A244319.P4613253451563747739

`A245609(A243501(n+1)/2)`
-/

namespace A244319.P4613253451563747739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245609 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A244319.P4613253451563747739

/-! ## A244319.P17171557906463182095

`A245609(ceil(A003961(n+1)/2))`
-/

namespace A244319.P17171557906463182095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245609 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A244319.P17171557906463182095

/-! ## A244319.P14010525159915313496

`A245609(round(A003961(n+1)/2))`
-/

namespace A244319.P14010525159915313496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245609 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A244319.P14010525159915313496

/-! ## A244319.P2101745473058039838

`A245609((A003961(n+1)+1)/2)`
-/

namespace A244319.P2101745473058039838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245609 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A244319.P2101745473058039838

/-! ## A244319.P3746408575473883117

`A245609(A003602(A003961(n+1)))`
-/

namespace A244319.P3746408575473883117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245609 (A003602 (A003961 (n + 1)).toNat).toNat

end

end A244319.P3746408575473883117

/-! ## A244319.P13781152584145920575

`A245609(A245608(A245605(n+1)))`
-/

namespace A244319.P13781152584145920575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245609 (A245608 (A245605 (n + 1)).toNat).toNat

end

end A244319.P13781152584145920575

/-!
# A244320: a(n) = n - A014420(n).

The programs for A244320, the canonical program `A244320.P4637654026684033109` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244320 has offset 0).

The definition of A244320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014420, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244320.P4637654026684033109

`n-A014420(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A244320

/-- `n-A014420(n)` -/
def P4637654026684033109.Spec : Prop :=
  ∀ n, P4637654026684033109.a n = A244320 n

theorem P4637654026684033109.correct : P4637654026684033109.Spec := by
  intro n
  simp only [A244320]

end A244320

/-! ## A244320.P8972603945431032213

`n-∑{digits}[A014418(n), #]`
-/

namespace A244320.P8972603945431032213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A244320.P8972603945431032213

namespace A244320

/-- `n-∑{digits}[A014418(n), #]` -/
def P8972603945431032213.Spec : Prop :=
  ∀ n, P8972603945431032213.a n = A244320 n

end A244320

/-! ## A244320.P10088959815132732489

`-(A014420(n)+A001489(n))`
-/

namespace A244320.P10088959815132732489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A014420 n + A001489 n)

end

end A244320.P10088959815132732489

namespace A244320

/-- `-(A014420(n)+A001489(n))` -/
def P10088959815132732489.Spec : Prop :=
  ∀ n, P10088959815132732489.a n = A244320 n

theorem P10088959815132732489.correct : P10088959815132732489.Spec := by
  intro n
  simp only [A244320, Nat.add_sub_cancel, A244320.P10088959815132732489.a, A244320.P4637654026684033109.a, A001489, A001489.P15233530513763566776.a, A014420, A014420.P10947574684232609405.a, A081290, A081290.P17861651078763600075.f2, A081290.P17861651078763600075.f1, A081290.P17861651078763600075.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244320

/-! ## A244320.P18441596982369782996

`A196199(A014420(n)²)+n`
-/

namespace A244320.P18441596982369782996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A014420 n ^ 2).toNat + (n : ℤ)

end

end A244320.P18441596982369782996

namespace A244320

/-- `A196199(A014420(n)²)+n` -/
def P18441596982369782996.Spec : Prop :=
  ∀ n, P18441596982369782996.a n = A244320 n

end A244320

/-! ## A244320.P4287306001695954391

`n-A027615(A244161(n))`
-/

namespace A244320.P4287306001695954391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A027615 (A244161 n).toNat

end

end A244320.P4287306001695954391

namespace A244320

/-- `n-A027615(A244161(n))` -/
def P4287306001695954391.Spec : Prop :=
  ∀ n, P4287306001695954391.a n = A244320 n

end A244320

/-! ## A244320.P12578857802077265448

`A025581(A014420(n)+A000217(n))`
-/

namespace A244320.P12578857802077265448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A014420 n + A000217 n).toNat

end

end A244320.P12578857802077265448

namespace A244320

/-- `A025581(A014420(n)+A000217(n))` -/
def P12578857802077265448.Spec : Prop :=
  ∀ n, P12578857802077265448.a n = A244320 n

end A244320

/-! ## A244320.P12921034114832820420

`n-A053735(A014419(n))`
-/

namespace A244320.P12921034114832820420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053735 (A014419 n).toNat

end

end A244320.P12921034114832820420

namespace A244320

/-- `n-A053735(A014419(n))` -/
def P12921034114832820420.Spec : Prop :=
  ∀ n, P12921034114832820420.a n = A244320 n

end A244320

/-! ## A244320.P2264076549660803015

`n-A326746(A014418(n))`
-/

namespace A244320.P2264076549660803015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326746 (A014418 n).toNat

end

end A244320.P2264076549660803015

namespace A244320

/-- `n-A326746(A014418(n))` -/
def P2264076549660803015.Spec : Prop :=
  ∀ n, P2264076549660803015.a n = A244320 n

end A244320

/-!
# A244321: Permutation of natural numbers: a(1)=1; thereafter, if n is k-th number whose greatest prime factor has an odd index [i.e., n = A244991(k)], a(n) = 2*a(k), otherwise, when n is k-th number whose greatest prime factor has an even index [i.e., n = A244990(1+k)], a(n) = 1+(2*a(k)).

The programs for A244321, there is no canonical definition to state claims against.
-/

/-! ## A244321.P17052366431017808612

`A245603(A245614(n+1))`
-/

namespace A244321.P17052366431017808612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245603 (A245614 (n + 1)).toNat

end

end A244321.P17052366431017808612

/-! ## A244321.P4242544802899631235

`A244322(A244322(A244322(A235491(A235491(n+1)))))`
-/

namespace A244321.P4242544802899631235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244322 (A244322 (A244322 (A235491 (A235491 (n + 1)).toNat).toNat).toNat).toNat

end

end A244321.P4242544802899631235

/-!
# A244322: Permutation of natural numbers: a(1)=1, a(2n) = A244991(a(n)), a(2n+1) = A244990(1+a(n)).

The programs for A244322, there is no canonical definition to state claims against.
-/

/-! ## A244322.P13383334963574717817

`A245613(A245604(n+1))`
-/

namespace A244322.P13383334963574717817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245613 (A245604 (n + 1)).toNat

end

end A244322.P13383334963574717817

/-! ## A244322.P3829930943167025788

`Δ[A284582(A026790(n))+∑[n]]`
-/

namespace A244322.P3829930943167025788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284582 (A026790 n).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244322.P3829930943167025788

/-!
# A244323: Iterates of A234742, starting from value a(0) = 23, with a(1) = A234742(a(0)), a(2) = A234742(a(1)), etc.

The programs for A244323, there is no canonical definition to state claims against.
-/

/-! ## A244323.P1390834534394152402

`A234742(a(n-1))` with `a(0)=23`
-/

namespace A244323.P1390834534394152402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23] fun n a =>
  A234742 (a (n - 1)).toNat

end

end A244323.P1390834534394152402

/-!
# A244324: Numbers m such that sigma(m) == (m+1)/2 (mod m+1).

The programs for A244324, there is no canonical definition to state claims against.
-/

/-! ## A244324.P11293477166443358064

`lt[A024816(n+1)%(n+2), 1]+1`
-/

namespace A244324.P11293477166443358064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (n + 1)) (n + 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A244324.P11293477166443358064

/-! ## A244324.P1982896124127126420

`lt[A000010(n+1), gcd(n+2, A024816(n+1))]+1`
-/

namespace A244324.P1982896124127126420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A024816 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A244324.P1982896124127126420

/-! ## A244324.P15393865463863713707

`eq[A000034(n), A339966(A028310(n))]`
-/

namespace A244324.P15393865463863713707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244324.P15393865463863713707

/-! ## A244324.P13024098170524643274

`eq[A010149(n), A339966(A028310(n))]`
-/

namespace A244324.P13024098170524643274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244324.P13024098170524643274

/-! ## A244324.P1861245874100629260

`eq[A017665(n+1), A145051(n+1)]+1`
-/

namespace A244324.P1861245874100629260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A244324.P1861245874100629260

/-!
# A244325: a(n) = floor(antisigma(n) / n), where antisigma(n) = A024816(n) = the sum of the non-divisors of n that are between 1 and n.

The programs for A244325, the canonical program `A244325.P7029042646841468854` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244325 has offset 1).

The definition of A244325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244325.P2688437979587498052

`floor(A024816(n+1)/(n+1))`
-/

namespace A244325.P2688437979587498052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024816 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A244325.P2688437979587498052

namespace A244325

/-- `floor(A024816(n+1)/(n+1))` -/
def P2688437979587498052.Spec : Prop :=
  ∀ n, P2688437979587498052.a n = A244325 (n + 1)

end A244325

/-! ## A244325.P7029042646841468854

`floor((∑[n]-A001065(n+1))/(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244325

/-- `floor((∑[n]-A001065(n+1))/(n+1))` -/
def P7029042646841468854.Spec : Prop :=
  ∀ n, P7029042646841468854.a n = A244325 (n + 1)

theorem P7029042646841468854.correct : P7029042646841468854.Spec := by
  intro n
  simp only [A244325, Nat.add_sub_cancel]

end A244325

/-! ## A244325.P16256636390916803204

`floor((∑[n+1]-A000203(n+1))/(n+1))`
-/

namespace A244325.P16256636390916803204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000203 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A244325.P16256636390916803204

namespace A244325

/-- `floor((∑[n+1]-A000203(n+1))/(n+1))` -/
def P16256636390916803204.Spec : Prop :=
  ∀ n, P16256636390916803204.a n = A244325 (n + 1)

end A244325

/-! ## A244325.P12216656123604158554

`floor(A066859(n+1)/A064987(n+1))`
-/

namespace A244325.P12216656123604158554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066859 (n + 1) : ℚ) / (A064987 (n + 1) : ℚ)⌋

end

end A244325.P12216656123604158554

namespace A244325

/-- `floor(A066859(n+1)/A064987(n+1))` -/
def P12216656123604158554.Spec : Prop :=
  ∀ n, P12216656123604158554.a n = A244325 (n + 1)

end A244325

/-! ## A244325.P603466899301763700

`(A024816(n+1)-A229110(n+1))/(n+1)`
-/

namespace A244325.P603466899301763700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024816 (n + 1) - A229110 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A244325.P603466899301763700

namespace A244325

/-- `(A024816(n+1)-A229110(n+1))/(n+1)` -/
def P603466899301763700.Spec : Prop :=
  ∀ n, P603466899301763700.a n = (A244325 (n + 1) : ℚ)

end A244325

/-!
# A244326: Numbers k such that floor(antisigma(k)/k) < floor(antisigma(k - 1)/(k - 1)).

The programs for A244326, the canonical program `A244326.P16585438140887289108` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244326 has offset 1).

The definition of A244326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244326.P9791298426588625045

`lt[n, A318505(abs(1-n)+1)]`
-/

namespace A244326.P9791298426588625045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A244326.P9791298426588625045

namespace A244326

/-- `lt[n, A318505(abs(1-n)+1)]` -/
def P9791298426588625045.Spec : Prop :=
  ∀ n, (P9791298426588625045.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P12701568054259109226

`lt[n+1, A318505(n+1)]+1`
-/

namespace A244326.P12701568054259109226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A244326.P12701568054259109226

namespace A244326

/-- `lt[n+1, A318505(n+1)]+1` -/
def P12701568054259109226.Spec : Prop :=
  ∀ n, (P12701568054259109226.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P16585438140887289108

`lt[5*(n+1)/2, A000203(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244326

/-- `lt[5*(n+1)/2, A000203(n+1)]+1` -/
def P16585438140887289108.Spec : Prop :=
  ∀ n, (P16585438140887289108.a n : ℤ) = A244326 (n + 1)

theorem P16585438140887289108.correct : P16585438140887289108.Spec := by
  intro n
  simp only [A244326, Nat.add_sub_cancel]

end A244326

/-! ## A244326.P5286699090068451601

`2*lt[A004277(n), A318505(A004277(n))]`
-/

namespace A244326.P5286699090068451601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244326.P5286699090068451601

namespace A244326

/-- `2*lt[A004277(n), A318505(A004277(n))]` -/
def P5286699090068451601.Spec : Prop :=
  ∀ n, (P5286699090068451601.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P11538828079442021323

`lt[n/2+n+2, A001065(n+1)]+1`
-/

namespace A244326.P11538828079442021323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + (n + 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A244326.P11538828079442021323

namespace A244326

/-- `lt[n/2+n+2, A001065(n+1)]+1` -/
def P11538828079442021323.Spec : Prop :=
  ∀ n, (P11538828079442021323.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P15196880590933188972

`lt[2*A033885(A028310(n)), n]`
-/

namespace A244326.P15196880590933188972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033885 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A244326.P15196880590933188972

namespace A244326

/-- `lt[2*A033885(A028310(n)), n]` -/
def P15196880590933188972.Spec : Prop :=
  ∀ n, (P15196880590933188972.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P11175470461385334172

`lt[A008619(n), A033880(n+1)]+1`
-/

namespace A244326.P11175470461385334172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244326.P11175470461385334172

namespace A244326

/-- `lt[A008619(n), A033880(n+1)]+1` -/
def P11175470461385334172.Spec : Prop :=
  ∀ n, (P11175470461385334172.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P15012941481942746822

`lt[A033885(n+1), A008619(n)]+1`
-/

namespace A244326.P15012941481942746822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244326.P15012941481942746822

namespace A244326

/-- `lt[A033885(n+1), A008619(n)]+1` -/
def P15012941481942746822.Spec : Prop :=
  ∀ n, (P15012941481942746822.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P10933891357421678870

`lt[A065033(n), A033880(n+1)]+1`
-/

namespace A244326.P10933891357421678870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244326.P10933891357421678870

namespace A244326

/-- `lt[A065033(n), A033880(n+1)]+1` -/
def P10933891357421678870.Spec : Prop :=
  ∀ n, (P10933891357421678870.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P18142536684562593166

`lt[A033885(n+1), A065033(n)]+1`
-/

namespace A244326.P18142536684562593166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244326.P18142536684562593166

namespace A244326

/-- `lt[A033885(n+1), A065033(n)]+1` -/
def P18142536684562593166.Spec : Prop :=
  ∀ n, (P18142536684562593166.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P1472231915329486544

`A020725(lt[2*A033885(n+1), n])`
-/

namespace A244326.P1472231915329486544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033885 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A244326.P1472231915329486544

namespace A244326

/-- `A020725(lt[2*A033885(n+1), n])` -/
def P1472231915329486544.Spec : Prop :=
  ∀ n, P1472231915329486544.a n = A244326 (n + 1)

end A244326

/-! ## A244326.P58418842503703284

`A020725(lt[A033885(n+1), n/2])`
-/

namespace A244326.P58418842503703284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A244326.P58418842503703284

namespace A244326

/-- `A020725(lt[A033885(n+1), n/2])` -/
def P58418842503703284.Spec : Prop :=
  ∀ n, P58418842503703284.a n = A244326 (n + 1)

end A244326

/-! ## A244326.P3260224266823453745

`lt[A285109(n+1), A326061(n+1)]+1`
-/

namespace A244326.P3260224266823453745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A244326.P3260224266823453745

namespace A244326

/-- `lt[A285109(n+1), A326061(n+1)]+1` -/
def P3260224266823453745.Spec : Prop :=
  ∀ n, (P3260224266823453745.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P10299832318617201131

`lt[A001281(n), A033880(A028310(n))]`
-/

namespace A244326.P10299832318617201131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244326.P10299832318617201131

namespace A244326

/-- `lt[A001281(n), A033880(A028310(n))]` -/
def P10299832318617201131.Spec : Prop :=
  ∀ n, (P10299832318617201131.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P17259031672796564987

`lt[A026741(n), A033880(A028310(n))]`
-/

namespace A244326.P17259031672796564987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244326.P17259031672796564987

namespace A244326

/-- `lt[A026741(n), A033880(A028310(n))]` -/
def P17259031672796564987.Spec : Prop :=
  ∀ n, (P17259031672796564987.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P5240446754704581303

`lt[A033885(A028310(n)), A065033(n)]`
-/

namespace A244326.P5240446754704581303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244326.P5240446754704581303

namespace A244326

/-- `lt[A033885(A028310(n)), A065033(n)]` -/
def P5240446754704581303.Spec : Prop :=
  ∀ n, (P5240446754704581303.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P17195209736589998288

`lt[A033885(A028310(n)), A123108(n)]`
-/

namespace A244326.P17195209736589998288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244326.P17195209736589998288

namespace A244326

/-- `lt[A033885(A028310(n)), A123108(n)]` -/
def P17195209736589998288.Spec : Prop :=
  ∀ n, (P17195209736589998288.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P14682216224335874058

`lt[A028242(n), A237588(A028310(n))]`
-/

namespace A244326.P14682216224335874058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244326.P14682216224335874058

namespace A244326

/-- `lt[A028242(n), A237588(A028310(n))]` -/
def P14682216224335874058.Spec : Prop :=
  ∀ n, (P14682216224335874058.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P1724877633692908256

`lt[A242112(n), A237588(A028310(n))]`
-/

namespace A244326.P1724877633692908256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A244326.P1724877633692908256

namespace A244326

/-- `lt[A242112(n), A237588(A028310(n))]` -/
def P1724877633692908256.Spec : Prop :=
  ∀ n, (P1724877633692908256.a n : ℤ) = A244326 (n + 1)

end A244326

/-! ## A244326.P18106833151858770880

`A020725(lt[A008619(n), A033880(n+1)])`
-/

namespace A244326.P18106833151858770880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A244326.P18106833151858770880

namespace A244326

/-- `A020725(lt[A008619(n), A033880(n+1)])` -/
def P18106833151858770880.Spec : Prop :=
  ∀ n, P18106833151858770880.a n = A244326 (n + 1)

end A244326

/-!
# A244327: a(n) = floor((n*(n+1)/2) / sigma(n)) = floor(A000217(n) / A000203(n)).

The programs for A244327, the canonical program `A244327.P16833651396642504869` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244327 has offset 1).

The definition of A244327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000217(n+1)/A000203(n+1))` (program `A244327.P16833651396642504869`, by `A244327.P16833651396642504869.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244327.P2349995396096830584

`floor((n+1)*(n+2)/2/A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244327.P2349995396096830584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * (n + 2) : ℚ) / 2 / (A000203 (n + 1) : ℚ)⌋

end

end A244327.P2349995396096830584

namespace A244327

/-- `floor((n+1)*(n+2)/2/A000203(n+1))` -/
def P2349995396096830584.Spec : Prop :=
  ∀ n, P2349995396096830584.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P16833651396642504869

`floor(A000217(n+1)/A000203(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244327

/-- `floor(A000217(n+1)/A000203(n+1))` -/
def P16833651396642504869.Spec : Prop :=
  ∀ n, P16833651396642504869.a n = A244327 (n + 1)

theorem P16833651396642504869.correct : P16833651396642504869.Spec := by
  intro n
  simp only [A244327, Nat.add_sub_cancel]

end A244327

/-! ## A244327.P15962709118495759619

`floor(∑[n+1]/∑{d}[n+1, #])`
-/

namespace A244327.P15962709118495759619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)⌋

end

end A244327.P15962709118495759619

namespace A244327

/-- `floor(∑[n+1]/∑{d}[n+1, #])` -/
def P15962709118495759619.Spec : Prop :=
  ∀ n, P15962709118495759619.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P5474811833744668854

`A244329(n+1)+1`
-/

namespace A244327.P5474811833744668854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244329 (n + 1) + 1

end

end A244327.P5474811833744668854

namespace A244327

/-- `A244329(n+1)+1` -/
def P5474811833744668854.Spec : Prop :=
  ∀ n, P5474811833744668854.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P6419822126874425624

`floor(∑[n+1]/Δ[A160664(n)])`
-/

namespace A244327.P6419822126874425624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (f2 (n + 1) - f2 n : ℚ)⌋

end

end A244327.P6419822126874425624

namespace A244327

/-- `floor(∑[n+1]/Δ[A160664(n)])` -/
def P6419822126874425624.Spec : Prop :=
  ∀ n, P6419822126874425624.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P5485047045053554179

`floor(∑[n+1]/abs(A143348(n+1)))`
-/

namespace A244327.P5485047045053554179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (|A143348 (n + 1)| : ℚ)⌋

end

end A244327.P5485047045053554179

namespace A244327

/-- `floor(∑[n+1]/abs(A143348(n+1)))` -/
def P5485047045053554179.Spec : Prop :=
  ∀ n, P5485047045053554179.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P13977833796457020520

`floor(∑[n+1]/∑[A340793(n+1)])`
-/

namespace A244327.P13977833796457020520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)⌋

end

end A244327.P13977833796457020520

namespace A244327

/-- `floor(∑[n+1]/∑[A340793(n+1)])` -/
def P13977833796457020520.Spec : Prop :=
  ∀ n, P13977833796457020520.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P15429051639957232860

`floor(∑[n+1]/(A039653(n+1)+1))`
-/

namespace A244327.P15429051639957232860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A039653 (n + 1) + 1 : ℚ)⌋

end

end A244327.P15429051639957232860

namespace A244327

/-- `floor(∑[n+1]/(A039653(n+1)+1))` -/
def P15429051639957232860.Spec : Prop :=
  ∀ n, P15429051639957232860.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P3944216522564053343

`floor(∑[n+1]/(A088580(n+1)-1))`
-/

namespace A244327.P3944216522564053343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A088580 (n + 1) - 1 : ℚ)⌋

end

end A244327.P3944216522564053343

namespace A244327

/-- `floor(∑[n+1]/(A088580(n+1)-1))` -/
def P3944216522564053343.Spec : Prop :=
  ∀ n, P3944216522564053343.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P2544038264128351167

`floor(A024816(n+1)/A000203(n+1))+1`
-/

namespace A244327.P2544038264128351167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024816 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋ + 1

end

end A244327.P2544038264128351167

namespace A244327

/-- `floor(A024816(n+1)/A000203(n+1))+1` -/
def P2544038264128351167.Spec : Prop :=
  ∀ n, P2544038264128351167.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P4783114856986826459

`floor(A066859(n+1)/A072861(n+1))+1`
-/

namespace A244327.P4783114856986826459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066859 (n + 1) : ℚ) / (A072861 (n + 1) : ℚ)⌋ + 1

end

end A244327.P4783114856986826459

namespace A244327

/-- `floor(A066859(n+1)/A072861(n+1))+1` -/
def P4783114856986826459.Spec : Prop :=
  ∀ n, P4783114856986826459.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P6144658310182840450

`floor(A000217(n+1)/(A001065(n+1)+1+n))`
-/

namespace A244327.P6144658310182840450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 1) : ℚ) / (A001065 (n + 1) + 1 + (n : ℤ) : ℚ)⌋

end

end A244327.P6144658310182840450

namespace A244327

/-- `floor(A000217(n+1)/(A001065(n+1)+1+n))` -/
def P6144658310182840450.Spec : Prop :=
  ∀ n, P6144658310182840450.a n = A244327 (n + 1)

theorem P6144658310182840450.correct : P6144658310182840450.Spec := by
  intro n
  simp only [A244327, Nat.add_sub_cancel, A244327.P6144658310182840450.a, A244327.P16833651396642504869.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244327

/-! ## A244327.P15428570155909609185

`floor(A000217(n+1)/(A048146(n+1)+A034448(n+1)))`
-/

namespace A244327.P15428570155909609185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 1) : ℚ) / (A048146 (n + 1) + A034448 (n + 1) : ℚ)⌋

end

end A244327.P15428570155909609185

namespace A244327

/-- `floor(A000217(n+1)/(A048146(n+1)+A034448(n+1)))` -/
def P15428570155909609185.Spec : Prop :=
  ∀ n, P15428570155909609185.a n = A244327 (n + 1)

theorem P15428570155909609185.correct : P15428570155909609185.Spec := by
  intro n
  simp only [A244327, Nat.add_sub_cancel, A244327.P15428570155909609185.a, A244327.P16833651396642504869.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A048146, A048146.P9985884013456677192.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244327

/-! ## A244327.P6754990783489500175

`floor(A000217(n+1)/(A082052(n+1)+A050449(n+1)))`
-/

namespace A244327.P6754990783489500175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 1) : ℚ) / (A082052 (n + 1) + A050449 (n + 1) : ℚ)⌋

end

end A244327.P6754990783489500175

namespace A244327

/-- `floor(A000217(n+1)/(A082052(n+1)+A050449(n+1)))` -/
def P6754990783489500175.Spec : Prop :=
  ∀ n, P6754990783489500175.a n = A244327 (n + 1)

theorem P6754990783489500175.correct : P6754990783489500175.Spec := by
  intro n
  simp only [A244327, Nat.add_sub_cancel, A244327.P6754990783489500175.a, A244327.P16833651396642504869.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A244327

/-! ## A244327.P12277202682368193620

`floor(A000217(n+1)/(A070039(n+1)+A070038(n+1)))`
-/

namespace A244327.P12277202682368193620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 1) : ℚ) / (A070039 (n + 1) + A070038 (n + 1) : ℚ)⌋

end

end A244327.P12277202682368193620

namespace A244327

/-- `floor(A000217(n+1)/(A070039(n+1)+A070038(n+1)))` -/
def P12277202682368193620.Spec : Prop :=
  ∀ n, P12277202682368193620.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P8919477912666020904

`floor(A000217(n+1)/(A117004(n+1)+A079667(n+1)))`
-/

namespace A244327.P8919477912666020904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 1) : ℚ) / (A117004 (n + 1) + A079667 (n + 1) : ℚ)⌋

end

end A244327.P8919477912666020904

namespace A244327

/-- `floor(A000217(n+1)/(A117004(n+1)+A079667(n+1)))` -/
def P8919477912666020904.Spec : Prop :=
  ∀ n, P8919477912666020904.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P10855047888675458193

`floor(∑[n+1]/A008619(A002659(n+1)))`
-/

namespace A244327.P10855047888675458193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A008619 (A002659 (n + 1)).toNat : ℚ)⌋

end

end A244327.P10855047888675458193

namespace A244327

/-- `floor(∑[n+1]/A008619(A002659(n+1)))` -/
def P10855047888675458193.Spec : Prop :=
  ∀ n, P10855047888675458193.a n = A244327 (n + 1)

end A244327

/-! ## A244327.P377494774727066872

`ceil(A005408(A024816(n+1))/A074400(n+1))`
-/

namespace A244327.P377494774727066872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005408 (A024816 (n + 1)).toNat : ℚ) / (A074400 (n + 1) : ℚ)⌉

end

end A244327.P377494774727066872

namespace A244327

/-- `ceil(A005408(A024816(n+1))/A074400(n+1))` -/
def P377494774727066872.Spec : Prop :=
  ∀ n, P377494774727066872.a n = A244327 (n + 1)

end A244327

/-!
# A244328: a(1) = a(2) = 0; for n >= 3: a(n) = floor((n*(n+1)/2) / antisigma(n)) = floor(A000217(n) / A024816(n)).

The programs for A244328, the canonical program `A244328.P8848230673642845654` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244328 has offset 1).

The definition of A244328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244328.P8848230673642845654

`ogf((3x^2-2x^4+x^5-x^6)/(1-x))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244328

/-- `ogf((3x^2-2x^4+x^5-x^6)/(1-x))` -/
def P8848230673642845654.Spec : Prop :=
  ∀ n, P8848230673642845654.a n = A244328 (n + 1)

theorem P8848230673642845654.correct : P8848230673642845654.Spec := by
  intro n
  simp only [A244328, Nat.add_sub_cancel]

end A244328

/-!
# A244329: a(n) = floor(antisigma(n) / sigma(n)) = floor(A024816(n) / A000203(n)).

The programs for A244329, the canonical program `A244329.P12240149953231840397` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244329 has offset 1).

The definition of A244329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244329.P12240149953231840397

`floor(A024816(n+1)/A000203(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244329

/-- `floor(A024816(n+1)/A000203(n+1))` -/
def P12240149953231840397.Spec : Prop :=
  ∀ n, P12240149953231840397.a n = A244329 (n + 1)

theorem P12240149953231840397.correct : P12240149953231840397.Spec := by
  intro n
  simp only [A244329, Nat.add_sub_cancel]

end A244329

/-! ## A244329.P3132983375962596700

`floor(∑[n+1]/∑{d}[n+1, #])-1`
-/

namespace A244329.P3132983375962596700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)⌋ - 1

end

end A244329.P3132983375962596700

namespace A244329

/-- `floor(∑[n+1]/∑{d}[n+1, #])-1` -/
def P3132983375962596700.Spec : Prop :=
  ∀ n, P3132983375962596700.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P13476057212130424788

`xor(-floor(∑[n+1]/∑{d}[n+1, #]), -1)`
-/

namespace A244329.P13476057212130424788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)⌋) (-1)

end

end A244329.P13476057212130424788

namespace A244329

/-- `xor(-floor(∑[n+1]/∑{d}[n+1, #]), -1)` -/
def P13476057212130424788.Spec : Prop :=
  ∀ n, P13476057212130424788.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P4660443423906277359

`A244327(n+1)-1`
-/

namespace A244329.P4660443423906277359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244327 (n + 1) - 1

end

end A244329.P4660443423906277359

namespace A244329

/-- `A244327(n+1)-1` -/
def P4660443423906277359.Spec : Prop :=
  ∀ n, P4660443423906277359.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P6806409183467198095

`floor(∑[n+1]/∑[A340793(n+1)])-1`
-/

namespace A244329.P6806409183467198095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)⌋ - 1

end

end A244329.P6806409183467198095

namespace A244329

/-- `floor(∑[n+1]/∑[A340793(n+1)])-1` -/
def P6806409183467198095.Spec : Prop :=
  ∀ n, P6806409183467198095.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P6382375358287854266

`floor(A066859(n+1)/A072861(n+1))`
-/

namespace A244329.P6382375358287854266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066859 (n + 1) : ℚ) / (A072861 (n + 1) : ℚ)⌋

end

end A244329.P6382375358287854266

namespace A244329

/-- `floor(A066859(n+1)/A072861(n+1))` -/
def P6382375358287854266.Spec : Prop :=
  ∀ n, P6382375358287854266.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P14320974889313030122

`A083800(n+1)%A244327(n+1)`
-/

namespace A244329.P14320974889313030122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A244327 (n + 1))

end

end A244329.P14320974889313030122

namespace A244329

/-- `A083800(n+1)%A244327(n+1)` -/
def P14320974889313030122.Spec : Prop :=
  ∀ n, P14320974889313030122.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P13852352701564817146

`A070198(n)%A244327(n+1)`
-/

namespace A244329.P13852352701564817146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A244327 (n + 1))

end

end A244329.P13852352701564817146

namespace A244329

/-- `A070198(n)%A244327(n+1)` -/
def P13852352701564817146.Spec : Prop :=
  ∀ n, P13852352701564817146.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P1222925927154529676

`A079782(n+1)%A244327(n+1)`
-/

namespace A244329.P1222925927154529676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A244327 (n + 1))

end

end A244329.P1222925927154529676

namespace A244329

/-- `A079782(n+1)%A244327(n+1)` -/
def P1222925927154529676.Spec : Prop :=
  ∀ n, P1222925927154529676.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P1032411180011004298

`A083685(n+1)%A244327(n+1)`
-/

namespace A244329.P1032411180011004298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A244327 (n + 1))

end

end A244329.P1032411180011004298

namespace A244329

/-- `A083685(n+1)%A244327(n+1)` -/
def P1032411180011004298.Spec : Prop :=
  ∀ n, P1032411180011004298.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P5234263388968258980

`A121934(n+1)%A244327(n+1)`
-/

namespace A244329.P5234263388968258980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A244327 (n + 1))

end

end A244329.P5234263388968258980

namespace A244329

/-- `A121934(n+1)%A244327(n+1)` -/
def P5234263388968258980.Spec : Prop :=
  ∀ n, P5234263388968258980.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P2917440029932905417

`A259361(A244327(n+1)²)`
-/

namespace A244329.P2917440029932905417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A244327 (n + 1) ^ 2).toNat

end

end A244329.P2917440029932905417

namespace A244329

/-- `A259361(A244327(n+1)²)` -/
def P2917440029932905417.Spec : Prop :=
  ∀ n, P2917440029932905417.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P16390613466256014007

`A030494(n+1)%A244327(n+1)`
-/

namespace A244329.P16390613466256014007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A244327 (n + 1))

end

end A244329.P16390613466256014007

namespace A244329

/-- `A030494(n+1)%A244327(n+1)` -/
def P16390613466256014007.Spec : Prop :=
  ∀ n, P16390613466256014007.a n = A244329 (n + 1)

end A244329

/-! ## A244329.P15315595674453697325

`A072828(n+1)%A244327(n+1)`
-/

namespace A244329.P15315595674453697325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A244327 (n + 1))

end

end A244329.P15315595674453697325

namespace A244329

/-- `A072828(n+1)%A244327(n+1)` -/
def P15315595674453697325.Spec : Prop :=
  ∀ n, P15315595674453697325.a n = A244329 (n + 1)

end A244329

/-!
# A244330: Position of the incrementally largest term in the continued fraction for the base-2 Champernowne constant (A066717).

The programs for A244330, there is no canonical definition to state claims against.
-/

/-! ## A244330.P13017899075546193679

`∑[A054065(∑[A262594(n)])]`
-/

namespace A244330.P13017899075546193679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262594 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244330.P13017899075546193679

/-! ## A244330.P16271034692595868045

`A175178(A002524(n))+Δ[A079995(n)]`
-/

namespace A244330.P16271034692595868045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175178 (A002524 n).toNat + (f1 (n + 1) - f1 n)

end

end A244330.P16271034692595868045

/-!
# A244331: Number of binary digits in the high-water marks of the terms of the continued fraction of the base-2 Champernowne constant.

The programs for A244331, the canonical program `A244331.P14415861278274563911` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244331 has offset 1).

The definition of A244331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244331.P11967153992861308875

`∑[floor(2^n-acot(acot(n)))]`
-/

namespace A244331.P11967153992861308875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) - SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P11967153992861308875

namespace A244331

/-- `∑[floor(2^n-acot(acot(n)))]` -/
def P11967153992861308875.Spec : Prop :=
  ∀ n, P11967153992861308875.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P8460221493557465256

`∑[2^n-ceil(acot(acot(n)))]`
-/

namespace A244331.P8460221493557465256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P8460221493557465256

namespace A244331

/-- `∑[2^n-ceil(acot(acot(n)))]` -/
def P8460221493557465256.Spec : Prop :=
  ∀ n, P8460221493557465256.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P13567256472333728214

`∑[2^n-(floor(atan(n))+1)]`
-/

namespace A244331.P13567256472333728214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (⌊Real.arctan (n : ℝ)⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P13567256472333728214

namespace A244331

/-- `∑[2^n-(floor(atan(n))+1)]` -/
def P13567256472333728214.Spec : Prop :=
  ∀ n, P13567256472333728214.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P6015638685166562455

`∑[floor(2^n-atan(n))]-1`
-/

namespace A244331.P6015638685166562455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) - Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A244331.P6015638685166562455

namespace A244331

/-- `∑[floor(2^n-atan(n))]-1` -/
def P6015638685166562455.Spec : Prop :=
  ∀ n, P6015638685166562455.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P11338407120303569150

`∑[ogf((x-x^2+2x^3)/(1-3x+2x^2))]`
-/

namespace A244331.P11338407120303569150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P11338407120303569150

namespace A244331

/-- `∑[ogf((x-x^2+2x^3)/(1-3x+2x^2))]` -/
def P11338407120303569150.Spec : Prop :=
  ∀ n, P11338407120303569150.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P2233469053641959703

`ogf((x-x^2+2x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A244331.P2233469053641959703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 2] [1, -4, 5, -2] n

end

end A244331.P2233469053641959703

namespace A244331

/-- `ogf((x-x^2+2x^3)/(1-4x+5x^2-2x^3))` -/
def P2233469053641959703.Spec : Prop :=
  ∀ n, P2233469053641959703.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P14415861278274563911

`∑[lcm(2, a(n-1)+1)]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244331

/-- `∑[lcm(2, a(n-1)+1)]` -/
def P14415861278274563911.Spec : Prop :=
  ∀ n, (P14415861278274563911.a n : ℤ) = A244331 (n + 1)

theorem P14415861278274563911.correct : P14415861278274563911.Spec := by
  intro n
  simp only [A244331, Nat.add_sub_cancel]

end A244331

/-! ## A244331.P15482981725007081015

`∑[2*or(1, a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A244331.P15482981725007081015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * Nat.lor 1 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P15482981725007081015

namespace A244331

/-- `∑[2*or(1, a(n-1))]` -/
def P15482981725007081015.Spec : Prop :=
  ∀ n, (P15482981725007081015.a n : ℤ) = A244331 (n + 1)

end A244331

/-! ## A244331.P6242173657814611570

`∑[2*(a(n-1)+1)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A244331.P6242173657814611570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P6242173657814611570

namespace A244331

/-- `∑[2*(a(n-1)+1)]` -/
def P6242173657814611570.Spec : Prop :=
  ∀ n, (P6242173657814611570.a n : ℤ) = A244331 (n + 1)

end A244331

/-! ## A244331.P8431981741902143782

`∑[∑[2*a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A244331.P8431981741902143782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P8431981741902143782

namespace A244331

/-- `∑[∑[2*a(n-1)]]` -/
def P8431981741902143782.Spec : Prop :=
  ∀ n, (P8431981741902143782.a n : ℤ) = A244331 (n + 1)

end A244331

/-! ## A244331.P8608597475267086891

`2*(a(n-1)+n)-3` with `a(0)=0, a(1)=1`
-/

namespace A244331.P8608597475267086891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + (n : ℤ)) - 3

end

end A244331.P8608597475267086891

namespace A244331

/-- `2*(a(n-1)+n)-3` -/
def P8608597475267086891.Spec : Prop :=
  ∀ n, P8608597475267086891.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P18070575451193260690

`2^n+a(n-1)-2` with `a(0)=0, a(1)=1`
-/

namespace A244331.P18070575451193260690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - 2)

end

end A244331.P18070575451193260690

namespace A244331

/-- `2^n+a(n-1)-2` -/
def P18070575451193260690.Spec : Prop :=
  ∀ n, P18070575451193260690.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P17002512584185487075

`2^n-(2-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A244331.P17002512584185487075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 ^ n : ℤ) - (2 - a (n - 1))

end

end A244331.P17002512584185487075

namespace A244331

/-- `2^n-(2-a(n-1))` -/
def P17002512584185487075.Spec : Prop :=
  ∀ n, P17002512584185487075.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P478564996938126682

`2*(n-(1-a(n-1)))-1` with `a(0)=0, a(1)=1`
-/

namespace A244331.P478564996938126682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * ((n : ℤ) - (1 - a (n - 1))) - 1

end

end A244331.P478564996938126682

namespace A244331

/-- `2*(n-(1-a(n-1)))-1` -/
def P478564996938126682.Spec : Prop :=
  ∀ n, P478564996938126682.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P5189960211830041426

`∑[xor(a(n-1)+2, a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A244331.P5189960211830041426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.xor (f1 (n - 1) + 2) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P5189960211830041426

namespace A244331

/-- `∑[xor(a(n-1)+2, a(n-1))]` -/
def P5189960211830041426.Spec : Prop :=
  ∀ n, (P5189960211830041426.a n : ℤ) = A244331 (n + 1)

end A244331

/-! ## A244331.P10613012765950617416

`∑[a(n-1)+a(n-1)+2]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A244331.P10613012765950617416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244331.P10613012765950617416

namespace A244331

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P10613012765950617416.Spec : Prop :=
  ∀ n, (P10613012765950617416.a n : ℤ) = A244331 (n + 1)

end A244331

/-! ## A244331.P18137789499739097095

`ceil(atan(n+1))^(n+1)-(2*n+1)`
-/

namespace A244331.P18137789499739097095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ (n + 1) - (2 * n + 1 : ℤ)

end

end A244331.P18137789499739097095

namespace A244331

/-- `ceil(atan(n+1))^(n+1)-(2*n+1)` -/
def P18137789499739097095.Spec : Prop :=
  ∀ n, P18137789499739097095.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P6330951481045869150

`2^((n+1)%(n+1)²)-(2*n+1)`
-/

namespace A244331.P6330951481045869150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((n + 1) % (n + 1) ^ 2) : ℤ) - (2 * n + 1 : ℤ)

end

end A244331.P6330951481045869150

namespace A244331

/-- `2^((n+1)%(n+1)²)-(2*n+1)` -/
def P6330951481045869150.Spec : Prop :=
  ∀ n, P6330951481045869150.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P17566883067262873392

`a(n-1)-3+a(n-1)+n+n` with `a(0)=0, a(1)=1`
-/

namespace A244331.P17566883067262873392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - 3 + (a (n - 1) + (n : ℤ) + (n : ℤ))

end

end A244331.P17566883067262873392

namespace A244331

/-- `a(n-1)-3+a(n-1)+n+n` -/
def P17566883067262873392.Spec : Prop :=
  ∀ n, P17566883067262873392.a n = A244331 (n + 1)

end A244331

/-! ## A244331.P16077304036439048479

`a(n-1)-(3-a(n-1)-n-n)` with `a(0)=0, a(1)=1`
-/

namespace A244331.P16077304036439048479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (3 - a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A244331.P16077304036439048479

namespace A244331

/-- `a(n-1)-(3-a(n-1)-n-n)` -/
def P16077304036439048479.Spec : Prop :=
  ∀ n, P16077304036439048479.a n = A244331 (n + 1)

end A244331

/-!
# A244332: Position of the incrementally largest term in the continued fraction for the base 3 Champernowne constant (A077772).

The programs for A244332, there is no canonical definition to state claims against.
-/

/-! ## A244332.P17726113615074549222

`A002024(or(A147421(n+1), A218199(n+1)))`
-/

namespace A244332.P17726113615074549222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A147421 (n + 1)) (A218199 (n + 1))).toNat

end

end A244332.P17726113615074549222

/-!
# A244333: Number of ternary digits in the high-water marks of the terms of the continued fraction of the base 3 Champernowne constant (A077772).

The programs for A244333, there is no canonical definition to state claims against.
-/

/-! ## A244333.P4972046749240442573

`A244759(A244332(n+1))`
-/

namespace A244333.P4972046749240442573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244759 (A244332 (n + 1)).toNat

end

end A244333.P4972046749240442573

/-! ## A244333.P10010110712446124543

`A065719(4*A155420(n+6))`
-/

namespace A244333.P10010110712446124543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (4 * A155420 (n + 6)).toNat

end

end A244333.P10010110712446124543

/-! ## A244333.P15503678637365578114

`A008612(∑{d}[A182926(n+1), #])`
-/

namespace A244333.P15503678637365578114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A244333.P15503678637365578114

/-!
# A244339: Expansion of (-2 * a(q) + 3*a(q^2) + 2*a(q^4)) / 3 in powers of q where a() is a cubic AGM theta function.

The programs for A244339, there is no canonical definition to state claims against.
-/

/-! ## A244339.P4066686469360976389

`A033999(n)*A253623(n)`
-/

namespace A244339.P4066686469360976389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A253623 n

end

end A244339.P4066686469360976389

/-! ## A244339.P5804085730282845484

`(A122859(n)+A115978(n))/2`
-/

namespace A244339.P5804085730282845484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 n + A115978 n : ℚ) / 2

end

end A244339.P5804085730282845484

/-! ## A244339.P14210965461718982666

`2*A132973(n)-A115978(n)`
-/

namespace A244339.P14210965461718982666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132973 n - A115978 n

end

end A244339.P14210965461718982666

/-! ## A244339.P17256185085700919890

`2*A253626(n)-A004016(n)`
-/

namespace A244339.P17256185085700919890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253626 n - A004016 n

end

end A244339.P17256185085700919890

/-! ## A244339.P15134962793445311992

`A107760(n)+A253625(n)-A004016(n)`
-/

namespace A244339.P15134962793445311992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n + (A253625 n - A004016 n)

end

end A244339.P15134962793445311992

/-! ## A244339.P18382692738125919773

`A033716(2*n)-(A033716(n)-A115978(n))`
-/

namespace A244339.P18382692738125919773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * n) - (A033716 n - A115978 n)

end

end A244339.P18382692738125919773

/-! ## A244339.P15628725936423128569

`A033716(2*n)+A033716(n)-A033716(4*n)`
-/

namespace A244339.P15628725936423128569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (2 * n) + (A033716 n - A033716 (4 * n))

end

end A244339.P15628725936423128569

/-! ## A244339.P560702711639249411

`A132973(2*n)+A132973(n)-A217220(n)`
-/

namespace A244339.P560702711639249411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 (2 * n) + (A132973 n - A217220 n)

end

end A244339.P560702711639249411

/-! ## A244339.P10777249322260891903

`A253625(2*n)-(A004016(n)-A253625(n))`
-/

namespace A244339.P10777249322260891903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253625 (2 * n) - (A004016 n - A253625 n)

end

end A244339.P10777249322260891903

/-! ## A244339.P16104481458596888268

`A004016(2*n)-A260958(3*n)`
-/

namespace A244339.P16104481458596888268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (2 * n) - A260958 (3 * n)

end

end A244339.P16104481458596888268

/-! ## A244339.P16324376932075102127

`2*A132973(n)-A164272(4*n)`
-/

namespace A244339.P16324376932075102127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132973 n - A164272 (4 * n)

end

end A244339.P16324376932075102127

/-! ## A244339.P16333736311977951224

`A113973(n)+A113973(4*n)-A113973(2*n)`
-/

namespace A244339.P16333736311977951224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 n + (A113973 (4 * n) - A113973 (2 * n))

end

end A244339.P16333736311977951224

/-! ## A244339.P14337599878304980166

`A132973(4*n)-(A217220(3*n)-A132973(3*n))`
-/

namespace A244339.P14337599878304980166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 (4 * n) - (A217220 (3 * n) - A132973 (3 * n))

end

end A244339.P14337599878304980166

/-!
# A244340: Floor( n^2*log(n) ) mod n.

The programs for A244340, the canonical program `A244340.P136257405448733705` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244340 has offset 1).

The definition of A244340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)²*log(n+1))%(n+1)` (program `A244340.P136257405448733705`, by `A244340.P136257405448733705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244340.P136257405448733705

`floor((n+1)²*log(n+1))%(n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244340

/-- `floor((n+1)²*log(n+1))%(n+1)` -/
def P136257405448733705.Spec : Prop :=
  ∀ n, P136257405448733705.a n = A244340 (n + 1)

theorem P136257405448733705.correct : P136257405448733705.Spec := by
  intro n
  simp only [A244340, Nat.add_sub_cancel]

end A244340

/-! ## A244340.P6862161344933062623

`A235707(n+1)-(n+1)*A050504(n+1)`
-/

namespace A244340.P6862161344933062623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235707 (n + 1) - (n + 1 : ℤ) * A050504 (n + 1)

end

end A244340.P6862161344933062623

namespace A244340

/-- `A235707(n+1)-(n+1)*A050504(n+1)` -/
def P6862161344933062623.Spec : Prop :=
  ∀ n, P6862161344933062623.a n = A244340 (n + 1)

end A244340

/-! ## A244340.P4169992870193643328

`A118759(A235707(n+1)%(n+1))`
-/

namespace A244340.P4169992870193643328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A235707 (n + 1)) (n + 1 : ℤ)).toNat

end

end A244340.P4169992870193643328

namespace A244340

/-- `A118759(A235707(n+1)%(n+1))` -/
def P4169992870193643328.Spec : Prop :=
  ∀ n, P4169992870193643328.a n = A244340 (n + 1)

end A244340

/-!
# A244342: a(n) = phi(n)*h(n) where phi() is the Euler totient function, A000010, and h() is A092089.

The programs for A244342, the canonical program `A244342.P2243790264769858575` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244342 has offset 1).

The definition of A244342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244342.P7907196820133280478

`Δ[A002088(n)]*A092089(n+1)`
-/

namespace A244342.P7907196820133280478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A092089 (n + 1)

end

end A244342.P7907196820133280478

namespace A244342

/-- `Δ[A002088(n)]*A092089(n+1)` -/
def P7907196820133280478.Spec : Prop :=
  ∀ n, P7907196820133280478.a n = A244342 (n + 1)

end A244342

/-! ## A244342.P18374413740981162984

`A000010(n+1)*A092089(n+1)`
-/

namespace A244342.P18374413740981162984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A092089 (n + 1)

end

end A244342.P18374413740981162984

namespace A244342

/-- `A000010(n+1)*A092089(n+1)` -/
def P18374413740981162984.Spec : Prop :=
  ∀ n, P18374413740981162984.a n = A244342 (n + 1)

end A244342

/-! ## A244342.P10765451040393920162

`∑{d}[n+1, A000010(n+1)*A060594(#)]`
-/

namespace A244342.P10765451040393920162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (n + 1) * A060594 d

end

end A244342.P10765451040393920162

namespace A244342

/-- `∑{d}[n+1, A000010(n+1)*A060594(#)]` -/
def P10765451040393920162.Spec : Prop :=
  ∀ n, P10765451040393920162.a n = A244342 (n + 1)

end A244342

/-! ## A244342.P2243790264769858575

`A053191(n+1)/(n+1)²*A092089(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A244342

/-- `A053191(n+1)/(n+1)²*A092089(n+1)` -/
def P2243790264769858575.Spec : Prop :=
  ∀ n, P2243790264769858575.a n = (A244342 (n + 1) : ℚ)

end A244342

/-! ## A244342.P7316034122630082233

`A026741(A092089(n+1))*A062570(n+1)`
-/

namespace A244342.P7316034122630082233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A092089 (n + 1)).toNat * A062570 (n + 1)

end

end A244342.P7316034122630082233

namespace A244342

/-- `A026741(A092089(n+1))*A062570(n+1)` -/
def P7316034122630082233.Spec : Prop :=
  ∀ n, P7316034122630082233.a n = A244342 (n + 1)

end A244342

/-! ## A244342.P12159209928570768445

`(A002088(n+1)-A002088(n))*A092089(n+1)`
-/

namespace A244342.P12159209928570768445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A092089 (n + 1)

end

end A244342.P12159209928570768445

namespace A244342

/-- `(A002088(n+1)-A002088(n))*A092089(n+1)` -/
def P12159209928570768445.Spec : Prop :=
  ∀ n, P12159209928570768445.a n = A244342 (n + 1)

end A244342

/-!
# A244344: Numbers such that the largest prime factor equals the sum of the 4th power of the other prime factors.

The programs for A244344, there is no canonical definition to state claims against.
-/

/-! ## A244344.P4546108052760371736

`record[97*A004016(2*n+1)]`
-/

namespace A244344.P4546108052760371736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  97 * A004016 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244344.P4546108052760371736

/-!
# A244346: Decimal expansion of 56/13, the Korn constant for the sphere.

The programs for A244346, the canonical program `A244346.P4123612635440579727` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244346 has offset 1).

The definition of A244346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244346.P4123612635440579727

`ogf((4-x-3x^2+11x^3-2x^4)/(1-x+x^3-x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A244346

/-- `ogf((4-x-3x^2+11x^3-2x^4)/(1-x+x^3-x^4))` -/
def P4123612635440579727.Spec : Prop :=
  ∀ n, P4123612635440579727.a n = A244346 (n + 1)

theorem P4123612635440579727.correct : P4123612635440579727.Spec := by
  intro n
  simp only [A244346, Nat.add_sub_cancel]

end A244346

/-!
# A244352: a(n) = Pell(n)^3 - Pell(n)^2, where Pell(n) is the n-th Pell number (A000129).

The programs for A244352, the canonical program `A244352.P17811461552720308671` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244352 has offset 0).

The definition of A244352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)^3-A000129(n)²` (program `A244352.P17811461552720308671`, by `A244352.P17811461552720308671.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244352.P1722796892176385956

`ogf((4x^2+32x^3-16x^4+12x^5)/(1-17x+25x^2+223x^3+79x^4-95x^5+7x^6+x^7))`
-/

namespace A244352.P1722796892176385956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4, 32, -16, 12] [1, -17, 25, 223, 79, -95, 7, 1] n

end

end A244352.P1722796892176385956

namespace A244352

/-- `ogf((4x^2+32x^3-16x^4+12x^5)/(1-17x+25x^2+223x^3+79x^4-95x^5+7x^6+x^7))` -/
def P1722796892176385956.Spec : Prop :=
  ∀ n, P1722796892176385956.a n = A244352 n

end A244352

/-! ## A244352.P5842462205093254359

`A110272(n)-A079291(n)`
-/

namespace A244352.P5842462205093254359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110272 n - A079291 n

end

end A244352.P5842462205093254359

namespace A244352

/-- `A110272(n)-A079291(n)` -/
def P5842462205093254359.Spec : Prop :=
  ∀ n, P5842462205093254359.a n = A244352 n

end A244352

/-! ## A244352.P17811461552720308671

`A000129(n)^3-A000129(n)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244352

/-- `A000129(n)^3-A000129(n)²` -/
def P17811461552720308671.Spec : Prop :=
  ∀ n, P17811461552720308671.a n = A244352 n

theorem P17811461552720308671.correct : P17811461552720308671.Spec := by
  intro n
  simp only [A244352]

end A244352

/-! ## A244352.P13633009144977781824

`A045991(A000129(n))`
-/

namespace A244352.P13633009144977781824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A000129 n).toNat

end

end A244352.P13633009144977781824

namespace A244352

/-- `A045991(A000129(n))` -/
def P13633009144977781824.Spec : Prop :=
  ∀ n, P13633009144977781824.a n = A244352 n

end A244352

/-! ## A244352.P9256045775325373084

`A110272(n)-A000129(n)²`
-/

namespace A244352.P9256045775325373084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110272 n - A000129 n ^ 2

end

end A244352.P9256045775325373084

namespace A244352

/-- `A110272(n)-A000129(n)²` -/
def P9256045775325373084.Spec : Prop :=
  ∀ n, P9256045775325373084.a n = A244352 n

end A244352

/-! ## A244352.P7784850988073713013

`(A000129(n)-1)*A079291(n)`
-/

namespace A244352.P7784850988073713013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000129 n - 1) * A079291 n

end

end A244352.P7784850988073713013

namespace A244352

/-- `(A000129(n)-1)*A079291(n)` -/
def P7784850988073713013.Spec : Prop :=
  ∀ n, P7784850988073713013.a n = A244352 n

theorem P7784850988073713013.correct : P7784850988073713013.Spec := by
  intro n
  simp only [A244352, Nat.add_sub_cancel, A244352.P7784850988073713013.a, A244352.P17811461552720308671.a, A000129, A000129.P3563729298025900801.a, A079291, A079291.P10024746228279506186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244352

/-! ## A244352.P5932305842919195750

`(A174191(n)-2)*A079291(n)`
-/

namespace A244352.P5932305842919195750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174191 n - 2) * A079291 n

end

end A244352.P5932305842919195750

namespace A244352

/-- `(A174191(n)-2)*A079291(n)` -/
def P5932305842919195750.Spec : Prop :=
  ∀ n, P5932305842919195750.a n = A244352 n

end A244352

/-! ## A244352.P16510473427810767390

`(A215928(n)-1)*A215928(n)²`
-/

namespace A244352.P16510473427810767390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A215928 n - 1) * A215928 n ^ 2

end

end A244352.P16510473427810767390

namespace A244352

/-- `(A215928(n)-1)*A215928(n)²` -/
def P16510473427810767390.Spec : Prop :=
  ∀ n, P16510473427810767390.a n = A244352 n

end A244352

/-! ## A244352.P5169326164928724006

`(A057428(n)+A000129(n))*A000129(n)²`
-/

namespace A244352.P5169326164928724006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057428 n + A000129 n) * A000129 n ^ 2

end

end A244352.P5169326164928724006

namespace A244352

/-- `(A057428(n)+A000129(n))*A000129(n)²` -/
def P5169326164928724006.Spec : Prop :=
  ∀ n, P5169326164928724006.a n = A244352 n

end A244352

/-!
# A244353: Largely composite numbers that are not highly composite.

The programs for A244353, there is no canonical definition to state claims against.
-/

/-! ## A244353.P15641257244886963982

`∩[A131903(n+1), A291899(n+1)]`
-/

namespace A244353.P15641257244886963982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244353.P15641257244886963982

/-! ## A244353.P13450646073925686220

`A118759(∩[A128699(n+1), A216365(n+1)])`
-/

namespace A244353.P13450646073925686220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216365 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A244353.P13450646073925686220

/-! ## A244353.P5832986515558381882

`filter[A128699(n+1), A343159(#)]`
-/

namespace A244353.P5832986515558381882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343159 (f1 j).toNat = 1) n)

end

end A244353.P5832986515558381882

/-!
# A244356: Numbers n such that n and n+1 are not divisible by any of their nonzero digits.

The programs for A244356, there is no canonical definition to state claims against.
-/

/-! ## A244356.P11702264173429098468

`A038772(eq[1, Δ[A038772(n+1)]]+1)`
-/

namespace A244356.P11702264173429098468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244356.P11702264173429098468

/-! ## A244356.P7757269176341528548

`∩[A038772(n+2)-1, A038772(n+2)]`
-/

namespace A244356.P7757269176341528548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244356.P7757269176341528548

/-! ## A244356.P5273842271305265876

`A038772(eq[1, A038772(n+2)-A038772(n+1)]+1)`
-/

namespace A244356.P5273842271305265876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 2) - A038772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244356.P5273842271305265876

/-! ## A244356.P4096315494618513118

`A038772(eq[1, A038772(n+2)%A038772(n+1)]+1)`
-/

namespace A244356.P4096315494618513118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038772 (n + 2)) (A038772 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244356.P4096315494618513118

/-! ## A244356.P235635773446728172

`∩[lt[A038769(n+1), 1], A038772(n+1)]`
-/

namespace A244356.P235635773446728172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A244356.P235635773446728172

/-! ## A244356.P4846293921618899013

`lt[A038769(n+1)+A038769(A028310(n)), 1]`
-/

namespace A244356.P4846293921618899013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1) + A038769 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A244356.P4846293921618899013

/-! ## A244356.P829744911311254342

`∩[A289207(A038772(n+1)+1), A038772(n+1)]`
-/

namespace A244356.P829744911311254342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A038772 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244356.P829744911311254342

/-!
# A244357: Numbers n such that n, n+1, and n+2 are not divisible by any of their nonzero digits.

The programs for A244357, there is no canonical definition to state claims against.
-/

/-! ## A244357.P17049748093369376795

`∩[A244356(n+1)-1, A244356(n+1)]`
-/

namespace A244357.P17049748093369376795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244357.P17049748093369376795

/-! ## A244357.P4142783462119170742

`A244356(eq[1, A244356(n+2)-A244356(n+1)]+1)`
-/

namespace A244357.P4142783462119170742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 2) - A244356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244357.P4142783462119170742

/-! ## A244357.P14134218714282054970

`∩[A244356(n+1), A023443(A244356(n+1))]`
-/

namespace A244357.P14134218714282054970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A244356 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244357.P14134218714282054970

/-! ## A244357.P10867538985832801100

`∩[A289207(A038772(n+1)), A244356(n+1)]`
-/

namespace A244357.P10867538985832801100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A038772 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244357.P10867538985832801100

/-! ## A244357.P5755023164060637095

`∩[A289207(A244356(n+1)+1), A244356(n+1)]`
-/

namespace A244357.P5755023164060637095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A244356 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244357.P5755023164060637095

/-!
# A244358: Numbers k such that k, k+1, k+2, and k+3 are not divisible by any of their nonzero digits.

The programs for A244358, there is no canonical definition to state claims against.
-/

/-! ## A244358.P1882545701681454949

`∩[A244357(n+1)-1, A244357(n+1)]`
-/

namespace A244358.P1882545701681454949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244357 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244358.P1882545701681454949

/-! ## A244358.P12872272856170431279

`∩[A244356(n+1)-2, A244356(n+1)]`
-/

namespace A244358.P12872272856170431279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244358.P12872272856170431279

/-! ## A244358.P13739435323329216302

`record[gcd(1-A244357(n+2), A244357(n+1))]`
-/

namespace A244358.P13739435323329216302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A244357 (n + 2)) (A244357 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244358.P13739435323329216302

/-! ## A244358.P1586179835334464335

`∩[A244357(n+1), A023443(A244357(n+1))]`
-/

namespace A244358.P1586179835334464335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A244357 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244358.P1586179835334464335

/-! ## A244358.P10487737793742463503

`∩[A244356(n+1), A289207(A244356(n+1))]`
-/

namespace A244358.P10487737793742463503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A244356 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244358.P10487737793742463503

/-!
# A244359: Numbers n such that n, n+1, n+2, n+3, and n+4 are not divisible by any of their nonzero digits.

The programs for A244359, there is no canonical definition to state claims against.
-/

/-! ## A244359.P1708833324870819115

`∩[A244357(n+1)-2, A244357(n+1)]`
-/

namespace A244359.P1708833324870819115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244357 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244359.P1708833324870819115

/-! ## A244359.P13083772813090209663

`∩[A244357(n+1), A289207(A244357(n+1))]`
-/

namespace A244359.P13083772813090209663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A244357 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244359.P13083772813090209663

/-!
# A244360: Total number of toothpicks after n-th stage in the toothpick structure of the symmetric representation of half sigma in the first octant (without the axis x and without the main diagonal).

The programs for A244360, there is no canonical definition to state claims against.
-/

/-! ## A244360.P13899701837114727166

`A244362(n+1)/2`
-/

namespace A244360.P13899701837114727166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244362 (n + 1) : ℚ) / 2

end

end A244360.P13899701837114727166

/-! ## A244360.P1802797840666545487

`A244370(n+1)/8`
-/

namespace A244360.P1802797840666545487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244370 (n + 1) : ℚ) / 8

end

end A244360.P1802797840666545487

/-! ## A244360.P5615650402428331248

`∑[A244361(n+1)]`
-/

namespace A244360.P5615650402428331248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244360.P5615650402428331248

/-! ## A244360.P17755563519607633022

`∑[A244363(n+1)/2]`
-/

namespace A244360.P17755563519607633022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244363 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244360.P17755563519607633022

/-! ## A244360.P755700223396211846

`∑[A274919(n+1)/4]`
-/

namespace A244360.P755700223396211846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274919 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244360.P755700223396211846

/-!
# A244361: Number of toothpicks added at n-th stage in the toothpick structure of the symmetric representation of half sigma in the first octant (without the axis x and without the main diagonal).

The programs for A244361, there is no canonical definition to state claims against.
-/

/-! ## A244361.P12247212733149627638

`A244363(n+1)/2`
-/

namespace A244361.P12247212733149627638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244363 (n + 1) : ℚ) / 2

end

end A244361.P12247212733149627638

/-! ## A244361.P3455853677616591090

`A244371(n+1)/8`
-/

namespace A244361.P3455853677616591090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244371 (n + 1) : ℚ) / 8

end

end A244361.P3455853677616591090

/-! ## A244361.P17996450867285720771

`A274919(n+1)/4`
-/

namespace A244361.P17996450867285720771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274919 (n + 1) : ℚ) / 4

end

end A244361.P17996450867285720771

/-! ## A244361.P817014373842745536

`A348854(n+1)-(n+1)`
-/

namespace A244361.P817014373842745536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348854 (n + 1) - (n + 1 : ℤ)

end

end A244361.P817014373842745536

/-! ## A244361.P12856776138868641267

`n+1-A279228(n+1)/2`
-/

namespace A244361.P12856776138868641267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A279228 (n + 1) : ℚ) / 2

end

end A244361.P12856776138868641267

/-!
# A244362: Total number of toothpicks after n-th stage in the toothpick structure of the symmetric representation of sigma in the first quadrant (without the axes x and y).

The programs for A244362, there is no canonical definition to state claims against.
-/

/-! ## A244362.P16465146929817628324

`2*A244360(n+1)`
-/

namespace A244362.P16465146929817628324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244360 (n + 1)

end

end A244362.P16465146929817628324

/-! ## A244362.P7604824287624128792

`A244370(n+1)/4`
-/

namespace A244362.P7604824287624128792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244370 (n + 1) : ℚ) / 4

end

end A244362.P7604824287624128792

/-! ## A244362.P4092221573179495156

`∑[A244363(n+1)]`
-/

namespace A244362.P4092221573179495156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244362.P4092221573179495156

/-! ## A244362.P18157696316742101921

`∑[2*A244361(n+1)]`
-/

namespace A244362.P18157696316742101921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244362.P18157696316742101921

/-! ## A244362.P17305526038932394515

`∑[A274919(n+1)/2]`
-/

namespace A244362.P17305526038932394515
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274919 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244362.P17305526038932394515

/-!
# A244363: Number of toothpicks added at n-th stage in the toothpick structure of the symmetric representation of sigma of the first n positive integers in the first quadrant (without the axis x and y).

The programs for A244363, there is no canonical definition to state claims against.
-/

/-! ## A244363.P7036552991398196016

`2*A244361(n+1)`
-/

namespace A244363.P7036552991398196016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244361 (n + 1)

end

end A244363.P7036552991398196016

/-! ## A244363.P8287914631782504330

`A274919(n+1)/2`
-/

namespace A244363.P8287914631782504330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274919 (n + 1) : ℚ) / 2

end

end A244363.P8287914631782504330

/-! ## A244363.P233671732348324921

`A244371(n+1)/4`
-/

namespace A244363.P233671732348324921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244371 (n + 1) : ℚ) / 4

end

end A244363.P233671732348324921

/-! ## A244363.P8547095744579052509

`2*(n+1)-A279228(n+1)`
-/

namespace A244363.P8547095744579052509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A279228 (n + 1)

end

end A244363.P8547095744579052509

/-! ## A244363.P18086081132742162719

`A348705(n+1)-2*(n+1)`
-/

namespace A244363.P18086081132742162719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348705 (n + 1) - (2 * (n + 1) : ℤ)

end

end A244363.P18086081132742162719

/-!
# A244364: a(n) is the least integer m > 1 such that n is the largest number of identical digits that can end m^k for positive integer k.

The programs for A244364, there is no canonical definition to state claims against.
-/

/-! ## A244364.P2691732278096230920

`A136156(ceil(2^(n-1)))+A061395(n+2)`
-/

namespace A244364.P2691732278096230920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136156 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A061395 (n + 2)

end

end A244364.P2691732278096230920

/-!
# A244365: Table read by rows: row n contains all primes p such that prime(n) < p <= floor(prime(n)^(1+1/n)).

The programs for A244365, there is no canonical definition to state claims against.
-/

/-! ## A244365.P17653061320459371661

`p?[A038567(A038567(A001845(n)))]`
-/

namespace A244365.P17653061320459371661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A038567 (A001845 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244365.P17653061320459371661

/-! ## A244365.P17966445830507593667

`p?[A263270(A140486(n+1))]`
-/

namespace A244365.P17966445830507593667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A140486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244365.P17966445830507593667

/-! ## A244365.P2467322099701826570

`A180101(A311069(n+2)-1)`
-/

namespace A244365.P2467322099701826570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A311069 (n + 2) - 1).toNat

end

end A244365.P2467322099701826570

/-! ## A244365.P3167082929052411305

`A180101(A360014(n+2))`
-/

namespace A244365.P3167082929052411305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A360014 (n + 2)).toNat

end

end A244365.P3167082929052411305

/-!
# A244366: Expansion of c(q) * c(q^5) / 9 in powers of q where c() is a cubic AGM theta function.

The programs for A244366, there is no canonical definition to state claims against.
-/

/-! ## A244366.P5228613722823227193

`A328518(n)-A328523(A073941(n+1))`
-/

namespace A244366.P5228613722823227193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328518 n - A328523 (A073941 (n + 1)).toNat

end

end A244366.P5228613722823227193

/-! ## A244366.P14192016129699621683

`A039997(2*n+3)+A035232(A103301(n))`
-/

namespace A244366.P14192016129699621683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (2 * n + 3) + A035232 (A103301 n).toNat

end

end A244366.P14192016129699621683

/-! ## A244366.P14333268847019654747

`A355739(A259799(3*n+5)+A014684(n+1))`
-/

namespace A244366.P14333268847019654747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355739 (A259799 (3 * n + 5) + A014684 (n + 1)).toNat

end

end A244366.P14333268847019654747

/-!
# A244367: Main diagonal of A244580.

The programs for A244367, there is no canonical definition to state claims against.
-/

/-! ## A244367.P13121422610233891683

`A259179(n)+a(n-1)` with `a(0)=1`
-/

namespace A244367.P13121422610233891683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259179 n + a (n - 1)

end

end A244367.P13121422610233891683

/-! ## A244367.P10928369481056709450

`∑[A259179(round(sqrt(n²+1)))]`
-/

namespace A244367.P10928369481056709450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259179 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244367.P10928369481056709450

/-! ## A244367.P15627792461973464614

`∑[dr(A259179(A028310(n)))]`
-/

namespace A244367.P15627792461973464614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A259179 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244367.P15627792461973464614

/-! ## A244367.P9202054177049000954

`∑[A259179(A000038(n)+n)]-1`
-/

namespace A244367.P9202054177049000954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259179 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A244367.P9202054177049000954

/-! ## A244367.P13150777551790379466

`∑[A259179(n)/A007318(a(n-1))²]` with `a(0)=1`
-/

namespace A244367.P13150777551790379466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A259179 n : ℚ) / (A007318 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244367.P13150777551790379466

/-! ## A244367.P8118216550786729387

`∑[A259179(n+1)]+1-A259179(n+1)`
-/

namespace A244367.P8118216550786729387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A259179 (n + 1))

end

end A244367.P8118216550786729387

/-!
# A244368: Related to small gaps between primes: a(n) = A235686(n)/2.

The programs for A244368, there is no canonical definition to state claims against.
-/

/-! ## A244368.P6172546826652997324

`A235686(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244368.P6172546826652997324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235686 n : ℚ) / 2

end

end A244368.P6172546826652997324

/-! ## A244368.P7951140830848699110

`A001281(A235686(n))`
-/

namespace A244368.P7951140830848699110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A235686 n).toNat

end

end A244368.P7951140830848699110

/-! ## A244368.P7500531900664468882

`A004524(A235686(n)+1)`
-/

namespace A244368.P7500531900664468882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A235686 n + 1).toNat

end

end A244368.P7500531900664468882

/-! ## A244368.P10737792132049597397

`A004526(A235686(n)+1)`
-/

namespace A244368.P10737792132049597397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A235686 n + 1).toNat

end

end A244368.P10737792132049597397

/-! ## A244368.P11768623899150272979

`A028242(A235686(n)+1)`
-/

namespace A244368.P11768623899150272979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A235686 n + 1).toNat

end

end A244368.P11768623899150272979

/-! ## A244368.P6202296576901619201

`A057979(A235686(n)+1)`
-/

namespace A244368.P6202296576901619201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A235686 n + 1).toNat

end

end A244368.P6202296576901619201

/-! ## A244368.P16666385073627835692

`A061721(A235686(n)+1)`
-/

namespace A244368.P16666385073627835692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061721 (A235686 n + 1).toNat

end

end A244368.P16666385073627835692

/-! ## A244368.P769997876350938373

`A046667(A235686(n)+2)`
-/

namespace A244368.P769997876350938373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A235686 n + 2).toNat

end

end A244368.P769997876350938373

/-! ## A244368.P16320658068378336278

`A002265(2*A235686(n))`
-/

namespace A244368.P16320658068378336278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A235686 n).toNat

end

end A244368.P16320658068378336278

/-! ## A244368.P10459897812976665149

`A008615(3*A235686(n))`
-/

namespace A244368.P10459897812976665149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A235686 n).toNat

end

end A244368.P10459897812976665149

/-! ## A244368.P9461163631689634323

`A004525(lcm(2, A235686(n)))`
-/

namespace A244368.P9461163631689634323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A235686 n))

end

end A244368.P9461163631689634323

/-! ## A244368.P16241779442723240106

`A004524(or(1, A235686(n)))`
-/

namespace A244368.P16241779442723240106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A235686 n)).toNat

end

end A244368.P16241779442723240106

/-! ## A244368.P2530194465383222221

`A004526(or(1, A235686(n)))`
-/

namespace A244368.P2530194465383222221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A235686 n)).toNat

end

end A244368.P2530194465383222221

/-! ## A244368.P17194407826166904387

`A004524(xor(1, A235686(n)))`
-/

namespace A244368.P17194407826166904387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.xor 1 (A235686 n)).toNat

end

end A244368.P17194407826166904387

/-! ## A244368.P17120967059045501565

`A004526(xor(1, A235686(n)))`
-/

namespace A244368.P17120967059045501565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor 1 (A235686 n)).toNat

end

end A244368.P17120967059045501565

/-! ## A244368.P13652808252528506955

`A057979(xor(1, A235686(n)))`
-/

namespace A244368.P13652808252528506955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.xor 1 (A235686 n)).toNat

end

end A244368.P13652808252528506955

/-! ## A244368.P11480854546065898987

`A029578(A235686(n)+2)-1`
-/

namespace A244368.P11480854546065898987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A235686 n + 2).toNat - 1

end

end A244368.P11480854546065898987

/-! ## A244368.P8738704318084841610

`A029578(A235686(n))%A062515(n)`
-/

namespace A244368.P8738704318084841610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029578 (A235686 n).toNat) (A062515 n)

end

end A244368.P8738704318084841610

/-! ## A244368.P3926530148257049077

`A002265(A235686(n)+A235686(n)+1)`
-/

namespace A244368.P3926530148257049077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A235686 n + (A235686 n + 1)).toNat

end

end A244368.P3926530148257049077

/-!
# A244369: Palindromic right-angled primes.

The programs for A244369, there is no canonical definition to state claims against.
-/

/-! ## A244369.P12343666272125834362

`A167842(A194836(2*n+1))`
-/

namespace A244369.P12343666272125834362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167842 (A194836 (2 * n + 1)).toNat

end

end A244369.P12343666272125834362

/-!
# A244370: Total number of toothpicks after n-th stage in the toothpick structure of the symmetric representation of sigma in the four quadrants.

The programs for A244370, there is no canonical definition to state claims against.
-/

/-! ## A244370.P3513208292478985327

`4*A244362(n+1)`
-/

namespace A244370.P3513208292478985327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A244362 (n + 1)

end

end A244370.P3513208292478985327

/-! ## A244370.P13301496449995337009

`8*A244360(n+1)`
-/

namespace A244370.P13301496449995337009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A244360 (n + 1)

end

end A244370.P13301496449995337009

/-! ## A244370.P8322180283504054426

`∑[A244371(n+1)]`
-/

namespace A244370.P8322180283504054426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244370.P8322180283504054426

/-! ## A244370.P684176225513283600

`∑[2*A274919(n+1)]`
-/

namespace A244370.P684176225513283600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244370.P684176225513283600

/-! ## A244370.P18293481937328177140

`∑[4*A244363(n+1)]`
-/

namespace A244370.P18293481937328177140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A244363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244370.P18293481937328177140

/-!
# A244371: Number of toothpicks added at n-th stage in the toothpick structure of the symmetric representation of sigma in the four quadrants.

The programs for A244371, there is no canonical definition to state claims against.
-/

/-! ## A244371.P7424186762175988590

`4*A244363(n+1)`
-/

namespace A244371.P7424186762175988590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A244363 (n + 1)

end

end A244371.P7424186762175988590

/-! ## A244371.P18258365142670312818

`8*A244361(n+1)`
-/

namespace A244371.P18258365142670312818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A244361 (n + 1)

end

end A244371.P18258365142670312818

/-! ## A244371.P17573626920127974186

`2*A274919(n+1)`
-/

namespace A244371.P17573626920127974186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274919 (n + 1)

end

end A244371.P17573626920127974186

/-! ## A244371.P5546422196277119162

`8*(A348854(n+1)-(n+1))`
-/

namespace A244371.P5546422196277119162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A348854 (n + 1) - (n + 1 : ℤ))

end

end A244371.P5546422196277119162

/-! ## A244371.P9676616156540925074

`4*(2*(n+1)-A279228(n+1))`
-/

namespace A244371.P9676616156540925074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((2 * (n + 1) : ℤ) - A279228 (n + 1))

end

end A244371.P9676616156540925074

/-!
# A244372: Number T(n,k) of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) k; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A244372, there is no canonical definition to state claims against.
-/

/-! ## A244372.P3863671360044590740

`A141298(3^A004248(n))`
-/

namespace A244372.P3863671360044590740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141298 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A244372.P3863671360044590740

/-! ## A244372.P1736658493906296159

`∑{d}[A269945(n), A151905(#)]`
-/

namespace A244372.P1736658493906296159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A151905 d

end

end A244372.P1736658493906296159

/-! ## A244372.P13320144968279384786

`∑{e}[A352902(A048993(n)), #]`
-/

namespace A244372.P13320144968279384786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352902 (A048993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A244372.P13320144968279384786

/-! ## A244372.P1675623980592886251

`floor((A031501(A058710(n))+1)/sqrt(6))`
-/

namespace A244372.P1675623980592886251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031501 (A058710 n).toNat + 1 : ℝ) / Real.sqrt (6 : ℝ)⌋

end

end A244372.P1675623980592886251

/-! ## A244372.P11149334551569021049

`A333632(A143395(n))`
-/

namespace A244372.P11149334551569021049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A143395 n).toNat

end

end A244372.P11149334551569021049

/-!
# A244374: Primes which are the arithmetic mean of two consecutive primes of the form 4n+3.

The programs for A244374, the canonical program `A244374.P963690707800537045` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244374 has offset 1).

The definition of A244374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244374.P963690707800537045

`p?[A104635(n+2)+A104635(n+1)+1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244374

/-- `p?[A104635(n+2)+A104635(n+1)+1]` -/
def P963690707800537045.Spec : Prop :=
  ∀ n, P963690707800537045.a n = A244374 (n + 1)

theorem P963690707800537045.correct : P963690707800537045.Spec := by
  intro n
  simp only [A244374, Nat.add_sub_cancel]

end A244374

/-! ## A244374.P5104165080140360823

`p?[A090670(n+2)+A090670(n+1)-3]`
-/

namespace A244374.P5104165080140360823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 2) + (A090670 (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244374.P5104165080140360823

namespace A244374

/-- `p?[A090670(n+2)+A090670(n+1)-3]` -/
def P5104165080140360823.Spec : Prop :=
  ∀ n, P5104165080140360823.a n = A244374 (n + 1)

end A244374

/-! ## A244374.P16790407146452959716

`p?[A090658(n+1)+A004273(A082076(n+1))]`
-/

namespace A244374.P16790407146452959716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090658 (n + 1) + A004273 (A082076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244374.P16790407146452959716

namespace A244374

/-- `p?[A090658(n+1)+A004273(A082076(n+1))]` -/
def P16790407146452959716.Spec : Prop :=
  ∀ n, P16790407146452959716.a n = A244374 (n + 1)

end A244374

/-! ## A244374.P18307916956491620544

`p?[A000265(A002145(n+1)+A002145(n+2))]`
-/

namespace A244374.P18307916956491620544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002145 (n + 1) + A002145 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244374.P18307916956491620544

namespace A244374

/-- `p?[A000265(A002145(n+1)+A002145(n+2))]` -/
def P18307916956491620544.Spec : Prop :=
  ∀ n, P18307916956491620544.a n = A244374 (n + 1)

end A244374

/-! ## A244374.P9634548645574017229

`p?[A109613(A104635(n+1)+A104635(n+2))]`
-/

namespace A244374.P9634548645574017229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A104635 (n + 1) + A104635 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244374.P9634548645574017229

namespace A244374

/-- `p?[A109613(A104635(n+1)+A104635(n+2))]` -/
def P9634548645574017229.Spec : Prop :=
  ∀ n, P9634548645574017229.a n = A244374 (n + 1)

end A244374

/-!
# A244375: Expansion of (a(q) + 3*a(q^2) - 4*a(q^4)) / 6 in powers of q where a() is a cubic AGM theta function.

The programs for A244375, the canonical program `A244375.P14907623755703960831` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244375 has offset 1).

The definition of A244375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112298, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244375.P14907623755703960831

`(-1)^n*A112298(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A244375

/-- `(-1)^n*A112298(n+1)` -/
def P14907623755703960831.Spec : Prop :=
  ∀ n, P14907623755703960831.a n = A244375 (n + 1)

theorem P14907623755703960831.correct : P14907623755703960831.Spec := by
  intro n
  simp only [A244375, Nat.add_sub_cancel]

end A244375

/-! ## A244375.P9151219018023244978

`A010684(n)*A113447(n+1)`
-/

namespace A244375.P9151219018023244978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A113447 (n + 1)

end

end A244375.P9151219018023244978

namespace A244375

/-- `A010684(n)*A113447(n+1)` -/
def P9151219018023244978.Spec : Prop :=
  ∀ n, P9151219018023244978.a n = A244375 (n + 1)

theorem P9151219018023244978.correct : P9151219018023244978.Spec := by
  intro n
  simp only [A244375, Nat.add_sub_cancel, A244375.P9151219018023244978.a, A244375.P14907623755703960831.a, A010684, A010684.P11440423886746696901.a, A112298, A112298.P13991926760380096719.a, A113447, A113447.P16347397577668592874.a, A093829, A093829.P14089070398035005194.a, A038502, A038502.P13149226578735079959.a, A112848, A112848.P9414413279454382001.f1, A112848.P9414413279454382001.a, A049347, A049347.P9996747395155426839.a, A117188, A117188.P8831629070024374832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A244375

/-! ## A244375.P8058208842567277534

`A136748(n+1)*A176563(n)`
-/

namespace A244375.P8058208842567277534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136748 (n + 1) * A176563 n

end

end A244375.P8058208842567277534

namespace A244375

/-- `A136748(n+1)*A176563(n)` -/
def P8058208842567277534.Spec : Prop :=
  ∀ n, P8058208842567277534.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P11347646672579009495

`A112298(n+1)/A033999(n)`
-/

namespace A244375.P11347646672579009495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112298 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A244375.P11347646672579009495

namespace A244375

/-- `A112298(n+1)/A033999(n)` -/
def P11347646672579009495.Spec : Prop :=
  ∀ n, P11347646672579009495.a n = (A244375 (n + 1) : ℚ)

end A244375

/-! ## A244375.P7081569393191476199

`(2-A033999(n))*A113447(n+1)`
-/

namespace A244375.P7081569393191476199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A113447 (n + 1)

end

end A244375.P7081569393191476199

namespace A244375

/-- `(2-A033999(n))*A113447(n+1)` -/
def P7081569393191476199.Spec : Prop :=
  ∀ n, P7081569393191476199.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P3384916520051760094

`A115979(n+1)+A096936(2*(n+1))`
-/

namespace A244375.P3384916520051760094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (n + 1) + A096936 (2 * (n + 1))

end

end A244375.P3384916520051760094

namespace A244375

/-- `A115979(n+1)+A096936(2*(n+1))` -/
def P3384916520051760094.Spec : Prop :=
  ∀ n, P3384916520051760094.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P4817022597171219645

`2*A113447(n+1)-A093829(n+1)`
-/

namespace A244375.P4817022597171219645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113447 (n + 1) - A093829 (n + 1)

end

end A244375.P4817022597171219645

namespace A244375

/-- `2*A113447(n+1)-A093829(n+1)` -/
def P4817022597171219645.Spec : Prop :=
  ∀ n, P4817022597171219645.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P15550381964649274082

`A115979(n+1)-A115979(2*(n+1))`
-/

namespace A244375.P15550381964649274082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (n + 1) - A115979 (2 * (n + 1))

end

end A244375.P15550381964649274082

namespace A244375

/-- `A115979(n+1)-A115979(2*(n+1))` -/
def P15550381964649274082.Spec : Prop :=
  ∀ n, P15550381964649274082.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P4192661182323385023

`∑{d}[n+1, A010686(#-1)*A112300((n+1)/#)]`
-/

namespace A244375.P4192661182323385023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010686 (d - 1) * A112300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244375.P4192661182323385023

namespace A244375

/-- `∑{d}[n+1, A010686(#-1)*A112300((n+1)/#)]` -/
def P4192661182323385023.Spec : Prop :=
  ∀ n, P4192661182323385023.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P5812092037376401315

`2*A093829(A060789(n+1))-A093829(n+1)`
-/

namespace A244375.P5812092037376401315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093829 (A060789 (n + 1)).toNat - A093829 (n + 1)

end

end A244375.P5812092037376401315

namespace A244375

/-- `2*A093829(A060789(n+1))-A093829(n+1)` -/
def P5812092037376401315.Spec : Prop :=
  ∀ n, P5812092037376401315.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P9688760336662765484

`A093829(n+1)+A113447(n+1)-A112298(n+1)`
-/

namespace A244375.P9688760336662765484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) + (A113447 (n + 1) - A112298 (n + 1))

end

end A244375.P9688760336662765484

namespace A244375

/-- `A093829(n+1)+A113447(n+1)-A112298(n+1)` -/
def P9688760336662765484.Spec : Prop :=
  ∀ n, P9688760336662765484.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P13879708038744820469

`A107760(n+1)-A033716(n+1)`
-/

namespace A244375.P13879708038744820469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 (n + 1) - A033716 (n + 1)

end

end A244375.P13879708038744820469

namespace A244375

/-- `A107760(n+1)-A033716(n+1)` -/
def P13879708038744820469.Spec : Prop :=
  ∀ n, P13879708038744820469.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P6544610796579463288

`A253623(n+1)-A107760(n+1)`
-/

namespace A244375.P6544610796579463288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253623 (n + 1) - A107760 (n + 1)

end

end A244375.P6544610796579463288

namespace A244375

/-- `A253623(n+1)-A107760(n+1)` -/
def P6544610796579463288.Spec : Prop :=
  ∀ n, P6544610796579463288.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P1934945786338764035

`A253625(n+1)-A115978(n+1)`
-/

namespace A244375.P1934945786338764035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253625 (n + 1) - A115978 (n + 1)

end

end A244375.P1934945786338764035

namespace A244375

/-- `A253625(n+1)-A115978(n+1)` -/
def P1934945786338764035.Spec : Prop :=
  ∀ n, P1934945786338764035.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P2418579481826052722

`(A253623(n+1)-A033716(n+1))/2`
-/

namespace A244375.P2418579481826052722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253623 (n + 1) - A033716 (n + 1) : ℚ) / 2

end

end A244375.P2418579481826052722

namespace A244375

/-- `(A253623(n+1)-A033716(n+1))/2` -/
def P2418579481826052722.Spec : Prop :=
  ∀ n, P2418579481826052722.a n = (A244375 (n + 1) : ℚ)

end A244375

/-! ## A244375.P16384136309627095801

`A107760(n+1)-lcm(2, A115978(n+1))`
-/

namespace A244375.P16384136309627095801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 (n + 1) - (Int.lcm 2 (A115978 (n + 1)) : ℤ)

end

end A244375.P16384136309627095801

namespace A244375

/-- `A107760(n+1)-lcm(2, A115978(n+1))` -/
def P16384136309627095801.Spec : Prop :=
  ∀ n, P16384136309627095801.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P5452825600599686124

`2*A093829(A080512(n+1))-A093829(n+1)`
-/

namespace A244375.P5452825600599686124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093829 (A080512 (n + 1)).toNat - A093829 (n + 1)

end

end A244375.P5452825600599686124

namespace A244375

/-- `2*A093829(A080512(n+1))-A093829(n+1)` -/
def P5452825600599686124.Spec : Prop :=
  ∀ n, P5452825600599686124.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P10494824319444083500

`A112298(A022998(n+1))`
-/

namespace A244375.P10494824319444083500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112298 (A022998 (n + 1)).toNat

end

end A244375.P10494824319444083500

namespace A244375

/-- `A112298(A022998(n+1))` -/
def P10494824319444083500.Spec : Prop :=
  ∀ n, P10494824319444083500.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P5910684194692471888

`A112298(A257088(n+1))`
-/

namespace A244375.P5910684194692471888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112298 (A257088 (n + 1)).toNat

end

end A244375.P5910684194692471888

namespace A244375

/-- `A112298(A257088(n+1))` -/
def P5910684194692471888.Spec : Prop :=
  ∀ n, P5910684194692471888.a n = A244375 (n + 1)

end A244375

/-! ## A244375.P13303371351219881918

`2*A113447(n+1)-A113447(A068217(n+1))`
-/

namespace A244375.P13303371351219881918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113447 (n + 1) - A113447 (A068217 (n + 1)).toNat

end

end A244375.P13303371351219881918

namespace A244375

/-- `2*A113447(n+1)-A113447(A068217(n+1))` -/
def P13303371351219881918.Spec : Prop :=
  ∀ n, P13303371351219881918.a n = A244375 (n + 1)

end A244375

/-!
# A244378: Numbers k such that 1 + k + k^3 + k^5 + k^7 + k^9 + ... + k^17 is prime.

The programs for A244378, there is no canonical definition to state claims against.
-/

/-! ## A244378.P4971411524778722737

`A320456(A188471(n+1))-4`
-/

namespace A244378.P4971411524778722737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (A188471 (n + 1)).toNat - 4

end

end A244378.P4971411524778722737

/-!
# A244379: Numbers k such that 1 + k + k^3 + k^5 + k^7 + k^9 + ... + k^21 is prime.

The programs for A244379, there is no canonical definition to state claims against.
-/

/-! ## A244379.P76114778718250764

`A346305(A346298(3*n)+A075708(n+1))`
-/

namespace A244379.P76114778718250764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346305 (A346298 (3 * n) + A075708 (n + 1)).toNat

end

end A244379.P76114778718250764

/-!
# A244388: Numbers k such that 1 + k + k^3 + k^5 + k^7 + k^9 + ... + k^49 is prime.

The programs for A244388, there is no canonical definition to state claims against.
-/

/-! ## A244388.P13690876267112228983

`xor(A006530(A239603(n+1)), A077851(n))`
-/

namespace A244388.P13690876267112228983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006530 (A239603 (n + 1)).toNat) (A077851 n)

end

end A244388.P13690876267112228983

/-!
# A244392: Primes p such that p + (p reversed) is a palindrome.

The programs for A244392, there is no canonical definition to state claims against.
-/

/-! ## A244392.P17284962389576054408

`p?[A015976(n+1)]`
-/

namespace A244392.P17284962389576054408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244392.P17284962389576054408

/-! ## A244392.P2193398465779611308

`record[A020639(A015976(n+2))]`
-/

namespace A244392.P2193398465779611308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A015976 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244392.P2193398465779611308

/-! ## A244392.P15024972608930026720

`filter[A015976(n+1), A010051(#)]`
-/

namespace A244392.P15024972608930026720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A244392.P15024972608930026720

/-! ## A244392.P2289794728407722171

`filter[A015976(n+1), A323153(#)]`
-/

namespace A244392.P2289794728407722171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A244392.P2289794728407722171

/-! ## A244392.P16661807456338711399

`∩[A000040(n+1), A015976(n+1)]`
-/

namespace A244392.P16661807456338711399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244392.P16661807456338711399

/-! ## A244392.P9053251141619734948

`∩[A015976(n+1), A045319(n+1)]`
-/

namespace A244392.P9053251141619734948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244392.P9053251141619734948

/-! ## A244392.P5576164311967264840

`∩[A015976(n+1), A053813(n+1)]`
-/

namespace A244392.P5576164311967264840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244392.P5576164311967264840

/-! ## A244392.P1411991773858881023

`∩[A015976(n+1), A116974(n+1)]`
-/

namespace A244392.P1411991773858881023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244392.P1411991773858881023

/-! ## A244392.P6545590045644224198

`∩[A015976(n+1), A182986(n+1)]`
-/

namespace A244392.P6545590045644224198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244392.P6545590045644224198

/-! ## A244392.P3256416457620422164

`p?[A015976(n-log2(1/2))-A000038(n)]`
-/

namespace A244392.P3256416457620422164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244392.P3256416457620422164

/-! ## A244392.P13173524459962731846

`p?[A015976(n-log2(1/2))*A057427(n)]`
-/

namespace A244392.P13173524459962731846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244392.P13173524459962731846

/-! ## A244392.P13528453882593807322

`filter[A015976(n+2), A080339(#)]`
-/

namespace A244392.P13528453882593807322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A244392.P13528453882593807322

/-! ## A244392.P16343946399835571020

`A028310(p?[A015976(n-log2(1/2))])`
-/

namespace A244392.P16343946399835571020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015976 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A244392.P16343946399835571020

/-! ## A244392.P14319093867677469119

`p?[(n+1)*A225538(n)]`
-/

namespace A244392.P14319093867677469119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A225538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244392.P14319093867677469119

/-! ## A244392.P15454594345420930957

`p?[lcm(A131738(n), A225538(n))]`
-/

namespace A244392.P15454594345420930957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131738 n) (A225538 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A244392.P15454594345420930957

/-!
# A244393: Number of partitions of n the largest part of which, call it m, appears once, m-1 appears at most twice, m-2 appears at most thrice, etc.

The programs for A244393, there is no canonical definition to state claims against.
-/

/-! ## A244393.P9934152414444629287

`A178786(A027559(n)-A000065(n))`
-/

namespace A244393.P9934152414444629287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A027559 n - A000065 n).toNat

end

end A244393.P9934152414444629287

/-! ## A244393.P14455326996850453534

`A111651(A248098(n+3))-A124767(n)`
-/

namespace A244393.P14455326996850453534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A248098 (n + 3)).toNat - A124767 n

end

end A244393.P14455326996850453534

/-! ## A244393.P2973860072148705402

`or(A024936(A166920(n)), A266300(n))`
-/

namespace A244393.P2973860072148705402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024936 (A166920 n).toNat) (A266300 n)

end

end A244393.P2973860072148705402

/-! ## A244393.P3225608561618251439

`xor(A240306(n), A288167(A214663(n)))`
-/

namespace A244393.P3225608561618251439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A240306 n) (A288167 (A214663 n).toNat)

end

end A244393.P3225608561618251439

/-! ## A244393.P13966485059509810406

`A061071(A237770(n))`
-/

namespace A244393.P13966485059509810406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A237770 n).toNat

end

end A244393.P13966485059509810406

/-!
# A244395: Number of partitions of n in which the largest summand has frequency 1, the next largest summand has frequency at most 2, the third largest has frequency at most 3, etc.

The programs for A244395, there is no canonical definition to state claims against.
-/

/-! ## A244395.P13295040612913812426

`floor(A004525(record[A060285(n)])^(1-1/2))`
-/

namespace A244395.P13295040612913812426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)⌋

end

end A244395.P13295040612913812426

/-! ## A244395.P5632516213772289309

`A000196(A004525(record[A060285(n)]))`
-/

namespace A244395.P5632516213772289309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A244395.P5632516213772289309

/-! ## A244395.P5029946718352378285

`A000196(A110654(record[A060285(n)]))`
-/

namespace A244395.P5029946718352378285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A244395.P5029946718352378285

/-! ## A244395.P1199710673447662998

`A156262(A332745(n))`
-/

namespace A244395.P1199710673447662998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A332745 n).toNat

end

end A244395.P1199710673447662998

/-! ## A244395.P16252924371478291903

`A115671(n)-A010054(A096818(n+1))`
-/

namespace A244395.P16252924371478291903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 n - A010054 (A096818 (n + 1)).toNat

end

end A244395.P16252924371478291903

/-!
# A244396: a(n) = Sum_{k=1, n} phi(k)*index(k, n), with phi(k) the Euler totient A000010(k) and index(k,n) the position of 1/k in the n-th row of the Farey sequence of order k, A049805(n,k).

The programs for A244396, there is no canonical definition to state claims against.
-/

/-! ## A244396.P1812521977672323832

`A048134(n+1)-1`
-/

namespace A244396.P1812521977672323832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048134 (n + 1) - 1

end

end A244396.P1812521977672323832

/-! ## A244396.P12797123043401717773

`A048241(n+1)-2`
-/

namespace A244396.P12797123043401717773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048241 (n + 1) - 2

end

end A244396.P12797123043401717773

/-! ## A244396.P14024027259785951780

`Δ[∑[A048134(n)]-n]`
-/

namespace A244396.P14024027259785951780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244396.P14024027259785951780

/-! ## A244396.P14622329218940131566

`∑[A048240(n+1)]-1`
-/

namespace A244396.P14622329218940131566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A244396.P14622329218940131566

/-! ## A244396.P17165911068115307

`abs(A048134(-xor(n, -1))-1)`
-/

namespace A244396.P17165911068115307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048134 (-Int.xor (n : ℤ) (-1)).toNat - 1|

end

end A244396.P17165911068115307

/-!
# A244398: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 2.

The programs for A244398, there is no canonical definition to state claims against.
-/

/-! ## A244398.P10716614445365254860

`A001190(n+4)-1`
-/

namespace A244398.P10716614445365254860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 (n + 4) - 1

end

end A244398.P10716614445365254860

/-! ## A244398.P3139330049418015847

`A036656(n+4)-1`
-/

namespace A244398.P3139330049418015847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 (n + 4) - 1

end

end A244398.P3139330049418015847

/-! ## A244398.P4899644793627414012

`∑[A036657(n+3)]`
-/

namespace A244398.P4899644793627414012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244398.P4899644793627414012

/-! ## A244398.P12650708249330834868

`record[abs(1-A001190(n))]`
-/

namespace A244398.P12650708249330834868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001190 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244398.P12650708249330834868

/-! ## A244398.P2931163520955441594

`Δ[A173282(n+3)]-1`
-/

namespace A244398.P2931163520955441594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173282 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A244398.P2931163520955441594

/-! ## A244398.P13379587652718674404

`∑[abs(Δ[A036656(n+3)])]`
-/

namespace A244398.P13379587652718674404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244398.P13379587652718674404

/-! ## A244398.P17001114358359123805

`∑[A088326(∑[n+1]+2)]`
-/

namespace A244398.P17001114358359123805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088326 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244398.P17001114358359123805

/-! ## A244398.P7800158019965264707

`record[Δ[A088326(n+3)]]`
-/

namespace A244398.P7800158019965264707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088326 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244398.P7800158019965264707

/-! ## A244398.P14699658899876048525

`A244372(∑[n+2]+4)`
-/

namespace A244398.P14699658899876048525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A244398.P14699658899876048525

/-! ## A244398.P449606202552262130

`record[A244372(A000124(n)+2)]`
-/

namespace A244398.P449606202552262130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244398.P449606202552262130

/-!
# A244399: Number of unlabeled rooted trees with n nodes and maximal outdegree (branching factor) 3.

The programs for A244399, there is no canonical definition to state claims against.
-/

/-! ## A244399.P5607318049349998759

`A000598(n+4)-A001190(n+5)`
-/

namespace A244399.P5607318049349998759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 (n + 4) - A001190 (n + 5)

end

end A244399.P5607318049349998759

/-! ## A244399.P7148938441353392800

`A000598(n+4)-A036656(n+5)`
-/

namespace A244399.P7148938441353392800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 (n + 4) - A036656 (n + 5)

end

end A244399.P7148938441353392800

/-! ## A244399.P15083688438659648641

`record[A244372(∑[n+1]+4)]`
-/

namespace A244399.P15083688438659648641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244399.P15083688438659648641

/-! ## A244399.P12106927499818629

`A244372(A055999(n)+10)`
-/

namespace A244399.P12106927499818629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A055999 n + 10).toNat

end

end A244399.P12106927499818629

/-! ## A244399.P6954193307333337886

`A244372(A167614(n+2)+1)`
-/

namespace A244399.P6954193307333337886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167614 (n + 2) + 1).toNat

end

end A244399.P6954193307333337886

/-! ## A244399.P15436496405527166126

`A244372(A167499(n+2)-1)`
-/

namespace A244399.P15436496405527166126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167499 (n + 2) - 1).toNat

end

end A244399.P15436496405527166126

/-! ## A244399.P4138283563017537046

`A244372(A167487(n+2)-3)`
-/

namespace A244399.P4138283563017537046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A167487 (n + 2) - 3).toNat

end

end A244399.P4138283563017537046

/-! ## A244399.P14109641043457582551

`A244372(A038722(A167499(n)+A016777(n)))`
-/

namespace A244399.P14109641043457582551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244372 (A038722 (A167499 n + A016777 n).toNat).toNat

end

end A244399.P14109641043457582551

