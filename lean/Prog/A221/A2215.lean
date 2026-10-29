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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A221500: Majority value maps: number of 3 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 3 X n array.

The programs for A221500, there is no canonical definition to state claims against.
-/

/-! ## A221500.P1312022137916340458

`A221499(∑[n+2]+4)`
-/

namespace A221500.P1312022137916340458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221500.P1312022137916340458

/-! ## A221500.P16504101139151513635

`and(-1, A221499(A167614(n+1)))`
-/

namespace A221500.P16504101139151513635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221499 (A167614 (n + 1)).toNat)

end

end A221500.P16504101139151513635

/-! ## A221500.P9332609597777964608

`A221499(A167614(n+1))+A011731(n)`
-/

namespace A221500.P9332609597777964608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A167614 (n + 1)).toNat + A011731 n

end

end A221500.P9332609597777964608

/-! ## A221500.P10319038363846747653

`A221499(A167614(n+1))+A025437(n)`
-/

namespace A221500.P10319038363846747653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A167614 (n + 1)).toNat + A025437 n

end

end A221500.P10319038363846747653

/-! ## A221500.P7221799581619570251

`A221499(A167614(n+1))+A025439(n)`
-/

namespace A221500.P7221799581619570251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A167614 (n + 1)).toNat + A025439 n

end

end A221500.P7221799581619570251

/-!
# A221501: Majority value maps: number of 4 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 4 X n array.

The programs for A221501, there is no canonical definition to state claims against.
-/

/-! ## A221501.P11799502925670261917

`A221499(A141214(n)+7)`
-/

namespace A221501.P11799502925670261917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A141214 n + 7).toNat

end

end A221501.P11799502925670261917

/-! ## A221501.P17741862399046172496

`A221499(A052905(n)+9)`
-/

namespace A221501.P17741862399046172496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A052905 n + 9).toNat

end

end A221501.P17741862399046172496

/-! ## A221501.P15509147338949798687

`A221499(A055999(n)+10)`
-/

namespace A221501.P15509147338949798687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A055999 n + 10).toNat

end

end A221501.P15509147338949798687

/-! ## A221501.P4555579694130018966

`A221499(eq[5, A066657(n)])`
-/

namespace A221501.P4555579694130018966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221501.P4555579694130018966

/-! ## A221501.P17451998802760792430

`A221499(A167614(n+2)+1)`
-/

namespace A221501.P17451998802760792430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A167614 (n + 2) + 1).toNat

end

end A221501.P17451998802760792430

/-!
# A221502: Majority value maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 5Xn array.

The programs for A221502, there is no canonical definition to state claims against.
-/

/-! ## A221502.P15958351820415334334

`A221499(A167499(n+3))`
-/

namespace A221502.P15958351820415334334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A167499 (n + 3)).toNat

end

end A221502.P15958351820415334334

/-! ## A221502.P2992924133740339734

`A221499(A155212(n)+13)`
-/

namespace A221502.P2992924133740339734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A155212 n + 13).toNat

end

end A221502.P2992924133740339734

/-! ## A221502.P12933833409186393205

`A221499(A056000(n)+15)`
-/

namespace A221502.P12933833409186393205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A056000 n + 15).toNat

end

end A221502.P12933833409186393205

/-! ## A221502.P12701168870987587977

`A221499(eq[7, A066657(n)])`
-/

namespace A221502.P12701168870987587977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221502.P12701168870987587977

/-! ## A221502.P3499609936352291861

`A221499(A167614(n+3)+2)`
-/

namespace A221502.P3499609936352291861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A167614 (n + 3) + 2).toNat

end

end A221502.P3499609936352291861

/-!
# A221503: Majority value maps: number of 6Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 6Xn array.

The programs for A221503, there is no canonical definition to state claims against.
-/

/-! ## A221503.P2121286964539381242

`A221499(A166136(n+4))`
-/

namespace A221503.P2121286964539381242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A166136 (n + 4)).toNat

end

end A221503.P2121286964539381242

/-! ## A221503.P15102651104406652158

`A221499(A168104(n)+6)`
-/

namespace A221503.P15102651104406652158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A168104 n + 6).toNat

end

end A221503.P15102651104406652158

/-! ## A221503.P14713190914868661613

`A221499(A056115(n)+21)`
-/

namespace A221503.P14713190914868661613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A056115 n + 21).toNat

end

end A221503.P14713190914868661613

/-!
# A221504: Majority value maps: number of 7 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..3 7 X n array.

The programs for A221504, there is no canonical definition to state claims against.
-/

/-! ## A221504.P15198665342760823584

`A221499(A056119(n)+28)`
-/

namespace A221504.P15198665342760823584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (A056119 n + 28).toNat

end

end A221504.P15198665342760823584

/-! ## A221504.P5941476672809824611

`A221499(eq[11, A066657(n)])`
-/

namespace A221504.P5941476672809824611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221504.P5941476672809824611

/-!
# A221505: Number of nX3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221505, there is no canonical definition to state claims against.
-/

/-! ## A221505.P8897506838872623116

`A221507(∑[n+3]+1)`
-/

namespace A221505.P8897506838872623116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221507 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221505.P8897506838872623116

/-! ## A221505.P13729974206240370196

`record[A221507(eq[1, A245842(n+1)])]`
-/

namespace A221505.P13729974206240370196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221507 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221505.P13729974206240370196

/-! ## A221505.P2248967627710615724

`record[A194702(n+1)*A221507(n+1)]`
-/

namespace A221505.P2248967627710615724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194702 (n + 1) * A221507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221505.P2248967627710615724

/-!
# A221506: Number of nX4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221506, there is no canonical definition to state claims against.
-/

/-! ## A221506.P11371810543101276711

`A221507(A141214(n+1))`
-/

namespace A221506.P11371810543101276711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221507 (A141214 (n + 1)).toNat

end

end A221506.P11371810543101276711

/-! ## A221506.P5604045433637186403

`A221507(A055998(n+2))`
-/

namespace A221506.P5604045433637186403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221507 (A055998 (n + 2)).toNat

end

end A221506.P5604045433637186403

/-!
# A221508: Number of 2Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221508, there is no canonical definition to state claims against.
-/

/-! ## A221508.P15806938857263245880

`A221507(∑[n+1]+2)`
-/

namespace A221508.P15806938857263245880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221507 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221508.P15806938857263245880

/-! ## A221508.P6548034966850753142

`record[gcd(A221507(n+3), A221524(n+2))]`
-/

namespace A221508.P6548034966850753142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221507 (n + 3)) (A221524 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221508.P6548034966850753142

/-! ## A221508.P8115716792446212352

`record[A221507(A135225(n)+2)]`
-/

namespace A221508.P8115716792446212352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221507 (A135225 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221508.P8115716792446212352

/-!
# A221509: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, without consecutive moves in the same direction.

The programs for A221509, there is no canonical definition to state claims against.
-/

/-! ## A221509.P4183463032042382835

`A221507(∑[n+2]+4)`
-/

namespace A221509.P4183463032042382835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221507 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221509.P4183463032042382835

/-! ## A221509.P11387417215639322338

`lcm(n-abs(1-n), A221507(A167614(n+1)))`
-/

namespace A221509.P11387417215639322338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - |1 - (n : ℤ)|) (A221507 (A167614 (n + 1)).toNat)

end

end A221509.P11387417215639322338

/-! ## A221509.P17975154602975609593

`A221507(A167614(n+1))+A031346(n)`
-/

namespace A221509.P17975154602975609593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221507 (A167614 (n + 1)).toNat + A031346 n

end

end A221509.P17975154602975609593

/-! ## A221509.P2830838066343416093

`A047996(n)*A221507(A167614(n+1))`
-/

namespace A221509.P2830838066343416093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A221507 (A167614 (n + 1)).toNat

end

end A221509.P2830838066343416093

/-!
# A221510: Number of 0..3 arrays of length n with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221510, the canonical program `A221510.P16975581712339998623` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221510 has offset 1).

The definition of A221510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221510.P10876069755670570786

`ogf((2x+x^2+x^3)/(1-x-4x^2-3x^3-x^4))`
-/

namespace A221510.P10876069755670570786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 1] [1, -1, -4, -3, -1] n

end

end A221510.P10876069755670570786

namespace A221510

/-- `ogf((2x+x^2+x^3)/(1-x-4x^2-3x^3-x^4))` -/
def P10876069755670570786.Spec : Prop :=
  ∀ n, P10876069755670570786.a n = A221510 (n + 1)

end A221510

/-! ## A221510.P16975581712339998623

`a(n-1)+4*a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221510

/-- `a(n-1)+4*a(n-2)+3*a(n-3)+a(n-4)` -/
def P16975581712339998623.Spec : Prop :=
  ∀ n, (P16975581712339998623.a n : ℤ) = A221510 (n + 1)

theorem P16975581712339998623.correct : P16975581712339998623.Spec := by
  intro n
  simp only [A221510, Nat.add_sub_cancel]

end A221510

/-! ## A221510.P18044696213254524294

`A077995(n)-(-1)^n`
-/

namespace A221510.P18044696213254524294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n - (-1) ^ n

end

end A221510.P18044696213254524294

namespace A221510

/-- `A077995(n)-(-1)^n` -/
def P18044696213254524294.Spec : Prop :=
  ∀ n, P18044696213254524294.a n = A221510 (n + 1)

end A221510

/-! ## A221510.P2505853662147699167

`abs(A033999(n)-A077995(n))`
-/

namespace A221510.P2505853662147699167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n - A077995 n|

end

end A221510.P2505853662147699167

namespace A221510

/-- `abs(A033999(n)-A077995(n))` -/
def P2505853662147699167.Spec : Prop :=
  ∀ n, P2505853662147699167.a n = A221510 (n + 1)

end A221510

/-! ## A221510.P15052765121568252354

`abs(A077995(n)+A033999(n+1))`
-/

namespace A221510.P15052765121568252354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077995 n + A033999 (n + 1)|

end

end A221510.P15052765121568252354

namespace A221510

/-- `abs(A077995(n)+A033999(n+1))` -/
def P15052765121568252354.Spec : Prop :=
  ∀ n, P15052765121568252354.a n = A221510 (n + 1)

end A221510

/-! ## A221510.P12749746939722998309

`A000129(n)+A077995(n)-A111954(n)`
-/

namespace A221510.P12749746939722998309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A077995 n - A111954 n)

end

end A221510.P12749746939722998309

namespace A221510

/-- `A000129(n)+A077995(n)-A111954(n)` -/
def P12749746939722998309.Spec : Prop :=
  ∀ n, P12749746939722998309.a n = A221510 (n + 1)

end A221510

/-! ## A221510.P11219076356149592937

`A078343(n)+A077995(n)-A111955(n)`
-/

namespace A221510.P11219076356149592937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (A077995 n - A111955 n)

end

end A221510.P11219076356149592937

namespace A221510

/-- `A078343(n)+A077995(n)-A111955(n)` -/
def P11219076356149592937.Spec : Prop :=
  ∀ n, P11219076356149592937.a n = A221510 (n + 1)

end A221510

/-! ## A221510.P7192556093424033273

`A221515(∑[n+3]+1)`
-/

namespace A221510.P7192556093424033273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221510.P7192556093424033273

namespace A221510

/-- `A221515(∑[n+3]+1)` -/
def P7192556093424033273.Spec : Prop :=
  ∀ n, P7192556093424033273.a n = A221510 (n + 1)

end A221510

/-!
# A221511: Number of 0..4 arrays of length n with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221511, the canonical program `A221511.P12262525783453098623` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221511 has offset 1).

The definition of A221511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221511.P12262525783453098623

`ogf((3x+x^2+4x^3-2x^4+2x^5)/(1-2x-6x^2-6x^3-4x^4-4x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221511

/-- `ogf((3x+x^2+4x^3-2x^4+2x^5)/(1-2x-6x^2-6x^3-4x^4-4x^6))` -/
def P12262525783453098623.Spec : Prop :=
  ∀ n, P12262525783453098623.a n = A221511 (n + 1)

theorem P12262525783453098623.correct : P12262525783453098623.Spec := by
  intro n
  simp only [A221511, Nat.add_sub_cancel]

end A221511

/-! ## A221511.P4686686238633287359

`A221515(A027379(n+2))`
-/

namespace A221511.P4686686238633287359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A027379 (n + 2)).toNat

end

end A221511.P4686686238633287359

namespace A221511

/-- `A221515(A027379(n+2))` -/
def P4686686238633287359.Spec : Prop :=
  ∀ n, P4686686238633287359.a n = A221511 (n + 1)

end A221511

/-! ## A221511.P4861935465180045763

`A221515(A055998(n+2))`
-/

namespace A221511.P4861935465180045763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A055998 (n + 2)).toNat

end

end A221511.P4861935465180045763

namespace A221511

/-- `A221515(A055998(n+2))` -/
def P4861935465180045763.Spec : Prop :=
  ∀ n, P4861935465180045763.a n = A221511 (n + 1)

end A221511

/-! ## A221511.P11662598048414021478

`A221515(A155212(n)+5)`
-/

namespace A221511.P11662598048414021478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A155212 n + 5).toNat

end

end A221511.P11662598048414021478

namespace A221511

/-- `A221515(A155212(n)+5)` -/
def P11662598048414021478.Spec : Prop :=
  ∀ n, P11662598048414021478.a n = A221511 (n + 1)

end A221511

/-! ## A221511.P8758450335729539362

`A221515(A056000(n)+7)`
-/

namespace A221511.P8758450335729539362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A056000 n + 7).toNat

end

end A221511.P8758450335729539362

namespace A221511

/-- `A221515(A056000(n)+7)` -/
def P8758450335729539362.Spec : Prop :=
  ∀ n, P8758450335729539362.a n = A221511 (n + 1)

end A221511

/-! ## A221511.P8218261118640936118

`A221515(eq[3, A193592(n)])`
-/

namespace A221511.P8218261118640936118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221511.P8218261118640936118

namespace A221511

/-- `A221515(eq[3, A193592(n)])` -/
def P8218261118640936118.Spec : Prop :=
  ∀ n, P8218261118640936118.a n = A221511 (n + 1)

end A221511

/-! ## A221511.P7037009672343759767

`A221515(A052905(n+1)+2)`
-/

namespace A221511.P7037009672343759767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A052905 (n + 1) + 2).toNat

end

end A221511.P7037009672343759767

namespace A221511

/-- `A221515(A052905(n+1)+2)` -/
def P7037009672343759767.Spec : Prop :=
  ∀ n, P7037009672343759767.a n = A221511 (n + 1)

end A221511

/-! ## A221511.P17570901625952390037

`record[A221515(A055998(A126759(n)))]`
-/

namespace A221511.P17570901625952390037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A055998 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221511.P17570901625952390037

namespace A221511

/-- `record[A221515(A055998(A126759(n)))]` -/
def P17570901625952390037.Spec : Prop :=
  ∀ n, P17570901625952390037.a n = A221511 (n + 1)

end A221511

/-! ## A221511.P2771294713742175002

`record[A221515(A027379(A324533(n)))]`
-/

namespace A221511.P2771294713742175002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A027379 (A324533 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221511.P2771294713742175002

namespace A221511

/-- `record[A221515(A027379(A324533(n)))]` -/
def P2771294713742175002.Spec : Prop :=
  ∀ n, P2771294713742175002.a n = A221511 (n + 1)

end A221511

/-! ## A221511.P16440267362839367980

`A221515(∑[A020705(A233583(n+1))])`
-/

namespace A221511.P16440267362839367980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221511.P16440267362839367980

namespace A221511

/-- `A221515(∑[A020705(A233583(n+1))])` -/
def P16440267362839367980.Spec : Prop :=
  ∀ n, P16440267362839367980.a n = A221511 (n + 1)

end A221511

/-!
# A221512: Number of 0..5 arrays of length n with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221512, the canonical program `A221512.P9170082138395738310` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221512 has offset 1).

The definition of A221512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221512.P9170082138395738310

`ogf((4x+5x^2+10x^3-2x^4)/(1-2x-11x^2-20x^3-17x^4+3x^5-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221512

/-- `ogf((4x+5x^2+10x^3-2x^4)/(1-2x-11x^2-20x^3-17x^4+3x^5-x^6))` -/
def P9170082138395738310.Spec : Prop :=
  ∀ n, P9170082138395738310.a n = A221512 (n + 1)

theorem P9170082138395738310.correct : P9170082138395738310.Spec := by
  intro n
  simp only [A221512, Nat.add_sub_cancel]

end A221512

/-! ## A221512.P4330038257518518000

`A221515(A046691(n+3))`
-/

namespace A221512.P4330038257518518000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A046691 (n + 3)).toNat

end

end A221512.P4330038257518518000

namespace A221512

/-- `A221515(A046691(n+3))` -/
def P4330038257518518000.Spec : Prop :=
  ∀ n, P4330038257518518000.a n = A221512 (n + 1)

end A221512

/-! ## A221512.P14418299472859825300

`A221515(eq[4, A193592(n)])`
-/

namespace A221512.P14418299472859825300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221512.P14418299472859825300

namespace A221512

/-- `A221515(eq[4, A193592(n)])` -/
def P14418299472859825300.Spec : Prop :=
  ∀ n, P14418299472859825300.a n = A221512 (n + 1)

end A221512

/-! ## A221512.P3183796625140591790

`A221515(Δ[A023545(n+1)])`
-/

namespace A221512.P3183796625140591790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (f1 (n + 1) - f1 n).toNat

end

end A221512.P3183796625140591790

namespace A221512

/-- `A221515(Δ[A023545(n+1)])` -/
def P3183796625140591790.Spec : Prop :=
  ∀ n, P3183796625140591790.a n = A221512 (n + 1)

end A221512

/-! ## A221512.P4847717504831927626

`A221515(A056000(n+1)+6)`
-/

namespace A221512.P4847717504831927626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A056000 (n + 1) + 6).toNat

end

end A221512.P4847717504831927626

namespace A221512

/-- `A221515(A056000(n+1)+6)` -/
def P4847717504831927626.Spec : Prop :=
  ∀ n, P4847717504831927626.a n = A221512 (n + 1)

end A221512

/-! ## A221512.P12469841529899463007

`A221515(A000217(n+6)-(n+10))`
-/

namespace A221512.P12469841529899463007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000217 (n + 6) - (n + 10 : ℤ)).toNat

end

end A221512.P12469841529899463007

namespace A221512

/-- `A221515(A000217(n+6)-(n+10))` -/
def P12469841529899463007.Spec : Prop :=
  ∀ n, P12469841529899463007.a n = A221512 (n + 1)

end A221512

/-! ## A221512.P12184898009130772978

`record[A221515(A046691(A126759(n)))]`
-/

namespace A221512.P12184898009130772978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A046691 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221512.P12184898009130772978

namespace A221512

/-- `record[A221515(A046691(A126759(n)))]` -/
def P12184898009130772978.Spec : Prop :=
  ∀ n, P12184898009130772978.a n = A221512 (n + 1)

end A221512

/-!
# A221513: Number of 0..6 arrays of length n with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221513, the canonical program `A221513.P6646348316398217025` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221513 has offset 1).

The definition of A221513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221513.P6646348316398217025

`ogf((5x+6x^2+17x^3-5x^4+12x^5+2x^6+2x^7)/(1-3x-14x^2-29x^3-28x^4-x^5-27x^6-8x^7-2x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221513

/-- `ogf((5x+6x^2+17x^3-5x^4+12x^5+2x^6+2x^7)/(1-3x-14x^2-29x^3-28x^4-x^5-27x^6-8x^7-2x^8))` -/
def P6646348316398217025.Spec : Prop :=
  ∀ n, P6646348316398217025.a n = A221513 (n + 1)

theorem P6646348316398217025.correct : P6646348316398217025.Spec := by
  intro n
  simp only [A221513, Nat.add_sub_cancel]

end A221513

/-! ## A221513.P11916818199926141460

`A221515(A052905(n+3))`
-/

namespace A221513.P11916818199926141460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A052905 (n + 3)).toNat

end

end A221513.P11916818199926141460

namespace A221513

/-- `A221515(A052905(n+3))` -/
def P11916818199926141460.Spec : Prop :=
  ∀ n, P11916818199926141460.a n = A221513 (n + 1)

end A221513

/-! ## A221513.P8121317777461511976

`A221515(eq[5, A193592(n)])`
-/

namespace A221513.P8121317777461511976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221513.P8121317777461511976

namespace A221513

/-- `A221515(eq[5, A193592(n)])` -/
def P8121317777461511976.Spec : Prop :=
  ∀ n, P8121317777461511976.a n = A221513 (n + 1)

end A221513

/-! ## A221513.P11440284531447046956

`A221515(A055999(n+3)+1)`
-/

namespace A221513.P11440284531447046956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A055999 (n + 3) + 1).toNat

end

end A221513.P11440284531447046956

namespace A221513

/-- `A221515(A055999(n+3)+1)` -/
def P11440284531447046956.Spec : Prop :=
  ∀ n, P11440284531447046956.a n = A221513 (n + 1)

end A221513

/-! ## A221513.P3458183204832661154

`A221515(A046691(n+4)-1)`
-/

namespace A221513.P3458183204832661154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A046691 (n + 4) - 1).toNat

end

end A221513.P3458183204832661154

namespace A221513

/-- `A221515(A046691(n+4)-1)` -/
def P3458183204832661154.Spec : Prop :=
  ∀ n, P3458183204832661154.a n = A221513 (n + 1)

end A221513

/-! ## A221513.P11628831467512432295

`A221515(A000124(n+6)-6)`
-/

namespace A221513.P11628831467512432295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000124 (n + 6) - 6).toNat

end

end A221513.P11628831467512432295

namespace A221513

/-- `A221515(A000124(n+6)-6)` -/
def P11628831467512432295.Spec : Prop :=
  ∀ n, P11628831467512432295.a n = A221513 (n + 1)

end A221513

/-! ## A221513.P17885082583739481812

`A221515(Δ[A023545(n+2)]-1)`
-/

namespace A221513.P17885082583739481812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (f1 (n + 1) - f1 n - 1).toNat

end

end A221513.P17885082583739481812

namespace A221513

/-- `A221515(Δ[A023545(n+2)]-1)` -/
def P17885082583739481812.Spec : Prop :=
  ∀ n, P17885082583739481812.a n = A221513 (n + 1)

end A221513

/-! ## A221513.P7919026809781706624

`A221515(n+1+A000217(n+5))`
-/

namespace A221513.P7919026809781706624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 ((n + 1 : ℤ) + A000217 (n + 5)).toNat

end

end A221513.P7919026809781706624

namespace A221513

/-- `A221515(n+1+A000217(n+5))` -/
def P7919026809781706624.Spec : Prop :=
  ∀ n, P7919026809781706624.a n = A221513 (n + 1)

end A221513

/-!
# A221514: Number of 0..7 arrays of length n with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221514, the canonical program `A221514.P11931395500336403181` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221514 has offset 1).

The definition of A221514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221514.P11931395500336403181

