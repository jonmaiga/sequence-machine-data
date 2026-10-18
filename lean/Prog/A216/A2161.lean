import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A216100: a(n) = 11^n mod 100.

The programs for A216100, the canonical program `A216100.P5543364608795540096` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216100 has offset 0).

The definition of A216100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216100.P5543364608795540096

`1+10*n%10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216100

/-- `1+10*n%10` -/
def P5543364608795540096.Spec : Prop :=
  ∀ n, (P5543364608795540096.a n : ℤ) = A216100 n

theorem P5543364608795540096.correct : P5543364608795540096.Spec := by
  intro n
  simp only [A216100]

end A216100

/-!
# A216101: Primes which are the integer harmonic mean of the previous prime and the following prime.

The programs for A216101, the canonical program `A216101.P10600526339822882131` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216101 has offset 1).

The definition of A216101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216101.P10600526339822882131

`p?[floor(sqrt(A152530(n+2)))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216101

/-- `p?[floor(sqrt(A152530(n+2)))]` -/
def P10600526339822882131.Spec : Prop :=
  ∀ n, P10600526339822882131.a n = A216101 (n + 1)

theorem P10600526339822882131.correct : P10600526339822882131.Spec := by
  intro n
  simp only [A216101, Nat.add_sub_cancel]

end A216101

/-! ## A216101.P7203078108943468134

`p?[round(sqrt(A152532(n+3)))]`
-/

namespace A216101.P7203078108943468134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A152532 (n + 3) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216101.P7203078108943468134

namespace A216101

/-- `p?[round(sqrt(A152532(n+3)))]` -/
def P7203078108943468134.Spec : Prop :=
  ∀ n, P7203078108943468134.a n = A216101 (n + 1)

end A216101

/-! ## A216101.P14973949125828631073

`A216098(floor(atan(n)+n)+3)`
-/

namespace A216101.P14973949125828631073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216098 (⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ + 3).toNat

end

end A216101.P14973949125828631073

namespace A216101

/-- `A216098(floor(atan(n)+n)+3)` -/
def P14973949125828631073.Spec : Prop :=
  ∀ n, P14973949125828631073.a n = A216101 (n + 1)

end A216101

/-! ## A216101.P10886170391320741287

`A216098(A157928(n)+3+n)`
-/

namespace A216101.P10886170391320741287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216098 (A157928 n + 3 + (n : ℤ)).toNat

end

end A216101.P10886170391320741287

namespace A216101

/-- `A216098(A157928(n)+3+n)` -/
def P10886170391320741287.Spec : Prop :=
  ∀ n, P10886170391320741287.a n = A216101 (n + 1)

end A216101

/-! ## A216101.P5248556800463584113

`p?[A073273(n+1)%A056221(n+1)]`
-/

namespace A216101.P5248556800463584113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073273 (n + 1)) (A056221 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216101.P5248556800463584113

namespace A216101

/-- `p?[A073273(n+1)%A056221(n+1)]` -/
def P5248556800463584113.Spec : Prop :=
  ∀ n, P5248556800463584113.a n = A216101 (n + 1)

end A216101

/-! ## A216101.P4122315232435781517

`A073273(eq[2, 1-A073272(n+1)]+1)`
-/

namespace A216101.P4122315232435781517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A073272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216101.P4122315232435781517

namespace A216101

/-- `A073273(eq[2, 1-A073272(n+1)]+1)` -/
def P4122315232435781517.Spec : Prop :=
  ∀ n, P4122315232435781517.a n = A216101 (n + 1)

end A216101

/-! ## A216101.P12407022315872746856

`p?[lcm(A073272(n+1), A073273(n+1))]`
-/

namespace A216101.P12407022315872746856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073272 (n + 1)) (A073273 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216101.P12407022315872746856

namespace A216101

/-- `p?[lcm(A073272(n+1), A073273(n+1))]` -/
def P12407022315872746856.Spec : Prop :=
  ∀ n, (P12407022315872746856.a n : ℤ) = A216101 (n + 1)

end A216101

/-! ## A216101.P17218203862225827296

`p?[-A065091(n+1)*A073272(n+1)]`
-/

namespace A216101.P17218203862225827296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A065091 (n + 1) * A073272 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216101.P17218203862225827296

namespace A216101

/-- `p?[-A065091(n+1)*A073272(n+1)]` -/
def P17218203862225827296.Spec : Prop :=
  ∀ n, P17218203862225827296.a n = A216101 (n + 1)

end A216101

/-! ## A216101.P15329505574070875181

`filter[A216098(n+3), A093521(#)]`
-/

namespace A216101.P15329505574070875181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216098 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A216101.P15329505574070875181

namespace A216101

/-- `filter[A216098(n+3), A093521(#)]` -/
def P15329505574070875181.Spec : Prop :=
  ∀ n, P15329505574070875181.a n = A216101 (n + 1)

end A216101

/-! ## A216101.P3328827642651947405

`∩[A136491(n+1), A216098(n+1)]`
-/

namespace A216101.P3328827642651947405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216101.P3328827642651947405

namespace A216101

/-- `∩[A136491(n+1), A216098(n+1)]` -/
def P3328827642651947405.Spec : Prop :=
  ∀ n, (P3328827642651947405.a n : ℤ) = A216101 (n + 1)

end A216101

/-!
# A216102: 10's-complement of A216103.

The programs for A216102, there is no canonical definition to state claims against.
-/

/-! ## A216102.P8462950625727413140

`floor(acot(n))+9-A216103(n+1)`
-/

namespace A216102.P8462950625727413140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (9 - A216103 (n + 1))

end

end A216102.P8462950625727413140

/-! ## A216102.P16955624947397970173

`A000007(n)+9-A216103(n+1)`
-/

namespace A216102.P16955624947397970173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A216103 (n + 1))

end

end A216102.P16955624947397970173

/-! ## A216102.P5908952949248396065

`10-(A216103(n+1)+A178334(n))`
-/

namespace A216102.P5908952949248396065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A216103 (n + 1) + A178334 n)

end

end A216102.P5908952949248396065

/-! ## A216102.P2514125620163912711

`or(9-A216103(n+1), floor(1/A000041(n)))`
-/

namespace A216102.P2514125620163912711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216103 (n + 1)) ⌊1 / (A000041 n : ℚ)⌋

end

end A216102.P2514125620163912711

/-! ## A216102.P637754070262573028

`val(A000040(n+1), 2)+9-A216103(n+1)`
-/

namespace A216102.P637754070262573028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (9 - A216103 (n + 1))

end

end A216102.P637754070262573028

/-! ## A216102.P7025243605513834265

`9-A216103(n+1)-A008683(2*(n+1)²)`
-/

namespace A216102.P7025243605513834265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A216103 (n + 1) - A008683 (2 * (n + 1) ^ 2)

end

end A216102.P7025243605513834265

/-! ## A216102.P7010702925703886546

`char[n^5*A008683(n+2)]+9-A216103(n+1)`
-/

namespace A216102.P7010702925703886546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) * A008683 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (9 - A216103 (n + 1))

end

end A216102.P7010702925703886546

/-! ## A216102.P14841014665728663908

`a(floor((n+1)/(A000040(n+5)-9)))-A216103(n+1)` with `a(0)=9`
-/

namespace A216102.P14841014665728663908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a ⌊(n + 1 : ℚ) / (A000040 (n + 5) - 9 : ℚ)⌋.toNat - A216103 (n + 1)

end

end A216102.P14841014665728663908

/-! ## A216102.P10346349720423433703

`A008683(A008574(n))+9-A216103(n+1)`
-/

namespace A216102.P10346349720423433703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (9 - A216103 (n + 1))

end

end A216102.P10346349720423433703

/-!
# A216103: [3^(5*10^(n+1)) mod 10^(2n+3) - 1]/(10^(2n+2)) mod 10.

The programs for A216103, there is no canonical definition to state claims against.
-/

/-! ## A216103.P4152096895661019166

`floor(acot(n))+9-A216102(n+1)`
-/

namespace A216103.P4152096895661019166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (9 - A216102 (n + 1))

end

end A216103.P4152096895661019166

/-! ## A216103.P18181954865623727391

`A000007(n)+9-A216102(n+1)`
-/

namespace A216103.P18181954865623727391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A216102 (n + 1))

end

end A216103.P18181954865623727391

/-! ## A216103.P4047621887355960387

`10-(A216102(n+1)+A057427(n))`
-/

namespace A216103.P4047621887355960387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A216102 (n + 1) + A057427 n)

end

end A216103.P4047621887355960387

/-! ## A216103.P11762640366591787987

`A057428(n)+10-A216102(n+1)`
-/

namespace A216103.P11762640366591787987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (10 - A216102 (n + 1))

end

end A216103.P11762640366591787987

/-! ## A216103.P8791476885698386676

`A028310(n)+9-A216102(n+1)-n`
-/

namespace A216103.P8791476885698386676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (9 - A216102 (n + 1)) - (n : ℤ)

end

end A216103.P8791476885698386676

/-! ## A216103.P15768594554352984561

`A000010(n+2)%2-A216102(n+1)+9`
-/

namespace A216103.P15768594554352984561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2 - A216102 (n + 1) + 9

end

end A216103.P15768594554352984561

/-! ## A216103.P11240731343796556663

`A000045(C(2, n+2))-A216102(n+1)+9`
-/

namespace A216103.P11240731343796556663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) - A216102 (n + 1) + 9

end

end A216103.P11240731343796556663

/-! ## A216103.P4547434035964654879

`9-A216102(n+1)-A008683(lcm(2, (n+1)²))`
-/

namespace A216103.P4547434035964654879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A216102 (n + 1) - A008683 (Nat.lcm 2 ((n + 1) ^ 2))

end

end A216103.P4547434035964654879

/-! ## A216103.P6104512716675549138

`(9-A216102(n+1))*a(A008683(12*n+8))` with `a(0)=1`
-/

namespace A216103.P6104512716675549138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 - A216102 (n + 1)) * a (A008683 (12 * n + 8)).toNat

end

end A216103.P6104512716675549138

/-! ## A216103.P10924330925504584606

`10-A216102(n+1)-A000203(((-1)^n)²)%(n+1)`
-/

namespace A216103.P10924330925504584606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A216102 (n + 1) - Int.tmod (A000203 (((-1) ^ n) ^ 2).toNat) (n + 1 : ℤ)

end

end A216103.P10924330925504584606

/-!
# A216104: 10's complement of A216105.

The programs for A216104, there is no canonical definition to state claims against.
-/

/-! ## A216104.P17395886159770616590

`floor(acot(n)+9-A216105(n+1))`
-/

namespace A216104.P17395886159770616590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (9 - A216105 (n + 1) : ℝ)⌋

end

end A216104.P17395886159770616590

/-! ## A216104.P10836083302130077608

`A000007(n)+9-A216105(n+1)`
-/

namespace A216104.P10836083302130077608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A216105 (n + 1))

end

end A216104.P10836083302130077608

/-! ## A216104.P925574446555023745

`char[A075937(n)]+9-A216105(n+1)`
-/

namespace A216104.P925574446555023745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075937 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (9 - A216105 (n + 1))

end

end A216104.P925574446555023745

/-! ## A216104.P10887054064855673605

`char[A075940(n)]+9-A216105(n+1)`
-/

namespace A216104.P10887054064855673605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075940 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (9 - A216105 (n + 1))

end

end A216104.P10887054064855673605

/-! ## A216104.P18119329735564479858

`A063524(n+1)+9-A216105(n+1)`
-/

namespace A216104.P18119329735564479858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (9 - A216105 (n + 1))

end

end A216104.P18119329735564479858

/-! ## A216104.P689829463313742256

`A036987(2*n)+9-A216105(n+1)`
-/

namespace A216104.P689829463313742256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (9 - A216105 (n + 1))

end

end A216104.P689829463313742256

/-! ## A216104.P10078056621061889080

`A008486(n)%3+9-A216105(n+1)`
-/

namespace A216104.P10078056621061889080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 n) 3 + (9 - A216105 (n + 1))

end

end A216104.P10078056621061889080

/-! ## A216104.P5927609737797003514

`9-A216105(n+1)+A028310(n)-n`
-/

namespace A216104.P5927609737797003514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A216105 (n + 1) + (A028310 n - (n : ℤ))

end

end A216104.P5927609737797003514

/-! ## A216104.P2672447892348049866

`A008683((n+1)²)+9-A216105(n+1)`
-/

namespace A216104.P2672447892348049866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (9 - A216105 (n + 1))

end

end A216104.P2672447892348049866

/-! ## A216104.P9655877220869940407

`char[A056466(n+1)]+9-A216105(n+1)`
-/

namespace A216104.P9655877220869940407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056466 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (9 - A216105 (n + 1))

end

end A216104.P9655877220869940407

/-! ## A216104.P1061146859994251897

`or(9-A216105(n+1), char[A051022(n)-n])`
-/

namespace A216104.P1061146859994251897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216105 (n + 1)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216104.P1061146859994251897

/-! ## A216104.P10145076831427990655

`val(A000040(n+1), 2)+9-A216105(n+1)`
-/

namespace A216104.P10145076831427990655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (9 - A216105 (n + 1))

end

end A216104.P10145076831427990655

/-! ## A216104.P14090348807554108518

`A000045(C(2, n+2))+9-A216105(n+1)`
-/

namespace A216104.P14090348807554108518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (9 - A216105 (n + 1))

end

end A216104.P14090348807554108518

/-! ## A216104.P13788912131560581185

`∑{d}[n+1, A008683(#)]+9-A216105(n+1)`
-/

namespace A216104.P13788912131560581185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d + (9 - A216105 (n + 1))

end

end A216104.P13788912131560581185

/-! ## A216104.P2985040738540850316

`record[A006530(n+2)+1]%2+9-A216105(n+1)`
-/

namespace A216104.P2985040738540850316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 + (9 - A216105 (n + 1))

end

end A216104.P2985040738540850316

/-! ## A216104.P15971020670648355989

`C(2, n+2)*A000010(n+1)+9-A216105(n+1)`
-/

namespace A216104.P15971020670648355989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) * A000010 (n + 1) + (9 - A216105 (n + 1))

end

end A216104.P15971020670648355989

/-! ## A216104.P11451785616496600162

`A018247(n)+A091663(n)-A216105(n+1)`
-/

namespace A216104.P11451785616496600162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A216105 (n + 1))

end

end A216104.P11451785616496600162

/-! ## A216104.P997530651001462402

`A018248(n)+A091664(n)-A216105(n+1)`
-/

namespace A216104.P997530651001462402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A216105 (n + 1))

end

end A216104.P997530651001462402

/-!
# A216105: [7^(5*10^(n+1)) mod 10^(2n+3) - 1]/(10^(2n+2)) mod 10.

The programs for A216105, there is no canonical definition to state claims against.
-/

/-! ## A216105.P2944588529382065326

`floor(acot(n)+9-A216104(n+1))`
-/

namespace A216105.P2944588529382065326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (9 - A216104 (n + 1) : ℝ)⌋

end

end A216105.P2944588529382065326

/-! ## A216105.P17948523440587770709

`A000007(n)+9-A216104(n+1)`
-/

namespace A216105.P17948523440587770709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A216104 (n + 1))

end

end A216105.P17948523440587770709

/-! ## A216105.P9412267136633534915

`10-(A216104(n+1)+A057427(n))`
-/

namespace A216105.P9412267136633534915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A216104 (n + 1) + A057427 n)

end

end A216105.P9412267136633534915

/-! ## A216105.P3145018303089309694

`10-(A216104(n+1)+A178334(n))`
-/

namespace A216105.P3145018303089309694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A216104 (n + 1) + A178334 n)

end

end A216105.P3145018303089309694

/-! ## A216105.P1442495913442170568

`9-and(A198694(n), A216104(n+1))`
-/

namespace A216105.P1442495913442170568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.land (A198694 n) (A216104 (n + 1))

end

end A216105.P1442495913442170568

/-! ## A216105.P3038443783422444183

`A084099(2*n)+9-A216104(n+1)`
-/

namespace A216105.P3038443783422444183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n) + (9 - A216104 (n + 1))

end

end A216105.P3038443783422444183

/-! ## A216105.P828461863834586264

`∏{d}[n, A001222(#)]+9-A216104(n+1)`
-/

namespace A216105.P828461863834586264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001222 d + (9 - A216104 (n + 1))

end

end A216105.P828461863834586264

/-! ## A216105.P1296632840369475742

`val(A011756(n+1), 2)+9-A216104(n+1)`
-/

namespace A216105.P1296632840369475742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A011756 (n + 1)).toNat 2 : ℤ) + (9 - A216104 (n + 1))

end

end A216105.P1296632840369475742

/-! ## A216105.P13881897082493077995

`A008683(6*(n+1)²)+9-A216104(n+1)`
-/

namespace A216105.P13881897082493077995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * (n + 1) ^ 2) + (9 - A216104 (n + 1))

end

end A216105.P13881897082493077995

/-! ## A216105.P13296630663387762203

`A000035(A008458(n))+9-A216104(n+1)`
-/

namespace A216105.P13296630663387762203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008458 n).toNat + (9 - A216104 (n + 1))

end

end A216105.P13296630663387762203

/-! ## A216105.P561463898545533228

`A091338(A008486(n))+9-A216104(n+1)`
-/

namespace A216105.P561463898545533228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091338 (A008486 n).toNat + (9 - A216104 (n + 1))

end

end A216105.P561463898545533228

/-! ## A216105.P12936059692472650250

`A018247(n)+A091663(n)-A216104(n+1)`
-/

namespace A216105.P12936059692472650250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A216104 (n + 1))

end

end A216105.P12936059692472650250

/-! ## A216105.P10243061466252260251

`A018248(n)+A091664(n)-A216104(n+1)`
-/

namespace A216105.P10243061466252260251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A216104 (n + 1))

end

end A216105.P10243061466252260251

/-! ## A216105.P16988753154115980947

`A063006(n)+A091661(n)-A216104(n+1)`
-/

namespace A216105.P16988753154115980947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A216104 (n + 1))

end

end A216105.P16988753154115980947

/-! ## A216105.P10833014936383329348

`A120817(n)+A120818(n)-A216104(n+1)`
-/

namespace A216105.P10833014936383329348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A216104 (n + 1))

end

end A216105.P10833014936383329348

/-! ## A216105.P4465716195472800006

`A225457(n)+A225460(n)-A216104(n+1)`
-/

namespace A216105.P4465716195472800006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A216104 (n + 1))

end

end A216105.P4465716195472800006

/-! ## A216105.P11117456491640897687

`A290372(n)+A290375(n)-A216104(n+1)`
-/

namespace A216105.P11117456491640897687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A216104 (n + 1))

end

end A216105.P11117456491640897687

/-! ## A216105.P17816950394682590531

`A290373(n)+A290374(n)-A216104(n+1)`
-/

namespace A216105.P17816950394682590531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A216104 (n + 1))

end

end A216105.P17816950394682590531

/-!
# A216106: The Wiener index of the tetrameric 1,3-adamantane TA(n) (see the Fath-Tabar et al. reference).

The programs for A216106, the canonical program `A216106.P7675420044983979802` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216106 has offset 1).

The definition of A216106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216106.P7675420044983979802

`50*(n+1)^3+80*(n+1)²-34*(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216106

/-- `50*(n+1)^3+80*(n+1)²-34*(n+1)` -/
def P7675420044983979802.Spec : Prop :=
  ∀ n, P7675420044983979802.a n = A216106 (n + 1)

theorem P7675420044983979802.correct : P7675420044983979802.Spec := by
  intro n
  simp only [A216106, Nat.add_sub_cancel]

end A216106

/-!
# A216107: The hyper-Wiener index of the tetrameric 1,3-adamantane TA(n) (see the Fath-Tabar et al. reference).

The programs for A216107, the canonical program `A216107.P10036006384444418253` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216107 has offset 1).

The definition of A216107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216107.P10036006384444418253

`(75*(n+1)^4+210*(n+1)^3+229*(n+1)²-178*(n+1))/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216107

/-- `(75*(n+1)^4+210*(n+1)^3+229*(n+1)²-178*(n+1))/2` -/
def P10036006384444418253.Spec : Prop :=
  ∀ n, P10036006384444418253.a n = (A216107 (n + 1) : ℚ)

end A216107

/-!
# A216108: The Wiener index of the ortho-polyphenyl chain with n hexagons (see the Dou et al. and the Deng references).

The programs for A216108, the canonical program `A216108.P7944404653769243130` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216108 has offset 1).

