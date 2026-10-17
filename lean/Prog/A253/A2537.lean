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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A253700: Number of (3+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253700, there is no canonical definition to state claims against.
-/

/-! ## A253700.P13386974176854975030

`A253698(∑[n+2]+4)`
-/

namespace A253700.P13386974176854975030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253700.P13386974176854975030

/-! ## A253700.P15731023767377218716

`lcm(2, A253698(A167614(n+1)))`
-/

namespace A253700.P15731023767377218716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253698 (A167614 (n + 1)).toNat)

end

end A253700.P15731023767377218716

/-! ## A253700.P4707229670970434583

`A253698(A167614(n+1))+A185246(n)`
-/

namespace A253700.P4707229670970434583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A167614 (n + 1)).toNat + A185246 n

end

end A253700.P4707229670970434583

/-! ## A253700.P10081504049408023947

`A253698(A167614(n+1))%A063433(n)`
-/

namespace A253700.P10081504049408023947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253698 (A167614 (n + 1)).toNat) (A063433 n)

end

end A253700.P10081504049408023947

/-! ## A253700.P6659932009322785329

`A253698(A167614(n+1))*A262079(n+1)`
-/

namespace A253700.P6659932009322785329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A167614 (n + 1)).toNat * A262079 (n + 1)

end

end A253700.P6659932009322785329

/-!
# A253701: Number of (4+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253701, there is no canonical definition to state claims against.
-/

/-! ## A253701.P3330676639916360730

`A253698(∑[n+3]+7)`
-/

namespace A253701.P3330676639916360730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253701.P3330676639916360730

/-! ## A253701.P12013626730838136699

`lcm(2, A253698(A055999(n)+10))`
-/

namespace A253701.P12013626730838136699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253698 (A055999 n + 10).toNat)

end

end A253701.P12013626730838136699

/-! ## A253701.P7741672601917335118

`record[A253698(n+10)/A193923(n+6)]`
-/

namespace A253701.P7741672601917335118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253698 (n + 10) : ℚ) / (A193923 (n + 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253701.P7741672601917335118

/-! ## A253701.P7097226607528456300

`A000041(gcd(n, n+1))*A253698(A055999(n)+10)`
-/

namespace A253701.P7097226607528456300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A253698 (A055999 n + 10).toNat

end

end A253701.P7097226607528456300

/-! ## A253701.P7115956484746935335

`A253698(A055999(n)+10)+A008683(9*18*(n+1))`
-/

namespace A253701.P7115956484746935335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A055999 n + 10).toNat + A008683 (9 * (18 * (n + 1)))

end

end A253701.P7115956484746935335

/-!
# A253702: Number of (5+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253702, there is no canonical definition to state claims against.
-/

/-! ## A253702.P12372728246623575868

`A253698(A167499(n+3))`
-/

namespace A253702.P12372728246623575868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A167499 (n + 3)).toNat

end

end A253702.P12372728246623575868

/-! ## A253702.P6853765376825218060

`A253698(A056000(n)+15)`
-/

namespace A253702.P6853765376825218060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A056000 n + 15).toNat

end

end A253702.P6853765376825218060

/-! ## A253702.P11666507055315988153

`A253698(A000217(n+4)+5)`
-/

namespace A253702.P11666507055315988153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000217 (n + 4) + 5).toNat

end

end A253702.P11666507055315988153

/-! ## A253702.P733389559243340490

`A253698(A027379(n+2)+8)`
-/

namespace A253702.P733389559243340490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A027379 (n + 2) + 8).toNat

end

end A253702.P733389559243340490

/-! ## A253702.P17711007082382219858

`A253698(A055998(n+2)+8)`
-/

namespace A253702.P17711007082382219858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A055998 (n + 2) + 8).toNat

end

end A253702.P17711007082382219858

/-!
# A253703: Number of (6+1) X (n+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253703, there is no canonical definition to state claims against.
-/

/-! ## A253703.P6741094734589232876

`A253698(A167614(n+4)+3)`
-/

namespace A253703.P6741094734589232876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A167614 (n + 4) + 3).toNat

end

end A253703.P6741094734589232876

/-! ## A253703.P11570181431563973850

`A253698(A133263(n+5)+4)`
-/

namespace A253703.P11570181431563973850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A133263 (n + 5) + 4).toNat

end

end A253703.P11570181431563973850

/-! ## A253703.P8482947359091694159

`A253698(A000124(n+5)+5)`
-/

namespace A253703.P8482947359091694159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000124 (n + 5) + 5).toNat

end

end A253703.P8482947359091694159

/-! ## A253703.P18235007105927230007

`A253698(A000217(n+5)+6)`
-/

namespace A253703.P18235007105927230007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000217 (n + 5) + 6).toNat

end

end A253703.P18235007105927230007

/-! ## A253703.P9728405570935536987

`A253698(A161680(n+6)+6)`
-/

namespace A253703.P9728405570935536987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A161680 (n + 6) + 6).toNat

end

end A253703.P9728405570935536987

/-!
# A253704: Number of (7+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253704, there is no canonical definition to state claims against.
-/

/-! ## A253704.P1184223540990640529

`A253698(A167499(n+5)+2)`
-/

namespace A253704.P1184223540990640529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A167499 (n + 5) + 2).toNat

end

end A253704.P1184223540990640529

/-! ## A253704.P14454603057186460483

`A253698(A000124(n+6)+6)`
-/

namespace A253704.P14454603057186460483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000124 (n + 6) + 6).toNat

end

end A253704.P14454603057186460483

/-! ## A253704.P16687386609075699430

`A253698(A000217(n+6)+7)`
-/

namespace A253704.P16687386609075699430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A000217 (n + 6) + 7).toNat

end

end A253704.P16687386609075699430

/-! ## A253704.P14066229461525143040

`A253698(A161680(n+7)+7)`
-/

namespace A253704.P14066229461525143040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A161680 (n + 7) + 7).toNat

end

end A253704.P14066229461525143040

/-! ## A253704.P4780504535354891926

`A253698(A001489(2*n+7)+A000096(n+7))`
-/

namespace A253704.P4780504535354891926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A001489 (2 * n + 7) + A000096 (n + 7)).toNat

end

end A253704.P4780504535354891926

/-!
# A253705: Indices of primes in the 8th-order Fibonacci number sequence, A079262.

The programs for A253705, there is no canonical definition to state claims against.
-/

/-! ## A253705.P16677918973205880121

`A072204(A346490(n))+3`
-/

namespace A253705.P16677918973205880121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072204 (A346490 n).toNat + 3

end

end A253705.P16677918973205880121

/-!
# A253707: Numbers M(n) which are the number of terms in the sums of consecutive cubed integers equaling a squared integer, b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, for a first term b(n) being an odd squared integer (A016754).

The programs for A253707, the canonical program `A253707.P7398552600159190090` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253707 has offset 1).

The definition of A253707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253707.P7398552600159190090

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=17, a(1)=98, a(2)=291, a(3)=644`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253707

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7398552600159190090.Spec : Prop :=
  ∀ n, P7398552600159190090.a n = A253707 (n + 1)

theorem P7398552600159190090.correct : P7398552600159190090.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel]

end A253707

/-! ## A253707.P16335754441632157259

`∑[16*∑[3*n+1]+1]`
-/

namespace A253707.P16335754441632157259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253707.P16335754441632157259

namespace A253707

/-- `∑[16*∑[3*n+1]+1]` -/
def P16335754441632157259.Spec : Prop :=
  ∀ n, (P16335754441632157259.a n : ℤ) = A253707 (n + 1)

end A253707

/-! ## A253707.P2888592200863021966

`16*(n+1)*C(n+2, 2)+n+1`
-/

namespace A253707.P2888592200863021966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (n + 1) * Nat.choose (n + 2) 2 + n + 1

end

end A253707.P2888592200863021966

namespace A253707

/-- `16*(n+1)*C(n+2, 2)+n+1` -/
def P2888592200863021966.Spec : Prop :=
  ∀ n, (P2888592200863021966.a n : ℤ) = A253707 (n + 1)

end A253707

/-! ## A253707.P3536116598363061125

`lcm(n+1, (n+2)*Δ[(2*n+1)²]+1)`
-/

namespace A253707.P3536116598363061125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1)

end

end A253707.P3536116598363061125

namespace A253707

/-- `lcm(n+1, (n+2)*Δ[(2*n+1)²]+1)` -/
def P3536116598363061125.Spec : Prop :=
  ∀ n, (P3536116598363061125.a n : ℤ) = A253707 (n + 1)

end A253707

/-! ## A253707.P2556397201195780873

`(n+2)*A081585(n+1)-1`
-/

namespace A253707.P2556397201195780873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A081585 (n + 1) - 1

end

end A253707.P2556397201195780873

namespace A253707

/-- `(n+2)*A081585(n+1)-1` -/
def P2556397201195780873.Spec : Prop :=
  ∀ n, P2556397201195780873.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P9860348439770575499

`(n+1)*A275543(2*n+3)`
-/

namespace A253707.P9860348439770575499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A275543 (2 * n + 3)

end

end A253707.P9860348439770575499

namespace A253707

/-- `(n+1)*A275543(2*n+3)` -/
def P9860348439770575499.Spec : Prop :=
  ∀ n, P9860348439770575499.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P5175980320593679474

`(n+1)*(A005570(n+1)-n)`
-/

namespace A253707.P5175980320593679474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005570 (n + 1) - (n : ℤ))

end

end A253707.P5175980320593679474

namespace A253707

/-- `(n+1)*(A005570(n+1)-n)` -/
def P5175980320593679474.Spec : Prop :=
  ∀ n, P5175980320593679474.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P13033494795893236916

`∑[∑[16*A016777(n)]]+1+n`
-/

namespace A253707.P13033494795893236916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A253707.P13033494795893236916

namespace A253707

/-- `∑[∑[16*A016777(n)]]+1+n` -/
def P13033494795893236916.Spec : Prop :=
  ∀ n, P13033494795893236916.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P12085670356366174751

`(4*A046092(n+1)+1)*(n+1)`
-/

namespace A253707.P12085670356366174751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A046092 (n + 1) + 1) * (n + 1 : ℤ)

end

end A253707.P12085670356366174751

namespace A253707

/-- `(4*A046092(n+1)+1)*(n+1)` -/
def P12085670356366174751.Spec : Prop :=
  ∀ n, P12085670356366174751.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P16629298074271022023

`(16*A000217(n+1)+1)*(n+1)`
-/

namespace A253707.P16629298074271022023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * A000217 (n + 1) + 1) * (n + 1 : ℤ)

end

end A253707.P16629298074271022023

namespace A253707

/-- `(16*A000217(n+1)+1)*(n+1)` -/
def P16629298074271022023.Spec : Prop :=
  ∀ n, P16629298074271022023.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P17762946832835652803

`(n+1)*(A194268(n+1)+n+1)`
-/

namespace A253707.P17762946832835652803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A194268 (n + 1) + (n + 1 : ℤ))

end

end A253707.P17762946832835652803

namespace A253707

/-- `(n+1)*(A194268(n+1)+n+1)` -/
def P17762946832835652803.Spec : Prop :=
  ∀ n, P17762946832835652803.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P17185769222392027728

`A178574(n+1)+A079588(n)`
-/

namespace A253707.P17185769222392027728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178574 (n + 1) + A079588 n

end

end A253707.P17185769222392027728

namespace A253707

/-- `A178574(n+1)+A079588(n)` -/
def P17185769222392027728.Spec : Prop :=
  ∀ n, P17185769222392027728.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P6122567228035836351

`A216110(n+1)-A207449(n+1)`
-/

namespace A253707.P6122567228035836351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216110 (n + 1) - A207449 (n + 1)

end

end A253707.P6122567228035836351

namespace A253707

/-- `A216110(n+1)-A207449(n+1)` -/
def P6122567228035836351.Spec : Prop :=
  ∀ n, P6122567228035836351.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P14712263588534320885

`(n+1)*A069129(n+2)`
-/

namespace A253707.P14712263588534320885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069129 (n + 2)

end

end A253707.P14712263588534320885

namespace A253707

/-- `(n+1)*A069129(n+2)` -/
def P14712263588534320885.Spec : Prop :=
  ∀ n, P14712263588534320885.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P12290188782805868310

`(n+1)*(A035008(n+1)+1)`
-/

namespace A253707.P12290188782805868310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A035008 (n + 1) + 1)

end

end A253707.P12290188782805868310

namespace A253707

/-- `(n+1)*(A035008(n+1)+1)` -/
def P12290188782805868310.Spec : Prop :=
  ∀ n, P12290188782805868310.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P4529520216664840754

`2*A084367(n+1)-(n+1)`
-/

namespace A253707.P4529520216664840754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084367 (n + 1) - (n + 1 : ℤ)

end

end A253707.P4529520216664840754

namespace A253707

/-- `2*A084367(n+1)-(n+1)` -/
def P4529520216664840754.Spec : Prop :=
  ∀ n, P4529520216664840754.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P2076457735754896912

`(n+1)*(A108099(n+1)-3)`
-/

namespace A253707.P2076457735754896912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A108099 (n + 1) - 3)

end

end A253707.P2076457735754896912

namespace A253707

/-- `(n+1)*(A108099(n+1)-3)` -/
def P2076457735754896912.Spec : Prop :=
  ∀ n, P2076457735754896912.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P16550762462244794126

`A102094(n+1)+A033951(n+1)`
-/

namespace A253707.P16550762462244794126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102094 (n + 1) + A033951 (n + 1)

end

end A253707.P16550762462244794126

namespace A253707

/-- `A102094(n+1)+A033951(n+1)` -/
def P16550762462244794126.Spec : Prop :=
  ∀ n, P16550762462244794126.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P5329910670208312619

`A316224(n+1)+A001105(n+1)`
-/

namespace A253707.P5329910670208312619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 (n + 1) + A001105 (n + 1)

end

end A253707.P5329910670208312619

namespace A253707

/-- `A316224(n+1)+A001105(n+1)` -/
def P5329910670208312619.Spec : Prop :=
  ∀ n, P5329910670208312619.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P6212413062915398490

`A002378(n+1)+A316224(n+1)+A002378(n)`
-/

namespace A253707.P6212413062915398490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + (A316224 (n + 1) + A002378 n)

end

end A253707.P6212413062915398490

namespace A253707

/-- `A002378(n+1)+A316224(n+1)+A002378(n)` -/
def P6212413062915398490.Spec : Prop :=
  ∀ n, P6212413062915398490.a n = A253707 (n + 1)

end A253707

/-!
# A253708: Numbers c(n) whose squares are equal to the sums of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, for a first term b(n) being an odd squared integer (A016754).

The programs for A253708, the canonical program `A253708.P8469064889741060914` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253708 has offset 1).

The definition of A253708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253708.P11935561659646244293

`sqrt(A253709(n+1))`
-/

namespace A253708.P11935561659646244293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253709 (n + 1) : ℝ)

end

end A253708.P11935561659646244293

namespace A253708

/-- `sqrt(A253709(n+1))` -/
def P11935561659646244293.Spec : Prop :=
  ∀ n, P11935561659646244293.a n = (A253708 (n + 1) : ℝ)

end A253708

/-! ## A253708.P8469064889741060914

`∑[A175114(n+1)-(A117216(n+1)+n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A253708

/-- `∑[A175114(n+1)-(A117216(n+1)+n+1)]` -/
def P8469064889741060914.Spec : Prop :=
  ∀ n, P8469064889741060914.a n = A253708 (n + 1)

theorem P8469064889741060914.correct : P8469064889741060914.Spec := by
  intro n
  simp only [A253708, Nat.add_sub_cancel]

end A253708

/-! ## A253708.P16184990738564449713

`A175113(n+1)-(A175110(n+1)+∑[n+1])`
-/

namespace A253708.P16184990738564449713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175113 (n + 1) - (A175110 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A253708.P16184990738564449713

namespace A253708

/-- `A175113(n+1)-(A175110(n+1)+∑[n+1])` -/
def P16184990738564449713.Spec : Prop :=
  ∀ n, P16184990738564449713.a n = A253708 (n + 1)

end A253708

/-! ## A253708.P11047859114440926951

`root(A253709(n+1), A133265(A133265(n)))`
-/

namespace A253708.P11047859114440926951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253709 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A253708.P11047859114440926951

namespace A253708

/-- `root(A253709(n+1), A133265(A133265(n)))` -/
def P11047859114440926951.Spec : Prop :=
  ∀ n, P11047859114440926951.a n = (A253708 (n + 1) : ℝ)

end A253708

/-! ## A253708.P16105841590745285876

`A045943(n+1)+A033996(n+1)*A046092(A046092(n+1))`
-/

namespace A253708.P16105841590745285876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) + A033996 (n + 1) * A046092 (A046092 (n + 1)).toNat

end

end A253708.P16105841590745285876

namespace A253708

/-- `A045943(n+1)+A033996(n+1)*A046092(A046092(n+1))` -/
def P16105841590745285876.Spec : Prop :=
  ∀ n, P16105841590745285876.a n = A253708 (n + 1)

end A253708

/-!
# A253709: Integer squares c^2 that are equal to the sums of M (A253707) consecutive cubed integers equaling a squared integer, b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, for a first term b(n) being an odd squared integer (A016754).

The programs for A253709, the canonical program `A253709.P15907870004999877611` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253709 has offset 1).

The definition of A253709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253709.P15907870004999877611

`A253708(n+1)²`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A253709

/-- `A253708(n+1)²` -/
def P15907870004999877611.Spec : Prop :=
  ∀ n, P15907870004999877611.a n = A253709 (n + 1)

theorem P15907870004999877611.correct : P15907870004999877611.Spec := by
  intro n
  simp only [A253709, Nat.add_sub_cancel]

end A253709

/-! ## A253709.P5175757959636053190

`A253708(n+1)^(2%A273315(n))`
-/

namespace A253709.P5175757959636053190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253708 (n + 1) : ℚ) ^ (Int.tmod 2 (A273315 n) : ℤ)

end

end A253709.P5175757959636053190

namespace A253709

/-- `A253708(n+1)^(2%A273315(n))` -/
def P5175757959636053190.Spec : Prop :=
  ∀ n, P5175757959636053190.a n = (A253709 (n + 1) : ℚ)

end A253709

/-! ## A253709.P6634606573633458762

`A253708(n+1)^gcd(2, A253681(n+1))`
-/

namespace A253709.P6634606573633458762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253708 (n + 1) ^ Int.gcd 2 (A253681 (n + 1))

end

end A253709.P6634606573633458762

namespace A253709

/-- `A253708(n+1)^gcd(2, A253681(n+1))` -/
def P6634606573633458762.Spec : Prop :=
  ∀ n, P6634606573633458762.a n = A253709 (n + 1)