`ogf((6x+13x^2+33x^3+10x^4+13x^5-4x^6+4x^7)/(1-3x-21x^2-58x^3-79x^4-32x^5-23x^6-4x^7-8x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221514

/-- `ogf((6x+13x^2+33x^3+10x^4+13x^5-4x^6+4x^7)/(1-3x-21x^2-58x^3-79x^4-32x^5-23x^6-4x^7-8x^8))` -/
def P11931395500336403181.Spec : Prop :=
  ∀ n, P11931395500336403181.a n = A221514 (n + 1)

theorem P11931395500336403181.correct : P11931395500336403181.Spec := by
  intro n
  simp only [A221514, Nat.add_sub_cancel]

end A221514

/-! ## A221514.P11386544026142628144

`A221515(A055999(n+4))`
-/

namespace A221514.P11386544026142628144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A055999 (n + 4)).toNat

end

end A221514.P11386544026142628144

namespace A221514

/-- `A221515(A055999(n+4))` -/
def P11386544026142628144.Spec : Prop :=
  ∀ n, P11386544026142628144.a n = A221514 (n + 1)

end A221514

/-! ## A221514.P9734014322252785258

`A221515(A052905(n+4)-1)`
-/

namespace A221514.P9734014322252785258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A052905 (n + 4) - 1).toNat

end

end A221514.P9734014322252785258

namespace A221514

/-- `A221515(A052905(n+4)-1)` -/
def P9734014322252785258.Spec : Prop :=
  ∀ n, P9734014322252785258.a n = A221514 (n + 1)

end A221514

/-! ## A221514.P8384831867386373123

`A221515(A000124(n+7)-7)`
-/

namespace A221514.P8384831867386373123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000124 (n + 7) - 7).toNat

end

end A221514.P8384831867386373123

namespace A221514

/-- `A221515(A000124(n+7)-7)` -/
def P8384831867386373123.Spec : Prop :=
  ∀ n, P8384831867386373123.a n = A221514 (n + 1)

end A221514

/-! ## A221514.P17100716334730907651

`A221515(eq[13, A099375(n)]+1)`
-/

namespace A221514.P17100716334730907651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221514.P17100716334730907651

namespace A221514

/-- `A221515(eq[13, A099375(n)]+1)` -/
def P17100716334730907651.Spec : Prop :=
  ∀ n, P17100716334730907651.a n = A221514 (n + 1)

end A221514

/-!
# A221515: T(n,k)=Number of 0..k arrays of length n with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221515, there is no canonical definition to state claims against.
-/

/-! ## A221515.P12491405216395112437

`A005117(A195232(n+1))%A028262(n)`
-/

namespace A221515.P12491405216395112437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (A195232 (n + 1)).toNat) (A028262 n)

end

end A221515.P12491405216395112437

/-! ## A221515.P1554164558251265805

`A173863(A335333(n)+9)`
-/

namespace A221515.P1554164558251265805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173863 (A335333 n + 9).toNat

end

end A221515.P1554164558251265805

/-! ## A221515.P12931165883343757442

`floor(sqrt(A267428(n+5)%A007318(n)²))`
-/

namespace A221515.P12931165883343757442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A267428 (n + 5)) (A007318 n ^ 2))

end

end A221515.P12931165883343757442

/-! ## A221515.P2044665764446583960

`A007318(n)-A333766(A288972(n))`
-/

namespace A221515.P2044665764446583960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A333766 (A288972 n).toNat

end

end A221515.P2044665764446583960

/-! ## A221515.P9319145933030299229

`A297845(n+1)-A124766(A094638(n+1))`
-/

namespace A221515.P9319145933030299229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297845 (n + 1) - A124766 (A094638 (n + 1)).toNat

end

end A221515.P9319145933030299229

/-!
# A221516: Number of 0..n arrays of length 5 with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221516, the canonical program `A221516.P4086767297370109476` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221516 has offset 1).

The definition of A221516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221516.P4086767297370109476

`ogf((3x+15x^2+10x^3+x^4-6x^5+2x^6-x^7)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221516

/-- `ogf((3x+15x^2+10x^3+x^4-6x^5+2x^6-x^7)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P4086767297370109476.Spec : Prop :=
  ∀ n, P4086767297370109476.a n = A221516 (n + 1)

theorem P4086767297370109476.correct : P4086767297370109476.Spec := by
  intro n
  simp only [A221516, Nat.add_sub_cancel]

end A221516

/-! ## A221516.P16649942614335168184

`A221515(A167499(n+3))`
-/

namespace A221516.P16649942614335168184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A167499 (n + 3)).toNat

end

end A221516.P16649942614335168184

namespace A221516

/-- `A221515(A167499(n+3))` -/
def P16649942614335168184.Spec : Prop :=
  ∀ n, P16649942614335168184.a n = A221516 (n + 1)

end A221516

/-! ## A221516.P15546282462587080007

`A221515(A155212(n)+13)`
-/

namespace A221516.P15546282462587080007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A155212 n + 13).toNat

end

end A221516.P15546282462587080007

namespace A221516

/-- `A221515(A155212(n)+13)` -/
def P15546282462587080007.Spec : Prop :=
  ∀ n, P15546282462587080007.a n = A221516 (n + 1)

end A221516

/-! ## A221516.P13993440227008537739

`A221515(A000124(n+4)+4)`
-/

namespace A221516.P13993440227008537739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000124 (n + 4) + 4).toNat

end

end A221516.P13993440227008537739

namespace A221516

/-- `A221515(A000124(n+4)+4)` -/
def P13993440227008537739.Spec : Prop :=
  ∀ n, P13993440227008537739.a n = A221516 (n + 1)

end A221516

/-! ## A221516.P17814790853084486768

`A221515(A000096(n+3)+6)`
-/

namespace A221516.P17814790853084486768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000096 (n + 3) + 6).toNat

end

end A221516.P17814790853084486768

namespace A221516

/-- `A221515(A000096(n+3)+6)` -/
def P17814790853084486768.Spec : Prop :=
  ∀ n, P17814790853084486768.a n = A221516 (n + 1)

end A221516

/-! ## A221516.P13718871943745756407

`A221515(A000217(n+4)+5)`
-/

namespace A221516.P13718871943745756407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000217 (n + 4) + 5).toNat

end

end A221516.P13718871943745756407

namespace A221516

/-- `A221515(A000217(n+4)+5)` -/
def P13718871943745756407.Spec : Prop :=
  ∀ n, P13718871943745756407.a n = A221516 (n + 1)

end A221516

/-! ## A221516.P11951795833837261106

`A221515(A055998(n+2)+8)`
-/

namespace A221516.P11951795833837261106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A055998 (n + 2) + 8).toNat

end

end A221516.P11951795833837261106

namespace A221516

/-- `A221515(A055998(n+2)+8)` -/
def P11951795833837261106.Spec : Prop :=
  ∀ n, P11951795833837261106.a n = A221516 (n + 1)

end A221516

/-! ## A221516.P15083424481172586231

`A221515(A055999(n+3)-2*n)`
-/

namespace A221516.P15083424481172586231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A221516.P15083424481172586231

namespace A221516

/-- `A221515(A055999(n+3)-2*n)` -/
def P15083424481172586231.Spec : Prop :=
  ∀ n, P15083424481172586231.a n = A221516 (n + 1)

end A221516

/-! ## A221516.P4248190005401046203

`A221515(A052905(n+3)-(2*n+1))`
-/

namespace A221516.P4248190005401046203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A221516.P4248190005401046203

namespace A221516

/-- `A221515(A052905(n+3)-(2*n+1))` -/
def P4248190005401046203.Spec : Prop :=
  ∀ n, P4248190005401046203.a n = A221516 (n + 1)

end A221516

/-!
# A221517: Number of 0..n arrays of length 6 with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221517, the canonical program `A221517.P83251848291994483` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221517 has offset 1).

The definition of A221517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221517.P83251848291994483

`ogf((5x+59x^2+73x^3+13x^4-32x^5+9x^6-9x^7+3x^8-x^9)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221517

/-- `ogf((5x+59x^2+73x^3+13x^4-32x^5+9x^6-9x^7+3x^8-x^9)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P83251848291994483.Spec : Prop :=
  ∀ n, P83251848291994483.a n = A221517 (n + 1)

theorem P83251848291994483.correct : P83251848291994483.Spec := by
  intro n
  simp only [A221517, Nat.add_sub_cancel]

end A221517

/-! ## A221517.P9746988160843112017

`A221515(∑[n+5]+16)`
-/

namespace A221517.P9746988160843112017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A221517.P9746988160843112017

namespace A221517

/-- `A221515(∑[n+5]+16)` -/
def P9746988160843112017.Spec : Prop :=
  ∀ n, P9746988160843112017.a n = A221517 (n + 1)

end A221517

/-! ## A221517.P1222016285176048961

`or(char[1], A221515(A000124(n+5)+5))`
-/

namespace A221517.P1222016285176048961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A221515 (A000124 (n + 5) + 5).toNat)

end

end A221517.P1222016285176048961

namespace A221517

/-- `or(char[1], A221515(A000124(n+5)+5))` -/
def P1222016285176048961.Spec : Prop :=
  ∀ n, P1222016285176048961.a n = A221517 (n + 1)

end A221517

/-! ## A221517.P1232465279712632636

`A221515(A000124(n+5)+5)%Δ[A000539(n)]`
-/

namespace A221517.P1232465279712632636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221515 (A000124 (n + 5) + 5).toNat) (f1 (n + 1) - f1 n)

end

end A221517.P1232465279712632636

namespace A221517

/-- `A221515(A000124(n+5)+5)%Δ[A000539(n)]` -/
def P1232465279712632636.Spec : Prop :=
  ∀ n, P1232465279712632636.a n = A221517 (n + 1)

end A221517

/-! ## A221517.P14398646482122009896

`A221515(A000124(n+5)+5)+A000038(n+1)`
-/

namespace A221517.P14398646482122009896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000124 (n + 5) + 5).toNat + A000038 (n + 1)

end

end A221517.P14398646482122009896

namespace A221517

/-- `A221515(A000124(n+5)+5)+A000038(n+1)` -/
def P14398646482122009896.Spec : Prop :=
  ∀ n, P14398646482122009896.a n = A221517 (n + 1)

end A221517

/-! ## A221517.P18297273029234151083

`A221515(A000124(n+5)+5)+A000035(2*n)`
-/

namespace A221517.P18297273029234151083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000124 (n + 5) + 5).toNat + A000035 (2 * n)

end

end A221517.P18297273029234151083

namespace A221517

/-- `A221515(A000124(n+5)+5)+A000035(2*n)` -/
def P18297273029234151083.Spec : Prop :=
  ∀ n, P18297273029234151083.a n = A221517 (n + 1)

end A221517

/-! ## A221517.P18117317446618239982

`A014963(12*n+6)*A221515(A000124(n+5)+5)`
-/

namespace A221517.P18117317446618239982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A221515 (A000124 (n + 5) + 5).toNat

end

end A221517.P18117317446618239982

namespace A221517

/-- `A014963(12*n+6)*A221515(A000124(n+5)+5)` -/
def P18117317446618239982.Spec : Prop :=
  ∀ n, P18117317446618239982.a n = A221517 (n + 1)

end A221517

/-! ## A221517.P10806147389422424701

`A007318(A000096(n))*A221515(A000124(n+5)+5)`
-/

namespace A221517.P10806147389422424701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A221515 (A000124 (n + 5) + 5).toNat

end

end A221517.P10806147389422424701

namespace A221517

/-- `A007318(A000096(n))*A221515(A000124(n+5)+5)` -/
def P10806147389422424701.Spec : Prop :=
  ∀ n, P10806147389422424701.a n = A221517 (n + 1)

end A221517

/-! ## A221517.P17296093004902973525

`A001222(A005385(n+1))*A221515(A000124(n+5)+5)`
-/

namespace A221517.P17296093004902973525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005385 (n + 1)).toNat * A221515 (A000124 (n + 5) + 5).toNat

end

end A221517.P17296093004902973525

namespace A221517

/-- `A001222(A005385(n+1))*A221515(A000124(n+5)+5)` -/
def P17296093004902973525.Spec : Prop :=
  ∀ n, P17296093004902973525.a n = A221517 (n + 1)

end A221517

/-! ## A221517.P557960007581934092

`A008683(A001359(n+1))²*A221515(A000124(n+5)+5)`
-/

namespace A221517.P557960007581934092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat ^ 2 * A221515 (A000124 (n + 5) + 5).toNat

end

end A221517.P557960007581934092

namespace A221517

/-- `A008683(A001359(n+1))²*A221515(A000124(n+5)+5)` -/
def P557960007581934092.Spec : Prop :=
  ∀ n, P557960007581934092.a n = A221517 (n + 1)

end A221517

/-!
# A221518: Number of 0..n arrays of length 7 with each element differing from at least one neighbor by 2 or more, starting with 0.

The programs for A221518, there is no canonical definition to state claims against.
-/

/-! ## A221518.P11147347441722922371

`A221515(A000124(n+6)+6)`
-/

namespace A221518.P11147347441722922371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000124 (n + 6) + 6).toNat

end

end A221518.P11147347441722922371

/-! ## A221518.P11012872824334050106

`A221515(A000217(n+6)+7)`
-/

namespace A221518.P11012872824334050106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A000217 (n + 6) + 7).toNat

end

end A221518.P11012872824334050106

/-! ## A221518.P1970164755227057426

`A221515(A027379(n+4)+10)`
-/

namespace A221518.P1970164755227057426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A027379 (n + 4) + 10).toNat

end

end A221518.P1970164755227057426

/-! ## A221518.P6106893057996587288

`A221515(A152947(n+8)+6)`
-/

namespace A221518.P6106893057996587288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A152947 (n + 8) + 6).toNat

end

end A221518.P6106893057996587288

/-! ## A221518.P11908520781822139099

`A221515(A052905(n+3)+12)`
-/

namespace A221518.P11908520781822139099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (A052905 (n + 3) + 12).toNat

end

end A221518.P11908520781822139099

/-! ## A221518.P6169244809069444949

`A221515(eq[7, A002260(n+1)]+1)`
-/

namespace A221518.P6169244809069444949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221518.P6169244809069444949

/-!
# A221519: Number of 0..3 arrays of length n with each element differing from at least one neighbor by 2 or more.

The programs for A221519, the canonical program `A221519.P13786518074614775419` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221519 has offset 1).

The definition of A221519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221519.P8246544723959663299

`ogf((6x+4x^2+2x^3)/(1-x-4x^2-3x^3-x^4))`
-/

namespace A221519.P8246544723959663299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4, 2] [1, -1, -4, -3, -1] n

end

end A221519.P8246544723959663299

namespace A221519

/-- `ogf((6x+4x^2+2x^3)/(1-x-4x^2-3x^3-x^4))` -/
def P8246544723959663299.Spec : Prop :=
  ∀ n, P8246544723959663299.a n = A221519 (n + 1)

end A221519

/-! ## A221519.P13786518074614775419

`a(n-1)+4*a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=6, a(2)=10, a(3)=36`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221519

/-- `a(n-1)+4*a(n-2)+3*a(n-3)+a(n-4)` -/
def P13786518074614775419.Spec : Prop :=
  ∀ n, (P13786518074614775419.a n : ℤ) = A221519 (n + 1)

theorem P13786518074614775419.correct : P13786518074614775419.Spec := by
  intro n
  simp only [A221519, Nat.add_sub_cancel]

end A221519

/-! ## A221519.P5987332629358580975

`abs(2*(1-A077983(n)))`
-/

namespace A221519.P5987332629358580975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (1 - A077983 n)|

end

end A221519.P5987332629358580975

namespace A221519

/-- `abs(2*(1-A077983(n)))` -/
def P5987332629358580975.Spec : Prop :=
  ∀ n, P5987332629358580975.a n = A221519 (n + 1)

end A221519

/-! ## A221519.P14465858456316933707

`2*abs(1-∑[A078054(n)])`
-/

namespace A221519.P14465858456316933707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A221519.P14465858456316933707

namespace A221519

/-- `2*abs(1-∑[A078054(n)])` -/
def P14465858456316933707.Spec : Prop :=
  ∀ n, P14465858456316933707.a n = A221519 (n + 1)

end A221519

/-! ## A221519.P8761267123395972502

`2*(A077936(n)-A033999(n))`
-/

namespace A221519.P8761267123395972502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077936 n - A033999 n)

end

end A221519.P8761267123395972502

namespace A221519

/-- `2*(A077936(n)-A033999(n))` -/
def P8761267123395972502.Spec : Prop :=
  ∀ n, P8761267123395972502.a n = A221519 (n + 1)

end A221519

/-! ## A221519.P9727273505729245836

`2*(A077936(n)-A056594(A005843(n)))`
-/

namespace A221519.P9727273505729245836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077936 n - A056594 (A005843 n).toNat)

end

end A221519.P9727273505729245836

namespace A221519

/-- `2*(A077936(n)-A056594(A005843(n)))` -/
def P9727273505729245836.Spec : Prop :=
  ∀ n, P9727273505729245836.a n = A221519 (n + 1)

end A221519

/-! ## A221519.P7356341932636739038

`2*(A077936(n)-A062157(A053438(n)))`
-/

namespace A221519.P7356341932636739038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077936 n - A062157 (A053438 n).toNat)

end

end A221519.P7356341932636739038

namespace A221519

/-- `2*(A077936(n)-A062157(A053438(n)))` -/
def P7356341932636739038.Spec : Prop :=
  ∀ n, P7356341932636739038.a n = A221519 (n + 1)

end A221519

/-! ## A221519.P14176614947018314284

`2*(A077936(n)-A056594(A266073(n)))`
-/

namespace A221519.P14176614947018314284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077936 n - A056594 (A266073 n).toNat)

end

end A221519.P14176614947018314284

namespace A221519

/-- `2*(A077936(n)-A056594(A266073(n)))` -/
def P14176614947018314284.Spec : Prop :=
  ∀ n, P14176614947018314284.a n = A221519 (n + 1)

end A221519

/-! ## A221519.P8418814591221447857

`A221524(∑[n+3]+1)`
-/

namespace A221519.P8418814591221447857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221519.P8418814591221447857

namespace A221519

/-- `A221524(∑[n+3]+1)` -/
def P8418814591221447857.Spec : Prop :=
  ∀ n, P8418814591221447857.a n = A221519 (n + 1)

end A221519

/-!
# A221520: Number of 0..4 arrays of length n with each element differing from at least one neighbor by 2 or more.

The programs for A221520, the canonical program `A221520.P18317784280710365603` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221520 has offset 1).

The definition of A221520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221520.P18317784280710365603

`ogf((12x+6x^2+12x^3-4x^4+8x^5)/(1-2x-6x^2-6x^3-4x^4-4x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221520

/-- `ogf((12x+6x^2+12x^3-4x^4+8x^5)/(1-2x-6x^2-6x^3-4x^4-4x^6))` -/
def P18317784280710365603.Spec : Prop :=
  ∀ n, P18317784280710365603.a n = A221520 (n + 1)

theorem P18317784280710365603.correct : P18317784280710365603.Spec := by
  intro n
  simp only [A221520, Nat.add_sub_cancel]

end A221520

/-! ## A221520.P12826907505351937414

`A221524(A027379(n+2))`
-/

namespace A221520.P12826907505351937414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A027379 (n + 2)).toNat

end

end A221520.P12826907505351937414

namespace A221520

/-- `A221524(A027379(n+2))` -/
def P12826907505351937414.Spec : Prop :=
  ∀ n, P12826907505351937414.a n = A221520 (n + 1)

end A221520

/-! ## A221520.P5228649685861714905

`A221524(A056000(n)+7)`
-/

namespace A221520.P5228649685861714905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A056000 n + 7).toNat

end

end A221520.P5228649685861714905

namespace A221520

/-- `A221524(A056000(n)+7)` -/
def P5228649685861714905.Spec : Prop :=
  ∀ n, P5228649685861714905.a n = A221520 (n + 1)

end A221520

/-! ## A221520.P3713370455097523143

`A221524(A000096(n+3)-2)`
-/

namespace A221520.P3713370455097523143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000096 (n + 3) - 2).toNat

end

end A221520.P3713370455097523143

namespace A221520

/-- `A221524(A000096(n+3)-2)` -/
def P3713370455097523143.Spec : Prop :=
  ∀ n, P3713370455097523143.a n = A221520 (n + 1)

end A221520

/-! ## A221520.P18445116656272704828

`A221524(∑[A233583(n+1)+4])`
-/

namespace A221520.P18445116656272704828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221520.P18445116656272704828

namespace A221520

/-- `A221524(∑[A233583(n+1)+4])` -/
def P18445116656272704828.Spec : Prop :=
  ∀ n, P18445116656272704828.a n = A221520 (n + 1)

end A221520

/-! ## A221520.P7720290071924160878

`A221524(A167614(n+1)+2*n+1)`
-/

namespace A221520.P7720290071924160878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A221520.P7720290071924160878

namespace A221520

/-- `A221524(A167614(n+1)+2*n+1)` -/
def P7720290071924160878.Spec : Prop :=
  ∀ n, P7720290071924160878.a n = A221520 (n + 1)

end A221520

/-! ## A221520.P572697308430288174

`record[A221524(A027379(A008615(n)))]`
-/

namespace A221520.P572697308430288174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A027379 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221520.P572697308430288174

namespace A221520

/-- `record[A221524(A027379(A008615(n)))]` -/
def P572697308430288174.Spec : Prop :=
  ∀ n, P572697308430288174.a n = A221520 (n + 1)

end A221520

/-! ## A221520.P11625582810239752068

`record[A221524(A027379(A103221(n)))]`
-/

namespace A221520.P11625582810239752068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A027379 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221520.P11625582810239752068

namespace A221520

/-- `record[A221524(A027379(A103221(n)))]` -/
def P11625582810239752068.Spec : Prop :=
  ∀ n, P11625582810239752068.a n = A221520 (n + 1)

end A221520

/-! ## A221520.P10967013937320911905

`A221524(A034856(n+1)+A020739(n))`
-/

namespace A221520.P10967013937320911905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A034856 (n + 1) + A020739 n).toNat

end

end A221520.P10967013937320911905

namespace A221520

/-- `A221524(A034856(n+1)+A020739(n))` -/
def P10967013937320911905.Spec : Prop :=
  ∀ n, P10967013937320911905.a n = A221520 (n + 1)

end A221520

/-!
# A221521: Number of 0..5 arrays of length n with each element differing from at least one neighbor by 2 or more.

The programs for A221521, the canonical program `A221521.P8305752723295996079` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221521 has offset 1).

The definition of A221521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221521.P8305752723295996079