The definition of A216108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216108.P7944404653769243130

`12*(n+1)^3+36*(n+1)²-21*(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216108

/-- `12*(n+1)^3+36*(n+1)²-21*(n+1)` -/
def P7944404653769243130.Spec : Prop :=
  ∀ n, P7944404653769243130.a n = A216108 (n + 1)

theorem P7944404653769243130.correct : P7944404653769243130.Spec := by
  intro n
  simp only [A216108, Nat.add_sub_cancel]

end A216108

/-! ## A216108.P16990141846019589542

`(3/2+n+3)*∑[xor(6, 24*n)]`
-/

namespace A216108.P16990141846019589542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (24 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 + (n + 3 : ℚ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A216108.P16990141846019589542

namespace A216108

/-- `(3/2+n+3)*∑[xor(6, 24*n)]` -/
def P16990141846019589542.Spec : Prop :=
  ∀ n, P16990141846019589542.a n = (A216108 (n + 1) : ℚ)

end A216108

/-! ## A216108.P10722112115388592682

`((2*n+5)²-16)*(record[xor(3, n)]-n)`
-/

namespace A216108.P10722112115388592682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 5) ^ 2 : ℤ) - 16) * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ))

end

end A216108.P10722112115388592682

namespace A216108

/-- `((2*n+5)²-16)*(record[xor(3, n)]-n)` -/
def P10722112115388592682.Spec : Prop :=
  ∀ n, P10722112115388592682.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P11311469183607323483

`3*(n+1)*A145923(n)`
-/

namespace A216108.P11311469183607323483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * A145923 n)

end

end A216108.P11311469183607323483

namespace A216108

/-- `3*(n+1)*A145923(n)` -/
def P11311469183607323483.Spec : Prop :=
  ∀ n, P11311469183607323483.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P3008908424163462201

`A008486(n+1)*A145923(n)`
-/

namespace A216108.P3008908424163462201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) * A145923 n

end

end A216108.P3008908424163462201

namespace A216108

/-- `A008486(n+1)*A145923(n)` -/
def P3008908424163462201.Spec : Prop :=
  ∀ n, P3008908424163462201.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P6373103144775243345

`(A059993(n+1)+n)*(6*n+3)`
-/

namespace A216108.P6373103144775243345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059993 (n + 1) + (n : ℤ)) * (6 * n + 3 : ℤ)

end

end A216108.P6373103144775243345

namespace A216108

/-- `(A059993(n+1)+n)*(6*n+3)` -/
def P6373103144775243345.Spec : Prop :=
  ∀ n, P6373103144775243345.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P3544381768875315254

`(2*n+1)*3*(n+1)*A020742(n+1)`
-/

namespace A216108.P3544381768875315254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (3 * (n + 1)) : ℤ) * A020742 (n + 1)

end

end A216108.P3544381768875315254

namespace A216108

/-- `(2*n+1)*3*(n+1)*A020742(n+1)` -/
def P3544381768875315254.Spec : Prop :=
  ∀ n, P3544381768875315254.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P16005007080500690320

`(2*n+1)*∑[A017557(n+2)]`
-/

namespace A216108.P16005007080500690320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017557 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216108.P16005007080500690320

namespace A216108

/-- `(2*n+1)*∑[A017557(n+2)]` -/
def P16005007080500690320.Spec : Prop :=
  ∀ n, P16005007080500690320.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P3618311227345913660

`(2*n+1)*∑[A316320(n+3)]`
-/

namespace A216108.P3618311227345913660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316320 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216108.P3618311227345913660

namespace A216108

/-- `(2*n+1)*∑[A316320(n+3)]` -/
def P3618311227345913660.Spec : Prop :=
  ∀ n, P3618311227345913660.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P1750885749293392555

`A000217(2*n+1)*A016945(n+4)`
-/

namespace A216108.P1750885749293392555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) * A016945 (n + 4)

end

end A216108.P1750885749293392555

namespace A216108

/-- `A000217(2*n+1)*A016945(n+4)` -/
def P1750885749293392555.Spec : Prop :=
  ∀ n, P1750885749293392555.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P12890207180949726946

`9*A006503(2*n+1)`
-/

namespace A216108.P12890207180949726946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006503 (2 * n + 1)

end

end A216108.P12890207180949726946

namespace A216108

/-- `9*A006503(2*n+1)` -/
def P12890207180949726946.Spec : Prop :=
  ∀ n, P12890207180949726946.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P14547708740687066303

`(A155212(2*n+1)+2)*(6*n+3)`
-/

namespace A216108.P14547708740687066303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155212 (2 * n + 1) + 2) * (6 * n + 3 : ℤ)

end

end A216108.P14547708740687066303

namespace A216108

/-- `(A155212(2*n+1)+2)*(6*n+3)` -/
def P14547708740687066303.Spec : Prop :=
  ∀ n, P14547708740687066303.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P10831741392286699931

`(4*n+3-n)*A028566(2*n+1)`
-/

namespace A216108.P10831741392286699931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 3 : ℤ) - (n : ℤ)) * A028566 (2 * n + 1)

end

end A216108.P10831741392286699931

namespace A216108

/-- `(4*n+3-n)*A028566(2*n+1)` -/
def P10831741392286699931.Spec : Prop :=
  ∀ n, P10831741392286699931.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P6016583244389866734

`(A167614(2*n+1)+6*n+3)*(6*n+3)`
-/

namespace A216108.P6016583244389866734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167614 (2 * n + 1) + (6 * n + 3 : ℤ)) * (6 * n + 3 : ℤ)

end

end A216108.P6016583244389866734

namespace A216108

/-- `(A167614(2*n+1)+6*n+3)*(6*n+3)` -/
def P6016583244389866734.Spec : Prop :=
  ∀ n, P6016583244389866734.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P7672437909327137320

`(A028557(2*n+1)+6*n+3)*A008585(n+1)`
-/

namespace A216108.P7672437909327137320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028557 (2 * n + 1) + (6 * n + 3 : ℤ)) * A008585 (n + 1)

end

end A216108.P7672437909327137320

namespace A216108

/-- `(A028557(2*n+1)+6*n+3)*A008585(n+1)` -/
def P7672437909327137320.Spec : Prop :=
  ∀ n, P7672437909327137320.a n = A216108 (n + 1)

end A216108

/-! ## A216108.P3663164367066024314

`A005408(n)*A151542(A005408(n)+1)`
-/

namespace A216108.P3663164367066024314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A151542 (A005408 n + 1).toNat

end

end A216108.P3663164367066024314

namespace A216108

/-- `A005408(n)*A151542(A005408(n)+1)` -/
def P3663164367066024314.Spec : Prop :=
  ∀ n, P3663164367066024314.a n = A216108 (n + 1)

end A216108

/-!
# A216109: The hyper-Wiener index of the ortho-polyphenyl chain with n hexagons (see the Dou et al. and the Deng references).

The programs for A216109, the canonical program `A216109.P9225369424854388424` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216109 has offset 0).

The definition of A216109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216109.P9225369424854388424

`3*(n+1)*(4*n^3+32*n²+95*n+28)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216109

/-- `3*(n+1)*(4*n^3+32*n²+95*n+28)/2` -/
def P9225369424854388424.Spec : Prop :=
  ∀ n, P9225369424854388424.a n = (A216109 n : ℚ)

end A216109

/-!
# A216110: The Wiener index of the meta-polyphenyl chain with n hexagons (see the Dou et al. and the Deng references).

The programs for A216110, the canonical program `A216110.P3677165965819833793` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216110 has offset 1).

The definition of A216110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216110.P3677165965819833793

`18*(n+1)^3+18*(n+1)²-9*(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216110

/-- `18*(n+1)^3+18*(n+1)²-9*(n+1)` -/
def P3677165965819833793.Spec : Prop :=
  ∀ n, P3677165965819833793.a n = A216110 (n + 1)

theorem P3677165965819833793.correct : P3677165965819833793.Spec := by
  intro n
  simp only [A216110, Nat.add_sub_cancel]

end A216110

/-! ## A216110.P16362686648688138154

`∑[3*A059993(A016777(n))]`
-/

namespace A216110.P16362686648688138154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059993 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216110.P16362686648688138154

namespace A216110

/-- `∑[3*A059993(A016777(n))]` -/
def P16362686648688138154.Spec : Prop :=
  ∀ n, P16362686648688138154.a n = A216110 (n + 1)

end A216110

/-! ## A216110.P13168040627744487512

`∑[A049598(A016789(n))-9]`
-/

namespace A216110.P13168040627744487512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 (A016789 n).toNat - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216110.P13168040627744487512

namespace A216110

/-- `∑[A049598(A016789(n))-9]` -/
def P13168040627744487512.Spec : Prop :=
  ∀ n, P13168040627744487512.a n = A216110 (n + 1)

end A216110

/-! ## A216110.P2473019389611628904

`∑[A032528(A016969(n))-10]`
-/

namespace A216110.P2473019389611628904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (A016969 n).toNat - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216110.P2473019389611628904

namespace A216110

/-- `∑[A032528(A016969(n))-10]` -/
def P2473019389611628904.Spec : Prop :=
  ∀ n, P2473019389611628904.a n = A216110 (n + 1)

end A216110

/-! ## A216110.P3602685557688517674

`A152994((n+1)*(n+2))/(n+2)`
-/

namespace A216110.P3602685557688517674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152994 ((n + 1) * (n + 2)) : ℚ) / (n + 2 : ℚ)

end

end A216110.P3602685557688517674

namespace A216110

/-- `A152994((n+1)*(n+2))/(n+2)` -/
def P3602685557688517674.Spec : Prop :=
  ∀ n, P3602685557688517674.a n = (A216110 (n + 1) : ℚ)

end A216110

/-! ## A216110.P14263720716796024661

`A139271(A045943(n+1))/(n+2)`
-/

namespace A216110.P14263720716796024661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139271 (A045943 (n + 1)).toNat : ℚ) / (n + 2 : ℚ)

end

end A216110.P14263720716796024661

namespace A216110

/-- `A139271(A045943(n+1))/(n+2)` -/
def P14263720716796024661.Spec : Prop :=
  ∀ n, P14263720716796024661.a n = (A216110 (n + 1) : ℚ)

end A216110

/-!
# A216111: The hyper-Wiener index of the meta-polyphenyl chain with n hexagons (see the Dou et al. and the Deng references).

The programs for A216111, the canonical program `A216111.P9295764519360539552` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216111 has offset 1).

The definition of A216111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216111.P9295764519360539552

`3*(n+1)*(9*(n+1)^3+18*(n+1)²+14*(n+1)-13)*1/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216111

/-- `3*(n+1)*(9*(n+1)^3+18*(n+1)²+14*(n+1)-13)*1/2` -/
def P9295764519360539552.Spec : Prop :=
  ∀ n, P9295764519360539552.a n = (A216111 (n + 1) : ℚ)

end A216111

/-! ## A216111.P6709221774979641650

`A000338(A000326(n+2))+A000332(3*(n+1))`
-/

namespace A216111.P6709221774979641650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000338 (A000326 (n + 2)).toNat + A000332 (3 * (n + 1))

end

end A216111.P6709221774979641650

namespace A216111

/-- `A000338(A000326(n+2))+A000332(3*(n+1))` -/
def P6709221774979641650.Spec : Prop :=
  ∀ n, P6709221774979641650.a n = A216111 (n + 1)

end A216111

/-!
# A216112: The Wiener index of the para-polyphenyl chain with n hexagons (see the Dou et al. and the Deng references).

The programs for A216112, the canonical program `A216112.P2967297440361560891` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216112 has offset 1).

The definition of A216112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216112.P2967297440361560891

`24*(n+1)^3+3*(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216112

/-- `24*(n+1)^3+3*(n+1)` -/
def P2967297440361560891.Spec : Prop :=
  ∀ n, (P2967297440361560891.a n : ℤ) = A216112 (n + 1)

theorem P2967297440361560891.correct : P2967297440361560891.Spec := by
  intro n
  simp only [A216112, Nat.add_sub_cancel]

end A216112

/-! ## A216112.P6895528972802819841

`(n+1)*or(3, 24*(n+1)²)`
-/

namespace A216112.P6895528972802819841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 3 (24 * (n + 1) ^ 2)

end

end A216112.P6895528972802819841

namespace A216112

/-- `(n+1)*or(3, 24*(n+1)²)` -/
def P6895528972802819841.Spec : Prop :=
  ∀ n, (P6895528972802819841.a n : ℤ) = A216112 (n + 1)

end A216112

/-! ## A216112.P5235867755631183676

`(n+1)*xor(3, 24*(n+1)²)`
-/

namespace A216112.P5235867755631183676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 3 (24 * (n + 1) ^ 2)

end

end A216112.P5235867755631183676

namespace A216112

/-- `(n+1)*xor(3, 24*(n+1)²)` -/
def P5235867755631183676.Spec : Prop :=
  ∀ n, (P5235867755631183676.a n : ℤ) = A216112 (n + 1)

end A216112

/-! ## A216112.P5346447173630056931

`Δ[3*A339483(n)]`
-/

namespace A216112.P5346447173630056931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A339483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216112.P5346447173630056931

namespace A216112

/-- `Δ[3*A339483(n)]` -/
def P5346447173630056931.Spec : Prop :=
  ∀ n, P5346447173630056931.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P593520980327884733

`(n+1)*(A158547(n+1)+2)`
-/

namespace A216112.P593520980327884733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158547 (n + 1) + 2)

end

end A216112.P593520980327884733

namespace A216112

/-- `(n+1)*(A158547(n+1)+2)` -/
def P593520980327884733.Spec : Prop :=
  ∀ n, P593520980327884733.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P2477460167201978569

`3*(A016743(n+1)+n+1)`
-/

namespace A216112.P2477460167201978569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A016743 (n + 1) + (n + 1 : ℤ))

end

end A216112.P2477460167201978569

namespace A216112

/-- `3*(A016743(n+1)+n+1)` -/
def P2477460167201978569.Spec : Prop :=
  ∀ n, P2477460167201978569.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P7742291507355268221

`(n+1)*(A158544(n+1)+4)`
-/

namespace A216112.P7742291507355268221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158544 (n + 1) + 4)

end

end A216112.P7742291507355268221

namespace A216112

/-- `(n+1)*(A158544(n+1)+4)` -/
def P7742291507355268221.Spec : Prop :=
  ∀ n, P7742291507355268221.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P13241279194051348164

`3*(n+1)*A081585(n+1)`
-/

namespace A216112.P13241279194051348164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * A081585 (n + 1))

end

end A216112.P13241279194051348164

namespace A216112

/-- `3*(n+1)*A081585(n+1)` -/
def P13241279194051348164.Spec : Prop :=
  ∀ n, P13241279194051348164.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P849627362544510319

`9*Δ[C(Δ[n²]², 2)/12]`
-/

namespace A216112.P849627362544510319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2).toNat 2 : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (f1 (n + 1) - f1 n)

end

end A216112.P849627362544510319

namespace A216112

/-- `9*Δ[C(Δ[n²]², 2)/12]` -/
def P849627362544510319.Spec : Prop :=
  ∀ n, P849627362544510319.a n = (A216112 (n + 1) : ℚ)

end A216112

/-! ## A216112.P14017939809680029242

`3*A118465(n+1)`
-/

namespace A216112.P14017939809680029242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A118465 (n + 1)

end

end A216112.P14017939809680029242

namespace A216112

/-- `3*A118465(n+1)` -/
def P14017939809680029242.Spec : Prop :=
  ∀ n, P14017939809680029242.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P17894964759063227303

`9*A143166(n+1)`
-/

namespace A216112.P17894964759063227303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A143166 (n + 1)

end

end A216112.P17894964759063227303

namespace A216112

/-- `9*A143166(n+1)` -/
def P17894964759063227303.Spec : Prop :=
  ∀ n, P17894964759063227303.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P12424711223314502583

`Δ[Δ[n²]*A220443(n)]`
-/

namespace A216112.P12424711223314502583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A220443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216112.P12424711223314502583

namespace A216112

/-- `Δ[Δ[n²]*A220443(n)]` -/
def P12424711223314502583.Spec : Prop :=
  ∀ n, P12424711223314502583.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P9050446831130232918

`3*(A255877(n+2)-n)`
-/

namespace A216112.P9050446831130232918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A255877 (n + 2) - (n : ℤ))

end

end A216112.P9050446831130232918

namespace A216112

/-- `3*(A255877(n+2)-n)` -/
def P9050446831130232918.Spec : Prop :=
  ∀ n, P9050446831130232918.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P7590096415234993962

`(n+1)*(A010014(n+1)+1)`
-/

namespace A216112.P7590096415234993962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010014 (n + 1) + 1)

end

end A216112.P7590096415234993962

namespace A216112

/-- `(n+1)*(A010014(n+1)+1)` -/
def P7590096415234993962.Spec : Prop :=
  ∀ n, P7590096415234993962.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P7733466552967505694

`(n+1)*(A195824(n+1)+3)`
-/

namespace A216112.P7733466552967505694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A195824 (n + 1) + 3)

end

end A216112.P7733466552967505694

namespace A216112

/-- `(n+1)*(A195824(n+1)+3)` -/
def P7733466552967505694.Spec : Prop :=
  ∀ n, P7733466552967505694.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P11913595276015853791

`Δ[A016945(n)*A059270(n)]`
-/

namespace A216112.P11913595276015853791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n * A059270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216112.P11913595276015853791

namespace A216112

/-- `Δ[A016945(n)*A059270(n)]` -/
def P11913595276015853791.Spec : Prop :=
  ∀ n, P11913595276015853791.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P2742315795600765040

`A008585(n+1)*A081585(n+1)`
-/

namespace A216112.P2742315795600765040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) * A081585 (n + 1)

end

end A216112.P2742315795600765040

namespace A216112

/-- `A008585(n+1)*A081585(n+1)` -/
def P2742315795600765040.Spec : Prop :=
  ∀ n, P2742315795600765040.a n = A216112 (n + 1)

end A216112

/-! ## A216112.P864544940860187702

`(A244630(n+1)-A136016(n+1))*A008585(n+1)`
-/

namespace A216112.P864544940860187702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244630 (n + 1) - A136016 (n + 1)) * A008585 (n + 1)

end

end A216112.P864544940860187702

namespace A216112

/-- `(A244630(n+1)-A136016(n+1))*A008585(n+1)` -/
def P864544940860187702.Spec : Prop :=
  ∀ n, P864544940860187702.a n = A216112 (n + 1)

end A216112

/-!
# A216113: The hyper-Wiener index of the meta-polyphenyl chain with n hexagons (see the Dou et al. and the Deng references).

The programs for A216113, the canonical program `A216113.P12198331253904089648` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216113 has offset 1).

The definition of A216113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216113.P12198331253904089648

`3*(n+1)*(16*(n+1)^3+8*(n+1)²-5*(n+1)+9)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216113

/-- `3*(n+1)*(16*(n+1)^3+8*(n+1)²-5*(n+1)+9)/2` -/
def P12198331253904089648.Spec : Prop :=
  ∀ n, P12198331253904089648.a n = (A216113 (n + 1) : ℚ)

end A216113

/-!
# A216114: The Wiener index of a link of n fullerenes C_{20} (see the Ghorbani and Hosseinzadeh reference).

The programs for A216114, the canonical program `A216114.P17271663035259019973` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216114 has offset 1).

The definition of A216114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216114.P17271663035259019973