end A253709

/-! ## A253709.P4443768024012714253

`A253708(n+1)^A000005(A177716(n+1))`
-/

namespace A253709.P4443768024012714253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253708 (n + 1) : ℚ) ^ (A000005 (A177716 (n + 1)).toNat : ℤ)

end

end A253709.P4443768024012714253

namespace A253709

/-- `A253708(n+1)^A000005(A177716(n+1))` -/
def P4443768024012714253.Spec : Prop :=
  ∀ n, P4443768024012714253.a n = (A253709 (n + 1) : ℚ)

end A253709

/-! ## A253709.P4102784716428273734

`record[A253708(A152271(n))²]`
-/

namespace A253709.P4102784716428273734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253708 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253709.P4102784716428273734

namespace A253709

/-- `record[A253708(A152271(n))²]` -/
def P4102784716428273734.Spec : Prop :=
  ∀ n, P4102784716428273734.a n = A253709 (n + 1)

end A253709

/-! ## A253709.P12200439201605777237

`record[A253708(A152271(n))]*A253708(n+1)`
-/

namespace A253709.P12200439201605777237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253708 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A253708 (n + 1)

end

end A253709.P12200439201605777237

namespace A253709

/-- `record[A253708(A152271(n))]*A253708(n+1)` -/
def P12200439201605777237.Spec : Prop :=
  ∀ n, P12200439201605777237.a n = A253709 (n + 1)

end A253709

/-! ## A253709.P12892057606555782581

`A253708(n+1)^A000005(A253717(n+1))`
-/

namespace A253709.P12892057606555782581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253708 (n + 1) : ℚ) ^ (A000005 (A253717 (n + 1)).toNat : ℤ)

end

end A253709.P12892057606555782581

namespace A253709

/-- `A253708(n+1)^A000005(A253717(n+1))` -/
def P12892057606555782581.Spec : Prop :=
  ∀ n, P12892057606555782581.a n = (A253709 (n + 1) : ℚ)

end A253709

/-! ## A253709.P7156674302364692685

`A253708(n+1)^A000005(A001359(n+1))`
-/

namespace A253709.P7156674302364692685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253708 (n + 1) : ℚ) ^ (A000005 (A001359 (n + 1)).toNat : ℤ)

end

end A253709.P7156674302364692685

namespace A253709

/-- `A253708(n+1)^A000005(A001359(n+1))` -/
def P7156674302364692685.Spec : Prop :=
  ∀ n, P7156674302364692685.a n = (A253709 (n + 1) : ℚ)

end A253709

/-! ## A253709.P6686002086317883949

`A253708(n+1)^ceil(atan(A163392(n+1)))`
-/

namespace A253709.P6686002086317883949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253708 (n + 1) : ℚ) ^ (⌈Real.arctan (A163392 (n + 1) : ℝ)⌉ : ℤ)

end

end A253709.P6686002086317883949

namespace A253709

/-- `A253708(n+1)^ceil(atan(A163392(n+1)))` -/
def P6686002086317883949.Spec : Prop :=
  ∀ n, P6686002086317883949.a n = (A253709 (n + 1) : ℚ)

end A253709

/-! ## A253709.P2742221933206289639

`A253708(n+1)^A000005(A005529(n+1))`
-/

namespace A253709.P2742221933206289639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253708 (n + 1) : ℚ) ^ (A000005 (A005529 (n + 1)).toNat : ℤ)

end

end A253709.P2742221933206289639

namespace A253709

/-- `A253708(n+1)^A000005(A005529(n+1))` -/
def P2742221933206289639.Spec : Prop :=
  ∀ n, P2742221933206289639.a n = (A253709 (n + 1) : ℚ)

end A253709

/-!
# A253710: Second partial sums of tenth powers (A008454).

The programs for A253710, the canonical program `A253710.P12300004362229327767` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253710 has offset 1).

The definition of A253710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253710.P12300004362229327767

`∑[∑[(n+1)^10]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253710

/-- `∑[∑[(n+1)^10]]` -/
def P12300004362229327767.Spec : Prop :=
  ∀ n, (P12300004362229327767.a n : ℤ) = A253710 (n + 1)

theorem P12300004362229327767.correct : P12300004362229327767.Spec := by
  intro n
  simp only [A253710, Nat.add_sub_cancel]

end A253710

/-! ## A253710.P10356676866587665778

`∑[((n+1)*(n+1)²²)²]+a(n-1)` with `a(0)=1`
-/

namespace A253710.P10356676866587665778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253710.P10356676866587665778

namespace A253710

/-- `∑[((n+1)*(n+1)²²)²]+a(n-1)` -/
def P10356676866587665778.Spec : Prop :=
  ∀ n, (P10356676866587665778.a n : ℤ) = A253710 (n + 1)

end A253710

/-! ## A253710.P3482692572901595254

`A023002(n+1)+∑[A023002(n)]`
-/

namespace A253710.P3482692572901595254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253710.P3482692572901595254

namespace A253710

/-- `A023002(n+1)+∑[A023002(n)]` -/
def P3482692572901595254.Spec : Prop :=
  ∀ n, P3482692572901595254.a n = A253710 (n + 1)

end A253710

/-! ## A253710.P6476626373316298218

`A000007(n+1)+∑[∑[A008454(n+1)]]`
-/

namespace A253710.P6476626373316298218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253710.P6476626373316298218

namespace A253710

/-- `A000007(n+1)+∑[∑[A008454(n+1)]]` -/
def P6476626373316298218.Spec : Prop :=
  ∀ n, P6476626373316298218.a n = A253710 (n + 1)

end A253710

/-! ## A253710.P18219123787289091132

`∑[∑[A008454(n+1)]]+2%A000034(n)`
-/

namespace A253710.P18219123787289091132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod 2 (A000034 n)

end

end A253710.P18219123787289091132

namespace A253710

/-- `∑[∑[A008454(n+1)]]+2%A000034(n)` -/
def P18219123787289091132.Spec : Prop :=
  ∀ n, P18219123787289091132.a n = A253710 (n + 1)

end A253710

/-! ## A253710.P5632494754582157725

`(A000027(n+1)-n)*∑[∑[A008454(n+1)]]`
-/

namespace A253710.P5632494754582157725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253710.P5632494754582157725

namespace A253710

/-- `(A000027(n+1)-n)*∑[∑[A008454(n+1)]]` -/
def P5632494754582157725.Spec : Prop :=
  ∀ n, P5632494754582157725.a n = A253710 (n + 1)

end A253710

/-!
# A253711: Second partial sums of 11th powers (A008455).

The programs for A253711, the canonical program `A253711.P2683188712739049574` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253711 has offset 1).

The definition of A253711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253711.P2683188712739049574

`∑[∑[(n+1)^11]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253711

/-- `∑[∑[(n+1)^11]]` -/
def P2683188712739049574.Spec : Prop :=
  ∀ n, (P2683188712739049574.a n : ℤ) = A253711 (n + 1)

theorem P2683188712739049574.correct : P2683188712739049574.Spec := by
  intro n
  simp only [A253711, Nat.add_sub_cancel]

end A253711

/-! ## A253711.P16296803009213839549

`∑[∑[A258812(n+1)]]+C(n+2, 2)`
-/

namespace A253711.P16296803009213839549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258812 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 2) 2 : ℤ)

end

end A253711.P16296803009213839549

namespace A253711

/-- `∑[∑[A258812(n+1)]]+C(n+2, 2)` -/
def P16296803009213839549.Spec : Prop :=
  ∀ n, P16296803009213839549.a n = A253711 (n + 1)

end A253711

/-! ## A253711.P8727221369464454855

`A123095(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A253711.P8727221369464454855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123095 (n + 1) + a (n - 1)

end

end A253711.P8727221369464454855

namespace A253711

/-- `A123095(n+1)+a(n-1)` -/
def P8727221369464454855.Spec : Prop :=
  ∀ n, P8727221369464454855.a n = A253711 (n + 1)

end A253711

/-! ## A253711.P11144152112722305484

`∑[A008455(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A253711.P11144152112722305484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253711.P11144152112722305484

namespace A253711

/-- `∑[A008455(n+1)]+a(n-1)` -/
def P11144152112722305484.Spec : Prop :=
  ∀ n, P11144152112722305484.a n = A253711 (n + 1)

end A253711

/-! ## A253711.P7353324244120207678

`A123095(n+1)+∑[A123095(n)]`
-/

namespace A253711.P7353324244120207678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123095 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253711.P7353324244120207678

namespace A253711

/-- `A123095(n+1)+∑[A123095(n)]` -/
def P7353324244120207678.Spec : Prop :=
  ∀ n, P7353324244120207678.a n = A253711 (n + 1)

end A253711

/-! ## A253711.P6390535846748581817

`∑[∑[A008455(n+1)]]*A171905(n+8)`
-/

namespace A253711.P6390535846748581817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A171905 (n + 8)

end

end A253711.P6390535846748581817

namespace A253711

/-- `∑[∑[A008455(n+1)]]*A171905(n+8)` -/
def P6390535846748581817.Spec : Prop :=
  ∀ n, P6390535846748581817.a n = A253711 (n + 1)

end A253711

/-! ## A253711.P9254541357325013935

`∑[∑[A008455(n+1)]]*A000034(2*n)`
-/

namespace A253711.P9254541357325013935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (2 * n)

end

end A253711.P9254541357325013935

namespace A253711

/-- `∑[∑[A008455(n+1)]]*A000034(2*n)` -/
def P9254541357325013935.Spec : Prop :=
  ∀ n, P9254541357325013935.a n = A253711 (n + 1)

end A253711

/-!
# A253712: Second partial sums of 12th powers (A008456).

The programs for A253712, the canonical program `A253712.P14098593100287134039` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253712 has offset 1).

The definition of A253712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253712.P14098593100287134039

`∑[∑[(n+1)^12]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253712

/-- `∑[∑[(n+1)^12]]` -/
def P14098593100287134039.Spec : Prop :=
  ∀ n, (P14098593100287134039.a n : ℤ) = A253712 (n + 1)

theorem P14098593100287134039.correct : P14098593100287134039.Spec := by
  intro n
  simp only [A253712, Nat.add_sub_cancel]

end A253712

/-! ## A253712.P11563316500116992470

`∑[((n+1)*(n+1)²)²²]+a(n-1)` with `a(0)=1`
-/

namespace A253712.P11563316500116992470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 1) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253712.P11563316500116992470

namespace A253712

/-- `∑[((n+1)*(n+1)²)²²]+a(n-1)` -/
def P11563316500116992470.Spec : Prop :=
  ∀ n, (P11563316500116992470.a n : ℤ) = A253712 (n + 1)

end A253712

/-! ## A253712.P14898935729321196281

`∑[n+1]+∑[∑[A123868(n+1)]]`
-/

namespace A253712.P14898935729321196281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A253712.P14898935729321196281

namespace A253712

/-- `∑[n+1]+∑[∑[A123868(n+1)]]` -/
def P14898935729321196281.Spec : Prop :=
  ∀ n, P14898935729321196281.a n = A253712 (n + 1)

end A253712

/-! ## A253712.P5846702352486218948

`A123094(n+1)+∑[A123094(n)]`
-/

namespace A253712.P5846702352486218948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123094 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253712.P5846702352486218948

namespace A253712

/-- `A123094(n+1)+∑[A123094(n)]` -/
def P5846702352486218948.Spec : Prop :=
  ∀ n, P5846702352486218948.a n = A253712 (n + 1)

end A253712

/-! ## A253712.P10025280721036254034

`∑[∑[A106318((n+1)²)]]/2`
-/

namespace A253712.P10025280721036254034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A253712.P10025280721036254034

namespace A253712

/-- `∑[∑[A106318((n+1)²)]]/2` -/
def P10025280721036254034.Spec : Prop :=
  ∀ n, P10025280721036254034.a n = (A253712 (n + 1) : ℚ)

end A253712

/-! ## A253712.P857702762823784015

`∑[∑[A001014((n+1)²)]-1]+1+n`
-/

namespace A253712.P857702762823784015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A253712.P857702762823784015

namespace A253712

/-- `∑[∑[A001014((n+1)²)]-1]+1+n` -/
def P857702762823784015.Spec : Prop :=
  ∀ n, P857702762823784015.a n = A253712 (n + 1)

end A253712

/-!
# A253713: Second partial sums of 13th powers (A010801).

The programs for A253713, the canonical program `A253713.P8336801481300813554` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253713 has offset 1).

The definition of A253713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253713.P8336801481300813554

`∑[∑[(n+1)^13]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253713

/-- `∑[∑[(n+1)^13]]` -/
def P8336801481300813554.Spec : Prop :=
  ∀ n, (P8336801481300813554.a n : ℤ) = A253713 (n + 1)

theorem P8336801481300813554.correct : P8336801481300813554.Spec := by
  intro n
  simp only [A253713, Nat.add_sub_cancel]

end A253713

/-! ## A253713.P4087615133630946322

`and(∑[A181134(n+1)], -1)`
-/

namespace A253713.P4087615133630946322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A253713.P4087615133630946322

namespace A253713

/-- `and(∑[A181134(n+1)], -1)` -/
def P4087615133630946322.Spec : Prop :=
  ∀ n, P4087615133630946322.a n = A253713 (n + 1)

end A253713

/-! ## A253713.P8340994126665851408

`A181134(n+1)+∑[A181134(n)]`
-/

namespace A253713.P8340994126665851408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181134 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253713.P8340994126665851408

namespace A253713

/-- `A181134(n+1)+∑[A181134(n)]` -/
def P8340994126665851408.Spec : Prop :=
  ∀ n, P8340994126665851408.a n = A253713 (n + 1)

end A253713

/-!
# A253715: Indices of centered heptagonal numbers (A069099) which are also hexagonal numbers (A000384).

The programs for A253715, there is no canonical definition to state claims against.
-/

/-! ## A253715.P17930912143472585687

`A253879(and(1, n)+2*n+1)`
-/

namespace A253715.P17930912143472585687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (Nat.land 1 n + 2 * n + 1)

end

end A253715.P17930912143472585687

/-! ## A253715.P16948765244405313885

`A253879(∑[2-A033999(n)])`
-/

namespace A253715.P16948765244405313885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253715.P16948765244405313885

/-! ## A253715.P6358369501724697778

`A253879(A000035(n)+Δ[n²])`
-/

namespace A253715.P6358369501724697778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (A000035 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A253715.P6358369501724697778

/-! ## A253715.P9547478046633810305

`A253879(record[∏[A033999(n)]+n])`
-/

namespace A253715.P9547478046633810305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253715.P9547478046633810305

/-! ## A253715.P13476716296684492659

`A253879(∑[A033999(n+1)+2])`
-/

namespace A253715.P13476716296684492659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253715.P13476716296684492659

/-!
# A253716: 

The programs for A253716, there is no canonical definition to state claims against.
-/

/-! ## A253716.P11215227090381430331

`A253880(comp[or(2, n)-1]+1)`
-/

namespace A253716.P11215227090381430331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253880 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A253716.P11215227090381430331

/-!
# A253717: Primes equal to their partial cyclical digital sum numbers.

The programs for A253717, there is no canonical definition to state claims against.
-/

/-! ## A253717.P4994211844686270644

`p?[A106039(n+1)]`
-/

namespace A253717.P4994211844686270644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253717.P4994211844686270644

/-! ## A253717.P16199030585537603046

`filter[A106039(n+2), A010051(#)]`
-/

namespace A253717.P16199030585537603046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A253717.P16199030585537603046

/-! ## A253717.P1668949181603319211

`∩[A000040(n+1), A106039(n+1)]`
-/

namespace A253717.P1668949181603319211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253717.P1668949181603319211

/-! ## A253717.P3175506844856762198

`filter[A106039(n+3), A080339(#)]`
-/

namespace A253717.P3175506844856762198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A253717.P3175506844856762198

/-! ## A253717.P10237459579060931285

`eq[A257778(n)+1-n, A168036(n)]`
-/

namespace A253717.P10237459579060931285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n + 1 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253717.P10237459579060931285

/-! ## A253717.P13104021773950108445

`∩[A000720(A006450(n+1)), A106039(n+1)]`
-/

namespace A253717.P13104021773950108445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006450 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253717.P13104021773950108445

/-! ## A253717.P4323918693446077250

`∩[A106039(n+1), A240960(n+1)]`
-/

namespace A253717.P4323918693446077250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253717.P4323918693446077250

/-! ## A253717.P3489473901379118781

`∩[A106039(n+1), A385492(n+1)]`
-/

namespace A253717.P3489473901379118781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253717.P3489473901379118781

/-!
# A253718: Number h such that (h,0) is n steps from (0,0), where steps are as follows: (x,y)->(x-r, y) if r > 0, and (x,y)->(y, r/3) otherwise, where r = x mod 3.

The programs for A253718, the canonical program `A253718.P7304962258111176939` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253718 has offset 0).

The definition of A253718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253718.P7304962258111176939

`a(A002264(n))+n²%3+2` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253718

/-- `a(A002264(n))+n²%3+2` -/
def P7304962258111176939.Spec : Prop :=
  ∀ n, (P7304962258111176939.a n : ℤ) = A253718 n

theorem P7304962258111176939.correct : P7304962258111176939.Spec := by
  intro n
  simp only [A253718]

end A253718

/-! ## A253718.P12892874489591055823

`A374054(A374363(n))`
-/

namespace A253718.P12892874489591055823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374054 (A374363 n).toNat

end

end A253718.P12892874489591055823

namespace A253718

/-- `A374054(A374363(n))` -/
def P12892874489591055823.Spec : Prop :=
  ∀ n, P12892874489591055823.a n = A253718 n

end A253718

/-! ## A253718.P10309706694779628508

`A131294(n)+a(A002264(n))` with `a(0)=0`
-/

namespace A253718.P10309706694779628508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131294 n + a (A002264 n).toNat

end

end A253718.P10309706694779628508

namespace A253718

/-- `A131294(n)+a(A002264(n))` -/
def P10309706694779628508.Spec : Prop :=
  ∀ n, P10309706694779628508.a n = A253718 n

end A253718

/-! ## A253718.P16123323955675461304

`∑{digits}[A007089(n), A000005(A207488(#+1))]-2`
-/

namespace A253718.P16123323955675461304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000005 (A207488 (x + 1)).toNat).sum - 2

end

end A253718.P16123323955675461304

namespace A253718

/-- `∑{digits}[A007089(n), A000005(A207488(#+1))]-2` -/
def P16123323955675461304.Spec : Prop :=
  ∀ n, P16123323955675461304.a n = A253718 n

end A253718

/-! ## A253718.P15625871504517636421

`A253281(∑[n]+1)`
-/

namespace A253718.P15625871504517636421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253718.P15625871504517636421

namespace A253718

/-- `A253281(∑[n]+1)` -/
def P15625871504517636421.Spec : Prop :=
  ∀ n, P15625871504517636421.a n = A253718 n

end A253718

/-!
# A253720: a(n) = length of row n in A253676 and A254068, assuming the 3x+1 (or Collatz) conjecture.

The programs for A253720, there is no canonical definition to state claims against.
-/

/-! ## A253720.P8628605915924356640

`A160541(8*n+2)`
-/

namespace A253720.P8628605915924356640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (8 * n + 2)

end

end A253720.P8628605915924356640

/-! ## A253720.P13066485963725769309

`A213181(32*n+8)`
-/

namespace A253720.P13066485963725769309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (32 * n + 8)

end

end A253720.P13066485963725769309

/-! ## A253720.P8292266603689565578

`A346965(4*n+1)+1`
-/

namespace A253720.P8292266603689565578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (4 * n + 1) + 1

end

end A253720.P8292266603689565578

/-! ## A253720.P7371346203510760230

`A160541(A016813(n))+1`
-/

namespace A253720.P7371346203510760230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A016813 n).toNat + 1

