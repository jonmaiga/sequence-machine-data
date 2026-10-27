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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A110201: a(n) = sum of squares of numbers < 2^n having exactly [n/2]+1 ones in their binary expansion.

The programs for A110201, there is no canonical definition to state claims against.
-/

/-! ## A110201.P16953309534472439511

`A110200(A080827(n+1))`
-/

namespace A110201.P16953309534472439511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110200 (A080827 (n + 1)).toNat

end

end A110201.P16953309534472439511

/-! ## A110201.P18427802049605930257

`A110200(A099392(n+2))`
-/

namespace A110201.P18427802049605930257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110200 (A099392 (n + 2)).toNat

end

end A110201.P18427802049605930257

/-! ## A110201.P11384101956284019870

`A110200(A007590(n+1)+1)`
-/

namespace A110201.P11384101956284019870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110200 (A007590 (n + 1) + 1).toNat

end

end A110201.P11384101956284019870

/-! ## A110201.P5241898525501662450

`A110200(∑[A004277(A110654(n))])`
-/

namespace A110201.P5241898525501662450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110201.P5241898525501662450

/-! ## A110201.P14853160286956857970

`A110200(A005408(∑[A110654(n)]))`
-/

namespace A110201.P14853160286956857970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110200 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A110201.P14853160286956857970

/-!
# A110202: a(n) = sum of squares of numbers < 2^n having exactly 2 ones in their binary representation.

The programs for A110202, there is no canonical definition to state claims against.
-/

/-! ## A110202.P4831344840448761947

`A110200(A133263(n))-A000007(n)`
-/

namespace A110202.P4831344840448761947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110200 (A133263 n).toNat - A000007 n

end

end A110202.P4831344840448761947

/-! ## A110202.P10328778862016328552

`A057427(n)*A110200(A133263(n))`
-/

namespace A110202.P10328778862016328552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A110200 (A133263 n).toNat

end

end A110202.P10328778862016328552

/-! ## A110202.P17913246192703984322

`A110200(A133263(n))+n-A028310(n)`
-/

namespace A110202.P17913246192703984322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110200 (A133263 n).toNat + ((n : ℤ) - A028310 n)

end

end A110202.P17913246192703984322

/-! ## A110202.P15404732149706560208

`char[A003557(n+1)]*A110200(A133263(n))`
-/

namespace A110202.P15404732149706560208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A110200 (A133263 n).toNat

end

end A110202.P15404732149706560208

/-! ## A110202.P5234880974829950036

`A110200(A133263(n))-A008683(A008574(n))`
-/

namespace A110202.P5234880974829950036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110200 (A133263 n).toNat - A008683 (A008574 n).toNat

end

end A110202.P5234880974829950036

/-!
# A110204: a(n) = sum of squares of numbers < 2^n having exactly 4 ones in their binary representation.

The programs for A110204, there is no canonical definition to state claims against.
-/

/-! ## A110204.P17363182718180158112

`A263273(C(n, 3)*A091172(n+1))`
-/

namespace A110204.P17363182718180158112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 ((Nat.choose n 3 : ℤ) * A091172 (n + 1)).toNat

end

end A110204.P17363182718180158112

/-!
# A110205: Triangle, read by rows, where T(n,k) equals the sum of cubes of numbers < 2^n having exactly k ones in their binary expansion.

The programs for A110205, there is no canonical definition to state claims against.
-/

/-! ## A110205.P17643900310390006961

`A074352(2*n)+A004159(∑[A159009(n)])`
-/

namespace A110205.P17643900310390006961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074352 (2 * n) + A004159 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110205.P17643900310390006961

/-!
# A110206: Row sums of triangle A110205, where A110205(n,k) equals the sum of cubes of numbers < 2^n having exactly k ones in their binary expansion.

The programs for A110206, the canonical program `A110206.P1468582166700696924` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110206 has offset 1).

The definition of A110206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110206.P10383091547482444132

`C(2^(n+1), 2)²`
-/

namespace A110206.P10383091547482444132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ (n + 1)) 2 ^ 2

end

end A110206.P10383091547482444132

namespace A110206

/-- `C(2^(n+1), 2)²` -/
def P10383091547482444132.Spec : Prop :=
  ∀ n, (P10383091547482444132.a n : ℤ) = A110206 (n + 1)

end A110206

/-! ## A110206.P1468582166700696924

`4^n*(2^(n+1)-1)²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110206

/-- `4^n*(2^(n+1)-1)²` -/
def P1468582166700696924.Spec : Prop :=
  ∀ n, P1468582166700696924.a n = A110206 (n + 1)

theorem P1468582166700696924.correct : P1468582166700696924.Spec := by
  intro n
  simp only [A110206, Nat.add_sub_cancel]

end A110206

/-! ## A110206.P5360759150850530922

`∑[abs(Δ[C(2^n, 2)²])]`
-/

namespace A110206.P5360759150850530922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110206.P5360759150850530922

namespace A110206

/-- `∑[abs(Δ[C(2^n, 2)²])]` -/
def P5360759150850530922.Spec : Prop :=
  ∀ n, P5360759150850530922.a n = A110206 (n + 1)

end A110206

/-! ## A110206.P212830932660549401

`A171476(n)²`
-/

namespace A110206.P212830932660549401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n ^ 2

end

end A110206.P212830932660549401

namespace A110206

/-- `A171476(n)²` -/
def P212830932660549401.Spec : Prop :=
  ∀ n, P212830932660549401.a n = A110206 (n + 1)

end A110206

/-! ## A110206.P7767060113170410388

`∑[A010036(n)]²`
-/

namespace A110206.P7767060113170410388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A110206.P7767060113170410388

namespace A110206

/-- `∑[A010036(n)]²` -/
def P7767060113170410388.Spec : Prop :=
  ∀ n, P7767060113170410388.a n = A110206 (n + 1)

end A110206

/-! ## A110206.P7526156287834113015

`record[A278756(n)²]`
-/

namespace A110206.P7526156287834113015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278756 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110206.P7526156287834113015

namespace A110206

/-- `record[A278756(n)²]` -/
def P7526156287834113015.Spec : Prop :=
  ∀ n, P7526156287834113015.a n = A110206 (n + 1)

end A110206

/-! ## A110206.P11801974690916640886

`record[A282418(n)²]`
-/

namespace A110206.P11801974690916640886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110206.P11801974690916640886

namespace A110206

/-- `record[A282418(n)²]` -/
def P11801974690916640886.Spec : Prop :=
  ∀ n, P11801974690916640886.a n = A110206 (n + 1)

end A110206

/-! ## A110206.P12815409775674115145

`record[A287470(n)²]`
-/

namespace A110206.P12815409775674115145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110206.P12815409775674115145

namespace A110206

/-- `record[A287470(n)²]` -/
def P12815409775674115145.Spec : Prop :=
  ∀ n, P12815409775674115145.a n = A110206 (n + 1)

end A110206

/-! ## A110206.P1099122413278124449

`A006516(n+1)²`
-/

namespace A110206.P1099122413278124449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) ^ 2

end

end A110206.P1099122413278124449

namespace A110206

/-- `A006516(n+1)²` -/
def P1099122413278124449.Spec : Prop :=
  ∀ n, P1099122413278124449.a n = A110206 (n + 1)

end A110206

/-! ## A110206.P13074094948736422341

`(A129868(n)+1)²`
-/

namespace A110206.P13074094948736422341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129868 n + 1) ^ 2

end

end A110206.P13074094948736422341

namespace A110206

/-- `(A129868(n)+1)²` -/
def P13074094948736422341.Spec : Prop :=
  ∀ n, P13074094948736422341.a n = A110206 (n + 1)

end A110206

/-!
# A110207: a(n) = sum of cubes of numbers < 2^n having exactly floor(n/2) + 1 ones in their binary expansion.

The programs for A110207, there is no canonical definition to state claims against.
-/

/-! ## A110207.P9413774673201530610

`A110205(or(1, ∑[or(1, n)]))`
-/

namespace A110207.P9413774673201530610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110205 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A110207.P9413774673201530610

/-! ## A110207.P10176382466989806523

`A110205(A080827(n+1))`
-/

namespace A110207.P10176382466989806523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110205 (A080827 (n + 1)).toNat

end

end A110207.P10176382466989806523

/-! ## A110207.P11616855099505923448

`A110205(A099392(n+2))`
-/

namespace A110207.P11616855099505923448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110205 (A099392 (n + 2)).toNat

end

end A110207.P11616855099505923448

/-! ## A110207.P3093746571836210389

`record[A110205(A057028(n+1))]`
-/

namespace A110207.P3093746571836210389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110205 (A057028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110207.P3093746571836210389

/-! ## A110207.P15128729908035087972

`A110205(A007590(n+1)+1)`
-/

namespace A110207.P15128729908035087972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110205 (A007590 (n + 1) + 1).toNat

end

end A110207.P15128729908035087972

/-!
# A110208: 1 + sum of first n semiprimes.

The programs for A110208, the canonical program `A110208.P6301334840578802992` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110208 has offset 0).

The definition of A110208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110208.P2457120646904860890

`∑[A176540(n+1)]`
-/

namespace A110208.P2457120646904860890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110208.P2457120646904860890

namespace A110208

/-- `∑[A176540(n+1)]` -/
def P2457120646904860890.Spec : Prop :=
  ∀ n, P2457120646904860890.a n = A110208 n

end A110208

/-! ## A110208.P6301334840578802992

`A001358(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A110208

/-- `A001358(n)+a(n-1)` -/
def P6301334840578802992.Spec : Prop :=
  ∀ n, P6301334840578802992.a n = A110208 n

theorem P6301334840578802992.correct : P6301334840578802992.Spec := by
  intro n
  simp only [A110208]

end A110208

/-! ## A110208.P5273895111286623941

`A062198(n+1)-A186621(n+1)`
-/

namespace A110208.P5273895111286623941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 1) - A186621 (n + 1)

end

end A110208.P5273895111286623941

namespace A110208

/-- `A062198(n+1)-A186621(n+1)` -/
def P5273895111286623941.Spec : Prop :=
  ∀ n, P5273895111286623941.a n = A110208 n

end A110208

/-! ## A110208.P8346620752484996623

`∑[A001358(n+1)]-A186621(n+1)`
-/

namespace A110208.P8346620752484996623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A186621 (n + 1)

end

end A110208.P8346620752484996623

namespace A110208

/-- `∑[A001358(n+1)]-A186621(n+1)` -/
def P8346620752484996623.Spec : Prop :=
  ∀ n, P8346620752484996623.a n = A110208 n

end A110208

/-! ## A110208.P190536888011803626

`A062198(n+1)+1-A001358(n+1)`
-/

namespace A110208.P190536888011803626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 1) + (1 - A001358 (n + 1))

end

end A110208.P190536888011803626

namespace A110208

/-- `A062198(n+1)+1-A001358(n+1)` -/
def P190536888011803626.Spec : Prop :=
  ∀ n, P190536888011803626.a n = A110208 n

end A110208

/-! ## A110208.P13496698948745814622

`A062198(n+1)-eq[2, A001222(n+1)]`
-/

namespace A110208.P13496698948745814622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A110208.P13496698948745814622

namespace A110208

/-- `A062198(n+1)-eq[2, A001222(n+1)]` -/
def P13496698948745814622.Spec : Prop :=
  ∀ n, P13496698948745814622.a n = A110208 n

end A110208

/-! ## A110208.P5316641433534484250

`∑[A165712(a(n-1))]` with `a(0)=1, a(1)=4`
-/

namespace A110208.P5316641433534484250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110208.P5316641433534484250

namespace A110208

/-- `∑[A165712(a(n-1))]` -/
def P5316641433534484250.Spec : Prop :=
  ∀ n, P5316641433534484250.a n = A110208 n

end A110208

/-! ## A110208.P5227049808258470229

`∑[eq[1, C(2, A284289(n))]]`
-/

namespace A110208.P5227049808258470229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A284289 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110208.P5227049808258470229

namespace A110208

/-- `∑[eq[1, C(2, A284289(n))]]` -/
def P5227049808258470229.Spec : Prop :=
  ∀ n, (P5227049808258470229.a n : ℤ) = A110208 n

end A110208

/-! ## A110208.P17893132867857047323

`∑[record[A179312(n+1)]]+1`
-/

namespace A110208.P17893132867857047323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A110208.P17893132867857047323

namespace A110208

/-- `∑[record[A179312(n+1)]]+1` -/
def P17893132867857047323.Spec : Prop :=
  ∀ n, P17893132867857047323.a n = A110208 n

end A110208

/-! ## A110208.P18324391407994916442

`∑[A175515(n+3)]-2`
-/

namespace A110208.P18324391407994916442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A110208.P18324391407994916442

namespace A110208

/-- `∑[A175515(n+3)]-2` -/
def P18324391407994916442.Spec : Prop :=
  ∀ n, P18324391407994916442.a n = A110208 n

end A110208

/-!
# A110209: 1 + sum of first n 3-almost primes.

The programs for A110209, the canonical program `A110209.P16639845999686422386` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110209 has offset 0).

The definition of A110209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110209.P16639845999686422386