`200*(n+1)^3+600*(n+1)²-300*(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216114

/-- `200*(n+1)^3+600*(n+1)²-300*(n+1)` -/
def P17271663035259019973.Spec : Prop :=
  ∀ n, P17271663035259019973.a n = A216114 (n + 1)

theorem P17271663035259019973.correct : P17271663035259019973.Spec := by
  intro n
  simp only [A216114, Nat.add_sub_cancel]

end A216114

/-! ## A216114.P413887874765268727

`(A268581(n)+2*n)*(A158128(n+1)-1)`
-/

namespace A216114.P413887874765268727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268581 n + (2 * n : ℤ)) * (A158128 (n + 1) - 1)

end

end A216114.P413887874765268727

namespace A216114

/-- `(A268581(n)+2*n)*(A158128(n+1)-1)` -/
def P413887874765268727.Spec : Prop :=
  ∀ n, P413887874765268727.a n = A216114 (n + 1)

end A216114

/-! ## A216114.P354525600632217525

`(A000096(2*n+1)+5*n+3)*Δ[A017330(n)/2]`
-/

namespace A216114.P354525600632217525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017330 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (2 * n + 1) + (5 * n + 3 : ℤ) : ℚ) * (f1 (n + 1) - f1 n)

end

end A216114.P354525600632217525

namespace A216114

/-- `(A000096(2*n+1)+5*n+3)*Δ[A017330(n)/2]` -/
def P354525600632217525.Spec : Prop :=
  ∀ n, P354525600632217525.a n = (A216114 (n + 1) : ℚ)

end A216114

/-! ## A216114.P3729755284725632376

`(A017377(A017377(n))+1)*A016813(A055998(n)+1)`
-/

namespace A216114.P3729755284725632376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 (A017377 n).toNat + 1) * A016813 (A055998 n + 1).toNat

end

end A216114.P3729755284725632376

namespace A216114

/-- `(A017377(A017377(n))+1)*A016813(A055998(n)+1)` -/
def P3729755284725632376.Spec : Prop :=
  ∀ n, P3729755284725632376.a n = A216114 (n + 1)

end A216114

/-!
# A216115: The Hyper-Wiener index of a link of n fullerenes C_{20} (see the Ghorbani and Hosseinzadeh reference).

The programs for A216115, the canonical program `A216115.P7427896295463648840` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216115 has offset 1).

The definition of A216115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216115.P7427896295463648840

`10*(n+1)*(15*(n+1)^3+70*(n+1)²+134*(n+1)-117)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216115

/-- `10*(n+1)*(15*(n+1)^3+70*(n+1)²+134*(n+1)-117)` -/
def P7427896295463648840.Spec : Prop :=
  ∀ n, P7427896295463648840.a n = A216115 (n + 1)

theorem P7427896295463648840.correct : P7427896295463648840.Spec := by
  intro n
  simp only [A216115, Nat.add_sub_cancel]

end A216115

/-!
# A216116: G.f. satisfies: A(x) = (1 + x*A(x)) * (1 + x^4*A(x)).

The programs for A216116, there is no canonical definition to state claims against.
-/

/-! ## A216116.P12030735828476840473

`A023427(n+1)`
-/

namespace A216116.P12030735828476840473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023427 (n + 1)

end

end A216116.P12030735828476840473

/-! ## A216116.P17187381400386043311

`ratio[A023427(n)]*A023427(n)`
-/

namespace A216116.P17187381400386043311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023427 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A023427 n : ℚ)

end

end A216116.P17187381400386043311

/-! ## A216116.P5480724841749758007

`lcm(A023427(A005408(n)-n), A087960(n))`
-/

namespace A216116.P5480724841749758007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023427 (A005408 n - (n : ℤ)).toNat) (A087960 n)

end

end A216116.P5480724841749758007

/-! ## A216116.P8256405815212881829

`C(A028310(n), n)*A023427(A005408(n)-n)`
-/

namespace A216116.P8256405815212881829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A028310 n).toNat n : ℤ) * A023427 (A005408 n - (n : ℤ)).toNat

end

end A216116.P8256405815212881829

/-! ## A216116.P15021971200391573401

`A023427(A005408(n)-n)%A000051(n)`
-/

namespace A216116.P15021971200391573401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023427 (A005408 n - (n : ℤ)).toNat) (A000051 n)

end

end A216116.P15021971200391573401

/-! ## A216116.P3998011136031883716

`A212363(A052905(n+3))`
-/

namespace A216116.P3998011136031883716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (A052905 (n + 3)).toNat

end

end A216116.P3998011136031883716

/-! ## A216116.P11693364864124468756

`A212363(Δ[A026054(n+3)]+1)`
-/

namespace A216116.P11693364864124468756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (f1 (n + 1) - f1 n + 1).toNat

end

end A216116.P11693364864124468756

/-! ## A216116.P555307345557407087

`A212363(eq[8, A258709(n)])`
-/

namespace A216116.P555307345557407087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216116.P555307345557407087

/-!
# A216119: Number of stretching pairs in all permutations in S_n.

The programs for A216119, there is no canonical definition to state claims against.
-/

/-! ## A216119.P5951217735584821110

`abs(1-n)!*C(n+1, 4)`
-/

namespace A216119.P5951217735584821110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat * Nat.choose (n + 1) 4

end

end A216119.P5951217735584821110

/-! ## A216119.P14779561721249202450

`A317487(n+1)/3`
-/

namespace A216119.P14779561721249202450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317487 (n + 1) : ℚ) / 3

end

end A216119.P14779561721249202450

/-! ## A216119.P12890832329795575335

`A000142(abs(1-n))*A000332(n+1)`
-/

namespace A216119.P12890832329795575335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 |1 - (n : ℤ)|.toNat * A000332 (n + 1)

end

end A216119.P12890832329795575335

/-! ## A216119.P3584615501201839132

`A000332(n+1)*A132393(A000124(n))`
-/

namespace A216119.P3584615501201839132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A132393 (A000124 n).toNat

end

end A216119.P3584615501201839132

/-! ## A216119.P4506377773313129804

`A000332(n+1)*A094587(A161680(n))`
-/

namespace A216119.P4506377773313129804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A094587 (A161680 n).toNat

end

end A216119.P4506377773313129804

/-! ## A216119.P10151436209404142931

`A000332(n+1)*A111146(A238531(n+2))`
-/

namespace A216119.P10151436209404142931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A111146 (A238531 (n + 2)).toNat

end

end A216119.P10151436209404142931

/-!
# A216124: Primes which are the nearest integer to the geometric mean of the previous prime and the following prime.

The programs for A216124, the canonical program `A216124.P18024191600111702472` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216124 has offset 1).

The definition of A216124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216124.P4557592864799752667

`p?[or(1, A073271(n+1))]`
-/

namespace A216124.P4557592864799752667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A073271 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216124.P4557592864799752667

namespace A216124

/-- `p?[or(1, A073271(n+1))]` -/
def P4557592864799752667.Spec : Prop :=
  ∀ n, P4557592864799752667.a n = A216124 (n + 1)

end A216124

/-! ## A216124.P16785517495504662071

`p?[round(sqrt(A090076(n+1)))]`
-/

namespace A216124.P16785517495504662071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A090076 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216124.P16785517495504662071

namespace A216124

/-- `p?[round(sqrt(A090076(n+1)))]` -/
def P16785517495504662071.Spec : Prop :=
  ∀ n, P16785517495504662071.a n = A216124 (n + 1)

end A216124

/-! ## A216124.P18024191600111702472

`p?[floor(sqrt(A152530(n+1)))+1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216124

/-- `p?[floor(sqrt(A152530(n+1)))+1]` -/
def P18024191600111702472.Spec : Prop :=
  ∀ n, P18024191600111702472.a n = A216124 (n + 1)

theorem P18024191600111702472.correct : P18024191600111702472.Spec := by
  intro n
  simp only [A216124, Nat.add_sub_cancel]

end A216124

/-! ## A216124.P3423739019305483036

`p?[or(1, A000040(n+2)-A073272(n+1))]`
-/

namespace A216124.P3423739019305483036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000040 (n + 2) - A073272 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216124.P3423739019305483036

namespace A216124

/-- `p?[or(1, A000040(n+2)-A073272(n+1))]` -/
def P3423739019305483036.Spec : Prop :=
  ∀ n, P3423739019305483036.a n = A216124 (n + 1)

end A216124

/-! ## A216124.P17920721280900586798

`record[A006530(or(1, A073271(n+1)))]`
-/

namespace A216124.P17920721280900586798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A073271 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216124.P17920721280900586798

namespace A216124

/-- `record[A006530(or(1, A073271(n+1)))]` -/
def P17920721280900586798.Spec : Prop :=
  ∀ n, P17920721280900586798.a n = A216124 (n + 1)

end A216124

/-!
# A216125: a(n) = 5^n mod 1000.

The programs for A216125, the canonical program `A216125.P17888148394168597139` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216125 has offset 0).

The definition of A216125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216125.P17888148394168597139

`a(n-2)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=125, a(4)=625`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216125

/-- `a(n-2)` -/
def P17888148394168597139.Spec : Prop :=
  ∀ n, (P17888148394168597139.a n : ℤ) = A216125 n

theorem P17888148394168597139.correct : P17888148394168597139.Spec := by
  intro n
  simp only [A216125]

end A216125

/-!
# A216126: a(n) = 5^n mod 10000.

The programs for A216126, the canonical program `A216126.P17812320918836418919` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216126 has offset 0).

The definition of A216126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216126.P17812320918836418919

`A000351(n)%A017512(A010816(3*n+2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216126

/-- `A000351(n)%A017512(A010816(3*n+2))` -/
def P17812320918836418919.Spec : Prop :=
  ∀ n, P17812320918836418919.a n = A216126 n

theorem P17812320918836418919.correct : P17812320918836418919.Spec := by
  intro n
  simp only [A216126]

end A216126

/-!
# A216129: a(n) = 7^n mod 1000.

The programs for A216129, the canonical program `A216129.P675409899990826554` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216129 has offset 0).

The definition of A216129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216129.P675409899990826554

`(7*a(n-1))%(10^(6/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216129

/-- `(7*a(n-1))%(10^(6/2))` -/
def P675409899990826554.Spec : Prop :=
  ∀ n, P675409899990826554.a n = A216129 n

theorem P675409899990826554.correct : P675409899990826554.Spec := by
  intro n
  simp only [A216129]

end A216129

/-!
# A216130: 7^n mod 10000.

The programs for A216130, the canonical program `A216130.P16550663694502347277` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216130 has offset 1).

The definition of A216130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216130.P16550663694502347277

`A000420(n+1)%(20/2)²²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216130

/-- `A000420(n+1)%(20/2)²²` -/
def P16550663694502347277.Spec : Prop :=
  ∀ n, P16550663694502347277.a n = A216130 (n + 1)

theorem P16550663694502347277.correct : P16550663694502347277.Spec := by
  intro n
  simp only [A216130, Nat.add_sub_cancel]

end A216130

/-!
# A216131: a(n) = 11^n mod 1000.

The programs for A216131, the canonical program `A216131.P4658766947873329188` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216131 has offset 0).

The definition of A216131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216131.P4658766947873329188

`(11*a(n-1))%(10^(6/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216131

/-- `(11*a(n-1))%(10^(6/2))` -/
def P4658766947873329188.Spec : Prop :=
  ∀ n, P4658766947873329188.a n = A216131 n

theorem P4658766947873329188.correct : P4658766947873329188.Spec := by
  intro n
  simp only [A216131]

end A216131

/-!
# A216133: In the decimal expansion of Pi, the first occurrence of these primes begins at a prime position.

The programs for A216133, there is no canonical definition to state claims against.
-/

/-! ## A216133.P12916439797571363626

`p?[n*A001222(A014777(n))]`
-/

namespace A216133.P12916439797571363626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A014777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216133.P12916439797571363626

/-! ## A216133.P5473121166915923726

`eq[A000005(A014777(n)), A005128(n)]`
-/

namespace A216133.P5473121166915923726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216133.P5473121166915923726

/-! ## A216133.P68417991637783064

`eq[A005171(A014777(n)), A082023(n)]`
-/

namespace A216133.P68417991637783064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A014777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216133.P68417991637783064

/-! ## A216133.P10336922257931621109

`eq[A032742(A014777(n)), A105700(n)]`
-/

namespace A216133.P10336922257931621109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A014777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216133.P10336922257931621109

/-! ## A216133.P16201927169281231324

`p?[A000040(n+1)*A001222(A037024(n+1))]`
-/

namespace A216133.P16201927169281231324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A037024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216133.P16201927169281231324

/-!
# A216134: Numbers k such that 2 * A000217(k) + 1 is triangular.

The programs for A216134, the canonical program `A216134.P15814920964220726133` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216134 has offset 0).

The definition of A216134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216134.P15814920964220726133

`∑[6*a(n-2)-a(n-4)]-1` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216134

/-- `∑[6*a(n-2)-a(n-4)]-1` -/
def P15814920964220726133.Spec : Prop :=
  ∀ n, P15814920964220726133.a n = A216134 n

theorem P15814920964220726133.correct : P15814920964220726133.Spec := by
  intro n
  simp only [A216134]

end A216134

/-! ## A216134.P2823639946727907163

`A216162(Δ[n²])`
-/

namespace A216134.P2823639946727907163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216134.P2823639946727907163

namespace A216134

/-- `A216162(Δ[n²])` -/
def P2823639946727907163.Spec : Prop :=
  ∀ n, P2823639946727907163.a n = A216134 n

end A216134

/-! ## A216134.P16507216506881535121

`∑[A079496(n)]-1`
-/

namespace A216134.P16507216506881535121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A216134.P16507216506881535121

namespace A216134

/-- `∑[A079496(n)]-1` -/
def P16507216506881535121.Spec : Prop :=
  ∀ n, P16507216506881535121.a n = A216134 n

end A216134

/-! ## A216134.P8320406787340965739

`record[A216162(A000265(n+1))]`
-/

namespace A216134.P8320406787340965739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216134.P8320406787340965739

namespace A216134

/-- `record[A216162(A000265(n+1))]` -/
def P8320406787340965739.Spec : Prop :=
  ∀ n, P8320406787340965739.a n = A216134 n

end A216134

/-! ## A216134.P11972575487636947164

`A124124(n+1)-A006452(n)`
-/

namespace A216134.P11972575487636947164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 (n + 1) - A006452 n

end

end A216134.P11972575487636947164

namespace A216134

/-- `A124124(n+1)-A006452(n)` -/
def P11972575487636947164.Spec : Prop :=
  ∀ n, P11972575487636947164.a n = A216134 n

end A216134

/-! ## A216134.P15357136511514958987

`A124124(n+1)-A216162(2*n)`
-/

namespace A216134.P15357136511514958987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 (n + 1) - A216162 (2 * n)

end

end A216134.P15357136511514958987

namespace A216134

/-- `A124124(n+1)-A216162(2*n)` -/
def P15357136511514958987.Spec : Prop :=
  ∀ n, P15357136511514958987.a n = A216134 n

end A216134

/-! ## A216134.P13743564938895309212

`A241541(2*n)+A216162(2*n+1)`
-/

namespace A216134.P13743564938895309212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241541 (2 * n) + A216162 (2 * n + 1)

end

end A216134.P13743564938895309212

namespace A216134

/-- `A241541(2*n)+A216162(2*n+1)` -/
def P13743564938895309212.Spec : Prop :=
  ∀ n, P13743564938895309212.a n = A216134 n

end A216134

/-! ## A216134.P16709399601275046105

`∑[∑[A000129(2*A004526(n))]+1]-1`
-/

namespace A216134.P16709399601275046105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * A004526 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A216134.P16709399601275046105

namespace A216134

/-- `∑[∑[A000129(2*A004526(n))]+1]-1` -/
def P16709399601275046105.Spec : Prop :=
  ∀ n, P16709399601275046105.a n = A216134 n

end A216134

/-! ## A216134.P4456471534750720647

`A216162(2*n+1)/A004277(2*n)*4*n`
-/

namespace A216134.P4456471534750720647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216162 (2 * n + 1) : ℚ) / (A004277 (2 * n) : ℚ) * (4 * n : ℚ)

end

end A216134.P4456471534750720647

namespace A216134

/-- `A216162(2*n+1)/A004277(2*n)*4*n` -/
def P4456471534750720647.Spec : Prop :=
  ∀ n, P4456471534750720647.a n = (A216134 n : ℚ)

end A216134

/-! ## A216134.P4809268679609247582

`A006451(n)+A079496(n)-A006452(n+1)`
-/

namespace A216134.P4809268679609247582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n + (A079496 n - A006452 (n + 1))

end

end A216134.P4809268679609247582

namespace A216134

/-- `A006451(n)+A079496(n)-A006452(n+1)` -/
def P4809268679609247582.Spec : Prop :=
  ∀ n, P4809268679609247582.a n = A216134 n

end A216134

/-! ## A216134.P9486863783637512264

`floor(A077442(n)/2)`
-/

namespace A216134.P9486863783637512264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077442 n : ℚ) / 2⌋

end

end A216134.P9486863783637512264

namespace A216134

/-- `floor(A077442(n)/2)` -/
def P9486863783637512264.Spec : Prop :=
  ∀ n, P9486863783637512264.a n = A216134 n

end A216134

/-! ## A216134.P5661216203335937959

`(A082981(Δ[n²])-1)/2`
-/

namespace A216134.P5661216203335937959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1 : ℚ) / 2

end

end A216134.P5661216203335937959

namespace A216134

/-- `(A082981(Δ[n²])-1)/2` -/
def P5661216203335937959.Spec : Prop :=
  ∀ n, P5661216203335937959.a n = (A216134 n : ℚ)

end A216134

/-! ## A216134.P432655099870255216

`floor(A082981(2*n+1)/2)`
-/

namespace A216134.P432655099870255216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082981 (2 * n + 1) : ℚ) / 2⌋

end

end A216134.P432655099870255216

namespace A216134

/-- `floor(A082981(2*n+1)/2)` -/
def P432655099870255216.Spec : Prop :=
  ∀ n, P432655099870255216.a n = A216134 n

end A216134

/-! ## A216134.P10609506974762092883

`A048739(n)-A006452(n+1)`
-/

namespace A216134.P10609506974762092883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n - A006452 (n + 1)

end

end A216134.P10609506974762092883

namespace A216134

/-- `A048739(n)-A006452(n+1)` -/
def P10609506974762092883.Spec : Prop :=
  ∀ n, P10609506974762092883.a n = A216134 n

end A216134

/-! ## A216134.P13646107475367615423

`A154138(n+1)-A077241(n)`
-/

namespace A216134.P13646107475367615423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154138 (n + 1) - A077241 n

end

end A216134.P13646107475367615423

namespace A216134

/-- `A154138(n+1)-A077241(n)` -/
def P13646107475367615423.Spec : Prop :=
  ∀ n, P13646107475367615423.a n = A216134 n

end A216134

/-! ## A216134.P9122319866468019823

`floor(A266504(lt[n, A266491(n)])/2)`
-/

namespace A216134.P9122319866468019823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A216134.P9122319866468019823

namespace A216134

/-- `floor(A266504(lt[n, A266491(n)])/2)` -/
def P9122319866468019823.Spec : Prop :=
  ∀ n, P9122319866468019823.a n = A216134 n

end A216134

/-! ## A216134.P14929187745367649036

`(A266504(A042964(n+1))-1)/2`
-/

namespace A216134.P14929187745367649036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266504 (A042964 (n + 1)).toNat - 1 : ℚ) / 2

end

end A216134.P14929187745367649036

namespace A216134

/-- `(A266504(A042964(n+1))-1)/2` -/
def P14929187745367649036.Spec : Prop :=
  ∀ n, P14929187745367649036.a n = (A216134 n : ℚ)

end A216134

/-! ## A216134.P2446229217704945965

`(A266506(A047406(n+1))-1)/2`
-/

namespace A216134.P2446229217704945965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266506 (A047406 (n + 1)).toNat - 1 : ℚ) / 2

end

end A216134.P2446229217704945965

namespace A216134

/-- `(A266506(A047406(n+1))-1)/2` -/
def P2446229217704945965.Spec : Prop :=
  ∀ n, P2446229217704945965.a n = (A216134 n : ℚ)

end A216134

/-! ## A216134.P10436117404145660103

`A154141(n+1)-A276601(n+1)`
-/

namespace A216134.P10436117404145660103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154141 (n + 1) - A276601 (n + 1)

end

end A216134.P10436117404145660103

namespace A216134

/-- `A154141(n+1)-A276601(n+1)` -/
def P10436117404145660103.Spec : Prop :=
  ∀ n, P10436117404145660103.a n = A216134 n

end A216134

/-!
# A216135: E.g.f. A(x) satisfies: A(x)^A(x) = 1/(1 - x*A(x)^2).

The programs for A216135, there is no canonical definition to state claims against.
-/

/-! ## A216135.P787112838909582690

`A270890(a(n-2)+n²)` with `a(0)=1, a(1)=1`
-/

namespace A216135.P787112838909582690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A270890 (a (n - 2) + (n ^ 2 : ℤ)).toNat

end

end A216135.P787112838909582690

/-!
# A216136: E.g.f. A(x) satisfies: A(x)^A(x) = 1/(1 - x*A(x)^3).

The programs for A216136, there is no canonical definition to state claims against.
-/

/-! ## A216136.P14872899796500012425

`A326061(A289545(n))+A238731(n)`
-/

namespace A216136.P14872899796500012425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326061 (A289545 n).toNat + A238731 n

end

end A216136.P14872899796500012425

/-!
# A216143: E.g.f.: exp( Shw(x) ) where Shw(x) = Sum_{n>=0} (2*n+2)^(2*n) * x^(2*n+1)/(2*n+1)!.

The programs for A216143, there is no canonical definition to state claims against.
-/

/-! ## A216143.P6555323066885676127

`A127003(A308750(n))-2`
-/

namespace A216143.P6555323066885676127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127003 (A308750 n).toNat - 2

end

end A216143.P6555323066885676127

/-! ## A216143.P3122020642041239483

`A087232(A087214(n)*A087219(n))`
-/

namespace A216143.P3122020642041239483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 (A087214 n * A087219 n).toNat

end

end A216143.P3122020642041239483

/-!
# A216144: Square root of smallest square greater than the product of first n primes.

The programs for A216144, there is no canonical definition to state claims against.
-/

/-! ## A216144.P10868306596373888871

`A060797(n+1)+1`
-/

namespace A216144.P10868306596373888871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060797 (n + 1) + 1

end

end A216144.P10868306596373888871

/-! ## A216144.P2561368373740586790

`sqrt(A002110(n+1)+A145781(n+1))`
-/

namespace A216144.P2561368373740586790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002110 (n + 1) + A145781 (n + 1) : ℝ)

end

end A216144.P2561368373740586790

/-! ## A216144.P12070223645032325222

`ceil(A173631(n+1)/2)`
-/

namespace A216144.P12070223645032325222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173631 (n + 1) : ℚ) / 2⌉

end

end A216144.P12070223645032325222

/-! ## A216144.P17827053575073237270

`ceil(∏[sqrt(A000040(n+1))])`
-/

namespace A216144.P17827053575073237270
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A216144.P17827053575073237270

/-! ## A216144.P3058157522379967993

`ceil(∏[record[sqrt(A006530(n+2))]])`
-/

namespace A216144.P3058157522379967993
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006530 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A216144.P3058157522379967993

/-! ## A216144.P15724476056964834455

`ceil(∏[record[sqrt(A020639(n+2))]])`
-/

namespace A216144.P15724476056964834455
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A020639 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A216144.P15724476056964834455

/-! ## A216144.P7199433575015136220

`ceil(sqrt(A062797(n)))`
-/

namespace A216144.P7199433575015136220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A062797 n : ℝ)⌉

end

end A216144.P7199433575015136220

/-! ## A216144.P10025049464889561394

`ceil(sqrt(A002110(n+1)))`
-/

namespace A216144.P10025049464889561394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002110 (n + 1) : ℝ)⌉

end

end A216144.P10025049464889561394

/-! ## A216144.P137895294671002874

`ceil(sqrt(A006862(n+1)))`
-/

namespace A216144.P137895294671002874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A006862 (n + 1) : ℝ)⌉

end

end A216144.P137895294671002874

/-! ## A216144.P7897022563540311245

`ceil(sqrt(A007014(n+1)))`
-/

namespace A216144.P7897022563540311245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A007014 (n + 1) : ℝ)⌉

end

end A216144.P7897022563540311245

/-!
# A216145: Primes p such that p (mod 5) = p (mod 7).

The programs for A216145, the canonical program `A216145.P6584478330158211666` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216145 has offset 1).

The definition of A216145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216145.P6584478330158211666

`p?[a(n-4)+35]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216145

