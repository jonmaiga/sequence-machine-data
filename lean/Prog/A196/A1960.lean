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
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A196000: Numbers k such that 90*k + 19 is prime.

The programs for A196000, the canonical program `A196000.P13118945799157782311` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196000 has offset 1).

The definition of A196000 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142322, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A196000.P13118945799157782311

`(A142322(n+1)-19)/90`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A196000

/-- `(A142322(n+1)-19)/90` -/
def P13118945799157782311.Spec : Prop :=
  ∀ n, P13118945799157782311.a n = (A196000 (n + 1) : ℚ)

end A196000

/-! ## A196000.P6973476866391820875

`floor(A142322(n+1)/90)`
-/

namespace A196000.P6973476866391820875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142322 (n + 1) : ℚ) / 90⌋

end

end A196000.P6973476866391820875

namespace A196000

/-- `floor(A142322(n+1)/90)` -/
def P6973476866391820875.Spec : Prop :=
  ∀ n, P6973476866391820875.a n = A196000 (n + 1)

end A196000

/-! ## A196000.P8504562604974177813

`eq[2, A000005(90*n+19)]`
-/

namespace A196000.P8504562604974177813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (90 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196000.P8504562604974177813

namespace A196000

/-- `eq[2, A000005(90*n+19)]` -/
def P8504562604974177813.Spec : Prop :=
  ∀ n, (P8504562604974177813.a n : ℤ) = A196000 (n + 1)

end A196000

/-! ## A196000.P10433345825420408046

`eq[1, A075743(A139249(n+1))]`
-/

namespace A196000.P10433345825420408046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A139249 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196000.P10433345825420408046

namespace A196000

/-- `eq[1, A075743(A139249(n+1))]` -/
def P10433345825420408046.Spec : Prop :=
  ∀ n, (P10433345825420408046.a n : ℤ) = A196000 (n + 1)

end A196000

/-! ## A196000.P7219575011627822854

`eq[1, A001222(A156376(3*n))]`
-/

namespace A196000.P7219575011627822854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A156376 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196000.P7219575011627822854

namespace A196000

/-- `eq[1, A001222(A156376(3*n))]` -/
def P7219575011627822854.Spec : Prop :=
  ∀ n, (P7219575011627822854.a n : ℤ) = A196000 (n + 1)

end A196000

/-! ## A196000.P14547820463859825343

`lt[A000005(3*A265389(3*n+1)+1), 3]`
-/

namespace A196000.P14547820463859825343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * A265389 (3 * n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A196000.P14547820463859825343

namespace A196000

/-- `lt[A000005(3*A265389(3*n+1)+1), 3]` -/
def P14547820463859825343.Spec : Prop :=
  ∀ n, (P14547820463859825343.a n : ℤ) = A196000 (n + 1)

end A196000

/-! ## A196000.P16886767919332712606

`eq[A006530(A161705(5*n+1)), A161705(5*n+1)]`
-/

namespace A196000.P16886767919332712606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161705 (5 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196000.P16886767919332712606

namespace A196000

/-- `eq[A006530(A161705(5*n+1)), A161705(5*n+1)]` -/
def P16886767919332712606.Spec : Prop :=
  ∀ n, (P16886767919332712606.a n : ℤ) = A196000 (n + 1)

end A196000

/-! ## A196000.P13314068818279942713

`eq[A139280(n+1)+10, A006530(A139280(n+1)+10)]`
-/

namespace A196000.P13314068818279942713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) + 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139280 (n + 1) + 10).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196000.P13314068818279942713

namespace A196000

/-- `eq[A139280(n+1)+10, A006530(A139280(n+1)+10)]` -/
def P13314068818279942713.Spec : Prop :=
  ∀ n, (P13314068818279942713.a n : ℤ) = A196000 (n + 1)

end A196000

/-! ## A196000.P2386413642113520048

`eq[2, A278223(A139610(n))]`
-/

namespace A196000.P2386413642113520048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A139610 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196000.P2386413642113520048

namespace A196000

/-- `eq[2, A278223(A139610(n))]` -/
def P2386413642113520048.Spec : Prop :=
  ∀ n, (P2386413642113520048.a n : ℤ) = A196000 (n + 1)

end A196000

/-! ## A196000.P9180174283265277313

`record[A005843(n)/A278223(A139610(n))]`
-/

namespace A196000.P9180174283265277313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A278223 (A139610 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196000.P9180174283265277313

namespace A196000

/-- `record[A005843(n)/A278223(A139610(n))]` -/
def P9180174283265277313.Spec : Prop :=
  ∀ n, P9180174283265277313.a n = (A196000 (n + 1) : ℚ)

end A196000

/-!
# A196001: Positive integers a for which there is a (2/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196001, there is no canonical definition to state claims against.
-/

/-! ## A196001.P9282804530517830638

`A000196(A344231(3*n+5)+A181440(n+1))`
-/

namespace A196001.P9282804530517830638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A344231 (3 * n + 5) + A181440 (n + 1)).toNat

end

end A196001.P9282804530517830638

/-! ## A196001.P8672973847938507836

`A005041(A054353(3*(n+2))-A186188(4*n+6))`
-/

namespace A196001.P8672973847938507836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A054353 (3 * (n + 2)) - A186188 (4 * n + 6)).toNat

end

end A196001.P8672973847938507836

/-! ## A196001.P4374625238350257294

`A072649(A006330(n)+A000323(n+1))`
-/

namespace A196001.P4374625238350257294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A006330 n + A000323 (n + 1)).toNat

end

end A196001.P4374625238350257294

/-! ## A196001.P2260511870952416788

`A000196(A190951(3*(n+2))+A057163(n))`
-/

namespace A196001.P2260511870952416788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A190951 (3 * (n + 2)) + A057163 n).toNat

end

end A196001.P2260511870952416788

/-! ## A196001.P15959436984903606898

`A033810(A379844(3*n+4)-A080251(n))`
-/

namespace A196001.P15959436984903606898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A379844 (3 * n + 4) - A080251 n).toNat

end

end A196001.P15959436984903606898

/-!
# A196005: Positive integers b for which there is a primitive (2/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196005, there is no canonical definition to state claims against.
-/

/-! ## A196005.P3649588481515561955

`A196124(A188649(n+1))-A196004(n+1)`
-/

namespace A196005.P3649588481515561955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196124 (A188649 (n + 1)).toNat - A196004 (n + 1)

end

end A196005.P3649588481515561955

/-! ## A196005.P1445733495438322026

`A196123(A071274(n+1))+A008619(n)`
-/

namespace A196005.P1445733495438322026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196123 (A071274 (n + 1)).toNat + A008619 n

end

end A196005.P1445733495438322026

/-! ## A196005.P10964266548469372561

`A196124(A071274(n+1))-A196004(n+1)`
-/

namespace A196005.P10964266548469372561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196124 (A071274 (n + 1)).toNat - A196004 (n + 1)

end

end A196005.P10964266548469372561

/-! ## A196005.P9155835753364815079

`A196006(A071274(n+1))+A008619(n)-A196122(n+1)`
-/

namespace A196005.P9155835753364815079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (A071274 (n + 1)).toNat + (A008619 n - A196122 (n + 1))

end

end A196005.P9155835753364815079

/-! ## A196005.P12464913039473813719

`A196006(A071274(n+1))+2*A008619(n)-A196004(n+1)`
-/

namespace A196005.P12464913039473813719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (A071274 (n + 1)).toNat + 2 * A008619 n - A196004 (n + 1)

end

end A196005.P12464913039473813719

/-!
# A196006: Positive integers c for which there is a primitive (2/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196006, there is no canonical definition to state claims against.
-/

/-! ## A196006.P17611204292760690339

`A196123(A188649(n+1))+A196122(n+1)`
-/

namespace A196006.P17611204292760690339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196123 (A188649 (n + 1)).toNat + A196122 (n + 1)

end

end A196006.P17611204292760690339

/-! ## A196006.P8241988313160089382

`A196123(A188649(n+1))+A285189(A129412(n+1))+3`
-/

namespace A196006.P8241988313160089382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196123 (A188649 (n + 1)).toNat + (A285189 (A129412 (n + 1)).toNat + 3)

end

end A196006.P8241988313160089382

/-! ## A196006.P13941450571220946333

`A196123(A071274(n+1))+A196122(n+1)`
-/

namespace A196006.P13941450571220946333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196123 (A071274 (n + 1)).toNat + A196122 (n + 1)

end

end A196006.P13941450571220946333

/-! ## A196006.P5104015816415205873

`A196123(A071274(n+1))+A285189(A129412(n+1))+3`
-/

namespace A196006.P5104015816415205873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196123 (A071274 (n + 1)).toNat + (A285189 (A129412 (n + 1)).toNat + 3)

end

end A196006.P5104015816415205873

/-! ## A196006.P5190831773496871773

`A196004(A071274(n+1))+A196123(n+1)-A008619(n)`
-/

namespace A196006.P5190831773496871773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196004 (A071274 (n + 1)).toNat + (A196123 (n + 1) - A008619 n)

end

end A196006.P5190831773496871773

/-!
# A196007: Numbers n such that 90n + 83 is prime.

The programs for A196007, the canonical program `A196007.P11010049429409812533` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196007 has offset 1).

The definition of A196007 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142332, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A196007.P11010049429409812533

`(A142332(n+1)-83)/90`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A196007

/-- `(A142332(n+1)-83)/90` -/
def P11010049429409812533.Spec : Prop :=
  ∀ n, P11010049429409812533.a n = (A196007 (n + 1) : ℚ)

end A196007

/-! ## A196007.P3060783085864747085

`floor(A142332(n+1)/90)`
-/

namespace A196007.P3060783085864747085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142332 (n + 1) : ℚ) / 90⌋

end

end A196007.P3060783085864747085

namespace A196007

/-- `floor(A142332(n+1)/90)` -/
def P3060783085864747085.Spec : Prop :=
  ∀ n, P3060783085864747085.a n = A196007 (n + 1)

end A196007

/-! ## A196007.P1256908713979020682

`eq[90*(n+1)-7, A006530(90*(n+1)-7)]`
-/

namespace A196007.P1256908713979020682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (90 * (n + 1) : ℤ) - 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (90 * (n + 1) - 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196007.P1256908713979020682

namespace A196007

/-- `eq[90*(n+1)-7, A006530(90*(n+1)-7)]` -/
def P1256908713979020682.Spec : Prop :=
  ∀ n, (P1256908713979020682.a n : ℤ) = A196007 (n + 1)

end A196007

/-! ## A196007.P3039627226070263068

`eq[2, A000005(A128473(3*(n+1)))]`
-/

namespace A196007.P3039627226070263068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128473 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196007.P3039627226070263068

namespace A196007

/-- `eq[2, A000005(A128473(3*(n+1)))]` -/
def P3039627226070263068.Spec : Prop :=
  ∀ n, (P3039627226070263068.a n : ℤ) = A196007 (n + 1)

end A196007

/-! ## A196007.P15984223924924379202

`eq[3, A068695(A016789(A016789(n)))]`
-/

namespace A196007.P15984223924924379202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A016789 (A016789 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196007.P15984223924924379202

namespace A196007

/-- `eq[3, A068695(A016789(A016789(n)))]` -/
def P15984223924924379202.Spec : Prop :=
  ∀ n, (P15984223924924379202.a n : ℤ) = A196007 (n + 1)

end A196007

/-! ## A196007.P2659947472317062785

`eq[2, A000005(A017185(A017377(n)))]`
-/

namespace A196007.P2659947472317062785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017185 (A017377 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196007.P2659947472317062785

namespace A196007

/-- `eq[2, A000005(A017185(A017377(n)))]` -/
def P2659947472317062785.Spec : Prop :=
  ∀ n, (P2659947472317062785.a n : ℤ) = A196007 (n + 1)

end A196007

/-! ## A196007.P7997885180675991210

`eq[1, A167020(15*(n+1)-1)]`
-/

namespace A196007.P7997885180675991210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (15 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196007.P7997885180675991210

namespace A196007

/-- `eq[1, A167020(15*(n+1)-1)]` -/
def P7997885180675991210.Spec : Prop :=
  ∀ n, (P7997885180675991210.a n : ℤ) = A196007 (n + 1)

end A196007

/-! ## A196007.P3400790830194744884

`eq[3, A103961(A257645(n))]`
-/

namespace A196007.P3400790830194744884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A257645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A196007.P3400790830194744884

namespace A196007

/-- `eq[3, A103961(A257645(n))]` -/
def P3400790830194744884.Spec : Prop :=
  ∀ n, (P3400790830194744884.a n : ℤ) = A196007 (n + 1)

end A196007

/-! ## A196007.P11245988511249287334

`eq[90*(n+1)-7, A014963(90*(n+1)-7)]`
-/

namespace A196007.P11245988511249287334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (90 * (n + 1) : ℤ) - 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (90 * (n + 1) - 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196007.P11245988511249287334

namespace A196007

/-- `eq[90*(n+1)-7, A014963(90*(n+1)-7)]` -/
def P11245988511249287334.Spec : Prop :=
  ∀ n, (P11245988511249287334.a n : ℤ) = A196007 (n + 1)

end A196007

/-!
# A196008: Positive integers a for which there is a (-5/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196008, there is no canonical definition to state claims against.
-/

/-! ## A196008.P1361194668778555837

`A193832(2*n+1)+A000193(A060982(n))`
-/

namespace A196008.P1361194668778555837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (2 * n + 1) + A000193 (A060982 n).toNat

end

end A196008.P1361194668778555837

/-!
# A196010: a(n) = [x^(n*(n+1)/2)] G(x)^n where G(x) = Sum_{n>=0} x^(n*(n+1)/2).

The programs for A196010, there is no canonical definition to state claims against.
-/

/-! ## A196010.P7261569570222588716

`A286180(∑[n*(A000096(n)+2)])`
-/

namespace A196010.P7261569570222588716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000096 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196010.P7261569570222588716

/-! ## A196010.P3526558213009158299

`A286180(A027480(n)+A002817(n))`
-/

namespace A196010.P3526558213009158299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A027480 n + A002817 n).toNat

end

end A196010.P3526558213009158299

/-! ## A196010.P9593492890498581132

`A286180(A000096(A000096(n))-n)`
-/

namespace A196010.P9593492890498581132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000096 (A000096 n).toNat - (n : ℤ)).toNat

end

end A196010.P9593492890498581132

/-! ## A196010.P17096047992952042801

`A286180(A000217(A000217(n+1))-(n+1))`
-/

namespace A196010.P17096047992952042801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000217 (A000217 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A196010.P17096047992952042801

/-!
# A196011: Number of n X n 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors within one of itself.

The programs for A196011, there is no canonical definition to state claims against.
-/

/-! ## A196011.P11901980803735563727

`A196017(∑[4*n]+1)`
-/

namespace A196011.P11901980803735563727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196011.P11901980803735563727

/-! ## A196011.P17359997123710289135

`xor(1, xor(1, A196017(A001844(n))))`
-/

namespace A196011.P17359997123710289135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A196017 (A001844 n).toNat))

end

end A196011.P17359997123710289135

/-! ## A196011.P1247315312713389065

`A196017(or(1, ∑[4*n]))-A025437(n)`
-/

namespace A196011.P1247315312713389065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) - A025437 n

end

end A196011.P1247315312713389065

/-! ## A196011.P12518657493990035596

`A196017(A001844(n))+A185255(n)`
-/

namespace A196011.P12518657493990035596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A001844 n).toNat + A185255 n

