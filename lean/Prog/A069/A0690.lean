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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A069002: Smallest integer d such that n^2 + (n-d)^2 is a prime number.

The programs for A069002, there is no canonical definition to state claims against.
-/

/-! ## A069002.P13707460700901125745

`A237053(63*A103285(n))`
-/

namespace A069002.P13707460700901125745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (63 * A103285 n).toNat

end

end A069002.P13707460700901125745

/-! ## A069002.P16222100981090881198

`A293810(A347487(n+1)+10)`
-/

namespace A069002.P16222100981090881198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (A347487 (n + 1) + 10).toNat

end

end A069002.P16222100981090881198

/-! ## A069002.P18208539323158769875

`gcd(A044397(A295262(n+1)), A295238(n))`
-/

namespace A069002.P18208539323158769875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A044397 (A295262 (n + 1)).toNat) (A295238 n)

end

end A069002.P18208539323158769875

/-! ## A069002.P7635182183746299417

`A132400(C(A060831(n), A070165(n+1)))`
-/

namespace A069002.P7635182183746299417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132400 (Nat.choose (A060831 n).toNat (A070165 (n + 1)).toNat)

end

end A069002.P7635182183746299417

/-! ## A069002.P15874450599944673142

`gcd(A077078(n+1), A160747(A002865(3*n+2)))`
-/

namespace A069002.P15874450599944673142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077078 (n + 1)) (A160747 (A002865 (3 * n + 2)).toNat)

end

end A069002.P15874450599944673142

/-!
# A069003: Smallest integer d such that n^2 + d^2 is a prime number.

The programs for A069003, there is no canonical definition to state claims against.
-/

/-! ## A069003.P11264994702544822354

`A133388(A068486(n+1)-(n+1)²)`
-/

namespace A069003.P11264994702544822354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A068486 (n + 1) - ((n + 1) ^ 2 : ℤ)).toNat

end

end A069003.P11264994702544822354

/-! ## A069003.P3878342667779658528

`A000196(A068486(n+1)-A005563(n))`
-/

namespace A069003.P3878342667779658528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A068486 (n + 1) - A005563 n).toNat

end

end A069003.P3878342667779658528

/-! ## A069003.P8082775553803500626

`A056898((n+1)²)`
-/

namespace A069003.P8082775553803500626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 ((n + 1) ^ 2)

end

end A069003.P8082775553803500626

/-! ## A069003.P8089181553194629433

`A000027(A056898((n+1)*(n+1)))`
-/

namespace A069003.P8089181553194629433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A056898 ((n + 1) * (n + 1))).toNat

end

end A069003.P8089181553194629433

/-! ## A069003.P7141408720581292172

`A056898((n+1)*(n+1))%p?[A005599(n)]`
-/

namespace A069003.P7141408720581292172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056898 ((n + 1) * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A069003.P7141408720581292172

/-! ## A069003.P1571651165154322044

`A056898((n+1)*(n+1))+A053186(A048760(n))`
-/

namespace A069003.P1571651165154322044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 ((n + 1) * (n + 1)) + A053186 (A048760 n).toNat

end

end A069003.P1571651165154322044

/-! ## A069003.P8168652372385326249

`A056898((n+1)*(n+1))+A056898(A000040(n+1))`
-/

namespace A069003.P8168652372385326249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 ((n + 1) * (n + 1)) + A056898 (A000040 (n + 1)).toNat

end

end A069003.P8168652372385326249

/-! ## A069003.P16656821134285218258

`A000196(A000290(A056898(A000290(n+1))))`
-/

namespace A069003.P16656821134285218258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000290 (A056898 (A000290 (n + 1)).toNat).toNat).toNat

end

end A069003.P16656821134285218258

/-! ## A069003.P15483203539588612271

`A085099((n+1)²)`
-/

namespace A069003.P15483203539588612271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 ((n + 1) ^ 2)

end

end A069003.P15483203539588612271

/-! ## A069003.P4485493215041284347

`sqrt(A059844((n+1)²))`
-/

namespace A069003.P4485493215041284347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059844 ((n + 1) ^ 2) : ℝ)

end

end A069003.P4485493215041284347

/-! ## A069003.P15865296602108861436

`A316568((n+1)²)+1`
-/

namespace A069003.P15865296602108861436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316568 ((n + 1) ^ 2) + 1

end

end A069003.P15865296602108861436

/-! ## A069003.P17002961691407707193

`A000196(A056897(n*(n+2)))`
-/

namespace A069003.P17002961691407707193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056897 (n * (n + 2))).toNat

end

end A069003.P17002961691407707193

/-! ## A069003.P11009416538154069303

`A002265(4*A085099(∑[2*n+1]))`
-/

namespace A069003.P11009416538154069303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * A085099 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A069003.P11009416538154069303

/-! ## A069003.P16662468974461757978

`A053000(A058055(A085099((n+1)*(n+1))))`
-/

namespace A069003.P16662468974461757978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A058055 (A085099 ((n + 1) * (n + 1))).toNat).toNat

end

end A069003.P16662468974461757978

/-! ## A069003.P13284454516144010056

`A085099(A000290(n+1))*A085099(A006093(n+2))`
-/

namespace A069003.P13284454516144010056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A000290 (n + 1)).toNat * A085099 (A006093 (n + 2)).toNat

end

end A069003.P13284454516144010056

/-!
# A069004: Number of times n^2 + s^2 is prime for positive integers s < n.

The programs for A069004, there is no canonical definition to state claims against.
-/

/-! ## A069004.P2773728293368277977

`A281543(2*(n+1))%(n+1)`
-/

namespace A069004.P2773728293368277977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281543 (2 * (n + 1))) (n + 1 : ℤ)

end

end A069004.P2773728293368277977

/-! ## A069004.P13165653788776126208

`A281543(comp[comp[2*(n+1)]+1]+1)`
-/

namespace A069004.P13165653788776126208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A069004.P13165653788776126208

/-! ## A069004.P16026652254584650206

`A281543(2*(n+1))-A000007(n)`
-/

namespace A069004.P16026652254584650206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (2 * (n + 1)) - A000007 n

end

end A069004.P16026652254584650206

/-! ## A069004.P16814554496773975906

`A281543(2*(n+1))-A082519(2*(n+1))`
-/

namespace A069004.P16814554496773975906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (2 * (n + 1)) - A082519 (2 * (n + 1))

end

end A069004.P16814554496773975906

/-! ## A069004.P7573858295525892805

`xor(A082519(2*n+2), A281543(2*n+2))`
-/

namespace A069004.P7573858295525892805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082519 (2 * n + 2)) (A281543 (2 * n + 2))

end

end A069004.P7573858295525892805

/-! ## A069004.P2993114537253322311

`A281543(A057543(n+1))²/A281543(2*(n+1))`
-/

namespace A069004.P2993114537253322311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281543 (A057543 (n + 1)).toNat ^ 2 : ℚ) / (A281543 (2 * (n + 1)) : ℚ)

end

end A069004.P2993114537253322311

/-!
# A069005: Let M = 4 X 4 matrix with rows /1,1,1,1/1,1,1,0/1,1,0,0/1,0,0,0/ and A(n) = vector (x(n),y(n),z(n),t(n)) = M^n*A where A is the vector (1,1,1,1); then a(n)=z(n).

The programs for A069005, the canonical program `A069005.P14880868784159828699` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069005 has offset 1).

The definition of A069005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069005.P5699726429225367571

`A038197(3*n+4)^ceil(abs(sin(n)))`
-/

namespace A069005.P5699726429225367571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038197 (3 * n + 4) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A069005.P5699726429225367571

namespace A069005

/-- `A038197(3*n+4)^ceil(abs(sin(n)))` -/
def P5699726429225367571.Spec : Prop :=
  ∀ n, P5699726429225367571.a n = (A069005 (n + 1) : ℚ)

end A069005

/-! ## A069005.P14880868784159828699

`A091024(A065475(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069005

/-- `A091024(A065475(n+1))` -/
def P14880868784159828699.Spec : Prop :=
  ∀ n, P14880868784159828699.a n = A069005 (n + 1)

theorem P14880868784159828699.correct : P14880868784159828699.Spec := by
  intro n
  simp only [A069005, Nat.add_sub_cancel]

end A069005

/-! ## A069005.P12729298562780184730

`A091024(A181440(n+2))`
-/

namespace A069005.P12729298562780184730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (A181440 (n + 2)).toNat

end

end A069005.P12729298562780184730

namespace A069005

/-- `A091024(A181440(n+2))` -/
def P12729298562780184730.Spec : Prop :=
  ∀ n, P12729298562780184730.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P2580691854565145818

`A091024(A184985(n+2))`
-/

namespace A069005.P2580691854565145818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (A184985 (n + 2)).toNat

end

end A069005.P2580691854565145818

namespace A069005

/-- `A091024(A184985(n+2))` -/
def P2580691854565145818.Spec : Prop :=
  ∀ n, P2580691854565145818.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P16226500265335464922

`A091024(A036453(n+1)+n)`
-/

namespace A069005.P16226500265335464922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (A036453 (n + 1) + (n : ℤ)).toNat

end

end A069005.P16226500265335464922

namespace A069005

/-- `A091024(A036453(n+1)+n)` -/
def P16226500265335464922.Spec : Prop :=
  ∀ n, P16226500265335464922.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P3205888098509397081

`A091024(A057427(n)+1+n)`
-/

namespace A069005.P3205888098509397081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (A057427 n + 1 + (n : ℤ)).toNat

end

end A069005.P3205888098509397081

namespace A069005

/-- `A091024(A057427(n)+1+n)` -/
def P3205888098509397081.Spec : Prop :=
  ∀ n, P3205888098509397081.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P14291308188950922307

`A091024(2-A000007(n)+n)`
-/

namespace A069005.P14291308188950922307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (2 - A000007 n + (n : ℤ)).toNat

end

end A069005.P14291308188950922307

namespace A069005

/-- `A091024(2-A000007(n)+n)` -/
def P14291308188950922307.Spec : Prop :=
  ∀ n, P14291308188950922307.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P9802682538537618118

`A091024(2-(A000007(n)-n))`
-/

namespace A069005.P9802682538537618118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (2 - (A000007 n - (n : ℤ))).toNat

end

end A069005.P9802682538537618118

namespace A069005

/-- `A091024(2-(A000007(n)-n))` -/
def P9802682538537618118.Spec : Prop :=
  ∀ n, P9802682538537618118.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P17519125481163972915

`A091024(3-A054977(n)+n)`
-/

namespace A069005.P17519125481163972915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (3 - A054977 n + (n : ℤ)).toNat

end

end A069005.P17519125481163972915

namespace A069005

/-- `A091024(3-A054977(n)+n)` -/
def P17519125481163972915.Spec : Prop :=
  ∀ n, P17519125481163972915.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P11519144406699393331

`A091024(2/A054977(n)+n)`
-/

namespace A069005.P11519144406699393331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (SequenceMachineLib.roundAway (2 / (A054977 n : ℚ) + (n : ℚ))).toNat

end

end A069005.P11519144406699393331

namespace A069005

/-- `A091024(2/A054977(n)+n)` -/
def P11519144406699393331.Spec : Prop :=
  ∀ n, P11519144406699393331.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P13465413789764598306

`A091024(2*(n+1)-A028310(n))`
-/

namespace A069005.P13465413789764598306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 ((2 * (n + 1) : ℤ) - A028310 n).toNat

end

end A069005.P13465413789764598306

namespace A069005

/-- `A091024(2*(n+1)-A028310(n))` -/
def P13465413789764598306.Spec : Prop :=
  ∀ n, P13465413789764598306.a n = A069005 (n + 1)

end A069005

/-! ## A069005.P16491336212186621369

`A091024(n+2)/A014963(A014574(n+1))`
-/

namespace A069005.P16491336212186621369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091024 (n + 2) : ℚ) / (A014963 (A014574 (n + 1)).toNat : ℚ)

end

end A069005.P16491336212186621369

namespace A069005

/-- `A091024(n+2)/A014963(A014574(n+1))` -/
def P16491336212186621369.Spec : Prop :=
  ∀ n, P16491336212186621369.a n = (A069005 (n + 1) : ℚ)

end A069005

/-!
# A069006: Let M denote the 5 X 5 matrix with rows /1,1,1,1,1/1,1,1,1,0/1,1,1,0,0/1,1,0,0,0/1,0,0,0,0/ and A(n) = vector (x(n),y(n),z(n),t(n),u(n)) = M^n*A where A is the vector (1,1,1,1,1); then a(n) = t(n).

The programs for A069006, the canonical program `A069006.P4434490563107905522` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069006 has offset 0).

The definition of A069006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069006.P4434490563107905522

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=29, a(4)=105`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069006

/-- `3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` -/
def P4434490563107905522.Spec : Prop :=
  ∀ n, P4434490563107905522.a n = A069006 n

theorem P4434490563107905522.correct : P4434490563107905522.Spec := by
  intro n
  simp only [A069006]

end A069006

/-! ## A069006.P15356493465379498325

`ogf((1-x)/(1-3x-3x^2+4x^3+x^4-x^5))`
-/

namespace A069006.P15356493465379498325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -3, 4, 1, -1] n

end

end A069006.P15356493465379498325

namespace A069006

/-- `ogf((1-x)/(1-3x-3x^2+4x^3+x^4-x^5))` -/
def P15356493465379498325.Spec : Prop :=
  ∀ n, P15356493465379498325.a n = A069006 n

end A069006

/-! ## A069006.P12754448098222457257

`A038201(4*n+1)`
-/

namespace A069006.P12754448098222457257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (4 * n + 1)

end

end A069006.P12754448098222457257

namespace A069006

/-- `A038201(4*n+1)` -/
def P12754448098222457257.Spec : Prop :=
  ∀ n, P12754448098222457257.a n = A069006 n

end A069006

/-! ## A069006.P12819211863774455258

`record[A038201(A058281(n))]`
-/

namespace A069006.P12819211863774455258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A058281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069006.P12819211863774455258

namespace A069006

/-- `record[A038201(A058281(n))]` -/
def P12819211863774455258.Spec : Prop :=
  ∀ n, P12819211863774455258.a n = A069006 n

end A069006

/-! ## A069006.P9882137035603509235

`record[A038201(A309492(n+1))]`
-/

namespace A069006.P9882137035603509235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A309492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069006.P9882137035603509235

namespace A069006

/-- `record[A038201(A309492(n+1))]` -/
def P9882137035603509235.Spec : Prop :=
  ∀ n, P9882137035603509235.a n = A069006 n

end A069006

/-! ## A069006.P16969285768362886199

`record[A038201(A004273(xor(1, n+1)))]`
-/

namespace A069006.P16969285768362886199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A004273 (Nat.xor 1 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069006.P16969285768362886199

namespace A069006

/-- `record[A038201(A004273(xor(1, n+1)))]` -/
def P16969285768362886199.Spec : Prop :=
  ∀ n, P16969285768362886199.a n = A069006 n

end A069006

/-! ## A069006.P13636383186196478474

`A000007(n)+Δ[A038201(A130824(n))]`
-/

namespace A069006.P13636383186196478474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038201 (A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A069006.P13636383186196478474

namespace A069006

/-- `A000007(n)+Δ[A038201(A130824(n))]` -/
def P13636383186196478474.Spec : Prop :=
  ∀ n, P13636383186196478474.a n = A069006 n

end A069006

/-! ## A069006.P11159429109826106328

`A120747(n+3)-A038342(n+1)`
-/

namespace A069006.P11159429109826106328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120747 (n + 3) - A038342 (n + 1)

end

end A069006.P11159429109826106328

namespace A069006

/-- `A120747(n+3)-A038342(n+1)` -/
def P11159429109826106328.Spec : Prop :=
  ∀ n, P11159429109826106328.a n = A069006 n

end A069006

/-! ## A069006.P13537971660000808534

`A038342(n+1)+A230080(n+1)-A006358(n+1)`
-/

namespace A069006.P13537971660000808534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038342 (n + 1) + (A230080 (n + 1) - A006358 (n + 1))

end

end A069006.P13537971660000808534

namespace A069006

/-- `A038342(n+1)+A230080(n+1)-A006358(n+1)` -/
def P13537971660000808534.Spec : Prop :=
  ∀ n, P13537971660000808534.a n = A069006 n

end A069006

/-! ## A069006.P15744578517214834856

`Δ[Δ[A006358(n)-A230081(n)]]`
-/

namespace A069006.P15744578517214834856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 n - A230081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069006.P15744578517214834856

namespace A069006

/-- `Δ[Δ[A006358(n)-A230081(n)]]` -/
def P15744578517214834856.Spec : Prop :=
  ∀ n, P15744578517214834856.a n = A069006 n

end A069006

/-! ## A069006.P9115091237900612297

`A038201(A005408(2*n))%A004171(n)`
-/

namespace A069006.P9115091237900612297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038201 (A005408 (2 * n)).toNat) (A004171 n)

end

end A069006.P9115091237900612297

namespace A069006

/-- `A038201(A005408(2*n))%A004171(n)` -/
def P9115091237900612297.Spec : Prop :=
  ∀ n, P9115091237900612297.a n = A069006 n

end A069006

/-!
# A069007: Let M denote the 6 X 6 matrix with rows /1,1,1,1,1,1/1,1,1,1,1,0/1,1,1,1,0,0/1,1,1,0,0,0/1,1,0,0,0,0/1,0,0,0,0,0/ and A(n) the vector (x(n),y(n),z(n),t(n),u(n),v(n)) = M^n*A where A is the vector (1,1,1,1,1,1); then a(n) = y(n).

The programs for A069007, there is no canonical definition to state claims against.
-/

/-! ## A069007.P15268389069770504242

`A070778(n+1)-A006359(n)`
-/

namespace A069007.P15268389069770504242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070778 (n + 1) - A006359 n

end

end A069007.P15268389069770504242

/-! ## A069007.P13682432838593554272

`A069009(n+1)-(A069008(n)+A006359(n))`
-/

namespace A069007.P13682432838593554272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069009 (n + 1) - (A069008 n + A006359 n)

end

end A069007.P13682432838593554272

/-! ## A069007.P10837482865370336986

`A070778(n+1)-A050446(eq[5, A002262(n)])`
-/

namespace A069007.P10837482865370336986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070778 (n + 1) - A050446 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069007.P10837482865370336986

/-! ## A069007.P17097843267235725727

`A070778(n+1)-A050446(A000124(n+6)-(n+2))`
-/

namespace A069007.P17097843267235725727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070778 (n + 1) - A050446 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A069007.P17097843267235725727

/-! ## A069007.P14655513627915543562

`A070778(n+1)-A050447(A000217(n+6)-6)`
-/

namespace A069007.P14655513627915543562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070778 (n + 1) - A050447 (A000217 (n + 6) - 6).toNat

end

end A069007.P14655513627915543562

/-!
# A069008: Let M denote the 6 X 6 matrix with rows /1,1,1,1,1,1/1,1,1,1,1,0/1,1,1,1,0,0/1,1,1,0,0,0/1,1,0,0,0,0/1,0,0,0,0,0/ and A(n) the vector (x(n),y(n),z(n),t(n),u(n),v(n)) = M^n*A where A is the vector (1,1,1,1,1,1); then a(n) = z(n).

The programs for A069008, there is no canonical definition to state claims against.
-/

/-! ## A069008.P7488351654007570312

`A069009(n+1)-A070778(n+1)`
-/

namespace A069008.P7488351654007570312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069009 (n + 1) - A070778 (n + 1)

end

end A069008.P7488351654007570312

/-! ## A069008.P11954161718124314856

`A069009(A028310(n)+1)%A070778(n+1)`
-/

namespace A069008.P11954161718124314856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069009 (A028310 n + 1).toNat) (A070778 (n + 1))

end

end A069008.P11954161718124314856

/-! ## A069008.P13001511246619703707

`A069009(n+1)-(A069007(n)+A006359(n))`
-/

namespace A069008.P13001511246619703707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069009 (n + 1) - (A069007 n + A006359 n)

end

end A069008.P13001511246619703707

/-! ## A069008.P13097922543232100231

`A069009(A022144(n)%2+n+1)%A070778(n+1)`
-/

namespace A069008.P13097922543232100231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069009 (Int.tmod (A022144 n) 2 + (n + 1 : ℤ)).toNat) (A070778 (n + 1))

end

end A069008.P13097922543232100231

/-! ## A069008.P17082188476391636615

`A069009(A296837(n)%2+n+1)%A070778(n+1)`
-/

namespace A069008.P17082188476391636615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069009 (Int.tmod (A296837 n) 2 + (n + 1 : ℤ)).toNat) (A070778 (n + 1))

end

end A069008.P17082188476391636615

/-!
# A069009: Let M denote the 6 X 6 matrix with rows / 1,1,1,1,1,1 / 1,1,1,1,1,0 / 1,1,1,1,0,0 / 1,1,1,0,0,0 / 1,1,0,0,0,0 / 1,0,0,0,0,0 / and A(n) the vector (x(n),y(n),z(n),t(n),u(n),v(n)) = M^n*A where A is the vector (1,1,1,1,1,1); then a(n) = t(n).

The programs for A069009, there is no canonical definition to state claims against.
-/

/-! ## A069009.P14344852582403682863

`A069008(n)-a(n-1)` with `a(0)=1`
-/

namespace A069009.P14344852582403682863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069008 n - a (n - 1)

end

end A069009.P14344852582403682863

/-! ## A069009.P4665478828635942222

`Δ[A069008(n)-∑[A070778(n)]]`
-/

namespace A069009.P4665478828635942222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069008 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069009.P4665478828635942222

/-! ## A069009.P15924927920805816056

`Δ[A069008(n)]-A070778(n+1)`
-/

namespace A069009.P15924927920805816056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070778 (n + 1)

end

end A069009.P15924927920805816056

/-! ## A069009.P2733277060028127701

`A069008(n+1)-(A070778(n+1)+A069008(n))`
-/

namespace A069009.P2733277060028127701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069008 (n + 1) - (A070778 (n + 1) + A069008 n)

end

end A069009.P2733277060028127701

/-! ## A069009.P18058013383834605516

`Δ[Δ[A069008(n+1)]]%A070778(n+3)`
-/

namespace A069009.P18058013383834605516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A070778 (n + 3))

end

end A069009.P18058013383834605516

/-! ## A069009.P16019140041438324583

`Δ[A006359(n+4)%A069008(n+3)]`
-/

namespace A069009.P16019140041438324583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006359 (n + 4)) (A069008 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069009.P16019140041438324583

/-!
# A069010: Number of runs of 1's in the binary representation of n.

The programs for A069010, the canonical program `A069010.P14932719103722593844` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069010 has offset 0).

The definition of A069010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069010.P14932719103722593844

`ceil(A005811(n)/2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069010

/-- `ceil(A005811(n)/2)` -/
def P14932719103722593844.Spec : Prop :=
  ∀ n, P14932719103722593844.a n = A069010 n

theorem P14932719103722593844.correct : P14932719103722593844.Spec := by
  intro n
  simp only [A069010]

end A069010

/-! ## A069010.P9623665085132295680

`A000120(n)-A014081(n)`
-/

namespace A069010.P9623665085132295680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A014081 n

end

end A069010.P9623665085132295680

namespace A069010

/-- `A000120(n)-A014081(n)` -/
def P9623665085132295680.Spec : Prop :=
  ∀ n, P9623665085132295680.a n = A069010 n

theorem P9623665085132295680.correct : P9623665085132295680.Spec := by
  intro n
  simp only [A069010, Nat.add_sub_cancel, A069010.P9623665085132295680.a, A069010.P14932719103722593844.a, A000120, A000120.P2816527436160941581.a, A005811, A005811.P8696411420205566785.a, A014081, A014081.P14878370479040452879.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069010

/-! ## A069010.P6187243213156240137

`A005811(n)-A033264(n)`
-/

namespace A069010.P6187243213156240137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A033264 n

end

end A069010.P6187243213156240137

namespace A069010

/-- `A005811(n)-A033264(n)` -/
def P6187243213156240137.Spec : Prop :=
  ∀ n, P6187243213156240137.a n = A069010 n

end A069010

/-! ## A069010.P11568206602072084552

`floor(∑[Δ[xor(n, 2*n-1)]%2]/2)`
-/

namespace A069010.P11568206602072084552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A069010.P11568206602072084552

namespace A069010

/-- `floor(∑[Δ[xor(n, 2*n-1)]%2]/2)` -/
def P11568206602072084552.Spec : Prop :=
  ∀ n, P11568206602072084552.a n = A069010 n

end A069010

/-! ## A069010.P3690647114645058265

`log2(A277561(n))`
-/

namespace A069010.P3690647114645058265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A277561 n : ℝ)

end

end A069010.P3690647114645058265

namespace A069010

/-- `log2(A277561(n))` -/
def P3690647114645058265.Spec : Prop :=
  ∀ n, P3690647114645058265.a n = (A069010 n : ℝ)

end A069010

/-! ## A069010.P4025458184486656658

`val(A253069(n), 2)`
-/

namespace A069010.P4025458184486656658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253069 n).toNat 2

end

end A069010.P4025458184486656658

namespace A069010

/-- `val(A253069(n), 2)` -/
def P4025458184486656658.Spec : Prop :=
  ∀ n, (P4025458184486656658.a n : ℤ) = A069010 n

end A069010

/-! ## A069010.P10851021211071689204

`val(A255460(n), 2)`
-/

namespace A069010.P10851021211071689204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255460 n).toNat 2

end

end A069010.P10851021211071689204

namespace A069010

/-- `val(A255460(n), 2)` -/
def P10851021211071689204.Spec : Prop :=
  ∀ n, (P10851021211071689204.a n : ℤ) = A069010 n

end A069010

/-! ## A069010.P13274970973404212634

`val(A255462(n), 2)`
-/

namespace A069010.P13274970973404212634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255462 n).toNat 2

end

end A069010.P13274970973404212634

namespace A069010

/-- `val(A255462(n), 2)` -/
def P13274970973404212634.Spec : Prop :=
  ∀ n, (P13274970973404212634.a n : ℤ) = A069010 n

end A069010

/-! ## A069010.P13009084104465210135

`val(A255464(n), 2)`
-/

namespace A069010.P13009084104465210135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255464 n).toNat 2

end

end A069010.P13009084104465210135

namespace A069010

/-- `val(A255464(n), 2)` -/
def P13009084104465210135.Spec : Prop :=
  ∀ n, (P13009084104465210135.a n : ℤ) = A069010 n

end A069010

/-! ## A069010.P16475583725981631838

`val(A255466(n), 2)`
-/

namespace A069010.P16475583725981631838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A255466 n).toNat 2

end

end A069010.P16475583725981631838

namespace A069010

/-- `val(A255466(n), 2)` -/
def P16475583725981631838.Spec : Prop :=
  ∀ n, (P16475583725981631838.a n : ℤ) = A069010 n

end A069010

/-! ## A069010.P11518372220621985929

`val(A278159(n), 2)`
-/

namespace A069010.P11518372220621985929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278159 n).toNat 2

end

end A069010.P11518372220621985929

namespace A069010

/-- `val(A278159(n), 2)` -/
def P11518372220621985929.Spec : Prop :=
  ∀ n, (P11518372220621985929.a n : ℤ) = A069010 n

end A069010

/-! ## A069010.P1062783950724392613

`val(A253100(n), 3)`
-/

namespace A069010.P1062783950724392613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253100 n).toNat 3

end

end A069010.P1062783950724392613

namespace A069010

/-- `val(A253100(n), 3)` -/
def P1062783950724392613.Spec : Prop :=
  ∀ n, (P1062783950724392613.a n : ℤ) = A069010 n

end A069010

/-! ## A069010.P9163980783296134370

`n-A239904(n)`
-/

namespace A069010.P9163980783296134370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A239904 n

end

end A069010.P9163980783296134370

namespace A069010

/-- `n-A239904(n)` -/
def P9163980783296134370.Spec : Prop :=
  ∀ n, P9163980783296134370.a n = A069010 n

theorem P9163980783296134370.correct : P9163980783296134370.Spec := by
  intro n
  simp only [A069010, Nat.add_sub_cancel, A069010.P9163980783296134370.a, A069010.P14932719103722593844.a, A005811, A005811.P8696411420205566785.a, A239904, A239904.P1769615034918524656.a, A000120, A000120.P2816527436160941581.a, A003188, A003188.P10544524695508875182.a, A014081, A014081.P14878370479040452879.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069010

/-! ## A069010.P4410897959522960002

`∑{e}[A246029(n), #]`
-/

namespace A069010.P4410897959522960002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A069010.P4410897959522960002

namespace A069010

/-- `∑{e}[A246029(n), #]` -/
def P4410897959522960002.Spec : Prop :=
  ∀ n, (P4410897959522960002.a n : ℤ) = A069010 n

end A069010

/-! ## A069010.P17413579052562226790

`floor(A088748(n)/2)`
-/

namespace A069010.P17413579052562226790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088748 n : ℚ) / 2⌋

end

end A069010.P17413579052562226790

namespace A069010

/-- `floor(A088748(n)/2)` -/
def P17413579052562226790.Spec : Prop :=
  ∀ n, P17413579052562226790.a n = A069010 n

end A069010

/-! ## A069010.P13380491607568236923

`A000120(A090077(n))`
-/

namespace A069010.P13380491607568236923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A090077 n).toNat

end

end A069010.P13380491607568236923

namespace A069010

/-- `A000120(A090077(n))` -/
def P13380491607568236923.Spec : Prop :=
  ∀ n, P13380491607568236923.a n = A069010 n

end A069010

/-! ## A069010.P11203614056406393107

`A000120(A090079(n))`
-/

namespace A069010.P11203614056406393107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A090079 n).toNat

end

end A069010.P11203614056406393107

namespace A069010

/-- `A000120(A090079(n))` -/
def P11203614056406393107.Spec : Prop :=
  ∀ n, P11203614056406393107.a n = A069010 n

end A069010

/-! ## A069010.P15897465796322926475

`A004526(A088748(n))`
-/

namespace A069010.P15897465796322926475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A088748 n).toNat

end

end A069010.P15897465796322926475

namespace A069010

/-- `A004526(A088748(n))` -/
def P15897465796322926475.Spec : Prop :=
  ∀ n, P15897465796322926475.a n = A069010 n

end A069010

/-! ## A069010.P14218247333301405634

`A110654(A005811(n))`
-/

namespace A069010.P14218247333301405634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005811 n).toNat

end

end A069010.P14218247333301405634

namespace A069010

/-- `A110654(A005811(n))` -/
def P14218247333301405634.Spec : Prop :=
  ∀ n, P14218247333301405634.a n = A069010 n

end A069010

/-! ## A069010.P574649559166580141

`A000120(A229763(n))`
-/

namespace A069010.P574649559166580141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A229763 n).toNat

end

end A069010.P574649559166580141

namespace A069010

/-- `A000120(A229763(n))` -/
def P574649559166580141.Spec : Prop :=
  ∀ n, P574649559166580141.a n = A069010 n

end A069010

/-!
# A069011: Triangle with T(n,k) = n^2 + k^2.

The programs for A069011, the canonical program `A069011.P12730965949212328677` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069011 has offset 0).

The definition of A069011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)²+col(n)²` (program `A069011.P12730965949212328677`, by `A069011.P12730965949212328677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069011.P12730965949212328677