end

end A253720.P7371346203510760230

/-! ## A253720.P10489360951198013450

`A213181(A017089(n))+1`
-/

namespace A253720.P10489360951198013450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A017089 n).toNat + 1

end

end A253720.P10489360951198013450

/-! ## A253720.P16195392211851365311

`A160541(A008586(n)+1)+1`
-/

namespace A253720.P16195392211851365311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A008586 n + 1).toNat + 1

end

end A253720.P16195392211851365311

/-! ## A253720.P2191534427150161814

`A213181(A008574(n)+1)+1`
-/

namespace A253720.P2191534427150161814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A008574 n + 1).toNat + 1

end

end A253720.P2191534427150161814

/-! ## A253720.P11466845992452119891

`A160541(A017089(n)/2)+1`
-/

namespace A253720.P11466845992452119891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (SequenceMachineLib.roundAway ((A017089 n : ℚ) / 2)).toNat + 1

end

end A253720.P11466845992452119891

/-!
# A253721: Triprimes modulo 10.

The programs for A253721, the canonical program `A253721.P2198442329802579597` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253721 has offset 1).

The definition of A253721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253721.P2198442329802579597

`A010879(A014612(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A253721

/-- `A010879(A014612(n+1))` -/
def P2198442329802579597.Spec : Prop :=
  ∀ n, P2198442329802579597.a n = A253721 (n + 1)

theorem P2198442329802579597.correct : P2198442329802579597.Spec := by
  intro n
  simp only [A253721, Nat.add_sub_cancel]

end A253721

/-! ## A253721.P3441707822713792830

`(eq[3, A001222(n+1)]+1)%10`
-/

namespace A253721.P3441707822713792830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 10

end

end A253721.P3441707822713792830

namespace A253721

/-- `(eq[3, A001222(n+1)]+1)%10` -/
def P3441707822713792830.Spec : Prop :=
  ∀ n, (P3441707822713792830.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P8853827731703779132

`(A162361(n+1)*A163173(n+1))%10`
-/

namespace A253721.P8853827731703779132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162361 (n + 1) * A163173 (n + 1)) 10

end

end A253721.P8853827731703779132

namespace A253721

/-- `(A162361(n+1)*A163173(n+1))%10` -/
def P8853827731703779132.Spec : Prop :=
  ∀ n, P8853827731703779132.a n = A253721 (n + 1)

end A253721

/-! ## A253721.P1777596897903048581

`eq[3, A001222(A028310(n))]%10`
-/

namespace A253721.P1777596897903048581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A253721.P1777596897903048581

namespace A253721

/-- `eq[3, A001222(A028310(n))]%10` -/
def P1777596897903048581.Spec : Prop :=
  ∀ n, (P1777596897903048581.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P5390043838982323462

`eq[4, A001222(A004277(n))]%10`
-/

namespace A253721.P5390043838982323462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A253721.P5390043838982323462

namespace A253721

/-- `eq[4, A001222(A004277(n))]%10` -/
def P5390043838982323462.Spec : Prop :=
  ∀ n, (P5390043838982323462.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P3423567177395999993

`eq[4, A001222(A008486(n))]%10`
-/

namespace A253721.P3423567177395999993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A253721.P3423567177395999993

namespace A253721

/-- `eq[4, A001222(A008486(n))]%10` -/
def P3423567177395999993.Spec : Prop :=
  ∀ n, (P3423567177395999993.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P5731548510334724250

`eq[4, A001222(A008706(n))]%10`
-/

namespace A253721.P5731548510334724250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A253721.P5731548510334724250

namespace A253721

/-- `eq[4, A001222(A008706(n))]%10` -/
def P5731548510334724250.Spec : Prop :=
  ∀ n, (P5731548510334724250.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P11258355063170272638

`A207790(8*n+5)%10`
-/

namespace A253721.P11258355063170272638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207790 (8 * n + 5)) 10

end

end A253721.P11258355063170272638

namespace A253721

/-- `A207790(8*n+5)%10` -/
def P11258355063170272638.Spec : Prop :=
  ∀ n, P11258355063170272638.a n = A253721 (n + 1)

end A253721

/-!
# A253723: Length of shortest addition chain corresponding to maximum of A003313(k)/log_2(k) in interval 2^n < k < 2^(n+1).

The programs for A253723, there is no canonical definition to state claims against.
-/

/-! ## A253723.P128579121807998304

`comp[floor(n²/2)-ceil(n/3)]`
-/

namespace A253723.P128579121807998304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋ - ⌈(n : ℚ) / 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A253723.P128579121807998304

/-! ## A253723.P9364856797394686786

`comp[∑[n+2]-C(gcd(4, n), n)]+2`
-/

namespace A253723.P9364856797394686786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose (Nat.gcd 4 n) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A253723.P9364856797394686786

/-! ## A253723.P18410989910389158391

`comp[C(n, 2)-char[C(n, 4)+n+2]]+1`
-/

namespace A253723.P18410989910389158391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 + (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253723.P18410989910389158391

/-! ## A253723.P6807239140879956558

`ceil(sqrt(A324978(n+1))+n)`
-/

namespace A253723.P6807239140879956558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A324978 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A253723.P6807239140879956558

/-! ## A253723.P16283060046216608920

`round(sqrt(A213716(n+1))+n)`
-/

namespace A253723.P16283060046216608920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A213716 (n + 1) : ℝ) + (n : ℝ))

end

end A253723.P16283060046216608920

/-!
# A253724: Numbers c(n) whose squares are equal to the sums of a number M(n) of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, starting at b(n) (A002593) for M(n) being twice a squared integer (A001105).

The programs for A253724, there is no canonical definition to state claims against.
-/

/-! ## A253724.P5875825152316841678

`sqrt(A253725(n+2))`
-/

namespace A253724.P5875825152316841678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253725 (n + 2) : ℝ)

end

end A253724.P5875825152316841678

/-! ## A253724.P8846875136634307719

`A000217(2*(n+2)²)*A007588(n+2)`
-/

namespace A253724.P8846875136634307719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 2) ^ 2) * A007588 (n + 2)

end

end A253724.P8846875136634307719

/-! ## A253724.P14860440302994861819

`(n+2)*A035328((n+2)²)`
-/

namespace A253724.P14860440302994861819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A035328 ((n + 2) ^ 2)

end

end A253724.P14860440302994861819

/-! ## A253724.P1153381271584343976

`A000447(A002620(2*(n+2)))*A032766(2*(n+2))`
-/

namespace A253724.P1153381271584343976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (A002620 (2 * (n + 2))).toNat * A032766 (2 * (n + 2))

end

end A253724.P1153381271584343976

/-! ## A253724.P16087449798204157166

`(n+2)*A135503(2*(n+2)²)`
-/

namespace A253724.P16087449798204157166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A135503 (2 * (n + 2) ^ 2)

end

end A253724.P16087449798204157166

/-! ## A253724.P2283720812331015895

`A006011(2*(n+2)²)/(n+2)`
-/

namespace A253724.P2283720812331015895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006011 (2 * (n + 2) ^ 2) : ℚ) / (n + 2 : ℚ)

end

end A253724.P2283720812331015895

/-! ## A253724.P14990759718328308169

`A061317(n+2)*A334320(A058331(n+2))`
-/

namespace A253724.P14990759718328308169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 (n + 2) * A334320 (A058331 (n + 2)).toNat

end

end A253724.P14990759718328308169

/-! ## A253724.P9751394258138987117

`A000292(A047838(2*(n+2)))*A008486(n+2)`
-/

namespace A253724.P9751394258138987117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A047838 (2 * (n + 2))).toNat * A008486 (n + 2)

end

end A253724.P9751394258138987117

/-!
# A253725: Integer squares c^2 that are equal to the sums of a number M(n) of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, starting at b(n) (A002593) for M(n) being twice a squared integer (A001105).

The programs for A253725, there is no canonical definition to state claims against.
-/

/-! ## A253725.P11821771294081544860

`A253724(n+2)²`
-/

namespace A253725.P11821771294081544860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253724 (n + 2) ^ 2

end

end A253725.P11821771294081544860

/-! ## A253725.P18117895870524589420

`A253724(n+2)^A000005(A253717(n+1))`
-/

namespace A253725.P18117895870524589420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253724 (n + 2) : ℚ) ^ (A000005 (A253717 (n + 1)).toNat : ℤ)

end

end A253725.P18117895870524589420

/-! ## A253725.P15861148703134917825

`A253724(n+2)^A000005(A343413(n+1))`
-/

namespace A253725.P15861148703134917825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253724 (n + 2) : ℚ) ^ (A000005 (A343413 (n + 1)).toNat : ℤ)

end

end A253725.P15861148703134917825

/-! ## A253725.P7339418573857809192

`A253724(n+2)^A225180(A102376(n))`
-/

namespace A253725.P7339418573857809192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253724 (n + 2) : ℚ) ^ (A225180 (A102376 n).toNat : ℤ)

end

end A253725.P7339418573857809192

/-! ## A253725.P8155447466077751115

`A253724(n+2)^A020639(A108099(n))`
-/

namespace A253725.P8155447466077751115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253724 (n + 2) : ℚ) ^ (A020639 (A108099 n).toNat : ℤ)

end

end A253725.P8155447466077751115

/-! ## A253725.P7286606024481761259

`A253724(n+2)^A225180(A059268(n))`
-/

namespace A253725.P7286606024481761259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253724 (n + 2) : ℚ) ^ (A225180 (A059268 n).toNat : ℤ)

end

end A253725.P7286606024481761259

/-! ## A253725.P15191035479111665362

`((n+2)*A035328((n+2)²))²`
-/

namespace A253725.P15191035479111665362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A035328 ((n + 2) ^ 2)) ^ 2

end

end A253725.P15191035479111665362

/-! ## A253725.P9625401315014081828

`A253724(n+2)%A253727(n+1)*A253724(n+2)`
-/

namespace A253725.P9625401315014081828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253724 (n + 2)) (A253727 (n + 1)) * A253724 (n + 2)

end

end A253725.P9625401315014081828

/-!
# A253726: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253726, there is no canonical definition to state claims against.
-/

/-! ## A253726.P9689530271027621641

`A253731(∑[n+1]+2)`
-/

namespace A253726.P9689530271027621641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253726.P9689530271027621641

/-! ## A253726.P7386260258508836293

`A253731(A133263(n+1))+A000007(3*n+2)`
-/

namespace A253726.P7386260258508836293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A133263 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A253726.P7386260258508836293

/-! ## A253726.P7650150714886700796

`record[A253731(abs(A201163(n)))]`
-/

namespace A253726.P7650150714886700796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253726.P7650150714886700796

/-! ## A253726.P10094350955654305665

`record[A253731(Δ[A003453(n+5)])]`
-/

namespace A253726.P10094350955654305665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253726.P10094350955654305665

/-! ## A253726.P1373098523060443191

`record[root(A253731(n+2), A144018(n+2))]`
-/

namespace A253726.P1373098523060443191
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253731 (n + 2) : ℝ) ^ (1 / (A144018 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253726.P1373098523060443191

/-!
# A253727: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253727, there is no canonical definition to state claims against.
-/

/-! ## A253727.P1902700742594415292

`A253731(∑[n+2]+4)`
-/

namespace A253727.P1902700742594415292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253727.P1902700742594415292

/-! ## A253727.P1832674000271447370

`lcm(2, A253731(A167614(n+1)))`
-/

namespace A253727.P1832674000271447370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253731 (A167614 (n + 1)).toNat)

end

end A253727.P1832674000271447370

/-! ## A253727.P16104556713275375307

`A253731(A167614(n+1))+A185284(n)`
-/

namespace A253727.P16104556713275375307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A167614 (n + 1)).toNat + A185284 n

end

end A253727.P16104556713275375307

/-! ## A253727.P2640653466152808765

`A253731(A167614(n+1))+A006983(n+1)`
-/

namespace A253727.P2640653466152808765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A167614 (n + 1)).toNat + A006983 (n + 1)

end

end A253727.P2640653466152808765

/-! ## A253727.P224349935249244785

`A253731(A167614(n+1))%A205202(n+1)`
-/

namespace A253727.P224349935249244785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253731 (A167614 (n + 1)).toNat) (A205202 (n + 1))

end

end A253727.P224349935249244785

/-!
# A253728: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253728, there is no canonical definition to state claims against.
-/

/-! ## A253728.P2765175291745997267

`A253731(A052905(n)+9)`
-/

namespace A253728.P2765175291745997267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A052905 n + 9).toNat

end

end A253728.P2765175291745997267

/-! ## A253728.P2379027683129579839

`A253731(A055999(n)+10)`
-/

namespace A253728.P2379027683129579839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A055999 n + 10).toNat

end

end A253728.P2379027683129579839

/-! ## A253728.P6291423334335478552

`A253731(A167614(n+2)+1)`
-/

namespace A253728.P6291423334335478552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A167614 (n + 2) + 1).toNat

end

end A253728.P6291423334335478552

/-! ## A253728.P11680214512951714438

`A253731(A034856(n+2)+6)`
-/

namespace A253728.P11680214512951714438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A034856 (n + 2) + 6).toNat

end

end A253728.P11680214512951714438

/-! ## A253728.P12457535103332365920

`A253731(eq[3, A002262(n)]+1)`
-/

namespace A253728.P12457535103332365920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253728.P12457535103332365920

/-!
# A253729: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253729, there is no canonical definition to state claims against.
-/

/-! ## A253729.P3472485391877010785

`A253731(eq[4, A002262(n)]+1)`
-/

namespace A253729.P3472485391877010785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253729.P3472485391877010785

/-! ## A253729.P15614242262410432094

`A253731(Δ[A264443(n)])`
-/

namespace A253729.P15614242262410432094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (f1 (n + 1) - f1 n).toNat

end

end A253729.P15614242262410432094

/-! ## A253729.P13977512351530159408

`A253731(A374005(n+1))`
-/

namespace A253729.P13977512351530159408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A374005 (n + 1)).toNat

end

end A253729.P13977512351530159408

/-! ## A253729.P18076087659704172679

`A253731(eq[4, A193592(n)])`
-/

namespace A253729.P18076087659704172679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253729.P18076087659704172679

/-! ## A253729.P4766117211334468798

`A253731(eq[5, A200370(n+1)])`
-/

namespace A253729.P4766117211334468798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253729.P4766117211334468798

/-!
# A253730: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253730, there is no canonical definition to state claims against.
-/

/-! ## A253730.P5844131655766095332

`A253731(eq[5, A002262(n)]+1)`
-/

namespace A253730.P5844131655766095332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253730.P5844131655766095332

/-! ## A253730.P12685897029140136155

`A253731(A374007(n+1))`
-/

namespace A253730.P12685897029140136155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A374007 (n + 1)).toNat

end

end A253730.P12685897029140136155

/-! ## A253730.P9212658281998536199

`A253731(eq[3, A219347(n)])`
-/

namespace A253730.P9212658281998536199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253730.P9212658281998536199

/-! ## A253730.P13692872168596242711

`A253731(eq[5, A193592(n)])`
-/

namespace A253730.P13692872168596242711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253730.P13692872168596242711

/-!
# A253732: Number of (n+2)X(n+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253732, there is no canonical definition to state claims against.
-/

/-! ## A253732.P6752227434826396970

`A253740(∑[4*n]+1)`
-/

namespace A253732.P6752227434826396970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253732.P6752227434826396970

/-! ## A253732.P11328522913018586623

`lcm(2, A253740(A001844(n)))`
-/

namespace A253732.P11328522913018586623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253740 (A001844 n).toNat)

end

end A253732.P11328522913018586623

/-! ## A253732.P12282248354712903812

`record[gcd(A003987(n), A253740(n+1))]`
-/

namespace A253732.P12282248354712903812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253740 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253732.P12282248354712903812

/-! ## A253732.P17498745883820042163

`A253740(A001844(n))+A086080(n)`
-/

namespace A253732.P17498745883820042163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A001844 n).toNat + A086080 n

end

end A253732.P17498745883820042163

/-! ## A253732.P4233067121725776753

`or(A000038(n), A253740(A001844(n)))`
-/

namespace A253732.P4233067121725776753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A253740 (A001844 n).toNat)

end

end A253732.P4233067121725776753

/-!
# A253733: Number of (n+2)X(1+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253733, there is no canonical definition to state claims against.
-/

/-! ## A253733.P7969374720669326634

`A253740(∑[n]+1)`
-/

namespace A253733.P7969374720669326634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253733.P7969374720669326634

/-! ## A253733.P3681120685791756443

`lcm(2, A253740(A000124(n)))`
-/

namespace A253733.P3681120685791756443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253740 (A000124 n).toNat)

end

end A253733.P3681120685791756443

/-! ## A253733.P12402450995925014924

`record[A253740(n+1)/A007318(n)]`
-/

namespace A253733.P12402450995925014924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253733.P12402450995925014924

/-! ## A253733.P13514774964166873574

`record[A253740(n+1)/A013613(n)]`
-/

namespace A253733.P13514774964166873574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253733.P13514774964166873574

/-! ## A253733.P11000793390219167510

`record[A253740(n+1)/A303696(n)]`
-/

namespace A253733.P11000793390219167510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 1) : ℚ) / (A303696 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253733.P11000793390219167510

/-!
# A253734: Number of (n+2)X(2+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253734, there is no canonical definition to state claims against.
-/

/-! ## A253734.P1636276710378008893

`A253740(∑[n+1]+2)`
-/

namespace A253734.P1636276710378008893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253734.P1636276710378008893

/-! ## A253734.P2853364330609236594

`record[A253740(A286158(n+1)+2)]`
-/

namespace A253734.P2853364330609236594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A286158 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253734.P2853364330609236594

/-! ## A253734.P12584420044505712504

`record[A253740(n+2)/A013613(n)]`
-/

namespace A253734.P12584420044505712504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 2) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253734.P12584420044505712504

/-! ## A253734.P13507478691751232794

`record[root(A253740(n+2), A303696(n))]`
-/

namespace A253734.P13507478691751232794
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 2) : ℝ) ^ (1 / (A303696 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253734.P13507478691751232794

/-! ## A253734.P348772442199707873

`record[A253740(abs(A201163(n)))]`
-/

namespace A253734.P348772442199707873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253734.P348772442199707873

/-!
# A253735: Number of (n+2)X(3+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253735, there is no canonical definition to state claims against.
-/

/-! ## A253735.P7707997196152951852

`A253740(∑[n+2]+4)`
-/

namespace A253735.P7707997196152951852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253735.P7707997196152951852

/-! ## A253735.P7219303264867026423

`lcm(2, A253740(A167614(n+1)))`
-/

namespace A253735.P7219303264867026423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253740 (A167614 (n + 1)).toNat)

end

end A253735.P7219303264867026423

/-! ## A253735.P2811078358580024052

`A000034(2*n)*A253740(A167614(n+1))`
-/

namespace A253735.P2811078358580024052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A253740 (A167614 (n + 1)).toNat

end

end A253735.P2811078358580024052

/-! ## A253735.P14401071763143447177

`A253740(A167614(n+1))%A253736(n+1)`
-/

namespace A253735.P14401071763143447177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253740 (A167614 (n + 1)).toNat) (A253736 (n + 1))

end

end A253735.P14401071763143447177

/-! ## A253735.P4335438705238291961

`A253740(A055998(n)+6)%A253736(n+1)`
-/

namespace A253735.P4335438705238291961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253740 (A055998 n + 6).toNat) (A253736 (n + 1))

end

end A253735.P4335438705238291961

/-!
# A253736: Number of (n+2) X (4+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253736, there is no canonical definition to state claims against.
-/

/-! ## A253736.P10838945943071712642

`A253740(A141214(n)+7)`
-/

namespace A253736.P10838945943071712642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A141214 n + 7).toNat

end

end A253736.P10838945943071712642

/-! ## A253736.P18383741219986706577

`A253740(A052905(n)+9)`
-/

namespace A253736.P18383741219986706577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A052905 n + 9).toNat

end

end A253736.P18383741219986706577

/-! ## A253736.P13375304479675397228

`A253740(A055999(n)+10)`
-/

namespace A253736.P13375304479675397228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A055999 n + 10).toNat

end

end A253736.P13375304479675397228

/-! ## A253736.P6448499111430301680

`A253740(A167614(n+2)+1)`
-/

namespace A253736.P6448499111430301680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A167614 (n + 2) + 1).toNat

end

end A253736.P6448499111430301680

/-! ## A253736.P3804418637354713482

`A253740(A166136(n+2)-2)`
-/

namespace A253736.P3804418637354713482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A166136 (n + 2) - 2).toNat

end

end A253736.P3804418637354713482

/-!
# A253737: Number of (n+2) X (5+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253737, there is no canonical definition to state claims against.
-/

/-! ## A253737.P16295985794675661594

`A253740(A167499(n+3))`
-/

namespace A253737.P16295985794675661594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A167499 (n + 3)).toNat

end

end A253737.P16295985794675661594

/-! ## A253737.P6032288550952684361

`A253740(A056000(n)+15)`
-/

namespace A253737.P6032288550952684361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A056000 n + 15).toNat

end

end A253737.P6032288550952684361

/-! ## A253737.P2612605163337106439

`A253740(A000217(n+4)+5)`
-/

namespace A253737.P2612605163337106439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A000217 (n + 4) + 5).toNat

end

end A253737.P2612605163337106439

/-! ## A253737.P2337117426540992251

`A253740(A046691(n+2)+9)`
-/

namespace A253737.P2337117426540992251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A046691 (n + 2) + 9).toNat

end

end A253737.P2337117426540992251

/-! ## A253737.P11913904013621338431

`A253740(A052905(n+3)-Δ[n²])`
-/

namespace A253737.P11913904013621338431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A052905 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A253737.P11913904013621338431

/-!
# A253738: Number of (n+2)X(6+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253738, there is no canonical definition to state claims against.
-/

/-! ## A253738.P9361916210360621093

`A253740(A166136(n+4))`
-/

namespace A253738.P9361916210360621093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A166136 (n + 4)).toNat

end

end A253738.P9361916210360621093

/-! ## A253738.P12937359474016072235

`A253740(A000096(n+4)+7)`
-/

namespace A253738.P12937359474016072235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A000096 (n + 4) + 7).toNat

end

end A253738.P12937359474016072235

/-! ## A253738.P3302187204492055182

`A253740(A000217(n+5)+6)`
-/

namespace A253738.P3302187204492055182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A000217 (n + 5) + 6).toNat

end

end A253738.P3302187204492055182

/-! ## A253738.P148554066293499899

`A253740(A046691(n+3)+10)`
-/

namespace A253738.P148554066293499899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A046691 (n + 3) + 10).toNat

end

end A253738.P148554066293499899

/-! ## A253738.P17495694140666114604

`A253740(Δ[A023545(n+1)]+10)`
-/

namespace A253738.P17495694140666114604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (f1 (n + 1) - f1 n + 10).toNat

end

end A253738.P17495694140666114604

/-!
# A253739: Number of (n+2)X(7+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253739, there is no canonical definition to state claims against.
-/

/-! ## A253739.P8573499571536788956

`A253740(A167499(n+5)+2)`
-/

namespace A253739.P8573499571536788956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A167499 (n + 5) + 2).toNat

end

end A253739.P8573499571536788956

/-! ## A253739.P7307141290860967085

`A253740(A000217(n+6)+7)`
-/

namespace A253739.P7307141290860967085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A000217 (n + 6) + 7).toNat

end

end A253739.P7307141290860967085

/-! ## A253739.P10071662355348216898

`A253740(A161680(n+7)+7)`
-/

namespace A253739.P10071662355348216898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A161680 (n + 7) + 7).toNat

end

end A253739.P10071662355348216898

/-! ## A253739.P12145465285022378584

`A253740(A052905(n+3)+12)`
-/

namespace A253739.P12145465285022378584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A052905 (n + 3) + 12).toNat

end

end A253739.P12145465285022378584

/-! ## A253739.P3473747119935815883

`A253740(A000124(n+7)-(n+1))`
-/

namespace A253739.P3473747119935815883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A253739.P3473747119935815883

/-!
# A253741: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253741, there is no canonical definition to state claims against.
-/

/-! ## A253741.P2591281717674075826

`A253749((n+1)²+n²)`
-/

namespace A253741.P2591281717674075826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 ((n + 1) ^ 2 + n ^ 2)

end

end A253741.P2591281717674075826

/-! ## A253741.P6138453756853981498

`A253749(A001844(n))+char[18]`
-/

namespace A253741.P6138453756853981498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253741.P6138453756853981498

/-! ## A253741.P14169502094886255668

`record[gcd(A114327(n), A253749(n+1))]`
-/

namespace A253741.P14169502094886255668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A253749 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253741.P14169502094886255668

/-! ## A253741.P17981670730500397992

`A007318(∑[n])*A253749(A001844(n))`
-/

namespace A253741.P17981670730500397992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A253749 (A001844 n).toNat

end

end A253741.P17981670730500397992

/-! ## A253741.P12416433017434082775

`A253749(A001844(n))^A007318(∑[n]-n)`
-/

namespace A253741.P12416433017434082775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253749 (A001844 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n) : ℤ)

end

end A253741.P12416433017434082775

/-!
# A253742: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253742, the canonical program `A253742.P9928295030245127996` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253742 has offset 1).

The definition of A253742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253742.P9928295030245127996

`9*A222993(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A253742

/-- `9*A222993(n+1)` -/
def P9928295030245127996.Spec : Prop :=
  ∀ n, P9928295030245127996.a n = A253742 (n + 1)

theorem P9928295030245127996.correct : P9928295030245127996.Spec := by
  intro n
  simp only [A253742, Nat.add_sub_cancel]

end A253742

/-! ## A253742.P9850362320656053797

`Δ[9*∑[A222993(A028310(n))]]`
-/

namespace A253742.P9850362320656053797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222993 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253742.P9850362320656053797

namespace A253742

/-- `Δ[9*∑[A222993(A028310(n))]]` -/
def P9850362320656053797.Spec : Prop :=
  ∀ n, P9850362320656053797.a n = A253742 (n + 1)

end A253742

/-! ## A253742.P10921545933061952569

`A253749(∑[n]+1)`
-/

namespace A253742.P10921545933061952569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253742.P10921545933061952569

namespace A253742

/-- `A253749(∑[n]+1)` -/
def P10921545933061952569.Spec : Prop :=
  ∀ n, P10921545933061952569.a n = A253742 (n + 1)

end A253742

/-! ## A253742.P10726322691544385534

`lcm(3, A253749(A000124(n)))`
-/

namespace A253742.P10726322691544385534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A253749 (A000124 n).toNat)