end

end A196011.P12518657493990035596

/-! ## A196011.P5281048933767569672

`A052307(n)*A196017(A001844(n))`
-/

namespace A196011.P5281048933767569672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n * A196017 (A001844 n).toNat

end

end A196011.P5281048933767569672

/-!
# A196012: Number of n X 3 0..4 arrays with each element equal to the number its horizontal and vertical neighbors within one of itself.

The programs for A196012, the canonical program `A196012.P4182514093737276172` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196012 has offset 1).

The definition of A196012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196012.P4182514093737276172

`a(n-1)+a(n-2)+3*a(n-4)-a(n-5)-2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=13, a(5)=16`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A196012

/-- `a(n-1)+a(n-2)+3*a(n-4)-a(n-5)-2*a(n-6)` -/
def P4182514093737276172.Spec : Prop :=
  ∀ n, P4182514093737276172.a n = A196012 (n + 1)

theorem P4182514093737276172.correct : P4182514093737276172.Spec := by
  intro n
  simp only [A196012, Nat.add_sub_cancel]

end A196012

/-! ## A196012.P7408645623026458684

`A196017(∑[n+2]+4)`
-/

namespace A196012.P7408645623026458684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196012.P7408645623026458684

namespace A196012

/-- `A196017(∑[n+2]+4)` -/
def P7408645623026458684.Spec : Prop :=
  ∀ n, P7408645623026458684.a n = A196012 (n + 1)

end A196012

/-! ## A196012.P3251022557187897435

`lcm(1-and(2, n), A196017(A167614(n+1)))`
-/

namespace A196012.P3251022557187897435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A196017 (A167614 (n + 1)).toNat)

end

end A196012.P3251022557187897435

namespace A196012

/-- `lcm(1-and(2, n), A196017(A167614(n+1)))` -/
def P3251022557187897435.Spec : Prop :=
  ∀ n, (P3251022557187897435.a n : ℤ) = A196012 (n + 1)

end A196012

/-! ## A196012.P9675805282163813600

`A196017(A167614(n+1))+A025469(n)`
-/

namespace A196012.P9675805282163813600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A167614 (n + 1)).toNat + A025469 n

end

end A196012.P9675805282163813600

namespace A196012

/-- `A196017(A167614(n+1))+A025469(n)` -/
def P9675805282163813600.Spec : Prop :=
  ∀ n, P9675805282163813600.a n = A196012 (n + 1)

end A196012

/-! ## A196012.P1732588250214654647

`A196017(A167614(n+1))+A185284(n)`
-/

namespace A196012.P1732588250214654647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A167614 (n + 1)).toNat + A185284 n

end

end A196012.P1732588250214654647

namespace A196012

/-- `A196017(A167614(n+1))+A185284(n)` -/
def P1732588250214654647.Spec : Prop :=
  ∀ n, P1732588250214654647.a n = A196012 (n + 1)

end A196012

/-!
# A196013: Number of n X 4 0..4 arrays with each element equal to the number its horizontal and vertical neighbors within one of itself.

The programs for A196013, there is no canonical definition to state claims against.
-/

/-! ## A196013.P13392760192283310228

`A196017(A374004(n+1))`
-/

namespace A196013.P13392760192283310228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A374004 (n + 1)).toNat

end

end A196013.P13392760192283310228

/-! ## A196013.P13007525521529762546

`A196017(A141214(n)+7)`
-/

namespace A196013.P13007525521529762546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A141214 n + 7).toNat

end

end A196013.P13007525521529762546

/-! ## A196013.P9232767435989855172

`A196017(A052905(n)+9)`
-/

namespace A196013.P9232767435989855172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A052905 n + 9).toNat

end

end A196013.P9232767435989855172

/-! ## A196013.P5022772184914287371

`A196017(A055999(n)+10)`
-/

namespace A196013.P5022772184914287371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A055999 n + 10).toNat

end

end A196013.P5022772184914287371

/-! ## A196013.P9314204117879055137

`A196017(A167614(n+2)+1)`
-/

namespace A196013.P9314204117879055137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A167614 (n + 2) + 1).toNat

end

end A196013.P9314204117879055137

/-!
# A196014: Number of nX5 0..4 arrays with each element equal to the number its horizontal and vertical neighbors within one of itself.

The programs for A196014, there is no canonical definition to state claims against.
-/

/-! ## A196014.P11682921078684054917

`A196017(A374005(n+1))`
-/

namespace A196014.P11682921078684054917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A374005 (n + 1)).toNat

end

end A196014.P11682921078684054917

/-! ## A196014.P16544563735583573237

`A196017(A167499(n+3))`
-/

namespace A196014.P16544563735583573237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A167499 (n + 3)).toNat

end

end A196014.P16544563735583573237

/-! ## A196014.P2397365680103622909

`A196017(A077169(n+5))`
-/

namespace A196014.P2397365680103622909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A077169 (n + 5)).toNat

end

end A196014.P2397365680103622909

/-! ## A196014.P5278924288259181524

`A196017(A155212(n)+13)`
-/

namespace A196014.P5278924288259181524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A155212 n + 13).toNat

end

end A196014.P5278924288259181524

/-! ## A196014.P9942282139190803809

`A196017(A056000(n)+15)`
-/

namespace A196014.P9942282139190803809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A056000 n + 15).toNat

end

end A196014.P9942282139190803809

/-!
# A196015: Number of n X 6 0..4 arrays with each element equal to the number its horizontal and vertical neighbors within one of itself.

The programs for A196015, there is no canonical definition to state claims against.
-/

/-! ## A196015.P6504179348926666461

`A196017(A374007(n+1))`
-/

namespace A196015.P6504179348926666461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A374007 (n + 1)).toNat

end

end A196015.P6504179348926666461

/-! ## A196015.P1889613129326032129

`A196017(A166136(n+4))`
-/

namespace A196015.P1889613129326032129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A166136 (n + 4)).toNat

end

end A196015.P1889613129326032129

/-! ## A196015.P10736476819963985025

`A196017(A000124(n+5)+5)`
-/

namespace A196015.P10736476819963985025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A000124 (n + 5) + 5).toNat

end

end A196015.P10736476819963985025

/-! ## A196015.P16273755534787260962

`A196017(A000217(n+5)+6)`
-/

namespace A196015.P16273755534787260962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A000217 (n + 5) + 6).toNat

end

end A196015.P16273755534787260962

/-! ## A196015.P407521117308854773

`A196017(A046691(n+3)+10)`
-/

namespace A196015.P407521117308854773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A046691 (n + 3) + 10).toNat

end

end A196015.P407521117308854773

/-!
# A196016: Number of n X 7 0..4 arrays with each element equal to the number its horizontal and vertical neighbors within one of itself.

The programs for A196016, there is no canonical definition to state claims against.
-/

/-! ## A196016.P11095026439797648990

`A196017(A374008(n+1))`
-/

namespace A196016.P11095026439797648990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A374008 (n + 1)).toNat

end

end A196016.P11095026439797648990

/-! ## A196016.P5976445158123167977

`A196017(A000124(n+6)+6)`
-/

namespace A196016.P5976445158123167977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A000124 (n + 6) + 6).toNat

end

end A196016.P5976445158123167977

/-! ## A196016.P9326746322708570272

`A196017(A000217(n+6)+7)`
-/

namespace A196016.P9326746322708570272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A000217 (n + 6) + 7).toNat

end

end A196016.P9326746322708570272

/-! ## A196016.P14058048471625164182

`A196017(A161680(n+7)+7)`
-/

namespace A196016.P14058048471625164182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A161680 (n + 7) + 7).toNat

end

end A196016.P14058048471625164182

/-! ## A196016.P15129933505786348258

`A196017(A052905(n+3)+12)`
-/

namespace A196016.P15129933505786348258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196017 (A052905 (n + 3) + 12).toNat

end

end A196016.P15129933505786348258

/-!
# A196018: G.f. satisfies: A(x) = 1/(1-x) - 1/(1-x*A(x)) + 1/(1-x*A(x)^2).

The programs for A196018, there is no canonical definition to state claims against.
-/

/-! ## A196018.P8300519698536228847

`A076885(A149788(n))`
-/

namespace A196018.P8300519698536228847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A149788 n).toNat

end

end A196018.P8300519698536228847

/-! ## A196018.P8413510792438447953

`A097992(A150809(n))`
-/

namespace A196018.P8413510792438447953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A150809 n).toNat

end

end A196018.P8413510792438447953

/-! ## A196018.P14000873605251111971

`A276798(A150837(n))`
-/

namespace A196018.P14000873605251111971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150837 n).toNat

end

end A196018.P14000873605251111971

/-!
# A196020: Irregular triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists the odd numbers interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A196020, there is no canonical definition to state claims against.
-/

/-! ## A196020.P4602742407822293149

`A004273(A211343(n+1))`
-/

namespace A196020.P4602742407822293149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A211343 (n + 1)).toNat

end

end A196020.P4602742407822293149

/-! ## A196020.P17589284679815836538

`A004274(A211343(n+1)+2)-2`
-/

namespace A196020.P17589284679815836538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A211343 (n + 1) + 2).toNat - 2

end

end A196020.P17589284679815836538

/-! ## A196020.P13693976965139340133

`A237048(n+1)*A338721(n+1)`
-/

namespace A196020.P13693976965139340133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1) * A338721 (n + 1)

end

end A196020.P13693976965139340133

/-! ## A196020.P1408517186116958133

`2*A211343(n+1)-A237048(n+1)`
-/

namespace A196020.P1408517186116958133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211343 (n + 1) - A237048 (n + 1)

end

end A196020.P1408517186116958133

/-! ## A196020.P1029870328698422766

`A055086(A211343(n+1)²)`
-/

namespace A196020.P1029870328698422766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A211343 (n + 1) ^ 2).toNat

end

end A196020.P1029870328698422766

/-! ## A196020.P3780112564099615747

`A003056(2*A211343(n+1)²)`
-/

namespace A196020.P3780112564099615747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A211343 (n + 1) ^ 2).toNat

end

end A196020.P3780112564099615747

/-! ## A196020.P2063435030026097162

`A003056(2*A211343(n+1)*A211343(n+1))`
-/

namespace A196020.P2063435030026097162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A211343 (n + 1) * A211343 (n + 1)).toNat

end

end A196020.P2063435030026097162

/-! ## A196020.P905666183991308114

`A003056(2*A236104(n+1)*A237048(n+1))`
-/

namespace A196020.P905666183991308114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * (A236104 (n + 1) * A237048 (n + 1))).toNat

end

end A196020.P905666183991308114

/-! ## A196020.P4732094690326557421

`A003056(A211343(n+1)²+A211343(n+1)²)`
-/

namespace A196020.P4732094690326557421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A211343 (n + 1) ^ 2 + A211343 (n + 1) ^ 2).toNat

end

end A196020.P4732094690326557421

/-! ## A196020.P10473780099392648804

`A211343(n+1)+A286013(n+1)-A285914(n+1)`
-/

namespace A196020.P10473780099392648804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211343 (n + 1) + (A286013 (n + 1) - A285914 (n + 1))

end

end A196020.P10473780099392648804

/-! ## A196020.P17094276681782289305

`A003056(A236104(n+1)*A339275(n+1))`
-/

namespace A196020.P17094276681782289305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A236104 (n + 1) * A339275 (n + 1)).toNat

end

end A196020.P17094276681782289305

/-!
# A196022: E.g.f. satisfies: A(x) = Sum_{n>=0} 1/n! * Sum_{k=0..n} C(n,k)*(1 + x/2*A(x)^(n-k))^(n-k) * (-1 + x/2*A(x)^k)^k.

The programs for A196022, there is no canonical definition to state claims against.
-/

/-! ## A196022.P15328504132751438318

`A020656(A317675(n)+A219503(n))`
-/

namespace A196022.P15328504132751438318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020656 (A317675 n + A219503 n).toNat

end

end A196022.P15328504132751438318

/-! ## A196022.P7182421665352128551

`A004185(A319147(n))-A115981(n)`
-/

namespace A196022.P7182421665352128551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A319147 n).toNat - A115981 n

end

end A196022.P7182421665352128551

/-!
# A196024: Odious Fibonacci numbers.

The programs for A196024, there is no canonical definition to state claims against.
-/

/-! ## A196024.P17593408383913040370

`eq[A066628(n), A102389(n)]`
-/

namespace A196024.P17593408383913040370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196024.P17593408383913040370

/-! ## A196024.P14319453098258183039

`eq[A066628(n), A102393(n)]`
-/

namespace A196024.P14319453098258183039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196024.P14319453098258183039

/-! ## A196024.P13156931415379351457

`eq[A010056(n), A277822(n)]`
-/

namespace A196024.P13156931415379351457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196024.P13156931415379351457

/-! ## A196024.P2951657249584122924

`eq[A010059(n), A292031(n)]`
-/

namespace A196024.P2951657249584122924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196024.P2951657249584122924

/-! ## A196024.P7753585920779266850

`eq[A102389(n), A292031(n)]`
-/

namespace A196024.P7753585920779266850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196024.P7753585920779266850

/-!
# A196025: Total sum of parts greater than 1 in all the partitions of n except one copy of the smallest part greater than 1 of every partition.

The programs for A196025, there is no canonical definition to state claims against.
-/

/-! ## A196025.P8022039641508495894

`∑[A182709(n+1)]`
-/

namespace A196025.P8022039641508495894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196025.P8022039641508495894

/-! ## A196025.P17307406193942263846

`A182707(n+1)-A196039(n)`
-/

namespace A196025.P17307406193942263846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) - A196039 n

end

end A196025.P17307406193942263846

/-! ## A196025.P17376482550448611814

`∑[A182707(n+1)-A066186(n)]`
-/

namespace A196025.P17376482550448611814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) - A066186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196025.P17376482550448611814

/-! ## A196025.P16553275438314589565

`A066186(n+1)-A196039(n+1)`
-/

namespace A196025.P16553275438314589565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A196039 (n + 1)

end

end A196025.P16553275438314589565

/-! ## A196025.P6611217347699853567

`∑[A138879(n+1)-A046746(n+1)]`
-/

namespace A196025.P6611217347699853567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A046746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196025.P6611217347699853567

/-! ## A196025.P5976488406606035835

`∑[A138880(n+1)-A182708(n+1)]`
-/

namespace A196025.P5976488406606035835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) - A182708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196025.P5976488406606035835

/-! ## A196025.P1806413470350347124

`∑[A182707(n+1)-n*A000041(n)]`
-/

