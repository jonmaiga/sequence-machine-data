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
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A031900: Lucky numbers with size of gaps equal to 18 (lower terms).

The programs for A031900, there is no canonical definition to state claims against.
-/

/-! ## A031900.P7608395214900206477

`A031901(n+1)-18`
-/

namespace A031900.P7608395214900206477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031901 (n + 1) - 18

end

end A031900.P7608395214900206477

/-! ## A031900.P18092062852315993632

`A269370(A031901(n+1))`
-/

namespace A031900.P18092062852315993632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031901 (n + 1)).toNat

end

end A031900.P18092062852315993632

/-!
# A031901: Lucky numbers with size of gaps equal to 18 (upper terms).

The programs for A031901, there is no canonical definition to state claims against.
-/

/-! ## A031901.P10970125694889995405

`A031900(n+1)+18`
-/

namespace A031901.P10970125694889995405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031900 (n + 1) + 18

end

end A031901.P10970125694889995405

/-! ## A031901.P4509825525486755616

`A269369(A031900(n+1))`
-/

namespace A031901.P4509825525486755616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031900 (n + 1)).toNat

end

end A031901.P4509825525486755616

/-!
# A031902: Lucky numbers with size of gaps equal to 20 (lower terms).

The programs for A031902, there is no canonical definition to state claims against.
-/

/-! ## A031902.P11214730118326343820

`A031903(n+1)-20`
-/

namespace A031902.P11214730118326343820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031903 (n + 1) - 20

end

end A031902.P11214730118326343820

/-! ## A031902.P529599469119677034

`A269370(A031903(n+1))`
-/

namespace A031902.P529599469119677034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269370 (A031903 (n + 1)).toNat

end

end A031902.P529599469119677034

/-!
# A031903: Lucky numbers with size of gaps equal to 20 (upper terms).

The programs for A031903, there is no canonical definition to state claims against.
-/

/-! ## A031903.P2975716248998760681

`A031902(n+1)+20`
-/

namespace A031903.P2975716248998760681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031902 (n + 1) + 20

end

end A031903.P2975716248998760681

/-! ## A031903.P18022135209537334023

`A269369(A031902(n+1))`
-/

namespace A031903.P18022135209537334023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A031902 (n + 1)).toNat

end

end A031903.P18022135209537334023

/-!
# A031904: a(n) = prime(9*n - 4).

The programs for A031904, the canonical program `A031904.P15798358652805012498` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031904 has offset 1).

The definition of A031904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031904.P15798358652805012498

`A373789(9*(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031904

/-- `A373789(9*(n+1))` -/
def P15798358652805012498.Spec : Prop :=
  ∀ n, P15798358652805012498.a n = A031904 (n + 1)

theorem P15798358652805012498.correct : P15798358652805012498.Spec := by
  intro n
  simp only [A031904, Nat.add_sub_cancel]

end A031904

/-! ## A031904.P10946228663591406661

`A031369(3*n+2)`
-/

namespace A031904.P10946228663591406661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031369 (3 * n + 2)

end

end A031904.P10946228663591406661

namespace A031904

/-- `A031369(3*n+2)` -/
def P10946228663591406661.Spec : Prop :=
  ∀ n, P10946228663591406661.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P6982631096224724363

`A001748(A017221(n))/3`
-/

namespace A031904.P6982631096224724363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A017221 n).toNat : ℚ) / 3

end

end A031904.P6982631096224724363

namespace A031904

/-- `A001748(A017221(n))/3` -/
def P6982631096224724363.Spec : Prop :=
  ∀ n, P6982631096224724363.a n = (A031904 (n + 1) : ℚ)

end A031904

/-! ## A031904.P5575920401304800131

`A157996(A022144(n)+n)`
-/

namespace A031904.P5575920401304800131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (A022144 n + (n : ℤ)).toNat

end

end A031904.P5575920401304800131

namespace A031904

/-- `A157996(A022144(n)+n)` -/
def P5575920401304800131.Spec : Prop :=
  ∀ n, P5575920401304800131.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P12954490556679673932

`A066050(9*(n+1))`
-/

namespace A031904.P12954490556679673932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (9 * (n + 1))

end

end A031904.P12954490556679673932

namespace A031904

/-- `A066050(9*(n+1))` -/
def P12954490556679673932.Spec : Prop :=
  ∀ n, P12954490556679673932.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P13669782926687616513

`A004139(9*n+3)`
-/

namespace A031904.P13669782926687616513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (9 * n + 3)

end

end A031904.P13669782926687616513

namespace A031904

/-- `A004139(9*n+3)` -/
def P13669782926687616513.Spec : Prop :=
  ∀ n, P13669782926687616513.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P16311828931481323862

`A000040(9*n+5)`
-/

namespace A031904.P16311828931481323862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (9 * n + 5)

end

end A031904.P16311828931481323862

namespace A031904

/-- `A000040(9*n+5)` -/
def P16311828931481323862.Spec : Prop :=
  ∀ n, P16311828931481323862.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P17603119598371217364

`A008578(9*n+6)`
-/

namespace A031904.P17603119598371217364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * n + 6)

end

end A031904.P17603119598371217364

namespace A031904

/-- `A008578(9*n+6)` -/
def P17603119598371217364.Spec : Prop :=
  ∀ n, P17603119598371217364.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P12145175295587852986

`sqrt(A001248(9*n+5))`
-/

namespace A031904.P12145175295587852986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (9 * n + 5) : ℝ)

end

end A031904.P12145175295587852986

namespace A031904

/-- `sqrt(A001248(9*n+5))` -/
def P12145175295587852986.Spec : Prop :=
  ∀ n, P12145175295587852986.a n = (A031904 (n + 1) : ℝ)

end A031904

/-! ## A031904.P8892565721429107731

`A215848(3*(3*n+1))`
-/

namespace A031904.P8892565721429107731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (3 * (3 * n + 1))

end

end A031904.P8892565721429107731

namespace A031904

/-- `A215848(3*(3*n+1))` -/
def P8892565721429107731.Spec : Prop :=
  ∀ n, P8892565721429107731.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P3794503663137452910

`A006093(9*n+5)+1`
-/

namespace A031904.P3794503663137452910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (9 * n + 5) + 1

end

end A031904.P3794503663137452910

namespace A031904

/-- `A006093(9*n+5)+1` -/
def P3794503663137452910.Spec : Prop :=
  ∀ n, P3794503663137452910.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P16186295078305383753

`A008864(9*n+5)-1`
-/

namespace A031904.P16186295078305383753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (9 * n + 5) - 1

end

end A031904.P16186295078305383753

namespace A031904

/-- `A008864(9*n+5)-1` -/
def P16186295078305383753.Spec : Prop :=
  ∀ n, P16186295078305383753.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P2278243829051839500

`A040976(9*n+5)+2`
-/

namespace A031904.P2278243829051839500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (9 * n + 5) + 2

end

end A031904.P2278243829051839500

namespace A031904

/-- `A040976(9*n+5)+2` -/
def P2278243829051839500.Spec : Prop :=
  ∀ n, P2278243829051839500.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P2537651202562318911

`p?[lcm(dr(n), A000040(n+4))]`
-/

namespace A031904.P2537651202562318911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) (A000040 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031904.P2537651202562318911

namespace A031904

/-- `p?[lcm(dr(n), A000040(n+4))]` -/
def P2537651202562318911.Spec : Prop :=
  ∀ n, (P2537651202562318911.a n : ℤ) = A031904 (n + 1)

end A031904

/-! ## A031904.P12615861102855346741

`A065091(3*(3*n+1)+1)`
-/

namespace A031904.P12615861102855346741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * (3 * n + 1) + 1)

end

end A031904.P12615861102855346741

namespace A031904

/-- `A065091(3*(3*n+1)+1)` -/
def P12615861102855346741.Spec : Prop :=
  ∀ n, P12615861102855346741.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P14189941497494079094

`A158611(2*n+7*(n+1))`
-/

namespace A031904.P14189941497494079094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (2 * n + 7 * (n + 1))

end

end A031904.P14189941497494079094

namespace A031904

/-- `A158611(2*n+7*(n+1))` -/
def P14189941497494079094.Spec : Prop :=
  ∀ n, P14189941497494079094.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P3372546996208657501

`record[A000040(n+5)/dr(n+1)]`
-/

namespace A031904.P3372546996208657501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 5) : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031904.P3372546996208657501

namespace A031904

/-- `record[A000040(n+5)/dr(n+1)]` -/
def P3372546996208657501.Spec : Prop :=
  ∀ n, P3372546996208657501.a n = (A031904 (n + 1) : ℚ)

end A031904

/-! ## A031904.P6173089134373617261

`p?[gcd(dr(n+1)%5, A000040(n+1))]`
-/

namespace A031904.P6173089134373617261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) % 5 : ℕ) : ℤ) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031904.P6173089134373617261

namespace A031904

/-- `p?[gcd(dr(n+1)%5, A000040(n+1))]` -/
def P6173089134373617261.Spec : Prop :=
  ∀ n, (P6173089134373617261.a n : ℤ) = A031904 (n + 1)

end A031904

/-! ## A031904.P9369754811894658789

`A045319(A017209(n))`
-/

namespace A031904.P9369754811894658789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017209 n).toNat

end

end A031904.P9369754811894658789

namespace A031904

/-- `A045319(A017209(n))` -/
def P9369754811894658789.Spec : Prop :=
  ∀ n, P9369754811894658789.a n = A031904 (n + 1)

end A031904

/-! ## A031904.P3912143361072817647

`A046022(A017245(n))`
-/

namespace A031904.P3912143361072817647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A017245 n).toNat

end

end A031904.P3912143361072817647

namespace A031904

/-- `A046022(A017245(n))` -/
def P3912143361072817647.Spec : Prop :=
  ∀ n, P3912143361072817647.a n = A031904 (n + 1)

end A031904

/-!
# A031905: a(n) = prime(10*n - 4).

The programs for A031905, the canonical program `A031905.P1891284395022486736` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031905 has offset 1).

The definition of A031905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031905.P1891284395022486736

`A031392(2*(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031905

/-- `A031392(2*(n+1))` -/
def P1891284395022486736.Spec : Prop :=
  ∀ n, P1891284395022486736.a n = A031905 (n + 1)

theorem P1891284395022486736.correct : P1891284395022486736.Spec := by
  intro n
  simp only [A031905, Nat.add_sub_cancel]

end A031905

/-! ## A031905.P7609854308938686632

`A001748(10*n+6)/3`
-/

namespace A031905.P7609854308938686632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (10 * n + 6) : ℚ) / 3

end

end A031905.P7609854308938686632

namespace A031905

/-- `A001748(10*n+6)/3` -/
def P7609854308938686632.Spec : Prop :=
  ∀ n, P7609854308938686632.a n = (A031905 (n + 1) : ℚ)

end A031905

/-! ## A031905.P16027101249545151393

`A031215(4*n+n+3)`
-/

namespace A031905.P16027101249545151393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (4 * n + (n + 3))

end

end A031905.P16027101249545151393

namespace A031905

/-- `A031215(4*n+n+3)` -/
def P16027101249545151393.Spec : Prop :=
  ∀ n, P16027101249545151393.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P2243617595685410532

`∩[A031215(n+1), A031392(n+1)]`
-/

namespace A031905.P2243617595685410532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031905.P2243617595685410532

namespace A031905

/-- `∩[A031215(n+1), A031392(n+1)]` -/
def P2243617595685410532.Spec : Prop :=
  ∀ n, (P2243617595685410532.a n : ℤ) = A031905 (n + 1)

end A031905

/-! ## A031905.P4867830435366088443

`A004139(10*n+4)`
-/

namespace A031905.P4867830435366088443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (10 * n + 4)

end

end A031905.P4867830435366088443

namespace A031905

/-- `A004139(10*n+4)` -/
def P4867830435366088443.Spec : Prop :=
  ∀ n, P4867830435366088443.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P6851092221296671762

`A000040(10*n+6)`
-/

namespace A031905.P6851092221296671762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 * n + 6)

end

end A031905.P6851092221296671762

namespace A031905

/-- `A000040(10*n+6)` -/
def P6851092221296671762.Spec : Prop :=
  ∀ n, P6851092221296671762.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P16410773949749093929

`A008578(10*n+7)`
-/

namespace A031905.P16410773949749093929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (10 * n + 7)

end

end A031905.P16410773949749093929

namespace A031905

/-- `A008578(10*n+7)` -/
def P16410773949749093929.Spec : Prop :=
  ∀ n, P16410773949749093929.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P4623811318557102309

`A046022(10*n+8)`
-/

namespace A031905.P4623811318557102309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (10 * n + 8)

end

end A031905.P4623811318557102309

namespace A031905

/-- `A046022(10*n+8)` -/
def P4623811318557102309.Spec : Prop :=
  ∀ n, P4623811318557102309.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P15463664630716209002

`A045319(5*(2*n+1))`
-/

namespace A031905.P15463664630716209002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (5 * (2 * n + 1))

end

end A031905.P15463664630716209002

namespace A031905

/-- `A045319(5*(2*n+1))` -/
def P15463664630716209002.Spec : Prop :=
  ∀ n, P15463664630716209002.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P4269035269433545548

`A045344(5*(2*n+1))`
-/

namespace A031905.P4269035269433545548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (5 * (2 * n + 1))

end

end A031905.P4269035269433545548

namespace A031905

/-- `A045344(5*(2*n+1))` -/
def P4269035269433545548.Spec : Prop :=
  ∀ n, P4269035269433545548.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P3558601559466661498

`A065091(5*(2*n+1))`
-/

namespace A031905.P3558601559466661498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (5 * (2 * n + 1))

end

end A031905.P3558601559466661498

namespace A031905

/-- `A065091(5*(2*n+1))` -/
def P3558601559466661498.Spec : Prop :=
  ∀ n, P3558601559466661498.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P14178236376813183010

`A140475(5*(2*n+1))`
-/

namespace A031905.P14178236376813183010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (5 * (2 * n + 1))

end

end A031905.P14178236376813183010

namespace A031905

/-- `A140475(5*(2*n+1))` -/
def P14178236376813183010.Spec : Prop :=
  ∀ n, P14178236376813183010.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P17521899787445831915

`A181901(5*(2*n+1))`
-/

namespace A031905.P17521899787445831915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181901 (5 * (2 * n + 1))

end

end A031905.P17521899787445831915

namespace A031905

/-- `A181901(5*(2*n+1))` -/
def P17521899787445831915.Spec : Prop :=
  ∀ n, P17521899787445831915.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P590978842428182839

`A387959(5*(2*n+1))`
-/

namespace A031905.P590978842428182839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387959 (5 * (2 * n + 1))

end

end A031905.P590978842428182839

namespace A031905

/-- `A387959(5*(2*n+1))` -/
def P590978842428182839.Spec : Prop :=
  ∀ n, P590978842428182839.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P2439387527315129634

`A006093(10*n+6)+1`
-/

namespace A031905.P2439387527315129634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (10 * n + 6) + 1

end

end A031905.P2439387527315129634

namespace A031905

/-- `A006093(10*n+6)+1` -/
def P2439387527315129634.Spec : Prop :=
  ∀ n, P2439387527315129634.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P112863235946781416

`A008864(10*n+6)-1`
-/

namespace A031905.P112863235946781416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (10 * n + 6) - 1

end

end A031905.P112863235946781416

namespace A031905

/-- `A008864(10*n+6)-1` -/
def P112863235946781416.Spec : Prop :=
  ∀ n, P112863235946781416.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P14565441091661159225

`p?[gcd(n²%10, A000040(n+6))]`
-/

namespace A031905.P14565441091661159225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 % 10 : ℕ) : ℤ) (A000040 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031905.P14565441091661159225

namespace A031905

/-- `p?[gcd(n²%10, A000040(n+6))]` -/
def P14565441091661159225.Spec : Prop :=
  ∀ n, (P14565441091661159225.a n : ℤ) = A031905 (n + 1)

end A031905

/-! ## A031905.P9999802430205045792

`A067126(A017377(n))`
-/

namespace A031905.P9999802430205045792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (A017377 n).toNat

end

end A031905.P9999802430205045792

namespace A031905

/-- `A067126(A017377(n))` -/
def P9999802430205045792.Spec : Prop :=
  ∀ n, P9999802430205045792.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P16826528746564913311

`A108719(A017305(n))`
-/

namespace A031905.P16826528746564913311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017305 n).toNat

end

end A031905.P16826528746564913311

namespace A031905

/-- `A108719(A017305(n))` -/
def P16826528746564913311.Spec : Prop :=
  ∀ n, P16826528746564913311.a n = A031905 (n + 1)

end A031905

/-! ## A031905.P14488385041463527219

`A066050(A008592(n+1))`
-/

namespace A031905.P14488385041463527219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (A008592 (n + 1)).toNat

end

end A031905.P14488385041463527219

namespace A031905

/-- `A066050(A008592(n+1))` -/
def P14488385041463527219.Spec : Prop :=
  ∀ n, P14488385041463527219.a n = A031905 (n + 1)

end A031905

/-!
# A031906: a(n) = prime(6*n - 5).

The programs for A031906, the canonical program `A031906.P1952359557130741548` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031906 has offset 1).

The definition of A031906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031906.P1952359557130741548

`A031377(Δ[n²])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A031906

/-- `A031377(Δ[n²])` -/
def P1952359557130741548.Spec : Prop :=
  ∀ n, P1952359557130741548.a n = A031906 (n + 1)

theorem P1952359557130741548.correct : P1952359557130741548.Spec := by
  intro n
  simp only [A031906, Nat.add_sub_cancel]

end A031906

/-! ## A031906.P6719470414596393036

`A091735(Δ[n²])`
-/

namespace A031906.P6719470414596393036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031906.P6719470414596393036

namespace A031906

/-- `A091735(Δ[n²])` -/
def P6719470414596393036.Spec : Prop :=
  ∀ n, P6719470414596393036.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P8308801256526149638

`p?[A031377(2*n+1)]`
-/

namespace A031906.P8308801256526149638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031906.P8308801256526149638

namespace A031906

/-- `p?[A031377(2*n+1)]` -/
def P8308801256526149638.Spec : Prop :=
  ∀ n, P8308801256526149638.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P15280540069734868948

`p?[A091735(2*n+1)]`
-/

namespace A031906.P15280540069734868948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091735 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031906.P15280540069734868948

namespace A031906

/-- `p?[A091735(2*n+1)]` -/
def P15280540069734868948.Spec : Prop :=
  ∀ n, P15280540069734868948.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P11581354376858328713

`∩[A031377(n+1), A091735(n+1)]`
-/

namespace A031906.P11581354376858328713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031906.P11581354376858328713

namespace A031906

/-- `∩[A031377(n+1), A091735(n+1)]` -/
def P11581354376858328713.Spec : Prop :=
  ∀ n, (P11581354376858328713.a n : ℤ) = A031906 (n + 1)

end A031906

/-! ## A031906.P4163183789192144364

`A031368(3*n+1)`
-/

namespace A031906.P4163183789192144364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (3 * n + 1)

end

end A031906.P4163183789192144364

namespace A031906

/-- `A031368(3*n+1)` -/
def P4163183789192144364.Spec : Prop :=
  ∀ n, P4163183789192144364.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P2658859728920757244

`A001748(6*n+1)/3`
-/

namespace A031906.P2658859728920757244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (6 * n + 1) : ℚ) / 3

end

end A031906.P2658859728920757244

namespace A031906

/-- `A001748(6*n+1)/3` -/
def P2658859728920757244.Spec : Prop :=
  ∀ n, P2658859728920757244.a n = (A031906 (n + 1) : ℚ)

end A031906

/-! ## A031906.P3993034453992907898

`A001749(6*n+1)/4`
-/

namespace A031906.P3993034453992907898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (6 * n + 1) : ℚ) / 4

end

end A031906.P3993034453992907898

namespace A031906

/-- `A001749(6*n+1)/4` -/
def P3993034453992907898.Spec : Prop :=
  ∀ n, P3993034453992907898.a n = (A031906 (n + 1) : ℚ)

end A031906

/-! ## A031906.P16394512267440527033

`∩[A031368(n+1), A031377(n+1)]`
-/

namespace A031906.P16394512267440527033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031906.P16394512267440527033

namespace A031906

/-- `∩[A031368(n+1), A031377(n+1)]` -/
def P16394512267440527033.Spec : Prop :=
  ∀ n, (P16394512267440527033.a n : ℤ) = A031906 (n + 1)

end A031906

/-! ## A031906.P1770198765685023219

`∩[A031377(n+1), A324812(n+1)]`
-/

namespace A031906.P1770198765685023219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031906.P1770198765685023219

namespace A031906

/-- `∩[A031377(n+1), A324812(n+1)]` -/
def P1770198765685023219.Spec : Prop :=
  ∀ n, (P1770198765685023219.a n : ℤ) = A031906 (n + 1)

end A031906

/-! ## A031906.P5058431447638058431

`A000040(6*n+1)`
-/

namespace A031906.P5058431447638058431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (6 * n + 1)

end

end A031906.P5058431447638058431

namespace A031906

/-- `A000040(6*n+1)` -/
def P5058431447638058431.Spec : Prop :=
  ∀ n, P5058431447638058431.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P3635212529745243775

`A158611(6*n+3)`
-/

namespace A031906.P3635212529745243775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (6 * n + 3)

end

end A031906.P3635212529745243775

namespace A031906

/-- `A158611(6*n+3)` -/
def P3635212529745243775.Spec : Prop :=
  ∀ n, P3635212529745243775.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P1977702015144747329

`A335402(6*n+3)`
-/

namespace A031906.P1977702015144747329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (6 * n + 3)

end

end A031906.P1977702015144747329

namespace A031906

/-- `A335402(6*n+3)` -/
def P1977702015144747329.Spec : Prop :=
  ∀ n, P1977702015144747329.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P4693080442827728699

`∏{d}[A000040(or(1, 6*n)), #]`
-/

namespace A031906.P4693080442827728699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.lor 1 (6 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A031906.P4693080442827728699

namespace A031906

/-- `∏{d}[A000040(or(1, 6*n)), #]` -/
def P4693080442827728699.Spec : Prop :=
  ∀ n, (P4693080442827728699.a n : ℤ) = A031906 (n + 1)

end A031906

/-! ## A031906.P9008784176127183110

`∏{d}[A000040(xor(1, 6*n)), #]`
-/

namespace A031906.P9008784176127183110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.xor 1 (6 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A031906.P9008784176127183110

namespace A031906

/-- `∏{d}[A000040(xor(1, 6*n)), #]` -/
def P9008784176127183110.Spec : Prop :=
  ∀ n, (P9008784176127183110.a n : ℤ) = A031906 (n + 1)

end A031906

/-! ## A031906.P12372732308938092335

`A008578(A016933(n))`
-/

namespace A031906.P12372732308938092335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A016933 n).toNat

end

end A031906.P12372732308938092335

namespace A031906

/-- `A008578(A016933(n))` -/
def P12372732308938092335.Spec : Prop :=
  ∀ n, P12372732308938092335.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P14593496600147491605

`A045319(A008458(n))`
-/

namespace A031906.P14593496600147491605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008458 n).toNat

end

end A031906.P14593496600147491605

namespace A031906

/-- `A045319(A008458(n))` -/
def P14593496600147491605.Spec : Prop :=
  ∀ n, P14593496600147491605.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P10507193812402180189

`A213642(A271114(n))`
-/

namespace A031906.P10507193812402180189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (A271114 n).toNat

end

end A031906.P10507193812402180189

namespace A031906

/-- `A213642(A271114(n))` -/
def P10507193812402180189.Spec : Prop :=
  ∀ n, P10507193812402180189.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P9846664353843573345

`record[A000040(A176672(n))]`
-/

namespace A031906.P9846664353843573345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031906.P9846664353843573345

namespace A031906

/-- `record[A000040(A176672(n))]` -/
def P9846664353843573345.Spec : Prop :=
  ∀ n, P9846664353843573345.a n = A031906 (n + 1)

end A031906

/-! ## A031906.P7480115023827541109

`A008578(A016921(n)+1)`
-/

namespace A031906.P7480115023827541109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A016921 n + 1).toNat

end

end A031906.P7480115023827541109

namespace A031906

/-- `A008578(A016921(n)+1)` -/
def P7480115023827541109.Spec : Prop :=
  ∀ n, P7480115023827541109.a n = A031906 (n + 1)

end A031906

/-!
# A031907: a(n) = prime(7*n - 5).

The programs for A031907, the canonical program `A031907.P8365499788396387599` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031907 has offset 1).

The definition of A031907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031907.P8365499788396387599

`A001748(7*n+2)/3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031907

/-- `A001748(7*n+2)/3` -/
def P8365499788396387599.Spec : Prop :=
  ∀ n, P8365499788396387599.a n = (A031907 (n + 1) : ℚ)

end A031907

/-! ## A031907.P16865335176809817603

`A065091(7*n+1)`
-/

namespace A031907.P16865335176809817603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (7 * n + 1)

end

end A031907.P16865335176809817603

namespace A031907

/-- `A065091(7*n+1)` -/
def P16865335176809817603.Spec : Prop :=
  ∀ n, P16865335176809817603.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P16082268669445203312

`A000040(7*n+2)`
-/

namespace A031907.P16082268669445203312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (7 * n + 2)

end

end A031907.P16082268669445203312

namespace A031907

/-- `A000040(7*n+2)` -/
def P16082268669445203312.Spec : Prop :=
  ∀ n, P16082268669445203312.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P17601421886496481256

`A006005(7*n+2)`
-/

namespace A031907.P17601421886496481256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (7 * n + 2)

end

end A031907.P17601421886496481256

namespace A031907

/-- `A006005(7*n+2)` -/
def P17601421886496481256.Spec : Prop :=
  ∀ n, P17601421886496481256.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P15397331551203648473

`A008578(7*n+3)`
-/

namespace A031907.P15397331551203648473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (7 * n + 3)

end

end A031907.P15397331551203648473

namespace A031907

/-- `A008578(7*n+3)` -/
def P15397331551203648473.Spec : Prop :=
  ∀ n, P15397331551203648473.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P9927247845677647051

`A182986(7*n+3)`
-/

namespace A031907.P9927247845677647051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (7 * n + 3)

end

end A031907.P9927247845677647051

namespace A031907

/-- `A182986(7*n+3)` -/
def P9927247845677647051.Spec : Prop :=
  ∀ n, P9927247845677647051.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P15046114793789572229

`A040976(7*n+2)+2`
-/

namespace A031907.P15046114793789572229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (7 * n + 2) + 2

end

end A031907.P15046114793789572229

namespace A031907

/-- `A040976(7*n+2)+2` -/
def P15046114793789572229.Spec : Prop :=
  ∀ n, P15046114793789572229.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P9243837411630834409

`A158611(6*n+4+n)`
-/

namespace A031907.P9243837411630834409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (6 * n + 4 + n)

end

end A031907.P9243837411630834409

namespace A031907

/-- `A158611(6*n+4+n)` -/
def P9243837411630834409.Spec : Prop :=
  ∀ n, P9243837411630834409.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P10537390927073391360

`p?[lcm(n%7, A000040(n+1))]`
-/

namespace A031907.P10537390927073391360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 7 : ℕ) : ℤ) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031907.P10537390927073391360

namespace A031907

/-- `p?[lcm(n%7, A000040(n+1))]` -/
def P10537390927073391360.Spec : Prop :=
  ∀ n, (P10537390927073391360.a n : ℤ) = A031907 (n + 1)

end A031907

/-! ## A031907.P15525189529867150492

`∏{d}[A000040(8*n-(n-2)), #]`
-/

namespace A031907.P15525189529867150492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((8 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A031907.P15525189529867150492

namespace A031907

/-- `∏{d}[A000040(8*n-(n-2)), #]` -/
def P15525189529867150492.Spec : Prop :=
  ∀ n, (P15525189529867150492.a n : ℤ) = A031907 (n + 1)

end A031907

/-! ## A031907.P15312256662622767649

`p?[gcd(n²%7, A000040(n+2))]`
-/

namespace A031907.P15312256662622767649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 % 7 : ℕ) : ℤ) (A000040 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031907.P15312256662622767649

namespace A031907

/-- `p?[gcd(n²%7, A000040(n+2))]` -/
def P15312256662622767649.Spec : Prop :=
  ∀ n, (P15312256662622767649.a n : ℤ) = A031907 (n + 1)

end A031907

/-! ## A031907.P17241231472551113764

`record[A000040(gcd(7, 1-n)+n+1)]`
-/

namespace A031907.P17241231472551113764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd 7 (1 - (n : ℤ)) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031907.P17241231472551113764

namespace A031907

/-- `record[A000040(gcd(7, 1-n)+n+1)]` -/
def P17241231472551113764.Spec : Prop :=
  ∀ n, P17241231472551113764.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P1410868664089345494

`A004139(A008458(n)+n)`
-/

namespace A031907.P1410868664089345494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008458 n + (n : ℤ)).toNat

end

end A031907.P1410868664089345494

namespace A031907

/-- `A004139(A008458(n)+n)` -/
def P1410868664089345494.Spec : Prop :=
  ∀ n, P1410868664089345494.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P9152975721196337461

`A045319(A271114(n)+n)`
-/

namespace A031907.P9152975721196337461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A271114 n + (n : ℤ)).toNat

end

end A031907.P9152975721196337461

namespace A031907

/-- `A045319(A271114(n)+n)` -/
def P9152975721196337461.Spec : Prop :=
  ∀ n, P9152975721196337461.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P14300533361840085049

`A004139(A022144(n)-n)`
-/

namespace A031907.P14300533361840085049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A022144 n - (n : ℤ)).toNat

end

end A031907.P14300533361840085049

namespace A031907

/-- `A004139(A022144(n)-n)` -/
def P14300533361840085049.Spec : Prop :=
  ∀ n, P14300533361840085049.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P3648837692524935426

`A046022(A281813(n)-n)`
-/

namespace A031907.P3648837692524935426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A281813 n - (n : ℤ)).toNat

end

end A031907.P3648837692524935426

namespace A031907

/-- `A046022(A281813(n)-n)` -/
def P3648837692524935426.Spec : Prop :=
  ∀ n, P3648837692524935426.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P18446112591238223001

`A004139(A008486(2*n)+n)`
-/

namespace A031907.P18446112591238223001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008486 (2 * n) + (n : ℤ)).toNat

end

end A031907.P18446112591238223001

namespace A031907

/-- `A004139(A008486(2*n)+n)` -/
def P18446112591238223001.Spec : Prop :=
  ∀ n, P18446112591238223001.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P12602867248659260810

`A004139(A008574(2*n)-n)`
-/

namespace A031907.P12602867248659260810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008574 (2 * n) - (n : ℤ)).toNat

end

end A031907.P12602867248659260810

namespace A031907

/-- `A004139(A008574(2*n)-n)` -/
def P12602867248659260810.Spec : Prop :=
  ∀ n, P12602867248659260810.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P4155863577204562430

`A045319(A033627(2*(n+1))+n)`
-/

namespace A031907.P4155863577204562430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A033627 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A031907.P4155863577204562430

namespace A031907

/-- `A045319(A033627(2*(n+1))+n)` -/
def P4155863577204562430.Spec : Prop :=
  ∀ n, P4155863577204562430.a n = A031907 (n + 1)

end A031907

/-! ## A031907.P4705840481803178496

`A000027(A000040(8*n-(n-2)))`
-/

namespace A031907.P4705840481803178496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000040 ((8 * n : ℤ) - ((n : ℤ) - 2)).toNat).toNat

end

end A031907.P4705840481803178496

namespace A031907

/-- `A000027(A000040(8*n-(n-2)))` -/
def P4705840481803178496.Spec : Prop :=
  ∀ n, P4705840481803178496.a n = A031907 (n + 1)

end A031907

/-!
# A031908: a(n) = prime(8*n - 5).

The programs for A031908, the canonical program `A031908.P13070959978911551669` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031908 has offset 1).

The definition of A031908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031908.P13070959978911551669

`A031370(Δ[n²])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A031908

/-- `A031370(Δ[n²])` -/
def P13070959978911551669.Spec : Prop :=
  ∀ n, P13070959978911551669.a n = A031908 (n + 1)

theorem P13070959978911551669.correct : P13070959978911551669.Spec := by
  intro n
  simp only [A031908, Nat.add_sub_cancel]

end A031908

/-! ## A031908.P15641467384457229913

`p?[A031370(2*n+1)]`
-/

namespace A031908.P15641467384457229913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031370 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031908.P15641467384457229913

namespace A031908

/-- `p?[A031370(2*n+1)]` -/
def P15641467384457229913.Spec : Prop :=
  ∀ n, P15641467384457229913.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P1366385915195813981

`A031368(4*n+2)`
-/

namespace A031908.P1366385915195813981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (4 * n + 2)

end

end A031908.P1366385915195813981

namespace A031908

/-- `A031368(4*n+2)` -/
def P1366385915195813981.Spec : Prop :=
  ∀ n, P1366385915195813981.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P18132543366086883363

`A060192(3*n+n+1)`
-/

namespace A031908.P18132543366086883363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 (3 * n + (n + 1))

end

end A031908.P18132543366086883363

namespace A031908

/-- `A060192(3*n+n+1)` -/
def P18132543366086883363.Spec : Prop :=
  ∀ n, P18132543366086883363.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P5150140869770668674

`A055670(A017101(n))-1`
-/

namespace A031908.P5150140869770668674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A017101 n).toNat - 1

end

end A031908.P5150140869770668674

namespace A031908

/-- `A055670(A017101(n))-1` -/
def P5150140869770668674.Spec : Prop :=
  ∀ n, P5150140869770668674.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P4701325500289777810

`A031368(A016825(n))%A027865(n)`
-/

namespace A031908.P4701325500289777810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031368 (A016825 n).toNat) (A027865 n)

end

end A031908.P4701325500289777810

namespace A031908

/-- `A031368(A016825(n))%A027865(n)` -/
def P4701325500289777810.Spec : Prop :=
  ∀ n, P4701325500289777810.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P13917276533141657057

`A108719(A022144(n))`
-/

namespace A031908.P13917276533141657057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A022144 n).toNat

end

end A031908.P13917276533141657057

namespace A031908

/-- `A108719(A022144(n))` -/
def P13917276533141657057.Spec : Prop :=
  ∀ n, P13917276533141657057.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P10298618370405448182

`A108719(A008574(2*n))`
-/

namespace A031908.P10298618370405448182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008574 (2 * n)).toNat

end

end A031908.P10298618370405448182

namespace A031908

/-- `A108719(A008574(2*n))` -/
def P10298618370405448182.Spec : Prop :=
  ∀ n, P10298618370405448182.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P17424700480160557433

`A045344(8*n+2)`
-/

namespace A031908.P17424700480160557433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (8 * n + 2)

end

end A031908.P17424700480160557433

namespace A031908

/-- `A045344(8*n+2)` -/
def P17424700480160557433.Spec : Prop :=
  ∀ n, P17424700480160557433.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P14545544223695380952

`A065091(8*n+2)`
-/

namespace A031908.P14545544223695380952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (8 * n + 2)

end

end A031908.P14545544223695380952

namespace A031908

/-- `A065091(8*n+2)` -/
def P14545544223695380952.Spec : Prop :=
  ∀ n, P14545544223695380952.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P10793886497518074458

`A000040(8*n+3)`
-/

namespace A031908.P10793886497518074458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (8 * n + 3)

end

end A031908.P10793886497518074458

namespace A031908

/-- `A000040(8*n+3)` -/
def P10793886497518074458.Spec : Prop :=
  ∀ n, P10793886497518074458.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P17773663565629711411

`A008578(8*n+4)`
-/

namespace A031908.P17773663565629711411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (8 * n + 4)

end

end A031908.P17773663565629711411

namespace A031908

/-- `A008578(8*n+4)` -/
def P17773663565629711411.Spec : Prop :=
  ∀ n, P17773663565629711411.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P13439426193061101209

`A171525(8*n+4)`
-/

namespace A031908.P13439426193061101209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (8 * n + 4)

end

end A031908.P13439426193061101209

namespace A031908

/-- `A171525(8*n+4)` -/
def P13439426193061101209.Spec : Prop :=
  ∀ n, P13439426193061101209.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P5001349590907029988

`A175787(8*n+4)`
-/

namespace A031908.P5001349590907029988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (8 * n + 4)

end

end A031908.P5001349590907029988

namespace A031908

/-- `A175787(8*n+4)` -/
def P5001349590907029988.Spec : Prop :=
  ∀ n, P5001349590907029988.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P6480529076158976736

`A182986(8*n+4)`
-/

namespace A031908.P6480529076158976736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (8 * n + 4)

end

end A031908.P6480529076158976736

namespace A031908

/-- `A182986(8*n+4)` -/
def P6480529076158976736.Spec : Prop :=
  ∀ n, P6480529076158976736.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P7878011161496040588

`A008864(8*n+3)-1`
-/

namespace A031908.P7878011161496040588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (8 * n + 3) - 1

end

end A031908.P7878011161496040588

namespace A031908

/-- `A008864(8*n+3)-1` -/
def P7878011161496040588.Spec : Prop :=
  ∀ n, P7878011161496040588.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P240563142919356825

`A040976(7*n+3+n)+2`
-/

namespace A031908.P240563142919356825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (7 * n + 3 + n) + 2

end

end A031908.P240563142919356825

namespace A031908

/-- `A040976(7*n+3+n)+2` -/
def P240563142919356825.Spec : Prop :=
  ∀ n, P240563142919356825.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P16645767065716968109

`A175216(7*n+3+n)-1`
-/

namespace A031908.P16645767065716968109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (7 * n + 3 + n) - 1

end

end A031908.P16645767065716968109

namespace A031908

/-- `A175216(7*n+3+n)-1` -/
def P16645767065716968109.Spec : Prop :=
  ∀ n, P16645767065716968109.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P2248699375442928547

`A215848(A017077(n))`
-/

namespace A031908.P2248699375442928547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A017077 n).toNat

end

end A031908.P2248699375442928547

namespace A031908

/-- `A215848(A017077(n))` -/
def P2248699375442928547.Spec : Prop :=
  ∀ n, P2248699375442928547.a n = A031908 (n + 1)

end A031908

/-! ## A031908.P9680027542228402483

`A116974(A281813(n))`
-/

namespace A031908.P9680027542228402483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (A281813 n).toNat

end

end A031908.P9680027542228402483

namespace A031908

/-- `A116974(A281813(n))` -/
def P9680027542228402483.Spec : Prop :=
  ∀ n, P9680027542228402483.a n = A031908 (n + 1)

end A031908

/-!
# A031909: a(n) = prime(9*n - 5).

The programs for A031909, the canonical program `A031909.P13253097657339389194` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031909 has offset 1).

The definition of A031909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031909.P13253097657339389194

`A031377(3*n+2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A031909

/-- `A031377(3*n+2)` -/
def P13253097657339389194.Spec : Prop :=
  ∀ n, P13253097657339389194.a n = A031909 (n + 1)

theorem P13253097657339389194.correct : P13253097657339389194.Spec := by
  intro n
  simp only [A031909, Nat.add_sub_cancel]

end A031909

/-! ## A031909.P2122487900206129683

`A001748(9*n+4)/3`
-/

namespace A031909.P2122487900206129683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (9 * n + 4) : ℚ) / 3