`ogf((20x+28x^2+44x^3-8x^4+2x^5)/(1-2x-11x^2-20x^3-17x^4+3x^5-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221521

/-- `ogf((20x+28x^2+44x^3-8x^4+2x^5)/(1-2x-11x^2-20x^3-17x^4+3x^5-x^6))` -/
def P8305752723295996079.Spec : Prop :=
  ∀ n, P8305752723295996079.a n = A221521 (n + 1)

theorem P8305752723295996079.correct : P8305752723295996079.Spec := by
  intro n
  simp only [A221521, Nat.add_sub_cancel]

end A221521

/-! ## A221521.P11803392083571788589

`A221524(A046691(n+3))`
-/

namespace A221521.P11803392083571788589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A046691 (n + 3)).toNat

end

end A221521.P11803392083571788589

namespace A221521

/-- `A221524(A046691(n+3))` -/
def P11803392083571788589.Spec : Prop :=
  ∀ n, P11803392083571788589.a n = A221521 (n + 1)

end A221521

/-! ## A221521.P18004170635692834323

`A221524(Δ[A023545(n+1)])`
-/

namespace A221521.P18004170635692834323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (f1 (n + 1) - f1 n).toNat

end

end A221521.P18004170635692834323

namespace A221521

/-- `A221524(Δ[A023545(n+1)])` -/
def P18004170635692834323.Spec : Prop :=
  ∀ n, P18004170635692834323.a n = A221521 (n + 1)

end A221521

/-! ## A221521.P18064803378784316841

`A221524(A055999(n+2)+2)`
-/

namespace A221521.P18064803378784316841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A055999 (n + 2) + 2).toNat

end

end A221521.P18064803378784316841

namespace A221521

/-- `A221524(A055999(n+2)+2)` -/
def P18064803378784316841.Spec : Prop :=
  ∀ n, P18064803378784316841.a n = A221521 (n + 1)

end A221521

/-! ## A221521.P18358429201507139747

`A221524(A000217(n+5)-4)`
-/

namespace A221521.P18358429201507139747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000217 (n + 5) - 4).toNat

end

end A221521.P18358429201507139747

namespace A221521

/-- `A221524(A000217(n+5)-4)` -/
def P18358429201507139747.Spec : Prop :=
  ∀ n, P18358429201507139747.a n = A221521 (n + 1)

end A221521

/-! ## A221521.P7117978563090478622

`A221524(A246172(n+1)+10)`
-/

namespace A221521.P7117978563090478622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A246172 (n + 1) + 10).toNat

end

end A221521.P7117978563090478622

namespace A221521

/-- `A221524(A246172(n+1)+10)` -/
def P7117978563090478622.Spec : Prop :=
  ∀ n, P7117978563090478622.a n = A221521 (n + 1)

end A221521

/-! ## A221521.P309044668447401358

`record[A221524(A046691(A286619(n)))]`
-/

namespace A221521.P309044668447401358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A046691 (A286619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221521.P309044668447401358

namespace A221521

/-- `record[A221524(A046691(A286619(n)))]` -/
def P309044668447401358.Spec : Prop :=
  ∀ n, P309044668447401358.a n = A221521 (n + 1)

end A221521

/-!
# A221522: Number of 0..6 arrays of length n with each element differing from at least one neighbor by 2 or more.

The programs for A221522, the canonical program `A221522.P12723657910144226265` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221522 has offset 1).

The definition of A221522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221522.P12723657910144226265

`ogf((30x+40x^2+90x^3-22x^4+66x^5+18x^6+6x^7)/(1-3x-14x^2-29x^3-28x^4-x^5-27x^6-8x^7-2x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221522

/-- `ogf((30x+40x^2+90x^3-22x^4+66x^5+18x^6+6x^7)/(1-3x-14x^2-29x^3-28x^4-x^5-27x^6-8x^7-2x^8))` -/
def P12723657910144226265.Spec : Prop :=
  ∀ n, P12723657910144226265.a n = A221522 (n + 1)

theorem P12723657910144226265.correct : P12723657910144226265.Spec := by
  intro n
  simp only [A221522, Nat.add_sub_cancel]

end A221522

/-! ## A221522.P16375635504387136578

`A221524(eq[3, A219347(n)])`
-/

namespace A221522.P16375635504387136578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221522.P16375635504387136578

namespace A221522

/-- `A221524(eq[3, A219347(n)])` -/
def P16375635504387136578.Spec : Prop :=
  ∀ n, P16375635504387136578.a n = A221522 (n + 1)

end A221522

/-! ## A221522.P18320283902834557289

`A221524(∑[A020715(n)]+10)`
-/

namespace A221522.P18320283902834557289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A221522.P18320283902834557289

namespace A221522

/-- `A221524(∑[A020715(n)]+10)` -/
def P18320283902834557289.Spec : Prop :=
  ∀ n, P18320283902834557289.a n = A221522 (n + 1)

end A221522

/-! ## A221522.P1978736962113377981

`A221524(A000096(n+5)-4)`
-/

namespace A221522.P1978736962113377981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000096 (n + 5) - 4).toNat

end

end A221522.P1978736962113377981

namespace A221522

/-- `A221524(A000096(n+5)-4)` -/
def P1978736962113377981.Spec : Prop :=
  ∀ n, P1978736962113377981.a n = A221522 (n + 1)

end A221522

/-! ## A221522.P3578623734155109802

`A221524(A000124(n+6)-6)`
-/

namespace A221522.P3578623734155109802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000124 (n + 6) - 6).toNat

end

end A221522.P3578623734155109802

namespace A221522

/-- `A221524(A000124(n+6)-6)` -/
def P3578623734155109802.Spec : Prop :=
  ∀ n, P3578623734155109802.a n = A221522 (n + 1)

end A221522

/-!
# A221523: Number of 0..7 arrays of length n with each element differing from at least one neighbor by 2 or more.

The programs for A221523, the canonical program `A221523.P17854377015154283266` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221523 has offset 1).

The definition of A221523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221523.P17854377015154283266

`ogf((42x+96x^2+216x^3+68x^4+72x^5+24x^7)/(1-3x-21x^2-58x^3-79x^4-32x^5-23x^6-4x^7-8x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221523

/-- `ogf((42x+96x^2+216x^3+68x^4+72x^5+24x^7)/(1-3x-21x^2-58x^3-79x^4-32x^5-23x^6-4x^7-8x^8))` -/
def P17854377015154283266.Spec : Prop :=
  ∀ n, P17854377015154283266.a n = A221523 (n + 1)

theorem P17854377015154283266.correct : P17854377015154283266.Spec := by
  intro n
  simp only [A221523, Nat.add_sub_cancel]

end A221523

/-! ## A221523.P6552494306057417781

`A221524(A055999(n+4))`
-/

namespace A221523.P6552494306057417781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A055999 (n + 4)).toNat

end

end A221523.P6552494306057417781

namespace A221523

/-- `A221524(A055999(n+4))` -/
def P6552494306057417781.Spec : Prop :=
  ∀ n, P6552494306057417781.a n = A221523 (n + 1)

end A221523

/-! ## A221523.P4923588465745826437

`A221524(eq[4, A219347(n)])`
-/

namespace A221523.P4923588465745826437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221523.P4923588465745826437

namespace A221523

/-- `A221524(eq[4, A219347(n)])` -/
def P4923588465745826437.Spec : Prop :=
  ∀ n, P4923588465745826437.a n = A221523 (n + 1)

end A221523

/-! ## A221523.P11266929402383539912

`A221524(eq[6, A193592(n)])`
-/

namespace A221523.P11266929402383539912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221523.P11266929402383539912

namespace A221523

/-- `A221524(eq[6, A193592(n)])` -/
def P11266929402383539912.Spec : Prop :=
  ∀ n, P11266929402383539912.a n = A221523 (n + 1)

end A221523

/-! ## A221523.P13714193028774347164

`A221524(A000124(n+7)-7)`
-/

namespace A221523.P13714193028774347164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000124 (n + 7) - 7).toNat

end

end A221523.P13714193028774347164

namespace A221523

/-- `A221524(A000124(n+7)-7)` -/
def P13714193028774347164.Spec : Prop :=
  ∀ n, P13714193028774347164.a n = A221523 (n + 1)

end A221523

/-!
# A221524: T(n,k)=Number of 0..k arrays of length n with each element differing from at least one neighbor by 2 or more.

The programs for A221524, there is no canonical definition to state claims against.
-/

/-! ## A221524.P8595390962381859079

`A235875(A079474(n+1))*A292804(n)`
-/

namespace A221524.P8595390962381859079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (A079474 (n + 1)).toNat * A292804 n

end

end A221524.P8595390962381859079

/-! ## A221524.P7163733916824820840

`2*A034463(A142589(n))`
-/

namespace A221524.P7163733916824820840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034463 (A142589 n).toNat

end

end A221524.P7163733916824820840

/-! ## A221524.P103120179033530959

`A001222(A009998(n)^A112739(n))`
-/

namespace A221524.P103120179033530959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A009998 n : ℚ) ^ (A112739 n : ℤ))).toNat

end

end A221524.P103120179033530959

/-! ## A221524.P10638687145793836973

`A162427(A252754(n+1))%A203717(n+1)`
-/

namespace A221524.P10638687145793836973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162427 (A252754 (n + 1)).toNat) (A203717 (n + 1))

end

end A221524.P10638687145793836973

/-! ## A221524.P1750003667778956703

`A233583(A005629(n+1))%A008277(n+1)`
-/

namespace A221524.P1750003667778956703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A005629 (n + 1)).toNat) (A008277 (n + 1))

end

end A221524.P1750003667778956703

/-!
# A221525: Number of 0..n arrays of length 5 with each element differing from at least one neighbor by 2 or more.

The programs for A221525, the canonical program `A221525.P3146802174644928444` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221525 has offset 1).

The definition of A221525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221525.P3146802174644928444

`ogf((6x+58x^2+62x^3+14x^4-22x^5+4x^6-2x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221525

/-- `ogf((6x+58x^2+62x^3+14x^4-22x^5+4x^6-2x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P3146802174644928444.Spec : Prop :=
  ∀ n, P3146802174644928444.a n = A221525 (n + 1)

theorem P3146802174644928444.correct : P3146802174644928444.Spec := by
  intro n
  simp only [A221525, Nat.add_sub_cancel]

end A221525

/-! ## A221525.P3819419667647850546

`record[A221524(A167499(n))]`
-/

namespace A221525.P3819419667647850546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221525.P3819419667647850546

namespace A221525

/-- `record[A221524(A167499(n))]` -/
def P3819419667647850546.Spec : Prop :=
  ∀ n, P3819419667647850546.a n = A221525 (n + 1)

end A221525

/-! ## A221525.P16877873022603660834

`A221524(A167499(n+3))`
-/

namespace A221525.P16877873022603660834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A167499 (n + 3)).toNat

end

end A221525.P16877873022603660834

namespace A221525

/-- `A221524(A167499(n+3))` -/
def P16877873022603660834.Spec : Prop :=
  ∀ n, P16877873022603660834.a n = A221525 (n + 1)

end A221525

/-! ## A221525.P3120830128116287456

`record[A221524(A133263(n)+3)]`
-/

namespace A221525.P3120830128116287456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A133263 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221525.P3120830128116287456

namespace A221525

/-- `record[A221524(A133263(n)+3)]` -/
def P3120830128116287456.Spec : Prop :=
  ∀ n, P3120830128116287456.a n = A221525 (n + 1)

end A221525

/-! ## A221525.P6036336492161180261

`record[A221524(A000096(n)+6)]`
-/

namespace A221525.P6036336492161180261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000096 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221525.P6036336492161180261

namespace A221525

/-- `record[A221524(A000096(n)+6)]` -/
def P6036336492161180261.Spec : Prop :=
  ∀ n, P6036336492161180261.a n = A221525 (n + 1)

end A221525

/-! ## A221525.P7758575239567749518

`record[A221524(A167614(n+1)-n)]`
-/

namespace A221525.P7758575239567749518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A167614 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221525.P7758575239567749518

namespace A221525

/-- `record[A221524(A167614(n+1)-n)]` -/
def P7758575239567749518.Spec : Prop :=
  ∀ n, P7758575239567749518.a n = A221525 (n + 1)

end A221525

/-!
# A221526: Number of 0..n arrays of length 6 with each element differing from at least one neighbor by 2 or more.

The programs for A221526, there is no canonical definition to state claims against.
-/

/-! ## A221526.P11014157788156173199

`A221524(A000124(n+5)+5)`
-/

namespace A221526.P11014157788156173199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000124 (n + 5) + 5).toNat

end

end A221526.P11014157788156173199

/-! ## A221526.P8390381450382039676

`A221524(A000096(n+4)+7)`
-/

namespace A221526.P8390381450382039676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000096 (n + 4) + 7).toNat

end

end A221526.P8390381450382039676

/-! ## A221526.P9793127493776973624

`A221524(A000217(n+5)+6)`
-/

namespace A221526.P9793127493776973624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000217 (n + 5) + 6).toNat

end

end A221526.P9793127493776973624

/-! ## A221526.P13393755816730056450

`A221524(Δ[A023545(n+1)]+10)`
-/

namespace A221526.P13393755816730056450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (f1 (n + 1) - f1 n + 10).toNat

end

end A221526.P13393755816730056450

/-! ## A221526.P8785583518668445632

`A221524(A112355(n+3)+6)`
-/

namespace A221526.P8785583518668445632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A112355 (n + 3) + 6).toNat

end

end A221526.P8785583518668445632

/-!
# A221527: Number of 0..n arrays of length 7 with each element differing from at least one neighbor by 2 or more.

The programs for A221527, there is no canonical definition to state claims against.
-/

/-! ## A221527.P4180789528179271330

`A221524(A167487(n+5))`
-/

namespace A221527.P4180789528179271330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A167487 (n + 5)).toNat

end

end A221527.P4180789528179271330

/-! ## A221527.P5241307604625186792

`A221524(A167614(n+5)+4)`
-/

namespace A221527.P5241307604625186792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A167614 (n + 5) + 4).toNat

end

end A221527.P5241307604625186792

/-! ## A221527.P7214760016651776779

`A221524(A000096(n+5)+8)`
-/

namespace A221527.P7214760016651776779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000096 (n + 5) + 8).toNat

end

end A221527.P7214760016651776779

/-! ## A221527.P8312031646380775043

`A221524(A000217(n+6)+7)`
-/

namespace A221527.P8312031646380775043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (A000217 (n + 6) + 7).toNat

end

end A221527.P8312031646380775043

/-! ## A221527.P18131844769083110335

`A221524(eq[5, A219347(n)]-A005408(n))`
-/

namespace A221527.P18131844769083110335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005408 n).toNat

end

end A221527.P18131844769083110335

/-!
# A221528: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A220514.

The programs for A221528, there is no canonical definition to state claims against.
-/

/-! ## A221528.P4036715907683018117

`4*A220525(n)`
-/

namespace A221528.P4036715907683018117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A220525 n

end

end A221528.P4036715907683018117

/-! ## A221528.P10653302847283601837

`A008586(A220525(n))`
-/

namespace A221528.P10653302847283601837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A220525 n).toNat

end

end A221528.P10653302847283601837

/-! ## A221528.P13747670616794124929

`A153733(A220525(n)/(1-3/4))`
-/

namespace A221528.P13747670616794124929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (SequenceMachineLib.roundAway ((A220525 n : ℚ) / (1 - (3 : ℚ) / 4))).toNat

end

end A221528.P13747670616794124929

/-! ## A221528.P14333620905884468752

`A005843(A220525(n)+A220525(n))`
-/

namespace A221528.P14333620905884468752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A220525 n + A220525 n).toNat

end

end A221528.P14333620905884468752

/-! ## A221528.P15950390141577909632

`A008574(A220525(n))-A000007(n)`
-/

namespace A221528.P15950390141577909632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A220525 n).toNat - A000007 n

end

end A221528.P15950390141577909632

/-! ## A221528.P5633205478873369538

`A008574(A220525(n))%A003215(n)`
-/

namespace A221528.P5633205478873369538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A220525 n).toNat) (A003215 n)

end

end A221528.P5633205478873369538

/-! ## A221528.P6350743968229408777

`A008574(A220525(n)+n)-A008574(n)`
-/

namespace A221528.P6350743968229408777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A220525 n + (n : ℤ)).toNat - A008574 n

end

end A221528.P6350743968229408777

/-! ## A221528.P12546962157417277178

`A220525(n)/(2^A008683(A002148(n)))²`
-/

namespace A221528.P12546962157417277178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220525 n : ℚ) / ((2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ)) ^ 2

end

end A221528.P12546962157417277178

/-! ## A221528.P12090175267076003450

`A008574(A220525(n))-A029433(A000120(n))`
-/

namespace A221528.P12090175267076003450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A220525 n).toNat - A029433 (A000120 n).toNat

end

end A221528.P12090175267076003450

/-!
# A221529: Triangle read by rows: T(n,k) = A000203(k)*A000041(n-k), 1 <= k <= n.

The programs for A221529, there is no canonical definition to state claims against.
-/

/-! ## A221529.P12785753855670477539

`A000203(col(n)+1)*A000041(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A221529.P12785753855670477539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.triCol n + 1) * A000041 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A221529.P12785753855670477539

/-! ## A221529.P9999060416414094437

`A000203(col(n)+1)*A000041(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A221529.P9999060416414094437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.triCol n + 1) * A000041 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1))

end

end A221529.P9999060416414094437

/-! ## A221529.P14379648985045731665

`A027293(n+1)*A245093(n+1)`
-/

namespace A221529.P14379648985045731665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1) * A245093 (n + 1)

end

end A221529.P14379648985045731665

/-! ## A221529.P11387406198975183652

`A000041(C(comp[∑[n]]-n, 2)-(n+1))*A245093(n+1)`
-/

namespace A221529.P11387406198975183652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) * A245093 (n + 1)

end

end A221529.P11387406198975183652

/-! ## A221529.P814443848406986300

`A000041(A025581(n))*A245093(n+1)`
-/

namespace A221529.P814443848406986300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n).toNat * A245093 (n + 1)

end

end A221529.P814443848406986300

/-! ## A221529.P18124211555923496328

`A000203(A002260(n+1))*A027293(n+1)`
-/

namespace A221529.P18124211555923496328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A027293 (n + 1)

end

end A221529.P18124211555923496328

/-! ## A221529.P4286491105056262172

`A000203(A002260(n+1))*A000041(A025581(n))`
-/

namespace A221529.P4286491105056262172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A000041 (A025581 n).toNat

end

end A221529.P4286491105056262172

/-! ## A221529.P2767136840214228931

`A000041(A025581(n))*A000203(A002262(n)+1)`
-/

namespace A221529.P2767136840214228931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n).toNat * A000203 (A002262 n + 1).toNat

end

end A221529.P2767136840214228931

/-! ## A221529.P9249049942867435379

`A339106(∑[char[∑[n]]]²-n)`
-/

namespace A221529.P9249049942867435379
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339106 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A221529.P9249049942867435379

/-! ## A221529.P4811097797919306353

`A001055(A130321(n))*A245093(n+1)`
-/

namespace A221529.P4811097797919306353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A130321 n).toNat * A245093 (n + 1)

end

end A221529.P4811097797919306353

/-!
# A221530: Triangle read by rows: T(n,k) = A000005(k)*A000041(n-k).

The programs for A221530, there is no canonical definition to state claims against.
-/

/-! ## A221530.P17105574686836240875

`A000005(col(n)+1)*A000041(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A221530.P17105574686836240875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.triCol n + 1) * A000041 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A221530.P17105574686836240875

/-! ## A221530.P6780855144803475369

`A000005(col(n)+1)*A000041(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A221530.P6780855144803475369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.triCol n + 1) * A000041 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1))

end

end A221530.P6780855144803475369

/-! ## A221530.P3150798178549033605

`A000005(A002260(n+1))*A027293(n+1)`
-/

namespace A221530.P3150798178549033605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A027293 (n + 1)

end

end A221530.P3150798178549033605

/-! ## A221530.P10527389458133140867

`A000005(A002260(n+1))*A000041(A025581(n))`
-/

namespace A221530.P10527389458133140867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002260 (n + 1)).toNat * A000041 (A025581 n).toNat

end

end A221530.P10527389458133140867

/-! ## A221530.P15108018418595388494

`A221531(∑[char[∑[n]]]²-n)`
-/

namespace A221530.P15108018418595388494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221531 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A221530.P15108018418595388494

/-! ## A221530.P6587403678611685927

`or(char[1], A221531(A038722(n+1)))`
-/

namespace A221530.P6587403678611685927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A221531 (A038722 (n + 1)).toNat)

end

end A221530.P6587403678611685927

/-! ## A221530.P2926081091350613836

`gcd(A000038(n), A221531(A038722(n+1)))`
-/

namespace A221530.P2926081091350613836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A221531 (A038722 (n + 1)).toNat)

end

end A221530.P2926081091350613836

/-!
# A221531: Triangle read by rows: T(n,k) = A000005(n-k+1)*A000041(k-1), n>=1, k>=1.

The programs for A221531, there is no canonical definition to state claims against.
-/

/-! ## A221531.P4814453554511910368

`A000005(row(n)-col(n)+1)*A000041(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A221531.P4814453554511910368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000041 (SequenceMachineLib.triCol n)

end

end A221531.P4814453554511910368

/-! ## A221531.P10818592276946499187

`A000005(row(n)+1-(col(n)+1)+1)*A000041(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A221531.P10818592276946499187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A000041 (SequenceMachineLib.triCol n)

end

end A221531.P10818592276946499187

/-! ## A221531.P7828383136871802556

`A221530(∑[char[∑[n]]]²-n)`
-/

namespace A221531.P7828383136871802556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221530 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A221531.P7828383136871802556

/-! ## A221531.P6007825234198609671

`A140207(n)*A272171(n+1)`
-/

namespace A221531.P6007825234198609671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n * A272171 (n + 1)

end

end A221531.P6007825234198609671

/-! ## A221531.P13473324734879156585

`A000005(A004736(n+1))*A140207(n)`
-/

namespace A221531.P13473324734879156585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004736 (n + 1)).toNat * A140207 n

end

end A221531.P13473324734879156585

/-! ## A221531.P17305367561579153153

`A000041(A002262(n))*A272171(n+1)`
-/

namespace A221531.P17305367561579153153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A272171 (n + 1)

end

end A221531.P17305367561579153153

/-! ## A221531.P13784320958916323132

`A000041(log2(A059268(n)))*A272171(n+1)`
-/

namespace A221531.P13784320958916323132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A272171 (n + 1)

end

end A221531.P13784320958916323132

/-! ## A221531.P12359458359065493303

`A000005(A004736(n+1))*A000041(A002262(n))`
-/

namespace A221531.P12359458359065493303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004736 (n + 1)).toNat * A000041 (A002262 n).toNat

end

end A221531.P12359458359065493303

/-! ## A221531.P6512488188109580428

`A000041(A002262(n))*A000005(A025581(n)+1)`
-/

namespace A221531.P6512488188109580428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A000005 (A025581 n + 1).toNat

end

end A221531.P6512488188109580428

/-! ## A221531.P12929478331726612709

`A000041(A002260(n+1)-1)*A000005(A004736(n+1))`
-/

namespace A221531.P12929478331726612709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (n + 1) - 1).toNat * A000005 (A004736 (n + 1)).toNat

end

end A221531.P12929478331726612709

/-!
# A221534: E.g.f.: Sum_{n>=0} a(n) * (cos(n*x) - sin(n*x))^n * x^n/n! = 1 + x.

The programs for A221534, there is no canonical definition to state claims against.
-/

/-! ## A221534.P17050300791570246582

`A234027(3^C(n, 2))`
-/

namespace A221534.P17050300791570246582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (3 ^ Nat.choose n 2)

end

end A221534.P17050300791570246582

/-!
# A221535: E.g.f.: Sum_{n>=0} a(n) * (cos(n^2*x) - sin(n^2*x)) * x^n/n! = 1 + x.

The programs for A221535, there is no canonical definition to state claims against.
-/

/-! ## A221535.P3942483405244605863

`A134532(A132987(n))`
-/

namespace A221535.P3942483405244605863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134532 (A132987 n).toNat

end

end A221535.P3942483405244605863

/-!
# A221536: Number of 0..2 arrays of length n with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221536, the canonical program `A221536.P8867355447224033842` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221536 has offset 1).

The definition of A221536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221536.P16910081070773610789

`ogf((2x-2x^2+2x^3)/(1-3x+2x^2-4x^4))`
-/

namespace A221536.P16910081070773610789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, 2] [1, -3, 2, 0, -4] n

end

end A221536.P16910081070773610789

namespace A221536

/-- `ogf((2x-2x^2+2x^3)/(1-3x+2x^2-4x^4))` -/
def P16910081070773610789.Spec : Prop :=
  ∀ n, P16910081070773610789.a n = A221536 (n + 1)

end A221536

/-! ## A221536.P8867355447224033842

`3*a(n-1)-2*a(n-2)+4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221536

/-- `3*a(n-1)-2*a(n-2)+4*a(n-4)` -/
def P8867355447224033842.Spec : Prop :=
  ∀ n, P8867355447224033842.a n = A221536 (n + 1)

theorem P8867355447224033842.correct : P8867355447224033842.Spec := by
  intro n
  simp only [A221536, Nat.add_sub_cancel]

end A221536

/-! ## A221536.P10017499538344445845

`A221542(∑[n+2])`
-/

namespace A221536.P10017499538344445845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221536.P10017499538344445845

namespace A221536

/-- `A221542(∑[n+2])` -/
def P10017499538344445845.Spec : Prop :=
  ∀ n, P10017499538344445845.a n = A221536 (n + 1)

end A221536

/-! ## A221536.P12381836117344275127

`record[A221542(A000096(A065648(n)))]`
-/

namespace A221536.P12381836117344275127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221536.P12381836117344275127

namespace A221536

/-- `record[A221542(A000096(A065648(n)))]` -/
def P12381836117344275127.Spec : Prop :=
  ∀ n, P12381836117344275127.a n = A221536 (n + 1)

end A221536

/-! ## A221536.P17043012672583502831

`record[A221542(A000096(A002260(n+1)))]`
-/

namespace A221536.P17043012672583502831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221536.P17043012672583502831

namespace A221536

/-- `record[A221542(A000096(A002260(n+1)))]` -/
def P17043012672583502831.Spec : Prop :=
  ∀ n, P17043012672583502831.a n = A221536 (n + 1)

end A221536

/-! ## A221536.P4443863867952251591

`record[A221542(A000096(A003602(n+1)))]`
-/

namespace A221536.P4443863867952251591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221536.P4443863867952251591

namespace A221536

/-- `record[A221542(A000096(A003602(n+1)))]` -/
def P4443863867952251591.Spec : Prop :=
  ∀ n, P4443863867952251591.a n = A221536 (n + 1)

end A221536

/-! ## A221536.P4025375286276833276

`record[A221542(A000096(A003963(n+1)))]`
-/

namespace A221536.P4025375286276833276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221536.P4025375286276833276

namespace A221536

/-- `record[A221542(A000096(A003963(n+1)))]` -/
def P4025375286276833276.Spec : Prop :=
  ∀ n, P4025375286276833276.a n = A221536 (n + 1)

end A221536

/-! ## A221536.P2199853932344197648

`record[A221542(A000096(A187188(n+1)))]`
-/

namespace A221536.P2199853932344197648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000096 (A187188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221536.P2199853932344197648

namespace A221536

/-- `record[A221542(A000096(A187188(n+1)))]` -/
def P2199853932344197648.Spec : Prop :=
  ∀ n, P2199853932344197648.a n = A221536 (n + 1)

end A221536

/-! ## A221536.P1380177808843602895

`A243836(A000096(2*n+1))+A221542(A000096(n+1))`
-/

namespace A221536.P1380177808843602895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 (A000096 (2 * n + 1)).toNat + A221542 (A000096 (n + 1)).toNat

end

end A221536.P1380177808843602895

namespace A221536

/-- `A243836(A000096(2*n+1))+A221542(A000096(n+1))` -/
def P1380177808843602895.Spec : Prop :=
  ∀ n, P1380177808843602895.a n = A221536 (n + 1)

end A221536

/-!
# A221537: Number of 0..3 arrays of length n with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221537, the canonical program `A221537.P17254461578470812363` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221537 has offset 1).

The definition of A221537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221537.P5150013338605618037

`ogf((-3x+x^2)/(-1+3x+2x^2-x^3+x^4))`
-/

namespace A221537.P5150013338605618037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -1] [1, -3, -2, 1, -1] n

end

end A221537.P5150013338605618037

namespace A221537

/-- `ogf((-3x+x^2)/(-1+3x+2x^2-x^3+x^4))` -/
def P5150013338605618037.Spec : Prop :=
  ∀ n, P5150013338605618037.a n = A221537 (n + 1)

end A221537

/-! ## A221537.P17254461578470812363

`3*a(n-1)+2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=30`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221537

/-- `3*a(n-1)+2*a(n-2)-a(n-3)+a(n-4)` -/
def P17254461578470812363.Spec : Prop :=
  ∀ n, P17254461578470812363.a n = A221537 (n + 1)

theorem P17254461578470812363.correct : P17254461578470812363.Spec := by
  intro n
  simp only [A221537, Nat.add_sub_cancel]

end A221537

/-! ## A221537.P8355686236727170752

`∑[A116738(n+1)-(-1)^n]`
-/

namespace A221537.P8355686236727170752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116738 (n + 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221537.P8355686236727170752

namespace A221537

/-- `∑[A116738(n+1)-(-1)^n]` -/
def P8355686236727170752.Spec : Prop :=
  ∀ n, P8355686236727170752.a n = A221537 (n + 1)

end A221537

/-! ## A221537.P168168839562686547

`∑[A116738(n+1)]+A000034(n)-2`
-/

namespace A221537.P168168839562686547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000034 n - 2)

end

end A221537.P168168839562686547

namespace A221537

/-- `∑[A116738(n+1)]+A000034(n)-2` -/
def P168168839562686547.Spec : Prop :=
  ∀ n, P168168839562686547.a n = A221537 (n + 1)

end A221537

/-! ## A221537.P5230529887354474571

`∑[A116738(n+1)]+Δ[A032766(n)]-2`
-/

namespace A221537.P5230529887354474571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (f2 (n + 1) - f2 n - 2)

end

end A221537.P5230529887354474571

namespace A221537

/-- `∑[A116738(n+1)]+Δ[A032766(n)]-2` -/
def P5230529887354474571.Spec : Prop :=
  ∀ n, P5230529887354474571.a n = A221537 (n + 1)

end A221537

/-! ## A221537.P10603878351439209305

`A221542(∑[n+3]+1)`
-/

namespace A221537.P10603878351439209305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221537.P10603878351439209305

namespace A221537

/-- `A221542(∑[n+3]+1)` -/
def P10603878351439209305.Spec : Prop :=
  ∀ n, P10603878351439209305.a n = A221537 (n + 1)

end A221537

/-! ## A221537.P1040123340962706670

`A221542(A000096(n+2)-1)%(4^(n+1))`
-/

namespace A221537.P1040123340962706670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221542 (A000096 (n + 2) - 1).toNat) (4 ^ (n + 1) : ℤ)

end

end A221537.P1040123340962706670

namespace A221537

/-- `A221542(A000096(n+2)-1)%(4^(n+1))` -/
def P1040123340962706670.Spec : Prop :=
  ∀ n, P1040123340962706670.a n = A221537 (n + 1)

end A221537

/-! ## A221537.P128794502933084379

`A243836(n)+A221542(A000096(n+2)-1)`
-/

namespace A221537.P128794502933084379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n + A221542 (A000096 (n + 2) - 1).toNat

end

end A221537.P128794502933084379

namespace A221537

/-- `A243836(n)+A221542(A000096(n+2)-1)` -/
def P128794502933084379.Spec : Prop :=
  ∀ n, P128794502933084379.a n = A221537 (n + 1)

end A221537

/-! ## A221537.P15380515094220705643

`A221542(A052905(n)+3)%A199336(2*(n+1))`
-/

namespace A221537.P15380515094220705643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221542 (A052905 n + 3).toNat) (A199336 (2 * (n + 1)))

end

end A221537.P15380515094220705643

namespace A221537

/-- `A221542(A052905(n)+3)%A199336(2*(n+1))` -/
def P15380515094220705643.Spec : Prop :=
  ∀ n, P15380515094220705643.a n = A221537 (n + 1)

end A221537

/-!
# A221538: Number of 0..4 arrays of length n with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221538, the canonical program `A221538.P4125959255994062480` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221538 has offset 1).

The definition of A221538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221538.P4125959255994062480

`ogf((4x-6x^2+10x^3+x^4+x^5)/(1-5x+3x^2-x^3-15x^4-3x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221538

/-- `ogf((4x-6x^2+10x^3+x^4+x^5)/(1-5x+3x^2-x^3-15x^4-3x^5))` -/
def P4125959255994062480.Spec : Prop :=
  ∀ n, P4125959255994062480.a n = A221538 (n + 1)

theorem P4125959255994062480.correct : P4125959255994062480.Spec := by
  intro n
  simp only [A221538, Nat.add_sub_cancel]

end A221538

/-! ## A221538.P15896449605661780244

`A221542(A027379(n+2))`
-/

namespace A221538.P15896449605661780244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A027379 (n + 2)).toNat

end

end A221538.P15896449605661780244

namespace A221538

/-- `A221542(A027379(n+2))` -/
def P15896449605661780244.Spec : Prop :=
  ∀ n, P15896449605661780244.a n = A221538 (n + 1)

end A221538

/-! ## A221538.P10887172689724472497

`A221542(A055998(n+2))`
-/

namespace A221538.P10887172689724472497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A055998 (n + 2)).toNat

end

end A221538.P10887172689724472497

namespace A221538

/-- `A221542(A055998(n+2))` -/
def P10887172689724472497.Spec : Prop :=
  ∀ n, P10887172689724472497.a n = A221538 (n + 1)

end A221538

/-! ## A221538.P12393898303675295860

`A221542(A155212(n)+5)`
-/

namespace A221538.P12393898303675295860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A155212 n + 5).toNat

end

end A221538.P12393898303675295860

namespace A221538

/-- `A221542(A155212(n)+5)` -/
def P12393898303675295860.Spec : Prop :=
  ∀ n, P12393898303675295860.a n = A221538 (n + 1)

end A221538

/-! ## A221538.P7513070180879563308

`A221542(A056000(n)+7)`
-/

namespace A221538.P7513070180879563308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A056000 n + 7).toNat

end

end A221538.P7513070180879563308

namespace A221538

/-- `A221542(A056000(n)+7)` -/
def P7513070180879563308.Spec : Prop :=
  ∀ n, P7513070180879563308.a n = A221538 (n + 1)

end A221538

/-! ## A221538.P3238748109908712082

`A221542(Δ[A006416(n+2)])`
-/

namespace A221538.P3238748109908712082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (f1 (n + 1) - f1 n).toNat

end

end A221538.P3238748109908712082

namespace A221538

/-- `A221542(Δ[A006416(n+2)])` -/
def P3238748109908712082.Spec : Prop :=
  ∀ n, P3238748109908712082.a n = A221538 (n + 1)

end A221538

/-! ## A221538.P2985752950343118873

`A221542(A052905(n+1)+2)`
-/

namespace A221538.P2985752950343118873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A052905 (n + 1) + 2).toNat

end

end A221538.P2985752950343118873

namespace A221538

/-- `A221542(A052905(n+1)+2)` -/
def P2985752950343118873.Spec : Prop :=
  ∀ n, P2985752950343118873.a n = A221538 (n + 1)

end A221538

/-! ## A221538.P1982327300933655325

`A221542(A167614(n+1)+Δ[n²])`
-/

namespace A221538.P1982327300933655325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A221538.P1982327300933655325

namespace A221538

/-- `A221542(A167614(n+1)+Δ[n²])` -/
def P1982327300933655325.Spec : Prop :=
  ∀ n, P1982327300933655325.a n = A221538 (n + 1)

end A221538

/-! ## A221538.P13774715263427695383

`A221542(A020719(A055999(n)+n))`
-/

namespace A221538.P13774715263427695383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A020719 (A055999 n + (n : ℤ)).toNat).toNat

end

end A221538.P13774715263427695383

namespace A221538

/-- `A221542(A020719(A055999(n)+n))` -/
def P13774715263427695383.Spec : Prop :=
  ∀ n, P13774715263427695383.a n = A221538 (n + 1)

end A221538

/-! ## A221538.P10353576999170884540

`A221542(Δ[A208341(A167614(n+1))])`
-/

namespace A221538.P10353576999170884540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (f1 (n + 1) - f1 n).toNat

end

end A221538.P10353576999170884540

namespace A221538

/-- `A221542(Δ[A208341(A167614(n+1))])` -/
def P10353576999170884540.Spec : Prop :=
  ∀ n, P10353576999170884540.a n = A221538 (n + 1)

end A221538

/-!
# A221539: Number of 0..5 arrays of length n with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221539, the canonical program `A221539.P2978475566259887705` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221539 has offset 1).

The definition of A221539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221539.P2978475566259887705

`ogf((5x-3x^2+5x^3+3x^5)/(1-5x-3x^2-9x^4-6x^5-3x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221539

/-- `ogf((5x-3x^2+5x^3+3x^5)/(1-5x-3x^2-9x^4-6x^5-3x^6))` -/
def P2978475566259887705.Spec : Prop :=
  ∀ n, P2978475566259887705.a n = A221539 (n + 1)

theorem P2978475566259887705.correct : P2978475566259887705.Spec := by
  intro n
  simp only [A221539, Nat.add_sub_cancel]

end A221539

/-! ## A221539.P16604118568368159917

`A221542(A046691(n+3))`
-/

namespace A221539.P16604118568368159917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A046691 (n + 3)).toNat

end

end A221539.P16604118568368159917

namespace A221539

/-- `A221542(A046691(n+3))` -/
def P16604118568368159917.Spec : Prop :=
  ∀ n, P16604118568368159917.a n = A221539 (n + 1)

end A221539

/-! ## A221539.P3238462545901504746

`A221542(Δ[A023545(n+1)])`
-/

namespace A221539.P3238462545901504746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (f1 (n + 1) - f1 n).toNat

end

end A221539.P3238462545901504746

namespace A221539

/-- `A221542(Δ[A023545(n+1)])` -/
def P3238462545901504746.Spec : Prop :=
  ∀ n, P3238462545901504746.a n = A221539 (n + 1)

end A221539

/-! ## A221539.P1087331778890775658

`A221542(A027379(n+3)-1)`
-/

namespace A221539.P1087331778890775658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A027379 (n + 3) - 1).toNat

end

end A221539.P1087331778890775658

namespace A221539

/-- `A221542(A027379(n+3)-1)` -/
def P1087331778890775658.Spec : Prop :=
  ∀ n, P1087331778890775658.a n = A221539 (n + 1)

end A221539

/-! ## A221539.P15181433571677530404

`A221542(A155212(n+1)+4)`
-/

namespace A221539.P15181433571677530404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A155212 (n + 1) + 4).toNat