namespace A196025.P1806413470350347124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) - (n : ℤ) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196025.P1806413470350347124

/-!
# A196026: Positive integers a for which there is a (5/2)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196026, there is no canonical definition to state claims against.
-/

/-! ## A196026.P18056039967352154334

`A202304(A172471(A343531(2*n+5)))`
-/

namespace A196026.P18056039967352154334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A172471 (A343531 (2 * n + 5)).toNat).toNat

end

end A196026.P18056039967352154334

/-!
# A196030: Positive integers b for which there is a primitive (5/2)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196030, there is no canonical definition to state claims against.
-/

/-! ## A196030.P11900469440111363904

`A196027(∑[A005177(n)!])`
-/

namespace A196030.P11900469440111363904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A005177 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196030.P11900469440111363904

/-! ## A196030.P9011263740744843208

`A196027(∑[A345165(n)!])`
-/

namespace A196030.P9011263740744843208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A345165 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196030.P9011263740744843208

/-!
# A196031: Positive integers c for which there is a primitive (5/2)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196031, there is no canonical definition to state claims against.
-/

/-! ## A196031.P8368075745428179041

`A196028(lt[A025048(n), A267261(3*n)])`
-/

namespace A196031.P8368075745428179041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267261 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196028 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196031.P8368075745428179041

/-! ## A196031.P10765422323312636514

`A196028(A029517(n+1)%A029517(3*n+4))`
-/

namespace A196031.P10765422323312636514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196028 (Int.tmod (A029517 (n + 1)) (A029517 (3 * n + 4))).toNat

end

end A196031.P10765422323312636514

/-!
# A196032: Numbers having at least one zero in base 4 representation.

The programs for A196032, the canonical program `A196032.P14796080237097103272` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196032 has offset 1).

The definition of A196032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196032.P14796080237097103272

`comp[4*a(floor(n/3))+n-3*floor(n/3)+1]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A196032

/-- `comp[4*a(floor(n/3))+n-3*floor(n/3)+1]` -/
def P14796080237097103272.Spec : Prop :=
  ∀ n, (P14796080237097103272.a n : ℤ) = A196032 (n + 1)

theorem P14796080237097103272.correct : P14796080237097103272.Spec := by
  intro n
  simp only [A196032, Nat.add_sub_cancel]

end A196032

/-! ## A196032.P7164254770892954709

`lt[0, n*A292370(n)]`
-/

namespace A196032.P7164254770892954709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196032.P7164254770892954709

namespace A196032

/-- `lt[0, n*A292370(n)]` -/
def P7164254770892954709.Spec : Prop :=
  ∀ n, (P7164254770892954709.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P5227892492416074741

`lt[0, A160380(n)]`
-/

namespace A196032.P5227892492416074741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196032.P5227892492416074741

namespace A196032

/-- `lt[0, A160380(n)]` -/
def P5227892492416074741.Spec : Prop :=
  ∀ n, (P5227892492416074741.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P18081973220456661099

`lt[1, A277872(n)]`
-/

namespace A196032.P18081973220456661099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196032.P18081973220456661099

namespace A196032

/-- `lt[1, A277872(n)]` -/
def P18081973220456661099.Spec : Prop :=
  ∀ n, (P18081973220456661099.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P8142077823513511056

`lt[n*A309954(n), n]`
-/

namespace A196032.P8142077823513511056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A309954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A196032.P8142077823513511056

namespace A196032

/-- `lt[n*A309954(n), n]` -/
def P8142077823513511056.Spec : Prop :=
  ∀ n, (P8142077823513511056.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P321263383247756326

`lt[A309954(n+1), 1]+1`
-/

namespace A196032.P321263383247756326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A196032.P321263383247756326

namespace A196032

/-- `lt[A309954(n+1), 1]+1` -/
def P321263383247756326.Spec : Prop :=
  ∀ n, (P321263383247756326.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P11012708823292633286

`eq[A000038(n), A309954(n)]`
-/

namespace A196032.P11012708823292633286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P11012708823292633286

namespace A196032

/-- `eq[A000038(n), A309954(n)]` -/
def P11012708823292633286.Spec : Prop :=
  ∀ n, (P11012708823292633286.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P11046821332295114948

`eq[A309954(n), A391442(n)]`
-/

namespace A196032.P11046821332295114948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P11046821332295114948

namespace A196032

/-- `eq[A309954(n), A391442(n)]` -/
def P11046821332295114948.Spec : Prop :=
  ∀ n, (P11046821332295114948.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P13738233268523314386

`eq[A069517(n+1), A309954(n)]`
-/

namespace A196032.P13738233268523314386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P13738233268523314386

namespace A196032

/-- `eq[A069517(n+1), A309954(n)]` -/
def P13738233268523314386.Spec : Prop :=
  ∀ n, (P13738233268523314386.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P15441567427874435541

`eq[A154269(n+1), A309954(n)]`
-/

namespace A196032.P15441567427874435541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P15441567427874435541

namespace A196032

/-- `eq[A154269(n+1), A309954(n)]` -/
def P15441567427874435541.Spec : Prop :=
  ∀ n, (P15441567427874435541.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P12688670062418813072

`eq[A000007(n), A309954(n)]`
-/

namespace A196032.P12688670062418813072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P12688670062418813072

namespace A196032

/-- `eq[A000007(n), A309954(n)]` -/
def P12688670062418813072.Spec : Prop :=
  ∀ n, (P12688670062418813072.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P7799135668946712083

`eq[A099894(n), A309954(n)]`
-/

namespace A196032.P7799135668946712083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P7799135668946712083

namespace A196032

/-- `eq[A099894(n), A309954(n)]` -/
def P7799135668946712083.Spec : Prop :=
  ∀ n, (P7799135668946712083.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P3811814584949437409

`eq[A130706(n), A309954(n)]`
-/

namespace A196032.P3811814584949437409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P3811814584949437409

namespace A196032

/-- `eq[A130706(n), A309954(n)]` -/
def P3811814584949437409.Spec : Prop :=
  ∀ n, (P3811814584949437409.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P874322198832372488

`eq[A130713(n), A309954(n)]`
-/

namespace A196032.P874322198832372488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P874322198832372488

namespace A196032

/-- `eq[A130713(n), A309954(n)]` -/
def P874322198832372488.Spec : Prop :=
  ∀ n, (P874322198832372488.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P1411569258676475993

`eq[A166926(n), A309954(n)]`
-/

namespace A196032.P1411569258676475993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P1411569258676475993

namespace A196032

/-- `eq[A166926(n), A309954(n)]` -/
def P1411569258676475993.Spec : Prop :=
  ∀ n, (P1411569258676475993.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P9382164973492135846

`eq[A167876(n), A309954(n)]`
-/

namespace A196032.P9382164973492135846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P9382164973492135846

namespace A196032

/-- `eq[A167876(n), A309954(n)]` -/
def P9382164973492135846.Spec : Prop :=
  ∀ n, (P9382164973492135846.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P10931282189112241022

`eq[A169585(n), A309954(n)]`
-/

namespace A196032.P10931282189112241022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P10931282189112241022

namespace A196032

/-- `eq[A169585(n), A309954(n)]` -/
def P10931282189112241022.Spec : Prop :=
  ∀ n, (P10931282189112241022.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P3349638642503827371

`eq[A263013(n), A309954(n)]`
-/

namespace A196032.P3349638642503827371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P3349638642503827371

namespace A196032

/-- `eq[A263013(n), A309954(n)]` -/
def P3349638642503827371.Spec : Prop :=
  ∀ n, (P3349638642503827371.a n : ℤ) = A196032 (n + 1)

end A196032

/-! ## A196032.P4865743983943746813

`eq[A033324(n+1), A309954(n)]`
-/

namespace A196032.P4865743983943746813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196032.P4865743983943746813

namespace A196032

/-- `eq[A033324(n+1), A309954(n)]` -/
def P4865743983943746813.Spec : Prop :=
  ∀ n, (P4865743983943746813.a n : ℤ) = A196032 (n + 1)

end A196032

/-!
# A196033: Positive integers a for which there is a (-4/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196033, there is no canonical definition to state claims against.
-/

/-! ## A196033.P15063879153301616088

`∑[A071041(A054272(3*(n+1)))]+2`
-/

namespace A196033.P15063879153301616088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071041 (A054272 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A196033.P15063879153301616088

/-! ## A196033.P18419009161646619755

`A156250(lt[A156267(3*n+2), A147541(n+1)])`
-/

namespace A196033.P18419009161646619755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156267 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196033.P18419009161646619755

/-! ## A196033.P7774693967082392531

`A196169(A287579(n+2))`
-/

namespace A196033.P7774693967082392531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A287579 (n + 2)).toNat

end

end A196033.P7774693967082392531

/-! ## A196033.P4528419597648006451

`A059396(A378365(3*(n+1))+A059352(n+2))`
-/

namespace A196033.P4528419597648006451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059396 (A378365 (3 * (n + 1)) + A059352 (n + 2)).toNat

end

end A196033.P4528419597648006451

/-!
# A196037: Positive integers b for which there is a primitive (-4/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196037, there is no canonical definition to state claims against.
-/

/-! ## A196037.P4562918725435693185

`A196034(eq[A216210(n), A299203(n+1)])`
-/

namespace A196037.P4562918725435693185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196034 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A196037.P4562918725435693185

/-!
# A196039: Total sum of the smallest part of every partition of every section of the modular table of partitions of n.

The programs for A196039, there is no canonical definition to state claims against.
-/

/-! ## A196039.P1363121082654432713

`∑[A046746(n)]`
-/

namespace A196039.P1363121082654432713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196039.P1363121082654432713

/-! ## A196039.P13845635255448354517

`∑[A222045(n)+A222044(n)]`
-/

namespace A196039.P13845635255448354517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222045 n + A222044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196039.P13845635255448354517

/-! ## A196039.P13323809279813748186

`∑[A222046(n)+2*A222045(n)]`
-/

namespace A196039.P13323809279813748186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222046 n + 2 * A222045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196039.P13323809279813748186

/-! ## A196039.P5469923694103766522

`A182707(n+1)-A196025(n+1)`
-/

namespace A196039.P5469923694103766522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) - A196025 (n + 1)

end

end A196039.P5469923694103766522

/-! ## A196039.P11633311401339888217

`A182709(n+1)+A066186(n)-A196025(n+1)`
-/

namespace A196039.P11633311401339888217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + (A066186 n - A196025 (n + 1))

end

end A196039.P11633311401339888217

/-! ## A196039.P10496036459780188009

`A182707(n+1)+∑[A066186(n)-A182707(n+1)]`
-/

namespace A196039.P10496036459780188009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A182707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196039.P10496036459780188009

/-! ## A196039.P9487336042502446392

`A066186(n+1)-(A196025(n+1)+A046746(n+1))`
-/

namespace A196039.P9487336042502446392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A196025 (n + 1) + A046746 (n + 1))

end

end A196039.P9487336042502446392

/-! ## A196039.P16831710414827377094

`∑[A006128(n)-(A211881(n)+A211870(n))]`
-/

namespace A196039.P16831710414827377094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A211881 n + A211870 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196039.P16831710414827377094

/-!
# A196044: Positive integers b for which there is a primitive (4/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196044, there is no canonical definition to state claims against.
-/

/-! ## A196044.P16601419784370162576

`A196041(A045782(n+1)*A181985(n+1))`
-/

namespace A196044.P16601419784370162576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196041 (A045782 (n + 1) * A181985 (n + 1)).toNat

end

end A196044.P16601419784370162576

/-! ## A196044.P12097328362198311358

`A196041(lt[A316471(n+1), A285487(n+1)])`
-/

namespace A196044.P12097328362198311358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196044.P12097328362198311358

/-!
# A196045: Positive integers a for which there is a primitive (4/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196045, there is no canonical definition to state claims against.
-/

/-! ## A196045.P3715031420929623128

`A196042(lt[A003106(n), A000005(n+1)])`
-/

namespace A196045.P3715031420929623128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196042 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196045.P3715031420929623128

/-! ## A196045.P11251368503779059945

`A196042(lt[A000111(n), A037278(n+1)])`
-/

namespace A196045.P11251368503779059945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196042 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196045.P11251368503779059945

/-! ## A196045.P2546266121457610955

`A196042(lt[A042697(n), A037278(n+1)])`
-/

namespace A196045.P2546266121457610955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042697 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196042 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196045.P2546266121457610955

/-!
# A196046: Maximum vertex-degree in the rooted tree with Matula-Goebel number n.

The programs for A196046, there is no canonical definition to state claims against.
-/

/-! ## A196046.P1286606243241652855

`A191517(A052126(n+1)*A105562(n+1))`
-/

namespace A196046.P1286606243241652855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191517 (A052126 (n + 1) * A105562 (n + 1)).toNat

end

end A196046.P1286606243241652855

/-! ## A196046.P12657193394248222448

`A191517(lcm(A052126(n+1), A105562(n+1)))`
-/

namespace A196046.P12657193394248222448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191517 (Int.lcm (A052126 (n + 1)) (A105562 (n + 1)))

end

end A196046.P12657193394248222448

/-! ## A196046.P16566521414203566109

`A196067(n+1)-A073424(A016826(n))`
-/

namespace A196046.P16566521414203566109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196067 (n + 1) - A073424 (A016826 n).toNat

end

end A196046.P16566521414203566109

/-! ## A196046.P97517628871020771

`A196067(n+1)-A010815(A196038(2*n+3))`
-/

namespace A196046.P97517628871020771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196067 (n + 1) - A010815 (A196038 (2 * n + 3)).toNat

end

end A196046.P97517628871020771

/-! ## A196046.P2182923815659738376

`gcd(A196064(n+1)%A090164(n), A196067(n+1))`
-/

namespace A196046.P2182923815659738376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A196064 (n + 1)) (A090164 n)) (A196067 (n + 1))

end

end A196046.P2182923815659738376

/-!
# A196047: Path length of the rooted tree with Matula-Goebel number n.

The programs for A196047, there is no canonical definition to state claims against.
-/

/-! ## A196047.P1404488407908506600

`A196048(n+1)+A343006(n+1)`
-/

namespace A196047.P1404488407908506600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (n + 1) + A343006 (n + 1)

end

end A196047.P1404488407908506600

/-! ## A196047.P8431845834131110690

`A196068(n+1)-A061775(n+1)`
-/

namespace A196047.P8431845834131110690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A061775 (n + 1)

end

end A196047.P8431845834131110690

/-! ## A196047.P2786386235481453816

`A196068(n+1)-(A196050(n+1)+1)`
-/

namespace A196047.P2786386235481453816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - (A196050 (n + 1) + 1)

end

end A196047.P2786386235481453816

/-! ## A196047.P4794255511032472287

`A023443(A196068(n+1)-A196050(n+1))`
-/

namespace A196047.P4794255511032472287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A196068 (n + 1) - A196050 (n + 1)).toNat

end

end A196047.P4794255511032472287

/-! ## A196047.P5633139303329604986

`A196068(n+1)-A196050(Δ[A002378(n)])`
-/

namespace A196047.P5633139303329604986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196050 (f1 (n + 1) - f1 n).toNat

end

end A196047.P5633139303329604986

/-! ## A196047.P8619874734553347664

`A196068(n+1)-A196050(A005843(n+1))`
-/

namespace A196047.P8619874734553347664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196050 (A005843 (n + 1)).toNat

end

end A196047.P8619874734553347664

/-! ## A196047.P2892915639590961602

`A196068(n+1)-A196050(Δ[A007504(n)])`
-/

namespace A196047.P2892915639590961602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196050 (f1 (n + 1) - f1 n).toNat

end

end A196047.P2892915639590961602

/-! ## A196047.P6480164548226855919

`A196068(n+1)-A196050(p?[A259153(n)])`
-/

namespace A196047.P6480164548226855919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196050 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196047.P6480164548226855919

/-! ## A196047.P2065980867235391361

`A196068(n+1)-A196050(A008578(n+2))`
-/

namespace A196047.P2065980867235391361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196050 (A008578 (n + 2)).toNat

end

end A196047.P2065980867235391361

/-! ## A196047.P8475015099145217155

`A196068(n+1)-A196050(p?[A091203(n)])`
-/

namespace A196047.P8475015099145217155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - A196050 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196047.P8475015099145217155

/-! ## A196047.P12326092615769757602

`A196050(n+1)+A196050(A324922(n+1)/(n+1))`
-/

namespace A196047.P12326092615769757602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + A196050 (SequenceMachineLib.roundAway ((A324922 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A196047.P12326092615769757602

/-!
# A196048: External path length of the rooted tree with Matula-Goebel number n.

The programs for A196048, there is no canonical definition to state claims against.
-/

/-! ## A196048.P5745219377309244435

`A196047(n+1)-A196047(A198328(n+1))`
-/

namespace A196048.P5745219377309244435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) - A196047 (A198328 (n + 1)).toNat

end

end A196048.P5745219377309244435

/-! ## A196048.P14070924629494575562

`A109129(n+1)+A109129(A324922(n+1)/(n+1))`
-/

namespace A196048.P14070924629494575562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + A109129 (SequenceMachineLib.roundAway ((A324922 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A196048.P14070924629494575562

/-! ## A196048.P16717168833045401943

`A196047(n+1)-A343006(n+1)`
-/

namespace A196048.P16717168833045401943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) - A343006 (n + 1)

end

end A196048.P16717168833045401943

/-! ## A196048.P3467746927732679397

`A196047(n+1)+A057428(n)*A343006(n+1)`
-/

namespace A196048.P3467746927732679397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) + A057428 n * A343006 (n + 1)

end

end A196048.P3467746927732679397

/-! ## A196048.P514968023322610530

`A196068(n+1)-(A343006(n+1)+A061775(n+1))`
-/

namespace A196048.P514968023322610530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - (A343006 (n + 1) + A061775 (n + 1))

end

end A196048.P514968023322610530

/-!
# A196049: Number of branching nodes of the rooted tree with Matula-Goebel number n.

The programs for A196049, there is no canonical definition to state claims against.
-/

/-! ## A196049.P6133200796859677344

`A191515(n+1)-A064911(n+1)`
-/

namespace A196049.P6133200796859677344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191515 (n + 1) - A064911 (n + 1)

end

end A196049.P6133200796859677344

/-! ## A196049.P8173297236248549265

`A191515(n+1)-char[A179312(n+1)-1]`
-/

namespace A196049.P8173297236248549265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191515 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196049.P8173297236248549265

/-! ## A196049.P4057737954645842454

`A191515(n+1)-char[A175708(n+1)+n]`
-/

namespace A196049.P4057737954645842454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191515 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196049.P4057737954645842454

/-! ## A196049.P17768219165036676140

`A191515(n+1)-A010051(A032742(n+1))`
-/

namespace A196049.P17768219165036676140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191515 (n + 1) - A010051 (A032742 (n + 1)).toNat

end

end A196049.P17768219165036676140

/-! ## A196049.P11283801083981021723

`A191515(n+1)-A072670(n)*A101040(n+1)`
-/

namespace A196049.P11283801083981021723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191515 (n + 1) - A072670 n * A101040 (n + 1)

end

end A196049.P11283801083981021723

/-!
# A196050: Number of edges in the rooted tree with Matula-Goebel number n.

The programs for A196050, there is no canonical definition to state claims against.
-/

/-! ## A196050.P7345069480558774563

`A061775(n+1)-1`
-/

namespace A196050.P7345069480558774563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - 1

end

end A196050.P7345069480558774563

/-! ## A196050.P982162764425677514

`A109082(n+1)+A358729(n+1)`
-/

namespace A196050.P982162764425677514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1) + A358729 (n + 1)

end

end A196050.P982162764425677514

/-! ## A196050.P4440458327085844310

`A109129(n+1)+A366388(n+1)`
-/

namespace A196050.P4440458327085844310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + A366388 (n + 1)

end

end A196050.P4440458327085844310

/-! ## A196050.P6081345099182284563

`A002837(A061775(n+1))`
-/

namespace A196050.P6081345099182284563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A061775 (n + 1)).toNat

end

end A196050.P6081345099182284563

/-! ## A196050.P1171688816337475519

`A289207(A061775(n+1)+1)`
-/

namespace A196050.P1171688816337475519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A061775 (n + 1) + 1).toNat

end

end A196050.P1171688816337475519

/-! ## A196050.P544708271240761580

`A003056(C(A061775(n+1), 2))`
-/

namespace A196050.P544708271240761580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A061775 (n + 1)).toNat 2)

end

end A196050.P544708271240761580

/-! ## A196050.P9022254164256142096

`A003986(C(A061775(n+1), 2))`
-/

namespace A196050.P9022254164256142096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Nat.choose (A061775 (n + 1)).toNat 2)

end

end A196050.P9022254164256142096

/-! ## A196050.P6103459045580664321

`A366386(n+1)+A324923(n+1)`
-/

namespace A196050.P6103459045580664321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366386 (n + 1) + A324923 (n + 1)

end

end A196050.P6103459045580664321

/-! ## A196050.P15843833781425373632

`A196068(n+1)-(A196047(n+1)+1)`
-/

namespace A196050.P15843833781425373632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196068 (n + 1) - (A196047 (n + 1) + 1)

end

end A196050.P15843833781425373632

/-! ## A196050.P9173012863879225036

`A317713(n+1)+A366386(n+1)-1`
-/

namespace A196050.P9173012863879225036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (n + 1) + (A366386 (n + 1) - 1)

end

end A196050.P9173012863879225036

/-! ## A196050.P10398311173434549026

`A358552(n+1)+A358729(n+1)-1`
-/

namespace A196050.P10398311173434549026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1) + (A358729 (n + 1) - 1)

end

end A196050.P10398311173434549026

/-! ## A196050.P13166662997936893759

`A061395(A008578(A061775(n+1))²)`
-/

namespace A196050.P13166662997936893759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A008578 (A061775 (n + 1)).toNat ^ 2).toNat

end

end A196050.P13166662997936893759

/-! ## A196050.P8710489668238729005

`A258069(A061775(n+1))%A008000(n)`
-/

namespace A196050.P8710489668238729005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258069 (A061775 (n + 1)).toNat) (A008000 n)

end

end A196050.P8710489668238729005

/-! ## A196050.P10251632707294167297

`A258069(A061775(n+1)%A017569(n))`
-/

namespace A196050.P10251632707294167297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (Int.tmod (A061775 (n + 1)) (A017569 n)).toNat

end

end A196050.P10251632707294167297

/-! ## A196050.P16479075480039685617

`A196047(n+1)-A196047(A003963(n+1))`
-/

namespace A196050.P16479075480039685617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) - A196047 (A003963 (n + 1)).toNat

end

end A196050.P16479075480039685617

/-! ## A196050.P3014176266946454707

`Δ[A325544(n)]`
-/

namespace A196050.P3014176266946454707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196050.P3014176266946454707

/-! ## A196050.P15715036700049298729

`A325544(n+1)-A325544(n)`
-/

namespace A196050.P15715036700049298729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 (n + 1) - A325544 n

end

end A196050.P15715036700049298729

/-! ## A196050.P1050028795173673804

`A196068(n+1)%A196047(2*(n+1))`
-/

namespace A196050.P1050028795173673804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196068 (n + 1)) (A196047 (2 * (n + 1)))

end

end A196050.P1050028795173673804

/-! ## A196050.P11782424231592666929

`A109129(2*(n+1))+A342507(2*(n+1))-2`
-/

namespace A196050.P11782424231592666929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (2 * (n + 1)) + (A342507 (2 * (n + 1)) - 2)

end

end A196050.P11782424231592666929

/-! ## A196050.P16939475897575003551

`A196047(A000040(n+1))-(A196047(n+1)+1)`
-/

namespace A196050.P16939475897575003551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (A000040 (n + 1)).toNat - (A196047 (n + 1) + 1)

end

end A196050.P16939475897575003551

/-!
# A196051: The Wiener index of the rooted tree with Matula-Goebel number n.

The programs for A196051, there is no canonical definition to state claims against.
-/

/-! ## A196051.P788107097892247975

`A184158(n+1)+A184157(n+1)`
-/

namespace A196051.P788107097892247975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184158 (n + 1) + A184157 (n + 1)

end

end A196051.P788107097892247975

/-!
# A196052: Sum of the degrees of the nodes at level 1 in the rooted tree with Matula-Goebel number n.

The programs for A196052, the canonical program `A196052.P16322803522699243534` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196052 has offset 1).

The definition of A196052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196052.P16322803522699243534

`A302242(n+1)+∑{e}[n+1, #]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A196052

/-- `A302242(n+1)+∑{e}[n+1, #]` -/
def P16322803522699243534.Spec : Prop :=
  ∀ n, P16322803522699243534.a n = A196052 (n + 1)

theorem P16322803522699243534.correct : P16322803522699243534.Spec := by
  intro n
  simp only [A196052, Nat.add_sub_cancel]

end A196052

/-! ## A196052.P4048826904195621065

`A302242(n+1)+Δ[A022559(n)]`
-/

namespace A196052.P4048826904195621065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + (f1 (n + 1) - f1 n)

end

end A196052.P4048826904195621065

namespace A196052

/-- `A302242(n+1)+Δ[A022559(n)]` -/
def P4048826904195621065.Spec : Prop :=
  ∀ n, P4048826904195621065.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P12372946385704201049

`A302242(n+1)+A001222(n+1)`
-/

namespace A196052.P12372946385704201049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + A001222 (n + 1)

end

end A196052.P12372946385704201049

namespace A196052

/-- `A302242(n+1)+A001222(n+1)` -/
def P12372946385704201049.Spec : Prop :=
  ∀ n, P12372946385704201049.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P17278304152276898765

`A302242(n+1)+log2(A061142(n+1))`
-/

namespace A196052.P17278304152276898765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A302242 (n + 1) : ℝ) + Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A196052.P17278304152276898765