`A014612(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A110209

/-- `A014612(n)+a(n-1)` -/
def P16639845999686422386.Spec : Prop :=
  ∀ n, P16639845999686422386.a n = A110209 n

theorem P16639845999686422386.correct : P16639845999686422386.Spec := by
  intro n
  simp only [A110209]

end A110209

/-! ## A110209.P5239866057068206155

`∑[eq[4, a(A001222(n))²]]` with `a(0)=0, a(1)=4, a(2)=0, a(3)=2`
-/

namespace A110209.P5239866057068206155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 0, 2] fun n f3 =>
  f3 (A001222 n).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110209.P5239866057068206155

namespace A110209

/-- `∑[eq[4, a(A001222(n))²]]` -/
def P5239866057068206155.Spec : Prop :=
  ∀ n, (P5239866057068206155.a n : ℤ) = A110209 n

end A110209

/-! ## A110209.P3861488766737811559

`∑[eq[1, C(3, A001222(n+1))]+1]`
-/

namespace A110209.P3861488766737811559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A001222 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110209.P3861488766737811559

namespace A110209

/-- `∑[eq[1, C(3, A001222(n+1))]+1]` -/
def P3861488766737811559.Spec : Prop :=
  ∀ n, (P3861488766737811559.a n : ℤ) = A110209 n

end A110209

/-! ## A110209.P1857048319988183523

`A086062(n+1)+1-A014612(n+1)`
-/

namespace A110209.P1857048319988183523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086062 (n + 1) + (1 - A014612 (n + 1))

end

end A110209.P1857048319988183523

namespace A110209

/-- `A086062(n+1)+1-A014612(n+1)` -/
def P1857048319988183523.Spec : Prop :=
  ∀ n, P1857048319988183523.a n = A110209 n

end A110209

/-! ## A110209.P9834143419995113332

`∑[A165712(a(n-1))]` with `a(0)=1, a(1)=8`
-/

namespace A110209.P9834143419995113332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110209.P9834143419995113332

namespace A110209

/-- `∑[A165712(a(n-1))]` -/
def P9834143419995113332.Spec : Prop :=
  ∀ n, P9834143419995113332.a n = A110209 n

end A110209

/-!
# A110210: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = -1, a(1) = 1, a(2) = -5.

The programs for A110210, the canonical program `A110210.P3649676558639193553` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110210 has offset 0).

The definition of A110210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110210.P2614522847481733114

`ogf((1+4x)/(-1-5x+6x^3))`
-/

namespace A110210.P2614522847481733114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -4] [1, 5, 0, -6] n

end

end A110210.P2614522847481733114

namespace A110210

/-- `ogf((1+4x)/(-1-5x+6x^3))` -/
def P2614522847481733114.Spec : Prop :=
  ∀ n, P2614522847481733114.a n = A110210 n

end A110210

/-! ## A110210.P3649676558639193553

`∑[A033999(n+1)*A094433(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110210

/-- `∑[A033999(n+1)*A094433(n+1)]` -/
def P3649676558639193553.Spec : Prop :=
  ∀ n, P3649676558639193553.a n = A110210 n

theorem P3649676558639193553.correct : P3649676558639193553.Spec := by
  intro n
  simp only [A110210]

end A110210

/-! ## A110210.P16920659217739059758

`∑[(-1)^A020639(n+1)*A094433(n+1)]`
-/

namespace A110210.P16920659217739059758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A020639 (n + 1) : ℤ) * (A094433 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110210.P16920659217739059758

namespace A110210

/-- `∑[(-1)^A020639(n+1)*A094433(n+1)]` -/
def P16920659217739059758.Spec : Prop :=
  ∀ n, P16920659217739059758.a n = (A110210 n : ℚ)

end A110210

/-! ## A110210.P13670322547882766591

`A110211(n)+A110211(n)-A110212(n)`
-/

namespace A110210.P13670322547882766591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110211 n + (A110211 n - A110212 n)

end

end A110210.P13670322547882766591

namespace A110210

/-- `A110211(n)+A110211(n)-A110212(n)` -/
def P13670322547882766591.Spec : Prop :=
  ∀ n, P13670322547882766591.a n = A110210 n

theorem P13670322547882766591.correct : P13670322547882766591.Spec := by
  intro n
  simp only [A110210, Nat.add_sub_cancel, A110210.P13670322547882766591.a, A110210.P3649676558639193553.f1, A110210.P3649676558639193553.a, A033999, A033999.P17703899380244199787.a, A094433, A094433.P1130071707216133329.a, A110211, A110211.P2344330517744322074.f1, A110211.P2344330517744322074.a, A110212, A110212.P7093181171410648257.a, A086405, A086405.P4485142873803144911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110210

/-! ## A110210.P14188973723823381456

`2*A110211(n)-A110212(n)`
-/

namespace A110210.P14188973723823381456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110211 n - A110212 n

end

end A110210.P14188973723823381456

namespace A110210

/-- `2*A110211(n)-A110212(n)` -/
def P14188973723823381456.Spec : Prop :=
  ∀ n, P14188973723823381456.a n = A110210 n

theorem P14188973723823381456.correct : P14188973723823381456.Spec := by
  intro n
  simp only [A110210, Nat.add_sub_cancel, A110210.P14188973723823381456.a, A110210.P3649676558639193553.f1, A110210.P3649676558639193553.a, A033999, A033999.P17703899380244199787.a, A094433, A094433.P1130071707216133329.a, A110211, A110211.P2344330517744322074.f1, A110211.P2344330517744322074.a, A110212, A110212.P7093181171410648257.a, A086405, A086405.P4485142873803144911.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110210

/-! ## A110210.P5634282795430548981

`A110211(n)+A110213(n)+A110212(n)`
-/

namespace A110210.P5634282795430548981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110211 n + (A110213 n + A110212 n)

end

end A110210.P5634282795430548981

namespace A110210

/-- `A110211(n)+A110213(n)+A110212(n)` -/
def P5634282795430548981.Spec : Prop :=
  ∀ n, P5634282795430548981.a n = A110210 n

end A110210

/-!
# A110211: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = -1, a(1) = 3, a(2) = -15.

The programs for A110211, the canonical program `A110211.P2344330517744322074` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110211 has offset 0).

The definition of A110211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110211.P11535497887035662297

`ogf((1+2x)/(-1-5x+6x^3))`
-/

namespace A110211.P11535497887035662297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -2] [1, 5, 0, -6] n

end

end A110211.P11535497887035662297

namespace A110211

/-- `ogf((1+2x)/(-1-5x+6x^3))` -/
def P11535497887035662297.Spec : Prop :=
  ∀ n, P11535497887035662297.a n = A110211 n

end A110211

/-! ## A110211.P2344330517744322074

`-∑[A033999(n)*A086405(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110211

/-- `-∑[A033999(n)*A086405(n)]` -/
def P2344330517744322074.Spec : Prop :=
  ∀ n, P2344330517744322074.a n = A110211 n

theorem P2344330517744322074.correct : P2344330517744322074.Spec := by
  intro n
  simp only [A110211]

end A110211

/-! ## A110211.P16187946880526919535

`∑[A033999(n+1)*A086405(n)]`
-/

namespace A110211.P16187946880526919535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A086405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110211.P16187946880526919535

namespace A110211

/-- `∑[A033999(n+1)*A086405(n)]` -/
def P16187946880526919535.Spec : Prop :=
  ∀ n, P16187946880526919535.a n = A110211 n

end A110211

/-! ## A110211.P16141550668581054083

`-∑[A080879(n)*A166552(n+1)*A033999(n)]`
-/

namespace A110211.P16141550668581054083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080879 n * A166552 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110211.P16141550668581054083

namespace A110211

/-- `-∑[A080879(n)*A166552(n+1)*A033999(n)]` -/
def P16141550668581054083.Spec : Prop :=
  ∀ n, P16141550668581054083.a n = A110211 n

end A110211

/-! ## A110211.P15614626900748289160

`-∑[(A094434(n+1)+A094433(n+1))*A033999(n)]`
-/

namespace A110211.P15614626900748289160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094434 (n + 1) + A094433 (n + 1)) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110211.P15614626900748289160

namespace A110211

/-- `-∑[(A094434(n+1)+A094433(n+1))*A033999(n)]` -/
def P15614626900748289160.Spec : Prop :=
  ∀ n, P15614626900748289160.a n = A110211 n

end A110211

/-! ## A110211.P5703603826411405348

`A110213(n)+2*A110212(n)`
-/

namespace A110211.P5703603826411405348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110213 n + 2 * A110212 n

end

end A110211.P5703603826411405348

namespace A110211

/-- `A110213(n)+2*A110212(n)` -/
def P5703603826411405348.Spec : Prop :=
  ∀ n, P5703603826411405348.a n = A110211 n

end A110211

/-! ## A110211.P14061210854567876596

`(A110212(n)+A110210(n))/2`
-/

namespace A110211.P14061210854567876596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110212 n + A110210 n : ℚ) / 2

end

end A110211.P14061210854567876596

namespace A110211

/-- `(A110212(n)+A110210(n))/2` -/
def P14061210854567876596.Spec : Prop :=
  ∀ n, P14061210854567876596.a n = (A110211 n : ℚ)

theorem P14061210854567876596.correct : P14061210854567876596.Spec := by
  intro n
  simp only [A110211, Nat.add_sub_cancel, A110211.P14061210854567876596.a, A110211.P2344330517744322074.f1, A110211.P2344330517744322074.a, A033999, A033999.P17703899380244199787.a, A086405, A086405.P4485142873803144911.a, A110210, A110210.P3649676558639193553.f1, A110210.P3649676558639193553.a, A110212, A110212.P7093181171410648257.a, A094433, A094433.P1130071707216133329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110211

/-! ## A110211.P11068929492318782723

`A110210(n)-(A110213(n)+A110212(n))`
-/

namespace A110211.P11068929492318782723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110210 n - (A110213 n + A110212 n)

end

end A110211.P11068929492318782723

namespace A110211

/-- `A110210(n)-(A110213(n)+A110212(n))` -/
def P11068929492318782723.Spec : Prop :=
  ∀ n, P11068929492318782723.a n = A110211 n

end A110211

/-! ## A110211.P3081495554643784316

`A110212(n+1)+A110213(n+1)+A110213(n)`
-/

namespace A110211.P3081495554643784316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110212 (n + 1) + (A110213 (n + 1) + A110213 n)

end

end A110211.P3081495554643784316

namespace A110211

/-- `A110212(n+1)+A110213(n+1)+A110213(n)` -/
def P3081495554643784316.Spec : Prop :=
  ∀ n, P3081495554643784316.a n = A110211 n

end A110211

/-!
# A110212: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = -1, a(1) = 5, a(2) = -25.

The programs for A110212, the canonical program `A110212.P7093181171410648257` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110212 has offset 0).

The definition of A110212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110212.P17688451095582486569

`ogf(-1/(1+5x-6x^3))`
-/

namespace A110212.P17688451095582486569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1] [1, 5, 0, -6] n

end

end A110212.P17688451095582486569

namespace A110212

/-- `ogf(-1/(1+5x-6x^3))` -/
def P17688451095582486569.Spec : Prop :=
  ∀ n, P17688451095582486569.a n = A110212 n

end A110212

/-! ## A110212.P7093181171410648257

`A110211(n)+A110211(n)-A110210(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110212

/-- `A110211(n)+A110211(n)-A110210(n)` -/
def P7093181171410648257.Spec : Prop :=
  ∀ n, P7093181171410648257.a n = A110212 n

theorem P7093181171410648257.correct : P7093181171410648257.Spec := by
  intro n
  simp only [A110212]

end A110212

/-! ## A110212.P12830166465375512326

`2*A110211(n)-A110210(n)`
-/

namespace A110212.P12830166465375512326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110211 n - A110210 n

end

end A110212.P12830166465375512326

namespace A110212

/-- `2*A110211(n)-A110210(n)` -/
def P12830166465375512326.Spec : Prop :=
  ∀ n, P12830166465375512326.a n = A110212 n

theorem P12830166465375512326.correct : P12830166465375512326.Spec := by
  intro n
  simp only [A110212, Nat.add_sub_cancel, A110212.P12830166465375512326.a, A110212.P7093181171410648257.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110212

/-! ## A110212.P3103099754859897878

`(A110211(n)-A110213(n))/2`
-/

namespace A110212.P3103099754859897878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110211 n - A110213 n : ℚ) / 2

end

end A110212.P3103099754859897878

namespace A110212

/-- `(A110211(n)-A110213(n))/2` -/
def P3103099754859897878.Spec : Prop :=
  ∀ n, P3103099754859897878.a n = (A110212 n : ℚ)

end A110212

/-! ## A110212.P7514244607696242983

`-∑[A030192(n)*A033999(n)]`
-/

namespace A110212.P7514244607696242983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110212.P7514244607696242983

namespace A110212

/-- `-∑[A030192(n)*A033999(n)]` -/
def P7514244607696242983.Spec : Prop :=
  ∀ n, P7514244607696242983.a n = A110212 n

end A110212

/-! ## A110212.P10755946622931661559

`∑[ratio[A087960(n)]*A030192(n)]`
-/

namespace A110212.P10755946622931661559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A030192 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110212.P10755946622931661559

namespace A110212

/-- `∑[ratio[A087960(n)]*A030192(n)]` -/
def P10755946622931661559.Spec : Prop :=
  ∀ n, P10755946622931661559.a n = (A110212 n : ℚ)

end A110212

/-! ## A110212.P6070653158177870692

`∑[A030192(n)*A033999(n+1)]`
-/

namespace A110212.P6070653158177870692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110212.P6070653158177870692

namespace A110212

/-- `∑[A030192(n)*A033999(n+1)]` -/
def P6070653158177870692.Spec : Prop :=
  ∀ n, P6070653158177870692.a n = A110212 n

end A110212

/-! ## A110212.P636583978218964184

`∑[A030192(n)*A087960(2*n+1)]`
-/

namespace A110212.P636583978218964184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030192 n * A087960 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110212.P636583978218964184

namespace A110212

/-- `∑[A030192(n)*A087960(2*n+1)]` -/
def P636583978218964184.Spec : Prop :=
  ∀ n, P636583978218964184.a n = A110212 n

end A110212

/-!
# A110213: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = 1, a(1) = -7, a(2) = 35.

The programs for A110213, the canonical program `A110213.P12758922269275891489` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110213 has offset 0).

The definition of A110213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110213.P13012374308863931443

`∑[ogf((1-2x)/(1+6x+6x^2))]`
-/

namespace A110213.P13012374308863931443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 6, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110213.P13012374308863931443

namespace A110213

/-- `∑[ogf((1-2x)/(1+6x+6x^2))]` -/
def P13012374308863931443.Spec : Prop :=
  ∀ n, P13012374308863931443.a n = A110213 n

end A110213

/-! ## A110213.P14232158346388699494

`ogf((1-2x)/(1+5x-6x^3))`
-/

namespace A110213.P14232158346388699494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, 5, 0, -6] n

end

end A110213.P14232158346388699494

namespace A110213

/-- `ogf((1-2x)/(1+5x-6x^3))` -/
def P14232158346388699494.Spec : Prop :=
  ∀ n, P14232158346388699494.a n = A110213 n

end A110213

/-! ## A110213.P12758922269275891489

`∑[A033999(n)*A276265(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110213

/-- `∑[A033999(n)*A276265(n)]` -/
def P12758922269275891489.Spec : Prop :=
  ∀ n, P12758922269275891489.a n = A110213 n

theorem P12758922269275891489.correct : P12758922269275891489.Spec := by
  intro n
  simp only [A110213]

end A110213

/-! ## A110213.P1474395854766568239

`A110211(n)-2*A110212(n)`
-/

namespace A110213.P1474395854766568239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110211 n - 2 * A110212 n

end

end A110213.P1474395854766568239

namespace A110213

/-- `A110211(n)-2*A110212(n)` -/
def P1474395854766568239.Spec : Prop :=
  ∀ n, P1474395854766568239.a n = A110213 n

end A110213

/-! ## A110213.P2014822700057923981

`A110212(n+1)-Δ[A110211(n)]`
-/

namespace A110213.P2014822700057923981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110212 (n + 1) - (f1 (n + 1) - f1 n)

end

end A110213.P2014822700057923981

namespace A110213

/-- `A110212(n+1)-Δ[A110211(n)]` -/
def P2014822700057923981.Spec : Prop :=
  ∀ n, P2014822700057923981.a n = A110213 n

end A110213

/-! ## A110213.P14117779937067045052

`∑[A010892(3*n)*A276265(n)]`
-/

namespace A110213.P14117779937067045052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A276265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110213.P14117779937067045052

namespace A110213

/-- `∑[A010892(3*n)*A276265(n)]` -/
def P14117779937067045052.Spec : Prop :=
  ∀ n, P14117779937067045052.a n = A110213 n

end A110213

/-! ## A110213.P2056228889763910381

`A110210(n)-(A110212(n)+A110211(n))`
-/

namespace A110213.P2056228889763910381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110210 n - (A110212 n + A110211 n)

end

end A110213.P2056228889763910381

namespace A110213

/-- `A110210(n)-(A110212(n)+A110211(n))` -/
def P2056228889763910381.Spec : Prop :=
  ∀ n, P2056228889763910381.a n = A110213 n

end A110213

/-! ## A110213.P3185384528988624138

`A110211(n+1)+A110211(n)-A110210(n+1)`
-/

namespace A110213.P3185384528988624138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110211 (n + 1) + (A110211 n - A110210 (n + 1))

end

end A110213.P3185384528988624138

namespace A110213

/-- `A110211(n+1)+A110211(n)-A110210(n+1)` -/
def P3185384528988624138.Spec : Prop :=
  ∀ n, P3185384528988624138.a n = A110213 n

end A110213

/-! ## A110213.P7855526505171401087

`A110212(n+1)+A110211(n)-A110211(n+1)`
-/

namespace A110213.P7855526505171401087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110212 (n + 1) + (A110211 n - A110211 (n + 1))

end

end A110213.P7855526505171401087

namespace A110213

/-- `A110212(n+1)+A110211(n)-A110211(n+1)` -/
def P7855526505171401087.Spec : Prop :=
  ∀ n, P7855526505171401087.a n = A110213 n

end A110213

/-!
# A110216: Total number of coverings of a cubic board with the minimal number of knights.

The programs for A110216, there is no canonical definition to state claims against.
-/

/-! ## A110216.P10819905600753760966

`A110219(C(n+3, 3))`
-/

namespace A110216.P10819905600753760966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110219 (Nat.choose (n + 3) 3)

end

end A110216.P10819905600753760966

/-!
# A110222: Palindromic numbers which are not the absolute difference of a cube and a square.

The programs for A110222, there is no canonical definition to state claims against.
-/

/-! ## A110222.P3479840672070319026

`filter[A110223(n+1), A136522(#)]`
-/

namespace A110222.P3479840672070319026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A110222.P3479840672070319026

/-! ## A110222.P370959870797666884

`∩[A002113(n+1), A110223(n+1)]`
-/

namespace A110222.P370959870797666884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110222.P370959870797666884

/-! ## A110222.P11968111731651614028

`∩[A083158(n+1), A110223(n+1)]`
-/

namespace A110222.P11968111731651614028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110222.P11968111731651614028

/-!
# A110223: Numbers not the absolute difference between a cube and a square.

The programs for A110223, there is no canonical definition to state claims against.
-/

/-! ## A110223.P3947457869318415844

`∩[A022550(n+1), A088017(n+1)]`
-/

namespace A110223.P3947457869318415844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110223.P3947457869318415844

/-! ## A110223.P14075996369917010202

`∩[A054504(n+1), A088017(n+1)]`
-/

namespace A110223.P14075996369917010202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110223.P14075996369917010202

/-! ## A110223.P9480939720903093547

`∩[A088017(n+1), A094784(n+1)]`
-/

namespace A110223.P9480939720903093547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110223.P9480939720903093547

/-! ## A110223.P3788868707717278117

`∩[eq[0, A081119(n+1)]+1, A088017(n+1)]`
-/

namespace A110223.P3788868707717278117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081119 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A110223.P3788868707717278117

/-! ## A110223.P2249691382833342171

`∩[eq[0, A134108(n+1)]+1, A088017(n+1)]`
-/

namespace A110223.P2249691382833342171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134108 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A110223.P2249691382833342171

/-!
# A110224: a(n) = Fibonacci(n)^3 + Fibonacci(n+1)^3.

The programs for A110224, the canonical program `A110224.P3827513139438470638` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110224 has offset 0).

The definition of A110224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)^3+A000045(n+1)^3` (program `A110224.P3827513139438470638`, by `A110224.P3827513139438470638.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110224.P3827513139438470638

`A000045(n)^3+A000045(n+1)^3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110224

/-- `A000045(n)^3+A000045(n+1)^3` -/
def P3827513139438470638.Spec : Prop :=
  ∀ n, P3827513139438470638.a n = A110224 n

theorem P3827513139438470638.correct : P3827513139438470638.Spec := by
  intro n
  simp only [A110224]

end A110224

/-! ## A110224.P484583850154548238

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=35`
-/

namespace A110224.P484583850154548238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9, 35] fun n a =>
  3 * a (n - 1) + 6 * a (n - 2) - 3 * a (n - 3) - a (n - 4)

end

end A110224.P484583850154548238

namespace A110224

/-- `3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` -/
def P484583850154548238.Spec : Prop :=
  ∀ n, P484583850154548238.a n = A110224 n

end A110224

/-! ## A110224.P17401156146525380545

`∑[A350473(n)]+1`
-/

namespace A110224.P17401156146525380545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A110224.P17401156146525380545

namespace A110224

/-- `∑[A350473(n)]+1` -/
def P17401156146525380545.Spec : Prop :=
  ∀ n, P17401156146525380545.a n = A110224 n

end A110224

/-! ## A110224.P12921069903991398457

`A056570(n)+∑[A346513(n)]`
-/

namespace A110224.P12921069903991398457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110224.P12921069903991398457

namespace A110224

/-- `A056570(n)+∑[A346513(n)]` -/
def P12921069903991398457.Spec : Prop :=
  ∀ n, P12921069903991398457.a n = A110224 n

end A110224

/-! ## A110224.P6463792889145675386

`A056570(n+1)+A056570(n)`
-/

namespace A110224.P6463792889145675386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (n + 1) + A056570 n

end

end A110224.P6463792889145675386

namespace A110224

/-- `A056570(n+1)+A056570(n)` -/
def P6463792889145675386.Spec : Prop :=
  ∀ n, P6463792889145675386.a n = A110224 n

theorem P6463792889145675386.correct : P6463792889145675386.Spec := by
  intro n
  simp only [A110224, Nat.add_sub_cancel, A110224.P6463792889145675386.a, A110224.P3827513139438470638.a, A000045, A000045.P11838749114346432762.a, A056570, A056570.P8836543462792650410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110224

/-! ## A110224.P7327177506434173327

`A000045(n+2)*A126116(2*n)`
-/

namespace A110224.P7327177506434173327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A126116 (2 * n)

end

end A110224.P7327177506434173327

namespace A110224

/-- `A000045(n+2)*A126116(2*n)` -/
def P7327177506434173327.Spec : Prop :=
  ∀ n, P7327177506434173327.a n = A110224 n

end A110224

/-! ## A110224.P1554592000335175447

`(A000071(n+2)+1)*A126116(2*n)`
-/

namespace A110224.P1554592000335175447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 2) + 1) * A126116 (2 * n)

end

end A110224.P1554592000335175447

namespace A110224

/-- `(A000071(n+2)+1)*A126116(2*n)` -/
def P1554592000335175447.Spec : Prop :=
  ∀ n, P1554592000335175447.a n = A110224 n

end A110224

/-! ## A110224.P13686914065336345359

`∑[A346513(n)]+A000045(n)²*A000045(n)`
-/

namespace A110224.P13686914065336345359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000045 n ^ 2 * A000045 n

end

end A110224.P13686914065336345359

namespace A110224

/-- `∑[A346513(n)]+A000045(n)²*A000045(n)` -/
def P13686914065336345359.Spec : Prop :=
  ∀ n, P13686914065336345359.a n = A110224 n

end A110224

/-! ## A110224.P2360730596253069388

`A001519(n+1)+A244309(n+1)+A244309(n)`
-/

namespace A110224.P2360730596253069388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A244309 (n + 1) + A244309 n)

end

end A110224.P2360730596253069388

namespace A110224

/-- `A001519(n+1)+A244309(n+1)+A244309(n)` -/
def P2360730596253069388.Spec : Prop :=
  ∀ n, P2360730596253069388.a n = A110224 n

end A110224

/-! ## A110224.P13156742656800271192

`A292278(n+1)-A005968(n)`
-/

namespace A110224.P13156742656800271192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292278 (n + 1) - A005968 n

end

end A110224.P13156742656800271192

namespace A110224

/-- `A292278(n+1)-A005968(n)` -/
def P13156742656800271192.Spec : Prop :=
  ∀ n, P13156742656800271192.a n = A110224 n

end A110224

/-!
# A110225: Expansion of (-1+3*x+2*x^2-8*x^3+3*x^5-2*x^6-2*x^7+x^8) / ((x-1)*(x+1)*(x^2-2*x-1)*(x^2+2*x-1)).