/-- `p?[a(n-4)+35]` -/
def P6584478330158211666.Spec : Prop :=
  ∀ n, (P6584478330158211666.a n : ℤ) = A216145 (n + 1)

theorem P6584478330158211666.correct : P6584478330158211666.Spec := by
  intro n
  simp only [A216145, Nat.add_sub_cancel]

end A216145

/-! ## A216145.P4360114259743388310

`p?[6*(n-n%5)+n]`
-/

namespace A216145.P4360114259743388310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℤ) - ((n % 5 : ℕ) : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216145.P4360114259743388310

namespace A216145

/-- `p?[6*(n-n%5)+n]` -/
def P4360114259743388310.Spec : Prop :=
  ∀ n, P4360114259743388310.a n = A216145 (n + 1)

end A216145

/-! ## A216145.P4525148479736494277

`A000040(eq[A039703(n+1), A039705(n+1)]+1)`
-/

namespace A216145.P4525148479736494277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A216145.P4525148479736494277

namespace A216145

/-- `A000040(eq[A039703(n+1), A039705(n+1)]+1)` -/
def P4525148479736494277.Spec : Prop :=
  ∀ n, P4525148479736494277.a n = A216145 (n + 1)

end A216145

/-! ## A216145.P14994803385893018721

`p?[A008597(2*A002266(n))+n]`
-/

namespace A216145.P14994803385893018721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (2 * A002266 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216145.P14994803385893018721

namespace A216145

/-- `p?[A008597(2*A002266(n))+n]` -/
def P14994803385893018721.Spec : Prop :=
  ∀ n, P14994803385893018721.a n = A216145 (n + 1)

end A216145

/-! ## A216145.P12455454439352367568

`p?[n*A014044(n)]`
-/

namespace A216145.P12455454439352367568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216145.P12455454439352367568

namespace A216145

/-- `p?[n*A014044(n)]` -/
def P12455454439352367568.Spec : Prop :=
  ∀ n, P12455454439352367568.a n = A216145 (n + 1)

end A216145

/-! ## A216145.P12539210624366205143

`eq[A003415(n), A014044(n)]`
-/

namespace A216145.P12539210624366205143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P12539210624366205143

namespace A216145

/-- `eq[A003415(n), A014044(n)]` -/
def P12539210624366205143.Spec : Prop :=
  ∀ n, (P12539210624366205143.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P18315354433346434900

`eq[A014044(n), A018783(n)]`
-/

namespace A216145.P18315354433346434900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P18315354433346434900

namespace A216145

/-- `eq[A014044(n), A018783(n)]` -/
def P18315354433346434900.Spec : Prop :=
  ∀ n, (P18315354433346434900.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P9941869678505841220

`eq[A014044(n), A032741(n)]`
-/

namespace A216145.P9941869678505841220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P9941869678505841220

namespace A216145

/-- `eq[A014044(n), A032741(n)]` -/
def P9941869678505841220.Spec : Prop :=
  ∀ n, (P9941869678505841220.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P5235312770034217359

`eq[A014044(n), A175126(n)]`
-/

namespace A216145.P5235312770034217359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P5235312770034217359

namespace A216145

/-- `eq[A014044(n), A175126(n)]` -/
def P5235312770034217359.Spec : Prop :=
  ∀ n, (P5235312770034217359.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P16608209101639867940

`eq[A014044(n), A302055(n)]`
-/

namespace A216145.P16608209101639867940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P16608209101639867940

namespace A216145

/-- `eq[A014044(n), A302055(n)]` -/
def P16608209101639867940.Spec : Prop :=
  ∀ n, (P16608209101639867940.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P16127279544133438880

`eq[A014044(n), A328771(n)]`
-/

namespace A216145.P16127279544133438880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P16127279544133438880

namespace A216145

/-- `eq[A014044(n), A328771(n)]` -/
def P16127279544133438880.Spec : Prop :=
  ∀ n, (P16127279544133438880.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P11369192597475892616

`eq[A014044(n), A328772(n)]`
-/

namespace A216145.P11369192597475892616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P11369192597475892616

namespace A216145

/-- `eq[A014044(n), A328772(n)]` -/
def P11369192597475892616.Spec : Prop :=
  ∀ n, (P11369192597475892616.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P16666278779012386441

`eq[A014044(n), A328847(n)]`
-/

namespace A216145.P16666278779012386441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P16666278779012386441

namespace A216145

/-- `eq[A014044(n), A328847(n)]` -/
def P16666278779012386441.Spec : Prop :=
  ∀ n, (P16666278779012386441.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P9547525441767097254

`eq[A014044(n), A388303(n)]`
-/

namespace A216145.P9547525441767097254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P9547525441767097254

namespace A216145

/-- `eq[A014044(n), A388303(n)]` -/
def P9547525441767097254.Spec : Prop :=
  ∀ n, (P9547525441767097254.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P12042405996163091727

`eq[A014044(n), A389146(n)]`
-/

namespace A216145.P12042405996163091727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P12042405996163091727

namespace A216145

/-- `eq[A014044(n), A389146(n)]` -/
def P12042405996163091727.Spec : Prop :=
  ∀ n, (P12042405996163091727.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P13790549677882501268

`eq[A014044(n), A391024(n)]`
-/

namespace A216145.P13790549677882501268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P13790549677882501268

namespace A216145

/-- `eq[A014044(n), A391024(n)]` -/
def P13790549677882501268.Spec : Prop :=
  ∀ n, (P13790549677882501268.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P17722004730681225890

`eq[A014044(n), A053989(n+1)]`
-/

namespace A216145.P17722004730681225890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P17722004730681225890

namespace A216145

/-- `eq[A014044(n), A053989(n+1)]` -/
def P17722004730681225890.Spec : Prop :=
  ∀ n, (P17722004730681225890.a n : ℤ) = A216145 (n + 1)

end A216145

/-! ## A216145.P13745467867407677066

`eq[A014044(n), A231820(n+1)]`
-/

namespace A216145.P13745467867407677066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216145.P13745467867407677066

namespace A216145

/-- `eq[A014044(n), A231820(n+1)]` -/
def P13745467867407677066.Spec : Prop :=
  ∀ n, (P13745467867407677066.a n : ℤ) = A216145 (n + 1)

end A216145

/-!
# A216147: a(n) = 2*n^n + 1.

The programs for A216147, the canonical program `A216147.P7516139435454444731` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216147 has offset 0).

The definition of A216147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^n+1` (program `A216147.P7516139435454444731`, by `A216147.P7516139435454444731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216147.P7516139435454444731

`2*n^n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216147

/-- `2*n^n+1` -/
def P7516139435454444731.Spec : Prop :=
  ∀ n, (P7516139435454444731.a n : ℤ) = A216147 n

theorem P7516139435454444731.correct : P7516139435454444731.Spec := by
  intro n
  simp only [A216147]

end A216147

/-! ## A216147.P4214518141134760859

`or(1, 2*n^n)`
-/

namespace A216147.P4214518141134760859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n ^ n)

end

end A216147.P4214518141134760859

namespace A216147

/-- `or(1, 2*n^n)` -/
def P4214518141134760859.Spec : Prop :=
  ∀ n, (P4214518141134760859.a n : ℤ) = A216147 n

end A216147

/-! ## A216147.P11696719272651363767

`xor(1, 2*n^n)`
-/

namespace A216147.P11696719272651363767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n ^ n)

end

end A216147.P11696719272651363767

namespace A216147

/-- `xor(1, 2*n^n)` -/
def P11696719272651363767.Spec : Prop :=
  ∀ n, (P11696719272651363767.a n : ℤ) = A216147 n

end A216147

/-! ## A216147.P6576299989858320794

`-xor(2*A000312(n), -1)`
-/

namespace A216147.P6576299989858320794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (2 * A000312 n) (-1)

end

end A216147.P6576299989858320794

namespace A216147

/-- `-xor(2*A000312(n), -1)` -/
def P6576299989858320794.Spec : Prop :=
  ∀ n, P6576299989858320794.a n = A216147 n

end A216147

/-!
# A216150: Smallest prime q such that sum(i=1..n-1, q mod(prime(i))) == q mod prime(n).

The programs for A216150, there is no canonical definition to state claims against.
-/

/-! ## A216150.P15346689778313025915

`A227828(lcm(n+2, (1-n)²))`
-/

namespace A216150.P15346689778313025915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227828 (Int.lcm (n + 2 : ℤ) ((1 - (n : ℤ)) ^ 2))

end

end A216150.P15346689778313025915

/-!
# A216151: a(n+1) = (Product_{k=1..n} a(k)) * Sum_{k=1..n} a(k), a(1)=1, a(2)=2.

The programs for A216151, there is no canonical definition to state claims against.
-/

/-! ## A216151.P5017796927672459018

`3*A348507(a(n-1))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A216151.P5017796927672459018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * A348507 (a (n - 1)).toNat * a (n - 1)

end

end A216151.P5017796927672459018

/-!
# A216152: A205957(n) where n is a nonprime number.

The programs for A216152, there is no canonical definition to state claims against.
-/

/-! ## A216152.P3712057829990729659

`A205957(A018252(n+1))`
-/

namespace A216152.P3712057829990729659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205957 (A018252 (n + 1)).toNat

end

end A216152.P3712057829990729659

/-! ## A216152.P4461775408162203365

`∏[A216153(n+1)]`
-/

namespace A216152.P4461775408162203365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A216152.P4461775408162203365

/-! ## A216152.P16905290381333022559

`A205957(A118742(n))`
-/

namespace A216152.P16905290381333022559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205957 (A118742 n).toNat

end

end A216152.P16905290381333022559

/-! ## A216152.P17988504484323043469

`record[A205957(A027656(n))]`
-/

namespace A216152.P17988504484323043469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205957 (A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216152.P17988504484323043469

/-! ## A216152.P11092742927432052215

`record[A205957(A028920(n))]`
-/

namespace A216152.P11092742927432052215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205957 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216152.P11092742927432052215

/-!
# A216153: The partial products of a(n) are the distinct values of the exponential of the von Mangoldt function modified by restricting the divisors to prime divisors (A205957).

The programs for A216153, the canonical program `A216153.P15491257447114026993` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216153 has offset 1).

The definition of A216153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216153.P5579884660821979486

`A205959(comp[p?[xor(1, n)]-1]+1)`
-/

namespace A216153.P5579884660821979486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A216153.P5579884660821979486

namespace A216153

/-- `A205959(comp[p?[xor(1, n)]-1]+1)` -/
def P5579884660821979486.Spec : Prop :=
  ∀ n, P5579884660821979486.a n = A216153 (n + 1)

end A216153

/-! ## A216153.P15491257447114026993

`A205959(A018252(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A216153

/-- `A205959(A018252(n+1))` -/
def P15491257447114026993.Spec : Prop :=
  ∀ n, P15491257447114026993.a n = A216153 (n + 1)

theorem P15491257447114026993.correct : P15491257447114026993.Spec := by
  intro n
  simp only [A216153, Nat.add_sub_cancel]

end A216153

/-! ## A216153.P3804153792051967865

`A205959(A065090(n+2))`
-/

namespace A216153.P3804153792051967865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (A065090 (n + 2)).toNat

end

end A216153.P3804153792051967865

namespace A216153

/-- `A205959(A065090(n+2))` -/
def P3804153792051967865.Spec : Prop :=
  ∀ n, P3804153792051967865.a n = A216153 (n + 1)

end A216153

/-! ## A216153.P16232320349984755508

`A205959(A141468(n+2))`
-/

namespace A216153.P16232320349984755508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (A141468 (n + 2)).toNat

end

end A216153.P16232320349984755508

namespace A216153

/-- `A205959(A141468(n+2))` -/
def P16232320349984755508.Spec : Prop :=
  ∀ n, P16232320349984755508.a n = A216153 (n + 1)

end A216153

/-! ## A216153.P10672812228469208619

`A205959(A060462(n+1)+1)`
-/

namespace A216153.P10672812228469208619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (A060462 (n + 1) + 1).toNat

end

end A216153.P10672812228469208619

namespace A216153

/-- `A205959(A060462(n+1)+1)` -/
def P10672812228469208619.Spec : Prop :=
  ∀ n, P10672812228469208619.a n = A216153 (n + 1)

end A216153

/-! ## A216153.P18947929715146246

`A205959(lt[A063377(n+1), A221364(n)]+1)`
-/

namespace A216153.P18947929715146246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A216153.P18947929715146246

namespace A216153

/-- `A205959(lt[A063377(n+1), A221364(n)]+1)` -/
def P18947929715146246.Spec : Prop :=
  ∀ n, P18947929715146246.a n = A216153 (n + 1)

end A216153

/-!
# A216154: Triangle read by rows, T(n,k) n>=0, k>=0, generalization of A000255.

The programs for A216154, there is no canonical definition to state claims against.
-/

/-! ## A216154.P14662151753754382888

`A007318(n)*A086764(comp[∑[n]])`
-/

namespace A216154.P14662151753754382888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A086764 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A216154.P14662151753754382888

/-! ## A216154.P6477165859087281010

`abs(A086764(A014132(n+1))*A130595(n))`
-/

namespace A216154.P6477165859087281010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086764 (A014132 (n + 1)).toNat * A130595 n|

end

end A216154.P6477165859087281010

/-! ## A216154.P7905791655403860680

`(A014473(n)+1)*A086764(A014132(n+1))`
-/

namespace A216154.P7905791655403860680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A086764 (A014132 (n + 1)).toNat

end

end A216154.P7905791655403860680

/-! ## A216154.P5508050952837580303

`ceil(A109128(n)/2)*A086764(A014132(n+1))`
-/

namespace A216154.P5508050952837580303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ * A086764 (A014132 (n + 1)).toNat

end

end A216154.P5508050952837580303

/-! ## A216154.P8055914196427606404

`(A206735(n)+A073424(n))*A086764(A014132(n+1))`
-/

namespace A216154.P8055914196427606404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A206735 n + A073424 n) * A086764 (A014132 (n + 1)).toNat

end

end A216154.P8055914196427606404

/-!
# A216155: Numbers n such that floor(sqrt(n + n^3)) = 1 + floor(sqrt(n^3)) = 1 + A000093(n).

The programs for A216155, there is no canonical definition to state claims against.
-/

/-! ## A216155.P10516265577201984658

`lt[A121489(n+1), n+1]+1`
-/

namespace A216155.P10516265577201984658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121489 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A216155.P10516265577201984658

/-! ## A216155.P15981226434375892419

`lt[A121489(A028310(n)), n]`
-/

namespace A216155.P15981226434375892419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121489 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216155.P15981226434375892419

/-! ## A216155.P71339434359218018

`lt[A121489(A000007(n)+n), n]`
-/

namespace A216155.P71339434359218018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121489 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216155.P71339434359218018

/-! ## A216155.P11924632022018896121

`lt[A121489(A000038(n)+n), n]`
-/

namespace A216155.P11924632022018896121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121489 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216155.P11924632022018896121

/-! ## A216155.P7548945651580809181

`∩[A198832(n+1), A268509(n+1)]`
-/

namespace A216155.P7548945651580809181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216155.P7548945651580809181

/-!
# A216156: Period of powers of 11 mod 10^n.

The programs for A216156, the canonical program `A216156.P15653339692435918465` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216156 has offset 1).

The definition of A216156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216156.P15653339692435918465

`10*a(n-1)` with `a(0)=10, a(1)=50`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216156

/-- `10*a(n-1)` -/
def P15653339692435918465.Spec : Prop :=
  ∀ n, (P15653339692435918465.a n : ℤ) = A216156 (n + 1)

theorem P15653339692435918465.correct : P15653339692435918465.Spec := by
  intro n
  simp only [A216156, Nat.add_sub_cancel]

end A216156

/-! ## A216156.P5439443133668605951

`10*A093143(n)`
-/

namespace A216156.P5439443133668605951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A093143 n

end

end A216156.P5439443133668605951

namespace A216156

/-- `10*A093143(n)` -/
def P5439443133668605951.Spec : Prop :=
  ∀ n, P5439443133668605951.a n = A216156 (n + 1)

end A216156

/-! ## A216156.P13044919465981012066

`A216099(n+3)/10`
-/

namespace A216156.P13044919465981012066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216099 (n + 3) : ℚ) / 10

end

end A216156.P13044919465981012066

namespace A216156

/-- `A216099(n+3)/10` -/
def P13044919465981012066.Spec : Prop :=
  ∀ n, P13044919465981012066.a n = (A216156 (n + 1) : ℚ)

end A216156

/-! ## A216156.P16660965246579693948

`lcm(2, 5*10^n)`
-/

namespace A216156.P16660965246579693948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (5 * 10 ^ n)

end

end A216156.P16660965246579693948

namespace A216156

/-- `lcm(2, 5*10^n)` -/
def P16660965246579693948.Spec : Prop :=
  ∀ n, (P16660965246579693948.a n : ℤ) = A216156 (n + 1)

end A216156

/-! ## A216156.P6646132685195650150

`10*ceil(10^n/2)`
-/

namespace A216156.P6646132685195650150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌈(10 ^ n : ℚ) / 2⌉

end

end A216156.P6646132685195650150

namespace A216156

/-- `10*ceil(10^n/2)` -/
def P6646132685195650150.Spec : Prop :=
  ∀ n, P6646132685195650150.a n = A216156 (n + 1)

end A216156

/-! ## A216156.P3575628824634957398

`lcm(4, 10^(n+1))/2`
-/

namespace A216156.P3575628824634957398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (10 ^ (n + 1)) : ℚ) / 2

end

end A216156.P3575628824634957398

namespace A216156

/-- `lcm(4, 10^(n+1))/2` -/
def P3575628824634957398.Spec : Prop :=
  ∀ n, P3575628824634957398.a n = (A216156 (n + 1) : ℚ)

end A216156

/-! ## A216156.P5870572919040406728

`abs(∏[-a(n-1)])` with `a(0)=10, a(1)=5, a(2)=10`
-/

namespace A216156.P5870572919040406728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 5, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A216156.P5870572919040406728

namespace A216156

/-- `abs(∏[-a(n-1)])` -/
def P5870572919040406728.Spec : Prop :=
  ∀ n, P5870572919040406728.a n = A216156 (n + 1)

end A216156

/-! ## A216156.P11909526843784751033

`10^(n+1)/ceil(atan(n+1))`
-/

namespace A216156.P11909526843784751033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℚ) / (⌈Real.arctan (n + 1 : ℝ)⌉ : ℚ)

end

end A216156.P11909526843784751033

namespace A216156

/-- `10^(n+1)/ceil(atan(n+1))` -/
def P11909526843784751033.Spec : Prop :=
  ∀ n, P11909526843784751033.a n = (A216156 (n + 1) : ℚ)

end A216156

/-! ## A216156.P5505331435681393708

`A051109(A008486(n)+2)`
-/

namespace A216156.P5505331435681393708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (A008486 n + 2).toNat

end

end A216156.P5505331435681393708

namespace A216156

/-- `A051109(A008486(n)+2)` -/
def P5505331435681393708.Spec : Prop :=
  ∀ n, P5505331435681393708.a n = A216156 (n + 1)

end A216156

/-! ## A216156.P2228877020200953833

`A268100(A004273(n)+2)`
-/

namespace A216156.P2228877020200953833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 (A004273 n + 2).toNat

end

end A216156.P2228877020200953833

namespace A216156

/-- `A268100(A004273(n)+2)` -/
def P2228877020200953833.Spec : Prop :=
  ∀ n, P2228877020200953833.a n = A216156 (n + 1)

end A216156

/-! ## A216156.P17904186928408375226

`A268100(A004280(n+2))`
-/

namespace A216156.P17904186928408375226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 (A004280 (n + 2)).toNat

end

end A216156.P17904186928408375226

namespace A216156

/-- `A268100(A004280(n+2))` -/
def P17904186928408375226.Spec : Prop :=
  ∀ n, P17904186928408375226.a n = A216156 (n + 1)

end A216156

/-! ## A216156.P9736166178311381968

`A039690(A135042(n+1)+2)`
-/

namespace A216156.P9736166178311381968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039690 (A135042 (n + 1) + 2).toNat

end

end A216156.P9736166178311381968

namespace A216156

/-- `A039690(A135042(n+1)+2)` -/
def P9736166178311381968.Spec : Prop :=
  ∀ n, P9736166178311381968.a n = A216156 (n + 1)

end A216156

/-! ## A216156.P12614815355766731830

`A051109(A004277(n)+2+n)`
-/

namespace A216156.P12614815355766731830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (A004277 n + 2 + (n : ℤ)).toNat

end

end A216156.P12614815355766731830

namespace A216156

/-- `A051109(A004277(n)+2+n)` -/
def P12614815355766731830.Spec : Prop :=
  ∀ n, P12614815355766731830.a n = A216156 (n + 1)

end A216156

/-! ## A216156.P2604287914228493156

`A011557(n+1)/(A057427(n)+1)`
-/

namespace A216156.P2604287914228493156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) / (A057427 n + 1 : ℚ)

end

end A216156.P2604287914228493156

namespace A216156

/-- `A011557(n+1)/(A057427(n)+1)` -/
def P2604287914228493156.Spec : Prop :=
  ∀ n, P2604287914228493156.a n = (A216156 (n + 1) : ℚ)

end A216156

/-! ## A216156.P7038120324658987374

`A011557(n+1)/A130130(n+1)`
-/

namespace A216156.P7038120324658987374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) / (A130130 (n + 1) : ℚ)

end

end A216156.P7038120324658987374

namespace A216156

/-- `A011557(n+1)/A130130(n+1)` -/
def P7038120324658987374.Spec : Prop :=
  ∀ n, P7038120324658987374.a n = (A216156 (n + 1) : ℚ)

end A216156

/-! ## A216156.P18030667240950786334

`A011557(n+1)/(1-A057428(n))`
-/

namespace A216156.P18030667240950786334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) / (1 - A057428 n : ℚ)

end

end A216156.P18030667240950786334

namespace A216156

/-- `A011557(n+1)/(1-A057428(n))` -/
def P18030667240950786334.Spec : Prop :=
  ∀ n, P18030667240950786334.a n = (A216156 (n + 1) : ℚ)

end A216156

/-! ## A216156.P14381088186232482624

`A011557(n+1)/(2-A000007(n))`
-/

namespace A216156.P14381088186232482624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) / (2 - A000007 n : ℚ)

end

end A216156.P14381088186232482624

namespace A216156

/-- `A011557(n+1)/(2-A000007(n))` -/
def P14381088186232482624.Spec : Prop :=
  ∀ n, P14381088186232482624.a n = (A216156 (n + 1) : ℚ)

end A216156

/-! ## A216156.P13583363935238617162

`A011557(n+1)/A040001(2*n)`
-/

namespace A216156.P13583363935238617162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) / (A040001 (2 * n) : ℚ)

end

end A216156.P13583363935238617162

namespace A216156

/-- `A011557(n+1)/A040001(2*n)` -/
def P13583363935238617162.Spec : Prop :=
  ∀ n, P13583363935238617162.a n = (A216156 (n + 1) : ℚ)

end A216156

/-! ## A216156.P17415838831002865274

`A011557(n+1)/(A062157(n)²+1)`
-/

namespace A216156.P17415838831002865274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (n + 1) : ℚ) / (A062157 n ^ 2 + 1 : ℚ)

end

end A216156.P17415838831002865274

namespace A216156

/-- `A011557(n+1)/(A062157(n)²+1)` -/
def P17415838831002865274.Spec : Prop :=
  ∀ n, P17415838831002865274.a n = (A216156 (n + 1) : ℚ)

end A216156

/-!
# A216157: Difference between the sum of the even divisors and the sum of the odd divisors of phi(n).

The programs for A216157, the canonical program `A216157.P14329396617965940493` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216157 has offset 3).

The definition of A216157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216157.P16046589973421524069

`A113184(A000010(n+3))`
-/

namespace A216157.P16046589973421524069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (A000010 (n + 3)).toNat

end

end A216157.P16046589973421524069

namespace A216157

/-- `A113184(A000010(n+3))` -/
def P16046589973421524069.Spec : Prop :=
  ∀ n, P16046589973421524069.a n = A216157 (n + 3)

end A216157

/-! ## A216157.P4494745483065881587

`A215947(A023022(n+3))`
-/

namespace A216157.P4494745483065881587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (A023022 (n + 3)).toNat

end

end A216157.P4494745483065881587

namespace A216157

/-- `A215947(A023022(n+3))` -/
def P4494745483065881587.Spec : Prop :=
  ∀ n, P4494745483065881587.a n = A216157 (n + 3)

end A216157

/-! ## A216157.P14329396617965940493

`A215947(A055684(n+3)+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A216157

/-- `A215947(A055684(n+3)+1)` -/
def P14329396617965940493.Spec : Prop :=
  ∀ n, P14329396617965940493.a n = A216157 (n + 3)

theorem P14329396617965940493.correct : P14329396617965940493.Spec := by
  intro n
  simp only [A216157, Nat.add_sub_cancel]

end A216157

/-! ## A216157.P784796214838833648

`A215947(A000010(n+3)/2)`
-/

namespace A216157.P784796214838833648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (SequenceMachineLib.roundAway ((A000010 (n + 3) : ℚ) / 2)).toNat

end

end A216157.P784796214838833648

namespace A216157

/-- `A215947(A000010(n+3)/2)` -/
def P784796214838833648.Spec : Prop :=
  ∀ n, P784796214838833648.a n = A216157 (n + 3)

end A216157

/-! ## A216157.P4769821712571120657

`A193388(n+3)-A193454(n+3)`
-/

namespace A216157.P4769821712571120657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193388 (n + 3) - A193454 (n + 3)

end

end A216157.P4769821712571120657

namespace A216157

/-- `A193388(n+3)-A193454(n+3)` -/
def P4769821712571120657.Spec : Prop :=
  ∀ n, P4769821712571120657.a n = A216157 (n + 3)

end A216157

/-!
# A216158: The total number of nonempty words in all length n finite languages on an alphabet of two letters.

The programs for A216158, there is no canonical definition to state claims against.
-/

/-! ## A216158.P5530705882938550607

`A000792(3*n)-A002260(A068199(n))`
-/

namespace A216158.P5530705882938550607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (3 * n) - A002260 (A068199 n).toNat

end

end A216158.P5530705882938550607

/-! ## A216158.P11430071538757655037

`2*A054404(A129722(2*n)+A122367(n))`
-/

namespace A216158.P11430071538757655037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054404 (A129722 (2 * n) + A122367 n).toNat

end

end A216158.P11430071538757655037

/-! ## A216158.P535483688947404680

`2*A054404(A121486(n+1)+A121483(n+1))`
-/

namespace A216158.P535483688947404680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054404 (A121486 (n + 1) + A121483 (n + 1)).toNat

end

end A216158.P535483688947404680

/-!
# A216159: 10's-complement of A216161.

The programs for A216159, there is no canonical definition to state claims against.
-/

/-! ## A216159.P2734792125893071749

`or(9-A216161(n+1), C(2, n))`
-/

namespace A216159.P2734792125893071749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216161 (n + 1)) (Nat.choose 2 n : ℤ)

end

end A216159.P2734792125893071749

/-! ## A216159.P11433381768397657815

`9-A216161(round(acot(n)+n)+1)`
-/

namespace A216159.P11433381768397657815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A216161 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat

end

end A216159.P11433381768397657815

/-! ## A216159.P5542082519901312147

`9-A216161(A233583(n+1)+1)`
-/

namespace A216159.P5542082519901312147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A216161 (A233583 (n + 1) + 1).toNat

end

end A216159.P5542082519901312147

/-! ## A216159.P18192906679882891384

`A000007(n)+9-A216161(n+1)`
-/

namespace A216159.P18192906679882891384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A216161 (n + 1))

end

end A216159.P18192906679882891384

/-! ## A216159.P17647804352244083340

`10-(A216161(n+1)+A057427(n))`
-/

namespace A216159.P17647804352244083340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A216161 (n + 1) + A057427 n)

end

end A216159.P17647804352244083340

/-! ## A216159.P13309359479544484113

`9-and(A198694(n), A216161(n+1))`
-/

namespace A216159.P13309359479544484113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.land (A198694 n) (A216161 (n + 1))

end

end A216159.P13309359479544484113

/-! ## A216159.P7775250781861123137

`or(9-A216161(n+1), A036987(n²))`
-/

namespace A216159.P7775250781861123137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216161 (n + 1)) (A036987 (n ^ 2))

end

end A216159.P7775250781861123137

/-! ## A216159.P664595119873749018

`A036987(2*n)+9-A216161(n+1)`
-/

namespace A216159.P664595119873749018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (9 - A216161 (n + 1))

end

end A216159.P664595119873749018

/-! ## A216159.P12540298501500205671

`A000038(n)/2+9-A216161(n+1)`
-/

namespace A216159.P12540298501500205671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) / 2 + (9 - A216161 (n + 1) : ℚ)

end

end A216159.P12540298501500205671

/-! ## A216159.P12060977542760127679

`A008458(n)%2+9-A216161(n+1)`
-/

namespace A216159.P12060977542760127679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 n) 2 + (9 - A216161 (n + 1))

end

end A216159.P12060977542760127679

/-! ## A216159.P9618229058145993165

`or(9-A216161(n+1), A099894(2*n))`
-/

namespace A216159.P9618229058145993165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216161 (n + 1)) (A099894 (2 * n))

end

end A216159.P9618229058145993165

/-! ## A216159.P13054789287391383605

`or(9-A216161(n+1), A171919(n²+1))`
-/

namespace A216159.P13054789287391383605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216161 (n + 1)) (A171919 (n ^ 2 + 1))

end

end A216159.P13054789287391383605

/-! ## A216159.P8824248829259861426

`val(A000040(n+1), 2)+9-A216161(n+1)`
-/

namespace A216159.P8824248829259861426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (9 - A216161 (n + 1))

end

end A216159.P8824248829259861426

/-! ## A216159.P15122182035941734613

`and(1, A006093(n+1))+9-A216161(n+1)`
-/

namespace A216159.P15122182035941734613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006093 (n + 1)) + (9 - A216161 (n + 1))

end

end A216159.P15122182035941734613

/-! ## A216159.P11279485396241960655

`A000045(C(2, n+2))+9-A216161(n+1)`
-/

namespace A216159.P11279485396241960655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (9 - A216161 (n + 1))

end

end A216159.P11279485396241960655

/-! ## A216159.P10062426139969346014

`or(9-A216161(n+1), A000010(n+1)%2)`
-/

namespace A216159.P10062426139969346014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216161 (n + 1)) (Int.tmod (A000010 (n + 1)) 2)

end

end A216159.P10062426139969346014

/-! ## A216159.P5382805289567604579

`9-A216161(n+1)+A004277(n)-2*n`
-/

namespace A216159.P5382805289567604579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A216161 (n + 1) + (A004277 n - (2 * n : ℤ))

end

end A216159.P5382805289567604579

/-! ## A216159.P2624018816358417747

`A008683(A008574(n))+9-A216161(n+1)`
-/

namespace A216159.P2624018816358417747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (9 - A216161 (n + 1))

end

end A216159.P2624018816358417747

/-! ## A216159.P4402267455456265183

`A018247(n)+A091663(n)-A216161(n+1)`
-/

namespace A216159.P4402267455456265183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A216161 (n + 1))

end

end A216159.P4402267455456265183

/-! ## A216159.P6588518198812030438

`A018248(n)+A091664(n)-A216161(n+1)`
-/

namespace A216159.P6588518198812030438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A216161 (n + 1))

end

end A216159.P6588518198812030438

/-!
# A216161: [11^(5*10^n) mod 10^(2n+2) - 1]/(10^(2n+1)) mod 10.

The programs for A216161, there is no canonical definition to state claims against.
-/

/-! ## A216161.P13303586168862195881

`floor(acot(n))+9-A216159(n+1)`
-/

namespace A216161.P13303586168862195881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (9 - A216159 (n + 1))

end

end A216161.P13303586168862195881

/-! ## A216161.P8855135517981293443

`A000007(n)+9-A216159(n+1)`
-/

namespace A216161.P8855135517981293443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (9 - A216159 (n + 1))

end

end A216161.P8855135517981293443

/-! ## A216161.P17546069133044904418

`char[A075943(n)]+9-A216159(n+1)`
-/

namespace A216161.P17546069133044904418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075943 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (9 - A216159 (n + 1))

end

end A216161.P17546069133044904418

/-! ## A216161.P4075212890489690652

`or(9-A216159(n+1), char[A065949(n)])`
-/

namespace A216161.P4075212890489690652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065949 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216159 (n + 1)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216161.P4075212890489690652

/-! ## A216161.P16624794432668574120

`or(9-A216159(n+1), char[A129868(n)])`
-/

namespace A216161.P16624794432668574120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129868 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216159 (n + 1)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216161.P16624794432668574120

/-! ## A216161.P490213802890063154

`A019590(n+2)+9-A216159(n+1)`
-/

namespace A216161.P490213802890063154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + (9 - A216159 (n + 1))

end

end A216161.P490213802890063154

/-! ## A216161.P13192003649072068535

`A036987(2*n)+9-A216159(n+1)`
-/

namespace A216161.P13192003649072068535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (9 - A216159 (n + 1))

end

end A216161.P13192003649072068535

/-! ## A216161.P10562651672167547276

`9-A216159(n+1)-A073097(2*n)`
-/

namespace A216161.P10562651672167547276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A216159 (n + 1) - A073097 (2 * n)

end

end A216161.P10562651672167547276

/-! ## A216161.P7718308985809863614

`or(9-A216159(n+1), char[A061858(n)²])`
-/

namespace A216161.P7718308985809863614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 - A216159 (n + 1)) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216161.P7718308985809863614