namespace A196052

/-- `A302242(n+1)+log2(A061142(n+1))` -/
def P17278304152276898765.Spec : Prop :=
  ∀ n, P17278304152276898765.a n = (A196052 (n + 1) : ℝ)

end A196052

/-! ## A196052.P4031580549091622352

`A302242(n+1)+A255201(n+1)/2`
-/

namespace A196052.P4031580549091622352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302242 (n + 1) : ℚ) + (A255201 (n + 1) : ℚ) / 2

end

end A196052.P4031580549091622352

namespace A196052

/-- `A302242(n+1)+A255201(n+1)/2` -/
def P4031580549091622352.Spec : Prop :=
  ∀ n, P4031580549091622352.a n = (A196052 (n + 1) : ℚ)

end A196052

/-! ## A196052.P14147480056997400159

`A302242(n+1)+val(A124508(n+1), 2)`
-/

namespace A196052.P14147480056997400159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + (SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2 : ℤ)

end

end A196052.P14147480056997400159

namespace A196052

/-- `A302242(n+1)+val(A124508(n+1), 2)` -/
def P14147480056997400159.Spec : Prop :=
  ∀ n, P14147480056997400159.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P9792409352735164689

`A302242(n+1)+val(A165827(n+1), 2)`
-/

namespace A196052.P9792409352735164689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + (SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2 : ℤ)

end

end A196052.P9792409352735164689

namespace A196052

/-- `A302242(n+1)+val(A165827(n+1), 2)` -/
def P9792409352735164689.Spec : Prop :=
  ∀ n, P9792409352735164689.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P8649272523293104377

`A302242(n+1)+val(A165825(n+1), 4)`
-/

namespace A196052.P8649272523293104377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℤ)

end

end A196052.P8649272523293104377

namespace A196052

/-- `A302242(n+1)+val(A165825(n+1), 4)` -/
def P8649272523293104377.Spec : Prop :=
  ∀ n, P8649272523293104377.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P9205212885240639253

`A001222(n+1)+∑{e}[A003963(n+1), #]`
-/

namespace A196052.P9205212885240639253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A196052.P9205212885240639253

namespace A196052

/-- `A001222(n+1)+∑{e}[A003963(n+1), #]` -/
def P9205212885240639253.Spec : Prop :=
  ∀ n, P9205212885240639253.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P9427385689801500677

`A302242(n+1)+(n²*A086436(n+1))%(n+1)`
-/

namespace A196052.P9427385689801500677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + Int.tmod ((n ^ 2 : ℤ) * A086436 (n + 1)) (n + 1 : ℤ)

end

end A196052.P9427385689801500677

namespace A196052

/-- `A302242(n+1)+(n²*A086436(n+1))%(n+1)` -/
def P9427385689801500677.Spec : Prop :=
  ∀ n, P9427385689801500677.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P1776137042636705027

`A001222(n+1)+A001222(A003963(n+1))`
-/

namespace A196052.P1776137042636705027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (A003963 (n + 1)).toNat

end

end A196052.P1776137042636705027

namespace A196052

/-- `A001222(n+1)+A001222(A003963(n+1))` -/
def P1776137042636705027.Spec : Prop :=
  ∀ n, P1776137042636705027.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P16187572957995480093

`A302242(n+1)+A056239(A181819(n+1))`
-/

namespace A196052.P16187572957995480093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + A056239 (A181819 (n + 1)).toNat

end

end A196052.P16187572957995480093

namespace A196052

/-- `A302242(n+1)+A056239(A181819(n+1))` -/
def P16187572957995480093.Spec : Prop :=
  ∀ n, P16187572957995480093.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P9529695020632984021

`(A302242(n+1)+A086436(n+1))*A057427(n)`
-/

namespace A196052.P9529695020632984021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A302242 (n + 1) + A086436 (n + 1)) * A057427 n

end

end A196052.P9529695020632984021

namespace A196052

/-- `(A302242(n+1)+A086436(n+1))*A057427(n)` -/
def P9529695020632984021.Spec : Prop :=
  ∀ n, P9529695020632984021.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P3657908839618172418