end

end A031909.P2122487900206129683

namespace A031909

/-- `A001748(9*n+4)/3` -/
def P2122487900206129683.Spec : Prop :=
  ∀ n, P2122487900206129683.a n = (A031909 (n + 1) : ℚ)

end A031909

/-! ## A031909.P7242543133544534922

`A001749(A017209(n))/4`
-/

namespace A031909.P7242543133544534922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A017209 n).toNat : ℚ) / 4

end

end A031909.P7242543133544534922

namespace A031909

/-- `A001749(A017209(n))/4` -/
def P7242543133544534922.Spec : Prop :=
  ∀ n, P7242543133544534922.a n = (A031909 (n + 1) : ℚ)

end A031909

/-! ## A031909.P15866802715467330145

`A004139(9*n+2)`
-/

namespace A031909.P15866802715467330145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (9 * n + 2)

end

end A031909.P15866802715467330145

namespace A031909

/-- `A004139(9*n+2)` -/
def P15866802715467330145.Spec : Prop :=
  ∀ n, P15866802715467330145.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P13575279360365870628

`A065091(9*n+3)`
-/

namespace A031909.P13575279360365870628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (9 * n + 3)

end

end A031909.P13575279360365870628

namespace A031909

/-- `A065091(9*n+3)` -/
def P13575279360365870628.Spec : Prop :=
  ∀ n, P13575279360365870628.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P15853066939339647645

`A000040(9*n+4)`
-/

namespace A031909.P15853066939339647645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (9 * n + 4)

end

end A031909.P15853066939339647645

namespace A031909

/-- `A000040(9*n+4)` -/
def P15853066939339647645.Spec : Prop :=
  ∀ n, P15853066939339647645.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P3386656819774252706

`A008578(9*n+5)`
-/

namespace A031909.P3386656819774252706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * n + 5)

end

end A031909.P3386656819774252706

namespace A031909

/-- `A008578(9*n+5)` -/
def P3386656819774252706.Spec : Prop :=
  ∀ n, P3386656819774252706.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P5699019347227318263

`p?[lcm(dr(n), A000040(n+3))]`
-/

namespace A031909.P5699019347227318263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) (A000040 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031909.P5699019347227318263

namespace A031909

/-- `p?[lcm(dr(n), A000040(n+3))]` -/
def P5699019347227318263.Spec : Prop :=
  ∀ n, (P5699019347227318263.a n : ℤ) = A031909 (n + 1)

end A031909

/-! ## A031909.P10293406191463035332

`A040976(8*n+4+n)+2`
-/

namespace A031909.P10293406191463035332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (8 * n + 4 + n) + 2

end

end A031909.P10293406191463035332

namespace A031909

/-- `A040976(8*n+4+n)+2` -/
def P10293406191463035332.Spec : Prop :=
  ∀ n, P10293406191463035332.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P1532808940127931031

`p?[gcd(3-dr(n), A000040(n+1))]`
-/

namespace A031909.P1532808940127931031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031909.P1532808940127931031

namespace A031909

/-- `p?[gcd(3-dr(n), A000040(n+1))]` -/
def P1532808940127931031.Spec : Prop :=
  ∀ n, (P1532808940127931031.a n : ℤ) = A031909 (n + 1)

end A031909

/-! ## A031909.P8025330497627674803

`A045319(A017197(n))`
-/

namespace A031909.P8025330497627674803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017197 n).toNat

end

end A031909.P8025330497627674803

namespace A031909

/-- `A045319(A017197(n))` -/
def P8025330497627674803.Spec : Prop :=
  ∀ n, P8025330497627674803.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P5449673536704473844

`A046022(A017233(n))`
-/

namespace A031909.P5449673536704473844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A017233 n).toNat

end

end A031909.P5449673536704473844

namespace A031909

/-- `A046022(A017233(n))` -/
def P5449673536704473844.Spec : Prop :=
  ∀ n, P5449673536704473844.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P10540201390045537460

`A045344(A017185(n)+1)`
-/

namespace A031909.P10540201390045537460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A017185 n + 1).toNat

end

end A031909.P10540201390045537460

namespace A031909

/-- `A045344(A017185(n)+1)` -/
def P10540201390045537460.Spec : Prop :=
  ∀ n, P10540201390045537460.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P6050599978552112710

`A046022(A017221(n)+1)`
-/

namespace A031909.P6050599978552112710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A017221 n + 1).toNat

end

end A031909.P6050599978552112710

namespace A031909

/-- `A046022(A017221(n)+1)` -/
def P6050599978552112710.Spec : Prop :=
  ∀ n, P6050599978552112710.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P4579341567330275040

`A046022(A122709(n+1))`
-/

namespace A031909.P4579341567330275040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A122709 (n + 1)).toNat

end

end A031909.P4579341567330275040

namespace A031909

/-- `A046022(A122709(n+1))` -/
def P4579341567330275040.Spec : Prop :=
  ∀ n, P4579341567330275040.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P4967259078610299264

`A215848(A017173(n)+1)`
-/

namespace A031909.P4967259078610299264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A017173 n + 1).toNat

end

end A031909.P4967259078610299264

namespace A031909

/-- `A215848(A017173(n)+1)` -/
def P4967259078610299264.Spec : Prop :=
  ∀ n, P4967259078610299264.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P10604935930704055094

`A045344(A017173(n)+2)`
-/

namespace A031909.P10604935930704055094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A017173 n + 2).toNat

end

end A031909.P10604935930704055094

namespace A031909

/-- `A045344(A017173(n)+2)` -/
def P10604935930704055094.Spec : Prop :=
  ∀ n, P10604935930704055094.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P13431246990249870515

`A045319(A017209(n)-1)`
-/

namespace A031909.P13431246990249870515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017209 n - 1).toNat

end

end A031909.P13431246990249870515

namespace A031909

/-- `A045319(A017209(n)-1)` -/
def P13431246990249870515.Spec : Prop :=
  ∀ n, P13431246990249870515.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P525808778195875422

`A046022(A017245(n)-1)`
-/

namespace A031909.P525808778195875422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A017245 n - 1).toNat

end

end A031909.P525808778195875422

namespace A031909

/-- `A046022(A017245(n)-1)` -/
def P525808778195875422.Spec : Prop :=
  ∀ n, P525808778195875422.a n = A031909 (n + 1)

end A031909

/-! ## A031909.P5979997751526379291

`A158611(A017209(n)+2)`
-/

namespace A031909.P5979997751526379291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017209 n + 2).toNat

end

end A031909.P5979997751526379291

namespace A031909

/-- `A158611(A017209(n)+2)` -/
def P5979997751526379291.Spec : Prop :=
  ∀ n, P5979997751526379291.a n = A031909 (n + 1)

end A031909

/-!
# A031910: a(n) = prime(10*n - 5).

The programs for A031910, there is no canonical definition to state claims against.
-/

/-! ## A031910.P7697865253287413651

`A031338(Δ[n²])`
-/

namespace A031910.P7697865253287413651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031910.P7697865253287413651

/-! ## A031910.P8367692715223208251

`p?[A031338(2*n+1)]`
-/

namespace A031910.P8367692715223208251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031910.P8367692715223208251

/-! ## A031910.P3550511662975512389

`A031368(4*n+n+3)`
-/

namespace A031910.P3550511662975512389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (4 * n + (n + 3))

end

end A031910.P3550511662975512389

/-! ## A031910.P9087560434135432831

`A001749(A017329(n))/4`
-/

namespace A031910.P9087560434135432831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A017329 n).toNat : ℚ) / 4

end

end A031910.P9087560434135432831

/-! ## A031910.P4102833392525931426

`∩[A031338(n+1), A031368(n+1)]`
-/

namespace A031910.P4102833392525931426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031910.P4102833392525931426

/-! ## A031910.P5987224684496611280

`∩[A031338(n+1), A324812(n+1)]`
-/

namespace A031910.P5987224684496611280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031910.P5987224684496611280

/-! ## A031910.P5285602003757142572

`A004139(10*n+3)`
-/

namespace A031910.P5285602003757142572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (10 * n + 3)

end

end A031910.P5285602003757142572

/-! ## A031910.P8943110446755949739

`A065091(10*n+4)`
-/

namespace A031910.P8943110446755949739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (10 * n + 4)

end

end A031910.P8943110446755949739

/-! ## A031910.P42547221248615487

`A000040(10*n+5)`
-/

namespace A031910.P42547221248615487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 * n + 5)

end

end A031910.P42547221248615487

/-! ## A031910.P14269129833336836825

`A006005(5*(2*n+1))`
-/

namespace A031910.P14269129833336836825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (5 * (2 * n + 1))

end

end A031910.P14269129833336836825

/-! ## A031910.P15620528922314953921

`A161847(5*(2*n+1))`
-/

namespace A031910.P15620528922314953921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (5 * (2 * n + 1))

end

end A031910.P15620528922314953921

/-! ## A031910.P10426163130695048440

`A171577(5*(2*n+1))`
-/

namespace A031910.P10426163130695048440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (5 * (2 * n + 1))

end

end A031910.P10426163130695048440

/-! ## A031910.P16336617095291622721

`A213642(5*(2*n+1))`
-/

namespace A031910.P16336617095291622721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (5 * (2 * n + 1))

end

end A031910.P16336617095291622721

/-! ## A031910.P14512555344776748905

`A318871(5*(2*n+1))`
-/

namespace A031910.P14512555344776748905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (5 * (2 * n + 1))

end

end A031910.P14512555344776748905

/-! ## A031910.P15918746718141121378

`A383578(5*(2*n+1))`
-/

namespace A031910.P15918746718141121378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (5 * (2 * n + 1))

end

end A031910.P15918746718141121378

/-! ## A031910.P18216942246911748185

`A006093(10*n+5)+1`
-/

namespace A031910.P18216942246911748185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (10 * n + 5) + 1

end

end A031910.P18216942246911748185

/-! ## A031910.P10301690368341896192

`A008578(5*Δ[n²]+1)`
-/

namespace A031910.P10301690368341896192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (5 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1).toNat

end

end A031910.P10301690368341896192

/-! ## A031910.P2792164957262992673

`A158611(5*Δ[n²]+2)`
-/

namespace A031910.P2792164957262992673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (5 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 2).toNat

end

end A031910.P2792164957262992673

/-! ## A031910.P6265446232711685554

`or(1, A000040(5*comp[2*n]))`
-/

namespace A031910.P6265446232711685554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A031910.P6265446232711685554

/-! ## A031910.P5319776391727824804

`A182986(12*n+6-2*n)`
-/

namespace A031910.P5319776391727824804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (12 * n + 6 - 2 * n)

end

end A031910.P5319776391727824804

/-!
# A031911: a(n) = prime(7*n - 6).

The programs for A031911, the canonical program `A031911.P6172593155193525525` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031911 has offset 1).

The definition of A031911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2858 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031911.P6172593155193525525

`A001748(7*n+1)/3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031911

/-- `A001748(7*n+1)/3` -/
def P6172593155193525525.Spec : Prop :=
  ∀ n, P6172593155193525525.a n = (A031911 (n + 1) : ℚ)

end A031911

/-! ## A031911.P17055668082450228166

`A000040(7*n+1)`
-/

namespace A031911.P17055668082450228166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (7 * n + 1)

end

end A031911.P17055668082450228166

namespace A031911

/-- `A000040(7*n+1)` -/
def P17055668082450228166.Spec : Prop :=
  ∀ n, P17055668082450228166.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P12258007398194079256

`A008578(7*n+2)`
-/

namespace A031911.P12258007398194079256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (7 * n + 2)

end

end A031911.P12258007398194079256

namespace A031911

/-- `A008578(7*n+2)` -/
def P12258007398194079256.Spec : Prop :=
  ∀ n, P12258007398194079256.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P1619167525480117504

`A182986(7*n+2)`
-/

namespace A031911.P1619167525480117504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (7 * n + 2)

end

end A031911.P1619167525480117504

namespace A031911

/-- `A182986(7*n+2)` -/
def P1619167525480117504.Spec : Prop :=
  ∀ n, P1619167525480117504.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P6725982217488815345

`A006093(7*n+1)+1`
-/

namespace A031911.P6725982217488815345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (7 * n + 1) + 1

end

end A031911.P6725982217488815345

namespace A031911

/-- `A006093(7*n+1)+1` -/
def P6725982217488815345.Spec : Prop :=
  ∀ n, P6725982217488815345.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P8460140359934681188

`A040976(7*n+1)+2`
-/

namespace A031911.P8460140359934681188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (7 * n + 1) + 2

end

end A031911.P8460140359934681188

namespace A031911

/-- `A040976(7*n+1)+2` -/
def P8460140359934681188.Spec : Prop :=
  ∀ n, P8460140359934681188.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P1815346517680176288

`A100484(7*n+1)/2`
-/

namespace A031911.P1815346517680176288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (7 * n + 1) : ℚ) / 2

end

end A031911.P1815346517680176288

namespace A031911

/-- `A100484(7*n+1)/2` -/
def P1815346517680176288.Spec : Prop :=
  ∀ n, P1815346517680176288.a n = (A031911 (n + 1) : ℚ)

end A031911

/-! ## A031911.P15307733444224321626

`sqrt(A001248(6*n+n+1))`
-/

namespace A031911.P15307733444224321626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (6 * n + (n + 1)) : ℝ)

end

end A031911.P15307733444224321626

namespace A031911

/-- `sqrt(A001248(6*n+n+1))` -/
def P15307733444224321626.Spec : Prop :=
  ∀ n, P15307733444224321626.a n = (A031911 (n + 1) : ℝ)

end A031911

/-! ## A031911.P5726108777163975016

`∏{d}[A000040(8*n-(n-1)), #]`
-/

namespace A031911.P5726108777163975016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((8 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A031911.P5726108777163975016

namespace A031911

/-- `∏{d}[A000040(8*n-(n-1)), #]` -/
def P5726108777163975016.Spec : Prop :=
  ∀ n, (P5726108777163975016.a n : ℤ) = A031911 (n + 1)

end A031911

/-! ## A031911.P12460996506461320364

`p?[or(-n%7, A000040(n+1))]`
-/

namespace A031911.P12460996506461320364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((n % 7 : ℕ) : ℤ)) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031911.P12460996506461320364

namespace A031911

/-- `p?[or(-n%7, A000040(n+1))]` -/
def P12460996506461320364.Spec : Prop :=
  ∀ n, P12460996506461320364.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P4355337501532853929

`A158611(A017017(n))`
-/

namespace A031911.P4355337501532853929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017017 n).toNat

end

end A031911.P4355337501532853929

namespace A031911

/-- `A158611(A017017(n))` -/
def P4355337501532853929.Spec : Prop :=
  ∀ n, P4355337501532853929.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P6311438930870981229

`A045319(A008458(n)+n)`
-/

namespace A031911.P6311438930870981229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008458 n + (n : ℤ)).toNat

end

end A031911.P6311438930870981229

namespace A031911

/-- `A045319(A008458(n)+n)` -/
def P6311438930870981229.Spec : Prop :=
  ∀ n, P6311438930870981229.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P12652873236374886824

`A045319(A022144(n)-n)`
-/

namespace A031911.P12652873236374886824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A022144 n - (n : ℤ)).toNat

end

end A031911.P12652873236374886824

namespace A031911

/-- `A045319(A022144(n)-n)` -/
def P12652873236374886824.Spec : Prop :=
  ∀ n, P12652873236374886824.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P17097019236418592234

`A158611(A017101(n)-n)`
-/

namespace A031911.P17097019236418592234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017101 n - (n : ℤ)).toNat

end

end A031911.P17097019236418592234

namespace A031911

/-- `A158611(A017101(n)-n)` -/
def P17097019236418592234.Spec : Prop :=
  ∀ n, P17097019236418592234.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P3714350465750975542

`A001747(A008589(n)+2)/2`
-/

namespace A031911.P3714350465750975542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A008589 n + 2).toNat : ℚ) / 2

end

end A031911.P3714350465750975542

namespace A031911

/-- `A001747(A008589(n)+2)/2` -/
def P3714350465750975542.Spec : Prop :=
  ∀ n, P3714350465750975542.a n = (A031911 (n + 1) : ℚ)

end A031911

/-! ## A031911.P8318022641981677170

`A045319(A008486(2*n)+n)`
-/

namespace A031911.P8318022641981677170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008486 (2 * n) + (n : ℤ)).toNat

end

end A031911.P8318022641981677170

namespace A031911

/-- `A045319(A008486(2*n)+n)` -/
def P8318022641981677170.Spec : Prop :=
  ∀ n, P8318022641981677170.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P15710357571974344196

`A045319(A008574(2*n)-n)`
-/

namespace A031911.P15710357571974344196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008574 (2 * n) - (n : ℤ)).toNat

end

end A031911.P15710357571974344196

namespace A031911

/-- `A045319(A008574(2*n)-n)` -/
def P15710357571974344196.Spec : Prop :=
  ∀ n, P15710357571974344196.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P2596095078896591036

`A045344(A008574(2*n)-n)`
-/

namespace A031911.P2596095078896591036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A008574 (2 * n) - (n : ℤ)).toNat

end

end A031911.P2596095078896591036

namespace A031911

/-- `A045344(A008574(2*n)-n)` -/
def P2596095078896591036.Spec : Prop :=
  ∀ n, P2596095078896591036.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P1515027721842945000

`record[A000040(A195312(n+1)-n)]`
-/

namespace A031911.P1515027721842945000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A195312 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031911.P1515027721842945000

namespace A031911

/-- `record[A000040(A195312(n+1)-n)]` -/
def P1515027721842945000.Spec : Prop :=
  ∀ n, P1515027721842945000.a n = A031911 (n + 1)

end A031911

/-! ## A031911.P10507154970138647817

`A158611(A016777(2*n)+n+2)`
-/

namespace A031911.P10507154970138647817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A016777 (2 * n) + (n + 2 : ℤ)).toNat

end

end A031911.P10507154970138647817

namespace A031911

/-- `A158611(A016777(2*n)+n+2)` -/
def P10507154970138647817.Spec : Prop :=
  ∀ n, P10507154970138647817.a n = A031911 (n + 1)

end A031911

/-!
# A031912: a(n) = prime(8*n - 6).

The programs for A031912, the canonical program `A031912.P18084296795577399581` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031912 has offset 1).

The definition of A031912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031912.P18084296795577399581

`A031378(Δ[n²])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A031912

/-- `A031378(Δ[n²])` -/
def P18084296795577399581.Spec : Prop :=
  ∀ n, P18084296795577399581.a n = A031912 (n + 1)

theorem P18084296795577399581.correct : P18084296795577399581.Spec := by
  intro n
  simp only [A031912, Nat.add_sub_cancel]

end A031912

/-! ## A031912.P9149405527780460692

`p?[A031378(2*n+1)]`
-/

namespace A031912.P9149405527780460692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031378 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031912.P9149405527780460692

namespace A031912

/-- `p?[A031378(2*n+1)]` -/
def P9149405527780460692.Spec : Prop :=
  ∀ n, P9149405527780460692.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P2748062617126650541

`A060192(4*n)`
-/

namespace A031912.P2748062617126650541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 (4 * n)

end

end A031912.P2748062617126650541

namespace A031912

/-- `A060192(4*n)` -/
def P2748062617126650541.Spec : Prop :=
  ∀ n, P2748062617126650541.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P16661573615637391170

`A031215(4*n+1)`
-/

namespace A031912.P16661573615637391170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (4 * n + 1)

end

end A031912.P16661573615637391170

namespace A031912

/-- `A031215(4*n+1)` -/
def P16661573615637391170.Spec : Prop :=
  ∀ n, P16661573615637391170.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P1919618903284807523

`or(1, A031215(A016813(n)))`
-/

namespace A031912.P1919618903284807523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031215 (A016813 n).toNat)

end

end A031912.P1919618903284807523

namespace A031912

/-- `or(1, A031215(A016813(n)))` -/
def P1919618903284807523.Spec : Prop :=
  ∀ n, P1919618903284807523.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P2385286795576334604

`A332806(A080148(2*n+2*n+1))`
-/

namespace A031912.P2385286795576334604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332806 (A080148 (2 * n + (2 * n + 1))).toNat

end

end A031912.P2385286795576334604

namespace A031912

/-- `A332806(A080148(2*n+2*n+1))` -/
def P2385286795576334604.Spec : Prop :=
  ∀ n, P2385286795576334604.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P4032759226023948266

`A004139(A022144(n))`
-/

namespace A031912.P4032759226023948266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A022144 n).toNat

end

end A031912.P4032759226023948266

namespace A031912

/-- `A004139(A022144(n))` -/
def P4032759226023948266.Spec : Prop :=
  ∀ n, P4032759226023948266.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P3956809610180628884

`A004139(A008574(2*n))`
-/

namespace A031912.P3956809610180628884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008574 (2 * n)).toNat

end

end A031912.P3956809610180628884

namespace A031912

/-- `A004139(A008574(2*n))` -/
def P3956809610180628884.Spec : Prop :=
  ∀ n, P3956809610180628884.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P16351263691634942426

`A065091(8*n+1)`
-/

namespace A031912.P16351263691634942426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (8 * n + 1)

end

end A031912.P16351263691634942426

namespace A031912

/-- `A065091(8*n+1)` -/
def P16351263691634942426.Spec : Prop :=
  ∀ n, P16351263691634942426.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P3541522859406571670

`A000040(8*n+2)`
-/

namespace A031912.P3541522859406571670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (8 * n + 2)

end

end A031912.P3541522859406571670

namespace A031912

/-- `A000040(8*n+2)` -/
def P3541522859406571670.Spec : Prop :=
  ∀ n, P3541522859406571670.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P16398283683742723321

`A008578(8*n+3)`
-/

namespace A031912.P16398283683742723321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (8 * n + 3)

end

end A031912.P16398283683742723321

namespace A031912

/-- `A008578(8*n+3)` -/
def P16398283683742723321.Spec : Prop :=
  ∀ n, P16398283683742723321.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P6324623068950166603

`A158611(8*n+4)`
-/

namespace A031912.P6324623068950166603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (8 * n + 4)

end

end A031912.P6324623068950166603

namespace A031912

/-- `A158611(8*n+4)` -/
def P6324623068950166603.Spec : Prop :=
  ∀ n, P6324623068950166603.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P1285373177263758560

`A040976(7*n+n+2)+2`
-/

namespace A031912.P1285373177263758560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (7 * n + (n + 2)) + 2

end

end A031912.P1285373177263758560

namespace A031912

/-- `A040976(7*n+n+2)+2` -/
def P1285373177263758560.Spec : Prop :=
  ∀ n, P1285373177263758560.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P14285717263462596330

`A046022(A281813(n))`
-/

namespace A031912.P14285717263462596330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A281813 n).toNat

end

end A031912.P14285717263462596330

namespace A031912

/-- `A046022(A281813(n))` -/
def P14285717263462596330.Spec : Prop :=
  ∀ n, P14285717263462596330.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P18267954549449915884

`A045319(A022144(n)+1)`
-/

namespace A031912.P18267954549449915884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A022144 n + 1).toNat

end

end A031912.P18267954549449915884

namespace A031912

/-- `A045319(A022144(n)+1)` -/
def P18267954549449915884.Spec : Prop :=
  ∀ n, P18267954549449915884.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P4107716439067610061

`A116974(A281813(n)-1)`
-/

namespace A031912.P4107716439067610061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (A281813 n - 1).toNat

end

end A031912.P4107716439067610061

namespace A031912

/-- `A116974(A281813(n)-1)` -/
def P4107716439067610061.Spec : Prop :=
  ∀ n, P4107716439067610061.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P9477171925066285703

`record[A000040(A176743(n+2))]`
-/

namespace A031912.P9477171925066285703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176743 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031912.P9477171925066285703

namespace A031912

/-- `record[A000040(A176743(n+2))]` -/
def P9477171925066285703.Spec : Prop :=
  ∀ n, P9477171925066285703.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P13595084626516605652

`record[A000040(2*A058281(n))]`
-/

namespace A031912.P13595084626516605652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * A058281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031912.P13595084626516605652

namespace A031912

/-- `record[A000040(2*A058281(n))]` -/
def P13595084626516605652.Spec : Prop :=
  ∀ n, P13595084626516605652.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P2586258232067967906

`record[A000040(2*A086970(n))]`
-/

namespace A031912.P2586258232067967906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * A086970 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031912.P2586258232067967906

namespace A031912

/-- `record[A000040(2*A086970(n))]` -/
def P2586258232067967906.Spec : Prop :=
  ∀ n, P2586258232067967906.a n = A031912 (n + 1)

end A031912

/-! ## A031912.P8635334930661693331

`record[A000040(2*A266072(n))]`
-/

namespace A031912.P8635334930661693331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * A266072 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031912.P8635334930661693331

namespace A031912

/-- `record[A000040(2*A266072(n))]` -/
def P8635334930661693331.Spec : Prop :=
  ∀ n, P8635334930661693331.a n = A031912 (n + 1)

end A031912

/-!
# A031913: a(n) = prime(9*n - 6).

The programs for A031913, the canonical program `A031913.P9685804364907739259` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031913 has offset 1).

The definition of A031913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A031913.P9685804364907739259

`A000040(A017197(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031913

/-- `A000040(A017197(n))` -/
def P9685804364907739259.Spec : Prop :=
  ∀ n, P9685804364907739259.a n = A031913 (n + 1)

theorem P9685804364907739259.correct : P9685804364907739259.Spec := by
  intro n
  simp only [A031913, Nat.add_sub_cancel]

end A031913

/-! ## A031913.P2302310044601102555

`A031336(3*n+1)`
-/

namespace A031913.P2302310044601102555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (3 * n + 1)

end

end A031913.P2302310044601102555

namespace A031913

/-- `A031336(3*n+1)` -/
def P2302310044601102555.Spec : Prop :=
  ∀ n, P2302310044601102555.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P1825107079105188515

`A215848(A017173(n))`
-/

namespace A031913.P1825107079105188515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A017173 n).toNat

end

end A031913.P1825107079105188515

namespace A031913

/-- `A215848(A017173(n))` -/
def P1825107079105188515.Spec : Prop :=
  ∀ n, P1825107079105188515.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P8583115933444139778

`A108719(A022144(n)+n)`
-/

namespace A031913.P8583115933444139778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A022144 n + (n : ℤ)).toNat

end

end A031913.P8583115933444139778

namespace A031913

/-- `A108719(A022144(n)+n)` -/
def P8583115933444139778.Spec : Prop :=
  ∀ n, P8583115933444139778.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P671701204079693432

`A215848(A017077(n)+n)`
-/

namespace A031913.P671701204079693432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A017077 n + (n : ℤ)).toNat

end

end A031913.P671701204079693432

namespace A031913

/-- `A215848(A017077(n)+n)` -/
def P671701204079693432.Spec : Prop :=
  ∀ n, P671701204079693432.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P15768869663407078726

`A215848(A017281(n)-n)`
-/

namespace A031913.P15768869663407078726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A017281 n - (n : ℤ)).toNat

end

end A031913.P15768869663407078726

namespace A031913

/-- `A215848(A017281(n)-n)` -/
def P15768869663407078726.Spec : Prop :=
  ∀ n, P15768869663407078726.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P1256881062050873097

`A108719(A008574(2*n)+n)`
-/

namespace A031913.P1256881062050873097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008574 (2 * n) + (n : ℤ)).toNat

end

end A031913.P1256881062050873097

namespace A031913

/-- `A108719(A008574(2*n)+n)` -/
def P1256881062050873097.Spec : Prop :=
  ∀ n, P1256881062050873097.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P475316813835650709

`A108719(A008706(2*n)-n)`
-/

namespace A031913.P475316813835650709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008706 (2 * n) - (n : ℤ)).toNat

end

end A031913.P475316813835650709

namespace A031913

/-- `A108719(A008706(2*n)-n)` -/
def P475316813835650709.Spec : Prop :=
  ∀ n, P475316813835650709.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P7938909975119019044

`A215848(A063289(2*n+3)-1)`
-/

namespace A031913.P7938909975119019044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A063289 (2 * n + 3) - 1).toNat

end

end A031913.P7938909975119019044

namespace A031913

/-- `A215848(A063289(2*n+3)-1)` -/
def P7938909975119019044.Spec : Prop :=
  ∀ n, P7938909975119019044.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P4302668420935974856

`p?[dr(n)*p?[2*n+1]]`
-/

namespace A031913.P4302668420935974856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031913.P4302668420935974856

namespace A031913

/-- `p?[dr(n)*p?[2*n+1]]` -/
def P4302668420935974856.Spec : Prop :=
  ∀ n, (P4302668420935974856.a n : ℤ) = A031913 (n + 1)

end A031913

/-! ## A031913.P10676926734811206664

`A065091(9*n+2)`
-/

namespace A031913.P10676926734811206664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (9 * n + 2)

end

end A031913.P10676926734811206664

namespace A031913

/-- `A065091(9*n+2)` -/
def P10676926734811206664.Spec : Prop :=
  ∀ n, P10676926734811206664.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P10760127038195098265

`A000040(9*n+3)`
-/

namespace A031913.P10760127038195098265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (9 * n + 3)

end

end A031913.P10760127038195098265

namespace A031913

/-- `A000040(9*n+3)` -/
def P10760127038195098265.Spec : Prop :=
  ∀ n, P10760127038195098265.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P6458978445554785474

`A008578(9*n+4)`
-/

namespace A031913.P6458978445554785474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * n + 4)

end

end A031913.P6458978445554785474

namespace A031913

/-- `A008578(9*n+4)` -/
def P6458978445554785474.Spec : Prop :=
  ∀ n, P6458978445554785474.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P331229589502946250

`A006093(9*n+3)+1`
-/

namespace A031913.P331229589502946250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (9 * n + 3) + 1

end

end A031913.P331229589502946250

namespace A031913

/-- `A006093(9*n+3)+1` -/
def P331229589502946250.Spec : Prop :=
  ∀ n, P331229589502946250.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P10358842442316019740

`A008864(9*n+3)-1`
-/

namespace A031913.P10358842442316019740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (9 * n + 3) - 1

end

end A031913.P10358842442316019740

namespace A031913

/-- `A008864(9*n+3)-1` -/
def P10358842442316019740.Spec : Prop :=
  ∀ n, P10358842442316019740.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P16950437689656490834

`A040976(9*n+3)+2`
-/

namespace A031913.P16950437689656490834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (9 * n + 3) + 2

end

end A031913.P16950437689656490834

namespace A031913

/-- `A040976(9*n+3)+2` -/
def P16950437689656490834.Spec : Prop :=
  ∀ n, P16950437689656490834.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P3203245359902089244

`p?[lcm(dr(n), A000040(n+2))]`
-/

namespace A031913.P3203245359902089244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) (A000040 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031913.P3203245359902089244

namespace A031913

/-- `p?[lcm(dr(n), A000040(n+2))]` -/
def P3203245359902089244.Spec : Prop :=
  ∀ n, (P3203245359902089244.a n : ℤ) = A031913 (n + 1)

end A031913

/-! ## A031913.P3168001268400014587

`sqrt(A001248(3*(3*n+1)))`
-/

namespace A031913.P3168001268400014587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (3 * (3 * n + 1)) : ℝ)

end

end A031913.P3168001268400014587

namespace A031913

/-- `sqrt(A001248(3*(3*n+1)))` -/
def P3168001268400014587.Spec : Prop :=
  ∀ n, P3168001268400014587.a n = (A031913 (n + 1) : ℝ)

end A031913

/-! ## A031913.P17240111968883757834

`or(1, A000040(Δ[C(3*n, 2)]))`
-/

namespace A031913.P17240111968883757834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A031913.P17240111968883757834

namespace A031913

/-- `or(1, A000040(Δ[C(3*n, 2)]))` -/
def P17240111968883757834.Spec : Prop :=
  ∀ n, P17240111968883757834.a n = A031913 (n + 1)

end A031913

/-! ## A031913.P13804343813171197051

`∏{d}[A000040(10*n-(n-3)), #]`
-/