/-! ## A216161.P5551782736985929143

`A008683((n+1)²)+9-A216159(n+1)`
-/

namespace A216161.P5551782736985929143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (9 - A216159 (n + 1))

end

end A216161.P5551782736985929143

/-! ## A216161.P15940564902838828384

`char[A129857(n+1)]+9-A216159(n+1)`
-/

namespace A216161.P15940564902838828384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129857 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (9 - A216159 (n + 1))

end

end A216161.P15940564902838828384

/-! ## A216161.P11714881906533531534

`C(2, comp[A000032(n)])+9-A216159(n+1)`
-/

namespace A216161.P11714881906533531534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℤ) + (9 - A216159 (n + 1))

end

end A216161.P11714881906533531534

/-! ## A216161.P5606596600712936264

`A000010(n+2)%2+9-A216159(n+1)`
-/

namespace A216161.P5606596600712936264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2 + (9 - A216159 (n + 1))

end

end A216161.P5606596600712936264

/-! ## A216161.P1483897589247822967

`val(A000040(n+1), 2)+9-A216159(n+1)`
-/

namespace A216161.P1483897589247822967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ) + (9 - A216159 (n + 1))

end

end A216161.P1483897589247822967

/-! ## A216161.P9333887640615255939

`A000045(C(2, n+2))+9-A216159(n+1)`
-/

namespace A216161.P9333887640615255939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (9 - A216159 (n + 1))

end

end A216161.P9333887640615255939

/-! ## A216161.P4150259176263406217

`A018247(n)+A091663(n)-A216159(n+1)`
-/

namespace A216161.P4150259176263406217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A216159 (n + 1))

end

end A216161.P4150259176263406217

/-! ## A216161.P11969489143220886912

`A018248(n)+A091664(n)-A216159(n+1)`
-/

namespace A216161.P11969489143220886912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A216159 (n + 1))

end

end A216161.P11969489143220886912

/-!
# A216162: Sequences A006452 and A216134 interlaced.

The programs for A216162, the canonical program `A216162.P16698667562609771538` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216162 has offset 0).

The definition of A216162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216162.P16698667562609771538