end

end A221539.P15181433571677530404

namespace A221539

/-- `A221542(A155212(n+1)+4)` -/
def P15181433571677530404.Spec : Prop :=
  ∀ n, P15181433571677530404.a n = A221539 (n + 1)

end A221539

/-! ## A221539.P999701980579217610

`A221542(A000217(n+5)-4)`
-/

namespace A221539.P999701980579217610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000217 (n + 5) - 4).toNat

end

end A221539.P999701980579217610

namespace A221539

/-- `A221542(A000217(n+5)-4)` -/
def P999701980579217610.Spec : Prop :=
  ∀ n, P999701980579217610.a n = A221539 (n + 1)

end A221539

/-! ## A221539.P17957818781600603524

`A221542(Δ[A006416(n+3)]-1)`
-/

namespace A221539.P17957818781600603524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (f1 (n + 1) - f1 n - 1).toNat

end

end A221539.P17957818781600603524

namespace A221539

/-- `A221542(Δ[A006416(n+3)]-1)` -/
def P17957818781600603524.Spec : Prop :=
  ∀ n, P17957818781600603524.a n = A221539 (n + 1)

end A221539

/-! ## A221539.P14826435529062450378

`A221542(A000096(A020705(n))-3)`
-/

namespace A221539.P14826435529062450378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000096 (A020705 n).toNat - 3).toNat

end

end A221539.P14826435529062450378

namespace A221539

/-- `A221542(A000096(A020705(n))-3)` -/
def P14826435529062450378.Spec : Prop :=
  ∀ n, P14826435529062450378.a n = A221539 (n + 1)

end A221539

/-! ## A221539.P8796756078859799100

`A221542(A000124(A020705(n))+n)`
-/

namespace A221539.P8796756078859799100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000124 (A020705 n).toNat + (n : ℤ)).toNat

end

end A221539.P8796756078859799100

namespace A221539

/-- `A221542(A000124(A020705(n))+n)` -/
def P8796756078859799100.Spec : Prop :=
  ∀ n, P8796756078859799100.a n = A221539 (n + 1)

end A221539

/-! ## A221539.P13047135286654389046

`A221542(A055999(n+1)+A020719(n))`
-/

namespace A221539.P13047135286654389046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A055999 (n + 1) + A020719 n).toNat

end

end A221539.P13047135286654389046

namespace A221539

/-- `A221542(A055999(n+1)+A020719(n))` -/
def P13047135286654389046.Spec : Prop :=
  ∀ n, P13047135286654389046.a n = A221539 (n + 1)

end A221539

/-!
# A221540: Number of 0..6 arrays of length n with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221540, the canonical program `A221540.P17768732314776275654` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221540 has offset 1).

The definition of A221540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221540.P17768732314776275654

`ogf((6x-10x^2+22x^3-7x^4+20x^5-12x^6+6x^7)/(1-7x+4x^2-6x^3-26x^4-10x^5-16x^6-12x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221540

/-- `ogf((6x-10x^2+22x^3-7x^4+20x^5-12x^6+6x^7)/(1-7x+4x^2-6x^3-26x^4-10x^5-16x^6-12x^8))` -/
def P17768732314776275654.Spec : Prop :=
  ∀ n, P17768732314776275654.a n = A221540 (n + 1)

theorem P17768732314776275654.correct : P17768732314776275654.Spec := by
  intro n
  simp only [A221540, Nat.add_sub_cancel]

end A221540

/-! ## A221540.P7744579659646707094

`A221542(A052905(n+3))`
-/

namespace A221540.P7744579659646707094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A052905 (n + 3)).toNat

end

end A221540.P7744579659646707094

namespace A221540

/-- `A221542(A052905(n+3))` -/
def P7744579659646707094.Spec : Prop :=
  ∀ n, P7744579659646707094.a n = A221540 (n + 1)

end A221540

/-! ## A221540.P15207403583588826081

`A221542(A055998(n+4)-2)`
-/

namespace A221540.P15207403583588826081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A055998 (n + 4) - 2).toNat

end

end A221540.P15207403583588826081

namespace A221540

/-- `A221542(A055998(n+4)-2)` -/
def P15207403583588826081.Spec : Prop :=
  ∀ n, P15207403583588826081.a n = A221540 (n + 1)

end A221540

/-! ## A221540.P14466673105048125938

`A221542(A000096(n+5)-4)`
-/

namespace A221540.P14466673105048125938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000096 (n + 5) - 4).toNat

end

end A221540.P14466673105048125938

namespace A221540

/-- `A221542(A000096(n+5)-4)` -/
def P14466673105048125938.Spec : Prop :=
  ∀ n, P14466673105048125938.a n = A221540 (n + 1)

end A221540

/-! ## A221540.P14819354019979294819

`A221542(A000124(n+6)-6)`
-/

namespace A221540.P14819354019979294819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000124 (n + 6) - 6).toNat

end

end A221540.P14819354019979294819

namespace A221540

/-- `A221542(A000124(n+6)-6)` -/
def P14819354019979294819.Spec : Prop :=
  ∀ n, P14819354019979294819.a n = A221540 (n + 1)

end A221540

/-! ## A221540.P16314613491262035645

`A221542(A167614(n+5)-8)`
-/

namespace A221540.P16314613491262035645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167614 (n + 5) - 8).toNat

end

end A221540.P16314613491262035645

namespace A221540

/-- `A221542(A167614(n+5)-8)` -/
def P16314613491262035645.Spec : Prop :=
  ∀ n, P16314613491262035645.a n = A221540 (n + 1)

end A221540

/-! ## A221540.P9943646956462840757

`A221542(Δ[A023545(n+2)]-1)`
-/

namespace A221540.P9943646956462840757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (f1 (n + 1) - f1 n - 1).toNat

end

end A221540.P9943646956462840757

namespace A221540

/-- `A221542(Δ[A023545(n+2)]-1)` -/
def P9943646956462840757.Spec : Prop :=
  ∀ n, P9943646956462840757.a n = A221540 (n + 1)

end A221540

/-! ## A221540.P5032041946819713447

`A221542(A020705(n)²-A000096(n))`
-/

namespace A221540.P5032041946819713447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A020705 n ^ 2 - A000096 n).toNat

end

end A221540.P5032041946819713447

namespace A221540

/-- `A221542(A020705(n)²-A000096(n))` -/
def P5032041946819713447.Spec : Prop :=
  ∀ n, P5032041946819713447.a n = A221540 (n + 1)

end A221540

/-! ## A221540.P4157720584962964345

`A221542(A004275(n+4)+A000217(n+4))`
-/

namespace A221540.P4157720584962964345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A004275 (n + 4) + A000217 (n + 4)).toNat

end

end A221540.P4157720584962964345

namespace A221540

/-- `A221542(A004275(n+4)+A000217(n+4))` -/
def P4157720584962964345.Spec : Prop :=
  ∀ n, P4157720584962964345.a n = A221540 (n + 1)

end A221540

/-!
# A221541: Number of 0..7 arrays of length n with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221541, the canonical program `A221541.P3227191543022596283` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221541 has offset 1).

The definition of A221541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221541.P3227191543022596283

`ogf((7x-5x^2+14x^3-3x^4+20x^5-6x^6)/(1-7x-4x^2-5x^3-20x^4-20x^5-23x^6+6x^7-3x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221541

/-- `ogf((7x-5x^2+14x^3-3x^4+20x^5-6x^6)/(1-7x-4x^2-5x^3-20x^4-20x^5-23x^6+6x^7-3x^8))` -/
def P3227191543022596283.Spec : Prop :=
  ∀ n, P3227191543022596283.a n = A221541 (n + 1)

theorem P3227191543022596283.correct : P3227191543022596283.Spec := by
  intro n
  simp only [A221541, Nat.add_sub_cancel]

end A221541

/-! ## A221541.P15943375253720749635

`A221542(A055999(n+4))`
-/

namespace A221541.P15943375253720749635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A055999 (n + 4)).toNat

end

end A221541.P15943375253720749635

namespace A221541

/-- `A221542(A055999(n+4))` -/
def P15943375253720749635.Spec : Prop :=
  ∀ n, P15943375253720749635.a n = A221541 (n + 1)

end A221541

/-! ## A221541.P16340893962777836751

`A221542(A055998(n+5)-3)`
-/

namespace A221541.P16340893962777836751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A055998 (n + 5) - 3).toNat

end

end A221541.P16340893962777836751

namespace A221541

/-- `A221542(A055998(n+5)-3)` -/
def P16340893962777836751.Spec : Prop :=
  ∀ n, P16340893962777836751.a n = A221541 (n + 1)

end A221541

/-! ## A221541.P968872581061896539

`A221542(A000124(n+7)-7)`
-/

namespace A221541.P968872581061896539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000124 (n + 7) - 7).toNat

end

end A221541.P968872581061896539

namespace A221541

/-- `A221542(A000124(n+7)-7)` -/
def P968872581061896539.Spec : Prop :=
  ∀ n, P968872581061896539.a n = A221541 (n + 1)

end A221541

/-! ## A221541.P4552229183186319100

`A221542(A000217(n+6)+n+1)`
-/

namespace A221541.P4552229183186319100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000217 (n + 6) + (n : ℤ) + 1).toNat

end

end A221541.P4552229183186319100

namespace A221541

/-- `A221542(A000217(n+6)+n+1)` -/
def P4552229183186319100.Spec : Prop :=
  ∀ n, P4552229183186319100.a n = A221541 (n + 1)

end A221541

/-! ## A221541.P6955870265888191751

`A221542(A166136(n+4)+2*n+1)`
-/

namespace A221541.P6955870265888191751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A221541.P6955870265888191751

namespace A221541

/-- `A221542(A166136(n+4)+2*n+1)` -/
def P6955870265888191751.Spec : Prop :=
  ∀ n, P6955870265888191751.a n = A221541 (n + 1)

end A221541

/-! ## A221541.P5324527589826639491

`A221542(A020739(n)+A000124(n+5))`
-/

namespace A221541.P5324527589826639491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A020739 n + A000124 (n + 5)).toNat

end

end A221541.P5324527589826639491

namespace A221541

/-- `A221542(A020739(n)+A000124(n+5))` -/
def P5324527589826639491.Spec : Prop :=
  ∀ n, P5324527589826639491.a n = A221541 (n + 1)

end A221541

/-!
# A221542: T(n,k) = Number of 0..k arrays of length n with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221542, there is no canonical definition to state claims against.
-/

/-! ## A221542.P3156788080037991683

`A208337(A187829(n+1))-A208342(n+1)`
-/

namespace A221542.P3156788080037991683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (A187829 (n + 1)).toNat - A208342 (n + 1)

end

end A221542.P3156788080037991683

/-!
# A221543: Number of 0..n arrays of length 5 with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221543, the canonical program `A221543.P2453091725569808314` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221543 has offset 1).

The definition of A221543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221543.P2453091725569808314

`ogf((3+7x+23x^2-22x^3+26x^4-18x^5+6x^6-x^7)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221543

/-- `ogf((3+7x+23x^2-22x^3+26x^4-18x^5+6x^6-x^7)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2453091725569808314.Spec : Prop :=
  ∀ n, P2453091725569808314.a n = A221543 (n + 1)

theorem P2453091725569808314.correct : P2453091725569808314.Spec := by
  intro n
  simp only [A221543, Nat.add_sub_cancel]

end A221543

/-! ## A221543.P5032540229914773694

`A221542(A167499(n+3))`
-/

namespace A221543.P5032540229914773694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (n + 3)).toNat

end

end A221543.P5032540229914773694

namespace A221543

/-- `A221542(A167499(n+3))` -/
def P5032540229914773694.Spec : Prop :=
  ∀ n, P5032540229914773694.a n = A221543 (n + 1)

end A221543