The programs for A110225, the canonical program `A110225.P16210781142108200366` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110225 has offset 0).

The definition of A110225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x-2x^2+8x^3-3x^5+2x^6+2x^7-x^8)/(1-7x^2+7x^4-x^6))` (program `A110225.P16210781142108200366`, by `A110225.P16210781142108200366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110225.P16210781142108200366

`ogf((1-3x-2x^2+8x^3-3x^5+2x^6+2x^7-x^8)/(1-7x^2+7x^4-x^6))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110225

/-- `ogf((1-3x-2x^2+8x^3-3x^5+2x^6+2x^7-x^8)/(1-7x^2+7x^4-x^6))` -/
def P16210781142108200366.Spec : Prop :=
  ∀ n, P16210781142108200366.a n = A110225 n

theorem P16210781142108200366.correct : P16210781142108200366.Spec := by
  intro n
  simp only [A110225]

end A110225

/-!
# A110226: 1 + sum of first n 4-almost primes.

The programs for A110226, the canonical program `A110226.P14766994178741570182` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110226 has offset 0).

The definition of A110226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110226.P2825382964304895390

`A014613(n)+a(n-1)` with `a(0)=1`
-/

namespace A110226.P2825382964304895390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014613 n + a (n - 1)

end

end A110226.P2825382964304895390

namespace A110226

/-- `A014613(n)+a(n-1)` -/
def P2825382964304895390.Spec : Prop :=
  ∀ n, P2825382964304895390.a n = A110226 n

end A110226

/-! ## A110226.P14766994178741570182

`∑[record[n*A101637(n+1)]+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110226

/-- `∑[record[n*A101637(n+1)]+1]` -/
def P14766994178741570182.Spec : Prop :=
  ∀ n, P14766994178741570182.a n = A110226 n

theorem P14766994178741570182.correct : P14766994178741570182.Spec := by
  intro n
  simp only [A110226]

end A110226

/-! ## A110226.P11609980156940826474

`∑[A014613(n+1)]+1-A014613(n+1)`
-/

namespace A110226.P11609980156940826474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A014613 (n + 1)

end

end A110226.P11609980156940826474

namespace A110226

/-- `∑[A014613(n+1)]+1-A014613(n+1)` -/
def P11609980156940826474.Spec : Prop :=
  ∀ n, P11609980156940826474.a n = A110226 n

end A110226

/-! ## A110226.P8168589304849386505

`∑[eq[n, n-a(A001222(n))]]` with `a(0)=3, a(1)=1, a(2)=-9, a(3)=2, a(4)=0, a(5)=1`
-/

namespace A110226.P8168589304849386505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, -9, 2, 0, 1] fun n f3 =>
  (n : ℤ) - f3 (A001222 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110226.P8168589304849386505

namespace A110226

/-- `∑[eq[n, n-a(A001222(n))]]` -/
def P8168589304849386505.Spec : Prop :=
  ∀ n, (P8168589304849386505.a n : ℤ) = A110226 n

end A110226

/-! ## A110226.P16096518275526326329

`∑[A165712(a(n-1))]` with `a(0)=1, a(1)=16`
-/

namespace A110226.P16096518275526326329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110226.P16096518275526326329

namespace A110226

/-- `∑[A165712(a(n-1))]` -/
def P16096518275526326329.Spec : Prop :=
  ∀ n, P16096518275526326329.a n = A110226 n

end A110226

/-!
# A110227: 4-almost primes p * q * r * s relatively prime to p + q + r + s.

The programs for A110227, the canonical program `A110227.P17854938781314769759` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110227 has offset 1).

The definition of A110227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110227.P17854938781314769759

`record[A082344(A014613(n+4))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A110227

/-- `record[A082344(A014613(n+4))]` -/
def P17854938781314769759.Spec : Prop :=
  ∀ n, P17854938781314769759.a n = A110227 (n + 1)

theorem P17854938781314769759.correct : P17854938781314769759.Spec := by
  intro n
  simp only [A110227, Nat.add_sub_cancel]

end A110227

/-! ## A110227.P18434041843796907482

`eq[A082299(n+1), A101637(n+1)]+1`
-/

namespace A110227.P18434041843796907482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A110227.P18434041843796907482

namespace A110227

/-- `eq[A082299(n+1), A101637(n+1)]+1` -/
def P18434041843796907482.Spec : Prop :=
  ∀ n, (P18434041843796907482.a n : ℤ) = A110227 (n + 1)

end A110227

/-! ## A110227.P5030004579146822857

`∩[A014613(n+1), A082300(n+1)]`
-/

namespace A110227.P5030004579146822857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110227.P5030004579146822857

namespace A110227

/-- `∩[A014613(n+1), A082300(n+1)]` -/
def P5030004579146822857.Spec : Prop :=
  ∀ n, (P5030004579146822857.a n : ℤ) = A110227 (n + 1)

end A110227

/-! ## A110227.P18133695935130984706

`∩[A082300(n+1), A307342(n+1)]`
-/

namespace A110227.P18133695935130984706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110227.P18133695935130984706

namespace A110227

/-- `∩[A082300(n+1), A307342(n+1)]` -/
def P18133695935130984706.Spec : Prop :=
  ∀ n, (P18133695935130984706.a n : ℤ) = A110227 (n + 1)

end A110227

/-! ## A110227.P16198212547462949555

`A020725(eq[A082299(n+1), A101637(n+1)])`
-/

namespace A110227.P16198212547462949555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A110227.P16198212547462949555

namespace A110227

/-- `A020725(eq[A082299(n+1), A101637(n+1)])` -/
def P16198212547462949555.Spec : Prop :=
  ∀ n, P16198212547462949555.a n = A110227 (n + 1)

end A110227

/-! ## A110227.P13440176858974062770

`A065475(eq[A082299(n+1), A101637(n+1)])`
-/

namespace A110227.P13440176858974062770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A110227.P13440176858974062770

namespace A110227

/-- `A065475(eq[A082299(n+1), A101637(n+1)])` -/
def P13440176858974062770.Spec : Prop :=
  ∀ n, P13440176858974062770.a n = A110227 (n + 1)

end A110227

/-!
# A110228: 4-almost primes p * q * r * s not relatively prime to p + q + r + s.

The programs for A110228, the canonical program `A110228.P56886554202489931` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110228 has offset 1).

The definition of A110228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110228.P3162351046284842073

`filter[A370354(n+1), A101637(#)]`
-/

namespace A110228.P3162351046284842073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A110228.P3162351046284842073

namespace A110228

/-- `filter[A370354(n+1), A101637(#)]` -/
def P3162351046284842073.Spec : Prop :=
  ∀ n, P3162351046284842073.a n = A110228 (n + 1)

end A110228

/-! ## A110228.P4442662653905583209

`∩[A014613(n+1), A370354(n+1)]`
-/

namespace A110228.P4442662653905583209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110228.P4442662653905583209

namespace A110228

/-- `∩[A014613(n+1), A370354(n+1)]` -/
def P4442662653905583209.Spec : Prop :=
  ∀ n, (P4442662653905583209.a n : ℤ) = A110228 (n + 1)

end A110228

/-! ## A110228.P56886554202489931

`lt[1, A082299(n+1)*A101637(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110228

/-- `lt[1, A082299(n+1)*A101637(n+1)]+1` -/
def P56886554202489931.Spec : Prop :=
  ∀ n, (P56886554202489931.a n : ℤ) = A110228 (n + 1)

theorem P56886554202489931.correct : P56886554202489931.Spec := by
  intro n
  simp only [A110228, Nat.add_sub_cancel]

end A110228

/-! ## A110228.P1043886727538624602

`A110290(A032555(n+1))/8`
-/

namespace A110228.P1043886727538624602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110290 (A032555 (n + 1)).toNat : ℚ) / 8

end

end A110228.P1043886727538624602

namespace A110228

/-- `A110290(A032555(n+1))/8` -/
def P1043886727538624602.Spec : Prop :=
  ∀ n, P1043886727538624602.a n = (A110228 (n + 1) : ℚ)

end A110228

/-! ## A110228.P6561172085124242320

`A110290(A110370(n+1))/8`
-/

namespace A110228.P6561172085124242320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110290 (A110370 (n + 1)).toNat : ℚ) / 8

end

end A110228.P6561172085124242320

namespace A110228

/-- `A110290(A110370(n+1))/8` -/
def P6561172085124242320.Spec : Prop :=
  ∀ n, P6561172085124242320.a n = (A110228 (n + 1) : ℚ)

end A110228

/-!
# A110229: 5-almost primes p * q * r * s * t relatively prime to p + q + r + s + t.

The programs for A110229, the canonical program `A110229.P17987204273400737593` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110229 has offset 1).

The definition of A110229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110229.P17987204273400737593

`record[A082344(A014614(n+2))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A110229

/-- `record[A082344(A014614(n+2))]` -/
def P17987204273400737593.Spec : Prop :=
  ∀ n, P17987204273400737593.a n = A110229 (n + 1)

theorem P17987204273400737593.correct : P17987204273400737593.Spec := by
  intro n
  simp only [A110229, Nat.add_sub_cancel]

end A110229

/-! ## A110229.P6879059237342131379

`∩[A014614(n+1), A082300(n+1)]`
-/

namespace A110229.P6879059237342131379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110229.P6879059237342131379

namespace A110229

/-- `∩[A014614(n+1), A082300(n+1)]` -/
def P6879059237342131379.Spec : Prop :=
  ∀ n, (P6879059237342131379.a n : ℤ) = A110229 (n + 1)

end A110229

/-!
# A110230: 5-almost primes p * q * r * s * t not relatively prime to p + q + r + s + t.

The programs for A110230, the canonical program `A110230.P5744842396136358029` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110230 has offset 1).

The definition of A110230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1812 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110230.P5744842396136358029

`∩[A014614(n+1), A370354(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A110230

/-- `∩[A014614(n+1), A370354(n+1)]` -/
def P5744842396136358029.Spec : Prop :=
  ∀ n, (P5744842396136358029.a n : ℤ) = A110230 (n + 1)

theorem P5744842396136358029.correct : P5744842396136358029.Spec := by
  intro n
  simp only [A110230, Nat.add_sub_cancel]

end A110230

/-! ## A110230.P7870417577221269181

`A014614(eq[A001687(n), A109671(n+1)])`
-/

namespace A110230.P7870417577221269181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A110230.P7870417577221269181

namespace A110230

/-- `A014614(eq[A001687(n), A109671(n+1)])` -/
def P7870417577221269181.Spec : Prop :=
  ∀ n, P7870417577221269181.a n = A110230 (n + 1)

end A110230

/-!
# A110231: 6-almost primes p * q * r * s * t * u relatively prime to p+q+r+s+t+u.

The programs for A110231, there is no canonical definition to state claims against.
-/

/-! ## A110231.P9373081332466747741

`record[A082344(A046306(n+2))]`
-/

namespace A110231.P9373081332466747741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A046306 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110231.P9373081332466747741

/-! ## A110231.P10894554656950964589

`∩[A046306(n+1), A082300(n+1)]`
-/

namespace A110231.P10894554656950964589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110231.P10894554656950964589

/-!
# A110232: 6-almost primes p * q * r * s * t * u not relatively prime to p+q+r+s+t+u.

The programs for A110232, there is no canonical definition to state claims against.
-/

/-! ## A110232.P7683918086620726033

`∩[A046306(n+1), A370354(n+1)]`
-/

namespace A110232.P7683918086620726033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110232.P7683918086620726033

/-!
# A110233: a(n) is the minimal b >= n such that the sum of consecutive integers from n to b is a perfect power.

The programs for A110233, there is no canonical definition to state claims against.
-/

/-! ## A110233.P4478778405258059612

`A110234(n+1)+n`
-/

namespace A110233.P4478778405258059612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110234 (n + 1) + (n : ℤ)

end

end A110233.P4478778405258059612

/-!
# A110234: Number of consecutive integers starting with n needed to sum to a perfect power.

The programs for A110234, there is no canonical definition to state claims against.
-/

/-! ## A110234.P186211701916202578

`A110233(n+1)-n`
-/

namespace A110234.P186211701916202578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110233 (n + 1) - (n : ℤ)

end

end A110234.P186211701916202578

/-! ## A110234.P14161366314705908103

`abs(A110233(n+1)+A001489(n))`
-/

namespace A110234.P14161366314705908103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110233 (n + 1) + A001489 n|

end

end A110234.P14161366314705908103

/-! ## A110234.P12733365376964532314

`A001478(n+1)+A110233(n+1)+1`
-/

namespace A110234.P12733365376964532314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A110233 (n + 1) + 1)

end

end A110234.P12733365376964532314

/-! ## A110234.P10605510259054083507

`A110233(n+1)+A024000(n+2)+1`
-/

namespace A110234.P10605510259054083507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110233 (n + 1) + A024000 (n + 2) + 1

end

end A110234.P10605510259054083507

/-! ## A110234.P5036338129599447658

`A114327(∑[n+2])+A110233(n+1)+1`
-/

namespace A110234.P5036338129599447658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (∑ j ∈ Finset.range (n + 1), f1 j) + (A110233 (n + 1) + 1)

end

end A110234.P5036338129599447658

/-! ## A110234.P16580614431801755487

`A114327(A000096(n))+A110233(n+1)`
-/

namespace A110234.P16580614431801755487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A000096 n).toNat + A110233 (n + 1)

end

end A110234.P16580614431801755487

/-! ## A110234.P9943769549233064759

`A233583(A110233(n+1))+A024000(n)`
-/

namespace A110234.P9943769549233064759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A110233 (n + 1)).toNat + A024000 n

end

end A110234.P9943769549233064759

/-! ## A110234.P12648984835896706388

`A114327(A052905(n+6))+A110233(n+1)`
-/

namespace A110234.P12648984835896706388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A052905 (n + 6)).toNat + A110233 (n + 1)

end

end A110234.P12648984835896706388

/-!
# A110235: Triangle read by rows: T(n,k)(1<=k<=n) is the number of peakless Motzkin paths of length n having k (1,0) steps (can be easily translated into RNA secondary structure terminology).

The programs for A110235, there is no canonical definition to state claims against.
-/

/-! ## A110235.P13250590325154511964

`A110319(A209293(n+1))`
-/

namespace A110235.P13250590325154511964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110319 (A209293 (n + 1)).toNat

end

end A110235.P13250590325154511964

/-! ## A110235.P3667225045341845546

`A030111(n+1)/A061554(n)*A097610(n)`
-/

namespace A110235.P3667225045341845546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030111 (n + 1) : ℚ) / (A061554 n : ℚ) * (A097610 n : ℚ)

end

end A110235.P3667225045341845546

/-! ## A110235.P6058421287611245823

`A030111(n+1)/A135840(n+1)*A168561(n)`
-/

namespace A110235.P6058421287611245823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030111 (n + 1) : ℚ) / (A135840 (n + 1) : ℚ) * (A168561 n : ℚ)

end

end A110235.P6058421287611245823

/-! ## A110235.P17719301934804768562

`A030111(n+1)/A209278(n+1)*A168561(n)`
-/

namespace A110235.P17719301934804768562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030111 (n + 1) : ℚ) / (A209278 (n + 1) : ℚ) * (A168561 n : ℚ)

end

end A110235.P17719301934804768562

/-! ## A110235.P14356409872409323623

`A046854(n)*A097610(n)/A189231(n)`
-/

namespace A110235.P14356409872409323623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046854 n * A097610 n : ℚ) / (A189231 n : ℚ)

end

end A110235.P14356409872409323623

/-!
# A110236: Number of (1,0) steps in all peakless Motzkin paths of length n (can be easily translated into RNA secondary structure terminology).

The programs for A110236, there is no canonical definition to state claims against.
-/

/-! ## A110236.P7118886234835551702

`Δ[A187258(n+2)]`
-/

namespace A110236.P7118886234835551702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187258 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110236.P7118886234835551702

/-! ## A110236.P14476510244914092672

`Δ[A091964(n)-A166287(n)]`
-/

namespace A110236.P14476510244914092672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 n - A166287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110236.P14476510244914092672

/-! ## A110236.P17719640146142165337

`A089742(n)-A187258(n+2)`
-/

namespace A110236.P17719640146142165337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089742 n - A187258 (n + 2)

end

end A110236.P17719640146142165337

/-! ## A110236.P9515163856906719010

`A051286(n)+Δ[A166287(n+1)]`
-/

namespace A110236.P9515163856906719010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + (f1 (n + 1) - f1 n)

end

end A110236.P9515163856906719010

/-! ## A110236.P8469571158144719565

`A203611(n)+Δ[A088518(2*n)]`
-/

namespace A110236.P8469571158144719565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203611 n + (f1 (n + 1) - f1 n)

end

end A110236.P8469571158144719565

/-! ## A110236.P17789487639440178684

`A190169(n+1)+A190166(n+1)`
-/

namespace A110236.P17789487639440178684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190169 (n + 1) + A190166 (n + 1)

end

end A110236.P17789487639440178684

/-! ## A110236.P1500937468192357573

`A091964(n+1)-A051286(n+1)`
-/

namespace A110236.P1500937468192357573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 (n + 1) - A051286 (n + 1)

end

end A110236.P1500937468192357573

/-! ## A110236.P16324187152590672173

`A051286(n+1)-A166300(n+1)`
-/

namespace A110236.P16324187152590672173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 1) - A166300 (n + 1)

end

end A110236.P16324187152590672173

/-! ## A110236.P15783475136634901310

`A051291(n+1)-A203611(n+1)`
-/

namespace A110236.P15783475136634901310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (n + 1) - A203611 (n + 1)

end

end A110236.P15783475136634901310

/-! ## A110236.P11580447274967096993

`∑[A051291(n+1)-A051286(n+1)]`
-/

namespace A110236.P11580447274967096993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (n + 1) - A051286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110236.P11580447274967096993

/-! ## A110236.P1201186460516812748

`Δ[A088518(2*n+1)-A166287(n)]`
-/

namespace A110236.P1201186460516812748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n + 1) - A166287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110236.P1201186460516812748

/-! ## A110236.P9280191637349171915

`A051286(n)+A051291(n)-A004148(n)`
-/

namespace A110236.P9280191637349171915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + (A051291 n - A004148 n)

end

end A110236.P9280191637349171915

/-! ## A110236.P3185784033628809493

`A051291(n+1)+A201631(n+1)-A110198(n+1)`
-/

namespace A110236.P3185784033628809493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (n + 1) + (A201631 (n + 1) - A110198 (n + 1))

end

end A110236.P3185784033628809493

/-! ## A110236.P14581521099608674298

`A201631(n+2)-A110198(n+1)`
-/

namespace A110236.P14581521099608674298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 2) - A110198 (n + 1)

end

end A110236.P14581521099608674298

/-! ## A110236.P12725567311617802384

`A051286(n+2)-A203611(n+2)`
-/

namespace A110236.P12725567311617802384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 2) - A203611 (n + 2)

end

end A110236.P12725567311617802384

/-! ## A110236.P1060710456474510182

`A201631(n+2)-(A203611(n+1)+A201631(n+1))`
-/

namespace A110236.P1060710456474510182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201631 (n + 2) - (A203611 (n + 1) + A201631 (n + 1))

end

end A110236.P1060710456474510182

/-! ## A110236.P4210845627518805775

`A097860(A087811(n+2)+1)`
-/

namespace A110236.P4210845627518805775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (A087811 (n + 2) + 1).toNat

end

end A110236.P4210845627518805775

/-! ## A110236.P1782895942920295893

`A097860(∑[A008619(n+1)]+2)`
-/

namespace A110236.P1782895942920295893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A110236.P1782895942920295893

/-!
# A110237: Triangle read by rows: T(n,k) (0 <= k <= ceiling(n/2)-1) is the number of (1,0) steps at level k in all peakless Motzkin paths of length n (can be easily translated into RNA secondary structure terminology).

The programs for A110237, there is no canonical definition to state claims against.
-/

/-! ## A110237.P17964653870592893438

`A097724(comp[n²]+n)`
-/

namespace A110237.P17964653870592893438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A110237.P17964653870592893438

/-!
# A110239: Number of (1,1) steps in all peakless Motzkin paths of length n.

The programs for A110239, there is no canonical definition to state claims against.
-/

/-! ## A110239.P850899086147455588

`A203611(n+3)-A004148(n+3)`
-/

namespace A110239.P850899086147455588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203611 (n + 3) - A004148 (n + 3)

end

end A110239.P850899086147455588

/-! ## A110239.P8020278256433571042

`A114713(n+1)-A110236(n+2)`
-/

namespace A110239.P8020278256433571042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114713 (n + 1) - A110236 (n + 2)

end

end A110239.P8020278256433571042

/-! ## A110239.P12440542118018463924

`A110320(n+3)-A110236(n+3)`
-/

namespace A110239.P12440542118018463924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110320 (n + 3) - A110236 (n + 3)

end

end A110239.P12440542118018463924

/-! ## A110239.P6309479643387562987

`A079487(A005893(n+3))`
-/

namespace A110239.P6309479643387562987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A005893 (n + 3)).toNat

end

end A110239.P6309479643387562987

/-! ## A110239.P11556271460260205183

`A079487(A067728(n+1)+10)`
-/

namespace A110239.P11556271460260205183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A067728 (n + 1) + 10).toNat

end

end A110239.P11556271460260205183

/-! ## A110239.P16737696575679507457

`record[A079487(A005893(A020986(n)))]`
-/

namespace A110239.P16737696575679507457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A005893 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110239.P16737696575679507457

/-! ## A110239.P5715908640323906448

`record[A079487(A005893(A025480(n)))]`
-/

namespace A110239.P5715908640323906448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A005893 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110239.P5715908640323906448

/-!
# A110240: Decimal form of binary integer produced by the ON cells at n-th generation following Wolfram's Rule 30 cellular automaton starting from a single ON-cell represented as 1.

The programs for A110240, the canonical program `A110240.P11302623122308525512` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110240 has offset 0).

The definition of A110240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269160, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110240.P11302623122308525512

`A269160(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A110240

/-- `A269160(a(n-1))` -/
def P11302623122308525512.Spec : Prop :=
  ∀ n, P11302623122308525512.a n = A110240 n

theorem P11302623122308525512.correct : P11302623122308525512.Spec := by
  intro n
  simp only [A110240]

end A110240

/-! ## A110240.P7085240563134923672

`A030101(A265281(n))`
-/

namespace A110240.P7085240563134923672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A265281 n).toNat

end

end A110240.P7085240563134923672

namespace A110240

/-- `A030101(A265281(n))` -/
def P7085240563134923672.Spec : Prop :=
  ∀ n, P7085240563134923672.a n = A110240 n

end A110240

/-! ## A110240.P7017584569408878589

`xor(2*or(2*a(n-1), a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A110240.P7017584569408878589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * Nat.lor (2 * a (n - 1)) (a (n - 1))) (a (n - 1))

end

end A110240.P7017584569408878589

namespace A110240

/-- `xor(2*or(2*a(n-1), a(n-1)), a(n-1))` -/
def P7017584569408878589.Spec : Prop :=
  ∀ n, (P7017584569408878589.a n : ℤ) = A110240 n

end A110240

/-! ## A110240.P17883374151482817742

`xor(xor(2*a(n-1), a(n-1))+3*a(n-1), a(n-1))` with `a(0)=1`
-/

namespace A110240.P17883374151482817742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.xor (2 * a (n - 1)) (a (n - 1)) + 3 * a (n - 1)) (a (n - 1))

end

end A110240.P17883374151482817742

namespace A110240

/-- `xor(xor(2*a(n-1), a(n-1))+3*a(n-1), a(n-1))` -/
def P17883374151482817742.Spec : Prop :=
  ∀ n, (P17883374151482817742.a n : ℤ) = A110240 n

end A110240

/-! ## A110240.P9772131361967264884

`xor(A038184(n), A327972(n))`
-/

namespace A110240.P9772131361967264884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038184 n) (A327972 n)

end

end A110240.P9772131361967264884

namespace A110240

/-- `xor(A038184(n), A327972(n))` -/
def P9772131361967264884.Spec : Prop :=
  ∀ n, P9772131361967264884.a n = A110240 n

end A110240

/-! ## A110240.P13910818658099839240

`xor(A265281(n), A327971(n))`
-/

namespace A110240.P13910818658099839240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A265281 n) (A327971 n)

end

end A110240.P13910818658099839240

namespace A110240

/-- `xor(A265281(n), A327971(n))` -/
def P13910818658099839240.Spec : Prop :=
  ∀ n, P13910818658099839240.a n = A110240 n

end A110240

/-! ## A110240.P3889445573233084510

`xor(A267357(n), A328103(n))`
-/

namespace A110240.P3889445573233084510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267357 n) (A328103 n)

end

end A110240.P3889445573233084510

namespace A110240

/-- `xor(A267357(n), A328103(n))` -/
def P3889445573233084510.Spec : Prop :=
  ∀ n, P3889445573233084510.a n = A110240 n

end A110240

/-!
# A110241: J(n)^3+J(n+1)^3, where J(n) = the Jacobsthal number A001045(n).

The programs for A110241, the canonical program `A110241.P6079462318007196430` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110241 has offset 0).

The definition of A110241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110241.P6079462318007196430

`6*a(n-1)+24*a(n-2)-64*a(n-3)` with `a(0)=1, a(1)=2, a(2)=28`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110241

/-- `6*a(n-1)+24*a(n-2)-64*a(n-3)` -/
def P6079462318007196430.Spec : Prop :=
  ∀ n, P6079462318007196430.a n = A110241 n

theorem P6079462318007196430.correct : P6079462318007196430.Spec := by
  intro n
  simp only [A110241]

end A110241

/-! ## A110241.P5720445892954560675

`2^n/3+8^n/3+(-4)^n/3`
-/

namespace A110241.P5720445892954560675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3 + (8 ^ n : ℚ) / 3 + ((-4) ^ n : ℚ) / 3

end

end A110241.P5720445892954560675

namespace A110241

/-- `2^n/3+8^n/3+(-4)^n/3` -/
def P5720445892954560675.Spec : Prop :=
  ∀ n, P5720445892954560675.a n = (A110241 n : ℚ)

theorem P5720445892954560675.correct : P5720445892954560675.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A110241, Nat.add_sub_cancel, A110241.P5720445892954560675.a, A110241.P6079462318007196430.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A110241, Nat.add_sub_cancel, A110241.P5720445892954560675.a, A110241.P6079462318007196430.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A110241

/-! ## A110241.P1259734413268663980

`2^n*A245489(n)`
-/

namespace A110241.P1259734413268663980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A245489 n

end

end A110241.P1259734413268663980

namespace A110241

/-- `2^n*A245489(n)` -/
def P1259734413268663980.Spec : Prop :=
  ∀ n, P1259734413268663980.a n = A110241 n

end A110241

/-! ## A110241.P6541508577648487377

`lcm(A000079(n), A245489(n))`
-/

namespace A110241.P6541508577648487377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A245489 n)

end

end A110241.P6541508577648487377

namespace A110241

/-- `lcm(A000079(n), A245489(n))` -/
def P6541508577648487377.Spec : Prop :=
  ∀ n, (P6541508577648487377.a n : ℤ) = A110241 n

end A110241

/-! ## A110241.P3238369174022110728

`(A108924(n)-A084175(n))*A000079(n)`
-/

namespace A110241.P3238369174022110728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108924 n - A084175 n) * A000079 n

end

end A110241.P3238369174022110728

namespace A110241

/-- `(A108924(n)-A084175(n))*A000079(n)` -/
def P3238369174022110728.Spec : Prop :=
  ∀ n, P3238369174022110728.a n = A110241 n

end A110241

/-! ## A110241.P4402423935493016976

`xor(A002450(n)*A014551(n), A283642(n))`
-/

namespace A110241.P4402423935493016976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002450 n * A014551 n) (A283642 n)

end

end A110241.P4402423935493016976

namespace A110241

/-- `xor(A002450(n)*A014551(n), A283642(n))` -/
def P4402423935493016976.Spec : Prop :=
  ∀ n, P4402423935493016976.a n = A110241 n

end A110241

/-! ## A110241.P6332072717054961233

`xor(A002450(n)*A166977(n), A283642(n))`
-/

namespace A110241.P6332072717054961233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002450 n * A166977 n) (A283642 n)

end

end A110241.P6332072717054961233

namespace A110241

/-- `xor(A002450(n)*A166977(n), A283642(n))` -/
def P6332072717054961233.Spec : Prop :=
  ∀ n, P6332072717054961233.a n = A110241 n

end A110241

/-!
# A110243: Row sums of a Jacobi triangle.

The programs for A110243, there is no canonical definition to state claims against.
-/

/-! ## A110243.P17073394831427463737

`∑{digits}[A110252(n), A092220(#)]`
-/

namespace A110243.P17073394831427463737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A092220 x).sum

end

end A110243.P17073394831427463737

/-! ## A110243.P13612331812630245968

`∑{digits}[A110252(n), A102283(#)]`
-/

namespace A110243.P13612331812630245968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A102283 x).sum

end

end A110243.P13612331812630245968

/-! ## A110243.P10211640237461545439

`∑{digits}[A110252(n), A030201(#²)]`
-/

namespace A110243.P10211640237461545439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A030201 (x ^ 2)).sum

end

end A110243.P10211640237461545439

/-! ## A110243.P4744454695289935923

`∑{digits}[A110252(n), 1-A097805(#)]`
-/

namespace A110243.P4744454695289935923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A097805 x).sum