`row(n)²+col(n)²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069011

/-- `row(n)²+col(n)²` -/
def P12730965949212328677.Spec : Prop :=
  ∀ n, (P12730965949212328677.a n : ℤ) = A069011 n

theorem P12730965949212328677.correct : P12730965949212328677.Spec := by
  intro n
  simp only [A069011]

end A069011

/-! ## A069011.P7715508724694084920

`row(n)*row(n)+col(n)*col(n)`
-/

namespace A069011.P7715508724694084920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n * SequenceMachineLib.triRow n + SequenceMachineLib.triCol n * SequenceMachineLib.triCol n

end

end A069011.P7715508724694084920

namespace A069011

/-- `row(n)*row(n)+col(n)*col(n)` -/
def P7715508724694084920.Spec : Prop :=
  ∀ n, (P7715508724694084920.a n : ℤ) = A069011 n

theorem P7715508724694084920.correct : P7715508724694084920.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P7715508724694084920.a, A069011.P12730965949212328677.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069011

/-! ## A069011.P14809697120622933339

`A079904(n)+A073254(n)`
-/

namespace A069011.P14809697120622933339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A073254 n

end

end A069011.P14809697120622933339

namespace A069011

/-- `A079904(n)+A073254(n)` -/
def P14809697120622933339.Spec : Prop :=
  ∀ n, P14809697120622933339.a n = A069011 n

theorem P14809697120622933339.correct : P14809697120622933339.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P14809697120622933339.a, A069011.P12730965949212328677.a, A073254, A073254.P5875854829665146571.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P11186777405081948320

`A100345(n)-A004247(n)`
-/

namespace A069011.P11186777405081948320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - A004247 n

end

end A069011.P11186777405081948320

namespace A069011

/-- `A100345(n)-A004247(n)` -/
def P11186777405081948320.Spec : Prop :=
  ∀ n, P11186777405081948320.a n = A069011 n

theorem P11186777405081948320.correct : P11186777405081948320.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P11186777405081948320.a, A069011.P12730965949212328677.a, A004247, A004247.P2751605162508615148.a, A100345, A100345.P12526129573146748191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P9563061663783698908

`A132111(n)-A079904(n)`
-/

namespace A069011.P9563061663783698908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n - A079904 n

end

end A069011.P9563061663783698908

namespace A069011

/-- `A132111(n)-A079904(n)` -/
def P9563061663783698908.Spec : Prop :=
  ∀ n, P9563061663783698908.a n = A069011 n

theorem P9563061663783698908.correct : P9563061663783698908.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P9563061663783698908.a, A069011.P12730965949212328677.a, A079904, A079904.P681072687927778273.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P10723814712743230427

`A321500(n)/A134478(n)`
-/

namespace A069011.P10723814712743230427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321500 n : ℚ) / (A134478 n : ℚ)

end

end A069011.P10723814712743230427

namespace A069011

/-- `A321500(n)/A134478(n)` -/
def P10723814712743230427.Spec : Prop :=
  ∀ n, P10723814712743230427.a n = (A069011 n : ℚ)

end A069011

/-! ## A069011.P16037503857923324173

`A143844(n)+A003056(n)²`
-/

namespace A069011.P16037503857923324173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A003056 n ^ 2

end

end A069011.P16037503857923324173

namespace A069011

/-- `A143844(n)+A003056(n)²` -/
def P16037503857923324173.Spec : Prop :=
  ∀ n, P16037503857923324173.a n = A069011 n

end A069011

/-! ## A069011.P10836974053751097168

`A335821(n)+2*A143844(n)`
-/

namespace A069011.P10836974053751097168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 n + 2 * A143844 n

end

end A069011.P10836974053751097168

namespace A069011

/-- `A335821(n)+2*A143844(n)` -/
def P10836974053751097168.Spec : Prop :=
  ∀ n, P10836974053751097168.a n = A069011 n

theorem P10836974053751097168.correct : P10836974053751097168.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P10836974053751097168.a, A069011.P12730965949212328677.a, A143844, A143844.P13341456288637914710.a, A335821, A335821.P109563387027522563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P10049228087507524318

`(A132111(n)+A073254(n))/2`
-/

namespace A069011.P10049228087507524318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132111 n + A073254 n : ℚ) / 2

end

end A069011.P10049228087507524318

namespace A069011

/-- `(A132111(n)+A073254(n))/2` -/
def P10049228087507524318.Spec : Prop :=
  ∀ n, P10049228087507524318.a n = (A069011 n : ℚ)

theorem P10049228087507524318.correct : P10049228087507524318.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P10049228087507524318.a, A069011.P12730965949212328677.a, A073254, A073254.P5875854829665146571.a, A132111, A132111.P14495534047387877315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P9337676359071489470

`A002262(n)²+A003056(n)²`
-/

namespace A069011.P9337676359071489470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + A003056 n ^ 2

end

end A069011.P9337676359071489470

namespace A069011

/-- `A002262(n)²+A003056(n)²` -/
def P9337676359071489470.Spec : Prop :=
  ∀ n, P9337676359071489470.a n = A069011 n

end A069011

/-! ## A069011.P7079143490353676444

`A025581(n)²+2*A079904(n)`
-/

namespace A069011.P7079143490353676444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2 + 2 * A079904 n

end

end A069011.P7079143490353676444

namespace A069011

/-- `A025581(n)²+2*A079904(n)` -/
def P7079143490353676444.Spec : Prop :=
  ∀ n, P7079143490353676444.a n = A069011 n

theorem P7079143490353676444.correct : P7079143490353676444.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P7079143490353676444.a, A069011.P12730965949212328677.a, A025581, A025581.P16112744757063613497.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P17199738736786616675

`2*A073254(n)-A025581(n)²`
-/

namespace A069011.P17199738736786616675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073254 n - A025581 n ^ 2

end

end A069011.P17199738736786616675

namespace A069011

/-- `2*A073254(n)-A025581(n)²` -/
def P17199738736786616675.Spec : Prop :=
  ∀ n, P17199738736786616675.a n = A069011 n

theorem P17199738736786616675.correct : P17199738736786616675.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P17199738736786616675.a, A069011.P12730965949212328677.a, A025581, A025581.P16112744757063613497.a, A073254, A073254.P5875854829665146571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P8377475582720883138

`A051162(n)²-2*A079904(n)`
-/

namespace A069011.P8377475582720883138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n ^ 2 - 2 * A079904 n

end

end A069011.P8377475582720883138

namespace A069011

/-- `A051162(n)²-2*A079904(n)` -/
def P8377475582720883138.Spec : Prop :=
  ∀ n, P8377475582720883138.a n = A069011 n

theorem P8377475582720883138.correct : P8377475582720883138.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P8377475582720883138.a, A069011.P12730965949212328677.a, A051162, A051162.P4484969187050632534.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P16008391837144356040

`2*A003056(n)²-A335821(n)`
-/

namespace A069011.P16008391837144356040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003056 n ^ 2 - A335821 n

end

end A069011.P16008391837144356040

namespace A069011

/-- `2*A003056(n)²-A335821(n)` -/
def P16008391837144356040.Spec : Prop :=
  ∀ n, P16008391837144356040.a n = A069011 n

end A069011

/-! ## A069011.P17342872046541986050

`A003056(n)²+log2(A059268(n))²`
-/

namespace A069011.P17342872046541986050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003056 n ^ 2 : ℝ) + Real.logb 2 (A059268 n : ℝ) ^ 2

end

end A069011.P17342872046541986050

namespace A069011

/-- `A003056(n)²+log2(A059268(n))²` -/
def P17342872046541986050.Spec : Prop :=
  ∀ n, P17342872046541986050.a n = (A069011 n : ℝ)

end A069011

/-! ## A069011.P8939161841939157296

`A002262(n)²+log2(A137688(n))²`
-/

namespace A069011.P8939161841939157296
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002262 n ^ 2 : ℝ) + Real.logb 2 (A137688 n : ℝ) ^ 2

end

end A069011.P8939161841939157296

namespace A069011

/-- `A002262(n)²+log2(A137688(n))²` -/
def P8939161841939157296.Spec : Prop :=
  ∀ n, P8939161841939157296.a n = (A069011 n : ℝ)

end A069011

/-! ## A069011.P10699768215544826176

`A002262(n)²+∑[A073424(n)]²`
-/

namespace A069011.P10699768215544826176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A069011.P10699768215544826176

namespace A069011

/-- `A002262(n)²+∑[A073424(n)]²` -/
def P10699768215544826176.Spec : Prop :=
  ∀ n, P10699768215544826176.a n = A069011 n

end A069011

/-! ## A069011.P9516922744971918218

`A002262(n)²+Δ[A006463(n)]²`
-/

namespace A069011.P9516922744971918218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (f1 (n + 1) - f1 n) ^ 2

end

end A069011.P9516922744971918218

namespace A069011

/-- `A002262(n)²+Δ[A006463(n)]²` -/
def P9516922744971918218.Spec : Prop :=
  ∀ n, P9516922744971918218.a n = A069011 n

end A069011

/-! ## A069011.P4076985219823771563

`A095831(n+1)+2*A079904(n)`
-/

namespace A069011.P4076985219823771563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + 2 * A079904 n

end

end A069011.P4076985219823771563

namespace A069011

/-- `A095831(n+1)+2*A079904(n)` -/
def P4076985219823771563.Spec : Prop :=
  ∀ n, P4076985219823771563.a n = A069011 n

theorem P4076985219823771563.correct : P4076985219823771563.Spec := by
  intro n
  simp only [A069011, Nat.add_sub_cancel, A069011.P4076985219823771563.a, A069011.P12730965949212328677.a, A079904, A079904.P681072687927778273.a, A095831, A095831.P8959828256737551881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069011

/-! ## A069011.P11145226341123921117

`(n-A057944(n))²+A003056(n)²`
-/

namespace A069011.P11145226341123921117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A057944 n) ^ 2 + A003056 n ^ 2

end

end A069011.P11145226341123921117

namespace A069011

/-- `(n-A057944(n))²+A003056(n)²` -/
def P11145226341123921117.Spec : Prop :=
  ∀ n, P11145226341123921117.a n = A069011 n

end A069011

/-!
# A069012: Number of distinct representations of n as the ratio A/B, where A and B taken together are pandigital (i.e., contains all digits 0 through 9 once).

The programs for A069012, there is no canonical definition to state claims against.
-/

/-! ## A069012.P12706892777086274645

`A115927(n+2)`
-/

namespace A069012.P12706892777086274645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115927 (n + 2)

end

end A069012.P12706892777086274645

/-!
# A069013: a(1)=a(2)=a(3)=1; for n > 3, a(n) = floor(a(n-3) + a(n-2)/a(n-1)).

The programs for A069013, the canonical program `A069013.P18420793574240102776` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069013 has offset 1).

The definition of A069013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-3)+a(n-2)/a(n-1))` (program `A069013.P18420793574240102776`, by `A069013.P18420793574240102776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069013.P18420793574240102776

`floor(a(n-3)+a(n-2)/a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069013

/-- `floor(a(n-3)+a(n-2)/a(n-1))` -/
def P18420793574240102776.Spec : Prop :=
  ∀ n, P18420793574240102776.a n = A069013 (n + 1)

theorem P18420793574240102776.correct : P18420793574240102776.Spec := by
  intro n
  simp only [A069013, Nat.add_sub_cancel]

end A069013

/-! ## A069013.P15194891357809958587

`A065033(n-A341793(5*n+1))`
-/

namespace A069013.P15194891357809958587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n : ℤ) - A341793 (5 * n + 1 + 10)).toNat

end

end A069013.P15194891357809958587

namespace A069013

/-- `A065033(n-A341793(5*n+1))` -/
def P15194891357809958587.Spec : Prop :=
  ∀ n, P15194891357809958587.a n = A069013 (n + 1)

end A069013

/-! ## A069013.P2765715196860164971

`∑{d}[A055745(n+1), A003849(A283988(#+1))]`
-/

namespace A069013.P2765715196860164971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003849 (A283988 (d + 1)).toNat

end

end A069013.P2765715196860164971

namespace A069013

/-- `∑{d}[A055745(n+1), A003849(A283988(#+1))]` -/
def P2765715196860164971.Spec : Prop :=
  ∀ n, P2765715196860164971.a n = A069013 (n + 1)

end A069013

/-! ## A069013.P12588454716897049701

`A087061(A087092(n+1)-ceil(sin(n)²))`
-/

namespace A069013.P12588454716897049701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A087092 (n + 1) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A069013.P12588454716897049701

namespace A069013

/-- `A087061(A087092(n+1)-ceil(sin(n)²))` -/
def P12588454716897049701.Spec : Prop :=
  ∀ n, P12588454716897049701.a n = A069013 (n + 1)

end A069013

/-! ## A069013.P2675041105001512741

`A365721(A000837(n)*A364967(n))`
-/

namespace A069013.P2675041105001512741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365721 (A000837 n * A364967 n).toNat

end

end A069013.P2675041105001512741

namespace A069013

/-- `A365721(A000837(n)*A364967(n))` -/
def P2675041105001512741.Spec : Prop :=
  ∀ n, P2675041105001512741.a n = A069013 (n + 1)

end A069013

/-!
# A069015: a(n) = n! * 3^n * Sum_{i=1..n} 1/(i * 3^i).

The programs for A069015, the canonical program `A069015.P4072279234093123866` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069015 has offset 1).

The definition of A069015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069015.P4072279234093123866

`3*(n+1)*a(n-1)+n!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069015

/-- `3*(n+1)*a(n-1)+n!` -/
def P4072279234093123866.Spec : Prop :=
  ∀ n, (P4072279234093123866.a n : ℤ) = A069015 (n + 1)

theorem P4072279234093123866.correct : P4072279234093123866.Spec := by
  intro n
  simp only [A069015, Nat.add_sub_cancel]

end A069015

/-! ## A069015.P13971721243882840515

`(4*(n+1)-1)*a(n-1)-3*n²*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A069015.P13971721243882840515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ((4 * (n + 1) : ℤ) - 1) * a (n - 1) - (3 * n ^ 2 : ℤ) * a (n - 2)

end

end A069015.P13971721243882840515

namespace A069015

/-- `(4*(n+1)-1)*a(n-1)-3*n²*a(n-2)` -/
def P13971721243882840515.Spec : Prop :=
  ∀ n, P13971721243882840515.a n = A069015 (n + 1)

end A069015

/-! ## A069015.P13925067415751508404

`A000142(n)+3*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A069015.P13925067415751508404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000142 n + 3 * ((n + 1 : ℤ) * a (n - 1))

end

end A069015.P13925067415751508404

namespace A069015

/-- `A000142(n)+3*(n+1)*a(n-1)` -/
def P13925067415751508404.Spec : Prop :=
  ∀ n, P13925067415751508404.a n = A069015 (n + 1)

end A069015

/-!
# A069016: Look at all the different ways to factorize n as a product of numbers bigger than 1, and for each factorization write down the sum of the factors; a(n) = number of different sums.

The programs for A069016, there is no canonical definition to state claims against.
-/

/-! ## A069016.P18370262596129325624

`A004526(A370814(2*(n+1))+A178225(n))`
-/

namespace A069016.P18370262596129325624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A370814 (2 * (n + 1)) + A178225 n).toNat

end

end A069016.P18370262596129325624

/-! ## A069016.P13441097741943208784

`A033273(n+1)-A079979(A075427(n))`
-/

namespace A069016.P13441097741943208784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A079979 (A075427 n).toNat

end

end A069016.P13441097741943208784

/-! ## A069016.P898517193202477815

`A260254(A375624(n+1)%A375598(2*n+1))`
-/

namespace A069016.P898517193202477815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 (Int.tmod (A375624 (n + 1)) (A375598 (2 * n + 1))).toNat

end

end A069016.P898517193202477815

/-! ## A069016.P5485838192674411995

`A034836(n+1)-A000035(A036487(n))`
-/

namespace A069016.P5485838192674411995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A000035 (A036487 n).toNat

end

end A069016.P5485838192674411995

/-! ## A069016.P13285274478231284629

`A328958(n+1)+A070824(n+1)-A000035(A345118(3*n+1))`
-/

namespace A069016.P13285274478231284629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (n + 1) + A070824 (n + 1) - A000035 (A345118 (3 * n + 1)).toNat

end

end A069016.P13285274478231284629

/-!
# A069017: Triangular numbers of the form k^2 + k + 1.

The programs for A069017, the canonical program `A069017.P17525612143297999373` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069017 has offset 1).

The definition of A069017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069017.P17525612143297999373

`2*A124174(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069017

/-- `2*A124174(n+1)+1` -/
def P17525612143297999373.Spec : Prop :=
  ∀ n, P17525612143297999373.a n = A069017 (n + 1)

theorem P17525612143297999373.correct : P17525612143297999373.Spec := by
  intro n
  simp only [A069017, Nat.add_sub_cancel]

end A069017

/-! ## A069017.P11998407371344700661

`ceil((A077442(n)/2)²)`
-/

namespace A069017.P11998407371344700661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A077442 n : ℚ) / 2) ^ 2⌉

end

end A069017.P11998407371344700661

namespace A069017

/-- `ceil((A077442(n)/2)²)` -/
def P11998407371344700661.Spec : Prop :=
  ∀ n, P11998407371344700661.a n = A069017 (n + 1)

end A069017

/-! ## A069017.P10240264835821239585

`2*A217278(2*n)+1`
-/

namespace A069017.P10240264835821239585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217278 (2 * n) + 1

end

end A069017.P10240264835821239585

namespace A069017

/-- `2*A217278(2*n)+1` -/
def P10240264835821239585.Spec : Prop :=
  ∀ n, P10240264835821239585.a n = A069017 (n + 1)

end A069017

/-! ## A069017.P17855897810822966229

`∑[A079496(n)]+A216134(n)²`
-/

namespace A069017.P17855897810822966229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A216134 n ^ 2

end

end A069017.P17855897810822966229

namespace A069017

/-- `∑[A079496(n)]+A216134(n)²` -/
def P17855897810822966229.Spec : Prop :=
  ∀ n, P17855897810822966229.a n = A069017 (n + 1)

end A069017

/-! ## A069017.P768866262825123422

`A006452(n+2)*A006452(n)-1`
-/

namespace A069017.P768866262825123422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 2) * A006452 n - 1

end

end A069017.P768866262825123422

namespace A069017

/-- `A006452(n+2)*A006452(n)-1` -/
def P768866262825123422.Spec : Prop :=
  ∀ n, P768866262825123422.a n = A069017 (n + 1)

end A069017

/-! ## A069017.P3057277232622064951

`A216162(2*(n+2))*A216162(2*n)-1`
-/

namespace A069017.P3057277232622064951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * (n + 2)) * A216162 (2 * n) - 1

end

end A069017.P3057277232622064951

namespace A069017

/-- `A216162(2*(n+2))*A216162(2*n)-1` -/
def P3057277232622064951.Spec : Prop :=
  ∀ n, P3057277232622064951.a n = A069017 (n + 1)

end A069017

/-! ## A069017.P17404654157299798667

`A077442(n)+A216134(n)²-A216134(n)`
-/

namespace A069017.P17404654157299798667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n + (A216134 n ^ 2 - A216134 n)

end

end A069017.P17404654157299798667

namespace A069017

/-- `A077442(n)+A216134(n)²-A216134(n)` -/
def P17404654157299798667.Spec : Prop :=
  ∀ n, P17404654157299798667.a n = A069017 (n + 1)

end A069017

/-! ## A069017.P8009894328257523262

`C(∑[A143608(n)]+2, 2)`
-/

namespace A069017.P8009894328257523262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat 2

end

end A069017.P8009894328257523262

namespace A069017

/-- `C(∑[A143608(n)]+2, 2)` -/
def P8009894328257523262.Spec : Prop :=
  ∀ n, (P8009894328257523262.a n : ℤ) = A069017 (n + 1)

end A069017

/-! ## A069017.P15693270178823758890

`(A124124(n+1)+A124124(n+1)²)/2`
-/

namespace A069017.P15693270178823758890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124124 (n + 1) + A124124 (n + 1) ^ 2 : ℚ) / 2

end

end A069017.P15693270178823758890

namespace A069017

/-- `(A124124(n+1)+A124124(n+1)²)/2` -/
def P15693270178823758890.Spec : Prop :=
  ∀ n, P15693270178823758890.a n = (A069017 (n + 1) : ℚ)

end A069017

/-!
# A069018: Smallest square k > 0 such that n*k + 1 is also a square or 0 if no such term exists, i.e., when n is a square.

The programs for A069018, there is no canonical definition to state claims against.
-/

/-! ## A069018.P3608168086879036148

`A002349(n+1)²`
-/

namespace A069018.P3608168086879036148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (n + 1) ^ 2

end

end A069018.P3608168086879036148

/-! ## A069018.P16093659830425106156

`(A002350(n+1)²-1)/(n+1)`
-/

namespace A069018.P16093659830425106156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002350 (n + 1) ^ 2 - 1 : ℚ) / (n + 1 : ℚ)

end

end A069018.P16093659830425106156

/-! ## A069018.P3523629052250281363

`A002349((n+1)^2/(n+1))^2`
-/

namespace A069018.P3523629052250281363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A069018.P3523629052250281363

/-! ## A069018.P9856908855093188408

`(-A002349(n+1))^dr(A001538(n))`
-/

namespace A069018.P9856908855093188408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A002349 (n + 1)) ^ SequenceMachineLib.digitalRoot (A001538 n)

end

end A069018.P9856908855093188408

/-! ## A069018.P4946521337913309520

`A002349(n-log2(1/2))*A002349(n+1)`
-/

namespace A069018.P4946521337913309520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat * A002349 (n + 1)

end

end A069018.P4946521337913309520

/-! ## A069018.P17957125330238084018

`A002349(n+1)*A057427(n)*A002349(n+1)`
-/

namespace A069018.P17957125330238084018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (n + 1) * A057427 n * A002349 (n + 1)

end

end A069018.P17957125330238084018

/-! ## A069018.P6662828498382612190

`A002349(n+1)*A049240(n+1)*A002349(n+1)`
-/

namespace A069018.P6662828498382612190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (n + 1) * A049240 (n + 1) * A002349 (n + 1)

end

end A069018.P6662828498382612190

/-! ## A069018.P207449249899564414

`A000290(A002349(-xor(n, -1)))`
-/

namespace A069018.P207449249899564414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002349 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A069018.P207449249899564414

/-! ## A069018.P17405426407785522009

`A000290(A002349(n+1)+and(2, A000290(n)))`
-/

namespace A069018.P17405426407785522009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002349 (n + 1) + Int.land 2 (A000290 n)).toNat

end

end A069018.P17405426407785522009

/-! ## A069018.P1725097663798762370

`A000290(2*A002349(n+1)-A002349(n+1))`
-/

namespace A069018.P1725097663798762370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A002349 (n + 1) - A002349 (n + 1)).toNat

end

end A069018.P1725097663798762370

/-!
# A069019: Smallest square k > 1 such that n*k + 1 is also a square or 0 if no such term exists, i.e., when n is a square.

The programs for A069019, there is no canonical definition to state claims against.
-/

/-! ## A069019.P2651879571483046510

`A069018(A000122(n+2)+n+1)`
-/

namespace A069019.P2651879571483046510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069018 (A000122 (n + 2) + (n + 1 : ℤ)).toNat

end

end A069019.P2651879571483046510

/-! ## A069019.P6981424002907900908

`A327898(n+1)^A006530(A151821(n+5))`
-/

namespace A069019.P6981424002907900908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327898 (n + 1) : ℚ) ^ (A006530 (A151821 (n + 5)).toNat : ℤ)

end

end A069019.P6981424002907900908

/-! ## A069019.P15619825811514947800

`A327898(n+1)^A000122(A002349(n+1)²)`
-/

namespace A069019.P15619825811514947800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327898 (n + 1) : ℚ) ^ (A000122 (A002349 (n + 1) ^ 2).toNat : ℤ)

end

end A069019.P15619825811514947800

/-! ## A069019.P6154327873624323394

`A327898(n+1)^A000122((A002350(n+1)²-1)/(n+1))`
-/

namespace A069019.P6154327873624323394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327898 (n + 1) : ℚ) ^ (A000122 (SequenceMachineLib.roundAway ((A002350 (n + 1) ^ 2 - 1 : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A069019.P6154327873624323394

/-!
# A069020: a(1) = 1; a(n) = smallest number of the form k*a(n-1) +1 divisible by n^2.

The programs for A069020, there is no canonical definition to state claims against.
-/

/-! ## A069020.P8471015835467798606

`(n+1)²*A159072(a(n-1))` with `a(0)=1`
-/

namespace A069020.P8471015835467798606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℤ) * A159072 (a (n - 1)).toNat

end

end A069020.P8471015835467798606

/-!
# A069021: Start of the first occurrence of n consecutive numbers divisible by a square greater than 1.

The programs for A069021, there is no canonical definition to state claims against.
-/

/-! ## A069021.P8798788685160001182

`gcd(floor(acot(n)), A045882(n+1))`
-/

namespace A069021.P8798788685160001182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A045882 (n + 1))

end

end A069021.P8798788685160001182

/-! ## A069021.P16771654333479501493

`A045882(n+1)^A178334(n)`
-/

namespace A069021.P16771654333479501493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045882 (n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A069021.P16771654333479501493

/-! ## A069021.P10959666588918357767

`A045882(n+1)/A054977(n)²`
-/

namespace A069021.P10959666588918357767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045882 (n + 1) : ℚ) / (A054977 n ^ 2 : ℚ)

end

end A069021.P10959666588918357767

/-! ## A069021.P3458885419377238248

`A045882(n+1)^A000045(∑{p}[n+1, gcd(n, #)])`
-/

namespace A069021.P3458885419377238248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045882 (n + 1) : ℚ) ^ (A000045 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℤ)

end

end A069021.P3458885419377238248

/-! ## A069021.P5270764527783387421

`A045882(n+1)^A000045(∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A069021.P5270764527783387421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045882 (n + 1) : ℚ) ^ (A000045 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat : ℤ)

end

end A069021.P5270764527783387421

/-!
# A069022: Start of the first occurrence of two consecutive numbers divisible by an n-th power.

The programs for A069022, there is no canonical definition to state claims against.
-/

/-! ## A069022.P10742652325672956871

`A063528(n+1)-floor(acot(n))`
-/

namespace A069022.P10742652325672956871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063528 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A069022.P10742652325672956871

/-! ## A069022.P15623930821643232617

`A063528(n+1)-A000007(n)`
-/

namespace A069022.P15623930821643232617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063528 (n + 1) - A000007 n

end

end A069022.P15623930821643232617

/-! ## A069022.P6459626819388079744

`A063528(n+1)/A054977(n)`
-/

namespace A069022.P6459626819388079744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063528 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A069022.P6459626819388079744

/-! ## A069022.P14985558030893841490

`A063528(n+1)^(A060889(n)%(n+1))`
-/

namespace A069022.P14985558030893841490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063528 (n + 1) : ℚ) ^ (Int.tmod (A060889 n) (n + 1 : ℤ) : ℤ)

end

end A069022.P14985558030893841490

/-! ## A069022.P2829622584486991171

`A063528(n+1)-A019590(3^∑{e}[n+1, #])`
-/

namespace A069022.P2829622584486991171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063528 (n + 1) - A019590 (3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A069022.P2829622584486991171

/-! ## A069022.P18076643432752569875

`A063528(n+1)-A063524(A250120(n))`
-/

namespace A069022.P18076643432752569875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063528 (n + 1) - A063524 (A250120 n).toNat

end

end A069022.P18076643432752569875

/-! ## A069022.P1318568269924460463

`A121373(A191018(n+1))+A063528(n+1)`
-/

namespace A069022.P1318568269924460463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A191018 (n + 1)).toNat + A063528 (n + 1)

end

end A069022.P1318568269924460463

/-! ## A069022.P13467523595016477747

`A063528(n+1)^A048993(A000124(n))`
-/

namespace A069022.P13467523595016477747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063528 (n + 1) : ℚ) ^ (A048993 (A000124 n).toNat : ℤ)

end

end A069022.P13467523595016477747

/-! ## A069022.P15724823555975892739

`A063528(n+1)-A063524(A084193(n))`
-/

namespace A069022.P15724823555975892739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063528 (n + 1) - A063524 (A084193 n).toNat

end

end A069022.P15724823555975892739

/-!
# A069023: Define a subset of divisors of n to be a dedicated subset if the product of any two members is also a divisor of n. 1 is not allowed as a member as it gives trivially 1*d = d a divisor. a(n) is the number of dedicated subsets of divisors of n with at least two members.

The programs for A069023, there is no canonical definition to state claims against.
-/

/-! ## A069023.P6299880416905491213

`A225639(4*A295279(n+1))`
-/

namespace A069023.P6299880416905491213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 (4 * A295279 (n + 1)).toNat

end

end A069023.P6299880416905491213

/-! ## A069023.P2266201001149876929

`A316784(n+1)-A208879(A316784(2*(n+1)))²`
-/

namespace A069023.P2266201001149876929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (n + 1) - A208879 (A316784 (2 * (n + 1))).toNat ^ 2

end

end A069023.P2266201001149876929

/-! ## A069023.P12588939457511621912

`A295279(n+1)-A319137(A000045(A001055(n+1)))`
-/

namespace A069023.P12588939457511621912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295279 (n + 1) - A319137 (A000045 (A001055 (n + 1)).toNat).toNat

end

end A069023.P12588939457511621912

/-! ## A069023.P6667738883351353203

`A342013(n+2)%A316784(n+1)`
-/

namespace A069023.P6667738883351353203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342013 (n + 2)) (A316784 (n + 1))

end

end A069023.P6667738883351353203

/-! ## A069023.P13268390680188918036

`A340713(n+1)%A316784(n+1)`
-/

namespace A069023.P13268390680188918036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340713 (n + 1)) (A316784 (n + 1))

end

end A069023.P13268390680188918036

/-!
# A069024: Numbers that are palindromic in base 2 as well as in base 10 (initial zeros may be prepended).

The programs for A069024, there is no canonical definition to state claims against.
-/

/-! ## A069024.P184970225182712301

`∩[A057890(n+1), A061917(n+1)]`
-/

namespace A069024.P184970225182712301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069024.P184970225182712301

/-! ## A069024.P12189110504064081149

`eq[A057889(n), A062279(n)]`
-/

namespace A069024.P12189110504064081149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069024.P12189110504064081149

/-! ## A069024.P11273081274525489659

`eq[A062279(n), A366389(n)]`
-/

namespace A069024.P11273081274525489659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069024.P11273081274525489659

/-! ## A069024.P12598030103200465012

`eq[n, A321474(A326302(n))]`
-/

namespace A069024.P12598030103200465012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A326302 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069024.P12598030103200465012

/-! ## A069024.P11264102827166798116

`eq[A034557(n+1), A035930(n)]`
-/

namespace A069024.P11264102827166798116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069024.P11264102827166798116

/-!
# A069025: Smallest power of 2 with digital sum (A007953) n, or 0 if no such number exists.

The programs for A069025, there is no canonical definition to state claims against.
-/

/-! ## A069025.P4183260570436906579

`A319690(A293011(n+1))`
-/

namespace A069025.P4183260570436906579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319690 (A293011 (n + 1)).toNat

end

end A069025.P4183260570436906579

/-! ## A069025.P16436719088264734056

`A135416(∑{d}[A293011(n+1), #])`
-/

namespace A069025.P16436719088264734056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A069025.P16436719088264734056

/-! ## A069025.P10965645145802913416

`A135416(2*A293011(n+1)-1)`
-/

namespace A069025.P10965645145802913416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (2 * A293011 (n + 1) - 1).toNat

end

end A069025.P10965645145802913416

/-! ## A069025.P8507579772594161801

`A000035(A022389(n))*A293011(n+1)`
-/

namespace A069025.P8507579772594161801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022389 n).toNat * A293011 (n + 1)

end

end A069025.P8507579772594161801

/-! ## A069025.P5240835159935970310

`A079978(A024495(n))*A293011(n+1)`
-/

namespace A069025.P5240835159935970310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A024495 n).toNat * A293011 (n + 1)

end

end A069025.P5240835159935970310

/-!
# A069026: Smallest power of 4 with digit sum n, or 0 if no such number exists.

The programs for A069026, there is no canonical definition to state claims against.
-/

/-! ## A069026.P7630268271666635422

`A069025(A092200(n))`
-/

namespace A069026.P7630268271666635422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069025 (A092200 n).toNat

end

end A069026.P7630268271666635422

/-! ## A069026.P11126261596416447834

`A069025(A130481(n+1))`
-/

namespace A069026.P11126261596416447834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069025 (A130481 (n + 1)).toNat

end

end A069026.P11126261596416447834

/-! ## A069026.P1934536754174292649

`A057078(n)*A069025(n+1)`
-/

namespace A069026.P1934536754174292649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A069025 (n + 1)

end

end A069026.P1934536754174292649

/-! ## A069026.P9121910478991334201

`A060398(n)*A069025(n+1)`
-/

namespace A069026.P9121910478991334201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 n * A069025 (n + 1)

end

end A069026.P9121910478991334201

/-! ## A069026.P6478663876809223212

`A069025(n+1)*A079978(n)`
-/

namespace A069026.P6478663876809223212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069025 (n + 1) * A079978 n

end

end A069026.P6478663876809223212

/-! ## A069026.P14025112637666668622

`A069025(n+1)*A204418(n)`
-/

namespace A069026.P14025112637666668622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069025 (n + 1) * A204418 n

end

end A069026.P14025112637666668622

/-! ## A069026.P4451973458204323175

`and(A069025(n+1), A128214(n))`
-/

namespace A069026.P4451973458204323175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069025 (n + 1)) (A128214 n)

end

end A069026.P4451973458204323175

/-! ## A069026.P14343345514135844359

`and(A069025(n+1), A239286(n))`
-/

namespace A069026.P14343345514135844359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069025 (n + 1)) (A239286 n)

end

end A069026.P14343345514135844359

/-! ## A069026.P7852548699762584679

`and(A069025(n+1), A357124(n))`
-/

namespace A069026.P7852548699762584679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069025 (n + 1)) (A357124 n)

end

end A069026.P7852548699762584679

/-! ## A069026.P15514751612629187021

`A069025(n+1)*A137893(n+1)`
-/

namespace A069026.P15514751612629187021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069025 (n + 1) * A137893 (n + 1)

end

end A069026.P15514751612629187021

/-! ## A069026.P14022816509309092295

`A069025(n+1)*A141212(n+1)`
-/

namespace A069026.P14022816509309092295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069025 (n + 1) * A141212 (n + 1)

end

end A069026.P14022816509309092295

/-! ## A069026.P5066223830412143644

`and(A065675(n+1), A069025(n+1))`
-/

namespace A069026.P5066223830412143644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065675 (n + 1)) (A069025 (n + 1))

end

end A069026.P5066223830412143644

/-! ## A069026.P5173528737736647746

`A069025(A204418(n)+n)-a(n-1)` with `a(0)=1`
-/

namespace A069026.P5173528737736647746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069025 (A204418 n + (n : ℤ)).toNat - a (n - 1)

end

end A069026.P5173528737736647746

/-! ## A069026.P17416838788538807278

`∑{p}[A047789(n+1), A069025(A137893(#+1)+n)]`
-/

namespace A069026.P17416838788538807278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069025 (A137893 (p + 1) + (n : ℤ)).toNat

end

end A069026.P17416838788538807278

/-! ## A069026.P4784967554827517270

`and(A052992(n), A069025(n+1))`
-/

namespace A069026.P4784967554827517270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052992 n) (A069025 (n + 1))

end

end A069026.P4784967554827517270

/-! ## A069026.P13420627241903712770

`and(A069025(n+1), A151575(n))`
-/

namespace A069026.P13420627241903712770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069025 (n + 1)) (A151575 n)

end

end A069026.P13420627241903712770

/-! ## A069026.P7478420106274217701

`and(A069025(n+1), A284140(n))`
-/

namespace A069026.P7478420106274217701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069025 (n + 1)) (A284140 n)

end

end A069026.P7478420106274217701