namespace A031913.P13804343813171197051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((10 * n : ℤ) - ((n : ℤ) - 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A031913.P13804343813171197051

namespace A031913

/-- `∏{d}[A000040(10*n-(n-3)), #]` -/
def P13804343813171197051.Spec : Prop :=
  ∀ n, (P13804343813171197051.a n : ℤ) = A031913 (n + 1)

end A031913

/-!
# A031914: a(n) = prime(10*n - 6).

The programs for A031914, the canonical program `A031914.P11567849576701860453` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031914 has offset 1).

The definition of A031914 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A031914.P11567849576701860453

`A000040(A017317(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031914

/-- `A000040(A017317(n))` -/
def P11567849576701860453.Spec : Prop :=
  ∀ n, P11567849576701860453.a n = A031914 (n + 1)

theorem P11567849576701860453.correct : P11567849576701860453.Spec := by
  intro n
  simp only [A031914, Nat.add_sub_cancel]

end A031914

/-! ## A031914.P15387080251745294944

`A031371(Δ[n²])`
-/

namespace A031914.P15387080251745294944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031371 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031914.P15387080251745294944

namespace A031914

/-- `A031371(Δ[n²])` -/
def P15387080251745294944.Spec : Prop :=
  ∀ n, P15387080251745294944.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P16378525082658933951

`p?[A031371(2*n+1)]`
-/

namespace A031914.P16378525082658933951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031371 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031914.P16378525082658933951

namespace A031914

/-- `p?[A031371(2*n+1)]` -/
def P16378525082658933951.Spec : Prop :=
  ∀ n, P16378525082658933951.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P13123324123795880191

`A031215(5*n+2)`
-/

namespace A031914.P13123324123795880191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (5 * n + 2)

end

end A031914.P13123324123795880191

namespace A031914

/-- `A031215(5*n+2)` -/
def P13123324123795880191.Spec : Prop :=
  ∀ n, P13123324123795880191.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P14610783574379718220

`∩[A031215(n+1), A031371(n+1)]`
-/

namespace A031914.P14610783574379718220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031914.P14610783574379718220

namespace A031914

/-- `∩[A031215(n+1), A031371(n+1)]` -/
def P14610783574379718220.Spec : Prop :=
  ∀ n, (P14610783574379718220.a n : ℤ) = A031914 (n + 1)

end A031914

/-! ## A031914.P1989972211417614989

`∩[A031371(n+1), A100484(n+1)+A066066(n+1)]`
-/

namespace A031914.P1989972211417614989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A066066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031914.P1989972211417614989

namespace A031914

/-- `∩[A031371(n+1), A100484(n+1)+A066066(n+1)]` -/
def P1989972211417614989.Spec : Prop :=
  ∀ n, (P1989972211417614989.a n : ℤ) = A031914 (n + 1)

end A031914

/-! ## A031914.P6622113051788489179

`∩[A031371(n+1), A066066(n+1)+2*A000040(n+1)]`
-/

namespace A031914.P6622113051788489179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + 2 * A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031914.P6622113051788489179

namespace A031914

/-- `∩[A031371(n+1), A066066(n+1)+2*A000040(n+1)]` -/
def P6622113051788489179.Spec : Prop :=
  ∀ n, (P6622113051788489179.a n : ℤ) = A031914 (n + 1)

end A031914

/-! ## A031914.P503170595323960517

`A004139(10*n+2)`
-/

namespace A031914.P503170595323960517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (10 * n + 2)

end

end A031914.P503170595323960517

namespace A031914

/-- `A004139(10*n+2)` -/
def P503170595323960517.Spec : Prop :=
  ∀ n, P503170595323960517.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P15191343229586125276

`A000040(10*n+4)`
-/

namespace A031914.P15191343229586125276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 * n + 4)

end

end A031914.P15191343229586125276

namespace A031914

/-- `A000040(10*n+4)` -/
def P15191343229586125276.Spec : Prop :=
  ∀ n, P15191343229586125276.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P10422196064206750695

`A008578(5*(2*n+1))`
-/

namespace A031914.P10422196064206750695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (5 * (2 * n + 1))

end

end A031914.P10422196064206750695

namespace A031914

/-- `A008578(5*(2*n+1))` -/
def P10422196064206750695.Spec : Prop :=
  ∀ n, P10422196064206750695.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P2819538786016420560

`A116974(5*(2*n+1))`
-/

namespace A031914.P2819538786016420560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (5 * (2 * n + 1))

end

end A031914.P2819538786016420560

namespace A031914

/-- `A116974(5*(2*n+1))` -/
def P2819538786016420560.Spec : Prop :=
  ∀ n, P2819538786016420560.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P17672118915870161118

`A171525(5*(2*n+1))`
-/

namespace A031914.P17672118915870161118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (5 * (2 * n + 1))

end

end A031914.P17672118915870161118

namespace A031914

/-- `A171525(5*(2*n+1))` -/
def P17672118915870161118.Spec : Prop :=
  ∀ n, P17672118915870161118.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P1655858342035081838

`A175787(5*(2*n+1))`
-/

namespace A031914.P1655858342035081838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (5 * (2 * n + 1))

end

end A031914.P1655858342035081838

namespace A031914

/-- `A175787(5*(2*n+1))` -/
def P1655858342035081838.Spec : Prop :=
  ∀ n, P1655858342035081838.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P2684682352232047614

`A182986(5*(2*n+1))`
-/

namespace A031914.P2684682352232047614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (5 * (2 * n + 1))

end

end A031914.P2684682352232047614

namespace A031914

/-- `A182986(5*(2*n+1))` -/
def P2684682352232047614.Spec : Prop :=
  ∀ n, P2684682352232047614.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P13443045128240423167

`A001747(10*n+5)/2`
-/

namespace A031914.P13443045128240423167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (10 * n + 5) : ℚ) / 2

end

end A031914.P13443045128240423167

namespace A031914

/-- `A001747(10*n+5)/2` -/
def P13443045128240423167.Spec : Prop :=
  ∀ n, P13443045128240423167.a n = (A031914 (n + 1) : ℚ)

end A031914

/-! ## A031914.P1890525310693309761

`A045319(A017305(n))`
-/

namespace A031914.P1890525310693309761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017305 n).toNat

end

end A031914.P1890525310693309761

namespace A031914

/-- `A045319(A017305(n))` -/
def P1890525310693309761.Spec : Prop :=
  ∀ n, P1890525310693309761.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P11251514465003883794

`A046022(A017341(n))`
-/

namespace A031914.P11251514465003883794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A017341 n).toNat

end

end A031914.P11251514465003883794

namespace A031914

/-- `A046022(A017341(n))` -/
def P11251514465003883794.Spec : Prop :=
  ∀ n, P11251514465003883794.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P7741665818598107909

`A045344(A017293(n)+1)`
-/

namespace A031914.P7741665818598107909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A017293 n + 1).toNat

end

end A031914.P7741665818598107909

namespace A031914

/-- `A045344(A017293(n)+1)` -/
def P7741665818598107909.Spec : Prop :=
  ∀ n, P7741665818598107909.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P7207329390641574782

`A215848(A017281(n)+1)`
-/

namespace A031914.P7207329390641574782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A017281 n + 1).toNat

end

end A031914.P7207329390641574782

namespace A031914

/-- `A215848(A017281(n)+1)` -/
def P7207329390641574782.Spec : Prop :=
  ∀ n, P7207329390641574782.a n = A031914 (n + 1)

end A031914

/-! ## A031914.P4700507699941149699

`A045319(A017317(n)-1)`
-/

namespace A031914.P4700507699941149699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A017317 n - 1).toNat

end

end A031914.P4700507699941149699

namespace A031914

/-- `A045319(A017317(n)-1)` -/
def P4700507699941149699.Spec : Prop :=
  ∀ n, P4700507699941149699.a n = A031914 (n + 1)

end A031914

/-!
# A031915: a(n) = prime(8*n - 7).

The programs for A031915, the canonical program `A031915.P1776797287709644077` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031915 has offset 1).

The definition of A031915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031915.P1776797287709644077

`A031385(Δ[n²])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A031915

/-- `A031385(Δ[n²])` -/
def P1776797287709644077.Spec : Prop :=
  ∀ n, P1776797287709644077.a n = A031915 (n + 1)

theorem P1776797287709644077.correct : P1776797287709644077.Spec := by
  intro n
  simp only [A031915, Nat.add_sub_cancel]

end A031915

/-! ## A031915.P17919703950532251280

`p?[A031385(2*n+1)]`
-/

namespace A031915.P17919703950532251280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031915.P17919703950532251280

namespace A031915

/-- `p?[A031385(2*n+1)]` -/
def P17919703950532251280.Spec : Prop :=
  ∀ n, P17919703950532251280.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P11577728838828317605

`A060191(4*n)`
-/

namespace A031915.P11577728838828317605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (4 * n)

end

end A031915.P11577728838828317605

namespace A031915

/-- `A060191(4*n)` -/
def P11577728838828317605.Spec : Prop :=
  ∀ n, P11577728838828317605.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P5048206860210613571

`A031368(4*n+1)`
-/

namespace A031915.P5048206860210613571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (4 * n + 1)

end

end A031915.P5048206860210613571

namespace A031915

/-- `A031368(4*n+1)` -/
def P5048206860210613571.Spec : Prop :=
  ∀ n, P5048206860210613571.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P12692208995674262317

`A001749(8*n+1)/4`
-/

namespace A031915.P12692208995674262317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (8 * n + 1) : ℚ) / 4

end

end A031915.P12692208995674262317

namespace A031915

/-- `A001749(8*n+1)/4` -/
def P12692208995674262317.Spec : Prop :=
  ∀ n, P12692208995674262317.a n = (A031915 (n + 1) : ℚ)

end A031915

/-! ## A031915.P10993774599528997997

`A031368(A016813(n))%A027865(n)`
-/

namespace A031915.P10993774599528997997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031368 (A016813 n).toNat) (A027865 n)

end

end A031915.P10993774599528997997

namespace A031915

/-- `A031368(A016813(n))%A027865(n)` -/
def P10993774599528997997.Spec : Prop :=
  ∀ n, P10993774599528997997.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P10611310550542689169

`A045319(A022144(n))`
-/

namespace A031915.P10611310550542689169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A022144 n).toNat

end

end A031915.P10611310550542689169

namespace A031915

/-- `A045319(A022144(n))` -/
def P10611310550542689169.Spec : Prop :=
  ∀ n, P10611310550542689169.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P13514495411611999514

`A045319(A008574(2*n))`
-/

namespace A031915.P13514495411611999514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008574 (2 * n)).toNat

end

end A031915.P13514495411611999514

namespace A031915

/-- `A045319(A008574(2*n))` -/
def P13514495411611999514.Spec : Prop :=
  ∀ n, P13514495411611999514.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P14553573587550006810

`A000040(8*n+1)`
-/

namespace A031915.P14553573587550006810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (8 * n + 1)

end

end A031915.P14553573587550006810

namespace A031915

/-- `A000040(8*n+1)` -/
def P14553573587550006810.Spec : Prop :=
  ∀ n, P14553573587550006810.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P10795529161213844095

`A008578(8*n+2)`
-/

namespace A031915.P10795529161213844095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (8 * n + 2)

end

end A031915.P10795529161213844095

namespace A031915

/-- `A008578(8*n+2)` -/
def P10795529161213844095.Spec : Prop :=
  ∀ n, P10795529161213844095.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P4650672304071941816

`A008864(8*n+1)-1`
-/

namespace A031915.P4650672304071941816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (8 * n + 1) - 1

end

end A031915.P4650672304071941816

namespace A031915

/-- `A008864(8*n+1)-1` -/
def P4650672304071941816.Spec : Prop :=
  ∀ n, P4650672304071941816.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P17667565439701828383

`A040976(8*n+1)+2`
-/

namespace A031915.P17667565439701828383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (8 * n + 1) + 2

end

end A031915.P17667565439701828383

namespace A031915

/-- `A040976(8*n+1)+2` -/
def P17667565439701828383.Spec : Prop :=
  ∀ n, P17667565439701828383.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P8358406646686848258

`A158611(A017101(n))`
-/

namespace A031915.P8358406646686848258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017101 n).toNat

end

end A031915.P8358406646686848258

namespace A031915

/-- `A158611(A017101(n))` -/
def P8358406646686848258.Spec : Prop :=
  ∀ n, P8358406646686848258.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P11551838850878010124

`A093515(Δ[A077591(n)])`
-/

namespace A031915.P11551838850878010124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (f1 (n + 1) - f1 n).toNat

end

end A031915.P11551838850878010124

namespace A031915

/-- `A093515(Δ[A077591(n)])` -/
def P11551838850878010124.Spec : Prop :=
  ∀ n, P11551838850878010124.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P5265069894904012671

`A046022(A281813(n)-1)`
-/

namespace A031915.P5265069894904012671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A281813 n - 1).toNat

end

end A031915.P5265069894904012671

namespace A031915

/-- `A046022(A281813(n)-1)` -/
def P5265069894904012671.Spec : Prop :=
  ∀ n, P5265069894904012671.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P15501724484332131882

`A116974(A281813(n)-2)`
-/

namespace A031915.P15501724484332131882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (A281813 n - 2).toNat

end

end A031915.P15501724484332131882

namespace A031915

/-- `A116974(A281813(n)-2)` -/
def P15501724484332131882.Spec : Prop :=
  ∀ n, P15501724484332131882.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P8981786241658706330

`A158611(A017017(n)+n)`
-/

namespace A031915.P8981786241658706330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017017 n + (n : ℤ)).toNat

end

end A031915.P8981786241658706330

namespace A031915

/-- `A158611(A017017(n)+n)` -/
def P8981786241658706330.Spec : Prop :=
  ∀ n, P8981786241658706330.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P6201106481341714611

`A158611(A017197(n)-n)`
-/

namespace A031915.P6201106481341714611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017197 n - (n : ℤ)).toNat

end

end A031915.P6201106481341714611

namespace A031915

/-- `A158611(A017197(n)-n)` -/
def P6201106481341714611.Spec : Prop :=
  ∀ n, P6201106481341714611.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P12676741332312392615

`A175787(A133653(2*n+1))`
-/

namespace A031915.P12676741332312392615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A133653 (2 * n + 1)).toNat

end

end A031915.P12676741332312392615

namespace A031915

/-- `A175787(A133653(2*n+1))` -/
def P12676741332312392615.Spec : Prop :=
  ∀ n, P12676741332312392615.a n = A031915 (n + 1)

end A031915

/-! ## A031915.P15136903848757125323

`A213642(A017197(n)-(n+2))`
-/

namespace A031915.P15136903848757125323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (A017197 n - (n + 2 : ℤ)).toNat

end

end A031915.P15136903848757125323

namespace A031915

/-- `A213642(A017197(n)-(n+2))` -/
def P15136903848757125323.Spec : Prop :=
  ∀ n, P15136903848757125323.a n = A031915 (n + 1)

end A031915

/-!
# A031916: a(n) = prime(9*n-7).

The programs for A031916, the canonical program `A031916.P15113012530568562469` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031916 has offset 1).

The definition of A031916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031916.P15113012530568562469

`A031369(3*n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A031916

/-- `A031369(3*n+1)` -/
def P15113012530568562469.Spec : Prop :=
  ∀ n, P15113012530568562469.a n = A031916 (n + 1)

theorem P15113012530568562469.correct : P15113012530568562469.Spec := by
  intro n
  simp only [A031916, Nat.add_sub_cancel]

end A031916

/-! ## A031916.P8388592179721456240

`A001748(A017185(n))/3`
-/

namespace A031916.P8388592179721456240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A017185 n).toNat : ℚ) / 3

end

end A031916.P8388592179721456240

namespace A031916

/-- `A001748(A017185(n))/3` -/
def P8388592179721456240.Spec : Prop :=
  ∀ n, P8388592179721456240.a n = (A031916 (n + 1) : ℚ)

end A031916

/-! ## A031916.P16272228347599014762

`p?[dr(n+1)*p?[2*n+1]]`
-/

namespace A031916.P16272228347599014762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031916.P16272228347599014762

namespace A031916

/-- `p?[dr(n+1)*p?[2*n+1]]` -/
def P16272228347599014762.Spec : Prop :=
  ∀ n, (P16272228347599014762.a n : ℤ) = A031916 (n + 1)

end A031916

/-! ## A031916.P17368761833158810650

`A065091(9*n+1)`
-/

namespace A031916.P17368761833158810650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (9 * n + 1)

end

end A031916.P17368761833158810650

namespace A031916

/-- `A065091(9*n+1)` -/
def P17368761833158810650.Spec : Prop :=
  ∀ n, P17368761833158810650.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P15175312569033889832

`or(1, A045344(A017173(n)))`
-/

namespace A031916.P15175312569033889832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045344 (A017173 n).toNat)

end

end A031916.P15175312569033889832

namespace A031916

/-- `or(1, A045344(A017173(n)))` -/
def P15175312569033889832.Spec : Prop :=
  ∀ n, P15175312569033889832.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P105858413830329792

`A004139(A022144(n)+n)`
-/

namespace A031916.P105858413830329792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A022144 n + (n : ℤ)).toNat

end

end A031916.P105858413830329792

namespace A031916

/-- `A004139(A022144(n)+n)` -/
def P105858413830329792.Spec : Prop :=
  ∀ n, P105858413830329792.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P13495843842354127895

`A004139(A008574(2*n)+n)`
-/

namespace A031916.P13495843842354127895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008574 (2 * n) + (n : ℤ)).toNat

end

end A031916.P13495843842354127895

namespace A031916

/-- `A004139(A008574(2*n)+n)` -/
def P13495843842354127895.Spec : Prop :=
  ∀ n, P13495843842354127895.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P16679796512340211519

`A004139(A008706(2*n)-n)`
-/

namespace A031916.P16679796512340211519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008706 (2 * n) - (n : ℤ)).toNat

end

end A031916.P16679796512340211519

namespace A031916

/-- `A004139(A008706(2*n)-n)` -/
def P16679796512340211519.Spec : Prop :=
  ∀ n, P16679796512340211519.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P255537131860481670

`A004139(A063289(2*(n+1))+2)`
-/

namespace A031916.P255537131860481670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A063289 (2 * (n + 1)) + 2).toNat

end

end A031916.P255537131860481670

namespace A031916

/-- `A004139(A063289(2*(n+1))+2)` -/
def P255537131860481670.Spec : Prop :=
  ∀ n, P255537131860481670.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P2838148493601789459

`A000040(9*n+2)`
-/

namespace A031916.P2838148493601789459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (9 * n + 2)

end

end A031916.P2838148493601789459

namespace A031916

/-- `A000040(9*n+2)` -/
def P2838148493601789459.Spec : Prop :=
  ∀ n, P2838148493601789459.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P512914950045176713

`A008578(9*n+3)`
-/

namespace A031916.P512914950045176713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * n + 3)

end

end A031916.P512914950045176713

namespace A031916

/-- `A008578(9*n+3)` -/
def P512914950045176713.Spec : Prop :=
  ∀ n, P512914950045176713.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P3485891542176055309

`A158611(9*n+4)`
-/

namespace A031916.P3485891542176055309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (9 * n + 4)

end

end A031916.P3485891542176055309

namespace A031916

/-- `A158611(9*n+4)` -/
def P3485891542176055309.Spec : Prop :=
  ∀ n, P3485891542176055309.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P18006002262141747826

`A040976(9*n+2)+2`
-/

namespace A031916.P18006002262141747826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (9 * n + 2) + 2

end

end A031916.P18006002262141747826

namespace A031916

/-- `A040976(9*n+2)+2` -/
def P18006002262141747826.Spec : Prop :=
  ∀ n, P18006002262141747826.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P8119956060777431898

`A006005(8*n+n+2)`
-/

namespace A031916.P8119956060777431898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (8 * n + (n + 2))

end

end A031916.P8119956060777431898

namespace A031916

/-- `A006005(8*n+n+2)` -/
def P8119956060777431898.Spec : Prop :=
  ∀ n, P8119956060777431898.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P7671976132273231556

`p?[lcm(dr(n), A000040(n+1))]`
-/

namespace A031916.P7671976132273231556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A031916.P7671976132273231556

namespace A031916

/-- `p?[lcm(dr(n), A000040(n+1))]` -/
def P7671976132273231556.Spec : Prop :=
  ∀ n, (P7671976132273231556.a n : ℤ) = A031916 (n + 1)

end A031916

/-! ## A031916.P12058433324393543664

`∏{d}[A000040(10*n-(n-2)), #]`
-/

namespace A031916.P12058433324393543664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((10 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A031916.P12058433324393543664

namespace A031916

/-- `∏{d}[A000040(10*n-(n-2)), #]` -/
def P12058433324393543664.Spec : Prop :=
  ∀ n, (P12058433324393543664.a n : ℤ) = A031916 (n + 1)

end A031916

/-! ## A031916.P4449702739443490904

`record[root(A000040(n+2), dr(n+1))]`
-/

namespace A031916.P4449702739443490904
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031916.P4449702739443490904

namespace A031916

/-- `record[root(A000040(n+2), dr(n+1))]` -/
def P4449702739443490904.Spec : Prop :=
  ∀ n, P4449702739443490904.a n = (A031916 (n + 1) : ℝ)

end A031916

/-! ## A031916.P4553943530622151770

`A046022(A281813(n)+n)`
-/

namespace A031916.P4553943530622151770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A281813 n + (n : ℤ)).toNat

end

end A031916.P4553943530622151770

namespace A031916

/-- `A046022(A281813(n)+n)` -/
def P4553943530622151770.Spec : Prop :=
  ∀ n, P4553943530622151770.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P12811445500516404541

`A008864(A008591(n)+2)-1`
-/

namespace A031916.P12811445500516404541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A008591 n + 2).toNat - 1

end

end A031916.P12811445500516404541

namespace A031916

/-- `A008864(A008591(n)+2)-1` -/
def P12811445500516404541.Spec : Prop :=
  ∀ n, P12811445500516404541.a n = A031916 (n + 1)

end A031916

/-! ## A031916.P15572775537593947370

`p?[dr(n)*A063884(n+1)]`
-/

namespace A031916.P15572775537593947370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) * A063884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031916.P15572775537593947370

namespace A031916

/-- `p?[dr(n)*A063884(n+1)]` -/
def P15572775537593947370.Spec : Prop :=
  ∀ n, P15572775537593947370.a n = A031916 (n + 1)

end A031916

/-!
# A031917: a(n) = prime(10*n-7).

The programs for A031917, there is no canonical definition to state claims against.
-/

/-! ## A031917.P1049385556639703070

`A031379(Δ[n²])`
-/

namespace A031917.P1049385556639703070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031379 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031917.P1049385556639703070

/-! ## A031917.P18016299684100000585

`p?[A031379(2*n+1)]`
-/

namespace A031917.P18016299684100000585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031379 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031917.P18016299684100000585

/-! ## A031917.P13496729232084794126

`A031368(5*n+2)`
-/

namespace A031917.P13496729232084794126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (5 * n + 2)

end

end A031917.P13496729232084794126

/-! ## A031917.P3241574245288837626

`A001749(A017305(n))/4`
-/

namespace A031917.P3241574245288837626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A017305 n).toNat : ℚ) / 4

end

end A031917.P3241574245288837626

/-! ## A031917.P2198248099318638729

`∩[A031368(n+1), A031379(n+1)]`
-/

namespace A031917.P2198248099318638729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031917.P2198248099318638729

/-! ## A031917.P10117183072452690171

`∩[A031379(n+1), A324812(n+1)]`
-/

namespace A031917.P10117183072452690171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031917.P10117183072452690171

/-! ## A031917.P11719037795228588334

`A108719(A008706(2*n))`
-/

namespace A031917.P11719037795228588334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A008706 (2 * n)).toNat

end

end A031917.P11719037795228588334

/-! ## A031917.P3516630572970612518

`A000040(10*n+3)`
-/

namespace A031917.P3516630572970612518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 * n + 3)

end

end A031917.P3516630572970612518

/-! ## A031917.P15966398090872114857

`A008578(10*n+4)`
-/

namespace A031917.P15966398090872114857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (10 * n + 4)

end

end A031917.P15966398090872114857

/-! ## A031917.P14905426853399906209

`A046022(5*(2*n+1))`
-/

namespace A031917.P14905426853399906209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (5 * (2 * n + 1))

end

end A031917.P14905426853399906209

/-! ## A031917.P13730211393053211781

`A158611(5*(2*n+1))`
-/

namespace A031917.P13730211393053211781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (5 * (2 * n + 1))

end

end A031917.P13730211393053211781

/-! ## A031917.P7011905372652855720

`A335402(5*(2*n+1))`
-/

namespace A031917.P7011905372652855720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (5 * (2 * n + 1))

end

end A031917.P7011905372652855720

/-! ## A031917.P9450211345618929839

`A006093(10*n+3)+1`
-/

namespace A031917.P9450211345618929839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (10 * n + 3) + 1

end

end A031917.P9450211345618929839

/-! ## A031917.P11423468850681034326

`A040976(10*n+3)+2`
-/

namespace A031917.P11423468850681034326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (10 * n + 3) + 2

end

end A031917.P11423468850681034326

/-! ## A031917.P15597296292268904330

`A065091(12*n+2-2*n)`
-/

namespace A031917.P15597296292268904330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (12 * n + 2 - 2 * n)

end

end A031917.P15597296292268904330

/-! ## A031917.P8650728820745540413

`A175216(7*n+3+3*n)-1`
-/

namespace A031917.P8650728820745540413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (7 * n + 3 + 3 * n) - 1

end

end A031917.P8650728820745540413

/-! ## A031917.P6087723092023719876

`A045344(A017293(n))`
-/

namespace A031917.P6087723092023719876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A017293 n).toNat

end

end A031917.P6087723092023719876

/-! ## A031917.P7700505559194219066

`A215848(A017281(n))`
-/

namespace A031917.P7700505559194219066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A017281 n).toNat

end

end A031917.P7700505559194219066

/-! ## A031917.P13491485247232417042

`A045344(A017185(n)+n)`
-/

namespace A031917.P13491485247232417042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A017185 n + (n : ℤ)).toNat

end

end A031917.P13491485247232417042

/-! ## A031917.P10753799169807693197

`A213642(A017197(n)+n)`
-/

namespace A031917.P10753799169807693197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213642 (A017197 n + (n : ℤ)).toNat

end

end A031917.P10753799169807693197

/-!
# A031918: a(n) = prime(9*n-8).

The programs for A031918, the canonical program `A031918.P13992052628362725352` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031918 has offset 1).

The definition of A031918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031918.P13992052628362725352

`A031377(3*n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A031918

/-- `A031377(3*n+1)` -/
def P13992052628362725352.Spec : Prop :=
  ∀ n, P13992052628362725352.a n = A031918 (n + 1)

theorem P13992052628362725352.correct : P13992052628362725352.Spec := by
  intro n
  simp only [A031918, Nat.add_sub_cancel]

end A031918

/-! ## A031918.P3407115391358579549

`A000040(9*n+1)`
-/

namespace A031918.P3407115391358579549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (9 * n + 1)

end

end A031918.P3407115391358579549

namespace A031918

/-- `A000040(9*n+1)` -/
def P3407115391358579549.Spec : Prop :=
  ∀ n, P3407115391358579549.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P13361457926747597040

`sqrt(A001248(9*n+1))`
-/

namespace A031918.P13361457926747597040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (9 * n + 1) : ℝ)

end

end A031918.P13361457926747597040

namespace A031918

/-- `sqrt(A001248(9*n+1))` -/
def P13361457926747597040.Spec : Prop :=
  ∀ n, P13361457926747597040.a n = (A031918 (n + 1) : ℝ)

end A031918

/-! ## A031918.P1641146161924023185

`A008864(9*n+1)-1`
-/

namespace A031918.P1641146161924023185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (9 * n + 1) - 1

end

end A031918.P1641146161924023185

namespace A031918

/-- `A008864(9*n+1)-1` -/
def P1641146161924023185.Spec : Prop :=
  ∀ n, P1641146161924023185.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P13598283824856478745

`A040976(9*n+1)+2`
-/

namespace A031918.P13598283824856478745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (9 * n + 1) + 2

end

end A031918.P13598283824856478745

namespace A031918

/-- `A040976(9*n+1)+2` -/
def P13598283824856478745.Spec : Prop :=
  ∀ n, P13598283824856478745.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P12099224335841356685

`∏{d}[A000040(10*n-(n-1)), #]`
-/

namespace A031918.P12099224335841356685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((10 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A031918.P12099224335841356685

namespace A031918

/-- `∏{d}[A000040(10*n-(n-1)), #]` -/
def P12099224335841356685.Spec : Prop :=
  ∀ n, (P12099224335841356685.a n : ℤ) = A031918 (n + 1)

end A031918

/-! ## A031918.P5919894869099751128

`record[root(A000040(n+1), dr(n+1))]`
-/

namespace A031918.P5919894869099751128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031918.P5919894869099751128

namespace A031918

/-- `record[root(A000040(n+1), dr(n+1))]` -/
def P5919894869099751128.Spec : Prop :=
  ∀ n, P5919894869099751128.a n = (A031918 (n + 1) : ℝ)

end A031918

/-! ## A031918.P7873889224212714113

`A045319(A022144(n)+n)`
-/

namespace A031918.P7873889224212714113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A022144 n + (n : ℤ)).toNat

end

end A031918.P7873889224212714113

namespace A031918

/-- `A045319(A022144(n)+n)` -/
def P7873889224212714113.Spec : Prop :=
  ∀ n, P7873889224212714113.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P10100063723336312079

`A045319(A008574(2*n)+n)`
-/

namespace A031918.P10100063723336312079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008574 (2 * n) + (n : ℤ)).toNat

end

end A031918.P10100063723336312079

namespace A031918

/-- `A045319(A008574(2*n)+n)` -/
def P10100063723336312079.Spec : Prop :=
  ∀ n, P10100063723336312079.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P1454020867887238080

`A045344(A008574(2*n)+n)`
-/

namespace A031918.P1454020867887238080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A008574 (2 * n) + (n : ℤ)).toNat

end

end A031918.P1454020867887238080

namespace A031918

/-- `A045344(A008574(2*n)+n)` -/
def P1454020867887238080.Spec : Prop :=
  ∀ n, P1454020867887238080.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P12588437829623865582

`A045319(A008706(2*n)-n)`
-/

namespace A031918.P12588437829623865582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008706 (2 * n) - (n : ℤ)).toNat

end

end A031918.P12588437829623865582

namespace A031918

/-- `A045319(A008706(2*n)-n)` -/
def P12588437829623865582.Spec : Prop :=
  ∀ n, P12588437829623865582.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P2405142225613702660

`record[A000040(A317311(n+1)-n)]`
-/

namespace A031918.P2405142225613702660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317311 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031918.P2405142225613702660

namespace A031918

/-- `record[A000040(A317311(n+1)-n)]` -/
def P2405142225613702660.Spec : Prop :=
  ∀ n, P2405142225613702660.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P12896997160929822254

`A008578(9*n+2)`
-/

namespace A031918.P12896997160929822254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (9 * n + 2)

end

end A031918.P12896997160929822254

namespace A031918

/-- `A008578(9*n+2)` -/
def P12896997160929822254.Spec : Prop :=
  ∀ n, P12896997160929822254.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P2954079975306834018

`A158611(A017197(n))`
-/

namespace A031918.P2954079975306834018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017197 n).toNat

end

end A031918.P2954079975306834018

namespace A031918

/-- `A158611(A017197(n))` -/
def P2954079975306834018.Spec : Prop :=
  ∀ n, P2954079975306834018.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P9271922288898170250

`A158611(A017209(n)-1)`
-/

namespace A031918.P9271922288898170250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017209 n - 1).toNat

end

end A031918.P9271922288898170250

namespace A031918

/-- `A158611(A017209(n)-1)` -/
def P9271922288898170250.Spec : Prop :=
  ∀ n, P9271922288898170250.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P1746679888391959860

`A158611(A017101(n)+n)`
-/

namespace A031918.P1746679888391959860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017101 n + (n : ℤ)).toNat

end

end A031918.P1746679888391959860

namespace A031918

/-- `A158611(A017101(n)+n)` -/
def P1746679888391959860.Spec : Prop :=
  ∀ n, P1746679888391959860.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P8560924678286340142

`A158611(A017305(n)-n)`
-/

namespace A031918.P8560924678286340142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017305 n - (n : ℤ)).toNat

end

end A031918.P8560924678286340142

namespace A031918

/-- `A158611(A017305(n)-n)` -/
def P8560924678286340142.Spec : Prop :=
  ∀ n, P8560924678286340142.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P14219297238307169918

`A175787(A133653(2*n+1)+n)`
-/

namespace A031918.P14219297238307169918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A133653 (2 * n + 1) + (n : ℤ)).toNat

end

end A031918.P14219297238307169918

namespace A031918

/-- `A175787(A133653(2*n+1)+n)` -/
def P14219297238307169918.Spec : Prop :=
  ∀ n, P14219297238307169918.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P1545698398448154296

`p?[dr(n)*record[A006530(n+1)]]`
-/

namespace A031918.P1545698398448154296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031918.P1545698398448154296

namespace A031918

/-- `p?[dr(n)*record[A006530(n+1)]]` -/
def P1545698398448154296.Spec : Prop :=
  ∀ n, P1545698398448154296.a n = A031918 (n + 1)

end A031918

/-! ## A031918.P11712761022757723298

`p?[dr(n)*record[A020639(n+1)]]`
-/

namespace A031918.P11712761022757723298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031918.P11712761022757723298

namespace A031918

/-- `p?[dr(n)*record[A020639(n+1)]]` -/
def P11712761022757723298.Spec : Prop :=
  ∀ n, P11712761022757723298.a n = A031918 (n + 1)

end A031918

/-!
# A031919: a(n) = prime(10*n-8).

The programs for A031919, the canonical program `A031919.P2337143140525117036` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031919 has offset 1).

The definition of A031919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A031919.P2337143140525117036

`A000040(A017293(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A031919

/-- `A000040(A017293(n))` -/
def P2337143140525117036.Spec : Prop :=
  ∀ n, P2337143140525117036.a n = A031919 (n + 1)

theorem P2337143140525117036.correct : P2337143140525117036.Spec := by
  intro n
  simp only [A031919, Nat.add_sub_cancel]

end A031919

/-! ## A031919.P13054409828586966924

`A031386(Δ[n²])`
-/

namespace A031919.P13054409828586966924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031919.P13054409828586966924

namespace A031919

/-- `A031386(Δ[n²])` -/
def P13054409828586966924.Spec : Prop :=
  ∀ n, P13054409828586966924.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P12707744145231166519

`p?[A031386(2*n+1)]`
-/

namespace A031919.P12707744145231166519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031386 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031919.P12707744145231166519

namespace A031919

/-- `p?[A031386(2*n+1)]` -/
def P12707744145231166519.Spec : Prop :=
  ∀ n, P12707744145231166519.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P3962321705597027823

`A031215(5*n+1)`
-/

namespace A031919.P3962321705597027823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (5 * n + 1)

end

end A031919.P3962321705597027823

namespace A031919

/-- `A031215(5*n+1)` -/
def P3962321705597027823.Spec : Prop :=
  ∀ n, P3962321705597027823.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P7921389069182641835

`∩[A031215(n+1), A031386(n+1)]`
-/

namespace A031919.P7921389069182641835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031919.P7921389069182641835

namespace A031919

/-- `∩[A031215(n+1), A031386(n+1)]` -/
def P7921389069182641835.Spec : Prop :=
  ∀ n, (P7921389069182641835.a n : ℤ) = A031919 (n + 1)

end A031919

/-! ## A031919.P14794631386319529718

`A031215(A016861(n))%A001513(n)`
-/

namespace A031919.P14794631386319529718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031215 (A016861 n).toNat) (A001513 n)

end

end A031919.P14794631386319529718

namespace A031919

/-- `A031215(A016861(n))%A001513(n)` -/
def P14794631386319529718.Spec : Prop :=
  ∀ n, P14794631386319529718.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P14113076899595788907

`A004139(A008706(2*n))`
-/

namespace A031919.P14113076899595788907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A008706 (2 * n)).toNat

end

end A031919.P14113076899595788907

namespace A031919

/-- `A004139(A008706(2*n))` -/
def P14113076899595788907.Spec : Prop :=
  ∀ n, P14113076899595788907.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P5256677224655642186

`A065091(10*n+1)`
-/

namespace A031919.P5256677224655642186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (10 * n + 1)

end

end A031919.P5256677224655642186

namespace A031919

/-- `A065091(10*n+1)` -/
def P5256677224655642186.Spec : Prop :=
  ∀ n, P5256677224655642186.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P14344133954942826453

`A000040(10*n+2)`
-/

namespace A031919.P14344133954942826453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 * n + 2)

end

end A031919.P14344133954942826453

namespace A031919

/-- `A000040(10*n+2)` -/
def P14344133954942826453.Spec : Prop :=
  ∀ n, P14344133954942826453.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P14213409078169664946

`A008578(10*n+3)`
-/

namespace A031919.P14213409078169664946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (10 * n + 3)

end

end A031919.P14213409078169664946

namespace A031919

/-- `A008578(10*n+3)` -/
def P14213409078169664946.Spec : Prop :=
  ∀ n, P14213409078169664946.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P9845735504599395778

`A158611(10*n+4)`
-/

namespace A031919.P9845735504599395778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (10 * n + 4)

end

end A031919.P9845735504599395778

namespace A031919

/-- `A158611(10*n+4)` -/
def P9845735504599395778.Spec : Prop :=
  ∀ n, P9845735504599395778.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P7107926941753123784

`A040976(10*n+2)+2`
-/

namespace A031919.P7107926941753123784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (10 * n + 2) + 2

end

end A031919.P7107926941753123784

namespace A031919

/-- `A040976(10*n+2)+2` -/
def P7107926941753123784.Spec : Prop :=
  ∀ n, P7107926941753123784.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P17370092547170181544

`A045319(A008706(2*n)+1)`
-/

namespace A031919.P17370092547170181544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008706 (2 * n) + 1).toNat

end

end A031919.P17370092547170181544

namespace A031919

/-- `A045319(A008706(2*n)+1)` -/
def P17370092547170181544.Spec : Prop :=
  ∀ n, P17370092547170181544.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P512985884842013551

`or(1, A008578(A008592(n)+3))`
-/

namespace A031919.P512985884842013551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008578 (A008592 n + 3).toNat)

end

end A031919.P512985884842013551

namespace A031919

/-- `or(1, A008578(A008592(n)+3))` -/
def P512985884842013551.Spec : Prop :=
  ∀ n, P512985884842013551.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P12887165387458365917

`∏{p}[A000040(A008592(n)+2), #]`
-/

namespace A031919.P12887165387458365917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008592 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A031919.P12887165387458365917

namespace A031919

/-- `∏{p}[A000040(A008592(n)+2), #]` -/
def P12887165387458365917.Spec : Prop :=
  ∀ n, (P12887165387458365917.a n : ℤ) = A031919 (n + 1)

end A031919

/-! ## A031919.P6203383706601951509

`record[A000040(A125886(n+1)+1)]`
-/

namespace A031919.P6203383706601951509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A125886 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031919.P6203383706601951509

namespace A031919

/-- `record[A000040(A125886(n+1)+1)]` -/
def P6203383706601951509.Spec : Prop :=
  ∀ n, P6203383706601951509.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P10288518946104840941

`record[A000040(A308232(n+1)+1)]`
-/

namespace A031919.P10288518946104840941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A308232 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031919.P10288518946104840941

namespace A031919

/-- `record[A000040(A308232(n+1)+1)]` -/
def P10288518946104840941.Spec : Prop :=
  ∀ n, P10288518946104840941.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P8056728869487548220

`A006005(A005843(4*n+n+1))`
-/

namespace A031919.P8056728869487548220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A005843 (4 * n + (n + 1))).toNat