end

end A110243.P4744454695289935923

/-! ## A110243.P13034909746546824207

`∑{digits}[A110252(n), 1-A274581(#)]`
-/

namespace A110243.P13034909746546824207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A274581 x).sum

end

end A110243.P13034909746546824207

/-!
# A110245: Inverse of a Jacobi number triangle.

The programs for A110245, there is no canonical definition to state claims against.
-/

/-! ## A110245.P18198086157360765963

`A123230(A167921(n+1))`
-/

namespace A110245.P18198086157360765963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123230 (A167921 (n + 1)).toNat

end

end A110245.P18198086157360765963

/-! ## A110245.P12791851033495123175

`A029201(n)-A106165(A106164(n))`
-/

namespace A110245.P12791851033495123175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029201 n - A106165 (A106164 n).toNat

end

end A110245.P12791851033495123175

/-! ## A110245.P18394619302210725061

`A221960(A176129(n)+A143316(n+1))`
-/

namespace A110245.P18394619302210725061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221960 (A176129 n + A143316 (n + 1)).toNat

end

end A110245.P18394619302210725061

/-! ## A110245.P2937532718550330833

`A036968(A284455(n+1)+A138222(n+1))`
-/

namespace A110245.P2937532718550330833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (A284455 (n + 1) + A138222 (n + 1)).toNat

end

end A110245.P2937532718550330833

/-! ## A110245.P7339072877044514769

`A366766(n+1)-A127094(A094530(n+1))`
-/

namespace A110245.P7339072877044514769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366766 (n + 1) - A127094 (A094530 (n + 1)).toNat

end

end A110245.P7339072877044514769

/-!
# A110246: Second column of number triangle A110245.

The programs for A110246, there is no canonical definition to state claims against.
-/

/-! ## A110246.P1368126366262057218

`A110245(A000124(n))%(3^n)`
-/

namespace A110246.P1368126366262057218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110245 (A000124 n).toNat) (3 ^ n : ℤ)

end

end A110246.P1368126366262057218

/-! ## A110246.P5950171461385942825

`A057427(n)*A110245(∑[n]+1)`
-/

namespace A110246.P5950171461385942825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A110245 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A110246.P5950171461385942825

/-! ## A110246.P15481716745999849613

`A110245(A000124(n))+A000007(n)`
-/

namespace A110246.P15481716745999849613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110245 (A000124 n).toNat + A000007 n

end

end A110246.P15481716745999849613

/-! ## A110246.P5685670191472759926

`A110245(A000124(n)+A000038(n))`
-/

namespace A110246.P5685670191472759926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110245 (A000124 n + A000038 n).toNat

end

end A110246.P5685670191472759926

/-! ## A110246.P6784948323771178706

`A110245(or(A000038(n), A000124(n)))`
-/

namespace A110246.P6784948323771178706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110245 (Int.lor (A000038 n) (A000124 n)).toNat

end

end A110246.P6784948323771178706

/-!
# A110247: A Jacobi number triangle.

The programs for A110247, there is no canonical definition to state claims against.
-/

/-! ## A110247.P11822438968825507679

`A016242(A265170(n+1)+6)`
-/

namespace A110247.P11822438968825507679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016242 (A265170 (n + 1) + 6).toNat

end

end A110247.P11822438968825507679

/-! ## A110247.P3368290602919737609

`A056594(A161564(A048993(n)))`
-/

namespace A110247.P3368290602919737609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A161564 (A048993 n).toNat).toNat

end

end A110247.P3368290602919737609

/-! ## A110247.P7424314185690310560

`A056594(A108131(n)-A204459(n))`
-/

namespace A110247.P7424314185690310560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A108131 n - A204459 n).toNat

end

end A110247.P7424314185690310560

/-! ## A110247.P1391317079686220426

`A056594(xor(A108131(n), A204459(n)))`
-/

namespace A110247.P1391317079686220426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.xor (A108131 n) (A204459 n)).toNat

end

end A110247.P1391317079686220426

/-! ## A110247.P9411151615704806434

`A297742(A294219(n))`
-/

namespace A110247.P9411151615704806434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297742 (A294219 n).toNat

end

end A110247.P9411151615704806434

/-!
# A110248: Row sums of a Jacobi number triangle.

The programs for A110248, there is no canonical definition to state claims against.
-/

/-! ## A110248.P5698254474968336093

`A110251(n)%9`
-/

namespace A110248.P5698254474968336093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110251 n) 9

end

end A110248.P5698254474968336093

/-! ## A110248.P14614503674954574057

`∑{digits}[A110251(n), A092202(#)]`
-/

namespace A110248.P14614503674954574057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A092202 x).sum

end

end A110248.P14614503674954574057

/-! ## A110248.P4928006545645948968

`∑{digits}[A110251(n), A092220(#)]`
-/

namespace A110248.P4928006545645948968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A092220 x).sum

end

end A110248.P4928006545645948968

/-! ## A110248.P6785208813409833875

`∑{digits}[A110251(n), A102283(#)]`
-/

namespace A110248.P6785208813409833875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A102283 x).sum

end

end A110248.P6785208813409833875

/-! ## A110248.P6962623839285072227

`(A110253(n)-A110252(n))%9`
-/

namespace A110248.P6962623839285072227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110253 n - A110252 n) 9

end

end A110248.P6962623839285072227

/-!
# A110249: Diagonal sums of a Jacobi number triangle.

The programs for A110249, there is no canonical definition to state claims against.
-/

/-! ## A110249.P11095561619193257049

`A160381(4*A282422(n))`
-/

namespace A110249.P11095561619193257049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (4 * A282422 n).toNat

end

end A110249.P11095561619193257049

/-! ## A110249.P10074780860059117312

`A160381(lcm(4, A282422(n)))`
-/

namespace A110249.P10074780860059117312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (Int.lcm 4 (A282422 n))

end

end A110249.P10074780860059117312

/-! ## A110249.P15666269708409140947

`A087372(A066510(n+1)+1)`
-/

namespace A110249.P15666269708409140947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087372 (A066510 (n + 1) + 1).toNat

end

end A110249.P15666269708409140947

/-! ## A110249.P8555954668236217996

`and(A086289(3*2^n-1), A086289(n+5))`
-/

namespace A110249.P8555954668236217996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086289 (3 * 2 ^ n - 1)) (A086289 (n + 5))

end

end A110249.P8555954668236217996

/-! ## A110249.P4829229763504692249

`A124767(lcm(A087447(n), A238349(n)))`
-/

namespace A110249.P4829229763504692249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Int.lcm (A087447 n) (A238349 n))

end

end A110249.P4829229763504692249

/-!
# A110250: Inverse of a Jacobi number triangle.

The programs for A110250, there is no canonical definition to state claims against.
-/

/-! ## A110250.P10018837315343887000

`Δ[A008683(lcm(6, A216653(n+1)))]`
-/

namespace A110250.P10018837315343887000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lcm 6 (A216653 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110250.P10018837315343887000

/-! ## A110250.P6877415981027925117

`A004718(A090238(n)^A233543(n))`
-/

namespace A110250.P6877415981027925117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (SequenceMachineLib.roundAway ((A090238 n : ℚ) ^ (A233543 n : ℤ))).toNat

end

end A110250.P6877415981027925117

/-! ## A110250.P15006145657802747098

`A004718(A090238(n)^A195644(n+1))`
-/

namespace A110250.P15006145657802747098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (SequenceMachineLib.roundAway ((A090238 n : ℚ) ^ (A195644 (n + 1) : ℤ))).toNat

end

end A110250.P15006145657802747098

/-! ## A110250.P627982061287384201

`A101688(n)-A074941(A178070(2*n+1))`
-/

namespace A110250.P627982061287384201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n - A074941 (A178070 (2 * n + 1)).toNat

end

end A110250.P627982061287384201

/-! ## A110250.P15934694663775664467

`A134541(A338765(n+1))`
-/

namespace A110250.P15934694663775664467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134541 (A338765 (n + 1)).toNat

end

end A110250.P15934694663775664467

/-!
# A110251: A Jacobi transform of 10^n.

The programs for A110251, there is no canonical definition to state claims against.
-/

/-! ## A110251.P12470453185779510469

`A110253(n)-A110252(n)`
-/

namespace A110251.P12470453185779510469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110253 n - A110252 n

end

end A110251.P12470453185779510469

/-!
# A110252: A Jacobi transform of 10^n.

The programs for A110252, there is no canonical definition to state claims against.
-/

/-! ## A110252.P17129970983539408769

`A110253(n)-A110251(n)`
-/

namespace A110252.P17129970983539408769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110253 n - A110251 n

end

end A110252.P17129970983539408769

/-!
# A110253: A sum of Jacobi transforms of 10^n.

The programs for A110253, there is no canonical definition to state claims against.
-/

/-! ## A110253.P12582311084351174857

`A110251(n)+A110252(n)`
-/

namespace A110253.P12582311084351174857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110251 n + A110252 n

end

end A110253.P12582311084351174857

/-!
# A110254: Square-indexed values of A110243.

The programs for A110254, the canonical program `A110254.P9092773517580308089` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110254 has offset 0).