/-! ## A069026.P10539197080376645193

`and(A069025(n+1), A272743(n))`
-/

namespace A069026.P10539197080376645193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069025 (n + 1)) (A272743 n)

end

end A069026.P10539197080376645193

/-! ## A069026.P3723211137424860400

`and(A069025(n+1), A387843(n))`
-/

namespace A069026.P3723211137424860400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069025 (n + 1)) (A387843 n)

end

end A069026.P3723211137424860400

/-! ## A069026.P8273684816869485084

`and(A069025(n+1), A072197(n))`
-/

namespace A069026.P8273684816869485084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069025 (n + 1)) (A072197 n)

end

end A069026.P8273684816869485084

/-!
# A069027: Powers of 2 with strictly increasing sum of digits.

The programs for A069027, there is no canonical definition to state claims against.
-/

/-! ## A069027.P2794277557721356395

`A293011(record[∑{digits}[2^n, #]])`
-/

namespace A069027.P2794277557721356395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A069027.P2794277557721356395

/-! ## A069027.P7111478637641302085

`A293011(record[A001370(n)])`
-/

namespace A069027.P7111478637641302085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069027.P7111478637641302085

/-! ## A069027.P9928176491631990254

`record[and(2^n, A110437(n+1))]`
-/

namespace A069027.P9928176491631990254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 ^ n : ℤ) (A110437 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069027.P9928176491631990254

/-! ## A069027.P6997984534199150208

`A357531(∏[A357531(2*n+1)])`
-/

namespace A069027.P6997984534199150208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357531 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357531 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069027.P6997984534199150208

/-! ## A069027.P6338470166475644601

`A000079(lt[A053149(n+1), A260522(2*(n+1))])`
-/

namespace A069027.P6338470166475644601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260522 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069027.P6338470166475644601

/-!
# A069028: Powers of 3 with strictly increasing sum of digits.

The programs for A069028, there is no canonical definition to state claims against.
-/

/-! ## A069028.P5227177838059623123

`A057238(A023147(n+1))`
-/

namespace A069028.P5227177838059623123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057238 (A023147 (n + 1)).toNat

end

end A069028.P5227177838059623123

/-! ## A069028.P9252308261011302671

`∏[A048883(Δ[A069725(n+1)])]`
-/

namespace A069028.P9252308261011302671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069725 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069028.P9252308261011302671

/-!
# A069029: Powers of 4 with strictly increasing sum of digits.

The programs for A069029, there is no canonical definition to state claims against.
-/

/-! ## A069029.P2715397179890305401

`A069026(record[A065713(n)])`
-/

namespace A069029.P2715397179890305401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069029.P2715397179890305401

/-! ## A069029.P661777139279424238

`A069026(record[A001370(2*n)])`
-/

namespace A069029.P661777139279424238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069026 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069029.P661777139279424238

/-! ## A069029.P8164908477573416569

`A293011(record[A001370(2*n)])`
-/

namespace A069029.P8164908477573416569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069029.P8164908477573416569

/-! ## A069029.P8249928993657306086

`A293011(record[∑{digits}[A028910(2*n), #]])`
-/

namespace A069029.P8249928993657306086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028910 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A069029.P8249928993657306086

/-! ## A069029.P16964392975840283900

`record[A135513(n+4)^A055460(n+1)]`
-/

namespace A069029.P16964392975840283900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135513 (n + 4) : ℚ) ^ (A055460 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069029.P16964392975840283900

/-!
# A069030: Powers of 5 with strictly increasing sum of digits.

The programs for A069030, there is no canonical definition to state claims against.
-/

/-! ## A069030.P7247864345473118799

`A256693(A238938(n+1))`
-/

namespace A069030.P7247864345473118799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256693 (A238938 (n + 1)).toNat

end

end A069030.P7247864345473118799

/-! ## A069030.P1463599851671799080

`5^lt[A160162(n), A160731(3*(n+1))]`
-/

namespace A069030.P1463599851671799080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160731 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069030.P1463599851671799080

/-! ## A069030.P13791640232460968481

`A000351(lt[A339166(n), A321455(n+1)])`
-/

namespace A069030.P13791640232460968481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069030.P13791640232460968481

/-! ## A069030.P18318999621036362494

`A000351(lt[A246655(n+1), A087021(n+1)])`
-/

namespace A069030.P18318999621036362494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069030.P18318999621036362494

/-! ## A069030.P1510278027206512544

`5^A325678(n²)`
-/

namespace A069030.P1510278027206512544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A325678 (n ^ 2) : ℤ)

end

end A069030.P1510278027206512544

/-!
# A069031: Powers of 6 with strictly increasing sum of digits.

The programs for A069031, there is no canonical definition to state claims against.
-/

/-! ## A069031.P12978375045865761705

`A000400(eq[A124010(n+1), A326180(n)])`
-/

namespace A069031.P12978375045865761705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069031.P12978375045865761705

/-! ## A069031.P11894144320158604810

`6^A196050(A061417(n+1))`
-/

namespace A069031.P11894144320158604810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A196050 (A061417 (n + 1)).toNat : ℤ)

end

end A069031.P11894144320158604810

/-! ## A069031.P1541199711484666724

`∏[A165827(record[A218579(n+1)])]`
-/

namespace A069031.P1541199711484666724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069031.P1541199711484666724

/-! ## A069031.P788470413835823928

`6^∑[A001222(A244927(n+1))]`
-/

namespace A069031.P788470413835823928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A244927 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A069031.P788470413835823928

/-!
# A069032: Powers of 7 with strictly increasing sum of digits.

The programs for A069032, there is no canonical definition to state claims against.
-/

/-! ## A069032.P6248487245287230909

`7^lt[A089568(2*n+5), A089570(3*(n+1))]`
-/

namespace A069032.P6248487245287230909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089568 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089570 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069032.P6248487245287230909

/-! ## A069032.P13270485738822091586

`7^lt[A033707(n+1), 5]`
-/

namespace A069032.P13270485738822091586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033707 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A069032.P13270485738822091586

/-! ## A069032.P7349517996122209749

`7^A029837(A332626(n))`
-/

namespace A069032.P7349517996122209749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A029837 (A332626 n).toNat : ℤ)

end

end A069032.P7349517996122209749

/-! ## A069032.P18124645419208954136

`record[7^A218867(A243583(n+1))]`
-/

namespace A069032.P18124645419208954136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A218867 (A243583 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069032.P18124645419208954136

/-!
# A069033: Powers of 8 with strictly increasing sum of digits.

The programs for A069033, there is no canonical definition to state claims against.
-/

/-! ## A069033.P15007509721255119956

`A293011(record[A066004(n)])`
-/

namespace A069033.P15007509721255119956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069033.P15007509721255119956

/-! ## A069033.P2075963874074796262

`8^lt[A105070(n+5), 9]`
-/

namespace A069033.P2075963874074796262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A069033.P2075963874074796262

/-! ## A069033.P2933596223091292505

`record[8^A325406(2*n+1)]`
-/

namespace A069033.P2933596223091292505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A325406 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069033.P2933596223091292505

/-! ## A069033.P17263658467695348802

`record[8^A001222(A264560(n+1))]`
-/

namespace A069033.P17263658467695348802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A001222 (A264560 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069033.P17263658467695348802

/-!
# A069034: Powers of 9 with strictly increasing sum of digits.

The programs for A069034, there is no canonical definition to state claims against.
-/

/-! ## A069034.P2186061267648402708

`A072404(A183160(n))²`
-/

namespace A069034.P2186061267648402708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072404 (A183160 n).toNat ^ 2

end

end A069034.P2186061267648402708

/-! ## A069034.P7670152577952763413

`A238939(A036035(n))²`
-/

namespace A069034.P7670152577952763413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238939 (A036035 n).toNat ^ 2

end

end A069034.P7670152577952763413

/-!
# A069036: Smallest multiple of 2 with digit sum 2^n.

The programs for A069036, there is no canonical definition to state claims against.
-/

/-! ## A069036.P13771020136043805011

`A069532(2^n)`
-/

namespace A069036.P13771020136043805011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069532 (2 ^ n)

end

end A069036.P13771020136043805011

/-! ## A069036.P5128004048473503276

`2*A077491(2^n)`
-/

namespace A069036.P5128004048473503276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077491 (2 ^ n)

end

end A069036.P5128004048473503276

/-! ## A069036.P17043478267165706888

`A205960(A000051(n))-1`
-/

namespace A069036.P17043478267165706888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205960 (A000051 n).toNat - 1

end

end A069036.P17043478267165706888

/-! ## A069036.P14055669321262602851

`lcm(2, A069532(A000079(n)))`
-/

namespace A069036.P14055669321262602851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A069532 (A000079 n).toNat)

end

end A069036.P14055669321262602851

/-! ## A069036.P1489207229498669712

`A069532(A000079(n))*A146615(n+1)`
-/

namespace A069036.P1489207229498669712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069532 (A000079 n).toNat * A146615 (n + 1)

end

end A069036.P1489207229498669712

/-!
# A069038: Expansion of g.f. x*(1+x)^4/(1-x)^6.

The programs for A069038, the canonical program `A069038.P11696173579921960810` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069038 has offset 0).

The definition of A069038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+4x^2+6x^3+4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A069038.P11696173579921960810`, by `A069038.P11696173579921960810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069038.P11696173579921960810

`ogf((x+4x^2+6x^3+4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069038

/-- `ogf((x+4x^2+6x^3+4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P11696173579921960810.Spec : Prop :=
  ∀ n, P11696173579921960810.a n = A069038 n

theorem P11696173579921960810.correct : P11696173579921960810.Spec := by
  intro n
  simp only [A069038]

end A069038

/-! ## A069038.P6017889105615713651

`n*(2*n^4+10*n²+3)/15`
-/

namespace A069038.P6017889105615713651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n ^ 4 + 10 * n ^ 2 + 3) : ℚ) / 15

end

end A069038.P6017889105615713651

namespace A069038

/-- `n*(2*n^4+10*n²+3)/15` -/
def P6017889105615713651.Spec : Prop :=
  ∀ n, P6017889105615713651.a n = (A069038 n : ℚ)

end A069038

/-! ## A069038.P8628929003570188247

`10*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A069038.P8628929003570188247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * a (n - 1) / ((n : ℤ) - 1 : ℚ) + a (n - 2)

end

end A069038.P8628929003570188247

namespace A069038

/-- `10*a(n-1)/(n-1)+a(n-2)` -/
def P8628929003570188247.Spec : Prop :=
  ∀ n, P8628929003570188247.a n = (A069038 n : ℚ)

end A069038

/-! ## A069038.P10199192467200808584

`a(n-1)+A014820(n-1)+A014820(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A069038.P10199192467200808584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A014820 (n - 1) + A014820 (n - 2)

end

end A069038.P10199192467200808584

namespace A069038

/-- `a(n-1)+A014820(n-1)+A014820(n-2)` -/
def P10199192467200808584.Spec : Prop :=
  ∀ n, P10199192467200808584.a n = A069038 n

end A069038

/-! ## A069038.P15368149728838852319

`A131176(n)+A082107(n)`
-/

namespace A069038.P15368149728838852319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131176 n + A082107 n

end

end A069038.P15368149728838852319

namespace A069038

/-- `A131176(n)+A082107(n)` -/
def P15368149728838852319.Spec : Prop :=
  ∀ n, P15368149728838852319.a n = A069038 n

end A069038

/-! ## A069038.P5127388382502637071

`A290360(n)-A006325(n)`
-/

namespace A069038.P5127388382502637071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290360 n - A006325 n

end

end A069038.P5127388382502637071

namespace A069038

/-- `A290360(n)-A006325(n)` -/
def P5127388382502637071.Spec : Prop :=
  ∀ n, P5127388382502637071.a n = A069038 n

end A069038

/-! ## A069038.P10248274879751104522

`∑[A001846(n)]-A001846(n)`
-/

namespace A069038.P10248274879751104522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001846 n

end

end A069038.P10248274879751104522

namespace A069038

/-- `∑[A001846(n)]-A001846(n)` -/
def P10248274879751104522.Spec : Prop :=
  ∀ n, P10248274879751104522.a n = A069038 n

end A069038

/-! ## A069038.P82826550483833507

`∑[A035599(n)]-A069039(n)`
-/

namespace A069038.P82826550483833507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069039 n

end

end A069038.P82826550483833507

namespace A069038

/-- `∑[A035599(n)]-A069039(n)` -/
def P82826550483833507.Spec : Prop :=
  ∀ n, P82826550483833507.a n = A069038 n

end A069038

/-! ## A069038.P5092754511592559725

`A001847(n)%∑[A001846(n)]`
-/

namespace A069038.P5092754511592559725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001847 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069038.P5092754511592559725

namespace A069038

/-- `A001847(n)%∑[A001846(n)]` -/
def P5092754511592559725.Spec : Prop :=
  ∀ n, P5092754511592559725.a n = A069038 n

end A069038

/-! ## A069038.P10699997176072749727

`∑[∑[A008412(n)]-A008412(n)]`
-/

namespace A069038.P10699997176072749727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069038.P10699997176072749727

namespace A069038

/-- `∑[∑[A008412(n)]-A008412(n)]` -/
def P10699997176072749727.Spec : Prop :=
  ∀ n, P10699997176072749727.a n = A069038 n

end A069038

/-! ## A069038.P2961478760160245994

`∑[A035598(n)]-A035598(n)/2`
-/

namespace A069038.P2961478760160245994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A035598 n : ℚ) / 2

end

end A069038.P2961478760160245994

namespace A069038

/-- `∑[A035598(n)]-A035598(n)/2` -/
def P2961478760160245994.Spec : Prop :=
  ∀ n, P2961478760160245994.a n = (A069038 n : ℚ)

end A069038

/-! ## A069038.P13999717842389937035

`A061927(n+1)+A061927(n)-A001846(n)`
-/

namespace A069038.P13999717842389937035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 (n + 1) + (A061927 n - A001846 n)

end

end A069038.P13999717842389937035

namespace A069038

/-- `A061927(n+1)+A061927(n)-A001846(n)` -/
def P13999717842389937035.Spec : Prop :=
  ∀ n, P13999717842389937035.a n = A069038 n

end A069038

/-! ## A069038.P584504499388880578

`A001847(n)-(A061927(n+1)+A061927(n))`
-/

namespace A069038.P584504499388880578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 n - (A061927 (n + 1) + A061927 n)

end

end A069038.P584504499388880578

namespace A069038

/-- `A001847(n)-(A061927(n+1)+A061927(n))` -/
def P584504499388880578.Spec : Prop :=
  ∀ n, P584504499388880578.a n = A069038 n

end A069038

/-! ## A069038.P10331287118511486234

`A014820(n)/A035598(n+1)*A035599(n)`
-/

namespace A069038.P10331287118511486234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014820 n : ℚ) / (A035598 (n + 1) : ℚ) * (A035599 n : ℚ)

end

end A069038.P10331287118511486234

namespace A069038

/-- `A014820(n)/A035598(n+1)*A035599(n)` -/
def P10331287118511486234.Spec : Prop :=
  ∀ n, P10331287118511486234.a n = (A069038 n : ℚ)

end A069038

/-! ## A069038.P3578892743524379278

`2*A277229(n)-A000217(n²)`
-/

namespace A069038.P3578892743524379278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277229 n - A000217 (n ^ 2)

end

end A069038.P3578892743524379278

namespace A069038

/-- `2*A277229(n)-A000217(n²)` -/
def P3578892743524379278.Spec : Prop :=
  ∀ n, P3578892743524379278.a n = A069038 n

end A069038

/-!
# A069039: Expansion of g.f. x*(1+x)^5/(1-x)^7.

The programs for A069039, the canonical program `A069039.P11719410095030268358` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069039 has offset 0).

The definition of A069039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+5x^2+10x^3+10x^4+5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A069039.P11719410095030268358`, by `A069039.P11719410095030268358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069039.P6968951840584162113

`12*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A069039.P6968951840584162113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  12 * a (n - 1) / ((n : ℤ) - 1 : ℚ) + a (n - 2)

end

end A069039.P6968951840584162113

namespace A069039

/-- `12*a(n-1)/(n-1)+a(n-2)` -/
def P6968951840584162113.Spec : Prop :=
  ∀ n, P6968951840584162113.a n = (A069039 n : ℚ)

end A069039

/-! ## A069039.P10980588422865588856

`n²*(2*n^4+20*n²+23)/45`
-/

namespace A069039.P10980588422865588856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (2 * n ^ 4 + 20 * n ^ 2 + 23) : ℚ) / 45

end

end A069039.P10980588422865588856

namespace A069039

/-- `n²*(2*n^4+20*n²+23)/45` -/
def P10980588422865588856.Spec : Prop :=
  ∀ n, P10980588422865588856.a n = (A069039 n : ℚ)

end A069039

/-! ## A069039.P11719410095030268358

`ogf((x+5x^2+10x^3+10x^4+5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069039

/-- `ogf((x+5x^2+10x^3+10x^4+5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P11719410095030268358.Spec : Prop :=
  ∀ n, P11719410095030268358.a n = A069039 n

theorem P11719410095030268358.correct : P11719410095030268358.Spec := by
  intro n
  simp only [A069039]

end A069039

/-! ## A069039.P414145206007832797

`∑[∑[∑[A287324(n)]]]`
-/

namespace A069039.P414145206007832797
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069039.P414145206007832797

namespace A069039

/-- `∑[∑[∑[A287324(n)]]]` -/
def P414145206007832797.Spec : Prop :=
  ∀ n, P414145206007832797.a n = A069039 n

end A069039

/-! ## A069039.P448436527076678367

`∑[A001847(n)]-A001847(n)`
-/

namespace A069039.P448436527076678367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001847 n

end

end A069039.P448436527076678367

namespace A069039

/-- `∑[A001847(n)]-A001847(n)` -/
def P448436527076678367.Spec : Prop :=
  ∀ n, P448436527076678367.a n = A069039 n

end A069039

/-! ## A069039.P3010435180093169270

`∑[A035599(n)]-A069038(n)`
-/

namespace A069039.P3010435180093169270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069038 n

end

end A069039.P3010435180093169270

namespace A069039

/-- `∑[A035599(n)]-A069038(n)` -/
def P3010435180093169270.Spec : Prop :=
  ∀ n, P3010435180093169270.a n = A069039 n

end A069039

/-! ## A069039.P6641363879725074621

`∑[A035600(n)]-A099193(n)`
-/

namespace A069039.P6641363879725074621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099193 n

end

end A069039.P6641363879725074621

namespace A069039

/-- `∑[A035600(n)]-A099193(n)` -/
def P6641363879725074621.Spec : Prop :=
  ∀ n, P6641363879725074621.a n = A069039 n

end A069039

/-! ## A069039.P2376000041629212623

`A001848(n)%∑[A001847(n)]`
-/

namespace A069039.P2376000041629212623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001848 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069039.P2376000041629212623

namespace A069039

/-- `A001848(n)%∑[A001847(n)]` -/
def P2376000041629212623.Spec : Prop :=
  ∀ n, P2376000041629212623.a n = A069039 n

end A069039

/-! ## A069039.P5373625884078988754

`∑[∑[A008413(n)]-A008413(n)]`
-/

namespace A069039.P5373625884078988754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069039.P5373625884078988754

namespace A069039

/-- `∑[∑[A008413(n)]-A008413(n)]` -/
def P5373625884078988754.Spec : Prop :=
  ∀ n, P5373625884078988754.a n = A069039 n

end A069039

/-! ## A069039.P13689992904841640402

`A191596(n+1)+A191596(n)-A008414(n+1)`
-/

namespace A069039.P13689992904841640402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191596 (n + 1) + (A191596 n - A008414 (n + 1))

end

end A069039.P13689992904841640402

namespace A069039

/-- `A191596(n+1)+A191596(n)-A008414(n+1)` -/
def P13689992904841640402.Spec : Prop :=
  ∀ n, P13689992904841640402.a n = A069039 n

end A069039

/-!
# A069040: Numbers k that divide the numerator of B(2k) (the Bernoulli numbers).

The programs for A069040, the canonical program `A069040.P6411977931848777307` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069040 has offset 1).

The definition of A069040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069040.P4301519891477722092

`∩[2*n+1, A229303(n+1)]`
-/

namespace A069040.P4301519891477722092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P4301519891477722092

namespace A069040

/-- `∩[2*n+1, A229303(n+1)]` -/
def P4301519891477722092.Spec : Prop :=
  ∀ n, (P4301519891477722092.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P6411977931848777307

`filter[A229303(n+1), A093719(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A069040

/-- `filter[A229303(n+1), A093719(#)]` -/
def P6411977931848777307.Spec : Prop :=
  ∀ n, P6411977931848777307.a n = A069040 (n + 1)

theorem P6411977931848777307.correct : P6411977931848777307.Spec := by
  intro n
  simp only [A069040, Nat.add_sub_cancel]

end A069040

/-! ## A069040.P15406455749382848973

`filter[A229303(n+1), A320106(#)]`
-/

namespace A069040.P15406455749382848973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A069040.P15406455749382848973

namespace A069040

/-- `filter[A229303(n+1), A320106(#)]` -/
def P15406455749382848973.Spec : Prop :=
  ∀ n, P15406455749382848973.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P7686983869642932381

`filter[A229303(n+1), A354354(#)]`
-/

namespace A069040.P7686983869642932381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A069040.P7686983869642932381

namespace A069040

/-- `filter[A229303(n+1), A354354(#)]` -/
def P7686983869642932381.Spec : Prop :=
  ∀ n, P7686983869642932381.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P7438456141474203879

`filter[A229303(n+1), A373156(#)]`
-/

namespace A069040.P7438456141474203879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A069040.P7438456141474203879

namespace A069040

/-- `filter[A229303(n+1), A373156(#)]` -/
def P7438456141474203879.Spec : Prop :=
  ∀ n, P7438456141474203879.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P9387202051186876126

`filter[A229303(n+1), A374134(#)]`
-/

namespace A069040.P9387202051186876126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A069040.P9387202051186876126

namespace A069040

/-- `filter[A229303(n+1), A374134(#)]` -/
def P9387202051186876126.Spec : Prop :=
  ∀ n, P9387202051186876126.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P4702629962416706531

`∩[A229303(n+1), A004273(n)]`
-/

namespace A069040.P4702629962416706531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P4702629962416706531

namespace A069040

/-- `∩[A229303(n+1), A004273(n)]` -/
def P4702629962416706531.Spec : Prop :=
  ∀ n, (P4702629962416706531.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P10647344401827756115

`∩[A229303(n+1), A060747(n)]`
-/

namespace A069040.P10647344401827756115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P10647344401827756115

namespace A069040

/-- `∩[A229303(n+1), A060747(n)]` -/
def P10647344401827756115.Spec : Prop :=
  ∀ n, (P10647344401827756115.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P18064613919486032989

`record[A171435(2*A229303(n+1))]`
-/

namespace A069040.P18064613919486032989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A229303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069040.P18064613919486032989

namespace A069040

/-- `record[A171435(2*A229303(n+1))]` -/
def P18064613919486032989.Spec : Prop :=
  ∀ n, P18064613919486032989.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P14355702780220291354

`∩[A229303(n+1), A007310(n+1)]`
-/

namespace A069040.P14355702780220291354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P14355702780220291354

namespace A069040

/-- `∩[A229303(n+1), A007310(n+1)]` -/
def P14355702780220291354.Spec : Prop :=
  ∀ n, (P14355702780220291354.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P16669602757913760598

`∩[A229303(n+1), A047266(n+1)]`
-/

namespace A069040.P16669602757913760598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P16669602757913760598

namespace A069040

/-- `∩[A229303(n+1), A047266(n+1)]` -/
def P16669602757913760598.Spec : Prop :=
  ∀ n, (P16669602757913760598.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P5773811950158495507

`∩[A229303(n+1), A064615(n+1)]`
-/

namespace A069040.P5773811950158495507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P5773811950158495507

namespace A069040

/-- `∩[A229303(n+1), A064615(n+1)]` -/
def P5773811950158495507.Spec : Prop :=
  ∀ n, (P5773811950158495507.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P14451650447852539334

`∩[A229303(n+1), A084820(n+1)]`
-/

namespace A069040.P14451650447852539334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P14451650447852539334

namespace A069040

/-- `∩[A229303(n+1), A084820(n+1)]` -/
def P14451650447852539334.Spec : Prop :=
  ∀ n, (P14451650447852539334.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P3431578009581047840

`∩[A229303(n+1), A089684(n+1)]`
-/

namespace A069040.P3431578009581047840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P3431578009581047840

namespace A069040

/-- `∩[A229303(n+1), A089684(n+1)]` -/
def P3431578009581047840.Spec : Prop :=
  ∀ n, (P3431578009581047840.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P5912860890933597530

`record[A171435(A226872(n+1))]`
-/

namespace A069040.P5912860890933597530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A226872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069040.P5912860890933597530

namespace A069040

/-- `record[A171435(A226872(n+1))]` -/
def P5912860890933597530.Spec : Prop :=
  ∀ n, P5912860890933597530.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P2411365030637711612

`∩[A229303(n+1), A047273(n+1)]`
-/

namespace A069040.P2411365030637711612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069040.P2411365030637711612

namespace A069040

/-- `∩[A229303(n+1), A047273(n+1)]` -/
def P2411365030637711612.Spec : Prop :=
  ∀ n, (P2411365030637711612.a n : ℤ) = A069040 (n + 1)

end A069040

/-! ## A069040.P3705956698744576896

`record[A300711(n+1)]`
-/

namespace A069040.P3705956698744576896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069040.P3705956698744576896

namespace A069040

/-- `record[A300711(n+1)]` -/
def P3705956698744576896.Spec : Prop :=
  ∀ n, P3705956698744576896.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P15067003072607733240

`filter[A229303(n+1), A000035(#)]`
-/

namespace A069040.P15067003072607733240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A069040.P15067003072607733240

namespace A069040

/-- `filter[A229303(n+1), A000035(#)]` -/
def P15067003072607733240.Spec : Prop :=
  ∀ n, P15067003072607733240.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P4842363459581501799

`filter[A229303(n+1), A260390(#)]`
-/

namespace A069040.P4842363459581501799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A069040.P4842363459581501799

namespace A069040

/-- `filter[A229303(n+1), A260390(#)]` -/
def P4842363459581501799.Spec : Prop :=
  ∀ n, P4842363459581501799.a n = A069040 (n + 1)

end A069040

/-! ## A069040.P2211888926219127622

`eq[1, gcd(n, A051717(2*n+1))]`
-/

namespace A069040.P2211888926219127622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A051717 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069040.P2211888926219127622

namespace A069040

/-- `eq[1, gcd(n, A051717(2*n+1))]` -/
def P2211888926219127622.Spec : Prop :=
  ∀ n, (P2211888926219127622.a n : ℤ) = A069040 (n + 1)

end A069040

/-!
# A069041: Fibonacci numbers with at most two distinct digits.

The programs for A069041, there is no canonical definition to state claims against.
-/

/-! ## A069041.P2783562867357887266

`A000045(7*char[14]+n+1)`
-/

namespace A069041.P2783562867357887266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (7 * (if ∃ j, f1 j = n then 1 else 0) + (n + 1))

end

end A069041.P2783562867357887266

/-! ## A069041.P1317116366547071178

`A123231(A033039(n+1))`
-/

namespace A069041.P1317116366547071178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A033039 (n + 1)).toNat

end

end A069041.P1317116366547071178

/-! ## A069041.P3306616386945553130

`A177247(A072088(n+1))`
-/

namespace A069041.P3306616386945553130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177247 (A072088 (n + 1)).toNat

end

end A069041.P3306616386945553130

/-! ## A069041.P3915964034612253784

`A177247(A072089(n+1))`
-/

namespace A069041.P3915964034612253784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177247 (A072089 (n + 1)).toNat

end

end A069041.P3915964034612253784

/-! ## A069041.P5736164188479994113

`A177247(record[A279478(n+1)])`
-/

namespace A069041.P5736164188479994113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177247 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069041.P5736164188479994113

/-!
# A069042: Numbers k such that A000364(k) == 1 (mod k^2).

The programs for A069042, there is no canonical definition to state claims against.
-/

/-! ## A069042.P14464183344159680591

`A064989(A288691(n)+A161852(n+1))`
-/

namespace A069042.P14464183344159680591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A288691 n + A161852 (n + 1)).toNat

end

end A069042.P14464183344159680591

/-!
# A069043: Composite numbers k with no prime factor among (2, 3) (cf. A038509) and such that phi(k) < 2*k/3.

The programs for A069043, there is no canonical definition to state claims against.
-/

/-! ## A069043.P15713053759478438254

`A028234(70*A270298(n+1))`
-/

namespace A069043.P15713053759478438254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (70 * A270298 (n + 1)).toNat

end

end A069043.P15713053759478438254

/-! ## A069043.P9282812864120495493

`A000040(n+5)*A007947(A033851(2*n+3))`
-/

namespace A069043.P9282812864120495493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 5) * A007947 (A033851 (2 * n + 3)).toNat

end

end A069043.P9282812864120495493

/-!
# A069044: N(B(2*p))/p for p prime >= 5 and where N(B(2n)) are the numerators of Bernoulli numbers.

The programs for A069044, there is no canonical definition to state claims against.
-/

/-! ## A069044.P2831819677143909076

`A001067(p?[∑[n]%3+2*n+1])`
-/

namespace A069044.P2831819677143909076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3 + 2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A069044.P2831819677143909076

/-! ## A069044.P8445258184304415867

`A001067(A000040(n+3))`
-/

namespace A069044.P8445258184304415867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001067 (A000040 (n + 3)).toNat

end

end A069044.P8445258184304415867

/-! ## A069044.P561608824365709178

`A060054(2*A000040(n+3))`
-/

namespace A069044.P561608824365709178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060054 (2 * A000040 (n + 3)).toNat

end

end A069044.P561608824365709178

/-! ## A069044.P2983743597442465969

`A000367(A332346(n+1))/A332346(n+1)`
-/

namespace A069044.P2983743597442465969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 (A332346 (n + 1)).toNat : ℚ) / (A332346 (n + 1) : ℚ)

end

end A069044.P2983743597442465969

/-!
# A069045: Denominator(sum(i=1,n,1/i^4))/denominator(sum(i=1,n,1/i)).

The programs for A069045, there is no canonical definition to state claims against.
-/

/-! ## A069045.P8332068209963004531

`A068589(n+1)*A069047(n+1)`
-/

namespace A069045.P8332068209963004531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068589 (n + 1) * A069047 (n + 1)

end

end A069045.P8332068209963004531

/-! ## A069045.P3516481905403451287

`A007409(n+1)/A213999(∑[n+2]-1)*A069047(n+1)`
-/

namespace A069045.P3516481905403451287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007409 (n + 1) : ℚ) / (A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ) * (A069047 (n + 1) : ℚ)

end

end A069045.P3516481905403451287

/-! ## A069045.P9758230388513671341

`ceil(A249950(n+1)/(n+1))/A002805(n+1)*A069047(n+1)`
-/

namespace A069045.P9758230388513671341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A249950 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A002805 (n + 1) : ℚ) * (A069047 (n + 1) : ℚ)

end

end A069045.P9758230388513671341

/-! ## A069045.P2596786578632296993

`A007480(n+1)/A002805(n+1)`
-/

namespace A069045.P2596786578632296993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007480 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A069045.P2596786578632296993

/-! ## A069045.P17884544402746759829

`sqrt(A103350(n+1))/A002805(n+1)`
-/

namespace A069045.P17884544402746759829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103350 (n + 1) : ℝ) / (A002805 (n + 1) : ℝ)

end

end A069045.P17884544402746759829

/-!
# A069046: Denominator(sum(i=1,n,1/i^4))/denominator(sum(i=1,n,1/i^2)).

The programs for A069046, there is no canonical definition to state claims against.
-/

/-! ## A069046.P7792081402539206297

`A002805(n+1)/A007407(n+1)*A069045(n+1)`
-/

namespace A069046.P7792081402539206297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A007407 (n + 1) : ℚ) * (A069045 (n + 1) : ℚ)

end

end A069046.P7792081402539206297

/-! ## A069046.P2514858114125465862

`A007480(n+1)/A007407(n+1)`
-/

namespace A069046.P2514858114125465862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007480 (n + 1) : ℚ) / (A007407 (n + 1) : ℚ)

end

end A069046.P2514858114125465862

/-! ## A069046.P8470794896749429383

`sqrt(A103350(n+1))/A007407(n+1)`
-/

namespace A069046.P8470794896749429383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103350 (n + 1) : ℝ) / (A007407 (n + 1) : ℝ)

end

end A069046.P8470794896749429383

/-! ## A069046.P15351005969955092337

`A051418(n+1)²/(A139550(2*n+3)*A324500(A000079(n)))`
-/

namespace A069046.P15351005969955092337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051418 (n + 1) ^ 2 : ℚ) / (A139550 (2 * n + 3) * A324500 (A000079 n).toNat : ℚ)

end

end A069046.P15351005969955092337

/-! ## A069046.P14662098365326111419

`∏[A326976(A062110(3*n+2))]*A051418(n+1)`
-/

namespace A069046.P14662098365326111419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326976 (A062110 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A051418 (n + 1)

end

end A069046.P14662098365326111419

/-!
# A069047: Denominator(sum(i=1,n,1/i^4))/denominator(sum(i=1,n,1/i^3)).

The programs for A069047, there is no canonical definition to state claims against.
-/

/-! ## A069047.P1568736545397342957

`A069045(n+1)/A068589(n+1)`
-/

namespace A069047.P1568736545397342957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069045 (n + 1) : ℚ) / (A068589 (n + 1) : ℚ)

end

end A069047.P1568736545397342957