end

end A031919.P8056728869487548220

namespace A031919

/-- `A006005(A005843(4*n+n+1))` -/
def P8056728869487548220.Spec : Prop :=
  ∀ n, P8056728869487548220.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P6569684536034376262

`filter[A031386(2*n+1), A008966(#)]`
-/

namespace A031919.P6569684536034376262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031386 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A031919.P6569684536034376262

namespace A031919

/-- `filter[A031386(2*n+1), A008966(#)]` -/
def P6569684536034376262.Spec : Prop :=
  ∀ n, P6569684536034376262.a n = A031919 (n + 1)

end A031919

/-! ## A031919.P14155147957842052093

`filter[A031386(2*n+1), A010051(#)]`
-/

namespace A031919.P14155147957842052093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031386 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A031919.P14155147957842052093

namespace A031919

/-- `filter[A031386(2*n+1), A010051(#)]` -/
def P14155147957842052093.Spec : Prop :=
  ∀ n, P14155147957842052093.a n = A031919 (n + 1)

end A031919

/-!
# A031920: a(n) = prime(10*n-9).

The programs for A031920, the canonical program `A031920.P6425321281668606651` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031920 has offset 1).

The definition of A031920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031920.P6425321281668606651

`A031392(Δ[n²])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031920

/-- `A031392(Δ[n²])` -/
def P6425321281668606651.Spec : Prop :=
  ∀ n, P6425321281668606651.a n = A031920 (n + 1)

theorem P6425321281668606651.correct : P6425321281668606651.Spec := by
  intro n
  simp only [A031920, Nat.add_sub_cancel]

end A031920

/-! ## A031920.P15089813178762688230

`p?[A031392(2*n+1)]`
-/

namespace A031920.P15089813178762688230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031920.P15089813178762688230

namespace A031920

/-- `p?[A031392(2*n+1)]` -/
def P15089813178762688230.Spec : Prop :=
  ∀ n, P15089813178762688230.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P1846270992152501793

`A031368(5*n+1)`
-/

namespace A031920.P1846270992152501793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (5 * n + 1)

end

end A031920.P1846270992152501793

namespace A031920

/-- `A031368(5*n+1)` -/
def P1846270992152501793.Spec : Prop :=
  ∀ n, P1846270992152501793.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P13783801625221442479

`A001749(A017281(n))/4`
-/

namespace A031920.P13783801625221442479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A017281 n).toNat : ℚ) / 4

end

end A031920.P13783801625221442479

namespace A031920

/-- `A001749(A017281(n))/4` -/
def P13783801625221442479.Spec : Prop :=
  ∀ n, P13783801625221442479.a n = (A031920 (n + 1) : ℚ)

end A031920

/-! ## A031920.P9821611999085383334

`∩[A031368(n+1), A031392(n+1)]`
-/

namespace A031920.P9821611999085383334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031920.P9821611999085383334

namespace A031920

/-- `∩[A031368(n+1), A031392(n+1)]` -/
def P9821611999085383334.Spec : Prop :=
  ∀ n, (P9821611999085383334.a n : ℤ) = A031920 (n + 1)

end A031920

/-! ## A031920.P11831345765792986760

`∩[A031392(n+1), A324812(n+1)]`
-/

namespace A031920.P11831345765792986760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031920.P11831345765792986760

namespace A031920

/-- `∩[A031392(n+1), A324812(n+1)]` -/
def P11831345765792986760.Spec : Prop :=
  ∀ n, (P11831345765792986760.a n : ℤ) = A031920 (n + 1)

end A031920

/-! ## A031920.P4645192710093975230

`A045319(A008706(2*n))`
-/

namespace A031920.P4645192710093975230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A008706 (2 * n)).toNat

end

end A031920.P4645192710093975230

namespace A031920

/-- `A045319(A008706(2*n))` -/
def P4645192710093975230.Spec : Prop :=
  ∀ n, P4645192710093975230.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P17065285945563408160

`A000040(10*n+1)`
-/

namespace A031920.P17065285945563408160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 * n + 1)

end

end A031920.P17065285945563408160

namespace A031920

/-- `A000040(10*n+1)` -/
def P17065285945563408160.Spec : Prop :=
  ∀ n, P17065285945563408160.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P17732643797240466719

`A008578(10*n+2)`
-/

namespace A031920.P17732643797240466719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (10 * n + 2)

end

end A031920.P17732643797240466719

namespace A031920

/-- `A008578(10*n+2)` -/
def P17732643797240466719.Spec : Prop :=
  ∀ n, P17732643797240466719.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P637960728999161846

`A040976(10*n+1)+2`
-/

namespace A031920.P637960728999161846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (10 * n + 1) + 2

end

end A031920.P637960728999161846

namespace A031920

/-- `A040976(10*n+1)+2` -/
def P637960728999161846.Spec : Prop :=
  ∀ n, P637960728999161846.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P4509874518074127282

`A158611(A017305(n))`
-/

namespace A031920.P4509874518074127282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017305 n).toNat

end

end A031920.P4509874518074127282

namespace A031920

/-- `A158611(A017305(n))` -/
def P4509874518074127282.Spec : Prop :=
  ∀ n, P4509874518074127282.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P14068086977515755146

`A158611(A017197(n)+n)`
-/

namespace A031920.P14068086977515755146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A017197 n + (n : ℤ)).toNat

end

end A031920.P14068086977515755146

namespace A031920

/-- `A158611(A017197(n)+n)` -/
def P14068086977515755146.Spec : Prop :=
  ∀ n, P14068086977515755146.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P12643052822367782265

`record[A000040(A125886(n+1))]`
-/

namespace A031920.P12643052822367782265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A125886 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031920.P12643052822367782265

namespace A031920

/-- `record[A000040(A125886(n+1))]` -/
def P12643052822367782265.Spec : Prop :=
  ∀ n, P12643052822367782265.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P2865605181816631259

`record[A000040(A308232(n+1))]`
-/

namespace A031920.P2865605181816631259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A308232 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031920.P2865605181816631259

namespace A031920

/-- `record[A000040(A308232(n+1))]` -/
def P2865605181816631259.Spec : Prop :=
  ∀ n, P2865605181816631259.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P14030367058105760530

`A006093(A008592(n)+1)+1`
-/

namespace A031920.P14030367058105760530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A008592 n + 1).toNat + 1

end

end A031920.P14030367058105760530

namespace A031920

/-- `A006093(A008592(n)+1)+1` -/
def P14030367058105760530.Spec : Prop :=
  ∀ n, P14030367058105760530.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P2928926831792655988

`A158611(A016897(2*n)-1)`
-/

namespace A031920.P2928926831792655988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A016897 (2 * n) - 1).toNat

end

end A031920.P2928926831792655988

namespace A031920

/-- `A158611(A016897(2*n)-1)` -/
def P2928926831792655988.Spec : Prop :=
  ∀ n, P2928926831792655988.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P6700278830819476377

`record[A000040(A317312(n+1)-n)]`
-/

namespace A031920.P6700278830819476377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317312 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031920.P6700278830819476377

namespace A031920

/-- `record[A000040(A317312(n+1)-n)]` -/
def P6700278830819476377.Spec : Prop :=
  ∀ n, P6700278830819476377.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P14463789196837794879

`filter[A031392(2*n+1), A008966(#)]`
-/

namespace A031920.P14463789196837794879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A031920.P14463789196837794879

namespace A031920

/-- `filter[A031392(2*n+1), A008966(#)]` -/
def P14463789196837794879.Spec : Prop :=
  ∀ n, P14463789196837794879.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P8650034119871448657

`filter[A031392(2*n+1), A010051(#)]`
-/

namespace A031920.P8650034119871448657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A031920.P8650034119871448657

namespace A031920

/-- `filter[A031392(2*n+1), A010051(#)]` -/
def P8650034119871448657.Spec : Prop :=
  ∀ n, P8650034119871448657.a n = A031920 (n + 1)

end A031920

/-! ## A031920.P5810225581980260438

`filter[A031392(2*n+1), A014578(#)]`
-/

namespace A031920.P5810225581980260438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031392 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A031920.P5810225581980260438

namespace A031920

/-- `filter[A031392(2*n+1), A014578(#)]` -/
def P5810225581980260438.Spec : Prop :=
  ∀ n, P5810225581980260438.a n = A031920 (n + 1)

end A031920

/-!
# A031921: a(n) = prime(100*n).

The programs for A031921, there is no canonical definition to state claims against.
-/

/-! ## A031921.P7826026386847505930

`A031343(10*(n+1))`
-/

namespace A031921.P7826026386847505930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031343 (10 * (n + 1))

end

end A031921.P7826026386847505930

/-! ## A031921.P1937210559218752396

`A031338(4*5*(n+1))`
-/

namespace A031921.P1937210559218752396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (4 * (5 * (n + 1)))

end

end A031921.P1937210559218752396

/-! ## A031921.P7055985215696926422

`A031337(5*5*(n+1))`
-/

namespace A031921.P7055985215696926422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (5 * (5 * (n + 1)))

end

end A031921.P7055985215696926422

/-! ## A031921.P6550819012195525690

`A031215(50*(n+1))`
-/

namespace A031921.P6550819012195525690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (50 * (n + 1))

end

end A031921.P6550819012195525690

/-! ## A031921.P883025242753430001

`A060191(A008607(2*(n+1))-1)`
-/

namespace A031921.P883025242753430001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (A008607 (2 * (n + 1)) - 1).toNat

end

end A031921.P883025242753430001

/-! ## A031921.P1008118195255235054

`A001749(A158128(n+1)-1)/4`
-/

namespace A031921.P1008118195255235054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A158128 (n + 1) - 1).toNat : ℚ) / 4

end

end A031921.P1008118195255235054

/-! ## A031921.P7722158676084423871

`A060191(A022282(n+2)-A022282(n))`
-/

namespace A031921.P7722158676084423871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (A022282 (n + 2) - A022282 n).toNat

end

end A031921.P7722158676084423871

/-! ## A031921.P17382237966186499858

`A000040(10*10*(n+1))`
-/

namespace A031921.P17382237966186499858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (10 * (10 * (n + 1)))

end

end A031921.P17382237966186499858

/-! ## A031921.P12624107555478302474

`A065091(A158128(n+1)-2)`
-/

namespace A031921.P12624107555478302474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A158128 (n + 1) - 2).toNat

end

end A031921.P12624107555478302474

/-! ## A031921.P7959877968655133571

`or(1, A000040(A158128(n+1)-1))`
-/

namespace A031921.P7959877968655133571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (A158128 (n + 1) - 1).toNat)

end

end A031921.P7959877968655133571

/-!
# A031922: a(n) = prime(1000 * n).

The programs for A031922, there is no canonical definition to state claims against.
-/

/-! ## A031922.P12850049138020296414

`A031921(10*(n+1))`
-/

namespace A031922.P12850049138020296414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031921 (10 * (n + 1))

end

end A031922.P12850049138020296414

/-! ## A031922.P15067022896102328237

`or(1, A031921(A008592(n+1)))`
-/

namespace A031922.P15067022896102328237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031921 (A008592 (n + 1)).toNat)

end

end A031922.P15067022896102328237

/-! ## A031922.P3013967603470524271

`A031921(A008592(n+1))%A124515(n+1)`
-/

namespace A031922.P3013967603470524271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031921 (A008592 (n + 1)).toNat) (A124515 (n + 1))

end

end A031922.P3013967603470524271

/-! ## A031922.P17381863306700681645

`A031921(A008592(n+1))/A010684(and(n, -6))`
-/

namespace A031922.P17381863306700681645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031921 (A008592 (n + 1)).toNat : ℚ) / (A010684 (Int.land (n : ℤ) (-6)).toNat : ℚ)

end

end A031922.P17381863306700681645

/-! ## A031922.P3964463875054488104

`A031921(A008592(n+1))/A015918(A005208(n+3))`
-/

namespace A031922.P3964463875054488104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031921 (A008592 (n + 1)).toNat : ℚ) / (A015918 (A005208 (n + 3)).toNat : ℚ)

end

end A031922.P3964463875054488104

/-! ## A031922.P14428533265349156664

`A031343(A044332(n+1))`
-/

namespace A031922.P14428533265349156664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031343 (A044332 (n + 1)).toNat

end

end A031922.P14428533265349156664

/-! ## A031922.P3282430525258009857

`A031343(A117412(n+3)/2)`
-/

namespace A031922.P3282430525258009857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031343 (SequenceMachineLib.roundAway ((A117412 (n + 3) : ℚ) / 2)).toNat

end

end A031922.P3282430525258009857

/-! ## A031922.P4998757281388552810

`A031338(A117412(n+3))`
-/

namespace A031922.P4998757281388552810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031338 (A117412 (n + 3)).toNat

end

end A031922.P4998757281388552810

/-!
# A031923: Let r and s be consecutive Fibonacci numbers. Sequence is r^4, r^3 s, r^2 s^2, and r s^3.

The programs for A031923, there is no canonical definition to state claims against.
-/

/-! ## A031923.P15254883447479194140

`2^n-A209408(n)`
-/

namespace A031923.P15254883447479194140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A209408 n

end

end A031923.P15254883447479194140

/-! ## A031923.P16523951655445950778

`A000225(n)+1-A209408(n)`
-/

namespace A031923.P16523951655445950778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A209408 n)

end

end A031923.P16523951655445950778

/-! ## A031923.P16820158330618809336

`A209409(n)+A209410(n)-A209408(n)`
-/

namespace A031923.P16820158330618809336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209409 n + (A209410 n - A209408 n)

end

end A031923.P16820158330618809336

/-! ## A031923.P9295521809935899474

`A209435(∑[n+4]+2)`
-/

namespace A031923.P9295521809935899474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A031923.P9295521809935899474

/-! ## A031923.P14965916243201043368

`A209434(A167614(n+2))`
-/

namespace A031923.P14965916243201043368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (A167614 (n + 2)).toNat

end

end A031923.P14965916243201043368

/-!
# A031924: Primes followed by a gap of 6, i.e., next prime is p + 6.

The programs for A031924, the canonical program `A031924.P13407024209646525674` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031924 has offset 1).

The definition of A031924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031924.P9287523720204344967

`A031925(n+1)-6`
-/

namespace A031924.P9287523720204344967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1) - 6

end

end A031924.P9287523720204344967

namespace A031924

/-- `A031925(n+1)-6` -/
def P9287523720204344967.Spec : Prop :=
  ∀ n, P9287523720204344967.a n = A031924 (n + 1)

end A031924

/-! ## A031924.P16150351555756501473

`A210477(n+1)/A031925(n+1)`
-/

namespace A031924.P16150351555756501473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210477 (n + 1) : ℚ) / (A031925 (n + 1) : ℚ)

end

end A031924.P16150351555756501473

namespace A031924

/-- `A210477(n+1)/A031925(n+1)` -/
def P16150351555756501473.Spec : Prop :=
  ∀ n, P16150351555756501473.a n = (A031924 (n + 1) : ℚ)

end A031924

/-! ## A031924.P2357497416348061954

`∪[A052158(n+1), A052159(n+1)]`
-/

namespace A031924.P2357497416348061954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P2357497416348061954

namespace A031924

/-- `∪[A052158(n+1), A052159(n+1)]` -/
def P2357497416348061954.Spec : Prop :=
  ∀ n, (P2357497416348061954.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P13407024209646525674

`p?[A072571(n+1)-3]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A031924

/-- `p?[A072571(n+1)-3]` -/
def P13407024209646525674.Spec : Prop :=
  ∀ n, P13407024209646525674.a n = A031924 (n + 1)

theorem P13407024209646525674.correct : P13407024209646525674.Spec := by
  intro n
  simp only [A031924, Nat.add_sub_cancel]

end A031924

/-! ## A031924.P10820146077496179818

`∩[A015914(n+1), A258578(n+1)]`
-/

namespace A031924.P10820146077496179818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P10820146077496179818

namespace A031924

/-- `∩[A015914(n+1), A258578(n+1)]` -/
def P10820146077496179818.Spec : Prop :=
  ∀ n, (P10820146077496179818.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P10103058194613995485

`∩[A023201(n+1), A258578(n+1)]`
-/

namespace A031924.P10103058194613995485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P10103058194613995485

namespace A031924

/-- `∩[A023201(n+1), A258578(n+1)]` -/
def P10103058194613995485.Spec : Prop :=
  ∀ n, (P10103058194613995485.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P10706813355663698698

`∩[A258578(n+1), A262084(n+1)]`
-/

namespace A031924.P10706813355663698698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P10706813355663698698

namespace A031924

/-- `∩[A258578(n+1), A262084(n+1)]` -/
def P10706813355663698698.Spec : Prop :=
  ∀ n, (P10706813355663698698.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P10452186251405492757

`∩[A124590(n+1), A258578(n+1)]`
-/

namespace A031924.P10452186251405492757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P10452186251405492757

namespace A031924

/-- `∩[A124590(n+1), A258578(n+1)]` -/
def P10452186251405492757.Spec : Prop :=
  ∀ n, (P10452186251405492757.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P10887178997915784474

`∩[A058620(n+1), A258578(n+1)]`
-/

namespace A031924.P10887178997915784474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P10887178997915784474

namespace A031924

/-- `∩[A058620(n+1), A258578(n+1)]` -/
def P10887178997915784474.Spec : Prop :=
  ∀ n, (P10887178997915784474.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P8037040845841086679

`∩[A015914(n+1), A083370(n+1)]`
-/

namespace A031924.P8037040845841086679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P8037040845841086679

namespace A031924

/-- `∩[A015914(n+1), A083370(n+1)]` -/
def P8037040845841086679.Spec : Prop :=
  ∀ n, (P8037040845841086679.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P16462277556435633794

`∩[A023201(n+1), A083370(n+1)]`
-/

namespace A031924.P16462277556435633794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P16462277556435633794

namespace A031924

/-- `∩[A023201(n+1), A083370(n+1)]` -/
def P16462277556435633794.Spec : Prop :=
  ∀ n, (P16462277556435633794.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P5674777079766202059

`∩[A083370(n+1), A124590(n+1)]`
-/

namespace A031924.P5674777079766202059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P5674777079766202059

namespace A031924

/-- `∩[A083370(n+1), A124590(n+1)]` -/
def P5674777079766202059.Spec : Prop :=
  ∀ n, (P5674777079766202059.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P71902323736428550

`∩[A083370(n+1), A262084(n+1)]`
-/

namespace A031924.P71902323736428550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031924.P71902323736428550

namespace A031924

/-- `∩[A083370(n+1), A262084(n+1)]` -/
def P71902323736428550.Spec : Prop :=
  ∀ n, (P71902323736428550.a n : ℤ) = A031924 (n + 1)

end A031924

/-! ## A031924.P14592370733343335897

`p?[A024675(n+3)-3]`
-/

namespace A031924.P14592370733343335897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031924.P14592370733343335897

namespace A031924

/-- `p?[A024675(n+3)-3]` -/
def P14592370733343335897.Spec : Prop :=
  ∀ n, P14592370733343335897.a n = A031924 (n + 1)

end A031924

/-! ## A031924.P4002635909862722212

`A000040(A320701(n+1))`
-/

namespace A031924.P4002635909862722212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320701 (n + 1)).toNat

end

end A031924.P4002635909862722212

namespace A031924

/-- `A000040(A320701(n+1))` -/
def P4002635909862722212.Spec : Prop :=
  ∀ n, P4002635909862722212.a n = A031924 (n + 1)

end A031924

/-! ## A031924.P3481046194833885097

`A008578(A320701(n+1)+1)`
-/

namespace A031924.P3481046194833885097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320701 (n + 1) + 1).toNat

end

end A031924.P3481046194833885097

namespace A031924

/-- `A008578(A320701(n+1)+1)` -/
def P3481046194833885097.Spec : Prop :=
  ∀ n, P3481046194833885097.a n = A031924 (n + 1)

end A031924

/-! ## A031924.P258170294882871874

`A045319(A320701(n+1)-1)`
-/

namespace A031924.P258170294882871874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320701 (n + 1) - 1).toNat

end

end A031924.P258170294882871874

namespace A031924

/-- `A045319(A320701(n+1)-1)` -/
def P258170294882871874.Spec : Prop :=
  ∀ n, P258170294882871874.a n = A031924 (n + 1)

end A031924

/-! ## A031924.P15734878727688928729

`A000040(eq[6, A054541(n+1)])`
-/

namespace A031924.P15734878727688928729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031924.P15734878727688928729

namespace A031924

/-- `A000040(eq[6, A054541(n+1)])` -/
def P15734878727688928729.Spec : Prop :=
  ∀ n, P15734878727688928729.a n = A031924 (n + 1)

end A031924

/-! ## A031924.P2063400041921415061

`A065091(eq[6, A001223(n+1)])`
-/

namespace A031924.P2063400041921415061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031924.P2063400041921415061

namespace A031924

/-- `A065091(eq[6, A001223(n+1)])` -/
def P2063400041921415061.Spec : Prop :=
  ∀ n, P2063400041921415061.a n = A031924 (n + 1)

end A031924

/-! ## A031924.P6162148218312435457

`A000040(eq[7, A230847(n+1)])`
-/

namespace A031924.P6162148218312435457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031924.P6162148218312435457

namespace A031924

/-- `A000040(eq[7, A230847(n+1)])` -/
def P6162148218312435457.Spec : Prop :=
  ∀ n, P6162148218312435457.a n = A031924 (n + 1)

end A031924

/-!
# A031925: Upper prime of a difference of 6 between consecutive primes.

The programs for A031925, the canonical program `A031925.P10904826335426229622` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031925 has offset 1).

The definition of A031925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031925.P10904826335426229622

`A031924(n+1)+6`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A031925

/-- `A031924(n+1)+6` -/
def P10904826335426229622.Spec : Prop :=
  ∀ n, P10904826335426229622.a n = A031925 (n + 1)

theorem P10904826335426229622.correct : P10904826335426229622.Spec := by
  intro n
  simp only [A031925, Nat.add_sub_cancel]

end A031925

/-! ## A031925.P13582419852647254648

`p?[A072571(n+1)+3]`
-/

namespace A031925.P13582419852647254648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072571 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031925.P13582419852647254648

namespace A031925

/-- `p?[A072571(n+1)+3]` -/
def P13582419852647254648.Spec : Prop :=
  ∀ n, P13582419852647254648.a n = A031925 (n + 1)

end A031925

/-! ## A031925.P1004082503018278751

`p?[A258578(n+1)+6]`
-/

namespace A031925.P1004082503018278751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031925.P1004082503018278751

namespace A031925

/-- `p?[A258578(n+1)+6]` -/
def P1004082503018278751.Spec : Prop :=
  ∀ n, P1004082503018278751.a n = A031925 (n + 1)

end A031925

/-! ## A031925.P15544920752763660478

`∩[A046117(n+1), A327748(n+1)]`
-/

namespace A031925.P15544920752763660478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P15544920752763660478

namespace A031925

/-- `∩[A046117(n+1), A327748(n+1)]` -/
def P15544920752763660478.Spec : Prop :=
  ∀ n, (P15544920752763660478.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P3337667036808364006

`∩[A067831(n+1), A327748(n+1)]`
-/

namespace A031925.P3337667036808364006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P3337667036808364006

namespace A031925

/-- `∩[A067831(n+1), A327748(n+1)]` -/
def P3337667036808364006.Spec : Prop :=
  ∀ n, (P3337667036808364006.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P6255317420601777605

`∩[A172071(n+1), A327748(n+1)]`
-/

namespace A031925.P6255317420601777605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P6255317420601777605

namespace A031925

/-- `∩[A172071(n+1), A327748(n+1)]` -/
def P6255317420601777605.Spec : Prop :=
  ∀ n, (P6255317420601777605.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P2214520385975605322

`∩[A243153(n+1), A327748(n+1)]`
-/

namespace A031925.P2214520385975605322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P2214520385975605322

namespace A031925

/-- `∩[A243153(n+1), A327748(n+1)]` -/
def P2214520385975605322.Spec : Prop :=
  ∀ n, (P2214520385975605322.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P14981054916513587850

`∩[A243153(n+1), A396248(n+1)]`
-/

namespace A031925.P14981054916513587850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P14981054916513587850

namespace A031925

/-- `∩[A243153(n+1), A396248(n+1)]` -/
def P14981054916513587850.Spec : Prop :=
  ∀ n, (P14981054916513587850.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P7428724687889046016

`∩[A046117(n+1), A134100(n+1)]`
-/

namespace A031925.P7428724687889046016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P7428724687889046016

namespace A031925

/-- `∩[A046117(n+1), A134100(n+1)]` -/
def P7428724687889046016.Spec : Prop :=
  ∀ n, (P7428724687889046016.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P17514772596649683333

`∩[A067831(n+1), A134100(n+1)]`
-/

namespace A031925.P17514772596649683333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P17514772596649683333

namespace A031925

/-- `∩[A067831(n+1), A134100(n+1)]` -/
def P17514772596649683333.Spec : Prop :=
  ∀ n, (P17514772596649683333.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P11856330265814989676

`∩[A134100(n+1), A172071(n+1)]`
-/

namespace A031925.P11856330265814989676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P11856330265814989676

namespace A031925

/-- `∩[A134100(n+1), A172071(n+1)]` -/
def P11856330265814989676.Spec : Prop :=
  ∀ n, (P11856330265814989676.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P15157869798851611672

`∩[A134100(n+1), A172988(n+1)]`
-/

namespace A031925.P15157869798851611672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031925.P15157869798851611672

namespace A031925

/-- `∩[A134100(n+1), A172988(n+1)]` -/
def P15157869798851611672.Spec : Prop :=
  ∀ n, (P15157869798851611672.a n : ℤ) = A031925 (n + 1)

end A031925

/-! ## A031925.P17771994204496316111

`p?[A024675(n+2)+3]`
-/

namespace A031925.P17771994204496316111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031925.P17771994204496316111

namespace A031925

/-- `p?[A024675(n+2)+3]` -/
def P17771994204496316111.Spec : Prop :=
  ∀ n, P17771994204496316111.a n = A031925 (n + 1)

end A031925

/-! ## A031925.P14180830397740088561

`p?[round(sqrt(A006094(n+3)))+3]`
-/

namespace A031925.P14180830397740088561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006094 (n + 3) : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031925.P14180830397740088561

namespace A031925

/-- `p?[round(sqrt(A006094(n+3)))+3]` -/
def P14180830397740088561.Spec : Prop :=
  ∀ n, P14180830397740088561.a n = A031925 (n + 1)

end A031925

/-! ## A031925.P13085395818708965437

`A045319(A320701(n+1))`
-/

namespace A031925.P13085395818708965437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320701 (n + 1)).toNat

end

end A031925.P13085395818708965437

namespace A031925

/-- `A045319(A320701(n+1))` -/
def P13085395818708965437.Spec : Prop :=
  ∀ n, P13085395818708965437.a n = A031925 (n + 1)

end A031925

/-! ## A031925.P14798350418330836371

`A000040(A320701(n+1)+1)`
-/

namespace A031925.P14798350418330836371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320701 (n + 1) + 1).toNat

end

end A031925.P14798350418330836371

namespace A031925

/-- `A000040(A320701(n+1)+1)` -/
def P14798350418330836371.Spec : Prop :=
  ∀ n, P14798350418330836371.a n = A031925 (n + 1)

end A031925

/-! ## A031925.P16298361305203226947

`A065091(eq[7, A076368(n+1)])`
-/

namespace A031925.P16298361305203226947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031925.P16298361305203226947

namespace A031925

/-- `A065091(eq[7, A076368(n+1)])` -/
def P16298361305203226947.Spec : Prop :=
  ∀ n, P16298361305203226947.a n = A031925 (n + 1)

end A031925

/-! ## A031925.P3043379326106237458

`A000040(eq[6, A001223(n+1)]+2)`
-/

namespace A031925.P3043379326106237458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A031925.P3043379326106237458

namespace A031925

/-- `A000040(eq[6, A001223(n+1)]+2)` -/
def P3043379326106237458.Spec : Prop :=
  ∀ n, P3043379326106237458.a n = A031925 (n + 1)

end A031925

/-! ## A031925.P7576272291073930933

`A000040(eq[7, A076368(n+1)]+1)`
-/

namespace A031925.P7576272291073930933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031925.P7576272291073930933

namespace A031925

/-- `A000040(eq[7, A076368(n+1)]+1)` -/
def P7576272291073930933.Spec : Prop :=
  ∀ n, P7576272291073930933.a n = A031925 (n + 1)

end A031925

/-!
# A031926: Lower prime of a difference of 8 between consecutive primes.

The programs for A031926, there is no canonical definition to state claims against.
-/

/-! ## A031926.P8744132423304382723

`A031927(n)-8`
-/

namespace A031926.P8744132423304382723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031927 n - 8

end

end A031926.P8744132423304382723

/-! ## A031926.P12485289377966573804

`∩[A015915(n+1), A394735(n+1)]`
-/

namespace A031926.P12485289377966573804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P12485289377966573804

/-! ## A031926.P6022048955558847419

`∩[A023202(n+1), A394735(n+1)]`
-/

namespace A031926.P6022048955558847419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P6022048955558847419

/-! ## A031926.P896280127471409335

`∩[A262085(n+1), A394735(n+1)]`
-/

namespace A031926.P896280127471409335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P896280127471409335

/-! ## A031926.P8708097452469698589

`∩[A015915(n+1), A098059(n+1)]`
-/

namespace A031926.P8708097452469698589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P8708097452469698589

/-! ## A031926.P16400781776068810569

`∩[A023202(n+1), A098059(n+1)]`
-/

namespace A031926.P16400781776068810569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P16400781776068810569

/-! ## A031926.P4523532944770513855

`∩[A098059(n+1), A262085(n+1)]`
-/

namespace A031926.P4523532944770513855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P4523532944770513855

/-! ## A031926.P8469315589416282216

`A055670(A320702(n+1))-1`
-/

namespace A031926.P8469315589416282216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320702 (n + 1)).toNat - 1

end

end A031926.P8469315589416282216

/-! ## A031926.P12118057465096798251

`∩[A015915(n+1), A083371(n+1)]`
-/

namespace A031926.P12118057465096798251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P12118057465096798251

/-! ## A031926.P5660014436377485023

`∩[A023202(n+1), A083371(n+1)]`
-/

namespace A031926.P5660014436377485023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P5660014436377485023

/-! ## A031926.P7662843293551821596

`∩[A083371(n+1), A262085(n+1)]`
-/

namespace A031926.P7662843293551821596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031926.P7662843293551821596

/-! ## A031926.P13718436781373203922

`A000040(A320702(n+1))`
-/

namespace A031926.P13718436781373203922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320702 (n + 1)).toNat

end

end A031926.P13718436781373203922

/-! ## A031926.P16239489661454957254

`A008578(A320702(n+1)+1)`
-/

namespace A031926.P16239489661454957254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320702 (n + 1) + 1).toNat

end

end A031926.P16239489661454957254

/-! ## A031926.P332375256518550571

`A045319(A320702(n+1)-1)`
-/

namespace A031926.P332375256518550571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320702 (n + 1) - 1).toNat

end

end A031926.P332375256518550571

/-! ## A031926.P8119122565833890068

`A065091(A320702(n+1)-1)`
-/

namespace A031926.P8119122565833890068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320702 (n + 1) - 1).toNat

end

end A031926.P8119122565833890068

/-! ## A031926.P15159083771851875023

`A000040(eq[8, A054541(n+1)])`
-/

namespace A031926.P15159083771851875023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031926.P15159083771851875023

/-! ## A031926.P5515813255761726533

`A065091(eq[8, A001223(n+1)])`
-/

namespace A031926.P5515813255761726533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031926.P5515813255761726533

/-! ## A031926.P15552389676993724138

`A000040(eq[9, A076368(n+1)])`
-/

namespace A031926.P15552389676993724138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031926.P15552389676993724138

/-! ## A031926.P18257149209660510483

`A000040(eq[9, A230847(n+1)])`
-/

namespace A031926.P18257149209660510483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031926.P18257149209660510483

/-! ## A031926.P1072017079208348829

`p?[(9-A001223(n+1))*A000040(n+1)]`
-/

namespace A031926.P1072017079208348829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A001223 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031926.P1072017079208348829

/-!
# A031927: Upper prime of a difference of 8 between consecutive primes.

The programs for A031927, there is no canonical definition to state claims against.
-/

/-! ## A031927.P7053136775741315417

`A031926(n+1)+8`
-/

namespace A031927.P7053136775741315417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1) + 8

end

end A031927.P7053136775741315417

/-! ## A031927.P11448927754334342494

`∩[A243155(n+1), A321891(n+1)]`
-/

namespace A031927.P11448927754334342494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P11448927754334342494

/-! ## A031927.P16290887881662705706

`∩[A121764(n+1), A243155(n+1)]`
-/

namespace A031927.P16290887881662705706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P16290887881662705706

/-! ## A031927.P6793096925811262617

`∩[A121764(n+1), A396340(n+1)]`
-/

namespace A031927.P6793096925811262617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P6793096925811262617

/-! ## A031927.P4064904979160930072

`∩[A002476(n+1), A243155(n+1)]`
-/

namespace A031927.P4064904979160930072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P4064904979160930072

/-! ## A031927.P9610688645206912335

`∩[A045375(n+1), A243155(n+1)]`
-/

namespace A031927.P9610688645206912335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P9610688645206912335

/-! ## A031927.P16481574302831758559

`∩[A123365(n+1), A243155(n+1)]`
-/

namespace A031927.P16481574302831758559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P16481574302831758559

/-! ## A031927.P4710379207247772569

`∩[A133290(n+1), A243155(n+1)]`
-/

namespace A031927.P4710379207247772569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P4710379207247772569

/-! ## A031927.P6548180313839304449

`∩[A137827(n+1), A243155(n+1)]`
-/

namespace A031927.P6548180313839304449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P6548180313839304449

/-! ## A031927.P13761209332452868816

`filter[A243155(n+1), A070563(#)]`
-/

namespace A031927.P13761209332452868816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A031927.P13761209332452868816

/-! ## A031927.P7677740661624198496

`∩[A140562(n+1), A243155(n+1)]`
-/

namespace A031927.P7677740661624198496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P7677740661624198496

/-! ## A031927.P6551123043589301941

`∩[A107925(n+1), A243155(n+1)]`
-/

namespace A031927.P6551123043589301941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P6551123043589301941

/-! ## A031927.P12996922766105219480

`∩[A004611(n+1), A243155(n+1)]`
-/

namespace A031927.P12996922766105219480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P12996922766105219480

/-! ## A031927.P13591162674098681065

`∩[A129904(n+1), A243155(n+1)]`
-/

namespace A031927.P13591162674098681065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P13591162674098681065

/-! ## A031927.P14363577984190279663

`∩[A243155(n+1), A348932(n+1)]`
-/

namespace A031927.P14363577984190279663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P14363577984190279663

/-! ## A031927.P6382423779623977843

`∩[A243155(n+1), A260682(n+1)]`
-/

namespace A031927.P6382423779623977843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031927.P6382423779623977843

/-! ## A031927.P9779823107760350075

`A045319(A320702(n+1))`
-/

namespace A031927.P9779823107760350075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320702 (n + 1)).toNat

end

end A031927.P9779823107760350075

/-! ## A031927.P10935893784010017322

`A000040(A320702(n+1)+1)`
-/

namespace A031927.P10935893784010017322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320702 (n + 1) + 1).toNat

end

end A031927.P10935893784010017322

/-! ## A031927.P2410826741340769393

`A008578(A320702(n+1)+2)`
-/

namespace A031927.P2410826741340769393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320702 (n + 1) + 2).toNat

end

end A031927.P2410826741340769393

/-! ## A031927.P16090919751511780514

`A065091(eq[8, A054541(n+1)])`
-/

namespace A031927.P16090919751511780514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031927.P16090919751511780514

/-!
# A031928: Lower prime of a difference of 10 between consecutive primes.

The programs for A031928, there is no canonical definition to state claims against.
-/

/-! ## A031928.P10590258232786283445

`A031929(n)-10`
-/

namespace A031928.P10590258232786283445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031929 n - 10

end

end A031928.P10590258232786283445

/-! ## A031928.P16716660748425756381