`floor(A266504(A080412(n))/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216162

/-- `floor(A266504(A080412(n))/2)` -/
def P16698667562609771538.Spec : Prop :=
  ∀ n, P16698667562609771538.a n = A216162 n

theorem P16698667562609771538.correct : P16698667562609771538.Spec := by
  intro n
  simp only [A216162]

end A216162

/-! ## A216162.P16664579071757128793

`(A266504(A080412(n))-A000035(n))/2`
-/

namespace A216162.P16664579071757128793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266504 (A080412 n).toNat - A000035 n : ℚ) / 2

end

end A216162.P16664579071757128793

namespace A216162

/-- `(A266504(A080412(n))-A000035(n))/2` -/
def P16664579071757128793.Spec : Prop :=
  ∀ n, P16664579071757128793.a n = (A216162 n : ℚ)

end A216162

/-! ## A216162.P6463006521165469384

`A266504(A080412(n))/2-and(1, n)/A141310(n)`
-/

namespace A216162.P6463006521165469384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266504 (A080412 n).toNat : ℚ) / 2 - (Nat.land 1 n : ℚ) / (A141310 n : ℚ)

end

end A216162.P6463006521165469384

namespace A216162

/-- `A266504(A080412(n))/2-and(1, n)/A141310(n)` -/
def P6463006521165469384.Spec : Prop :=
  ∀ n, P6463006521165469384.a n = (A216162 n : ℚ)

end A216162

/-! ## A216162.P3301829196664437913

`ceil(A266504(A080412(n))/2+A020639(2*(n+1))/5)-1`
-/

namespace A216162.P3301829196664437913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A266504 (A080412 n).toNat : ℚ) / 2 + (A020639 (2 * (n + 1)) : ℚ) / 5⌉ - 1

end

end A216162.P3301829196664437913

namespace A216162

/-- `ceil(A266504(A080412(n))/2+A020639(2*(n+1))/5)-1` -/
def P3301829196664437913.Spec : Prop :=
  ∀ n, P3301829196664437913.a n = A216162 n

end A216162

/-!
# A216164: Period of powers of 7 mod 10^n.

The programs for A216164, the canonical program `A216164.P5232441132571943675` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216164 has offset 1).

The definition of A216164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216164.P5232441132571943675

`lcm(4, ceil(10^(n-1)/2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216164

/-- `lcm(4, ceil(10^(n-1)/2))` -/
def P5232441132571943675.Spec : Prop :=
  ∀ n, (P5232441132571943675.a n : ℤ) = A216164 (n + 1)

theorem P5232441132571943675.correct : P5232441132571943675.Spec := by
  intro n
  simp only [A216164, Nat.add_sub_cancel]

end A216164

/-! ## A216164.P7294436047314141793

`A216099(A028310(n))`
-/

namespace A216164.P7294436047314141793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216099 (A028310 n).toNat

end

end A216164.P7294436047314141793

namespace A216164

/-- `A216099(A028310(n))` -/
def P7294436047314141793.Spec : Prop :=
  ∀ n, P7294436047314141793.a n = A216164 (n + 1)

end A216164

/-! ## A216164.P17838915970433230808

`A216099(A000007(n)+n)`
-/

namespace A216164.P17838915970433230808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216099 (A000007 n + (n : ℤ)).toNat

end

end A216164.P17838915970433230808

namespace A216164

/-- `A216099(A000007(n)+n)` -/
def P17838915970433230808.Spec : Prop :=
  ∀ n, P17838915970433230808.a n = A216164 (n + 1)

end A216164

/-! ## A216164.P14857676316318668510

`A216099(A004277(n)-n)`
-/

namespace A216164.P14857676316318668510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216099 (A004277 n - (n : ℤ)).toNat

end

end A216164.P14857676316318668510

namespace A216164

/-- `A216099(A004277(n)-n)` -/
def P14857676316318668510.Spec : Prop :=
  ∀ n, P14857676316318668510.a n = A216164 (n + 1)

end A216164

/-! ## A216164.P13643738474884269793

`A216099(gcd(n, A004277(n)))`
-/

namespace A216164.P13643738474884269793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216099 (Int.gcd (n : ℤ) (A004277 n))

end

end A216164.P13643738474884269793

namespace A216164

/-- `A216099(gcd(n, A004277(n)))` -/
def P13643738474884269793.Spec : Prop :=
  ∀ n, P13643738474884269793.a n = A216164 (n + 1)

end A216164

/-!
# A216165: Composite numbers and 1 which yield a prime whenever a 1 is inserted anywhere in them, including at the beginning or end.

The programs for A216165, there is no canonical definition to state claims against.
-/

/-! ## A216165.P6861608906698095562

`record[A171435(A068679(n+1))]`
-/

namespace A216165.P6861608906698095562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A068679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216165.P6861608906698095562

/-! ## A216165.P1657750656060674205

`filter[A068679(n+1), A005171(#)]`
-/

namespace A216165.P1657750656060674205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A216165.P1657750656060674205

/-! ## A216165.P9693184042469779164

`filter[A068679(n+1), A292438(#)]`
-/

namespace A216165.P9693184042469779164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A216165.P9693184042469779164

/-! ## A216165.P17311744140891480044

`record[A056583(A068679(n+2))]`
-/

namespace A216165.P17311744140891480044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (A068679 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216165.P17311744140891480044

/-! ## A216165.P10922082493028848031

`∩[A068679(n+1), A179445(n+1)]`
-/

namespace A216165.P10922082493028848031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216165.P10922082493028848031

/-! ## A216165.P12130678023398161672

`∩[A068679(n+1), A100490(n)]`
-/

namespace A216165.P12130678023398161672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216165.P12130678023398161672

/-!
# A216166: Composite numbers and 1 which yield a prime whenever a 3 is inserted anywhere in them (including at the beginning or end).

The programs for A216166, there is no canonical definition to state claims against.
-/

/-! ## A216166.P17521204404484020351

`record[A171435(A158594(n+1))]`
-/

namespace A216166.P17521204404484020351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A158594 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216166.P17521204404484020351

/-! ## A216166.P11586893383494150858

`filter[A158594(n+1), A005171(#)]`
-/

namespace A216166.P11586893383494150858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A216166.P11586893383494150858

/-! ## A216166.P9916147735246700238

`filter[A158594(n+1), A292438(#)]`
-/

namespace A216166.P9916147735246700238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A216166.P9916147735246700238

/-! ## A216166.P5253575696961287397

`record[A005451(A158594(n+2))]`
-/

namespace A216166.P5253575696961287397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A158594 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216166.P5253575696961287397

/-! ## A216166.P1147290599003479702

`∩[A158594(n+1), A100490(n)]`
-/

namespace A216166.P1147290599003479702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216166.P1147290599003479702

/-!
# A216168: Composite numbers and 1 which yield a prime whenever a 7 is inserted anywhere in them, including at the beginning or end.

The programs for A216168, there is no canonical definition to state claims against.
-/

/-! ## A216168.P14841329909688057951

`record[A171435(A069832(n+1))]`
-/

namespace A216168.P14841329909688057951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A069832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216168.P14841329909688057951

/-! ## A216168.P7749027265552794900

`filter[A069832(n+1), A005171(#)]`
-/

namespace A216168.P7749027265552794900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A216168.P7749027265552794900

/-! ## A216168.P805833994298896285

`filter[A069832(n+1), A292438(#)]`
-/

namespace A216168.P805833994298896285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A216168.P805833994298896285

/-! ## A216168.P17265173054126634262

`record[A191558(A069832(-xor(n, -1)))]`
-/

namespace A216168.P17265173054126634262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A069832 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216168.P17265173054126634262

/-! ## A216168.P4454178443881096581

`record[A191558(A069832(n^floor(atan(n))))]`
-/

namespace A216168.P4454178443881096581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A069832 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216168.P4454178443881096581

/-!
# A216169: Composite numbers > 9 which yield a prime whenever a 0 is inserted between any two digits.

The programs for A216169, there is no canonical definition to state claims against.
-/

/-! ## A216169.P16131029191147802597

`filter[A164329(n+1), A005171(#)]`
-/

namespace A216169.P16131029191147802597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A216169.P16131029191147802597

/-! ## A216169.P8415983906057716996

`filter[A164329(n+1), A066247(#)]`
-/

namespace A216169.P8415983906057716996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A216169.P8415983906057716996

/-! ## A216169.P12179397010136065503

`filter[A164329(n+1), A202238(#)]`
-/

namespace A216169.P12179397010136065503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A216169.P12179397010136065503

/-! ## A216169.P16138389614283560779

`filter[A164329(n+1), A292438(#)]`
-/

namespace A216169.P16138389614283560779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A216169.P16138389614283560779

/-! ## A216169.P8325487130851778321

`filter[A164329(n+1), A323162(#)]`
-/

namespace A216169.P8325487130851778321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A216169.P8325487130851778321

/-! ## A216169.P17008366937012953157

`∩[A038510(n+1), A164329(n+1)]`
-/

namespace A216169.P17008366937012953157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P17008366937012953157

/-! ## A216169.P536259424468398343

`∩[A067793(n+1), A164329(n+1)]`
-/

namespace A216169.P536259424468398343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P536259424468398343

/-! ## A216169.P17281863247574005134

`∩[A038509(n+1), A164329(n+1)]`
-/

namespace A216169.P17281863247574005134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P17281863247574005134

/-! ## A216169.P14216068870941828006

`∩[A164329(n+1), A100490(n)]`
-/

namespace A216169.P14216068870941828006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P14216068870941828006

/-! ## A216169.P12762997249922870893

`∩[A053795(n+1), A164329(n+1)]`
-/

namespace A216169.P12762997249922870893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P12762997249922870893

/-! ## A216169.P17573104557766280303

`∩[A069063(n+1), A164329(n+1)]`
-/

namespace A216169.P17573104557766280303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P17573104557766280303

/-! ## A216169.P17644404057932927848

`∩[A090818(n+1), A164329(n+1)]`
-/

namespace A216169.P17644404057932927848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P17644404057932927848

/-! ## A216169.P776170361729350575

`∩[A067800(n+1), A164329(n+1)]`
-/

namespace A216169.P776170361729350575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P776170361729350575

/-! ## A216169.P4600985108441034808

`∩[A014076(n+1), A164329(n+1)]`
-/

namespace A216169.P4600985108441034808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P4600985108441034808

/-! ## A216169.P10002142282406303326

`∩[A067887(n+1), A164329(n+1)]`
-/

namespace A216169.P10002142282406303326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P10002142282406303326

/-! ## A216169.P9100053910735553485

`∩[A071904(n+1), A164329(n+1)]`
-/

namespace A216169.P9100053910735553485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P9100053910735553485

/-! ## A216169.P317831188369815858

`∩[A164329(n+1), A333039(n+1)]`
-/

namespace A216169.P317831188369815858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P317831188369815858

/-! ## A216169.P12142343040097404582

`∩[A078505(n+1), A164329(n+1)]`
-/

namespace A216169.P12142343040097404582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P12142343040097404582

/-! ## A216169.P164069374511874834

`∩[A164329(n+1), A270574(n+1)]`
-/

namespace A216169.P164069374511874834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P164069374511874834

/-! ## A216169.P15144030687756485266

`∩[A083247(n+1), A164329(n+1)]`
-/

namespace A216169.P15144030687756485266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216169.P15144030687756485266

/-!
# A216170: Fermat pseudoprimes to base 2 of the form (n^2 + 2*n)/3.

The programs for A216170, there is no canonical definition to state claims against.
-/

/-! ## A216170.P5704475470607826804

`∩[A001567(n+1), A014641(n)]`
-/

namespace A216170.P5704475470607826804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216170.P5704475470607826804

/-! ## A216170.P12802022395684090222

`∩[A178723(n+1), A014641(n)]`
-/

namespace A216170.P12802022395684090222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216170.P12802022395684090222

/-! ## A216170.P16412933482583658209

`∩[A215326(n+1), A014641(n)]`
-/

namespace A216170.P16412933482583658209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216170.P16412933482583658209

/-! ## A216170.P14282153250462021671

`∩[A001567(n+1), A000567(n)]`
-/

namespace A216170.P14282153250462021671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216170.P14282153250462021671

/-! ## A216170.P16298951392569101447

`∩[A178723(n+1), A000567(n)]`
-/

namespace A216170.P16298951392569101447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216170.P16298951392569101447

/-! ## A216170.P1753491297991436437

`∩[A215326(n+1), A000567(n)]`
-/

namespace A216170.P1753491297991436437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216170.P1753491297991436437

/-! ## A216170.P7380157537727235249

`∩[A001567(n+1), A256320(n)]`
-/

namespace A216170.P7380157537727235249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216170.P7380157537727235249

/-! ## A216170.P14307712618439590534

`∩[A178723(n+1), A256320(n)]`
-/

namespace A216170.P14307712618439590534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216170.P14307712618439590534

/-!
# A216171: G.f. A(x) satisfies: A( x - A(x)^3 ) = x+x^3 - A(x)^3.

The programs for A216171, there is no canonical definition to state claims against.
-/

/-! ## A216171.P17172177479693792384

`A322036(A125500(n+1)+1)`
-/

namespace A216171.P17172177479693792384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322036 (A125500 (n + 1) + 1).toNat

end

end A216171.P17172177479693792384

/-! ## A216171.P2494790217523591466

`A063198(A049377(n)+A045847(n))`
-/

namespace A216171.P2494790217523591466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (A049377 n + A045847 n).toNat

end

end A216171.P2494790217523591466

/-!
# A216172: Number of all possible tetrahedra of any size, having reverse orientation to the original regular tetrahedron, formed when intersecting the latter by planes parallel to its sides and dividing its edges into n equal parts.

The programs for A216172, the canonical program `A216172.P17845687902603190377` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216172 has offset 1).

The definition of A216172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216172.P17845687902603190377

`((n+1)^4+2*(n+1)^3-5*(n+1)²-6*(n+1)+4-4*(-1)^((n+1)%3))/72`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216172

/-- `((n+1)^4+2*(n+1)^3-5*(n+1)²-6*(n+1)+4-4*(-1)^((n+1)%3))/72` -/
def P17845687902603190377.Spec : Prop :=
  ∀ n, P17845687902603190377.a n = (A216172 (n + 1) : ℚ)

end A216172

/-! ## A216172.P4242451879573798402

`∑[∑[floor(∑[n/3])]]`
-/

namespace A216172.P4242451879573798402
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f3 j⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216172.P4242451879573798402

namespace A216172

/-- `∑[∑[floor(∑[n/3])]]` -/
def P4242451879573798402.Spec : Prop :=
  ∀ n, P4242451879573798402.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P13443476745585221398

`∑[C(n, 2)]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A216172.P13443476745585221398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A216172.P13443476745585221398

namespace A216172

/-- `∑[C(n, 2)]+a(n-3)` -/
def P13443476745585221398.Spec : Prop :=
  ∀ n, (P13443476745585221398.a n : ℤ) = A216172 (n + 1)

end A216172

/-! ## A216172.P17262410648009397537

`a(n-3)+C(n+1, 3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A216172.P17262410648009397537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + Nat.choose (n + 1) 3

end

end A216172.P17262410648009397537

namespace A216172

/-- `a(n-3)+C(n+1, 3)` -/
def P17262410648009397537.Spec : Prop :=
  ∀ n, (P17262410648009397537.a n : ℤ) = A216172 (n + 1)

end A216172

/-! ## A216172.P464662298462529505

`floor(∑[∑[∑[a(n-3)+1]]])` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A216172.P464662298462529505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f3 =>
  f3 (n - 3) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216172.P464662298462529505

namespace A216172

/-- `floor(∑[∑[∑[a(n-3)+1]]])` -/
def P464662298462529505.Spec : Prop :=
  ∀ n, (P464662298462529505.a n : ℤ) = A216172 (n + 1)

end A216172

/-! ## A216172.P15111634131795514317

`∑[∑[n]-n]+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A216172.P15111634131795514317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A216172.P15111634131795514317

namespace A216172

/-- `∑[∑[n]-n]+a(n-3)` -/
def P15111634131795514317.Spec : Prop :=
  ∀ n, P15111634131795514317.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P3598861224869184151

`a(n-3)-∑[n-∑[n]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A216172.P3598861224869184151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216172.P3598861224869184151

namespace A216172

/-- `a(n-3)-∑[n-∑[n]]` -/
def P3598861224869184151.Spec : Prop :=
  ∀ n, P3598861224869184151.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P1489676738121718031

`floor(C(A000217(n)+n, 2)/9)`
-/

namespace A216172.P1489676738121718031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A000217 n + (n : ℤ)).toNat 2 : ℚ) / 9⌋

end

end A216172.P1489676738121718031

namespace A216172

/-- `floor(C(A000217(n)+n, 2)/9)` -/
def P1489676738121718031.Spec : Prop :=
  ∀ n, P1489676738121718031.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P4163203685308097253

`A055278(n+4)-A057524(n)`
-/

namespace A216172.P4163203685308097253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055278 (n + 4) - A057524 n

end

end A216172.P4163203685308097253

namespace A216172

/-- `A055278(n+4)-A057524(n)` -/
def P4163203685308097253.Spec : Prop :=
  ∀ n, P4163203685308097253.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P5425574075434256209

`A216175(n+1)-A070893(n+1)`
-/

namespace A216172.P5425574075434256209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216175 (n + 1) - A070893 (n + 1)

end

end A216172.P5425574075434256209

namespace A216172

/-- `A216175(n+1)-A070893(n+1)` -/
def P5425574075434256209.Spec : Prop :=
  ∀ n, P5425574075434256209.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P3920492382809962863

`A216173(n+1)%A067047(n+1)`
-/

namespace A216172.P3920492382809962863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216173 (n + 1)) (A067047 (n + 1))

end

end A216172.P3920492382809962863

namespace A216172

/-- `A216173(n+1)%A067047(n+1)` -/
def P3920492382809962863.Spec : Prop :=
  ∀ n, P3920492382809962863.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P11293845699828879599

`A115264(2*n)-A002623(n)`
-/

namespace A216172.P11293845699828879599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 (2 * n) - A002623 n

end

end A216172.P11293845699828879599

namespace A216172

/-- `A115264(2*n)-A002623(n)` -/
def P11293845699828879599.Spec : Prop :=
  ∀ n, P11293845699828879599.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P10584810231323666488

`A115376(2*(n+1))-A115375(2*n+1)`
-/

namespace A216172.P10584810231323666488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115376 (2 * (n + 1)) - A115375 (2 * n + 1)

end

end A216172.P10584810231323666488

namespace A216172

/-- `A115376(2*(n+1))-A115375(2*n+1)` -/
def P10584810231323666488.Spec : Prop :=
  ∀ n, P10584810231323666488.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P18281473485160463027

`A115376(2*n+2)%A115375(2*n+1)`
-/

namespace A216172.P18281473485160463027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115376 (2 * n + 2)) (A115375 (2 * n + 1))

end

end A216172.P18281473485160463027

namespace A216172

/-- `A115376(2*n+2)%A115375(2*n+1)` -/
def P18281473485160463027.Spec : Prop :=
  ∀ n, P18281473485160463027.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P14130237839808208008

`∑[A165188(2*(n+1))]-A165188(2*(n+1))`
-/

namespace A216172.P14130237839808208008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A165188 (2 * (n + 1))

end

end A216172.P14130237839808208008

namespace A216172

/-- `∑[A165188(2*(n+1))]-A165188(2*(n+1))` -/
def P14130237839808208008.Spec : Prop :=
  ∀ n, P14130237839808208008.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P13274301722442940389

`A210631(2*n+9)`
-/

namespace A216172.P13274301722442940389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210631 (2 * n + 9)

end

end A216172.P13274301722442940389

namespace A216172

/-- `A210631(2*n+9)` -/
def P13274301722442940389.Spec : Prop :=
  ∀ n, P13274301722442940389.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P5694949521508844259

`floor((C(record[A347633(n+1)]+1, 2)+1)/9)`
-/

namespace A216172.P5694949521508844259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat 2 + 1 : ℚ) / 9⌋

end

end A216172.P5694949521508844259

namespace A216172

/-- `floor((C(record[A347633(n+1)]+1, 2)+1)/9)` -/
def P5694949521508844259.Spec : Prop :=
  ∀ n, P5694949521508844259.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P520322476190338441

`A011871(∑[n]+n)`
-/

namespace A216172.P520322476190338441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011871 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A216172.P520322476190338441

namespace A216172

/-- `A011871(∑[n]+n)` -/
def P520322476190338441.Spec : Prop :=
  ∀ n, P520322476190338441.a n = A216172 (n + 1)

end A216172

/-! ## A216172.P2491909590792852978

`A011862(A027379(n)-n)/2`
-/

namespace A216172.P2491909590792852978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011862 (A027379 n - (n : ℤ)).toNat : ℚ) / 2

end

end A216172.P2491909590792852978

namespace A216172

/-- `A011862(A027379(n)-n)/2` -/
def P2491909590792852978.Spec : Prop :=
  ∀ n, P2491909590792852978.a n = (A216172 (n + 1) : ℚ)

end A216172

/-!
# A216173: Number of all possible tetrahedra of any size and orientation, formed when intersecting the original regular tetrahedron by planes parallel to its sides and dividing its edges into n equal parts.

The programs for A216173, the canonical program `A216173.P1512218337134807179` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216173 has offset 1).

The definition of A216173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216173.P1512218337134807179