The definition of A110254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110254.P11968795611474555509

`A110243(n²)`
-/

namespace A110254.P11968795611474555509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110243 (n ^ 2)

end

end A110254.P11968795611474555509

namespace A110254

/-- `A110243(n²)` -/
def P11968795611474555509.Spec : Prop :=
  ∀ n, P11968795611474555509.a n = A110254 n

end A110254

/-! ## A110254.P14254616524301749992

`A132953(round(1/acot(n))+n)+1`
-/

namespace A110254.P14254616524301749992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132953 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat + 1

end

end A110254.P14254616524301749992

namespace A110254

/-- `A132953(round(1/acot(n))+n)+1` -/
def P14254616524301749992.Spec : Prop :=
  ∀ n, P14254616524301749992.a n = A110254 n

end A110254

/-! ## A110254.P17952011558592977017

`n*A062570(abs(1-n)+1)+1`
-/

namespace A110254.P17952011558592977017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062570 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A110254.P17952011558592977017

namespace A110254

/-- `n*A062570(abs(1-n)+1)+1` -/
def P17952011558592977017.Spec : Prop :=
  ∀ n, P17952011558592977017.a n = A110254 n

end A110254

/-! ## A110254.P15491570495513891035

`n*A000010(gcd(n, C(2, n))+n)+1`
-/

namespace A110254.P15491570495513891035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000010 (Nat.gcd n (Nat.choose 2 n) + n) + 1

end

end A110254.P15491570495513891035

namespace A110254

/-- `n*A000010(gcd(n, C(2, n))+n)+1` -/
def P15491570495513891035.Spec : Prop :=
  ∀ n, P15491570495513891035.a n = A110254 n

end A110254

/-! ## A110254.P7016364098495370841

`n*A000010(floor(acot(n))+2*n)+1`
-/

namespace A110254.P7016364098495370841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000010 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat + 1

end

end A110254.P7016364098495370841

namespace A110254

/-- `n*A000010(floor(acot(n))+2*n)+1` -/
def P7016364098495370841.Spec : Prop :=
  ∀ n, P7016364098495370841.a n = A110254 n

end A110254

/-! ## A110254.P9092773517580308089

`lcm(n, A023896(record[A124625(n)]))+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110254

/-- `lcm(n, A023896(record[A124625(n)]))+1` -/
def P9092773517580308089.Spec : Prop :=
  ∀ n, (P9092773517580308089.a n : ℤ) = A110254 n

theorem P9092773517580308089.correct : P9092773517580308089.Spec := by
  intro n
  simp only [A110254]

end A110254

/-! ## A110254.P14322414982926703054

`n*A225530(2*n)+1`
-/

namespace A110254.P14322414982926703054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A225530 (2 * n) + 1

end

end A110254.P14322414982926703054

namespace A110254

/-- `n*A225530(2*n)+1` -/
def P14322414982926703054.Spec : Prop :=
  ∀ n, P14322414982926703054.a n = A110254 n

end A110254

/-! ## A110254.P12633090517312212709

`A141310(n*A225530(2*n))`
-/

namespace A110254.P12633090517312212709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n : ℤ) * A225530 (2 * n)).toNat

end

end A110254.P12633090517312212709

namespace A110254

/-- `A141310(n*A225530(2*n))` -/
def P12633090517312212709.Spec : Prop :=
  ∀ n, P12633090517312212709.a n = A110254 n

end A110254

/-!
# A110255: Numerators in the fractional coefficients that form the partial quotients of the continued fraction representation of the inverse tangent of 1/x.

The programs for A110255, there is no canonical definition to state claims against.
-/

/-! ## A110255.P5110259686842496782

`char[1]+abs(A095159(n+1))`
-/

namespace A110255.P5110259686842496782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + |A095159 (n + 1)|

end

end A110255.P5110259686842496782

/-! ## A110255.P3640905840785541672

`abs(or(A095159(n+1), A209229(n)))`
-/

namespace A110255.P3640905840785541672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A095159 (n + 1)) (A209229 n)|

end

end A110255.P3640905840785541672

/-! ## A110255.P11748136488206039387

`abs(or(A095159(n+1), A252233(n+1)))`
-/

namespace A110255.P11748136488206039387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A095159 (n + 1)) (A252233 (n + 1))|

end

end A110255.P11748136488206039387

/-! ## A110255.P1689395057271035322

`abs(or(A095159(n+1), A296066(n+1)))`
-/

namespace A110255.P1689395057271035322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A095159 (n + 1)) (A296066 (n + 1))|

end

end A110255.P1689395057271035322

/-!
# A110256: 

The programs for A110256, there is no canonical definition to state claims against.
-/

/-! ## A110256.P10757466026436634600

`A095175(n+1)`
-/

namespace A110256.P10757466026436634600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095175 (n + 1)

end

end A110256.P10757466026436634600

/-! ## A110256.P700455344601353254

`A327526(A184877(n))`
-/

namespace A110256.P700455344601353254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (A184877 n).toNat

end

end A110256.P700455344601353254

/-! ## A110256.P12037012211936834586

`A332012(A296771(n))`
-/

namespace A110256.P12037012211936834586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332012 (A296771 n).toNat

end

end A110256.P12037012211936834586

/-!
# A110257: Numerators in the coefficients that form the odd-indexed partial quotients of the continued fraction representation of the inverse tangent of 1/x.

The programs for A110257, the canonical program `A110257.P16520114715403784889` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110257 has offset 1).

The definition of A110257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110257.P8951749140555236967

`A110255(2*n+1)`
-/

namespace A110257.P8951749140555236967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110255 (2 * n + 1)

end

end A110257.P8951749140555236967

namespace A110257

/-- `A110255(2*n+1)` -/
def P8951749140555236967.Spec : Prop :=
  ∀ n, P8951749140555236967.a n = A110257 (n + 1)

end A110257

/-! ## A110257.P16520114715403784889

`(4*n+1)*A002894(n)/4^A000120(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110257

/-- `(4*n+1)*A002894(n)/4^A000120(n)` -/
def P16520114715403784889.Spec : Prop :=
  ∀ n, P16520114715403784889.a n = (A110257 (n + 1) : ℚ)

end A110257

/-! ## A110257.P3555712437269959075

`(4*n+1)*A038534(n)`
-/

namespace A110257.P3555712437269959075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A038534 n

end

end A110257.P3555712437269959075

namespace A110257

/-- `(4*n+1)*A038534(n)` -/
def P3555712437269959075.Spec : Prop :=
  ∀ n, P3555712437269959075.a n = A110257 (n + 1)

end A110257

/-! ## A110257.P17544109294464287075

`(4*n+1)*A001790(n)²`
-/

namespace A110257.P17544109294464287075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A001790 n ^ 2

end

end A110257.P17544109294464287075

namespace A110257

/-- `(4*n+1)*A001790(n)²` -/
def P17544109294464287075.Spec : Prop :=
  ∀ n, P17544109294464287075.a n = A110257 (n + 1)

end A110257

/-! ## A110257.P95500583647881353

`A163590(2*n)²*(4*n+1)`
-/

namespace A110257.P95500583647881353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n) ^ 2 * (4 * n + 1 : ℤ)

end

end A110257.P95500583647881353

namespace A110257

/-- `A163590(2*n)²*(4*n+1)` -/
def P95500583647881353.Spec : Prop :=
  ∀ n, P95500583647881353.a n = A110257 (n + 1)

end A110257

/-! ## A110257.P15623857124632796295

`A001790(n)²*A016813(n)`
-/

namespace A110257.P15623857124632796295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n ^ 2 * A016813 n

end

end A110257.P15623857124632796295

namespace A110257

/-- `A001790(n)²*A016813(n)` -/
def P15623857124632796295.Spec : Prop :=
  ∀ n, P15623857124632796295.a n = A110257 (n + 1)

end A110257

/-! ## A110257.P9420209196853917880

`2*A069955(n)-A038534(n)`
-/

namespace A110257.P9420209196853917880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069955 n - A038534 n

end

end A110257.P9420209196853917880

namespace A110257

/-- `2*A069955(n)-A038534(n)` -/
def P9420209196853917880.Spec : Prop :=
  ∀ n, P9420209196853917880.a n = A110257 (n + 1)

end A110257

/-! ## A110257.P5784764127894315851

`2*A069955(n)-A001790(n)²`
-/

namespace A110257.P5784764127894315851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069955 n - A001790 n ^ 2

end

end A110257.P5784764127894315851

namespace A110257

/-- `2*A069955(n)-A001790(n)²` -/
def P5784764127894315851.Spec : Prop :=
  ∀ n, P5784764127894315851.a n = A110257 (n + 1)

end A110257

/-! ## A110257.P5313024933866153972

`A001790(n)²*A005408(2*n)`
-/

namespace A110257.P5313024933866153972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n ^ 2 * A005408 (2 * n)

end

end A110257.P5313024933866153972

namespace A110257

/-- `A001790(n)²*A005408(2*n)` -/
def P5313024933866153972.Spec : Prop :=
  ∀ n, P5313024933866153972.a n = A110257 (n + 1)

end A110257

/-! ## A110257.P4427509402761375876

`A001790(n)²*A157142(2*n)`
-/

namespace A110257.P4427509402761375876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n ^ 2 * A157142 (2 * n)

end

end A110257.P4427509402761375876

namespace A110257

/-- `A001790(n)²*A157142(2*n)` -/
def P4427509402761375876.Spec : Prop :=
  ∀ n, P4427509402761375876.a n = A110257 (n + 1)

end A110257

/-!
# A110259: Numerators in the coefficients that form the even-indexed partial quotients of the continued fraction representation of the inverse tangent of 1/x.

The programs for A110259, there is no canonical definition to state claims against.
-/

/-! ## A110259.P16464188443159296506

`A110255(2*(n+1))`
-/

namespace A110259.P16464188443159296506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110255 (2 * (n + 1))

end

end A110259.P16464188443159296506

/-! ## A110259.P15888222365228150384

`A110255(A103517(n))+A000038(n)`
-/

namespace A110259.P15888222365228150384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110255 (A103517 n).toNat + A000038 n

end

end A110259.P15888222365228150384

/-!
# A110262: Where records occur in A110261.

The programs for A110262, there is no canonical definition to state claims against.
-/

/-! ## A110262.P12794377073633368641

`∑[gcd(2, Δ[A202651(n+1)])]`
-/

namespace A110262.P12794377073633368641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202651 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110262.P12794377073633368641

/-! ## A110262.P2848443358261286962

`filter[A106744(n+2), A354034(#)]`
-/

namespace A110262.P2848443358261286962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A110262.P2848443358261286962

/-! ## A110262.P12310131746255846271

`A176693(n+2)%A005231(A295066(n))`
-/

namespace A110262.P12310131746255846271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176693 (n + 2)) (A005231 (A295066 n).toNat)

end

end A110262.P12310131746255846271

/-! ## A110262.P281187733738986855

`eq[A000035(A119660(n+1)), A354034(n)]`
-/

namespace A110262.P281187733738986855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A119660 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110262.P281187733738986855

/-! ## A110262.P2277428296810466846

`lt[A358326(A003285(n+1)), A080924(n)]`
-/

namespace A110262.P2277428296810466846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358326 (A003285 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110262.P2277428296810466846

/-!
# A110263: Record values in A110261.

The programs for A110263, there is no canonical definition to state claims against.
-/

/-! ## A110263.P11274543532575244240

`record[A110261(n+1)]`
-/

namespace A110263.P11274543532575244240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110263.P11274543532575244240

/-! ## A110263.P17476409997264263106

`A110261(A110262(n+1))`
-/

namespace A110263.P17476409997264263106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110261 (A110262 (n + 1)).toNat

end

end A110263.P17476409997264263106

/-! ## A110263.P921384850642973459

`record[A110261(A028310(n))]%73`
-/

namespace A110263.P921384850642973459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110261 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 73

end

end A110263.P921384850642973459

/-! ## A110263.P2505319746946903008

`A007318(∑[n])*record[A110261(ϕ²-(ϕ-n))]`
-/

namespace A110263.P2505319746946903008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110261 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A110263.P2505319746946903008

/-! ## A110263.P6909710256096756085

`record[A007318(C(2, n))*A110261(ϕ²-(ϕ-n))]`
-/

namespace A110263.P6909710256096756085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A110261 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110263.P6909710256096756085

/-!
# A110266: Number of blocks of ON cells in n-th row of triangle generated by Wolfram's "Rule 30".

The programs for A110266, there is no canonical definition to state claims against.
-/

/-! ## A110266.P10246675540413685836

`(A226482(n)+1)/2`
-/

namespace A110266.P10246675540413685836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226482 n + 1 : ℚ) / 2

end

end A110266.P10246675540413685836

/-! ## A110266.P10354425708638853409

`A000463(A226482(n))`
-/

namespace A110266.P10354425708638853409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A226482 n).toNat

end

end A110266.P10354425708638853409

/-! ## A110266.P13939175382765714931

`A001281(A226482(n)+1)`
-/

namespace A110266.P13939175382765714931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A226482 n + 1).toNat

end

end A110266.P13939175382765714931

/-! ## A110266.P9705025224706497810

`A004525(A226482(n)+1)`
-/

namespace A110266.P9705025224706497810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A226482 n + 1).toNat

end

end A110266.P9705025224706497810

/-! ## A110266.P2863185617396855019

`A004526(A226482(n)+1)`
-/

namespace A110266.P2863185617396855019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A226482 n + 1).toNat

end

end A110266.P2863185617396855019

/-! ## A110266.P10062764392740144066

`A026741(A226482(n)+1)`
-/

namespace A110266.P10062764392740144066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A226482 n + 1).toNat

end

end A110266.P10062764392740144066

/-! ## A110266.P14242424514218187703

`A032742(A226482(n)+1)`
-/

namespace A110266.P14242424514218187703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A226482 n + 1).toNat

end

end A110266.P14242424514218187703

/-! ## A110266.P14933271248751481678

`A004524(A226482(n)+2)`
-/

namespace A110266.P14933271248751481678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A226482 n + 2).toNat

end

end A110266.P14933271248751481678

/-! ## A110266.P2792616220907615376

`A328105(n)-A070952(n)`
-/

namespace A110266.P2792616220907615376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328105 n - A070952 n

end

end A110266.P2792616220907615376

/-! ## A110266.P7471283181235665624

`A002265(2*(A226482(n)+1))`
-/

namespace A110266.P7471283181235665624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A226482 n + 1)).toNat

end

end A110266.P7471283181235665624

/-! ## A110266.P6590810162274614432

`A002265(lcm(2, A226482(n)))+1`
-/

namespace A110266.P6590810162274614432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 2 (A226482 n)) + 1

end

end A110266.P6590810162274614432

/-! ## A110266.P6399242570886145824

`A008619(A226482(n)%∑[A008619(n)])`
-/

namespace A110266.P6399242570886145824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A226482 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A110266.P6399242570886145824

/-! ## A110266.P12738382254658474082

`A002265(A226482(n)+A226482(n)+2)`
-/

namespace A110266.P12738382254658474082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A226482 n + (A226482 n + 2)).toNat

end

end A110266.P12738382254658474082

/-! ## A110266.P11430870758651824595

`A226482(n)-A001281(A226482(n)-1)`
-/

namespace A110266.P11430870758651824595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 n - A001281 (A226482 n - 1).toNat

end

end A110266.P11430870758651824595

/-! ## A110266.P6374181229434283773

`A226482(n)-A004525(A226482(n)-1)`
-/

namespace A110266.P6374181229434283773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 n - A004525 (A226482 n - 1).toNat

end

end A110266.P6374181229434283773

/-! ## A110266.P6027578592754794987

`A226482(n)-A004526(A226482(n)-1)`
-/

namespace A110266.P6027578592754794987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 n - A004526 (A226482 n - 1).toNat

end

end A110266.P6027578592754794987

/-! ## A110266.P15022205632806163661

`A226482(n)-A026741(A226482(n)-1)`
-/

namespace A110266.P15022205632806163661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 n - A026741 (A226482 n - 1).toNat

end

end A110266.P15022205632806163661

/-! ## A110266.P1065193290836629158

`A226482(n)-A002265(2*A226482(n))`
-/

namespace A110266.P1065193290836629158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 n - A002265 (2 * A226482 n).toNat

end

end A110266.P1065193290836629158

/-! ## A110266.P8305994291692929973

`A008619(A226482(n))%A226482(n+2)`
-/

namespace A110266.P8305994291692929973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A226482 n).toNat) (A226482 (n + 2))

end

end A110266.P8305994291692929973

/-!
# A110267: Total number of black cells at the first n generations of a single black cell following Wolfram's Rule 30 cellular automaton.

The programs for A110267, there is no canonical definition to state claims against.
-/

/-! ## A110267.P6524622615638437811

`∑[A070952(n)]`
-/

namespace A110267.P6524622615638437811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110267.P6524622615638437811

/-! ## A110267.P11385125441964314304

`∑[∑[A151929(n)]]`
-/

namespace A110267.P11385125441964314304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151929 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110267.P11385125441964314304

/-! ## A110267.P15508938574749414491

`∑[A246024(n)+n]`
-/

namespace A110267.P15508938574749414491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246024 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110267.P15508938574749414491

/-! ## A110267.P8232249376009419859

`(n+1)²-A265224(n)`
-/

namespace A110267.P8232249376009419859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265224 n

end

end A110267.P8232249376009419859

/-! ## A110267.P1650207403271649933

`∑[Δ[n²]-A070951(n)]`
-/

namespace A110267.P1650207403271649933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A070951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110267.P1650207403271649933

/-! ## A110267.P17407689421995595611

`A265704(n)+A070952(n)`
-/

namespace A110267.P17407689421995595611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 n + A070952 n

end

end A110267.P17407689421995595611

/-! ## A110267.P1610467225286555882

`A265704(n+1)`
-/

namespace A110267.P1610467225286555882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 (n + 1)

end

end A110267.P1610467225286555882

/-! ## A110267.P5195873521224723986

`∑[A265703(n+1)]`
-/

namespace A110267.P5195873521224723986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110267.P5195873521224723986

/-! ## A110267.P8656070667545806861

`record[A265704(abs(1-n))]`
-/

namespace A110267.P8656070667545806861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110267.P8656070667545806861

/-! ## A110267.P11723209904901228031

`(n+2)²-A265702(n+1)`
-/

namespace A110267.P11723209904901228031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A265702 (n + 1)

end

end A110267.P11723209904901228031

/-! ## A110267.P11129135293874771821

`∑[∑[A265701(n)+2-A265701(n+1)]]`
-/

namespace A110267.P11129135293874771821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n + (2 - A265701 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110267.P11129135293874771821

/-! ## A110267.P12773564944023812787

`∩[A265704(n), A337843(n)]`
-/

namespace A110267.P12773564944023812787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110267.P12773564944023812787

/-!
# A110268: Consider the sequence A110566: lcm{1,2,...,n}/denominator of harmonic number H(n). a(n) is the factor that is changed going from A110566(n) to A110566(n+1).

The programs for A110268, there is no canonical definition to state claims against.
-/

/-! ## A110268.P10471619126629597439

`gcd(n+2, A000265(A144405(n)))`
-/

namespace A110268.P10471619126629597439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A000265 (A144405 n).toNat)