`A001221(n+1)+A302242(n+1)+A046660(n+1)`
-/

namespace A196052.P3657908839618172418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A302242 (n + 1) + A046660 (n + 1))

end

end A196052.P3657908839618172418

namespace A196052

/-- `A001221(n+1)+A302242(n+1)+A046660(n+1)` -/
def P3657908839618172418.Spec : Prop :=
  ∀ n, P3657908839618172418.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P9942025395878085218

`A056239(n+1)+A302242(n+1)-A318995(n+1)`
-/

namespace A196052.P9942025395878085218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A302242 (n + 1) - A318995 (n + 1))

end

end A196052.P9942025395878085218

namespace A196052

/-- `A056239(n+1)+A302242(n+1)-A318995(n+1)` -/
def P9942025395878085218.Spec : Prop :=
  ∀ n, P9942025395878085218.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P11284763299368585059

`A302242(n+1)+A318994(n+1)-A056239(n+1)`
-/

namespace A196052.P11284763299368585059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + (A318994 (n + 1) - A056239 (n + 1))

end

end A196052.P11284763299368585059

namespace A196052

/-- `A302242(n+1)+A318994(n+1)-A056239(n+1)` -/
def P11284763299368585059.Spec : Prop :=
  ∀ n, P11284763299368585059.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P5067723645677026726

`A302242(n+1)+A188134(4*(∏{e}[A061142(n+1), #+1]-1))`
-/

namespace A196052.P5067723645677026726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + A188134 (4 * (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1)).toNat

end

end A196052.P5067723645677026726

namespace A196052

/-- `A302242(n+1)+A188134(4*(∏{e}[A061142(n+1), #+1]-1))` -/
def P5067723645677026726.Spec : Prop :=
  ∀ n, P5067723645677026726.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P3615711235516193806

`A302242(n+1)+A056239(A165825(n+1)/A061142(n+1))`
-/

namespace A196052.P3615711235516193806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + A056239 (SequenceMachineLib.roundAway ((A165825 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ))).toNat

end

end A196052.P3615711235516193806

namespace A196052

/-- `A302242(n+1)+A056239(A165825(n+1)/A061142(n+1))` -/
def P3615711235516193806.Spec : Prop :=
  ∀ n, P3615711235516193806.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P8968221427027206213

`A302242(A000040(n+1))+A302242(n+1)`
-/

namespace A196052.P8968221427027206213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A000040 (n + 1)).toNat + A302242 (n + 1)

end

end A196052.P8968221427027206213

namespace A196052

/-- `A302242(A000040(n+1))+A302242(n+1)` -/
def P8968221427027206213.Spec : Prop :=
  ∀ n, P8968221427027206213.a n = A196052 (n + 1)

end A196052

/-! ## A196052.P5215369528858152410

`A302242(n+1)+A302242(record[A006530(n+2)])`
-/

namespace A196052.P5215369528858152410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (n + 1) + A302242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196052.P5215369528858152410

namespace A196052

/-- `A302242(n+1)+A302242(record[A006530(n+2)])` -/
def P5215369528858152410.Spec : Prop :=
  ∀ n, P5215369528858152410.a n = A196052 (n + 1)

end A196052

/-!
# A196053: The first Zagreb index of the rooted tree with Matula-Goebel number n.

The programs for A196053, there is no canonical definition to state claims against.
-/

/-! ## A196053.P838670254988973842

`A198332(n+1)+2*A196050(n+1)`
-/

namespace A196053.P838670254988973842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198332 (n + 1) + 2 * A196050 (n + 1)

end

end A196053.P838670254988973842

/-! ## A196053.P6982551708369945147

`2*(A224458(n+1)+A196050(n+1))`
-/

namespace A196053.P6982551708369945147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A224458 (n + 1) + A196050 (n + 1))

end

end A196053.P6982551708369945147

/-! ## A196053.P9851534912527150509

`A198332(n+1)+A005843(A196050(n+1))`
-/

namespace A196053.P9851534912527150509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198332 (n + 1) + A005843 (A196050 (n + 1)).toNat

end

end A196053.P9851534912527150509

/-! ## A196053.P15965821489931258161

`A005843(A224458(n+1)+A196050(n+1))`
-/

namespace A196053.P15965821489931258161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A224458 (n + 1) + A196050 (n + 1)).toNat

end

end A196053.P15965821489931258161

/-! ## A196053.P15550768170383991889

`A198332(n+1)+A005843(A061775(n+1)-1)`
-/

namespace A196053.P15550768170383991889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198332 (n + 1) + A005843 (A061775 (n + 1) - 1).toNat

end

end A196053.P15550768170383991889

/-! ## A196053.P18208739812874607443

`2*(A061775(n+1)+A023443(A224458(n+1)))`
-/

namespace A196053.P18208739812874607443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061775 (n + 1) + A023443 (A224458 (n + 1)).toNat)

end

end A196053.P18208739812874607443

/-! ## A196053.P12238114945107315804

`A198332(n+1)+A005843(A342507(2*(n+1))+A109129(n+1)-1)`
-/

namespace A196053.P12238114945107315804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198332 (n + 1) + A005843 (A342507 (2 * (n + 1)) + A109129 (n + 1) - 1).toNat

end

end A196053.P12238114945107315804

/-! ## A196053.P11832752954997952302

`2*(A224458(n+1)+A001222(A324922(n+1)))`
-/

namespace A196053.P11832752954997952302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A224458 (n + 1) + A001222 (A324922 (n + 1)).toNat)

end

end A196053.P11832752954997952302

/-! ## A196053.P15841815730452308641

`A198332(n+1)+A196050((n+1)²)`
-/

namespace A196053.P15841815730452308641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198332 (n + 1) + A196050 ((n + 1) ^ 2)

end

end A196053.P15841815730452308641

/-!
# A196054: The second Zagreb index of the rooted tree with Matula-Goebel number n.

The programs for A196054, there is no canonical definition to state claims against.
-/

/-! ## A196054.P13837136494116539290

`A184156(n+1)+A198332(n+1)+A196050(n+1)`
-/

namespace A196054.P13837136494116539290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184156 (n + 1) + (A198332 (n + 1) + A196050 (n + 1))

end

end A196054.P13837136494116539290

/-! ## A196054.P12177639947416359432

`A184156(n+1)+A196053(n+1)-A196050(n+1)`
-/

namespace A196054.P12177639947416359432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184156 (n + 1) + (A196053 (n + 1) - A196050 (n + 1))

end

end A196054.P12177639947416359432

/-!
# A196055: The terminal Wiener index of the rooted tree with Matula-Goebel number n.

The programs for A196055, there is no canonical definition to state claims against.
-/

/-! ## A196055.P18099949368708335972

`A348959(n+1)+A196048(A089026(n+1))`
-/

namespace A196055.P18099949368708335972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348959 (n + 1) + A196048 (A089026 (n + 1)).toNat

end

end A196055.P18099949368708335972

/-!
# A196056: Triangle read by rows: T(n,k) is the number of nodes at level k>=1 of the rooted tree having Matula-Goebel number n (n>=2).

The programs for A196056, there is no canonical definition to state claims against.
-/

/-! ## A196056.P12037628851786484392

`gcd(A050252(A127563(2*n+5)), A050252(n+1))`
-/

namespace A196056.P12037628851786484392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050252 (A127563 (2 * n + 5)).toNat) (A050252 (n + 1))

end

end A196056.P12037628851786484392

/-!
# A196057: Number of sibling pairs in the rooted tree with Matula-Goebel number n.

The programs for A196057, there is no canonical definition to state claims against.
-/

/-! ## A196057.P4395808179159145883

`A224458(n+1)-A196050(A003963(n+1))`
-/

namespace A196057.P4395808179159145883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (n + 1) - A196050 (A003963 (n + 1)).toNat

end

end A196057.P4395808179159145883

/-! ## A196057.P1350382343579159717

`A224458(2*(n+1))-A196050(n+1)`
-/

namespace A196057.P1350382343579159717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (2 * (n + 1)) - A196050 (n + 1)

end

end A196057.P1350382343579159717

/-! ## A196057.P9323283171813069813

`A224458(2*(n+1))-(A061775(n+1)-1)`
-/

namespace A196057.P9323283171813069813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (2 * (n + 1)) - (A061775 (n + 1) - 1)

end

end A196057.P9323283171813069813

/-! ## A196057.P17250796772910829047

`A224458(2*(n+1))-A023443(A061775(n+1))`
-/

namespace A196057.P17250796772910829047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (2 * (n + 1)) - A023443 (A061775 (n + 1)).toNat

end

end A196057.P17250796772910829047

/-! ## A196057.P6096260363702383026

`A224458(2*(n+1))-(A196068(n+1)-(A196047(n+1)+1))`
-/

namespace A196057.P6096260363702383026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (2 * (n + 1)) - (A196068 (n + 1) - (A196047 (n + 1) + 1))

end

end A196057.P6096260363702383026

/-! ## A196057.P9550694165964986436

`A224458(2*(n+1))-(A109129(2*(n+1))+A342507(2*(n+1))-2)`
-/

namespace A196057.P9550694165964986436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (2 * (n + 1)) - (A109129 (2 * (n + 1)) + (A342507 (2 * (n + 1)) - 2))

end

end A196057.P9550694165964986436

/-! ## A196057.P9355002920983759655

`A224458(2*(n+1))-(A196047(A000040(n+1))-(A196047(n+1)+1))`
-/

namespace A196057.P9355002920983759655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (2 * (n + 1)) - (A196047 (A000040 (n + 1)).toNat - (A196047 (n + 1) + 1))

end

end A196057.P9355002920983759655

/-! ## A196057.P4729334385401463168

`A224458(2*(n+1))-(A196047(A008578(n+2))-(A196047(n+1)+1))`
-/

namespace A196057.P4729334385401463168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (2 * (n + 1)) - (A196047 (A008578 (n + 2)).toNat - (A196047 (n + 1) + 1))

end

end A196057.P4729334385401463168

/-! ## A196057.P1742252531572687699

`A224458(2*(n+1))-A001222(A324922(n+1))`
-/

namespace A196057.P1742252531572687699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (2 * (n + 1)) - A001222 (A324922 (n + 1)).toNat

end

end A196057.P1742252531572687699

/-! ## A196057.P10013875871022916292

`A001222(n+1)+A224458(n+1)-A001222(A324922(n+1))`
-/

namespace A196057.P10013875871022916292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A224458 (n + 1) - A001222 (A324922 (n + 1)).toNat)

end

end A196057.P10013875871022916292

/-!
# A196058: Diameter (i.e., largest distance between two vertices) of the rooted tree with Matula-Goebel number n.

The programs for A196058, there is no canonical definition to state claims against.
-/

/-! ## A196058.P6190817392880516569

`A075167(A061775(A061775(n+1))^A198329(n+1))`
-/

namespace A196058.P6190817392880516569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (SequenceMachineLib.roundAway ((A061775 (A061775 (n + 1)).toNat : ℚ) ^ (A198329 (n + 1) : ℤ))).toNat

end

end A196058.P6190817392880516569

/-! ## A196058.P13595414984191677570

`A342507(n+1)+A285501(A324528(n+1))`
-/

namespace A196058.P13595414984191677570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1) + A285501 (A324528 (n + 1)).toNat

end

end A196058.P13595414984191677570

/-! ## A196058.P236342583050072010

`A212628(n+1)-A010054(A000204(n+1))`
-/

namespace A196058.P236342583050072010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212628 (n + 1) - A010054 (A000204 (n + 1)).toNat

end

end A196058.P236342583050072010

/-! ## A196058.P13995048271428242040

`A196055(A151764(n+1))%A061775(n+1)`
-/

namespace A196058.P13995048271428242040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196055 (A151764 (n + 1)).toNat) (A061775 (n + 1))

end

end A196058.P13995048271428242040

/-! ## A196058.P13059592657734607556

`A212628(n+1)-A000007(A001629(n))`
-/

namespace A196058.P13059592657734607556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212628 (n + 1) - A000007 (A001629 n).toNat

end

end A196058.P13059592657734607556

/-!
# A196059: Triangle read by rows: T(n,k) is the number of pairs of nodes at distance k in the rooted tree having Matula-Goebel number n (n>=2).

The programs for A196059, there is no canonical definition to state claims against.
-/

/-! ## A196059.P5638353316680864017

`A060500(xor(1, A073728(n)))`
-/

namespace A196059.P5638353316680864017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (Int.xor 1 (A073728 n)).toNat

end

end A196059.P5638353316680864017

/-! ## A196059.P14352186777481162754

`A060500(A073728(n)-A015435(n))`
-/

namespace A196059.P14352186777481162754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A073728 n - A015435 n).toNat

end

end A196059.P14352186777481162754

/-! ## A196059.P7921771218245698436

`A060500(A073728(n)-A033999(n))`
-/

namespace A196059.P7921771218245698436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A073728 n - A033999 n).toNat

end

end A196059.P7921771218245698436

/-! ## A196059.P8177365637521027315

`A060500(A073728(n)-∑[A280560(n)])`
-/

namespace A196059.P8177365637521027315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A073728 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196059.P8177365637521027315

/-! ## A196059.P493492856787661211

`A001221(A325862(3*n+2)+A122132(2*n+5))`
-/

namespace A196059.P493492856787661211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325862 (3 * n + 2) + A122132 (2 * n + 5)).toNat

end

end A196059.P493492856787661211

/-!
# A196061: The multiplicative Wiener index of the rooted tree with Matula-Goebel number n.

The programs for A196061, there is no canonical definition to state claims against.
-/

/-! ## A196061.P12511734511527673715

`A253139(A232970(n))`
-/

namespace A196061.P12511734511527673715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (A232970 n).toNat

end

end A196061.P12511734511527673715

/-! ## A196061.P3689096394267479162

`A253139(∑[A015448(n)])`
-/

namespace A196061.P3689096394267479162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196061.P3689096394267479162

/-! ## A196061.P5817468328361990340

`∏{e}[A145073(n), A145126(#)]`
-/

namespace A196061.P5817468328361990340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A145126 (Nat.factorization (f1 n).natAbs p)

end

end A196061.P5817468328361990340

/-! ## A196061.P1704553907878593848

`A253139((A000045(3*n+1)-1)/2+1)`
-/

namespace A196061.P1704553907878593848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (SequenceMachineLib.roundAway ((A000045 (3 * n + 1) - 1 : ℚ) / 2 + 1)).toNat

end

end A196061.P1704553907878593848

/-!
# A196062: Number of leaf-parents of the rooted tree with Matula-Goebel number n.

The programs for A196062, there is no canonical definition to state claims against.
-/

/-! ## A196062.P10567845407987533422

`A206498(n+1)-and(1, A049084(n+1))`
-/

namespace A196062.P10567845407987533422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206498 (n + 1) - Int.land 1 (A049084 (n + 1))

end

end A196062.P10567845407987533422

/-! ## A196062.P15408428808914741565