end

end A253742.P10726322691544385534

namespace A253742

/-- `lcm(3, A253749(A000124(n)))` -/
def P10726322691544385534.Spec : Prop :=
  ∀ n, (P10726322691544385534.a n : ℤ) = A253742 (n + 1)

end A253742

/-! ## A253742.P9142141934579930793

`record[A253749(n+1)/A156045(n)]`
-/

namespace A253742.P9142141934579930793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253749 (n + 1) : ℚ) / (A156045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253742.P9142141934579930793

namespace A253742

/-- `record[A253749(n+1)/A156045(n)]` -/
def P9142141934579930793.Spec : Prop :=
  ∀ n, P9142141934579930793.a n = (A253742 (n + 1) : ℚ)

end A253742

/-!
# A253743: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253743, there is no canonical definition to state claims against.
-/

/-! ## A253743.P15458046658845791842

`A253749(∑[n+2])`
-/

namespace A253743.P15458046658845791842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253743.P15458046658845791842

/-! ## A253743.P2706285167111274922

`record[A253749(A000096(A152271(n)))]`
-/

namespace A253743.P2706285167111274922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253743.P2706285167111274922

/-! ## A253743.P3911800287490437567

`record[A253749(A000096(A003963(n+1)))]`
-/

namespace A253743.P3911800287490437567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253743.P3911800287490437567

/-! ## A253743.P12007765843191300578

`record[A253749(A000096(A004736(n+1)))]`
-/

namespace A253743.P12007765843191300578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253743.P12007765843191300578

/-! ## A253743.P8267747848994898212

`A253749(A000096(n+1))+A000038(n+1)`
-/

namespace A253743.P8267747848994898212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A253743.P8267747848994898212

/-!
# A253744: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253744, there is no canonical definition to state claims against.
-/

/-! ## A253744.P6275686282830836431

`A253749(∑[n+3]+1)`
-/

namespace A253744.P6275686282830836431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253744.P6275686282830836431

/-! ## A253744.P7113292963471272390

`A253749(A052905(n)+3)+A178798(n)`
-/

namespace A253744.P7113292963471272390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A052905 n + 3).toNat + A178798 n

end

end A253744.P7113292963471272390

/-! ## A253744.P3835570427857871018

`A057979((2*n)²)*A253749(A052905(n)+3)`
-/

namespace A253744.P3835570427857871018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 ((2 * n) ^ 2) * A253749 (A052905 n + 3).toNat

end

end A253744.P3835570427857871018

/-! ## A253744.P754222555710521969

`A107453(2*n+7)*A253749(A052905(n)+3)`
-/

namespace A253744.P754222555710521969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (2 * n + 7) * A253749 (A052905 n + 3).toNat

end

end A253744.P754222555710521969

/-! ## A253744.P5981357013611837941

`record[A253749(A198464(n+1))]`
-/

namespace A253744.P5981357013611837941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253744.P5981357013611837941

/-!
# A253745: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253745, there is no canonical definition to state claims against.
-/

/-! ## A253745.P15418980065778824405

`A253749(A141214(n+1))`
-/

namespace A253745.P15418980065778824405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A141214 (n + 1)).toNat

end

end A253745.P15418980065778824405

/-! ## A253745.P10071174264909685603

`A253749(A027379(n+2))`
-/

namespace A253745.P10071174264909685603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A027379 (n + 2)).toNat

end

end A253745.P10071174264909685603

/-! ## A253745.P8856326133463012759

`A253749(A055998(n+2))`
-/

namespace A253745.P8856326133463012759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A055998 (n + 2)).toNat

end

end A253745.P8856326133463012759

/-! ## A253745.P1504794618035522705

`A253749(A056000(n)+7)`
-/

namespace A253745.P1504794618035522705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A056000 n + 7).toNat

end

end A253745.P1504794618035522705

/-! ## A253745.P12384480827669341535

`A253749(A052905(n+1)+2)`
-/

namespace A253745.P12384480827669341535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A052905 (n + 1) + 2).toNat

end

end A253745.P12384480827669341535

/-!
# A253746: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253746, there is no canonical definition to state claims against.
-/

/-! ## A253746.P4360206438594054746

`A253749(A046691(n+3))`
-/

namespace A253746.P4360206438594054746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A046691 (n + 3)).toNat

end

end A253746.P4360206438594054746

/-! ## A253746.P8233540385767683051

`A253749(Δ[A023545(n+1)])`
-/

namespace A253746.P8233540385767683051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (f1 (n + 1) - f1 n).toNat

end

end A253746.P8233540385767683051

/-! ## A253746.P6579864822944282941

`A253749(A055998(n+3)-1)`
-/

namespace A253746.P6579864822944282941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A055998 (n + 3) - 1).toNat

end

end A253746.P6579864822944282941

/-! ## A253746.P17854974569992799750

`A253749(A000096(n+4)-3)`
-/

namespace A253746.P17854974569992799750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (n + 4) - 3).toNat

end

end A253746.P17854974569992799750

/-! ## A253746.P12559603776896531230

`A253749(A000217(n+4)+n+1)`
-/

namespace A253746.P12559603776896531230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A253746.P12559603776896531230

/-!
# A253747: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253747, there is no canonical definition to state claims against.
-/

/-! ## A253747.P10946450094621437438

`A253749(A052905(n+3))`
-/

namespace A253747.P10946450094621437438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A052905 (n + 3)).toNat

end

end A253747.P10946450094621437438

/-! ## A253747.P798580631569387041

`A253749(A055999(n+3)+1)`
-/

namespace A253747.P798580631569387041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A055999 (n + 3) + 1).toNat

end

end A253747.P798580631569387041

/-! ## A253747.P11950984389123290323

`A253749(A000096(n+5)-4)`
-/

namespace A253747.P11950984389123290323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (n + 5) - 4).toNat

end

end A253747.P11950984389123290323

/-! ## A253747.P5950408495030000817

`A253749(A000124(n+6)-6)`
-/

namespace A253747.P5950408495030000817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000124 (n + 6) - 6).toNat

end

end A253747.P5950408495030000817

/-! ## A253747.P9814415193211467370

`A253749(Δ[Δ[A006504(n+1)]])`
-/

namespace A253747.P9814415193211467370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (f1 (n + 1) - f1 n).toNat

end

end A253747.P9814415193211467370

/-!
# A253748: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253748, there is no canonical definition to state claims against.
-/

/-! ## A253748.P12972638233777025548

`A253749(A055999(n+4))`
-/

namespace A253748.P12972638233777025548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A055999 (n + 4)).toNat

end

end A253748.P12972638233777025548

/-! ## A253748.P522762243345653145

`A253749(A000124(n+7)-7)`
-/

namespace A253748.P522762243345653145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000124 (n + 7) - 7).toNat

end

end A253748.P522762243345653145

/-! ## A253748.P5276795891173779431

`A253749(A000096(n+5)+n+2)`
-/

namespace A253748.P5276795891173779431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A253748.P5276795891173779431

/-! ## A253748.P5928218989326206424

`A253749(A000217(n+6)+n+1)`
-/

namespace A253748.P5928218989326206424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A253748.P5928218989326206424

/-! ## A253748.P16980262082947208244

`A253749(A167499(n+5)+n-4)`
-/

namespace A253748.P16980262082947208244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A167499 (n + 5) + ((n : ℤ) - 4)).toNat

end

end A253748.P16980262082947208244

/-!
# A253750: Number of (2+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253750, there is no canonical definition to state claims against.
-/

/-! ## A253750.P601145773678129492

`A253749(∑[n+1]+2)`
-/

namespace A253750.P601145773678129492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253750.P601145773678129492

/-! ## A253750.P2303123562054474919

`record[A253749(A008795(n)+2)]`
-/

namespace A253750.P2303123562054474919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253750.P2303123562054474919

/-! ## A253750.P14198906343800528173

`record[A253749(A133263(abs(1-n)))]`
-/

namespace A253750.P14198906343800528173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253750.P14198906343800528173

/-! ## A253750.P15376496850687566378

`A253749(A167499(n)-3)+2-4/2`
-/

namespace A253750.P15376496850687566378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253749 (A167499 n - 3).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A253750.P15376496850687566378

/-! ## A253750.P461711905879570387

`char[A002262(n)]*A253749(A167499(n)-3)`
-/

namespace A253750.P461711905879570387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A253749 (A167499 n - 3).toNat

end

end A253750.P461711905879570387

/-!
# A253751: Number of (3+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253751, there is no canonical definition to state claims against.
-/

/-! ## A253751.P12662121260175780035

`A253749(∑[n+2]+4)`
-/

namespace A253751.P12662121260175780035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253751.P12662121260175780035

/-! ## A253751.P17830147400317176996

`A253749(A167614(n+1))+A178798(n)`
-/

namespace A253751.P17830147400317176996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A167614 (n + 1)).toNat + A178798 n

end

end A253751.P17830147400317176996

/-! ## A253751.P7969466195197645686

`lcm(A057077(n), A253749(A167614(n+1)))`
-/

namespace A253751.P7969466195197645686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A253749 (A167614 (n + 1)).toNat)

end

end A253751.P7969466195197645686

/-! ## A253751.P6717468078620813026

`or(A000038(n), A253749(A167614(n+1)))`
-/

namespace A253751.P6717468078620813026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A253749 (A167614 (n + 1)).toNat)

end

end A253751.P6717468078620813026

/-! ## A253751.P12150909564865433669

`A253749(A167614(n+1))%A236161(n+1)`
-/

namespace A253751.P12150909564865433669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253749 (A167614 (n + 1)).toNat) (A236161 (n + 1))