end

end A110268.P10471619126629597439

/-! ## A110268.P9032855451345530424

`gcd(A017077(n), A050985(A013620(n)))`
-/

namespace A110268.P9032855451345530424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017077 n) (A050985 (A013620 n).toNat)

end

end A110268.P9032855451345530424

/-! ## A110268.P11559647110981124580

`gcd(A000265(A144405(n)), A033562(n))`
-/

namespace A110268.P11559647110981124580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A144405 n).toNat) (A033562 n)

end

end A110268.P11559647110981124580

/-! ## A110268.P4580910029824889512

`gcd(A087999(A033562(n)), A098825(n))`
-/

namespace A110268.P4580910029824889512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087999 (A033562 n).toNat) (A098825 n)

end

end A110268.P4580910029824889512

/-! ## A110268.P4485497451723539432

`gcd(A000265(n+2), A090640(A216500(2*n+1)))`
-/

namespace A110268.P4485497451723539432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 2)) (A090640 (A216500 (2 * n + 1)).toNat)

end

end A110268.P4485497451723539432

/-!
# A110269: n mod 2 + n mod 3.

The programs for A110269, the canonical program `A110269.P615393015379082833` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110269 has offset 0).

The definition of A110269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n%2+n%3` (program `A110269.P615393015379082833`, by `A110269.P615393015379082833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110269.P615393015379082833

`n%2+n%3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110269

/-- `n%2+n%3` -/
def P615393015379082833.Spec : Prop :=
  ∀ n, (P615393015379082833.a n : ℤ) = A110269 n

theorem P615393015379082833.correct : P615393015379082833.Spec := by
  intro n
  simp only [A110269]

end A110269

/-!
# A110270: a(n) = (n mod 2)*(n mod 3).

The programs for A110270, the canonical program `A110270.P11763535897915015272` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110270 has offset 0).

The definition of A110270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n%2*n%3` (program `A110270.P11763535897915015272`, by `A110270.P11763535897915015272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110270.P16720469174528326533

`n%(2+n%2)`
-/

namespace A110270.P16720469174528326533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (2 + n % 2)

end

end A110270.P16720469174528326533

namespace A110270

/-- `n%(2+n%2)` -/
def P16720469174528326533.Spec : Prop :=
  ∀ n, (P16720469174528326533.a n : ℤ) = A110270 n

end A110270

/-! ## A110270.P11763535897915015272

`n%2*n%3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110270

/-- `n%2*n%3` -/
def P11763535897915015272.Spec : Prop :=
  ∀ n, (P11763535897915015272.a n : ℤ) = A110270 n

theorem P11763535897915015272.correct : P11763535897915015272.Spec := by
  intro n
  simp only [A110270]

end A110270

/-!
# A110272: a(n) = Pell(n)^3.

The programs for A110272, the canonical program `A110272.P7122855858781354811` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110272 has offset 0).

The definition of A110272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)^3` (program `A110272.P7122855858781354811`, by `A110272.P7122855858781354811.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110272.P3838697558234459766

`12*a(n-1)+30*a(n-2)-12*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=125`
-/

namespace A110272.P3838697558234459766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8, 125] fun n a =>
  12 * a (n - 1) + 30 * a (n - 2) - 12 * a (n - 3) - a (n - 4)

end

end A110272.P3838697558234459766

namespace A110272

/-- `12*a(n-1)+30*a(n-2)-12*a(n-3)-a(n-4)` -/
def P3838697558234459766.Spec : Prop :=
  ∀ n, P3838697558234459766.a n = A110272 n

end A110272

/-! ## A110272.P7122855858781354811

`A000129(n)^3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110272

/-- `A000129(n)^3` -/
def P7122855858781354811.Spec : Prop :=
  ∀ n, P7122855858781354811.a n = A110272 n

theorem P7122855858781354811.correct : P7122855858781354811.Spec := by
  intro n
  simp only [A110272]

end A110272

/-! ## A110272.P10602374514396402139

`sqrt(A079291(n))^3`
-/

namespace A110272.P10602374514396402139
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A079291 n : ℝ) ^ 3

end

end A110272.P10602374514396402139

namespace A110272

/-- `sqrt(A079291(n))^3` -/
def P10602374514396402139.Spec : Prop :=
  ∀ n, P10602374514396402139.a n = (A110272 n : ℝ)

end A110272

/-! ## A110272.P10026417734108033245

`Δ[A171842(n)]^3`
-/

namespace A110272.P10026417734108033245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A110272.P10026417734108033245

namespace A110272

/-- `Δ[A171842(n)]^3` -/
def P10026417734108033245.Spec : Prop :=
  ∀ n, P10026417734108033245.a n = A110272 n

end A110272

/-! ## A110272.P9022060675666232547

`(A174191(n)-1)^3`
-/

namespace A110272.P9022060675666232547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174191 n - 1) ^ 3

end

end A110272.P9022060675666232547

namespace A110272

/-- `(A174191(n)-1)^3` -/
def P9022060675666232547.Spec : Prop :=
  ∀ n, P9022060675666232547.a n = A110272 n

end A110272

/-! ## A110272.P15283745130110913964

`A002965(2*n)^3`
-/

namespace A110272.P15283745130110913964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) ^ 3

end

end A110272.P15283745130110913964

namespace A110272

/-- `A002965(2*n)^3` -/
def P15283745130110913964.Spec : Prop :=
  ∀ n, P15283745130110913964.a n = A110272 n

end A110272

/-!
# A110273: a(n) = Pell(n)^3 + Pell(n+1)^3.

The programs for A110273, the canonical program `A110273.P7757839742255130553` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110273 has offset 0).

The definition of A110273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)^3+A000129(n+1)^3` (program `A110273.P7757839742255130553`, by `A110273.P7757839742255130553.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110273.P7757839742255130553

`A000129(n)^3+A000129(n+1)^3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110273

/-- `A000129(n)^3+A000129(n+1)^3` -/
def P7757839742255130553.Spec : Prop :=
  ∀ n, P7757839742255130553.a n = A110273 n

theorem P7757839742255130553.correct : P7757839742255130553.Spec := by
  intro n
  simp only [A110273]

end A110273

/-! ## A110273.P1094856206194807705

`A110272(n)+Δ[A213688(n)]`
-/

namespace A110273.P1094856206194807705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110272 n + (f1 (n + 1) - f1 n)

end

end A110273.P1094856206194807705

namespace A110273

/-- `A110272(n)+Δ[A213688(n)]` -/
def P1094856206194807705.Spec : Prop :=
  ∀ n, P1094856206194807705.a n = A110273 n

end A110273

/-! ## A110273.P11456877510493933020

`A110272(n+1)+A110272(n)`
-/

namespace A110273.P11456877510493933020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110272 (n + 1) + A110272 n

end

end A110273.P11456877510493933020

namespace A110273

/-- `A110272(n+1)+A110272(n)` -/
def P11456877510493933020.Spec : Prop :=
  ∀ n, P11456877510493933020.a n = A110273 n

theorem P11456877510493933020.correct : P11456877510493933020.Spec := by
  intro n
  simp only [A110273, Nat.add_sub_cancel, A110273.P11456877510493933020.a, A110273.P7757839742255130553.a, A000129, A000129.P3563729298025900801.a, A110272, A110272.P7122855858781354811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110273

/-! ## A110273.P5569597754344121705

`Δ[A171842(n+1)]^3+Δ[A171842(n)]^3`
-/

namespace A110273.P5569597754344121705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3 + (f2 (n + 1) - f2 n) ^ 3

end

end A110273.P5569597754344121705

namespace A110273

/-- `Δ[A171842(n+1)]^3+Δ[A171842(n)]^3` -/
def P5569597754344121705.Spec : Prop :=
  ∀ n, P5569597754344121705.a n = A110273 n

end A110273

/-! ## A110273.P4360945393588057179

`(A114620(n)+A090390(n))*A078057(n)`
-/

namespace A110273.P4360945393588057179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114620 n + A090390 n) * A078057 n

end

end A110273.P4360945393588057179

namespace A110273

/-- `(A114620(n)+A090390(n))*A078057(n)` -/
def P4360945393588057179.Spec : Prop :=
  ∀ n, P4360945393588057179.a n = A110273 n

end A110273

/-! ## A110273.P13092804991241405391

`(A114620(n)+A090390(n))*Δ[A000129(n+1)]`
-/

namespace A110273.P13092804991241405391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114620 n + A090390 n) * (f1 (n + 1) - f1 n)

end

end A110273.P13092804991241405391

namespace A110273

/-- `(A114620(n)+A090390(n))*Δ[A000129(n+1)]` -/
def P13092804991241405391.Spec : Prop :=
  ∀ n, P13092804991241405391.a n = A110273 n

end A110273

/-!
# A110274: Expansion of (-16-7*x+6*x^2+28*x^3+8*x^4) / ((x-1)*(x^2+x+1)*(4*x^2-8*x+1)).

The programs for A110274, the canonical program `A110274.P17452519455199299794` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110274 has offset 0).

The definition of A110274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((16+7x-6x^2-28x^3-8x^4)/(1-8x+4x^2-x^3+8x^4-4x^5))` (program `A110274.P17452519455199299794`, by `A110274.P17452519455199299794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110274.P17452519455199299794

`ogf((16+7x-6x^2-28x^3-8x^4)/(1-8x+4x^2-x^3+8x^4-4x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110274

/-- `ogf((16+7x-6x^2-28x^3-8x^4)/(1-8x+4x^2-x^3+8x^4-4x^5))` -/
def P17452519455199299794.Spec : Prop :=
  ∀ n, P17452519455199299794.a n = A110274 n

theorem P17452519455199299794.correct : P17452519455199299794.Spec := by
  intro n
  simp only [A110274]

end A110274

/-!
# A110275: Expansion of (48-39*x-10*x^2-36*x^3+40*x^4)/((1-x)*(4*x^2-8*x+1)*(x^2+x+1)).

The programs for A110275, the canonical program `A110275.P8877337128864434801` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110275 has offset 0).

The definition of A110275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((48-39x-10x^2-36x^3+40x^4)/(1-8x+4x^2-x^3+8x^4-4x^5))` (program `A110275.P8877337128864434801`, by `A110275.P8877337128864434801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110275.P8877337128864434801

`ogf((48-39x-10x^2-36x^3+40x^4)/(1-8x+4x^2-x^3+8x^4-4x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110275

/-- `ogf((48-39x-10x^2-36x^3+40x^4)/(1-8x+4x^2-x^3+8x^4-4x^5))` -/
def P8877337128864434801.Spec : Prop :=
  ∀ n, P8877337128864434801.a n = A110275 n

theorem P8877337128864434801.correct : P8877337128864434801.Spec := by
  intro n
  simp only [A110275]

end A110275

/-!
# A110276: Convolution of large Schroeder numbers and central binomial coefficients.

The programs for A110276, there is no canonical definition to state claims against.
-/

/-! ## A110276.P7847907198882053528

`A026891(2*n+1)+A001791(n)`
-/

namespace A110276.P7847907198882053528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026891 (2 * n + 1) + A001791 n

end

end A110276.P7847907198882053528

/-! ## A110276.P12012400164052408520

`A000027(A026891(n+1+n)+A001791(n))`
-/

namespace A110276.P12012400164052408520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026891 (n + 1 + n) + A001791 n).toNat

end

end A110276.P12012400164052408520

/-!
# A110277: Values of n such that the perfect deficiency (A109883) of n is a square.

The programs for A110277, there is no canonical definition to state claims against.
-/

/-! ## A110277.P16096617012202618027

`eq[A186028(n), A333381(A005599(n))]`
-/

namespace A110277.P16096617012202618027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A005599 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110277.P16096617012202618027

/-!
# A110278: Values of n such that the perfect deficiency (A109883) of n and n+1 are both squares.

The programs for A110278, there is no canonical definition to state claims against.
-/

/-! ## A110278.P2070945291238377203

`A215818(A197462(n+1))+n`
-/

namespace A110278.P2070945291238377203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (A197462 (n + 1)).toNat + (n : ℤ)

end

end A110278.P2070945291238377203

/-! ## A110278.P4231539352872726472

`A287793(A025547(n+1))+n²`
-/

namespace A110278.P4231539352872726472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287793 (A025547 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A110278.P4231539352872726472

/-!
# A110281: A floretion-generated sequence calculated using the same rules given for A108618 with initial seed x = + .5'i + .5'ii' + .5'ij' + .5'ik'; version: "basei".

The programs for A110281, there is no canonical definition to state claims against.
-/

/-! ## A110281.P10697900119889364815

`∑[A110280(n)-∑[A110283(n)]]`
-/

namespace A110281.P10697900119889364815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110280 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110281.P10697900119889364815

/-! ## A110281.P2879731199421103050

`(A110283(n+1)-A110280(n+1))/2`
-/

namespace A110281.P2879731199421103050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110283 (n + 1) - A110280 (n + 1) : ℚ) / 2

end

end A110281.P2879731199421103050

/-!
# A110283: A floretion-generated sequence calculated using the same rules given for A108618 with initial seed x = + .5'i + .5'ii' + .5'ij' + .5'ik'; version: "ibasei".

The programs for A110283, there is no canonical definition to state claims against.
-/

/-! ## A110283.P7507767620671250069

`Δ[A110280(n)+Δ[A110281(n)]]`
-/

namespace A110283.P7507767620671250069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110280 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110283.P7507767620671250069

/-!
# A110284: Squares of the form 4p - 3, where p is a prime.

The programs for A110284, there is no canonical definition to state claims against.
-/

/-! ## A110284.P1609777704584931071

`4*A002383(n+1)-3`
-/

namespace A110284.P1609777704584931071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002383 (n + 1) - 3

end

end A110284.P1609777704584931071

/-! ## A110284.P5469641516316588995

`A088503(n+1)²`
-/

namespace A110284.P5469641516316588995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1) ^ 2

end

end A110284.P5469641516316588995

/-! ## A110284.P5047112309950657305

`2*A107317(n+1)-3`
-/

namespace A110284.P5047112309950657305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107317 (n + 1) - 3

end

end A110284.P5047112309950657305

/-! ## A110284.P17747456535483485680

`(2*A002384(n+1)+1)²`
-/

namespace A110284.P17747456535483485680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002384 (n + 1) + 1) ^ 2

end

end A110284.P17747456535483485680

/-! ## A110284.P12833566567424878552

`(1-2*A055494(n+1))²`
-/

namespace A110284.P12833566567424878552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A055494 (n + 1)) ^ 2

end

end A110284.P12833566567424878552

/-! ## A110284.P18370519755925375896

`(A055494(n+1)+A002384(n+1))²`
-/

namespace A110284.P18370519755925375896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055494 (n + 1) + A002384 (n + 1)) ^ 2

end

end A110284.P18370519755925375896

/-! ## A110284.P39741165352192116

`(1-(A089358(n+1)+A002384(n+1)))²`
-/

namespace A110284.P39741165352192116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A089358 (n + 1) + A002384 (n + 1))) ^ 2

end

end A110284.P39741165352192116

/-! ## A110284.P14277614778683388398

`(2-(A089358(n+1)+A055494(n+1)))²`
-/

namespace A110284.P14277614778683388398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (A089358 (n + 1) + A055494 (n + 1))) ^ 2

end

end A110284.P14277614778683388398

/-! ## A110284.P24519367597990110

`A088503(n+1)^A020639(A088516(n+1))`
-/

namespace A110284.P24519367597990110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088503 (n + 1) : ℚ) ^ (A020639 (A088516 (n + 1)).toNat : ℤ)

end

end A110284.P24519367597990110

/-! ## A110284.P15107651984221155452

`A088503(A008619(2*n+1))*A088503(n+1)`
-/

namespace A110284.P15107651984221155452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (A008619 (2 * n + 1)).toNat * A088503 (n + 1)

end

end A110284.P15107651984221155452

/-! ## A110284.P14234478643663180662

`A088503(n+1)^A020639(A088487(2*n+3))`
-/

namespace A110284.P14234478643663180662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088503 (n + 1) : ℚ) ^ (A020639 (A088487 (2 * n + 3)).toNat : ℤ)

end

end A110284.P14234478643663180662

/-! ## A110284.P2973059049292312629

`A088503(n+1)^A020639(A088493(2*n+3))`
-/

namespace A110284.P2973059049292312629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088503 (n + 1) : ℚ) ^ (A020639 (A088493 (2 * n + 3)).toNat : ℤ)

end

end A110284.P2973059049292312629

/-! ## A110284.P11186676642032120609

`A016754(A002384(n+1))`
-/

namespace A110284.P11186676642032120609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A002384 (n + 1)).toNat

end

end A110284.P11186676642032120609

/-! ## A110284.P8403608838189007469

`A004273(A055494(n+1))²`
-/

namespace A110284.P8403608838189007469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A055494 (n + 1)).toNat ^ 2

end

end A110284.P8403608838189007469

/-! ## A110284.P13355696568487442257

`A005408(floor(sqrt(A002383(n+1))))²`
-/

namespace A110284.P13355696568487442257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.sqrt (A002383 (n + 1))).toNat ^ 2

end

end A110284.P13355696568487442257

/-! ## A110284.P14917491233567460434

`A004274(A089358(n+1))²`
-/

namespace A110284.P14917491233567460434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A089358 (n + 1)).toNat ^ 2

end

end A110284.P14917491233567460434

/-! ## A110284.P6445336835217400554

`A020725(2*A002384(n+1))²`
-/

namespace A110284.P6445336835217400554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * A002384 (n + 1)).toNat ^ 2

end

end A110284.P6445336835217400554

/-! ## A110284.P3898481166441855676

`A023443(2*A055494(n+1))²`
-/

namespace A110284.P3898481166441855676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A055494 (n + 1)).toNat ^ 2

end

end A110284.P3898481166441855676

/-! ## A110284.P680839061282508460

`A023445(2*A089358(n+1))²`
-/

namespace A110284.P680839061282508460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (2 * A089358 (n + 1)).toNat ^ 2

end

end A110284.P680839061282508460

/-! ## A110284.P2502260354717690709

`A088503(n+1)^A000005(A088555(n+1))`
-/

namespace A110284.P2502260354717690709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088503 (n + 1) : ℚ) ^ (A000005 (A088555 (n + 1)).toNat : ℤ)

end

end A110284.P2502260354717690709

/-!
# A110286: a(n) = 15*2^n.

The programs for A110286, the canonical program `A110286.P7755220645129352326` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110286 has offset 0).

The definition of A110286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*2^n` (program `A110286.P7755220645129352326`, by `A110286.P7755220645129352326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110286.P7755220645129352326