`A206498(n+1)-and(A000720(n+1), A010051(n+1))`
-/

namespace A196062.P15408428808914741565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206498 (n + 1) - Int.land (A000720 (n + 1)) (A010051 (n + 1))

end

end A196062.P15408428808914741565

/-! ## A196062.P12580497482239586022

`A206498(3*(n+1))-1`
-/

namespace A196062.P12580497482239586022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206498 (3 * (n + 1)) - 1

end

end A196062.P12580497482239586022

/-! ## A196062.P13549282791184859785

`A280193(2*n+1)+A206498(3*(n+1))`
-/

namespace A196062.P13549282791184859785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A206498 (3 * (n + 1))

end

end A196062.P13549282791184859785

/-! ## A196062.P16530135631442757264

`xor(-A206498(3*(n+1)), A008683(A023246(n+1)))`
-/

namespace A196062.P16530135631442757264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A206498 (3 * (n + 1))) (A008683 (A023246 (n + 1)).toNat)

end

end A196062.P16530135631442757264

/-!
# A196063: The Narumi-Katayama index of the rooted tree with Matula-Goebel number n.

The programs for A196063, there is no canonical definition to state claims against.
-/

/-! ## A196063.P7939508988086111539

`sqrt(A196065(n+1))`
-/

namespace A196063.P7939508988086111539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A196065 (n + 1) : ℝ)

end

end A196063.P7939508988086111539

/-! ## A196063.P12935815443384678916

`A214526(A196065(n+1)+1)`
-/

namespace A196063.P12935815443384678916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A196065 (n + 1) + 1).toNat

end

end A196063.P12935815443384678916

/-! ## A196063.P4121249920494277728

`A308778(A196065(n+1)+2)`
-/

namespace A196063.P4121249920494277728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (A196065 (n + 1) + 2).toNat

end

end A196063.P4121249920494277728

/-! ## A196063.P11751499094155094659

`A002262(2*A196065(n+1))`
-/

namespace A196063.P11751499094155094659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A196065 (n + 1)).toNat

end

end A196063.P11751499094155094659

/-! ## A196063.P1537579814565048303

`A003984(2*A196065(n+1))`
-/

namespace A196063.P1537579814565048303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (2 * A196065 (n + 1)).toNat

end

end A196063.P1537579814565048303

/-! ## A196063.P812331559486311065

`A000196(A196065(n+1)+char[1])`
-/

namespace A196063.P812331559486311065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A196065 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A196063.P812331559486311065

/-! ## A196063.P13953238895785871455

`A053615(or(char[1], A196065(n+1)))`
-/

namespace A196063.P13953238895785871455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196065 (n + 1))).toNat

end

end A196063.P13953238895785871455

/-! ## A196063.P15095638534886807788

`A053615(or(2, A196065(n+1))-2)`
-/

namespace A196063.P15095638534886807788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (Int.lor 2 (A196065 (n + 1)) - 2).toNat

end

end A196063.P15095638534886807788

/-! ## A196063.P15445939158879226383

`∑{d}[A000196(A196065(n+1)), A000010(#)]`
-/

namespace A196063.P15445939158879226383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A196065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A196063.P15445939158879226383

/-! ## A196063.P4275448559806363475

`lcm(A001222(n+1), A000196(A196065(n+1)))`
-/

namespace A196063.P4275448559806363475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (n + 1)) (A000196 (A196065 (n + 1)).toNat)

end

end A196063.P4275448559806363475

/-!
# A196064: The 2nd multiplicative Zagreb index of the rooted tree with Matula-Goebel number n.

The programs for A196064, there is no canonical definition to state claims against.
-/

/-! ## A196064.P17634654822593972939

`A324662(n)^A001221(A066245(n+1))`
-/

namespace A196064.P17634654822593972939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324662 n : ℚ) ^ (A001221 (A066245 (n + 1)).toNat : ℤ)

end

end A196064.P17634654822593972939

/-! ## A196064.P12864785995243082337

`A324662(n)^A043568(A042580(n))`
-/

namespace A196064.P12864785995243082337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324662 n : ℚ) ^ (A043568 (A042580 n).toNat : ℤ)

end

end A196064.P12864785995243082337

/-! ## A196064.P3333835373566267757

`A196046(n+1)^A196046(A196080(n))`
-/

namespace A196064.P3333835373566267757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196046 (n + 1) : ℚ) ^ (A196046 (A196080 n).toNat : ℤ)

end

end A196064.P3333835373566267757

/-! ## A196064.P16750993390546415668

`A196063(n+1)^A196080(A291117(n))`
-/

namespace A196064.P16750993390546415668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196063 (n + 1) : ℚ) ^ (A196080 (A291117 n).toNat : ℤ)

end

end A196064.P16750993390546415668

/-! ## A196064.P3404252203508619771

`A214526(A196065(n+1)+1)^A196080(A291117(n))`
-/

namespace A196064.P3404252203508619771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214526 (A196065 (n + 1) + 1).toNat : ℚ) ^ (A196080 (A291117 n).toNat : ℤ)

end

end A196064.P3404252203508619771

/-!
# A196065: The 1st multiplicative Zagreb index of the rooted tree with Matula-Goebel number n.

The programs for A196065, there is no canonical definition to state claims against.
-/

/-! ## A196065.P17543238377330087713

`A196063(n+1)²`
-/

namespace A196065.P17543238377330087713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196063 (n + 1) ^ 2

end

end A196065.P17543238377330087713

/-! ## A196065.P5495549302811245148

`A196063(2*n-(n-1))^2`
-/

namespace A196065.P5495549302811245148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196063 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2

end

end A196065.P5495549302811245148

/-! ## A196065.P5467072663601707371

`A002620(2*A196063(n+1))`
-/

namespace A196065.P5467072663601707371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A196063 (n + 1)).toNat

end

end A196065.P5467072663601707371

/-! ## A196065.P18157883146225111912

`A004652(2*A196063(n+1))`
-/

namespace A196065.P18157883146225111912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A196063 (n + 1)).toNat

end

end A196065.P18157883146225111912

/-! ## A196065.P17604356825338256100

`A181318(4*A196063(n+1))`
-/

namespace A196065.P17604356825338256100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 (4 * A196063 (n + 1)).toNat

end

end A196065.P17604356825338256100

/-! ## A196065.P4393334805452435695

`A325692(A196063(n+1)^2)`
-/

namespace A196065.P4393334805452435695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325692 (A196063 (n + 1) ^ 2).toNat

end

end A196065.P4393334805452435695

/-! ## A196065.P15521675649234336276

`A325693(A196063(n+1)^2)`
-/

namespace A196065.P15521675649234336276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325693 (A196063 (n + 1) ^ 2).toNat

end

end A196065.P15521675649234336276

/-! ## A196065.P13643332804840415232

`(A033999(n)*A196063(n+1))^2`
-/

namespace A196065.P13643332804840415232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n * A196063 (n + 1)) ^ 2

end

end A196065.P13643332804840415232

/-! ## A196065.P8200891591899772996

`(A196063(n+1)%A000096(n+1))^2`
-/

namespace A196065.P8200891591899772996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196063 (n + 1)) (A000096 (n + 1)) ^ 2

end

end A196065.P8200891591899772996

/-! ## A196065.P17217382871351559621

`A196063(2*n-(n-1))*A196063(n+1)`
-/

namespace A196065.P17217382871351559621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196063 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat * A196063 (n + 1)

end

end A196065.P17217382871351559621

/-!
# A196067: Number of pendant vertices in the rooted tree with Matula-Goebel number n.

The programs for A196067, the canonical program `A196067.P13275416248771146917` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196067 has offset 1).

The definition of A196067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196067.P13275416248771146917

`A109129(∑{p}[n+1, C(#, n)]+n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A196067

/-- `A109129(∑{p}[n+1, C(#, n)]+n+1)` -/
def P13275416248771146917.Spec : Prop :=
  ∀ n, P13275416248771146917.a n = A196067 (n + 1)

theorem P13275416248771146917.correct : P13275416248771146917.Spec := by
  intro n
  simp only [A196067, Nat.add_sub_cancel]

end A196067

/-! ## A196067.P17764179539252423289

`A109129(n+1)+char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A196067.P17764179539252423289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196067.P17764179539252423289

namespace A196067

/-- `A109129(n+1)+char[eq[1, ∑{e}[n+1, #]]]` -/
def P17764179539252423289.Spec : Prop :=
  ∀ n, P17764179539252423289.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P5552156837860001392

`val(A324922(∑{p}[n+1, C(#, n)]+1+n), 2)`
-/

namespace A196067.P5552156837860001392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324922 (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + 1 + n)).toNat 2

end

end A196067.P5552156837860001392

namespace A196067

/-- `val(A324922(∑{p}[n+1, C(#, n)]+1+n), 2)` -/
def P5552156837860001392.Spec : Prop :=
  ∀ n, (P5552156837860001392.a n : ℤ) = A196067 (n + 1)

end A196067

/-! ## A196067.P4518994115467558852

`A109129(3*(n+1))-∏{p}[n+1, C(#%n, #)]`
-/

namespace A196067.P4518994115467558852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (3 * (n + 1)) - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ)

end

end A196067.P4518994115467558852

namespace A196067

/-- `A109129(3*(n+1))-∏{p}[n+1, C(#%n, #)]` -/
def P4518994115467558852.Spec : Prop :=
  ∀ n, P4518994115467558852.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P17763997287947491206

`A109129(A143545(n+1))`
-/

namespace A196067.P17763997287947491206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A143545 (n + 1)).toNat

end

end A196067.P17763997287947491206

namespace A196067

/-- `A109129(A143545(n+1))` -/
def P17763997287947491206.Spec : Prop :=
  ∀ n, P17763997287947491206.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P961587041691028706

`A109129(A256415(n+1))`
-/

namespace A196067.P961587041691028706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A256415 (n + 1)).toNat

end

end A196067.P961587041691028706

namespace A196067

/-- `A109129(A256415(n+1))` -/
def P961587041691028706.Spec : Prop :=
  ∀ n, P961587041691028706.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P9119530280307336473

`A109129(n+1)+Δ[A230980(n)]`
-/

namespace A196067.P9119530280307336473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + (f1 (n + 1) - f1 n)

end

end A196067.P9119530280307336473

namespace A196067

/-- `A109129(n+1)+Δ[A230980(n)]` -/
def P9119530280307336473.Spec : Prop :=
  ∀ n, P9119530280307336473.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P14394029472320506774

`A109129(n+1)+char[A086553(n)]`
-/

namespace A196067.P14394029472320506774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086553 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196067.P14394029472320506774

namespace A196067

/-- `A109129(n+1)+char[A086553(n)]` -/
def P14394029472320506774.Spec : Prop :=
  ∀ n, P14394029472320506774.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P5547547519935799148

`A109129(n+1)+A010051(n+1)`
-/

namespace A196067.P5547547519935799148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + A010051 (n + 1)

end

end A196067.P5547547519935799148

namespace A196067

/-- `A109129(n+1)+A010051(n+1)` -/
def P5547547519935799148.Spec : Prop :=
  ∀ n, P5547547519935799148.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P17401594478065260355

`A109129(n+1)+char[A006093(n+1)]`
-/

namespace A196067.P17401594478065260355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196067.P17401594478065260355

namespace A196067

/-- `A109129(n+1)+char[A006093(n+1)]` -/
def P17401594478065260355.Spec : Prop :=
  ∀ n, P17401594478065260355.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P16458423106121617726

`A109129(n+1)+char[record[A000010(n+1)]]`
-/

namespace A196067.P16458423106121617726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196067.P16458423106121617726

namespace A196067

/-- `A109129(n+1)+char[record[A000010(n+1)]]` -/
def P16458423106121617726.Spec : Prop :=
  ∀ n, P16458423106121617726.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P7739210701991925352

`A109129(n+1)+char[A000040(n+1)-1]`
-/

namespace A196067.P7739210701991925352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196067.P7739210701991925352

namespace A196067

/-- `A109129(n+1)+char[A000040(n+1)-1]` -/
def P7739210701991925352.Spec : Prop :=
  ∀ n, P7739210701991925352.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P12663882469475022926

`A109129(n+1)+char[A006530(n+2)-1]`
-/

namespace A196067.P12663882469475022926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196067.P12663882469475022926

namespace A196067

/-- `A109129(n+1)+char[A006530(n+2)-1]` -/
def P12663882469475022926.Spec : Prop :=
  ∀ n, P12663882469475022926.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P963359342426406510

`A109129(n+1)+char[eq[1, A001222(n+1)]]`
-/

namespace A196067.P963359342426406510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196067.P963359342426406510

namespace A196067

/-- `A109129(n+1)+char[eq[1, A001222(n+1)]]` -/
def P963359342426406510.Spec : Prop :=
  ∀ n, P963359342426406510.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P9025834180915847323

`A109129(n+1)+A015725(A056897(n))`
-/

namespace A196067.P9025834180915847323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + A015725 (A056897 n).toNat

end

end A196067.P9025834180915847323

namespace A196067

/-- `A109129(n+1)+A015725(A056897(n))` -/
def P9025834180915847323.Spec : Prop :=
  ∀ n, P9025834180915847323.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P4179648582278813230

`A109129(n+1)-A259506(A029832(n+1))`
-/

namespace A196067.P4179648582278813230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) - A259506 (A029832 (n + 1)).toNat

end

end A196067.P4179648582278813230

namespace A196067

/-- `A109129(n+1)-A259506(A029832(n+1))` -/
def P4179648582278813230.Spec : Prop :=
  ∀ n, P4179648582278813230.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P1775917825461575714

`A109129(n+1)+char[A000010(A014963(n+1))]`
-/

namespace A196067.P1775917825461575714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A196067.P1775917825461575714

namespace A196067

/-- `A109129(n+1)+char[A000010(A014963(n+1))]` -/
def P1775917825461575714.Spec : Prop :=
  ∀ n, P1775917825461575714.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P13064316574695210923

`A109129(n+1)+val(A000040(A000005(n+1)), 3)`
-/

namespace A196067.P13064316574695210923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + (SequenceMachineLib.valuation (A000040 (A000005 (n + 1)).toNat).toNat 3 : ℤ)

end

end A196067.P13064316574695210923

namespace A196067

/-- `A109129(n+1)+val(A000040(A000005(n+1)), 3)` -/
def P13064316574695210923.Spec : Prop :=
  ∀ n, P13064316574695210923.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P1905570431898896942

`A109129(n+1)+∑{d}[A001222(n+1), A008683(#)]`
-/

namespace A196067.P1905570431898896942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A196067.P1905570431898896942

namespace A196067

/-- `A109129(n+1)+∑{d}[A001222(n+1), A008683(#)]` -/
def P1905570431898896942.Spec : Prop :=
  ∀ n, P1905570431898896942.a n = A196067 (n + 1)

end A196067

/-! ## A196067.P16240624874431826728

`A109129(n+1)+A049084(n+1)/A003963(n+1)`
-/

namespace A196067.P16240624874431826728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109129 (n + 1) : ℚ) + (A049084 (n + 1) : ℚ) / (A003963 (n + 1) : ℚ)