/-! ## A069047.P14758575356009785063

`A002805(n+1)/A007409(n+1)*A069045(n+1)`
-/

namespace A069047.P14758575356009785063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002805 (n + 1) : ℚ) / (A007409 (n + 1) : ℚ) * (A069045 (n + 1) : ℚ)

end

end A069047.P14758575356009785063

/-! ## A069047.P16902223298248730672

`A007480(n+1)/A007409(n+1)`
-/

namespace A069047.P16902223298248730672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007480 (n + 1) : ℚ) / (A007409 (n + 1) : ℚ)

end

end A069047.P16902223298248730672

/-! ## A069047.P17119242576173105810

`A007480(n+1)/ceil(A249950(n+1)/(n+1))`
-/

namespace A069047.P17119242576173105810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007480 (n + 1) : ℚ) / (⌈(A249950 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ)

end

end A069047.P17119242576173105810

/-! ## A069047.P1490824969378006228

`A007480(n+1)/(A002805(n+1)*A068589(n+1))`
-/

namespace A069047.P1490824969378006228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007480 (n + 1) : ℚ) / (A002805 (n + 1) * A068589 (n + 1) : ℚ)

end

end A069047.P1490824969378006228

/-!
# A069049: Numbers k such that 2^k mod k = 2^phi(k) mod phi(k).

The programs for A069049, the canonical program `A069049.P17776412635063250248` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069049 has offset 1).

The definition of A069049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069049.P17776412635063250248

`eq[A015910(A000010(n+1)), A015910(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069049

/-- `eq[A015910(A000010(n+1)), A015910(n+1)]+1` -/
def P17776412635063250248.Spec : Prop :=
  ∀ n, (P17776412635063250248.a n : ℤ) = A069049 (n + 1)

theorem P17776412635063250248.correct : P17776412635063250248.Spec := by
  intro n
  simp only [A069049, Nat.add_sub_cancel]

end A069049

/-! ## A069049.P12440754845109689611

`∑[A013632(p?[A350837(n)])]`
-/

namespace A069049.P12440754845109689611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069049.P12440754845109689611

namespace A069049

/-- `∑[A013632(p?[A350837(n)])]` -/
def P12440754845109689611.Spec : Prop :=
  ∀ n, P12440754845109689611.a n = A069049 (n + 1)

end A069049

/-! ## A069049.P42759427541498244

`A057895(n)+A020639(A001250(n))`
-/

namespace A069049.P42759427541498244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057895 n + A020639 (A001250 n).toNat

end

end A069049.P42759427541498244

namespace A069049

/-- `A057895(n)+A020639(A001250(n))` -/
def P42759427541498244.Spec : Prop :=
  ∀ n, P42759427541498244.a n = A069049 (n + 1)

end A069049

/-! ## A069049.P1281828990051379387

`A057895(n)+A020639(A058262(n))`
-/

namespace A069049.P1281828990051379387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057895 n + A020639 (A058262 n).toNat

end

end A069049.P1281828990051379387

namespace A069049

/-- `A057895(n)+A020639(A058262(n))` -/
def P1281828990051379387.Spec : Prop :=
  ∀ n, P1281828990051379387.a n = A069049 (n + 1)

end A069049

/-! ## A069049.P821020764383947833

`A057895(n)+A020639(A091217(n))`
-/

namespace A069049.P821020764383947833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057895 n + A020639 (A091217 n).toNat

end

end A069049.P821020764383947833

namespace A069049

/-- `A057895(n)+A020639(A091217(n))` -/
def P821020764383947833.Spec : Prop :=
  ∀ n, P821020764383947833.a n = A069049 (n + 1)

end A069049

/-!
# A069050: Numbers k such that 2^k mod phi(k) = 2^phi(k) mod k.

The programs for A069050, there is no canonical definition to state claims against.
-/

/-! ## A069050.P12244514750459889816

`record[A327979(A257365(n))]`
-/

namespace A069050.P12244514750459889816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (A257365 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069050.P12244514750459889816

/-! ## A069050.P8460098878720318988

`eq[A010142(n²), A071766(n)]`
-/

namespace A069050.P8460098878720318988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069050.P8460098878720318988

/-! ## A069050.P15109319464261937531

`filter[A052347(n+1), A076141(#)]`
-/

namespace A069050.P15109319464261937531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A069050.P15109319464261937531

/-! ## A069050.P3400443065511644372

`filter[A322492(n+1), A011751(#)]`
-/

namespace A069050.P3400443065511644372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011751 (f1 j).toNat = 1) n)

end

end A069050.P3400443065511644372

/-! ## A069050.P6351327951441587339

`filter[A322492(n+1), A076141(#)]`
-/

namespace A069050.P6351327951441587339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A069050.P6351327951441587339

/-!
# A069051: Primes p such that p-1 divides 2^p-2.

The programs for A069051, there is no canonical definition to state claims against.
-/

/-! ## A069051.P8991986904768283884

`∩[A014741(n+1)+1, A350402(n+1)]`
-/

namespace A069051.P8991986904768283884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069051.P8991986904768283884

/-! ## A069051.P2690026402383263534

`A272934(n+1)+1`
-/

namespace A069051.P2690026402383263534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272934 (n + 1) + 1

end

end A069051.P2690026402383263534

/-! ## A069051.P8686683126211234884

`A246636(n+1)+2`
-/

namespace A069051.P8686683126211234884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246636 (n + 1) + 2

end

end A069051.P8686683126211234884

/-! ## A069051.P3579850756867787333

`p?[A014741(n+1)+1]`
-/

namespace A069051.P3579850756867787333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069051.P3579850756867787333

/-! ## A069051.P16719713438346367307

`p?[or(n%2, A014741(A008619(n)))]`
-/

namespace A069051.P16719713438346367307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A014741 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069051.P16719713438346367307

/-! ## A069051.P3405140195169958302

`p?[A014963(A001316(n))*A014945(A028310(n))+1]`
-/

namespace A069051.P3405140195169958302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A014945 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069051.P3405140195169958302

/-!
# A069052: Denominator of Sum_{i = 1..n} 1/i^5.

The programs for A069052, there is no canonical definition to state claims against.
-/

/-! ## A069052.P16409791044747777425

`A003418(A242474(n+1))²²*A002805(n+1)`
-/

namespace A069052.P16409791044747777425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003418 (A242474 (n + 1)).toNat ^ 2) ^ 2 * A002805 (n + 1)

end

end A069052.P16409791044747777425

/-! ## A069052.P15738493250111360829

`A000578(A058312(n+1))*A068589(n+1)`
-/

namespace A069052.P15738493250111360829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A058312 (n + 1)).toNat * A068589 (n + 1)

end

end A069052.P15738493250111360829

/-! ## A069052.P780694114195632240

`A000578(A109935(n+1))*A068589(n+1)`
-/

namespace A069052.P780694114195632240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A109935 (n + 1)).toNat * A068589 (n + 1)

end

end A069052.P780694114195632240

/-! ## A069052.P4580487143779658475

`A051426(n+1)/(2*A110566(n+1))*A003418(A032563(n+1))²²`
-/

namespace A069052.P4580487143779658475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 1) : ℚ) / (2 * A110566 (n + 1) : ℚ) * ((A003418 (A032563 (n + 1)).toNat ^ 2) ^ 2 : ℚ)

end

end A069052.P4580487143779658475

/-! ## A069052.P6321969497012873208

`A051426(n+1)/(2*A110566(n+1))*A003418(A134853(n+1))²²`
-/

namespace A069052.P6321969497012873208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 1) : ℚ) / (2 * A110566 (n + 1) : ℚ) * ((A003418 (A134853 (n + 1)).toNat ^ 2) ^ 2 : ℚ)

end

end A069052.P6321969497012873208

/-!
# A069053: Denominator(sum(i=1,n,1/i^5))/denominator(sum(i=1,n,1/i^3)).

The programs for A069053, there is no canonical definition to state claims against.
-/

/-! ## A069053.P356958594853878774

`A069052(n+1)/A007409(n+1)`
-/

namespace A069053.P356958594853878774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069052 (n + 1) : ℚ) / (A007409 (n + 1) : ℚ)

end

end A069053.P356958594853878774

/-! ## A069053.P5268797578201472770

`A069052(n+1)/(A002805(n+1)*A068589(n+1))`
-/

namespace A069053.P5268797578201472770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069052 (n + 1) : ℚ) / (A002805 (n + 1) * A068589 (n + 1) : ℚ)

end

end A069053.P5268797578201472770

/-! ## A069053.P17972316630877397195

`A195506(A077342(n+1))/A002805(n+1)`
-/

namespace A069053.P17972316630877397195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195506 (A077342 (n + 1)).toNat : ℚ) / (A002805 (n + 1) : ℚ)

end

end A069053.P17972316630877397195

/-! ## A069053.P2945063406397649777

`A195506(n+1)/A002805(A351374(n+1))`
-/

namespace A069053.P2945063406397649777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195506 (n + 1) : ℚ) / (A002805 (A351374 (n + 1)).toNat : ℚ)

end

end A069053.P2945063406397649777

/-! ## A069053.P14761650204594182597

`A003418(A242474(n+1))²*A110566(n+1)`
-/

namespace A069053.P14761650204594182597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A242474 (n + 1)).toNat ^ 2 * A110566 (n + 1)

end

end A069053.P14761650204594182597

/-!
# A069055: Largest n-digit number with only prime divisors 2 or 3 (i.e., of the form 2^a * 3^b).

The programs for A069055, there is no canonical definition to state claims against.
-/

/-! ## A069055.P6872326097202365937

`A003586(A100752(n+1))`
-/

namespace A069055.P6872326097202365937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A100752 (n + 1)).toNat

end

end A069055.P6872326097202365937

/-! ## A069055.P16186409215115193449

`A003586(ratio[A100752(n)]*A100752(n))`
-/

namespace A069055.P16186409215115193449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A100752 n : ℚ))).toNat

end

end A069055.P16186409215115193449

/-!
# A069056: Numbers k such that Sum_{d|k} d^2*mu(d) divides k^2.

The programs for A069056, there is no canonical definition to state claims against.
-/

/-! ## A069056.P14854853776369111123

`filter[A325762(n+1), A093719(#)]`
-/

namespace A069056.P14854853776369111123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A069056.P14854853776369111123

/-! ## A069056.P16989727832752304248

`filter[A325762(n+1), A173857(#)]`
-/

namespace A069056.P16989727832752304248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A069056.P16989727832752304248

/-! ## A069056.P3664577430089560010

`filter[A325762(n+1), A329680(#)]`
-/

namespace A069056.P3664577430089560010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A069056.P3664577430089560010

/-! ## A069056.P4697010340942737542

`∩[A008458(n), A325762(n+1)]`
-/

namespace A069056.P4697010340942737542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069056.P4697010340942737542

/-! ## A069056.P15368428586900957479

`∩[A008486(n), A325762(n+1)]`
-/

namespace A069056.P15368428586900957479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069056.P15368428586900957479

/-!
# A069057: Numbers k such that the numerator of Sum_{d|k} 1/d > 2k.

The programs for A069057, there is no canonical definition to state claims against.
-/

/-! ## A069057.P7634350246894261856

`∩[A087245(n+1), A095738(n+1)]`
-/

namespace A069057.P7634350246894261856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P7634350246894261856

/-! ## A069057.P13115232550091207194

`∩[A003624(n+1), A005101(n+1)]`
-/

namespace A069057.P13115232550091207194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P13115232550091207194

/-! ## A069057.P1814221561935571010

`∩[A003624(n+1), A005835(n+1)]`
-/

namespace A069057.P1814221561935571010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P1814221561935571010

/-! ## A069057.P17858798499364063365

`∩[A003624(n+1), A023196(n+1)]`
-/

namespace A069057.P17858798499364063365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P17858798499364063365

/-! ## A069057.P14936068232046543359

`∩[A003624(n+1), A087245(n+1)]`
-/

namespace A069057.P14936068232046543359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P14936068232046543359

/-! ## A069057.P6466441642705636888

`∩[A005101(n+1), A095738(n+1)]`
-/

namespace A069057.P6466441642705636888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P6466441642705636888

/-! ## A069057.P17929084040845669108

`∩[A005835(n+1), A095738(n+1)]`
-/

namespace A069057.P17929084040845669108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P17929084040845669108

/-! ## A069057.P379451064925407486

`∩[A023196(n+1), A095738(n+1)]`
-/

namespace A069057.P379451064925407486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P379451064925407486

/-! ## A069057.P17023208492937779897

`∩[A003624(n+1), A136446(n+1)]`
-/

namespace A069057.P17023208492937779897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P17023208492937779897

/-! ## A069057.P17069021739881722264

`∩[A003624(n+1), A177052(n+1)]`
-/

namespace A069057.P17069021739881722264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069057.P17069021739881722264

/-!
# A069058: Numbers n such that A017666(n)=phi(n).

The programs for A069058, there is no canonical definition to state claims against.
-/

/-! ## A069058.P17287552341615548112

`record[A217434(A315780(n)²)]`
-/

namespace A069058.P17287552341615548112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A315780 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069058.P17287552341615548112

/-! ## A069058.P12942540387165288812

`A299256(lt[A061978(n+1), A089849(n+4)])`
-/

namespace A069058.P12942540387165288812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299256 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069058.P12942540387165288812

/-!
# A069059: Numbers k such that k and sigma(k) are not relatively prime.

The programs for A069059, the canonical program `A069059.P15537564215172939838` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069059 has offset 1).

The definition of A069059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069059.P15537564215172939838