`∩[A015916(n+1), A209618(n+1)]`
-/

namespace A031928.P16716660748425756381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031928.P16716660748425756381

/-! ## A031928.P1559385721851789637

`∩[A209618(n+1), A262086(n+1)]`
-/

namespace A031928.P1559385721851789637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031928.P1559385721851789637

/-! ## A031928.P18351289710153475504

`∩[A015916(n+1), A290450(n+1)]`
-/

namespace A031928.P18351289710153475504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031928.P18351289710153475504

/-! ## A031928.P1067638491523882074

`∩[A262086(n+1), A290450(n+1)]`
-/

namespace A031928.P1067638491523882074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031928.P1067638491523882074

/-! ## A031928.P10082253008267868722

`∩[A015916(n+1), A382766(n+1)]`
-/

namespace A031928.P10082253008267868722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031928.P10082253008267868722

/-! ## A031928.P15236242631475543442

`∩[A262086(n+1), A382766(n+1)]`
-/

namespace A031928.P15236242631475543442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031928.P15236242631475543442

/-! ## A031928.P11609425737302804952

`∩[A015916(n+1), A083371(n+1)]`
-/

namespace A031928.P11609425737302804952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031928.P11609425737302804952

/-! ## A031928.P14113921785360911346

`∩[A083371(n+1), A262086(n+1)]`
-/

namespace A031928.P14113921785360911346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031928.P14113921785360911346

/-! ## A031928.P11672901129551717801

`A000040(A320703(n+1))`
-/

namespace A031928.P11672901129551717801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320703 (n + 1)).toNat

end

end A031928.P11672901129551717801

/-! ## A031928.P7069397086776167656

`A008578(A320703(n+1)+1)`
-/

namespace A031928.P7069397086776167656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320703 (n + 1) + 1).toNat

end

end A031928.P7069397086776167656

/-! ## A031928.P11614426747615844689

`A045319(A320703(n+1)-1)`
-/

namespace A031928.P11614426747615844689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320703 (n + 1) - 1).toNat

end

end A031928.P11614426747615844689

/-! ## A031928.P561076122956836002

`A000040(eq[10, A054541(n+1)])`
-/

namespace A031928.P561076122956836002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031928.P561076122956836002

/-! ## A031928.P2078107424154118008

`A065091(eq[10, A001223(n+1)])`
-/

namespace A031928.P2078107424154118008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031928.P2078107424154118008

/-! ## A031928.P1133134154594059591

`A000040(eq[11, A076368(n+1)])`
-/

namespace A031928.P1133134154594059591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031928.P1133134154594059591

/-! ## A031928.P6815024293956937917

`A001747(A320703(n+1)+1)/2`
-/

namespace A031928.P6815024293956937917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A320703 (n + 1) + 1).toNat : ℚ) / 2

end

end A031928.P6815024293956937917

/-!
# A031929: Upper prime of a difference of 10 between consecutive primes.

The programs for A031929, there is no canonical definition to state claims against.
-/

/-! ## A031929.P6327147624434897438

`A031928(n+1)+10`
-/

namespace A031929.P6327147624434897438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1) + 10

end

end A031929.P6327147624434897438

/-! ## A031929.P8426410049659034699

`p?[A290450(n+1)+10]`
-/

namespace A031929.P8426410049659034699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031929.P8426410049659034699

/-! ## A031929.P8599289458984133283

`p?[A083371(n+1)+10]`
-/

namespace A031929.P8599289458984133283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031929.P8599289458984133283

/-! ## A031929.P11028415126463065205

`A045319(A320703(n+1))`
-/

namespace A031929.P11028415126463065205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320703 (n + 1)).toNat

end

end A031929.P11028415126463065205

/-! ## A031929.P9893178066690932233

`A000040(A320703(n+1)+1)`
-/

namespace A031929.P9893178066690932233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320703 (n + 1) + 1).toNat

end

end A031929.P9893178066690932233

/-! ## A031929.P18279849953052179200

`A008578(A320703(n+1)+2)`
-/

namespace A031929.P18279849953052179200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320703 (n + 1) + 2).toNat

end

end A031929.P18279849953052179200

/-! ## A031929.P8499620439441718273

`A065091(eq[10, A054541(n+1)])`
-/

namespace A031929.P8499620439441718273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031929.P8499620439441718273

/-! ## A031929.P515044161364191108

`A065091(eq[11, A076368(n+1)])`
-/

namespace A031929.P515044161364191108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031929.P515044161364191108

/-! ## A031929.P17182322016040313884

`A001747(A320703(n+1)+2)/2`
-/

namespace A031929.P17182322016040313884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A320703 (n + 1) + 2).toNat : ℚ) / 2

end

end A031929.P17182322016040313884

/-! ## A031929.P11718634172054864085

`A000040(eq[10, A001223(n+2)]+3)`
-/

namespace A031929.P11718634172054864085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A031929.P11718634172054864085

/-! ## A031929.P15343729398391437138

`A000040(eq[10, A054541(n+1)])+10`
-/

namespace A031929.P15343729398391437138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 10

end

end A031929.P15343729398391437138

/-! ## A031929.P2731565456792688625

`A151800(A031928(n+1))`
-/

namespace A031929.P2731565456792688625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A031928 (n + 1)).toNat

end

end A031929.P2731565456792688625

/-! ## A031929.P12320542298771039979

`∩[A092146(n+1), A209619(n+1)]`
-/

namespace A031929.P12320542298771039979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031929.P12320542298771039979

/-! ## A031929.P12024993199500148115

`A219606(2*(A320703(n+1)+1))`
-/

namespace A031929.P12024993199500148115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * (A320703 (n + 1) + 1)).toNat

end

end A031929.P12024993199500148115

/-! ## A031929.P4854357992586498958

`A219606(A320703(n+1)+A320703(n+1)+2)`
-/

namespace A031929.P4854357992586498958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A320703 (n + 1) + (A320703 (n + 1) + 2)).toNat

end

end A031929.P4854357992586498958

/-! ## A031929.P2736349174149670717

`record[A014963(A290450(n+1)+10)]`
-/

namespace A031929.P2736349174149670717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A290450 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031929.P2736349174149670717

/-! ## A031929.P18105665852552985286

`A174350(A052905(n+1)+10)+10`
-/

namespace A031929.P18105665852552985286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A052905 (n + 1) + 10).toNat + 10

end

end A031929.P18105665852552985286

/-! ## A031929.P8323817775174766335

`∩[A175225(n+1), A209619(n+1)]`
-/

namespace A031929.P8323817775174766335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031929.P8323817775174766335

/-!
# A031930: Lower prime of a difference of 12 between consecutive primes.

The programs for A031930, there is no canonical definition to state claims against.
-/

/-! ## A031930.P11527119483972223075

`A031931(n+1)-12`
-/

namespace A031930.P11527119483972223075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1) - 12

end

end A031930.P11527119483972223075

/-! ## A031930.P7988576439883058351

`p?[A072573(n+1)-6]`
-/

namespace A031930.P7988576439883058351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072573 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031930.P7988576439883058351

/-! ## A031930.P6517665241890418686

`p?[A024675(n+4)-6]`
-/

namespace A031930.P6517665241890418686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 4) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031930.P6517665241890418686

/-! ## A031930.P14447064096362393253

`A000040(A320704(n+1))`
-/

namespace A031930.P14447064096362393253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320704 (n + 1)).toNat

end

end A031930.P14447064096362393253

/-! ## A031930.P9256266498505216326

`A045319(A320704(n+1)-1)`
-/

namespace A031930.P9256266498505216326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320704 (n + 1) - 1).toNat

end

end A031930.P9256266498505216326

/-! ## A031930.P7630775343180338885

`A065091(A320704(n+1)-1)`
-/

namespace A031930.P7630775343180338885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320704 (n + 1) - 1).toNat

end

end A031930.P7630775343180338885

/-! ## A031930.P6196443435129342020

`A000040(eq[12, A054541(n+1)])`
-/

namespace A031930.P6196443435129342020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031930.P6196443435129342020

/-! ## A031930.P14006652994740614758

`A065091(eq[12, A001223(n+1)])`
-/

namespace A031930.P14006652994740614758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031930.P14006652994740614758

/-! ## A031930.P949583530518479733

`A000040(eq[13, A076368(n+1)])`
-/

namespace A031930.P949583530518479733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031930.P949583530518479733

/-! ## A031930.P12010927936743106961

`record[A006530(A072573(n+1)-6)]`
-/

namespace A031930.P12010927936743106961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072573 (n + 1) - 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031930.P12010927936743106961

/-! ## A031930.P9697107582534886225

`∩[A015917(n+1), A124585(n+1)]`
-/

namespace A031930.P9697107582534886225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031930.P9697107582534886225

/-! ## A031930.P11614942964069886189

`∩[A046133(n+1), A124585(n+1)]`
-/

namespace A031930.P11614942964069886189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031930.P11614942964069886189

/-! ## A031930.P8329017609678363136

`∩[A056775(n+1), A124585(n+1)]`
-/

namespace A031930.P8329017609678363136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031930.P8329017609678363136

/-! ## A031930.P16233814586780903008

`A083370(eq[8, A134101(n+1)-A134099(n+1)]+1)`
-/

namespace A031930.P16233814586780903008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134101 (n + 1) - A134099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031930.P16233814586780903008

/-! ## A031930.P1168348568332907070

`A174350(A134869(n+5)+5)`
-/

namespace A031930.P1168348568332907070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A134869 (n + 5) + 5).toNat

end

end A031930.P1168348568332907070

/-! ## A031930.P13622442386677610600

`A023454(A031931(n+1))`
-/

namespace A031930.P13622442386677610600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A031931 (n + 1)).toNat

end

end A031930.P13622442386677610600

/-! ## A031930.P140120807704947364

`record[A014963(A072573(n+1)-6)]`
-/

namespace A031930.P140120807704947364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A072573 (n + 1) - 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031930.P140120807704947364

/-!
# A031931: Upper prime of a difference of 12 between consecutive primes.

The programs for A031931, there is no canonical definition to state claims against.
-/

/-! ## A031931.P18381565241977592668

`12+A031930(n+1)`
-/

namespace A031931.P18381565241977592668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 + A031930 (n + 1)

end

end A031931.P18381565241977592668

/-! ## A031931.P16517579187730330433

`p?[A072573(n+1)+6]`
-/

namespace A031931.P16517579187730330433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072573 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031931.P16517579187730330433

/-! ## A031931.P3860019028627121273

`∩[A092216(n+1), A303214(n+1)]`
-/

namespace A031931.P3860019028627121273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031931.P3860019028627121273

/-! ## A031931.P3371849215892906927

`p?[A072569(n+1)+6]`
-/

namespace A031931.P3371849215892906927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031931.P3371849215892906927

/-! ## A031931.P6057751701411231442

`A045319(A320704(n+1))`
-/

namespace A031931.P6057751701411231442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320704 (n + 1)).toNat

end

end A031931.P6057751701411231442

/-! ## A031931.P8925115781839681893

`A000040(A320704(n+1)+1)`
-/

namespace A031931.P8925115781839681893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320704 (n + 1) + 1).toNat

end

end A031931.P8925115781839681893

/-! ## A031931.P18344149707908387789

`record[A006530(A072573(n+1)+6)]`
-/

namespace A031931.P18344149707908387789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072573 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031931.P18344149707908387789

/-! ## A031931.P9530039894561188297

`A322863(A031930(n+1))`
-/

namespace A031931.P9530039894561188297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (A031930 (n + 1)).toNat

end

end A031931.P9530039894561188297

/-! ## A031931.P3062873785000747976

`p?[A073830(A024675(n+1))+2]`
-/

namespace A031931.P3062873785000747976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (A024675 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031931.P3062873785000747976

/-! ## A031931.P2081755949032954743

`record[A014963(A072573(n+1)+6)]`
-/

namespace A031931.P2081755949032954743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A072573 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031931.P2081755949032954743

/-! ## A031931.P11732494960859361864

`p?[A146308(A001043(n+2)/2)]`
-/

namespace A031931.P11732494960859361864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031931.P11732494960859361864

/-!
# A031932: Lower prime of a pair of consecutive primes having a difference of 14.

The programs for A031932, there is no canonical definition to state claims against.
-/

/-! ## A031932.P9787053128351862755

`A031933(n)-3-22/2`
-/

namespace A031932.P9787053128351862755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031933 n - 3 : ℚ) - (22 : ℚ) / 2

end

end A031932.P9787053128351862755

/-! ## A031932.P15519855093047848730

`A023456(n)+A031933(n)-n`
-/

namespace A031932.P15519855093047848730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023456 n + (A031933 n - (n : ℤ))

end

end A031932.P15519855093047848730

/-! ## A031932.P5070671729914231268

`∩[A124586(n+1), A153417(n+1)]`
-/

namespace A031932.P5070671729914231268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031932.P5070671729914231268

/-! ## A031932.P8051495772209859262

`A000040(A320705(n+1))`
-/

namespace A031932.P8051495772209859262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320705 (n + 1)).toNat

end

end A031932.P8051495772209859262

/-! ## A031932.P18025989306841239886

`A045319(A320705(n+1)-1)`
-/

namespace A031932.P18025989306841239886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320705 (n + 1) - 1).toNat

end

end A031932.P18025989306841239886

/-! ## A031932.P15911162700783733379

`A065091(A320705(n+1)-1)`
-/

namespace A031932.P15911162700783733379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320705 (n + 1) - 1).toNat

end

end A031932.P15911162700783733379

/-! ## A031932.P3850816894397447478

`A008578(A320705(n+1)+1)`
-/

namespace A031932.P3850816894397447478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320705 (n + 1) + 1).toNat

end

end A031932.P3850816894397447478

/-! ## A031932.P10199265262655426422

`A000040(eq[14, A054541(n+1)])`
-/

namespace A031932.P10199265262655426422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031932.P10199265262655426422

/-! ## A031932.P12767624388032132267

`A000203(A031933(n))-15`
-/

namespace A031932.P12767624388032132267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A031933 n).toNat - 15

end

end A031932.P12767624388032132267

/-! ## A031932.P3801125739252604638

`A000040(A000720(A031933(n)-1))`
-/

namespace A031932.P3801125739252604638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A031933 n - 1).toNat).toNat

end

end A031932.P3801125739252604638

/-! ## A031932.P7759111910953831977

`A174350(A000124(n+7)-(n+1))`
-/

namespace A031932.P7759111910953831977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A031932.P7759111910953831977

/-!
# A031933: Upper prime of a difference of 14 between consecutive primes.

The programs for A031933, there is no canonical definition to state claims against.
-/

/-! ## A031933.P15839589593308076694

`A031932(n+1)+14`
-/

namespace A031933.P15839589593308076694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1) + 14

end

end A031933.P15839589593308076694

/-! ## A031933.P2291083477362544509

`∩[A124586(n+1), A153417(n+1)]+14`
-/

namespace A031933.P2291083477362544509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 14

end

end A031933.P2291083477362544509

/-! ## A031933.P6967083056854894349

`A045319(A320705(n+1))`
-/

namespace A031933.P6967083056854894349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320705 (n + 1)).toNat

end

end A031933.P6967083056854894349

/-! ## A031933.P8254758512692230320

`A000040(A320705(n+1)+1)`
-/

namespace A031933.P8254758512692230320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320705 (n + 1) + 1).toNat

end

end A031933.P8254758512692230320

/-! ## A031933.P15332332661007395716

`A008578(A320705(n+1)+2)`
-/

namespace A031933.P15332332661007395716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320705 (n + 1) + 2).toNat

end

end A031933.P15332332661007395716

/-! ## A031933.P2993206752355651351

`A151800(A031932(n+1))`
-/

namespace A031933.P2993206752355651351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A031932 (n + 1)).toNat

end

end A031933.P2993206752355651351

/-!
# A031934: Lower prime of a pair of consecutive primes having a difference of 16.

The programs for A031934, there is no canonical definition to state claims against.
-/

/-! ## A031934.P18321041282262941428

`A031935(n)-16`
-/

namespace A031934.P18321041282262941428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031935 n - 16

end

end A031934.P18321041282262941428

/-! ## A031934.P11933446861673318374

`∩[A049488(n+1), A124587(n+1)]`
-/

namespace A031934.P11933446861673318374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031934.P11933446861673318374

/-! ## A031934.P8625245541993877623

`∩[A049488(n+1), A124586(n+1)]`
-/

namespace A031934.P8625245541993877623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031934.P8625245541993877623

/-! ## A031934.P2927065071353525232

`A055670(A320706(n+1))-1`
-/

namespace A031934.P2927065071353525232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320706 (n + 1)).toNat - 1

end

end A031934.P2927065071353525232

/-! ## A031934.P9648482708671888694

`A045319(A320706(n+1)-1)`
-/

namespace A031934.P9648482708671888694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320706 (n + 1) - 1).toNat

end

end A031934.P9648482708671888694

/-! ## A031934.P10739161396060389637

`A065091(A320706(n+1)-1)`
-/

namespace A031934.P10739161396060389637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320706 (n + 1) - 1).toNat

end

end A031934.P10739161396060389637

/-! ## A031934.P4379027690314858974

`A000040(A320706(n+1))`
-/

namespace A031934.P4379027690314858974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320706 (n + 1)).toNat

end

end A031934.P4379027690314858974

/-! ## A031934.P13018242104080133754

`A008578(A320706(n+1)+1)`
-/

namespace A031934.P13018242104080133754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320706 (n + 1) + 1).toNat

end

end A031934.P13018242104080133754

/-! ## A031934.P14052476366903583294

`A219606(2*A320706(n+1))`
-/

namespace A031934.P14052476366903583294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A320706 (n + 1)).toNat

end

end A031934.P14052476366903583294

/-! ## A031934.P16021686419597746173

`A219606(A320706(n+1)+A320706(n+1))`
-/

namespace A031934.P16021686419597746173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A320706 (n + 1) + A320706 (n + 1)).toNat

end

end A031934.P16021686419597746173

/-! ## A031934.P7795820628628854907

`A174350(A000124(n+7)+7)`
-/

namespace A031934.P7795820628628854907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (A000124 (n + 7) + 7).toNat

end

end A031934.P7795820628628854907

/-!
# A031935: Upper prime of a difference of 16 between consecutive primes.

The programs for A031935, there is no canonical definition to state claims against.
-/

/-! ## A031935.P5256280763718166388

`A031934(n+1)+16`
-/

namespace A031935.P5256280763718166388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031934 (n + 1) + 16

end

end A031935.P5256280763718166388

/-! ## A031935.P10641089740630362211

`A055670(A320706(n+1)+1)-1`
-/

namespace A031935.P10641089740630362211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320706 (n + 1) + 1).toNat - 1

end

end A031935.P10641089740630362211

/-! ## A031935.P5297142407838561898

`A045319(A320706(n+1))`
-/

namespace A031935.P5297142407838561898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320706 (n + 1)).toNat

end

end A031935.P5297142407838561898

/-! ## A031935.P13686827900795696101

`A000040(A320706(n+1)+1)`
-/

namespace A031935.P13686827900795696101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320706 (n + 1) + 1).toNat

end

end A031935.P13686827900795696101

/-! ## A031935.P1663559560996126497

`A008578(A320706(n+1)+2)`
-/

namespace A031935.P1663559560996126497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320706 (n + 1) + 2).toNat

end

end A031935.P1663559560996126497

/-! ## A031935.P13841258656315782022

`A151800(A031934(n+1))`
-/

namespace A031935.P13841258656315782022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A031934 (n + 1)).toNat

end

end A031935.P13841258656315782022

/-! ## A031935.P4815552551508446262

`A219606(2*(A320706(n+1)+1))`
-/

namespace A031935.P4815552551508446262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * (A320706 (n + 1) + 1)).toNat

end

end A031935.P4815552551508446262

/-! ## A031935.P12457600773247564204

`A219606(A320706(n+1)+A320706(n+1)+2)`
-/

namespace A031935.P12457600773247564204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A320706 (n + 1) + (A320706 (n + 1) + 2)).toNat

end

end A031935.P12457600773247564204

/-!
# A031936: Lower prime of a difference of 18 between consecutive primes.

The programs for A031936, there is no canonical definition to state claims against.
-/

/-! ## A031936.P15546283648070766541

`∩[A117838(n+1), A153418(n+1)]`
-/

namespace A031936.P15546283648070766541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031936.P15546283648070766541

/-! ## A031936.P10530916670316278447

`A000040(A320707(n+1))`
-/

namespace A031936.P10530916670316278447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320707 (n + 1)).toNat

end

end A031936.P10530916670316278447

/-! ## A031936.P7146006537605516195

`A008578(A320707(n+1)+1)`
-/

namespace A031936.P7146006537605516195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320707 (n + 1) + 1).toNat

end

end A031936.P7146006537605516195

/-! ## A031936.P13553490362247585501

`A045319(A320707(n+1)-1)`
-/

namespace A031936.P13553490362247585501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320707 (n + 1) - 1).toNat

end

end A031936.P13553490362247585501

/-! ## A031936.P6849537057751742349

`A065091(A320707(n+1)-1)`
-/

namespace A031936.P6849537057751742349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320707 (n + 1) - 1).toNat

end

end A031936.P6849537057751742349

/-! ## A031936.P14085629275157757459

`A000010(A031937(n))-17`
-/

namespace A031936.P14085629275157757459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A031937 n).toNat - 17

end

end A031936.P14085629275157757459

/-! ## A031936.P16683149602430336376

`A065769(A031937(n))`
-/

namespace A031936.P16683149602430336376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (A031937 n).toNat

end

end A031936.P16683149602430336376

/-!
# A031937: Upper prime of a difference of 18 between consecutive primes.

The programs for A031937, there is no canonical definition to state claims against.
-/

/-! ## A031937.P6049155019209241567

`A031936(n+1)+18`
-/

namespace A031937.P6049155019209241567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 1) + 18

end

end A031937.P6049155019209241567

/-! ## A031937.P2626143091746377139

`A045319(A320707(n+1))`
-/

namespace A031937.P2626143091746377139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320707 (n + 1)).toNat

end

end A031937.P2626143091746377139

/-! ## A031937.P9200053964963434221

`A000040(A320707(n+1)+1)`
-/

namespace A031937.P9200053964963434221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320707 (n + 1) + 1).toNat

end

end A031937.P9200053964963434221

/-! ## A031937.P6801905078000609865

`A008578(A320707(n+1)+2)`
-/

namespace A031937.P6801905078000609865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320707 (n + 1) + 2).toNat

end

end A031937.P6801905078000609865

/-! ## A031937.P8219237442338587483

`A006093(A320707(n+1)+1)+1`
-/

namespace A031937.P8219237442338587483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A320707 (n + 1) + 1).toNat + 1

end

end A031937.P8219237442338587483

/-! ## A031937.P853122984783137062

`A151800(A031936(n+1))`
-/

namespace A031937.P853122984783137062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A031936 (n + 1)).toNat

end

end A031937.P853122984783137062

/-!
# A031938: Lower prime of a difference of 20 between consecutive primes.

The programs for A031938, there is no canonical definition to state claims against.
-/

/-! ## A031938.P15302353051919310884

`A031939(n+1)-20`
-/

namespace A031938.P15302353051919310884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031939 (n + 1) - 20

end

end A031938.P15302353051919310884

/-! ## A031938.P9655665430714534536

`p?[A290450(n+1)+20]-20`
-/

namespace A031938.P9655665430714534536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 20

end

end A031938.P9655665430714534536

/-! ## A031938.P13104002185495710347

`∩[A153419(n+1), A290450(n+1)]`
-/

namespace A031938.P13104002185495710347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031938.P13104002185495710347

/-! ## A031938.P10500138850046373384

`∩[A153419(n+1), A164513(n+1)]`
-/

namespace A031938.P10500138850046373384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031938.P10500138850046373384

/-! ## A031938.P5843191407812946814

`A055670(A320708(n+1))-1`
-/

namespace A031938.P5843191407812946814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320708 (n + 1)).toNat - 1

end

end A031938.P5843191407812946814

/-! ## A031938.P6932106611724414363

`A000040(A320708(n+1))`
-/

namespace A031938.P6932106611724414363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320708 (n + 1)).toNat

end

end A031938.P6932106611724414363

/-! ## A031938.P9518088917070575423

`A008578(A320708(n+1)+1)`
-/

namespace A031938.P9518088917070575423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320708 (n + 1) + 1).toNat

end

end A031938.P9518088917070575423

/-! ## A031938.P8006603988088217714

`A045319(A320708(n+1)-1)`
-/

namespace A031938.P8006603988088217714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320708 (n + 1) - 1).toNat

end

end A031938.P8006603988088217714

/-! ## A031938.P1689210930045287430

`A065091(A320708(n+1)-1)`
-/

namespace A031938.P1689210930045287430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A320708 (n + 1) - 1).toNat

end

end A031938.P1689210930045287430

/-! ## A031938.P10650624978303976432

`A004139(A320708(n+1)-2)`
-/

namespace A031938.P10650624978303976432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A320708 (n + 1) - 2).toNat

end

end A031938.P10650624978303976432

/-! ## A031938.P6860222757864913483

`∑{d}[A320708(n+1), A007444(#)]`
-/

namespace A031938.P6860222757864913483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A031938.P6860222757864913483

/-! ## A031938.P2666886520458661060

`A006005(A320708(2*(n+1)-(n+1)))`
-/

namespace A031938.P2666886520458661060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A320708 (2 * (n + 1) - (n + 1))).toNat

end

end A031938.P2666886520458661060

/-! ## A031938.P2158806708504938975

`A073846(2*A320708(n+1))`
-/

namespace A031938.P2158806708504938975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A320708 (n + 1)).toNat

end

end A031938.P2158806708504938975

/-!
# A031939: Upper prime of a difference of 20 between consecutive primes.

The programs for A031939, there is no canonical definition to state claims against.
-/

/-! ## A031939.P18289213641631697734

`A031938(n+1)+20`
-/

namespace A031939.P18289213641631697734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031938 (n + 1) + 20

end

end A031939.P18289213641631697734

/-! ## A031939.P9576339302017852594

`p?[A290450(n+1)+20]`
-/

namespace A031939.P9576339302017852594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031939.P9576339302017852594

/-! ## A031939.P2473140352009526485

`p?[A164513(n+1)+20]`
-/

namespace A031939.P2473140352009526485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164513 (n + 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A031939.P2473140352009526485

/-! ## A031939.P2528237071441804960

`A055670(A320708(n+1)+1)-1`
-/

namespace A031939.P2528237071441804960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A320708 (n + 1) + 1).toNat - 1

end

end A031939.P2528237071441804960

/-! ## A031939.P9880091840618407709

`A045319(A320708(n+1))`
-/

namespace A031939.P9880091840618407709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A320708 (n + 1)).toNat

end

end A031939.P9880091840618407709

/-! ## A031939.P17031220815507598824

`A000040(A320708(n+1)+1)`
-/

namespace A031939.P17031220815507598824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A320708 (n + 1) + 1).toNat

end

end A031939.P17031220815507598824

/-! ## A031939.P12973496011159183562

`A006005(A320708(n+1)+1)`
-/

namespace A031939.P12973496011159183562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A320708 (n + 1) + 1).toNat

end

end A031939.P12973496011159183562

/-! ## A031939.P15066651621987958358

`A004139(A320708(n+1)-1)`
-/

namespace A031939.P15066651621987958358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A320708 (n + 1) - 1).toNat

end

end A031939.P15066651621987958358

/-! ## A031939.P3932310332811490121

`A008578(A320708(n+1)+2)`
-/

namespace A031939.P3932310332811490121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A320708 (n + 1) + 2).toNat

end

end A031939.P3932310332811490121

/-! ## A031939.P9196491902382618693

`∑{d}[A320708(n+1)+1, A007444(#)]`
-/

namespace A031939.P9196491902382618693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320708 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A031939.P9196491902382618693

/-! ## A031939.P17559187456000755584

`A151800(A031938(n+1))`
-/

namespace A031939.P17559187456000755584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A031938 (n + 1)).toNat

end

end A031939.P17559187456000755584

/-! ## A031939.P6184393074717502629

`A073846(2*(A320708(n+1)+1))`
-/

namespace A031939.P6184393074717502629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (A320708 (n + 1) + 1)).toNat

end

end A031939.P6184393074717502629

/-! ## A031939.P468895573902297690

`A073846(A320708(n+1)+A320708(n+1)+2)`
-/

namespace A031939.P468895573902297690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A320708 (n + 1) + (A320708 (n + 1) + 2)).toNat

end

end A031939.P468895573902297690

/-!
# A031940: Length of longest legal domino snake using full set of dominoes up to [n:n].

The programs for A031940, the canonical program `A031940.P959257535107549989` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031940 has offset 1).

The definition of A031940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031940.P959257535107549989

`(floor(n/2)+2)*(n-1)+3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A031940

/-- `(floor(n/2)+2)*(n-1)+3` -/
def P959257535107549989.Spec : Prop :=
  ∀ n, P959257535107549989.a n = A031940 (n + 1)

theorem P959257535107549989.correct : P959257535107549989.Spec := by
  intro n
  simp only [A031940, Nat.add_sub_cancel]

end A031940

/-! ## A031940.P6195447221902001254

`∑[∑[xor(1, 2-a(n-1))]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A031940.P6195447221902001254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  Int.xor 1 (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031940.P6195447221902001254

namespace A031940

/-- `∑[∑[xor(1, 2-a(n-1))]]` -/
def P6195447221902001254.Spec : Prop :=
  ∀ n, P6195447221902001254.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P6602521372109133710

`or((n+1)*∑[log2(gcd(2, n))], n%2)`
-/

namespace A031940.P6602521372109133710
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j))) ((n % 2 : ℕ) : ℤ)

end

end A031940.P6602521372109133710

namespace A031940

/-- `or((n+1)*∑[log2(gcd(2, n))], n%2)` -/
def P6602521372109133710.Spec : Prop :=
  ∀ n, P6602521372109133710.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P7998537231385884827

`abs(xor(ceil(n*or(1, n+2)/2), -1))`
-/

namespace A031940.P7998537231385884827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌈(n : ℚ) * ((Nat.lor 1 (n + 2) : ℚ) / 2)⌉ (-1)|

end

end A031940.P7998537231385884827

namespace A031940

/-- `abs(xor(ceil(n*or(1, n+2)/2), -1))` -/
def P7998537231385884827.Spec : Prop :=
  ∀ n, P7998537231385884827.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P4357352923347447525

`-xor(ceil(n*or(1, n+2)/2), -1)`
-/

namespace A031940.P4357352923347447525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌈(n : ℚ) * ((Nat.lor 1 (n + 2) : ℚ) / 2)⌉ (-1)

end

end A031940.P4357352923347447525

namespace A031940

/-- `-xor(ceil(n*or(1, n+2)/2), -1)` -/
def P4357352923347447525.Spec : Prop :=
  ∀ n, P4357352923347447525.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P3659482797043879379

`∑[∑[A099570(n)]+n]`
-/

namespace A031940.P3659482797043879379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031940.P3659482797043879379

namespace A031940

/-- `∑[∑[A099570(n)]+n]` -/
def P3659482797043879379.Spec : Prop :=
  ∀ n, P3659482797043879379.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P10851840841033792741

`abs(∑[A097140(n)+n]+1)`
-/

namespace A031940.P10851840841033792741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A031940.P10851840841033792741

namespace A031940

/-- `abs(∑[A097140(n)+n]+1)` -/
def P10851840841033792741.Spec : Prop :=
  ∀ n, P10851840841033792741.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P3229267450237206931

`or(n%2, ∑[A123684(n+1)])`
-/

namespace A031940.P3229267450237206931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031940.P3229267450237206931

namespace A031940

/-- `or(n%2, ∑[A123684(n+1)])` -/
def P3229267450237206931.Spec : Prop :=
  ∀ n, P3229267450237206931.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P13019351344217631512

`or(char[Δ[n²]], A093005(n+1))`
-/

namespace A031940.P13019351344217631512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A093005 (n + 1))

end

end A031940.P13019351344217631512

namespace A031940

/-- `or(char[Δ[n²]], A093005(n+1))` -/
def P13019351344217631512.Spec : Prop :=
  ∀ n, P13019351344217631512.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P5894540062200639564

`abs(A074148(n+1)-gcd(n, ∑[n]))`
-/

namespace A031940.P5894540062200639564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074148 (n + 1) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)|

end

end A031940.P5894540062200639564

namespace A031940

/-- `abs(A074148(n+1)-gcd(n, ∑[n]))` -/
def P5894540062200639564.Spec : Prop :=
  ∀ n, P5894540062200639564.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P11796426502908016212