`A000332(n+4)+A216172(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216173

/-- `A000332(n+4)+A216172(n+1)` -/
def P1512218337134807179.Spec : Prop :=
  ∀ n, P1512218337134807179.a n = A216173 (n + 1)

theorem P1512218337134807179.correct : P1512218337134807179.Spec := by
  intro n
  simp only [A216173, Nat.add_sub_cancel]

end A216173

/-! ## A216173.P6374771027265904452

`∑[∑[∑[∑[(n%3)!]]]]`
-/

namespace A216173.P6374771027265904452
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216173.P6374771027265904452

namespace A216173

/-- `∑[∑[∑[∑[(n%3)!]]]]` -/
def P6374771027265904452.Spec : Prop :=
  ∀ n, (P6374771027265904452.a n : ℤ) = A216173 (n + 1)

end A216173

/-! ## A216173.P15975859057465216977

`∑[∑[∑[floor(4*(n+1)/3)]]]`
-/

namespace A216173.P15975859057465216977
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n + 1 : ℚ) / 3)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216173.P15975859057465216977

namespace A216173

/-- `∑[∑[∑[floor(4*(n+1)/3)]]]` -/
def P15975859057465216977.Spec : Prop :=
  ∀ n, P15975859057465216977.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P8742990363094638504

`floor(∑[∑[∑[a(n-3)+4]]])` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A216173.P8742990363094638504
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f3 =>
  f3 (n - 3) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216173.P8742990363094638504

namespace A216173

/-- `floor(∑[∑[∑[a(n-3)+4]]])` -/
def P8742990363094638504.Spec : Prop :=
  ∀ n, (P8742990363094638504.a n : ℤ) = A216173 (n + 1)

end A216173

/-! ## A216173.P3978342923540688063

`A092498(n)+a(n-1)` with `a(0)=1`
-/

namespace A216173.P3978342923540688063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092498 n + a (n - 1)

end

end A216173.P3978342923540688063

namespace A216173

/-- `A092498(n)+a(n-1)` -/
def P3978342923540688063.Spec : Prop :=
  ∀ n, P3978342923540688063.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P5851250927958510429

`∑[A000969(n)]+a(n-1)` with `a(0)=1`
-/

namespace A216173.P5851250927958510429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A216173.P5851250927958510429

namespace A216173

/-- `∑[A000969(n)]+a(n-1)` -/
def P5851250927958510429.Spec : Prop :=
  ∀ n, P5851250927958510429.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P8715259246576468486

`A238702(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A216173.P8715259246576468486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A238702 (n + 1) - a (n - 1)

end

end A216173.P8715259246576468486

namespace A216173

/-- `A238702(n+1)-a(n-1)` -/
def P8715259246576468486.Spec : Prop :=
  ∀ n, P8715259246576468486.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P13287098230165226243

`∑[A092498(n)]%A017212(n)`
-/

namespace A216173.P13287098230165226243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017212 n)

end

end A216173.P13287098230165226243

namespace A216173

/-- `∑[A092498(n)]%A017212(n)` -/
def P13287098230165226243.Spec : Prop :=
  ∀ n, P13287098230165226243.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P8064280927917433935

`lcm(∑[A092498(n)], A020985(n))`
-/

namespace A216173.P8064280927917433935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A216173.P8064280927917433935

namespace A216173

/-- `lcm(∑[A092498(n)], A020985(n))` -/
def P8064280927917433935.Spec : Prop :=
  ∀ n, (P8064280927917433935.a n : ℤ) = A216173 (n + 1)

end A216173

/-! ## A216173.P14555839983746328932

`or(∑[A092498(n)], A000007(n))`
-/

namespace A216173.P14555839983746328932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A216173.P14555839983746328932

namespace A216173

/-- `or(∑[A092498(n)], A000007(n))` -/
def P14555839983746328932.Spec : Prop :=
  ∀ n, P14555839983746328932.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P9854163945480363564

`∑[∑[A000969(n)]]%A020460(n+1)`
-/

namespace A216173.P9854163945480363564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A020460 (n + 1))

end

end A216173.P9854163945480363564

namespace A216173

/-- `∑[∑[A000969(n)]]%A020460(n+1)` -/
def P9854163945480363564.Spec : Prop :=
  ∀ n, P9854163945480363564.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P15054277916224049435

`A216172(n+1)+A176145(n+4)-A117662(n+1)`
-/

namespace A216173.P15054277916224049435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (n + 1) + (A176145 (n + 4) - A117662 (n + 1))

end

end A216173.P15054277916224049435

namespace A216173

/-- `A216172(n+1)+A176145(n+4)-A117662(n+1)` -/
def P15054277916224049435.Spec : Prop :=
  ∀ n, P15054277916224049435.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P49657393353454966

`A216172(n+1)+A211380(n+4)-A211381(n+4)`
-/

namespace A216173.P49657393353454966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (n + 1) + (A211380 (n + 4) - A211381 (n + 4))

end

end A216173.P49657393353454966

namespace A216173

/-- `A216172(n+1)+A211380(n+4)-A211381(n+4)` -/
def P49657393353454966.Spec : Prop :=
  ∀ n, P49657393353454966.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P2202477170153342125

`A000601(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A216173.P2202477170153342125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000601 (2 * n) + a (n - 1)

end

end A216173.P2202477170153342125

namespace A216173

/-- `A000601(2*n)+a(n-1)` -/
def P2202477170153342125.Spec : Prop :=
  ∀ n, P2202477170153342125.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P17762294657755468434

`gcd(∑[A000601(2*n)], A000038(n))`
-/

namespace A216173.P17762294657755468434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A216173.P17762294657755468434

namespace A216173

/-- `gcd(∑[A000601(2*n)], A000038(n))` -/
def P17762294657755468434.Spec : Prop :=
  ∀ n, (P17762294657755468434.a n : ℤ) = A216173 (n + 1)

end A216173

/-! ## A216173.P2986516195429707392

`A097701(2*n)`
-/

namespace A216173.P2986516195429707392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097701 (2 * n)

end

end A216173.P2986516195429707392

namespace A216173

/-- `A097701(2*n)` -/
def P2986516195429707392.Spec : Prop :=
  ∀ n, P2986516195429707392.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P10636961190444665869

`A115270(4*n)`
-/

namespace A216173.P10636961190444665869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115270 (4 * n)

end

end A216173.P10636961190444665869

namespace A216173

/-- `A115270(4*n)` -/
def P10636961190444665869.Spec : Prop :=
  ∀ n, P10636961190444665869.a n = A216173 (n + 1)

end A216173

/-! ## A216173.P13481843612673354249

`A029002(4*n)+a(n-1)` with `a(0)=1`
-/

namespace A216173.P13481843612673354249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029002 (4 * n) + a (n - 1)

end

end A216173.P13481843612673354249

namespace A216173

/-- `A029002(4*n)+a(n-1)` -/
def P13481843612673354249.Spec : Prop :=
  ∀ n, P13481843612673354249.a n = A216173 (n + 1)

end A216173

/-!
# A216174: Number of Schroeder n-paths with no flat steps at ground level and equally spaced returns.

The programs for A216174, there is no canonical definition to state claims against.
-/

/-! ## A216174.P9777962378801086778

`or(A081562(n), A132224(A081562(n)))`
-/

namespace A216174.P9777962378801086778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081562 n) (A132224 (A081562 n).toNat)

end

end A216174.P9777962378801086778

/-! ## A216174.P305609545072525704

`or(A081562(n), A170974(A077999(n)))`
-/

namespace A216174.P305609545072525704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081562 n) (A170974 (A077999 n).toNat)

end

end A216174.P305609545072525704

/-! ## A216174.P17663827653667593065

`A299478(A032256(n+2))`
-/

namespace A216174.P17663827653667593065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299478 (A032256 (n + 2)).toNat

end

end A216174.P17663827653667593065

/-!
# A216175: Number of all polyhedra (tetrahedra of any orientation and octahedra) of any size, formed when intersecting a regular tetrahedron by planes parallel to its sides and dividing its edges into n equal parts.

The programs for A216175, the canonical program `A216175.P3202071248840124972` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216175 has offset 1).

The definition of A216175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216175.P3202071248840124972

`∑[∑[∑[A106252(n+1)]]]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216175

/-- `∑[∑[∑[A106252(n+1)]]]` -/
def P3202071248840124972.Spec : Prop :=
  ∀ n, P3202071248840124972.a n = A216175 (n + 1)

theorem P3202071248840124972.correct : P3202071248840124972.Spec := by
  intro n
  simp only [A216175, Nat.add_sub_cancel]

end A216175

/-! ## A216175.P3411960963305987597

`∑[A173196(n+1)+A092498(n)]`
-/

namespace A216175.P3411960963305987597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 1) + A092498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216175.P3411960963305987597

namespace A216175

/-- `∑[A173196(n+1)+A092498(n)]` -/
def P3411960963305987597.Spec : Prop :=
  ∀ n, P3411960963305987597.a n = A216175 (n + 1)

end A216175

/-! ## A216175.P10885911245382899742

`A216172(n+1)+A070893(n+1)`
-/

namespace A216175.P10885911245382899742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (n + 1) + A070893 (n + 1)

end

end A216175.P10885911245382899742

namespace A216175

/-- `A216172(n+1)+A070893(n+1)` -/
def P10885911245382899742.Spec : Prop :=
  ∀ n, P10885911245382899742.a n = A216175 (n + 1)

end A216175

/-! ## A216175.P5900720766118764565

`∑[∑[A002620(n+1)+A000969(n)]]`
-/

namespace A216175.P5900720766118764565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + A000969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216175.P5900720766118764565

namespace A216175

/-- `∑[∑[A002620(n+1)+A000969(n)]]` -/
def P5900720766118764565.Spec : Prop :=
  ∀ n, P5900720766118764565.a n = A216175 (n + 1)

end A216175

/-! ## A216175.P3676844220242415220

`∑[∑[∑[A049625(n+1)-1]]]`
-/

namespace A216175.P3676844220242415220
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049625 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216175.P3676844220242415220

namespace A216175

/-- `∑[∑[∑[A049625(n+1)-1]]]` -/
def P3676844220242415220.Spec : Prop :=
  ∀ n, P3676844220242415220.a n = A216175 (n + 1)

end A216175

/-! ## A216175.P11255257501898114654

`∑[∑[∑[A063208(n+2)+n]]]`
-/

namespace A216175.P11255257501898114654
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063208 (n + 2) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216175.P11255257501898114654

namespace A216175

/-- `∑[∑[∑[A063208(n+2)+n]]]` -/
def P11255257501898114654.Spec : Prop :=
  ∀ n, P11255257501898114654.a n = A216175 (n + 1)

end A216175

/-! ## A216175.P508902385663709107

`∑[A000601(2*n)+∑[A002620(n+1)]]`
-/

namespace A216175.P508902385663709107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216175.P508902385663709107

namespace A216175

/-- `∑[A000601(2*n)+∑[A002620(n+1)]]` -/
def P508902385663709107.Spec : Prop :=
  ∀ n, P508902385663709107.a n = A216175 (n + 1)

end A216175

/-! ## A216175.P7336331718863334172

`∑[∑[A002620(n+1)+A001840(2*n+1)]]`
-/

namespace A216175.P7336331718863334172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + A001840 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216175.P7336331718863334172

namespace A216175

/-- `∑[∑[A002620(n+1)+A001840(2*n+1)]]` -/
def P7336331718863334172.Spec : Prop :=
  ∀ n, P7336331718863334172.a n = A216175 (n + 1)

end A216175

/-!
# A216176: Inner product of the Zeckendorf binary representation of n and its reverse.

The programs for A216176, the canonical program `A216176.P2544016362055679949` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216176 has offset 1).

The definition of A216176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216176.P2544016362055679949

`A159780(∑[A129761(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A216176

/-- `A159780(∑[A129761(n)])` -/
def P2544016362055679949.Spec : Prop :=
  ∀ n, P2544016362055679949.a n = A216176 (n + 1)

theorem P2544016362055679949.correct : P2544016362055679949.Spec := by
  intro n
  simp only [A216176, Nat.add_sub_cancel]

end A216176

/-! ## A216176.P14115255005496157643

`A159780(A003714(n+1))`
-/

namespace A216176.P14115255005496157643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (A003714 (n + 1)).toNat

end

end A216176.P14115255005496157643

namespace A216176

/-- `A159780(A003714(n+1))` -/
def P14115255005496157643.Spec : Prop :=
  ∀ n, P14115255005496157643.a n = A216176 (n + 1)

end A216176

/-! ## A216176.P16332393567702791341

`A159780(record[A179821(n+1)])`
-/

namespace A216176.P16332393567702791341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216176.P16332393567702791341

namespace A216176

/-- `A159780(record[A179821(n+1)])` -/
def P16332393567702791341.Spec : Prop :=
  ∀ n, P16332393567702791341.a n = A216176 (n + 1)

end A216176

/-! ## A216176.P224358940092665618

`A159780(A290258(n+2)/3)`
-/

namespace A216176.P224358940092665618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (SequenceMachineLib.roundAway ((A290258 (n + 2) : ℚ) / 3)).toNat

end

end A216176.P224358940092665618

namespace A216176

/-- `A159780(A290258(n+2)/3)` -/
def P224358940092665618.Spec : Prop :=
  ∀ n, P224358940092665618.a n = A216176 (n + 1)

end A216176

/-! ## A216176.P9160535242800069584

`A159780(eq[A000007(n), A213370(n)])`
-/

namespace A216176.P9160535242800069584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159780 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A216176.P9160535242800069584

namespace A216176

/-- `A159780(eq[A000007(n), A213370(n)])` -/
def P9160535242800069584.Spec : Prop :=
  ∀ n, P9160535242800069584.a n = A216176 (n + 1)

end A216176

/-! ## A216176.P11914528681920813299

`A000120(A003714(n+1))-A095734(n+1)`
-/

namespace A216176.P11914528681920813299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 (n + 1)).toNat - A095734 (n + 1)

end

end A216176.P11914528681920813299

namespace A216176

/-- `A000120(A003714(n+1))-A095734(n+1)` -/
def P11914528681920813299.Spec : Prop :=
  ∀ n, P11914528681920813299.a n = A216176 (n + 1)

end A216176

/-!
# A216177: Primes p=prime(i) of level (1,4), i.e., such that A118534(i) = prime(i-4).

The programs for A216177, there is no canonical definition to state claims against.
-/

/-! ## A216177.P16443633317919064023

`∩[A074982(n+1), A098032(n+1)]`
-/

namespace A216177.P16443633317919064023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216177.P16443633317919064023

/-!
# A216178: Period 4: repeat [4, 1, 0, -3].

The programs for A216178, there is no canonical definition to state claims against.
-/

/-! ## A216178.P5894196107239315047

`A168361(n+1)+A084100(n+4)`
-/

namespace A216178.P5894196107239315047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1) + A084100 (n + 4)

end

end A216178.P5894196107239315047

/-!
# A216179: a(n) = 10^n + 3.

The programs for A216179, the canonical program `A216179.P6172652376279185942` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216179 has offset 1).

The definition of A216179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(n+1)+3` (program `A216179.P6172652376279185942`, by `A216179.P6172652376279185942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216179.P6172652376279185942

`10^(n+1)+3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A216179

/-- `10^(n+1)+3` -/
def P6172652376279185942.Spec : Prop :=
  ∀ n, (P6172652376279185942.a n : ℤ) = A216179 (n + 1)

theorem P6172652376279185942.correct : P6172652376279185942.Spec := by
  intro n
  simp only [A216179, Nat.add_sub_cancel]

end A216179

/-! ## A216179.P13865199976395779683

`or(1, A133384(n))`
-/

namespace A216179.P13865199976395779683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133384 n)

end

end A216179.P13865199976395779683

namespace A216179

/-- `or(1, A133384(n))` -/
def P13865199976395779683.Spec : Prop :=
  ∀ n, P13865199976395779683.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P13513887705518209382

`or(1, 2*A199685(n))`
-/

namespace A216179.P13513887705518209382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A199685 n)

end

end A216179.P13513887705518209382

namespace A216179

/-- `or(1, 2*A199685(n))` -/
def P13513887705518209382.Spec : Prop :=
  ∀ n, P13513887705518209382.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P4771165017758814858

`or(1, 6*A126109(n))`
-/

namespace A216179.P4771165017758814858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * A126109 n)

end

end A216179.P4771165017758814858

namespace A216179

/-- `or(1, 6*A126109(n))` -/
def P4771165017758814858.Spec : Prop :=
  ∀ n, P4771165017758814858.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P9599533404040526188

`or(1, A011557(n+1)+2)`
-/

namespace A216179.P9599533404040526188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A011557 (n + 1) + 2)

end

end A216179.P9599533404040526188

namespace A216179

/-- `or(1, A011557(n+1)+2)` -/
def P9599533404040526188.Spec : Prop :=
  ∀ n, P9599533404040526188.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P326381750125222678

`or(1, A178500(n+1)+2)`
-/

namespace A216179.P326381750125222678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A178500 (n + 1) + 2)

end

end A216179.P326381750125222678

namespace A216179

/-- `or(1, A178500(n+1)+2)` -/
def P326381750125222678.Spec : Prop :=
  ∀ n, P326381750125222678.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P9004068222106196189

`or(1, A002283(n+1)+3)`
-/

namespace A216179.P9004068222106196189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002283 (n + 1) + 3)

end

end A216179.P9004068222106196189

namespace A216179

/-- `or(1, A002283(n+1)+3)` -/
def P9004068222106196189.Spec : Prop :=
  ∀ n, P9004068222106196189.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P4294264924430078867

`or(1, 3*A093137(n+1))`
-/

namespace A216179.P4294264924430078867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A093137 (n + 1))

end

end A216179.P4294264924430078867

namespace A216179

/-- `or(1, 3*A093137(n+1))` -/
def P4294264924430078867.Spec : Prop :=
  ∀ n, P4294264924430078867.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P1892477626931743484

`or(1, 2*(A198971(n)+2))`
-/

namespace A216179.P1892477626931743484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (A198971 n + 2))

end

end A216179.P1892477626931743484

namespace A216179

/-- `or(1, 2*(A198971(n)+2))` -/
def P1892477626931743484.Spec : Prop :=
  ∀ n, P1892477626931743484.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P1489117498614765507

`or(1, 3*(A033175(n)+3))`
-/

namespace A216179.P1489117498614765507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * (A033175 n + 3))

end

end A216179.P1489117498614765507

namespace A216179

/-- `or(1, 3*(A033175(n)+3))` -/
def P1489117498614765507.Spec : Prop :=
  ∀ n, P1489117498614765507.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P9704827698925724080

`or(1, A000462(∑[n+2]+3))`
-/

namespace A216179.P9704827698925724080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000462 (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A216179.P9704827698925724080

namespace A216179

/-- `or(1, A000462(∑[n+2]+3))` -/
def P9704827698925724080.Spec : Prop :=
  ∀ n, P9704827698925724080.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P9327349447059643607

`xor(1, A286508(2*n+1)+2)`
-/

namespace A216179.P9327349447059643607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A286508 (2 * n + 1) + 2)

end

end A216179.P9327349447059643607

namespace A216179

/-- `xor(1, A286508(2*n+1)+2)` -/
def P9327349447059643607.Spec : Prop :=
  ∀ n, P9327349447059643607.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P17667507708063337611

`abs(2*(Δ[A002279(n)]-1)+5)`
-/

namespace A216179.P17667507708063337611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (f1 (n + 1) - f1 n - 1) + 5|

end

end A216179.P17667507708063337611

namespace A216179

/-- `abs(2*(Δ[A002279(n)]-1)+5)` -/
def P17667507708063337611.Spec : Prop :=
  ∀ n, P17667507708063337611.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P18118222824146943420

`xor(A178334(n)!, A133384(n))`
-/

namespace A216179.P18118222824146943420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A178334 n).toNat : ℤ) (A133384 n)

end

end A216179.P18118222824146943420

namespace A216179

/-- `xor(A178334(n)!, A133384(n))` -/
def P18118222824146943420.Spec : Prop :=
  ∀ n, P18118222824146943420.a n = A216179 (n + 1)

end A216179

/-! ## A216179.P13928546252498654172

`lcm(A002283(n+1)+4, A033999(n))`
-/

namespace A216179.P13928546252498654172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002283 (n + 1) + 4) (A033999 n)

end

end A216179.P13928546252498654172

namespace A216179

/-- `lcm(A002283(n+1)+4, A033999(n))` -/
def P13928546252498654172.Spec : Prop :=
  ∀ n, (P13928546252498654172.a n : ℤ) = A216179 (n + 1)

end A216179

/-! ## A216179.P7911394729451244095

`xor(A007318(record[(n-3)*n/2]), A133384(n))`
-/

namespace A216179.P7911394729451244095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat) (A133384 n)

end

end A216179.P7911394729451244095

namespace A216179

/-- `xor(A007318(record[(n-3)*n/2]), A133384(n))` -/
def P7911394729451244095.Spec : Prop :=
  ∀ n, P7911394729451244095.a n = A216179 (n + 1)

end A216179

/-!
# A216182: Riordan array ((1+x)/(1-x)^2, x(1+x)^2/(1-x)^2).

The programs for A216182, there is no canonical definition to state claims against.
-/

/-! ## A216182.P11319792317386822378

`A112743(A185869(n+1))`
-/

namespace A216182.P11319792317386822378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112743 (A185869 (n + 1)).toNat