`eq[0, A325964(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069059

/-- `eq[0, A325964(n+1)]+1` -/
def P15537564215172939838.Spec : Prop :=
  ∀ n, (P15537564215172939838.a n : ℤ) = A069059 (n + 1)

theorem P15537564215172939838.correct : P15537564215172939838.Spec := by
  intro n
  simp only [A069059, Nat.add_sub_cancel]

end A069059

/-! ## A069059.P15759210060460485255

`lt[0, A325817(n+1)]+1`
-/

namespace A069059.P15759210060460485255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069059.P15759210060460485255

namespace A069059

/-- `lt[0, A325817(n+1)]+1` -/
def P15759210060460485255.Spec : Prop :=
  ∀ n, (P15759210060460485255.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P3065846838260966787

`lt[1, A082068(n+1)]+1`
-/

namespace A069059.P3065846838260966787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069059.P3065846838260966787

namespace A069059

/-- `lt[1, A082068(n+1)]+1` -/
def P3065846838260966787.Spec : Prop :=
  ∀ n, (P3065846838260966787.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P8771661737613546917

`lt[1, A306682(n+1)]+1`
-/

namespace A069059.P8771661737613546917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069059.P8771661737613546917

namespace A069059

/-- `lt[1, A306682(n+1)]+1` -/
def P8771661737613546917.Spec : Prop :=
  ∀ n, (P8771661737613546917.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P13219835783611281634

`lt[1, A327154(n+1)]+1`
-/

namespace A069059.P13219835783611281634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069059.P13219835783611281634

namespace A069059

/-- `lt[1, A327154(n+1)]+1` -/
def P13219835783611281634.Spec : Prop :=
  ∀ n, (P13219835783611281634.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P5209094812407178795

`comp[A014567(n+1)-1]+1`
-/

namespace A069059.P5209094812407178795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A069059.P5209094812407178795

namespace A069059

/-- `comp[A014567(n+1)-1]+1` -/
def P5209094812407178795.Spec : Prop :=
  ∀ n, (P5209094812407178795.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P5425725884563637443

`lt[1, gcd(n+1, A000203(n+1))]+1`
-/

namespace A069059.P5425725884563637443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069059.P5425725884563637443

namespace A069059

/-- `lt[1, gcd(n+1, A000203(n+1))]+1` -/
def P5425725884563637443.Spec : Prop :=
  ∀ n, (P5425725884563637443.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P1972127580371033014

`lt[A326202(A326202(n+1)), A326202(n+1)]+1`
-/

namespace A069059.P1972127580371033014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (A326202 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069059.P1972127580371033014

namespace A069059

/-- `lt[A326202(A326202(n+1)), A326202(n+1)]+1` -/
def P1972127580371033014.Spec : Prop :=
  ∀ n, (P1972127580371033014.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P3328427602316017552

`lt[1, A009194(n+1)]+1`
-/

namespace A069059.P3328427602316017552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069059.P3328427602316017552

namespace A069059

/-- `lt[1, A009194(n+1)]+1` -/
def P3328427602316017552.Spec : Prop :=
  ∀ n, (P3328427602316017552.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P3627999981325460430

`lt[1, A073802(n+1)]+1`
-/

namespace A069059.P3627999981325460430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069059.P3627999981325460430

namespace A069059

/-- `lt[1, A073802(n+1)]+1` -/
def P3627999981325460430.Spec : Prop :=
  ∀ n, (P3627999981325460430.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P6100448606862154872

`lt[A017666(n+1), n]+1`
-/

namespace A069059.P6100448606862154872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A069059.P6100448606862154872

namespace A069059

/-- `lt[A017666(n+1), n]+1` -/
def P6100448606862154872.Spec : Prop :=
  ∀ n, (P6100448606862154872.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P2294101875398479175

`lt[1, A009194(A028310(n))]`
-/

namespace A069059.P2294101875398479175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A069059.P2294101875398479175

namespace A069059

/-- `lt[1, A009194(A028310(n))]` -/
def P2294101875398479175.Spec : Prop :=
  ∀ n, (P2294101875398479175.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P1618251783094800955

`A181569(eq[0, A325964(n+1)])`
-/

namespace A069059.P1618251783094800955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069059.P1618251783094800955

namespace A069059

/-- `A181569(eq[0, A325964(n+1)])` -/
def P1618251783094800955.Spec : Prop :=
  ∀ n, P1618251783094800955.a n = A069059 (n + 1)

end A069059

/-! ## A069059.P13422496470701146239

`A020725(lt[1, A009194(n+1)])`
-/

namespace A069059.P13422496470701146239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069059.P13422496470701146239

namespace A069059

/-- `A020725(lt[1, A009194(n+1)])` -/
def P13422496470701146239.Spec : Prop :=
  ∀ n, P13422496470701146239.a n = A069059 (n + 1)

end A069059

/-! ## A069059.P4398353596817047333

`A065475(lt[1, A009194(n+1)])`
-/

namespace A069059.P4398353596817047333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069059.P4398353596817047333

namespace A069059

/-- `A065475(lt[1, A009194(n+1)])` -/
def P4398353596817047333.Spec : Prop :=
  ∀ n, P4398353596817047333.a n = A069059 (n + 1)

end A069059

/-! ## A069059.P9282264574651619685

`A114637(lt[1, A009194(n+1)])`
-/

namespace A069059.P9282264574651619685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069059.P9282264574651619685

namespace A069059

/-- `A114637(lt[1, A009194(n+1)])` -/
def P9282264574651619685.Spec : Prop :=
  ∀ n, P9282264574651619685.a n = A069059 (n + 1)

end A069059

/-! ## A069059.P11671029033137577386

`A153152(lt[1, A009194(n+1)])`
-/

namespace A069059.P11671029033137577386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069059.P11671029033137577386

namespace A069059

/-- `A153152(lt[1, A009194(n+1)])` -/
def P11671029033137577386.Spec : Prop :=
  ∀ n, P11671029033137577386.a n = A069059 (n + 1)

end A069059

/-! ## A069059.P10941609898965171590

`lt[1, gcd(A028310(n)+1, A088580(n+1)-1)]+1`
-/

namespace A069059.P10941609898965171590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n + 1) (A088580 (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069059.P10941609898965171590

namespace A069059

/-- `lt[1, gcd(A028310(n)+1, A088580(n+1)-1)]+1` -/
def P10941609898965171590.Spec : Prop :=
  ∀ n, (P10941609898965171590.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P13551542365937423291

`lt[A017666(A028310(n)), A008619(n)]`
-/

namespace A069059.P13551542365937423291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069059.P13551542365937423291

namespace A069059

/-- `lt[A017666(A028310(n)), A008619(n)]` -/
def P13551542365937423291.Spec : Prop :=
  ∀ n, (P13551542365937423291.a n : ℤ) = A069059 (n + 1)

end A069059

/-! ## A069059.P16702188731102115200

`eq[A028310(A240923(n+1)), A240923(n+1)]+1`
-/

namespace A069059.P16702188731102115200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A240923 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069059.P16702188731102115200

namespace A069059

/-- `eq[A028310(A240923(n+1)), A240923(n+1)]+1` -/
def P16702188731102115200.Spec : Prop :=
  ∀ n, (P16702188731102115200.a n : ℤ) = A069059 (n + 1)

end A069059

/-!
# A069060: Product of divisors of 2^n + 1.

The programs for A069060, the canonical program `A069060.P14017391621502611727` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069060 has offset 1).

The definition of A069060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069060.P14017391621502611727

`A007955(A000051(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069060

/-- `A007955(A000051(n+1))` -/
def P14017391621502611727.Spec : Prop :=
  ∀ n, P14017391621502611727.a n = A069060 (n + 1)

theorem P14017391621502611727.correct : P14017391621502611727.Spec := by
  intro n
  simp only [A069060, Nat.add_sub_cancel]

end A069060

/-! ## A069060.P3181092031266242749

`∏{d}[∑[2^n]+2, #]`
-/

namespace A069060.P3181092031266242749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A069060.P3181092031266242749

namespace A069060

/-- `∏{d}[∑[2^n]+2, #]` -/
def P3181092031266242749.Spec : Prop :=
  ∀ n, (P3181092031266242749.a n : ℤ) = A069060 (n + 1)

end A069060

/-! ## A069060.P3729656351974617212

`or(1, ∏{d}[A048578(n), #])`
-/

namespace A069060.P3729656351974617212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A069060.P3729656351974617212

namespace A069060

/-- `or(1, ∏{d}[A048578(n), #])` -/
def P3729656351974617212.Spec : Prop :=
  ∀ n, (P3729656351974617212.a n : ℤ) = A069060 (n + 1)

end A069060

/-! ## A069060.P4615168305537493236

`A326683(n)+∏{d}[A048578(n), #]`
-/

namespace A069060.P4615168305537493236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A069060.P4615168305537493236

namespace A069060

/-- `A326683(n)+∏{d}[A048578(n), #]` -/
def P4615168305537493236.Spec : Prop :=
  ∀ n, P4615168305537493236.a n = A069060 (n + 1)

end A069060

/-! ## A069060.P5844760230462357683

`A000108(gcd(n, n+1))*∏{d}[A048578(n), #]`
-/

namespace A069060.P5844760230462357683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A069060.P5844760230462357683

namespace A069060

/-- `A000108(gcd(n, n+1))*∏{d}[A048578(n), #]` -/
def P5844760230462357683.Spec : Prop :=
  ∀ n, P5844760230462357683.a n = A069060 (n + 1)

end A069060

/-!
# A069061: Sum of divisors of 2^n+1.

The programs for A069061, the canonical program `A069061.P3498939395572373797` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069061 has offset 1).

The definition of A069061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069061.P3498939395572373797

`A000203(2^(n+1)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069061

/-- `A000203(2^(n+1)+1)` -/
def P3498939395572373797.Spec : Prop :=
  ∀ n, P3498939395572373797.a n = A069061 (n + 1)

theorem P3498939395572373797.correct : P3498939395572373797.Spec := by
  intro n
  simp only [A069061, Nat.add_sub_cancel]

end A069061

/-! ## A069061.P14592648764589926980

`A324552(n+1)+ceil(abs(sin(n)))+1`
-/

namespace A069061.P14592648764589926980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324552 (n + 1) + (⌈|Real.sin (n : ℝ)|⌉ + 1)

end

end A069061.P14592648764589926980

namespace A069061

/-- `A324552(n+1)+ceil(abs(sin(n)))+1` -/
def P14592648764589926980.Spec : Prop :=
  ∀ n, P14592648764589926980.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P2589314361572335028

`A324118(A100484(n+1))`
-/

namespace A069061.P2589314361572335028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A100484 (n + 1)).toNat

end

end A069061.P2589314361572335028

namespace A069061

/-- `A324118(A100484(n+1))` -/
def P2589314361572335028.Spec : Prop :=
  ∀ n, P2589314361572335028.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P10196939903126049473

`A324118(A001747(n+2))`
-/

namespace A069061.P10196939903126049473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A001747 (n + 2)).toNat

end

end A069061.P10196939903126049473

namespace A069061

/-- `A324118(A001747(n+2))` -/
def P10196939903126049473.Spec : Prop :=
  ∀ n, P10196939903126049473.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P6807980968087313971

`A324118(A076274(n+2)+1)`
-/

namespace A069061.P6807980968087313971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A076274 (n + 2) + 1).toNat

end

end A069061.P6807980968087313971

namespace A069061

/-- `A324118(A076274(n+2)+1)` -/
def P6807980968087313971.Spec : Prop :=
  ∀ n, P6807980968087313971.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P5386809178519287960

`A324118(2*A000040(n+1))`
-/

namespace A069061.P5386809178519287960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (2 * A000040 (n + 1)).toNat

end

end A069061.P5386809178519287960

namespace A069061

/-- `A324118(2*A000040(n+1))` -/
def P5386809178519287960.Spec : Prop :=
  ∀ n, P5386809178519287960.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P878991343460895643

`A324118(2*(A006093(n+1)+1))`
-/

namespace A069061.P878991343460895643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (2 * (A006093 (n + 1) + 1)).toNat

end

end A069061.P878991343460895643

namespace A069061

/-- `A324118(2*(A006093(n+1)+1))` -/
def P878991343460895643.Spec : Prop :=
  ∀ n, P878991343460895643.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P5227347993662594712

`A324552(n+1)+A036453(n+1)`
-/

namespace A069061.P5227347993662594712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324552 (n + 1) + A036453 (n + 1)

end

end A069061.P5227347993662594712

namespace A069061

/-- `A324552(n+1)+A036453(n+1)` -/
def P5227347993662594712.Spec : Prop :=
  ∀ n, P5227347993662594712.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P2598876779448401178

`A324549(n+1)+A151821(n+1)`
-/

namespace A069061.P2598876779448401178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324549 (n + 1) + A151821 (n + 1)

end

end A069061.P2598876779448401178

namespace A069061

/-- `A324549(n+1)+A151821(n+1)` -/
def P2598876779448401178.Spec : Prop :=
  ∀ n, P2598876779448401178.a n = A069061 (n + 1)

theorem P2598876779448401178.correct : P2598876779448401178.Spec := by
  intro n
  simp only [A069061, Nat.add_sub_cancel, A069061.P2598876779448401178.a, A069061.P3498939395572373797.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A151821, A151821.P3447003275305928826.f1, A151821.P3447003275305928826.a, A324549, A324549.P838001861753721853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069061

/-! ## A069061.P17313035973424478330

`A324118(A000040(n+1)+A000040(n+1))`
-/

namespace A069061.P17313035973424478330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A069061.P17313035973424478330

namespace A069061

/-- `A324118(A000040(n+1)+A000040(n+1))` -/
def P17313035973424478330.Spec : Prop :=
  ∀ n, P17313035973424478330.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P1088953437747114835

`A324552(n+1)+A034444(A034444(n+1))`
-/

namespace A069061.P1088953437747114835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324552 (n + 1) + A034444 (A034444 (n + 1)).toNat

end

end A069061.P1088953437747114835

namespace A069061

/-- `A324552(n+1)+A034444(A034444(n+1))` -/
def P1088953437747114835.Spec : Prop :=
  ∀ n, P1088953437747114835.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P11225964471054017781

`A324118(A006093(n+1)+A006093(n+1)+2)`
-/

namespace A069061.P11225964471054017781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A006093 (n + 1) + (A006093 (n + 1) + 2)).toNat

end

end A069061.P11225964471054017781

namespace A069061

/-- `A324118(A006093(n+1)+A006093(n+1)+2)` -/
def P11225964471054017781.Spec : Prop :=
  ∀ n, P11225964471054017781.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P9982003778434377536

`A324118(A001748(n+2))`
-/

namespace A069061.P9982003778434377536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A001748 (n + 2)).toNat

end

end A069061.P9982003778434377536

namespace A069061

/-- `A324118(A001748(n+2))` -/
def P9982003778434377536.Spec : Prop :=
  ∀ n, P9982003778434377536.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P12840079931794907152

`A323243(2*A000040(n+1))`
-/

namespace A069061.P12840079931794907152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (2 * A000040 (n + 1)).toNat

end

end A069061.P12840079931794907152

namespace A069061

/-- `A323243(2*A000040(n+1))` -/
def P12840079931794907152.Spec : Prop :=
  ∀ n, P12840079931794907152.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P17390008863542447806

`A323243(2*A008578(n+2))`
-/

namespace A069061.P17390008863542447806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (2 * A008578 (n + 2)).toNat

end

end A069061.P17390008863542447806

namespace A069061

/-- `A323243(2*A008578(n+2))` -/
def P17390008863542447806.Spec : Prop :=
  ∀ n, P17390008863542447806.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P8856212422524556461

`A323243(record[2*A006530(n+2)])`
-/

namespace A069061.P8856212422524556461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069061.P8856212422524556461

namespace A069061

/-- `A323243(record[2*A006530(n+2)])` -/
def P8856212422524556461.Spec : Prop :=
  ∀ n, P8856212422524556461.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P6207254349309558559

`A323243(A000040(n+1)+A000040(n+1))`
-/

namespace A069061.P6207254349309558559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A069061.P6207254349309558559

namespace A069061

/-- `A323243(A000040(n+1)+A000040(n+1))` -/
def P6207254349309558559.Spec : Prop :=
  ∀ n, P6207254349309558559.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P12959967423251775484

`A323243(A008578(n+2)+record[A006530(n+2)])`
-/

namespace A069061.P12959967423251775484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (A008578 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069061.P12959967423251775484

namespace A069061

/-- `A323243(A008578(n+2)+record[A006530(n+2)])` -/
def P12959967423251775484.Spec : Prop :=
  ∀ n, P12959967423251775484.a n = A069061 (n + 1)

end A069061

/-! ## A069061.P7247522990934476746

`A324573(A073582(n+2))`
-/

namespace A069061.P7247522990934476746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324573 (A073582 (n + 2)).toNat

end

end A069061.P7247522990934476746

namespace A069061

/-- `A324573(A073582(n+2))` -/
def P7247522990934476746.Spec : Prop :=
  ∀ n, P7247522990934476746.a n = A069061 (n + 1)

end A069061

/-!
# A069062: Numbers k such that k^2-1 and k^2+1 have the same number of positive divisors.

The programs for A069062, there is no canonical definition to state claims against.
-/

/-! ## A069062.P3311283744008065676

`eq[A000005(A106230(n+1)), A193432(n)]`
-/

namespace A069062.P3311283744008065676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A106230 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069062.P3311283744008065676

/-! ## A069062.P2529277835964487369

`eq[A000005(A132411(n+1)), A193432(n+1)]+1`
-/

namespace A069062.P2529277835964487369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A132411 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069062.P2529277835964487369

/-!
# A069065: Sigma(n)-phi(n) is a triangular number.

The programs for A069065, there is no canonical definition to state claims against.
-/

/-! ## A069065.P5591495484290171598

`eq[1, A002260(A051612(n+1)+1)]+1`
-/

namespace A069065.P5591495484290171598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A051612 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069065.P5591495484290171598

/-! ## A069065.P4772273255900814468

`eq[1, A010054(A051612(n+1))]+1`
-/

namespace A069065.P4772273255900814468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A051612 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069065.P4772273255900814468

/-! ## A069065.P16603924085791218305

`eq[1, A344725(A051612(n+1)+1)]+1`
-/

namespace A069065.P16603924085791218305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (A051612 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069065.P16603924085791218305

/-!
# A069066: Sigma(n)+phi(n) is a triangular number.

The programs for A069066, there is no canonical definition to state claims against.
-/

/-! ## A069066.P2502558157574428164

`eq[1, A002260(A065387(n+1)+1)]+1`
-/

namespace A069066.P2502558157574428164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A065387 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069066.P2502558157574428164

/-! ## A069066.P15444893625514111737

`eq[1, A010054(A065387(n+1))]+1`
-/

namespace A069066.P15444893625514111737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A065387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069066.P15444893625514111737

/-! ## A069066.P7763462707670843841

`eq[1, A002262(A065387(n+1)+1)]+1`
-/

namespace A069066.P7763462707670843841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A065387 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069066.P7763462707670843841

/-! ## A069066.P18439114902445027052

`eq[1, A158405(A065387(n+1)+1)]+1`
-/

namespace A069066.P18439114902445027052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A065387 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069066.P18439114902445027052

/-!
# A069067: Numbers k such that k*tau(k) is a perfect square.

The programs for A069067, the canonical program `A069067.P5386481408011505101` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069067 has offset 1).

The definition of A069067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069067.P5386481408011505101

`eq[A007913(A000005(n+1)), A007913(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069067

/-- `eq[A007913(A000005(n+1)), A007913(n+1)]+1` -/
def P5386481408011505101.Spec : Prop :=
  ∀ n, (P5386481408011505101.a n : ℤ) = A069067 (n + 1)

theorem P5386481408011505101.correct : P5386481408011505101.Spec := by
  intro n
  simp only [A069067, Nat.add_sub_cancel]

end A069067

/-! ## A069067.P6780844374370634308

`eq[1, A336319(n+1)]+1`
-/

namespace A069067.P6780844374370634308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069067.P6780844374370634308

namespace A069067

/-- `eq[1, A336319(n+1)]+1` -/
def P6780844374370634308.Spec : Prop :=
  ∀ n, (P6780844374370634308.a n : ℤ) = A069067 (n + 1)

end A069067

/-! ## A069067.P5873888241059816918

`record[(2-A336319(n+1))*A000027(n+1)]`
-/

namespace A069067.P5873888241059816918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A336319 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069067.P5873888241059816918

namespace A069067

/-- `record[(2-A336319(n+1))*A000027(n+1)]` -/
def P5873888241059816918.Spec : Prop :=
  ∀ n, P5873888241059816918.a n = A069067 (n + 1)

end A069067

/-! ## A069067.P13594285816177334232

`record[A000027(n+1)/A055615(A336319(n+1))]`
-/

namespace A069067.P13594285816177334232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A055615 (A336319 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069067.P13594285816177334232

namespace A069067

/-- `record[A000027(n+1)/A055615(A336319(n+1))]` -/
def P13594285816177334232.Spec : Prop :=
  ∀ n, P13594285816177334232.a n = (A069067 (n + 1) : ℚ)

end A069067

/-! ## A069067.P1758016153808646198

`eq[A057427(n), A336319(A028310(n))]`
-/

namespace A069067.P1758016153808646198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336319 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069067.P1758016153808646198

namespace A069067

/-- `eq[A057427(n), A336319(A028310(n))]` -/
def P1758016153808646198.Spec : Prop :=
  ∀ n, (P1758016153808646198.a n : ℤ) = A069067 (n + 1)

end A069067

/-! ## A069067.P2269343611802104542

`eq[A158388(n), A336319(A028310(n))]`
-/

namespace A069067.P2269343611802104542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336319 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069067.P2269343611802104542

namespace A069067

/-- `eq[A158388(n), A336319(A028310(n))]` -/
def P2269343611802104542.Spec : Prop :=
  ∀ n, (P2269343611802104542.a n : ℤ) = A069067 (n + 1)

end A069067

/-!
# A069068: Composite numbers k+1 such that k*phi(k+1) is a perfect square.

The programs for A069068, there is no canonical definition to state claims against.
-/

/-! ## A069068.P8960380638912097051

`A069953(n+1)-1`
-/

namespace A069068.P8960380638912097051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069953 (n + 1) - 1

end

end A069068.P8960380638912097051

/-! ## A069068.P258360577661418446

`A134824(n+2)+A069953(n+1)`
-/

namespace A069068.P258360577661418446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A069953 (n + 1)

end

end A069068.P258360577661418446

/-! ## A069068.P18375703987418700375

`abs(A069953(n+1)+A033999(2*n+1))`
-/

namespace A069068.P18375703987418700375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069953 (n + 1) + A033999 (2 * n + 1)|

end

end A069068.P18375703987418700375

/-! ## A069068.P15717682613755563121

`A292920(A225561(2*n+3))+A069953(n+1)`
-/

namespace A069068.P15717682613755563121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292920 (A225561 (2 * n + 3)).toNat + A069953 (n + 1)

end

end A069068.P15717682613755563121

/-! ## A069068.P5477902630286443885

`A112347(A141882(n+1))+A069953(n+1)`
-/

namespace A069068.P5477902630286443885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (A141882 (n + 1)).toNat + A069953 (n + 1)

end

end A069068.P5477902630286443885

/-! ## A069068.P14073604239522976409

`record[A069953(A193739(n))-1]`
-/

namespace A069068.P14073604239522976409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069953 (A193739 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069068.P14073604239522976409

/-!
# A069069: Numbers n such that n*phi(n-1) is a perfect square.

The programs for A069069, there is no canonical definition to state claims against.
-/

/-! ## A069069.P652808664450284059

`A069952(n+1)+1`
-/

namespace A069069.P652808664450284059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069952 (n + 1) + 1

end

end A069069.P652808664450284059

/-! ## A069069.P8963348015986312188

`A020725(A069952(n+1))`
-/

namespace A069069.P8963348015986312188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A069952 (n + 1)).toNat

end

end A069069.P8963348015986312188

/-!
# A069070: Numbers n such that n*sigma(n) is a perfect square.

The programs for A069070, there is no canonical definition to state claims against.
-/

/-! ## A069070.P13818759204454917535

`eq[A007913(A000203(n+1)), A007913(n+1)]+1`
-/

namespace A069070.P13818759204454917535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069070.P13818759204454917535

/-! ## A069070.P2481737756469323482

`eq[0, A355929(n+1)]+1`
-/

namespace A069070.P2481737756469323482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069070.P2481737756469323482

/-! ## A069070.P16095039118035565827

`eq[A007913(n+1), A007913(A088580(n+1)-1)]+1`
-/

namespace A069070.P16095039118035565827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A088580 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069070.P16095039118035565827

/-! ## A069070.P12398172164074349737

`eq[A326040(n+1)/A326039(n+1)+1, A019554(n+1)²/(n+1)]+1`
-/

namespace A069070.P12398172164074349737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326040 (n + 1) : ℚ) / (A326039 (n + 1) : ℚ) + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069070.P12398172164074349737

/-!
# A069071: a(n) = (2*n + 1)*((2*n + 1)^4 + 4).

The programs for A069071, the canonical program `A069071.P2704706594091739207` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069071 has offset 0).

The definition of A069071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*((2*n+1)^4+4)` (program `A069071.P2704706594091739207`, by `A069071.P2704706594091739207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069071.P2704706594091739207

`(2*n+1)*((2*n+1)^4+4)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069071

/-- `(2*n+1)*((2*n+1)^4+4)` -/
def P2704706594091739207.Spec : Prop :=
  ∀ n, (P2704706594091739207.a n : ℤ) = A069071 n

theorem P2704706594091739207.correct : P2704706594091739207.Spec := by
  intro n
  simp only [A069071]

end A069071

/-! ## A069071.P13121372698734542276

`lcm(2*n+1, or(4, (2*n+1)²²))`
-/

namespace A069071.P13121372698734542276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (Nat.lor 4 (((2 * n + 1) ^ 2) ^ 2))

end

end A069071.P13121372698734542276

namespace A069071

/-- `lcm(2*n+1, or(4, (2*n+1)²²))` -/
def P13121372698734542276.Spec : Prop :=
  ∀ n, (P13121372698734542276.a n : ℤ) = A069071 n

end A069071

/-! ## A069071.P6139179539322858744

`A017113(n)+A016757(n)`
-/

namespace A069071.P6139179539322858744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n + A016757 n

end

end A069071.P6139179539322858744

namespace A069071

/-- `A017113(n)+A016757(n)` -/
def P6139179539322858744.Spec : Prop :=
  ∀ n, P6139179539322858744.a n = A069071 n

theorem P6139179539322858744.correct : P6139179539322858744.Spec := by
  intro n
  simp only [A069071, Nat.add_sub_cancel, A069071.P6139179539322858744.a, A069071.P2704706594091739207.a, A016757, A016757.P14373037326364437430.a, A017113, A017113.P3624354701485579327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069071

/-! ## A069071.P205700943203660182

`A016825(n)+A016825(n)+A016757(n)`
-/

namespace A069071.P205700943203660182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (A016825 n + A016757 n)

end

end A069071.P205700943203660182

namespace A069071

/-- `A016825(n)+A016825(n)+A016757(n)` -/
def P205700943203660182.Spec : Prop :=
  ∀ n, P205700943203660182.a n = A069071 n

theorem P205700943203660182.correct : P205700943203660182.Spec := by
  intro n
  simp only [A069071, Nat.add_sub_cancel, A069071.P205700943203660182.a, A069071.P2704706594091739207.a, A016757, A016757.P14373037326364437430.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069071

/-! ## A069071.P5036242177683330701

`A054604(Δ[n²])`
-/

namespace A069071.P5036242177683330701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054604 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069071.P5036242177683330701

namespace A069071

/-- `A054604(Δ[n²])` -/
def P5036242177683330701.Spec : Prop :=
  ∀ n, P5036242177683330701.a n = A069071 n

end A069071

/-! ## A069071.P6571623785004201193

`lcm(5, A054604(2*n+1))`
-/

namespace A069071.P6571623785004201193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A054604 (2 * n + 1))

end

end A069071.P6571623785004201193

namespace A069071

/-- `lcm(5, A054604(2*n+1))` -/
def P6571623785004201193.Spec : Prop :=
  ∀ n, (P6571623785004201193.a n : ℤ) = A069071 n

end A069071

/-! ## A069071.P5639168327588333183

`A180355(2*n+1)-(2*n+1)`
-/

namespace A069071.P5639168327588333183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180355 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A069071.P5639168327588333183

namespace A069071

/-- `A180355(2*n+1)-(2*n+1)` -/
def P5639168327588333183.Spec : Prop :=
  ∀ n, P5639168327588333183.a n = A069071 n

theorem P5639168327588333183.correct : P5639168327588333183.Spec := by
  intro n
  simp only [A069071, Nat.add_sub_cancel, A069071.P5639168327588333183.a, A069071.P2704706594091739207.a, A180355, A180355.P15220514206579301927.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069071

/-! ## A069071.P8850147417797387801

`A131471(2*n+1)+A016945(n)`
-/

namespace A069071.P8850147417797387801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131471 (2 * n + 1) + A016945 n

end

end A069071.P8850147417797387801

namespace A069071

/-- `A131471(2*n+1)+A016945(n)` -/
def P8850147417797387801.Spec : Prop :=
  ∀ n, P8850147417797387801.a n = A069071 n

theorem P8850147417797387801.correct : P8850147417797387801.Spec := by
  intro n
  simp only [A069071, Nat.add_sub_cancel, A069071.P8850147417797387801.a, A069071.P2704706594091739207.a, A016945, A016945.P12463160785118576711.a, A131471, A131471.P12482115226042697987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069071

/-! ## A069071.P17492035399276808410

`A271209(2*n+1)+A016789(2*n)`
-/

namespace A069071.P17492035399276808410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271209 (2 * n + 1) + A016789 (2 * n)

end

end A069071.P17492035399276808410

namespace A069071

/-- `A271209(2*n+1)+A016789(2*n)` -/
def P17492035399276808410.Spec : Prop :=
  ∀ n, P17492035399276808410.a n = A069071 n

theorem P17492035399276808410.correct : P17492035399276808410.Spec := by
  intro n
  simp only [A069071, Nat.add_sub_cancel, A069071.P17492035399276808410.a, A069071.P2704706594091739207.a, A016789, A016789.P8277564872725303677.a, A271209, A271209.P2605828759882047682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069071

/-! ## A069071.P12425044485690075710

`A008586(2*n+1)+A000584(2*n+1)`
-/

namespace A069071.P12425044485690075710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (2 * n + 1) + A000584 (2 * n + 1)

end

end A069071.P12425044485690075710

namespace A069071

/-- `A008586(2*n+1)+A000584(2*n+1)` -/
def P12425044485690075710.Spec : Prop :=
  ∀ n, P12425044485690075710.a n = A069071 n

theorem P12425044485690075710.correct : P12425044485690075710.Spec := by
  intro n
  simp only [A069071, Nat.add_sub_cancel, A069071.P12425044485690075710.a, A069071.P2704706594091739207.a, A000584, A000584.P5477385692209315495.a, A008586, A008586.P15642444062404201100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069071

/-! ## A069071.P8716796085014116045

`A061167(2*n+1)+A008587(2*n+1)`
-/

namespace A069071.P8716796085014116045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061167 (2 * n + 1) + A008587 (2 * n + 1)

end

end A069071.P8716796085014116045

namespace A069071

/-- `A061167(2*n+1)+A008587(2*n+1)` -/
def P8716796085014116045.Spec : Prop :=
  ∀ n, P8716796085014116045.a n = A069071 n

theorem P8716796085014116045.correct : P8716796085014116045.Spec := by
  intro n
  simp only [A069071, Nat.add_sub_cancel, A069071.P8716796085014116045.a, A069071.P2704706594091739207.a, A008587, A008587.P15238079008432610842.a, A061167, A061167.P10314290942309870978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069071

/-! ## A069071.P6381556957161090238

`A271209(2*n+1)+A047235(2*n+1)`
-/

namespace A069071.P6381556957161090238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271209 (2 * n + 1) + A047235 (2 * n + 1)

end

end A069071.P6381556957161090238

namespace A069071

/-- `A271209(2*n+1)+A047235(2*n+1)` -/
def P6381556957161090238.Spec : Prop :=
  ∀ n, P6381556957161090238.a n = A069071 n

end A069071

/-! ## A069071.P4499821266745482359

`gcd(A054604(2*n+1)*A054604(n+1), A054604(2*n+1))`
-/

namespace A069071.P4499821266745482359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054604 (2 * n + 1) * A054604 (n + 1)) (A054604 (2 * n + 1))

end

end A069071.P4499821266745482359

namespace A069071

/-- `gcd(A054604(2*n+1)*A054604(n+1), A054604(2*n+1))` -/
def P4499821266745482359.Spec : Prop :=
  ∀ n, (P4499821266745482359.a n : ℤ) = A069071 n

end A069071

/-!
# A069072: a(n) = (2n+1)*(2n+2)*(2n+3).

The programs for A069072, the canonical program `A069072.P4524255164454282767` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069072 has offset 0).

The definition of A069072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+3)` (program `A069072.P4524255164454282767`, by `A069072.P4524255164454282767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069072.P4524255164454282767

`(2*n+1)*(2*n+2)*(2*n+3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069072

/-- `(2*n+1)*(2*n+2)*(2*n+3)` -/
def P4524255164454282767.Spec : Prop :=
  ∀ n, (P4524255164454282767.a n : ℤ) = A069072 n

theorem P4524255164454282767.correct : P4524255164454282767.Spec := by
  intro n
  simp only [A069072]

end A069072

/-! ## A069072.P10152773892371787618

`Δ[C(2*(n²+n), 2)]`
-/

namespace A069072.P10152773892371787618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n ^ 2 + n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A069072.P10152773892371787618

namespace A069072

/-- `Δ[C(2*(n²+n), 2)]` -/
def P10152773892371787618.Spec : Prop :=
  ∀ n, P10152773892371787618.a n = A069072 n

theorem P10152773892371787618.correct : P10152773892371787618.Spec := by
  intro n
  simp only [A069072, Nat.add_sub_cancel, A069072.P10152773892371787618.f1, A069072.P10152773892371787618.a, A069072.P4524255164454282767.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069072

/-! ## A069072.P10314571123870649553

`record[ogf(6/(1+4x+6x^2+4x^3+x^4))]`
-/

namespace A069072.P10314571123870649553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, 4, 6, 4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069072.P10314571123870649553

namespace A069072

/-- `record[ogf(6/(1+4x+6x^2+4x^3+x^4))]` -/
def P10314571123870649553.Spec : Prop :=
  ∀ n, P10314571123870649553.a n = A069072 n

end A069072

/-! ## A069072.P17999157908957461086

`C((2*(n+1))², 2)/(n+1)`
-/

namespace A069072.P17999157908957461086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * (n + 1)) ^ 2) 2 : ℚ) / (n + 1 : ℚ)

end

end A069072.P17999157908957461086

namespace A069072

/-- `C((2*(n+1))², 2)/(n+1)` -/
def P17999157908957461086.Spec : Prop :=
  ∀ n, P17999157908957461086.a n = (A069072 n : ℚ)

theorem P17999157908957461086.correct : P17999157908957461086.Spec := by
  intro n
  simp only [A069072, Nat.add_sub_cancel, A069072.P17999157908957461086.a, A069072.P4524255164454282767.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069072

/-! ## A069072.P13185531591771564264

`record[-((n+3)*a(n-1)/n)]` with `a(0)=6`
-/

namespace A069072.P13185531591771564264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [6] fun n f1 =>
  -((n + 3 : ℚ) * (f1 (n - 1) / (n : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069072.P13185531591771564264

namespace A069072

/-- `record[-((n+3)*a(n-1)/n)]` -/
def P13185531591771564264.Spec : Prop :=
  ∀ n, P13185531591771564264.a n = (A069072 n : ℚ)

end A069072

/-! ## A069072.P5666291619548925241

`a(n-1)+6*(2*n+1)²` with `a(0)=6`
-/

namespace A069072.P5666291619548925241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 6 * (2 * n + 1) ^ 2

end

end A069072.P5666291619548925241

namespace A069072

/-- `a(n-1)+6*(2*n+1)²` -/
def P5666291619548925241.Spec : Prop :=
  ∀ n, (P5666291619548925241.a n : ℤ) = A069072 n

theorem P5666291619548925241.correct : P5666291619548925241.Spec := by
  intro n
  induction n with
  | zero => simp [A069072, A069072.P5666291619548925241.a, A069072.P4524255164454282767.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069072, Nat.add_sub_cancel, A069072.P5666291619548925241.a, A069072.P4524255164454282767.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069072

/-! ## A069072.P11607094464941912875

`record[and(n+2, n+3)^3-(n+2)]`
-/

namespace A069072.P11607094464941912875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (n + 2) (n + 3) ^ 3 : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069072.P11607094464941912875

namespace A069072

/-- `record[and(n+2, n+3)^3-(n+2)]` -/
def P11607094464941912875.Spec : Prop :=
  ∀ n, P11607094464941912875.a n = A069072 n

end A069072

/-! ## A069072.P9439489498445842544

`∑[A260955(n)]`
-/

namespace A069072.P9439489498445842544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069072.P9439489498445842544

namespace A069072

/-- `∑[A260955(n)]` -/
def P9439489498445842544.Spec : Prop :=
  ∀ n, P9439489498445842544.a n = A069072 n

end A069072

/-! ## A069072.P14593399686858642714

`A254473(n)-A016755(n)`
-/

namespace A069072.P14593399686858642714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254473 n - A016755 n

end

end A069072.P14593399686858642714

namespace A069072

/-- `A254473(n)-A016755(n)` -/
def P14593399686858642714.Spec : Prop :=
  ∀ n, P14593399686858642714.a n = A069072 n

theorem P14593399686858642714.correct : P14593399686858642714.Spec := by
  intro n
  simp only [A069072, Nat.add_sub_cancel, A069072.P14593399686858642714.a, A069072.P4524255164454282767.a, A016755, A016755.P5941101717872313811.a, A254473, A254473.P9352682138429531850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069072

/-! ## A069072.P6447080034306947526

`A392844(n+1)+A017329(n)`
-/

namespace A069072.P6447080034306947526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392844 (n + 1) + A017329 n

end

end A069072.P6447080034306947526

namespace A069072

/-- `A392844(n+1)+A017329(n)` -/
def P6447080034306947526.Spec : Prop :=
  ∀ n, P6447080034306947526.a n = A069072 n

theorem P6447080034306947526.correct : P6447080034306947526.Spec := by
  intro n
  simp only [A069072, Nat.add_sub_cancel, A069072.P6447080034306947526.a, A069072.P4524255164454282767.a, A017329, A017329.P13641332030280969901.a, A392844, A392844.P4021648935066291138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069072

/-! ## A069072.P11331025838222444031

`A192418(n+1)+A002939(n+1)`
-/

namespace A069072.P11331025838222444031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192418 (n + 1) + A002939 (n + 1)

end

end A069072.P11331025838222444031

namespace A069072

/-- `A192418(n+1)+A002939(n+1)` -/
def P11331025838222444031.Spec : Prop :=
  ∀ n, P11331025838222444031.a n = A069072 n

theorem P11331025838222444031.correct : P11331025838222444031.Spec := by
  intro n
  simp only [A069072, Nat.add_sub_cancel, A069072.P11331025838222444031.a, A069072.P4524255164454282767.a, A002939, A002939.P11095602872349887610.a, A192418, A192418.P8311162932736270715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069072

/-! ## A069072.P15203568790527163116

`A187163(n+1)+A086113(n+1)`
-/

namespace A069072.P15203568790527163116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187163 (n + 1) + A086113 (n + 1)

end

end A069072.P15203568790527163116

namespace A069072

/-- `A187163(n+1)+A086113(n+1)` -/
def P15203568790527163116.Spec : Prop :=
  ∀ n, P15203568790527163116.a n = A069072 n

end A069072

/-! ## A069072.P17732219800934918539

`Δ[lcm(1-(n+1)*2*n, ∑[2*n])]`
-/

namespace A069072.P17732219800934918539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((n + 1) * (2 * n) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A069072.P17732219800934918539

namespace A069072

/-- `Δ[lcm(1-(n+1)*2*n, ∑[2*n])]` -/
def P17732219800934918539.Spec : Prop :=
  ∀ n, P17732219800934918539.a n = A069072 n

end A069072

/-! ## A069072.P7549405891812079971

`A046142(n+2)-A016755(n+1)`
-/

namespace A069072.P7549405891812079971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046142 (n + 2) - A016755 (n + 1)

end

end A069072.P7549405891812079971

namespace A069072

/-- `A046142(n+2)-A016755(n+1)` -/
def P7549405891812079971.Spec : Prop :=
  ∀ n, P7549405891812079971.a n = A069072 n

end A069072

/-! ## A069072.P15644162657041281820

`record[A331433(n)]`
-/

namespace A069072.P15644162657041281820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069072.P15644162657041281820

namespace A069072

/-- `record[A331433(n)]` -/
def P15644162657041281820.Spec : Prop :=
  ∀ n, P15644162657041281820.a n = A069072 n

end A069072

/-! ## A069072.P509924156346020755

`A331433(2*n)`
-/

namespace A069072.P509924156346020755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331433 (2 * n)

end

end A069072.P509924156346020755

namespace A069072

/-- `A331433(2*n)` -/
def P509924156346020755.Spec : Prop :=
  ∀ n, P509924156346020755.a n = A069072 n

end A069072

/-! ## A069072.P16293192011663832769

`A033931(Δ[n²])`
-/

namespace A069072.P16293192011663832769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069072.P16293192011663832769

namespace A069072

/-- `A033931(Δ[n²])` -/
def P16293192011663832769.Spec : Prop :=
  ∀ n, P16293192011663832769.a n = A069072 n

end A069072

/-! ## A069072.P9180558947660123579

`A250352(Δ[n²])-2`
-/

namespace A069072.P9180558947660123579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250352 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A069072.P9180558947660123579

namespace A069072

/-- `A250352(Δ[n²])-2` -/
def P9180558947660123579.Spec : Prop :=
  ∀ n, P9180558947660123579.a n = A069072 n

end A069072

/-! ## A069072.P17313067764167757181

`sqrt(A099764(2*n+1))`
-/

namespace A069072.P17313067764167757181
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099764 (2 * n + 1) : ℝ)

end

end A069072.P17313067764167757181

namespace A069072

/-- `sqrt(A099764(2*n+1))` -/
def P17313067764167757181.Spec : Prop :=
  ∀ n, P17313067764167757181.a n = (A069072 n : ℝ)

end A069072

/-!
# A069073: a(n) = n*(4n^2 - 1)^2.

The programs for A069073, the canonical program `A069073.P8377113290800975738` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069073 has offset 0).

The definition of A069073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n²-1)²` (program `A069073.P8377113290800975738`, by `A069073.P8377113290800975738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069073.P8377113290800975738

`n*(4*n²-1)²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069073

/-- `n*(4*n²-1)²` -/
def P8377113290800975738.Spec : Prop :=
  ∀ n, P8377113290800975738.a n = A069073 n

theorem P8377113290800975738.correct : P8377113290800975738.Spec := by
  intro n
  simp only [A069073]

end A069073

/-! ## A069073.P16100091281079925666

`lcm(n, (1-(n+n)²)²)`
-/

namespace A069073.P16100091281079925666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - ((n + n) ^ 2 : ℤ)) ^ 2)

end

end A069073.P16100091281079925666

namespace A069073

/-- `lcm(n, (1-(n+n)²)²)` -/
def P16100091281079925666.Spec : Prop :=
  ∀ n, (P16100091281079925666.a n : ℤ) = A069073 n

end A069073

/-! ## A069073.P13824825856288348462

`n/(1/xor(1, -(2*n)²))²`
-/

namespace A069073.P13824825856288348462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 / (Int.xor 1 (-((2 * n) ^ 2 : ℤ)) : ℚ)) ^ 2

end

end A069073.P13824825856288348462

namespace A069073

/-- `n/(1/xor(1, -(2*n)²))²` -/
def P13824825856288348462.Spec : Prop :=
  ∀ n, P13824825856288348462.a n = (A069073 n : ℚ)

end A069073

/-! ## A069073.P717895624118039601

`sqrt(n²*A069075(n)²)`
-/

namespace A069073.P717895624118039601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) * A069075 n ^ 2 : ℝ)

end

end A069073.P717895624118039601

namespace A069073

/-- `sqrt(n²*A069075(n)²)` -/
def P717895624118039601.Spec : Prop :=
  ∀ n, P717895624118039601.a n = (A069073 n : ℝ)

end A069073

/-! ## A069073.P9006074224321611582

`(n^(1/2)*A000466(n))²`
-/

namespace A069073.P9006074224321611582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) ^ ((1 : ℚ) / 2 : ℝ) * (A000466 n : ℝ)) ^ 2

end

end A069073.P9006074224321611582

namespace A069073

/-- `(n^(1/2)*A000466(n))²` -/
def P9006074224321611582.Spec : Prop :=
  ∀ n, P9006074224321611582.a n = (A069073 n : ℝ)

end A069073

/-! ## A069073.P8901023995564718

`A008586(n)/(2/A000466(n))²`
-/

namespace A069073.P8901023995564718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 n : ℚ) / (2 / (A000466 n : ℚ)) ^ 2

end

end A069073.P8901023995564718

namespace A069073

/-- `A008586(n)/(2/A000466(n))²` -/
def P8901023995564718.Spec : Prop :=
  ∀ n, P8901023995564718.a n = (A069073 n : ℚ)

theorem P8901023995564718.correct : P8901023995564718.Spec := by
  intro n
  simp only [A069073, Nat.add_sub_cancel, A069073.P8901023995564718.a, A069073.P8377113290800975738.a, A000466, A000466.P5626493666969552810.a, A008586, A008586.P15642444062404201100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069073

/-! ## A069073.P3519387618797619374

`A021003(2*n)-A000578(2*n)`
-/

namespace A069073.P3519387618797619374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (2 * n) - A000578 (2 * n)

end

end A069073.P3519387618797619374

namespace A069073

/-- `A021003(2*n)-A000578(2*n)` -/
def P3519387618797619374.Spec : Prop :=
  ∀ n, P3519387618797619374.a n = A069073 n

theorem P3519387618797619374.correct : P3519387618797619374.Spec := by
  intro n
  simp only [A069073, Nat.add_sub_cancel, A069073.P3519387618797619374.a, A069073.P8377113290800975738.a, A000578, A000578.P12162961755414704816.a, A021003, A021003.P1631402243745340027.a, A071252, A071252.P13937739183146272210.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069073

/-! ## A069073.P758039027311733875

`n*A002523(2*n)-A000578(2*n)`
-/

namespace A069073.P758039027311733875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002523 (2 * n) - A000578 (2 * n)

end

end A069073.P758039027311733875

namespace A069073

/-- `n*A002523(2*n)-A000578(2*n)` -/
def P758039027311733875.Spec : Prop :=
  ∀ n, P758039027311733875.a n = A069073 n

theorem P758039027311733875.correct : P758039027311733875.Spec := by
  intro n
  simp only [A069073, Nat.add_sub_cancel, A069073.P758039027311733875.a, A069073.P8377113290800975738.a, A000578, A000578.P12162961755414704816.a, A002523, A002523.P178649398705969946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069073

/-! ## A069073.P11392557575300149795

`A007531(2*n+1)²/A004277(2*n)`
-/

namespace A069073.P11392557575300149795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (2 * n + 1) ^ 2 : ℚ) / (A004277 (2 * n) : ℚ)

end

end A069073.P11392557575300149795

namespace A069073

/-- `A007531(2*n+1)²/A004277(2*n)` -/
def P11392557575300149795.Spec : Prop :=
  ∀ n, P11392557575300149795.a n = (A069073 n : ℚ)

end A069073

/-! ## A069073.P16271021892939781589

`A007531(2*n+1)²/A004275(2*n+1)`
-/

namespace A069073.P16271021892939781589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (2 * n + 1) ^ 2 : ℚ) / (A004275 (2 * n + 1) : ℚ)

end

end A069073.P16271021892939781589

namespace A069073

/-- `A007531(2*n+1)²/A004275(2*n+1)` -/
def P16271021892939781589.Spec : Prop :=
  ∀ n, P16271021892939781589.a n = (A069073 n : ℚ)

end A069073

/-!
# A069074: a(n) = (2*n+2)*(2*n+3)*(2*n+4) = 24*A000330(n+1).

The programs for A069074, the canonical program `A069074.P4700341989723259479` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069074 has offset 0).

The definition of A069074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+2)*(2*n+3)*(2*n+4)` (program `A069074.P4700341989723259479`, by `A069074.P4700341989723259479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069074.P16383773480834120728

`6*C(2*n+4, 3)`
-/

namespace A069074.P16383773480834120728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (2 * n + 4) 3

end

end A069074.P16383773480834120728

namespace A069074

/-- `6*C(2*n+4, 3)` -/
def P16383773480834120728.Spec : Prop :=
  ∀ n, (P16383773480834120728.a n : ℤ) = A069074 n

theorem P16383773480834120728.correct : P16383773480834120728.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P16383773480834120728.a, A069074.P4700341989723259479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P4700341989723259479

`(2*n+2)*(2*n+3)*(2*n+4)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069074

/-- `(2*n+2)*(2*n+3)*(2*n+4)` -/
def P4700341989723259479.Spec : Prop :=
  ∀ n, (P4700341989723259479.a n : ℤ) = A069074 n

theorem P4700341989723259479.correct : P4700341989723259479.Spec := by
  intro n
  simp only [A069074]

end A069074

/-! ## A069074.P849833402341099075

`24*A000330(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069074.P849833402341099075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000330 (n + 1)

end

end A069074.P849833402341099075

namespace A069074

/-- `24*A000330(n+1)` -/
def P849833402341099075.Spec : Prop :=
  ∀ n, P849833402341099075.a n = A069074 n

end A069074

/-! ## A069074.P8044684558683397482

`record[or(1, n+2)^3-(n+3)]`
-/

namespace A069074.P8044684558683397482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 2) ^ 3 : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069074.P8044684558683397482

namespace A069074

/-- `record[or(1, n+2)^3-(n+3)]` -/
def P8044684558683397482.Spec : Prop :=
  ∀ n, P8044684558683397482.a n = A069074 n

end A069074

/-! ## A069074.P14722332637476741347

`record[xor(1, n+2)^3-(n+3)]`
-/

namespace A069074.P14722332637476741347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 2) ^ 3 : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069074.P14722332637476741347

namespace A069074

/-- `record[xor(1, n+2)^3-(n+3)]` -/
def P14722332637476741347.Spec : Prop :=
  ∀ n, P14722332637476741347.a n = A069074 n

end A069074

/-! ## A069074.P7407403904194936203

`Δ[2*(n+2)*lcm(n, (n+1)²)]`
-/

namespace A069074.P7407403904194936203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2) * Nat.lcm n ((n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A069074.P7407403904194936203

namespace A069074

/-- `Δ[2*(n+2)*lcm(n, (n+1)²)]` -/
def P7407403904194936203.Spec : Prop :=
  ∀ n, P7407403904194936203.a n = A069074 n

end A069074

/-! ## A069074.P10206878783311976596

`Δ[(n+1)*2*n*lcm(n+1, n+2)]`
-/

namespace A069074.P10206878783311976596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n) * Nat.lcm (n + 1) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A069074.P10206878783311976596

namespace A069074

/-- `Δ[(n+1)*2*n*lcm(n+1, n+2)]` -/
def P10206878783311976596.Spec : Prop :=
  ∀ n, P10206878783311976596.a n = A069074 n

end A069074

/-! ## A069074.P11766196664510338656

`A253679(n+1)+1+n`
-/

namespace A069074.P11766196664510338656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253679 (n + 1) + 1 + (n : ℤ)

end

end A069074.P11766196664510338656

namespace A069074

/-- `A253679(n+1)+1+n` -/
def P11766196664510338656.Spec : Prop :=
  ∀ n, P11766196664510338656.a n = A069074 n

theorem P11766196664510338656.correct : P11766196664510338656.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P11766196664510338656.a, A069074.P4700341989723259479.a, A253679, A253679.P5180113519066598347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P169291760466073694

`A016755(n+1)-(2*n+3)`
-/

namespace A069074.P169291760466073694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (n + 1) - (2 * n + 3 : ℤ)

end

end A069074.P169291760466073694

namespace A069074

/-- `A016755(n+1)-(2*n+3)` -/
def P169291760466073694.Spec : Prop :=
  ∀ n, P169291760466073694.a n = A069074 n

theorem P169291760466073694.correct : P169291760466073694.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P169291760466073694.a, A069074.P4700341989723259479.a, A016755, A016755.P5941101717872313811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P7519959271872460018

`A017113(n+1)+A017113(n+1)*A028387(n)`
-/

namespace A069074.P7519959271872460018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1) + A017113 (n + 1) * A028387 n

end

end A069074.P7519959271872460018

namespace A069074

/-- `A017113(n+1)+A017113(n+1)*A028387(n)` -/
def P7519959271872460018.Spec : Prop :=
  ∀ n, P7519959271872460018.a n = A069074 n

theorem P7519959271872460018.correct : P7519959271872460018.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P7519959271872460018.a, A069074.P4700341989723259479.a, A017113, A017113.P3624354701485579327.a, A028387, A028387.P5954590561330899546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P15736493705746572128

`∑[A195824(n+1)]`
-/

namespace A069074.P15736493705746572128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069074.P15736493705746572128

namespace A069074

/-- `∑[A195824(n+1)]` -/
def P15736493705746572128.Spec : Prop :=
  ∀ n, P15736493705746572128.a n = A069074 n

end A069074

/-! ## A069074.P2284455523907381355

`A181773(n+2)/2`
-/

namespace A069074.P2284455523907381355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181773 (n + 2) : ℚ) / 2

end

end A069074.P2284455523907381355

namespace A069074

/-- `A181773(n+2)/2` -/
def P2284455523907381355.Spec : Prop :=
  ∀ n, P2284455523907381355.a n = (A069074 n : ℚ)

theorem P2284455523907381355.correct : P2284455523907381355.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P2284455523907381355.a, A069074.P4700341989723259479.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P17841819193185749942

`Δ[3*A072819(n+1)]`
-/

namespace A069074.P17841819193185749942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A072819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069074.P17841819193185749942

namespace A069074

/-- `Δ[3*A072819(n+1)]` -/
def P17841819193185749942.Spec : Prop :=
  ∀ n, P17841819193185749942.a n = A069074 n

theorem P17841819193185749942.correct : P17841819193185749942.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P17841819193185749942.f1, A069074.P17841819193185749942.a, A069074.P4700341989723259479.a, A072819, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P2262512068228495240

`A005904(n+1)-A005898(n+1)`
-/

namespace A069074.P2262512068228495240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005904 (n + 1) - A005898 (n + 1)

end

end A069074.P2262512068228495240

namespace A069074

/-- `A005904(n+1)-A005898(n+1)` -/
def P2262512068228495240.Spec : Prop :=
  ∀ n, P2262512068228495240.a n = A069074 n

theorem P2262512068228495240.correct : P2262512068228495240.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P2262512068228495240.a, A069074.P4700341989723259479.a, A005898, A005898.P8127451400230703254.a, A005904, A005904.P6150330656000877991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P2988002956742353057

`A316459(n+1)-A055112(n+1)`
-/

namespace A069074.P2988002956742353057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316459 (n + 1) - A055112 (n + 1)

end

end A069074.P2988002956742353057

namespace A069074

/-- `A316459(n+1)-A055112(n+1)` -/
def P2988002956742353057.Spec : Prop :=
  ∀ n, P2988002956742353057.a n = A069074 n

end A069074

/-! ## A069074.P10491680429835612017

`A079588(n+1)-A000384(n+2)`
-/

namespace A069074.P10491680429835612017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 (n + 1) - A000384 (n + 2)

end

end A069074.P10491680429835612017

namespace A069074

/-- `A079588(n+1)-A000384(n+2)` -/
def P10491680429835612017.Spec : Prop :=
  ∀ n, P10491680429835612017.a n = A069074 n

end A069074

/-! ## A069074.P14941139971014141677

`A100165(n+2)-A000578(n+2)`
-/

namespace A069074.P14941139971014141677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100165 (n + 2) - A000578 (n + 2)

end

end A069074.P14941139971014141677

namespace A069074

/-- `A100165(n+2)-A000578(n+2)` -/
def P14941139971014141677.Spec : Prop :=
  ∀ n, P14941139971014141677.a n = A069074 n

theorem P14941139971014141677.correct : P14941139971014141677.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P14941139971014141677.a, A069074.P4700341989723259479.a, A000578, A000578.P12162961755414704816.a, A100165, A100165.P5468383146734630604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P12374292619680298994

`A193228(n+2)-A005917(n+2)`
-/

namespace A069074.P12374292619680298994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193228 (n + 2) - A005917 (n + 2)

end

end A069074.P12374292619680298994

namespace A069074

/-- `A193228(n+2)-A005917(n+2)` -/
def P12374292619680298994.Spec : Prop :=
  ∀ n, P12374292619680298994.a n = A069074 n

theorem P12374292619680298994.correct : P12374292619680298994.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P12374292619680298994.a, A069074.P4700341989723259479.a, A005917, A005917.P593194106963301078.a, A193228, A193228.P3355603474307553126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069074

/-! ## A069074.P14474338463281113987

`A100173(n+2)-A100182(n+2)`
-/

namespace A069074.P14474338463281113987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100173 (n + 2) - A100182 (n + 2)

end

end A069074.P14474338463281113987

namespace A069074

/-- `A100173(n+2)-A100182(n+2)` -/
def P14474338463281113987.Spec : Prop :=
  ∀ n, P14474338463281113987.a n = A069074 n

end A069074

/-! ## A069074.P9716853606895439908

`A272871(n+1)+A272871(n+2)`
-/

namespace A069074.P9716853606895439908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 (n + 1) + A272871 (n + 2)

end

end A069074.P9716853606895439908

namespace A069074

/-- `A272871(n+1)+A272871(n+2)` -/
def P9716853606895439908.Spec : Prop :=
  ∀ n, P9716853606895439908.a n = A069074 n

theorem P9716853606895439908.correct : P9716853606895439908.Spec := by
  intro n
  simp only [A069074, Nat.add_sub_cancel, A069074.P9716853606895439908.a, A069074.P4700341989723259479.a, A272871, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069074

/-!
# A069075: a(n) = (4*n^2 - 1)^2.

The programs for A069075, the canonical program `A069075.P1012277660260982624` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069075 has offset 0).

The definition of A069075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n²-1)²` (program `A069075.P1012277660260982624`, by `A069075.P1012277660260982624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069075.P1012277660260982624

`(4*n²-1)²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069075

/-- `(4*n²-1)²` -/
def P1012277660260982624.Spec : Prop :=
  ∀ n, P1012277660260982624.a n = A069075 n

theorem P1012277660260982624.correct : P1012277660260982624.Spec := by
  intro n
  simp only [A069075]

end A069075

/-! ## A069075.P15974789155801750833

`or(1, -(2*n)²)^2`
-/

namespace A069075.P15974789155801750833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((2 * n) ^ 2 : ℤ)) ^ 2

end

end A069075.P15974789155801750833

namespace A069075

/-- `or(1, -(2*n)²)^2` -/
def P15974789155801750833.Spec : Prop :=
  ∀ n, P15974789155801750833.a n = A069075 n

end A069075

/-! ## A069075.P15952135562960585774

`xor(1, -(2*n)²)^2`
-/

namespace A069075.P15952135562960585774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-((2 * n) ^ 2 : ℤ)) ^ 2

end

end A069075.P15952135562960585774

namespace A069075

/-- `xor(1, -(2*n)²)^2` -/
def P15952135562960585774.Spec : Prop :=
  ∀ n, P15952135562960585774.a n = A069075 n

end A069075

/-! ## A069075.P16581361235798371104

`∑[record[lcm(2, n)^3]]+1`
-/

namespace A069075.P16581361235798371104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069075.P16581361235798371104

namespace A069075

/-- `∑[record[lcm(2, n)^3]]+1` -/
def P16581361235798371104.Spec : Prop :=
  ∀ n, (P16581361235798371104.a n : ℤ) = A069075 n

end A069075

/-! ## A069075.P5899268382031314974

`record[(n²-1)^gcd(2, n)]`
-/

namespace A069075.P5899268382031314974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) ^ Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069075.P5899268382031314974

namespace A069075

/-- `record[(n²-1)^gcd(2, n)]` -/
def P5899268382031314974.Spec : Prop :=
  ∀ n, P5899268382031314974.a n = A069075 n

end A069075

/-! ## A069075.P2994270294228780647

`8*C(2*n², 2)+1`
-/

namespace A069075.P2994270294228780647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (2 * n ^ 2) 2 + 1

end

end A069075.P2994270294228780647

namespace A069075

/-- `8*C(2*n², 2)+1` -/
def P2994270294228780647.Spec : Prop :=
  ∀ n, (P2994270294228780647.a n : ℤ) = A069075 n

theorem P2994270294228780647.correct : P2994270294228780647.Spec := by
  intro n
  simp only [A069075, Nat.add_sub_cancel, A069075.P2994270294228780647.a, A069075.P1012277660260982624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069075

/-! ## A069075.P6917892864166366468

`or(1, 8*C(2*n², 2))`
-/

namespace A069075.P6917892864166366468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * Nat.choose (2 * n ^ 2) 2)

end

end A069075.P6917892864166366468

namespace A069075

/-- `or(1, 8*C(2*n², 2))` -/
def P6917892864166366468.Spec : Prop :=
  ∀ n, (P6917892864166366468.a n : ℤ) = A069075 n

end A069075

/-! ## A069075.P11729780263927896779

`(1-Δ[C(2*n, 3)])^2`
-/

namespace A069075.P11729780263927896779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ^ 2

end

end A069075.P11729780263927896779

namespace A069075

/-- `(1-Δ[C(2*n, 3)])^2` -/
def P11729780263927896779.Spec : Prop :=
  ∀ n, P11729780263927896779.a n = A069075 n

theorem P11729780263927896779.correct : P11729780263927896779.Spec := by
  intro n
  simp only [A069075, Nat.add_sub_cancel, A069075.P11729780263927896779.f1, A069075.P11729780263927896779.a, A069075.P1012277660260982624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069075

/-! ## A069075.P17011573948045949226

`or(1, or(1, -(2*n)²)²)`
-/

namespace A069075.P17011573948045949226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.lor 1 (-((2 * n) ^ 2 : ℤ)) ^ 2)

end

end A069075.P17011573948045949226

namespace A069075

/-- `or(1, or(1, -(2*n)²)²)` -/
def P17011573948045949226.Spec : Prop :=
  ∀ n, P17011573948045949226.a n = A069075 n

end A069075

/-! ## A069075.P7714973689648070301

`record[(1-and(n, n+1)²)²]`
-/

namespace A069075.P7714973689648070301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land n (n + 1) ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069075.P7714973689648070301

namespace A069075

/-- `record[(1-and(n, n+1)²)²]` -/
def P7714973689648070301.Spec : Prop :=
  ∀ n, P7714973689648070301.a n = A069075 n

end A069075

/-! ## A069075.P8456907614999587629

`record[(and(n, n-1)²-1)²]`
-/

namespace A069075.P8456907614999587629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ((n : ℤ) - 1) ^ 2 - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069075.P8456907614999587629

namespace A069075

/-- `record[(and(n, n-1)²-1)²]` -/
def P8456907614999587629.Spec : Prop :=
  ∀ n, P8456907614999587629.a n = A069075 n

end A069075

/-! ## A069075.P12171443896564011379

`lcm((n-1+n)², Δ[n²]²)`
-/

namespace A069075.P12171443896564011379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - 1 + (n : ℤ)) ^ 2) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A069075.P12171443896564011379

namespace A069075

/-- `lcm((n-1+n)², Δ[n²]²)` -/
def P12171443896564011379.Spec : Prop :=
  ∀ n, (P12171443896564011379.a n : ℤ) = A069075 n

end A069075

/-! ## A069075.P978455976017097313

`floor((3-∑[a(n-1)-8])²)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A069075.P978455976017097313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A069075.P978455976017097313

namespace A069075

/-- `floor((3-∑[a(n-1)-8])²)` -/
def P978455976017097313.Spec : Prop :=
  ∀ n, P978455976017097313.a n = A069075 n

end A069075

/-! ## A069075.P16157500432582734201

`record[(n*(n+2))^(2*and(1, n))]`
-/

namespace A069075.P16157500432582734201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 2)) ^ (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069075.P16157500432582734201

namespace A069075

/-- `record[(n*(n+2))^(2*and(1, n))]` -/
def P16157500432582734201.Spec : Prop :=
  ∀ n, (P16157500432582734201.a n : ℤ) = A069075 n

end A069075

/-! ## A069075.P3142368798977006757

`a(n-1)+(4*n-2)^3` with `a(0)=1`
-/

namespace A069075.P3142368798977006757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((4 * n : ℤ) - 2) ^ 3

end

end A069075.P3142368798977006757

namespace A069075

/-- `a(n-1)+(4*n-2)^3` -/
def P3142368798977006757.Spec : Prop :=
  ∀ n, P3142368798977006757.a n = A069075 n

theorem P3142368798977006757.correct : P3142368798977006757.Spec := by
  intro n
  induction n with
  | zero => simp [A069075, A069075.P3142368798977006757.a, A069075.P1012277660260982624.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069075, Nat.add_sub_cancel, A069075.P3142368798977006757.a, A069075.P1012277660260982624.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069075

/-! ## A069075.P9950000971775152179

`xor(1, -(2*n))²*(2*n+1)²`
-/

namespace A069075.P9950000971775152179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ)) ^ 2 * ((2 * n + 1) ^ 2 : ℤ)

end

end A069075.P9950000971775152179

namespace A069075

/-- `xor(1, -(2*n))²*(2*n+1)²` -/
def P9950000971775152179.Spec : Prop :=
  ∀ n, P9950000971775152179.a n = A069075 n

end A069075

/-! ## A069075.P6227516267709589643

`∑[A111284(n+1)^3]`
-/

namespace A069075.P6227516267709589643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069075.P6227516267709589643

namespace A069075

/-- `∑[A111284(n+1)^3]` -/
def P6227516267709589643.Spec : Prop :=
  ∀ n, P6227516267709589643.a n = A069075 n

end A069075

/-! ## A069075.P16745748713223535188

`A144139(n)+(2*n)²`
-/

namespace A069075.P16745748713223535188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144139 n + ((2 * n) ^ 2 : ℤ)

end

end A069075.P16745748713223535188

namespace A069075

/-- `A144139(n)+(2*n)²` -/
def P16745748713223535188.Spec : Prop :=
  ∀ n, P16745748713223535188.a n = A069075 n

theorem P16745748713223535188.correct : P16745748713223535188.Spec := by
  intro n
  simp only [A069075, Nat.add_sub_cancel, A069075.P16745748713223535188.a, A069075.P1012277660260982624.a, A144139, A144139.P1469581140721025765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069075

/-! ## A069075.P16176498638171244586

`A000466(n)*A000466(n)`
-/

namespace A069075.P16176498638171244586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n * A000466 n

end

end A069075.P16176498638171244586

namespace A069075

/-- `A000466(n)*A000466(n)` -/
def P16176498638171244586.Spec : Prop :=
  ∀ n, P16176498638171244586.a n = A069075 n

theorem P16176498638171244586.correct : P16176498638171244586.Spec := by
  intro n
  simp only [A069075, Nat.add_sub_cancel, A069075.P16176498638171244586.a, A069075.P1012277660260982624.a, A000466, A000466.P5626493666969552810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069075

/-!
# A069076: a(n) = (4*n^2 - 1)^3.

The programs for A069076, the canonical program `A069076.P13284712890466576937` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069076 has offset 1).

The definition of A069076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)²-1)^3` (program `A069076.P13284712890466576937`, by `A069076.P13284712890466576937.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069076.P13284712890466576937

`(4*(n+1)²-1)^3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069076

/-- `(4*(n+1)²-1)^3` -/
def P13284712890466576937.Spec : Prop :=
  ∀ n, P13284712890466576937.a n = A069076 (n + 1)

theorem P13284712890466576937.correct : P13284712890466576937.Spec := by
  intro n
  simp only [A069076, Nat.add_sub_cancel]

end A069076

/-! ## A069076.P301858257907403065

`record[((n+3)*xor(1, n))^3]`
-/

namespace A069076.P301858257907403065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069076.P301858257907403065

namespace A069076

/-- `record[((n+3)*xor(1, n))^3]` -/
def P301858257907403065.Spec : Prop :=
  ∀ n, (P301858257907403065.a n : ℤ) = A069076 (n + 1)

end A069076

/-! ## A069076.P11936726467778232939

`A016755(n+1)*A016755(n)`
-/

namespace A069076.P11936726467778232939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (n + 1) * A016755 n

end

end A069076.P11936726467778232939

namespace A069076

/-- `A016755(n+1)*A016755(n)` -/
def P11936726467778232939.Spec : Prop :=
  ∀ n, P11936726467778232939.a n = A069076 (n + 1)

theorem P11936726467778232939.correct : P11936726467778232939.Spec := by
  intro n
  simp only [A069076, Nat.add_sub_cancel, A069076.P11936726467778232939.a, A069076.P13284712890466576937.a, A016755, A016755.P5941101717872313811.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069076

/-! ## A069076.P12884061727555483077

`sqrt(A016758(n+1)*A016758(n))`
-/

namespace A069076.P12884061727555483077
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016758 (n + 1) * A016758 n : ℝ)

end

end A069076.P12884061727555483077

namespace A069076

/-- `sqrt(A016758(n+1)*A016758(n))` -/
def P12884061727555483077.Spec : Prop :=
  ∀ n, P12884061727555483077.a n = (A069076 (n + 1) : ℝ)

end A069076

/-! ## A069076.P18436753862648225789

`∑[A281813(n)]²*∑[A281813(n)]`
-/

namespace A069076.P18436753862648225789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A069076.P18436753862648225789

namespace A069076

/-- `∑[A281813(n)]²*∑[A281813(n)]` -/
def P18436753862648225789.Spec : Prop :=
  ∀ n, P18436753862648225789.a n = A069076 (n + 1)

end A069076

/-! ## A069076.P8262998957772376048

`A016827(n+1)/A016827(n)*A016758(n)`
-/

namespace A069076.P8262998957772376048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016827 (n + 1) : ℚ) / (A016827 n : ℚ) * (A016758 n : ℚ)

end

end A069076.P8262998957772376048

namespace A069076

/-- `A016827(n+1)/A016827(n)*A016758(n)` -/
def P8262998957772376048.Spec : Prop :=
  ∀ n, P8262998957772376048.a n = (A069076 (n + 1) : ℚ)

theorem P8262998957772376048.correct : P8262998957772376048.Spec := by
  intro n
  simp only [A069076, Nat.add_sub_cancel, A069076.P8262998957772376048.a, A069076.P13284712890466576937.a, A016758, A016758.P10546800318422421596.a, A016827, A016827.P15145738709688113993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069076

/-! ## A069076.P18336588571470010681

`sqrt(A069075(n+1)^3)`
-/

namespace A069076.P18336588571470010681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069075 (n + 1) ^ 3 : ℝ)

end

end A069076.P18336588571470010681

namespace A069076

/-- `sqrt(A069075(n+1)^3)` -/
def P18336588571470010681.Spec : Prop :=
  ∀ n, P18336588571470010681.a n = (A069076 (n + 1) : ℝ)

end A069076

/-! ## A069076.P16942760545518775681

`A000466(n+1)*A069075(n+1)`
-/

namespace A069076.P16942760545518775681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (n + 1) * A069075 (n + 1)

end

end A069076.P16942760545518775681

namespace A069076

/-- `A000466(n+1)*A069075(n+1)` -/
def P16942760545518775681.Spec : Prop :=
  ∀ n, P16942760545518775681.a n = A069076 (n + 1)

theorem P16942760545518775681.correct : P16942760545518775681.Spec := by
  intro n
  simp only [A069076, Nat.add_sub_cancel, A069076.P16942760545518775681.a, A069076.P13284712890466576937.a, A000466, A000466.P5626493666969552810.a, A069075, A069075.P1012277660260982624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069076

/-! ## A069076.P2016926243812164244

`A016758(n)*A016947(n+1)/A016947(n)`
-/

namespace A069076.P2016926243812164244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016758 n * A016947 (n + 1) : ℚ) / (A016947 n : ℚ)

end

end A069076.P2016926243812164244

namespace A069076

/-- `A016758(n)*A016947(n+1)/A016947(n)` -/
def P2016926243812164244.Spec : Prop :=
  ∀ n, P2016926243812164244.a n = (A069076 (n + 1) : ℚ)

theorem P2016926243812164244.correct : P2016926243812164244.Spec := by
  intro n
  simp only [A069076, Nat.add_sub_cancel, A069076.P2016926243812164244.a, A069076.P13284712890466576937.a, A016758, A016758.P10546800318422421596.a, A016947, A016947.P4365293070950782915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069076

/-! ## A069076.P8938346290602765877

`A000466(n+1)*A016754(n+1)*A016754(n)`
-/

namespace A069076.P8938346290602765877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (n + 1) * A016754 (n + 1) * A016754 n

end

end A069076.P8938346290602765877

namespace A069076

/-- `A000466(n+1)*A016754(n+1)*A016754(n)` -/
def P8938346290602765877.Spec : Prop :=
  ∀ n, P8938346290602765877.a n = A069076 (n + 1)

theorem P8938346290602765877.correct : P8938346290602765877.Spec := by
  intro n
  simp only [A069076, Nat.add_sub_cancel, A069076.P8938346290602765877.a, A069076.P13284712890466576937.a, A000466, A000466.P5626493666969552810.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069076

/-! ## A069076.P6160513040543553443

`A005563(2*n+1)*A069075(n+1)`
-/

namespace A069076.P6160513040543553443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (2 * n + 1) * A069075 (n + 1)

end

end A069076.P6160513040543553443

namespace A069076

/-- `A005563(2*n+1)*A069075(n+1)` -/
def P6160513040543553443.Spec : Prop :=
  ∀ n, P6160513040543553443.a n = A069076 (n + 1)

theorem P6160513040543553443.correct : P6160513040543553443.Spec := by
  intro n
  simp only [A069076, Nat.add_sub_cancel, A069076.P6160513040543553443.a, A069076.P13284712890466576937.a, A005563, A005563.P13300161655551567421.a, A069075, A069075.P1012277660260982624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069076

/-! ## A069076.P2985183531138226373

`A069075(n+1)*A070260(2*n+1)`
-/

namespace A069076.P2985183531138226373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069075 (n + 1) * A070260 (2 * n + 1)

end

end A069076.P2985183531138226373

namespace A069076

/-- `A069075(n+1)*A070260(2*n+1)` -/
def P2985183531138226373.Spec : Prop :=
  ∀ n, P2985183531138226373.a n = A069076 (n + 1)

end A069076

/-! ## A069076.P10696787369324351089

`A000466(n+1)*A171522(2*n+1)`
-/

namespace A069076.P10696787369324351089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (n + 1) * A171522 (2 * n + 1)

end

end A069076.P10696787369324351089

namespace A069076

/-- `A000466(n+1)*A171522(2*n+1)` -/
def P10696787369324351089.Spec : Prop :=
  ∀ n, P10696787369324351089.a n = A069076 (n + 1)

end A069076

/-! ## A069076.P15228260772390653545

`A069075(n+1)*A142717(2*n+1)`
-/

namespace A069076.P15228260772390653545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069075 (n + 1) * A142717 (2 * n + 1)

end

end A069076.P15228260772390653545

namespace A069076

/-- `A069075(n+1)*A142717(2*n+1)` -/
def P15228260772390653545.Spec : Prop :=
  ∀ n, P15228260772390653545.a n = A069076 (n + 1)

end A069076

/-! ## A069076.P10113201108420709229

`A069075(n+1)*A198148(2*n+1)`
-/

namespace A069076.P10113201108420709229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069075 (n + 1) * A198148 (2 * n + 1)

end

end A069076.P10113201108420709229

namespace A069076

/-- `A069075(n+1)*A198148(2*n+1)` -/
def P10113201108420709229.Spec : Prop :=
  ∀ n, P10113201108420709229.a n = A069076 (n + 1)

end A069076

/-! ## A069076.P6942036034701893736

`record[A070260(n+1)²*A070260(n+1)]`
-/

namespace A069076.P6942036034701893736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070260 (n + 1) ^ 2 * A070260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069076.P6942036034701893736

namespace A069076

/-- `record[A070260(n+1)²*A070260(n+1)]` -/
def P6942036034701893736.Spec : Prop :=
  ∀ n, P6942036034701893736.a n = A069076 (n + 1)

end A069076

/-! ## A069076.P3760613536808938133

`record[A198148(n+1)²*A198148(n+1)]`
-/

namespace A069076.P3760613536808938133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 (n + 1) ^ 2 * A198148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069076.P3760613536808938133

namespace A069076

/-- `record[A198148(n+1)²*A198148(n+1)]` -/
def P3760613536808938133.Spec : Prop :=
  ∀ n, P3760613536808938133.a n = A069076 (n + 1)

end A069076

/-! ## A069076.P10675612438037088662

`record[A142705(n+2)²*A142705(n+2)]`
-/

namespace A069076.P10675612438037088662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (n + 2) ^ 2 * A142705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069076.P10675612438037088662

namespace A069076

/-- `record[A142705(n+2)²*A142705(n+2)]` -/
def P10675612438037088662.Spec : Prop :=
  ∀ n, P10675612438037088662.a n = A069076 (n + 1)

end A069076

/-! ## A069076.P4573518358718197929

`A005563(2*n+1)*A099761(2*n+1)`
-/

namespace A069076.P4573518358718197929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (2 * n + 1) * A099761 (2 * n + 1)

end

end A069076.P4573518358718197929

namespace A069076

/-- `A005563(2*n+1)*A099761(2*n+1)` -/
def P4573518358718197929.Spec : Prop :=
  ∀ n, P4573518358718197929.a n = A069076 (n + 1)

theorem P4573518358718197929.correct : P4573518358718197929.Spec := by
  intro n
  simp only [A069076, Nat.add_sub_cancel, A069076.P4573518358718197929.a, A069076.P13284712890466576937.a, A005563, A005563.P13300161655551567421.a, A099761, A099761.P12819074216923447249.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069076

/-!
# A069077: Triangular numbers such that the product of digits is also a (positive) triangular number.

The programs for A069077, there is no canonical definition to state claims against.
-/

/-! ## A069077.P18101855730375423308

`∩[A061380(n+1), A214678(n+1)]`
-/

namespace A069077.P18101855730375423308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069077.P18101855730375423308

/-! ## A069077.P352553057917153293

`∩[A061380(n+1), A062998(n+1)]`
-/

namespace A069077.P352553057917153293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069077.P352553057917153293

/-! ## A069077.P18274402418366178541

`filter[A061380(n+1), A168046(#)]`
-/

namespace A069077.P18274402418366178541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A069077.P18274402418366178541

/-! ## A069077.P10638028892957641668

`eq[A073424(A007954(n)), A074909(n)]`
-/

namespace A069077.P10638028892957641668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069077.P10638028892957641668

/-! ## A069077.P2530499409858754096

`eq[A073424(A007954(n)), A132813(n)]`
-/

namespace A069077.P2530499409858754096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069077.P2530499409858754096

/-!
# A069078: a(n) = n*(4*n^4 + 1).

The programs for A069078, the canonical program `A069078.P9288704633967038313` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069078 has offset 0).

The definition of A069078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n^4+1)` (program `A069078.P9288704633967038313`, by `A069078.P9288704633967038313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069078.P9288704633967038313

`n*(4*n^4+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069078

/-- `n*(4*n^4+1)` -/
def P9288704633967038313.Spec : Prop :=
  ∀ n, (P9288704633967038313.a n : ℤ) = A069078 n

theorem P9288704633967038313.correct : P9288704633967038313.Spec := by
  intro n
  simp only [A069078]

end A069078

/-! ## A069078.P2122828211591570021

`lcm(n, (2*n²)²+1)`
-/

namespace A069078.P2122828211591570021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((2 * n ^ 2) ^ 2 + 1)

end

end A069078.P2122828211591570021

namespace A069078

/-- `lcm(n, (2*n²)²+1)` -/
def P2122828211591570021.Spec : Prop :=
  ∀ n, (P2122828211591570021.a n : ℤ) = A069078 n

end A069078

/-! ## A069078.P13228870838484840783

`4*A000584(n)+n`
-/

namespace A069078.P13228870838484840783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000584 n + (n : ℤ)

end

end A069078.P13228870838484840783

namespace A069078

/-- `4*A000584(n)+n` -/
def P13228870838484840783.Spec : Prop :=
  ∀ n, P13228870838484840783.a n = A069078 n

theorem P13228870838484840783.correct : P13228870838484840783.Spec := by
  intro n
  simp only [A069078, Nat.add_sub_cancel, A069078.P13228870838484840783.a, A069078.P9288704633967038313.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069078

/-! ## A069078.P9611594981254446375

`n*A141046(n)+n`
-/

namespace A069078.P9611594981254446375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141046 n + (n : ℤ)

end

end A069078.P9611594981254446375

namespace A069078

/-- `n*A141046(n)+n` -/
def P9611594981254446375.Spec : Prop :=
  ∀ n, P9611594981254446375.a n = A069078 n

theorem P9611594981254446375.correct : P9611594981254446375.Spec := by
  intro n
  simp only [A069078, Nat.add_sub_cancel, A069078.P9611594981254446375.a, A069078.P9288704633967038313.a, A141046, A141046.P17031355750207900223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069078

/-! ## A069078.P18322795980114641037

`A054604(2*n)/8`
-/

namespace A069078.P18322795980114641037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054604 (2 * n) : ℚ) / 8

end

end A069078.P18322795980114641037

namespace A069078

/-- `A054604(2*n)/8` -/
def P18322795980114641037.Spec : Prop :=
  ∀ n, P18322795980114641037.a n = (A069078 n : ℚ)

theorem P18322795980114641037.correct : P18322795980114641037.Spec := by
  intro n
  simp only [A069078, Nat.add_sub_cancel, A069078.P18322795980114641037.a, A069078.P9288704633967038313.a, A054604, A054604.P9632643687677748139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069078

/-! ## A069078.P13466598681531286955

`4*n*A000290(n²)+n`
-/

namespace A069078.P13466598681531286955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * A000290 (n ^ 2) + (n : ℤ)

end

end A069078.P13466598681531286955

namespace A069078

/-- `4*n*A000290(n²)+n` -/
def P13466598681531286955.Spec : Prop :=
  ∀ n, P13466598681531286955.a n = A069078 n

theorem P13466598681531286955.correct : P13466598681531286955.Spec := by
  intro n
  simp only [A069078, Nat.add_sub_cancel, A069078.P13466598681531286955.a, A069078.P9288704633967038313.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069078

/-! ## A069078.P4414597928239823580

`A144965(n²)/A008574(n)`
-/

namespace A069078.P4414597928239823580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144965 (n ^ 2) : ℚ) / (A008574 n : ℚ)

end

end A069078.P4414597928239823580

namespace A069078

/-- `A144965(n²)/A008574(n)` -/
def P4414597928239823580.Spec : Prop :=
  ∀ n, P4414597928239823580.a n = (A069078 n : ℚ)

end A069078

/-! ## A069078.P17928230531006452554

`A144965(n²)/A004277(2*n)`
-/

namespace A069078.P17928230531006452554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144965 (n ^ 2) : ℚ) / (A004277 (2 * n) : ℚ)

end

end A069078.P17928230531006452554

namespace A069078

/-- `A144965(n²)/A004277(2*n)` -/
def P17928230531006452554.Spec : Prop :=
  ∀ n, P17928230531006452554.a n = (A069078 n : ℚ)

end A069078

/-!
# A069079: a(n) = (2*n+1)*(2*n+2)*(2*n+4)*(2*n+5).

The programs for A069079, the canonical program `A069079.P8310340519114639928` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069079 has offset 0).

The definition of A069079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+4)*(2*n+5)` (program `A069079.P8310340519114639928`, by `A069079.P8310340519114639928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069079.P673166168153785326

`16*n^4+96*n^3+196*n²+156*n+40`
-/

namespace A069079.P673166168153785326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n ^ 4 + 96 * n ^ 3 + 196 * n ^ 2 + 156 * n + 40

end

end A069079.P673166168153785326

namespace A069079

/-- `16*n^4+96*n^3+196*n²+156*n+40` -/
def P673166168153785326.Spec : Prop :=
  ∀ n, (P673166168153785326.a n : ℤ) = A069079 n

theorem P673166168153785326.correct : P673166168153785326.Spec := by
  intro n
  simp only [A069079, Nat.add_sub_cancel, A069079.P673166168153785326.a, A069079.P8310340519114639928.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069079

/-! ## A069079.P8310340519114639928

`(2*n+1)*(2*n+2)*(2*n+4)*(2*n+5)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069079

/-- `(2*n+1)*(2*n+2)*(2*n+4)*(2*n+5)` -/
def P8310340519114639928.Spec : Prop :=
  ∀ n, (P8310340519114639928.a n : ℤ) = A069079 n

theorem P8310340519114639928.correct : P8310340519114639928.Spec := by
  intro n
  simp only [A069079]

end A069079

/-! ## A069079.P2142499875781626992

`∑[8*(n+1)*A108928(n+1)]`
-/

namespace A069079.P2142499875781626992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) * A108928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069079.P2142499875781626992

namespace A069079

/-- `∑[8*(n+1)*A108928(n+1)]` -/
def P2142499875781626992.Spec : Prop :=
  ∀ n, P2142499875781626992.a n = A069079 n

end A069079

/-! ## A069079.P15925049766478081542

`∑[A163322(2*(n+1))]`
-/

namespace A069079.P15925049766478081542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163322 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069079.P15925049766478081542

namespace A069079

/-- `∑[A163322(2*(n+1))]` -/
def P15925049766478081542.Spec : Prop :=
  ∀ n, P15925049766478081542.a n = A069079 n

end A069079

/-! ## A069079.P3506531816868582626

`A187297(∑[4*(n+1)])`
-/

namespace A069079.P3506531816868582626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069079.P3506531816868582626

namespace A069079

/-- `A187297(∑[4*(n+1)])` -/
def P3506531816868582626.Spec : Prop :=
  ∀ n, P3506531816868582626.a n = A069079 n

end A069079

/-!
# A069080: a(n) = (2n+1)*(2n+2)*(2n+6)*(2n+7).

The programs for A069080, the canonical program `A069080.P13488842952181116077` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069080 has offset 0).

The definition of A069080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+6)*(2*n+7)` (program `A069080.P13488842952181116077`, by `A069080.P13488842952181116077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069080.P4939605844169502057

`16*n^4+128*n^3+332*n²+304*n+84`
-/

namespace A069080.P4939605844169502057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n ^ 4 + 128 * n ^ 3 + 332 * n ^ 2 + 304 * n + 84

end

end A069080.P4939605844169502057

namespace A069080

/-- `16*n^4+128*n^3+332*n²+304*n+84` -/
def P4939605844169502057.Spec : Prop :=
  ∀ n, (P4939605844169502057.a n : ℤ) = A069080 n

theorem P4939605844169502057.correct : P4939605844169502057.Spec := by
  intro n
  simp only [A069080, Nat.add_sub_cancel, A069080.P4939605844169502057.a, A069080.P13488842952181116077.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069080

/-! ## A069080.P13488842952181116077

`(2*n+1)*(2*n+2)*(2*n+6)*(2*n+7)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069080

/-- `(2*n+1)*(2*n+2)*(2*n+6)*(2*n+7)` -/
def P13488842952181116077.Spec : Prop :=
  ∀ n, (P13488842952181116077.a n : ℤ) = A069080 n

theorem P13488842952181116077.correct : P13488842952181116077.Spec := by
  intro n
  simp only [A069080]

end A069080

/-! ## A069080.P16003282016067943796

`record[∑[n+1]*A046092(A197916(2*(n+1)))]`
-/

namespace A069080.P16003282016067943796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A046092 (A197916 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069080.P16003282016067943796

namespace A069080

/-- `record[∑[n+1]*A046092(A197916(2*(n+1)))]` -/
def P16003282016067943796.Spec : Prop :=
  ∀ n, P16003282016067943796.a n = A069080 n

end A069080

/-! ## A069080.P8101466268532941025

`A164006(A028560(2*n+1))`
-/

namespace A069080.P8101466268532941025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164006 (A028560 (2 * n + 1)).toNat

end

end A069080.P8101466268532941025

namespace A069080

/-- `A164006(A028560(2*n+1))` -/
def P8101466268532941025.Spec : Prop :=
  ∀ n, P8101466268532941025.a n = A069080 n

end A069080

/-! ## A069080.P1693594312087089876

`A104675(A104675(2*n)+2*n)`
-/

namespace A069080.P1693594312087089876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 (A104675 (2 * n) + (2 * n : ℤ)).toNat

end

end A069080.P1693594312087089876

namespace A069080

/-- `A104675(A104675(2*n)+2*n)` -/
def P1693594312087089876.Spec : Prop :=
  ∀ n, P1693594312087089876.a n = A069080 n

end A069080

/-!
# A069081: Numbers n such that sigma(n)/tau(n) has denominator 2.

The programs for A069081, the canonical program `A069081.P13948387109957077000` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069081 has offset 1).

The definition of A069081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 899 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069081.P1404206556904153516

`eq[3, A176801(n+1)]+1`
-/

namespace A069081.P1404206556904153516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069081.P1404206556904153516

namespace A069081

/-- `eq[3, A176801(n+1)]+1` -/
def P1404206556904153516.Spec : Prop :=
  ∀ n, (P1404206556904153516.a n : ℤ) = A069081 (n + 1)

end A069081

/-! ## A069081.P13948387109957077000

`eq[2, A057021(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069081

/-- `eq[2, A057021(n+1)]+1` -/
def P13948387109957077000.Spec : Prop :=
  ∀ n, (P13948387109957077000.a n : ℤ) = A069081 (n + 1)

theorem P13948387109957077000.correct : P13948387109957077000.Spec := by
  intro n
  simp only [A069081, Nat.add_sub_cancel]

end A069081

/-! ## A069081.P15119230453130698146

`eq[2, A057021(A028310(n))]`
-/

namespace A069081.P15119230453130698146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069081.P15119230453130698146

namespace A069081

/-- `eq[2, A057021(A028310(n))]` -/
def P15119230453130698146.Spec : Prop :=
  ∀ n, (P15119230453130698146.a n : ℤ) = A069081 (n + 1)

end A069081

/-! ## A069081.P10111652873690580789

`A014681(eq[2, A057021(n+1)])`
-/

namespace A069081.P10111652873690580789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069081.P10111652873690580789

namespace A069081

/-- `A014681(eq[2, A057021(n+1)])` -/
def P10111652873690580789.Spec : Prop :=
  ∀ n, P10111652873690580789.a n = A069081 (n + 1)

end A069081

/-! ## A069081.P10124088748681515486

`A015906(eq[2, A057021(n+1)])`
-/

namespace A069081.P10124088748681515486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069081.P10124088748681515486

namespace A069081

/-- `A015906(eq[2, A057021(n+1)])` -/
def P10124088748681515486.Spec : Prop :=
  ∀ n, P10124088748681515486.a n = A069081 (n + 1)

end A069081

/-! ## A069081.P7186113520215440239

`A020725(eq[2, A057021(n+1)])`
-/

namespace A069081.P7186113520215440239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069081.P7186113520215440239

namespace A069081

/-- `A020725(eq[2, A057021(n+1)])` -/
def P7186113520215440239.Spec : Prop :=
  ∀ n, P7186113520215440239.a n = A069081 (n + 1)

end A069081

/-! ## A069081.P2865535917053978677

`A014681(eq[3, A176801(n+1)])`
-/

namespace A069081.P2865535917053978677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069081.P2865535917053978677

namespace A069081

/-- `A014681(eq[3, A176801(n+1)])` -/
def P2865535917053978677.Spec : Prop :=
  ∀ n, P2865535917053978677.a n = A069081 (n + 1)

end A069081

/-! ## A069081.P5860271000756661478

`eq[2, A057021(A000007(n)+n)]`
-/

namespace A069081.P5860271000756661478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069081.P5860271000756661478

namespace A069081

/-- `eq[2, A057021(A000007(n)+n)]` -/
def P5860271000756661478.Spec : Prop :=
  ∀ n, (P5860271000756661478.a n : ℤ) = A069081 (n + 1)

end A069081

/-! ## A069081.P6600064296414026305

`eq[2, A057021(A130706(n)+n)]`
-/

namespace A069081.P6600064296414026305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069081.P6600064296414026305

namespace A069081

/-- `eq[2, A057021(A130706(n)+n)]` -/
def P6600064296414026305.Spec : Prop :=
  ∀ n, (P6600064296414026305.a n : ℤ) = A069081 (n + 1)

end A069081

/-! ## A069081.P7586878971773138263

`eq[2, A057021(A065033(2*n))]`
-/

namespace A069081.P7586878971773138263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069081.P7586878971773138263

namespace A069081

/-- `eq[2, A057021(A065033(2*n))]` -/
def P7586878971773138263.Spec : Prop :=
  ∀ n, (P7586878971773138263.a n : ℤ) = A069081 (n + 1)

end A069081

/-! ## A069081.P428459220493106759

`eq[2, A057021(A334998(n+1))]`
-/

namespace A069081.P428459220493106759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A334998 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069081.P428459220493106759

namespace A069081

/-- `eq[2, A057021(A334998(n+1))]` -/
def P428459220493106759.Spec : Prop :=
  ∀ n, (P428459220493106759.a n : ℤ) = A069081 (n + 1)

end A069081

/-!
# A069082: Numbers n such that sigma(n)/tau(n) has denominator 3.

The programs for A069082, the canonical program `A069082.P1777789710719873366` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069082 has offset 1).

The definition of A069082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069082.P10700225132427059652

`eq[3, A057021(n+1)]+1`
-/

namespace A069082.P10700225132427059652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069082.P10700225132427059652

namespace A069082

/-- `eq[3, A057021(n+1)]+1` -/
def P10700225132427059652.Spec : Prop :=
  ∀ n, (P10700225132427059652.a n : ℤ) = A069082 (n + 1)

end A069082

/-! ## A069082.P6840948596917684743

`eq[3, A057021(A028310(n))]`
-/

namespace A069082.P6840948596917684743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069082.P6840948596917684743

namespace A069082

/-- `eq[3, A057021(A028310(n))]` -/
def P6840948596917684743.Spec : Prop :=
  ∀ n, (P6840948596917684743.a n : ℤ) = A069082 (n + 1)

end A069082

/-! ## A069082.P7748905253874607130

`eq[3, A057021(A000007(n)+n)]`
-/

namespace A069082.P7748905253874607130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069082.P7748905253874607130

namespace A069082

/-- `eq[3, A057021(A000007(n)+n)]` -/
def P7748905253874607130.Spec : Prop :=
  ∀ n, (P7748905253874607130.a n : ℤ) = A069082 (n + 1)

end A069082

/-! ## A069082.P14801590123744845598

`eq[3, A057021(A130706(n)+n)]`
-/

namespace A069082.P14801590123744845598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069082.P14801590123744845598

namespace A069082

/-- `eq[3, A057021(A130706(n)+n)]` -/
def P14801590123744845598.Spec : Prop :=
  ∀ n, (P14801590123744845598.a n : ℤ) = A069082 (n + 1)

end A069082

/-! ## A069082.P1777789710719873366

`eq[A009278(n+1), A272027(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069082

/-- `eq[A009278(n+1), A272027(n+1)]+1` -/
def P1777789710719873366.Spec : Prop :=
  ∀ n, (P1777789710719873366.a n : ℤ) = A069082 (n + 1)

theorem P1777789710719873366.correct : P1777789710719873366.Spec := by
  intro n
  simp only [A069082, Nat.add_sub_cancel]

end A069082

/-! ## A069082.P9724031396610239906

`eq[3, A057021(A065033(2*n))]`
-/

namespace A069082.P9724031396610239906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069082.P9724031396610239906

namespace A069082

/-- `eq[3, A057021(A065033(2*n))]` -/
def P9724031396610239906.Spec : Prop :=
  ∀ n, (P9724031396610239906.a n : ℤ) = A069082 (n + 1)

end A069082

/-! ## A069082.P1828552493739198879

`eq[3, A057021(A233583(n+1))]`
-/

namespace A069082.P1828552493739198879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069082.P1828552493739198879

namespace A069082

/-- `eq[3, A057021(A233583(n+1))]` -/
def P1828552493739198879.Spec : Prop :=
  ∀ n, (P1828552493739198879.a n : ℤ) = A069082 (n + 1)

end A069082

/-!
# A069083: Numbers n such that sigma(n)/tau(n) has denominator 4.

The programs for A069083, the canonical program `A069083.P18395257980087635032` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069083 has offset 1).

The definition of A069083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069083.P2032520665424883433

`eq[4, A057021(n+1)]+1`
-/

namespace A069083.P2032520665424883433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069083.P2032520665424883433

namespace A069083

/-- `eq[4, A057021(n+1)]+1` -/
def P2032520665424883433.Spec : Prop :=
  ∀ n, (P2032520665424883433.a n : ℤ) = A069083 (n + 1)

end A069083

/-! ## A069083.P13592384346602642382

`eq[4, A057021(A028310(n))]`
-/

namespace A069083.P13592384346602642382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069083.P13592384346602642382

namespace A069083

/-- `eq[4, A057021(A028310(n))]` -/
def P13592384346602642382.Spec : Prop :=
  ∀ n, (P13592384346602642382.a n : ℤ) = A069083 (n + 1)

end A069083

/-! ## A069083.P18334531909913740761

`A014681(eq[4, A057021(n+1)])`
-/

namespace A069083.P18334531909913740761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069083.P18334531909913740761

namespace A069083

/-- `A014681(eq[4, A057021(n+1)])` -/
def P18334531909913740761.Spec : Prop :=
  ∀ n, P18334531909913740761.a n = A069083 (n + 1)

end A069083

/-! ## A069083.P17231909068569958732

`A015906(eq[4, A057021(n+1)])`
-/

namespace A069083.P17231909068569958732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069083.P17231909068569958732

namespace A069083

/-- `A015906(eq[4, A057021(n+1)])` -/
def P17231909068569958732.Spec : Prop :=
  ∀ n, P17231909068569958732.a n = A069083 (n + 1)

end A069083

/-! ## A069083.P18134271640418470042

`A065475(eq[4, A057021(n+1)])`
-/

namespace A069083.P18134271640418470042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069083.P18134271640418470042

namespace A069083

/-- `A065475(eq[4, A057021(n+1)])` -/
def P18134271640418470042.Spec : Prop :=
  ∀ n, P18134271640418470042.a n = A069083 (n + 1)

end A069083

/-! ## A069083.P18395257980087635032

`eq[A009278(n+1), A239050(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069083

/-- `eq[A009278(n+1), A239050(n+1)]+1` -/
def P18395257980087635032.Spec : Prop :=
  ∀ n, (P18395257980087635032.a n : ℤ) = A069083 (n + 1)

theorem P18395257980087635032.correct : P18395257980087635032.Spec := by
  intro n
  simp only [A069083, Nat.add_sub_cancel]

end A069083

/-! ## A069083.P17939766025380526102

`A008574(eq[4, A057021(A008574(n))])`
-/

namespace A069083.P17939766025380526102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069083.P17939766025380526102

namespace A069083

/-- `A008574(eq[4, A057021(A008574(n))])` -/
def P17939766025380526102.Spec : Prop :=
  ∀ n, P17939766025380526102.a n = A069083 (n + 1)

end A069083

/-! ## A069083.P18283711675642922313

`A065475(eq[A009278(n+1), A239050(n+1)])`
-/

namespace A069083.P18283711675642922313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069083.P18283711675642922313

namespace A069083

/-- `A065475(eq[A009278(n+1), A239050(n+1)])` -/
def P18283711675642922313.Spec : Prop :=
  ∀ n, P18283711675642922313.a n = A069083 (n + 1)

end A069083

/-!
# A069084: Numbers n such that sigma(n)/tau(n) has denominator 5.

The programs for A069084, the canonical program `A069084.P9884750403589385875` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069084 has offset 1).

The definition of A069084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069084.P9884750403589385875

`eq[5, A057021(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069084

/-- `eq[5, A057021(n+1)]+1` -/
def P9884750403589385875.Spec : Prop :=
  ∀ n, (P9884750403589385875.a n : ℤ) = A069084 (n + 1)

theorem P9884750403589385875.correct : P9884750403589385875.Spec := by
  intro n
  simp only [A069084, Nat.add_sub_cancel]

end A069084

/-! ## A069084.P425628470405125240

`eq[5, A057021(A028310(n))]`
-/

namespace A069084.P425628470405125240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069084.P425628470405125240

namespace A069084

/-- `eq[5, A057021(A028310(n))]` -/
def P425628470405125240.Spec : Prop :=
  ∀ n, (P425628470405125240.a n : ℤ) = A069084 (n + 1)

end A069084

/-! ## A069084.P15703168591271823324

`A020725(eq[5, A057021(n+1)])`
-/

namespace A069084.P15703168591271823324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069084.P15703168591271823324

namespace A069084

/-- `A020725(eq[5, A057021(n+1)])` -/
def P15703168591271823324.Spec : Prop :=
  ∀ n, P15703168591271823324.a n = A069084 (n + 1)

end A069084

/-! ## A069084.P6340870975150954227

`A065475(eq[5, A057021(n+1)])`
-/

namespace A069084.P6340870975150954227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069084.P6340870975150954227

namespace A069084

/-- `A065475(eq[5, A057021(n+1)])` -/
def P6340870975150954227.Spec : Prop :=
  ∀ n, P6340870975150954227.a n = A069084 (n + 1)

end A069084

/-! ## A069084.P7620887022301391426

`eq[5, A057021(A130706(n)+n)]`
-/

namespace A069084.P7620887022301391426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069084.P7620887022301391426

namespace A069084

/-- `eq[5, A057021(A130706(n)+n)]` -/
def P7620887022301391426.Spec : Prop :=
  ∀ n, (P7620887022301391426.a n : ℤ) = A069084 (n + 1)

end A069084

/-! ## A069084.P4715301320601804229

`eq[5, A057021(A065033(2*n))]`
-/

namespace A069084.P4715301320601804229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069084.P4715301320601804229

namespace A069084

/-- `eq[5, A057021(A065033(2*n))]` -/
def P4715301320601804229.Spec : Prop :=
  ∀ n, (P4715301320601804229.a n : ℤ) = A069084 (n + 1)

end A069084

/-!
# A069085: Abundant numbers n such that n = sigma(k) - 2k, where k = sigma(n) - 2n.

The programs for A069085, there is no canonical definition to state claims against.
-/

/-! ## A069085.P8812122546046635436

`A113285(A350833(n+1)+A014602(n+1))`
-/

namespace A069085.P8812122546046635436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113285 (A350833 (n + 1) + A014602 (n + 1)).toNat

end

end A069085.P8812122546046635436

/-! ## A069085.P12453410720795236519

`A113285(or(A113294(n+2), A113298(2*n)))`
-/

namespace A069085.P12453410720795236519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113285 (Int.lor (A113294 (n + 2)) (A113298 (2 * n))).toNat

end

end A069085.P12453410720795236519

/-!
# A069087: Numbers m such that (1/m)*Sum_{k=1..m} core(k) > phi(m) where core(n) = A007913(n) is the squarefree part of n: the smallest number such that n*a(n) is a square and phi(n) = A000010(n) is the Euler totient function.

The programs for A069087, there is no canonical definition to state claims against.
-/

/-! ## A069087.P13463368716942453834

`or(6*A023803(n+1), A157304(A151800(n)))`
-/

namespace A069087.P13463368716942453834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (6 * A023803 (n + 1)) (A157304 (A151800 n).toNat)

end

end A069087.P13463368716942453834

/-! ## A069087.P16113240724963542118

`2*A296515(A020753(n+2))`
-/

namespace A069087.P16113240724963542118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296515 (A020753 (n + 2)).toNat

end

end A069087.P16113240724963542118

/-! ## A069087.P4991817987779153882

`A353526(A000079(n))*A360015(n+1)`
-/

namespace A069087.P4991817987779153882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353526 (A000079 n).toNat * A360015 (n + 1)

end

end A069087.P4991817987779153882

/-! ## A069087.P8851492911997559557

`A157532(A000041(2*n))*A360015(n+1)`
-/

namespace A069087.P8851492911997559557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (A000041 (2 * n)).toNat * A360015 (n + 1)

end

end A069087.P8851492911997559557

/-!
# A069088: a(n) = Sum_{d|n} core(d) where d are the divisors of n and where core(d) is the squarefree part of d: the smallest number such that d*core(d) is a square.

The programs for A069088, the canonical program `A069088.P2737042877264536650` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069088 has offset 1).

The definition of A069088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069088.P13575913781403346381

`∑{d}[n+1, A007913(#)]`
-/

namespace A069088.P13575913781403346381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d

end

end A069088.P13575913781403346381

namespace A069088

/-- `∑{d}[n+1, A007913(#)]` -/
def P13575913781403346381.Spec : Prop :=
  ∀ n, P13575913781403346381.a n = A069088 (n + 1)

end A069088

/-! ## A069088.P14705671127145677422

`∑{d}[n+1, sqrt(A055491(#))]`
-/

namespace A069088.P14705671127145677422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A055491 d : ℝ)

end

end A069088.P14705671127145677422

namespace A069088

/-- `∑{d}[n+1, sqrt(A055491(#))]` -/
def P14705671127145677422.Spec : Prop :=
  ∀ n, P14705671127145677422.a n = (A069088 (n + 1) : ℝ)

end A069088

/-! ## A069088.P9389526716783398663

`∑{d}[n+1, #-A326128(#)]`
-/

namespace A069088.P9389526716783398663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A326128 d)

end

end A069088.P9389526716783398663

namespace A069088

/-- `∑{d}[n+1, #-A326128(#)]` -/
def P9389526716783398663.Spec : Prop :=
  ∀ n, P9389526716783398663.a n = A069088 (n + 1)

end A069088

/-! ## A069088.P321673734610385943

`∑{d}[n+1, #/A008833(#)]`
-/

namespace A069088.P321673734610385943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A008833 d : ℚ)

end

end A069088.P321673734610385943

namespace A069088

/-- `∑{d}[n+1, #/A008833(#)]` -/
def P321673734610385943.Spec : Prop :=
  ∀ n, P321673734610385943.a n = (A069088 (n + 1) : ℚ)

end A069088

/-! ## A069088.P2515150034754717875

`∑{d}[n+1, #/A000188(#)²]`
-/

namespace A069088.P2515150034754717875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A000188 d ^ 2 : ℚ)

end

end A069088.P2515150034754717875

namespace A069088

/-- `∑{d}[n+1, #/A000188(#)²]` -/
def P2515150034754717875.Spec : Prop :=
  ∀ n, P2515150034754717875.a n = (A069088 (n + 1) : ℚ)

end A069088

/-! ## A069088.P12959913879103825815

`∑{d}[n+1, A010052(#)*A048250((n+1)/#)]`
-/

namespace A069088.P12959913879103825815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069088.P12959913879103825815

namespace A069088

/-- `∑{d}[n+1, A010052(#)*A048250((n+1)/#)]` -/
def P12959913879103825815.Spec : Prop :=
  ∀ n, P12959913879103825815.a n = A069088 (n + 1)

end A069088

/-! ## A069088.P4290994238797010921

`∑{d}[n+1, A008836(#)*A319132((n+1)/#)]`
-/

namespace A069088.P4290994238797010921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069088.P4290994238797010921

namespace A069088

/-- `∑{d}[n+1, A008836(#)*A319132((n+1)/#)]` -/
def P4290994238797010921.Spec : Prop :=
  ∀ n, P4290994238797010921.a n = A069088 (n + 1)

end A069088

/-! ## A069088.P14978797424133363583

`∑{d}[n+1, A023900(#)*A332618((n+1)/#)]`
-/

namespace A069088.P14978797424133363583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A332618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069088.P14978797424133363583

namespace A069088

/-- `∑{d}[n+1, A023900(#)*A332618((n+1)/#)]` -/
def P14978797424133363583.Spec : Prop :=
  ∀ n, P14978797424133363583.a n = A069088 (n + 1)

end A069088

/-! ## A069088.P2737042877264536650

`∑{d}[n+1, A064950(#)*A347092((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069088

/-- `∑{d}[n+1, A064950(#)*A347092((n+1)/#)]` -/
def P2737042877264536650.Spec : Prop :=
  ∀ n, P2737042877264536650.a n = A069088 (n + 1)

theorem P2737042877264536650.correct : P2737042877264536650.Spec := by
  intro n
  simp only [A069088, Nat.add_sub_cancel]

end A069088

/-! ## A069088.P3957308600289386056

`∑{d}[n+1, A056554(#²)]`
-/

namespace A069088.P3957308600289386056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056554 (d ^ 2)

end

end A069088.P3957308600289386056

namespace A069088

/-- `∑{d}[n+1, A056554(#²)]` -/
def P3957308600289386056.Spec : Prop :=
  ∀ n, P3957308600289386056.a n = A069088 (n + 1)

end A069088

/-!
# A069090: Primes none of whose proper initial segments are primes.

The programs for A069090, there is no canonical definition to state claims against.
-/

/-! ## A069090.P13305163718635116890

`p?[record[A331045(n)]]`
-/

namespace A069090.P13305163718635116890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069090.P13305163718635116890

/-! ## A069090.P7601292150026448117

`record[A331045(n+2)]`
-/

namespace A069090.P7601292150026448117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069090.P7601292150026448117

/-! ## A069090.P15764630218788497624

`eq[n, A331045(A007918(n))]`
-/

namespace A069090.P15764630218788497624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069090.P15764630218788497624

/-! ## A069090.P8860729172921479563

`eq[A028310(n), A331045(n)]`
-/

namespace A069090.P8860729172921479563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P8860729172921479563

/-! ## A069090.P4314955601928924080

`eq[A029579(n), A331045(n)]`
-/

namespace A069090.P4314955601928924080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P4314955601928924080

/-! ## A069090.P13113761075191315382

`eq[n, A331045(A051697(n))]`
-/

namespace A069090.P13113761075191315382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069090.P13113761075191315382

/-! ## A069090.P10019631449203152403

`eq[A056149(n), A331045(n)]`
-/

namespace A069090.P10019631449203152403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P10019631449203152403

/-! ## A069090.P13646952299947980483

`eq[A062584(n), A331045(n)]`
-/

namespace A069090.P13646952299947980483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P13646952299947980483

/-! ## A069090.P2097020350651593725

`eq[n, A331045(A077018(n))]`
-/

namespace A069090.P2097020350651593725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069090.P2097020350651593725

/-! ## A069090.P13007881340245568051

`eq[A084413(n), A331045(n)]`
-/

namespace A069090.P13007881340245568051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P13007881340245568051

/-! ## A069090.P17550638603360539836

`eq[A162683(n), A331045(n)]`
-/

namespace A069090.P17550638603360539836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P17550638603360539836

/-! ## A069090.P11692965855926477734

`eq[A219209(n), A331045(n)]`
-/

namespace A069090.P11692965855926477734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P11692965855926477734

/-! ## A069090.P11562810791504071041

`eq[A272476(n), A331045(n)]`
-/

namespace A069090.P11562810791504071041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P11562810791504071041

/-! ## A069090.P4899757828351176696

`eq[A035031(n+1), A331045(n)]`
-/

namespace A069090.P4899757828351176696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P4899757828351176696

/-! ## A069090.P2129409388168469908

`eq[A035032(n+1), A331045(n)]`
-/

namespace A069090.P2129409388168469908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P2129409388168469908

/-! ## A069090.P1298849822847150638

`eq[A038700(n+1), A331045(n)]`
-/

namespace A069090.P1298849822847150638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P1298849822847150638

/-! ## A069090.P6241993220782149777

`eq[A093868(n+1), A331045(n)]`
-/

namespace A069090.P6241993220782149777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P6241993220782149777

/-! ## A069090.P10999479507587788529

`eq[n, A331045(A295609(n))]`
-/

namespace A069090.P10999479507587788529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (A295609 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069090.P10999479507587788529

/-! ## A069090.P3838681518267195826

`eq[A136548(n+1), A331045(n)]`
-/

namespace A069090.P3838681518267195826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069090.P3838681518267195826

/-!
# A069091: Jordan function J_6(n).

The programs for A069091, the canonical program `A069091.P1979038829960387113` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069091 has offset 1).

The definition of A069091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069091.P9282241432602475051

`∑{d}[n+1, A008683((n+1)/#)*#^6]`
-/

namespace A069091.P9282241432602475051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 6 : ℤ)

end

end A069091.P9282241432602475051

namespace A069091

/-- `∑{d}[n+1, A008683((n+1)/#)*#^6]` -/
def P9282241432602475051.Spec : Prop :=
  ∀ n, P9282241432602475051.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P17099578050516524699

`A059376(n+1)*A065959(n+1)`
-/

namespace A069091.P17099578050516524699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059376 (n + 1) * A065959 (n + 1)

end

end A069091.P17099578050516524699

namespace A069091

/-- `A059376(n+1)*A065959(n+1)` -/
def P17099578050516524699.Spec : Prop :=
  ∀ n, P17099578050516524699.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P14680107502835127992

`A000010(n+1)*A160895(n+1)`
-/

namespace A069091.P14680107502835127992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160895 (n + 1)

end

end A069091.P14680107502835127992

namespace A069091

/-- `A000010(n+1)*A160895(n+1)` -/
def P14680107502835127992.Spec : Prop :=
  ∀ n, P14680107502835127992.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P6300516751376964163

`A007434(n+1)*A194532(n+1)`
-/

namespace A069091.P6300516751376964163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) * A194532 (n + 1)

end

end A069091.P6300516751376964163

namespace A069091

/-- `A007434(n+1)*A194532(n+1)` -/
def P6300516751376964163.Spec : Prop :=
  ∀ n, P6300516751376964163.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P1979038829960387113

`∑{d}[n+1, A007427(#)*A013954((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069091

/-- `∑{d}[n+1, A007427(#)*A013954((n+1)/#)]` -/
def P1979038829960387113.Spec : Prop :=
  ∀ n, P1979038829960387113.a n = A069091 (n + 1)

theorem P1979038829960387113.correct : P1979038829960387113.Spec := by
  intro n
  simp only [A069091, Nat.add_sub_cancel]

end A069091

/-! ## A069091.P13796496894539105263

`∑{d}[n+1, A059378(#)*A306411((n+1)/#)]`
-/

namespace A069091.P13796496894539105263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059378 d * A306411 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P13796496894539105263

namespace A069091

/-- `∑{d}[n+1, A059378(#)*A306411((n+1)/#)]` -/
def P13796496894539105263.Spec : Prop :=
  ∀ n, P13796496894539105263.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P16078004858176050516

`∑{d}[n+1, A055615(#)*A343508((n+1)/#)]`
-/

namespace A069091.P16078004858176050516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A343508 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P16078004858176050516

namespace A069091

/-- `∑{d}[n+1, A055615(#)*A343508((n+1)/#)]` -/
def P16078004858176050516.Spec : Prop :=
  ∀ n, P16078004858176050516.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P2967792607998882356

`∑{d}[n+1, A120630(#)*A321830((n+1)/#)]`
-/

namespace A069091.P2967792607998882356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A321830 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P2967792607998882356

namespace A069091

/-- `∑{d}[n+1, A120630(#)*A321830((n+1)/#)]` -/
def P2967792607998882356.Spec : Prop :=
  ∀ n, P2967792607998882356.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P4734689235345853085

`∑{d}[n+1, A158522(#)*A351301((n+1)/#)]`
-/

namespace A069091.P4734689235345853085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A351301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P4734689235345853085

namespace A069091

/-- `∑{d}[n+1, A158522(#)*A351301((n+1)/#)]` -/
def P4734689235345853085.Spec : Prop :=
  ∀ n, P4734689235345853085.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P8573758374483928962

`∑{d}[n+1, A284927(#)*A327274((n+1)/#)]`
-/

namespace A069091.P8573758374483928962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284927 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P8573758374483928962

namespace A069091

/-- `∑{d}[n+1, A284927(#)*A327274((n+1)/#)]` -/
def P8573758374483928962.Spec : Prop :=
  ∀ n, P8573758374483928962.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P15423332287816557564

`∑{d}[n+1, A321817(#)*A327276((n+1)/#)]`
-/

namespace A069091.P15423332287816557564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321817 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P15423332287816557564

namespace A069091

/-- `∑{d}[n+1, A321817(#)*A327276((n+1)/#)]` -/
def P15423332287816557564.Spec : Prop :=
  ∀ n, P15423332287816557564.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P211572830226900884

`∑{d}[n+1, A321322(#)*A372963((n+1)/#)]`
-/

namespace A069091.P211572830226900884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A372963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P211572830226900884

namespace A069091

/-- `∑{d}[n+1, A321322(#)*A372963((n+1)/#)]` -/
def P211572830226900884.Spec : Prop :=
  ∀ n, P211572830226900884.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P16176186210975483571

`(A002088(n+1)-A002088(n))*A160895(n+1)`
-/

namespace A069091.P16176186210975483571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A160895 (n + 1)

end

end A069091.P16176186210975483571

namespace A069091

/-- `(A002088(n+1)-A002088(n))*A160895(n+1)` -/
def P16176186210975483571.Spec : Prop :=
  ∀ n, P16176186210975483571.a n = A069091 (n + 1)

end A069091

/-! ## A069091.P16342220453319751810

`A007434(n+1)/A001615(n+1)*A160895(n+1)`
-/

namespace A069091.P16342220453319751810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A160895 (n + 1) : ℚ)

end

end A069091.P16342220453319751810

namespace A069091

/-- `A007434(n+1)/A001615(n+1)*A160895(n+1)` -/
def P16342220453319751810.Spec : Prop :=
  ∀ n, P16342220453319751810.a n = (A069091 (n + 1) : ℚ)

end A069091

/-!
# A069092: Jordan function J_7(n).

The programs for A069092, the canonical program `A069092.P6462397685710627288` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069092 has offset 1).

The definition of A069092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069092.P11538318592882413357

`∑{d}[n+1, A008683((n+1)/#)*#^7]`
-/

namespace A069092.P11538318592882413357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 7 : ℤ)

end

end A069092.P11538318592882413357

namespace A069092

/-- `∑{d}[n+1, A008683((n+1)/#)*#^7]` -/
def P11538318592882413357.Spec : Prop :=
  ∀ n, P11538318592882413357.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P16400942065230858435

`A000010(n+1)*A160897(n+1)`
-/

namespace A069092.P16400942065230858435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160897 (n + 1)

end

end A069092.P16400942065230858435

namespace A069092

/-- `A000010(n+1)*A160897(n+1)` -/
def P16400942065230858435.Spec : Prop :=
  ∀ n, P16400942065230858435.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P6462397685710627288

`∑{d}[n+1, A007427(#)*A013955((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069092

/-- `∑{d}[n+1, A007427(#)*A013955((n+1)/#)]` -/
def P6462397685710627288.Spec : Prop :=
  ∀ n, P6462397685710627288.a n = A069092 (n + 1)

theorem P6462397685710627288.correct : P6462397685710627288.Spec := by
  intro n
  simp only [A069092, Nat.add_sub_cancel]

end A069092

/-! ## A069092.P2808315186000357688

`∑{d}[n+1, A069091(#)*A239442((n+1)/#)]`
-/

namespace A069092.P2808315186000357688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069091 d * A239442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P2808315186000357688

namespace A069092

/-- `∑{d}[n+1, A069091(#)*A239442((n+1)/#)]` -/
def P2808315186000357688.Spec : Prop :=
  ∀ n, P2808315186000357688.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P443910321330738161

`∑{d}[n+1, A055615(#)*A343509((n+1)/#)]`
-/

namespace A069092.P443910321330738161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A343509 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P443910321330738161

namespace A069092

/-- `∑{d}[n+1, A055615(#)*A343509((n+1)/#)]` -/
def P443910321330738161.Spec : Prop :=
  ∀ n, P443910321330738161.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P10324178074078391900

`∑{d}[n+1, A096961(#)*A327276((n+1)/#)]`
-/

namespace A069092.P10324178074078391900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096961 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P10324178074078391900

namespace A069092

/-- `∑{d}[n+1, A096961(#)*A327276((n+1)/#)]` -/
def P10324178074078391900.Spec : Prop :=
  ∀ n, P10324178074078391900.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P3855378817272095452

`∑{d}[n+1, A120630(#)*A321831((n+1)/#)]`
-/

namespace A069092.P3855378817272095452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A321831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P3855378817272095452

namespace A069092

/-- `∑{d}[n+1, A120630(#)*A321831((n+1)/#)]` -/
def P3855378817272095452.Spec : Prop :=
  ∀ n, P3855378817272095452.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P10433103788736658698

`∑{d}[n+1, A158522(#)*A351302((n+1)/#)]`
-/

namespace A069092.P10433103788736658698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A351302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P10433103788736658698

namespace A069092

/-- `∑{d}[n+1, A158522(#)*A351302((n+1)/#)]` -/
def P10433103788736658698.Spec : Prop :=
  ∀ n, P10433103788736658698.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P16890811830566643087

`∑{d}[n+1, A321552(#)*A327274((n+1)/#)]`
-/

namespace A069092.P16890811830566643087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321552 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P16890811830566643087

namespace A069092

/-- `∑{d}[n+1, A321552(#)*A327274((n+1)/#)]` -/
def P16890811830566643087.Spec : Prop :=
  ∀ n, P16890811830566643087.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P8798610705029323736

`∑{d}[n+1, A321322(#)*A373007((n+1)/#)]`
-/

namespace A069092.P8798610705029323736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A373007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P8798610705029323736

namespace A069092

/-- `∑{d}[n+1, A321322(#)*A373007((n+1)/#)]` -/
def P8798610705029323736.Spec : Prop :=
  ∀ n, P8798610705029323736.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P10059174229701126912

`(A002088(n+1)-A002088(n))*A160897(n+1)`
-/

namespace A069092.P10059174229701126912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A160897 (n + 1)

end

end A069092.P10059174229701126912

namespace A069092

/-- `(A002088(n+1)-A002088(n))*A160897(n+1)` -/
def P10059174229701126912.Spec : Prop :=
  ∀ n, P10059174229701126912.a n = A069092 (n + 1)

end A069092

/-! ## A069092.P637009703982166810

`A069094(n+1)*A160897(n+1)/A160953(n+1)`
-/

namespace A069092.P637009703982166810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) * A160897 (n + 1) : ℚ) / (A160953 (n + 1) : ℚ)

end

end A069092.P637009703982166810

namespace A069092

/-- `A069094(n+1)*A160897(n+1)/A160953(n+1)` -/
def P637009703982166810.Spec : Prop :=
  ∀ n, P637009703982166810.a n = (A069092 (n + 1) : ℚ)

end A069092

/-!
# A069093: Jordan function J_8(n).

The programs for A069093, the canonical program `A069093.P9664081380654551987` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069093 has offset 1).

The definition of A069093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069093.P14959050116017390096

`∑{d}[n+1, A008683((n+1)/#)*#^8]`
-/

namespace A069093.P14959050116017390096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 8 : ℤ)

end

end A069093.P14959050116017390096

namespace A069093

/-- `∑{d}[n+1, A008683((n+1)/#)*#^8]` -/
def P14959050116017390096.Spec : Prop :=
  ∀ n, P14959050116017390096.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P120547335048217171

`A059377(n+1)*A065960(n+1)`
-/

namespace A069093.P120547335048217171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (n + 1) * A065960 (n + 1)

end

end A069093.P120547335048217171

namespace A069093

/-- `A059377(n+1)*A065960(n+1)` -/
def P120547335048217171.Spec : Prop :=
  ∀ n, P120547335048217171.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P633019474725450626

`A000010(n+1)*A160908(n+1)`
-/

namespace A069093.P633019474725450626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160908 (n + 1)

end

end A069093.P633019474725450626

namespace A069093

/-- `A000010(n+1)*A160908(n+1)` -/
def P633019474725450626.Spec : Prop :=
  ∀ n, P633019474725450626.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P5411986183458566175

`A007434(n+1)*A194533(n+1)`
-/

namespace A069093.P5411986183458566175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) * A194533 (n + 1)

end

end A069093.P5411986183458566175

namespace A069093

/-- `A007434(n+1)*A194533(n+1)` -/
def P5411986183458566175.Spec : Prop :=
  ∀ n, P5411986183458566175.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P9664081380654551987

`∑{d}[n+1, A007427(#)*A013956((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069093

/-- `∑{d}[n+1, A007427(#)*A013956((n+1)/#)]` -/
def P9664081380654551987.Spec : Prop :=
  ∀ n, P9664081380654551987.a n = A069093 (n + 1)

theorem P9664081380654551987.correct : P9664081380654551987.Spec := by
  intro n
  simp only [A069093, Nat.add_sub_cancel]

end A069093

/-! ## A069093.P5521001663500230673

`∑{d}[n+1, A069092(#)*A306412((n+1)/#)]`
-/

namespace A069093.P5521001663500230673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069092 d * A306412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069093.P5521001663500230673

namespace A069093

/-- `∑{d}[n+1, A069092(#)*A306412((n+1)/#)]` -/
def P5521001663500230673.Spec : Prop :=
  ∀ n, P5521001663500230673.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P6268778735844921094

`∑{d}[n+1, A120630(#)*A321832((n+1)/#)]`
-/

namespace A069093.P6268778735844921094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A321832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069093.P6268778735844921094

namespace A069093

/-- `∑{d}[n+1, A120630(#)*A321832((n+1)/#)]` -/
def P6268778735844921094.Spec : Prop :=
  ∀ n, P6268778735844921094.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P7313265182453728770

`∑{d}[n+1, A158522(#)*A351303((n+1)/#)]`
-/

namespace A069093.P7313265182453728770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A351303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069093.P7313265182453728770

namespace A069093

/-- `∑{d}[n+1, A158522(#)*A351303((n+1)/#)]` -/
def P7313265182453728770.Spec : Prop :=
  ∀ n, P7313265182453728770.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P17867961167548010701

`∑{d}[n+1, A321553(#)*A327274((n+1)/#)]`
-/

namespace A069093.P17867961167548010701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321553 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069093.P17867961167548010701

namespace A069093

/-- `∑{d}[n+1, A321553(#)*A327274((n+1)/#)]` -/
def P17867961167548010701.Spec : Prop :=
  ∀ n, P17867961167548010701.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P14648599302656212436

`∑{d}[n+1, A321818(#)*A327276((n+1)/#)]`
-/

namespace A069093.P14648599302656212436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321818 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069093.P14648599302656212436

namespace A069093

/-- `∑{d}[n+1, A321818(#)*A327276((n+1)/#)]` -/
def P14648599302656212436.Spec : Prop :=
  ∀ n, P14648599302656212436.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P2397311230094451

`(A002088(n+1)-A002088(n))*A160908(n+1)`
-/

namespace A069093.P2397311230094451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A160908 (n + 1)

end

end A069093.P2397311230094451

namespace A069093

/-- `(A002088(n+1)-A002088(n))*A160908(n+1)` -/
def P2397311230094451.Spec : Prop :=
  ∀ n, P2397311230094451.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P9359944588612655941

`(A321879(n+1)-A321879(n))*A194533(n+1)`
-/

namespace A069093.P9359944588612655941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321879 (n + 1) - A321879 n) * A194533 (n + 1)

end

end A069093.P9359944588612655941

namespace A069093

/-- `(A321879(n+1)-A321879(n))*A194533(n+1)` -/
def P9359944588612655941.Spec : Prop :=
  ∀ n, P9359944588612655941.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P16235335381740212389

`A007434(n+1)*A065958(n+1)*A065960(n+1)`
-/

namespace A069093.P16235335381740212389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) * A065958 (n + 1) * A065960 (n + 1)

end

end A069093.P16235335381740212389

namespace A069093

/-- `A007434(n+1)*A065958(n+1)*A065960(n+1)` -/
def P16235335381740212389.Spec : Prop :=
  ∀ n, P16235335381740212389.a n = A069093 (n + 1)

end A069093

/-! ## A069093.P6247355240164082810

`A059377(n+1)/A065958(n+1)*A194533(n+1)`
-/

namespace A069093.P6247355240164082810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) : ℚ) / (A065958 (n + 1) : ℚ) * (A194533 (n + 1) : ℚ)