/-! ## A221543.P1318359390332088207

`A221542(A056000(n)+15)`
-/

namespace A221543.P1318359390332088207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A056000 n + 15).toNat

end

end A221543.P1318359390332088207

namespace A221543

/-- `A221542(A056000(n)+15)` -/
def P1318359390332088207.Spec : Prop :=
  ∀ n, P1318359390332088207.a n = A221543 (n + 1)

end A221543

/-! ## A221543.P10612356065833200836

`record[A221542(A167499(A008611(n)))]`
-/

namespace A221543.P10612356065833200836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221543.P10612356065833200836

namespace A221543

/-- `record[A221542(A167499(A008611(n)))]` -/
def P10612356065833200836.Spec : Prop :=
  ∀ n, P10612356065833200836.a n = A221543 (n + 1)

end A221543

/-! ## A221543.P8656699951824718050

`record[A221542(A167499(A008612(n)))]`
-/

namespace A221543.P8656699951824718050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221543.P8656699951824718050

namespace A221543

/-- `record[A221542(A167499(A008612(n)))]` -/
def P8656699951824718050.Spec : Prop :=
  ∀ n, P8656699951824718050.a n = A221543 (n + 1)

end A221543

/-! ## A221543.P5352710768963848980

`record[A221542(A167499(A008619(n)))]`
-/

namespace A221543.P5352710768963848980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221543.P5352710768963848980

namespace A221543

/-- `record[A221542(A167499(A008619(n)))]` -/
def P5352710768963848980.Spec : Prop :=
  ∀ n, P5352710768963848980.a n = A221543 (n + 1)

end A221543

/-! ## A221543.P2936429825294649809

`record[A221542(A167499(A008620(n)))]`
-/

namespace A221543.P2936429825294649809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221543.P2936429825294649809

namespace A221543

/-- `record[A221542(A167499(A008620(n)))]` -/
def P2936429825294649809.Spec : Prop :=
  ∀ n, P2936429825294649809.a n = A221543 (n + 1)

end A221543

/-! ## A221543.P13397981728760707013

`record[A221542(A167499(A008621(n)))]`
-/

namespace A221543.P13397981728760707013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221543.P13397981728760707013

namespace A221543

/-- `record[A221542(A167499(A008621(n)))]` -/
def P13397981728760707013.Spec : Prop :=
  ∀ n, P13397981728760707013.a n = A221543 (n + 1)

end A221543

/-! ## A221543.P17843997005583966986

`record[A221542(A167499(A008647(n)))]`
-/

namespace A221543.P17843997005583966986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (A008647 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221543.P17843997005583966986

namespace A221543

/-- `record[A221542(A167499(A008647(n)))]` -/
def P17843997005583966986.Spec : Prop :=
  ∀ n, P17843997005583966986.a n = A221543 (n + 1)

end A221543

/-! ## A221543.P3139097701483972642

`record[A221542(A167499(A028242(n)))]`
-/

namespace A221543.P3139097701483972642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221543.P3139097701483972642

namespace A221543

/-- `record[A221542(A167499(A028242(n)))]` -/
def P3139097701483972642.Spec : Prop :=
  ∀ n, P3139097701483972642.a n = A221543 (n + 1)

end A221543

/-!
# A221544: Number of 0..n arrays of length 6 with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221544, there is no canonical definition to state claims against.
-/

/-! ## A221544.P11027114347472711705

`A221542(A166136(n+4))`
-/

namespace A221544.P11027114347472711705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A166136 (n + 4)).toNat

end

end A221544.P11027114347472711705

/-! ## A221544.P14384095501617923123

`A221542(A056115(n)+21)`
-/

namespace A221544.P14384095501617923123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A056115 n + 21).toNat

end

end A221544.P14384095501617923123

/-! ## A221544.P15645467223259212324

`A221542(A167499(n+4)+1)`
-/

namespace A221544.P15645467223259212324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (n + 4) + 1).toNat

end

end A221544.P15645467223259212324

/-! ## A221544.P3755117272532887455

`A221542(A000217(n+5)+6)`
-/

namespace A221544.P3755117272532887455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000217 (n + 5) + 6).toNat

end

end A221544.P3755117272532887455

/-! ## A221544.P2203906604568184669

`A221542(A167614(n+5)-(n+3))`
-/

namespace A221544.P2203906604568184669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A221544.P2203906604568184669

/-! ## A221544.P2085537914065877871

`A221542(A002620(n+2)+A002620(n+9))`
-/

namespace A221544.P2085537914065877871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A221544.P2085537914065877871

/-!
# A221545: Number of 0..n arrays of length 7 with each element differing from at least one neighbor by something other than 1, starting with 0.

The programs for A221545, there is no canonical definition to state claims against.
-/

/-! ## A221545.P18016998611516662953

`A221542(A167499(n+5)+2)`
-/

namespace A221545.P18016998611516662953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167499 (n + 5) + 2).toNat

end

end A221545.P18016998611516662953

/-! ## A221545.P10500216260055521131

`A221542(A167614(n+5)+4)`
-/

namespace A221545.P10500216260055521131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A167614 (n + 5) + 4).toNat

end

end A221545.P10500216260055521131

/-! ## A221545.P3826298522176971116

`A221542(A000217(n+6)+7)`
-/

namespace A221545.P3826298522176971116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000217 (n + 6) + 7).toNat

end

end A221545.P3826298522176971116

/-! ## A221545.P1100189100450839446

`record[A221542(A055998(n+1)+10)]`
-/

namespace A221545.P1100189100450839446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A055998 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221545.P1100189100450839446

/-! ## A221545.P5621038808460426197

`A221542(A000124(n+7)-(n+1))`
-/

namespace A221545.P5621038808460426197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A221545.P5621038808460426197

/-! ## A221545.P3957282886380979768

`A221542(A155212(n+5)-A008585(n+3))`
-/

namespace A221545.P3957282886380979768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221542 (A155212 (n + 5) - A008585 (n + 3)).toNat

end

end A221545.P3957282886380979768

/-!
# A221546: G.f.: Sum_{n>=0} x^n * (1+x)^(n^2) / (1 + x*(1+x)^n)^n.

The programs for A221546, there is no canonical definition to state claims against.
-/

/-! ## A221546.P487425389810915385

`A005041(∏[A072706(n)])`
-/

namespace A221546.P487425389810915385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221546.P487425389810915385

/-! ## A221546.P5932199481536927143

`A005041(∏[A349054(n)])`
-/

namespace A221546.P5932199481536927143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221546.P5932199481536927143

/-! ## A221546.P9701316136607083725

`A008618(A150075(n)+8)`
-/

namespace A221546.P9701316136607083725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A150075 n + 8).toNat

end

end A221546.P9701316136607083725

/-! ## A221546.P3032034142922182531

`A023190(or(1, A005034(n)))`
-/

namespace A221546.P3032034142922182531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (Int.lor 1 (A005034 n)).toNat

end

end A221546.P3032034142922182531

/-!
# A221547: G.f.: Sum_{n>=0} x^n * (1+x)^(n*(n+1)/2) / Product_{k=1..n} (1 + x*(1+x)^k).

The programs for A221547, there is no canonical definition to state claims against.
-/

/-! ## A221547.P18061627665815953178

`A302496(A036650(n))`
-/

namespace A221547.P18061627665815953178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (A036650 n).toNat

end

end A221547.P18061627665815953178

/-! ## A221547.P2900929450764079467

`A055086(∏[A094909(n)])`
-/

namespace A221547.P2900929450764079467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221547.P2900929450764079467

/-! ## A221547.P6400907815910408249

`A280172(∏[A300951(n)])`
-/

namespace A221547.P6400907815910408249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221547.P6400907815910408249

/-! ## A221547.P5453194720371625056

`A332109(A219753(n)+1)`
-/

namespace A221547.P5453194720371625056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332109 (A219753 n + 1).toNat

end

end A221547.P5453194720371625056

/-! ## A221547.P7047604009563160565

`∑[A025153(∑[A087051(n)])]`
-/

namespace A221547.P7047604009563160565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221547.P7047604009563160565

/-!
# A221548: Number of n X 2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221548, there is no canonical definition to state claims against.
-/

/-! ## A221548.P10644433586839527247

`A221551(∑[n+2])`
-/

namespace A221548.P10644433586839527247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221548.P10644433586839527247

/-! ## A221548.P7013101087919752140

`record[A221551(Δ[A003453(n+5)])]`
-/

namespace A221548.P7013101087919752140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221548.P7013101087919752140

/-! ## A221548.P10011545556726215365

`record[gcd(A105422(n), A221551(n+1))]`
-/

namespace A221548.P10011545556726215365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 n) (A221551 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221548.P10011545556726215365

/-!
# A221549: Number of n X 3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221549, there is no canonical definition to state claims against.
-/

/-! ## A221549.P3630645161762959132

`A221551(∑[n+3]+1)`
-/

namespace A221549.P3630645161762959132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221549.P3630645161762959132

/-! ## A221549.P11318041303562543371

`A007318(A000217(n))*A221551(A034856(n+2))`
-/

namespace A221549.P11318041303562543371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A221551 (A034856 (n + 2)).toNat

end

end A221549.P11318041303562543371

/-!
# A221550: Number of nX4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221550, there is no canonical definition to state claims against.
-/

/-! ## A221550.P18158814082031956696

`A221551(∑[n+4]+3)`
-/

namespace A221550.P18158814082031956696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221550.P18158814082031956696

/-!
# A221552: Number of 2Xn arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221552, there is no canonical definition to state claims against.
-/

/-! ## A221552.P2094268211041279376

`A221551(∑[n+1]+2)`
-/

namespace A221552.P2094268211041279376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221552.P2094268211041279376

/-! ## A221552.P2471168404974303893

`record[gcd(A221551(n+1), A259776(n))]`
-/

namespace A221552.P2471168404974303893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221551 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221552.P2471168404974303893

/-! ## A221552.P7161017330625698582

`record[gcd(A221551(n+2), A333706(n))]`
-/

namespace A221552.P7161017330625698582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221551 (n + 2)) (A333706 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221552.P7161017330625698582

/-!
# A221553: Number of 3Xn arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221553, there is no canonical definition to state claims against.
-/

/-! ## A221553.P16940833920375357897

`A221551(∑[n+2]+4)`
-/

namespace A221553.P16940833920375357897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221553.P16940833920375357897

/-! ## A221553.P5759873847732109910

`lcm(n-abs(1-n), A221551(A167614(n+1)))`
-/

namespace A221553.P5759873847732109910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - |1 - (n : ℤ)|) (A221551 (A167614 (n + 1)).toNat)

end

end A221553.P5759873847732109910

/-! ## A221553.P1930208601300426996

`A221551(A167614(n+1))+A031346(n)`
-/

namespace A221553.P1930208601300426996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (A167614 (n + 1)).toNat + A031346 n

end

end A221553.P1930208601300426996

/-! ## A221553.P16636719555215738960

`A221551(A167614(n+1))+A033909(n)`
-/

namespace A221553.P16636719555215738960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (A167614 (n + 1)).toNat + A033909 n

end

end A221553.P16636719555215738960

/-!
# A221554: Number of 4Xn arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221554, there is no canonical definition to state claims against.
-/

/-! ## A221554.P10579799315226634709

`A221551(∑[n+3]+7)`
-/

namespace A221554.P10579799315226634709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221551 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221554.P10579799315226634709

/-!
# A221559: Consecutive values produced by the C++ ranlux24_base random number generator with the default seed (19780503).

The programs for A221559, there is no canonical definition to state claims against.
-/

/-! ## A221559.P11316536171875223512

`A221561(∑[∑[A151620(n)]])`
-/

namespace A221559.P11316536171875223512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221559.P11316536171875223512

/-! ## A221559.P10098081056552673576

`A151620(n)!*A221561(n+1)`
-/

namespace A221559.P10098081056552673576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151620 n).toNat : ℤ) * A221561 (n + 1)

end

end A221559.P10098081056552673576

/-! ## A221559.P7349913601609249128

`A221561(n+1)%A219784(n+1)`
-/

namespace A221559.P7349913601609249128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221561 (n + 1)) (A219784 (n + 1))

end

end A221559.P7349913601609249128

/-! ## A221559.P11193033779582190450

`A221561(n+1)^A316480(n+1)!`
-/

namespace A221559.P11193033779582190450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221561 (n + 1) ^ Nat.factorial (A316480 (n + 1)).toNat

end

end A221559.P11193033779582190450

/-! ## A221559.P18371069102673760211

`A010052(A118185(n))*A221561(n+1)`
-/

namespace A221559.P18371069102673760211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A118185 n).toNat * A221561 (n + 1)

end

end A221559.P18371069102673760211

/-!
# A221560: Consecutive values produced by the C++ ranlux48_base random number generator with the default seed (19780503).

The programs for A221560, there is no canonical definition to state claims against.
-/

/-! ## A221560.P14235215801993787382

`A221562(∑[A053501(n)])`
-/

namespace A221560.P14235215801993787382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221562 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221560.P14235215801993787382

/-! ## A221560.P14375718725456090958

`A221562(A185095(∑[n]))`
-/

namespace A221560.P14375718725456090958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221562 (A185095 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A221560.P14375718725456090958

/-! ## A221560.P2321573599174638886

`A221562(A062399(n)+1)`
-/

namespace A221560.P2321573599174638886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221562 (A062399 n + 1).toNat

end

end A221560.P2321573599174638886

/-! ## A221560.P3311899414808136845

`A221562(A077741(n+1))`
-/

namespace A221560.P3311899414808136845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221562 (A077741 (n + 1)).toNat

end

end A221560.P3311899414808136845

/-! ## A221560.P17827995953789315288

`A221562(A120126(n)+1)`
-/

namespace A221560.P17827995953789315288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221562 (A120126 n + 1).toNat

end

end A221560.P17827995953789315288

/-!
# A221564: The number of FO4C3 moves required to restore a packet of n playing cards to its original state (order and orientation), where each move Flips Over the top four (4) as a unit and then Cuts three (3) cards from the top to bottom.

The programs for A221564, the canonical program `A221564.P11736087964345762649` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221564 has offset 4).

The definition of A221564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221564.P5490450532114932115

`ogf((2+4x+4x^2-2x^3)/(1-3x^3+3x^6-x^9))`
-/

namespace A221564.P5490450532114932115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 4, -2] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] n

end

end A221564.P5490450532114932115

namespace A221564

/-- `ogf((2+4x+4x^2-2x^3)/(1-3x^3+3x^6-x^9))` -/
def P5490450532114932115.Spec : Prop :=
  ∀ n, P5490450532114932115.a n = A221564 (n + 4)

end A221564

/-! ## A221564.P11736087964345762649

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=2, a(1)=4, a(2)=4, a(3)=4, a(4)=12, a(5)=12, a(6)=6, a(7)=24, a(8)=24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221564

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P11736087964345762649.Spec : Prop :=
  ∀ n, P11736087964345762649.a n = A221564 (n + 4)

theorem P11736087964345762649.correct : P11736087964345762649.Spec := by
  intro n
  simp only [A221564, Nat.add_sub_cancel]

end A221564

/-! ## A221564.P13070949764744779749

`A225232(A004396(n)+3)`
-/

namespace A221564.P13070949764744779749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225232 (A004396 n + 3).toNat

end

end A221564.P13070949764744779749

namespace A221564

/-- `A225232(A004396(n)+3)` -/
def P13070949764744779749.Spec : Prop :=
  ∀ n, P13070949764744779749.a n = A221564 (n + 4)

end A221564

/-! ## A221564.P8441967334242529015

`A225232(A066481(n+3)+1)`
-/

namespace A221564.P8441967334242529015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225232 (A066481 (n + 3) + 1).toNat

end

end A221564.P8441967334242529015

namespace A221564

/-- `A225232(A066481(n+3)+1)` -/
def P8441967334242529015.Spec : Prop :=
  ∀ n, P8441967334242529015.a n = A221564 (n + 4)

end A221564

/-! ## A221564.P12490726842263662306

`2*A129889(A004396(n)+2)`
-/

namespace A221564.P12490726842263662306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129889 (A004396 n + 2).toNat

end

end A221564.P12490726842263662306

namespace A221564

/-- `2*A129889(A004396(n)+2)` -/
def P12490726842263662306.Spec : Prop :=
  ∀ n, P12490726842263662306.a n = A221564 (n + 4)

end A221564

/-! ## A221564.P18380456335404797124

`2*(A008620(n)+A087508(n)²)`
-/

namespace A221564.P18380456335404797124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008620 n + A087508 n ^ 2)

end

end A221564.P18380456335404797124

namespace A221564

/-- `2*(A008620(n)+A087508(n)²)` -/
def P18380456335404797124.Spec : Prop :=
  ∀ n, P18380456335404797124.a n = A221564 (n + 4)

end A221564

/-! ## A221564.P11445315284213230089

`2*(A008620(n)+A128615(n)²)`
-/

namespace A221564.P11445315284213230089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008620 n + A128615 n ^ 2)

end

end A221564.P11445315284213230089

namespace A221564

/-- `2*(A008620(n)+A128615(n)²)` -/
def P11445315284213230089.Spec : Prop :=
  ∀ n, P11445315284213230089.a n = A221564 (n + 4)

end A221564

/-! ## A221564.P13460193147222447375

`lcm(A302402(n)+2, A302402(n+1))`
-/

namespace A221564.P13460193147222447375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A302402 n + 2) (A302402 (n + 1))

end

end A221564.P13460193147222447375

namespace A221564

/-- `lcm(A302402(n)+2, A302402(n+1))` -/
def P13460193147222447375.Spec : Prop :=
  ∀ n, (P13460193147222447375.a n : ℤ) = A221564 (n + 4)

end A221564

/-! ## A221564.P5854173764880738018

`lcm(A018838(n+1), A018838(n+3))`
-/

namespace A221564.P5854173764880738018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018838 (n + 1)) (A018838 (n + 3))

end

end A221564.P5854173764880738018

namespace A221564

/-- `lcm(A018838(n+1), A018838(n+3))` -/
def P5854173764880738018.Spec : Prop :=
  ∀ n, (P5854173764880738018.a n : ℤ) = A221564 (n + 4)

end A221564

/-! ## A221564.P13311143244091756964

`A004277(lcm(ceil((n+1)/3), A086161(n+1)))`
-/

namespace A221564.P13311143244091756964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lcm ⌈(n + 1 : ℚ) / 3⌉ (A086161 (n + 1)))

end

end A221564.P13311143244091756964

namespace A221564

/-- `A004277(lcm(ceil((n+1)/3), A086161(n+1)))` -/
def P13311143244091756964.Spec : Prop :=
  ∀ n, P13311143244091756964.a n = A221564 (n + 4)

end A221564

/-! ## A221564.P10705212497526465452

`A005843(A129889(A004396(n)+2))`
-/

namespace A221564.P10705212497526465452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A129889 (A004396 n + 2).toNat).toNat

end

end A221564.P10705212497526465452

namespace A221564

/-- `A005843(A129889(A004396(n)+2))` -/
def P10705212497526465452.Spec : Prop :=
  ∀ n, P10705212497526465452.a n = A221564 (n + 4)

end A221564

/-! ## A221564.P11143686297648928617

`2*A003990(A251599(n+1))`
-/

namespace A221564.P11143686297648928617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003990 (A251599 (n + 1)).toNat

end

end A221564.P11143686297648928617

namespace A221564

/-- `2*A003990(A251599(n+1))` -/
def P11143686297648928617.Spec : Prop :=
  ∀ n, P11143686297648928617.a n = A221564 (n + 4)

end A221564

/-!
# A221565: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A220512.

The programs for A221565, there is no canonical definition to state claims against.
-/

/-! ## A221565.P2864729385180647207

`4*A225355(n)`
-/

namespace A221565.P2864729385180647207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A225355 n

end

end A221565.P2864729385180647207

/-! ## A221565.P11245242072946373758

`A008586(A225355(n))`
-/

namespace A221565.P11245242072946373758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A225355 n).toNat

end

end A221565.P11245242072946373758

/-! ## A221565.P2904383504397493061

`Δ[A220512(A001222(ceil(2^(n-1))))]`
-/

namespace A221565.P2904383504397493061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220512 (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221565.P2904383504397493061

/-!
# A221567: Number of 0..2 arrays of length n with each element differing from at least one neighbor by something other than 1.

The programs for A221567, the canonical program `A221567.P7930868768107134214` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221567 has offset 1).

The definition of A221567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221567.P8190623953838662287

`ogf((5x-6x^2+8x^3)/(1-3x+2x^2-4x^4))`
-/

namespace A221567.P8190623953838662287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -6, 8] [1, -3, 2, 0, -4] n

end

end A221567.P8190623953838662287

namespace A221567

/-- `ogf((5x-6x^2+8x^3)/(1-3x+2x^2-4x^4))` -/
def P8190623953838662287.Spec : Prop :=
  ∀ n, P8190623953838662287.a n = A221567 (n + 1)

end A221567

/-! ## A221567.P7930868768107134214

`3*a(n-1)-2*a(n-2)+4*a(n-4)` with `a(0)=0, a(1)=5, a(2)=9, a(3)=25`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221567

/-- `3*a(n-1)-2*a(n-2)+4*a(n-4)` -/
def P7930868768107134214.Spec : Prop :=
  ∀ n, P7930868768107134214.a n = A221567 (n + 1)

theorem P7930868768107134214.correct : P7930868768107134214.Spec := by
  intro n
  simp only [A221567, Nat.add_sub_cancel]

end A221567

/-! ## A221567.P13885378894413767684

`A221573(∑[n+2])`
-/

namespace A221567.P13885378894413767684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221567.P13885378894413767684

namespace A221567

/-- `A221573(∑[n+2])` -/
def P13885378894413767684.Spec : Prop :=
  ∀ n, P13885378894413767684.a n = A221567 (n + 1)

end A221567

/-! ## A221567.P3091300213238330289

`record[A221573(A000096(A286378(n)))]`
-/

namespace A221567.P3091300213238330289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000096 (A286378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221567.P3091300213238330289

namespace A221567

/-- `record[A221573(A000096(A286378(n)))]` -/
def P3091300213238330289.Spec : Prop :=
  ∀ n, P3091300213238330289.a n = A221567 (n + 1)

end A221567

/-! ## A221567.P11503588617605035981

`record[A221573(A000096(A004737(n+1)))]`
-/

namespace A221567.P11503588617605035981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000096 (A004737 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221567.P11503588617605035981

namespace A221567

/-- `record[A221573(A000096(A004737(n+1)))]` -/
def P11503588617605035981.Spec : Prop :=
  ∀ n, P11503588617605035981.a n = A221567 (n + 1)

end A221567

/-! ## A221567.P5113071241937605147

`record[A221573(A000096(A026238(n+2)))]`
-/

namespace A221567.P5113071241937605147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000096 (A026238 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221567.P5113071241937605147

namespace A221567

/-- `record[A221573(A000096(A026238(n+2)))]` -/
def P5113071241937605147.Spec : Prop :=
  ∀ n, P5113071241937605147.a n = A221567 (n + 1)

end A221567

/-! ## A221567.P15539944168294966212

`A221573(A000096(n+1))%A021144(n)`
-/

namespace A221567.P15539944168294966212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221573 (A000096 (n + 1)).toNat) (A021144 n)

end

end A221567.P15539944168294966212

namespace A221567

/-- `A221573(A000096(n+1))%A021144(n)` -/
def P15539944168294966212.Spec : Prop :=
  ∀ n, P15539944168294966212.a n = A221567 (n + 1)

end A221567

/-! ## A221567.P12513438822669387809

`A221573(A000096(n+1))+A000007(n+1)`
-/

namespace A221567.P12513438822669387809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A221567.P12513438822669387809

namespace A221567

/-- `A221573(A000096(n+1))+A000007(n+1)` -/
def P12513438822669387809.Spec : Prop :=
  ∀ n, P12513438822669387809.a n = A221567 (n + 1)

end A221567

/-!
# A221568: Number of 0..3 arrays of length n with each element differing from at least one neighbor by something other than 1.

The programs for A221568, the canonical program `A221568.P15617334101591345237` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221568 has offset 1).

The definition of A221568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221568.P7195755265587825888

`ogf((10x-4x^2+2x^3)/(1-3x-2x^2+x^3-x^4))`
-/

namespace A221568.P7195755265587825888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -4, 2] [1, -3, -2, 1, -1] n