end

end A253751.P12150909564865433669

/-!
# A253752: Number of (4+1) X (n+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253752, there is no canonical definition to state claims against.
-/

/-! ## A253752.P10667585748509001806

`A253749(A141214(n)+7)`
-/

namespace A253752.P10667585748509001806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A141214 n + 7).toNat

end

end A253752.P10667585748509001806

/-! ## A253752.P4024852595065127320

`A253749(A052905(n)+9)`
-/

namespace A253752.P4024852595065127320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A052905 n + 9).toNat

end

end A253752.P4024852595065127320

/-! ## A253752.P5616163066513129392

`A253749(A055999(n)+10)`
-/

namespace A253752.P5616163066513129392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A055999 n + 10).toNat

end

end A253752.P5616163066513129392

/-! ## A253752.P5621863890601355174

`A253749(Δ[A062748(n)]+4)`
-/

namespace A253752.P5621863890601355174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (f1 (n + 1) - f1 n + 4).toNat

end

end A253752.P5621863890601355174

/-! ## A253752.P2173409125768129910

`A253749(A167614(n+2)+1)`
-/

namespace A253752.P2173409125768129910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A167614 (n + 2) + 1).toNat

end

end A253752.P2173409125768129910

/-!
# A253753: Number of (5+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253753, there is no canonical definition to state claims against.
-/

/-! ## A253753.P1746192544310118748

`A253749(A167499(n+3))`
-/

namespace A253753.P1746192544310118748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A167499 (n + 3)).toNat

end

end A253753.P1746192544310118748

/-! ## A253753.P10005140366949063593

`A253749(A056000(n)+15)`
-/

namespace A253753.P10005140366949063593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A056000 n + 15).toNat

end

end A253753.P10005140366949063593

/-! ## A253753.P2367794487207108354

`A253749(A000217(n+4)+5)`
-/

namespace A253753.P2367794487207108354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000217 (n + 4) + 5).toNat

end

end A253753.P2367794487207108354

/-! ## A253753.P9006784020887915317

`A253749(A055998(n+2)+8)`
-/

namespace A253753.P9006784020887915317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A055998 (n + 2) + 8).toNat

end

end A253753.P9006784020887915317

/-! ## A253753.P8061499192272904037

`A253749(A052905(n+3)-Δ[n²])`
-/

namespace A253753.P8061499192272904037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A052905 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A253753.P8061499192272904037

/-!
# A253754: Number of (6+1) X (n+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253754, there is no canonical definition to state claims against.
-/

/-! ## A253754.P18181685483681160288

`A253749(A056115(n)+21)`
-/

namespace A253754.P18181685483681160288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A056115 n + 21).toNat

end

end A253754.P18181685483681160288

/-! ## A253754.P17421215165644481390

`A253749(A133263(n+5)+4)`
-/

namespace A253754.P17421215165644481390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A133263 (n + 5) + 4).toNat

end

end A253754.P17421215165644481390

/-! ## A253754.P16186526561027282390

`A253749(A000096(n+4)+7)`
-/

namespace A253754.P16186526561027282390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (n + 4) + 7).toNat

end

end A253754.P16186526561027282390

/-! ## A253754.P16182627542576015193

`A253749(A000217(n+5)+6)`
-/

namespace A253754.P16182627542576015193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000217 (n + 5) + 6).toNat

end

end A253754.P16182627542576015193

/-! ## A253754.P17784408296212094544

`A253749(A000124(n+6)-(n+1))`
-/

namespace A253754.P17784408296212094544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A253754.P17784408296212094544

/-!
# A253755: Number of (7+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253755, there is no canonical definition to state claims against.
-/

/-! ## A253755.P861288268159746711

`A253749(A167487(n+5))`
-/

namespace A253755.P861288268159746711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A167487 (n + 5)).toNat

end

end A253755.P861288268159746711

/-! ## A253755.P7060173322342913203

`A253749(A167499(n+5)+2)`
-/

namespace A253755.P7060173322342913203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A167499 (n + 5) + 2).toNat

end

end A253755.P7060173322342913203

/-! ## A253755.P2139139523600439000

`A253749(A000124(n+6)+6)`
-/

namespace A253755.P2139139523600439000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000124 (n + 6) + 6).toNat

end

end A253755.P2139139523600439000

/-! ## A253755.P18234615590056213295

`A253749(A000217(n+6)+7)`
-/

namespace A253755.P18234615590056213295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000217 (n + 6) + 7).toNat

end

end A253755.P18234615590056213295

/-! ## A253755.P15059365291609157880

`A253749(A052905(n+3)+12)`
-/

namespace A253755.P15059365291609157880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A052905 (n + 3) + 12).toNat

end

end A253755.P15059365291609157880

/-!
# A253756: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253756, there is no canonical definition to state claims against.
-/

/-! ## A253756.P16159546789075618220

`A253764((n+1)²+n²)`
-/

namespace A253756.P16159546789075618220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 ((n + 1) ^ 2 + n ^ 2)

end

end A253756.P16159546789075618220

/-!
# A253757: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253757, there is no canonical definition to state claims against.
-/

/-! ## A253757.P12621109987510886881

`A253961(∑[n]+1)`
-/

namespace A253757.P12621109987510886881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253757.P12621109987510886881

/-! ## A253757.P15438074696165539865

`lcm(2, A253961(A000124(n)))`
-/

namespace A253757.P15438074696165539865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253961 (A000124 n).toNat)

end

end A253757.P15438074696165539865

/-! ## A253757.P2678123637766338149

`record[A010054(n)*A253961(n+1)]`
-/

namespace A253757.P2678123637766338149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253757.P2678123637766338149

/-! ## A253757.P14305379656158690681

`record[A253961(n+1)/A046802(n)]`
-/

namespace A253757.P14305379656158690681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253961 (n + 1) : ℚ) / (A046802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253757.P14305379656158690681

/-! ## A253757.P391277789476118925

`record[root(A253961(n+1), A071945(n))]`
-/

namespace A253757.P391277789476118925
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253961 (n + 1) : ℝ) ^ (1 / (A071945 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253757.P391277789476118925

/-!
# A253758: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253758, there is no canonical definition to state claims against.
-/

/-! ## A253758.P8558922682934361759

`A253764(∑[n+1]+2)`
-/

namespace A253758.P8558922682934361759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253758.P8558922682934361759

/-! ## A253758.P16827963022217830331

`record[root(A253764(n+2), A178301(n))]`
-/

namespace A253758.P16827963022217830331
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253764 (n + 2) : ℝ) ^ (1 / (A178301 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253758.P16827963022217830331

/-! ## A253758.P7309674852642724777

`A253764(A000096(n)+3)%A253761(n+1)`
-/

namespace A253758.P7309674852642724777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253764 (A000096 n + 3).toNat) (A253761 (n + 1))

end

end A253758.P7309674852642724777

/-! ## A253758.P5071197989516820756

`record[A253764(Δ[A003453(n+5)])]`
-/

namespace A253758.P5071197989516820756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253758.P5071197989516820756

/-! ## A253758.P15595618706353217778

`record[A253764(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A253758.P15595618706353217778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253758.P15595618706353217778

/-!
# A253759: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253759, there is no canonical definition to state claims against.
-/

/-! ## A253759.P1982098270838040656

`A253764(∑[n+2]+4)`
-/

namespace A253759.P1982098270838040656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253759.P1982098270838040656

/-! ## A253759.P17100037544655263634

`A253764(A167614(n+1))+A185284(n)`
-/

namespace A253759.P17100037544655263634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A167614 (n + 1)).toNat + A185284 n

end

end A253759.P17100037544655263634

/-! ## A253759.P12828056402604673867

`lcm(A020985(n), A253764(A167614(n+1)))`
-/

namespace A253759.P12828056402604673867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A253764 (A167614 (n + 1)).toNat)

end

end A253759.P12828056402604673867

/-! ## A253759.P11790922225011253050

`A253764(A167614(n+1))%A223342(n+1)`
-/

namespace A253759.P11790922225011253050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253764 (A167614 (n + 1)).toNat) (A223342 (n + 1))

end

end A253759.P11790922225011253050

/-! ## A253759.P15121760015153321880

`A253764(A167614(n+1))*A318809(A062513(n+1))`
-/

namespace A253759.P15121760015153321880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A167614 (n + 1)).toNat * A318809 (A062513 (n + 1)).toNat

end

end A253759.P15121760015153321880

/-!
# A253760: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253760, there is no canonical definition to state claims against.
-/

/-! ## A253760.P5948405103353099652

`A253764(∑[n+3]+7)`
-/

namespace A253760.P5948405103353099652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253760.P5948405103353099652

/-!
# A253761: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253761, there is no canonical definition to state claims against.
-/

/-! ## A253761.P18199169845969164877

`A253764(A374005(n+1))`
-/

namespace A253761.P18199169845969164877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A374005 (n + 1)).toNat

end

end A253761.P18199169845969164877

/-! ## A253761.P3727596888083070492

`A253764(A000217(n+4)+5)`
-/

namespace A253761.P3727596888083070492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A000217 (n + 4) + 5).toNat

end

end A253761.P3727596888083070492

/-! ## A253761.P1070395168234648678

`A253764(eq[6, A131818(n+1)])`
-/

namespace A253761.P1070395168234648678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253761.P1070395168234648678

/-! ## A253761.P15227930184712232430

`A253764(A056115(n)+11)`
-/

namespace A253761.P15227930184712232430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A056115 n + 11).toNat

end

end A253761.P15227930184712232430

/-! ## A253761.P1605586095031265475

`A253764(eq[4, A193592(n)])`
-/

namespace A253761.P1605586095031265475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253761.P1605586095031265475

/-!
# A253762: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253762, there is no canonical definition to state claims against.
-/

/-! ## A253762.P15825622145497519672

`A253764(A374007(n+1))`
-/

namespace A253762.P15825622145497519672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A374007 (n + 1)).toNat

end

end A253762.P15825622145497519672

/-! ## A253762.P17293306622768722317

`A253764(A166136(n+4))`
-/

namespace A253762.P17293306622768722317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A166136 (n + 4)).toNat

end

end A253762.P17293306622768722317

/-! ## A253762.P1813882262065140117

`A253764(eq[7, A131818(n+1)])`
-/

namespace A253762.P1813882262065140117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253762.P1813882262065140117

/-! ## A253762.P1474354816170912129

`A253764(eq[5, A193592(n)])`
-/

namespace A253762.P1474354816170912129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253762.P1474354816170912129

/-! ## A253762.P14953238284172727710

`A253764(eq[6, A200370(n+1)])`
-/

namespace A253762.P14953238284172727710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253762.P14953238284172727710

/-!
# A253763: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253763, there is no canonical definition to state claims against.
-/

/-! ## A253763.P17362180546897967509

`A253764(A374008(n+1))`
-/

namespace A253763.P17362180546897967509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A374008 (n + 1)).toNat

end

end A253763.P17362180546897967509

/-! ## A253763.P18430826187798715547

`A253764(A167614(n+5)+4)`
-/

namespace A253763.P18430826187798715547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A167614 (n + 5) + 4).toNat

end

end A253763.P18430826187798715547

/-! ## A253763.P10457817969687300878

`A253764(eq[8, A131818(n+1)])`
-/

namespace A253763.P10457817969687300878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253763.P10457817969687300878

/-! ## A253763.P14874827682720675100

`A253764(eq[6, A193592(n)])`
-/

namespace A253763.P14874827682720675100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253763.P14874827682720675100

/-! ## A253763.P620247237687621920

`A253764(eq[7, A200370(n+1)])`
-/

namespace A253763.P620247237687621920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253763.P620247237687621920

/-!
# A253765: Bisection of A098550.

The programs for A253765, there is no canonical definition to state claims against.
-/

/-! ## A253765.P14671125601837312271

`A098550(2*n+1)`
-/

namespace A253765.P14671125601837312271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (2 * n + 1)

end

end A253765.P14671125601837312271

/-! ## A253765.P8431675400865212935

`or(char[1], A098550(or(1, 2*n)))`
-/

namespace A253765.P8431675400865212935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A098550 (Nat.lor 1 (2 * n)))

end

end A253765.P8431675400865212935

/-! ## A253765.P12567567689825551938

`root(A098550(n+1+n)², 2)`
-/

namespace A253765.P12567567689825551938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A098550 (n + 1 + n) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A253765.P12567567689825551938

/-! ## A253765.P2565302430405911586

`A098550((n+1)²-n²)%557`
-/

namespace A253765.P2565302430405911586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098550 ((n + 1) ^ 2 - n ^ 2)) 557

end

end A253765.P2565302430405911586

/-! ## A253765.P17063152749100612909

`A098552(A098551(Δ[n²]))`
-/

namespace A253765.P17063152749100612909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A253765.P17063152749100612909

/-! ## A253765.P17128068736368008481

`A098551(A098552(2*n+1))`
-/

namespace A253765.P17128068736368008481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A098552 (2 * n + 1)).toNat

end

end A253765.P17128068736368008481

/-!
# A253766: Bisection of A098550.

The programs for A253766, there is no canonical definition to state claims against.
-/

/-! ## A253766.P5502465588065368703

`A098550(2*(n+1))`
-/

namespace A253766.P5502465588065368703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (2 * (n + 1))

end

end A253766.P5502465588065368703

/-! ## A253766.P17577626086307126636

`root(A098550(n+2+n)², 2)`
-/

namespace A253766.P17577626086307126636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A098550 (n + 2 + n) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A253766.P17577626086307126636

/-! ## A253766.P16241264889047220968

`abs(1-A098550(Δ[n²]+1))+1`
-/

namespace A253766.P16241264889047220968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A098550 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat| + 1

end

end A253766.P16241264889047220968

/-! ## A253766.P15107549202572061205

`A098550(record[xor(1, n)+1])%(n+2)²`
-/

namespace A253766.P15107549202572061205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) ((n + 2) ^ 2 : ℤ)

end

end A253766.P15107549202572061205

/-! ## A253766.P494824818965770117

`A098552(A098551(2*(n+1)))`
-/

namespace A253766.P494824818965770117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (2 * (n + 1))).toNat

end

end A253766.P494824818965770117

/-! ## A253766.P17731024356376278257

`A000027(A098550(n+2+n))`
-/

namespace A253766.P17731024356376278257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A098550 (n + 2 + n)).toNat

end

end A253766.P17731024356376278257

/-! ## A253766.P7328818470196204260

`A098551(A098552(n+2+n))`
-/

namespace A253766.P7328818470196204260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A098552 (n + 2 + n)).toNat

end

end A253766.P7328818470196204260

/-! ## A253766.P6480737804830271987

`∑{d}[A098550(n+2+n), A000010(#)]`
-/

namespace A253766.P6480737804830271987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A253766.P6480737804830271987

/-! ## A253766.P16585091122494095808

`∏{d}[A098550(n+2+n), A014963(#)]`
-/

namespace A253766.P16585091122494095808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A253766.P16585091122494095808

/-! ## A253766.P15034223219337309354

`A098550(n+2+n)%A000041(n+4)`
-/

namespace A253766.P15034223219337309354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098550 (n + 2 + n)) (A000041 (n + 4))

end

end A253766.P15034223219337309354

/-!
# A253767: Partial sums of A247666.

The programs for A253767, there is no canonical definition to state claims against.
-/

/-! ## A253767.P14249941075952478569

`∑[A247666(n)]`
-/

namespace A253767.P14249941075952478569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P14249941075952478569

/-! ## A253767.P6322783369200876894

`∑[A275667(2*n)]`
-/

namespace A253767.P6322783369200876894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275667 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P6322783369200876894

/-! ## A253767.P8392952552754299059

`∑[A247649(2*∑[and(n, -n)²]+n)]`
-/

namespace A253767.P8392952552754299059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (2 * (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P8392952552754299059

/-! ## A253767.P12740264514970535675

`∑[A247649(A001196(n))]`
-/

namespace A253767.P12740264514970535675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A001196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P12740264514970535675

/-! ## A253767.P2695608694951316289

`∑[A247649(3*A000695(n))]`
-/

namespace A253767.P2695608694951316289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (3 * A000695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P2695608694951316289

/-! ## A253767.P7626540229547323156

`∑[A247649(3*A062880(n))]`
-/

namespace A253767.P7626540229547323156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (3 * A062880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P7626540229547323156

/-! ## A253767.P17749666340086137145

`A247666(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A253767.P17749666340086137145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247666 n + a (A023443 n).toNat

end

end A253767.P17749666340086137145

/-! ## A253767.P9498624048744419855

`A247666(n%A067497(n))+a(n-1)` with `a(0)=1`
-/

namespace A253767.P9498624048744419855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247666 (Int.tmod (n : ℤ) (A067497 n)).toNat + a (n - 1)

end

end A253767.P9498624048744419855

/-! ## A253767.P4313022177430182921

`∑[A247649(A062880(n)+A000695(n))]`
-/

namespace A253767.P4313022177430182921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A062880 n + A000695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P4313022177430182921

/-!
# A253768: Partial sums of A098550.

The programs for A253768, there is no canonical definition to state claims against.
-/

/-! ## A253768.P1620771765113490314

`∑[A098550(n+1)]`
-/

namespace A253768.P1620771765113490314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253768.P1620771765113490314

/-! ## A253768.P834702978047799633

`∑[root(A098550(-xor(n, -1))², 2)]`
-/

namespace A253768.P834702978047799633
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A098550 (-Int.xor (n : ℤ) (-1)).toNat ^ 2 : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253768.P834702978047799633

/-! ## A253768.P16217263738923000218

`A098550(n%(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A253768.P16217263738923000218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098550 (n % (n + 1) + 1) + a (n - 1)

end

end A253768.P16217263738923000218

/-! ## A253768.P10016825326433964419

`∑[A098552(A098551(n+1))]`
-/

namespace A253768.P10016825326433964419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253768.P10016825326433964419

/-! ## A253768.P3460250909638847307

`A000027(∑[A098550(-xor(n, -1))])`
-/

namespace A253768.P3460250909638847307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253768.P3460250909638847307

/-! ## A253768.P2628332718978541852

`A098550(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A253768.P2628332718978541852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098550 (n + 1) + a (A023443 n).toNat

end

end A253768.P2628332718978541852

/-! ## A253768.P9031501051522765309

`∑[A000005(((-1)^n)²)*A098550(-xor(n, -1))]`
-/

namespace A253768.P9031501051522765309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * A098550 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253768.P9031501051522765309

/-! ## A253768.P16045074800074656466

`a(n-1)+A007318(C(2, n))*A098550(n+1)` with `a(0)=1`
-/

namespace A253768.P16045074800074656466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 n) * A098550 (n + 1)

end

end A253768.P16045074800074656466

/-! ## A253768.P14002723494238129205

`a(n-1)+A098550(n+1)+A008683(4*(n+1))` with `a(0)=1`
-/

namespace A253768.P14002723494238129205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A098550 (n + 1) + A008683 (4 * (n + 1)))

end

end A253768.P14002723494238129205

/-! ## A253768.P13403512676546467527

`a(n-1)+A098550(n+1)^and(1, A000040(n+1))` with `a(0)=1`
-/

namespace A253768.P13403512676546467527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A098550 (n + 1) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A253768.P13403512676546467527

/-!
# A253769: Sum of number of divisors of all positive integers <= prime(n).

The programs for A253769, the canonical program `A253769.P2452333697715072660` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253769 has offset 1).

The definition of A253769 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253769.P2452333697715072660

`A006218(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253769

/-- `A006218(A000040(n+1))` -/
def P2452333697715072660.Spec : Prop :=
  ∀ n, P2452333697715072660.a n = A253769 (n + 1)

theorem P2452333697715072660.correct : P2452333697715072660.Spec := by
  intro n
  simp only [A253769, Nat.add_sub_cancel]

end A253769

/-! ## A253769.P296419524247576159

`∑[A139140(n)]`
-/

namespace A253769.P296419524247576159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253769.P296419524247576159

namespace A253769

/-- `∑[A139140(n)]` -/
def P296419524247576159.Spec : Prop :=
  ∀ n, P296419524247576159.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P9883441654641769831

`A085683(n+1)+1`
-/

namespace A253769.P9883441654641769831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085683 (n + 1) + 1

end

end A253769.P9883441654641769831

namespace A253769

/-- `A085683(n+1)+1` -/
def P9883441654641769831.Spec : Prop :=
  ∀ n, P9883441654641769831.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P13635923290565109069

`A006218(Δ[A007504(n)])`
-/

namespace A253769.P13635923290565109069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (n + 1) - f1 n).toNat

end

end A253769.P13635923290565109069

namespace A253769

/-- `A006218(Δ[A007504(n)])` -/
def P13635923290565109069.Spec : Prop :=
  ∀ n, P13635923290565109069.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P17005787867216747514

`A006218(A008578(n+2))`
-/

namespace A253769.P17005787867216747514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A008578 (n + 2)).toNat

end

end A253769.P17005787867216747514

namespace A253769

/-- `A006218(A008578(n+2))` -/
def P17005787867216747514.Spec : Prop :=
  ∀ n, P17005787867216747514.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P7682322252531094130

`A006218(A182986(n+2))`
-/

namespace A253769.P7682322252531094130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A182986 (n + 2)).toNat

end

end A253769.P7682322252531094130

namespace A253769

/-- `A006218(A182986(n+2))` -/
def P7682322252531094130.Spec : Prop :=
  ∀ n, P7682322252531094130.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P3895002862693446565

`A006218(p?[record[A351233(n)]])`
-/

namespace A253769.P3895002862693446565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A253769.P3895002862693446565

namespace A253769

/-- `A006218(p?[record[A351233(n)]])` -/
def P3895002862693446565.Spec : Prop :=
  ∀ n, P3895002862693446565.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P14762954749335309813

`A006218(record[A006530(n+2)])`
-/

namespace A253769.P14762954749335309813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253769.P14762954749335309813

namespace A253769

/-- `A006218(record[A006530(n+2)])` -/
def P14762954749335309813.Spec : Prop :=
  ∀ n, P14762954749335309813.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P7286072629192205239

`A006218(record[A008472(n+2)])`
-/

namespace A253769.P7286072629192205239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253769.P7286072629192205239

namespace A253769

/-- `A006218(record[A008472(n+2)])` -/
def P7286072629192205239.Spec : Prop :=
  ∀ n, P7286072629192205239.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P12060754583208770162

`A006218(record[A020639(n+2)])`
-/

namespace A253769.P12060754583208770162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253769.P12060754583208770162

namespace A253769

/-- `A006218(record[A020639(n+2)])` -/
def P12060754583208770162.Spec : Prop :=
  ∀ n, P12060754583208770162.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P10830555119070138206

`A006218(A006093(n+1)+1)`
-/

namespace A253769.P10830555119070138206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A006093 (n + 1) + 1).toNat

end

end A253769.P10830555119070138206

namespace A253769

/-- `A006218(A006093(n+1)+1)` -/
def P10830555119070138206.Spec : Prop :=
  ∀ n, P10830555119070138206.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P6536205057561553010

`A006218(A040976(n+1)+2)`
-/

namespace A253769.P6536205057561553010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A040976 (n + 1) + 2).toNat

end

end A253769.P6536205057561553010

namespace A253769

/-- `A006218(A040976(n+1)+2)` -/
def P6536205057561553010.Spec : Prop :=
  ∀ n, P6536205057561553010.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P15791362398214222769

`A006218(A207790(2*(n+1)))`
-/

namespace A253769.P15791362398214222769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A207790 (2 * (n + 1))).toNat

end

end A253769.P15791362398214222769

namespace A253769

/-- `A006218(A207790(2*(n+1)))` -/
def P15791362398214222769.Spec : Prop :=
  ∀ n, P15791362398214222769.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P13471522756494094575

`A006218(A001747(n+2)/2)`
-/

namespace A253769.P13471522756494094575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A253769.P13471522756494094575

namespace A253769

/-- `A006218(A001747(n+2)/2)` -/
def P13471522756494094575.Spec : Prop :=
  ∀ n, P13471522756494094575.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P421599576066702643

`∩[A006218(n)+2, A006218(n)]`
-/

namespace A253769.P421599576066702643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253769.P421599576066702643

namespace A253769

/-- `∩[A006218(n)+2, A006218(n)]` -/
def P421599576066702643.Spec : Prop :=
  ∀ n, (P421599576066702643.a n : ℤ) = A253769 (n + 1)

end A253769

/-! ## A253769.P2805429786719298207

`A006218(record[A000010(n+1)+1])`
-/

namespace A253769.P2805429786719298207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253769.P2805429786719298207

namespace A253769

/-- `A006218(record[A000010(n+1)+1])` -/
def P2805429786719298207.Spec : Prop :=
  ∀ n, P2805429786719298207.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P5666806598204986093

`A006218(eq[1, A001222(n+1)]+1)`
-/

namespace A253769.P5666806598204986093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253769.P5666806598204986093

namespace A253769

/-- `A006218(eq[1, A001222(n+1)]+1)` -/
def P5666806598204986093.Spec : Prop :=
  ∀ n, P5666806598204986093.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P11235964017316658639

`A006218(eq[2, A000005(n+1)]+1)`
-/

namespace A253769.P11235964017316658639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253769.P11235964017316658639

namespace A253769

/-- `A006218(eq[2, A000005(n+1)]+1)` -/
def P11235964017316658639.Spec : Prop :=
  ∀ n, P11235964017316658639.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P17542047489172370200

`A006218(A033286(n+1)/(n+1))`
-/

namespace A253769.P17542047489172370200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A253769.P17542047489172370200

namespace A253769

/-- `A006218(A033286(n+1)/(n+1))` -/
def P17542047489172370200.Spec : Prop :=
  ∀ n, P17542047489172370200.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P12836037630692006942

`A006218(eq[n, A000010(n+1)]+1)`
-/

namespace A253769.P12836037630692006942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253769.P12836037630692006942

namespace A253769

/-- `A006218(eq[n, A000010(n+1)]+1)` -/
def P12836037630692006942.Spec : Prop :=
  ∀ n, P12836037630692006942.a n = A253769 (n + 1)

end A253769

/-!
# A253770: Number of ON states after n generations of cellular automaton based on triangles, with diamonds.

The programs for A253770, there is no canonical definition to state claims against.
-/

/-! ## A253770.P13908891815478508954

`2*A160167(n)`
-/

namespace A253770.P13908891815478508954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160167 n

end

end A253770.P13908891815478508954

/-! ## A253770.P8206069618768242233

`3*A160157(n)`
-/

namespace A253770.P8206069618768242233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160157 n

end

end A253770.P8206069618768242233

/-! ## A253770.P2082291736836184570

`6*A160120(n)`
-/

namespace A253770.P2082291736836184570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A160120 n

end

end A253770.P2082291736836184570

/-! ## A253770.P5882877146124162851

`∑[A253771(n)]`
-/

namespace A253770.P5882877146124162851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253770.P5882877146124162851

/-! ## A253770.P3477023186779379049

`A005843(A160167(n))`
-/

namespace A253770.P3477023186779379049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160167 n).toNat

end

end A253770.P3477023186779379049

/-!
# A253771: First differences of A253770.

The programs for A253771, there is no canonical definition to state claims against.
-/

/-! ## A253771.P1090056058450930767

`6*A160121(A000038(n)+n)%(∑[2*n²]+1)`
-/

namespace A253771.P1090056058450930767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (A160121 (A000038 n + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A253771.P1090056058450930767

/-! ## A253771.P11309015138477152099

`6*A160121(A000007(n)+n)%A016756(n)`
-/

namespace A253771.P11309015138477152099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (A160121 (A000007 n + (n : ℤ)).toNat) (A016756 n)

end

end A253771.P11309015138477152099

/-! ## A253771.P12669029405176225558

`(6*A160121(A000038(n)+n))%A028071(n)`
-/

namespace A253771.P12669029405176225558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A160121 (A000038 n + (n : ℤ)).toNat) (A028071 n)

end

end A253771.P12669029405176225558

/-! ## A253771.P1112226927851834906

`Δ[A253770(log2(ceil(2^(n-1))))]`
-/

namespace A253771.P1112226927851834906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253770 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253771.P1112226927851834906

/-!
# A253772: Numbers k such that 4^k + 13 is prime.

The programs for A253772, there is no canonical definition to state claims against.
-/

/-! ## A253772.P7238973825537983700

`A102634(n+1)/2`
-/

namespace A253772.P7238973825537983700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102634 (n + 1) : ℚ) / 2

end

end A253772.P7238973825537983700

/-! ## A253772.P430811512323051115

`record[ratio[A102634(A152271(n))]]`
-/

namespace A253772.P430811512323051115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102634 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253772.P430811512323051115

/-! ## A253772.P8171636476646188341

`floor(A102634(∑[A178487(n)^n])/2)`
-/

namespace A253772.P8171636476646188341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102634 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A253772.P8171636476646188341

/-! ## A253772.P2332562384400473728

`2^A008683(A002146(n))*A102634(n+1)`
-/

namespace A253772.P2332562384400473728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002146 n).toNat : ℤ) * (A102634 (n + 1) : ℚ)

end

end A253772.P2332562384400473728

/-! ## A253772.P4973142473378913518

`2^A008683(A181758(n+1))*A102634(n+1)`
-/

namespace A253772.P4973142473378913518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A102634 (n + 1) : ℚ)