end

end A196067.P16240624874431826728

namespace A196067

/-- `A109129(n+1)+A049084(n+1)/A003963(n+1)` -/
def P16240624874431826728.Spec : Prop :=
  ∀ n, P16240624874431826728.a n = (A196067 (n + 1) : ℚ)

end A196067

/-!
# A196068: Visitation length of the rooted tree with Matula-Goebel number n.

The programs for A196068, there is no canonical definition to state claims against.
-/

/-! ## A196068.P15200628434975970095

`A196047(n+1)+A061775(n+1)`
-/

namespace A196068.P15200628434975970095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) + A061775 (n + 1)

end

end A196068.P15200628434975970095

/-! ## A196068.P5464171319327380969

`A196047(n+1)+A196050(n+1)+1`
-/

namespace A196068.P5464171319327380969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (n + 1) + (A196050 (n + 1) + 1)

end

end A196068.P5464171319327380969

/-! ## A196068.P815991364865198123

`A196051(2*(n+1))-A196051(n+1)`
-/

namespace A196068.P815991364865198123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196051 (2 * (n + 1)) - A196051 (n + 1)

end

end A196068.P815991364865198123

/-! ## A196068.P5974239280548869811

`A196047(A000040(n+1))`
-/

namespace A196068.P5974239280548869811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (A000040 (n + 1)).toNat

end

end A196068.P5974239280548869811

/-! ## A196068.P977926844691541924

`A196047(A008578(n+2))`
-/

namespace A196068.P977926844691541924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (A008578 (n + 2)).toNat

end

end A196068.P977926844691541924

/-! ## A196068.P16864580292826867470

`A196047(A182986(n+2))`
-/

namespace A196068.P16864580292826867470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (A182986 (n + 2)).toNat

end

end A196068.P16864580292826867470

/-! ## A196068.P17073058817824429744

`A196047(record[A006530(n+2)])`
-/

namespace A196068.P17073058817824429744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196068.P17073058817824429744

/-! ## A196068.P7280192804460212265

`A196047(record[A014963(n+2)])`
-/

namespace A196068.P7280192804460212265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196068.P7280192804460212265

/-! ## A196068.P2754881389504235222

`A196047(record[A020639(n+2)])`
-/

namespace A196068.P2754881389504235222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196068.P2754881389504235222

/-! ## A196068.P9556882379166916752

`A061775(n+1)+A343006(n+1)+A196048(n+1)`
-/

namespace A196068.P9556882379166916752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) + (A343006 (n + 1) + A196048 (n + 1))

end

end A196068.P9556882379166916752

/-!
# A196069: a(n) = A001209(n) + 1.

The programs for A196069, there is no canonical definition to state claims against.
-/

/-! ## A196069.P9932480464310850703

`A057211(a(ceil((1-n)/n)))+A001209(n)` with `a(0)=1`
-/

namespace A196069.P9932480464310850703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057211 (a ⌈(1 - (n : ℤ) : ℚ) / (n : ℚ)⌉.toNat).toNat + A001209 n

end

end A196069.P9932480464310850703

/-! ## A196069.P11819349808835972604

`A196416(A155212(n)+12)`
-/

namespace A196069.P11819349808835972604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (A155212 n + 12).toNat

end

end A196069.P11819349808835972604

/-! ## A196069.P14696510796045279063

`A196416(eq[4, A002262(n)])`
-/

namespace A196069.P14696510796045279063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196069.P14696510796045279063

/-!
# A196071: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,3,2,1,4 for x=0,1,2,3,4.

The programs for A196071, there is no canonical definition to state claims against.
-/

/-! ## A196071.P14211574406532652161

`A196078(∑[4*n]+1)`
-/

namespace A196071.P14211574406532652161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196071.P14211574406532652161

/-! ## A196071.P5822335607344399560

`A196078(A001844(n))+char[9]`
-/

namespace A196071.P5822335607344399560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196071.P5822335607344399560

/-! ## A196071.P4781868004497576211

`A326527(n)+A196078(A001844(n))`
-/

namespace A196071.P4781868004497576211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326527 n + A196078 (A001844 n).toNat

end

end A196071.P4781868004497576211

/-! ## A196071.P8285824524073908039

`A067059(n)*A196078(A001844(n))`
-/

namespace A196071.P8285824524073908039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A196078 (A001844 n).toNat

end

end A196071.P8285824524073908039

/-! ## A196071.P12194695820379815146

`A196078(A001844(n))*A196879(n)`
-/

namespace A196071.P12194695820379815146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A001844 n).toNat * A196879 n

end

end A196071.P12194695820379815146

/-!
# A196072: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,2,1,4 for x=0,1,2,3,4.

The programs for A196072, the canonical program `A196072.P10079596084051648527` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196072 has offset 1).

The definition of A196072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196072.P10079596084051648527

`a(n-2)+a(n-3)+2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A196072

/-- `a(n-2)+a(n-3)+2*a(n-5)` -/
def P10079596084051648527.Spec : Prop :=
  ∀ n, (P10079596084051648527.a n : ℤ) = A196072 (n + 1)

theorem P10079596084051648527.correct : P10079596084051648527.Spec := by
  intro n
  simp only [A196072, Nat.add_sub_cancel]

end A196072

/-! ## A196072.P4705046356662817274

`A196078(∑[n+1]+2)`
-/

namespace A196072.P4705046356662817274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196072.P4705046356662817274

namespace A196072

/-- `A196078(∑[n+1]+2)` -/
def P4705046356662817274.Spec : Prop :=
  ∀ n, P4705046356662817274.a n = A196072 (n + 1)

end A196072

/-! ## A196072.P12748480082781949266

`or(char[1], A196078(A133263(n+1)))`
-/

namespace A196072.P12748480082781949266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196078 (A133263 (n + 1)).toNat)

end

end A196072.P12748480082781949266

namespace A196072

/-- `or(char[1], A196078(A133263(n+1)))` -/
def P12748480082781949266.Spec : Prop :=
  ∀ n, P12748480082781949266.a n = A196072 (n + 1)

end A196072

/-! ## A196072.P7577279209849972773

`char[A007318(n)]*A196078(A133263(n+1))`
-/

namespace A196072.P7577279209849972773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A196078 (A133263 (n + 1)).toNat

end

end A196072.P7577279209849972773

namespace A196072

/-- `char[A007318(n)]*A196078(A133263(n+1))` -/
def P7577279209849972773.Spec : Prop :=
  ∀ n, P7577279209849972773.a n = A196072 (n + 1)

end A196072

/-! ## A196072.P7542733545515566521

`A007318(C(2, n))*A196078(A133263(n+1))`
-/

namespace A196072.P7542733545515566521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A196078 (A133263 (n + 1)).toNat

end

end A196072.P7542733545515566521

namespace A196072

/-- `A007318(C(2, n))*A196078(A133263(n+1))` -/
def P7542733545515566521.Spec : Prop :=
  ∀ n, P7542733545515566521.a n = A196072 (n + 1)

end A196072

/-!
# A196073: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,2,1,4 for x=0,1,2,3,4.

The programs for A196073, there is no canonical definition to state claims against.
-/

/-! ## A196073.P12168358615534628406

`A196078(∑[n+2]+4)`
-/

namespace A196073.P12168358615534628406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196073.P12168358615534628406

/-! ## A196073.P8540812011153218361

`A196078(A046691(n)+7)+char[18]`
-/

namespace A196073.P8540812011153218361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196073.P8540812011153218361

/-! ## A196073.P1529402143388224507

`A196078(A167614(n+1))%A027437(n)`
-/

namespace A196073.P1529402143388224507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196078 (A167614 (n + 1)).toNat) (A027437 n)

end

end A196073.P1529402143388224507

/-! ## A196073.P13777976911797171905

`lcm(A033999(n), A196078(A167614(n+1)))`
-/

namespace A196073.P13777976911797171905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A196078 (A167614 (n + 1)).toNat)

end

end A196073.P13777976911797171905

/-! ## A196073.P6948331948800859121

`∑{d}[A196078(A167614(n+1)), A000010(#)]`
-/

namespace A196073.P6948331948800859121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A196073.P6948331948800859121

/-!
# A196074: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,2,1,4 for x=0,1,2,3,4.

The programs for A196074, there is no canonical definition to state claims against.
-/

/-! ## A196074.P1654115585887272685

`A196078(∑[n+3]+7)`
-/

namespace A196074.P1654115585887272685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A196074.P1654115585887272685

/-! ## A196074.P10277724986845806193

`or(char[2], A196078(A055999(n)+10))`
-/

namespace A196074.P10277724986845806193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196078 (A055999 n + 10).toNat)

end

end A196074.P10277724986845806193

/-! ## A196074.P14916270249603126008

`A196078(A167614(n+2)+1)+char[16]`
-/

namespace A196074.P14916270249603126008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196074.P14916270249603126008

/-! ## A196074.P14029611104244136871

`A196078(A055999(n)+10)%A039301(n)`
-/

namespace A196074.P14029611104244136871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196078 (A055999 n + 10).toNat) (A039301 n)

end

end A196074.P14029611104244136871

/-! ## A196074.P5244450199392439610

`A196078(A055999(n)+10)+A005926(2*n)`
-/

namespace A196074.P5244450199392439610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A055999 n + 10).toNat + A005926 (2 * n)

end

end A196074.P5244450199392439610

/-!
# A196075: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,2,1,4 for x=0,1,2,3,4.

The programs for A196075, there is no canonical definition to state claims against.
-/

/-! ## A196075.P7534131411066925569

`A196078(∑[n+4]+11)`
-/

namespace A196075.P7534131411066925569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A196075.P7534131411066925569

/-! ## A196075.P8488510724029162958

`A196078(A374005(n+1))+A007814(2*n+5)`
-/

namespace A196075.P8488510724029162958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A374005 (n + 1)).toNat + A007814 (2 * n + 5)

end

end A196075.P8488510724029162958

/-!
# A196076: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,2,1,4 for x=0,1,2,3,4.

The programs for A196076, there is no canonical definition to state claims against.
-/

/-! ## A196076.P4816277035704259796

`A196078(A374007(n+1))`
-/

namespace A196076.P4816277035704259796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A374007 (n + 1)).toNat

end

end A196076.P4816277035704259796

/-! ## A196076.P17555777674533261488

`A196078(Δ[A264443(n)]+10)`
-/

namespace A196076.P17555777674533261488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (f1 (n + 1) - f1 n + 10).toNat

end

end A196076.P17555777674533261488

/-! ## A196076.P4037816180396026428

`record[A196078(A161680(n)+6)]`
-/

namespace A196076.P4037816180396026428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A161680 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196076.P4037816180396026428

/-! ## A196076.P17785454381696014360

`A196078(A167499(n+4)+1)`
-/

namespace A196076.P17785454381696014360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A167499 (n + 4) + 1).toNat

end

end A196076.P17785454381696014360

/-! ## A196076.P13728257869540145827

`A196078(A000096(n+4)+7)`
-/

namespace A196076.P13728257869540145827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A000096 (n + 4) + 7).toNat

end

end A196076.P13728257869540145827

/-!
# A196077: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,3,2,1,4 for x=0,1,2,3,4.

The programs for A196077, there is no canonical definition to state claims against.
-/

/-! ## A196077.P9028995647991083159

`A196078(A374008(n+1))`
-/

namespace A196077.P9028995647991083159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A374008 (n + 1)).toNat

end

end A196077.P9028995647991083159

/-! ## A196077.P14513882773936507521

`A196078(eq[11, A066657(n)])`
-/

namespace A196077.P14513882773936507521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196077.P14513882773936507521

/-! ## A196077.P456103610795649915

`A196078(A166136(n+5)+1)`
-/

namespace A196077.P456103610795649915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A166136 (n + 5) + 1).toNat

end

end A196077.P456103610795649915

/-! ## A196077.P13229217809988937273

`A196078(A000096(n+5)+8)`
-/

namespace A196077.P13229217809988937273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A000096 (n + 5) + 8).toNat

end

end A196077.P13229217809988937273

/-! ## A196077.P11663300155094318929

`A196078(A000217(n+6)+7)`
-/

namespace A196077.P11663300155094318929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196078 (A000217 (n + 6) + 7).toNat

end

end A196077.P11663300155094318929

/-!
# A196079: Difference between the largest and smallest inverse of totient function.

The programs for A196079, there is no canonical definition to state claims against.
-/

/-! ## A196079.P168324651641713929

`A006511(n+1)-A002181(n+1)`
-/

namespace A196079.P168324651641713929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 1) - A002181 (n + 1)

end

end A196079.P168324651641713929

/-! ## A196079.P16166290182740424153

`A057635(A002202(n+1))-A002181(n+1)`
-/

namespace A196079.P16166290182740424153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A002202 (n + 1)).toNat - A002181 (n + 1)

end

end A196079.P16166290182740424153

/-! ## A196079.P17246691295047439644

`A032447(∑[A058277(n+1)])-A002181(n+1)`
-/

namespace A196079.P17246691295047439644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A002181 (n + 1)

end

end A196079.P17246691295047439644

/-! ## A196079.P16293725788224208872

`A028476(2*A002181(n+1))-A002181(n+1)`
-/

namespace A196079.P16293725788224208872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (2 * A002181 (n + 1)).toNat - A002181 (n + 1)

end

end A196079.P16293725788224208872

/-! ## A196079.P61276736653515296

`A028476(A002181(n+1)+A002181(n+1))-A002181(n+1)`
-/

namespace A196079.P61276736653515296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028476 (A002181 (n + 1) + A002181 (n + 1)).toNat - A002181 (n + 1)

end

end A196079.P61276736653515296

/-! ## A196079.P8473085323333036864

`A057635(A002202(n+1))-A074987(A006511(n+1))`
-/

namespace A196079.P8473085323333036864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A002202 (n + 1)).toNat - A074987 (A006511 (n + 1)).toNat

end

end A196079.P8473085323333036864

/-!
# A196080: Numerators of the sum of the n-th partial sums of the expansions of e and 1/e.

The programs for A196080, there is no canonical definition to state claims against.
-/

/-! ## A196080.P8251905287608762414

`A008619(p?[A344262(floor(n/2))])`
-/

namespace A196080.P8251905287608762414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344262 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196080.P8251905287608762414

/-!
# A196081: Dungeons and Dragons Ability Modifier Sequence.

The programs for A196081, the canonical program `A196081.P6496589036047059124` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196081 has offset 0).

The definition of A196081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196081.P6496589036047059124

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=10, a(1)=0, a(2)=11, a(3)=0, a(4)=12, a(5)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A196081

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P6496589036047059124.Spec : Prop :=
  ∀ n, P6496589036047059124.a n = A196081 n

theorem P6496589036047059124.correct : P6496589036047059124.Spec := by
  intro n
  simp only [A196081]

end A196081

/-! ## A196081.P119194883746678440

`a(n-2)+1-char[or(3, n)]` with `a(0)=10, a(1)=0`
-/