end

end A069093.P6247355240164082810

namespace A069093

/-- `A059377(n+1)/A065958(n+1)*A194533(n+1)` -/
def P6247355240164082810.Spec : Prop :=
  ∀ n, P6247355240164082810.a n = (A069093 (n + 1) : ℚ)

end A069093

/-!
# A069094: Jordan function J_9(n).

The programs for A069094, the canonical program `A069094.P5596882665967745649` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069094 has offset 1).

The definition of A069094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069094.P4406960957827552854

`∑{d}[n+1, A008683((n+1)/#)*#^9]`
-/

namespace A069094.P4406960957827552854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 9 : ℤ)

end

end A069094.P4406960957827552854

namespace A069094

/-- `∑{d}[n+1, A008683((n+1)/#)*#^9]` -/
def P4406960957827552854.Spec : Prop :=
  ∀ n, P4406960957827552854.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P445429835185655347

`A000010(n+1)*A160953(n+1)`
-/

namespace A069094.P445429835185655347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160953 (n + 1)

end

end A069094.P445429835185655347

namespace A069094

/-- `A000010(n+1)*A160953(n+1)` -/
def P445429835185655347.Spec : Prop :=
  ∀ n, P445429835185655347.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P13326643715271280543

`A059376(n+1)*A381713(n+1)`
-/