end

end A221568.P7195755265587825888

namespace A221568

/-- `ogf((10x-4x^2+2x^3)/(1-3x-2x^2+x^3-x^4))` -/
def P7195755265587825888.Spec : Prop :=
  ∀ n, P7195755265587825888.a n = A221568 (n + 1)

end A221568

/-! ## A221568.P15617334101591345237

`3*a(n-1)+2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=10, a(2)=26, a(3)=100`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221568

/-- `3*a(n-1)+2*a(n-2)-a(n-3)+a(n-4)` -/
def P15617334101591345237.Spec : Prop :=
  ∀ n, P15617334101591345237.a n = A221568 (n + 1)

theorem P15617334101591345237.correct : P15617334101591345237.Spec := by
  intro n
  simp only [A221568, Nat.add_sub_cancel]

end A221568

/-! ## A221568.P13427897952141280106

`A221573(∑[n+3]+1)`
-/

namespace A221568.P13427897952141280106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221568.P13427897952141280106

namespace A221568

/-- `A221573(∑[n+3]+1)` -/
def P13427897952141280106.Spec : Prop :=
  ∀ n, P13427897952141280106.a n = A221568 (n + 1)

end A221568

/-! ## A221568.P16962561440667114842

`A221596(∑[n+3]+1)`
-/

namespace A221568.P16962561440667114842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221568.P16962561440667114842

namespace A221568

/-- `A221596(∑[n+3]+1)` -/
def P16962561440667114842.Spec : Prop :=
  ∀ n, P16962561440667114842.a n = A221568 (n + 1)

end A221568

/-! ## A221568.P17982865490010536692

`lcm(2, A221573(A055999(n)+4))`
-/

namespace A221568.P17982865490010536692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221573 (A055999 n + 4).toNat)

end

end A221568.P17982865490010536692

namespace A221568

/-- `lcm(2, A221573(A055999(n)+4))` -/
def P17982865490010536692.Spec : Prop :=
  ∀ n, (P17982865490010536692.a n : ℤ) = A221568 (n + 1)

end A221568

/-! ## A221568.P6152407969103803545

`A221573(A055999(n)+4)%A028060(n)`
-/

namespace A221568.P6152407969103803545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221573 (A055999 n + 4).toNat) (A028060 n)

end

end A221568.P6152407969103803545

namespace A221568

/-- `A221573(A055999(n)+4)%A028060(n)` -/
def P6152407969103803545.Spec : Prop :=
  ∀ n, P6152407969103803545.a n = A221568 (n + 1)

end A221568

/-! ## A221568.P3071751073522656955

`A057077(n)²*A221573(A055999(n)+4)`
-/

namespace A221568.P3071751073522656955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A221573 (A055999 n + 4).toNat

end

end A221568.P3071751073522656955

namespace A221568

/-- `A057077(n)²*A221573(A055999(n)+4)` -/
def P3071751073522656955.Spec : Prop :=
  ∀ n, P3071751073522656955.a n = A221568 (n + 1)

end A221568

/-! ## A221568.P10170244561592512067

`A001511(2*n+1)*A221573(A055999(n)+4)`
-/

namespace A221568.P10170244561592512067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A221573 (A055999 n + 4).toNat

end

end A221568.P10170244561592512067

namespace A221568

/-- `A001511(2*n+1)*A221573(A055999(n)+4)` -/
def P10170244561592512067.Spec : Prop :=
  ∀ n, P10170244561592512067.a n = A221568 (n + 1)

end A221568

/-! ## A221568.P3339252292838679785

`A051903(A086715(n+2))*A221573(A055999(n)+4)`
-/

namespace A221568.P3339252292838679785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A086715 (n + 2)).toNat * A221573 (A055999 n + 4).toNat

end

end A221568.P3339252292838679785

namespace A221568

/-- `A051903(A086715(n+2))*A221573(A055999(n)+4)` -/
def P3339252292838679785.Spec : Prop :=
  ∀ n, P3339252292838679785.a n = A221568 (n + 1)

end A221568

/-!
# A221569: Number of 0..4 arrays of length n with each element differing from at least one neighbor by something other than 1.

The programs for A221569, the canonical program `A221569.P16116164219789524626` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221569 has offset 1).

The definition of A221569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221569.P16116164219789524626

`ogf((17x-26x^2+45x^3+8x^4+x^5)/(1-5x+3x^2-x^3-15x^4-3x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221569

/-- `ogf((17x-26x^2+45x^3+8x^4+x^5)/(1-5x+3x^2-x^3-15x^4-3x^5))` -/
def P16116164219789524626.Spec : Prop :=
  ∀ n, P16116164219789524626.a n = A221569 (n + 1)

theorem P16116164219789524626.correct : P16116164219789524626.Spec := by
  intro n
  simp only [A221569, Nat.add_sub_cancel]

end A221569

/-! ## A221569.P3442964673816526333

`A221573(A027379(n+2))`
-/

namespace A221569.P3442964673816526333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A027379 (n + 2)).toNat

end

end A221569.P3442964673816526333

namespace A221569

/-- `A221573(A027379(n+2))` -/
def P3442964673816526333.Spec : Prop :=
  ∀ n, P3442964673816526333.a n = A221569 (n + 1)

end A221569

/-! ## A221569.P14463248721368761132

`A221573(A055998(n+2))`
-/

namespace A221569.P14463248721368761132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A055998 (n + 2)).toNat

end

end A221569.P14463248721368761132

namespace A221569

/-- `A221573(A055998(n+2))` -/
def P14463248721368761132.Spec : Prop :=
  ∀ n, P14463248721368761132.a n = A221569 (n + 1)

end A221569

/-! ## A221569.P632595811806337101

`A221573(A155212(n)+5)`
-/

namespace A221569.P632595811806337101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A155212 n + 5).toNat

end

end A221569.P632595811806337101

namespace A221569

/-- `A221573(A155212(n)+5)` -/
def P632595811806337101.Spec : Prop :=
  ∀ n, P632595811806337101.a n = A221569 (n + 1)

end A221569

/-! ## A221569.P1498232458264315885

`A221573(A056000(n)+7)`
-/

namespace A221569.P1498232458264315885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A056000 n + 7).toNat

end

end A221569.P1498232458264315885

namespace A221569

/-- `A221573(A056000(n)+7)` -/
def P1498232458264315885.Spec : Prop :=
  ∀ n, P1498232458264315885.a n = A221569 (n + 1)

end A221569

/-! ## A221569.P17935157757001606272

`A221573(A052905(n+1)+2)`
-/

namespace A221569.P17935157757001606272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A052905 (n + 1) + 2).toNat

end

end A221569.P17935157757001606272

namespace A221569

/-- `A221573(A052905(n+1)+2)` -/
def P17935157757001606272.Spec : Prop :=
  ∀ n, P17935157757001606272.a n = A221569 (n + 1)

end A221569

/-! ## A221569.P14107888657121707510

`A221573(A000096(n+3)-2)`
-/

namespace A221569.P14107888657121707510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000096 (n + 3) - 2).toNat

end

end A221569.P14107888657121707510

namespace A221569

/-- `A221573(A000096(n+3)-2)` -/
def P14107888657121707510.Spec : Prop :=
  ∀ n, P14107888657121707510.a n = A221569 (n + 1)

end A221569

/-! ## A221569.P16076160875654638097

`A221573(A167614(n+1)+2*n+1)`
-/

namespace A221569.P16076160875654638097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A221569.P16076160875654638097

namespace A221569

/-- `A221573(A167614(n+1)+2*n+1)` -/
def P16076160875654638097.Spec : Prop :=
  ∀ n, P16076160875654638097.a n = A221569 (n + 1)

end A221569

/-! ## A221569.P1039890655225793550

`A221573(A167499(n)+A016777(n))`
-/

namespace A221569.P1039890655225793550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A167499 n + A016777 n).toNat

end

end A221569.P1039890655225793550

namespace A221569

/-- `A221573(A167499(n)+A016777(n))` -/
def P1039890655225793550.Spec : Prop :=
  ∀ n, P1039890655225793550.a n = A221569 (n + 1)

end A221569

/-! ## A221569.P9243844851262391778

`A221573(A230698(Δ[A023545(n+1)]))`
-/

namespace A221569.P9243844851262391778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A230698 (f1 (n + 1) - f1 n).toNat).toNat

end

end A221569.P9243844851262391778

namespace A221569

/-- `A221573(A230698(Δ[A023545(n+1)]))` -/
def P9243844851262391778.Spec : Prop :=
  ∀ n, P9243844851262391778.a n = A221569 (n + 1)

end A221569

/-!
# A221570: Number of 0..5 arrays of length n with each element differing from at least one neighbor by something other than 1.

The programs for A221570, the canonical program `A221570.P14110520837550311035` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221570 has offset 1).

The definition of A221570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221570.P14110520837550311035

`ogf((26x-16x^2+28x^3+12x^4+12x^5)/(1-5x-3x^2-9x^4-6x^5-3x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221570

/-- `ogf((26x-16x^2+28x^3+12x^4+12x^5)/(1-5x-3x^2-9x^4-6x^5-3x^6))` -/
def P14110520837550311035.Spec : Prop :=
  ∀ n, P14110520837550311035.a n = A221570 (n + 1)

theorem P14110520837550311035.correct : P14110520837550311035.Spec := by
  intro n
  simp only [A221570, Nat.add_sub_cancel]

end A221570

/-! ## A221570.P14732646133866616307

`A221573(Δ[A264443(n)])`
-/

namespace A221570.P14732646133866616307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (f1 (n + 1) - f1 n).toNat

end

end A221570.P14732646133866616307

namespace A221570

/-- `A221573(Δ[A264443(n)])` -/
def P14732646133866616307.Spec : Prop :=
  ∀ n, P14732646133866616307.a n = A221570 (n + 1)

end A221570

/-! ## A221570.P5258003440868290381

`A221573(A046691(n+3))`
-/

namespace A221570.P5258003440868290381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A046691 (n + 3)).toNat

end

end A221570.P5258003440868290381

namespace A221570

/-- `A221573(A046691(n+3))` -/
def P5258003440868290381.Spec : Prop :=
  ∀ n, P5258003440868290381.a n = A221570 (n + 1)

end A221570

/-! ## A221570.P4959222995371246080

`A221573(Δ[A023545(n+1)])`
-/

namespace A221570.P4959222995371246080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (f1 (n + 1) - f1 n).toNat

end

end A221570.P4959222995371246080

namespace A221570

/-- `A221573(Δ[A023545(n+1)])` -/
def P4959222995371246080.Spec : Prop :=
  ∀ n, P4959222995371246080.a n = A221570 (n + 1)

end A221570

/-! ## A221570.P3765495535052002389

`A221573(A052905(n+2)+1)`
-/

namespace A221570.P3765495535052002389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A052905 (n + 2) + 1).toNat

end

end A221570.P3765495535052002389

namespace A221570

/-- `A221573(A052905(n+2)+1)` -/
def P3765495535052002389.Spec : Prop :=
  ∀ n, P3765495535052002389.a n = A221570 (n + 1)

end A221570

/-! ## A221570.P17178187427691076435

`A221573(A166136(n+1)+A016789(n))`
-/

namespace A221570.P17178187427691076435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A166136 (n + 1) + A016789 n).toNat

end

end A221570.P17178187427691076435

namespace A221570

/-- `A221573(A166136(n+1)+A016789(n))` -/
def P17178187427691076435.Spec : Prop :=
  ∀ n, P17178187427691076435.a n = A221570 (n + 1)

end A221570

/-! ## A221570.P10397640802774359804

`A221573(A264443(n+1)-A264443(n))`
-/

namespace A221570.P10397640802774359804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A264443 (n + 1) - A264443 n).toNat

end

end A221570.P10397640802774359804

namespace A221570

/-- `A221573(A264443(n+1)-A264443(n))` -/
def P10397640802774359804.Spec : Prop :=
  ∀ n, P10397640802774359804.a n = A221570 (n + 1)

end A221570

/-! ## A221570.P16456114006278465782

`A221573(A005408(n)+A000124(n+3)+3)`
-/

namespace A221570.P16456114006278465782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A005408 n + (A000124 (n + 3) + 3)).toNat

end

end A221570.P16456114006278465782

namespace A221570

/-- `A221573(A005408(n)+A000124(n+3)+3)` -/
def P16456114006278465782.Spec : Prop :=
  ∀ n, P16456114006278465782.a n = A221570 (n + 1)

end A221570

/-! ## A221570.P8701787379380246545

`A221573(A000124(n+7)-A005843(n+9))`
-/

namespace A221570.P8701787379380246545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000124 (n + 7) - A005843 (n + 9)).toNat

end

end A221570.P8701787379380246545

namespace A221570

/-- `A221573(A000124(n+7)-A005843(n+9))` -/
def P8701787379380246545.Spec : Prop :=
  ∀ n, P8701787379380246545.a n = A221570 (n + 1)

end A221570

/-!
# A221571: Number of 0..6 arrays of length n with each element differing from at least one neighbor by something other than 1.

The programs for A221571, there is no canonical definition to state claims against.
-/

/-! ## A221571.P3351488786839975786

`A221573(A052905(n+3))`
-/

namespace A221571.P3351488786839975786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A052905 (n + 3)).toNat

end

end A221571.P3351488786839975786

/-! ## A221571.P9973518709422961178

`A221573(A055999(n+3)+1)`
-/

namespace A221571.P9973518709422961178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A055999 (n + 3) + 1).toNat

end

end A221571.P9973518709422961178

/-! ## A221571.P2574381555527529013

`A221573(A000217(n+6)-5)`
-/

namespace A221571.P2574381555527529013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000217 (n + 6) - 5).toNat

end

end A221571.P2574381555527529013

/-! ## A221571.P17879567834957034615

`A221573(A000124(n+6)-6)`
-/

namespace A221571.P17879567834957034615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000124 (n + 6) - 6).toNat

end

end A221571.P17879567834957034615

/-! ## A221571.P10964844502587930578

`A221573(Δ[Δ[A006504(n+1)]])`
-/

namespace A221571.P10964844502587930578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (f1 (n + 1) - f1 n).toNat

end

end A221571.P10964844502587930578

/-! ## A221571.P7251888376407134257

`A221573(Δ[A264443(n+1)]-1)`
-/

namespace A221571.P7251888376407134257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (f1 (n + 1) - f1 n - 1).toNat

end

end A221571.P7251888376407134257

/-! ## A221571.P14892953476482301812

`A221573(Δ[A023545(n+2)]-1)`
-/

namespace A221571.P14892953476482301812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (f1 (n + 1) - f1 n - 1).toNat

end

end A221571.P14892953476482301812

/-! ## A221571.P5058424104517063893

`A221573(Δ[n²]+A155212(n)+13)`
-/

namespace A221571.P5058424104517063893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A155212 n + 13)).toNat

end

end A221571.P5058424104517063893

/-! ## A221571.P7547089846902894253

`A221573(A005408(n)+A000096(n+3)+6)`
-/

namespace A221571.P7547089846902894253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A005408 n + (A000096 (n + 3) + 6)).toNat

end

end A221571.P7547089846902894253

/-!
# A221572: Number of 0..7 arrays of length n with each element differing from at least one neighbor by something other than 1.

The programs for A221572, the canonical program `A221572.P11798872911388846789` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221572 has offset 1).

The definition of A221572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221572.P11798872911388846789

`ogf((50x-36x^2+102x^3+8x^4+132x^5-36x^6+12x^7)/(1-7x-4x^2-5x^3-20x^4-20x^5-23x^6+6x^7-3x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221572

/-- `ogf((50x-36x^2+102x^3+8x^4+132x^5-36x^6+12x^7)/(1-7x-4x^2-5x^3-20x^4-20x^5-23x^6+6x^7-3x^8))` -/
def P11798872911388846789.Spec : Prop :=
  ∀ n, P11798872911388846789.a n = A221572 (n + 1)

theorem P11798872911388846789.correct : P11798872911388846789.Spec := by
  intro n
  simp only [A221572, Nat.add_sub_cancel]

end A221572

/-! ## A221572.P9332141315326935973

`A221573(A055999(n+4))`
-/

namespace A221572.P9332141315326935973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A055999 (n + 4)).toNat

end

end A221572.P9332141315326935973

namespace A221572

/-- `A221573(A055999(n+4))` -/
def P9332141315326935973.Spec : Prop :=
  ∀ n, P9332141315326935973.a n = A221572 (n + 1)

end A221572

/-! ## A221572.P4260082997296595686

`A221573(A155212(n+3)+2)`
-/

namespace A221572.P4260082997296595686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A155212 (n + 3) + 2).toNat

end

end A221572.P4260082997296595686

namespace A221572

/-- `A221573(A155212(n+3)+2)` -/
def P4260082997296595686.Spec : Prop :=
  ∀ n, P4260082997296595686.a n = A221572 (n + 1)

end A221572

/-! ## A221572.P11813968553353226990

`A221573(A052905(n+4)-1)`
-/

namespace A221572.P11813968553353226990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A052905 (n + 4) - 1).toNat

end

end A221572.P11813968553353226990

namespace A221572

/-- `A221573(A052905(n+4)-1)` -/
def P11813968553353226990.Spec : Prop :=
  ∀ n, P11813968553353226990.a n = A221572 (n + 1)

end A221572

/-! ## A221572.P12686748127334997188

`A221573(A000124(n+7)-7)`
-/

namespace A221572.P12686748127334997188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000124 (n + 7) - 7).toNat

end

end A221572.P12686748127334997188

namespace A221572

/-- `A221573(A000124(n+7)-7)` -/
def P12686748127334997188.Spec : Prop :=
  ∀ n, P12686748127334997188.a n = A221572 (n + 1)

end A221572

/-! ## A221572.P1497428126649441524

`A221573(A161680(n+8)-6)`
-/

namespace A221572.P1497428126649441524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A161680 (n + 8) - 6).toNat

end

end A221572.P1497428126649441524

namespace A221572

/-- `A221573(A161680(n+8)-6)` -/
def P1497428126649441524.Spec : Prop :=
  ∀ n, P1497428126649441524.a n = A221572 (n + 1)

end A221572

/-! ## A221572.P863837020728597806

`A221573(A000096(n+5)+n+2)`
-/

namespace A221572.P863837020728597806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A221572.P863837020728597806

namespace A221572

/-- `A221573(A000096(n+5)+n+2)` -/
def P863837020728597806.Spec : Prop :=
  ∀ n, P863837020728597806.a n = A221572 (n + 1)

end A221572

/-! ## A221572.P17316349941721704897

`A221573(A000217(n+6)+n+1)`
-/

namespace A221572.P17316349941721704897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A221572.P17316349941721704897

namespace A221572

/-- `A221573(A000217(n+6)+n+1)` -/
def P17316349941721704897.Spec : Prop :=
  ∀ n, P17316349941721704897.a n = A221572 (n + 1)

end A221572

/-!
# A221573: T(n,k)=Number of 0..k arrays of length n with each element differing from at least one neighbor by something other than 1.

The programs for A221573, there is no canonical definition to state claims against.
-/

/-! ## A221573.P16069036638599409390

`A208905(n+1)+A001222(A058710(n)!)-A071919(n)`
-/

namespace A221573.P16069036638599409390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208905 (n + 1) + A001222 (Nat.factorial (A058710 n).toNat) - A071919 n

end

end A221573.P16069036638599409390

/-!
# A221574: Number of 0..n arrays of length 3 with each element differing from at least one neighbor by something other than 1.

The programs for A221574, the canonical program `A221574.P4252226203782999332` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221574 has offset 1).

The definition of A221574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221574.P4252226203782999332

`n*((n+1)²+3)+2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221574

/-- `n*((n+1)²+3)+2` -/
def P4252226203782999332.Spec : Prop :=
  ∀ n, (P4252226203782999332.a n : ℤ) = A221574 (n + 1)

theorem P4252226203782999332.correct : P4252226203782999332.Spec := by
  intro n
  simp only [A221574, Nat.add_sub_cancel]

end A221574

/-! ## A221574.P2835123836022539546

`∑[∑[a(n-1)+6]]` with `a(0)=2, a(1)=5, a(2)=10`
-/

namespace A221574.P2835123836022539546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 10] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P2835123836022539546

namespace A221574

/-- `∑[∑[a(n-1)+6]]` -/
def P2835123836022539546.Spec : Prop :=
  ∀ n, (P2835123836022539546.a n : ℤ) = A221574 (n + 1)

end A221574

/-! ## A221574.P3220140697311134532

`∑[round(3/acot(n)²+n+1)]`
-/

namespace A221574.P3220140697311134532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (n : ℝ) ^ 2 + (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P3220140697311134532

namespace A221574

/-- `∑[round(3/acot(n)²+n+1)]` -/
def P3220140697311134532.Spec : Prop :=
  ∀ n, P3220140697311134532.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P17227383554692618065

`floor((n+1)/Δ[acot(acot(n))]+n)`
-/

namespace A221574.P17227383554692618065
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (f1 (n + 1) - f1 n) + (n : ℝ)⌋

end

end A221574.P17227383554692618065

namespace A221574

/-- `floor((n+1)/Δ[acot(acot(n))]+n)` -/
def P17227383554692618065.Spec : Prop :=
  ∀ n, P17227383554692618065.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P5600959626774402897

`ogf((2+x+2x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A221574.P5600959626774402897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 2, 1] [1, -4, 6, -4, 1] n

end

end A221574.P5600959626774402897

namespace A221574

/-- `ogf((2+x+2x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P5600959626774402897.Spec : Prop :=
  ∀ n, P5600959626774402897.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P17746901233286929334

`∑[∑[A270545(n)+1]]`
-/

namespace A221574.P17746901233286929334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P17746901233286929334

namespace A221574

/-- `∑[∑[A270545(n)+1]]` -/
def P17746901233286929334.Spec : Prop :=
  ∀ n, P17746901233286929334.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P15300060603133144215

`∑[A005918(n)+1+n]`
-/

namespace A221574.P15300060603133144215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P15300060603133144215

namespace A221574

/-- `∑[A005918(n)+1+n]` -/
def P15300060603133144215.Spec : Prop :=
  ∀ n, P15300060603133144215.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P15379255447607225002

`abs(n²-∑[A003215(n)+1])`
-/

namespace A221574.P15379255447607225002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A221574.P15379255447607225002

namespace A221574

/-- `abs(n²-∑[A003215(n)+1])` -/
def P15379255447607225002.Spec : Prop :=
  ∀ n, P15379255447607225002.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P15756511383659792901

`4*((n*A005563(n)+2)/4+n)`
-/

namespace A221574.P15756511383659792901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((n : ℤ) * A005563 n + 2 : ℚ) / 4 + (n : ℚ))

end

end A221574.P15756511383659792901

namespace A221574

/-- `4*((n*A005563(n)+2)/4+n)` -/
def P15756511383659792901.Spec : Prop :=
  ∀ n, P15756511383659792901.a n = (A221574 (n + 1) : ℚ)

theorem P15756511383659792901.correct : P15756511383659792901.Spec := by
  intro n
  simp only [A221574, Nat.add_sub_cancel, A221574.P15756511383659792901.a, A221574.P4252226203782999332.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A221574

/-! ## A221574.P5520427626933382641

`abs(∑[A000567(n)+3*n+3]-1)`
-/

namespace A221574.P5520427626933382641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + (3 * n : ℤ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A221574.P5520427626933382641

namespace A221574

/-- `abs(∑[A000567(n)+3*n+3]-1)` -/
def P5520427626933382641.Spec : Prop :=
  ∀ n, P5520427626933382641.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P4893527105058238069

`abs((n+1)*(A000290(n)+3+n)-1)`
-/

namespace A221574.P4893527105058238069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A000290 n + 3 + (n : ℤ)) - 1|

end

end A221574.P4893527105058238069

namespace A221574

/-- `abs((n+1)*(A000290(n)+3+n)-1)` -/
def P4893527105058238069.Spec : Prop :=
  ∀ n, P4893527105058238069.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P14503739067597329071

`xor(A176040(n), A270867(n))`
-/

namespace A221574.P14503739067597329071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176040 n) (A270867 n)

end

end A221574.P14503739067597329071

namespace A221574

/-- `xor(A176040(n), A270867(n))` -/
def P14503739067597329071.Spec : Prop :=
  ∀ n, P14503739067597329071.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P10817774349359034505

`∑[∑[A033627(n+1)+A008486(n)]]`
-/

namespace A221574.P10817774349359034505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1) + A008486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P10817774349359034505

namespace A221574

/-- `∑[∑[A033627(n+1)+A008486(n)]]` -/
def P10817774349359034505.Spec : Prop :=
  ∀ n, P10817774349359034505.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P321284933052569522

`∑[A056105(n)+comp[A004277(n)]+n+1]`
-/

namespace A221574.P321284933052569522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P321284933052569522

namespace A221574

/-- `∑[A056105(n)+comp[A004277(n)]+n+1]` -/
def P321284933052569522.Spec : Prop :=
  ∀ n, P321284933052569522.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P8073571344679928762

`∑[∑[A005004(2*n+1)]+1]`
-/

namespace A221574.P8073571344679928762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P8073571344679928762

namespace A221574

/-- `∑[∑[A005004(2*n+1)]+1]` -/
def P8073571344679928762.Spec : Prop :=
  ∀ n, P8073571344679928762.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P14967900148719297858

`∑[A267529(2*n)+2*n+1]`
-/

namespace A221574.P14967900148719297858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 (2 * n) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P14967900148719297858

namespace A221574

/-- `∑[A267529(2*n)+2*n+1]` -/
def P14967900148719297858.Spec : Prop :=
  ∀ n, P14967900148719297858.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P12670094214730121773

`∑[A089071(2*n+1)+A000290(n+1)]`
-/

namespace A221574.P12670094214730121773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (2 * n + 1) + A000290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P12670094214730121773

namespace A221574

/-- `∑[A089071(2*n+1)+A000290(n+1)]` -/
def P12670094214730121773.Spec : Prop :=
  ∀ n, P12670094214730121773.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P6622344676003101204

`∑[A089071(2*n+1)+A005563(n)+1]`
-/

namespace A221574.P6622344676003101204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (2 * n + 1) + A005563 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P6622344676003101204

namespace A221574

/-- `∑[A089071(2*n+1)+A005563(n)+1]` -/
def P6622344676003101204.Spec : Prop :=
  ∀ n, P6622344676003101204.a n = A221574 (n + 1)

end A221574

/-! ## A221574.P7829931755338813099

`∑[A309805(2*(n+1))-A004273(2*n)]`
-/

namespace A221574.P7829931755338813099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (2 * (n + 1)) - A004273 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221574.P7829931755338813099

namespace A221574

/-- `∑[A309805(2*(n+1))-A004273(2*n)]` -/
def P7829931755338813099.Spec : Prop :=
  ∀ n, P7829931755338813099.a n = A221574 (n + 1)

end A221574

/-!
# A221575: Number of 0..n arrays of length 5 with each element differing from at least one neighbor by something other than 1.

The programs for A221575, the canonical program `A221575.P45280797223193780` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221575 has offset 1).