namespace A196081.P119194883746678440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [10, 0] fun n a =>
  a (n - 2) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196081.P119194883746678440

namespace A196081

/-- `a(n-2)+1-char[or(3, n)]` -/
def P119194883746678440.Spec : Prop :=
  ∀ n, P119194883746678440.a n = A196081 n

end A196081

/-! ## A196081.P5977262835239400432

`a(n-2)+1-A011765(n+1)` with `a(0)=10, a(1)=0`
-/

namespace A196081.P5977262835239400432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 0] fun n a =>
  a (n - 2) + (1 - A011765 (n + 1))

end

end A196081.P5977262835239400432

namespace A196081

/-- `a(n-2)+1-A011765(n+1)` -/
def P5977262835239400432.Spec : Prop :=
  ∀ n, P5977262835239400432.a n = A196081 n

end A196081

/-! ## A196081.P2974680878013459942

`A106466(n)+or(8, A033999(n))`
-/

namespace A196081.P2974680878013459942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 n + Int.lor 8 (A033999 n)

end

end A196081.P2974680878013459942

namespace A196081

/-- `A106466(n)+or(8, A033999(n))` -/
def P2974680878013459942.Spec : Prop :=
  ∀ n, P2974680878013459942.a n = A196081 n

end A196081

/-! ## A196081.P4761778082531717221

`abs(A014681(n+6)-A006368(n+10))`
-/

namespace A196081.P4761778082531717221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014681 (n + 6) - A006368 (n + 10)|

end

end A196081.P4761778082531717221

namespace A196081

/-- `abs(A014681(n+6)-A006368(n+10))` -/
def P4761778082531717221.Spec : Prop :=
  ∀ n, P4761778082531717221.a n = A196081 n

end A196081

/-! ## A196081.P5349672951269293271

`A002265(lcm(2, n+41)-41)`
-/

namespace A196081.P5349672951269293271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Nat.lcm 2 (n + 41) - 41)

end

end A196081.P5349672951269293271

namespace A196081

/-- `A002265(lcm(2, n+41)-41)` -/
def P5349672951269293271.Spec : Prop :=
  ∀ n, P5349672951269293271.a n = A196081 n

end A196081

/-!
# A196082: Greatest residue of x^n (mod n), x=0..n-1.

The programs for A196082, there is no canonical definition to state claims against.
-/

/-! ## A196082.P1907487801920174002

`and(n, A324170(3*n+2))`
-/

namespace A196082.P1907487801920174002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A324170 (3 * n + 2))

end

end A196082.P1907487801920174002

/-! ## A196082.P10390604255307302550

`and(n, A007456(A289525(n)))`
-/

namespace A196082.P10390604255307302550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A007456 (A289525 n).toNat)

end

end A196082.P10390604255307302550

/-! ## A196082.P12588091290345057643

`and(n, A035032(Δ[A131898(n)]))`
-/

namespace A196082.P12588091290345057643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A035032 (f1 (n + 1) - f1 n).toNat)

end

end A196082.P12588091290345057643

/-! ## A196082.P14692314498764839505

`and(n, A047322(A006323(n+1)))`
-/

namespace A196082.P14692314498764839505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A047322 (A006323 (n + 1)).toNat)

end

end A196082.P14692314498764839505

/-! ## A196082.P8928717516705262996

`and(n, A007913(A083643(n+1)))`
-/

namespace A196082.P8928717516705262996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A007913 (A083643 (n + 1)).toNat)

end

end A196082.P8928717516705262996

/-!
# A196087: Sum of all parts minus the total numbers of parts of all partitions of n.

The programs for A196087, there is no canonical definition to state claims against.
-/

/-! ## A196087.P14718502529239499944

`∑[A207035(n+1)]`
-/

namespace A196087.P14718502529239499944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196087.P14718502529239499944

/-! ## A196087.P337921362968125263

`∑[A138880(n+1)-A138135(n+1)]`
-/

namespace A196087.P337921362968125263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) - A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196087.P337921362968125263

/-! ## A196087.P7527550204409960957

`A138880(n+1)+A228816(n+1)-A006128(n+1)`
-/

namespace A196087.P7527550204409960957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) + (A228816 (n + 1) - A006128 (n + 1))

end

end A196087.P7527550204409960957

/-! ## A196087.P15981741086095731855

`A066186(n+1)-A006128(n+1)`
-/

namespace A196087.P15981741086095731855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A006128 (n + 1)

end

end A196087.P15981741086095731855

/-! ## A196087.P18267481106035035677

`A194552(n+1)-A096541(n+1)`
-/

namespace A196087.P18267481106035035677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194552 (n + 1) - A096541 (n + 1)

end

end A196087.P18267481106035035677

/-! ## A196087.P13651614348424965766

`A162329(n+1)-A220477(n+1)`
-/

namespace A196087.P13651614348424965766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162329 (n + 1) - A220477 (n + 1)

end

end A196087.P13651614348424965766

/-! ## A196087.P5661972597622276082

`A228816(n+2)-A093694(n+1)`
-/

namespace A196087.P5661972597622276082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228816 (n + 2) - A093694 (n + 1)

end

end A196087.P5661972597622276082

/-! ## A196087.P16094216566519771004

`A066186(n+1)-(A096541(n+1)+A000070(n))`
-/

namespace A196087.P16094216566519771004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A096541 (n + 1) + A000070 n)

end

end A196087.P16094216566519771004

/-! ## A196087.P10755469884775013139

`A000041(n+1)+A066186(n+1)-A093694(n+1)`
-/

namespace A196087.P10755469884775013139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A066186 (n + 1) - A093694 (n + 1))

end

end A196087.P10755469884775013139

/-! ## A196087.P1699164020097074893

`A066186(n+1)-(A066898(n+1)+A066897(n+1))`
-/

namespace A196087.P1699164020097074893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A066898 (n + 1) + A066897 (n + 1))

end

end A196087.P1699164020097074893

/-! ## A196087.P6439577752871151670

`A046746(n+1)+A182707(n+1)-A006128(n+1)`
-/

namespace A196087.P6439577752871151670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (n + 1) + (A182707 (n + 1) - A006128 (n + 1))

end

end A196087.P6439577752871151670

/-! ## A196087.P15763353564029487646

`A038040(n+1)+A220486(n+1)-A006128(n+1)`
-/

namespace A196087.P15763353564029487646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + (A220486 (n + 1) - A006128 (n + 1))

end

end A196087.P15763353564029487646

/-! ## A196087.P84967875848839789

`A066186(n+1)-(A220477(n+1)+A000203(n+1))`
-/

namespace A196087.P84967875848839789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A220477 (n + 1) + A000203 (n + 1))

end

end A196087.P84967875848839789

/-! ## A196087.P7712502947531111532

`A228816(n+2)-(A006128(n+1)+A000041(n+1))`
-/

namespace A196087.P7712502947531111532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228816 (n + 2) - (A006128 (n + 1) + A000041 (n + 1))

end

end A196087.P7712502947531111532

/-! ## A196087.P18147929807951767764

`A207380(n+1)-A210970(n+1)`
-/

namespace A196087.P18147929807951767764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207380 (n + 1) - A210970 (n + 1)

end

end A196087.P18147929807951767764

/-! ## A196087.P6881453910460672793

`A338969(n+1)-(A225596(n+1)+A093694(n+1))`
-/

namespace A196087.P6881453910460672793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338969 (n + 1) - (A225596 (n + 1) + A093694 (n + 1))

end

end A196087.P6881453910460672793

/-! ## A196087.P7679679610799835859

`A066186(n+1)+A284870(n)-A284870(n+1)`
-/

namespace A196087.P7679679610799835859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A284870 n - A284870 (n + 1))

end

end A196087.P7679679610799835859

/-! ## A196087.P6452326402146012956

`A182707(n+1)-A116686(n+1)`
-/

namespace A196087.P6452326402146012956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) - A116686 (n + 1)

end

end A196087.P6452326402146012956

/-! ## A196087.P14735137811380172514

`A058397(n+1)-A000041(n+1)`
-/

namespace A196087.P14735137811380172514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058397 (n + 1) - A000041 (n + 1)

end

end A196087.P14735137811380172514

/-! ## A196087.P7560811894387332765

`A058397(n+1)+A000070(n)-A000070(n+1)`
-/

namespace A196087.P7560811894387332765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058397 (n + 1) + (A000070 n - A000070 (n + 1))

end

end A196087.P7560811894387332765

/-!
# A196092: Positive integers b for which there is a primitive (5/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196092, there is no canonical definition to state claims against.
-/

/-! ## A196092.P17039151401145022694

`A196089(A127936(n+1)^A001876(n))`
-/

namespace A196092.P17039151401145022694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196089 (SequenceMachineLib.roundAway ((A127936 (n + 1) : ℚ) ^ (A001876 n : ℤ))).toNat

end

end A196092.P17039151401145022694

/-! ## A196092.P12330630651025850313

`A196089(A127936(n+1)^A376554(n))`
-/

namespace A196092.P12330630651025850313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196089 (SequenceMachineLib.roundAway ((A127936 (n + 1) : ℚ) ^ (A376554 n : ℤ))).toNat

end

end A196092.P12330630651025850313

/-!
# A196093: Positive integers c for which there is a primitive (5/3)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196093, there is no canonical definition to state claims against.
-/

/-! ## A196093.P603957029084032004

`A196090(record[A279649(n+1)-A181787(n)])`
-/

namespace A196093.P603957029084032004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279649 (n + 1) - A181787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196093.P603957029084032004

/-! ## A196093.P15180668924301244224

`A196090(A184117(n+1)*A325553(n+1))`
-/

namespace A196093.P15180668924301244224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196090 (A184117 (n + 1) * A325553 (n + 1)).toNat

end

end A196093.P15180668924301244224

/-!
# A196095: Prime numbers that cannot become prime by chopping off any of the initial consecutive digits.

The programs for A196095, there is no canonical definition to state claims against.
-/

/-! ## A196095.P16978232502884405267

`A045468(lt[A002522(n), A063115(n)])`
-/

namespace A196095.P16978232502884405267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196095.P16978232502884405267

/-! ## A196095.P5977657421630200980

`A045468(A194424(n+1)%A173055(n+1))`
-/

namespace A196095.P5977657421630200980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (Int.tmod (A194424 (n + 1)) (A173055 (n + 1))).toNat

end

end A196095.P5977657421630200980

/-! ## A196095.P9806432870676229975

`A045468(lt[A003114(n), A332213(n+1)])`
-/

namespace A196095.P9806432870676229975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196095.P9806432870676229975

/-! ## A196095.P5537456914328594832

`A038872(lt[A028388(n+1), A105049(3*n+1)])`
-/

namespace A196095.P5537456914328594832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105049 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196095.P5537456914328594832

/-! ## A196095.P15513590735267098654

`∩[A047209(n+1), A086472(n+1)]`
-/

namespace A196095.P15513590735267098654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196095.P15513590735267098654

/-!
# A196096: Occurrences of '11' in base 3 expansion of n.

The programs for A196096, the canonical program `A196096.P11601543418601441363` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196096 has offset 0).

The definition of A196096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196096.P12999720540509076153

`∑{e}[A290091(n), #-1]`
-/

namespace A196096.P12999720540509076153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A196096.P12999720540509076153

namespace A196096

/-- `∑{e}[A290091(n), #-1]` -/
def P12999720540509076153.Spec : Prop :=
  ∀ n, P12999720540509076153.a n = A196096 n

end A196096

/-! ## A196096.P11601543418601441363

`A014081(A289813(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A196096

/-- `A014081(A289813(n))` -/
def P11601543418601441363.Spec : Prop :=
  ∀ n, P11601543418601441363.a n = A196096 n

theorem P11601543418601441363.correct : P11601543418601441363.Spec := by
  intro n
  simp only [A196096]

end A196096

/-! ## A196096.P1033747974520566232

`A046660(A290091(n))`
-/

namespace A196096.P1033747974520566232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A290091 n).toNat

end

end A196096.P1033747974520566232

namespace A196096

/-- `A046660(A290091(n))` -/
def P1033747974520566232.Spec : Prop :=
  ∀ n, P1033747974520566232.a n = A196096 n

end A196096

/-! ## A196096.P14076552840691215816

`A081603(4*A244042(n))`
-/

namespace A196096.P14076552840691215816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (4 * A244042 n).toNat

end

end A196096.P14076552840691215816

namespace A196096

/-- `A081603(4*A244042(n))` -/
def P14076552840691215816.Spec : Prop :=
  ∀ n, P14076552840691215816.a n = A196096 n

end A196096

/-! ## A196096.P13665600505899659472

`A107782(A003817(n)-A289813(n))`
-/

namespace A196096.P13665600505899659472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 (A003817 n - A289813 n).toNat

end

end A196096.P13665600505899659472

namespace A196096

/-- `A107782(A003817(n)-A289813(n))` -/
def P13665600505899659472.Spec : Prop :=
  ∀ n, P13665600505899659472.a n = A196096 n

end A196096

/-! ## A196096.P9367890593691155105

`A062756(n)-A061395(A290091(n))`
-/

namespace A196096.P9367890593691155105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n - A061395 (A290091 n).toNat

end

end A196096.P9367890593691155105

namespace A196096

/-- `A062756(n)-A061395(A290091(n))` -/
def P9367890593691155105.Spec : Prop :=
  ∀ n, P9367890593691155105.a n = A196096 n

end A196096

/-! ## A196096.P13318910175269697844

`A196272(A023717(n))`
-/

namespace A196096.P13318910175269697844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 (A023717 n).toNat

end

end A196096.P13318910175269697844

namespace A196096

/-- `A196272(A023717(n))` -/
def P13318910175269697844.Spec : Prop :=
  ∀ n, P13318910175269697844.a n = A196096 n

end A196096

/-! ## A196096.P13035641395477332353

`A196272(A023713(n+1))`
-/

namespace A196096.P13035641395477332353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 (A023713 (n + 1)).toNat

end

end A196096.P13035641395477332353

namespace A196096

/-- `A196272(A023713(n+1))` -/
def P13035641395477332353.Spec : Prop :=
  ∀ n, P13035641395477332353.a n = A196096 n

end A196096

/-! ## A196096.P1693250039352497259

`A330167(n)-A316829(n)`
-/

namespace A196096.P1693250039352497259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 n - A316829 n

end

end A196096.P1693250039352497259

namespace A196096

/-- `A330167(n)-A316829(n)` -/
def P1693250039352497259.Spec : Prop :=
  ∀ n, P1693250039352497259.a n = A196096 n

end A196096

/-! ## A196096.P1094468042977991148

`A088917(n)+A330167(n)-1`
-/

namespace A196096.P1094468042977991148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n + (A330167 n - 1)

end

end A196096.P1094468042977991148

namespace A196096

/-- `A088917(n)+A330167(n)-1` -/
def P1094468042977991148.Spec : Prop :=
  ∀ n, P1094468042977991148.a n = A196096 n

end A196096