end

end A216182.P11319792317386822378

/-! ## A216182.P9410810521603744657

`A112743(A185870(n+1)-1)`
-/

namespace A216182.P9410810521603744657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112743 (A185870 (n + 1) - 1).toNat

end

end A216182.P9410810521603744657

/-! ## A216182.P2208985278176325602

`A112743(A061579(n)+A016789(n))`
-/

namespace A216182.P2208985278176325602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112743 (A061579 n + A016789 n).toNat

end

end A216182.P2208985278176325602

/-! ## A216182.P4217447662613443239

`A112743(A114327(n)+A016825(n))`
-/

namespace A216182.P4217447662613443239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112743 (A114327 n + A016825 n).toNat

end

end A216182.P4217447662613443239

/-! ## A216182.P2791660602926058685

`A112743(A038722(n+1)+A016777(n))`
-/

namespace A216182.P2791660602926058685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112743 (A038722 (n + 1) + A016777 n).toNat

end

end A216182.P2791660602926058685

/-! ## A216182.P7542119199541069134

`A140750(A361975(n+1))`
-/

namespace A216182.P7542119199541069134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A361975 (n + 1)).toNat

end

end A216182.P7542119199541069134

/-!
# A216183: Numbers m such that A059514(m) = 0.

The programs for A216183, there is no canonical definition to state claims against.
-/

/-! ## A216183.P15430839776822780235

`eq[0, A059514(n+1)]+1`
-/

namespace A216183.P15430839776822780235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216183.P15430839776822780235

/-! ## A216183.P12976519288851100555

`A063660(eq[0, A059514(n+1)])`
-/

namespace A216183.P12976519288851100555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216183.P12976519288851100555

/-! ## A216183.P868479055392806104

`A153152(eq[0, A059514(n+1)])`
-/

namespace A216183.P868479055392806104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216183.P868479055392806104

/-! ## A216183.P14712544047939686751

`eq[0, A059514(A000007(n)+n)]`
-/

namespace A216183.P14712544047939686751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216183.P14712544047939686751

/-! ## A216183.P17108044321774786960

`eq[0, A059514(A233583(n+1))]`
-/

namespace A216183.P17108044321774786960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216183.P17108044321774786960

/-!
# A216185: a(n) is the smallest odd number k with GCD(k,n)=1 such that all the powers of 2 mod k are distinct from n mod k, or 0 if n is a power of 2.

The programs for A216185, there is no canonical definition to state claims against.
-/

/-! ## A216185.P18023103405225793579

`A316553(A037284(n+2)+1)`
-/

namespace A216185.P18023103405225793579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316553 (A037284 (n + 2) + 1).toNat

end

end A216185.P18023103405225793579

/-!
# A216187: Number of labeled rooted trees on n nodes such that each internal node has an odd number of children.

The programs for A216187, there is no canonical definition to state claims against.
-/

/-! ## A216187.P106810442488496931

`n*A162653(abs(1-n))`
-/

namespace A216187.P106810442488496931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A162653 |1 - (n : ℤ)|.toNat

end

end A216187.P106810442488496931

/-! ## A216187.P9809439844116641081

`n*A003602(A112934(n))`
-/

namespace A216187.P9809439844116641081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003602 (A112934 n).toNat

end

end A216187.P9809439844116641081

/-! ## A216187.P4789744820131474549

`n*A003602(A113143(∑[n+3]))`
-/

namespace A216187.P4789744820131474549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003602 (A113143 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A216187.P4789744820131474549

/-!
# A216188: Number of unordered pairs of anagrammatic (positive) integers adding to n.

The programs for A216188, there is no canonical definition to state claims against.
-/

/-! ## A216188.P15911661696352602225

`ceil(A331218(n+1)/2)`
-/

namespace A216188.P15911661696352602225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331218 (n + 1) : ℚ) / 2⌉

end

end A216188.P15911661696352602225

/-! ## A216188.P2563902124770763495

`A110654(A331218(n+1))`
-/

namespace A216188.P2563902124770763495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A331218 (n + 1)).toNat

end

end A216188.P2563902124770763495

/-! ## A216188.P5318900006075771405

`A004526(A331218(n+1)+1)`
-/

namespace A216188.P5318900006075771405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331218 (n + 1) + 1).toNat

end

end A216188.P5318900006075771405

/-! ## A216188.P8642708945675575720

`A123108(A331218(n+1)+1)`
-/

namespace A216188.P8642708945675575720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A331218 (n + 1) + 1).toNat

end

end A216188.P8642708945675575720

/-! ## A216188.P6943019354543222468

`A008619(A331218(n+1)+1)-1`
-/

namespace A216188.P6943019354543222468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A331218 (n + 1) + 1).toNat - 1

end

end A216188.P6943019354543222468

/-! ## A216188.P237469077259065557

`val(A038754(A331218(n+1)+1), 3)`
-/

namespace A216188.P237469077259065557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038754 (A331218 (n + 1) + 1).toNat).toNat 3

end

end A216188.P237469077259065557

/-! ## A216188.P1793408347812580573

`(A331218(n+1)+A059841(n+1))/2`
-/

namespace A216188.P1793408347812580573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331218 (n + 1) + A059841 (n + 1) : ℚ) / 2

end

end A216188.P1793408347812580573

/-! ## A216188.P11222975784230656765

`∑{e}[A016116(A331218(n+1)+1), #]`
-/

namespace A216188.P11222975784230656765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A331218 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A216188.P11222975784230656765

/-! ## A216188.P15901145543063191544

`A200748(n)%A008619(A331218(n+1)+1)`
-/

namespace A216188.P15901145543063191544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A008619 (A331218 (n + 1) + 1).toNat)

end

end A216188.P15901145543063191544

/-! ## A216188.P12848376168310483706

`A215029(A215032(n+1))+A008619(A331218(n+1)+1)`
-/

namespace A216188.P12848376168310483706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A215032 (n + 1)).toNat + A008619 (A331218 (n + 1) + 1).toNat

end

end A216188.P12848376168310483706

/-!
# A216189: Numbers n whose odd Collatz steps (except for 1) are all primes.

The programs for A216189, there is no canonical definition to state claims against.
-/

/-! ## A216189.P7264633053315232326

`eq[A026492(A274741(n)), A135136(n)]`
-/

namespace A216189.P7264633053315232326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 (A274741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135136 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216189.P7264633053315232326

/-! ## A216189.P7890821962276165238

`eq[A135136(n), A208673(A331562(n))]`
-/

namespace A216189.P7890821962276165238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135136 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (A331562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216189.P7890821962276165238

/-! ## A216189.P15526035154336747113

`eq[A137331(n), A208673(A331562(n))]`
-/

namespace A216189.P15526035154336747113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (A331562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216189.P15526035154336747113

/-! ## A216189.P9027262354710879880

`lt[A056239(n+1), A112966(A102377(n))]`
-/

namespace A216189.P9027262354710879880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112966 (A102377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216189.P9027262354710879880

/-! ## A216189.P10479130439883787696

`lt[A347270(n+1), A198197(A102376(n))]`
-/

namespace A216189.P10479130439883787696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198197 (A102376 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216189.P10479130439883787696

/-!
# A216191: Triangle T read by rows: T(n,k) equals the Manhattan distance between n and k when integers are arranged in a spiral.

The programs for A216191, there is no canonical definition to state claims against.
-/

/-! ## A216191.P10888951719371588901

`A303536(A095859(n+1)%record[A107230(n)])`
-/

namespace A216191.P10888951719371588901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (Int.tmod (A095859 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A216191.P10888951719371588901

/-! ## A216191.P11959288450182118012

`A001222((A140303(n)%A075935(n))%A273456(n))`
-/

namespace A216191.P11959288450182118012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (Int.tmod (A140303 n) (A075935 n)) (A273456 n)).toNat

end

end A216191.P11959288450182118012

/-! ## A216191.P11324053161330406091

`A303536(A095859(n+1))`
-/

namespace A216191.P11324053161330406091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A095859 (n + 1)).toNat

end

end A216191.P11324053161330406091

/-! ## A216191.P7611936773450738065

`A303536(A025581(n)^A007318(n))`
-/

namespace A216191.P7611936773450738065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A216191.P7611936773450738065

/-! ## A216191.P9592904558008978986

`A020639(A250336(n+1))%A004736(n+1)`
-/

namespace A216191.P9592904558008978986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A250336 (n + 1)).toNat) (A004736 (n + 1))

end

end A216191.P9592904558008978986

/-!
# A216195: Abelian complexity function of the period-doubling sequence (A096268).

The programs for A216195, the canonical program `A216195.P5070679371522791591` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216195 has offset 1).

The definition of A216195 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007302, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216195.P5070679371522791591

`A007302(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A216195

/-- `A007302(n+1)+1` -/
def P5070679371522791591.Spec : Prop :=
  ∀ n, P5070679371522791591.a n = A216195 (n + 1)

theorem P5070679371522791591.correct : P5070679371522791591.Spec := by
  intro n
  simp only [A216195, Nat.add_sub_cancel]

end A216195

/-! ## A216195.P2647494087461665388

`A280737(n+1)+2`
-/

namespace A216195.P2647494087461665388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (n + 1) + 2

end

end A216195.P2647494087461665388

namespace A216195

/-- `A280737(n+1)+2` -/
def P2647494087461665388.Spec : Prop :=
  ∀ n, P2647494087461665388.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P17646986956482557644

`∑[1-A101660(n)]+1`
-/

namespace A216195.P17646986956482557644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A101660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216195.P17646986956482557644

namespace A216195

/-- `∑[1-A101660(n)]+1` -/
def P17646986956482557644.Spec : Prop :=
  ∀ n, P17646986956482557644.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P7600046704864907701

`A085423(n+1)+1-A057526(n+1)`
-/

namespace A216195.P7600046704864907701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1) + (1 - A057526 (n + 1))

end

end A216195.P7600046704864907701

namespace A216195

/-- `A085423(n+1)+1-A057526(n+1)` -/
def P7600046704864907701.Spec : Prop :=
  ∀ n, P7600046704864907701.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P3714996611167751831

`log2(A380122(n+1))+1`
-/

namespace A216195.P3714996611167751831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A380122 (n + 1) : ℝ) + 1

end

end A216195.P3714996611167751831

namespace A216195

/-- `log2(A380122(n+1))+1` -/
def P3714996611167751831.Spec : Prop :=
  ∀ n, P3714996611167751831.a n = (A216195 (n + 1) : ℝ)

end A216195

/-! ## A216195.P9705396800096423199

`A000120(A184617(n+1))+1`
-/

namespace A216195.P9705396800096423199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A184617 (n + 1)).toNat + 1

end

end A216195.P9705396800096423199

namespace A216195

/-- `A000120(A184617(n+1))+1` -/
def P9705396800096423199.Spec : Prop :=
  ∀ n, P9705396800096423199.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P8730794808442293077

`A329320(A005351(n+1))+1`
-/

namespace A216195.P8730794808442293077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A005351 (n + 1)).toNat + 1

end

end A216195.P8730794808442293077

namespace A216195

/-- `A329320(A005351(n+1))+1` -/
def P8730794808442293077.Spec : Prop :=
  ∀ n, P8730794808442293077.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P8125043512054117221

`A070939(A301984(2*n+1)+1)`
-/

namespace A216195.P8125043512054117221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A301984 (2 * n + 1) + 1).toNat

end

end A216195.P8125043512054117221

namespace A216195

/-- `A070939(A301984(2*n+1)+1)` -/
def P8125043512054117221.Spec : Prop :=
  ∀ n, P8125043512054117221.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P2671856868874672991

`A329320(A048724(n+1))+1`
-/

namespace A216195.P2671856868874672991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A048724 (n + 1)).toNat + 1

end

end A216195.P2671856868874672991

namespace A216195

/-- `A329320(A048724(n+1))+1` -/
def P2671856868874672991.Spec : Prop :=
  ∀ n, P2671856868874672991.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P1271423204761915457

`A000120(xor(n, 3*(n+1))+2)`
-/

namespace A216195.P1271423204761915457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.xor n (3 * (n + 1)) + 2)

end

end A216195.P1271423204761915457

namespace A216195

/-- `A000120(xor(n, 3*(n+1))+2)` -/
def P1271423204761915457.Spec : Prop :=
  ∀ n, P1271423204761915457.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P1071399045739530647

`A081743(A178729(n+1))`
-/

namespace A216195.P1071399045739530647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A178729 (n + 1)).toNat

end

end A216195.P1071399045739530647

namespace A216195

/-- `A081743(A178729(n+1))` -/
def P1071399045739530647.Spec : Prop :=
  ∀ n, P1071399045739530647.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P10877831085147776395

`A000120(A178729(n+1)+1)`
-/

namespace A216195.P10877831085147776395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A178729 (n + 1) + 1).toNat

end

end A216195.P10877831085147776395

namespace A216195

/-- `A000120(A178729(n+1)+1)` -/
def P10877831085147776395.Spec : Prop :=
  ∀ n, P10877831085147776395.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P4567390901587487445

`A000120(xor(1, xor(n, A016789(n))))`
-/

namespace A216195.P4567390901587487445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor 1 (Int.xor (n : ℤ) (A016789 n))).toNat

end

end A216195.P4567390901587487445

namespace A216195

/-- `A000120(xor(1, xor(n, A016789(n))))` -/
def P4567390901587487445.Spec : Prop :=
  ∀ n, P4567390901587487445.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P8559600612718229064

`A000120(xor(A153733(n), A166466(n+1)))`
-/

namespace A216195.P8559600612718229064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A153733 n) (A166466 (n + 1))).toNat

end

end A216195.P8559600612718229064

namespace A216195

/-- `A000120(xor(A153733(n), A166466(n+1)))` -/
def P8559600612718229064.Spec : Prop :=
  ∀ n, P8559600612718229064.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P14236022135227737595

`A000120(A338249(n+1)+A338248(n+1))`
-/

namespace A216195.P14236022135227737595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A338249 (n + 1) + A338248 (n + 1)).toNat

end

end A216195.P14236022135227737595

namespace A216195

/-- `A000120(A338249(n+1)+A338248(n+1))` -/
def P14236022135227737595.Spec : Prop :=
  ∀ n, P14236022135227737595.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P12967551064746210381

`A007302(A004767(n))`
-/

namespace A216195.P12967551064746210381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A004767 n).toNat

end

end A216195.P12967551064746210381

namespace A216195

/-- `A007302(A004767(n))` -/
def P12967551064746210381.Spec : Prop :=
  ∀ n, P12967551064746210381.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P3462305010875406255

`A007302(A047398(n+1))`
-/

namespace A216195.P3462305010875406255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A047398 (n + 1)).toNat

end

end A216195.P3462305010875406255

namespace A216195

/-- `A007302(A047398(n+1))` -/
def P3462305010875406255.Spec : Prop :=
  ∀ n, P3462305010875406255.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P6672388549995126495

`A007302(A047436(n+1))`
-/

namespace A216195.P6672388549995126495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A047436 (n + 1)).toNat

end

end A216195.P6672388549995126495

namespace A216195

/-- `A007302(A047436(n+1))` -/
def P6672388549995126495.Spec : Prop :=
  ∀ n, P6672388549995126495.a n = A216195 (n + 1)

end A216195

/-! ## A216195.P12319248599916081878

`A007302(A047550(n+1))`
-/

namespace A216195.P12319248599916081878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A047550 (n + 1)).toNat

end

end A216195.P12319248599916081878

namespace A216195

/-- `A007302(A047550(n+1))` -/
def P12319248599916081878.Spec : Prop :=
  ∀ n, P12319248599916081878.a n = A216195 (n + 1)

end A216195

/-!
# A216197: Abelian complexity function of A064990.

The programs for A216197, there is no canonical definition to state claims against.
-/

/-! ## A216197.P2949265945664792683

`A119477(A343231(n+1)+1)`
-/

namespace A216197.P2949265945664792683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (A343231 (n + 1) + 1).toNat

end

end A216197.P2949265945664792683

/-! ## A216197.P5626338760880656006

`A134023(n+1)+A064099(n)+1`
-/

namespace A216197.P5626338760880656006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (n + 1) + (A064099 n + 1)

end

end A216197.P5626338760880656006

/-! ## A216197.P10232793952665233977

`∑{digits}[A028373(3*n+2), A000188(#)]`
-/

namespace A216197.P10232793952665233977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000188 x).sum

end

end A216197.P10232793952665233977

/-! ## A216197.P2379942472803667616

`∑{digits}[A107665(3*n+2), A006556(#)]`
-/

namespace A216197.P2379942472803667616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006556 x).sum

end

end A216197.P2379942472803667616

/-! ## A216197.P631381620791408591

`∑{digits}[A107665(3*n+2), A025177(#)]`
-/

namespace A216197.P631381620791408591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025177 x).sum

end

end A216197.P631381620791408591

/-! ## A216197.P5182264844468802204

`A134021(n+1)+A134023(n+1)+1`
-/

namespace A216197.P5182264844468802204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (n + 1) + (A134023 (n + 1) + 1)

end

end A216197.P5182264844468802204

/-! ## A216197.P10614553338777679990

`A081604(2*(n+1))+A134023(n+1)+1`
-/

namespace A216197.P10614553338777679990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (2 * (n + 1)) + (A134023 (n + 1) + 1)

end

end A216197.P10614553338777679990

/-! ## A216197.P3426995283422947958

`∑{digits}[A007932(A016789(n)), A007336(#)]`
-/

namespace A216197.P3426995283422947958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007336 x).sum

end

end A216197.P3426995283422947958

/-! ## A216197.P16503390614105063157

`A134023(n+1)+A064099(A016777(n))`
-/

namespace A216197.P16503390614105063157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (n + 1) + A064099 (A016777 n).toNat

end

end A216197.P16503390614105063157

/-! ## A216197.P5147998046794425443

`A064099(n)+A062756(A132141(n+1))`
-/

namespace A216197.P5147998046794425443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 n + A062756 (A132141 (n + 1)).toNat

end

end A216197.P5147998046794425443

/-!
# A216198: Rounded area of squares and pentagons which arrange as successively circumscribing.

The programs for A216198, there is no canonical definition to state claims against.
-/

/-! ## A216198.P2581760962328976143

`A002024(A181532(n)+A067687(n))`
-/

namespace A216198.P2581760962328976143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A181532 n + A067687 n).toNat

end

end A216198.P2581760962328976143

/-! ## A216198.P13756165198115810024

`A003056(A339585(n+4)+A014540(n+1))`
-/

namespace A216198.P13756165198115810024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A339585 (n + 4) + A014540 (n + 1)).toNat

end

end A216198.P13756165198115810024

/-! ## A216198.P14169042290677045932

`A000194(A190667(n))`
-/

namespace A216198.P14169042290677045932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A190667 n).toNat

end

end A216198.P14169042290677045932

/-! ## A216198.P9704148373336866945

`A353866(Δ[A112088(n+1)])`
-/

namespace A216198.P9704148373336866945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (f1 (n + 1) - f1 n).toNat

end

end A216198.P9704148373336866945

/-! ## A216198.P5406748913360985154

`A000194(A205579(3*n)+1)`
-/

namespace A216198.P5406748913360985154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205579 (3 * n) + 1).toNat

end

end A216198.P5406748913360985154

/-!
# A216199: Abelian complexity function of the ternary Thue-Morse word (A036577).

The programs for A216199, there is no canonical definition to state claims against.
-/

/-! ## A216199.P15024623349430908370

`A245186(2*n+3)/2`
-/

namespace A216199.P15024623349430908370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245186 (2 * n + 3) : ℚ) / 2

end

end A216199.P15024623349430908370

/-! ## A216199.P13202918832482522615

`dr(A245186(Δ[(n+1)²])/2)`
-/

namespace A216199.P13202918832482522615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A245186 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2))

end

end A216199.P13202918832482522615

/-! ## A216199.P12996611844807479310

`A004525(A245186(2*n+3))`
-/

namespace A216199.P12996611844807479310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A245186 (2 * n + 3)).toNat

end

end A216199.P12996611844807479310

/-! ## A216199.P17840695173365080839

`A014682(A245186(2*(n+1)+1))`
-/

namespace A216199.P17840695173365080839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A245186 (2 * (n + 1) + 1)).toNat

end

end A216199.P17840695173365080839

/-! ## A216199.P16505246610725015489

`A008619(A245186(2*n+3)-1)`
-/

namespace A216199.P16505246610725015489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A245186 (2 * n + 3) - 1).toNat

end

end A216199.P16505246610725015489