`∑[A109613(n)+n-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A031940.P11796426502908016212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A109613 n + (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031940.P11796426502908016212

namespace A031940

/-- `∑[A109613(n)+n-a(n-1)]` -/
def P11796426502908016212.Spec : Prop :=
  ∀ n, P11796426502908016212.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P15834793211891637901

`∑[A014682(A014681(n))+1]`
-/

namespace A031940.P15834793211891637901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014681 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031940.P15834793211891637901

namespace A031940

/-- `∑[A014682(A014681(n))+1]` -/
def P15834793211891637901.Spec : Prop :=
  ∀ n, P15834793211891637901.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P4014035771688177900

`abs(xor(A057077(n), A266287(n)))`
-/

namespace A031940.P4014035771688177900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A057077 n) (A266287 n)|

end

end A031940.P4014035771688177900

namespace A031940

/-- `abs(xor(A057077(n), A266287(n)))` -/
def P4014035771688177900.Spec : Prop :=
  ∀ n, P4014035771688177900.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P11903487173947599030

`∑[A097140(A028310(n))+n]`
-/

namespace A031940.P11903487173947599030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031940.P11903487173947599030

namespace A031940

/-- `∑[A097140(A028310(n))+n]` -/
def P11903487173947599030.Spec : Prop :=
  ∀ n, P11903487173947599030.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P7350550587421442915

`xor(A000035(n), A093005(n+1))`
-/

namespace A031940.P7350550587421442915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A093005 (n + 1))

end

end A031940.P7350550587421442915

namespace A031940

/-- `xor(A000035(n), A093005(n+1))` -/
def P7350550587421442915.Spec : Prop :=
  ∀ n, P7350550587421442915.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P8453990166459331552

`abs(A047838(n+2)-A029578(n))`
-/

namespace A031940.P8453990166459331552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047838 (n + 2) - A029578 n|

end

end A031940.P8453990166459331552

namespace A031940

/-- `abs(A047838(n+2)-A029578(n))` -/
def P8453990166459331552.Spec : Prop :=
  ∀ n, P8453990166459331552.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P15761370756416928858

`∑[A141310(n)+A140106(n+1)]`
-/

namespace A031940.P15761370756416928858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n + A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031940.P15761370756416928858

namespace A031940

/-- `∑[A141310(n)+A140106(n+1)]` -/
def P15761370756416928858.Spec : Prop :=
  ∀ n, P15761370756416928858.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P13513091860169831086

`∑[A225126(n+1)+A165326(n)]`
-/

namespace A031940.P13513091860169831086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225126 (n + 1) + A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031940.P13513091860169831086

namespace A031940

/-- `∑[A225126(n+1)+A165326(n)]` -/
def P13513091860169831086.Spec : Prop :=
  ∀ n, P13513091860169831086.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P10453015593310984371

`xor(Δ[A008619(n)], A093005(n+1))`
-/

namespace A031940.P10453015593310984371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A093005 (n + 1))

end

end A031940.P10453015593310984371

namespace A031940

/-- `xor(Δ[A008619(n)], A093005(n+1))` -/
def P10453015593310984371.Spec : Prop :=
  ∀ n, P10453015593310984371.a n = A031940 (n + 1)

end A031940

/-! ## A031940.P4582895951520537894

`A204556(n+2)/(n+2)`
-/

namespace A031940.P4582895951520537894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204556 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A031940.P4582895951520537894

namespace A031940

/-- `A204556(n+2)/(n+2)` -/
def P4582895951520537894.Spec : Prop :=
  ∀ n, P4582895951520537894.a n = (A031940 (n + 1) : ℚ)

end A031940

/-!
# A031941: Numbers without consecutive equal base 3 digits.

The programs for A031941, there is no canonical definition to state claims against.
-/

/-! ## A031941.P9309384705330388650

`A043089(n+1)`
-/

namespace A031941.P9309384705330388650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 (n + 1)

end

end A031941.P9309384705330388650

/-! ## A031941.P17932898174902353907

`∑[abs(Δ[A043089(n)])]`
-/

namespace A031941.P17932898174902353907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031941.P17932898174902353907

/-! ## A031941.P15319199977204666099

`record[A043089(abs(1-n))]`
-/

namespace A031941.P15319199977204666099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031941.P15319199977204666099

/-! ## A031941.P15648953307677282792

`∑[A000027(Δ[A043089(n)])]`
-/

namespace A031941.P15648953307677282792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031941.P15648953307677282792

/-! ## A031941.P5837095136947447617

`eq[1, A043277(n+1)]+1`
-/

namespace A031941.P5837095136947447617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031941.P5837095136947447617

/-! ## A031941.P7515271676507205056

`filter[A043089(n), A060584(#)]`
-/

namespace A031941.P7515271676507205056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A031941.P7515271676507205056

/-! ## A031941.P775329562438497187

`filter[A043089(n), A168182(#)]`
-/

namespace A031941.P775329562438497187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A031941.P775329562438497187

/-! ## A031941.P8673776597889527201

`eq[A043555(n), A080342(n+1)]`
-/

namespace A031941.P8673776597889527201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031941.P8673776597889527201

/-! ## A031941.P263157485376848885

`eq[A037818(n+1), A037826(n+1)]+1`
-/

namespace A031941.P263157485376848885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031941.P263157485376848885

/-! ## A031941.P17252049308933470455

`eq[A043555(n+1), A081604(n+1)]+1`
-/

namespace A031941.P17252049308933470455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031941.P17252049308933470455

/-! ## A031941.P8665572832788194049

`eq[n, A028310(n)*A043277(A028310(n))]`
-/

namespace A031941.P8665572832788194049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A043277 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031941.P8665572832788194049

/-! ## A031941.P18444570617130334097

`lt[A043277(n+1), A020639(A063228(n+1))]+1`
-/

namespace A031941.P18444570617130334097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A063228 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A031941.P18444570617130334097

/-!
# A031942: Numbers with no consecutive equal base 4 digits.

The programs for A031942, there is no canonical definition to state claims against.
-/

/-! ## A031942.P8288147217697692362

`A043090(n+1)`
-/

namespace A031942.P8288147217697692362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 (n + 1)

end

end A031942.P8288147217697692362

/-! ## A031942.P535693572588291052

`∑[abs(Δ[A043090(n)])]`
-/

namespace A031942.P535693572588291052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031942.P535693572588291052

/-! ## A031942.P7556443831385870788

`record[A043090(abs(1-n))]`
-/

namespace A031942.P7556443831385870788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031942.P7556443831385870788

/-! ## A031942.P7858596762902644637

`∑[A000027(Δ[A043090(n)])]`
-/

namespace A031942.P7858596762902644637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031942.P7858596762902644637

/-! ## A031942.P14779352041926078075

`A000027(A043090(abs(xor(n, -1))))`
-/

namespace A031942.P14779352041926078075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A043090 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A031942.P14779352041926078075

/-! ## A031942.P10995022727617229151

`A000027(A043090(-xor(n, -1)))`
-/

namespace A031942.P10995022727617229151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A043090 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A031942.P10995022727617229151

/-! ## A031942.P10462799748104014406

`eq[1, A043278(n+1)]+1`
-/

namespace A031942.P10462799748104014406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031942.P10462799748104014406

/-! ## A031942.P7531715576293873043

`eq[A037819(n+1), A037827(n+1)]+1`
-/

namespace A031942.P7531715576293873043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031942.P7531715576293873043

/-! ## A031942.P2111822005441430726

`eq[A043556(n+1), A110591(n+1)]+1`
-/

namespace A031942.P2111822005441430726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031942.P2111822005441430726

/-! ## A031942.P11698625656851634100

`eq[n, A028310(n)*A043278(A028310(n))]`
-/

namespace A031942.P11698625656851634100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A043278 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031942.P11698625656851634100

/-!
# A031943: Numbers with no consecutive equal base-5 digits.

The programs for A031943, there is no canonical definition to state claims against.
-/

/-! ## A031943.P2348686290893150592

`A043091(n+1)`
-/

namespace A031943.P2348686290893150592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 (n + 1)

end

end A031943.P2348686290893150592

/-! ## A031943.P17572169586836523596

`∑[abs(Δ[A043091(n)])]`
-/

namespace A031943.P17572169586836523596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A031943.P17572169586836523596

/-! ## A031943.P2256978926496765077

`record[A043091(abs(1-n))]`
-/

namespace A031943.P2256978926496765077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043091 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031943.P2256978926496765077

/-! ## A031943.P9707680921968401961

`eq[1, A043279(n+1)]+1`
-/

namespace A031943.P9707680921968401961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031943.P9707680921968401961

/-! ## A031943.P3307660683722007215

`record[A000027(n+1)/A043279(n+1)]`
-/

namespace A031943.P3307660683722007215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A043279 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031943.P3307660683722007215

/-! ## A031943.P5047495413475466211

`eq[A043557(n+1), A110592(n+1)]+1`
-/

namespace A031943.P5047495413475466211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031943.P5047495413475466211

/-! ## A031943.P15907392231888794527

`eq[n, A028310(n)*A043279(A028310(n))]`
-/

namespace A031943.P15907392231888794527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A043279 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031943.P15907392231888794527

/-! ## A031943.P9092020028937195744

`record[A008619(2*n)/A043279(n+1)]`
-/

namespace A031943.P9092020028937195744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A043279 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031943.P9092020028937195744

/-! ## A031943.P2490539117268094826

`record[A028242(2*n)/A043279(n+1)]`
-/

namespace A031943.P2490539117268094826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A043279 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031943.P2490539117268094826

/-! ## A031943.P15853040237526235527

`record[A029579(2*n)/A043279(n+1)]`
-/

namespace A031943.P15853040237526235527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029579 (2 * n) : ℚ) / (A043279 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031943.P15853040237526235527

/-! ## A031943.P1490819858318525201

`record[A065033(n)/A043279(A065033(n))]`
-/

namespace A031943.P1490819858318525201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A043279 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031943.P1490819858318525201

/-! ## A031943.P521338590178035534

`record[A008611(n)/A043279(A008620(n))]`
-/

namespace A031943.P521338590178035534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 n : ℚ) / (A043279 (A008620 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031943.P521338590178035534

/-! ## A031943.P15808768477751104619

`record[A126759(n)/A043279(A126759(n))]`
-/

namespace A031943.P15808768477751104619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126759 n : ℚ) / (A043279 (A126759 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031943.P15808768477751104619

/-! ## A031943.P11615016267071518778

`lt[n, A321802(A014263(n+1))]`
-/

namespace A031943.P11615016267071518778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031943.P11615016267071518778

/-! ## A031943.P17928634124171500471

`eq[A054977(n), A196368(A007091(n))]`
-/

namespace A031943.P17928634124171500471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031943.P17928634124171500471

/-! ## A031943.P10594487964554880919

`eq[A057427(n), A196368(A007091(n))]`
-/

namespace A031943.P10594487964554880919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031943.P10594487964554880919

/-! ## A031943.P18246131070755950890

`eq[A158388(n), A196368(A007091(n))]`
-/

namespace A031943.P18246131070755950890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031943.P18246131070755950890

/-!
# A031944: Numbers in which digits 0,1,2 all occur in base 3.

The programs for A031944, the canonical program `A031944.P3896050302965344887` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031944 has offset 1).

The definition of A031944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031944.P3896050302965344887

`comp[A154314(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A031944

/-- `comp[A154314(n+1)]` -/
def P3896050302965344887.Spec : Prop :=
  ∀ n, (P3896050302965344887.a n : ℤ) = A031944 (n + 1)

theorem P3896050302965344887.correct : P3896050302965344887.Spec := by
  intro n
  simp only [A031944, Nat.add_sub_cancel]

end A031944

/-! ## A031944.P16535477291193616630

`lt[2, A043530(n+1)]+1`
-/

namespace A031944.P16535477291193616630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A031944.P16535477291193616630

namespace A031944

/-- `lt[2, A043530(n+1)]+1` -/
def P16535477291193616630.Spec : Prop :=
  ∀ n, (P16535477291193616630.a n : ℤ) = A031944 (n + 1)

end A031944

/-! ## A031944.P1260323757507289481

`eq[A037897(n), A105220(n)]`
-/

namespace A031944.P1260323757507289481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031944.P1260323757507289481

namespace A031944

/-- `eq[A037897(n), A105220(n)]` -/
def P1260323757507289481.Spec : Prop :=
  ∀ n, (P1260323757507289481.a n : ℤ) = A031944 (n + 1)

end A031944

/-! ## A031944.P15717431824818083964

`A000027(eq[3, A043530(n+1)]+1)`
-/

namespace A031944.P15717431824818083964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A031944.P15717431824818083964

namespace A031944

/-- `A000027(eq[3, A043530(n+1)]+1)` -/
def P15717431824818083964.Spec : Prop :=
  ∀ n, P15717431824818083964.a n = A031944 (n + 1)

end A031944

/-! ## A031944.P13960175109313415154

`lt[2, A212193(n)]`
-/

namespace A031944.P13960175109313415154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031944.P13960175109313415154

namespace A031944

/-- `lt[2, A212193(n)]` -/
def P13960175109313415154.Spec : Prop :=
  ∀ n, (P13960175109313415154.a n : ℤ) = A031944 (n + 1)

end A031944

/-! ## A031944.P7258390316832293511

`A000027(eq[3, A212193(n)])`
-/

namespace A031944.P7258390316832293511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031944.P7258390316832293511

namespace A031944

/-- `A000027(eq[3, A212193(n)])` -/
def P7258390316832293511.Spec : Prop :=
  ∀ n, P7258390316832293511.a n = A031944 (n + 1)

end A031944

/-! ## A031944.P2367722642208661951

`eq[1, A043555(A319651(n))-2]`
-/

namespace A031944.P2367722642208661951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (A319651 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031944.P2367722642208661951

namespace A031944

/-- `eq[1, A043555(A319651(n))-2]` -/
def P2367722642208661951.Spec : Prop :=
  ∀ n, (P2367722642208661951.a n : ℤ) = A031944 (n + 1)

end A031944

/-! ## A031944.P15693906712896084210

`eq[A157532(n+1), A212193(n)]`
-/

namespace A031944.P15693906712896084210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031944.P15693906712896084210

namespace A031944

/-- `eq[A157532(n+1), A212193(n)]` -/
def P15693906712896084210.Spec : Prop :=
  ∀ n, (P15693906712896084210.a n : ℤ) = A031944 (n + 1)

end A031944

/-! ## A031944.P17105913559060353913

`eq[A094439(A133825(n)), A212193(n)]`
-/

namespace A031944.P17105913559060353913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094439 (A133825 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031944.P17105913559060353913

namespace A031944

/-- `eq[A094439(A133825(n)), A212193(n)]` -/
def P17105913559060353913.Spec : Prop :=
  ∀ n, (P17105913559060353913.a n : ℤ) = A031944 (n + 1)

end A031944

/-! ## A031944.P9935306715404106484

`eq[1, A043530(A233583(n+1))-2]`
-/

namespace A031944.P9935306715404106484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (A233583 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031944.P9935306715404106484

namespace A031944

/-- `eq[1, A043530(A233583(n+1))-2]` -/
def P9935306715404106484.Spec : Prop :=
  ∀ n, (P9935306715404106484.a n : ℤ) = A031944 (n + 1)

end A031944

/-!
# A031945: Numbers in which 0,1,2,3 all occur in base 4.

The programs for A031945, the canonical program `A031945.P973611059860410522` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031945 has offset 1).

The definition of A031945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031945.P973611059860410522

`lt[3, A043531(A028310(n))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031945

/-- `lt[3, A043531(A028310(n))]` -/
def P973611059860410522.Spec : Prop :=
  ∀ n, (P973611059860410522.a n : ℤ) = A031945 (n + 1)

theorem P973611059860410522.correct : P973611059860410522.Spec := by
  intro n
  simp only [A031945, Nat.add_sub_cancel]

end A031945

/-! ## A031945.P2742661689469740898

`A020725(eq[4, A043531(n+1)])`
-/

namespace A031945.P2742661689469740898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031945.P2742661689469740898

namespace A031945

/-- `A020725(eq[4, A043531(n+1)])` -/
def P2742661689469740898.Spec : Prop :=
  ∀ n, P2742661689469740898.a n = A031945 (n + 1)

end A031945

/-! ## A031945.P2302050475297870448

`A065475(eq[4, A043531(n+1)])`
-/

namespace A031945.P2302050475297870448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031945.P2302050475297870448

namespace A031945

/-- `A065475(eq[4, A043531(n+1)])` -/
def P2302050475297870448.Spec : Prop :=
  ∀ n, P2302050475297870448.a n = A031945 (n + 1)

end A031945

/-! ## A031945.P11374098368364279537

`A153152(eq[4, A043531(n+1)])`
-/

namespace A031945.P11374098368364279537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031945.P11374098368364279537

namespace A031945

/-- `A153152(eq[4, A043531(n+1)])` -/
def P11374098368364279537.Spec : Prop :=
  ∀ n, P11374098368364279537.a n = A031945 (n + 1)

end A031945

/-! ## A031945.P10913452937791042503

`eq[4, A043531(A000007(n)+n)]`
-/

namespace A031945.P10913452937791042503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031945.P10913452937791042503

namespace A031945

/-- `eq[4, A043531(A000007(n)+n)]` -/
def P10913452937791042503.Spec : Prop :=
  ∀ n, (P10913452937791042503.a n : ℤ) = A031945 (n + 1)

end A031945

/-! ## A031945.P14134862439398496176

`eq[2, A043556(A319720(n))-2]`
-/

namespace A031945.P14134862439398496176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A319720 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031945.P14134862439398496176

namespace A031945

/-- `eq[2, A043556(A319720(n))-2]` -/
def P14134862439398496176.Spec : Prop :=
  ∀ n, (P14134862439398496176.a n : ℤ) = A031945 (n + 1)

end A031945

/-! ## A031945.P17014283904901037284

`eq[2, A043531(A233583(n+1))-2]`
-/

namespace A031945.P17014283904901037284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A233583 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031945.P17014283904901037284

namespace A031945

/-- `eq[2, A043531(A233583(n+1))-2]` -/
def P17014283904901037284.Spec : Prop :=
  ∀ n, (P17014283904901037284.a n : ℤ) = A031945 (n + 1)

end A031945

/-!
# A031948: Numbers with exactly two distinct base-3 digits.

The programs for A031948, the canonical program `A031948.P11177612134455942008` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031948 has offset 1).

The definition of A031948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031948.P1681495412583731268

`eq[2, A043530(n+1)]+1`
-/

namespace A031948.P1681495412583731268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031948.P1681495412583731268

namespace A031948

/-- `eq[2, A043530(n+1)]+1` -/
def P1681495412583731268.Spec : Prop :=
  ∀ n, (P1681495412583731268.a n : ℤ) = A031948 (n + 1)

end A031948

/-! ## A031948.P10486399333082704300

`A344180(eq[2, A043530(A344180(n))])`
-/

namespace A031948.P10486399333082704300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031948.P10486399333082704300

namespace A031948

/-- `A344180(eq[2, A043530(A344180(n))])` -/
def P10486399333082704300.Spec : Prop :=
  ∀ n, P10486399333082704300.a n = A031948 (n + 1)

end A031948

/-! ## A031948.P10683899043621019586

`eq[2, A043555(A319651(n))]`
-/

namespace A031948.P10683899043621019586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (A319651 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031948.P10683899043621019586

namespace A031948

/-- `eq[2, A043555(A319651(n))]` -/
def P10683899043621019586.Spec : Prop :=
  ∀ n, (P10683899043621019586.a n : ℤ) = A031948 (n + 1)

end A031948

/-! ## A031948.P11177612134455942008

`eq[A290825(n)+A088917(n), A189820(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A031948

/-- `eq[A290825(n)+A088917(n), A189820(n+1)]` -/
def P11177612134455942008.Spec : Prop :=
  ∀ n, (P11177612134455942008.a n : ℤ) = A031948 (n + 1)

theorem P11177612134455942008.correct : P11177612134455942008.Spec := by
  intro n
  simp only [A031948, Nat.add_sub_cancel]

end A031948

/-! ## A031948.P3546710481621956529

`eq[2, A043530(A233583(n+1))]`
-/

namespace A031948.P3546710481621956529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031948.P3546710481621956529

namespace A031948

/-- `eq[2, A043530(A233583(n+1))]` -/
def P3546710481621956529.Spec : Prop :=
  ∀ n, (P3546710481621956529.a n : ℤ) = A031948 (n + 1)

end A031948

/-!
# A031949: Numbers with exactly two distinct base-4 digits.

The programs for A031949, the canonical program `A031949.P4733603039764660289` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031949 has offset 1).

The definition of A031949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031949.P4733603039764660289

`eq[2, A043531(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031949

/-- `eq[2, A043531(n+1)]+1` -/
def P4733603039764660289.Spec : Prop :=
  ∀ n, (P4733603039764660289.a n : ℤ) = A031949 (n + 1)

theorem P4733603039764660289.correct : P4733603039764660289.Spec := by
  intro n
  simp only [A031949, Nat.add_sub_cancel]

end A031949

/-! ## A031949.P15664615574419186108

`eq[2, A043531(A028310(n))]`
-/

namespace A031949.P15664615574419186108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031949.P15664615574419186108

namespace A031949

/-- `eq[2, A043531(A028310(n))]` -/
def P15664615574419186108.Spec : Prop :=
  ∀ n, (P15664615574419186108.a n : ℤ) = A031949 (n + 1)

end A031949

/-! ## A031949.P5170993922260252562

`A020725(eq[2, A043531(n+1)])`
-/

namespace A031949.P5170993922260252562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031949.P5170993922260252562

namespace A031949

/-- `A020725(eq[2, A043531(n+1)])` -/
def P5170993922260252562.Spec : Prop :=
  ∀ n, P5170993922260252562.a n = A031949 (n + 1)

end A031949

/-! ## A031949.P13567948469373192908

`A065475(eq[2, A043531(n+1)])`
-/

namespace A031949.P13567948469373192908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031949.P13567948469373192908

namespace A031949

/-- `A065475(eq[2, A043531(n+1)])` -/
def P13567948469373192908.Spec : Prop :=
  ∀ n, P13567948469373192908.a n = A031949 (n + 1)

end A031949

/-! ## A031949.P7544761867550596921

`eq[2, A043531(A000007(n)+n)]`
-/

namespace A031949.P7544761867550596921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031949.P7544761867550596921

namespace A031949

/-- `eq[2, A043531(A000007(n)+n)]` -/
def P7544761867550596921.Spec : Prop :=
  ∀ n, (P7544761867550596921.a n : ℤ) = A031949 (n + 1)

end A031949

/-! ## A031949.P5394422292564508224

`eq[2, A043531(A065033(2*n))]`
-/

namespace A031949.P5394422292564508224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031949.P5394422292564508224

namespace A031949

/-- `eq[2, A043531(A065033(2*n))]` -/
def P5394422292564508224.Spec : Prop :=
  ∀ n, (P5394422292564508224.a n : ℤ) = A031949 (n + 1)

end A031949

/-! ## A031949.P15465177827249515206

`eq[2, A043556(A319720(n))]`
-/

namespace A031949.P15465177827249515206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031949.P15465177827249515206

namespace A031949

/-- `eq[2, A043556(A319720(n))]` -/
def P15465177827249515206.Spec : Prop :=
  ∀ n, (P15465177827249515206.a n : ℤ) = A031949 (n + 1)

end A031949

/-! ## A031949.P4176132465336646216

`eq[2, A043531(A233583(n+1))]`
-/

namespace A031949.P4176132465336646216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031949.P4176132465336646216

namespace A031949

/-- `eq[2, A043531(A233583(n+1))]` -/
def P4176132465336646216.Spec : Prop :=
  ∀ n, (P4176132465336646216.a n : ℤ) = A031949 (n + 1)

end A031949

/-!
# A031950: Numbers with exactly two distinct base-5 digits.

The programs for A031950, the canonical program `A031950.P1843763499609612376` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031950 has offset 1).

The definition of A031950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031950.P1843763499609612376

`eq[2, A043532(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031950

/-- `eq[2, A043532(n+1)]+1` -/
def P1843763499609612376.Spec : Prop :=
  ∀ n, (P1843763499609612376.a n : ℤ) = A031950 (n + 1)

theorem P1843763499609612376.correct : P1843763499609612376.Spec := by
  intro n
  simp only [A031950, Nat.add_sub_cancel]

end A031950

/-! ## A031950.P18417109419310899052

`eq[2, A043532(ceil(abs(γ-n)))]`
-/

namespace A031950.P18417109419310899052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031950.P18417109419310899052

namespace A031950

/-- `eq[2, A043532(ceil(abs(γ-n)))]` -/
def P18417109419310899052.Spec : Prop :=
  ∀ n, (P18417109419310899052.a n : ℤ) = A031950 (n + 1)

end A031950

/-! ## A031950.P13645147773464327587

`eq[4, A043532(A028310(n))²]`
-/

namespace A031950.P13645147773464327587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031950.P13645147773464327587

namespace A031950

/-- `eq[4, A043532(A028310(n))²]` -/
def P13645147773464327587.Spec : Prop :=
  ∀ n, (P13645147773464327587.a n : ℤ) = A031950 (n + 1)

end A031950

/-! ## A031950.P10783953678008791360

`A326178(eq[2, A043532(n+1)])`
-/

namespace A031950.P10783953678008791360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031950.P10783953678008791360

namespace A031950

/-- `A326178(eq[2, A043532(n+1)])` -/
def P10783953678008791360.Spec : Prop :=
  ∀ n, P10783953678008791360.a n = A031950 (n + 1)

end A031950

/-! ## A031950.P16040670557662895690

`eq[1, 2/A043532(A065033(2*n))]`
-/

namespace A031950.P16040670557662895690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A043532 (A065033 (2 * n)).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A031950.P16040670557662895690

namespace A031950

/-- `eq[1, 2/A043532(A065033(2*n))]` -/
def P16040670557662895690.Spec : Prop :=
  ∀ n, (P16040670557662895690.a n : ℤ) = A031950 (n + 1)

end A031950

/-! ## A031950.P4903039840236473720

`eq[2, A297773(A193739(∑[n]))]`
-/

namespace A031950.P4903039840236473720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A193739 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031950.P4903039840236473720

namespace A031950

/-- `eq[2, A297773(A193739(∑[n]))]` -/
def P4903039840236473720.Spec : Prop :=
  ∀ n, (P4903039840236473720.a n : ℤ) = A031950 (n + 1)

end A031950

/-! ## A031950.P6428534252348287201

`eq[2, A297773(A007318(∑[n]+1))]`
-/

namespace A031950.P6428534252348287201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A007318 (∑ j ∈ Finset.range (n + 1), f3 j + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031950.P6428534252348287201

namespace A031950

/-- `eq[2, A297773(A007318(∑[n]+1))]` -/
def P6428534252348287201.Spec : Prop :=
  ∀ n, (P6428534252348287201.a n : ℤ) = A031950 (n + 1)

end A031950

/-! ## A031950.P9449307303354012686

`eq[2, A076489(A061830(n))]`
-/

namespace A031950.P9449307303354012686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A061830 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031950.P9449307303354012686

namespace A031950

/-- `eq[2, A076489(A061830(n))]` -/
def P9449307303354012686.Spec : Prop :=
  ∀ n, (P9449307303354012686.a n : ℤ) = A031950 (n + 1)

end A031950

/-! ## A031950.P3265924055638538514

`eq[2, A297773(A137735(n²))]`
-/

namespace A031950.P3265924055638538514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031950.P3265924055638538514

namespace A031950

/-- `eq[2, A297773(A137735(n²))]` -/
def P3265924055638538514.Spec : Prop :=
  ∀ n, (P3265924055638538514.a n : ℤ) = A031950 (n + 1)

end A031950

/-!
# A031951: Numbers with exactly two distinct base-6 digits.

The programs for A031951, the canonical program `A031951.P18397786291878257981` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031951 has offset 1).

The definition of A031951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031951.P18397786291878257981

`eq[2, A043533(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031951

/-- `eq[2, A043533(n+1)]+1` -/
def P18397786291878257981.Spec : Prop :=
  ∀ n, (P18397786291878257981.a n : ℤ) = A031951 (n + 1)

theorem P18397786291878257981.correct : P18397786291878257981.Spec := by
  intro n
  simp only [A031951, Nat.add_sub_cancel]

end A031951

/-! ## A031951.P18067736841870457233

`eq[2, A043533(A028310(n))]`
-/

namespace A031951.P18067736841870457233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031951.P18067736841870457233

namespace A031951

/-- `eq[2, A043533(A028310(n))]` -/
def P18067736841870457233.Spec : Prop :=
  ∀ n, (P18067736841870457233.a n : ℤ) = A031951 (n + 1)

end A031951

/-! ## A031951.P1240343898050902513

`A020725(eq[2, A043533(n+1)])`
-/

namespace A031951.P1240343898050902513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031951.P1240343898050902513

namespace A031951

/-- `A020725(eq[2, A043533(n+1)])` -/
def P1240343898050902513.Spec : Prop :=
  ∀ n, P1240343898050902513.a n = A031951 (n + 1)

end A031951

/-! ## A031951.P15027549150595102641

`A065475(eq[2, A043533(n+1)])`
-/

namespace A031951.P15027549150595102641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031951.P15027549150595102641

namespace A031951

/-- `A065475(eq[2, A043533(n+1)])` -/
def P15027549150595102641.Spec : Prop :=
  ∀ n, P15027549150595102641.a n = A031951 (n + 1)

end A031951

/-! ## A031951.P5855404045341669599

`A326178(eq[2, A043533(n+1)])`
-/

namespace A031951.P5855404045341669599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031951.P5855404045341669599

namespace A031951

/-- `A326178(eq[2, A043533(n+1)])` -/
def P5855404045341669599.Spec : Prop :=
  ∀ n, P5855404045341669599.a n = A031951 (n + 1)

end A031951

/-! ## A031951.P10766709023790168819

`eq[2, A043558(A319723(n))]`
-/

namespace A031951.P10766709023790168819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A319723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031951.P10766709023790168819

namespace A031951

/-- `eq[2, A043558(A319723(n))]` -/
def P10766709023790168819.Spec : Prop :=
  ∀ n, (P10766709023790168819.a n : ℤ) = A031951 (n + 1)

end A031951

/-! ## A031951.P13116059791898165701

`eq[2, A043533(A233583(n+1))]`
-/

namespace A031951.P13116059791898165701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031951.P13116059791898165701

namespace A031951

/-- `eq[2, A043533(A233583(n+1))]` -/
def P13116059791898165701.Spec : Prop :=
  ∀ n, (P13116059791898165701.a n : ℤ) = A031951 (n + 1)

end A031951

/-!
# A031952: Numbers with exactly two distinct base-7 digits.

The programs for A031952, the canonical program `A031952.P17953824620127498517` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031952 has offset 1).

The definition of A031952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 674 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031952.P17953824620127498517

`eq[2, A043534(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031952

/-- `eq[2, A043534(n+1)]+1` -/
def P17953824620127498517.Spec : Prop :=
  ∀ n, (P17953824620127498517.a n : ℤ) = A031952 (n + 1)

theorem P17953824620127498517.correct : P17953824620127498517.Spec := by
  intro n
  simp only [A031952, Nat.add_sub_cancel]

end A031952

/-! ## A031952.P16224998921322543948

`eq[2, A043534(A028310(n))]`
-/

namespace A031952.P16224998921322543948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031952.P16224998921322543948

namespace A031952

/-- `eq[2, A043534(A028310(n))]` -/
def P16224998921322543948.Spec : Prop :=
  ∀ n, (P16224998921322543948.a n : ℤ) = A031952 (n + 1)

end A031952

/-! ## A031952.P1783013079338248655

`A020725(eq[2, A043534(n+1)])`
-/

namespace A031952.P1783013079338248655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031952.P1783013079338248655

namespace A031952

/-- `A020725(eq[2, A043534(n+1)])` -/
def P1783013079338248655.Spec : Prop :=
  ∀ n, P1783013079338248655.a n = A031952 (n + 1)

end A031952

/-! ## A031952.P7557291245177492798

`A114637(eq[2, A043534(n+1)])`
-/

namespace A031952.P7557291245177492798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031952.P7557291245177492798

namespace A031952

/-- `A114637(eq[2, A043534(n+1)])` -/
def P7557291245177492798.Spec : Prop :=
  ∀ n, P7557291245177492798.a n = A031952 (n + 1)

end A031952

/-! ## A031952.P10160345610765635570

`A326178(eq[2, A043534(n+1)])`
-/

namespace A031952.P10160345610765635570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031952.P10160345610765635570

namespace A031952

/-- `A326178(eq[2, A043534(n+1)])` -/
def P10160345610765635570.Spec : Prop :=
  ∀ n, P10160345610765635570.a n = A031952 (n + 1)

end A031952

/-! ## A031952.P386989542169891404

`eq[2, A043534(A000007(n)+n)]`
-/

namespace A031952.P386989542169891404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031952.P386989542169891404

namespace A031952

/-- `eq[2, A043534(A000007(n)+n)]` -/
def P386989542169891404.Spec : Prop :=
  ∀ n, (P386989542169891404.a n : ℤ) = A031952 (n + 1)

end A031952

/-! ## A031952.P16088852267694911294

`eq[2, A043534(A000038(n)+n)]`
-/

namespace A031952.P16088852267694911294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031952.P16088852267694911294

namespace A031952

/-- `eq[2, A043534(A000038(n)+n)]` -/
def P16088852267694911294.Spec : Prop :=
  ∀ n, (P16088852267694911294.a n : ℤ) = A031952 (n + 1)

end A031952

/-! ## A031952.P550455261189524172

`eq[2, A043534(A233583(n+1))]`
-/

namespace A031952.P550455261189524172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031952.P550455261189524172

namespace A031952

/-- `eq[2, A043534(A233583(n+1))]` -/
def P550455261189524172.Spec : Prop :=
  ∀ n, (P550455261189524172.a n : ℤ) = A031952 (n + 1)

end A031952

/-!
# A031953: Numbers with exactly two distinct base-8 digits.

The programs for A031953, the canonical program `A031953.P3529637832073859058` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031953 has offset 1).

The definition of A031953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031953.P3529637832073859058

`eq[2, A043535(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031953

/-- `eq[2, A043535(n+1)]+1` -/
def P3529637832073859058.Spec : Prop :=
  ∀ n, (P3529637832073859058.a n : ℤ) = A031953 (n + 1)

theorem P3529637832073859058.correct : P3529637832073859058.Spec := by
  intro n
  simp only [A031953, Nat.add_sub_cancel]

end A031953

/-! ## A031953.P2077741432126235463

`eq[2, A043535(A028310(n))]`
-/

namespace A031953.P2077741432126235463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031953.P2077741432126235463

namespace A031953

/-- `eq[2, A043535(A028310(n))]` -/
def P2077741432126235463.Spec : Prop :=
  ∀ n, (P2077741432126235463.a n : ℤ) = A031953 (n + 1)

end A031953

/-! ## A031953.P530830049825748812

`A065475(eq[2, A043535(n+1)])`
-/

namespace A031953.P530830049825748812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031953.P530830049825748812

namespace A031953

/-- `A065475(eq[2, A043535(n+1)])` -/
def P530830049825748812.Spec : Prop :=
  ∀ n, P530830049825748812.a n = A031953 (n + 1)

end A031953

/-! ## A031953.P3881671940061331319

`eq[2, A043535(A000007(n)+n)]`
-/

namespace A031953.P3881671940061331319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031953.P3881671940061331319

namespace A031953

/-- `eq[2, A043535(A000007(n)+n)]` -/
def P3881671940061331319.Spec : Prop :=
  ∀ n, (P3881671940061331319.a n : ℤ) = A031953 (n + 1)

end A031953

/-! ## A031953.P15654028533370448538

`eq[2, A043535(xor(n, A000007(n)))]`
-/

namespace A031953.P15654028533370448538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031953.P15654028533370448538

namespace A031953

/-- `eq[2, A043535(xor(n, A000007(n)))]` -/
def P15654028533370448538.Spec : Prop :=
  ∀ n, (P15654028533370448538.a n : ℤ) = A031953 (n + 1)

end A031953

/-! ## A031953.P16818435545127260872

`eq[2, A043535(A123108(2*n))]`
-/

namespace A031953.P16818435545127260872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031953.P16818435545127260872

namespace A031953

/-- `eq[2, A043535(A123108(2*n))]` -/
def P16818435545127260872.Spec : Prop :=
  ∀ n, (P16818435545127260872.a n : ℤ) = A031953 (n + 1)

end A031953

/-! ## A031953.P16686348512556527976

`lt[1, A118759(A165090(n))]`
-/

namespace A031953.P16686348512556527976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A165090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031953.P16686348512556527976

namespace A031953

/-- `lt[1, A118759(A165090(n))]` -/
def P16686348512556527976.Spec : Prop :=
  ∀ n, (P16686348512556527976.a n : ℤ) = A031953 (n + 1)

end A031953

/-! ## A031953.P7311692868395922491

`A293754(eq[2, A043535(n+1)])`
-/

namespace A031953.P7311692868395922491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031953.P7311692868395922491

namespace A031953

/-- `A293754(eq[2, A043535(n+1)])` -/
def P7311692868395922491.Spec : Prop :=
  ∀ n, P7311692868395922491.a n = A031953 (n + 1)

end A031953

/-!
# A031954: Numbers with exactly two distinct base-9 digits.

The programs for A031954, the canonical program `A031954.P3473660574516240693` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031954 has offset 1).

The definition of A031954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031954.P3473660574516240693

`eq[2, A043536(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031954

/-- `eq[2, A043536(n+1)]+1` -/
def P3473660574516240693.Spec : Prop :=
  ∀ n, (P3473660574516240693.a n : ℤ) = A031954 (n + 1)

theorem P3473660574516240693.correct : P3473660574516240693.Spec := by
  intro n
  simp only [A031954, Nat.add_sub_cancel]

end A031954

/-! ## A031954.P1855162321576937879

`eq[2, A043536(A028310(n))]`
-/

namespace A031954.P1855162321576937879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031954.P1855162321576937879

namespace A031954

/-- `eq[2, A043536(A028310(n))]` -/
def P1855162321576937879.Spec : Prop :=
  ∀ n, (P1855162321576937879.a n : ℤ) = A031954 (n + 1)

end A031954

/-! ## A031954.P11903451989696417689

`A020725(eq[2, A043536(n+1)])`
-/

namespace A031954.P11903451989696417689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031954.P11903451989696417689

namespace A031954

/-- `A020725(eq[2, A043536(n+1)])` -/
def P11903451989696417689.Spec : Prop :=
  ∀ n, P11903451989696417689.a n = A031954 (n + 1)

end A031954

/-! ## A031954.P13388384735324827421

`A065475(eq[2, A043536(n+1)])`
-/

namespace A031954.P13388384735324827421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031954.P13388384735324827421

namespace A031954

/-- `A065475(eq[2, A043536(n+1)])` -/
def P13388384735324827421.Spec : Prop :=
  ∀ n, P13388384735324827421.a n = A031954 (n + 1)

end A031954

/-! ## A031954.P6456376270033988216

`eq[2, A043536(A000007(n)+n)]`
-/

namespace A031954.P6456376270033988216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031954.P6456376270033988216

namespace A031954

/-- `eq[2, A043536(A000007(n)+n)]` -/
def P6456376270033988216.Spec : Prop :=
  ∀ n, (P6456376270033988216.a n : ℤ) = A031954 (n + 1)

end A031954

/-! ## A031954.P4846431188744224661

`eq[2, A043536(A123108(2*n))]`
-/

namespace A031954.P4846431188744224661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031954.P4846431188744224661

namespace A031954

/-- `eq[2, A043536(A123108(2*n))]` -/
def P4846431188744224661.Spec : Prop :=
  ∀ n, (P4846431188744224661.a n : ℤ) = A031954 (n + 1)

end A031954

/-! ## A031954.P144953417606301074

`lt[1, A118759(A165110(n))]`
-/

namespace A031954.P144953417606301074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A165110 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031954.P144953417606301074

namespace A031954

/-- `lt[1, A118759(A165110(n))]` -/
def P144953417606301074.Spec : Prop :=
  ∀ n, (P144953417606301074.a n : ℤ) = A031954 (n + 1)

end A031954

/-! ## A031954.P12055083339207029607

`A088476(n+1)-A267142(n)`
-/

namespace A031954.P12055083339207029607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088476 (n + 1) - A267142 n

end

end A031954.P12055083339207029607

namespace A031954

/-- `A088476(n+1)-A267142(n)` -/
def P12055083339207029607.Spec : Prop :=
  ∀ n, P12055083339207029607.a n = A031954 (n + 1)

end A031954

/-! ## A031954.P798835896812841687

`lt[n, A265556(n)]`
-/

namespace A031954.P798835896812841687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031954.P798835896812841687

namespace A031954

/-- `lt[n, A265556(n)]` -/
def P798835896812841687.Spec : Prop :=
  ∀ n, (P798835896812841687.a n : ℤ) = A031954 (n + 1)

end A031954

/-! ## A031954.P14984599697427845305

`lt[A265541(A265523(n)), n]`
-/

namespace A031954.P14984599697427845305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A265523 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031954.P14984599697427845305

namespace A031954

/-- `lt[A265541(A265523(n)), n]` -/
def P14984599697427845305.Spec : Prop :=
  ∀ n, (P14984599697427845305.a n : ℤ) = A031954 (n + 1)

end A031954

/-!
# A031955: Numbers with exactly two distinct base-10 digits.

The programs for A031955, the canonical program `A031955.P7540932004288753279` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031955 has offset 1).

The definition of A031955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 892 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031955.P7540932004288753279

`eq[2, A043537(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031955

/-- `eq[2, A043537(n+1)]+1` -/
def P7540932004288753279.Spec : Prop :=
  ∀ n, (P7540932004288753279.a n : ℤ) = A031955 (n + 1)

theorem P7540932004288753279.correct : P7540932004288753279.Spec := by
  intro n
  simp only [A031955, Nat.add_sub_cancel]

end A031955

/-! ## A031955.P13197652123055248592

`eq[2, A043537(A028310(n))]`
-/

namespace A031955.P13197652123055248592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031955.P13197652123055248592

namespace A031955

/-- `eq[2, A043537(A028310(n))]` -/
def P13197652123055248592.Spec : Prop :=
  ∀ n, (P13197652123055248592.a n : ℤ) = A031955 (n + 1)

end A031955

/-! ## A031955.P11446968573588827080

`eq[2, A000120(A086066(n))]`
-/

namespace A031955.P11446968573588827080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031955.P11446968573588827080

namespace A031955

/-- `eq[2, A000120(A086066(n))]` -/
def P11446968573588827080.Spec : Prop :=
  ∀ n, (P11446968573588827080.a n : ℤ) = A031955 (n + 1)

end A031955

/-! ## A031955.P8574943982013036552

`eq[2, A055642(A137564(n))]`
-/

namespace A031955.P8574943982013036552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031955.P8574943982013036552

namespace A031955

/-- `eq[2, A055642(A137564(n))]` -/
def P8574943982013036552.Spec : Prop :=
  ∀ n, (P8574943982013036552.a n : ℤ) = A031955 (n + 1)

end A031955

/-! ## A031955.P12571048056891084189

`eq[2, A055642(A227362(n))]`
-/

namespace A031955.P12571048056891084189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031955.P12571048056891084189

namespace A031955

/-- `eq[2, A055642(A227362(n))]` -/
def P12571048056891084189.Spec : Prop :=
  ∀ n, (P12571048056891084189.a n : ℤ) = A031955 (n + 1)

end A031955

/-! ## A031955.P12430747395318583566

`eq[A107846(n)+2, A055642(n)]`
-/

namespace A031955.P12430747395318583566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031955.P12430747395318583566

namespace A031955

/-- `eq[A107846(n)+2, A055642(n)]` -/
def P12430747395318583566.Spec : Prop :=
  ∀ n, (P12430747395318583566.a n : ℤ) = A031955 (n + 1)

end A031955

/-! ## A031955.P15331600596174063795

`eq[2, A002260(A332550(n))]`
-/

namespace A031955.P15331600596174063795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031955.P15331600596174063795

namespace A031955

/-- `eq[2, A002260(A332550(n))]` -/
def P15331600596174063795.Spec : Prop :=
  ∀ n, (P15331600596174063795.a n : ℤ) = A031955 (n + 1)

end A031955

/-! ## A031955.P3418963886872090447

`eq[2, A078008(A047726(n+1))]+1`
-/

namespace A031955.P3418963886872090447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A047726 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031955.P3418963886872090447

namespace A031955

/-- `eq[2, A078008(A047726(n+1))]+1` -/
def P3418963886872090447.Spec : Prop :=
  ∀ n, (P3418963886872090447.a n : ℤ) = A031955 (n + 1)

end A031955

/-! ## A031955.P4827232723732861911

`eq[A332550(7*A332550(n)), A332550(n)]`
-/

namespace A031955.P4827232723732861911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (7 * A332550 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031955.P4827232723732861911

namespace A031955

/-- `eq[A332550(7*A332550(n)), A332550(n)]` -/
def P4827232723732861911.Spec : Prop :=
  ∀ n, (P4827232723732861911.a n : ℤ) = A031955 (n + 1)

end A031955

/-! ## A031955.P14416864395759061602

`eq[2, A054055(A213217(n))]`
-/

namespace A031955.P14416864395759061602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031955.P14416864395759061602

namespace A031955

/-- `eq[2, A054055(A213217(n))]` -/
def P14416864395759061602.Spec : Prop :=
  ∀ n, (P14416864395759061602.a n : ℤ) = A031955 (n + 1)

end A031955

/-!
# A031956: Numbers with exactly three distinct base-4 digits.

The programs for A031956, the canonical program `A031956.P10465415043993701516` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031956 has offset 1).

The definition of A031956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4765 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031956.P10465415043993701516

`eq[3, A043531(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031956

/-- `eq[3, A043531(n+1)]+1` -/
def P10465415043993701516.Spec : Prop :=
  ∀ n, (P10465415043993701516.a n : ℤ) = A031956 (n + 1)

theorem P10465415043993701516.correct : P10465415043993701516.Spec := by
  intro n
  simp only [A031956, Nat.add_sub_cancel]

end A031956

/-! ## A031956.P17485972062180568307

`eq[3, A043531(A028310(n))]`
-/

namespace A031956.P17485972062180568307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031956.P17485972062180568307

namespace A031956

/-- `eq[3, A043531(A028310(n))]` -/
def P17485972062180568307.Spec : Prop :=
  ∀ n, (P17485972062180568307.a n : ℤ) = A031956 (n + 1)

end A031956

/-! ## A031956.P16025503857224313358

`A020725(eq[3, A043531(n+1)])`
-/

namespace A031956.P16025503857224313358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031956.P16025503857224313358

namespace A031956

/-- `A020725(eq[3, A043531(n+1)])` -/
def P16025503857224313358.Spec : Prop :=
  ∀ n, P16025503857224313358.a n = A031956 (n + 1)

end A031956

/-! ## A031956.P12689844051610675735

`A065475(eq[3, A043531(n+1)])`
-/

namespace A031956.P12689844051610675735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031956.P12689844051610675735

namespace A031956

/-- `A065475(eq[3, A043531(n+1)])` -/
def P12689844051610675735.Spec : Prop :=
  ∀ n, P12689844051610675735.a n = A031956 (n + 1)

end A031956

/-! ## A031956.P16770268555358451669

`A153152(eq[3, A043531(n+1)])`
-/

namespace A031956.P16770268555358451669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031956.P16770268555358451669

namespace A031956

/-- `A153152(eq[3, A043531(n+1)])` -/
def P16770268555358451669.Spec : Prop :=
  ∀ n, P16770268555358451669.a n = A031956 (n + 1)

end A031956

/-! ## A031956.P15869531549143845433

`eq[3, A043531(A000007(n)+n)]`
-/

namespace A031956.P15869531549143845433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031956.P15869531549143845433

namespace A031956

/-- `eq[3, A043531(A000007(n)+n)]` -/
def P15869531549143845433.Spec : Prop :=
  ∀ n, (P15869531549143845433.a n : ℤ) = A031956 (n + 1)

end A031956

/-! ## A031956.P17951362729304695012

`eq[3, A043556(A319720(n))]`
-/

namespace A031956.P17951362729304695012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031956.P17951362729304695012

namespace A031956

/-- `eq[3, A043556(A319720(n))]` -/
def P17951362729304695012.Spec : Prop :=
  ∀ n, (P17951362729304695012.a n : ℤ) = A031956 (n + 1)

end A031956

/-! ## A031956.P13429023180702088394

`eq[3, A043531(A233583(n+1))]`
-/

namespace A031956.P13429023180702088394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031956.P13429023180702088394

namespace A031956

/-- `eq[3, A043531(A233583(n+1))]` -/
def P13429023180702088394.Spec : Prop :=
  ∀ n, (P13429023180702088394.a n : ℤ) = A031956 (n + 1)

end A031956

/-! ## A031956.P13451301481302576827

`eq[3, A043531(A007318(A000124(n)))]`
-/

namespace A031956.P13451301481302576827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043531 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031956.P13451301481302576827

namespace A031956

/-- `eq[3, A043531(A007318(A000124(n)))]` -/
def P13451301481302576827.Spec : Prop :=
  ∀ n, (P13451301481302576827.a n : ℤ) = A031956 (n + 1)

end A031956

/-!
# A031957: Numbers with exactly three distinct base-5 digits.

The programs for A031957, the canonical program `A031957.P10313853379854298946` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031957 has offset 1).

The definition of A031957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3892 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031957.P10313853379854298946

`eq[3, A043532(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031957

/-- `eq[3, A043532(n+1)]+1` -/
def P10313853379854298946.Spec : Prop :=
  ∀ n, (P10313853379854298946.a n : ℤ) = A031957 (n + 1)

theorem P10313853379854298946.correct : P10313853379854298946.Spec := by
  intro n
  simp only [A031957, Nat.add_sub_cancel]

end A031957

/-! ## A031957.P12352164719383607465

`eq[3, A043532(ceil(abs(γ-n)))]`
-/

namespace A031957.P12352164719383607465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031957.P12352164719383607465

namespace A031957

/-- `eq[3, A043532(ceil(abs(γ-n)))]` -/
def P12352164719383607465.Spec : Prop :=
  ∀ n, (P12352164719383607465.a n : ℤ) = A031957 (n + 1)

end A031957

/-! ## A031957.P7758518864781497046

`eq[9, A043532(A028310(n))²]`
-/

namespace A031957.P7758518864781497046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031957.P7758518864781497046

namespace A031957

/-- `eq[9, A043532(A028310(n))²]` -/
def P7758518864781497046.Spec : Prop :=
  ∀ n, (P7758518864781497046.a n : ℤ) = A031957 (n + 1)

end A031957

/-! ## A031957.P11466028749791587445

`A326178(eq[3, A043532(n+1)])`
-/

namespace A031957.P11466028749791587445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031957.P11466028749791587445

namespace A031957

/-- `A326178(eq[3, A043532(n+1)])` -/
def P11466028749791587445.Spec : Prop :=
  ∀ n, P11466028749791587445.a n = A031957 (n + 1)

end A031957

/-! ## A031957.P13633312748510633023

`eq[1, A043532(A065033(2*n))/3]`
-/

namespace A031957.P13633312748510633023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043532 (A065033 (2 * n)).toNat : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A031957.P13633312748510633023

namespace A031957

/-- `eq[1, A043532(A065033(2*n))/3]` -/
def P13633312748510633023.Spec : Prop :=
  ∀ n, (P13633312748510633023.a n : ℤ) = A031957 (n + 1)

end A031957

/-!
# A031958: Numbers with exactly three distinct base-6 digits.

The programs for A031958, the canonical program `A031958.P8751129304655259819` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031958 has offset 1).

The definition of A031958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031958.P8751129304655259819

`eq[3, A043533(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031958

/-- `eq[3, A043533(n+1)]+1` -/
def P8751129304655259819.Spec : Prop :=
  ∀ n, (P8751129304655259819.a n : ℤ) = A031958 (n + 1)

theorem P8751129304655259819.correct : P8751129304655259819.Spec := by
  intro n
  simp only [A031958, Nat.add_sub_cancel]

end A031958

/-! ## A031958.P6845516346865494258

`eq[3, A043533(A028310(n))]`
-/

namespace A031958.P6845516346865494258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031958.P6845516346865494258

namespace A031958

/-- `eq[3, A043533(A028310(n))]` -/
def P6845516346865494258.Spec : Prop :=
  ∀ n, (P6845516346865494258.a n : ℤ) = A031958 (n + 1)

end A031958

/-! ## A031958.P5455595009057154846

`A020725(eq[3, A043533(n+1)])`
-/

namespace A031958.P5455595009057154846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031958.P5455595009057154846

namespace A031958

/-- `A020725(eq[3, A043533(n+1)])` -/
def P5455595009057154846.Spec : Prop :=
  ∀ n, P5455595009057154846.a n = A031958 (n + 1)

end A031958

/-! ## A031958.P16281085912157024914

`A326178(eq[3, A043533(n+1)])`
-/

namespace A031958.P16281085912157024914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031958.P16281085912157024914

namespace A031958

/-- `A326178(eq[3, A043533(n+1)])` -/
def P16281085912157024914.Spec : Prop :=
  ∀ n, P16281085912157024914.a n = A031958 (n + 1)

end A031958

/-! ## A031958.P10723528604192269895

`eq[3, A043558(A319723(n))]`
-/

namespace A031958.P10723528604192269895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A319723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031958.P10723528604192269895

namespace A031958

/-- `eq[3, A043558(A319723(n))]` -/
def P10723528604192269895.Spec : Prop :=
  ∀ n, (P10723528604192269895.a n : ℤ) = A031958 (n + 1)

end A031958

/-! ## A031958.P11538669380466494584

`eq[3, A043533(A233583(n+1))]`
-/

namespace A031958.P11538669380466494584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031958.P11538669380466494584

namespace A031958

/-- `eq[3, A043533(A233583(n+1))]` -/
def P11538669380466494584.Spec : Prop :=
  ∀ n, (P11538669380466494584.a n : ℤ) = A031958 (n + 1)

end A031958

/-! ## A031958.P3156535243655995649

`eq[7, A332550(A007092(n))]`
-/

namespace A031958.P3156535243655995649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031958.P3156535243655995649

namespace A031958

/-- `eq[7, A332550(A007092(n))]` -/
def P3156535243655995649.Spec : Prop :=
  ∀ n, (P3156535243655995649.a n : ℤ) = A031958 (n + 1)

end A031958

/-! ## A031958.P488422398978081689

`eq[7, A332550(A084984(n+1))]`
-/

namespace A031958.P488422398978081689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031958.P488422398978081689

namespace A031958

/-- `eq[7, A332550(A084984(n+1))]` -/
def P488422398978081689.Spec : Prop :=
  ∀ n, (P488422398978081689.a n : ℤ) = A031958 (n + 1)

end A031958

/-! ## A031958.P14686420289460408092

`eq[7, A332550(A137386(n+1))]`
-/

namespace A031958.P14686420289460408092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031958.P14686420289460408092

namespace A031958

/-- `eq[7, A332550(A137386(n+1))]` -/
def P14686420289460408092.Spec : Prop :=
  ∀ n, (P14686420289460408092.a n : ℤ) = A031958 (n + 1)

end A031958

/-! ## A031958.P9889830827975562655

`eq[7, A332550(A202267(n+1))]`
-/

namespace A031958.P9889830827975562655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031958.P9889830827975562655

namespace A031958

/-- `eq[7, A332550(A202267(n+1))]` -/
def P9889830827975562655.Spec : Prop :=
  ∀ n, (P9889830827975562655.a n : ℤ) = A031958 (n + 1)

end A031958

/-! ## A031958.P17952305732407666760

`∩[A023801(n+1), A043611(n+1)]`
-/

namespace A031958.P17952305732407666760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031958.P17952305732407666760

namespace A031958

/-- `∩[A023801(n+1), A043611(n+1)]` -/
def P17952305732407666760.Spec : Prop :=
  ∀ n, (P17952305732407666760.a n : ℤ) = A031958 (n + 1)

end A031958

/-!
# A031959: Numbers with exactly three distinct base-7 digits.

The programs for A031959, the canonical program `A031959.P6277803978928099933` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031959 has offset 1).

The definition of A031959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3617 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031959.P6277803978928099933

`eq[3, A043534(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031959

/-- `eq[3, A043534(n+1)]+1` -/
def P6277803978928099933.Spec : Prop :=
  ∀ n, (P6277803978928099933.a n : ℤ) = A031959 (n + 1)

theorem P6277803978928099933.correct : P6277803978928099933.Spec := by
  intro n
  simp only [A031959, Nat.add_sub_cancel]

end A031959

/-! ## A031959.P16624868046718691472

`eq[3, A043534(A028310(n))]`
-/

namespace A031959.P16624868046718691472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031959.P16624868046718691472

namespace A031959

/-- `eq[3, A043534(A028310(n))]` -/
def P16624868046718691472.Spec : Prop :=
  ∀ n, (P16624868046718691472.a n : ℤ) = A031959 (n + 1)

end A031959

/-! ## A031959.P16900789468196036948

`eq[3, A043534(A000038(n)+n)]`
-/

namespace A031959.P16900789468196036948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031959.P16900789468196036948

namespace A031959

/-- `eq[3, A043534(A000038(n)+n)]` -/
def P16900789468196036948.Spec : Prop :=
  ∀ n, (P16900789468196036948.a n : ℤ) = A031959 (n + 1)

end A031959

/-! ## A031959.P4921990079314795641

`eq[3, A043534(A000007(n)+n)]`
-/

namespace A031959.P4921990079314795641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031959.P4921990079314795641

namespace A031959

/-- `eq[3, A043534(A000007(n)+n)]` -/
def P4921990079314795641.Spec : Prop :=
  ∀ n, (P4921990079314795641.a n : ℤ) = A031959 (n + 1)

end A031959

/-! ## A031959.P12248743671852757665

`eq[3, A043534(A233583(n+1))]`
-/

namespace A031959.P12248743671852757665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031959.P12248743671852757665

namespace A031959

/-- `eq[3, A043534(A233583(n+1))]` -/
def P12248743671852757665.Spec : Prop :=
  ∀ n, (P12248743671852757665.a n : ℤ) = A031959 (n + 1)

end A031959

/-! ## A031959.P17311167589481722654

`eq[7, A332550(A007093(n))]`
-/

namespace A031959.P17311167589481722654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031959.P17311167589481722654

namespace A031959

/-- `eq[7, A332550(A007093(n))]` -/
def P17311167589481722654.Spec : Prop :=
  ∀ n, (P17311167589481722654.a n : ℤ) = A031959 (n + 1)

end A031959

/-! ## A031959.P472314183895870366

`∩[A023802(n+1), A043618(n+1)]`
-/

namespace A031959.P472314183895870366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031959.P472314183895870366

namespace A031959

/-- `∩[A023802(n+1), A043618(n+1)]` -/
def P472314183895870366.Spec : Prop :=
  ∀ n, (P472314183895870366.a n : ℤ) = A031959 (n + 1)

end A031959

/-!
# A031960: Numbers with exactly three distinct base-8 digits.

The programs for A031960, the canonical program `A031960.P14287354341505883895` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031960 has offset 1).

The definition of A031960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031960.P14287354341505883895

`eq[3, A043535(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031960

/-- `eq[3, A043535(n+1)]+1` -/
def P14287354341505883895.Spec : Prop :=
  ∀ n, (P14287354341505883895.a n : ℤ) = A031960 (n + 1)

theorem P14287354341505883895.correct : P14287354341505883895.Spec := by
  intro n
  simp only [A031960, Nat.add_sub_cancel]

end A031960

/-! ## A031960.P17049818094588511636

`eq[3, A043535(A028310(n))]`
-/

namespace A031960.P17049818094588511636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031960.P17049818094588511636

namespace A031960

/-- `eq[3, A043535(A028310(n))]` -/
def P17049818094588511636.Spec : Prop :=
  ∀ n, (P17049818094588511636.a n : ℤ) = A031960 (n + 1)

end A031960

/-! ## A031960.P3059767755062114042

`eq[3, A043535(A000007(n)+n)]`
-/

namespace A031960.P3059767755062114042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031960.P3059767755062114042

namespace A031960

/-- `eq[3, A043535(A000007(n)+n)]` -/
def P3059767755062114042.Spec : Prop :=
  ∀ n, (P3059767755062114042.a n : ℤ) = A031960 (n + 1)

end A031960

/-! ## A031960.P9617317281581986850

`eq[3, A043535(xor(n, A000007(n)))]`
-/

namespace A031960.P9617317281581986850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031960.P9617317281581986850

namespace A031960

/-- `eq[3, A043535(xor(n, A000007(n)))]` -/
def P9617317281581986850.Spec : Prop :=
  ∀ n, (P9617317281581986850.a n : ℤ) = A031960 (n + 1)

end A031960

/-! ## A031960.P73928058757189513

`eq[3, A043535(A123108(2*n))]`
-/

namespace A031960.P73928058757189513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031960.P73928058757189513

namespace A031960

/-- `eq[3, A043535(A123108(2*n))]` -/
def P73928058757189513.Spec : Prop :=
  ∀ n, (P73928058757189513.a n : ℤ) = A031960 (n + 1)

end A031960

/-! ## A031960.P15295715411846159432

`eq[7, A332550(A007094(n))]`
-/

namespace A031960.P15295715411846159432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031960.P15295715411846159432

namespace A031960

/-- `eq[7, A332550(A007094(n))]` -/
def P15295715411846159432.Spec : Prop :=
  ∀ n, (P15295715411846159432.a n : ℤ) = A031960 (n + 1)

end A031960

/-! ## A031960.P7903454411561045227

`∩[A023803(n+1), A043625(n+1)]`
-/

namespace A031960.P7903454411561045227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031960.P7903454411561045227

namespace A031960

/-- `∩[A023803(n+1), A043625(n+1)]` -/
def P7903454411561045227.Spec : Prop :=
  ∀ n, (P7903454411561045227.a n : ℤ) = A031960 (n + 1)

end A031960

/-!
# A031961: Numbers with exactly three distinct base-9 digits.

The programs for A031961, the canonical program `A031961.P4622208759046042451` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031961 has offset 1).

The definition of A031961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031961.P4622208759046042451

`eq[3, A043536(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031961

/-- `eq[3, A043536(n+1)]+1` -/
def P4622208759046042451.Spec : Prop :=
  ∀ n, (P4622208759046042451.a n : ℤ) = A031961 (n + 1)

theorem P4622208759046042451.correct : P4622208759046042451.Spec := by
  intro n
  simp only [A031961, Nat.add_sub_cancel]

end A031961

/-! ## A031961.P13659053954966410189

`eq[3, A043536(A028310(n))]`
-/

namespace A031961.P13659053954966410189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031961.P13659053954966410189

namespace A031961

/-- `eq[3, A043536(A028310(n))]` -/
def P13659053954966410189.Spec : Prop :=
  ∀ n, (P13659053954966410189.a n : ℤ) = A031961 (n + 1)

end A031961

/-! ## A031961.P1580754963564732753

`eq[3, A043536(A000007(n)+n)]`
-/

namespace A031961.P1580754963564732753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031961.P1580754963564732753

namespace A031961

/-- `eq[3, A043536(A000007(n)+n)]` -/
def P1580754963564732753.Spec : Prop :=
  ∀ n, (P1580754963564732753.a n : ℤ) = A031961 (n + 1)

end A031961

/-! ## A031961.P1352820097383994102

`eq[3, A043536(A233583(n+1))]`
-/

namespace A031961.P1352820097383994102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031961.P1352820097383994102

namespace A031961

/-- `eq[3, A043536(A233583(n+1))]` -/
def P1352820097383994102.Spec : Prop :=
  ∀ n, (P1352820097383994102.a n : ℤ) = A031961 (n + 1)

end A031961

/-! ## A031961.P1935248252281687824

`eq[7, A332550(A007095(n))]`
-/

namespace A031961.P1935248252281687824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031961.P1935248252281687824

namespace A031961

/-- `eq[7, A332550(A007095(n))]` -/
def P1935248252281687824.Spec : Prop :=
  ∀ n, (P1935248252281687824.a n : ℤ) = A031961 (n + 1)

end A031961

/-! ## A031961.P6797870832916940159

`∩[A023804(n+1), A043632(n+1)]`
-/

namespace A031961.P6797870832916940159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031961.P6797870832916940159

namespace A031961

/-- `∩[A023804(n+1), A043632(n+1)]` -/
def P6797870832916940159.Spec : Prop :=
  ∀ n, (P6797870832916940159.a n : ℤ) = A031961 (n + 1)

end A031961

/-!
# A031962: Numbers with exactly three distinct base-10 digits.

The programs for A031962, the canonical program `A031962.P14649271157304233590` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031962 has offset 1).

The definition of A031962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4536 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031962.P14649271157304233590

`eq[3, A043537(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031962

/-- `eq[3, A043537(n+1)]+1` -/
def P14649271157304233590.Spec : Prop :=
  ∀ n, (P14649271157304233590.a n : ℤ) = A031962 (n + 1)

theorem P14649271157304233590.correct : P14649271157304233590.Spec := by
  intro n
  simp only [A031962, Nat.add_sub_cancel]

end A031962

/-! ## A031962.P4726849013322781557

`lt[A071858(A086066(n)), 1]`
-/

namespace A031962.P4726849013322781557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A086066 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A031962.P4726849013322781557

namespace A031962

/-- `lt[A071858(A086066(n)), 1]` -/
def P4726849013322781557.Spec : Prop :=
  ∀ n, (P4726849013322781557.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P12215978905482017422

`eq[3, A043537(A028310(n))]`
-/

namespace A031962.P12215978905482017422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031962.P12215978905482017422

namespace A031962

/-- `eq[3, A043537(A028310(n))]` -/
def P12215978905482017422.Spec : Prop :=
  ∀ n, (P12215978905482017422.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P14989667721724022925

`eq[1, A055642(A227362(n))-2]`
-/

namespace A031962.P14989667721724022925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A227362 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031962.P14989667721724022925

namespace A031962

/-- `eq[1, A055642(A227362(n))-2]` -/
def P14989667721724022925.Spec : Prop :=
  ∀ n, (P14989667721724022925.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P15968520207750185110

`eq[1, A002265(2*val(A139337(n)², 3))]`
-/

namespace A031962.P15968520207750185110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * SequenceMachineLib.valuation (A139337 n ^ 2).toNat 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031962.P15968520207750185110

namespace A031962

/-- `eq[1, A002265(2*val(A139337(n)², 3))]` -/
def P15968520207750185110.Spec : Prop :=
  ∀ n, (P15968520207750185110.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P1249094717486596388

`lt[A031467(A031472(n+1)), A047842(n)]`
-/

namespace A031962.P1249094717486596388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (A031472 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031962.P1249094717486596388

namespace A031962

/-- `lt[A031467(A031472(n+1)), A047842(n)]` -/
def P1249094717486596388.Spec : Prop :=
  ∀ n, (P1249094717486596388.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P12118863836838103808

`lt[A031481(A157037(n+1)), A047842(n)]`
-/

namespace A031962.P12118863836838103808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031481 (A157037 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031962.P12118863836838103808

namespace A031962

/-- `lt[A031481(A157037(n+1)), A047842(n)]` -/
def P12118863836838103808.Spec : Prop :=
  ∀ n, (P12118863836838103808.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P5890362017148184218

`lt[A031472(A157037(n+3)), A047842(n)]`
-/

namespace A031962.P5890362017148184218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031472 (A157037 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031962.P5890362017148184218

namespace A031962

/-- `lt[A031472(A157037(n+3)), A047842(n)]` -/
def P5890362017148184218.Spec : Prop :=
  ∀ n, (P5890362017148184218.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P1439243729140804081

`eq[7, A332550(n)]`
-/

namespace A031962.P1439243729140804081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031962.P1439243729140804081

namespace A031962

/-- `eq[7, A332550(n)]` -/
def P1439243729140804081.Spec : Prop :=
  ∀ n, (P1439243729140804081.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P3857870015742264626

`eq[3, A139337(n)/37]`
-/

namespace A031962.P3857870015742264626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139337 n : ℚ) / 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A031962.P3857870015742264626

namespace A031962

/-- `eq[3, A139337(n)/37]` -/
def P3857870015742264626.Spec : Prop :=
  ∀ n, (P3857870015742264626.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P504906109896095435

`eq[2, A025444(A139337(n))]`
-/

namespace A031962.P504906109896095435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031962.P504906109896095435

namespace A031962

/-- `eq[2, A025444(A139337(n))]` -/
def P504906109896095435.Spec : Prop :=
  ∀ n, (P504906109896095435.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P561911917610757406

`filter[A043639(n+1), A178788(#)]`
-/

namespace A031962.P561911917610757406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A031962.P561911917610757406

namespace A031962

/-- `filter[A043639(n+1), A178788(#)]` -/
def P561911917610757406.Spec : Prop :=
  ∀ n, P561911917610757406.a n = A031962 (n + 1)

end A031962

/-! ## A031962.P12907987459929005834

`∩[A010784(n+1), A043639(n+1)]`
-/

namespace A031962.P12907987459929005834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031962.P12907987459929005834

namespace A031962

/-- `∩[A010784(n+1), A043639(n+1)]` -/
def P12907987459929005834.Spec : Prop :=
  ∀ n, (P12907987459929005834.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P17986360045074289601

`∩[A029742(n+1), A280823(n+1)]`
-/

namespace A031962.P17986360045074289601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031962.P17986360045074289601

namespace A031962

/-- `∩[A029742(n+1), A280823(n+1)]` -/
def P17986360045074289601.Spec : Prop :=
  ∀ n, (P17986360045074289601.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P2898691813795367556

`∩[A043639(n+1), A280823(n+1)]`
-/

namespace A031962.P2898691813795367556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031962.P2898691813795367556

namespace A031962

/-- `∩[A043639(n+1), A280823(n+1)]` -/
def P2898691813795367556.Spec : Prop :=
  ∀ n, (P2898691813795367556.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P1166696230112240326

`∩[A139819(n+1), A280823(n+1)]`
-/

namespace A031962.P1166696230112240326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031962.P1166696230112240326

namespace A031962

/-- `∩[A139819(n+1), A280823(n+1)]` -/
def P1166696230112240326.Spec : Prop :=
  ∀ n, (P1166696230112240326.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P4843814368037014698

`lt[A017281(A017281(n)), A137564(n)²]`
-/

namespace A031962.P4843814368037014698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031962.P4843814368037014698

namespace A031962

/-- `lt[A017281(A017281(n)), A137564(n)²]` -/
def P4843814368037014698.Spec : Prop :=
  ∀ n, (P4843814368037014698.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P11240940666799154997

`lt[A332550(n), A054055(A332550(n)²)]`
-/

namespace A031962.P11240940666799154997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A332550 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031962.P11240940666799154997

namespace A031962

/-- `lt[A332550(n), A054055(A332550(n)²)]` -/
def P11240940666799154997.Spec : Prop :=
  ∀ n, (P11240940666799154997.a n : ℤ) = A031962 (n + 1)

end A031962

/-! ## A031962.P771380510388196407

`lt[A332567(A332550(n)), A332558(n+1)]`
-/

namespace A031962.P771380510388196407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332567 (A332550 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031962.P771380510388196407

namespace A031962

/-- `lt[A332567(A332550(n)), A332558(n+1)]` -/
def P771380510388196407.Spec : Prop :=
  ∀ n, (P771380510388196407.a n : ℤ) = A031962 (n + 1)

end A031962

/-!
# A031964: Numbers with exactly four distinct base-5 digits.

The programs for A031964, the canonical program `A031964.P2739650612997612692` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031964 has offset 1).

The definition of A031964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031964.P2739650612997612692

`eq[4, A043532(A028310(n))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031964

/-- `eq[4, A043532(A028310(n))]` -/
def P2739650612997612692.Spec : Prop :=
  ∀ n, (P2739650612997612692.a n : ℤ) = A031964 (n + 1)

theorem P2739650612997612692.correct : P2739650612997612692.Spec := by
  intro n
  simp only [A031964, Nat.add_sub_cancel]

end A031964

/-! ## A031964.P5200203132284059437

`A326178(eq[2, A043532(n+1)-2])`
-/

namespace A031964.P5200203132284059437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031964.P5200203132284059437

namespace A031964

/-- `A326178(eq[2, A043532(n+1)-2])` -/
def P5200203132284059437.Spec : Prop :=
  ∀ n, P5200203132284059437.a n = A031964 (n + 1)

end A031964

/-! ## A031964.P6517953254064127524

`A326178(eq[2, A043532(n+1)/2])`
-/

namespace A031964.P6517953254064127524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043532 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A031964.P6517953254064127524

namespace A031964

/-- `A326178(eq[2, A043532(n+1)/2])` -/
def P6517953254064127524.Spec : Prop :=
  ∀ n, P6517953254064127524.a n = A031964 (n + 1)

end A031964

/-! ## A031964.P8338866179486666822

`eq[4, A043532(A065033(2*n))]`
-/

namespace A031964.P8338866179486666822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031964.P8338866179486666822

namespace A031964

/-- `eq[4, A043532(A065033(2*n))]` -/
def P8338866179486666822.Spec : Prop :=
  ∀ n, (P8338866179486666822.a n : ℤ) = A031964 (n + 1)

end A031964

/-! ## A031964.P17412996481014024633

`eq[4, A043532(A233583(n+1))]`
-/

namespace A031964.P17412996481014024633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043532 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031964.P17412996481014024633

namespace A031964

/-- `eq[4, A043532(A233583(n+1))]` -/
def P17412996481014024633.Spec : Prop :=
  ∀ n, (P17412996481014024633.a n : ℤ) = A031964 (n + 1)

end A031964

/-! ## A031964.P12419948487616717125

`A059995(lcm(4, A031946(n+1)))`
-/

namespace A031964.P12419948487616717125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lcm 4 (A031946 (n + 1)))

end

end A031964.P12419948487616717125

namespace A031964

/-- `A059995(lcm(4, A031946(n+1)))` -/
def P12419948487616717125.Spec : Prop :=
  ∀ n, P12419948487616717125.a n = A031964 (n + 1)

end A031964

/-! ## A031964.P3976473066837861562

`eq[6, A332550(A007091(n))]`
-/

namespace A031964.P3976473066837861562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031964.P3976473066837861562

namespace A031964

/-- `eq[6, A332550(A007091(n))]` -/
def P3976473066837861562.Spec : Prop :=
  ∀ n, (P3976473066837861562.a n : ℤ) = A031964 (n + 1)

end A031964

/-! ## A031964.P7215082631668165749

`∩[A023800(n+1), A043604(n+1)]`
-/

namespace A031964.P7215082631668165749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031964.P7215082631668165749

namespace A031964

/-- `∩[A023800(n+1), A043604(n+1)]` -/
def P7215082631668165749.Spec : Prop :=
  ∀ n, (P7215082631668165749.a n : ℤ) = A031964 (n + 1)

end A031964

/-!
# A031965: Numbers with exactly four distinct base-6 digits.

The programs for A031965, the canonical program `A031965.P13517804940984479571` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031965 has offset 1).

The definition of A031965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031965.P13517804940984479571

`eq[4, A043533(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031965

/-- `eq[4, A043533(n+1)]+1` -/
def P13517804940984479571.Spec : Prop :=
  ∀ n, (P13517804940984479571.a n : ℤ) = A031965 (n + 1)

theorem P13517804940984479571.correct : P13517804940984479571.Spec := by
  intro n
  simp only [A031965, Nat.add_sub_cancel]

end A031965

/-! ## A031965.P3592072468153212323

`eq[4, A043533(A028310(n))]`
-/

namespace A031965.P3592072468153212323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031965.P3592072468153212323

namespace A031965

/-- `eq[4, A043533(A028310(n))]` -/
def P3592072468153212323.Spec : Prop :=
  ∀ n, (P3592072468153212323.a n : ℤ) = A031965 (n + 1)

end A031965

/-! ## A031965.P11365770294926922974

`A020725(eq[4, A043533(n+1)])`
-/

namespace A031965.P11365770294926922974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031965.P11365770294926922974

namespace A031965

/-- `A020725(eq[4, A043533(n+1)])` -/
def P11365770294926922974.Spec : Prop :=
  ∀ n, P11365770294926922974.a n = A031965 (n + 1)

end A031965

/-! ## A031965.P16170582365268082017

`A065475(eq[4, A043533(n+1)])`
-/

namespace A031965.P16170582365268082017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031965.P16170582365268082017

namespace A031965

/-- `A065475(eq[4, A043533(n+1)])` -/
def P16170582365268082017.Spec : Prop :=
  ∀ n, P16170582365268082017.a n = A031965 (n + 1)

end A031965

/-! ## A031965.P16860785369366017191

`eq[4, A043558(A319723(n))]`
-/

namespace A031965.P16860785369366017191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (A319723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031965.P16860785369366017191

namespace A031965

/-- `eq[4, A043558(A319723(n))]` -/
def P16860785369366017191.Spec : Prop :=
  ∀ n, (P16860785369366017191.a n : ℤ) = A031965 (n + 1)

end A031965

/-! ## A031965.P2056808402632602474

`eq[6, A332550(A007092(n))]`
-/

namespace A031965.P2056808402632602474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031965.P2056808402632602474

namespace A031965

/-- `eq[6, A332550(A007092(n))]` -/
def P2056808402632602474.Spec : Prop :=
  ∀ n, (P2056808402632602474.a n : ℤ) = A031965 (n + 1)

end A031965

/-! ## A031965.P17459929515377992812

`∩[A023801(n+1), A043612(n+1)]`
-/

namespace A031965.P17459929515377992812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031965.P17459929515377992812

namespace A031965

/-- `∩[A023801(n+1), A043612(n+1)]` -/
def P17459929515377992812.Spec : Prop :=
  ∀ n, (P17459929515377992812.a n : ℤ) = A031965 (n + 1)

end A031965

/-! ## A031965.P3967863565448952413

`lt[A157263(2*(n+1)), A047842(A007092(n))]`
-/

namespace A031965.P3967863565448952413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157263 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031965.P3967863565448952413

namespace A031965

/-- `lt[A157263(2*(n+1)), A047842(A007092(n))]` -/
def P3967863565448952413.Spec : Prop :=
  ∀ n, (P3967863565448952413.a n : ℤ) = A031965 (n + 1)

end A031965

/-! ## A031965.P14442364370861782141

`eq[4, A043533(A233583(n+1))]`
-/

namespace A031965.P14442364370861782141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031965.P14442364370861782141

namespace A031965

/-- `eq[4, A043533(A233583(n+1))]` -/
def P14442364370861782141.Spec : Prop :=
  ∀ n, (P14442364370861782141.a n : ℤ) = A031965 (n + 1)

end A031965

/-! ## A031965.P569504211169972415

`eq[6, A332550(A137386(n+1))]`
-/

namespace A031965.P569504211169972415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031965.P569504211169972415

namespace A031965

/-- `eq[6, A332550(A137386(n+1))]` -/
def P569504211169972415.Spec : Prop :=
  ∀ n, (P569504211169972415.a n : ℤ) = A031965 (n + 1)

end A031965

/-!
# A031966: Numbers with exactly four distinct base-7 digits.

The programs for A031966, the canonical program `A031966.P14962911430947669827` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031966 has offset 1).

The definition of A031966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031966.P14962911430947669827

`eq[4, A043534(A028310(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031966

/-- `eq[4, A043534(A028310(n))]` -/
def P14962911430947669827.Spec : Prop :=
  ∀ n, (P14962911430947669827.a n : ℤ) = A031966 (n + 1)

theorem P14962911430947669827.correct : P14962911430947669827.Spec := by
  intro n
  simp only [A031966, Nat.add_sub_cancel]

end A031966

/-! ## A031966.P6846239325774771441

`A020725(eq[4, A043534(n+1)])`
-/

namespace A031966.P6846239325774771441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031966.P6846239325774771441

namespace A031966

/-- `A020725(eq[4, A043534(n+1)])` -/
def P6846239325774771441.Spec : Prop :=
  ∀ n, P6846239325774771441.a n = A031966 (n + 1)

end A031966

/-! ## A031966.P12446399062466359643

`A114637(eq[4, A043534(n+1)])`
-/

namespace A031966.P12446399062466359643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031966.P12446399062466359643

namespace A031966

/-- `A114637(eq[4, A043534(n+1)])` -/
def P12446399062466359643.Spec : Prop :=
  ∀ n, P12446399062466359643.a n = A031966 (n + 1)

end A031966

/-! ## A031966.P7657159851359234114

`A326178(eq[4, A043534(n+1)])`
-/

namespace A031966.P7657159851359234114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031966.P7657159851359234114

namespace A031966

/-- `A326178(eq[4, A043534(n+1)])` -/
def P7657159851359234114.Spec : Prop :=
  ∀ n, P7657159851359234114.a n = A031966 (n + 1)

end A031966

/-! ## A031966.P2981520503431778243

`eq[6, A332550(A007093(n))]`
-/

namespace A031966.P2981520503431778243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031966.P2981520503431778243

namespace A031966

/-- `eq[6, A332550(A007093(n))]` -/
def P2981520503431778243.Spec : Prop :=
  ∀ n, (P2981520503431778243.a n : ℤ) = A031966 (n + 1)

end A031966

/-! ## A031966.P5217653575966463993

`∩[A023802(n+1), A043619(n+1)]`
-/

namespace A031966.P5217653575966463993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A031966.P5217653575966463993

namespace A031966

/-- `∩[A023802(n+1), A043619(n+1)]` -/
def P5217653575966463993.Spec : Prop :=
  ∀ n, (P5217653575966463993.a n : ℤ) = A031966 (n + 1)

end A031966

/-! ## A031966.P2108735462179051566

`lt[3, A043534(A233583(n+1))]`
-/

namespace A031966.P2108735462179051566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031966.P2108735462179051566

namespace A031966

/-- `lt[3, A043534(A233583(n+1))]` -/
def P2108735462179051566.Spec : Prop :=
  ∀ n, (P2108735462179051566.a n : ℤ) = A031966 (n + 1)

end A031966

/-!
# A031967: Numbers with exactly four distinct base-8 digits.

The programs for A031967, the canonical program `A031967.P5954372983966849332` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031967 has offset 1).

The definition of A031967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031967.P5954372983966849332

`eq[4, A043535(A028310(n))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A031967

/-- `eq[4, A043535(A028310(n))]` -/
def P5954372983966849332.Spec : Prop :=
  ∀ n, (P5954372983966849332.a n : ℤ) = A031967 (n + 1)

theorem P5954372983966849332.correct : P5954372983966849332.Spec := by
  intro n
  simp only [A031967, Nat.add_sub_cancel]

end A031967

/-! ## A031967.P12135705119641404460

`A153152(eq[4, A043535(n+1)])`
-/

namespace A031967.P12135705119641404460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A031967.P12135705119641404460

namespace A031967

/-- `A153152(eq[4, A043535(n+1)])` -/
def P12135705119641404460.Spec : Prop :=
  ∀ n, P12135705119641404460.a n = A031967 (n + 1)

end A031967

/-!
# A031968: Numbers with exactly four distinct base-9 digits.

The programs for A031968, the canonical program `A031968.P14585432749285651485` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031968 has offset 1).

The definition of A031968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031968.P14585432749285651485

`eq[4, A043536(A028310(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A031968

/-- `eq[4, A043536(A028310(n))]` -/
def P14585432749285651485.Spec : Prop :=
  ∀ n, (P14585432749285651485.a n : ℤ) = A031968 (n + 1)

theorem P14585432749285651485.correct : P14585432749285651485.Spec := by
  intro n
  simp only [A031968, Nat.add_sub_cancel]

end A031968

/-! ## A031968.P3145728102301556401

`eq[6, A332550(A007095(n))]`
-/

namespace A031968.P3145728102301556401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031968.P3145728102301556401

namespace A031968

/-- `eq[6, A332550(A007095(n))]` -/
def P3145728102301556401.Spec : Prop :=
  ∀ n, (P3145728102301556401.a n : ℤ) = A031968 (n + 1)

end A031968

/-! ## A031968.P5942681547328190477

`eq[4, A043536(A233583(n+1))]`
-/

namespace A031968.P5942681547328190477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031968.P5942681547328190477

namespace A031968

/-- `eq[4, A043536(A233583(n+1))]` -/
def P5942681547328190477.Spec : Prop :=
  ∀ n, (P5942681547328190477.a n : ℤ) = A031968 (n + 1)

end A031968

/-!
# A031969: Numbers with exactly four distinct base-10 digits.

The programs for A031969, the canonical program `A031969.P3085846202319853215` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031969 has offset 1).

The definition of A031969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4536 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031969.P293513902801050537

`eq[6, A332550(n)]`
-/

namespace A031969.P293513902801050537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031969.P293513902801050537

namespace A031969

/-- `eq[6, A332550(n)]` -/
def P293513902801050537.Spec : Prop :=
  ∀ n, (P293513902801050537.a n : ℤ) = A031969 (n + 1)

end A031969

/-! ## A031969.P10842373396473035128

`eq[3, A275150(A139337(n))]`
-/

namespace A031969.P10842373396473035128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275150 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031969.P10842373396473035128

namespace A031969

/-- `eq[3, A275150(A139337(n))]` -/
def P10842373396473035128.Spec : Prop :=
  ∀ n, (P10842373396473035128.a n : ℤ) = A031969 (n + 1)

end A031969

/-! ## A031969.P3413160354082526038

`lt[3, A043562(A004186(n))]`
-/

namespace A031969.P3413160354082526038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031969.P3413160354082526038

namespace A031969

/-- `lt[3, A043562(A004186(n))]` -/
def P3413160354082526038.Spec : Prop :=
  ∀ n, (P3413160354082526038.a n : ℤ) = A031969 (n + 1)

end A031969

/-! ## A031969.P10447734272585646546

`lt[3, A043537(A028310(n))]`
-/

namespace A031969.P10447734272585646546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031969.P10447734272585646546

namespace A031969

/-- `lt[3, A043537(A028310(n))]` -/
def P10447734272585646546.Spec : Prop :=
  ∀ n, (P10447734272585646546.a n : ℤ) = A031969 (n + 1)

end A031969

/-! ## A031969.P14007096399818290686

`lt[3, A000120(A086066(n))]`
-/

namespace A031969.P14007096399818290686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031969.P14007096399818290686

namespace A031969

/-- `lt[3, A000120(A086066(n))]` -/
def P14007096399818290686.Spec : Prop :=
  ∀ n, (P14007096399818290686.a n : ℤ) = A031969 (n + 1)

end A031969

/-! ## A031969.P8151057262966301406

`lt[3, A055642(A137564(n))]`
-/

namespace A031969.P8151057262966301406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031969.P8151057262966301406

namespace A031969

/-- `lt[3, A055642(A137564(n))]` -/
def P8151057262966301406.Spec : Prop :=
  ∀ n, (P8151057262966301406.a n : ℤ) = A031969 (n + 1)

end A031969

/-! ## A031969.P3085846202319853215

`lt[3, A055642(A320486(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A031969

/-- `lt[3, A055642(A320486(n))]` -/
def P3085846202319853215.Spec : Prop :=
  ∀ n, (P3085846202319853215.a n : ℤ) = A031969 (n + 1)

theorem P3085846202319853215.correct : P3085846202319853215.Spec := by
  intro n
  simp only [A031969, Nat.add_sub_cancel]

end A031969

/-! ## A031969.P9121326297568504657

`filter[A043640(n+1), A178788(#)]`
-/

namespace A031969.P9121326297568504657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A031969.P9121326297568504657

namespace A031969

/-- `filter[A043640(n+1), A178788(#)]` -/
def P9121326297568504657.Spec : Prop :=
  ∀ n, P9121326297568504657.a n = A031969 (n + 1)

end A031969

/-!
# A031970: Tennis ball problem: Balls 1 and 2 are thrown into a room; you throw one on lawn; then balls 3 and 4 are thrown in and you throw any of the 3 balls onto the lawn; then balls 5 and 6 are thrown in and you throw one of the 4 balls onto the lawn; after n turns, consider all possible collections on lawn and add all the values.

The programs for A031970, the canonical program `A031970.P16426183550128537138` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A031970 has offset 0).

The definition of A031970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A031970.P4457834882514493906

`∏[2/(n+1)+4]/2-2*4^n-A001791(n+1)`
-/

namespace A031970.P4457834882514493906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (2 * 4 ^ n : ℚ) - (A001791 (n + 1) : ℚ)

end

end A031970.P4457834882514493906

namespace A031970

/-- `∏[2/(n+1)+4]/2-2*4^n-A001791(n+1)` -/
def P4457834882514493906.Spec : Prop :=
  ∀ n, P4457834882514493906.a n = (A031970 n : ℚ)

end A031970

/-! ## A031970.P4447835889416143480

`A065982(n+1)-Δ[A001700(n)]`
-/

namespace A031970.P4447835889416143480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065982 (n + 1) - (f1 (n + 1) - f1 n)

end

end A031970.P4447835889416143480

namespace A031970

/-- `A065982(n+1)-Δ[A001700(n)]` -/
def P4447835889416143480.Spec : Prop :=
  ∀ n, P4447835889416143480.a n = A031970 n

end A031970

/-! ## A031970.P5475120355290564461

`A296771(n+1)-A001700(n+1)`
-/

namespace A031970.P5475120355290564461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296771 (n + 1) - A001700 (n + 1)

end

end A031970.P5475120355290564461

namespace A031970

/-- `A296771(n+1)-A001700(n+1)` -/
def P5475120355290564461.Spec : Prop :=
  ∀ n, P5475120355290564461.a n = A031970 n

end A031970

/-! ## A031970.P10646332706775620421

`A065982(n+1)-A024482(n+2)`
-/

namespace A031970.P10646332706775620421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065982 (n + 1) - A024482 (n + 2)

end

end A031970.P10646332706775620421

namespace A031970

/-- `A065982(n+1)-A024482(n+2)` -/
def P10646332706775620421.Spec : Prop :=
  ∀ n, P10646332706775620421.a n = A031970 n

end A031970

/-! ## A031970.P16426183550128537138

`A000531(n+1)-A026023(2*n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A031970

/-- `A000531(n+1)-A026023(2*n)` -/
def P16426183550128537138.Spec : Prop :=
  ∀ n, P16426183550128537138.a n = A031970 n

theorem P16426183550128537138.correct : P16426183550128537138.Spec := by
  intro n
  simp only [A031970]

end A031970

/-! ## A031970.P7111642400028128684

`A340568(2*n+3)-A000531(n+1)`
-/

namespace A031970.P7111642400028128684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 (2 * n + 3) - A000531 (n + 1)

end

end A031970.P7111642400028128684

namespace A031970

/-- `A340568(2*n+3)-A000531(n+1)` -/
def P7111642400028128684.Spec : Prop :=
  ∀ n, P7111642400028128684.a n = A031970 n

end A031970

/-! ## A031970.P13414206360327712440

`(n+1)*A001791(n+1)-A000346(n)`
-/

namespace A031970.P13414206360327712440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001791 (n + 1) - A000346 n

end

end A031970.P13414206360327712440

namespace A031970

/-- `(n+1)*A001791(n+1)-A000346(n)` -/
def P13414206360327712440.Spec : Prop :=
  ∀ n, P13414206360327712440.a n = A031970 n

end A031970

/-! ## A031970.P11283062277156078113

`(n+1)²*A000108(n+1)-A000346(n)`
-/

namespace A031970.P11283062277156078113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000108 (n + 1) - A000346 n

end

end A031970.P11283062277156078113

namespace A031970

/-- `(n+1)²*A000108(n+1)-A000346(n)` -/
def P11283062277156078113.Spec : Prop :=
  ∀ n, P11283062277156078113.a n = A031970 n

end A031970

/-! ## A031970.P177713400434032397

`A340568(2*(n+1))-A037955(2*n+1)`
-/

namespace A031970.P177713400434032397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 (2 * (n + 1)) - A037955 (2 * n + 1)

end

end A031970.P177713400434032397

namespace A031970

/-- `A340568(2*(n+1))-A037955(2*n+1)` -/
def P177713400434032397.Spec : Prop :=
  ∀ n, P177713400434032397.a n = A031970 n

end A031970

/-! ## A031970.P4168470669088413438

`A027305(2*n+1)-A001405(2*n+3)`
-/

namespace A031970.P4168470669088413438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027305 (2 * n + 1) - A001405 (2 * n + 3)

end

end A031970.P4168470669088413438

namespace A031970

/-- `A027305(2*n+1)-A001405(2*n+3)` -/
def P4168470669088413438.Spec : Prop :=
  ∀ n, P4168470669088413438.a n = A031970 n

end A031970

/-! ## A031970.P15080146449187380801

`A107373(2*n+3)-A037952(2*(n+1))`
-/

namespace A031970.P15080146449187380801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (2 * n + 3) - A037952 (2 * (n + 1))

end

end A031970.P15080146449187380801

namespace A031970

/-- `A107373(2*n+3)-A037952(2*(n+1))` -/
def P15080146449187380801.Spec : Prop :=
  ∀ n, P15080146449187380801.a n = A031970 n

end A031970

/-! ## A031970.P12892960979121608866

`A340568(2*n+3)-A107373(2*n+3)`
-/

namespace A031970.P12892960979121608866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 (2 * n + 3) - A107373 (2 * n + 3)

end

end A031970.P12892960979121608866

namespace A031970

/-- `A340568(2*n+3)-A107373(2*n+3)` -/
def P12892960979121608866.Spec : Prop :=
  ∀ n, P12892960979121608866.a n = A031970 n

end A031970

/-! ## A031970.P601557110452004887

`A296771(n+1)-A001405(A005408(n+1))`
-/

namespace A031970.P601557110452004887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296771 (n + 1) - A001405 (A005408 (n + 1)).toNat

end

end A031970.P601557110452004887

namespace A031970

/-- `A296771(n+1)-A001405(A005408(n+1))` -/
def P601557110452004887.Spec : Prop :=
  ∀ n, P601557110452004887.a n = A031970 n

end A031970

/-! ## A031970.P8171612353635409102

`A296771(n+1)-A001405(A144396(n+1))`
-/

namespace A031970.P8171612353635409102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296771 (n + 1) - A001405 (A144396 (n + 1)).toNat

end

end A031970.P8171612353635409102

namespace A031970

/-- `A296771(n+1)-A001405(A144396(n+1))` -/
def P8171612353635409102.Spec : Prop :=
  ∀ n, P8171612353635409102.a n = A031970 n

end A031970

/-! ## A031970.P1544989020512794241

`A139262(n+1)+A002457(n)-A001791(n+1)`
-/

namespace A031970.P1544989020512794241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 (n + 1) + (A002457 n - A001791 (n + 1))

end

end A031970.P1544989020512794241

namespace A031970

/-- `A139262(n+1)+A002457(n)-A001791(n+1)` -/
def P1544989020512794241.Spec : Prop :=
  ∀ n, P1544989020512794241.a n = A031970 n

end A031970

/-! ## A031970.P13510562645619024366

`A000108(n+1)+A000531(n+1)-A000984(n+1)`
-/

namespace A031970.P13510562645619024366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A000531 (n + 1) - A000984 (n + 1))

end

end A031970.P13510562645619024366

namespace A031970

/-- `A000108(n+1)+A000531(n+1)-A000984(n+1)` -/
def P13510562645619024366.Spec : Prop :=
  ∀ n, P13510562645619024366.a n = A031970 n

end A031970

/-! ## A031970.P327302470974910229

`A000531(n+1)+A000984(n+1)-A001700(n+1)`
-/

namespace A031970.P327302470974910229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000531 (n + 1) + (A000984 (n + 1) - A001700 (n + 1))

end

end A031970.P327302470974910229

namespace A031970

/-- `A000531(n+1)+A000984(n+1)-A001700(n+1)` -/
def P327302470974910229.Spec : Prop :=
  ∀ n, P327302470974910229.a n = A031970 n

end A031970

/-!
# A031971: a(n) = Sum_{k=1..n} k^n.

The programs for A031971, there is no canonical definition to state claims against.
-/

/-! ## A031971.P4165339622627215162

`A215083(∑[n+2])`
-/

namespace A031971.P4165339622627215162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A031971.P4165339622627215162

/-! ## A031971.P9376496369246560955

`A391310(A134869(n+2))`
-/

namespace A031971.P9376496369246560955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391310 (A134869 (n + 2)).toNat

end

end A031971.P9376496369246560955

/-! ## A031971.P13651878237718846339

`A121706(n+1)+Δ[A001923(n)]`
-/

namespace A031971.P13651878237718846339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121706 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031971.P13651878237718846339

/-! ## A031971.P2170541008252722895

`A121706(n+1)+Δ[A062970(n)]`
-/

namespace A031971.P2170541008252722895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121706 (n + 1) + (f1 (n + 1) - f1 n)

end

end A031971.P2170541008252722895

/-! ## A031971.P11354520530227744761

`A121706(n+1)+record[A091884(n)]`
-/

namespace A031971.P11354520530227744761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121706 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031971.P11354520530227744761

/-! ## A031971.P7016713801442077348

`A121706(n+1)+record[A174551(n)]`
-/

namespace A031971.P7016713801442077348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121706 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031971.P7016713801442077348

/-! ## A031971.P11052601678960773975

`A121706(n+1)+record[A245501(n)]`
-/

namespace A031971.P11052601678960773975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121706 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031971.P11052601678960773975

/-! ## A031971.P8060537342095464839

`A121706(n+1)+A000312(n+1)`
-/

namespace A031971.P8060537342095464839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121706 (n + 1) + A000312 (n + 1)

end

end A031971.P8060537342095464839

/-! ## A031971.P11072289389841602245

`A076015(n+2)-A000169(n+2)`
-/

namespace A031971.P11072289389841602245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076015 (n + 2) - A000169 (n + 2)

end

end A031971.P11072289389841602245

/-! ## A031971.P14937479416856700174

`A000169(n+2)-A191686(n+2)`
-/

namespace A031971.P14937479416856700174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 2) - A191686 (n + 2)

end

end A031971.P14937479416856700174

/-!
# A031972: a(n) = Sum_{k=1..n} n^k.

The programs for A031972, there is no canonical definition to state claims against.
-/

/-! ## A031972.P6632819154519919442

`A031973(n)-1`
-/

namespace A031972.P6632819154519919442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031973 n - 1

end

end A031972.P6632819154519919442

/-! ## A031972.P235309300596761282

`n*A023037(n)`
-/

namespace A031972.P235309300596761282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023037 n

end

end A031972.P235309300596761282

/-! ## A031972.P1652481186601432841

`lcm(n, A023037(A028310(n)))`
-/

namespace A031972.P1652481186601432841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A023037 (A028310 n).toNat)

end

end A031972.P1652481186601432841

/-! ## A031972.P12092423599677292253

`lcm(log2(A000079(n)), A023037(n))`
-/

namespace A031972.P12092423599677292253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))) (A023037 n)

end

end A031972.P12092423599677292253

/-! ## A031972.P6627614304562782512

`A057428(n+1)+A031973(n)`
-/

namespace A031972.P6627614304562782512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A031973 n

end

end A031972.P6627614304562782512

/-! ## A031972.P62516619418226448

`A000312(n)+A023037(n)-1`
-/

namespace A031972.P62516619418226448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n + (A023037 n - 1)

end

end A031972.P62516619418226448

/-! ## A031972.P17843121113797199674

`A014566(n)+A023037(n)-2`
-/

namespace A031972.P17843121113797199674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 n + (A023037 n - 2)

end

end A031972.P17843121113797199674

/-! ## A031972.P8342657936702001700

`A068475(n)+A023811(A028310(n))`
-/

namespace A031972.P8342657936702001700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068475 n + A023811 (A028310 n).toNat

end

end A031972.P8342657936702001700

/-! ## A031972.P13805375627335964241

`A062813(A028310(n))+A062805(n)`
-/

namespace A031972.P13805375627335964241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (A028310 n).toNat + A062805 n

end

end A031972.P13805375627335964241

/-! ## A031972.P2119567509958573409

`A048861(n+1)%Δ[A023037(n)]`
-/

namespace A031972.P2119567509958573409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048861 (n + 1)) (f1 (n + 1) - f1 n)

end

end A031972.P2119567509958573409

/-!
# A031973: a(n) = Sum_{k=0..n} n^k.

The programs for A031973, there is no canonical definition to state claims against.
-/

/-! ## A031973.P2585598186770802097

`A031972(n)+1`
-/

namespace A031973.P2585598186770802097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031972 n + 1

end

end A031973.P2585598186770802097

/-! ## A031973.P9029558772870060957

`A023037(n)+A000312(n)`
-/

namespace A031973.P9029558772870060957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 n + A000312 n

end

end A031973.P9029558772870060957

/-! ## A031973.P14420217269535168619

`A014566(n)+A023037(n)-1`
-/

namespace A031973.P14420217269535168619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 n + (A023037 n - 1)

end

end A031973.P14420217269535168619

/-! ## A031973.P17301862628557414326

`A189001(n)-n*A068475(n)`
-/

namespace A031973.P17301862628557414326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189001 n - (n : ℤ) * A068475 n

end

end A031973.P17301862628557414326

/-! ## A031973.P4568035996369495056

`A068475(n)+A058128(A028310(n))`
-/

namespace A031973.P4568035996369495056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068475 n + A058128 (A028310 n).toNat

end

end A031973.P4568035996369495056

/-! ## A031973.P6590215811350310379

`A062813(A028310(n))+A062805(n)+1`
-/

namespace A031973.P6590215811350310379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (A028310 n).toNat + (A062805 n + 1)

end

end A031973.P6590215811350310379

/-!
# A031974: 1 repeated prime(n) times.

The programs for A031974, there is no canonical definition to state claims against.
-/

/-! ## A031974.P465528140901855555

`Δ[A097708(n)]`
-/

namespace A031974.P465528140901855555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A031974.P465528140901855555

/-! ## A031974.P10181908300773747442

`record[A063671(n+1)]`
-/

namespace A031974.P10181908300773747442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031974.P10181908300773747442

/-! ## A031974.P15236459265438658563

`floor(10^A000040(n+1)/9)`
-/

namespace A031974.P15236459265438658563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ (A000040 (n + 1) : ℤ) / 9⌋

end

end A031974.P15236459265438658563

/-! ## A031974.P17870645276126365842

`A000042(A000040(n+1))`
-/

namespace A031974.P17870645276126365842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A000040 (n + 1)).toNat

end

end A031974.P17870645276126365842

/-! ## A031974.P9279286741608928505

`A002275(A008578(n+2))`
-/

namespace A031974.P9279286741608928505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A008578 (n + 2)).toNat

end

end A031974.P9279286741608928505

/-!
# A031979: Smallest digit of n concatenated with largest digit of n is prime.

The programs for A031979, there is no canonical definition to state claims against.
-/

/-! ## A031979.P5882417347592604781

`eq[A032741(A004185(n)²), A055642(n)]`
-/

namespace A031979.P5882417347592604781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004185 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031979.P5882417347592604781

/-! ## A031979.P850219424508337450

`eq[A032741(A004185(n)²), A262190(n)]`
-/

namespace A031979.P850219424508337450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004185 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031979.P850219424508337450

/-! ## A031979.P16162554083361338093

`eq[A053204(A004185(n)), A276502(n+1)]`
-/

namespace A031979.P16162554083361338093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A004185 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031979.P16162554083361338093

/-! ## A031979.P14514246981683234773

`eq[A032741(A004185(n)²), A276502(n+1)]`
-/

namespace A031979.P14514246981683234773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004185 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031979.P14514246981683234773

/-! ## A031979.P14330469727897499291

`A359381(n+5)+A086011(A350257(n+2))`
-/

namespace A031979.P14330469727897499291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359381 (n + 5) + A086011 (A350257 (n + 2)).toNat

end

end A031979.P14330469727897499291

/-!
# A031980: a(n) is the smallest number >= 1 not occurring earlier and not the sum of cubes of two distinct earlier terms.

The programs for A031980, there is no canonical definition to state claims against.
-/

/-! ## A031980.P8327754862654347071

`eq[A023533(A064555(n+1)), A025468(n)]`
-/

namespace A031980.P8327754862654347071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A064555 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P8327754862654347071

/-! ## A031980.P3287273580060968975

`eq[A025468(n), A166260(A051225(n+1))]`
-/

namespace A031980.P3287273580060968975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (A051225 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P3287273580060968975

/-! ## A031980.P10696938939825078999

`eq[A007814(A038884(n+1)), A025468(n)]`
-/

namespace A031980.P10696938939825078999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A038884 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P10696938939825078999

/-! ## A031980.P13971118567650673416

`eq[1, A048766(A048766(n))+A025468(n)]`
-/

namespace A031980.P13971118567650673416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 n).toNat + A025468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031980.P13971118567650673416

/-! ## A031980.P14524232002243178437

`lt[A025468(n), n/A295000(n+1)]`
-/

namespace A031980.P14524232002243178437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A295000 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A031980.P14524232002243178437

/-! ## A031980.P11383137620129959033

`lt[A025468(n)*A295000(n+1), A074206(n)]`
-/

namespace A031980.P11383137620129959033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n * A295000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031980.P11383137620129959033

/-! ## A031980.P1961518385461457093

`lt[A025468(n)*A219722(3*(n+1)), A074206(n)]`
-/

namespace A031980.P1961518385461457093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n * A219722 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031980.P1961518385461457093

/-! ## A031980.P13454325491239348212

`eq[A025468(n), A063524(A006995(2*(n+1)))]`
-/

namespace A031980.P13454325491239348212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A006995 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P13454325491239348212

/-! ## A031980.P13309693068094945499

`eq[A025468(n), A303709(n²+1)]`
-/

namespace A031980.P13309693068094945499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P13309693068094945499

/-! ## A031980.P16601026825280502359

`eq[A025468(n), A063524(A002522(n))]`
-/

namespace A031980.P16601026825280502359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A002522 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P16601026825280502359

/-! ## A031980.P4306020938317610048

`eq[A010057(32*n), A280618(n)]`
-/

namespace A031980.P4306020938317610048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (32 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P4306020938317610048

/-! ## A031980.P977742451874314882

`eq[A025468(n), A068600(A053194(n+1))]`
-/

namespace A031980.P977742451874314882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068600 (A053194 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P977742451874314882

/-! ## A031980.P17401269646118564460

`eq[A025468(n), A100995(A055999(2*(n+1)))]`
-/

namespace A031980.P17401269646118564460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A055999 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P17401269646118564460

/-! ## A031980.P4597671977441298844

`eq[A039963(A331845(n)), A178334(n)]`
-/

namespace A031980.P4597671977441298844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A331845 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031980.P4597671977441298844

/-!
# A031981: a(1) = 1, a(2) = 2, a(n) = smallest number not the sum of cubes of >= 1 distinct earlier terms.

The programs for A031981, there is no canonical definition to state claims against.
-/

/-! ## A031981.P14091447214322548996

`record[gcd(n, A279329(n))]`
-/

namespace A031981.P14091447214322548996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A279329 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031981.P14091447214322548996

/-! ## A031981.P10069763991296134993

`lt[A331845(n), acot(n-1)]`
-/

namespace A031981.P10069763991296134993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A031981.P10069763991296134993

/-! ## A031981.P3052082544395768429

`eq[A063524(n), A279329(n)]`
-/

namespace A031981.P3052082544395768429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031981.P3052082544395768429

/-! ## A031981.P6557225734778752504

`eq[A063524(n), A331845(n)]`
-/

namespace A031981.P6557225734778752504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031981.P6557225734778752504

/-! ## A031981.P12263890845904509411

`A000007(n)+comp[A003997(n+1)]`
-/

namespace A031981.P12263890845904509411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A031981.P12263890845904509411

/-! ## A031981.P13144051495170997651

`eq[1, A002265(a(A279329(n))²)]` with `a(0)=2, a(1)=1`
-/

namespace A031981.P13144051495170997651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A002265 (f2 (A279329 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031981.P13144051495170997651

/-! ## A031981.P6849483886185857805

`eq[A033322(n+1), A279329(n)]`
-/

namespace A031981.P6849483886185857805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031981.P6849483886185857805

/-! ## A031981.P10214769606564674837

`eq[A033322(n+1), A331845(n)]`
-/

namespace A031981.P10214769606564674837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031981.P10214769606564674837

/-! ## A031981.P17916052221201209927

`eq[A000007(xor(1, n)), A279329(n)]`
-/

namespace A031981.P17916052221201209927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.xor 1 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031981.P17916052221201209927

/-! ## A031981.P2684712381720290291

`eq[char[A331837(n+1)²], A331845(n)]`
-/

namespace A031981.P2684712381720290291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331837 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A031981.P2684712381720290291

/-! ## A031981.P10978181462313911852

`eq[char[A331837(2*n+1)], A331845(n)]`
-/

namespace A031981.P10978181462313911852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331837 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A031981.P10978181462313911852

/-! ## A031981.P18035631316291058764

`lt[A331845(n), A014963(A048764(n+1))]`
-/

namespace A031981.P18035631316291058764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048764 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031981.P18035631316291058764

/-! ## A031981.P4656964699536843160

`A000007(n)+eq[A000007(n), A279329(n)]`
-/

namespace A031981.P4656964699536843160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A031981.P4656964699536843160

/-! ## A031981.P6547094927781828801

`A000007(n)+eq[A000007(n), A331845(n)]`
-/

namespace A031981.P6547094927781828801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A031981.P6547094927781828801

/-! ## A031981.P7171585731289089669

`lt[A331845(n), A014963(A331828(n+1))]`
-/

namespace A031981.P7171585731289089669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A331828 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031981.P7171585731289089669

/-! ## A031981.P1753784182415382509

`lt[A331845(n), A014963(A331820(n+1))]`
-/

namespace A031981.P1753784182415382509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A331820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031981.P1753784182415382509

/-!
# A031982: 

The programs for A031982, there is no canonical definition to state claims against.
-/

/-! ## A031982.P8196840429140781712

`(10^(4*n+4)-1)/99`
-/

namespace A031982.P8196840429140781712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (4 * n + 4) : ℤ) - 1 : ℚ) / 99

end

end A031982.P8196840429140781712

/-! ## A031982.P16090589408305581751

`A094028(Δ[n²])`
-/

namespace A031982.P16090589408305581751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094028 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031982.P16090589408305581751

/-! ## A031982.P16586505925564866522

`record[A094028(xor(1, n))]`
-/

namespace A031982.P16586505925564866522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094028 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031982.P16586505925564866522

/-! ## A031982.P17895844833234444436

`A153500(2*(n+1))`
-/

namespace A031982.P17895844833234444436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153500 (2 * (n + 1))

end

end A031982.P17895844833234444436

/-! ## A031982.P16736693291927190796

`A279028(4*n+2)`
-/

namespace A031982.P16736693291927190796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279028 (4 * n + 2)

end

end A031982.P16736693291927190796

/-!
# A031991: Smallest n-digit norep emirp.

The programs for A031991, there is no canonical definition to state claims against.
-/

/-! ## A031991.P5204214198412979052

`A266508(n)+A105542(A081282(n))`
-/

namespace A031991.P5204214198412979052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266508 n + A105542 (A081282 n).toNat

end

end A031991.P5204214198412979052

/-!
# A031999: Numbers whose base-4 digits are in nonincreasing order.

The programs for A031999, there is no canonical definition to state claims against.
-/

/-! ## A031999.P8765527210228265205

`A023760(n+2)`
-/

namespace A031999.P8765527210228265205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023760 (n + 2)

end

end A031999.P8765527210228265205

/-! ## A031999.P7759922191159743219

`record[A023760(A286378(A016825(n)))]`
-/

namespace A031999.P7759922191159743219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023760 (A286378 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031999.P7759922191159743219

/-! ## A031999.P5445513670624070284

`record[A023760(A133310(A133310(n)))]`
-/

namespace A031999.P5445513670624070284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023760 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031999.P5445513670624070284

/-! ## A031999.P12138700199893242068

`record[A023760(A286378(A008611(n)))]`
-/

namespace A031999.P12138700199893242068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023760 (A286378 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031999.P12138700199893242068

/-! ## A031999.P5825408338851529048

`record[A023760(A286378(A008620(n)))]`
-/

namespace A031999.P5825408338851529048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023760 (A286378 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A031999.P5825408338851529048

/-! ## A031999.P15339107703149108055

`eq[A055949(n+1), A165012(n+1)]+1`
-/

namespace A031999.P15339107703149108055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031999.P15339107703149108055

/-! ## A031999.P4072202735808213390

`eq[1, char[A319720(n+1)]]`
-/

namespace A031999.P4072202735808213390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031999.P4072202735808213390

/-! ## A031999.P600046203077353057

`eq[0, A037802(n+1)]+1`
-/

namespace A031999.P600046203077353057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A031999.P600046203077353057

/-! ## A031999.P12391661549856240877

`lt[0, char[A319720(ceil(n/6)+1)]]`
-/

namespace A031999.P12391661549856240877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (⌈(n : ℚ) / 6⌉ + 1).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A031999.P12391661549856240877

/-! ## A031999.P666115364301746890

`eq[n, A319720(A028310(n))]`
-/

namespace A031999.P666115364301746890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031999.P666115364301746890

/-! ## A031999.P12809323734775015925

`eq[2, A032860(a(A037845(n)))]` with `a(0)=3`
-/

namespace A031999.P12809323734775015925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A032860 (f2 (A037845 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031999.P12809323734775015925

/-! ## A031999.P17609863347952760385

`eq[A030103(n+1), A319652(n+1)]+1`
-/

namespace A031999.P17609863347952760385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A031999.P17609863347952760385

/-! ## A031999.P9952851653551599595

`eq[A036044(2*n+1), A036044(A319720(n))]`
-/

namespace A031999.P9952851653551599595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A031999.P9952851653551599595

/-! ## A031999.P12407039490411979733

`lt[1, char[A319720(n)]*A276036(n+1)]`
-/

namespace A031999.P12407039490411979733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A276036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031999.P12407039490411979733

/-! ## A031999.P4039925571942188757

`lt[1, char[A319720(n)]*A029749(n)]`
-/

namespace A031999.P4039925571942188757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A029749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A031999.P4039925571942188757