`15*2^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110286

/-- `15*2^n` -/
def P7755220645129352326.Spec : Prop :=
  ∀ n, (P7755220645129352326.a n : ℤ) = A110286 n

theorem P7755220645129352326.correct : P7755220645129352326.Spec := by
  intro n
  simp only [A110286]

end A110286

/-!
# A110287: a(n) = 17*2^n.

The programs for A110287, the canonical program `A110287.P14797459151793831721` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110287 has offset 0).

The definition of A110287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*2^n` (program `A110287.P14797459151793831721`, by `A110287.P14797459151793831721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110287.P14797459151793831721

`17*2^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110287

/-- `17*2^n` -/
def P14797459151793831721.Spec : Prop :=
  ∀ n, (P14797459151793831721.a n : ℤ) = A110287 n

theorem P14797459151793831721.correct : P14797459151793831721.Spec := by
  intro n
  simp only [A110287]

end A110287

/-!
# A110288: a(n) = 19*2^n.

The programs for A110288, the canonical program `A110288.P884682549947402713` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110288 has offset 0).

The definition of A110288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*2^n` (program `A110288.P884682549947402713`, by `A110288.P884682549947402713.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110288.P884682549947402713

`19*2^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110288

/-- `19*2^n` -/
def P884682549947402713.Spec : Prop :=
  ∀ n, (P884682549947402713.a n : ℤ) = A110288 n

theorem P884682549947402713.correct : P884682549947402713.Spec := by
  intro n
  simp only [A110288]

end A110288

/-!
# A110289: 7-almost primes p*q*r*s*t*u*v relatively prime to p+q+r+s+t+u+v.

The programs for A110289, there is no canonical definition to state claims against.
-/

/-! ## A110289.P7044615667799653982

`record[A082344(A046308(n+4))]`
-/

namespace A110289.P7044615667799653982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A046308 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110289.P7044615667799653982

/-! ## A110289.P4442381847248200163

`A115510(8*A108607(n+1))`
-/

namespace A110289.P4442381847248200163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (8 * A108607 (n + 1)).toNat

end

end A110289.P4442381847248200163

/-!
# A110290: 7-almost primes p*q*r*s*t*u*v not relatively prime to p+q+r+s+t+u+v.

The programs for A110290, there is no canonical definition to state claims against.
-/

/-! ## A110290.P16026779274590613094

`∩[A046308(n+1), A370354(n+1)]`
-/

namespace A110290.P16026779274590613094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110290.P16026779274590613094

/-! ## A110290.P8043635313693565962

`8*A110228(A032555(n+1))`
-/

namespace A110290.P8043635313693565962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A110228 (A032555 (n + 1)).toNat

end

end A110290.P8043635313693565962

/-! ## A110290.P15408489693981339231

`8*A110228(A110370(n+1))`
-/

namespace A110290.P15408489693981339231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A110228 (A110370 (n + 1)).toNat

end

end A110290.P15408489693981339231

/-! ## A110290.P16318654311934170201

`A040071(A061134(n+1))*A110228(n+1)`
-/

namespace A110290.P16318654311934170201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040071 (A061134 (n + 1)).toNat * A110228 (n + 1)

end

end A110290.P16318654311934170201

/-! ## A110290.P404838134891175870

`A094326(A272183(3*n+4))*A110228(n+1)`
-/

namespace A110290.P404838134891175870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094326 (A272183 (3 * n + 4)).toNat * A110228 (n + 1)

end

end A110290.P404838134891175870

/-!
# A110291: Riordan array (1/(1-x), x*(1+2*x)).

The programs for A110291, there is no canonical definition to state claims against.
-/

/-! ## A110291.P15890546926766670540

`A114003(A059268(n)^A276837(n))`
-/

namespace A110291.P15890546926766670540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A276837 n : ℤ))).toNat

end

end A110291.P15890546926766670540

/-! ## A110291.P15165748125059364032

`∑{d}[A059268(n)^A276837(n), A006530(#)]`
-/

namespace A110291.P15165748125059364032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) ^ (A276837 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A006530 d

end

end A110291.P15165748125059364032

/-! ## A110291.P5760272997810832249

`∑{d}[A059268(n)^A276837(n), A014963(#)]`
-/

namespace A110291.P5760272997810832249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) ^ (A276837 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A014963 d

end

end A110291.P5760272997810832249

/-! ## A110291.P8009070257494508267

`∑{d}[A059268(n)^A276837(n), A020639(#)]`
-/

namespace A110291.P8009070257494508267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) ^ (A276837 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A020639 d

end

end A110291.P8009070257494508267

/-! ## A110291.P13518034258395328687

`2*A001222(A059268(n)^A276837(n))+1`
-/

namespace A110291.P13518034258395328687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A276837 n : ℤ))).toNat + 1

end

end A110291.P13518034258395328687

/-!
# A110292: Riordan array (1-u, u) where u=(-1 + sqrt(1+8*x))/4.

The programs for A110292, the canonical program `A110292.P9374144780505500195` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110292 has offset 0).

The definition of A110292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110292.P9374144780505500195

`Δ[-(A099039(n)*A130321(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110292

/-- `Δ[-(A099039(n)*A130321(n))]` -/
def P9374144780505500195.Spec : Prop :=
  ∀ n, P9374144780505500195.a n = A110292 n

theorem P9374144780505500195.correct : P9374144780505500195.Spec := by
  intro n
  simp only [A110292]

end A110292

/-! ## A110292.P6662026815340053101

`Δ[-(A057728(n+1)*A099039(n))]`
-/

namespace A110292.P6662026815340053101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A057728 (n + 1) * A099039 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P6662026815340053101

namespace A110292

/-- `Δ[-(A057728(n+1)*A099039(n))]` -/
def P6662026815340053101.Spec : Prop :=
  ∀ n, P6662026815340053101.a n = A110292 n

end A110292

/-! ## A110292.P4221156482330328972

`(A110510(n+1)+A110510(n))*A097807(n)`
-/

namespace A110292.P4221156482330328972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110510 (n + 1) + A110510 n) * A097807 n

end

end A110292.P4221156482330328972

namespace A110292

/-- `(A110510(n+1)+A110510(n))*A097807(n)` -/
def P4221156482330328972.Spec : Prop :=
  ∀ n, P4221156482330328972.a n = A110292 n

end A110292

/-! ## A110292.P15498839022737580506

`Δ[A000007(n+1)-A099039(n)*A130321(n)]`
-/

namespace A110292.P15498839022737580506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A099039 n * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P15498839022737580506

namespace A110292

/-- `Δ[A000007(n+1)-A099039(n)*A130321(n)]` -/
def P15498839022737580506.Spec : Prop :=
  ∀ n, P15498839022737580506.a n = A110292 n

theorem P15498839022737580506.correct : P15498839022737580506.Spec := by
  intro n
  simp only [A110292, Nat.add_sub_cancel, A110292.P15498839022737580506.f1, A110292.P15498839022737580506.a, A110292.P9374144780505500195.f1, A110292.P9374144780505500195.a, A000007, A000007.P6599383543502402472.a, A099039, A099039.P8333967815748513514.a, A130321, A130321.P54397649261359622.a, A097807, A097807.P13019751470320389249.a, A106566, A106566.P15038054948988524136.a, A092392, A092392.P3436311630032478244.a, A100100, A100100.P334722086453035183.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A110292

/-! ## A110292.P6819882911121595071

`Δ[A020639(2*(n+1))-A099039(n)*A130321(n)]`
-/

namespace A110292.P6819882911121595071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) - A099039 n * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P6819882911121595071

namespace A110292

/-- `Δ[A020639(2*(n+1))-A099039(n)*A130321(n)]` -/
def P6819882911121595071.Spec : Prop :=
  ∀ n, P6819882911121595071.a n = A110292 n

end A110292

/-! ## A110292.P3094074248228716306

`Δ[A000035(2*n)-A099039(n)*A130321(n)]`
-/

namespace A110292.P3094074248228716306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A099039 n * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P3094074248228716306

namespace A110292

/-- `Δ[A000035(2*n)-A099039(n)*A130321(n)]` -/
def P3094074248228716306.Spec : Prop :=
  ∀ n, P3094074248228716306.a n = A110292 n

end A110292

/-! ## A110292.P16440333313898838459

`Δ[A014963(12*n+6)-A099039(n)*A130321(n)]`
-/

namespace A110292.P16440333313898838459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) - A099039 n * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P16440333313898838459

namespace A110292

/-- `Δ[A014963(12*n+6)-A099039(n)*A130321(n)]` -/
def P16440333313898838459.Spec : Prop :=
  ∀ n, P16440333313898838459.a n = A110292 n

end A110292

/-! ## A110292.P5091013433491760592

`Δ[A333599(2*n+1)-A099039(n)*A130321(n)]`
-/

namespace A110292.P5091013433491760592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 (2 * n + 1) - A099039 n * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P5091013433491760592

namespace A110292

/-- `Δ[A333599(2*n+1)-A099039(n)*A130321(n)]` -/
def P5091013433491760592.Spec : Prop :=
  ∀ n, P5091013433491760592.a n = A110292 n

end A110292

/-! ## A110292.P6776252874963696621

`Δ[A071035(n²)-A099039(n)*A130321(n)]`
-/

namespace A110292.P6776252874963696621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071035 (n ^ 2) - A099039 n * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P6776252874963696621

namespace A110292

/-- `Δ[A071035(n²)-A099039(n)*A130321(n)]` -/
def P6776252874963696621.Spec : Prop :=
  ∀ n, P6776252874963696621.a n = A110292 n

end A110292

/-!
# A110293: a(2*n) = A001570(n), a(2*n+1) = A011943(n+1).

The programs for A110293, the canonical program `A110293.P11445818463521899774` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110293 has offset 0).

The definition of A110293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110293.P11445818463521899774

`14*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=13, a(3)=97`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110293

/-- `14*a(n-2)-a(n-4)` -/
def P11445818463521899774.Spec : Prop :=
  ∀ n, P11445818463521899774.a n = A110293 n

theorem P11445818463521899774.correct : P11445818463521899774.Spec := by
  intro n
  simp only [A110293]

end A110293

/-! ## A110293.P17716978051623148812

`Δ[A254710(n+1)]`
-/

namespace A110293.P17716978051623148812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110293.P17716978051623148812

namespace A110293

/-- `Δ[A254710(n+1)]` -/
def P17716978051623148812.Spec : Prop :=
  ∀ n, P17716978051623148812.a n = A110293 n

end A110293

/-! ## A110293.P1753294361931536410

`Δ[A001571(n)]/gcd(2, n)`
-/

namespace A110293.P1753294361931536410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A110293.P1753294361931536410

namespace A110293

/-- `Δ[A001571(n)]/gcd(2, n)` -/
def P1753294361931536410.Spec : Prop :=
  ∀ n, P1753294361931536410.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P1538840811862659969

`lcm(2, A001075(n+1))/2`
-/

namespace A110293.P1538840811862659969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A001075 (n + 1)) : ℚ) / 2

end

end A110293.P1538840811862659969

namespace A110293

/-- `lcm(2, A001075(n+1))/2` -/
def P1538840811862659969.Spec : Prop :=
  ∀ n, P1538840811862659969.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P18052467929449821619

`A097948(n)+floor((sqrt(3)+2)*a(n-1))` with `a(0)=1`
-/

namespace A110293.P18052467929449821619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097948 n + ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A110293.P18052467929449821619

namespace A110293

/-- `A097948(n)+floor((sqrt(3)+2)*a(n-1))` -/
def P18052467929449821619.Spec : Prop :=
  ∀ n, P18052467929449821619.a n = A110293 n

end A110293

/-! ## A110293.P4344844194532494297

`Δ[A001571(n)]/A000034(n+1)`
-/

namespace A110293.P4344844194532494297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A110293.P4344844194532494297

namespace A110293

/-- `Δ[A001571(n)]/A000034(n+1)` -/
def P4344844194532494297.Spec : Prop :=
  ∀ n, P4344844194532494297.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P11290980950119641999

`Δ[A102871(n)]/A000034(n+1)`
-/

namespace A110293.P11290980950119641999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A110293.P11290980950119641999

namespace A110293

/-- `Δ[A102871(n)]/A000034(n+1)` -/
def P11290980950119641999.Spec : Prop :=
  ∀ n, P11290980950119641999.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P17636446954057527191

`Δ[A102871(n)]/A134451(n+2)`
-/

namespace A110293.P17636446954057527191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A110293.P17636446954057527191

namespace A110293

/-- `Δ[A102871(n)]/A134451(n+2)` -/
def P17636446954057527191.Spec : Prop :=
  ∀ n, P17636446954057527191.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P12226385344683724424

`A000034(n)/2*Δ[A001571(n)]`
-/

namespace A110293.P12226385344683724424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A110293.P12226385344683724424

namespace A110293

/-- `A000034(n)/2*Δ[A001571(n)]` -/
def P12226385344683724424.Spec : Prop :=
  ∀ n, P12226385344683724424.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P5312828536421608966

`A000034(n)/2*Δ[A102871(n)]`
-/

namespace A110293.P5312828536421608966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A110293.P5312828536421608966

namespace A110293

/-- `A000034(n)/2*Δ[A102871(n)]` -/
def P5312828536421608966.Spec : Prop :=
  ∀ n, P5312828536421608966.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P15291621714069650602

`A254710(n+2)-A254710(n+1)`
-/

namespace A110293.P15291621714069650602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254710 (n + 2) - A254710 (n + 1)

end

end A110293.P15291621714069650602

namespace A110293

/-- `A254710(n+2)-A254710(n+1)` -/
def P15291621714069650602.Spec : Prop :=
  ∀ n, P15291621714069650602.a n = A110293 n

end A110293

/-! ## A110293.P10448385626384146047

`A001075(n+1)/A000034(n+1)`
-/

namespace A110293.P10448385626384146047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A110293.P10448385626384146047

namespace A110293

/-- `A001075(n+1)/A000034(n+1)` -/
def P10448385626384146047.Spec : Prop :=
  ∀ n, P10448385626384146047.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P2049877531695725610

`A001075(n+1)/A040001(n+2)`
-/

namespace A110293.P2049877531695725610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 (n + 1) : ℚ) / (A040001 (n + 2) : ℚ)

end

end A110293.P2049877531695725610

namespace A110293

/-- `A001075(n+1)/A040001(n+2)` -/
def P2049877531695725610.Spec : Prop :=
  ∀ n, P2049877531695725610.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P7160231528932555883

`A001075(n+1)/(2-A000035(n))`
-/

namespace A110293.P7160231528932555883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 (n + 1) : ℚ) / (2 - A000035 n : ℚ)

end

end A110293.P7160231528932555883

namespace A110293

/-- `A001075(n+1)/(2-A000035(n))` -/
def P7160231528932555883.Spec : Prop :=
  ∀ n, P7160231528932555883.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P13178080926122382168

`A259593(2*n)/A000034(n+1)`
-/

namespace A110293.P13178080926122382168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259593 (2 * n) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A110293.P13178080926122382168

namespace A110293

/-- `A259593(2*n)/A000034(n+1)` -/
def P13178080926122382168.Spec : Prop :=
  ∀ n, P13178080926122382168.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P12634543078596083353

`A001075(n+1)/Δ[A001651(n+2)]`
-/

namespace A110293.P12634543078596083353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A110293.P12634543078596083353

namespace A110293

/-- `A001075(n+1)/Δ[A001651(n+2)]` -/
def P12634543078596083353.Spec : Prop :=
  ∀ n, P12634543078596083353.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P122598821518801315

`A001075(n+1)/(A000035(n+1)+1)`
-/

namespace A110293.P122598821518801315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 (n + 1) : ℚ) / (A000035 (n + 1) + 1 : ℚ)

end

end A110293.P122598821518801315

namespace A110293

/-- `A001075(n+1)/(A000035(n+1)+1)` -/
def P122598821518801315.Spec : Prop :=
  ∀ n, P122598821518801315.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P13722252696641519740

`(A092184(n+1)+1)/A000034(n+1)`
-/

namespace A110293.P13722252696641519740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092184 (n + 1) + 1 : ℚ) / (A000034 (n + 1) : ℚ)

end

end A110293.P13722252696641519740

namespace A110293

/-- `(A092184(n+1)+1)/A000034(n+1)` -/
def P13722252696641519740.Spec : Prop :=
  ∀ n, P13722252696641519740.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P1936293694519816117

`2*A001075(n+1)/A010694(n+1)`
-/

namespace A110293.P1936293694519816117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001075 (n + 1) : ℚ) / (A010694 (n + 1) : ℚ))

end

end A110293.P1936293694519816117

namespace A110293

/-- `2*A001075(n+1)/A010694(n+1)` -/
def P1936293694519816117.Spec : Prop :=
  ∀ n, P1936293694519816117.a n = (A110293 n : ℚ)

end A110293

/-! ## A110293.P2060292789642958508

`3/A010704(n+1)*A001075(n+1)`
-/

namespace A110293.P2060292789642958508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A010704 (n + 1) : ℚ) * (A001075 (n + 1) : ℚ)

end

end A110293.P2060292789642958508

namespace A110293

/-- `3/A010704(n+1)*A001075(n+1)` -/
def P2060292789642958508.Spec : Prop :=
  ∀ n, P2060292789642958508.a n = (A110293 n : ℚ)

end A110293

/-!
# A110294: a(2*n) = A028230(n), a(2*n+1) = -A067900(n+1).

The programs for A110294, the canonical program `A110294.P7455359676219234054` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110294 has offset 0).

The definition of A110294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110294.P7455359676219234054

`(3*(-1)^n-1)*A001353(n+1)/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110294

/-- `(3*(-1)^n-1)*A001353(n+1)/2` -/
def P7455359676219234054.Spec : Prop :=
  ∀ n, P7455359676219234054.a n = (A110294 n : ℚ)

end A110294

/-! ## A110294.P17241818299315122091

`gcd(2, n+1)*A125905(n)`
-/

namespace A110294.P17241818299315122091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A125905 n

end

end A110294.P17241818299315122091

namespace A110294

/-- `gcd(2, n+1)*A125905(n)` -/
def P17241818299315122091.Spec : Prop :=
  ∀ n, P17241818299315122091.a n = A110294 n

end A110294

/-! ## A110294.P2914689922971231275

`A000034(n)*A125905(n)`
-/

namespace A110294.P2914689922971231275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A125905 n

end

end A110294.P2914689922971231275

namespace A110294

/-- `A000034(n)*A125905(n)` -/
def P2914689922971231275.Spec : Prop :=
  ∀ n, P2914689922971231275.a n = A110294 n

end A110294

/-! ## A110294.P17888394113777611313

`(A000035(n)+1)*A125905(n)`
-/

namespace A110294.P17888394113777611313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A125905 n

end

end A110294.P17888394113777611313

namespace A110294

/-- `(A000035(n)+1)*A125905(n)` -/
def P17888394113777611313.Spec : Prop :=
  ∀ n, P17888394113777611313.a n = A110294 n

end A110294

/-! ## A110294.P1611229639329772219

`(A010693(n)-1)*A125905(n)`
-/

namespace A110294.P1611229639329772219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010693 n - 1) * A125905 n

end

end A110294.P1611229639329772219

namespace A110294

/-- `(A010693(n)-1)*A125905(n)` -/
def P1611229639329772219.Spec : Prop :=
  ∀ n, P1611229639329772219.a n = A110294 n

end A110294

/-! ## A110294.P4720967150443819079

`A001075(n)%3*A125905(n)`
-/