namespace A069094.P13326643715271280543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059376 (n + 1) * A381713 (n + 1)

end

end A069094.P13326643715271280543

namespace A069094

/-- `A059376(n+1)*A381713(n+1)` -/
def P13326643715271280543.Spec : Prop :=
  ∀ n, P13326643715271280543.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P5596882665967745649

`∑{d}[n+1, A007427(#)*A013957((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069094

/-- `∑{d}[n+1, A007427(#)*A013957((n+1)/#)]` -/
def P5596882665967745649.Spec : Prop :=
  ∀ n, P5596882665967745649.a n = A069094 (n + 1)

theorem P5596882665967745649.correct : P5596882665967745649.Spec := by
  intro n
  simp only [A069094, Nat.add_sub_cancel]

end A069094

/-! ## A069094.P4482132164678737028

`∑{d}[n+1, A069093(#)*A239443((n+1)/#)]`
-/

namespace A069094.P4482132164678737028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069093 d * A239443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069094.P4482132164678737028

namespace A069094

/-- `∑{d}[n+1, A069093(#)*A239443((n+1)/#)]` -/
def P4482132164678737028.Spec : Prop :=
  ∀ n, P4482132164678737028.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P954264698745714738

`∑{d}[n+1, A096962(#)*A327276((n+1)/#)]`
-/

namespace A069094.P954264698745714738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A096962 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069094.P954264698745714738

namespace A069094

/-- `∑{d}[n+1, A096962(#)*A327276((n+1)/#)]` -/
def P954264698745714738.Spec : Prop :=
  ∀ n, P954264698745714738.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P14327563299383417029

`∑{d}[n+1, A120630(#)*A321833((n+1)/#)]`
-/

namespace A069094.P14327563299383417029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A321833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069094.P14327563299383417029

namespace A069094

/-- `∑{d}[n+1, A120630(#)*A321833((n+1)/#)]` -/
def P14327563299383417029.Spec : Prop :=
  ∀ n, P14327563299383417029.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P13951821138382355190

`∑{d}[n+1, A158522(#)*A351304((n+1)/#)]`
-/

namespace A069094.P13951821138382355190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A351304 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069094.P13951821138382355190

namespace A069094

/-- `∑{d}[n+1, A158522(#)*A351304((n+1)/#)]` -/
def P13951821138382355190.Spec : Prop :=
  ∀ n, P13951821138382355190.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P16430605004220630262

`∑{d}[n+1, A321554(#)*A327274((n+1)/#)]`
-/

namespace A069094.P16430605004220630262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321554 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069094.P16430605004220630262

namespace A069094

/-- `∑{d}[n+1, A321554(#)*A327274((n+1)/#)]` -/
def P16430605004220630262.Spec : Prop :=
  ∀ n, P16430605004220630262.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P384837287680420121

`(A002088(n+1)-A002088(n))*A160953(n+1)`
-/

namespace A069094.P384837287680420121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A160953 (n + 1)

end

end A069094.P384837287680420121

namespace A069094

/-- `(A002088(n+1)-A002088(n))*A160953(n+1)` -/
def P384837287680420121.Spec : Prop :=
  ∀ n, P384837287680420121.a n = A069094 (n + 1)

end A069094

/-! ## A069094.P982753428411394908

`A069092(n+1)/A160897(n+1)*A160953(n+1)`
-/

namespace A069094.P982753428411394908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A160897 (n + 1) : ℚ) * (A160953 (n + 1) : ℚ)

end

end A069094.P982753428411394908

namespace A069094

/-- `A069092(n+1)/A160897(n+1)*A160953(n+1)` -/
def P982753428411394908.Spec : Prop :=
  ∀ n, P982753428411394908.a n = (A069094 (n + 1) : ℚ)

end A069094

/-! ## A069094.P15446657166509997833

`A069091(n+1)/A065959(n+1)*A381713(n+1)`
-/

namespace A069094.P15446657166509997833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A065959 (n + 1) : ℚ) * (A381713 (n + 1) : ℚ)