end

end A253772.P4973142473378913518

/-!
# A253773: Numbers k such that 4^k + 15 is prime.

The programs for A253773, there is no canonical definition to state claims against.
-/

/-! ## A253773.P15577209142203302498

`record[A273943(A057197(n+1))]`
-/

namespace A253773.P15577209142203302498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A057197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P15577209142203302498

/-! ## A253773.P8794394699900426174

`record[A025480(A057197(n+2))]`
-/

namespace A253773.P8794394699900426174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A057197 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P8794394699900426174

/-! ## A253773.P4135249861138050416

`record[A057979(A057197(n+1)+1)]`
-/

namespace A253773.P4135249861138050416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057197 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P4135249861138050416

/-! ## A253773.P16938989045800255715

`record[A001057(A057197(n+2)-1)]`
-/

namespace A253773.P16938989045800255715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A057197 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P16938989045800255715

/-! ## A253773.P4193525435977155989

`record[A142150(A057197(n+2)-char[1])]`
-/

namespace A253773.P4193525435977155989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A057197 (n + 2) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P4193525435977155989

/-!
# A253774: Numbers k such that 4^k + 19 is prime.

The programs for A253774, there is no canonical definition to state claims against.
-/

/-! ## A253774.P4393939274561679635

`A057221(n+1)/2`
-/

namespace A253774.P4393939274561679635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057221 (n + 1) : ℚ) / 2

end

end A253774.P4393939274561679635

/-! ## A253774.P9627526389698915679

`record[ratio[A057221(A152271(n))]]`
-/

namespace A253774.P9627526389698915679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057221 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253774.P9627526389698915679

/-! ## A253774.P5630876865534183076

`floor(A057221(A005496(n))/2)`
-/

namespace A253774.P5630876865534183076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057221 (A005496 n).toNat : ℚ) / 2⌋

end

end A253774.P5630876865534183076

/-! ## A253774.P203609112418730464

`floor(A057221(A005555(n))/2)`
-/

namespace A253774.P203609112418730464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057221 (A005555 n).toNat : ℚ) / 2⌋

end

end A253774.P203609112418730464

/-! ## A253774.P15325028070653076977

`floor(A057221(∑[A250662(n)%2])/2)`
-/

namespace A253774.P15325028070653076977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250662 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A253774.P15325028070653076977

/-!
# A253776: Primes representable as x^y + x + y, where x>1, y>1 are integers.

The programs for A253776, there is no canonical definition to state claims against.
-/

/-! ## A253776.P11726038627975478671

`p?[A253775(n+1)]`
-/

namespace A253776.P11726038627975478671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P11726038627975478671

/-! ## A253776.P2474075505798581437

`p?[record[A253775(A065648(n))]]`
-/

namespace A253776.P2474075505798581437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P2474075505798581437

/-! ## A253776.P8374825739061470852

`p?[record[A253775(A152271(n))]]`
-/

namespace A253776.P8374825739061470852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P8374825739061470852

/-! ## A253776.P14686292623468426841

`p?[record[A253775(A324346(n))]]`
-/

namespace A253776.P14686292623468426841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P14686292623468426841

/-! ## A253776.P6341206302505741465

`p?[record[A253775(A324347(n))]]`
-/

namespace A253776.P6341206302505741465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P6341206302505741465

/-!
# A253778: Numbers b that are the first of m^3 consecutive cubes whose sum is a cube c^3, where m^3 is not divisible by 3 (A118719).

The programs for A253778, there is no canonical definition to state claims against.
-/

/-! ## A253778.P2156845586306045715

`Δ[A347382(record[A077977(n)])]`
-/

namespace A253778.P2156845586306045715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347382 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253778.P2156845586306045715

/-!
# A253779: Numbers c whose cubes are equal to the sum of m^3 consecutive cubes for m^3 not divisible by 3 (A118719).

The programs for A253779, the canonical program `A253779.P12743486929630698630` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253779 has offset 1).

The definition of A253779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253779.P7522765178390457531

`A253780(n+1)^(1/3)`
-/

namespace A253779.P7522765178390457531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253780 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A253779.P7522765178390457531

namespace A253779

/-- `A253780(n+1)^(1/3)` -/
def P7522765178390457531.Spec : Prop :=
  ∀ n, P7522765178390457531.a n = (A253779 (n + 1) : ℝ)

end A253779

/-! ## A253779.P12743486929630698630

`A027480(A032766(n))*A257083(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253779

/-- `A027480(A032766(n))*A257083(n)` -/
def P12743486929630698630.Spec : Prop :=
  ∀ n, P12743486929630698630.a n = A253779 (n + 1)

theorem P12743486929630698630.correct : P12743486929630698630.Spec := by
  intro n
  simp only [A253779, Nat.add_sub_cancel]

end A253779

/-! ## A253779.P14395018525318247762

`(A001651(n+1)+1)*A071244(A001651(n+1))`
-/

namespace A253779.P14395018525318247762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 1) + 1) * A071244 (A001651 (n + 1)).toNat

end

end A253779.P14395018525318247762

namespace A253779

/-- `(A001651(n+1)+1)*A071244(A001651(n+1))` -/
def P14395018525318247762.Spec : Prop :=
  ∀ n, P14395018525318247762.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P2946109539734662296

`A004526(3*n)*A071239(A008619(3*n))`
-/

namespace A253779.P2946109539734662296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * n) * A071239 (A008619 (3 * n)).toNat

end

end A253779.P2946109539734662296

namespace A253779

/-- `A004526(3*n)*A071239(A008619(3*n))` -/
def P2946109539734662296.Spec : Prop :=
  ∀ n, P2946109539734662296.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P9499000744683160957

`A004526(3*n)*A071239(A004526(3*n)+1)`
-/

namespace A253779.P9499000744683160957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * n) * A071239 (A004526 (3 * n) + 1).toNat

end

end A253779.P9499000744683160957

namespace A253779

/-- `A004526(3*n)*A071239(A004526(3*n)+1)` -/
def P9499000744683160957.Spec : Prop :=
  ∀ n, P9499000744683160957.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P12285906297938684135

`A000217(A001082(n+1))*A016051(n+1)`
-/

namespace A253779.P12285906297938684135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001082 (n + 1)).toNat * A016051 (n + 1)

end

end A253779.P12285906297938684135

namespace A253779

/-- `A000217(A001082(n+1))*A016051(n+1)` -/
def P12285906297938684135.Spec : Prop :=
  ∀ n, P12285906297938684135.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P17456871724443491398

`3*A001651(n+1)*A000217(∑[A022998(n)])`
-/

namespace A253779.P17456871724443491398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001651 (n + 1) * A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253779.P17456871724443491398

namespace A253779

/-- `3*A001651(n+1)*A000217(∑[A022998(n)])` -/
def P17456871724443491398.Spec : Prop :=
  ∀ n, P17456871724443491398.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P9723753027702835245

`A000217(A001082(n+1))*A008585(A001651(n+1))`
-/

namespace A253779.P9723753027702835245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001082 (n + 1)).toNat * A008585 (A001651 (n + 1)).toNat

end

end A253779.P9723753027702835245

namespace A253779

/-- `A000217(A001082(n+1))*A008585(A001651(n+1))` -/
def P9723753027702835245.Spec : Prop :=
  ∀ n, P9723753027702835245.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P6744970380962836435

`A000217(A001082(n+1))*A007494(2*A001651(n+1))`
-/

namespace A253779.P6744970380962836435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001082 (n + 1)).toNat * A007494 (2 * A001651 (n + 1)).toNat

end

end A253779.P6744970380962836435

namespace A253779

/-- `A000217(A001082(n+1))*A007494(2*A001651(n+1))` -/
def P6744970380962836435.Spec : Prop :=
  ∀ n, P6744970380962836435.a n = A253779 (n + 1)

end A253779

/-!
# A253780: Cubes c^3 that are equal to the sum of m^3 consecutive cubes starting at b^3 with b (A253778) for m^3 not divisible by 3 (A118719).

The programs for A253780, the canonical program `A253780.P12171033837205224752` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253780 has offset 1).

The definition of A253780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253780.P12171033837205224752

`A253779(n+1)^3`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253780

/-- `A253779(n+1)^3` -/
def P12171033837205224752.Spec : Prop :=
  ∀ n, P12171033837205224752.a n = A253780 (n + 1)

theorem P12171033837205224752.correct : P12171033837205224752.Spec := by
  intro n
  simp only [A253780, Nat.add_sub_cancel]

end A253780

/-! ## A253780.P2737114009260753153

`(A027480(A032766(n))*A257083(n))^3`
-/

namespace A253780.P2737114009260753153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027480 (A032766 n).toNat * A257083 n) ^ 3

end

end A253780.P2737114009260753153

namespace A253780

/-- `(A027480(A032766(n))*A257083(n))^3` -/
def P2737114009260753153.Spec : Prop :=
  ∀ n, P2737114009260753153.a n = A253780 (n + 1)

end A253780

/-! ## A253780.P4170004496178949736

`(A000217(A001082(n+1))*A016051(n+1))^3`
-/

namespace A253780.P4170004496178949736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A001082 (n + 1)).toNat * A016051 (n + 1)) ^ 3

end

end A253780.P4170004496178949736

namespace A253780

/-- `(A000217(A001082(n+1))*A016051(n+1))^3` -/
def P4170004496178949736.Spec : Prop :=
  ∀ n, P4170004496178949736.a n = A253780 (n + 1)

end A253780

/-! ## A253780.P13159319508231071639

`(3*A001651(n+1)*A000217(∑[A022998(n)]))^3`
-/

namespace A253780.P13159319508231071639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A001651 (n + 1) * A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) ^ 3

end

end A253780.P13159319508231071639

namespace A253780

/-- `(3*A001651(n+1)*A000217(∑[A022998(n)]))^3` -/
def P13159319508231071639.Spec : Prop :=
  ∀ n, P13159319508231071639.a n = A253780 (n + 1)

end A253780

/-! ## A253780.P4822535872427463423

`(A000217(A001082(n+1))*A008585(A001651(n+1)))^3`
-/

namespace A253780.P4822535872427463423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A001082 (n + 1)).toNat * A008585 (A001651 (n + 1)).toNat) ^ 3

end

end A253780.P4822535872427463423

namespace A253780

/-- `(A000217(A001082(n+1))*A008585(A001651(n+1)))^3` -/
def P4822535872427463423.Spec : Prop :=
  ∀ n, P4822535872427463423.a n = A253780 (n + 1)

end A253780

/-!
# A253781: Numbers n for which A075167(n) = A252464(n).

The programs for A253781, the canonical program `A253781.P17644338826766911626` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253781 has offset 1).

The definition of A253781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253781.P17644338826766911626

`comp[A253782(n+1)-1]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253781