namespace A110294.P4720967150443819079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001075 n) 3 * A125905 n

end

end A110294.P4720967150443819079

namespace A110294

/-- `A001075(n)%3*A125905(n)` -/
def P4720967150443819079.Spec : Prop :=
  ∀ n, P4720967150443819079.a n = A110294 n

end A110294

/-! ## A110294.P8918576844548862540

`A001834(n)%3*A125905(n)`
-/

namespace A110294.P8918576844548862540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001834 n) 3 * A125905 n

end

end A110294.P8918576844548862540

namespace A110294

/-- `A001834(n)%3*A125905(n)` -/
def P8918576844548862540.Spec : Prop :=
  ∀ n, P8918576844548862540.a n = A110294 n

end A110294

/-! ## A110294.P10627298356819244043

`val(A003500(n), 2)*A125905(n)`
-/

namespace A110294.P10627298356819244043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A003500 n).toNat 2 : ℤ) * A125905 n

end

end A110294.P10627298356819244043

namespace A110294

/-- `val(A003500(n), 2)*A125905(n)` -/
def P10627298356819244043.Spec : Prop :=
  ∀ n, P10627298356819244043.a n = A110294 n

end A110294

/-! ## A110294.P5170541454937727098

`(Δ[A008619(n)]+1)*A125905(n)`
-/

namespace A110294.P5170541454937727098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A125905 n

end

end A110294.P5170541454937727098

namespace A110294

/-- `(Δ[A008619(n)]+1)*A125905(n)` -/
def P5170541454937727098.Spec : Prop :=
  ∀ n, P5170541454937727098.a n = A110294 n

end A110294

/-! ## A110294.P2309365799082384209

`A125905(n)*A223142(Δ[A008619(n)])`
-/

namespace A110294.P2309365799082384209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125905 n * A223142 (f1 (n + 1) - f1 n).toNat

end

end A110294.P2309365799082384209

namespace A110294

/-- `A125905(n)*A223142(Δ[A008619(n)])` -/
def P2309365799082384209.Spec : Prop :=
  ∀ n, P2309365799082384209.a n = A110294 n

end A110294

/-! ## A110294.P9233900334793634791

`(A110657(2*n+1)-A110657(2*n))*A001353(n+1)`
-/

namespace A110294.P9233900334793634791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110657 (2 * n + 1) - A110657 (2 * n)) * A001353 (n + 1)

end

end A110294.P9233900334793634791

namespace A110294

/-- `(A110657(2*n+1)-A110657(2*n))*A001353(n+1)` -/
def P9233900334793634791.Spec : Prop :=
  ∀ n, P9233900334793634791.a n = A110294 n

end A110294

/-! ## A110294.P3600108844693147827

`(A328579(A328579(n))+1)*A125905(n)/3`
-/

namespace A110294.P3600108844693147827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A328579 (A328579 n).toNat + 1) * A125905 n : ℚ) / 3

end

end A110294.P3600108844693147827

namespace A110294

/-- `(A328579(A328579(n))+1)*A125905(n)/3` -/
def P3600108844693147827.Spec : Prop :=
  ∀ n, P3600108844693147827.a n = (A110294 n : ℚ)

end A110294

/-! ## A110294.P5325919818822670027

`A058306((n+1)²)*A125905(n)`
-/

namespace A110294.P5325919818822670027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 ((n + 1) ^ 2) * A125905 n

end

end A110294.P5325919818822670027

namespace A110294

/-- `A058306((n+1)²)*A125905(n)` -/
def P5325919818822670027.Spec : Prop :=
  ∀ n, P5325919818822670027.a n = A110294 n

end A110294

/-!
# A110295: a(n) = 2^(n-1) * prime(n).

The programs for A110295, the canonical program `A110295.P17507591994782524109` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110295 has offset 1).

The definition of A110295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*A000040(n+1)` (program `A110295.P17507591994782524109`, by `A110295.P17507591994782524109.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110295.P6653660605356503184

`2*A239885(n+1)`
-/

namespace A110295.P6653660605356503184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239885 (n + 1)

end

end A110295.P6653660605356503184

namespace A110295

/-- `2*A239885(n+1)` -/
def P6653660605356503184.Spec : Prop :=
  ∀ n, P6653660605356503184.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P17507591994782524109

`2^n*A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110295

/-- `2^n*A000040(n+1)` -/
def P17507591994782524109.Spec : Prop :=
  ∀ n, P17507591994782524109.a n = A110295 (n + 1)

theorem P17507591994782524109.correct : P17507591994782524109.Spec := by
  intro n
  simp only [A110295, Nat.add_sub_cancel]

end A110295

/-! ## A110295.P3844287185897758211

`2^n*p?[comp[n²]]`
-/

namespace A110295.P3844287185897758211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A110295.P3844287185897758211

namespace A110295

/-- `2^n*p?[comp[n²]]` -/
def P3844287185897758211.Spec : Prop :=
  ∀ n, (P3844287185897758211.a n : ℤ) = A110295 (n + 1)

end A110295

/-! ## A110295.P13466530991506524745

`2^n*record[∑{p}[n+2, #]]`
-/

namespace A110295.P13466530991506524745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110295.P13466530991506524745

namespace A110295

/-- `2^n*record[∑{p}[n+2, #]]` -/
def P13466530991506524745.Spec : Prop :=
  ∀ n, (P13466530991506524745.a n : ℤ) = A110295 (n + 1)

end A110295

/-! ## A110295.P5853189443089533801

`2^n*A008578(n+2)`
-/

namespace A110295.P5853189443089533801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008578 (n + 2)

end

end A110295.P5853189443089533801

namespace A110295

/-- `2^n*A008578(n+2)` -/
def P5853189443089533801.Spec : Prop :=
  ∀ n, P5853189443089533801.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P5549883480109396975

`2^n*A158611(n+3)`
-/

namespace A110295.P5549883480109396975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A158611 (n + 3)

end

end A110295.P5549883480109396975

namespace A110295

/-- `2^n*A158611(n+3)` -/
def P5549883480109396975.Spec : Prop :=
  ∀ n, P5549883480109396975.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P7308720917800277143

`2^n*record[A006530(n+2)]`
-/

namespace A110295.P7308720917800277143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110295.P7308720917800277143

namespace A110295

/-- `2^n*record[A006530(n+2)]` -/
def P7308720917800277143.Spec : Prop :=
  ∀ n, P7308720917800277143.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P5243758811968616065

`2^n*record[A020639(n+2)]`
-/

namespace A110295.P5243758811968616065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110295.P5243758811968616065

namespace A110295

/-- `2^n*record[A020639(n+2)]` -/
def P5243758811968616065.Spec : Prop :=
  ∀ n, P5243758811968616065.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P17635450255585405208

`Δ[A007504(n)]*A000079(n)`
-/

namespace A110295.P17635450255585405208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A110295.P17635450255585405208

namespace A110295

/-- `Δ[A007504(n)]*A000079(n)` -/
def P17635450255585405208.Spec : Prop :=
  ∀ n, P17635450255585405208.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P11832182369435516775

`p?[A057979(n)]*A000079(n)`
-/

namespace A110295.P11832182369435516775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000079 n

end

end A110295.P11832182369435516775

namespace A110295

/-- `p?[A057979(n)]*A000079(n)` -/
def P11832182369435516775.Spec : Prop :=
  ∀ n, P11832182369435516775.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P6310056223293141555

`A000040(n+1)*A000079(n)`
-/

namespace A110295.P6310056223293141555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000079 n

end

end A110295.P6310056223293141555

namespace A110295

/-- `A000040(n+1)*A000079(n)` -/
def P6310056223293141555.Spec : Prop :=
  ∀ n, P6310056223293141555.a n = A110295 (n + 1)

theorem P6310056223293141555.correct : P6310056223293141555.Spec := by
  intro n
  simp only [A110295, Nat.add_sub_cancel, A110295.P6310056223293141555.a, A110295.P17507591994782524109.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110295

/-! ## A110295.P3627755948170306511

`eq[1, A105700(n)]*A000079(n)`
-/

namespace A110295.P3627755948170306511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A000079 n

end

end A110295.P3627755948170306511

namespace A110295

/-- `eq[1, A105700(n)]*A000079(n)` -/
def P3627755948170306511.Spec : Prop :=
  ∀ n, P3627755948170306511.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P13098220402219886725

`A000040(n+1)*∑[A011782(n)]`
-/

namespace A110295.P13098220402219886725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110295.P13098220402219886725

namespace A110295

/-- `A000040(n+1)*∑[A011782(n)]` -/
def P13098220402219886725.Spec : Prop :=
  ∀ n, P13098220402219886725.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P13678718051308729764

`A000040(n+1)*Δ[A000051(n)]`
-/

namespace A110295.P13678718051308729764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A110295.P13678718051308729764

namespace A110295

/-- `A000040(n+1)*Δ[A000051(n)]` -/
def P13678718051308729764.Spec : Prop :=
  ∀ n, P13678718051308729764.a n = A110295 (n + 1)

theorem P13678718051308729764.correct : P13678718051308729764.Spec := by
  intro n
  simp only [A110295, Nat.add_sub_cancel, A110295.P13678718051308729764.f1, A110295.P13678718051308729764.a, A110295.P17507591994782524109.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110295

/-! ## A110295.P3364546637579831356

`A000040(n+1)*Δ[A000225(n)]`
-/

namespace A110295.P3364546637579831356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A110295.P3364546637579831356

namespace A110295

/-- `A000040(n+1)*Δ[A000225(n)]` -/
def P3364546637579831356.Spec : Prop :=
  ∀ n, P3364546637579831356.a n = A110295 (n + 1)

theorem P3364546637579831356.correct : P3364546637579831356.Spec := by
  intro n
  simp only [A110295, Nat.add_sub_cancel, A110295.P3364546637579831356.f1, A110295.P3364546637579831356.a, A110295.P17507591994782524109.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110295

/-! ## A110295.P6474794927111740799

`A000040(n+1)*record[A072345(n)]`
-/

namespace A110295.P6474794927111740799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110295.P6474794927111740799

namespace A110295

/-- `A000040(n+1)*record[A072345(n)]` -/
def P6474794927111740799.Spec : Prop :=
  ∀ n, P6474794927111740799.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P12004428927941181506

`record[A006530(n+2)]*A000079(n)`
-/

namespace A110295.P12004428927941181506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A110295.P12004428927941181506

namespace A110295

/-- `record[A006530(n+2)]*A000079(n)` -/
def P12004428927941181506.Spec : Prop :=
  ∀ n, P12004428927941181506.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P8942037659074216617

`record[A020639(n+2)]*A000079(n)`
-/

namespace A110295.P8942037659074216617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A110295.P8942037659074216617

namespace A110295

/-- `record[A020639(n+2)]*A000079(n)` -/
def P8942037659074216617.Spec : Prop :=
  ∀ n, P8942037659074216617.a n = A110295 (n + 1)

end A110295

/-! ## A110295.P970594342332755319

`(A006093(n+1)+1)*A000079(n)`
-/

namespace A110295.P970594342332755319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A000079 n

end

end A110295.P970594342332755319

namespace A110295

/-- `(A006093(n+1)+1)*A000079(n)` -/
def P970594342332755319.Spec : Prop :=
  ∀ n, P970594342332755319.a n = A110295 (n + 1)

theorem P970594342332755319.correct : P970594342332755319.Spec := by
  intro n
  simp only [A110295, Nat.add_sub_cancel, A110295.P970594342332755319.a, A110295.P17507591994782524109.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000079, A000079.P10855139691139572931.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110295

/-! ## A110295.P18301740659607752784

`A000040(n+1)*A011782(n+1)`
-/

namespace A110295.P18301740659607752784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A011782 (n + 1)

end

end A110295.P18301740659607752784

namespace A110295

/-- `A000040(n+1)*A011782(n+1)` -/
def P18301740659607752784.Spec : Prop :=
  ∀ n, P18301740659607752784.a n = A110295 (n + 1)

end A110295

/-!
# A110296: 8-almost primes p*q*r*s*t*u*v*w relatively prime to p+q+r+s+t+u+v+w.

The programs for A110296, there is no canonical definition to state claims against.
-/

/-! ## A110296.P2887327391825680415

`record[A082344(A046310(n+2))]`
-/

namespace A110296.P2887327391825680415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A046310 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110296.P2887327391825680415

/-!
# A110297: 8-almost primes p*q*r*s*t*u*v*w not relatively prime to p+q+r+s+t+u+v+w.

The programs for A110297, there is no canonical definition to state claims against.
-/

/-! ## A110297.P5652853323014169937

`record[A046310(n+1)%A306413(A096698(n+1))]`
-/

namespace A110297.P5652853323014169937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046310 (n + 1)) (A306413 (A096698 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110297.P5652853323014169937

/-!
# A110298: Triangle read by rows: T(n,k) (1 <= k <= n) is the number of secondary structures of size n (i.e., with n nodes) for which node k is the last node in the block that contains node 1.

The programs for A110298, there is no canonical definition to state claims against.
-/

/-! ## A110298.P3146007827402862890

`A184946(A184948(n+1))+A144157(A061579(n))`
-/

namespace A110298.P3146007827402862890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 (A184948 (n + 1)).toNat + A144157 (A061579 n).toNat

end

end A110298.P3146007827402862890

/-! ## A110298.P8167253429066318656

`A144157(A061579(n))^A010153(n)²`
-/

namespace A110298.P8167253429066318656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144157 (A061579 n).toNat : ℚ) ^ (A010153 n ^ 2 : ℤ)

end

end A110298.P8167253429066318656

/-! ## A110298.P14198244100864901619

`A144157(A061579(n))^A014963(A052905(n))`
-/

namespace A110298.P14198244100864901619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144157 (A061579 n).toNat : ℚ) ^ (A014963 (A052905 n).toNat : ℤ)

end

end A110298.P14198244100864901619

/-! ## A110298.P8104829587489079467

`A184946(A144157(n)²)+A144157(A061579(n))`
-/

namespace A110298.P8104829587489079467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 (A144157 n ^ 2).toNat + A144157 (A061579 n).toNat

end

end A110298.P8104829587489079467

/-! ## A110298.P11830330379966344675

`A120885(A000212(n)+5)-1`
-/

namespace A110298.P11830330379966344675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120885 (A000212 n + 5).toNat - 1

end

end A110298.P11830330379966344675

/-!
# A110299: a(n) = Sum_{i=0..n-1} 2^i*prime(n-i).

The programs for A110299, the canonical program `A110299.P14323801455997029878` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110299 has offset 1).

The definition of A110299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110299.P2058534056676210056

`2*a(n-1)+A000040(n+1)` with `a(0)=2`
-/

namespace A110299.P2058534056676210056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + A000040 (n + 1)

end

end A110299.P2058534056676210056

namespace A110299

/-- `2*a(n-1)+A000040(n+1)` -/
def P2058534056676210056.Spec : Prop :=
  ∀ n, P2058534056676210056.a n = A110299 (n + 1)

end A110299

/-! ## A110299.P14323801455997029878

`A125180(n+2)-A000040(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110299

/-- `A125180(n+2)-A000040(n+2)` -/
def P14323801455997029878.Spec : Prop :=
  ∀ n, P14323801455997029878.a n = A110299 (n + 1)

theorem P14323801455997029878.correct : P14323801455997029878.Spec := by
  intro n
  simp only [A110299, Nat.add_sub_cancel]

end A110299

/-! ## A110299.P13346691196190353213

`∑[A125180(n+1)]`
-/

namespace A110299.P13346691196190353213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110299.P13346691196190353213

namespace A110299

/-- `∑[A125180(n+1)]` -/
def P13346691196190353213.Spec : Prop :=
  ∀ n, P13346691196190353213.a n = A110299 (n + 1)

end A110299

/-! ## A110299.P180036212610061560

`A065091(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A110299.P180036212610061560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A065091 n + 2 * a (n - 1)

end

end A110299.P180036212610061560

namespace A110299

/-- `A065091(n)+2*a(n-1)` -/
def P180036212610061560.Spec : Prop :=
  ∀ n, P180036212610061560.a n = A110299 (n + 1)

end A110299

/-! ## A110299.P10552664783421844402

`∑[A054541(n+1)]+2*a(n-1)` with `a(0)=2`
-/

namespace A110299.P10552664783421844402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A110299.P10552664783421844402

namespace A110299

/-- `∑[A054541(n+1)]+2*a(n-1)` -/
def P10552664783421844402.Spec : Prop :=
  ∀ n, P10552664783421844402.a n = A110299 (n + 1)

end A110299

/-! ## A110299.P14971885165281243540

`record[A006530(n+2)]+2*a(n-1)` with `a(0)=2`
-/

namespace A110299.P14971885165281243540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * a (n - 1)

end

end A110299.P14971885165281243540

namespace A110299

/-- `record[A006530(n+2)]+2*a(n-1)` -/
def P14971885165281243540.Spec : Prop :=
  ∀ n, P14971885165281243540.a n = A110299 (n + 1)

end A110299

/-! ## A110299.P18396912126972441656

`record[A014963(n+2)]+2*a(n-1)` with `a(0)=2`
-/

namespace A110299.P18396912126972441656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * a (n - 1)

end

end A110299.P18396912126972441656

namespace A110299

/-- `record[A014963(n+2)]+2*a(n-1)` -/
def P18396912126972441656.Spec : Prop :=
  ∀ n, P18396912126972441656.a n = A110299 (n + 1)

end A110299

/-! ## A110299.P11469477662537244580

`record[A020639(n+2)]+2*a(n-1)` with `a(0)=2`
-/

namespace A110299.P11469477662537244580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * a (n - 1)

end

end A110299.P11469477662537244580

namespace A110299

/-- `record[A020639(n+2)]+2*a(n-1)` -/
def P11469477662537244580.Spec : Prop :=
  ∀ n, P11469477662537244580.a n = A110299 (n + 1)

end A110299

/-! ## A110299.P4211694636248970802

`A111209(n+1)+A053210(n)`
-/

namespace A110299.P4211694636248970802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111209 (n + 1) + A053210 n

end

end A110299.P4211694636248970802

namespace A110299

/-- `A111209(n+1)+A053210(n)` -/
def P4211694636248970802.Spec : Prop :=
  ∀ n, P4211694636248970802.a n = A110299 (n + 1)

end A110299

/-! ## A110299.P9967925022952415536

`∑[A000079(n)+A053210(n)/2]`
-/

namespace A110299.P9967925022952415536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) + (A053210 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110299.P9967925022952415536

namespace A110299

/-- `∑[A000079(n)+A053210(n)/2]` -/
def P9967925022952415536.Spec : Prop :=
  ∀ n, P9967925022952415536.a n = (A110299 (n + 1) : ℚ)

end A110299

/-! ## A110299.P1597336151102542486

`∑[A000040(n+1)/A000079(n)]*A000079(n)`
-/

namespace A110299.P1597336151102542486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A110299.P1597336151102542486

namespace A110299

/-- `∑[A000040(n+1)/A000079(n)]*A000079(n)` -/
def P1597336151102542486.Spec : Prop :=
  ∀ n, P1597336151102542486.a n = (A110299 (n + 1) : ℚ)

end A110299