end

end A069094.P15446657166509997833

namespace A069094

/-- `A069091(n+1)/A065959(n+1)*A381713(n+1)` -/
def P15446657166509997833.Spec : Prop :=
  ∀ n, P15446657166509997833.a n = (A069094 (n + 1) : ℚ)

end A069094

/-! ## A069094.P6994188317066817647

`A160953(n+1)*A309563(2*n+1)`
-/

namespace A069094.P6994188317066817647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160953 (n + 1) * A309563 (2 * n + 1)

end

end A069094.P6994188317066817647

namespace A069094

/-- `A160953(n+1)*A309563(2*n+1)` -/
def P6994188317066817647.Spec : Prop :=
  ∀ n, P6994188317066817647.a n = A069094 (n + 1)

end A069094

/-!
# A069095: Jordan function J_10(n).

The programs for A069095, the canonical program `A069095.P10263333998620390818` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069095 has offset 1).

The definition of A069095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069095.P3099227901495131630

`Δ[A002088(n)]*A160957(n+1)`
-/

namespace A069095.P3099227901495131630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A160957 (n + 1)

end

end A069095.P3099227901495131630

namespace A069095

/-- `Δ[A002088(n)]*A160957(n+1)` -/
def P3099227901495131630.Spec : Prop :=
  ∀ n, P3099227901495131630.a n = A069095 (n + 1)

end A069095

/-! ## A069095.P17196600191969538959

`A000010(n+1)*A160957(n+1)`
-/

namespace A069095.P17196600191969538959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A160957 (n + 1)

end

end A069095.P17196600191969538959

namespace A069095

/-- `A000010(n+1)*A160957(n+1)` -/
def P17196600191969538959.Spec : Prop :=
  ∀ n, P17196600191969538959.a n = A069095 (n + 1)

end A069095

/-! ## A069095.P8160109131584685456

`A059378(n+1)*A351300(n+1)`
-/

namespace A069095.P8160109131584685456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059378 (n + 1) * A351300 (n + 1)

end

end A069095.P8160109131584685456

namespace A069095

/-- `A059378(n+1)*A351300(n+1)` -/
def P8160109131584685456.Spec : Prop :=
  ∀ n, P8160109131584685456.a n = A069095 (n + 1)

end A069095

/-! ## A069095.P10263333998620390818

`∑{d}[n+1, A007427(#)*A013958((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069095

/-- `∑{d}[n+1, A007427(#)*A013958((n+1)/#)]` -/
def P10263333998620390818.Spec : Prop :=
  ∀ n, P10263333998620390818.a n = A069095 (n + 1)

theorem P10263333998620390818.correct : P10263333998620390818.Spec := by
  intro n
  simp only [A069095, Nat.add_sub_cancel]

end A069095

/-! ## A069095.P9404829627494863477

`∑{d}[n+1, A120630(#)*A321834((n+1)/#)]`
-/

namespace A069095.P9404829627494863477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069095.P9404829627494863477

namespace A069095

/-- `∑{d}[n+1, A120630(#)*A321834((n+1)/#)]` -/
def P9404829627494863477.Spec : Prop :=
  ∀ n, P9404829627494863477.a n = A069095 (n + 1)

end A069095

/-! ## A069095.P13217035113151501070

`∑{d}[n+1, A158522(#)*A351305((n+1)/#)]`
-/

namespace A069095.P13217035113151501070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A351305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069095.P13217035113151501070

namespace A069095

/-- `∑{d}[n+1, A158522(#)*A351305((n+1)/#)]` -/
def P13217035113151501070.Spec : Prop :=
  ∀ n, P13217035113151501070.a n = A069095 (n + 1)

end A069095

/-! ## A069095.P10190093417533690488

`∑{d}[n+1, A321555(#)*A327274((n+1)/#)]`
-/

namespace A069095.P10190093417533690488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321555 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069095.P10190093417533690488

namespace A069095

/-- `∑{d}[n+1, A321555(#)*A327274((n+1)/#)]` -/
def P10190093417533690488.Spec : Prop :=
  ∀ n, P10190093417533690488.a n = A069095 (n + 1)

end A069095

/-! ## A069095.P5461711235449013922

`∑{d}[n+1, A321819(#)*A327276((n+1)/#)]`
-/

namespace A069095.P5461711235449013922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321819 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069095.P5461711235449013922

namespace A069095

/-- `∑{d}[n+1, A321819(#)*A327276((n+1)/#)]` -/
def P5461711235449013922.Spec : Prop :=
  ∀ n, P5461711235449013922.a n = A069095 (n + 1)

end A069095

/-! ## A069095.P4607787963535866111

`(A002088(n+1)-A002088(n))*A160957(n+1)`
-/

namespace A069095.P4607787963535866111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A160957 (n + 1)

end

end A069095.P4607787963535866111

namespace A069095

/-- `(A002088(n+1)-A002088(n))*A160957(n+1)` -/
def P4607787963535866111.Spec : Prop :=
  ∀ n, P4607787963535866111.a n = A069095 (n + 1)

end A069095

/-!
# A069097: Moebius transform of A064987, n*sigma(n).

The programs for A069097, the canonical program `A069097.P10375503292735525789` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069097 has offset 1).

The definition of A069097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069097.P10375503292735525789

`∑{d}[n+1, A341772(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069097

/-- `∑{d}[n+1, A341772(#)]` -/
def P10375503292735525789.Spec : Prop :=
  ∀ n, P10375503292735525789.a n = A069097 (n + 1)

theorem P10375503292735525789.correct : P10375503292735525789.Spec := by
  intro n
  simp only [A069097, Nat.add_sub_cancel]

end A069097

/-! ## A069097.P7634522652538535473

`A020478(n+1)/(n+1)`
-/

namespace A069097.P7634522652538535473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020478 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A069097.P7634522652538535473

namespace A069097

/-- `A020478(n+1)/(n+1)` -/
def P7634522652538535473.Spec : Prop :=
  ∀ n, P7634522652538535473.a n = (A069097 (n + 1) : ℚ)

end A069097

/-! ## A069097.P13363328526892932892

`∑{d}[n+1, #*A007434((n+1)/#)]`
-/

namespace A069097.P13363328526892932892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P13363328526892932892

namespace A069097

/-- `∑{d}[n+1, #*A007434((n+1)/#)]` -/
def P13363328526892932892.Spec : Prop :=
  ∀ n, P13363328526892932892.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P482593225096471551

`((n+1)²²-A005353(n+1))/(n+1)`
-/

namespace A069097.P482593225096471551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - A005353 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A069097.P482593225096471551

namespace A069097

/-- `((n+1)²²-A005353(n+1))/(n+1)` -/
def P482593225096471551.Spec : Prop :=
  ∀ n, P482593225096471551.a n = (A069097 (n + 1) : ℚ)

end A069097

/-! ## A069097.P1468838465219880582

`2*A309322(n+1)-A018804(n+1)`
-/

namespace A069097.P1468838465219880582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309322 (n + 1) - A018804 (n + 1)

end

end A069097.P1468838465219880582

namespace A069097

/-- `2*A309322(n+1)-A018804(n+1)` -/
def P1468838465219880582.Spec : Prop :=
  ∀ n, P1468838465219880582.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P2760961674893758646

`∑{d}[n+1, A000010(#)*A000290((n+1)/#)]`
-/

namespace A069097.P2760961674893758646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000290 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P2760961674893758646

namespace A069097

/-- `∑{d}[n+1, A000010(#)*A000290((n+1)/#)]` -/
def P2760961674893758646.Spec : Prop :=
  ∀ n, P2760961674893758646.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P4879297744134445049

`∑{d}[n+1, A001001(#)*A007427((n+1)/#)]`
-/

namespace A069097.P4879297744134445049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P4879297744134445049

namespace A069097

/-- `∑{d}[n+1, A001001(#)*A007427((n+1)/#)]` -/
def P4879297744134445049.Spec : Prop :=
  ∀ n, P4879297744134445049.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P8638383563681469352

`∑{d}[n+1, A007432(#)*A007433((n+1)/#)]`
-/

namespace A069097.P8638383563681469352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A007433 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P8638383563681469352

namespace A069097

/-- `∑{d}[n+1, A007432(#)*A007433((n+1)/#)]` -/
def P8638383563681469352.Spec : Prop :=
  ∀ n, P8638383563681469352.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P17795581201989935369

`∑{d}[n+1, A002618(#)*A018804((n+1)/#)]`
-/

namespace A069097.P17795581201989935369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P17795581201989935369

namespace A069097

/-- `∑{d}[n+1, A002618(#)*A018804((n+1)/#)]` -/
def P17795581201989935369.Spec : Prop :=
  ∀ n, P17795581201989935369.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P4912624462194385222

`∑{d}[n+1, A008683(#)*A064987((n+1)/#)]`
-/

namespace A069097.P4912624462194385222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P4912624462194385222

namespace A069097

/-- `∑{d}[n+1, A008683(#)*A064987((n+1)/#)]` -/
def P4912624462194385222.Spec : Prop :=
  ∀ n, P4912624462194385222.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P9260620571942925789

`∑{d}[n+1, A029935(#)*A057660((n+1)/#)]`
-/

namespace A069097.P9260620571942925789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P9260620571942925789

namespace A069097

/-- `∑{d}[n+1, A029935(#)*A057660((n+1)/#)]` -/
def P9260620571942925789.Spec : Prop :=
  ∀ n, P9260620571942925789.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P12468481311383639002

`∑{d}[n+1, A038040(#)*A063445((n+1)/#)]`
-/

namespace A069097.P12468481311383639002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P12468481311383639002

namespace A069097

/-- `∑{d}[n+1, A038040(#)*A063445((n+1)/#)]` -/
def P12468481311383639002.Spec : Prop :=
  ∀ n, P12468481311383639002.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P12448492903046273855

`∑{d}[n+1, A065958(#)*A074722((n+1)/#)]`
-/

namespace A069097.P12448492903046273855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P12448492903046273855

namespace A069097

/-- `∑{d}[n+1, A065958(#)*A074722((n+1)/#)]` -/
def P12448492903046273855.Spec : Prop :=
  ∀ n, P12448492903046273855.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P3223029401603134373

`∑{d}[n+1, A067856(#)*A228274((n+1)/#)]`
-/

namespace A069097.P3223029401603134373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A228274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P3223029401603134373

namespace A069097

/-- `∑{d}[n+1, A067856(#)*A228274((n+1)/#)]` -/
def P3223029401603134373.Spec : Prop :=
  ∀ n, P3223029401603134373.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P15721626311350089818

`∑{d}[n+1, A000203(#)*A321322((n+1)/#)]`
-/

namespace A069097.P15721626311350089818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P15721626311350089818

namespace A069097

/-- `∑{d}[n+1, A000203(#)*A321322((n+1)/#)]` -/
def P15721626311350089818.Spec : Prop :=
  ∀ n, P15721626311350089818.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P900018426964460003

`∑{d}[n+1, A000082(#)*A358272((n+1)/#)]`
-/

namespace A069097.P900018426964460003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P900018426964460003

namespace A069097

/-- `∑{d}[n+1, A000082(#)*A358272((n+1)/#)]` -/
def P900018426964460003.Spec : Prop :=
  ∀ n, P900018426964460003.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P18186754882281294364

`∑{d}[n+1, A034714(#)*A328502((n+1)/#)]`
-/

namespace A069097.P18186754882281294364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034714 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P18186754882281294364

namespace A069097

/-- `∑{d}[n+1, A034714(#)*A328502((n+1)/#)]` -/
def P18186754882281294364.Spec : Prop :=
  ∀ n, P18186754882281294364.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P14399879464713866950

`∑{d}[n+1, A091519(#)*A319997((n+1)/#)]`
-/

namespace A069097.P14399879464713866950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P14399879464713866950

namespace A069097

/-- `∑{d}[n+1, A091519(#)*A319997((n+1)/#)]` -/
def P14399879464713866950.Spec : Prop :=
  ∀ n, P14399879464713866950.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P14147609486931314958

`∑{d}[n+1, A174725(#)*A245773((n+1)/#)]`
-/

namespace A069097.P14147609486931314958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d * A245773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P14147609486931314958

namespace A069097

/-- `∑{d}[n+1, A174725(#)*A245773((n+1)/#)]` -/
def P14147609486931314958.Spec : Prop :=
  ∀ n, P14147609486931314958.a n = A069097 (n + 1)

end A069097

/-! ## A069097.P5731042593011109138

`∑{d}[n+1, A061019(#)*A390262((n+1)/#)]`
-/

namespace A069097.P5731042593011109138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069097.P5731042593011109138

namespace A069097

/-- `∑{d}[n+1, A061019(#)*A390262((n+1)/#)]` -/
def P5731042593011109138.Spec : Prop :=
  ∀ n, P5731042593011109138.a n = A069097 (n + 1)

end A069097

/-!
# A069099: Centered heptagonal numbers.

The programs for A069099, the canonical program `A069099.P12335597801895064299` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069099 has offset 1).

The definition of A069099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069099.P12335597801895064299

`7*n+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069099

/-- `7*n+a(n-1)` -/
def P12335597801895064299.Spec : Prop :=
  ∀ n, (P12335597801895064299.a n : ℤ) = A069099 (n + 1)

theorem P12335597801895064299.correct : P12335597801895064299.Spec := by
  intro n
  simp only [A069099, Nat.add_sub_cancel]

end A069099

/-! ## A069099.P15949413618389990290

`(7*(n+1)²-7*(n+1)+2)/2`
-/

namespace A069099.P15949413618389990290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * (n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A069099.P15949413618389990290

namespace A069099

/-- `(7*(n+1)²-7*(n+1)+2)/2` -/
def P15949413618389990290.Spec : Prop :=
  ∀ n, P15949413618389990290.a n = (A069099 (n + 1) : ℚ)

theorem P15949413618389990290.correct : P15949413618389990290.Spec := by
  intro n
  induction n with
  | zero => simp [A069099, A069099.P15949413618389990290.a, A069099.P12335597801895064299.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A069099, Nat.add_sub_cancel, A069099.P15949413618389990290.a, A069099.P12335597801895064299.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A069099

/-! ## A069099.P7708930931665671374

`A024966(n)+1`
-/

namespace A069099.P7708930931665671374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n + 1

end

end A069099.P7708930931665671374

namespace A069099

/-- `A024966(n)+1` -/
def P7708930931665671374.Spec : Prop :=
  ∀ n, P7708930931665671374.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P8330200603081725777

`A003215(n)+A000217(n)`
-/

namespace A069099.P8330200603081725777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + A000217 n

end

end A069099.P8330200603081725777

namespace A069099

/-- `A003215(n)+A000217(n)` -/
def P8330200603081725777.Spec : Prop :=
  ∀ n, P8330200603081725777.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P5664998938184316086

`-xor(∑[7*n], -1)`
-/

namespace A069099.P5664998938184316086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A069099.P5664998938184316086

namespace A069099

/-- `-xor(∑[7*n], -1)` -/
def P5664998938184316086.Spec : Prop :=
  ∀ n, P5664998938184316086.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P13142674958198985498

`7*C(n+1, 2)+1`
-/

namespace A069099.P13142674958198985498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose (n + 1) 2 + 1

end

end A069099.P13142674958198985498

namespace A069099

/-- `7*C(n+1, 2)+1` -/
def P13142674958198985498.Spec : Prop :=
  ∀ n, (P13142674958198985498.a n : ℤ) = A069099 (n + 1)

end A069099

/-! ## A069099.P3527003541095047700

`∑[a(n-1)+7]` with `a(0)=1, a(1)=7`
-/

namespace A069099.P3527003541095047700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069099.P3527003541095047700

namespace A069099

/-- `∑[a(n-1)+7]` -/
def P3527003541095047700.Spec : Prop :=
  ∀ n, (P3527003541095047700.a n : ℤ) = A069099 (n + 1)

end A069099

/-! ## A069099.P5517948120170734120

`∑[ogf((1+5x+x^2)/(1-2x+x^2))]`
-/

namespace A069099.P5517948120170734120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069099.P5517948120170734120

namespace A069099

/-- `∑[ogf((1+5x+x^2)/(1-2x+x^2))]` -/
def P5517948120170734120.Spec : Prop :=
  ∀ n, P5517948120170734120.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P14113357176685193168

`ogf((1+5x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A069099.P14113357176685193168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1] [1, -3, 3, -1] n

end

end A069099.P14113357176685193168

namespace A069099

/-- `ogf((1+5x+x^2)/(1-3x+3x^2-x^3))` -/
def P14113357176685193168.Spec : Prop :=
  ∀ n, P14113357176685193168.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P1170727019920795733

`Δ[C(n+1, 3)+n^3]`
-/

namespace A069099.P1170727019920795733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A069099.P1170727019920795733

namespace A069099

/-- `Δ[C(n+1, 3)+n^3]` -/
def P1170727019920795733.Spec : Prop :=
  ∀ n, P1170727019920795733.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P12977807338430781046

`round(xor(1, (n+1)*7*n)/2)`
-/

namespace A069099.P12977807338430781046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 ((n + 1) * (7 * n)) : ℚ) / 2)

end

end A069099.P12977807338430781046

namespace A069099

/-- `round(xor(1, (n+1)*7*n)/2)` -/
def P12977807338430781046.Spec : Prop :=
  ∀ n, P12977807338430781046.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P919365634877126373

`floor(8*n-(n-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A069099.P919365634877126373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A069099.P919365634877126373

namespace A069099

/-- `floor(8*n-(n-a(n-1)))` -/
def P919365634877126373.Spec : Prop :=
  ∀ n, P919365634877126373.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P3057199485379256600

`floor((2*n+1)²-lcm(n, n+1)/2)`
-/

namespace A069099.P3057199485379256600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℚ) - (Nat.lcm n (n + 1) : ℚ) / 2⌋

end

end A069099.P3057199485379256600

namespace A069099

/-- `floor((2*n+1)²-lcm(n, n+1)/2)` -/
def P3057199485379256600.Spec : Prop :=
  ∀ n, P3057199485379256600.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P12858415169701531848

`∑[A008458(n)+n]`
-/

namespace A069099.P12858415169701531848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069099.P12858415169701531848

namespace A069099

/-- `∑[A008458(n)+n]` -/
def P12858415169701531848.Spec : Prop :=
  ∀ n, P12858415169701531848.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P951796562083957009

`∑[A022144(n)-n]`
-/

namespace A069099.P951796562083957009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069099.P951796562083957009

namespace A069099

/-- `∑[A022144(n)-n]` -/
def P951796562083957009.Spec : Prop :=
  ∀ n, P951796562083957009.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P8051051148164092579

`A209294(n+1)-1`
-/

namespace A069099.P8051051148164092579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209294 (n + 1) - 1

end

end A069099.P8051051148164092579

namespace A069099

/-- `A209294(n+1)-1` -/
def P8051051148164092579.Spec : Prop :=
  ∀ n, P8051051148164092579.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P8745577425474461233

`A163756(n)/2+1`
-/

namespace A069099.P8745577425474461233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163756 n : ℚ) / 2 + 1

end

end A069099.P8745577425474461233

namespace A069099

/-- `A163756(n)/2+1` -/
def P8745577425474461233.Spec : Prop :=
  ∀ n, P8745577425474461233.a n = (A069099 (n + 1) : ℚ)

theorem P8745577425474461233.correct : P8745577425474461233.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A069099, Nat.add_sub_cancel, A069099.P8745577425474461233.a, A069099.P12335597801895064299.a, A163756, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A069099, Nat.add_sub_cancel, A069099.P8745577425474461233.a, A069099.P12335597801895064299.a, A163756, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A069099

/-! ## A069099.P13237088720726290100

`A179986(n)+1+n`
-/

namespace A069099.P13237088720726290100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n + 1 + (n : ℤ)

end

end A069099.P13237088720726290100

namespace A069099

/-- `A179986(n)+1+n` -/
def P13237088720726290100.Spec : Prop :=
  ∀ n, P13237088720726290100.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P2546855042838198752

`A001106(n+1)-n`
-/

namespace A069099.P2546855042838198752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (n + 1) - (n : ℤ)

end

end A069099.P2546855042838198752

namespace A069099

/-- `A001106(n+1)-n` -/
def P2546855042838198752.Spec : Prop :=
  ∀ n, P2546855042838198752.a n = A069099 (n + 1)

end A069099

/-! ## A069099.P1453008898795082761

`A389615(n)+2*n`
-/

namespace A069099.P1453008898795082761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n + (2 * n : ℤ)

end

end A069099.P1453008898795082761

namespace A069099

/-- `A389615(n)+2*n` -/
def P1453008898795082761.Spec : Prop :=
  ∀ n, P1453008898795082761.a n = A069099 (n + 1)

end A069099