The definition of A221575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221575.P45280797223193780

`ogf((6+21x+90x^2-24x^3+56x^4-39x^5+12x^6-2x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221575

/-- `ogf((6+21x+90x^2-24x^3+56x^4-39x^5+12x^6-2x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P45280797223193780.Spec : Prop :=
  ∀ n, P45280797223193780.a n = A221575 (n + 1)

theorem P45280797223193780.correct : P45280797223193780.Spec := by
  intro n
  simp only [A221575, Nat.add_sub_cancel]

end A221575

/-! ## A221575.P10125269861609040072

`A221573(A167499(n+3))`
-/

namespace A221575.P10125269861609040072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A167499 (n + 3)).toNat

end

end A221575.P10125269861609040072

namespace A221575

/-- `A221573(A167499(n+3))` -/
def P10125269861609040072.Spec : Prop :=
  ∀ n, P10125269861609040072.a n = A221575 (n + 1)

end A221575

/-! ## A221575.P10649272727814339348

`A221573(A155212(n)+13)`
-/

namespace A221575.P10649272727814339348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A155212 n + 13).toNat

end

end A221575.P10649272727814339348

namespace A221575

/-- `A221573(A155212(n)+13)` -/
def P10649272727814339348.Spec : Prop :=
  ∀ n, P10649272727814339348.a n = A221575 (n + 1)

end A221575

/-! ## A221575.P13350452302276954426

`A221573(A056000(n)+15)`
-/

namespace A221575.P13350452302276954426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A056000 n + 15).toNat

end

end A221575.P13350452302276954426

namespace A221575

/-- `A221573(A056000(n)+15)` -/
def P13350452302276954426.Spec : Prop :=
  ∀ n, P13350452302276954426.a n = A221575 (n + 1)

end A221575

/-! ## A221575.P721713382290820887

`A221573(A000124(n+4)+4)`
-/

namespace A221575.P721713382290820887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000124 (n + 4) + 4).toNat

end

end A221575.P721713382290820887

namespace A221575

/-- `A221573(A000124(n+4)+4)` -/
def P721713382290820887.Spec : Prop :=
  ∀ n, P721713382290820887.a n = A221575 (n + 1)

end A221575

/-! ## A221575.P5455854327866335187

`A221573(A000217(n+4)+5)`
-/

namespace A221575.P5455854327866335187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000217 (n + 4) + 5).toNat

end

end A221575.P5455854327866335187

namespace A221575

/-- `A221573(A000217(n+4)+5)` -/
def P5455854327866335187.Spec : Prop :=
  ∀ n, P5455854327866335187.a n = A221575 (n + 1)

end A221575

/-! ## A221575.P7622817846110837744

`A221573(A052905(n+1)+10)`
-/

namespace A221575.P7622817846110837744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A052905 (n + 1) + 10).toNat

end

end A221575.P7622817846110837744

namespace A221575

/-- `A221573(A052905(n+1)+10)` -/
def P7622817846110837744.Spec : Prop :=
  ∀ n, P7622817846110837744.a n = A221575 (n + 1)

end A221575

/-!
# A221576: Number of 0..n arrays of length 6 with each element differing from at least one neighbor by something other than 1.

The programs for A221576, there is no canonical definition to state claims against.
-/

/-! ## A221576.P5673072555145672726

`A221573(A167499(n+4)+1)`
-/

namespace A221576.P5673072555145672726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A167499 (n + 4) + 1).toNat

end

end A221576.P5673072555145672726

/-! ## A221576.P14008606439999199172

`A221573(A000124(n+5)+5)`
-/

namespace A221576.P14008606439999199172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000124 (n + 5) + 5).toNat

end

end A221576.P14008606439999199172

/-! ## A221576.P1406914323189836513

`A221573(A000217(n+5)+6)`
-/

namespace A221576.P1406914323189836513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000217 (n + 5) + 6).toNat

end

end A221576.P1406914323189836513

/-! ## A221576.P5486855260402690271

`A221573(A055999(n+2)+12)`
-/

namespace A221576.P5486855260402690271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A055999 (n + 2) + 12).toNat

end

end A221576.P5486855260402690271

/-! ## A221576.P16672129324802142110

`A221573(A000096(n+6)-6-2*n)`
-/

namespace A221576.P16672129324802142110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000096 (n + 6) - 6 - (2 * n : ℤ)).toNat

end

end A221576.P16672129324802142110

/-!
# A221577: Number of 0..n arrays of length 7 with each element differing from at least one neighbor by something other than 1.

The programs for A221577, there is no canonical definition to state claims against.
-/

/-! ## A221577.P9476779775230874388

`A221573(A167487(n+5))`
-/

namespace A221577.P9476779775230874388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A167487 (n + 5)).toNat

end

end A221577.P9476779775230874388

/-! ## A221577.P11492441977244864506

`A221573(A166136(n+5)+1)`
-/

namespace A221577.P11492441977244864506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A166136 (n + 5) + 1).toNat

end

end A221577.P11492441977244864506

/-! ## A221577.P9969707759579494677

`A221573(A167499(n+5)+2)`
-/

namespace A221577.P9969707759579494677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A167499 (n + 5) + 2).toNat

end

end A221577.P9969707759579494677

/-! ## A221577.P5547436544901895232

`A221573(A000217(n+6)+7)`
-/

namespace A221577.P5547436544901895232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A000217 (n + 6) + 7).toNat

end

end A221577.P5547436544901895232

/-! ## A221577.P15000008151640585387

`A221573(A055998(n+4)+10)`
-/

namespace A221577.P15000008151640585387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A055998 (n + 4) + 10).toNat

end

end A221577.P15000008151640585387

/-! ## A221577.P8489402074186698110

`A221573(A052905(n+4)-(n-5))`
-/

namespace A221577.P8489402074186698110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A052905 (n + 4) - ((n : ℤ) - 5)).toNat

end

end A221577.P8489402074186698110

/-! ## A221577.P6580223090190090928

`A221573(A087475(n+5)-A052905(n))`
-/

namespace A221577.P6580223090190090928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221573 (A087475 (n + 5) - A052905 n).toNat

end

end A221577.P6580223090190090928

/-!
# A221578: A sum over partitions (q=6), see first comment.

The programs for A221578, there is no canonical definition to state claims against.
-/

/-! ## A221578.P11594283564231078294

`A319753(eq[6, A025581(n)])`
-/

namespace A221578.P11594283564231078294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221578.P11594283564231078294

/-! ## A221578.P8889965859986211644

`A319753(eq[7, A193739(n)])`
-/

namespace A221578.P8889965859986211644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221578.P8889965859986211644

/-! ## A221578.P13777164841520275401

`record[A319753(A155212(n)+1)]`
-/

namespace A221578.P13777164841520275401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A155212 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221578.P13777164841520275401

/-! ## A221578.P6719745179244166263

`A319753(eq[7, A004736(n+1)])`
-/

namespace A221578.P6719745179244166263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221578.P6719745179244166263

/-! ## A221578.P11857422809467379357

`record[A319753(A055999(n+1)-1)]`
-/

namespace A221578.P11857422809467379357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A055999 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221578.P11857422809467379357

/-! ## A221578.P13334280665653802806

`record[A319753(A052905(n+1)-2)]`
-/

namespace A221578.P13334280665653802806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A052905 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221578.P13334280665653802806

/-! ## A221578.P13846047386214110276

`A319753(2*n+A161680(n+6)+6)`
-/

namespace A221578.P13846047386214110276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 ((2 * n : ℤ) + (A161680 (n + 6) + 6)).toNat

end

end A221578.P13846047386214110276

/-!
# A221579: A sum over partitions (q=10), see first comment.

The programs for A221579, there is no canonical definition to state claims against.
-/

/-! ## A221579.P12900573291408543791

`A319753(eq[10, A025581(n)])`
-/

namespace A221579.P12900573291408543791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221579.P12900573291408543791

/-! ## A221579.P2712803855043406979

`A319753(eq[11, A193739(n)])`
-/

namespace A221579.P2712803855043406979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221579.P2712803855043406979

/-! ## A221579.P12084926496063201630

`A319753(eq[12, A116598(n)])`
-/

namespace A221579.P12084926496063201630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221579.P12084926496063201630

/-! ## A221579.P4438754513846022468

`A319753(A000217(n+11)-11)`
-/

namespace A221579.P4438754513846022468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A000217 (n + 11) - 11).toNat

end

end A221579.P4438754513846022468

/-! ## A221579.P7587270065294079459

`A319753(eq[11, A004736(n+1)])`
-/

namespace A221579.P7587270065294079459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221579.P7587270065294079459

/-!
# A221580: A sum over partitions (q=12), see first comment.

The programs for A221580, there is no canonical definition to state claims against.
-/

/-! ## A221580.P118422491353348910

`A319753(eq[12, A025581(n)])`
-/

namespace A221580.P118422491353348910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221580.P118422491353348910

/-! ## A221580.P1541238869424119013

`A319753(eq[12, A195664(n)])`
-/

namespace A221580.P1541238869424119013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221580.P1541238869424119013

/-! ## A221580.P2019171835205847547

`A319753(eq[13, A193739(n)])`
-/

namespace A221580.P2019171835205847547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221580.P2019171835205847547

/-! ## A221580.P9423067440481660058

`A319753(eq[21, A116598(n)])`
-/

namespace A221580.P9423067440481660058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221580.P9423067440481660058

/-! ## A221580.P16522385497861288388

`A319753(eq[13, A004736(n+1)])`
-/

namespace A221580.P16522385497861288388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221580.P16522385497861288388

/-!
# A221581: A sum over partitions (q=14), see first comment.

The programs for A221581, there is no canonical definition to state claims against.
-/

/-! ## A221581.P11761426401774943480

`A319753(eq[14, A025581(n)])`
-/

namespace A221581.P11761426401774943480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221581.P11761426401774943480

/-! ## A221581.P15478556742275826649

`A319753(eq[15, A193739(n)])`
-/

namespace A221581.P15478556742275826649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221581.P15478556742275826649

/-! ## A221581.P16832408431263463609

`A319753(eq[15, A004736(n+1)])`
-/

namespace A221581.P16832408431263463609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221581.P16832408431263463609

/-!
# A221582: A sum over partitions (q=15), see first comment.

The programs for A221582, there is no canonical definition to state claims against.
-/

/-! ## A221582.P2125481256153958340

`A319753(eq[15, A025581(n)])`
-/

namespace A221582.P2125481256153958340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221582.P2125481256153958340

/-! ## A221582.P8516087322343046578

`A319753(eq[15, A195664(n)])`
-/

namespace A221582.P8516087322343046578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221582.P8516087322343046578

/-! ## A221582.P16751259870852033991

`A319753(eq[16, A193739(n)])`
-/

namespace A221582.P16751259870852033991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221582.P16751259870852033991

/-! ## A221582.P6117019301185147359

`A319753(eq[16, A004736(n+1)])`
-/

namespace A221582.P6117019301185147359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221582.P6117019301185147359

/-!
# A221585: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(n^2) / (1 + x*A(x)^n)^n.

The programs for A221585, there is no canonical definition to state claims against.
-/

/-! ## A221585.P6638508439441475967

`A138999(3*A053617(n))`
-/

namespace A221585.P6638508439441475967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (3 * A053617 n).toNat

end

end A221585.P6638508439441475967

/-! ## A221585.P9179733960006555398

`A060384(A338999(n+1)+n+1)`
-/

namespace A221585.P9179733960006555398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A338999 (n + 1) + (n + 1 : ℤ)).toNat

end

end A221585.P9179733960006555398

/-! ## A221585.P17792919950468458789

`A360540(n+1)+A002264(A127897(n))`
-/

namespace A221585.P17792919950468458789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1) + A002264 (A127897 n).toNat

end

end A221585.P17792919950468458789

/-! ## A221585.P2380401694339480689

`A097992(A338999(n+1)+A328431(n))`
-/

namespace A221585.P2380401694339480689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A338999 (n + 1) + A328431 n).toNat

end

end A221585.P2380401694339480689

/-!
# A221586: G.f. satisfies: A(x) = Sum_{n>=0} x^n * A(x)^(n*(n+1)/2) / Product_{k=1..n} (1 + x*A(x)^k).

The programs for A221586, there is no canonical definition to state claims against.
-/

/-! ## A221586.P149245392300923110

`A350899(A147207(n+1))+A307787(n)`
-/

namespace A221586.P149245392300923110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350899 (A147207 (n + 1)).toNat + A307787 n

end

end A221586.P149245392300923110

/-! ## A221586.P8563934880071929290

`A350899(A307738(n+2))+A307787(n)`
-/

namespace A221586.P8563934880071929290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350899 (A307738 (n + 2)).toNat + A307787 n

end

end A221586.P8563934880071929290

/-! ## A221586.P16985005956195969963

`A187187(A076866(n))`
-/

namespace A221586.P16985005956195969963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A076866 n).toNat

end

end A221586.P16985005956195969963

/-! ## A221586.P15989701383492684519

`A261585(A148302(n+1))`
-/

namespace A221586.P15989701383492684519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A148302 (n + 1)).toNat

end

end A221586.P15989701383492684519

/-! ## A221586.P18037200607451346368

`A008618(2*A076866(n))`
-/

namespace A221586.P18037200607451346368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (2 * A076866 n).toNat

end

end A221586.P18037200607451346368

/-!
# A221587: Equals one maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..3 n X 2 array.

The programs for A221587, the canonical program `A221587.P7984750779290553734` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221587 has offset 1).

The definition of A221587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221587.P7984750779290553734

`ogf((2-4x-2x^2+8x^3-26x^4-12x^5+14x^6+8x^7)/(1-6x+3x^2+22x^3-7x^4-4x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221587

/-- `ogf((2-4x-2x^2+8x^3-26x^4-12x^5+14x^6+8x^7)/(1-6x+3x^2+22x^3-7x^4-4x^5))` -/
def P7984750779290553734.Spec : Prop :=
  ∀ n, P7984750779290553734.a n = A221587 (n + 1)

theorem P7984750779290553734.correct : P7984750779290553734.Spec := by
  intro n
  simp only [A221587, Nat.add_sub_cancel]

end A221587

/-! ## A221587.P11410059085436850220

`A221590(∑[n+1]+2)`
-/

namespace A221587.P11410059085436850220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221587.P11410059085436850220

namespace A221587

/-- `A221590(∑[n+1]+2)` -/
def P11410059085436850220.Spec : Prop :=
  ∀ n, P11410059085436850220.a n = A221587 (n + 1)

end A221587

/-! ## A221587.P18441376068109421581

`record[A221590(n+3)/A221623(n+1)]`
-/

namespace A221587.P18441376068109421581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221590 (n + 3) : ℚ) / (A221623 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221587.P18441376068109421581

namespace A221587

/-- `record[A221590(n+3)/A221623(n+1)]` -/
def P18441376068109421581.Spec : Prop :=
  ∀ n, P18441376068109421581.a n = (A221587 (n + 1) : ℚ)

end A221587

/-! ## A221587.P17874689133771416407

`record[gcd(A221542(n+1), A221590(n+2))]`
-/

namespace A221587.P17874689133771416407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221542 (n + 1)) (A221590 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221587.P17874689133771416407

namespace A221587

/-- `record[gcd(A221542(n+1), A221590(n+2))]` -/
def P17874689133771416407.Spec : Prop :=
  ∀ n, (P17874689133771416407.a n : ℤ) = A221587 (n + 1)

end A221587

/-! ## A221587.P2005701657888351387

`record[gcd(A221590(n+3), A221609(n+1))]`
-/

namespace A221587.P2005701657888351387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221590 (n + 3)) (A221609 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221587.P2005701657888351387

namespace A221587

/-- `record[gcd(A221590(n+3), A221609(n+1))]` -/
def P2005701657888351387.Spec : Prop :=
  ∀ n, (P2005701657888351387.a n : ℤ) = A221587 (n + 1)

end A221587

/-!
# A221588: Equals one maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..3 n X 3 array.

The programs for A221588, there is no canonical definition to state claims against.
-/

/-! ## A221588.P9039757689490202378

`A221590(∑[n+2]+4)`
-/

namespace A221588.P9039757689490202378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221588.P9039757689490202378

/-! ## A221588.P6741363535911795602

`lcm(2, A221590(A167614(n+1)))`
-/

namespace A221588.P6741363535911795602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221590 (A167614 (n + 1)).toNat)

end

end A221588.P6741363535911795602

/-! ## A221588.P16249531716361623514

`A221590(A167614(n+1))+A025465(n)`
-/

namespace A221588.P16249531716361623514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A167614 (n + 1)).toNat + A025465 n

end

end A221588.P16249531716361623514

/-! ## A221588.P10186898443832354824

`A221590(A167614(n+1))+A025466(n)`
-/

namespace A221588.P10186898443832354824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A167614 (n + 1)).toNat + A025466 n

end

end A221588.P10186898443832354824

/-! ## A221588.P16058676335296355536

`A221590(A167614(n+1))+A081503(n)`
-/

namespace A221588.P16058676335296355536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A167614 (n + 1)).toNat + A081503 n

end

end A221588.P16058676335296355536

/-!
# A221589: Equals one maps: number of n X 4 binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..3 n X 4 array.

The programs for A221589, there is no canonical definition to state claims against.
-/

/-! ## A221589.P6323000832418849304

`A221590(A374004(n+1))`
-/

namespace A221589.P6323000832418849304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A374004 (n + 1)).toNat

end

end A221589.P6323000832418849304

/-! ## A221589.P4209430515889857849

`A221590(A141214(n)+7)`
-/

namespace A221589.P4209430515889857849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A141214 n + 7).toNat

end

end A221589.P4209430515889857849

/-! ## A221589.P5990667233409454188

`A221590(A052905(n)+9)`
-/

namespace A221589.P5990667233409454188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A052905 n + 9).toNat

end

end A221589.P5990667233409454188

/-! ## A221589.P12572565510533274311

`A221590(A055999(n)+10)`
-/

namespace A221589.P12572565510533274311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221590 (A055999 n + 10).toNat

end

end A221589.P12572565510533274311

/-!
# A221590: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their king-move neighbors in a random 0..3 nXk array.

The programs for A221590, there is no canonical definition to state claims against.
-/

/-! ## A221590.P1226723649470097518

`A350786(A220545(n+1))`
-/

namespace A221590.P1226723649470097518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A220545 (n + 1)).toNat

end

end A221590.P1226723649470097518

/-! ## A221590.P12195949070117570200

`A350786(A220751(n+1))`
-/

namespace A221590.P12195949070117570200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A220751 (n + 1)).toNat

end

end A221590.P12195949070117570200

/-! ## A221590.P2362950982557622343

`A350786(A220967(n+1))`
-/

namespace A221590.P2362950982557622343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A220967 (n + 1)).toNat

end

end A221590.P2362950982557622343

/-! ## A221590.P5527305369516283554

`A220967(n+1)+A184963(A172349(n))`
-/

namespace A221590.P5527305369516283554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220967 (n + 1) + A184963 (A172349 n).toNat

end

end A221590.P5527305369516283554

/-! ## A221590.P1761431388400762633

`A241705(A117401(n))+A220967(n+1)`
-/

namespace A221590.P1761431388400762633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241705 (A117401 n).toNat + A220967 (n + 1)

end

end A221590.P1761431388400762633

/-!
# A221591: Number of 0..2 arrays of length n with each element differing from at least one neighbor by 1 or less.

The programs for A221591, the canonical program `A221591.P13261494172344036560` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221591 has offset 1).

The definition of A221591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221591.P7494902461294662189

`ogf((7x+3x^2+x^3)/(1-2x-2x^2-x^3))`
-/

namespace A221591.P7494902461294662189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 3, 1] [1, -2, -2, -1] n

end

end A221591.P7494902461294662189

namespace A221591

/-- `ogf((7x+3x^2+x^3)/(1-2x-2x^2-x^3))` -/
def P7494902461294662189.Spec : Prop :=
  ∀ n, P7494902461294662189.a n = A221591 (n + 1)

end A221591

/-! ## A221591.P13261494172344036560

`2*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=7, a(2)=17, a(3)=49`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221591

/-- `2*a(n-1)+2*a(n-2)+a(n-3)` -/
def P13261494172344036560.Spec : Prop :=
  ∀ n, (P13261494172344036560.a n : ℤ) = A221591 (n + 1)

theorem P13261494172344036560.correct : P13261494172344036560.Spec := by
  intro n
  simp only [A221591, Nat.add_sub_cancel]

end A221591

/-! ## A221591.P1545285942256268171

`A221596(∑[n+2])`
-/

namespace A221591.P1545285942256268171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221591.P1545285942256268171

namespace A221591

/-- `A221596(∑[n+2])` -/
def P1545285942256268171.Spec : Prop :=
  ∀ n, P1545285942256268171.a n = A221591 (n + 1)

end A221591

/-! ## A221591.P3925428843771796506

`record[A221596(A000096(A028920(n)))]`
-/

namespace A221591.P3925428843771796506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221591.P3925428843771796506

namespace A221591

/-- `record[A221596(A000096(A028920(n)))]` -/
def P3925428843771796506.Spec : Prop :=
  ∀ n, P3925428843771796506.a n = A221591 (n + 1)

end A221591

/-! ## A221591.P7679536259433788330

`record[A221596(A000096(A102885(n)))]`
-/

namespace A221591.P7679536259433788330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000096 (A102885 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221591.P7679536259433788330

namespace A221591

/-- `record[A221596(A000096(A102885(n)))]` -/
def P7679536259433788330.Spec : Prop :=
  ∀ n, P7679536259433788330.a n = A221591 (n + 1)

end A221591

/-! ## A221591.P7803019162423991494

`record[A221596(A000096(A032742(n+1)))]`
-/

namespace A221591.P7803019162423991494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221591.P7803019162423991494

namespace A221591

/-- `record[A221596(A000096(A032742(n+1)))]` -/
def P7803019162423991494.Spec : Prop :=
  ∀ n, P7803019162423991494.a n = A221591 (n + 1)

end A221591

/-! ## A221591.P6581774436532496232

`record[A221596(A000096(A290103(n+1)))]`
-/

namespace A221591.P6581774436532496232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000096 (A290103 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221591.P6581774436532496232

namespace A221591

/-- `record[A221596(A000096(A290103(n+1)))]` -/
def P6581774436532496232.Spec : Prop :=
  ∀ n, P6581774436532496232.a n = A221591 (n + 1)

end A221591

/-!
# A221592: Number of 0..4 arrays of length n with each element differing from at least one neighbor by 1 or less.

The programs for A221592, the canonical program `A221592.P18139423149627702251` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221592 has offset 1).

The definition of A221592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221592.P18139423149627702251

`ogf((13x-4x^2+12x^3+4x^4+8x^5)/(1-3x-4x^2-6x^4-4x^5-4x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221592

/-- `ogf((13x-4x^2+12x^3+4x^4+8x^5)/(1-3x-4x^2-6x^4-4x^5-4x^6))` -/
def P18139423149627702251.Spec : Prop :=
  ∀ n, P18139423149627702251.a n = A221592 (n + 1)

theorem P18139423149627702251.correct : P18139423149627702251.Spec := by
  intro n
  simp only [A221592, Nat.add_sub_cancel]

end A221592

/-! ## A221592.P14157763925500279814

`A221596(∑[n+4]+3)`
-/

namespace A221592.P14157763925500279814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221592.P14157763925500279814

namespace A221592

/-- `A221596(∑[n+4]+3)` -/
def P14157763925500279814.Spec : Prop :=
  ∀ n, P14157763925500279814.a n = A221592 (n + 1)

end A221592

/-! ## A221592.P75389882242911203

`or(char[1], A221596(A027379(n+2)))`
-/

namespace A221592.P75389882242911203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A221596 (A027379 (n + 2)).toNat)

end

end A221592.P75389882242911203

namespace A221592

/-- `or(char[1], A221596(A027379(n+2)))` -/
def P75389882242911203.Spec : Prop :=
  ∀ n, P75389882242911203.a n = A221592 (n + 1)

end A221592

/-! ## A221592.P27814481874223866

`A221596(A027379(n+2))%A317694(n+1)`
-/

namespace A221592.P27814481874223866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221596 (A027379 (n + 2)).toNat) (A317694 (n + 1))