/-- `comp[A253782(n+1)-1]+1` -/
def P17644338826766911626.Spec : Prop :=
  ∀ n, (P17644338826766911626.a n : ℤ) = A253781 (n + 1)

theorem P17644338826766911626.correct : P17644338826766911626.Spec := by
  intro n
  simp only [A253781, Nat.add_sub_cancel]

end A253781

/-! ## A253781.P18143950728363603787

`comp[∪[A253779(3*n+1), A253782(n+1)]]`
-/

namespace A253781.P18143950728363603787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253779 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253782 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A253781.P18143950728363603787

namespace A253781

/-- `comp[∪[A253779(3*n+1), A253782(n+1)]]` -/
def P18143950728363603787.Spec : Prop :=
  ∀ n, (P18143950728363603787.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P3792468456620325874

`record[(n+1)/A113061((n+1)/A006530(n+1))]`
-/

namespace A253781.P3792468456620325874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A113061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253781.P3792468456620325874

namespace A253781

/-- `record[(n+1)/A113061((n+1)/A006530(n+1))]` -/
def P3792468456620325874.Spec : Prop :=
  ∀ n, P3792468456620325874.a n = (A253781 (n + 1) : ℚ)

end A253781

/-! ## A253781.P2535091520339353545

`eq[A075167(n+1), A252464(n+1)]+1`
-/

namespace A253781.P2535091520339353545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A253781.P2535091520339353545

namespace A253781

/-- `eq[A075167(n+1), A252464(n+1)]+1` -/
def P2535091520339353545.Spec : Prop :=
  ∀ n, (P2535091520339353545.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P1085994131650429023

`record[A007948(n+1)*A295657(A217434(n+1))]`
-/

namespace A253781.P1085994131650429023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) * A295657 (A217434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253781.P1085994131650429023

namespace A253781

/-- `record[A007948(n+1)*A295657(A217434(n+1))]` -/
def P1085994131650429023.Spec : Prop :=
  ∀ n, P1085994131650429023.a n = A253781 (n + 1)

end A253781

/-! ## A253781.P13988133612146621986

`record[(n+1)/A053150(A126289(n+1))]`
-/

namespace A253781.P13988133612146621986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053150 (A126289 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253781.P13988133612146621986

namespace A253781

/-- `record[(n+1)/A053150(A126289(n+1))]` -/
def P13988133612146621986.Spec : Prop :=
  ∀ n, P13988133612146621986.a n = (A253781 (n + 1) : ℚ)

end A253781

/-! ## A253781.P8490843817208963870

`lt[A153537(A294333(n)), A094784(n+1)]`
-/

namespace A253781.P8490843817208963870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153537 (A294333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253781.P8490843817208963870

namespace A253781

/-- `lt[A153537(A294333(n)), A094784(n+1)]` -/
def P8490843817208963870.Spec : Prop :=
  ∀ n, (P8490843817208963870.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P7185928558747334572

`record[A019554(A007948(n+1)*A217434(n+1))]`
-/

namespace A253781.P7185928558747334572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A007948 (n + 1) * A217434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253781.P7185928558747334572

namespace A253781

/-- `record[A019554(A007948(n+1)*A217434(n+1))]` -/
def P7185928558747334572.Spec : Prop :=
  ∀ n, P7185928558747334572.a n = A253781 (n + 1)

end A253781

/-! ## A253781.P7114892832685924573

`lt[A294335(n), A294339(n+1)²]`
-/

namespace A253781.P7114892832685924573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294339 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253781.P7114892832685924573

namespace A253781

/-- `lt[A294335(n), A294339(n+1)²]` -/
def P7114892832685924573.Spec : Prop :=
  ∀ n, (P7114892832685924573.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P13585616700997175439

`eq[A294335(n)%A052330(n), A294335(n)]`
-/

namespace A253781.P13585616700997175439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294335 n) (A052330 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253781.P13585616700997175439

namespace A253781

/-- `eq[A294335(n)%A052330(n), A294335(n)]` -/
def P13585616700997175439.Spec : Prop :=
  ∀ n, (P13585616700997175439.a n : ℤ) = A253781 (n + 1)

end A253781

/-!
# A253782: Numbers n for which A075167(n) <> A252464(n).

The programs for A253782, the canonical program `A253782.P822978868598912140` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253782 has offset 1).

The definition of A253782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253782.P822978868598912140

`lt[7, A113061((n+1)/A006530(n+1))]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A253782

/-- `lt[7, A113061((n+1)/A006530(n+1))]+1` -/
def P822978868598912140.Spec : Prop :=
  ∀ n, (P822978868598912140.a n : ℤ) = A253782 (n + 1)

theorem P822978868598912140.correct : P822978868598912140.Spec := by
  intro n
  simp only [A253782, Nat.add_sub_cancel]

end A253782

/-! ## A253782.P1177444195929852719

`lt[A075167(n+1), A252464(n+1)]+1`
-/

namespace A253782.P1177444195929852719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A253782.P1177444195929852719

namespace A253782

/-- `lt[A075167(n+1), A252464(n+1)]+1` -/
def P1177444195929852719.Spec : Prop :=
  ∀ n, (P1177444195929852719.a n : ℤ) = A253782 (n + 1)

end A253782

/-! ## A253782.P6096602355653730477

`lt[A323508(n+1)%10, 1]+1`
-/

namespace A253782.P6096602355653730477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323508 (n + 1)) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A253782.P6096602355653730477

namespace A253782

/-- `lt[A323508(n+1)%10, 1]+1` -/
def P6096602355653730477.Spec : Prop :=
  ∀ n, (P6096602355653730477.a n : ℤ) = A253782 (n + 1)

end A253782

/-! ## A253782.P5457226287738214952

`lt[A048259(n), A005900(A294333(n))]`
-/

namespace A253782.P5457226287738214952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (A294333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253782.P5457226287738214952

namespace A253782

/-- `lt[A048259(n), A005900(A294333(n))]` -/
def P5457226287738214952.Spec : Prop :=
  ∀ n, (P5457226287738214952.a n : ℤ) = A253782 (n + 1)

end A253782

/-! ## A253782.P7033760296669669683

`lt[A048896(n), A005578(A294333(n))]`
-/

namespace A253782.P7033760296669669683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A294333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253782.P7033760296669669683

namespace A253782

/-- `lt[A048896(n), A005578(A294333(n))]` -/
def P7033760296669669683.Spec : Prop :=
  ∀ n, (P7033760296669669683.a n : ℤ) = A253782 (n + 1)

end A253782

/-!
# A253783: a(1) = 0; for n>1: a(n) = A075167(1+A071178(n)) + (A061395(n) - A061395(A051119(n))) + a(A051119(n)).

The programs for A253783, there is no canonical definition to state claims against.
-/

/-! ## A253783.P4641250713264563495

`A075167(A006530(n+1)*A046523(n+1))`
-/

namespace A253783.P4641250713264563495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A006530 (n + 1) * A046523 (n + 1)).toNat

end

end A253783.P4641250713264563495

/-! ## A253783.P13365218207044514328

`A056239(A006530(n+1)*A194621(∑[n+1]))`
-/

namespace A253783.P13365218207044514328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A006530 (n + 1) * A194621 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A253783.P13365218207044514328

/-! ## A253783.P4495446127062194623

`A297113(A000188(n+1)*A078615(n+1))`
-/

namespace A253783.P4495446127062194623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A000188 (n + 1) * A078615 (n + 1)).toNat

end

end A253783.P4495446127062194623

/-! ## A253783.P9812608373006226131

`A297113(A019554(n+1)*A066990(n+1))`
-/

namespace A253783.P9812608373006226131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A019554 (n + 1) * A066990 (n + 1)).toNat

end

end A253783.P9812608373006226131

/-! ## A253783.P10835184497502737074

`A297113(A007947(n+1)²*A000188(n+1))`
-/

namespace A253783.P10835184497502737074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A007947 (n + 1) ^ 2 * A000188 (n + 1)).toNat

end

end A253783.P10835184497502737074

/-! ## A253783.P3823478298604874646

`A297113(A000188(n+1)*A007947(n+1)*A007947(n+1))`
-/

namespace A253783.P3823478298604874646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A000188 (n + 1) * A007947 (n + 1) * A007947 (n + 1)).toNat

end

end A253783.P3823478298604874646

/-! ## A253783.P2869187140735858370

`A075167(A253560(n+1))`
-/

namespace A253783.P2869187140735858370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A253560 (n + 1)).toNat

end

end A253783.P2869187140735858370

/-! ## A253783.P8773490756852859101

`A075167((n+1)*A006530(n+1))`
-/

namespace A253783.P8773490756852859101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 ((n + 1 : ℤ) * A006530 (n + 1)).toNat

end

end A253783.P8773490756852859101

/-! ## A253783.P41914639604341685

`A252464(A097246(A064549(n+1)))`
-/

namespace A253783.P41914639604341685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A097246 (A064549 (n + 1)).toNat).toNat

end

end A253783.P41914639604341685

/-! ## A253783.P4441346160866104013

`A075167(A129598(n+1))%A022568(n)`
-/

namespace A253783.P4441346160866104013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075167 (A129598 (n + 1)).toNat) (A022568 n)

end

end A253783.P4441346160866104013

/-!
# A253785: Composite numbers n = prime(i_1) * ... * prime(i_k), prime(i_1) <= prime(i_2) <= ... <= prime(i_k), with at least one pair of successive prime factors (when sorted into monotonic order) where the latter prime factor is greater than the square of the former: prime(i_x)^2 < prime(i_{x+1}), for some x in 1 .. k-1, where k = A001222(n) and i_k = A061395(n).

The programs for A253785, there is no canonical definition to state claims against.
-/

/-! ## A253785.P9665578553093434716

`comp[A253784(n+1)-1]+1`
-/

namespace A253785.P9665578553093434716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253785.P9665578553093434716

/-! ## A253785.P3098954225845440461

`comp[∪[A253779(n+1), A253784(n+1)]]`
-/

namespace A253785.P3098954225845440461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253779 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A253785.P3098954225845440461

/-! ## A253785.P14804954575284969712

`∩[A251727(n+1), comp[A253784(n+1)]]`
-/

namespace A253785.P14804954575284969712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A253785.P14804954575284969712

/-! ## A253785.P5643393532672153208

`A020725(comp[A253784(n+1)-1])`
-/

namespace A253785.P5643393532672153208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A253785.P5643393532672153208

/-! ## A253785.P2354791071254590630

`∩[A167707(n+1), A362982(n+1)]`
-/

namespace A253785.P2354791071254590630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253785.P2354791071254590630

/-!
# A253786: a(3n) = 0, a(3n+1) = 0, a(3n+2) = 1 + a(n+1).

The programs for A253786, the canonical program `A253786.P9148671092722524986` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253786 has offset 0).

The definition of A253786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253786.P9148671092722524986

`val(abs(1-2*n), 3)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253786

/-- `val(abs(1-2*n), 3)` -/
def P9148671092722524986.Spec : Prop :=
  ∀ n, (P9148671092722524986.a n : ℤ) = A253786 n

theorem P9148671092722524986.correct : P9148671092722524986.Spec := by
  intro n
  simp only [A253786]

end A253786

/-! ## A253786.P6437991492561407031

`dr(val((1-2*n)², 9))`
-/

namespace A253786.P6437991492561407031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((1 - (2 * n : ℤ)) ^ 2).toNat 9 : ℤ)

end

end A253786.P6437991492561407031

namespace A253786

/-- `dr(val((1-2*n)², 9))` -/
def P6437991492561407031.Spec : Prop :=
  ∀ n, (P6437991492561407031.a n : ℤ) = A253786 n

end A253786

/-! ## A253786.P6819584719863980349

`val((1-2*n)², 3)/2`
-/

namespace A253786.P6819584719863980349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation ((1 - (2 * n : ℤ)) ^ 2).toNat 3 : ℚ) / 2

end

end A253786.P6819584719863980349

namespace A253786

/-- `val((1-2*n)², 3)/2` -/
def P6819584719863980349.Spec : Prop :=
  ∀ n, P6819584719863980349.a n = (A253786 n : ℚ)

end A253786

/-! ## A253786.P3130527025230603680

`val(abs(1-n)+n, 3)%20`
-/

namespace A253786.P3130527025230603680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + (n : ℤ)).toNat 3 % 20

end

end A253786.P3130527025230603680

namespace A253786

/-- `val(abs(1-n)+n, 3)%20` -/
def P3130527025230603680.Spec : Prop :=
  ∀ n, (P3130527025230603680.a n : ℤ) = A253786 n

end A253786

/-! ## A253786.P12462521476067615788

`A002265(2*val((1-2*n)², 3))`
-/

namespace A253786.P12462521476067615788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * SequenceMachineLib.valuation ((1 - (2 * n : ℤ)) ^ 2).toNat 3)

end

end A253786.P12462521476067615788

namespace A253786

/-- `A002265(2*val((1-2*n)², 3))` -/
def P12462521476067615788.Spec : Prop :=
  ∀ n, P12462521476067615788.a n = A253786 n

end A253786

/-! ## A253786.P6906600765560583495

`A215879(A060373(n))`
-/

namespace A253786.P6906600765560583495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A060373 n).toNat

end

end A253786.P6906600765560583495

namespace A253786

/-- `A215879(A060373(n))` -/
def P6906600765560583495.Spec : Prop :=
  ∀ n, P6906600765560583495.a n = A253786 n

end A253786

/-! ## A253786.P8195665090184504756

`A134022(A060373(n)+1)`
-/

namespace A253786.P8195665090184504756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A060373 n + 1).toNat

end

end A253786.P8195665090184504756

namespace A253786

/-- `A134022(A060373(n)+1)` -/
def P8195665090184504756.Spec : Prop :=
  ∀ n, P8195665090184504756.a n = A253786 n

end A253786

/-! ## A253786.P15090658801637698940

`A262097(A060373(n)+1)`
-/

namespace A253786.P15090658801637698940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (A060373 n + 1).toNat

end

end A253786.P15090658801637698940

namespace A253786

/-- `A262097(A060373(n)+1)` -/
def P15090658801637698940.Spec : Prop :=
  ∀ n, P15090658801637698940.a n = A253786 n

end A253786

/-! ## A253786.P10565862540144435626

`∑{d}[n+1, A185012(#-1)*A254046((n+1)/#)]`
-/

namespace A253786.P10565862540144435626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185012 (d - 1) * A254046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253786.P10565862540144435626

namespace A253786

/-- `∑{d}[n+1, A185012(#-1)*A254046((n+1)/#)]` -/
def P10565862540144435626.Spec : Prop :=
  ∀ n, P10565862540144435626.a n = A253786 n

end A253786

/-! ## A253786.P10232740126724079809

`A000989(n)-A000989(A002264(n))`
-/

namespace A253786.P10232740126724079809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n - A000989 (A002264 n).toNat

end

end A253786.P10232740126724079809

namespace A253786

/-- `A000989(n)-A000989(A002264(n))` -/
def P10232740126724079809.Spec : Prop :=
  ∀ n, P10232740126724079809.a n = A253786 n

end A253786

/-! ## A253786.P2683323514724200730

`A000989(n)-A000989(A260316(n))`
-/

namespace A253786.P2683323514724200730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n - A000989 (A260316 n).toNat

end

end A253786.P2683323514724200730

namespace A253786

/-- `A000989(n)-A000989(A260316(n))` -/
def P2683323514724200730.Spec : Prop :=
  ∀ n, P2683323514724200730.a n = A253786 n

end A253786

/-! ## A253786.P7608772851731511348

`A072078(abs(n+1-3*n))-1`
-/

namespace A253786.P7608772851731511348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 |(n + 1 : ℤ) - (3 * n : ℤ)|.toNat - 1

end

end A253786.P7608772851731511348

namespace A253786

/-- `A072078(abs(n+1-3*n))-1` -/
def P7608772851731511348.Spec : Prop :=
  ∀ n, P7608772851731511348.a n = A253786 n

end A253786