end

end A221592.P27814481874223866

namespace A221592

/-- `A221596(A027379(n+2))%A317694(n+1)` -/
def P27814481874223866.Spec : Prop :=
  ∀ n, P27814481874223866.a n = A221592 (n + 1)

end A221592

/-! ## A221592.P16031051429131542404

`A221596(A167499(n)+A016777(n))%A221588(n+1)`
-/

namespace A221592.P16031051429131542404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221596 (A167499 n + A016777 n).toNat) (A221588 (n + 1))

end

end A221592.P16031051429131542404

namespace A221592

/-- `A221596(A167499(n)+A016777(n))%A221588(n+1)` -/
def P16031051429131542404.Spec : Prop :=
  ∀ n, P16031051429131542404.a n = A221592 (n + 1)

end A221592

/-!
# A221593: Number of 0..5 arrays of length n with each element differing from at least one neighbor by 1 or less.

The programs for A221593, the canonical program `A221593.P7183544113608560804` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221593 has offset 1).

The definition of A221593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221593.P7183544113608560804

`ogf((16x-20x^2+32x^3+8x^4+2x^5)/(1-4x-3x^2+6x^3-19x^4-5x^5-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221593

/-- `ogf((16x-20x^2+32x^3+8x^4+2x^5)/(1-4x-3x^2+6x^3-19x^4-5x^5-x^6))` -/
def P7183544113608560804.Spec : Prop :=
  ∀ n, P7183544113608560804.a n = A221593 (n + 1)

theorem P7183544113608560804.correct : P7183544113608560804.Spec := by
  intro n
  simp only [A221593, Nat.add_sub_cancel]

end A221593

/-! ## A221593.P14211669152895256758

`A221596(A046691(n+3))`
-/

namespace A221593.P14211669152895256758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A046691 (n + 3)).toNat

end

end A221593.P14211669152895256758

namespace A221593

/-- `A221596(A046691(n+3))` -/
def P14211669152895256758.Spec : Prop :=
  ∀ n, P14211669152895256758.a n = A221593 (n + 1)

end A221593

/-! ## A221593.P16992910519042753048

`A221596(Δ[A023545(n+1)])`
-/

namespace A221593.P16992910519042753048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (f1 (n + 1) - f1 n).toNat

end

end A221593.P16992910519042753048

namespace A221593

/-- `A221596(Δ[A023545(n+1)])` -/
def P16992910519042753048.Spec : Prop :=
  ∀ n, P16992910519042753048.a n = A221593 (n + 1)

end A221593

/-! ## A221593.P3305531389592472131

`A221596(A052905(n+2)+1)`
-/

namespace A221593.P3305531389592472131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A052905 (n + 2) + 1).toNat

end

end A221593.P3305531389592472131

namespace A221593

/-- `A221596(A052905(n+2)+1)` -/
def P3305531389592472131.Spec : Prop :=
  ∀ n, P3305531389592472131.a n = A221593 (n + 1)

end A221593

/-! ## A221593.P11005830999954973527

`A221596(A055999(n+2)+2)`
-/

namespace A221593.P11005830999954973527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A055999 (n + 2) + 2).toNat

end

end A221593.P11005830999954973527

namespace A221593

/-- `A221596(A055999(n+2)+2)` -/
def P11005830999954973527.Spec : Prop :=
  ∀ n, P11005830999954973527.a n = A221593 (n + 1)

end A221593

/-! ## A221593.P11447027247986458773

`A221596(A152948(n+9)-A005408(n+9))`
-/

namespace A221593.P11447027247986458773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A152948 (n + 9) - A005408 (n + 9)).toNat

end

end A221593.P11447027247986458773

namespace A221593

/-- `A221596(A152948(n+9)-A005408(n+9))` -/
def P11447027247986458773.Spec : Prop :=
  ∀ n, P11447027247986458773.a n = A221593 (n + 1)

end A221593

/-!
# A221594: Number of 0..6 arrays of length n with each element differing from at least one neighbor by 1 or less.

The programs for A221594, the canonical program `A221594.P10954552185863022665` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221594 has offset 1).

The definition of A221594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221594.P10954552185863022665

`ogf((19x-23x^2+54x^3+17x^4+42x^5-9x^6+3x^7)/(1-4x-5x^2+7x^3-33x^4-17x^5-24x^6+5x^7-2x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221594

/-- `ogf((19x-23x^2+54x^3+17x^4+42x^5-9x^6+3x^7)/(1-4x-5x^2+7x^3-33x^4-17x^5-24x^6+5x^7-2x^8))` -/
def P10954552185863022665.Spec : Prop :=
  ∀ n, P10954552185863022665.a n = A221594 (n + 1)

theorem P10954552185863022665.correct : P10954552185863022665.Spec := by
  intro n
  simp only [A221594, Nat.add_sub_cancel]

end A221594

/-! ## A221594.P13261553345874853566

`A221596(A052905(n+3))`
-/

namespace A221594.P13261553345874853566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A052905 (n + 3)).toNat

end

end A221594.P13261553345874853566

namespace A221594

/-- `A221596(A052905(n+3))` -/
def P13261553345874853566.Spec : Prop :=
  ∀ n, P13261553345874853566.a n = A221594 (n + 1)

end A221594

/-! ## A221594.P3302333309271268364

`A221596(A046691(n+4)-1)`
-/

namespace A221594.P3302333309271268364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A046691 (n + 4) - 1).toNat

end

end A221594.P3302333309271268364

namespace A221594

/-- `A221596(A046691(n+4)-1)` -/
def P3302333309271268364.Spec : Prop :=
  ∀ n, P3302333309271268364.a n = A221594 (n + 1)

end A221594

/-! ## A221594.P16121511380157757681

`A221596(A000124(n+6)-6)`
-/

namespace A221594.P16121511380157757681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000124 (n + 6) - 6).toNat

end

end A221594.P16121511380157757681

namespace A221594

/-- `A221596(A000124(n+6)-6)` -/
def P16121511380157757681.Spec : Prop :=
  ∀ n, P16121511380157757681.a n = A221594 (n + 1)

end A221594

/-! ## A221594.P8342064777891041073

`A221596(Δ[A023545(n+2)]-1)`
-/

namespace A221594.P8342064777891041073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (f1 (n + 1) - f1 n - 1).toNat

end

end A221594.P8342064777891041073

namespace A221594

/-- `A221596(Δ[A023545(n+2)]-1)` -/
def P8342064777891041073.Spec : Prop :=
  ∀ n, P8342064777891041073.a n = A221594 (n + 1)

end A221594

/-! ## A221594.P11966874106864360016

`A221596(A005843(n+3)+A000217(n+4))`
-/

namespace A221594.P11966874106864360016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A005843 (n + 3) + A000217 (n + 4)).toNat

end

end A221594.P11966874106864360016

namespace A221594

/-- `A221596(A005843(n+3)+A000217(n+4))` -/
def P11966874106864360016.Spec : Prop :=
  ∀ n, P11966874106864360016.a n = A221594 (n + 1)

end A221594

/-! ## A221594.P13087171744131745072

`A221596(A005818(2*n+5)+A000217(n+2))`
-/

namespace A221594.P13087171744131745072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A005818 (2 * n + 5) + A000217 (n + 2)).toNat

end

end A221594.P13087171744131745072

namespace A221594

/-- `A221596(A005818(2*n+5)+A000217(n+2))` -/
def P13087171744131745072.Spec : Prop :=
  ∀ n, P13087171744131745072.a n = A221594 (n + 1)

end A221594

/-!
# A221595: Number of 0..7 arrays of length n with each element differing from at least one neighbor by 1 or less.

The programs for A221595, the canonical program `A221595.P5820851286585908170` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221595 has offset 1).

The definition of A221595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221595.P5820851286585908170

`ogf((22x-48x^2+108x^3-28x^4+36x^5+12x^7)/(1-5x-3x^2+16x^3-65x^4+14x^5-23x^6-2x^7-8x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221595

/-- `ogf((22x-48x^2+108x^3-28x^4+36x^5+12x^7)/(1-5x-3x^2+16x^3-65x^4+14x^5-23x^6-2x^7-8x^8))` -/
def P5820851286585908170.Spec : Prop :=
  ∀ n, P5820851286585908170.a n = A221595 (n + 1)

theorem P5820851286585908170.correct : P5820851286585908170.Spec := by
  intro n
  simp only [A221595, Nat.add_sub_cancel]

end A221595

/-! ## A221595.P9891000249710835780

`A221596(A055999(n+4))`
-/

namespace A221595.P9891000249710835780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A055999 (n + 4)).toNat

end

end A221595.P9891000249710835780

namespace A221595

/-- `A221596(A055999(n+4))` -/
def P9891000249710835780.Spec : Prop :=
  ∀ n, P9891000249710835780.a n = A221595 (n + 1)

end A221595

/-! ## A221595.P14069932386006817493

`A221596(A052905(n+4)-1)`
-/

namespace A221595.P14069932386006817493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A052905 (n + 4) - 1).toNat

end

end A221595.P14069932386006817493

namespace A221595

/-- `A221596(A052905(n+4)-1)` -/
def P14069932386006817493.Spec : Prop :=
  ∀ n, P14069932386006817493.a n = A221595 (n + 1)

end A221595

/-! ## A221595.P3905912577901836009

`A221596(A046691(n+5)-2)`
-/

namespace A221595.P3905912577901836009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A046691 (n + 5) - 2).toNat

end

end A221595.P3905912577901836009

namespace A221595

/-- `A221596(A046691(n+5)-2)` -/
def P3905912577901836009.Spec : Prop :=
  ∀ n, P3905912577901836009.a n = A221595 (n + 1)

end A221595

/-! ## A221595.P8795127712292475781

`A221596(A008486(n+4)+A000217(n+4))`
-/

namespace A221595.P8795127712292475781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A008486 (n + 4) + A000217 (n + 4)).toNat

end

end A221595.P8795127712292475781

namespace A221595

/-- `A221596(A008486(n+4)+A000217(n+4))` -/
def P8795127712292475781.Spec : Prop :=
  ∀ n, P8795127712292475781.a n = A221595 (n + 1)

end A221595

/-! ## A221595.P7779366803720747102

`A221596(A152948(n+11)-A005408(n+12))`
-/

namespace A221595.P7779366803720747102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A152948 (n + 11) - A005408 (n + 12)).toNat

end

end A221595.P7779366803720747102

namespace A221595

/-- `A221596(A152948(n+11)-A005408(n+12))` -/
def P7779366803720747102.Spec : Prop :=
  ∀ n, P7779366803720747102.a n = A221595 (n + 1)

end A221595

/-!
# A221596: T(n,k)=Number of 0..k arrays of length n with each element differing from at least one neighbor by 1 or less.

The programs for A221596, there is no canonical definition to state claims against.
-/

/-! ## A221596.P8031399551797303120

`A210555(A080036(n+1))%A267555(A210555(n+1))`
-/

namespace A221596.P8031399551797303120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210555 (A080036 (n + 1)).toNat) (A267555 (A210555 (n + 1)).toNat)

end

end A221596.P8031399551797303120

/-!
# A221597: Number of 0..n arrays of length 5 with each element differing from at least one neighbor by 1 or less.

The programs for A221597, the canonical program `A221597.P5743708593372452588` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221597 has offset 1).

The definition of A221597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221597.P5743708593372452588

`ogf((32+43x+21x^2+10x^3+2x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221597

/-- `ogf((32+43x+21x^2+10x^3+2x^4)/(1-3x+3x^2-x^3))` -/
def P5743708593372452588.Spec : Prop :=
  ∀ n, P5743708593372452588.a n = A221597 (n + 1)

theorem P5743708593372452588.correct : P5743708593372452588.Spec := by
  intro n
  simp only [A221597, Nat.add_sub_cancel]

end A221597

/-! ## A221597.P14346884395951048713

`A221596(A167499(n+3))`
-/

namespace A221597.P14346884395951048713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A167499 (n + 3)).toNat

end

end A221597.P14346884395951048713

namespace A221597

/-- `A221596(A167499(n+3))` -/
def P14346884395951048713.Spec : Prop :=
  ∀ n, P14346884395951048713.a n = A221597 (n + 1)

end A221597

/-! ## A221597.P8277930992482275871

`A221596(A167614(n+3)+2)`
-/

namespace A221597.P8277930992482275871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A167614 (n + 3) + 2).toNat

end

end A221597.P8277930992482275871

namespace A221597

/-- `A221596(A167614(n+3)+2)` -/
def P8277930992482275871.Spec : Prop :=
  ∀ n, P8277930992482275871.a n = A221597 (n + 1)

end A221597

/-! ## A221597.P17978639833768875301

`A221596(A000217(n+4)+5)`
-/

namespace A221597.P17978639833768875301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000217 (n + 4) + 5).toNat

end

end A221597.P17978639833768875301

namespace A221597

/-- `A221596(A000217(n+4)+5)` -/
def P17978639833768875301.Spec : Prop :=
  ∀ n, P17978639833768875301.a n = A221597 (n + 1)

end A221597

/-! ## A221597.P603361125975797081

`A221596(A055998(n+2)+8)`
-/

namespace A221597.P603361125975797081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A055998 (n + 2) + 8).toNat

end

end A221597.P603361125975797081

namespace A221597

/-- `A221596(A055998(n+2)+8)` -/
def P603361125975797081.Spec : Prop :=
  ∀ n, P603361125975797081.a n = A221597 (n + 1)

end A221597

/-! ## A221597.P15940892261477938353

`A221596(A046691(n+2)+9)`
-/

namespace A221597.P15940892261477938353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A046691 (n + 2) + 9).toNat

end

end A221597.P15940892261477938353

namespace A221597

/-- `A221596(A046691(n+2)+9)` -/
def P15940892261477938353.Spec : Prop :=
  ∀ n, P15940892261477938353.a n = A221597 (n + 1)

end A221597

/-! ## A221597.P3518398418372964275

`A221596(A052905(n+1)+10)`
-/

namespace A221597.P3518398418372964275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A052905 (n + 1) + 10).toNat

end

end A221597.P3518398418372964275

namespace A221597

/-- `A221596(A052905(n+1)+10)` -/
def P3518398418372964275.Spec : Prop :=
  ∀ n, P3518398418372964275.a n = A221597 (n + 1)

end A221597

/-!
# A221598: Number of 0..n arrays of length 6 with each element differing from at least one neighbor by 1 or less.

The programs for A221598, the canonical program `A221598.P3195660176738853765` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221598 has offset 1).

The definition of A221598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221598.P3195660176738853765

`ogf((64+137x+22x^2-23x^3-26x^4-10x^5-2x^6)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221598

/-- `ogf((64+137x+22x^2-23x^3-26x^4-10x^5-2x^6)/(1-4x+6x^2-4x^3+x^4))` -/
def P3195660176738853765.Spec : Prop :=
  ∀ n, P3195660176738853765.a n = A221598 (n + 1)

theorem P3195660176738853765.correct : P3195660176738853765.Spec := by
  intro n
  simp only [A221598, Nat.add_sub_cancel]

end A221598

/-! ## A221598.P11639862941731814776

`A221596(A056115(n)+21)`
-/

namespace A221598.P11639862941731814776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A056115 n + 21).toNat

end

end A221598.P11639862941731814776

namespace A221598

/-- `A221596(A056115(n)+21)` -/
def P11639862941731814776.Spec : Prop :=
  ∀ n, P11639862941731814776.a n = A221598 (n + 1)

end A221598

/-! ## A221598.P12037280938612211892

`A221596(A167499(n+4)+1)`
-/

namespace A221598.P12037280938612211892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A167499 (n + 4) + 1).toNat

end

end A221598.P12037280938612211892

namespace A221598

/-- `A221596(A167499(n+4)+1)` -/
def P12037280938612211892.Spec : Prop :=
  ∀ n, P12037280938612211892.a n = A221598 (n + 1)

end A221598

/-! ## A221598.P4035692797643854886

`A221596(A167614(n+4)+3)`
-/

namespace A221598.P4035692797643854886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A167614 (n + 4) + 3).toNat

end

end A221598.P4035692797643854886

namespace A221598

/-- `A221596(A167614(n+4)+3)` -/
def P4035692797643854886.Spec : Prop :=
  ∀ n, P4035692797643854886.a n = A221598 (n + 1)

end A221598

/-! ## A221598.P1454409504392691297

`A221596(A145018(n+6)+2)`
-/

namespace A221598.P1454409504392691297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A145018 (n + 6) + 2).toNat

end

end A221598.P1454409504392691297

namespace A221598

/-- `A221596(A145018(n+6)+2)` -/
def P1454409504392691297.Spec : Prop :=
  ∀ n, P1454409504392691297.a n = A221598 (n + 1)

end A221598

/-! ## A221598.P14406786857685906522

`A221596(A000217(n+5)+6)`
-/

namespace A221598.P14406786857685906522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000217 (n + 5) + 6).toNat

end

end A221598.P14406786857685906522

namespace A221598

/-- `A221596(A000217(n+5)+6)` -/
def P14406786857685906522.Spec : Prop :=
  ∀ n, P14406786857685906522.a n = A221598 (n + 1)

end A221598

/-! ## A221598.P2279955374821510456

`A221596(A055999(n+2)+12)`
-/

namespace A221598.P2279955374821510456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A055999 (n + 2) + 12).toNat

end

end A221598.P2279955374821510456

namespace A221598

/-- `A221596(A055999(n+2)+12)` -/
def P2279955374821510456.Spec : Prop :=
  ∀ n, P2279955374821510456.a n = A221598 (n + 1)

end A221598

/-! ## A221598.P9369559816198492462

`A221596(A000096(n+6)-6-2*n)`
-/

namespace A221598.P9369559816198492462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000096 (n + 6) - 6 - (2 * n : ℤ)).toNat

end

end A221598.P9369559816198492462

namespace A221598

/-- `A221596(A000096(n+6)-6-2*n)` -/
def P9369559816198492462.Spec : Prop :=
  ∀ n, P9369559816198492462.a n = A221598 (n + 1)

end A221598

/-!
# A221599: Number of 0..n arrays of length 7 with each element differing from at least one neighbor by 1 or less.

The programs for A221599, the canonical program `A221599.P15051221514824463738` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221599 has offset 1).

The definition of A221599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221599.P15051221514824463738

`ogf((128+601x+556x^2+217x^3-16x^4-28x^5)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221599

/-- `ogf((128+601x+556x^2+217x^3-16x^4-28x^5)/(1-4x+6x^2-4x^3+x^4))` -/
def P15051221514824463738.Spec : Prop :=
  ∀ n, P15051221514824463738.a n = A221599 (n + 1)

theorem P15051221514824463738.correct : P15051221514824463738.Spec := by
  intro n
  simp only [A221599, Nat.add_sub_cancel]

end A221599

/-! ## A221599.P2883576902539537238

`A221596(A167487(n+5))`
-/

namespace A221599.P2883576902539537238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A167487 (n + 5)).toNat

end

end A221599.P2883576902539537238

namespace A221599

/-- `A221596(A167487(n+5))` -/
def P2883576902539537238.Spec : Prop :=
  ∀ n, P2883576902539537238.a n = A221599 (n + 1)

end A221599

/-! ## A221599.P5787213979512046318

`A221596(A167499(n+5)+2)`
-/

namespace A221599.P5787213979512046318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A167499 (n + 5) + 2).toNat

end

end A221599.P5787213979512046318

namespace A221599

/-- `A221596(A167499(n+5)+2)` -/
def P5787213979512046318.Spec : Prop :=
  ∀ n, P5787213979512046318.a n = A221599 (n + 1)

end A221599

/-! ## A221599.P6820423546480419363

`A221596(A167614(n+5)+4)`
-/

namespace A221599.P6820423546480419363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A167614 (n + 5) + 4).toNat

end

end A221599.P6820423546480419363

namespace A221599

/-- `A221596(A167614(n+5)+4)` -/
def P6820423546480419363.Spec : Prop :=
  ∀ n, P6820423546480419363.a n = A221599 (n + 1)

end A221599

/-! ## A221599.P5699213783239502219

`A221596(A000217(n+6)+7)`
-/

namespace A221599.P5699213783239502219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A000217 (n + 6) + 7).toNat

end

end A221599.P5699213783239502219

namespace A221599

/-- `A221596(A000217(n+6)+7)` -/
def P5699213783239502219.Spec : Prop :=
  ∀ n, P5699213783239502219.a n = A221599 (n + 1)

end A221599

/-! ## A221599.P9273572989318498355

`A221596(A152948(n+8)+5)`
-/

namespace A221599.P9273572989318498355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221596 (A152948 (n + 8) + 5).toNat

end

end A221599.P9273572989318498355

namespace A221599

/-- `A221596(A152948(n+8)+5)` -/
def P9273572989318498355.Spec : Prop :=
  ∀ n, P9273572989318498355.a n = A221599 (n + 1)

end A221599