/-! ## A253786.P108291466636088743

`A007949(A004488(n)+2)`
-/

namespace A253786.P108291466636088743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A004488 n + 2).toNat

end

end A253786.P108291466636088743

namespace A253786

/-- `A007949(A004488(n)+2)` -/
def P108291466636088743.Spec : Prop :=
  ∀ n, P108291466636088743.a n = A253786 n

end A253786

/-! ## A253786.P4956105662581053985

`A007949(A117966(n)+2+n)`
-/

namespace A253786.P4956105662581053985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A117966 n + 2 + (n : ℤ)).toNat

end

end A253786.P4956105662581053985

namespace A253786

/-- `A007949(A117966(n)+2+n)` -/
def P4956105662581053985.Spec : Prop :=
  ∀ n, P4956105662581053985.a n = A253786 n

end A253786

/-! ## A253786.P15381361008809013164

`A007949(n+2-A343766(A128173(n)))`
-/

namespace A253786.P15381361008809013164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 ((n + 2 : ℤ) - A343766 (A128173 n).toNat).toNat

end

end A253786.P15381361008809013164

namespace A253786

/-- `A007949(n+2-A343766(A128173(n)))` -/
def P15381361008809013164.Spec : Prop :=
  ∀ n, P15381361008809013164.a n = A253786 n

end A253786

/-! ## A253786.P16717550064185486496

`A007949(A222257(n))`
-/

namespace A253786.P16717550064185486496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A222257 n).toNat

end

end A253786.P16717550064185486496

namespace A253786

/-- `A007949(A222257(n))` -/
def P16717550064185486496.Spec : Prop :=
  ∀ n, P16717550064185486496.a n = A253786 n

end A253786

/-! ## A253786.P9505706937590899876

`A007949(A004274(n+1))`
-/

namespace A253786.P9505706937590899876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A004274 (n + 1)).toNat

end

end A253786.P9505706937590899876

namespace A253786

/-- `A007949(A004274(n+1))` -/
def P9505706937590899876.Spec : Prop :=
  ∀ n, P9505706937590899876.a n = A253786 n

end A253786

/-! ## A253786.P6764948193828256284

`A007949(A004280(n+1))`
-/

namespace A253786.P6764948193828256284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A004280 (n + 1)).toNat

end

end A253786.P6764948193828256284

namespace A253786

/-- `A007949(A004280(n+1))` -/
def P6764948193828256284.Spec : Prop :=
  ∀ n, P6764948193828256284.a n = A253786 n

end A253786

/-! ## A253786.P4976612676610404688

`A007949(A047245(n+1))`
-/

namespace A253786.P4976612676610404688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A047245 (n + 1)).toNat

end

end A253786.P4976612676610404688

namespace A253786

/-- `A007949(A047245(n+1))` -/
def P4976612676610404688.Spec : Prop :=
  ∀ n, P4976612676610404688.a n = A253786 n

end A253786

/-! ## A253786.P10058025142318897546

`A007949(2*A028310(n)-1)`
-/

namespace A253786.P10058025142318897546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (2 * A028310 n - 1).toNat

end

end A253786.P10058025142318897546

namespace A253786

/-- `A007949(2*A028310(n)-1)` -/
def P10058025142318897546.Spec : Prop :=
  ∀ n, P10058025142318897546.a n = A253786 n

end A253786

/-!
# A253787: Row sums of irregular tables A252753 & A252755.

The programs for A253787, there is no canonical definition to state claims against.
-/

/-! ## A253787.P13322010724875734909

`A267758(A150840(n))`
-/

namespace A253787.P13322010724875734909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267758 (A150840 n).toNat

end

end A253787.P13322010724875734909

/-! ## A253787.P16223361028286446172

`A080791(A001147(n))+A010683(n)`
-/

namespace A253787.P16223361028286446172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A001147 n).toNat + A010683 n

end

end A253787.P16223361028286446172

/-!
# A253789: Fixed points of f(n) = A252753(n-1).

The programs for A253789, there is no canonical definition to state claims against.
-/

/-! ## A253789.P3909084354596363029

`record[gcd(n+1, A252753(n))]`
-/

namespace A253789.P3909084354596363029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A252753 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253789.P3909084354596363029

/-! ## A253789.P7402624721287175679

`eq[n, A252754(n+1)]+1`
-/

namespace A253789.P7402624721287175679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253789.P7402624721287175679

/-!
# A253790: a(1) = 1; thereafter, odd numbers such that A055396(n) = A001511(n-1).

The programs for A253790, there is no canonical definition to state claims against.
-/

/-! ## A253790.P7470104388340638136

`record[A325909(A089422(n))]`
-/

namespace A253790.P7470104388340638136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325909 (A089422 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253790.P7470104388340638136

/-! ## A253790.P15149893088902341837

`∑[A145390(Δ[A140725(n)])]`
-/

namespace A253790.P15149893088902341837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253790.P15149893088902341837

/-! ## A253790.P4400327552396773457

`eq[A065359(n), A242595(n+1)]`
-/

namespace A253790.P4400327552396773457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253790.P4400327552396773457

/-! ## A253790.P219604913826828973

`eq[A242595(n+1), A345927(n)]`
-/

namespace A253790.P219604913826828973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253790.P219604913826828973

/-! ## A253790.P4231265582313012706

`eq[A278085(n+1), A309013(n+1)]`
-/

namespace A253790.P4231265582313012706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253790.P4231265582313012706

/-!
# A253791: Permutation of natural numbers: a(n) = A244153(A005940(n+1)).

The programs for A253791, the canonical program `A253791.P11955961793208303268` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253791 has offset 0).

The definition of A253791 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A244153, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253791.P11955961793208303268

`A244153(A005940(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A253791

/-- `A244153(A005940(n+1))` -/
def P11955961793208303268.Spec : Prop :=
  ∀ n, P11955961793208303268.a n = A253791 n

theorem P11955961793208303268.correct : P11955961793208303268.Spec := by
  intro n
  simp only [A253791]

end A253791

/-! ## A253791.P2354187303138681770

`A297164(Δ[n²])/2`
-/

namespace A253791.P2354187303138681770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A253791.P2354187303138681770

namespace A253791

/-- `A297164(Δ[n²])/2` -/
def P2354187303138681770.Spec : Prop :=
  ∀ n, P2354187303138681770.a n = (A253791 n : ℚ)

end A253791

/-! ## A253791.P5780373125853041100

`A244153(A064216(A244154(n)))`
-/

namespace A253791.P5780373125853041100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (A064216 (A244154 n).toNat).toNat

end

end A253791.P5780373125853041100

namespace A253791

/-- `A244153(A064216(A244154(n)))` -/
def P5780373125853041100.Spec : Prop :=
  ∀ n, P5780373125853041100.a n = A253791 n

end A253791

/-! ## A253791.P7870702893053359669

`A156552(A246364(A246365(n+1)))`
-/

namespace A253791.P7870702893053359669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A246364 (A246365 (n + 1)).toNat).toNat

end

end A253791.P7870702893053359669

namespace A253791

/-- `A156552(A246364(A246365(n+1)))` -/
def P7870702893053359669.Spec : Prop :=
  ∀ n, P7870702893053359669.a n = A253791 n

end A253791

/-! ## A253791.P14106386063740696499

`A244153(A337375(n)*A337376(n))`
-/

namespace A253791.P14106386063740696499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (A337375 n * A337376 n).toNat

end

end A253791.P14106386063740696499

namespace A253791

/-- `A244153(A337375(n)*A337376(n))` -/
def P14106386063740696499.Spec : Prop :=
  ∀ n, P14106386063740696499.a n = A253791 n

end A253791

/-! ## A253791.P13242821040092884843

`A244153((A324055(n)+A324054(n))/2)`
-/

namespace A253791.P13242821040092884843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A253791.P13242821040092884843

namespace A253791

/-- `A244153((A324055(n)+A324054(n))/2)` -/
def P13242821040092884843.Spec : Prop :=
  ∀ n, P13242821040092884843.a n = A253791 n

end A253791

/-! ## A253791.P5576312177564049555

`A156552(A243061(A064216(A245612(n))))`
-/

namespace A253791.P5576312177564049555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A243061 (A064216 (A245612 n).toNat).toNat).toNat

end

end A253791.P5576312177564049555

namespace A253791

/-- `A156552(A243061(A064216(A245612(n))))` -/
def P5576312177564049555.Spec : Prop :=
  ∀ n, P5576312177564049555.a n = A253791 n

end A253791

/-! ## A253791.P2138745632190029742

`A244153(A163511(A156552(A163511(n))))`
-/

namespace A253791.P2138745632190029742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (A163511 (A156552 (A163511 n).toNat).toNat).toNat

end

end A253791.P2138745632190029742

namespace A253791

/-- `A244153(A163511(A156552(A163511(n))))` -/
def P2138745632190029742.Spec : Prop :=
  ∀ n, P2138745632190029742.a n = A253791 n

end A253791

/-! ## A253791.P6156082083809268205

`A156552(A064216(A297166(A005940(n+2))))`
-/

namespace A253791.P6156082083809268205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A064216 (A297166 (A005940 (n + 2)).toNat).toNat).toNat

end

end A253791.P6156082083809268205

namespace A253791

/-- `A156552(A064216(A297166(A005940(n+2))))` -/
def P6156082083809268205.Spec : Prop :=
  ∀ n, P6156082083809268205.a n = A253791 n

end A253791

/-! ## A253791.P6876548382802535150

`A156552(A064216(A064989(A005940(2*n+1))))`
-/

namespace A253791.P6876548382802535150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A064216 (A064989 (A005940 (2 * n + 1)).toNat).toNat).toNat

end

end A253791.P6876548382802535150

namespace A253791

/-- `A156552(A064216(A064989(A005940(2*n+1))))` -/
def P6876548382802535150.Spec : Prop :=
  ∀ n, P6876548382802535150.a n = A253791 n

end A253791

/-!
# A253792: Permutation of natural numbers: a(n) = A156552(A244154(n)).

The programs for A253792, the canonical program `A253792.P10279464663514090408` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253792 has offset 0).

The definition of A253792 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253792.P10279464663514090408

`A156552(A244154(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253792

/-- `A156552(A244154(n))` -/
def P10279464663514090408.Spec : Prop :=
  ∀ n, P10279464663514090408.a n = A253792 n

theorem P10279464663514090408.correct : P10279464663514090408.Spec := by
  intro n
  simp only [A253792]

end A253792

/-! ## A253792.P8371156248824692419

`floor(A297163(2*n)/2)`
-/

namespace A253792.P8371156248824692419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A297163 (2 * n) : ℚ) / 2⌋

end

end A253792.P8371156248824692419

namespace A253792

/-- `floor(A297163(2*n)/2)` -/
def P8371156248824692419.Spec : Prop :=
  ∀ n, P8371156248824692419.a n = A253792 n

end A253792

/-! ## A253792.P10393694959819015061

`A156552(A048673(A005940(n+1)))`
-/

namespace A253792.P10393694959819015061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A048673 (A005940 (n + 1)).toNat).toNat

end

end A253792.P10393694959819015061

namespace A253792

/-- `A156552(A048673(A005940(n+1)))` -/
def P10393694959819015061.Spec : Prop :=
  ∀ n, P10393694959819015061.a n = A253792 n

end A253792

/-! ## A253792.P4250127896547627349

`A156552(A008619(A005940(2*n+1)))`
-/

namespace A253792.P4250127896547627349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A008619 (A005940 (2 * n + 1)).toNat).toNat

end

end A253792.P4250127896547627349

namespace A253792

/-- `A156552(A008619(A005940(2*n+1)))` -/
def P4250127896547627349.Spec : Prop :=
  ∀ n, P4250127896547627349.a n = A253792 n

end A253792

/-! ## A253792.P14482368119848019697

`A156552(A004526(A005940(2*n+1))+1)`
-/

namespace A253792.P14482368119848019697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A004526 (A005940 (2 * n + 1)).toNat + 1).toNat

end

end A253792.P14482368119848019697

namespace A253792

/-- `A156552(A004526(A005940(2*n+1))+1)` -/
def P14482368119848019697.Spec : Prop :=
  ∀ n, P14482368119848019697.a n = A253792 n

end A253792

/-!
# A253793: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253793, there is no canonical definition to state claims against.
-/

/-! ## A253793.P15340387403755236034

`A253801((n+1)²+n²)`
-/

namespace A253793.P15340387403755236034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 ((n + 1) ^ 2 + n ^ 2)

end

end A253793.P15340387403755236034

/-!
# A253794: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253794, there is no canonical definition to state claims against.
-/

/-! ## A253794.P15935965281528289659

`A254189(∑[n]+1)`
-/

namespace A253794.P15935965281528289659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253794.P15935965281528289659

/-! ## A253794.P16894960424888141612

`lcm(2, A254189(A000124(n)))`
-/

namespace A253794.P16894960424888141612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254189 (A000124 n).toNat)

end

end A253794.P16894960424888141612

/-! ## A253794.P8708443722587205875

`record[A010054(n)*A254189(n+1)]`
-/

namespace A253794.P8708443722587205875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253794.P8708443722587205875

/-! ## A253794.P9862300659433141512

`record[root(A254189(n+1), A059268(n))]`
-/

namespace A253794.P9862300659433141512
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254189 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253794.P9862300659433141512

/-! ## A253794.P5653733267215999381

`record[gcd(A002262(n), A254189(n+1))]`
-/

namespace A253794.P5653733267215999381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254189 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253794.P5653733267215999381

/-!
# A253795: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253795, there is no canonical definition to state claims against.
-/

/-! ## A253795.P3092382240583143513

`A253801(∑[n+1]+2)`
-/

namespace A253795.P3092382240583143513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253795.P3092382240583143513

/-! ## A253795.P14074239732969990601

`lcm(2, A253801(A152948(n+3)))`
-/

namespace A253795.P14074239732969990601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253801 (A152948 (n + 3)).toNat)

end

end A253795.P14074239732969990601

/-! ## A253795.P16733817363265845569

`record[A253801(Δ[A003453(n+5)])]`
-/

namespace A253795.P16733817363265845569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253795.P16733817363265845569

/-! ## A253795.P4549710697559226972

`record[A253801(A000096(val(n+1, 2)+1))]`
-/

namespace A253795.P4549710697559226972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253795.P4549710697559226972

/-!
# A253796: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253796, there is no canonical definition to state claims against.
-/

/-! ## A253796.P17659359648468279238

`A253801(∑[n+2]+4)`
-/

namespace A253796.P17659359648468279238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253796.P17659359648468279238

/-! ## A253796.P12364938168694284373

`lcm(2, A253801(A167614(n+1)))`
-/

namespace A253796.P12364938168694284373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253801 (A167614 (n + 1)).toNat)

end

end A253796.P12364938168694284373

/-! ## A253796.P3227598708004440695

`A253801(A167614(n+1))+A185238(n)`
-/

namespace A253796.P3227598708004440695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A167614 (n + 1)).toNat + A185238 n

end

end A253796.P3227598708004440695

/-! ## A253796.P7730998885807516889

`A253801(A167614(n+1))+A185284(n)`
-/

namespace A253796.P7730998885807516889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A167614 (n + 1)).toNat + A185284 n

end

end A253796.P7730998885807516889

/-! ## A253796.P8832699836503076185

`A253801(A167614(n+1))+A072769(n+1)`
-/

namespace A253796.P8832699836503076185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A167614 (n + 1)).toNat + A072769 (n + 1)

end

end A253796.P8832699836503076185

/-!
# A253797: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253797, there is no canonical definition to state claims against.
-/

/-! ## A253797.P14698312516952653184

`A253801(A374004(n+1))`
-/

namespace A253797.P14698312516952653184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A374004 (n + 1)).toNat

end

end A253797.P14698312516952653184

/-! ## A253797.P12807735247596250780

`A253801(A052905(n)+9)`
-/

namespace A253797.P12807735247596250780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A052905 n + 9).toNat

end

end A253797.P12807735247596250780

/-! ## A253797.P7534466391200608334

`A253801(A167614(n+2)+1)`
-/

namespace A253797.P7534466391200608334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A167614 (n + 2) + 1).toNat

end

end A253797.P7534466391200608334

/-! ## A253797.P17713938282755837895

`A253801(A166136(n+2)-2)`
-/

namespace A253797.P17713938282755837895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A166136 (n + 2) - 2).toNat

end

end A253797.P17713938282755837895

/-! ## A253797.P8065099700361249818

`A253801(A000217(n+3)+4)`
-/

namespace A253797.P8065099700361249818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A000217 (n + 3) + 4).toNat

end

end A253797.P8065099700361249818

/-!
# A253798: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253798, there is no canonical definition to state claims against.
-/

/-! ## A253798.P806045675544982517

`A253801(A374005(n+1))`
-/

namespace A253798.P806045675544982517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A374005 (n + 1)).toNat

end

end A253798.P806045675544982517

/-! ## A253798.P2175041043872331612

`A253801(A000217(n+4)+5)`
-/

namespace A253798.P2175041043872331612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A000217 (n + 4) + 5).toNat

end

end A253798.P2175041043872331612

/-! ## A253798.P10493969382091023550

`A253801(Δ[A264443(n)])`
-/

namespace A253798.P10493969382091023550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (f1 (n + 1) - f1 n).toNat

end

end A253798.P10493969382091023550

/-! ## A253798.P4301262006470393229

`A253801(eq[4, A193592(n)])`
-/

namespace A253798.P4301262006470393229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253798.P4301262006470393229

/-! ## A253798.P9920953216637364322

`A253801(Δ[A023545(n+1)])`
-/

namespace A253798.P9920953216637364322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (f1 (n + 1) - f1 n).toNat

end

end A253798.P9920953216637364322

/-!
# A253799: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253799, there is no canonical definition to state claims against.
-/

/-! ## A253799.P5734988984253191486

`A253801(A374007(n+1))`
-/

namespace A253799.P5734988984253191486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A374007 (n + 1)).toNat

end

end A253799.P5734988984253191486

/-! ## A253799.P13438407213046777790

`A253801(A166136(n+4))`
-/

namespace A253799.P13438407213046777790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A166136 (n + 4)).toNat

end

end A253799.P13438407213046777790

/-! ## A253799.P6541255990201232717

`A253801(eq[7, A131818(n+1)])`
-/

namespace A253799.P6541255990201232717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253799.P6541255990201232717

/-! ## A253799.P13180302436099986886

`A253801(eq[3, A219347(n)])`
-/

namespace A253799.P13180302436099986886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253799.P13180302436099986886

/-! ## A253799.P7586508829469194494

`A253801(eq[5, A193592(n)])`
-/

namespace A253799.P7586508829469194494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253799.P7586508829469194494

